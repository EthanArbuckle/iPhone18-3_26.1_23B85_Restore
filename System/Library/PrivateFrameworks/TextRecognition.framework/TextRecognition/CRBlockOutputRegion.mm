@interface CRBlockOutputRegion
+ (CRBlockOutputRegion)blockWithGroupRegion:(void *)region children:(uint64_t)children confidenceThresholdProvider:(uint64_t)provider canWrapToNextBlock:;
+ (id)blockWithBlock:(id)block children:(id)children;
+ (id)blockWithLines:(id)lines confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle;
- (id)joiningDelimiter;
- (void)removeSubregion:(id)subregion;
@end

@implementation CRBlockOutputRegion

+ (CRBlockOutputRegion)blockWithGroupRegion:(void *)region children:(uint64_t)children confidenceThresholdProvider:(uint64_t)provider canWrapToNextBlock:
{
  regionCopy = region;
  v8 = a2;
  objc_opt_self();
  v9 = [CRBlockOutputRegion alloc];
  boundingQuad = [v8 boundingQuad];
  [boundingQuad baselineAngle];
  v11 = [(CROutputRegion *)v9 initWithConfidence:2 baselineAngle:?];

  [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  boundingQuad2 = [v8 boundingQuad];

  [(CROutputRegion *)v11 setBoundingQuad:boundingQuad2];
  [(CROutputRegion *)v11 setChildren:regionCopy];
  v13 = [regionCopy count];

  [(CROutputRegion *)v11 setNumberOfLines:v13];
  [(CRBlockOutputRegion *)v11 setCanWrapToNextGroup:provider];

  return v11;
}

+ (id)blockWithBlock:(id)block children:(id)children
{
  childrenCopy = children;
  v6 = [block copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:0];
  [v6 setChildren:childrenCopy];
  v7 = [childrenCopy count];

  [v6 setNumberOfLines:v7];

  return v6;
}

+ (id)blockWithLines:(id)lines confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle
{
  quadCopy = quad;
  linesCopy = lines;
  v11 = [(CROutputRegion *)[CRBlockOutputRegion alloc] initWithConfidence:confidence baselineAngle:angle];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  if (quadCopy)
  {
    [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v11 setBoundingQuad:quadCopy];
  }

  else
  {
    [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:1];
  }

  -[CROutputRegion setNumberOfLines:](v11, "setNumberOfLines:", [linesCopy count]);
  [(CROutputRegion *)v11 setChildren:linesCopy];

  return v11;
}

- (id)joiningDelimiter
{
  children = [(CROutputRegion *)self children];
  v4 = [children count];

  if (v4)
  {
    children2 = [(CROutputRegion *)self children];
    lastObject = [children2 lastObject];
    joiningDelimiter = [lastObject joiningDelimiter];
  }

  else
  {
    joiningDelimiter = @"\n";
  }

  return joiningDelimiter;
}

- (void)removeSubregion:(id)subregion
{
  subregionCopy = subregion;
  children = [(CROutputRegion *)self children];
  v6 = [children mutableCopy];

  children2 = [(CROutputRegion *)self children];
  v8 = [children2 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        children3 = [(CROutputRegion *)self children];
        v11 = [children3 objectAtIndexedSubscript:v9];

        if (v11 == subregionCopy)
        {
          break;
        }
      }

      ++v9;
      children4 = [(CROutputRegion *)self children];
      v13 = [children4 count];

      if (v13 <= v9)
      {
        goto LABEL_8;
      }
    }

    [v6 removeObjectAtIndex:v9];
  }

LABEL_8:
  children5 = [(CROutputRegion *)self children];
  v15 = [children5 count];
  v16 = [v6 count] + 1;

  if (v15 == v16)
  {
    [(CROutputRegion *)self setChildren:v6];
    [(CROutputRegion *)self setNumberOfLines:[(CROutputRegion *)self numberOfLines]- 1];
    [(CROutputRegion *)self _invalidateTranscript];
  }

  else
  {
    v17 = CROSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B40D2000, v17, OS_LOG_TYPE_FAULT, "Could not find line to remove", v18, 2u);
    }
  }
}

@end