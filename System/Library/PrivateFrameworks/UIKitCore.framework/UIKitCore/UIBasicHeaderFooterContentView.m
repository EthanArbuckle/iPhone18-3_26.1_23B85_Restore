@interface UIBasicHeaderFooterContentView
@end

@implementation UIBasicHeaderFooterContentView

void __52___UIBasicHeaderFooterContentView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = 2;
    if (!a2)
    {
      v4 = 1;
    }

    v5 = *(WeakRetained + OBJC_IVAR____UIBasicHeaderFooterContentView__configuration[v4]);
    if (WeakRetained[54] != v5)
    {
      v6 = WeakRetained;
      [(_UIBasicHeaderFooterContentView *)WeakRetained _applyConfiguration:v5];
      WeakRetained = v6;
    }
  }
}

void __52___UIBasicHeaderFooterContentView_setConfiguration___block_invoke_2(uint64_t a1)
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