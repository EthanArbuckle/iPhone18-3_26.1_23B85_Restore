@interface PREditorLookViews
- (NSArray)contentViews;
- (PREditorLookViews)init;
- (void)enumerateViewsUsingBlock:(id)block;
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

    layer = [(UIView *)v2->_backgroundView layer];
    [layer setName:@"backgroundView"];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    foregroundView = v2->_foregroundView;
    v2->_foregroundView = v6;

    layer2 = [(UIView *)v2->_foregroundView layer];
    [layer2 setName:@"foregroundView"];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    floatingView = v2->_floatingView;
    v2->_floatingView = v9;

    layer3 = [(UIView *)v2->_floatingView layer];
    [layer3 setName:@"floatingView"];
  }

  return v2;
}

- (void)enumerateViewsUsingBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_foregroundView, 1);
  (*v4)(blockCopy, self->_floatingView, 2);
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