@interface SXTangierDragItemProvider
- (BOOL)session:(id)a3 containsURL:(id)a4;
- (id)dragItemForSmartField:(id)a3 interaction:(id)a4 session:(id)a5;
@end

@implementation SXTangierDragItemProvider

- (id)dragItemForSmartField:(id)a3 interaction:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = [v11 action];
    v13 = [v12 conformsToProtocol:&unk_1F53FB4F8];

    if (v13)
    {
      v14 = [v11 action];
      v15 = [v14 URL];
      v16 = [(SXTangierDragItemProvider *)self session:v10 containsURL:v15];

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v18 = [v14 URL];
        v19 = [v11 displayText];
        v39 = v18;
        [v18 _setTitle:v19];

        v20 = [SXIdentifiableItemProvider alloc];
        v21 = [v14 URL];
        v22 = [v21 absoluteString];
        v23 = [(SXIdentifiableItemProvider *)v20 initWithObject:v18 identifier:v22];

        v24 = [v11 displayText];
        v38 = v23;
        [(SXIdentifiableItemProvider *)v23 setSuggestedName:v24];

        v17 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v23];
        v25 = [v9 view];
        [v10 locationInView:v25];
        v27 = v26;
        v29 = v28;

        v30 = objc_alloc(MEMORY[0x1E69DC9A8]);
        v31 = [v9 view];
        v32 = [v30 initWithContainer:v31 center:{v27, v29}];

        v33 = MEMORY[0x1E69DD068];
        v34 = [v14 URL];
        v35 = [v11 displayText];
        v36 = [v33 previewForURL:v34 title:v35 target:v32];
        [v17 setLocalObject:v36];
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (BOOL)session:(id)a3 containsURL:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 items];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) itemProvider];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 identifier];
          v12 = [v5 absoluteString];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {

            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

@end