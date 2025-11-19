@interface CRBlockOutputRegion
+ (CRBlockOutputRegion)blockWithGroupRegion:(void *)a3 children:(uint64_t)a4 confidenceThresholdProvider:(uint64_t)a5 canWrapToNextBlock:;
+ (id)blockWithBlock:(id)a3 children:(id)a4;
+ (id)blockWithLines:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6;
- (id)joiningDelimiter;
- (void)removeSubregion:(id)a3;
@end

@implementation CRBlockOutputRegion

+ (CRBlockOutputRegion)blockWithGroupRegion:(void *)a3 children:(uint64_t)a4 confidenceThresholdProvider:(uint64_t)a5 canWrapToNextBlock:
{
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [CRBlockOutputRegion alloc];
  v10 = [v8 boundingQuad];
  [v10 baselineAngle];
  v11 = [(CROutputRegion *)v9 initWithConfidence:2 baselineAngle:?];

  [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  v12 = [v8 boundingQuad];

  [(CROutputRegion *)v11 setBoundingQuad:v12];
  [(CROutputRegion *)v11 setChildren:v7];
  v13 = [v7 count];

  [(CROutputRegion *)v11 setNumberOfLines:v13];
  [(CRBlockOutputRegion *)v11 setCanWrapToNextGroup:a5];

  return v11;
}

+ (id)blockWithBlock:(id)a3 children:(id)a4
{
  v5 = a4;
  v6 = [a3 copyWithZone:0 copyChildren:0 copyCandidates:0 deepCopy:0];
  [v6 setChildren:v5];
  v7 = [v5 count];

  [v6 setNumberOfLines:v7];

  return v6;
}

+ (id)blockWithLines:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [(CROutputRegion *)[CRBlockOutputRegion alloc] initWithConfidence:a4 baselineAngle:a6];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  if (v9)
  {
    [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v11 setBoundingQuad:v9];
  }

  else
  {
    [(CRCompositeOutputRegion *)v11 setShouldComputeBoundsFromChildren:1];
  }

  -[CROutputRegion setNumberOfLines:](v11, "setNumberOfLines:", [v10 count]);
  [(CROutputRegion *)v11 setChildren:v10];

  return v11;
}

- (id)joiningDelimiter
{
  v3 = [(CROutputRegion *)self children];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CROutputRegion *)self children];
    v6 = [v5 lastObject];
    v7 = [v6 joiningDelimiter];
  }

  else
  {
    v7 = @"\n";
  }

  return v7;
}

- (void)removeSubregion:(id)a3
{
  v4 = a3;
  v5 = [(CROutputRegion *)self children];
  v6 = [v5 mutableCopy];

  v7 = [(CROutputRegion *)self children];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(CROutputRegion *)self children];
        v11 = [v10 objectAtIndexedSubscript:v9];

        if (v11 == v4)
        {
          break;
        }
      }

      ++v9;
      v12 = [(CROutputRegion *)self children];
      v13 = [v12 count];

      if (v13 <= v9)
      {
        goto LABEL_8;
      }
    }

    [v6 removeObjectAtIndex:v9];
  }

LABEL_8:
  v14 = [(CROutputRegion *)self children];
  v15 = [v14 count];
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