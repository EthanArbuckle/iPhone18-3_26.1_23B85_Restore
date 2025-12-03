@interface TSTTextEngineDelegate
- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)padding verticalAlignment:(unsigned int)alignment;
- (void)dealloc;
@end

@implementation TSTTextEngineDelegate

- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)padding verticalAlignment:(unsigned int)alignment
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v11.receiver = self;
  v11.super_class = TSTTextEngineDelegate;
  v9 = [(TSTTextEngineDelegate *)&v11 init];
  if (v9)
  {
    v9->mPadding = [[TSWPPadding alloc] initWithTopInset:top leftInset:left bottomInset:bottom rightInset:right];
    v9->mVerticalAlignment = alignment;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTextEngineDelegate;
  [(TSTTextEngineDelegate *)&v3 dealloc];
}

@end