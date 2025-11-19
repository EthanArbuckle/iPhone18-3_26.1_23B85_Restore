@interface CACGestureLivePreviewHandwritingPointFIFO
- (CACGestureLivePreviewHandwritingPointFIFO)initWithFIFO:(id)a3;
- (void)clear;
- (void)emitPoint:(id *)a3;
- (void)flush;
@end

@implementation CACGestureLivePreviewHandwritingPointFIFO

- (CACGestureLivePreviewHandwritingPointFIFO)initWithFIFO:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CACGestureLivePreviewHandwritingPointFIFO;
  v5 = [(CACGestureLivePreviewHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CACGestureLivePreviewHandwritingPointFIFO *)v5 setNextFIFO:v4];
  }

  return v6;
}

- (void)emitPoint:(id *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [v9 addPoint:{v8, v7, v6}];
}

- (void)flush
{
  v2 = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [v2 flush];
}

- (void)clear
{
  v2 = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [v2 clear];
}

@end