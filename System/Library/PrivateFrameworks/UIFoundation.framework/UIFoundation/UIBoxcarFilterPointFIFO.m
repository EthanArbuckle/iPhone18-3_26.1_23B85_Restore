@interface UIBoxcarFilterPointFIFO
- (UIBoxcarFilterPointFIFO)initWithFIFO:(id)a3 width:(unint64_t)a4 spacing:(float)a5;
- (void)addPoint:(UIBoxcarFilterPointFIFO *)self;
- (void)clear;
- (void)dealloc;
- (void)emitAveragedPoint;
- (void)flush;
@end

@implementation UIBoxcarFilterPointFIFO

- (UIBoxcarFilterPointFIFO)initWithFIFO:(id)a3 width:(unint64_t)a4 spacing:(float)a5
{
  v10.receiver = self;
  v10.super_class = UIBoxcarFilterPointFIFO;
  v7 = [(UIPointFIFO *)&v10 initWithFIFO:a3];
  v8 = v7;
  if (v7)
  {
    if (a4 <= 1)
    {
      [UIBoxcarFilterPointFIFO initWithFIFO:width:spacing:];
    }

    v7->_width = a4;
    v7->_spacing = a5;
    v7->_prevPoints = objc_alloc_init(_UIPointVector);
  }

  return v8;
}

- (void)emitAveragedPoint
{
  if ([(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count])
  {
    v3 = 0;
    v6 = 0u;
    do
    {
      [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] vectorAtIndex:v3];
      v6 = vaddq_f32(v7, v4);
      ++v3;
    }

    while (v3 < [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count]);
  }

  else
  {
    v5.i32[1] = 0;
    v6 = 0u;
  }

  *v5.i32 = self->_width;
  -[_UIPointVector removeVectorAtIndex:]([(UIBoxcarFilterPointFIFO *)self prevPoints:vdivq_f32(v6], "removeVectorAtIndex:", 0);

  [(UIPointFIFO *)self emitPoint:v8];
}

- (void)addPoint:(UIBoxcarFilterPointFIFO *)self
{
  v9 = v2;
  v4 = [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count];
  v5 = [(UIBoxcarFilterPointFIFO *)self prevPoints];
  if (v4)
  {
    [(_UIPointVector *)v5 lastVector];
    v7 = vsubq_f32(v6, v9);
    v8 = vmulq_f32(v7, v7);
    if (sqrtf(vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))) >= self->_spacing)
    {
      [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] addVector:*v9.i64];
    }

    if ([(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count]== self->_width)
    {

      [(UIBoxcarFilterPointFIFO *)self emitAveragedPoint];
    }
  }

  else
  {
    [(_UIPointVector *)v5 addVector:*v9.i64];

    [(UIPointFIFO *)self emitPoint:*v9.i64];
  }
}

- (void)flush
{
  if ([(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count]== self->_width)
  {
    [(UIBoxcarFilterPointFIFO *)self emitAveragedPoint];
  }

  if ([(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] count])
  {
    [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] lastVector];
    [(UIPointFIFO *)self emitPoint:?];
  }

  [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] clear];
  v3.receiver = self;
  v3.super_class = UIBoxcarFilterPointFIFO;
  [(UIPointFIFO *)&v3 flush];
}

- (void)clear
{
  [(_UIPointVector *)[(UIBoxcarFilterPointFIFO *)self prevPoints] clear];
  v3.receiver = self;
  v3.super_class = UIBoxcarFilterPointFIFO;
  [(UIPointFIFO *)&v3 clear];
}

- (void)dealloc
{
  self->_prevPoints = 0;
  v3.receiver = self;
  v3.super_class = UIBoxcarFilterPointFIFO;
  [(UIPointFIFO *)&v3 dealloc];
}

@end