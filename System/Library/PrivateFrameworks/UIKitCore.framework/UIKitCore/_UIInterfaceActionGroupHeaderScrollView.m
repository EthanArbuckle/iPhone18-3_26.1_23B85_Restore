@interface _UIInterfaceActionGroupHeaderScrollView
- (_UIInterfaceActionGroupHeaderScrollView)initWithContentView:(id)a3;
- (void)accessoryInsetsDidChange:(UIEdgeInsets)a3;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionGroupHeaderScrollView

- (_UIInterfaceActionGroupHeaderScrollView)initWithContentView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIInterfaceActionGroupHeaderScrollView;
  v6 = [(UIScrollView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_contentView];
    [(UIView *)v7->_contentView setClipsToBounds:0];
    [(UIView *)v7 setPreservesSuperviewLayoutMargins:0];
  }

  return v7;
}

- (void)accessoryInsetsDidChange:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UIInterfaceActionGroupHeaderScrollView;
  [(UIScrollView *)&v4 accessoryInsetsDidChange:a3.top, a3.left, a3.bottom, a3.right];
  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v29[2] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = _UIInterfaceActionGroupHeaderScrollView;
  [(UIView *)&v25 updateConstraints];
  if (self->_constraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
  }

  [(UIScrollView *)self accessoryInsets];
  v4 = v3;
  v6 = v5;
  v28[0] = @"leftInset";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v28[1] = @"rightInset";
  v29[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v29[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  contentView = self->_contentView;
  v26 = @"contentView";
  v27 = contentView;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-leftInset-[contentView]-rightInset-|" options:0x10000 metrics:v9 views:v11];
  [v12 addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:0 views:v11];
  [v12 addObjectsFromArray:v14];

  v15 = [(UIView *)self heightAnchor];
  v16 = [(UIView *)self->_contentView heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  LODWORD(v18) = 1144733696;
  [v17 setPriority:v18];
  [v12 addObject:v17];
  v19 = [(UIView *)self widthAnchor];
  v20 = [(UIView *)self->_contentView widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4 + v6];

  [v12 addObject:v21];
  v23 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v12, v22);
  constraints = self->_constraints;
  self->_constraints = v23;

  [MEMORY[0x1E69977A0] activateConstraints:self->_constraints];
}

@end