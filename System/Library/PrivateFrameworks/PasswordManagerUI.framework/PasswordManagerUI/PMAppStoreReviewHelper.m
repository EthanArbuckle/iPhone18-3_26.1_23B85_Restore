@interface PMAppStoreReviewHelper
- (void)attemptToRequestReview:(id)a3;
@end

@implementation PMAppStoreReviewHelper

- (void)attemptToRequestReview:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getSKStoreReviewControllerClass_softClass;
  v10 = getSKStoreReviewControllerClass_softClass;
  if (!getSKStoreReviewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSKStoreReviewControllerClass_block_invoke;
    v6[3] = &unk_27831C958;
    v6[4] = &v7;
    __getSKStoreReviewControllerClass_block_invoke(v6);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  [v4 requestReviewInScene:v3];
}

@end