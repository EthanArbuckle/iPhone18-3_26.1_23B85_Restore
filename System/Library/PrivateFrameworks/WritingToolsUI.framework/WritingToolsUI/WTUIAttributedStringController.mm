@interface WTUIAttributedStringController
- (WTUIAttributedStringController)initWithContexts:(id)contexts resultOptions:(unint64_t)options;
- (id)digestedAttributedStringForContext:(id)context;
- (id)reconstitutedAttributedStringForContext:(id)context digestedAttributedString:(id)string;
- (id)reconstitutedAttributedStringForStitchedContext:(id)context;
@end

@implementation WTUIAttributedStringController

- (WTUIAttributedStringController)initWithContexts:(id)contexts resultOptions:(unint64_t)options
{
  optionsCopy = options;
  v53 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  v47.receiver = self;
  v47.super_class = WTUIAttributedStringController;
  v6 = [(WTUIAttributedStringController *)&v47 init];
  if (v6)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contextsToDigests = v6->_contextsToDigests;
    v6->_contextsToDigests = dictionary;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = contextsCopy;
    obj = contextsCopy;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      v39 = *MEMORY[0x1E69D93C0];
      v40 = *MEMORY[0x1E69D93B8];
      do
      {
        v12 = 0;
        do
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * v12);
          if (_os_feature_enabled_impl())
          {
            if ((optionsCopy & 0x10) != 0)
            {
              v50[0] = v40;
              v50[1] = v39;
              v51[0] = &unk_1F4FCB908;
              v51[1] = &unk_1F4FCB920;
              v14 = MEMORY[0x1E695DF20];
              v15 = v51;
              v16 = v50;
              v17 = 2;
            }

            else
            {
              v48 = v40;
              v49 = &unk_1F4FCB938;
              v14 = MEMORY[0x1E695DF20];
              v15 = &v49;
              v16 = &v48;
              v17 = 1;
            }

            v21 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
            v24 = _WTVCLog();
            attributedText = [v13 attributedText];
            wt_os_log_debug_long_string(v24, @"[formatting] ", @"context = %@", v26, v27, v28, v29, v30, attributedText);

            uuid2 = [objc_alloc(MEMORY[0x1E69D9320]) initWithOptions:v21];
            v31 = objc_alloc(MEMORY[0x1E69D9318]);
            attributedText2 = [v13 attributedText];
            attributedText3 = [v13 attributedText];
            v34 = [v31 initWithAttributedString:attributedText2 range:0 formatOptions:{objc_msgSend(attributedText3, "length"), uuid2}];

            v35 = v6->_contextsToDigests;
            uuid = [v13 uuid];
            [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:uuid];
          }

          else
          {
            v18 = objc_alloc(MEMORY[0x1E69D9318]);
            attributedText4 = [v13 attributedText];
            attributedText5 = [v13 attributedText];
            v21 = [v18 initWithAttributedString:attributedText4 range:{0, objc_msgSend(attributedText5, "length")}];

            v22 = v6->_contextsToDigests;
            uuid2 = [v13 uuid];
            [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:uuid2];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v10);
    }

    contextsCopy = v38;
  }

  return v6;
}

- (id)digestedAttributedStringForContext:(id)context
{
  contextCopy = context;
  contextsToDigests = [(WTUIAttributedStringController *)self contextsToDigests];
  uuid = [contextCopy uuid];

  v7 = [contextsToDigests objectForKeyedSubscript:uuid];
  digestedAttributedString = [v7 digestedAttributedString];

  v9 = _WTVCLog();
  wt_os_log_debug_long_string(v9, @"[formatting] ", @"digested = %@", v10, v11, v12, v13, v14, digestedAttributedString);

  return digestedAttributedString;
}

- (id)reconstitutedAttributedStringForContext:(id)context digestedAttributedString:(id)string
{
  v28[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextCopy = context;
  v8 = _os_feature_enabled_impl();
  contextsToDigests = [(WTUIAttributedStringController *)self contextsToDigests];
  uuid = [contextCopy uuid];

  v11 = [contextsToDigests objectForKeyedSubscript:uuid];
  v12 = v11;
  if (v8)
  {

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    digestedAttributedString = [v12 digestedAttributedString];
    v15 = [digestedAttributedString length];

    if (v15)
    {
      v16 = [v12 reconstituteAttributedStringFromDigestedAttributedString:stringCopy];
    }

    else
    {
      v17 = MEMORY[0x1E69D9318];
      formatOptions = [v12 formatOptions];
      v27 = *MEMORY[0x1E69DB648];
      v28[0] = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v16 = [v17 reconstituteAttributedStringFromDigestedAttributedString:stringCopy formatOptions:formatOptions attributes:v19];
    }

    v20 = _WTVCLog();
    wt_os_log_debug_long_string(v20, @"[formatting] ", @"reconstituted = %@", v21, v22, v23, v24, v25, v16);
  }

  else
  {
    v16 = [v11 reconstituteAttributedString:stringCopy];
  }

  return v16;
}

- (id)reconstitutedAttributedStringForStitchedContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contextsToDigests = [(WTUIAttributedStringController *)self contextsToDigests];
  allValues = [contextsToDigests allValues];

  v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  v8 = contextCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    v8 = contextCopy;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = [*(*(&v14 + 1) + 8 * v11) reconstituteAttributedString:v12];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v8;
}

@end