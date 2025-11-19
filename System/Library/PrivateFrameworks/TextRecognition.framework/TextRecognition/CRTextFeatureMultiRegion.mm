@interface CRTextFeatureMultiRegion
- (CRTextFeatureMultiRegion)initWithOrderedFeatures:(id)a3;
@end

@implementation CRTextFeatureMultiRegion

- (CRTextFeatureMultiRegion)initWithOrderedFeatures:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CRTextFeatureMultiRegion;
  v5 = [(CRTextFeature *)&v29 init];
  v6 = v5;
  if (v5)
  {
    [(CRTextFeature *)v5 setSubFeatures:v4];
    [(CRTextFeature *)v6 setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(CRTextFeature *)v6 subFeatures];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          [(CRTextFeature *)v6 bounds];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          [v11 bounds];
          v34.origin.x = v20;
          v34.origin.y = v21;
          v34.size.width = v22;
          v34.size.height = v23;
          v32.origin.x = v13;
          v32.origin.y = v15;
          v32.size.width = v17;
          v32.size.height = v19;
          v33 = CGRectUnion(v32, v34);
          [(CRTextFeature *)v6 setBounds:v33.origin.x, v33.origin.y, v33.size.width, v33.size.height];
          [v11 setShouldExpandToFullWidth:0];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

@end