@interface UICalendarViewDecoration
+ (UICalendarViewDecoration)decorationWithColor:(UIColor *)color size:(UICalendarViewDecorationSize)size;
+ (UICalendarViewDecoration)decorationWithCustomViewProvider:(void *)customViewProvider;
+ (UICalendarViewDecoration)decorationWithImage:(UIImage *)image;
+ (UICalendarViewDecoration)decorationWithImage:(UIImage *)image color:(UIColor *)color size:(UICalendarViewDecorationSize)size;
+ (double)_referenceHeightForTraitCollection:(id)collection;
- (UICalendarViewDecoration)initWithCustomViewProvider:(void *)customViewProvider;
- (UICalendarViewDecoration)initWithDecorationItem:(id)item;
- (UICalendarViewDecoration)initWithImage:(UIImage *)image color:(UIColor *)color size:(UICalendarViewDecorationSize)size;
@end

@implementation UICalendarViewDecoration

- (UICalendarViewDecoration)initWithImage:(UIImage *)image color:(UIColor *)color size:(UICalendarViewDecorationSize)size
{
  v8 = color;
  v9 = image;
  v10 = [[_UICalendarViewImageDecoration alloc] initWithImage:v9 color:v8 size:size];

  v11 = [(UICalendarViewDecoration *)self initWithDecorationItem:v10];
  return v11;
}

- (UICalendarViewDecoration)initWithCustomViewProvider:(void *)customViewProvider
{
  v4 = customViewProvider;
  v5 = [[_UICalendarViewCustomViewDecoration alloc] initWithCustomViewProvider:v4];

  v6 = [(UICalendarViewDecoration *)self initWithDecorationItem:v5];
  return v6;
}

- (UICalendarViewDecoration)initWithDecorationItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = UICalendarViewDecoration;
  v6 = [(UICalendarViewDecoration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decoration, item);
  }

  return v7;
}

+ (UICalendarViewDecoration)decorationWithColor:(UIColor *)color size:(UICalendarViewDecorationSize)size
{
  v6 = color;
  v7 = [[self alloc] initWithImage:0 color:v6 size:size];

  return v7;
}

+ (UICalendarViewDecoration)decorationWithImage:(UIImage *)image
{
  v4 = image;
  v5 = [[self alloc] initWithImage:v4 color:0 size:1];

  return v5;
}

+ (UICalendarViewDecoration)decorationWithImage:(UIImage *)image color:(UIColor *)color size:(UICalendarViewDecorationSize)size
{
  v8 = color;
  v9 = image;
  v10 = [[self alloc] initWithImage:v9 color:v8 size:size];

  return v10;
}

+ (UICalendarViewDecoration)decorationWithCustomViewProvider:(void *)customViewProvider
{
  v4 = customViewProvider;
  v5 = [[self alloc] initWithCustomViewProvider:v4];

  return v5;
}

+ (double)_referenceHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (collectionCopy && (!_MergedGlobals_3_15 || *(collectionCopy + 13) != *(_MergedGlobals_3_15 + 104) || *(collectionCopy + 15) != *(_MergedGlobals_3_15 + 120)))
  {
    v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCaption2" compatibleWithTraitCollection:collectionCopy];
    v7 = [UIImageSymbolConfiguration configurationWithScale:3];
    v8 = [UIImageSymbolConfiguration configurationWithFont:v6];
    v9 = [v8 configurationByApplyingConfiguration:v7];
    v10 = [UIImage systemImageNamed:@"square" withConfiguration:v9];
    objc_storeStrong(&_MergedGlobals_3_15, collection);
    [v10 size];
    qword_1ED49A340 = v11;
  }

  v12 = *&qword_1ED49A340;

  return v12;
}

@end