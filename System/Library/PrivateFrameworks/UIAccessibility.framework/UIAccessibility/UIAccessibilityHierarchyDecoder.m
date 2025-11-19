@interface UIAccessibilityHierarchyDecoder
- (UIAccessibilityHierarchyDecoder)initWithHierarchyData:(id)a3;
- (id)decodeHierarchyWithContainer:(id)a3 error:(id *)a4;
@end

@implementation UIAccessibilityHierarchyDecoder

- (UIAccessibilityHierarchyDecoder)initWithHierarchyData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIAccessibilityHierarchyDecoder;
  v5 = [(UIAccessibilityHierarchyDecoder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIAccessibilityHierarchyDecoder *)v5 setHierarchyData:v4];
  }

  return v6;
}

- (id)decodeHierarchyWithContainer:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v9 = [(UIAccessibilityHierarchyDecoder *)self hierarchyData];
  v29 = 0;
  v10 = [v7 unarchivedObjectOfClass:v8 fromData:v9 error:&v29];
  v11 = v29;

  v12 = 0;
  v13 = 0;
  if (!v11)
  {
    v14 = [v10 rootElement];
    v24 = v6;
    v13 = [v14 convertToAccessibilityElementWithContainer:v6];

    v12 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [v10 leafElements];
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v25 + 1) + 8 * v19) convertToAccessibilityElementWithContainer:v13];
          [v12 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    [v12 sortUsingSelector:sel_accessibilityCompareGeometry_];
    [v13 setAccessibilityElements:v12];
    v6 = v24;
  }

  if (*a4)
  {
    v21 = v11;
    *a4 = v11;
  }

  v22 = v13;

  return v13;
}

@end