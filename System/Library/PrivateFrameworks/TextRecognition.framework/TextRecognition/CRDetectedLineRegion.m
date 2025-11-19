@interface CRDetectedLineRegion
- (CGSize)rectifiedSize;
- (CRDetectedLineRegion)init;
- (double)aspectRatio;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)rotated180;
- (void)_copyContentsToObject:(id)a3;
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [(CRDetectedLineRegion *)self _copyContentsToObject:v4];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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
  v3 = [(CRDetectedLineRegion *)self polygon];

  if (v3)
  {
    v4 = [(CRDetectedLineRegion *)self polygon];
    v5 = [v4 denormalizedPolyline];
    [v5 estimatedLineSizeForPairedPointPolygon];
  }

  else
  {
    v4 = [(CRDetectedLineRegion *)self boundingQuad];
    v5 = [v4 denormalizedQuad];
    [v5 size];
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
  v3 = [(CRDetectedLineRegion *)self boundingQuad];
  v4 = [v3 rotated180];
  [(CRDetectedLineRegion *)self setBoundingQuad:v4];

  v6 = [(CRDetectedLineRegion *)self polygon];
  v5 = [v6 rotated180];
  [(CRDetectedLineRegion *)self setPolygon:v5];
}

- (void)_copyContentsToObject:(id)a3
{
  v11 = a3;
  v4 = [(CRDetectedLineRegion *)self boundingQuad];
  [v11 setBoundingQuad:v4];

  [v11 setLayoutDirection:{-[CRDetectedLineRegion layoutDirection](self, "layoutDirection")}];
  [v11 setIsCurved:{-[CRDetectedLineRegion isCurved](self, "isCurved")}];
  v5 = [(CRDetectedLineRegion *)self uuid];
  [v11 setUuid:v5];

  v6 = [(CRDetectedLineRegion *)self polygon];
  [v11 setPolygon:v6];

  v7 = [(CRDetectedLineRegion *)self scriptCategoryResults];
  [v11 setScriptCategoryResults:v7];

  v8 = [(CRDetectedLineRegion *)self topScriptCategory];
  [v11 setTopScriptCategory:v8];

  v9 = [(CRDetectedLineRegion *)self scriptCategoryCounts];
  [v11 setScriptCategoryCounts:v9];

  v10 = [(CRDetectedLineRegion *)self sequenceScriptOutputResult];
  [v11 setSequenceScriptOutputResult:v10];

  [v11 setNmsOutputScale:{-[CRDetectedLineRegion nmsOutputScale](self, "nmsOutputScale")}];
  [v11 setShouldRunSequenceScript:{-[CRDetectedLineRegion shouldRunSequenceScript](self, "shouldRunSequenceScript")}];
  [v11 setShouldRunSequenceOrientation:{-[CRDetectedLineRegion shouldRunSequenceOrientation](self, "shouldRunSequenceOrientation")}];
  [v11 setShouldRotate180DetectorOrientationFallback:{-[CRDetectedLineRegion shouldRotate180DetectorOrientationFallback](self, "shouldRotate180DetectorOrientationFallback")}];
  [v11 setTextType:{-[CRDetectedLineRegion textType](self, "textType")}];
}

@end