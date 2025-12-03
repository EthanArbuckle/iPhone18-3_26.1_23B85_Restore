@interface UIView(ViewRecursion)
+ (uint64_t)viewExistsOnScreen:()ViewRecursion;
- (id)allSubViews;
- (id)firstSubviewOfClass:()ViewRecursion;
@end

@implementation UIView(ViewRecursion)

- (id)allSubViews
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  array = [MEMORY[0x277CBEB18] array];
  [v6[5] addObject:self];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__UIView_ViewRecursion__allSubViews__block_invoke;
  v4[3] = &unk_279DF4758;
  v4[4] = self;
  v4[5] = &v5;
  [TypistKeyboardUtilities runOnMainThread:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)firstSubviewOfClass:()ViewRecursion
{
  v15 = *MEMORY[0x277D85DE8];
  [self allSubViews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (uint64_t)viewExistsOnScreen:()ViewRecursion
{
  v3 = a3;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__6;
  v28[4] = __Block_byref_object_dispose__6;
  v29 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__UIView_ViewRecursion__viewExistsOnScreen___block_invoke;
  v16[3] = &unk_279DF4D60;
  v18 = v28;
  v13 = v3;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v17 = v13;
  v19 = &v24;
  [TypistKeyboardUtilities runOnMainThread:v16];
  v14 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);

  return v14;
}

@end