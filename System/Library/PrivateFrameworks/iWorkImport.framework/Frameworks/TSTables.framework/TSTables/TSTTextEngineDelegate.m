@interface TSTTextEngineDelegate
- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)a3 verticalAlignment:(int)a4 locale:(id)a5 shouldHyphenate:(BOOL)a6 styleProvidingSource:(id)a7;
- (TSWPStyleProviding)styleProvidingSource;
@end

@implementation TSTTextEngineDelegate

- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)a3 verticalAlignment:(int)a4 locale:(id)a5 shouldHyphenate:(BOOL)a6 styleProvidingSource:(id)a7
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v16 = a5;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = TSTTextEngineDelegate;
  v18 = [(TSTTextEngineDelegate *)&v27 init];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D80EB0]);
    v24 = objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(v19, v20, v21, v22, v23, top, left, bottom, right);
    mPadding = v18->mPadding;
    v18->mPadding = v24;

    v18->mVerticalAlignment = a4;
    v18->mMaxWidthForChildren = 1.79769313e308;
    objc_storeStrong(&v18->mLocale, a5);
    v18->mShouldHyphenate = a6;
    objc_storeWeak(&v18->mStyleProvidingSource, v17);
  }

  return v18;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->mStyleProvidingSource);

  return WeakRetained;
}

@end