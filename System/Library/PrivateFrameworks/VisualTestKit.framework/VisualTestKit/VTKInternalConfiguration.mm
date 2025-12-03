@interface VTKInternalConfiguration
+ (id)_comparatorForStrategy:(unint64_t)strategy comparisonOptions:(unint64_t)options;
+ (id)_referenceItemsSourceForType:(unint64_t)type;
- (NSArray)drawItems;
- (NSArray)exclusionAreas;
- (NSString)referenceImagesDirectory;
- (VTKComparator)imageComparator;
- (VTKInternalConfiguration)initWithReferenceItemsSource:(id)source storeManager:(id)manager imageComparator:(id)comparator;
- (VTKReferenceItemsSource)referenceItemsSource;
- (VTKStoreManager)storeManager;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addExclusionAreaAt:(CGRect)at;
- (void)addHorozontalGuideAt:(double)at withColor:(id)color;
- (void)addSquareGuideAt:(CGRect)at withColor:(id)color;
- (void)addVerticalGuideAt:(double)at withColor:(id)color;
- (void)setImageComparatorStrategy:(unint64_t)strategy;
- (void)setReferenceImagesDirectory:(id)directory;
- (void)setReferenceItemsSourceType:(unint64_t)type;
@end

@implementation VTKInternalConfiguration

- (VTKInternalConfiguration)initWithReferenceItemsSource:(id)source storeManager:(id)manager imageComparator:(id)comparator
{
  sourceCopy = source;
  managerCopy = manager;
  comparatorCopy = comparator;
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

    objc_storeStrong(&v12->_cachedReferenceItemsSource, source);
    objc_storeStrong(&v12->_cachedStoreManager, manager);
    objc_storeStrong(&v12->_cachedImageComparator, comparator);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VTKInternalConfiguration allocWithZone:?]];
  v4->_referenceItemsSourceType = [(VTKInternalConfiguration *)self referenceItemsSourceType];
  v4->_imageComparatorStrategy = [(VTKInternalConfiguration *)self imageComparatorStrategy];
  cachedReferenceItemsSource = [(VTKInternalConfiguration *)self cachedReferenceItemsSource];
  cachedReferenceItemsSource = v4->_cachedReferenceItemsSource;
  v4->_cachedReferenceItemsSource = cachedReferenceItemsSource;

  cachedStoreManager = [(VTKInternalConfiguration *)self cachedStoreManager];
  cachedStoreManager = v4->_cachedStoreManager;
  v4->_cachedStoreManager = cachedStoreManager;

  cachedImageComparator = [(VTKInternalConfiguration *)self cachedImageComparator];
  cachedImageComparator = v4->_cachedImageComparator;
  v4->_cachedImageComparator = cachedImageComparator;

  mutableDrawItems = [(VTKInternalConfiguration *)self mutableDrawItems];
  v12 = [mutableDrawItems mutableCopy];
  mutableDrawItems = v4->_mutableDrawItems;
  v4->_mutableDrawItems = v12;

  v4->_comparisonOptions = [(VTKInternalConfiguration *)self comparisonOptions];
  mutableExclusionAreas = [(VTKInternalConfiguration *)self mutableExclusionAreas];
  v15 = [mutableExclusionAreas mutableCopy];
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

+ (id)_referenceItemsSourceForType:(unint64_t)type
{
  v3 = objc_opt_new();

  return v3;
}

- (void)setReferenceItemsSourceType:(unint64_t)type
{
  if (self->_referenceItemsSourceType != type)
  {
    self->_referenceItemsSourceType = type;
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

+ (id)_comparatorForStrategy:(unint64_t)strategy comparisonOptions:(unint64_t)options
{
  v5 = [VTKColorDifferenceComparator alloc];
  v6 = objc_opt_new();
  v7 = [(VTKColorDifferenceComparator *)v5 initWithStrategy:v6 comparisonOptions:options];

  return v7;
}

- (void)setImageComparatorStrategy:(unint64_t)strategy
{
  if (self->_imageComparatorStrategy != strategy)
  {
    self->_imageComparatorStrategy = strategy;
    self->_cachedImageComparator = 0;
    _objc_release_x1();
  }
}

- (void)setReferenceImagesDirectory:(id)directory
{
  directoryCopy = directory;
  referenceItemsSource = [(VTKInternalConfiguration *)self referenceItemsSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    referenceItemsSource2 = [(VTKInternalConfiguration *)self referenceItemsSource];
    [referenceItemsSource2 setItemsDirectory:directoryCopy];
  }

  storeManager = [(VTKInternalConfiguration *)self storeManager];
  [storeManager setItemsDirectory:directoryCopy];
}

- (NSString)referenceImagesDirectory
{
  referenceItemsSource = [(VTKInternalConfiguration *)self referenceItemsSource];
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
  itemsDirectory = [v5 itemsDirectory];

  return itemsDirectory;
}

- (void)addVerticalGuideAt:(double)at withColor:(id)color
{
  colorCopy = color;
  v7 = [[VTKLineDrawItem alloc] initWitColor:colorCopy origin:0 orientation:at, 0.0];

  [(NSMutableArray *)self->_mutableDrawItems addObject:v7];
}

- (void)addHorozontalGuideAt:(double)at withColor:(id)color
{
  colorCopy = color;
  v7 = [[VTKLineDrawItem alloc] initWitColor:colorCopy origin:1 orientation:0.0, at];

  [(NSMutableArray *)self->_mutableDrawItems addObject:v7];
}

- (void)addSquareGuideAt:(CGRect)at withColor:(id)color
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  colorCopy = color;
  height = [[VTKSquareDrawItem alloc] initWitColor:colorCopy frame:x, y, width, height];

  [(NSMutableArray *)self->_mutableDrawItems addObject:height];
}

- (void)addExclusionAreaAt:(CGRect)at
{
  v4 = [[VTKExclusionAreaDrawItem alloc] initWitFrame:at.origin.x, at.origin.y, at.size.width, at.size.height];
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