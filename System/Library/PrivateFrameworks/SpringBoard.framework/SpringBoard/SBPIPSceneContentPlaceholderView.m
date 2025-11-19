@interface SBPIPSceneContentPlaceholderView
- (SBPIPSceneContentPlaceholderView)initWithImage:(id)a3;
- (void)layoutSubviews;
@end

@implementation SBPIPSceneContentPlaceholderView

- (SBPIPSceneContentPlaceholderView)initWithImage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBPIPSceneContentPlaceholderView;
  v5 = [(SBPIPSceneContentPlaceholderView *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v4];
    [(UIImageView *)v6 setContentMode:2];
    imageView = v5->_imageView;
    v5->_imageView = v6;
    v8 = v6;

    [(SBPIPSceneContentPlaceholderView *)v5 addSubview:v5->_imageView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBPIPSceneContentPlaceholderView;
  [(SBPIPSceneContentPlaceholderView *)&v4 layoutSubviews];
  imageView = self->_imageView;
  [(SBPIPSceneContentPlaceholderView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
}

@end