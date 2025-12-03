@interface _UIActivityBundleImageConfiguration
- (UIImage)fetchedImage;
- (_UIActivityBundleImageConfiguration)initWithCoder:(id)coder;
- (_UIActivityBundleImageConfiguration)initWithImageName:(id)name bundlePath:(id)path activityCategory:(int64_t)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIActivityBundleImageConfiguration

- (_UIActivityBundleImageConfiguration)initWithImageName:(id)name bundlePath:(id)path activityCategory:(int64_t)category
{
  nameCopy = name;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = _UIActivityBundleImageConfiguration;
  v10 = [(_UIActivityBundleImageConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    imageName = v10->_imageName;
    v10->_imageName = v11;

    v13 = [pathCopy copy];
    bundlePath = v10->_bundlePath;
    v10->_bundlePath = v13;

    v10->_activityCategory = category;
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
    imageName = [(_UIActivityBundleImageConfiguration *)self imageName];
    bundlePath = [(_UIActivityBundleImageConfiguration *)self bundlePath];
    if (bundlePath)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithPath:bundlePath];
      v4 = [MEMORY[0x1E69DCAB8] imageNamed:imageName inBundle:v7];
    }

    else
    {
      v8 = MEMORY[0x1E69DD1B8];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      v19[0] = traitCollection;
      v11 = MEMORY[0x1E69DD1B8];
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v11 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(currentDevice, "userInterfaceIdiom")}];
      v19[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v15 = [v8 traitCollectionWithTraitsFromCollections:v14];

      v16 = MEMORY[0x1E69DCAB8];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v16 imageNamed:imageName inBundle:mainBundle compatibleWithTraitCollection:v15];
    }

    objc_storeStrong(p_fetchedImage, v4);
  }

  return v4;
}

- (_UIActivityBundleImageConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _UIActivityBundleImageConfiguration;
  v5 = [(_UIActivityBundleImageConfiguration *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_imageName);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    imageName = v5->_imageName;
    v5->_imageName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_bundlePath);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v12;

    v14 = NSStringFromSelector(sel_activityCategory);
    v5->_activityCategory = [coderCopy decodeIntegerForKey:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageName = [(_UIActivityBundleImageConfiguration *)self imageName];
  v6 = NSStringFromSelector(sel_imageName);
  [coderCopy encodeObject:imageName forKey:v6];

  bundlePath = [(_UIActivityBundleImageConfiguration *)self bundlePath];
  v8 = NSStringFromSelector(sel_bundlePath);
  [coderCopy encodeObject:bundlePath forKey:v8];

  activityCategory = [(_UIActivityBundleImageConfiguration *)self activityCategory];
  v10 = NSStringFromSelector(sel_activityCategory);
  [coderCopy encodeInteger:activityCategory forKey:v10];
}

@end