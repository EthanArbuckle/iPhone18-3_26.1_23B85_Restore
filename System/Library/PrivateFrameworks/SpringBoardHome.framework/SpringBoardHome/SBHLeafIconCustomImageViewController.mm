@interface SBHLeafIconCustomImageViewController
- (SBHLeafIconCustomImageViewController)initWithIcon:(id)a3 iconImageCache:(id)a4;
- (void)loadView;
- (void)updateImage;
@end

@implementation SBHLeafIconCustomImageViewController

- (SBHLeafIconCustomImageViewController)initWithIcon:(id)a3 iconImageCache:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SBHLeafIconCustomImageViewController;
  v9 = [(SBHLeafIconCustomImageViewController *)&v16 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_icon, a3);
    objc_storeStrong(&v10->_iconImageCache, a4);
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
  v7 = [(SBHLeafIconCustomImageViewController *)self icon];
  v3 = [(SBHLeafIconCustomImageViewController *)self iconImageCache];
  v4 = [(SBHLeafIconCustomImageViewController *)self traitCollection];
  v5 = [v3 imageForIcon:v7 compatibleWithTraitCollection:v4 options:0];
  v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
  [(SBHLeafIconCustomImageViewController *)self setView:v6];
}

- (void)updateImage
{
  v7 = [(SBHLeafIconCustomImageViewController *)self icon];
  v3 = [(SBHLeafIconCustomImageViewController *)self iconImageCache];
  v4 = [(SBHLeafIconCustomImageViewController *)self traitCollection];
  v5 = [v3 imageForIcon:v7 compatibleWithTraitCollection:v4 options:0];
  v6 = [(SBHLeafIconCustomImageViewController *)self imageView];
  [v6 setImage:v5];
}

@end