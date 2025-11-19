@interface TVZoomableTextView
@end

@implementation TVZoomableTextView

uint64_t __37___TVZoomableTextView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = [WeakRetained[78] tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:WeakRetained completionBlock:0];
    v2 = v4;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

uint64_t __37___TVZoomableTextView_initWithFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = [WeakRetained[78] tv_dispatchEvent:@"play" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:WeakRetained completionBlock:0];
    v2 = v4;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

@end