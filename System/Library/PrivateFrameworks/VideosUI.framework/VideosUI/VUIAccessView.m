@interface VUIAccessView
@end

@implementation VUIAccessView

void __68__VUIAccessView_iOS_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  v2 = [*(a1 + 40) colorWithAlphaComponent:0.5];
  [v1 setBackgroundColor:v2];
}

@end