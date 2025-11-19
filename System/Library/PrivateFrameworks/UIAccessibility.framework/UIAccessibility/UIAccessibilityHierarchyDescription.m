@interface UIAccessibilityHierarchyDescription
- (UIAccessibilityHierarchyDescription)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIAccessibilityHierarchyDescription

- (UIAccessibilityHierarchyDescription)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIAccessibilityHierarchyDescription;
  v5 = [(UIAccessibilityHierarchyDescription *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rootElement"];
    [(UIAccessibilityHierarchyDescription *)v5 setRootElement:v6];

    v7 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"leafElements"];
    [(UIAccessibilityHierarchyDescription *)v5 setLeafElements:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIAccessibilityHierarchyDescription *)self rootElement];
  [v4 encodeObject:v5 forKey:@"rootElement"];

  v6 = [(UIAccessibilityHierarchyDescription *)self leafElements];
  [v4 encodeObject:v6 forKey:@"leafElements"];
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"UIAXHierarchyDesc<%p>\n", self];
  v4 = [(UIAccessibilityHierarchyDescription *)self rootElement];
  [v3 appendFormat:@"  Root: %@\n", v4];

  [v3 appendFormat:@"  Leaf Elements:\n"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(UIAccessibilityHierarchyDescription *)self leafElements];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v3;
}

@end