@interface SBUISystemApertureImageContentProvider
- (SBUISystemApertureImageContentProvider)initWithImage:(id)image;
- (SBUISystemApertureImageContentProvider)initWithSystemImageName:(id)name;
@end

@implementation SBUISystemApertureImageContentProvider

- (SBUISystemApertureImageContentProvider)initWithSystemImageName:(id)name
{
  v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:name];
  v5 = [(SBUISystemApertureImageContentProvider *)self initWithImage:v4];

  return v5;
}

- (SBUISystemApertureImageContentProvider)initWithImage:(id)image
{
  v4 = MEMORY[0x1E69DCAE0];
  imageCopy = image;
  v6 = [[v4 alloc] initWithImage:imageCopy];

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