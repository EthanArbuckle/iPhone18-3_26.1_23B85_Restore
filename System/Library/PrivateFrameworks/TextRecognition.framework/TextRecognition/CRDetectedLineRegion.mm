@interface CRDetectedLineRegion
- (CGSize)rectifiedSize;
- (CRDetectedLineRegion)init;
- (double)aspectRatio;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rotated180;
- (void)_copyContentsToObject:(id)object;
- (void)_rotate180;
@end

@implementation CRDetectedLineRegion

- (CRDetectedLineRegion)init
{
  v6.receiver = self;
  v6.super_class = CRDetectedLineRegion;
  v2 = [(CRDetectedLineRegion *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [(CRDetectedLineRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRMutableDetectedLineRegion);
  if (v4)
  {
    [(CRDetectedLineRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (id)rotated180
{
  v2 = [(CRDetectedLineRegion *)self copy];
  [v2 _rotate180];

  return v2;
}

- (CGSize)rectifiedSize
{
  polygon = [(CRDetectedLineRegion *)self polygon];

  if (polygon)
  {
    polygon2 = [(CRDetectedLineRegion *)self polygon];
    denormalizedPolyline = [polygon2 denormalizedPolyline];
    [denormalizedPolyline estimatedLineSizeForPairedPointPolygon];
  }

  else
  {
    polygon2 = [(CRDetectedLineRegion *)self boundingQuad];
    denormalizedPolyline = [polygon2 denormalizedQuad];
    [denormalizedPolyline size];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)aspectRatio
{
  [(CRDetectedLineRegion *)self rectifiedSize];
  v4 = v3 / v2;
  v5 = v2 == 0.0;
  result = 0.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)_rotate180
{
  boundingQuad = [(CRDetectedLineRegion *)self boundingQuad];
  rotated180 = [boundingQuad rotated180];
  [(CRDetectedLineRegion *)self setBoundingQuad:rotated180];

  polygon = [(CRDetectedLineRegion *)self polygon];
  rotated1802 = [polygon rotated180];
  [(CRDetectedLineRegion *)self setPolygon:rotated1802];
}

- (void)_copyContentsToObject:(id)object
{
  objectCopy = object;
  boundingQuad = [(CRDetectedLineRegion *)self boundingQuad];
  [objectCopy setBoundingQuad:boundingQuad];

  [objectCopy setLayoutDirection:{-[CRDetectedLineRegion layoutDirection](self, "layoutDirection")}];
  [objectCopy setIsCurved:{-[CRDetectedLineRegion isCurved](self, "isCurved")}];
  uuid = [(CRDetectedLineRegion *)self uuid];
  [objectCopy setUuid:uuid];

  polygon = [(CRDetectedLineRegion *)self polygon];
  [objectCopy setPolygon:polygon];

  scriptCategoryResults = [(CRDetectedLineRegion *)self scriptCategoryResults];
  [objectCopy setScriptCategoryResults:scriptCategoryResults];

  topScriptCategory = [(CRDetectedLineRegion *)self topScriptCategory];
  [objectCopy setTopScriptCategory:topScriptCategory];

  scriptCategoryCounts = [(CRDetectedLineRegion *)self scriptCategoryCounts];
  [objectCopy setScriptCategoryCounts:scriptCategoryCounts];

  sequenceScriptOutputResult = [(CRDetectedLineRegion *)self sequenceScriptOutputResult];
  [objectCopy setSequenceScriptOutputResult:sequenceScriptOutputResult];

  [objectCopy setNmsOutputScale:{-[CRDetectedLineRegion nmsOutputScale](self, "nmsOutputScale")}];
  [objectCopy setShouldRunSequenceScript:{-[CRDetectedLineRegion shouldRunSequenceScript](self, "shouldRunSequenceScript")}];
  [objectCopy setShouldRunSequenceOrientation:{-[CRDetectedLineRegion shouldRunSequenceOrientation](self, "shouldRunSequenceOrientation")}];
  [objectCopy setShouldRotate180DetectorOrientationFallback:{-[CRDetectedLineRegion shouldRotate180DetectorOrientationFallback](self, "shouldRotate180DetectorOrientationFallback")}];
  [objectCopy setTextType:{-[CRDetectedLineRegion textType](self, "textType")}];
}

@end