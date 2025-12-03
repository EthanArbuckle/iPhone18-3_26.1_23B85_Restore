@interface TUICompactVariantSelectorView
- (UIEdgeInsets)stackLayoutMargins;
- (id)heightConstraintsForVariantCell:(id)cell;
- (id)variantCellWithString:(id)string annotation:(id)annotation;
@end

@implementation TUICompactVariantSelectorView

- (id)heightConstraintsForVariantCell:(id)cell
{
  cellCopy = cell;
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v8.receiver = self;
    v8.super_class = TUICompactVariantSelectorView;
    v5 = [(TUIVariantSelectorView *)&v8 heightConstraintsForVariantCell:cellCopy];
  }

  else
  {
    heightAnchor = [cellCopy heightAnchor];

    v5 = [heightAnchor constraintEqualToConstant:30.0];
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

- (id)variantCellWithString:(id)string annotation:(id)annotation
{
  annotationCopy = annotation;
  stringCopy = string;
  v8 = [TUICompactVariantCell alloc];
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:stringCopy string:annotationCopy annotation:renderTraits traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

@end