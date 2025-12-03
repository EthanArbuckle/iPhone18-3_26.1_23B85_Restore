@interface UIKBHandwritingPointFIFO
- (UIKBHandwritingPointFIFO)initWithFIFO:(id)o;
- (void)clear;
- (void)emitPoint:(id *)point;
- (void)flush;
@end

@implementation UIKBHandwritingPointFIFO

- (UIKBHandwritingPointFIFO)initWithFIFO:(id)o
{
  oCopy = o;
  v8.receiver = self;
  v8.super_class = UIKBHandwritingPointFIFO;
  v5 = [(UIKBHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIKBHandwritingPointFIFO *)v5 setNextFIFO:oCopy];
  }

  return v6;
}

- (void)emitPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  nextFIFO = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO addPoint:{v8, v7, v6}];
}

- (void)flush
{
  nextFIFO = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO flush];
}

- (void)clear
{
  nextFIFO = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO clear];
}

@end