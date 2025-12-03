@interface BKImageSequence
- (BKImageSequence)initWithBasename:(id)basename bundle:(id)bundle imageCount:(int64_t)count scale:(double)scale;
- (CGImage)_createImageForIndex:(unint64_t)index basename:(id)basename scale:(double)scale idiom:(id)idiom bundle:(id)bundle;
- (CGImage)_imageAtIndex:(int64_t)index;
- (id)allImages;
- (void)_loadAllImages;
@end

@implementation BKImageSequence

- (void)_loadAllImages
{
  if (self->_maximumImageCount >= 1)
  {
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    v7 = 0;
    do
    {
      [(BKImageSequence *)self _imageAtIndex:v7++, v8, v9, v10, v11];
    }

    while (v7 < self->_maximumImageCount);
  }
}

- (CGImage)_imageAtIndex:(int64_t)index
{
  if (self->_maximumImageCount <= index)
  {
    v12 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"imageIndex < _maximumImageCount"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      *v17 = v13;
      *&v17[8] = 2114;
      *&v17[10] = v15;
      *&v17[18] = 2048;
      *&v17[20] = self;
      v18 = 2114;
      v19 = @"BKImageSequence.m";
      v20 = 1024;
      v21 = 116;
      v22 = 2114;
      v23 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10003A110);
  }

  v5 = [(NSPointerArray *)self->_images pointerAtIndex:?];
  if (!v5)
  {
    v6 = [(BKImageSequence *)self _createImageForIndex:index basename:self->_basename scale:self->_idiomSuffix idiom:self->_bundle bundle:self->_scale];
    if (v6 || [(NSString *)self->_idiomSuffix length]&& (v6 = [(BKImageSequence *)self _createImageForIndex:index basename:self->_basename scale:&stru_1001013E0 idiom:self->_bundle bundle:self->_scale]) != 0)
    {
      v5 = v6;
      [(NSPointerArray *)self->_images replacePointerAtIndex:index withPointer:v6];
      CGImageRelease(v5);
    }

    else
    {
      v7 = sub_1000524BC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        basename = self->_basename;
        scale = self->_scale;
        *buf = 67109634;
        *v17 = &index;
        *&v17[4] = 2114;
        *&v17[6] = basename;
        *&v17[14] = 2048;
        *&v17[16] = scale;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "missing image index:%d basename:%{public}@ scale:%g", buf, 0x1Cu);
      }

      return 0;
    }
  }

  return v5;
}

- (CGImage)_createImageForIndex:(unint64_t)index basename:(id)basename scale:(double)scale idiom:(id)idiom bundle:(id)bundle
{
  basenameCopy = basename;
  idiomCopy = idiom;
  bundleCopy = bundle;
  v14 = sub_1000524BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109890;
    *v27 = index;
    *&v27[4] = 2114;
    *&v27[6] = basenameCopy;
    *&v27[14] = 2048;
    *&v27[16] = scale;
    v28 = 2114;
    v29 = idiomCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "loading image:%d for basename:%{public}@ scale:%g idiom:%{public}@", buf, 0x26u);
  }

  if (scale <= 1.0)
  {
    idiomCopy = [NSString stringWithFormat:@"%@%d%@%@", basenameCopy, index, &stru_1001013E0, idiomCopy];
  }

  else
  {
    scale = [NSString stringWithFormat:@"@%dx", scale];
    idiomCopy = [NSString stringWithFormat:@"%@%d%@%@", basenameCopy, index, scale, idiomCopy];
  }

  v17 = [bundleCopy URLForResource:idiomCopy withExtension:@".png"];
  v18 = v17;
  if (v17 && (v19 = CGImageSourceCreateWithURL(v17, 0)) != 0)
  {
    v20 = v19;
    v21 = sub_1000524BC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *v27 = idiomCopy;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Loaded: %{public}@", buf, 0xCu);
    }

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v20, 0, 0);
    CFRelease(v20);
  }

  else
  {
    v23 = sub_1000524BC();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      bundlePath = [bundleCopy bundlePath];
      *buf = 138543618;
      *v27 = idiomCopy;
      *&v27[8] = 2114;
      *&v27[10] = bundlePath;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Can't find requested image: %{public}@ in %{public}@", buf, 0x16u);
    }

    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

- (id)allImages
{
  [(BKImageSequence *)self _loadAllImages];
  images = self->_images;

  return [(NSPointerArray *)images allObjects];
}

- (BKImageSequence)initWithBasename:(id)basename bundle:(id)bundle imageCount:(int64_t)count scale:(double)scale
{
  basenameCopy = basename;
  bundleCopy = bundle;
  v21.receiver = self;
  v21.super_class = BKImageSequence;
  v12 = [(BKImageSequence *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_maximumImageCount = count;
    v12->_scale = scale;
    v14 = [basenameCopy copy];
    basename = v13->_basename;
    v13->_basename = v14;

    objc_storeStrong(&v13->_bundle, bundle);
    v16 = [NSPointerArray pointerArrayWithOptions:0];
    images = v13->_images;
    v13->_images = v16;

    [(NSPointerArray *)v13->_images setCount:count];
    _idiomSuffix = [(BKImageSequence *)v13 _idiomSuffix];
    idiomSuffix = v13->_idiomSuffix;
    v13->_idiomSuffix = _idiomSuffix;
  }

  return v13;
}

@end