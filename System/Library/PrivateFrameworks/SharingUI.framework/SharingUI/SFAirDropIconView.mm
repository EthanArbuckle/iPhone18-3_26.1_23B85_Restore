@interface SFAirDropIconView
- (SFAirDropIconView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)loadImageIfNeeded;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SFAirDropIconView

- (SFAirDropIconView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = SFAirDropIconView;
  v3 = [(SFAirDropIconView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setUserInteractionEnabled:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFAirDropIconView *)v3 addSubview:v3->_imageView];
    v7 = MEMORY[0x1E696ACD8];
    v8 = _NSDictionaryOfVariableBindings(&cfstr_Imageview.isa, v3->_imageView, 0);
    v9 = [v7 constraintsWithVisualFormat:@"H:|[_imageView]|" options:0 metrics:0 views:v8];
    [(SFAirDropIconView *)v3 addConstraints:v9];

    v10 = MEMORY[0x1E696ACD8];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Imageview.isa, v3->_imageView, 0);
    v12 = [v10 constraintsWithVisualFormat:@"V:|[_imageView]|" options:0 metrics:0 views:v11];
    [(SFAirDropIconView *)v3 addConstraints:v12];
  }

  return v3;
}

- (void)loadImageIfNeeded
{
  image = [(UIImageView *)self->_imageView image];

  if (!image)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundleURL = [v4 bundleURL];

    v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"AirDrop-inactive.png" isDirectory:0 relativeToURL:bundleURL];
    v6 = MEMORY[0x1E69DCAB8];
    path = [v5 path];
    v8 = [v6 imageWithContentsOfFile:path];

    v9 = [MEMORY[0x1E69CD9E8] _activityImageForActionRepresentationImage:v8];
    [(UIImageView *)self->_imageView setImage:v9];
  }
}

- (void)layoutSubviews
{
  [(SFAirDropIconView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
  v3.receiver = self;
  v3.super_class = SFAirDropIconView;
  [(SFAirDropIconView *)&v3 layoutSubviews];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SFAirDropIconView;
  [(SFAirDropIconView *)&v6 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(UIImageView *)self->_imageView setDrawMode:v5];
}

@end