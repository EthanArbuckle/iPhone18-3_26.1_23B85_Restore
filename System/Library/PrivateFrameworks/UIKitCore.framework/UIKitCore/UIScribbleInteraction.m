@interface UIScribbleInteraction
+ (BOOL)isScribbleEnabled;
+ (void)_lastEventSourceChanged:(int64_t)a3;
- (UIScribbleInteraction)initWithDelegate:(id)delegate;
- (UIView)view;
- (id)delegate;
- (id)scribbleInteractionWrapper;
@end

@implementation UIScribbleInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIScribbleInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v8.receiver = self;
  v8.super_class = UIScribbleInteraction;
  v5 = [(UIScribbleInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

+ (void)_lastEventSourceChanged:(int64_t)a3
{
  v3 = a3 == 3;
  if (sIsPencilInputExpected != v3)
  {
    [a1 willChangeValueForKey:@"isPencilInputExpected"];
    sIsPencilInputExpected = v3;

    [a1 didChangeValueForKey:@"isPencilInputExpected"];
  }
}

+ (BOOL)isScribbleEnabled
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = _MergedGlobals_1263;
  v12 = _MergedGlobals_1263;
  if (!_MergedGlobals_1263)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPKTextInputSettingsClass_block_invoke_0;
    v8[3] = &unk_1E70F2F20;
    v8[4] = &v9;
    __getPKTextInputSettingsClass_block_invoke_0(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 sharedSettings];
  v5 = [v4 recognitionLocaleIdentifier];
  v6 = v5 != 0;

  return v6;
}

- (id)scribbleInteractionWrapper
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(UIScribbleInteraction *)self view];
  v4 = [v3 interactions];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v10 = [v9 scribbleInteractionWrapper];

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = [[UIScribbleInteractionWrapper alloc] initWithCustomScribbleInteraction:self indirectScribbleInteraction:0];
LABEL_12:

  return v10;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end