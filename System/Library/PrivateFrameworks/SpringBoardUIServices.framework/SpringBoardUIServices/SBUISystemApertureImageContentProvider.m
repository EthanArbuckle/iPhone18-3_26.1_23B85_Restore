@interface SBUISystemApertureImageContentProvider
- (SBUISystemApertureImageContentProvider)initWithImage:(id)a3;
- (SBUISystemApertureImageContentProvider)initWithSystemImageName:(id)a3;
@end

@implementation SBUISystemApertureImageContentProvider

- (SBUISystemApertureImageContentProvider)initWithSystemImageName:(id)a3
{
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:a3];
  v5 = [(SBUISystemApertureImageContentProvider *)self initWithImage:v4];

  return v5;
}

- (SBUISystemApertureImageContentProvider)initWithImage:(id)a3
{
  v4 = MEMORY[0x1E69DCAE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:v5];

  [(UIImageView *)v6 setContentMode:1];
  imageView = self->_imageView;
  self->_imageView = v6;
  v8 = v6;

  v11.receiver = self;
  v11.super_class = SBUISystemApertureImageContentProvider;
  v9 = [(SBUISystemApertureAspectFittingContentProvider *)&v11 initWithView:v8];

  return v9;
}

@end