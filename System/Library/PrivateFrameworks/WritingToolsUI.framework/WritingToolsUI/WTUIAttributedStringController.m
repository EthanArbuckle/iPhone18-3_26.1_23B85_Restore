@interface WTUIAttributedStringController
- (WTUIAttributedStringController)initWithContexts:(id)a3 resultOptions:(unint64_t)a4;
- (id)digestedAttributedStringForContext:(id)a3;
- (id)reconstitutedAttributedStringForContext:(id)a3 digestedAttributedString:(id)a4;
- (id)reconstitutedAttributedStringForStitchedContext:(id)a3;
@end

@implementation WTUIAttributedStringController

- (WTUIAttributedStringController)initWithContexts:(id)a3 resultOptions:(unint64_t)a4
{
  v41 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47.receiver = self;
  v47.super_class = WTUIAttributedStringController;
  v6 = [(WTUIAttributedStringController *)&v47 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    contextsToDigests = v6->_contextsToDigests;
    v6->_contextsToDigests = v7;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v5;
    obj = v5;
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
            if ((v41 & 0x10) != 0)
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
            v25 = [v13 attributedText];
            wt_os_log_debug_long_string(v24, @"[formatting] ", @"context = %@", v26, v27, v28, v29, v30, v25);

            v23 = [objc_alloc(MEMORY[0x1E69D9320]) initWithOptions:v21];
            v31 = objc_alloc(MEMORY[0x1E69D9318]);
            v32 = [v13 attributedText];
            v33 = [v13 attributedText];
            v34 = [v31 initWithAttributedString:v32 range:0 formatOptions:{objc_msgSend(v33, "length"), v23}];

            v35 = v6->_contextsToDigests;
            v36 = [v13 uuid];
            [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v36];
          }

          else
          {
            v18 = objc_alloc(MEMORY[0x1E69D9318]);
            v19 = [v13 attributedText];
            v20 = [v13 attributedText];
            v21 = [v18 initWithAttributedString:v19 range:{0, objc_msgSend(v20, "length")}];

            v22 = v6->_contextsToDigests;
            v23 = [v13 uuid];
            [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v10);
    }

    v5 = v38;
  }

  return v6;
}

- (id)digestedAttributedStringForContext:(id)a3
{
  v4 = a3;
  v5 = [(WTUIAttributedStringController *)self contextsToDigests];
  v6 = [v4 uuid];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 digestedAttributedString];

  v9 = _WTVCLog();
  wt_os_log_debug_long_string(v9, @"[formatting] ", @"digested = %@", v10, v11, v12, v13, v14, v8);

  return v8;
}

- (id)reconstitutedAttributedStringForContext:(id)a3 digestedAttributedString:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _os_feature_enabled_impl();
  v9 = [(WTUIAttributedStringController *)self contextsToDigests];
  v10 = [v7 uuid];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = v11;
  if (v8)
  {

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v14 = [v12 digestedAttributedString];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [v12 reconstituteAttributedStringFromDigestedAttributedString:v6];
    }

    else
    {
      v17 = MEMORY[0x1E69D9318];
      v18 = [v12 formatOptions];
      v27 = *MEMORY[0x1E69DB648];
      v28[0] = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v16 = [v17 reconstituteAttributedStringFromDigestedAttributedString:v6 formatOptions:v18 attributes:v19];
    }

    v20 = _WTVCLog();
    wt_os_log_debug_long_string(v20, @"[formatting] ", @"reconstituted = %@", v21, v22, v23, v24, v25, v16);
  }

  else
  {
    v16 = [v11 reconstituteAttributedString:v6];
  }

  return v16;
}

- (id)reconstitutedAttributedStringForStitchedContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(WTUIAttributedStringController *)self contextsToDigests];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v8 = v4;
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    v8 = v4;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v8 = [*(*(&v14 + 1) + 8 * v11) reconstituteAttributedString:v12];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v8;
}

@end