@interface _UIActivityBundleImageConfiguration
- (UIImage)fetchedImage;
- (_UIActivityBundleImageConfiguration)initWithCoder:(id)a3;
- (_UIActivityBundleImageConfiguration)initWithImageName:(id)a3 bundlePath:(id)a4 activityCategory:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIActivityBundleImageConfiguration

- (_UIActivityBundleImageConfiguration)initWithImageName:(id)a3 bundlePath:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _UIActivityBundleImageConfiguration;
  v10 = [(_UIActivityBundleImageConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    imageName = v10->_imageName;
    v10->_imageName = v11;

    v13 = [v9 copy];
    bundlePath = v10->_bundlePath;
    v10->_bundlePath = v13;

    v10->_activityCategory = a5;
  }

  return v10;
}

- (UIImage)fetchedImage
{
  v19[2] = *MEMORY[0x1E69E9840];
  p_fetchedImage = &self->_fetchedImage;
  v4 = self->_fetchedImage;
  if (!v4)
  {
    v5 = [(_UIActivityBundleImageConfiguration *)self imageName];
    v6 = [(_UIActivityBundleImageConfiguration *)self bundlePath];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];
      v4 = [MEMORY[0x1E69DCAB8] imageNamed:v5 inBundle:v7];
    }

    else
    {
      v8 = MEMORY[0x1E69DD1B8];
      v9 = [MEMORY[0x1E69DCEB0] mainScreen];
      v10 = [v9 traitCollection];
      v19[0] = v10;
      v11 = MEMORY[0x1E69DD1B8];
      v12 = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v11 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v12, "userInterfaceIdiom")}];
      v19[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v15 = [v8 traitCollectionWithTraitsFromCollections:v14];

      v16 = MEMORY[0x1E69DCAB8];
      v17 = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v16 imageNamed:v5 inBundle:v17 compatibleWithTraitCollection:v15];
    }

    objc_storeStrong(p_fetchedImage, v4);
  }

  return v4;
}

- (_UIActivityBundleImageConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIActivityBundleImageConfiguration;
  v5 = [(_UIActivityBundleImageConfiguration *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_imageName);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    imageName = v5->_imageName;
    v5->_imageName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_bundlePath);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v12;

    v14 = NSStringFromSelector(sel_activityCategory);
    v5->_activityCategory = [v4 decodeIntegerForKey:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityBundleImageConfiguration *)self imageName];
  v6 = NSStringFromSelector(sel_imageName);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(_UIActivityBundleImageConfiguration *)self bundlePath];
  v8 = NSStringFromSelector(sel_bundlePath);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(_UIActivityBundleImageConfiguration *)self activityCategory];
  v10 = NSStringFromSelector(sel_activityCategory);
  [v4 encodeInteger:v9 forKey:v10];
}

@end