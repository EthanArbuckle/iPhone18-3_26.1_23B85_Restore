@interface SBHCalendarApplicationIcon
- (SBHCalendarApplicationIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options;
- (void)dealloc;
- (void)localeChanged;
@end

@implementation SBHCalendarApplicationIcon

- (SBHCalendarApplicationIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  v9.receiver = self;
  v9.super_class = SBHCalendarApplicationIcon;
  v4 = [(SBLeafIcon *)&v9 initWithLeafIdentifier:identifier applicationBundleID:d];
  if (v4)
  {
    v5 = objc_alloc_init(SBCalendarIconImageProvider);
    imageProvider = v4->_imageProvider;
    v4->_imageProvider = v5;

    [(SBCalendarIconImageProvider *)v4->_imageProvider setDelegate:v4];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__boldTextStatusDidChange_ name:*MEMORY[0x1E69DD898] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHCalendarApplicationIcon;
  [(SBLeafIcon *)&v4 dealloc];
}

- (void)localeChanged
{
  [(SBIcon *)self reloadIconImage];
  v3.receiver = self;
  v3.super_class = SBHCalendarApplicationIcon;
  [(SBIcon *)&v3 localeChanged];
}

- (id)makeIconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  infoCopy = info;
  imageProvider = [(SBHCalendarApplicationIcon *)self imageProvider];
  v18 = [imageProvider iconImageWithInfo:infoCopy traitCollection:context options:{v14, v13, v12, v11}];

  return v18;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection context:(id)context options:(unint64_t)options
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  infoCopy = info;
  imageProvider = [(SBHCalendarApplicationIcon *)self imageProvider];
  v18 = [imageProvider iconLayerWithInfo:infoCopy traitCollection:context options:{v14, v13, v12, v11}];

  return v18;
}

@end