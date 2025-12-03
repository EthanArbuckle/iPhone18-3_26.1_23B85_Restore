@interface SXTangierDragItemProvider
- (BOOL)session:(id)session containsURL:(id)l;
- (id)dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session;
@end

@implementation SXTangierDragItemProvider

- (id)dragItemForSmartField:(id)field interaction:(id)interaction session:(id)session
{
  fieldCopy = field;
  interactionCopy = interaction;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = fieldCopy;
    action = [v11 action];
    v13 = [action conformsToProtocol:&unk_1F53FB4F8];

    if (v13)
    {
      action2 = [v11 action];
      v15 = [action2 URL];
      v16 = [(SXTangierDragItemProvider *)self session:sessionCopy containsURL:v15];

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v18 = [action2 URL];
        displayText = [v11 displayText];
        v39 = v18;
        [v18 _setTitle:displayText];

        v20 = [SXIdentifiableItemProvider alloc];
        v21 = [action2 URL];
        absoluteString = [v21 absoluteString];
        v23 = [(SXIdentifiableItemProvider *)v20 initWithObject:v18 identifier:absoluteString];

        displayText2 = [v11 displayText];
        v38 = v23;
        [(SXIdentifiableItemProvider *)v23 setSuggestedName:displayText2];

        v17 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v23];
        view = [interactionCopy view];
        [sessionCopy locationInView:view];
        v27 = v26;
        v29 = v28;

        v30 = objc_alloc(MEMORY[0x1E69DC9A8]);
        view2 = [interactionCopy view];
        v32 = [v30 initWithContainer:view2 center:{v27, v29}];

        v33 = MEMORY[0x1E69DD068];
        v34 = [action2 URL];
        displayText3 = [v11 displayText];
        v36 = [v33 previewForURL:v34 title:displayText3 target:v32];
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

- (BOOL)session:(id)session containsURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [session items];
  v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(items);
        }

        itemProvider = [*(*(&v15 + 1) + 8 * i) itemProvider];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [itemProvider identifier];
          absoluteString = [lCopy absoluteString];
          v13 = [identifier isEqualToString:absoluteString];

          if (v13)
          {

            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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