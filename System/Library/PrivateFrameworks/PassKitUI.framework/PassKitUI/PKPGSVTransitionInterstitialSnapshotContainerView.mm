@interface PKPGSVTransitionInterstitialSnapshotContainerView
- (double)initWithSnapshotSize:(double)a3;
@end

@implementation PKPGSVTransitionInterstitialSnapshotContainerView

- (double)initWithSnapshotSize:(double)a3
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = PKPGSVTransitionInterstitialSnapshotContainerView;
    result = objc_msgSendSuper2(&v5, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    if (result)
    {
      result[51] = a2;
      result[52] = a3;
    }
  }

  return result;
}

@end