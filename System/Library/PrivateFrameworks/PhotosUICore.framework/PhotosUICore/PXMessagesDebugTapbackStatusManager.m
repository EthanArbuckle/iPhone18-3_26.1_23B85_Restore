@interface PXMessagesDebugTapbackStatusManager
- (id)tapbackUserDataForAsset:(id)a3 previousAsset:(id)a4;
@end

@implementation PXMessagesDebugTapbackStatusManager

- (id)tapbackUserDataForAsset:(id)a3 previousAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PXMessagesDebugTapbackUserData);
  if ([v5 isFavorite])
  {
    v8 = [v5 isFavorite];
    v9 = v8 ^ [v6 isFavorite];
  }

  else
  {
    v9 = 0;
  }

  [(PXMessagesDebugTapbackUserData *)v7 setShouldAnimate:v9];
  [(PXMessagesDebugTapbackUserData *)v7 setAsset:v5];

  return v7;
}

@end