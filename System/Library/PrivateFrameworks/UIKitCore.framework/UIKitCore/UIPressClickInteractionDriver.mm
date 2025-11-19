@interface UIPressClickInteractionDriver
@end

@implementation UIPressClickInteractionDriver

void __54___UIPressClickInteractionDriver__handlePressGesture___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);

    [v9 cancelInteraction];
  }

  else if (!a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 clickDriver:*(a1 + 32) didPerformEvent:0];

    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 clickDriver:*(a1 + 32) didUpdateHighlightProgress:1.0];
    }

    v7 = [*(a1 + 32) delegate];
    [v7 clickDriver:*(a1 + 32) didPerformEvent:1];

    v8 = [*(a1 + 32) delegate];
    [v8 clickDriver:*(a1 + 32) didPerformEvent:2];

    v10 = [*(a1 + 32) delegate];
    [v10 clickDriver:*(a1 + 32) didPerformEvent:3];
  }
}

@end