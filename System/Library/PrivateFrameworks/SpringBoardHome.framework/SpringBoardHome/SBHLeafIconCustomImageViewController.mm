@interface SBHLeafIconCustomImageViewController
- (SBHLeafIconCustomImageViewController)initWithIcon:(id)icon iconImageCache:(id)cache;
- (void)loadView;
- (void)updateImage;
@end

@implementation SBHLeafIconCustomImageViewController

- (SBHLeafIconCustomImageViewController)initWithIcon:(id)icon iconImageCache:(id)cache
{
  v17[2] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = SBHLeafIconCustomImageViewController;
  v9 = [(SBHLeafIconCustomImageViewController *)&v16 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_icon, icon);
    objc_storeStrong(&v10->_iconImageCache, cache);
    v11 = objc_opt_self();
    v17[0] = v11;
    v12 = objc_opt_self();
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [(SBHLeafIconCustomImageViewController *)v10 registerForTraitChanges:v13 withAction:sel_updateImage];
  }

  return v10;
}

- (void)loadView
{
  icon = [(SBHLeafIconCustomImageViewController *)self icon];
  iconImageCache = [(SBHLeafIconCustomImageViewController *)self iconImageCache];
  traitCollection = [(SBHLeafIconCustomImageViewController *)self traitCollection];
  v5 = [iconImageCache imageForIcon:icon compatibleWithTraitCollection:traitCollection options:0];
  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  [(SBHLeafIconCustomImageViewController *)self setView:v6];
}

- (void)updateImage
{
  icon = [(SBHLeafIconCustomImageViewController *)self icon];
  iconImageCache = [(SBHLeafIconCustomImageViewController *)self iconImageCache];
  traitCollection = [(SBHLeafIconCustomImageViewController *)self traitCollection];
  v5 = [iconImageCache imageForIcon:icon compatibleWithTraitCollection:traitCollection options:0];
  imageView = [(SBHLeafIconCustomImageViewController *)self imageView];
  [imageView setImage:v5];
}

@end