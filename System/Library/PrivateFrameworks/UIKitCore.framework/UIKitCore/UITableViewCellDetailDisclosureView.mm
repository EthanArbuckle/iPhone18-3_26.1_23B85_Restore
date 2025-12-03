@interface UITableViewCellDetailDisclosureView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UITableViewCellDetailDisclosureView)initWithTarget:(id)target action:(SEL)action cell:(id)cell buttonType:(int64_t)type shouldReverseLayoutDirection:(BOOL)direction;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateDisclosureChevronImage;
- (void)setAccessoryTintColor:(id)color;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation UITableViewCellDetailDisclosureView

- (UITableViewCellDetailDisclosureView)initWithTarget:(id)target action:(SEL)action cell:(id)cell buttonType:(int64_t)type shouldReverseLayoutDirection:(BOOL)direction
{
  cellCopy = cell;
  v19.receiver = self;
  v19.super_class = UITableViewCellDetailDisclosureView;
  v11 = [(UIControl *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cell, cellCopy);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__UITableViewCellDetailDisclosureView_initWithTarget_action_cell_buttonType_shouldReverseLayoutDirection___block_invoke;
    v14[3] = &unk_1E7102A70;
    v15 = v12;
    typeCopy = type;
    v16 = cellCopy;
    directionCopy = direction;
    [UIView performWithoutAnimation:v14];
  }

  return v12;
}

void __106__UITableViewCellDetailDisclosureView_initWithTarget_action_cell_buttonType_shouldReverseLayoutDirection___block_invoke(uint64_t a1)
{
  v2 = [UIButton buttonWithType:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 456);
  *(v3 + 456) = v2;

  [*(a1 + 32) addSubview:*(*(a1 + 32) + 456)];
  v39 = [*(a1 + 40) _disclosureChevronImage];
  v5 = [[UIImageView alloc] initWithImage:v39];
  v6 = *(a1 + 32);
  v7 = *(v6 + 464);
  *(v6 + 464) = v5;

  v8 = MEMORY[0x1E695F058];
  v9 = [*(*(a1 + 32) + 464) image];
  [v9 size];
  v11 = v10;
  v13 = v12;

  v14 = 0.0;
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(*(a1 + 32) + 456) frame];
    v14 = CGRectGetMaxX(v41) + 12.0;
  }

  v15 = *(v8 + 8);
  [*(*(a1 + 32) + 456) frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect = v15;
  if (*(a1 + 56))
  {
    v42.origin.x = v14;
    v42.origin.y = v15;
    v42.size.width = v11;
    v42.size.height = v13;
    v23 = CGRectGetMaxX(v42) + 12.0;
    [*(*(a1 + 32) + 456) setFrame:{v23, v18, v20, v22}];
    v16 = v23;
  }

  v24 = v18;
  v25 = v22;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  v29 = v20;
  v30 = v25;
  Height = CGRectGetHeight(*&v16);
  v43.origin.x = v14;
  v43.origin.y = rect;
  v43.size.width = v11;
  v43.size.height = v13;
  v32 = (Height - CGRectGetHeight(v43)) * 0.5;
  [*(*(a1 + 32) + 464) setFrame:{v14, v32, v11, v13}];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 464)];
  if (*(a1 + 56))
  {
    v33 = v24;
  }

  else
  {
    v33 = v32;
  }

  if (*(a1 + 56))
  {
    v34 = v26;
  }

  else
  {
    v34 = v14;
  }

  if (*(a1 + 56))
  {
    v35 = v28;
  }

  else
  {
    v35 = v11;
  }

  if (*(a1 + 56))
  {
    v36 = v30;
  }

  else
  {
    v36 = v13;
  }

  MaxX = CGRectGetMaxX(*(&v33 - 1));
  v44.origin.x = v26;
  v44.origin.y = v24;
  v44.size.width = v28;
  v44.size.height = v30;
  [*(a1 + 32) setFrame:{0.0, 0.0, MaxX, CGRectGetHeight(v44)}];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UITableViewCellDetailDisclosureView;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(UIImageView *)self->_disclosureView setSemanticContentAttribute:attribute];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self frame:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)_updateDisclosureChevronImage
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v3 = [WeakRetained _disclosureChevronImageWithBaseColor:self->_accessoryTintColor];
  [(UIImageView *)self->_disclosureView setImage:v3];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewCellDetailDisclosureView;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UITableViewCellDetailDisclosureView *)self _updateDisclosureChevronImage];
}

- (void)setAccessoryTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_accessoryTintColor isEqual:?])
  {
    objc_storeStrong(&self->_accessoryTintColor, color);
    [(UITableViewCellDetailDisclosureView *)self _updateDisclosureChevronImage];
  }
}

@end