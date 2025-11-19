@interface CRParagraphOutputRegion
+ (id)paragraphWithLines:(id)a3 confidence:(unint64_t)a4 baselineAngle:(double)a5;
+ (id)paragraphsWithLines:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)joiningDelimiter;
- (unint64_t)textAlignment;
- (void)_computeGeometryInfo;
@end

@implementation CRParagraphOutputRegion

+ (id)paragraphsWithLines:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 baselineAngle];
        if (v10)
        {
          v16 = __sincos_stret(v15);
          v17 = __sincos_stret(v12);
          v15 = atan2(v17.__sinval * v10 + v16.__sinval, v17.__cosval * v10 + v16.__cosval);
        }

        v12 = v15;
        [v6 addObject:v14];
        if ([v14 shouldWrapToNextLine])
        {
          ++v10;
        }

        else
        {
          v18 = [v6 copy];
          v19 = [a1 paragraphWithLines:v18 confidence:1 baselineAngle:v12];
          [v5 addObject:v19];

          v20 = objc_opt_new();
          v10 = 0;
          v6 = v20;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 0.0;
  }

  if ([v6 count])
  {
    v21 = [v6 copy];
    v22 = [a1 paragraphWithLines:v21 confidence:1 baselineAngle:v12];
    [v5 addObject:v22];
  }

  v23 = [v5 copy];

  return v23;
}

+ (id)paragraphWithLines:(id)a3 confidence:(unint64_t)a4 baselineAngle:(double)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(CROutputRegion *)[CRParagraphOutputRegion alloc] initWithConfidence:a4 baselineAngle:a5];
  [(CRCompositeOutputRegion *)v8 setShouldComputeBoundsFromChildren:1];
  [(CROutputRegion *)v8 setShouldComputeTranscriptFromChildren:1];
  [(CROutputRegion *)v8 setChildren:v7];
  -[CROutputRegion setNumberOfLines:](v8, "setNumberOfLines:", [v7 count]);
  [(CRParagraphOutputRegion *)v8 setUseLineSeparatorAsJoiningDelimiter:0];
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    -[CROutputRegion setLayoutDirection:](v8, "setLayoutDirection:", [v9 layoutDirection]);
  }

  v10 = v7;
  objc_opt_self();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v60;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v59 + 1) + 8 * i);
        v19 = [v18 text];
        v20 = [v19 length];

        [v18 activationProbability];
        v16 = v16 + v21 * v20;
        v14 += v20;
      }

      v13 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v13);
    v22 = v14;
  }

  else
  {
    v22 = 0.0;
    v16 = 0.0;
  }

  [(CROutputRegion *)v8 setActivationProbability:v16 / v22];
  v23 = [CRNormalizedQuad alloc];
  v58 = [(CROutputRegion *)v8 children];
  v57 = [v58 firstObject];
  v56 = [v57 boundingQuad];
  [v56 topLeft];
  v25 = v24;
  v27 = v26;
  v55 = [(CROutputRegion *)v8 children];
  v54 = [v55 firstObject];
  v53 = [v54 boundingQuad];
  [v53 topRight];
  v29 = v28;
  v31 = v30;
  v52 = [(CROutputRegion *)v8 children];
  v51 = [v52 lastObject];
  v32 = [v51 boundingQuad];
  [v32 bottomRight];
  v34 = v33;
  v36 = v35;
  v37 = [(CROutputRegion *)v8 children];
  v38 = [v37 lastObject];
  v39 = [v38 boundingQuad];
  [v39 bottomLeft];
  v41 = v40;
  v43 = v42;
  v44 = [(CROutputRegion *)v8 children];
  v45 = [v44 firstObject];
  v46 = [v45 boundingQuad];
  [v46 normalizationSize];
  v49 = [(CRNormalizedQuad *)v23 initWithNormalizedTopLeft:v25 topRight:v27 bottomRight:v29 bottomLeft:v31 size:v34, v36, v41, v43, v47, v48];
  [(CRParagraphOutputRegion *)v8 setTopBottomEdgesQuad:v49];

  return v8;
}

- (id)joiningDelimiter
{
  if ([(CRParagraphOutputRegion *)self useLineSeparatorAsJoiningDelimiter])
  {
    return @"\u2028";
  }

  else
  {
    return @"\n";
  }
}

- (void)_computeGeometryInfo
{
  v3 = [[CRRegionGroupGeometryInfo alloc] initFromRegionGroup:self];
  [(CROutputRegion *)self setGeometryInfo:v3];
}

- (unint64_t)textAlignment
{
  if ([(CROutputRegion *)self layoutDirection]!= 5)
  {
    v4 = [(CROutputRegion *)self geometryInfo];
    if ([v4 isCenterJustified])
    {
      v3 = 1;
LABEL_18:

      return v3;
    }

    if (![v4 isLeftJustified] || (objc_msgSend(v4, "isRightJustified") & 1) == 0)
    {
      if (-[CROutputRegion layoutDirection](self, "layoutDirection") == 1 && ([v4 isLeftJustified] & 1) != 0 || -[CROutputRegion layoutDirection](self, "layoutDirection") == 2 && (objc_msgSend(v4, "isRightJustified") & 1) != 0)
      {
        v3 = 2;
        goto LABEL_18;
      }

      if (-[CROutputRegion layoutDirection](self, "layoutDirection") == 1 && ([v4 isRightJustified] & 1) != 0 || -[CROutputRegion layoutDirection](self, "layoutDirection") == 2 && (objc_msgSend(v4, "isLeftJustified") & 1) != 0)
      {
        v3 = 3;
        goto LABEL_18;
      }
    }

    v3 = 0;
    goto LABEL_18;
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = CRParagraphOutputRegion;
  v7 = [(CROutputRegion *)&v10 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  [v7 setUseLineSeparatorAsJoiningDelimiter:{-[CRParagraphOutputRegion useLineSeparatorAsJoiningDelimiter](self, "useLineSeparatorAsJoiningDelimiter")}];
  v8 = [(CRParagraphOutputRegion *)self topBottomEdgesQuad];
  [v7 setTopBottomEdgesQuad:v8];

  return v7;
}

@end