@interface PUIStyleSelectableItemView
- (CGSize)intrinsicContentSize;
- (PUIStyleSelectableItemView)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUIStyleSelectableItemView

- (PUIStyleSelectableItemView)initWithFrame:(CGRect)frame
{
  v38[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = PUIStyleSelectableItemView;
  v3 = [(PUIStyleSelectableItemView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    Mutable = CGPathCreateMutable();
    [(PUIStyleSelectableItemView *)v3 intrinsicContentSize];
    v39.size.width = v5;
    v39.size.height = v6;
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v40 = CGRectInset(v39, 1.0, 1.0);
    CGPathAddEllipseInRect(Mutable, 0, v40);
    v7 = objc_alloc_init(PUIShapeView);
    shapeLayer = [(PUIShapeView *)v7 shapeLayer];
    [shapeLayer setPath:Mutable];
    [shapeLayer setLineWidth:3.0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v33 = shapeLayer;
    [shapeLayer setStrokeColor:{objc_msgSend(whiteColor, "CGColor")}];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [shapeLayer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [(PUIShapeView *)v7 setHidden:1];
    [(PUIShapeView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStyleSelectableItemView *)v3 addSubview:v7];
    selectionView = v3->_selectionView;
    v3->_selectionView = v7;
    v12 = v7;

    CGPathRelease(Mutable);
    v27 = MEMORY[0x1E696ACD8];
    topAnchor = [(PUIShapeView *)v12 topAnchor];
    topAnchor2 = [(PUIStyleSelectableItemView *)v3 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v38[0] = v29;
    leadingAnchor = [(PUIShapeView *)v12 leadingAnchor];
    leadingAnchor2 = [(PUIStyleSelectableItemView *)v3 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[1] = v14;
    v32 = v12;
    trailingAnchor = [(PUIShapeView *)v12 trailingAnchor];
    trailingAnchor2 = [(PUIStyleSelectableItemView *)v3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[2] = v17;
    bottomAnchor = [(PUIShapeView *)v12 bottomAnchor];
    bottomAnchor2 = [(PUIStyleSelectableItemView *)v3 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v38[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v27 activateConstraints:v21];

    v22 = objc_opt_self();
    v37 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __44__PUIStyleSelectableItemView_initWithFrame___block_invoke;
    v34[3] = &unk_1E78546D0;
    v35 = v33;
    v24 = v33;
    v25 = [(PUIStyleSelectableItemView *)v3 registerForTraitChanges:v23 withHandler:v34];
  }

  return v3;
}

void __44__PUIStyleSelectableItemView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setStrokeColor:{objc_msgSend(v3, "CGColor")}];

  v4 = *(a1 + 32);
  v6 = [MEMORY[0x1E69DC888] clearColor];
  v5 = v6;
  [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    selectionView = [(PUIStyleSelectableItemView *)self selectionView];
    [selectionView setHidden:!selectedCopy];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end