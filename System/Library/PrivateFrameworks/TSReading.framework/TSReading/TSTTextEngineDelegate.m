@interface TSTTextEngineDelegate
- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)a3 verticalAlignment:(unsigned int)a4;
- (void)dealloc;
@end

@implementation TSTTextEngineDelegate

- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)a3 verticalAlignment:(unsigned int)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v11.receiver = self;
  v11.super_class = TSTTextEngineDelegate;
  v9 = [(TSTTextEngineDelegate *)&v11 init];
  if (v9)
  {
    v9->mPadding = [[TSWPPadding alloc] initWithTopInset:top leftInset:left bottomInset:bottom rightInset:right];
    v9->mVerticalAlignment = a4;
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