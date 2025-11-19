@interface TUIKBHandwritingPointFIFO
- (TUIKBHandwritingPointFIFO)initWithFIFO:(id)a3;
- (void)clear;
- (void)emitPoint:(id *)a3;
- (void)flush;
@end

@implementation TUIKBHandwritingPointFIFO

- (void)clear
{
  v2 = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [v2 clear];
}

- (void)flush
{
  v2 = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [v2 flush];
}

- (void)emitPoint:(id *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [v9 addPoint:{v8, v7, v6}];
}

- (TUIKBHandwritingPointFIFO)initWithFIFO:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIKBHandwritingPointFIFO;
  v5 = [(TUIKBHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUIKBHandwritingPointFIFO *)v5 setNextFIFO:v4];
  }

  return v6;
}

@end