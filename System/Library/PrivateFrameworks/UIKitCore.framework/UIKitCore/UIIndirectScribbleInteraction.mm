@interface UIIndirectScribbleInteraction
- (UIIndirectScribbleInteraction)initWithDelegate:(id)delegate;
- (UIView)view;
- (id)delegate;
- (id)scribbleInteractionWrapper;
- (void)_setHandlingWritingCount:(int64_t)count;
@end

@implementation UIIndirectScribbleInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIIndirectScribbleInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v8.receiver = self;
  v8.super_class = UIIndirectScribbleInteraction;
  v5 = [(UIIndirectScribbleInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)_setHandlingWritingCount:(int64_t)count
{
  handlingWritingCount = self->__handlingWritingCount;
  if (handlingWritingCount != count)
  {
    self->__handlingWritingCount = count;
    if (count > 0 == handlingWritingCount < 1)
    {
      [(UIIndirectScribbleInteraction *)self _setHandlingWriting:count > 0];
    }
  }
}

- (id)scribbleInteractionWrapper
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  view = [(UIIndirectScribbleInteraction *)self view];
  interactions = [view interactions];

  v5 = [interactions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(interactions);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [interactions countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = [[UIScribbleInteractionWrapper alloc] initWithCustomScribbleInteraction:v5 indirectScribbleInteraction:self];

  return v9;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end