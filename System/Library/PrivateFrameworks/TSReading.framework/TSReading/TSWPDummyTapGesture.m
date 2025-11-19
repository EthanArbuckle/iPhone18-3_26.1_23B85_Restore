@interface TSWPDummyTapGesture
- (CGPoint)boundsLocationForICC:(id)a3;
- (CGPoint)naturalLocationForRep:(id)a3;
- (CGPoint)unscaledLocationForICC:(id)a3;
- (TSWPDummyTapGesture)initWithKind:(id)a3;
- (void)dealloc;
@end

@implementation TSWPDummyTapGesture

- (TSWPDummyTapGesture)initWithKind:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSWPDummyTapGesture;
  v4 = [(TSWPDummyTapGesture *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSWPDummyTapGesture *)v4 setGestureKind:a3];
  }

  return v5;
}

- (void)dealloc
{
  [(TSWPDummyTapGesture *)self setGestureKind:0];
  v3.receiver = self;
  v3.super_class = TSWPDummyTapGesture;
  [(TSWPDummyTapGesture *)&v3 dealloc];
}

- (CGPoint)unscaledLocationForICC:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)boundsLocationForICC:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)naturalLocationForRep:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

@end