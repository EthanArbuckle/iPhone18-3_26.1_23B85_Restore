@interface SWInspection
- (SWInspection)initWithObject:(id)a3;
@end

@implementation SWInspection

- (SWInspection)initWithObject:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SWInspection;
  v5 = [(SWInspection *)&v38 init];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v4;
        v7 = [v29 objectForKey:@"accessibilityElements"];
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v35;
          do
          {
            v13 = 0;
            do
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [[SWInspectionAccessibilityElement alloc] initWithObject:*(*(&v34 + 1) + 8 * v13)];
              if (v14)
              {
                [(NSArray *)v8 addObject:v14];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
          }

          while (v11);
        }

        v28 = v4;

        v15 = [v29 objectForKey:@"links"];
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            v21 = 0;
            do
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [[SWInspectionLink alloc] initWithObject:*(*(&v30 + 1) + 8 * v21)];
              if (v22)
              {
                [(NSArray *)v16 addObject:v22];
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v19);
        }

        accessibilityElements = v6->_accessibilityElements;
        v6->_accessibilityElements = v8;
        v24 = v8;

        links = v6->_links;
        v6->_links = v16;

        v4 = v28;
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

@end