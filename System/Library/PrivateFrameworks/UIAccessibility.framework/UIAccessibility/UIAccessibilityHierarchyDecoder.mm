@interface UIAccessibilityHierarchyDecoder
- (UIAccessibilityHierarchyDecoder)initWithHierarchyData:(id)data;
- (id)decodeHierarchyWithContainer:(id)container error:(id *)error;
@end

@implementation UIAccessibilityHierarchyDecoder

- (UIAccessibilityHierarchyDecoder)initWithHierarchyData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = UIAccessibilityHierarchyDecoder;
  v5 = [(UIAccessibilityHierarchyDecoder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIAccessibilityHierarchyDecoder *)v5 setHierarchyData:dataCopy];
  }

  return v6;
}

- (id)decodeHierarchyWithContainer:(id)container error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  hierarchyData = [(UIAccessibilityHierarchyDecoder *)self hierarchyData];
  v29 = 0;
  v10 = [v7 unarchivedObjectOfClass:v8 fromData:hierarchyData error:&v29];
  v11 = v29;

  array = 0;
  v13 = 0;
  if (!v11)
  {
    rootElement = [v10 rootElement];
    v24 = containerCopy;
    v13 = [rootElement convertToAccessibilityElementWithContainer:containerCopy];

    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    leafElements = [v10 leafElements];
    v16 = [leafElements countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(leafElements);
          }

          v20 = [*(*(&v25 + 1) + 8 * v19) convertToAccessibilityElementWithContainer:v13];
          [array addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [leafElements countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    [array sortUsingSelector:sel_accessibilityCompareGeometry_];
    [v13 setAccessibilityElements:array];
    containerCopy = v24;
  }

  if (*error)
  {
    v21 = v11;
    *error = v11;
  }

  v22 = v13;

  return v13;
}

@end