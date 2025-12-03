@interface PFParallaxLayoutConfiguration
+ (id)_fallbackTimeRectCollectionForSBSFetchingFailureWithOrientation:(int64_t)orientation;
+ (id)_timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:(CGRect)bounds orientation:(int64_t)orientation;
+ (id)bestConfigurationForScreenSize:(CGSize)size screenScale:(double)scale startingWithConfiguration:(id)configuration orientation:(int64_t)orientation;
+ (id)deviceConfigurationForOrientation:(int64_t)orientation;
+ (id)genericConfigurationForOrientation:(int64_t)orientation;
+ (id)genericPadConfigurationForOrientation:(int64_t)orientation;
+ (id)layoutConfigurationFromDictionary:(id)dictionary error:(id *)error;
+ (id)timeRectCollectionLandscape;
+ (id)timeRectCollectionPortrait;
+ (void)_loadDeviceTimeRectCollectionIfNeeded;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutConfiguration:(id)configuration;
- (BOOL)isPortrait;
- (CGRect)inactiveTimeRect;
- (CGRect)stretchedTimeOverlapCheckBottom:(double)bottom visibleFrame:(CGRect)frame;
- (CGRect)stretchedTimeOverlapCheckTop:(double)top visibleFrame:(CGRect)frame;
- (CGRect)timeOverlapCheckBottom;
- (CGRect)timeOverlapCheckBottomForTimeRect:(CGRect)rect;
- (CGRect)timeOverlapCheckTop;
- (CGRect)timeOverlapCheckTopForTimeRect:(CGRect)rect;
- (CGRect)timeRect;
- (CGRect)timeRectForNormalizedHeight:(double)height;
- (CGRect)unsafeRect;
- (CGSize)parallaxPadding;
- (CGSize)parallaxPaddingPct;
- (CGSize)screenSize;
- (PFParallaxLayoutConfiguration)initWithCoder:(id)coder;
- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size screenScale:(double)scale denormalizedYDownTimeRect:(CGRect)rect parallaxPadding:(CGSize)padding;
- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size screenScale:(double)scale timeRect:(CGRect)rect inactiveTimeRect:(CGRect)timeRect parallaxPadding:(CGSize)padding;
- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size timeRect:(CGRect)rect inactiveTimeRect:(CGRect)timeRect parallaxPadding:(CGSize)padding;
- (double)maxStrechAmountNormalized;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFParallaxLayoutConfiguration

- (CGSize)parallaxPadding
{
  width = self->_parallaxPadding.width;
  height = self->_parallaxPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)inactiveTimeRect
{
  x = self->_inactiveTimeRect.origin.x;
  y = self->_inactiveTimeRect.origin.y;
  width = self->_inactiveTimeRect.size.width;
  height = self->_inactiveTimeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeRect
{
  x = self->_timeRect.origin.x;
  y = self->_timeRect.origin.y;
  width = self->_timeRect.size.width;
  height = self->_timeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PFParallaxLayoutConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeSizeForKey:@"screenSize"];
  v31 = v6;
  v32 = v5;
  [coderCopy decodeRectForKey:@"timeRect"];
  v29 = v8;
  v30 = v7;
  v28 = v9;
  v11 = v10;
  [coderCopy decodeRectForKey:@"inactiveTimeRect"];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [coderCopy decodeSizeForKey:@"parallaxPadding"];
  v21 = v20;
  v23 = v22;
  if (+[PFWallpaperCompoundDeviceConfiguration deviceSupportsLandscapeConfiguration])
  {
    v24 = 2.0;
  }

  else
  {
    v24 = 3.0;
  }

  if ([coderCopy containsValueForKey:@"version"])
  {
    [coderCopy decodeDoubleForKey:@"screenScale"];
    v24 = v25;
  }

  v26 = [(PFParallaxLayoutConfiguration *)self initWithScreenSize:v32 screenScale:v31 timeRect:v24 inactiveTimeRect:v30 parallaxPadding:v29, v28, v11, v13, v15, v17, v19, v21, v23];

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:2 forKey:@"version"];
  [(PFParallaxLayoutConfiguration *)self screenSize];
  [coderCopy encodeSize:@"screenSize" forKey:?];
  [(PFParallaxLayoutConfiguration *)self timeRect];
  [coderCopy encodeRect:@"timeRect" forKey:?];
  [(PFParallaxLayoutConfiguration *)self inactiveTimeRect];
  [coderCopy encodeRect:@"inactiveTimeRect" forKey:?];
  [(PFParallaxLayoutConfiguration *)self parallaxPadding];
  [coderCopy encodeSize:@"parallaxPadding" forKey:?];
  [(PFParallaxLayoutConfiguration *)self screenScale];
  [coderCopy encodeDouble:@"screenScale" forKey:?];
}

- (CGRect)timeRectForNormalizedHeight:(double)height
{
  if ([(PFParallaxLayoutConfiguration *)self isPortrait])
  {
    +[PFParallaxLayoutConfiguration timeRectCollectionPortrait];
  }

  else
  {
    +[PFParallaxLayoutConfiguration timeRectCollectionLandscape];
  }
  v5 = ;
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  [v5 rectForPointSpaceHeight:height * height / self->_screenScale];
  screenScale = self->_screenScale;
  v13 = screenScale * v12;
  v14 = 0.0;
  v15 = 0.0;
  if (width != 0.0)
  {
    v13 = v13 / width;
    v15 = screenScale * v9 / width;
  }

  v16 = screenScale * v8;
  if (height != 0.0)
  {
    v16 = v16 / height;
    v14 = screenScale * v10 / height;
  }

  v17 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v14 + v16);

  v18 = v13;
  v19 = v17;
  v20 = v15;
  v21 = v14;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)maxStrechAmountNormalized
{
  if ([(PFParallaxLayoutConfiguration *)self isPortrait])
  {
    +[PFParallaxLayoutConfiguration timeRectCollectionPortrait];
  }

  else
  {
    +[PFParallaxLayoutConfiguration timeRectCollectionLandscape];
  }
  v3 = ;
  [v3 maxTimeRectInImageSpace];
  v5 = v4;
  [v3 minTimeRectInImageSpace];
  v7 = (v5 - v6) / self->_screenSize.height;

  return v7;
}

- (BOOL)isPortrait
{
  [(PFParallaxLayoutConfiguration *)self screenSize];
  v4 = v3;
  [(PFParallaxLayoutConfiguration *)self screenSize];
  return v4 < v5;
}

- (BOOL)isEqualToLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy screenSize];
  v6 = v5;
  v8 = v7;
  [(PFParallaxLayoutConfiguration *)self screenSize];
  v11 = v6 == v10 && v8 == v9;
  if (v11 && ([configurationCopy timeRect], v13 = v12, v15 = v14, v17 = v16, v19 = v18, -[PFParallaxLayoutConfiguration timeRect](self, "timeRect"), vabdd_f64(v13, v23) <= 0.00000999999975) && vabdd_f64(v15, v20) <= 0.00000999999975 && vabdd_f64(v17, v21) <= 0.00000999999975 && vabdd_f64(v19, v22) <= 0.00000999999975)
  {
    [(PFParallaxLayoutConfiguration *)self screenScale];
    v27 = v26;
    [configurationCopy screenScale];
    v24 = vabdd_f64(v27, v28) <= 0.1;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFParallaxLayoutConfiguration *)self isEqualToLayoutConfiguration:equalCopy];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
  [v3 setObject:&unk_1F2AAB5A8 forKeyedSubscript:@"version"];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(self->_screenSize);
  [v3 setObject:DictionaryRepresentation forKeyedSubscript:@"screenSize"];

  v5 = CGRectCreateDictionaryRepresentation(self->_timeRect);
  [v3 setObject:v5 forKeyedSubscript:@"timeRect"];

  v6 = CGRectCreateDictionaryRepresentation(self->_inactiveTimeRect);
  [v3 setObject:v6 forKeyedSubscript:@"inactiveTimeRect"];

  v7 = CGSizeCreateDictionaryRepresentation(self->_parallaxPadding);
  [v3 setObject:v7 forKeyedSubscript:@"parallaxPadding"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_screenScale];
  [v3 setObject:v8 forKeyedSubscript:@"screenScale"];

  return v3;
}

- (id)debugDescription
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFParallaxLayoutConfiguration *)self screenSize];
  v6 = v5;
  v8 = v7;
  [(PFParallaxLayoutConfiguration *)self timeRect];
  v10 = v3 + v9 * v6;
  v12 = v4 + v11 * v8;
  v14 = v6 * v13;
  v16 = v8 * v15;
  [(PFParallaxLayoutConfiguration *)self inactiveTimeRect];
  v18 = v3 + v17 * v6;
  v20 = v4 + v19 * v8;
  v34 = v8 * v22;
  v35 = v6 * v21;
  v23 = MEMORY[0x1E696AEC0];
  v24 = objc_opt_class();
  *v39 = v6;
  *&v39[1] = v8;
  v25 = [MEMORY[0x1E696B098] valueWithBytes:v39 objCType:"{CGSize=dd}"];
  *v38 = v10;
  *&v38[1] = v12;
  *&v38[2] = v14;
  *&v38[3] = v16;
  v26 = [MEMORY[0x1E696B098] valueWithBytes:v38 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  *v37 = v18;
  *&v37[1] = v20;
  *&v37[2] = v35;
  *&v37[3] = v34;
  v27 = [MEMORY[0x1E696B098] valueWithBytes:v37 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v28 = MEMORY[0x1E696B098];
  [(PFParallaxLayoutConfiguration *)self parallaxPadding];
  v36[0] = v29;
  v36[1] = v30;
  v31 = [v28 valueWithBytes:v36 objCType:"{CGSize=dd}"];
  v32 = [v23 stringWithFormat:@"<%@:%p screen=%@ time=%@ inactiveTime=%@ parallaxPadding=%@>", v24, self, v25, v26, v27, v31];

  return v32;
}

- (id)description
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFParallaxLayoutConfiguration *)self screenSize];
  v6 = v5;
  v8 = v7;
  [(PFParallaxLayoutConfiguration *)self timeRect];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%0.0fx%0.0f time=(%0.0f, %0.0f, %0.0f, %0.0f)]", *&v6, *&v8, v3 + v9 * v6, v4 + v10 * v8, v6 * v11, v8 * v12];
}

- (CGSize)parallaxPaddingPct
{
  [(PFParallaxLayoutConfiguration *)self screenSize];
  v4 = v3;
  v6 = v5;
  [(PFParallaxLayoutConfiguration *)self parallaxPadding];
  v8 = v7 / v4;
  v10 = v9 / v6;
  result.height = v10;
  result.width = v8;
  return result;
}

- (CGRect)stretchedTimeOverlapCheckBottom:(double)bottom visibleFrame:(CGRect)frame
{
  height = frame.size.height;
  [(PFParallaxLayoutConfiguration *)self timeRect:bottom];
  if (v8 - bottom / height <= 0.0)
  {
    v20 = *MEMORY[0x1E695F050];
    v21 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v22 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(PFParallaxLayoutConfiguration *)self timeRectForNormalizedHeight:bottom / height + v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
    [v17 bottomAreaHeight];
    v19 = v18;

    v20 = v10 + v14 * 0.0;
    v21 = v12 + v16 * 0.0;
    v22 = v16 * v19;
  }

  v23 = v14;
  result.size.height = v22;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)stretchedTimeOverlapCheckTop:(double)top visibleFrame:(CGRect)frame
{
  height = frame.size.height;
  [(PFParallaxLayoutConfiguration *)self timeRect:top];
  [(PFParallaxLayoutConfiguration *)self timeRectForNormalizedHeight:top / height + v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v16 bottomAreaHeight];
  v18 = v17;

  v19 = v9 + v13 * 0.0;
  v20 = v11 + v18 * v15;
  v21 = v15 * (1.0 - v18);
  v22 = v13;
  result.size.height = v21;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)timeOverlapCheckTopForTimeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v7 bottomAreaHeight];
  v9 = v8;

  v10 = x + width * 0.0;
  v11 = y + v9 * height;
  v12 = height * (1.0 - v9);
  v13 = width;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)timeOverlapCheckBottomForTimeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v7 bottomAreaHeight];
  v9 = v8;

  v10 = x + width * 0.0;
  v11 = y + height * 0.0;
  v12 = height * v9;
  v13 = width;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)timeOverlapCheckTop
{
  v3 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v3 bottomAreaHeight];
  v5 = v4;

  [(PFParallaxLayoutConfiguration *)self timeRect];
  v8 = v7 + v6 * 0.0;
  v11 = v9 + v5 * v10;
  v12 = (1.0 - v5) * v10;
  result.size.height = v12;
  result.size.width = v6;
  result.origin.y = v11;
  result.origin.x = v8;
  return result;
}

- (CGRect)timeOverlapCheckBottom
{
  v3 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
  [v3 bottomAreaHeight];
  v5 = v4;

  [(PFParallaxLayoutConfiguration *)self timeRect];
  v8 = v7 + v6 * 0.0;
  v11 = v9 + v10 * 0.0;
  v12 = v5 * v10;
  result.size.height = v12;
  result.size.width = v6;
  result.origin.y = v11;
  result.origin.x = v8;
  return result;
}

- (CGRect)unsafeRect
{
  [(PFParallaxLayoutConfiguration *)self timeRect];
  v5 = 1.0 - v3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size screenScale:(double)scale timeRect:(CGRect)rect inactiveTimeRect:(CGRect)timeRect parallaxPadding:(CGSize)padding
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = size.height;
  v13 = size.width;
  v15.receiver = self;
  v15.super_class = PFParallaxLayoutConfiguration;
  result = [(PFParallaxLayoutConfiguration *)&v15 init:*&padding.width];
  result->_screenScale = scale;
  result->_screenSize.width = v13;
  result->_timeRect.origin.y = y;
  result->_timeRect.size.width = width;
  result->_timeRect.size.height = height;
  result->_inactiveTimeRect.origin.x = x;
  result->_inactiveTimeRect.origin.y = y;
  result->_inactiveTimeRect.size.width = width;
  result->_inactiveTimeRect.size.height = height;
  result->_screenSize.height = v12;
  result->_parallaxPadding.width = v16;
  result->_parallaxPadding.height = v17;
  result->_timeRect.origin.x = x;
  return result;
}

- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size timeRect:(CGRect)rect inactiveTimeRect:(CGRect)timeRect parallaxPadding:(CGSize)padding
{
  height = size.height;
  width = size.width;
  v9 = PFDeviceScreenScale();

  return [(PFParallaxLayoutConfiguration *)self initWithScreenSize:width screenScale:height timeRect:v9 inactiveTimeRect:rect.origin.x parallaxPadding:rect.origin.y, rect.size.width, rect.size.height];
}

- (PFParallaxLayoutConfiguration)initWithScreenSize:(CGSize)size screenScale:(double)scale denormalizedYDownTimeRect:(CGRect)rect parallaxPadding:(CGSize)padding
{
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.x - *MEMORY[0x1E695EFF8];
  v9 = 0.0;
  v10 = 0.0;
  if (size.width != 0.0)
  {
    v8 = v8 / size.width;
    v10 = width / size.width;
  }

  v11 = rect.origin.y - *(MEMORY[0x1E695EFF8] + 8);
  if (size.height != 0.0)
  {
    v11 = v11 / size.height;
    v9 = height / size.height;
  }

  return [(PFParallaxLayoutConfiguration *)self initWithScreenSize:*&v8 screenScale:*(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v9 + v11) timeRect:*&v10 inactiveTimeRect:*&v9 parallaxPadding:*&padding.width, *&padding.height];
}

+ (id)timeRectCollectionLandscape
{
  [self _loadDeviceTimeRectCollectionIfNeeded];
  v2 = s_timeRectCollectionLandscape;

  return v2;
}

+ (id)timeRectCollectionPortrait
{
  [self _loadDeviceTimeRectCollectionIfNeeded];
  v2 = s_timeRectCollectionPortrait;

  return v2;
}

+ (id)_timeRectCollectionOverrideForYDownNormalizedEffectiveBounds:(CGRect)bounds orientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v31[2] = *MEMORY[0x1E69E9840];
  v9 = PFDeviceScreenSize();
  v11 = v10;
  v12 = PFDeviceScreenScale();
  v13 = (v9 > v11) ^ (orientation == 1);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  if (v13)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  v16 = x * v15 + 0.0;
  v17 = y * v14 + 0.0;
  v18 = width * v15;
  v19 = height * v14;
  v20 = 1.0 / v12 * v16;
  v21 = 1.0 / v12 * v17;
  v22 = 1.0 / v12 * v18;
  v30[0] = v20;
  v30[1] = v21;
  v23 = 1.0 / v12 * v19;
  v30[2] = v22;
  v30[3] = v23;
  v24 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v31[0] = v24;
  *v29 = v20;
  *&v29[1] = v21;
  *&v29[2] = v22;
  *&v29[3] = v23;
  v25 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v31[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

  v27 = [[PFDeviceTimeRectCollection alloc] initWithPointSpaceSortedTimeRects:v26 screenScale:v12];

  return v27;
}

+ (id)_fallbackTimeRectCollectionForSBSFetchingFailureWithOrientation:(int64_t)orientation
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = PFDeviceScreenSize();
  v6 = v5;
  v7 = PFDeviceScreenScale();
  v8 = PFDeviceLockScreenApproximateTimeRectNormalized(orientation);
  v12 = (v4 > v6) ^ (orientation == 1);
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v4;
  }

  if (v12)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  v15 = 1.0 / v7 * (v8 * v14 + 0.0);
  v16 = 1.0 / v7 * (v9 * v13 + 0.0);
  v17 = 1.0 / v7 * (v10 * v14);
  v25[0] = v15;
  v25[1] = v16;
  v18 = 1.0 / v7 * (v11 * v13) + 1.0 / v7 * (v11 * v13) + 1.0 / v7 * (v11 * v13);
  v25[2] = v17;
  v25[3] = 1.0 / v7 * (v11 * v13);
  v19 = [MEMORY[0x1E696B098] valueWithBytes:v25 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v26[0] = v19;
  *v24 = v15;
  *&v24[1] = v16;
  *&v24[2] = v17;
  *&v24[3] = v18;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v26[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

  v22 = [[PFDeviceTimeRectCollection alloc] initWithPointSpaceSortedTimeRects:v21 screenScale:v7];

  return v22;
}

+ (void)_loadDeviceTimeRectCollectionIfNeeded
{
  if (!(s_timeRectCollectionPortrait | s_timeRectCollectionLandscape))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PFParallaxLayoutConfiguration__loadDeviceTimeRectCollectionIfNeeded__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_loadDeviceTimeRectCollectionIfNeeded_onceToken[0] != -1)
    {
      dispatch_once(_loadDeviceTimeRectCollectionIfNeeded_onceToken, block);
    }
  }
}

uint64_t __70__PFParallaxLayoutConfiguration__loadDeviceTimeRectCollectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = PFDeviceLockScreenTimeRectCollectionNormalized(1);
  v3 = s_timeRectCollectionPortrait;
  s_timeRectCollectionPortrait = v2;

  if ([s_timeRectCollectionPortrait isInvalid])
  {
    v4 = [*(a1 + 32) _fallbackTimeRectCollectionForSBSFetchingFailureWithOrientation:1];
    v5 = s_timeRectCollectionPortrait;
    s_timeRectCollectionPortrait = v4;
  }

  result = +[PFWallpaperCompoundDeviceConfiguration deviceSupportsLandscapeConfiguration];
  if (result)
  {
    v7 = PFDeviceLockScreenTimeRectCollectionNormalized(2);
    v8 = s_timeRectCollectionLandscape;
    s_timeRectCollectionLandscape = v7;

    result = [s_timeRectCollectionLandscape isInvalid];
    if (result)
    {
      v9 = [*(a1 + 32) _fallbackTimeRectCollectionForSBSFetchingFailureWithOrientation:2];
      v10 = s_timeRectCollectionLandscape;
      s_timeRectCollectionLandscape = v9;

      return MEMORY[0x1EEE66BB8](v9, v10);
    }
  }

  return result;
}

+ (id)layoutConfigurationFromDictionary:(id)dictionary error:(id *)error
{
  v40[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    _PFAssertFailHandler();
  }

  v6 = dictionaryCopy;
  size.width = 0.0;
  size.height = 0.0;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"screenSize"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = CGSizeMakeWithDictionaryRepresentation(v7, &size);

    if (v8)
    {
      memset(&rect, 0, sizeof(rect));
      v9 = [v6 objectForKeyedSubscript:@"timeRect"];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = CGRectMakeWithDictionaryRepresentation(v9, &rect);

        if (v10)
        {
          memset(&v32, 0, sizeof(v32));
          v11 = [v6 objectForKeyedSubscript:@"inactiveTimeRect"];
          if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v12 = CGRectMakeWithDictionaryRepresentation(v11, &v32);

            if (v12)
            {
              v31.width = 0.0;
              v31.height = 0.0;
              v13 = [v6 objectForKeyedSubscript:@"parallaxPadding"];
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v14 = CGSizeMakeWithDictionaryRepresentation(v13, &v31);

                if (v14)
                {
                  goto LABEL_43;
                }
              }

              else
              {
              }

              v31 = *MEMORY[0x1E695F060];
LABEL_43:
              v26 = [v6 objectForKeyedSubscript:@"version"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = [v6 objectForKeyedSubscript:@"screenScale"];
                if (+[PFWallpaperCompoundDeviceConfiguration deviceSupportsLandscapeConfiguration])
                {
                  v28 = 2.0;
                }

                else
                {
                  v28 = 3.0;
                }

                [v27 doubleValue];
                if (v29 != 0.0)
                {
                  v28 = v29;
                }
              }

              else
              {
                v28 = PFDeviceScreenScale();
              }

              v30 = [PFParallaxLayoutConfiguration alloc];
              v18 = [(PFParallaxLayoutConfiguration *)v30 initWithScreenSize:size.width screenScale:size.height timeRect:v28 inactiveTimeRect:rect.origin.x parallaxPadding:rect.origin.y, rect.size.width, rect.size.height, *&v32.origin.x, *&v32.origin.y, *&v32.size.width, *&v32.size.height, *&v31.width, *&v31.height];

LABEL_40:
LABEL_32:

              goto LABEL_22;
            }
          }

          else
          {
          }

          if (error)
          {
            v23 = MEMORY[0x1E696ABC0];
            v35[0] = @"PFNonLocalizedFailureReason";
            v35[1] = @"PFRelatedObject";
            if (v11)
            {
              v24 = v11;
            }

            else
            {
              v24 = @"nil";
            }

            v36[0] = @"Invalid inactive time rect";
            v36[1] = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
            *error = [v23 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v25];
          }

          v18 = 0;
          goto LABEL_40;
        }
      }

      else
      {
      }

      if (error)
      {
        v20 = MEMORY[0x1E696ABC0];
        v37[0] = @"PFNonLocalizedFailureReason";
        v37[1] = @"PFRelatedObject";
        if (v9)
        {
          v21 = v9;
        }

        else
        {
          v21 = @"nil";
        }

        v38[0] = @"Invalid time rect";
        v38[1] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
        *error = [v20 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v22];
      }

      v18 = 0;
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v39[0] = @"PFNonLocalizedFailureReason";
    v39[1] = @"PFRelatedObject";
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = @"nil";
    }

    v40[0] = @"Invalid screen size";
    v40[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    *error = [v15 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v17];
  }

  v18 = 0;
LABEL_22:

  return v18;
}

+ (id)bestConfigurationForScreenSize:(CGSize)size screenScale:(double)scale startingWithConfiguration:(id)configuration orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  v73 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v11 = MEMORY[0x1E695DFD8];
  v12 = +[PFWallpaperCompoundDeviceConfiguration knownDeviceConfigurations];
  allValues = [v12 allValues];
  v14 = [v11 setWithArray:allValues];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v72 count:16];
  v17 = configurationCopy;
  if (v16)
  {
    v18 = v16;
    v19 = *v63;
    v17 = configurationCopy;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        switch(orientation)
        {
          case 1:
            if (!v17 || ([v17 screenSize], v32 = v31, v34 = v33, objc_msgSend(v21, "portraitConfiguration"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "screenSize"), v38 = __114__PFParallaxLayoutConfiguration_bestConfigurationForScreenSize_screenScale_startingWithConfiguration_orientation___block_invoke(width, height, v32, v34, v36, v37), v35, v38))
            {
              portraitConfiguration = [v21 portraitConfiguration];
              goto LABEL_16;
            }

            break;
          case 2:
            if (!v17 || ([v17 screenSize], v23 = v22, v25 = v24, objc_msgSend(v21, "landscapeConfiguration"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "screenSize"), v29 = __114__PFParallaxLayoutConfiguration_bestConfigurationForScreenSize_screenScale_startingWithConfiguration_orientation___block_invoke(width, height, v23, v25, v27, v28), v26, v29))
            {
              portraitConfiguration = [v21 landscapeConfiguration];
LABEL_16:
              v39 = portraitConfiguration;

              v17 = v39;
              continue;
            }

            break;
          case 0:
            _PFAssertFailHandler();
            break;
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v18);
  }

  v40 = [self alloc];
  [v17 timeRect];
  v59 = v42;
  v61 = v41;
  v58 = v43;
  v45 = v44;
  [v17 inactiveTimeRect];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [v17 parallaxPadding];
  v56 = [v40 initWithScreenSize:width screenScale:height timeRect:scale inactiveTimeRect:*&v61 parallaxPadding:{v59, v58, v45, v47, v49, v51, v53, v54, v55}];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v67 = width;
    v68 = 2048;
    v69 = height;
    v70 = 2114;
    v71 = v56;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Best layout configuration for screen size %0.0fx%0.0f: %{public}@", buf, 0x20u);
  }

  return v56;
}

BOOL __114__PFParallaxLayoutConfiguration_bestConfigurationForScreenSize_screenScale_startingWithConfiguration_orientation___block_invoke(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a3 == *MEMORY[0x1E695F060] && a4 == *(MEMORY[0x1E695F060] + 8))
  {
    return 1;
  }

  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = hypot(a1 - *MEMORY[0x1E695EFF8], a2 - v12);
  v14 = hypot(a3 - v11, a4 - v12);
  return vabdd_f64(v13, hypot(a5 - v11, a6 - v12)) < vabdd_f64(v13, v14);
}

+ (id)deviceConfigurationForOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    v4 = +[PFWallpaperCompoundDeviceConfiguration deviceConfiguration];
    portraitConfiguration = [v4 portraitConfiguration];
  }

  else
  {
    if (orientation != 2)
    {
      if (orientation)
      {
        goto LABEL_8;
      }

      _PFAssertFailHandler();
    }

    v4 = +[PFWallpaperCompoundDeviceConfiguration deviceConfiguration];
    portraitConfiguration = [v4 landscapeConfiguration];
  }

  v3 = portraitConfiguration;

LABEL_8:

  return v3;
}

+ (id)genericPadConfigurationForOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    v3 = 1668.0;
    v4 = 2388.0;
  }

  else
  {
    v3 = 2388.0;
    v4 = 1668.0;
  }

  v5 = [self bestConfigurationForScreenSize:v3 screenScale:v4 orientation:2.0];

  return v5;
}

+ (id)genericConfigurationForOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    v3 = 1170.0;
    v4 = 2532.0;
  }

  else
  {
    v3 = 2388.0;
    v4 = 1668.0;
  }

  v5 = [self bestConfigurationForScreenSize:v3 screenScale:v4 orientation:3.0];

  return v5;
}

@end