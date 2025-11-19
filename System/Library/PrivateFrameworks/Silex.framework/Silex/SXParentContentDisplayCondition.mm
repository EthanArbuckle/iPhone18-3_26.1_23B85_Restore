@interface SXParentContentDisplayCondition
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
@end

@implementation SXParentContentDisplayCondition

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 path];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) contentDisplay];

        if (v10)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

@end