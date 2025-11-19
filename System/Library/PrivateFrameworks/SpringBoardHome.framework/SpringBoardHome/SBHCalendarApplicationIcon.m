@interface SBHCalendarApplicationIcon
- (SBHCalendarApplicationIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6;
- (void)dealloc;
- (void)localeChanged;
@end

@implementation SBHCalendarApplicationIcon

- (SBHCalendarApplicationIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBHCalendarApplicationIcon;
  v4 = [(SBLeafIcon *)&v9 initWithLeafIdentifier:a3 applicationBundleID:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SBCalendarIconImageProvider);
    imageProvider = v4->_imageProvider;
    v4->_imageProvider = v5;

    [(SBCalendarIconImageProvider *)v4->_imageProvider setDelegate:v4];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v4 selector:sel__boldTextStatusDidChange_ name:*MEMORY[0x1E69DD898] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (id)makeIconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v16 = a3;
  v17 = [(SBHCalendarApplicationIcon *)self imageProvider];
  v18 = [v17 iconImageWithInfo:v16 traitCollection:a5 options:{v14, v13, v12, v11}];

  return v18;
}

- (id)makeIconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v16 = a3;
  v17 = [(SBHCalendarApplicationIcon *)self imageProvider];
  v18 = [v17 iconLayerWithInfo:v16 traitCollection:a5 options:{v14, v13, v12, v11}];

  return v18;
}

@end