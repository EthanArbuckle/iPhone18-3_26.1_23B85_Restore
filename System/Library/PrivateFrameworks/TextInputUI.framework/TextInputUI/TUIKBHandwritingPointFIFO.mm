@interface TUIKBHandwritingPointFIFO
- (TUIKBHandwritingPointFIFO)initWithFIFO:(id)o;
- (void)clear;
- (void)emitPoint:(id *)point;
- (void)flush;
@end

@implementation TUIKBHandwritingPointFIFO

- (void)clear
{
  nextFIFO = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO clear];
}

- (void)flush
{
  nextFIFO = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO flush];
}

- (void)emitPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  nextFIFO = [(TUIKBHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO addPoint:{v8, v7, v6}];
}

- (TUIKBHandwritingPointFIFO)initWithFIFO:(id)o
{
  oCopy = o;
  v8.receiver = self;
  v8.super_class = TUIKBHandwritingPointFIFO;
  v5 = [(TUIKBHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TUIKBHandwritingPointFIFO *)v5 setNextFIFO:oCopy];
  }

  return v6;
}

@end