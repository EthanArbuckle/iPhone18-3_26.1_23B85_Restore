@interface UIEditMenuPageButton
@end

@implementation UIEditMenuPageButton

void __55___UIEditMenuPageButton__configureButtonWithGroupName___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 configuration];
  if ([v14 isHighlighted])
  {
    v4 = [*(a1 + 32) menuHighlightBackgroundColor];
    v5 = [v3 background];
    [v5 setBackgroundColor:v4];

    v6 = [*(a1 + 32) menuHighlightBackgroundEffect];
    v7 = [v3 background];
    [v7 setVisualEffect:v6];

    v8 = 0;
  }

  else
  {
    v9 = +[UIColor clearColor];
    v10 = [v3 background];
    [v10 setBackgroundColor:v9];

    v11 = [*(a1 + 32) menuBackgroundEffect];
    v12 = [v3 background];
    [v12 setVisualEffect:v11];

    v8 = *(a1 + 40);
  }

  v13 = [v3 background];
  [v13 _setVisualEffectGroupName:v8];

  [v14 setConfiguration:v3];
}

@end