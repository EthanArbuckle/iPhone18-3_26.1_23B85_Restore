@interface UISubtitleCellContentView
@end

@implementation UISubtitleCellContentView

void __47___UISubtitleCellContentView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = 3;
    if (!a2)
    {
      v4 = 1;
    }

    v5 = *(WeakRetained + OBJC_IVAR____UISubtitleCellContentView__configuration[v4]);
    if (WeakRetained[55] != v5)
    {
      v6 = WeakRetained;
      [(_UISubtitleCellContentView *)WeakRetained _applyConfiguration:v5];
      WeakRetained = v6;
    }
  }
}

void __47___UISubtitleCellContentView_setConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[52];
    WeakRetained[52] = 0;
    v4 = WeakRetained;

    v3 = v4[51];
    v4[51] = 0;

    WeakRetained = v4;
  }
}

@end