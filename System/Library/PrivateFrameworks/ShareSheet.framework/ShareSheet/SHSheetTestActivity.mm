@interface SHSheetTestActivity
- (id)activityImage;
- (void)performActivity;
@end

@implementation SHSheetTestActivity

- (id)activityImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v4 = [v2 systemImageNamed:@"pencil" withConfiguration:v3];

  return v4;
}

- (void)performActivity
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_activityItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
LABEL_8:
          v9 = v8;
          v10 = [v8 registeredTypeIdentifiers];
          v11 = [v10 firstObject];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __38__SHSheetTestActivity_performActivity__block_invoke;
          v15[3] = &unk_1E71FA7F0;
          v15[4] = v7;
          [v9 loadItemForTypeIdentifier:v11 options:0 completionHandler:v15];

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v7 item];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v8 = [v7 item];
            goto LABEL_8;
          }
        }

        NSLog(&stru_1EFE9A720.isa, v7);
LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  [(UIActivity *)self activityDidFinish:1];
}

void __38__SHSheetTestActivity_performActivity__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a2 = *(a1 + 32);
  }

  NSLog(&stru_1EFE9A720.isa, a2);
}

@end