@interface TUICompactVariantSelectorView
- (UIEdgeInsets)stackLayoutMargins;
- (id)heightConstraintsForVariantCell:(id)a3;
- (id)variantCellWithString:(id)a3 annotation:(id)a4;
@end

@implementation TUICompactVariantSelectorView

- (id)heightConstraintsForVariantCell:(id)a3
{
  v4 = a3;
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v8.receiver = self;
    v8.super_class = TUICompactVariantSelectorView;
    v5 = [(TUIVariantSelectorView *)&v8 heightConstraintsForVariantCell:v4];
  }

  else
  {
    v6 = [v4 heightAnchor];

    v5 = [v6 constraintEqualToConstant:30.0];
  }

  return v5;
}

- (UIEdgeInsets)stackLayoutMargins
{
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v7.receiver = self;
    v7.super_class = TUICompactVariantSelectorView;
    [(TUIVariantSelectorView *)&v7 stackLayoutMargins];
  }

  else
  {
    v4 = 5.0;
    v3 = 0.0;
    v5 = 0.0;
    v6 = 5.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)variantCellWithString:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUICompactVariantCell alloc];
  v9 = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:v7 string:v6 annotation:v9 traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

@end