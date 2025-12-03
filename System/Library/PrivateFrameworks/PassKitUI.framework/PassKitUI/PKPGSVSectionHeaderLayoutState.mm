@interface PKPGSVSectionHeaderLayoutState
- (void)initWithContext:(void *)context;
@end

@implementation PKPGSVSectionHeaderLayoutState

- (void)initWithContext:(void *)context
{
  v4 = a2;
  v5 = v4;
  if (context && v4)
  {
    v14.receiver = context;
    v14.super_class = PKPGSVSectionHeaderLayoutState;
    v6 = objc_msgSendSuper2(&v14, sel_init);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
      v8 = v5[6];
      v9 = v8;
      if (v8 && [v8 count])
      {
        v10 = [v9 pk_createArrayByApplyingBlock:&__block_literal_global_240];
        v11 = v7[3];
        v7[3] = v10;
      }
    }

    context = v7;
    contextCopy = context;
  }

  else
  {
    contextCopy = 0;
  }

  return contextCopy;
}

PKPGSVSectionSubheaderLayoutState *__50__PKPGSVSectionHeaderLayoutState_initWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PKPGSVSectionSubheaderLayoutState alloc];
  v5 = v3;
  v6 = v5;
  if (v4 && v5)
  {
    v11.receiver = v4;
    v11.super_class = PKPGSVSectionSubheaderLayoutState;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
    }

    v4 = v8;
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end