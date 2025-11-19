@interface SXTextSelectionManager
- (NSString)selectedText;
- (SXTextSelectionManager)init;
- (void)addTextSelecting:(id)a3;
- (void)clearSelection;
@end

@implementation SXTextSelectionManager

- (SXTextSelectionManager)init
{
  v6.receiver = self;
  v6.super_class = SXTextSelectionManager;
  v2 = [(SXTextSelectionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    textSelecting = v2->_textSelecting;
    v2->_textSelecting = v3;
  }

  return v2;
}

- (NSString)selectedText
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SXTextSelectionManager *)self textSelecting];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) selectedText];
        if (v6)
        {
          v3 = v6;

          v2 = v3;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)addTextSelecting:(id)a3
{
  v4 = a3;
  v5 = [(SXTextSelectionManager *)self textSelecting];
  [v5 addObject:v4];
}

- (void)clearSelection
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SXTextSelectionManager *)self textSelecting];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) endSelection];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end