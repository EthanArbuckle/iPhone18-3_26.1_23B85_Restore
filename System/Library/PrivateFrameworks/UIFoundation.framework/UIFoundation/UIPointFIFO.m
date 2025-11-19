@interface UIPointFIFO
- (UIPointFIFO)initWithFIFO:(id)a3;
- (void)dealloc;
- (void)emitPoint:(UIPointFIFO *)self;
@end

@implementation UIPointFIFO

- (UIPointFIFO)initWithFIFO:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIPointFIFO;
  v4 = [(UIPointFIFO *)&v6 init];
  if (v4)
  {
    v4->_nextFIFO = a3;
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
  v3 = [(UIPointFIFO *)self nextFIFO];

  [(UIPointFIFO *)v3 addPoint:v4];
}

@end