@interface SUCellConfiguration
- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6;
- (CGRect)frameForImageAtIndex:(unint64_t)a3;
- (CGRect)frameForLabelAtIndex:(unint64_t)a3;
- (CGSize)layoutSize;
- (void)dealloc;
- (void)setContext:(id)a3;
- (void)setIsDeleteConfirmationVisible:(BOOL)a3;
- (void)setRepresentedObject:(id)a3;
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

- (CGRect)frameForImageAtIndex:(unint64_t)a3
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

- (CGRect)frameForLabelAtIndex:(unint64_t)a3
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

- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = *MEMORY[0x1E695F060];
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

- (void)setContext:(id)a3
{
  context = self->_context;
  if (context != a3)
  {

    self->_context = a3;

    [(SUCellConfiguration *)self setNeedsDisplay:1];
  }
}

- (void)setRepresentedObject:(id)a3
{
  representedObject = self->_representedObject;
  if (representedObject != a3)
  {

    self->_representedObject = a3;

    [(SUCellConfiguration *)self setNeedsDisplay:1];
  }
}

- (void)setIsDeleteConfirmationVisible:(BOOL)a3
{
  v3 = *(self + 16);
  if ((v3 & 1) != a3)
  {
    *(self + 16) = v3 & 0xFE | a3;
  }
}

@end