@interface PLUtilityAssetClassification
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingBox;
- (unint64_t)hash;
@end

@implementation PLUtilityAssetClassification

- (CGRect)boundingBox
{
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 16);
  [(PLUtilityAssetClassification *)self packedBoundingBox];
  PLSplitToCGRectFromInt64();
  v3 = *(&v6 + 1);
  v2 = *&v6;
  v5 = *(&v7 + 1);
  v4 = *&v7;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)hash
{
  v3 = [(PLUtilityAssetClassification *)self extendedSceneIdentifier];
  [(PLUtilityAssetClassification *)self confidence];
  v5 = v4;
  v6 = v3 ^ [(PLUtilityAssetClassification *)self classificationType];
  return v6 ^ [(PLUtilityAssetClassification *)self packedBoundingBox]^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLUtilityAssetClassification *)self extendedSceneIdentifier];
      if (v6 == [(PLUtilityAssetClassification *)v5 extendedSceneIdentifier]&& ([(PLUtilityAssetClassification *)self confidence], v8 = v7, [(PLUtilityAssetClassification *)v5 confidence], v8 == v9) && (v10 = [(PLUtilityAssetClassification *)self classificationType], v10 == [(PLUtilityAssetClassification *)v5 classificationType]))
      {
        [(PLUtilityAssetClassification *)self boundingBox];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [(PLUtilityAssetClassification *)v5 boundingBox];
        v26.origin.x = v19;
        v26.origin.y = v20;
        v26.size.width = v21;
        v26.size.height = v22;
        v25.origin.x = v12;
        v25.origin.y = v14;
        v25.size.width = v16;
        v25.size.height = v18;
        v23 = CGRectEqualToRect(v25, v26);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end