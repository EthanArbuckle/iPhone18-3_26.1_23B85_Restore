@interface CACGestureLivePreviewHandwritingPointFIFO
- (CACGestureLivePreviewHandwritingPointFIFO)initWithFIFO:(id)o;
- (void)clear;
- (void)emitPoint:(id *)point;
- (void)flush;
@end

@implementation CACGestureLivePreviewHandwritingPointFIFO

- (CACGestureLivePreviewHandwritingPointFIFO)initWithFIFO:(id)o
{
  oCopy = o;
  v8.receiver = self;
  v8.super_class = CACGestureLivePreviewHandwritingPointFIFO;
  v5 = [(CACGestureLivePreviewHandwritingPointFIFO *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CACGestureLivePreviewHandwritingPointFIFO *)v5 setNextFIFO:oCopy];
  }

  return v6;
}

- (void)emitPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  nextFIFO = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO addPoint:{v8, v7, v6}];
}

- (void)flush
{
  nextFIFO = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO flush];
}

- (void)clear
{
  nextFIFO = [(CACGestureLivePreviewHandwritingPointFIFO *)self nextFIFO];
  [nextFIFO clear];
}

@end