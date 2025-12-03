@interface TSDImageInfo
+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)index inTheme:(id)theme alternate:(int)alternate;
+ (void)adjustIncomingImageGeometry:(id)geometry maskGeometry:(id)maskGeometry forImageData:(id)data maskedWithInstantAlphaPath:(id)path withNaturalSize:(CGSize)size forTargetImageGeometry:(id)imageGeometry withTargetMaskGeometry:(id)targetMaskGeometry;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate reservedCount:(unint64_t)count;
- (BOOL)isOpaque;
- (BOOL)isValid;
- (BOOL)maskCanBeReset;
- (CGAffineTransform)computeFullTransform;
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)naturalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (TSDBezierPath)tracedPath;
- (TSDContainerInfo)parentInfo;
- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data originalImageData:(id)imageData;
- (TSDInfoGeometry)geometry;
- (id)childInfos;
- (id)copyWithContext:(id)context;
- (id)copyWithContext:(id)context style:(id)style;
- (id)defaultMaskInfo;
- (id)defaultMaskInfoWithContext:(id)context;
- (id)geometryWithMask;
- (id)i_thumbnailForImageData:(id)data;
- (id)imageDatasForReducingFileSizeWithAssociatedHints;
- (id)mediaDisplayName;
- (id)mediaFileType;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)presetKind;
- (id)updatedMaskInfoGeometryForImageDraggedBy:(CGPoint)by;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)dealloc;
- (void)setAdjustedImageData:(id)data;
- (void)setEnhancedImageData:(id)data;
- (void)setExteriorTextWrap:(id)wrap;
- (void)setImageAdjustments:(id)adjustments;
- (void)setImageData:(id)data;
- (void)setInstantAlphaPath:(id)path;
- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)generic;
- (void)setMaskInfo:(id)info;
- (void)setNaturalSize:(CGSize)size;
- (void)setOriginalImageData:(id)data;
- (void)setParentInfo:(id)info;
- (void)setStyle:(id)style;
- (void)setThumbnailImageData:(id)data;
- (void)updateGeometryToReplaceMediaInfo:(id)info;
- (void)wasRemovedFromDocumentRoot:(id)root;
@end

@implementation TSDImageInfo

- (void)setThumbnailImageData:(id)data
{
  [(TSPObject *)self willModify];
  dataCopy = data;

  self->mThumbnailImageData = data;
}

- (void)setEnhancedImageData:(id)data
{
  [(TSPObject *)self willModify];
  dataCopy = data;

  self->mEnhancedImageData = data;
}

- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data originalImageData:(id)imageData
{
  v14.receiver = self;
  v14.super_class = TSDImageInfo;
  v10 = [(TSDMediaInfo *)&v14 initWithContext:context geometry:geometry];
  if (v10)
  {
    if (!style)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 124, @"invalid nil value for '%s'", "style"}];
    }

    [(TSDImageInfo *)v10 setStyle:style];
    [(TSDImageInfo *)v10 setImageData:data];
    [(TSDImageInfo *)v10 defaultOriginalSize];
    [(TSDMediaInfo *)v10 setOriginalSize:?];
    [(TSDImageInfo *)v10 setOriginalImageData:imageData];
  }

  return v10;
}

- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo initWithContext:geometry:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 138, @"call the designated initializer, please"}];
  return 0;
}

- (void)dealloc
{
  [(TSDDrawableInfo *)self->mMaskInfo clearBackPointerToParentInfoIfNeeded:self];

  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)context style:(id)style
{
  v11.receiver = self;
  v11.super_class = TSDImageInfo;
  v7 = [(TSDMediaInfo *)&v11 copyWithContext:?];
  *(v7 + 21) = [(TSDImageInfo *)self imageData];
  *(v7 + 23) = [(TSDImageInfo *)self originalImageData];
  [v7 setStyle:style];
  maskInfo = [(TSDImageInfo *)self maskInfo];
  if (maskInfo)
  {
    v9 = [(TSDMaskInfo *)maskInfo copyWithContext:context];
    [v9 setParentInfo:v7];
    *(v7 + 30) = v9;
  }

  if ([(TSDImageInfo *)self instantAlphaPath])
  {
    *(v7 + 31) = [(TSDBezierPath *)[(TSDImageInfo *)self instantAlphaPath] copy];
  }

  *(v7 + 22) = self->mThumbnailImageData;
  *(v7 + 32) = [(TSDBezierPath *)self->mTracedPath copy];
  *(v7 + 264) = self->mNaturalSize;
  *(v7 + 25) = [(TSDImageAdjustments *)self->mImageAdjustments copy];
  *(v7 + 26) = self->mAdjustedImageData;
  *(v7 + 27) = self->mThumbnailAdjustedImageData;
  *(v7 + 28) = self->mEnhancedImageData;
  return v7;
}

- (id)copyWithContext:(id)context
{
  [context documentObject];
  if (objc_opt_respondsToSelector())
  {
    contextCopy = context;
LABEL_5:
    stylesheet = [[(TSPObjectContext *)contextCopy documentObject] performSelector:sel_stylesheet];
    goto LABEL_7;
  }

  [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
  if (objc_opt_respondsToSelector())
  {
    contextCopy = [(TSPObject *)self context];
    goto LABEL_5;
  }

  stylesheet = [(TSSStyle *)self->mStyle stylesheet];
LABEL_7:
  v7 = stylesheet;
  if (!stylesheet)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo copyWithContext:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 211, @"invalid nil value for '%s'", "stylesheet"}];
  }

  v10 = [[TSSStyleMapper alloc] initWithTargetStylesheet:v7 newStyleDOLCContext:0];
  objc_opt_class();
  [(TSSStyleMapper *)v10 mappedStyleForStyle:self->mStyle];
  v11 = [(TSDImageInfo *)self copyWithContext:context style:TSUDynamicCast()];

  return v11;
}

- (void)setExteriorTextWrap:(id)wrap
{
  [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self exteriorTextWrap] alphaThreshold];
  v6 = v5;
  v8.receiver = self;
  v8.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v8 setExteriorTextWrap:wrap];
  [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self exteriorTextWrap] alphaThreshold];
  if (v6 != v7)
  {

    self->mTracedPath = 0;
  }
}

- (id)presetKind
{
  v3 = String;
  objc_opt_class();
  [(TSDImageInfo *)self style];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return v3;
  }

  return [v4 presetKind];
}

- (TSDInfoGeometry)geometry
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  return [(TSDDrawableInfo *)&v3 geometry];
}

- (TSDContainerInfo)parentInfo
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  return [(TSDDrawableInfo *)&v3 parentInfo];
}

- (void)setParentInfo:(id)info
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v3 setParentInfo:info];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v3 wasRemovedFromDocumentRoot:root];
}

- (id)childInfos
{
  if (self->mMaskInfo)
  {
    return [MEMORY[0x277CBEA60] arrayWithObject:?];
  }

  else
  {
    return [MEMORY[0x277CBEA60] array];
  }
}

- (id)geometryWithMask
{
  mMaskInfo = self->mMaskInfo;
  if (mMaskInfo)
  {
    geometry = [(TSDDrawableInfo *)mMaskInfo geometry];
    geometry2 = [(TSDImageInfo *)self geometry];

    return [(TSDInfoGeometry *)geometry geometryWithParentGeometry:geometry2];
  }

  else
  {

    return [(TSDImageInfo *)self geometry];
  }
}

- (CGAffineTransform)computeFullTransform
{
  result = [(TSDImageInfo *)self geometryWithMask];
  if (result)
  {

    return [(CGAffineTransform *)result fullTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (id)imageDatasForReducingFileSizeWithAssociatedHints
{
  v6[1] = *MEMORY[0x277D85DE8];
  originalImageData = [(TSDImageInfo *)self originalImageData];
  if (!originalImageData)
  {
    originalImageData = [(TSDImageInfo *)self imageData];
  }

  v4 = objc_alloc(MEMORY[0x277D6C320]);
  v6[0] = originalImageData;
  return [v4 initWithObjects:&unk_287DDCB28 forKeys:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)}];
}

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  if (([@"misc" isEqualToString:hint] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo targetSizeForImageData:associatedHint:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 382, @"associated hint is wrong %@", hint}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_26CAC6BB9;
  v17 = *MEMORY[0x277CBF3A8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__TSDImageInfo_targetSizeForImageData_associatedHint___block_invoke;
  v12[3] = &unk_279D48548;
  v12[4] = &v13;
  [(TSDDrawableInfo *)self performBlockWithTemporaryLayout:v12];
  v8 = v14[4];
  v9 = v14[5];
  _Block_object_dispose(&v13, 8);
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

void __54__TSDImageInfo_targetSizeForImageData_associatedHint___block_invoke(uint64_t a1)
{
  objc_opt_class();
  [objc_msgSend(TSUDynamicCast() "imageGeometry")];
  v3 = TSDCeilSize(v2);
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
}

- (id)mediaDisplayName
{
  imageData = [(TSDImageInfo *)self imageData];

  return [(TSPData *)imageData filename];
}

- (id)mediaFileType
{
  imageData = [(TSDImageInfo *)self imageData];

  return [(TSPData *)imageData type];
}

- (void)setInterpretsUntaggedImageDataAsGeneric:(BOOL)generic
{
  if (self->mInterpretsUntaggedImageDataAsGeneric != generic)
  {
    [(TSPObject *)self willModify];
    self->mInterpretsUntaggedImageDataAsGeneric = generic;
  }
}

- (void)setImageData:(id)data
{
  if (self->mImageData != data)
  {
    [(TSDDrawableInfo *)self willChangeProperty:528];

    self->mImageData = data;
    [(TSDImageInfo *)self setThumbnailImageData:0];

    self->mTracedPath = 0;
    self->mNaturalSize = *MEMORY[0x277CBF3A8];
    [(TSDImageInfo *)self setImageAdjustments:0];
    [(TSDImageInfo *)self setAdjustedImageData:0];
    [(TSDImageInfo *)self setEnhancedImageData:0];

    [(TSDImageInfo *)self setInterpretsUntaggedImageDataAsGeneric:0];
  }
}

- (id)i_thumbnailForImageData:(id)data
{
  result = TSDResampleImageData(data, 0, 3, 256.0, 256.0);
  if (result == data)
  {
    return 0;
  }

  return result;
}

- (void)setOriginalImageData:(id)data
{
  if (self->mOriginalImageData != data)
  {
    [(TSDDrawableInfo *)self willChangeProperty:528];
    [(TSPObject *)self willModify];

    self->mOriginalImageData = data;
  }
}

- (void)setStyle:(id)style
{
  if (self->mStyle != style)
  {
    [(TSDDrawableInfo *)self willChangeProperties:+[TSDMediaStyle properties]];
    [(TSPObject *)self willModify];
    styleCopy = style;

    self->mStyle = style;
  }
}

- (CGSize)originalSize
{
  if (self->mMaskInfo)
  {
    geometry = [(TSDDrawableInfo *)self->mMaskInfo geometry];

    [(TSDInfoGeometry *)geometry size];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDImageInfo;
    [(TSDMediaInfo *)&v5 originalSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)defaultOriginalSize
{
  if (self->mMaskInfo)
  {
    geometry = [(TSDDrawableInfo *)self->mMaskInfo geometry];

    [(TSDInfoGeometry *)geometry size];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDImageInfo;
    [(TSDMediaInfo *)&v5 defaultOriginalSize];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)rawDataSize
{
  if ([(TSDImageInfo *)self originalImageData])
  {
    originalImageData = [(TSDImageInfo *)self originalImageData];
  }

  else
  {
    originalImageData = [(TSDImageInfo *)self imageData];
  }

  v4 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];

  [v4 dpiAdjustedNaturalSize];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setMaskInfo:(id)info
{
  if (self->mMaskInfo != info)
  {
    [(TSDDrawableInfo *)self willChangeProperty:529];
    [(TSDDrawableInfo *)self->mMaskInfo clearBackPointerToParentInfoIfNeeded:self];

    infoCopy = info;
    self->mMaskInfo = infoCopy;

    [(TSDDrawableInfo *)infoCopy setParentInfo:self];
  }
}

- (void)setInstantAlphaPath:(id)path
{
  if (self->mInstantAlphaPath != path)
  {
    [(TSDDrawableInfo *)self willChangeProperty:530];

    self->mInstantAlphaPath = path;
  }
}

- (void)setImageAdjustments:(id)adjustments
{
  if (adjustments | self->mImageAdjustments && ([adjustments isEqual:?] & 1) == 0)
  {
    [(TSDDrawableInfo *)self willChangeProperty:531];

    self->mImageAdjustments = [adjustments copy];

    [(TSDImageInfo *)self setAdjustedImageData:0];
  }
}

- (void)setAdjustedImageData:(id)data
{
  if (self->mAdjustedImageData == data)
  {
    return;
  }

  [(TSDDrawableInfo *)self willChangeProperty:528];

  self->mAdjustedImageData = data;
  if (!data || ![(TSPObjectContext *)[(TSPObject *)self context] documentObject])
  {
    goto LABEL_8;
  }

  if (![data isReadable])
  {
    [data addDownloadObserver:self completionHandler:&__block_literal_global_32];
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = [(TSDImageInfo *)self i_thumbnailForImageData:data];
LABEL_9:

  [(TSDImageInfo *)self setThumbnailAdjustedImageData:v5];
}

void __37__TSDImageInfo_setAdjustedImageData___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v5 = [a2 i_thumbnailForImageData:?];
    if (v5)
    {

      [a2 setThumbnailAdjustedImageData:v5];
    }
  }
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 530:

      return [(TSDImageInfo *)self instantAlphaPath];
    case 529:

      return [(TSDImageInfo *)self maskInfo];
    case 528:

      return [(TSDImageInfo *)self imageData];
    default:
      v7 = v3;
      v8 = v4;
      v6.receiver = self;
      v6.super_class = TSDImageInfo;
      return [(TSDStyledInfo *)&v6 objectForProperty:?];
  }
}

- (BOOL)maskCanBeReset
{
  isMasked = [(TSDImageInfo *)self isMasked];
  if (isMasked)
  {
    geometry = [(TSDDrawableInfo *)[(TSDImageInfo *)self maskInfo] geometry];
    [(TSDInfoGeometry *)geometry position];
    if (v6 == *MEMORY[0x277CBF348] && v5 == *(MEMORY[0x277CBF348] + 8))
    {
      [(TSDInfoGeometry *)geometry size];
      v9 = v8;
      v11 = v10;
      [(TSDInfoGeometry *)[(TSDImageInfo *)self geometry] size];
      LOBYTE(isMasked) = 1;
      if (v9 == v13 && v11 == v12)
      {
        [(TSDInfoGeometry *)geometry angle];
        LOBYTE(isMasked) = v14 != 0.0;
      }
    }

    else
    {
      LOBYTE(isMasked) = 1;
    }
  }

  return isMasked;
}

- (id)defaultMaskInfoWithContext:(id)context
{
  if ([(TSDImageInfo *)self instantAlphaPath])
  {
    v5 = [(TSDBezierPath *)[(TSDImageInfo *)self instantAlphaPath] copy];
    [(TSDInfoGeometry *)[(TSDImageInfo *)self geometry] size];
    v7 = v6;
    v9 = v8;
    [(TSDImageInfo *)self naturalSize];
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v7 / v10, v9 / v11);
    v39 = v40;
    [v5 transformUsingAffineTransform:&v39];
    [v5 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [[TSDInfoGeometry alloc] initWithCenter:TSDCenterOfRect(v13 size:v15, v17, v19)];
    v21 = objc_alloc_init(TSDBezierPath);
    [(TSDBezierPath *)v21 appendBezierPathWithRect:TSDRectWithSize()];
    v22 = [[TSDBezierPathSource alloc] initWithBezierPath:v21];
  }

  else
  {
    geometry = [(TSDImageInfo *)self geometry];
    [(TSDInfoGeometry *)geometry center];
    v25 = v24;
    v27 = v26;
    [(TSDInfoGeometry *)geometry position];
    v29 = TSDSubtractPoints(v25, v27, v28);
    v31 = v30;
    [(TSDInfoGeometry *)geometry size];
    v33 = v32;
    v35 = v34;
    v36 = objc_alloc_init(TSDBezierPath);
    [(TSDBezierPath *)v36 appendBezierPathWithRect:TSDRectWithSize()];
    v22 = [[TSDBezierPathSource alloc] initWithBezierPath:v36];

    v20 = [[TSDInfoGeometry alloc] initWithCenter:v29 size:v31, v33, v35];
  }

  v37 = [[TSDMaskInfo alloc] initWithContext:context geometry:v20 pathSource:v22];

  return v37;
}

- (id)defaultMaskInfo
{
  context = [(TSPObject *)self context];

  return [(TSDImageInfo *)self defaultMaskInfoWithContext:context];
}

- (id)updatedMaskInfoGeometryForImageDraggedBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  result = [(TSDImageInfo *)self maskInfo];
  if (result)
  {
    v7 = [objc_msgSend(result "geometry")];
    memset(&v16, 0, sizeof(v16));
    geometry = [(TSDImageInfo *)self geometry];
    if (geometry)
    {
      [(TSDInfoGeometry *)geometry transform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeTranslation(&t2, x, y);
    t1 = v16;
    CGAffineTransformConcat(&v15, &t1, &t2);
    [v7 position];
    v11 = v16.ty + v9 * v16.d + v16.b * v10;
    v12 = v16.tx + v9 * v16.c + v16.a * v10;
    t1 = v15;
    CGAffineTransformInvert(&t2, &t1);
    [v7 setPosition:{vaddq_f64(*&t2.tx, vmlaq_n_f64(vmulq_n_f64(*&t2.c, v11), *&t2.a, v12))}];
    return v7;
  }

  return result;
}

- (BOOL)isValid
{
  imageData = [(TSDImageInfo *)self imageData];

  return [TSDImageProviderPool isValidImageData:imageData];
}

- (BOOL)isOpaque
{
  [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 isOpaque];
}

- (CGPoint)centerForReplacingWithNewMedia
{
  geometryWithMask = [(TSDImageInfo *)self geometryWithMask];

  [geometryWithMask center];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)updateGeometryToReplaceMediaInfo:(id)info
{
  v5 = [objc_msgSend(info "geometry")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [info maskInfo])
  {
    maskInfo = [info maskInfo];
    v27 = [objc_msgSend(maskInfo "pathSource")];
    geometry = [maskInfo geometry];
    if (!geometry)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo updateGeometryToReplaceMediaInfo:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 912, @"invalid nil value for '%s'", "oldMaskGeometry"}];
    }

    v10 = [geometry copy];
  }

  else
  {
    v11 = [TSDInfoGeometry alloc];
    [v5 size];
    v12 = TSDRectWithSize();
    v16 = TSDCenterOfRect(v12, v13, v14, v15);
    v18 = v17;
    [info originalSize];
    v10 = [(TSDInfoGeometry *)v11 initWithCenter:v16 size:v18, v19, v20];
    v27 = 0;
  }

  v21 = [v5 mutableCopy];
  v22 = [(TSDInfoGeometry *)v10 mutableCopy];
  imageData = [(TSDImageInfo *)self imageData];
  instantAlphaPath = [(TSDImageInfo *)self instantAlphaPath];
  [(TSDImageInfo *)self naturalSize];
  [TSDImageInfo adjustIncomingImageGeometry:v21 maskGeometry:v22 forImageData:imageData maskedWithInstantAlphaPath:instantAlphaPath withNaturalSize:v5 forTargetImageGeometry:v10 withTargetMaskGeometry:?];
  [(TSDMediaInfo *)self setGeometry:v21];
  if (v27)
  {
    defaultMaskInfo = [[TSDMaskInfo alloc] initWithContext:[(TSPObject *)self context] geometry:v10 pathSource:v27];
  }

  else
  {
    defaultMaskInfo = [(TSDImageInfo *)self defaultMaskInfo];
  }

  v26 = defaultMaskInfo;
  [(TSDMaskInfo *)defaultMaskInfo setGeometry:v22];
  [(TSDImageInfo *)self setMaskInfo:v26];
}

+ (void)adjustIncomingImageGeometry:(id)geometry maskGeometry:(id)maskGeometry forImageData:(id)data maskedWithInstantAlphaPath:(id)path withNaturalSize:(CGSize)size forTargetImageGeometry:(id)imageGeometry withTargetMaskGeometry:(id)targetMaskGeometry
{
  height = size.height;
  width = size.width;
  if (geometry)
  {
    if (maskGeometry)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
    [currentHandler handleFailureInFunction:v64 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 956, @"invalid nil value for '%s'", "newImageGeometry"}];
    if (maskGeometry)
    {
LABEL_3:
      if (data)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
  [currentHandler2 handleFailureInFunction:v66 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 957, @"invalid nil value for '%s'", "newMaskGeometry"}];
  if (data)
  {
LABEL_4:
    if (imageGeometry)
    {
      goto LABEL_5;
    }

LABEL_18:
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
    [currentHandler3 handleFailureInFunction:v70 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 960, @"invalid nil value for '%s'", "targetImageGeometry"}];
    if (targetMaskGeometry)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
  v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
  [currentHandler4 handleFailureInFunction:v68 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 958, @"invalid nil value for '%s'", "newImageData"}];
  if (!imageGeometry)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (targetMaskGeometry)
  {
    goto LABEL_6;
  }

LABEL_19:
  v71 = [TSDInfoGeometry alloc];
  [imageGeometry size];
  targetMaskGeometry = [(TSDInfoGeometry *)v71 initWithPosition:*MEMORY[0x277CBF348] size:*(MEMORY[0x277CBF348] + 8), v72, v73];
LABEL_6:
  [targetMaskGeometry transformedBounds];
  v18 = v17;
  v20 = v19;
  v21 = [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
  v22 = v21;
  v23 = v20;
  v24 = v18;
  if (v21)
  {
    [v21 naturalSize];
    v24 = TSDFitOrFillSizeInSize(1, v25, v26, v18, v20);
    v23 = v27;
  }

  if (!path)
  {
    goto LABEL_21;
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
    v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
    [currentHandler5 handleFailureInFunction:v75 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 982, @"instant alpha paths require non-zero natural sizes"}];
LABEL_21:
    v76 = v24;
    v77 = v23;
    [geometry setSize:{fmaxf(v76, 1.0), fmaxf(v77, 1.0)}];
    [targetMaskGeometry center];
    if (imageGeometry)
    {
      v98 = v79;
      v100 = v78;
      [imageGeometry transform];
      v79 = v98;
      v78 = v100;
      v81 = *&v101.a;
      v80 = *&v101.c;
      v82 = *&v101.tx;
    }

    else
    {
      v82 = 0uLL;
      v81 = 0uLL;
      v80 = 0uLL;
    }

    [geometry setCenter:{vaddq_f64(v82, vmlaq_n_f64(vmulq_n_f64(v80, v79), v81, v78))}];
    [geometry size];
    v83 = TSDRectWithSize();
    v87 = TSDCenterOfRect(v83, v84, v85, v86);
    goto LABEL_27;
  }

  [v22 naturalSize];
  v30 = v29;
  v32 = v31;
  CGAffineTransformMakeScale(&v101, v29 / width, v31 / height);
  [path transformUsingAffineTransform:&v101];
  [path bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = TSDFitOrFillSizeInSize(1, v37, v39, v18, v20);
  *&v42 = v42;
  v43 = fmaxf(v41, 1.0) / v38;
  v44 = fmaxf(*&v42, 1.0) / v40;
  [geometry setSize:{v30 * v43, v32 * v44}];
  CGAffineTransformMakeScale(&v101, v43, v44);
  v102.origin.x = v34;
  v102.origin.y = v36;
  v102.size.width = v38;
  v102.size.height = v40;
  v103 = CGRectApplyAffineTransform(v102, &v101);
  x = v103.origin.x;
  y = v103.origin.y;
  v47 = v103.size.width;
  v48 = v103.size.height;
  v49 = TSDRectWithSize();
  v53 = TSDCenterOfRect(v49, v50, v51, v52);
  v55 = v54;
  v56 = TSDCenterOfRect(x, y, v47, v48);
  v57 = TSDSubtractPoints(v53, v55, v56);
  [targetMaskGeometry center];
  if (imageGeometry)
  {
    v97 = v59;
    v99 = v58;
    [imageGeometry transform];
    v59 = v97;
    v58 = v99;
    v61 = *&v101.a;
    v60 = *&v101.c;
    v62 = *&v101.tx;
  }

  else
  {
    v62 = 0uLL;
    v61 = 0uLL;
    v60 = 0uLL;
  }

  v88 = vaddq_f64(v62, vmlaq_n_f64(vmulq_n_f64(v60, v59), v61, v58));
  [geometry setCenter:{TSDAddPoints(v88.f64[0], v88.f64[1], v57)}];
  [geometry size];
  v89 = TSDRectWithSize();
  v93 = TSDCenterOfRect(v89, v90, v91, v92);
  v87 = TSDSubtractPoints(v93, v94, v57);
LABEL_27:
  [maskGeometry setCenter:v87];
  if (![geometry heightValid] || (objc_msgSend(geometry, "widthValid") & 1) == 0)
  {
    currentHandler6 = [MEMORY[0x277D6C290] currentHandler];
    v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]"];
    [currentHandler6 handleFailureInFunction:v96 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 1030, @"returning an image geometry with invalid height/width."}];
  }
}

- (TSDBezierPath)tracedPath
{
  objc_sync_enter(self);
  if (!self->mTracedPath)
  {
    [+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    objc_opt_class();
    v3 = TSUDynamicCast();
    v4 = v3;
    if (v3)
    {
      cGImageForNaturalSize = [v3 CGImageForNaturalSize];
      if (cGImageForNaturalSize)
      {
        [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self exteriorTextWrap] alphaThreshold];
        self->mTracedPath = [TSDBezierPath tracedPathForImage:"tracedPathForImage:alphaThreshold:pointSpacing:" alphaThreshold:cGImageForNaturalSize pointSpacing:?];
        [v4 naturalSize];
        v7 = v6;
        v9 = v8;
        [(TSDImageInfo *)self naturalSize];
        mTracedPath = self->mTracedPath;
        if (mTracedPath && (v7 != v10 || v9 != v11))
        {
          CGAffineTransformMakeScale(&v23, v10 / v7, v11 / v9);
          [(TSDBezierPath *)mTracedPath transformUsingAffineTransform:&v23];
        }

        memset(&v23, 0, sizeof(v23));
        [v4 orientation];
        TSUImageOrientationTransform();
        v22 = v23;
        if (!CGAffineTransformIsIdentity(&v22))
        {
          CGImageGetWidth(cGImageForNaturalSize);
          CGImageGetHeight(cGImageForNaturalSize);
          v24.origin.x = TSDRectWithSize();
          v22 = v23;
          v25 = CGRectApplyAffineTransform(v24, &v22);
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
          v17 = self->mTracedPath;
          v22 = v23;
          [(TSDBezierPath *)v17 transformUsingAffineTransform:&v22];
          v18 = self->mTracedPath;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          MinX = CGRectGetMinX(v26);
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          MinY = CGRectGetMinY(v27);
          CGAffineTransformMakeTranslation(&v22, -MinX, -MinY);
          [(TSDBezierPath *)v18 transformUsingAffineTransform:&v22];
        }
      }
    }

    if (!self->mTracedPath)
    {
      [(TSDImageInfo *)self naturalSize];
      self->mTracedPath = [TSDBezierPath bezierPathWithRect:TSDRectWithSize()];
    }
  }

  objc_sync_exit(self);
  return self->mTracedPath;
}

- (CGSize)naturalSize
{
  objc_sync_enter(self);
  p_mNaturalSize = &self->mNaturalSize;
  if (self->mNaturalSize.width == *MEMORY[0x277CBF3A8] && self->mNaturalSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    p_mNaturalSize->width = v5;
    self->mNaturalSize.height = v6;
  }

  objc_sync_exit(self);
  width = p_mNaturalSize->width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_mNaturalSize = &self->mNaturalSize;
  if (size.width != self->mNaturalSize.width || size.height != self->mNaturalSize.height)
  {
    objc_sync_enter(self);
    [(TSPObject *)self willModify];
    p_mNaturalSize->width = width;
    p_mNaturalSize->height = height;

    objc_sync_exit(self);
  }
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDImageInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
}

uint64_t __37__TSDImageInfo_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageInfo mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 1112, @"nil object after cast"}];
  }

  if (![objc_msgSend(*(a1 + 40) "imageData")])
  {
    return 1;
  }

  v5 = TSDMixingTypeBestFromMixingTypes(5, [objc_msgSend(*(a1 + 40) "geometry")]);
  v6 = TSDMixingTypeBestFromMixingTypes(v5, [objc_msgSend(*(a1 + 40) "imageStyle")]);
  v7 = TSDMixingTypeWithPossiblyNilObjects([*(a1 + 40) maskInfo], objc_msgSend(v2, "maskInfo"));
  result = TSDMixingTypeBestFromMixingTypes(v6, v7);
  if (result == 3)
  {
    return 2;
  }

  return result;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDImageInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
}

TSDImageInfo *__49__TSDImageInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [objc_msgSend(*(a1 + 40) "geometry")];
  v4 = [objc_msgSend(*(a1 + 40) "imageStyle")];
  v5 = [objc_msgSend(*(a1 + 40) "maskInfo")];
  v6 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [*(a1 + 40) context], v3, v4, objc_msgSend(*(a1 + 40), "imageData"), 0);
  [(TSDImageInfo *)v6 setMaskInfo:v5];
  return v6;
}

+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)index inTheme:(id)theme alternate:(int)alternate
{
  colors = [theme colors];
  if (!colors)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"), 1174, @"invalid nil value for '%s'", "colors"}];
  }

  v10 = objc_alloc_init(TSSPropertyMap);
  if (alternate > 5 || ((1 << alternate) & 0x2B) == 0)
  {
    if (index > 2)
    {
      if (index != 3)
      {
        if (index != 5)
        {
          goto LABEL_34;
        }

        v11 = [[TSDFrame alloc] initWithFrameName:@"Modern"];
        if (v11)
        {
          goto LABEL_27;
        }

        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]"];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"];
        v15 = currentHandler2;
        v16 = v34;
        v17 = 1260;
        goto LABEL_26;
      }

      v27 = colors;
      v28 = 3;
      goto LABEL_32;
    }

    if (index != 1)
    {
      if (index != 2)
      {
        goto LABEL_34;
      }

      v18 = [TSDDropShadow alloc];
      v19 = [objc_msgSend(colors objectAtIndex:{2), "CGColor"}];
      v20 = 320.0;
      v21 = 0.59;
      v22 = 6.0;
      v23 = 7.0;
      goto LABEL_18;
    }

    v31 = [TSDReflection alloc];
    v32 = 0.27;
LABEL_29:
    v11 = [(TSDReflection *)v31 initWithOpacity:v32];
    v24 = v10;
    v25 = v11;
    v26 = 519;
    goto LABEL_30;
  }

  if (index <= 2)
  {
    if (index != 1)
    {
      if (index != 2)
      {
        goto LABEL_34;
      }

      v18 = [TSDDropShadow alloc];
      v19 = [objc_msgSend(colors objectAtIndex:{2), "CGColor"}];
      v20 = 270.0;
      v21 = 0.7;
      v22 = 10.0;
      v23 = 20.0;
LABEL_18:
      v11 = [(TSDDropShadow *)v18 initWithAngle:v19 offset:1 radius:v20 opacity:v22 color:v23 enabled:v21];
      v24 = v10;
      v25 = v11;
      v26 = 520;
LABEL_30:
      [(TSSPropertyMap *)v24 setObject:v25 forProperty:v26];

      goto LABEL_34;
    }

    v31 = [TSDReflection alloc];
    v32 = 0.5;
    goto LABEL_29;
  }

  if (index == 3)
  {
    v27 = colors;
    v28 = 5;
LABEL_32:
    v29 = [v27 objectAtIndex:v28];
    v30 = 1.0;
    goto LABEL_33;
  }

  if (index != 4)
  {
    if (index != 5)
    {
      goto LABEL_34;
    }

    v11 = [[TSDFrame alloc] initWithFrameName:@"Modern"];
    if (v11)
    {
      goto LABEL_27;
    }

    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageInfo.m"];
    v15 = currentHandler3;
    v16 = v13;
    v17 = 1216;
LABEL_26:
    [v15 handleFailureInFunction:v16 file:v14 lineNumber:v17 description:@"Modern frame in frames bundle is NULL!"];
LABEL_27:
    v24 = v10;
    v25 = v11;
    v26 = 517;
    goto LABEL_30;
  }

  v29 = [colors objectAtIndex:5];
  v30 = 2.0;
LABEL_33:
  [(TSSPropertyMap *)v10 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v29 width:v30], 517];
LABEL_34:

  return v10;
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate reservedCount:(unint64_t)count
{
  v7 = *&alternate;
  v10 = 6 - count;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6 - count];
  if (count != 6)
  {
    v12 = 0;
    do
    {
      v13 = TSDImageStyleIdentifierString(v12);
      v14 = -[TSSStyle initWithContext:]([TSDMediaStyle alloc], "initWithContext:", [theme context]);
      -[TSSStyle setValuesForProperties:](v14, "setValuesForProperties:", [self bootstrapPropertyMapForPresetIndex:v12 inTheme:theme alternate:v7]);
      [objc_msgSend(theme "stylesheet")];
      [v11 addObject:v14];

      ++v12;
    }

    while (v10 != v12);
  }

  v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v11];
  [theme setPresets:v15 ofKind:String];
}

@end