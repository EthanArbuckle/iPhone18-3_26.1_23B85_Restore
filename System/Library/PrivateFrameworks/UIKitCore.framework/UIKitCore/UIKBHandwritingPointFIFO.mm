@interface UIKBHandwritingPointFIFO
- (UIKBHandwritingPointFIFO)initWithFIFO:(id)a3;
- (void)clear;
- (void)emitPoint:(id *)a3;
- (void)flush;
@end

@implementation UIKBHandwritingPointFIFO

- (UIKBHandwritingPointFIFO)initWithFIFO:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIKBHandwritingPointFIFO;
  v5 = [(UIKBHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIKBHandwritingPointFIFO *)v5 setNextFIFO:v4];
  }

  return v6;
}

- (void)emitPoint:(id *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [v9 addPoint:{v8, v7, v6}];
}

- (void)flush
{
  v2 = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [v2 flush];
}

- (void)clear
{
  v2 = [(UIKBHandwritingPointFIFO *)self nextFIFO];
  [v2 clear];
}

@end