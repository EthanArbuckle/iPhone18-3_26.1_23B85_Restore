@interface SUCellConfiguration
- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (CGRect)frameForImageAtIndex:(unint64_t)index;
- (CGRect)frameForLabelAtIndex:(unint64_t)index;
- (CGSize)layoutSize;
- (void)dealloc;
- (void)setContext:(id)context;
- (void)setIsDeleteConfirmationVisible:(BOOL)visible;
- (void)setRepresentedObject:(id)object;
@end

@implementation SUCellConfiguration

- (void)dealloc
{
  self->_context = 0;

  self->_representedObject = 0;
  v3.receiver = self;
  v3.super_class = SUCellConfiguration;
  [(SUCellConfiguration *)&v3 dealloc];
}

- (CGRect)frameForImageAtIndex:(unint64_t)index
{
  [objc_msgSend(MEMORY[0x1E696AAA8] currentHandler];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForLabelAtIndex:(unint64_t)index
{
  [objc_msgSend(MEMORY[0x1E696AAA8] currentHandler];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (color)
  {
    *color = 0;
  }

  if (offset)
  {
    *offset = *MEMORY[0x1E695F060];
  }

  return 0;
}

- (CGSize)layoutSize
{
  view = self->_view;
  if (view)
  {
    [(SUCellConfigurationView *)view bounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setContext:(id)context
{
  context = self->_context;
  if (context != context)
  {

    self->_context = context;

    [(SUCellConfiguration *)self setNeedsDisplay:1];
  }
}

- (void)setRepresentedObject:(id)object
{
  representedObject = self->_representedObject;
  if (representedObject != object)
  {

    self->_representedObject = object;

    [(SUCellConfiguration *)self setNeedsDisplay:1];
  }
}

- (void)setIsDeleteConfirmationVisible:(BOOL)visible
{
  v3 = *(self + 16);
  if ((v3 & 1) != visible)
  {
    *(self + 16) = v3 & 0xFE | visible;
  }
}

@end