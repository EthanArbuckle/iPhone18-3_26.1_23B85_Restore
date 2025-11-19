@interface VTKInternalConfiguration
+ (id)_comparatorForStrategy:(unint64_t)a3 comparisonOptions:(unint64_t)a4;
+ (id)_referenceItemsSourceForType:(unint64_t)a3;
- (NSArray)drawItems;
- (NSArray)exclusionAreas;
- (NSString)referenceImagesDirectory;
- (VTKComparator)imageComparator;
- (VTKInternalConfiguration)initWithReferenceItemsSource:(id)a3 storeManager:(id)a4 imageComparator:(id)a5;
- (VTKReferenceItemsSource)referenceItemsSource;
- (VTKStoreManager)storeManager;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addExclusionAreaAt:(CGRect)a3;
- (void)addHorozontalGuideAt:(double)a3 withColor:(id)a4;
- (void)addSquareGuideAt:(CGRect)a3 withColor:(id)a4;
- (void)addVerticalGuideAt:(double)a3 withColor:(id)a4;
- (void)setImageComparatorStrategy:(unint64_t)a3;
- (void)setReferenceImagesDirectory:(id)a3;
- (void)setReferenceItemsSourceType:(unint64_t)a3;
@end

@implementation VTKInternalConfiguration

- (VTKInternalConfiguration)initWithReferenceItemsSource:(id)a3 storeManager:(id)a4 imageComparator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = VTKInternalConfiguration;
  v12 = [(VTKInternalConfiguration *)&v18 init];
  if (v12)
  {
    v13 = objc_opt_new();
    mutableDrawItems = v12->_mutableDrawItems;
    v12->_mutableDrawItems = v13;

    v15 = objc_opt_new();
    mutableExclusionAreas = v12->_mutableExclusionAreas;
    v12->_mutableExclusionAreas = v15;

    objc_storeStrong(&v12->_cachedReferenceItemsSource, a3);
    objc_storeStrong(&v12->_cachedStoreManager, a4);
    objc_storeStrong(&v12->_cachedImageComparator, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VTKInternalConfiguration allocWithZone:?]];
  v4->_referenceItemsSourceType = [(VTKInternalConfiguration *)self referenceItemsSourceType];
  v4->_imageComparatorStrategy = [(VTKInternalConfiguration *)self imageComparatorStrategy];
  v5 = [(VTKInternalConfiguration *)self cachedReferenceItemsSource];
  cachedReferenceItemsSource = v4->_cachedReferenceItemsSource;
  v4->_cachedReferenceItemsSource = v5;

  v7 = [(VTKInternalConfiguration *)self cachedStoreManager];
  cachedStoreManager = v4->_cachedStoreManager;
  v4->_cachedStoreManager = v7;

  v9 = [(VTKInternalConfiguration *)self cachedImageComparator];
  cachedImageComparator = v4->_cachedImageComparator;
  v4->_cachedImageComparator = v9;

  v11 = [(VTKInternalConfiguration *)self mutableDrawItems];
  v12 = [v11 mutableCopy];
  mutableDrawItems = v4->_mutableDrawItems;
  v4->_mutableDrawItems = v12;

  v4->_comparisonOptions = [(VTKInternalConfiguration *)self comparisonOptions];
  v14 = [(VTKInternalConfiguration *)self mutableExclusionAreas];
  v15 = [v14 mutableCopy];
  mutableExclusionAreas = v4->_mutableExclusionAreas;
  v4->_mutableExclusionAreas = v15;

  return v4;
}

- (VTKReferenceItemsSource)referenceItemsSource
{
  cachedReferenceItemsSource = self->_cachedReferenceItemsSource;
  if (!cachedReferenceItemsSource)
  {
    v4 = [objc_opt_class() _referenceItemsSourceForType:{-[VTKInternalConfiguration referenceItemsSourceType](self, "referenceItemsSourceType")}];
    v5 = self->_cachedReferenceItemsSource;
    self->_cachedReferenceItemsSource = v4;

    cachedReferenceItemsSource = self->_cachedReferenceItemsSource;
  }

  return cachedReferenceItemsSource;
}

+ (id)_referenceItemsSourceForType:(unint64_t)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (void)setReferenceItemsSourceType:(unint64_t)a3
{
  if (self->_referenceItemsSourceType != a3)
  {
    self->_referenceItemsSourceType = a3;
    self->_cachedReferenceItemsSource = 0;
    _objc_release_x1();
  }
}

- (VTKStoreManager)storeManager
{
  cachedStoreManager = self->_cachedStoreManager;
  if (!cachedStoreManager)
  {
    v4 = objc_opt_new();
    v5 = self->_cachedStoreManager;
    self->_cachedStoreManager = v4;

    cachedStoreManager = self->_cachedStoreManager;
  }

  return cachedStoreManager;
}

- (VTKComparator)imageComparator
{
  cachedImageComparator = self->_cachedImageComparator;
  if (!cachedImageComparator)
  {
    v4 = [objc_opt_class() _comparatorForStrategy:-[VTKInternalConfiguration imageComparatorStrategy](self comparisonOptions:{"imageComparatorStrategy"), -[VTKInternalConfiguration comparisonOptions](self, "comparisonOptions")}];
    v5 = self->_cachedImageComparator;
    self->_cachedImageComparator = v4;

    cachedImageComparator = self->_cachedImageComparator;
  }

  return cachedImageComparator;
}

+ (id)_comparatorForStrategy:(unint64_t)a3 comparisonOptions:(unint64_t)a4
{
  v5 = [VTKColorDifferenceComparator alloc];
  v6 = objc_opt_new();
  v7 = [(VTKColorDifferenceComparator *)v5 initWithStrategy:v6 comparisonOptions:a4];

  return v7;
}

- (void)setImageComparatorStrategy:(unint64_t)a3
{
  if (self->_imageComparatorStrategy != a3)
  {
    self->_imageComparatorStrategy = a3;
    self->_cachedImageComparator = 0;
    _objc_release_x1();
  }
}

- (void)setReferenceImagesDirectory:(id)a3
{
  v8 = a3;
  v4 = [(VTKInternalConfiguration *)self referenceItemsSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VTKInternalConfiguration *)self referenceItemsSource];
    [v6 setItemsDirectory:v8];
  }

  v7 = [(VTKInternalConfiguration *)self storeManager];
  [v7 setItemsDirectory:v8];
}

- (NSString)referenceImagesDirectory
{
  v3 = [(VTKInternalConfiguration *)self referenceItemsSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    [(VTKInternalConfiguration *)self referenceItemsSource];
  }

  else
  {
    [(VTKInternalConfiguration *)self storeManager];
  }
  v5 = ;
  v6 = [v5 itemsDirectory];

  return v6;
}

- (void)addVerticalGuideAt:(double)a3 withColor:(id)a4
{
  v6 = a4;
  v7 = [[VTKLineDrawItem alloc] initWitColor:v6 origin:0 orientation:a3, 0.0];

  [(NSMutableArray *)self->_mutableDrawItems addObject:v7];
}

- (void)addHorozontalGuideAt:(double)a3 withColor:(id)a4
{
  v6 = a4;
  v7 = [[VTKLineDrawItem alloc] initWitColor:v6 origin:1 orientation:0.0, a3];

  [(NSMutableArray *)self->_mutableDrawItems addObject:v7];
}

- (void)addSquareGuideAt:(CGRect)a3 withColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [[VTKSquareDrawItem alloc] initWitColor:v9 frame:x, y, width, height];

  [(NSMutableArray *)self->_mutableDrawItems addObject:v10];
}

- (void)addExclusionAreaAt:(CGRect)a3
{
  v4 = [[VTKExclusionAreaDrawItem alloc] initWitFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(NSMutableArray *)self->_mutableExclusionAreas addObject:v4];
}

- (NSArray)drawItems
{
  v2 = [(NSMutableArray *)self->_mutableDrawItems copy];

  return v2;
}

- (NSArray)exclusionAreas
{
  v2 = [(NSMutableArray *)self->_mutableExclusionAreas copy];

  return v2;
}

@end