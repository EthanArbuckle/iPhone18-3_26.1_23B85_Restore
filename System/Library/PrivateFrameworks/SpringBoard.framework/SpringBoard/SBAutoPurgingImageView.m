@interface SBAutoPurgingImageView
- (SBAutoPurgingImageView)initWithImageGenerationBlock:(id)a3;
- (void)didMoveToWindow;
@end

@implementation SBAutoPurgingImageView

- (SBAutoPurgingImageView)initWithImageGenerationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBAutoPurgingImageView;
  v5 = [(SBAutoPurgingImageView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v3 = [(SBAutoPurgingImageView *)self window];
  if (v3)
  {
    v4 = (*(self->_block + 2))();
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = self;
  v5.super_class = SBAutoPurgingImageView;
  [(SBAutoPurgingImageView *)&v5 setImage:v4];
}

@end