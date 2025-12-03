@interface UIPointFIFO
- (UIPointFIFO)initWithFIFO:(id)o;
- (void)dealloc;
- (void)emitPoint:(UIPointFIFO *)self;
@end

@implementation UIPointFIFO

- (UIPointFIFO)initWithFIFO:(id)o
{
  v6.receiver = self;
  v6.super_class = UIPointFIFO;
  v4 = [(UIPointFIFO *)&v6 init];
  if (v4)
  {
    v4->_nextFIFO = o;
  }

  return v4;
}

- (void)dealloc
{
  self->_nextFIFO = 0;
  v3.receiver = self;
  v3.super_class = UIPointFIFO;
  [(UIPointFIFO *)&v3 dealloc];
}

- (void)emitPoint:(UIPointFIFO *)self
{
  v4 = v2;
  nextFIFO = [(UIPointFIFO *)self nextFIFO];

  [(UIPointFIFO *)nextFIFO addPoint:v4];
}

@end