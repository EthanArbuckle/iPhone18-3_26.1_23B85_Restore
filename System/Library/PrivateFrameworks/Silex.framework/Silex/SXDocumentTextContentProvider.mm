@interface SXDocumentTextContentProvider
+ (id)sharedQueue;
- (SXDocumentTextContentProvider)initWithDocument:(id)document;
- (id)textContentForComponent:(id)component withType:(unint64_t)type;
- (id)textContentForComponents:(id)components withType:(unint64_t)type;
- (void)textContentForType:(unint64_t)type onCompletion:(id)completion;
@end

@implementation SXDocumentTextContentProvider

- (SXDocumentTextContentProvider)initWithDocument:(id)document
{
  documentCopy = document;
  v9.receiver = self;
  v9.super_class = SXDocumentTextContentProvider;
  v6 = [(SXDocumentTextContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, document);
  }

  return v7;
}

- (void)textContentForType:(unint64_t)type onCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v7 = +[SXDocumentTextContentProvider sharedQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__SXDocumentTextContentProvider_textContentForType_onCompletion___block_invoke;
    v8[3] = &unk_1E8500B50;
    objc_copyWeak(v10, &location);
    v10[1] = type;
    v9 = completionCopy;
    dispatch_async(v7, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __65__SXDocumentTextContentProvider_textContentForType_onCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained document];
    v5 = [v4 components];
    v6 = [v3 textContentForComponents:v5 withType:*(a1 + 48)];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SXDocumentTextContentProvider_textContentForType_onCompletion___block_invoke_2;
    block[3] = &unk_1E8500B00;
    v7 = *(a1 + 32);
    v12 = v6;
    v13 = v7;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SXDocumentTextContentProvider_textContentForType_onCompletion___block_invoke_3;
    v9[3] = &unk_1E8500B28;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    v8 = v10;
  }
}

void __65__SXDocumentTextContentProvider_textContentForType_onCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)textContentForComponents:(id)components withType:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  string = [MEMORY[0x1E696AD60] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = componentsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(SXDocumentTextContentProvider *)self textContentForComponent:*(*(&v15 + 1) + 8 * i) withType:type, v15];
        if ([v13 length])
        {
          if ([string length])
          {
            [string appendString:@"\n"];
          }

          [string appendString:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return string;
}

- (id)textContentForComponent:(id)component withType:(unint64_t)type
{
  componentCopy = component;
  classification = [componentCopy classification];
  v8 = [(SXDocumentTextContentProvider *)self classification:classification isValidForType:type];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = componentCopy;
      if (-[SXDocumentTextContentProvider contentRelevance:isValidForType:](self, "contentRelevance:isValidForType:", [v9 contentRelevance], type))
      {
        text = [v9 text];
      }

      else
      {
        text = 0;
      }
    }

    else
    {
      text = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      components = [componentCopy components];
      v12 = [(SXDocumentTextContentProvider *)self textContentForComponents:components withType:type];

      text = v12;
    }
  }

  else
  {
    text = 0;
  }

  return text;
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    +[SXDocumentTextContentProvider sharedQueue];
  }

  v3 = sharedQueue_sharedQueue;

  return v3;
}

void __44__SXDocumentTextContentProvider_sharedQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.news.text-providing", v2);
  v1 = sharedQueue_sharedQueue;
  sharedQueue_sharedQueue = v0;
}

@end