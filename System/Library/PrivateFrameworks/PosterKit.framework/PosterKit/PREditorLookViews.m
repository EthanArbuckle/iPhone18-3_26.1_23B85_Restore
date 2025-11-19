@interface PREditorLookViews
- (NSArray)contentViews;
- (PREditorLookViews)init;
- (void)enumerateViewsUsingBlock:(id)a3;
@end

@implementation PREditorLookViews

- (PREditorLookViews)init
{
  v13.receiver = self;
  v13.super_class = PREditorLookViews;
  v2 = [(PREditorLookViews *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v2->_backgroundView;
    v2->_backgroundView = v3;

    v5 = [(UIView *)v2->_backgroundView layer];
    [v5 setName:@"backgroundView"];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    foregroundView = v2->_foregroundView;
    v2->_foregroundView = v6;

    v8 = [(UIView *)v2->_foregroundView layer];
    [v8 setName:@"foregroundView"];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    floatingView = v2->_floatingView;
    v2->_floatingView = v9;

    v11 = [(UIView *)v2->_floatingView layer];
    [v11 setName:@"floatingView"];
  }

  return v2;
}

- (void)enumerateViewsUsingBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_foregroundView, 1);
  (*v4)(v6, self->_floatingView, 2);
}

- (NSArray)contentViews
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *&self->_backgroundView;
  floatingView = self->_floatingView;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];

  return v2;
}

@end