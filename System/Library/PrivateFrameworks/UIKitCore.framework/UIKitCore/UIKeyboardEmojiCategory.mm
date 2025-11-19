@interface UIKeyboardEmojiCategory
+ (BOOL)isRTLMode;
+ (id)allowedCategoryIndexes;
+ (id)categories;
+ (id)categoriesByType;
+ (id)categoryForType:(int64_t)a3;
+ (id)displayName:(int64_t)a3;
+ (id)emojiCategoryStringForCategoryType:(int64_t)a3;
+ (id)enabledCategoryIndexes;
+ (id)fallbackDisplayName:(int64_t)a3;
+ (id)localizedStringForKey:(id)a3;
+ (id)professionSkinToneEmojiBaseKey:(id)a3;
+ (id)sharedManager;
+ (int64_t)categoryTypeForCategoryIndex:(unint64_t)a3;
+ (int64_t)emojiCategoryTypeForCategoryString:(id)a3;
+ (unint64_t)categoryIndexForCategoryType:(int64_t)a3;
- (NSString)name;
- (void)dealloc;
- (void)localeDidChange;
- (void)releaseCategories;
@end

@implementation UIKeyboardEmojiCategory

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKeyboardEmojiCategory_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1187 != -1)
  {
    dispatch_once(&_MergedGlobals_1187, block);
  }

  v2 = qword_1ED49F370;

  return v2;
}

void __40__UIKeyboardEmojiCategory_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49F370;
  qword_1ED49F370 = v1;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:qword_1ED49F370 selector:sel_localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

  v4 = objc_opt_new();
  [qword_1ED49F370 setLocalizedNames:v4];

  v5 = objc_opt_new();
  [qword_1ED49F370 setShortLocalizedNames:v5];
}

- (void)localeDidChange
{
  v2 = +[UIKeyboardEmojiCategory sharedManager];
  v3 = [v2 localizedNames];
  [v3 removeAllObjects];

  v5 = +[UIKeyboardEmojiCategory sharedManager];
  v4 = [v5 shortLocalizedNames];
  [v4 removeAllObjects];
}

+ (id)enabledCategoryIndexes
{
  v3 = +[UIKeyboardEmojiPreferences sharedInstance];
  v4 = [v3 shouldShowRecents];

  if (v4)
  {
    v5 = [a1 allowedCategoryIndexes];
  }

  else
  {
    v5 = &unk_1EFE2CBB0;
  }

  return v5;
}

+ (id)allowedCategoryIndexes
{
  if (_UIApplicationIsStickerPickerService() && (_doesShowStickers & 1) != 0)
  {
    return &unk_1EFE2CBC8;
  }

  else
  {
    return &unk_1EFE2CBE0;
  }
}

+ (int64_t)categoryTypeForCategoryIndex:(unint64_t)a3
{
  v5 = [a1 enabledCategoryIndexes];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 7;
  }

  v7 = [a1 enabledCategoryIndexes];
  v8 = [v7 objectAtIndex:a3];
  v9 = [v8 integerValue];

  return v9;
}

+ (unint64_t)categoryIndexForCategoryType:(int64_t)a3
{
  v4 = [a1 enabledCategoryIndexes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

+ (id)categories
{
  v2 = categories_categories;
  if (!categories_categories)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "numberOfCategories")}];
    v4 = categories_categories;
    categories_categories = v3;

    for (i = 0; i != 12; ++i)
    {
      v6 = objc_alloc_init(UIKeyboardEmojiCategory);
      [(UIKeyboardEmojiCategory *)v6 setCategoryType:i];
      [categories_categories addObject:v6];
    }

    v2 = categories_categories;
  }

  return v2;
}

+ (id)categoriesByType
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = categoriesByType_categories;
  if (!categoriesByType_categories)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = categoriesByType_categories;
    categoriesByType_categories = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a1 allowedCategoryIndexes];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = objc_alloc_init(UIKeyboardEmojiCategory);
          -[UIKeyboardEmojiCategory setCategoryType:](v12, "setCategoryType:", [v11 intValue]);
          [categoriesByType_categories setObject:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = objc_alloc_init(UIKeyboardEmojiCategory);
    [(UIKeyboardEmojiCategory *)v13 setCategoryType:9];
    [categoriesByType_categories setObject:v13 forKey:&unk_1EFE319C0];

    v3 = categoriesByType_categories;
  }

  return v3;
}

- (void)releaseCategories
{
  v2 = +[UIKeyboardEmojiCategory categories];
  [v2 removeAllObjects];
}

+ (id)professionSkinToneEmojiBaseKey:(id)a3
{
  v3 = a3;
  if ([v3 _containsSubstring:@"🏻"])
  {
    v4 = [v3 length];
    v5 = @"🏻";
LABEL_11:
    v6 = [v3 stringByReplacingOccurrencesOfString:v5 withString:&stru_1EFB14550 options:2 range:{0, v4}];
    goto LABEL_12;
  }

  if ([v3 _containsSubstring:@"🏼"])
  {
    v4 = [v3 length];
    v5 = @"🏼";
    goto LABEL_11;
  }

  if ([v3 _containsSubstring:@"🏽"])
  {
    v4 = [v3 length];
    v5 = @"🏽";
    goto LABEL_11;
  }

  if ([v3 _containsSubstring:@"🏾"])
  {
    v4 = [v3 length];
    v5 = @"🏾";
    goto LABEL_11;
  }

  if ([v3 _containsSubstring:@"🏿"])
  {
    v4 = [v3 length];
    v5 = @"🏿";
    goto LABEL_11;
  }

  v6 = v3;
LABEL_12:
  v7 = v6;

  return v7;
}

+ (id)emojiCategoryStringForCategoryType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 6)
  {
    if (a3 <= 10)
    {
      switch(a3)
      {
        case 7:
          v3 = getEMFEmojiCategoryFlags();
          break;
        case 9:
          v3 = getEMFEmojiCategoryPrepopulated();
          break;
        case 10:
          v3 = getEMFEmojiCategoryObjects();
          break;
      }

      goto LABEL_32;
    }

    switch(a3)
    {
      case 11:
        v3 = getEMFEmojiCategorySymbols();
        goto LABEL_32;
      case 13:
        v4 = @"Memoji";
        break;
      case 14:
        v4 = @"Stickers";
        break;
      default:
        goto LABEL_32;
    }

    v3 = _UILocalizedStringInSystemLanguage(v4, v4);
    goto LABEL_32;
  }

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v3 = getEMFEmojiCategoryFoodAndDrink();
        break;
      case 5:
        v3 = getEMFEmojiCategoryActivity();
        break;
      case 6:
        v3 = getEMFEmojiCategoryTravelAndPlaces();
        break;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v3 = getEMFEmojiCategoryPeople();
    }

    else if (a3 == 2)
    {
      v3 = getEMFEmojiCategoryNature();
    }
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v5 = getEMFEmojiCategoryRecentsSymbolLoc_ptr;
    v13 = getEMFEmojiCategoryRecentsSymbolLoc_ptr;
    if (!getEMFEmojiCategoryRecentsSymbolLoc_ptr)
    {
      v6 = EmojiFoundationLibrary_0();
      v11[3] = dlsym(v6, "EMFEmojiCategoryRecents");
      getEMFEmojiCategoryRecentsSymbolLoc_ptr = v11[3];
      v5 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryRecents(void)"];
      [v8 handleFailureInFunction:v9 file:@"UIKeyboardEmojiCategory.m" lineNumber:33 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v3 = *v5;
  }

LABEL_32:

  return v3;
}

+ (int64_t)emojiCategoryTypeForCategoryString:(id)a3
{
  v3 = a3;
  v4 = getEMFEmojiCategoryPrepopulated();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 9;
  }

  else
  {
    v7 = getEMFEmojiCategoryPeople();
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = getEMFEmojiCategoryNature();
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v6 = 2;
      }

      else
      {
        v11 = getEMFEmojiCategoryFoodAndDrink();
        v12 = [v3 isEqualToString:v11];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v13 = getEMFEmojiCategoryActivity();
          v14 = [v3 isEqualToString:v13];

          if (v14)
          {
            v6 = 5;
          }

          else
          {
            v15 = getEMFEmojiCategoryTravelAndPlaces();
            v16 = [v3 isEqualToString:v15];

            if (v16)
            {
              v6 = 6;
            }

            else
            {
              v17 = getEMFEmojiCategoryObjects();
              v18 = [v3 isEqualToString:v17];

              if (v18)
              {
                v6 = 10;
              }

              else
              {
                v19 = getEMFEmojiCategorySymbols();
                v20 = [v3 isEqualToString:v19];

                if (v20)
                {
                  v6 = 11;
                }

                else
                {
                  v21 = getEMFEmojiCategoryFlags();
                  v22 = [v3 isEqualToString:v21];

                  if (v22)
                  {
                    v6 = 7;
                  }

                  else if ([v3 isEqualToString:@"UIKeyboardEmojiCategoryMemoji"])
                  {
                    v6 = 13;
                  }

                  else if ([v3 isEqualToString:@"UIKeyboardEmojiCategoryStickers"])
                  {
                    v6 = 14;
                  }

                  else
                  {
                    v6 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

+ (id)categoryForType:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [a1 emojiCategoryStringForCategoryType:?];
  v6 = [a1 categoriesByType];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 objectForKey:v7];

  v9 = [v8 emoji];
  v10 = [v9 count];

  if (!a3 || !v10)
  {
    v11 = [getEMFEmojiCategoryClass() _emojiSetForIdentifier:v5];
    v12 = v11;
    if (v11)
    {
      v22 = v8;
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            v20 = [UIKeyboardEmoji emojiWithString:v19 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v19]];

            if (v20)
            {
              [v13 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }

      v8 = v22;
      if (v13)
      {
        [v22 setEmoji:v13];
      }
    }
  }

  return v8;
}

+ (BOOL)isRTLMode
{
  v2 = +[UIKeyboardImpl activeInstance];

  if (v2)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v3 semanticContentAttribute]) == UIUserInterfaceLayoutDirectionRightToLeft;
  }

  else
  {
    v5 = MEMORY[0x1E695DF58];
    v3 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v4 = [v5 characterDirectionForLanguage:v3] == 2;
  }

  v6 = v4;

  return v6;
}

- (void)dealloc
{
  self->_categoryType = -1;
  [(UIKeyboardEmojiCategory *)self setEmoji:0];
  v3.receiver = self;
  v3.super_class = UIKeyboardEmojiCategory;
  [(UIKeyboardEmojiCategory *)&v3 dealloc];
}

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = TIBundleForInputMode();
  v5 = [v4 localizedStringForKey:v3 value:0 table:0];

  return v5;
}

- (NSString)name
{
  v2 = [(UIKeyboardEmojiCategory *)self categoryType];
  if (v2 > 0xE)
  {
    return 0;
  }

  else
  {
    return &off_1E7115CB0[v2]->isa;
  }
}

+ (id)displayName:(int64_t)a3
{
  v3 = [a1 emojiCategoryStringForCategoryType:a3];
  v4 = +[UIKeyboardEmojiCategory sharedManager];
  v5 = [v4 localizedNames];
  v6 = [v5 objectForKey:v3];

  if (!v6)
  {
    v7 = [getEMFEmojiCategoryClass() categoryWithIdentifier:v3];
    v8 = +[UIKeyboardEmojiCategory sharedManager];
    v9 = [v8 localizedNames];
    v10 = [v7 localizedName];
    [v9 setObject:v10 forKey:v3];
  }

  v11 = +[UIKeyboardEmojiCategory sharedManager];
  v12 = [v11 localizedNames];
  v13 = [v12 objectForKey:v3];

  return v13;
}

+ (id)fallbackDisplayName:(int64_t)a3
{
  v3 = [a1 emojiCategoryStringForCategoryType:a3];
  v4 = +[UIKeyboardEmojiCategory sharedManager];
  v5 = [v4 shortLocalizedNames];
  v6 = [v5 objectForKey:v3];

  if (!v6)
  {
    v7 = [getEMFEmojiCategoryClass() categoryWithIdentifier:v3];
    v8 = +[UIKeyboardEmojiCategory sharedManager];
    v9 = [v8 shortLocalizedNames];
    v10 = [v7 shortLocalizedName];
    [v9 setObject:v10 forKey:v3];
  }

  v11 = +[UIKeyboardEmojiCategory sharedManager];
  v12 = [v11 shortLocalizedNames];
  v13 = [v12 objectForKey:v3];

  return v13;
}

@end