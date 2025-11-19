@interface UIKeyboardEmojiKeyDisplayController
+ (Class)classForCategoryControl:(int64_t)a3;
+ (Class)classForInputView:(int64_t)a3;
+ (void)writeEmojiDefaultsAndReleaseActiveInputView;
- (BOOL)hasLastUsedVariantForEmojiString:(id)a3;
- (BOOL)userHasSelectedSkinToneEmoji;
- (UIKeyboardEmojiCategory)lastViewedCategory;
- (UIKeyboardEmojiKeyDisplayController)init;
- (UIKeyboardEmojiKeyView)categoryView;
- (UIKeyboardEmojiKeyView)inputView;
- (id)emojiWithoutDuplicateRecents:(id)a3;
- (id)lastUsedVariantEmojiForEmojiString:(id)a3;
- (id)recentEmojiAtIndex:(int64_t)a3 size:(unint64_t *)a4;
- (id)recents;
- (id)skinToneBaseKeyPreferences;
- (int64_t)lastVisibleFirstEmojiIndexforCategory:(id)a3;
- (int64_t)reloadCategoryForOffsetPercentage:(double)a3 withSender:(id)a4;
- (void)dealloc;
- (void)didVisitIndexPath:(id)a3 withSender:(id)a4;
- (void)emojiUsed:(id)a3 language:(id)a4;
- (void)reloadCategoryForIndexPath:(id)a3 withSender:(id)a4;
- (void)reloadForCategory:(int64_t)a3 withSender:(id)a4;
- (void)setLastViewedCategory:(id)a3;
- (void)updateEmojiKeyManagerWithKey:(id)a3 withKeyView:(id)a4;
- (void)updateSkinToneBaseKey:(id)a3 variantUsed:(id)a4;
@end

@implementation UIKeyboardEmojiKeyDisplayController

- (UIKeyboardEmojiKeyDisplayController)init
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiKeyDisplayController;
  v2 = [(UIKeyboardEmojiKeyDisplayController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_inputView, 0);
    objc_storeWeak(&v3->_categoryView, 0);
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_inputView);

  if (WeakRetained)
  {
    objc_storeWeak(&self->_inputView, 0);
  }

  v4 = objc_loadWeakRetained(&self->_categoryView);

  if (v4)
  {
    objc_storeWeak(&self->_categoryView, 0);
  }

  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiKeyDisplayController;
  [(UIKeyboardEmojiKeyDisplayController *)&v5 dealloc];
}

- (void)updateEmojiKeyManagerWithKey:(id)a3 withKeyView:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || _UIApplicationIsStickerPickerService())
  {
    if ([v9 displayType] == 36)
    {
      v7 = 8;
    }

    else
    {
      if ([v9 displayType] != 37)
      {
        goto LABEL_9;
      }

      v7 = 16;
    }

    v8 = objc_storeWeak((&self->super.isa + v7), v6);
    [v6 setEmojiKeyManager:self];
  }

LABEL_9:
}

+ (Class)classForInputView:(int64_t)a3
{
  if (a3 == 1)
  {
    +[UIKeyboardImpl isSplit];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (Class)classForCategoryControl:(int64_t)a3
{
  if (a3 == 1)
  {
    +[UIKeyboardImpl isSplit];
    v3 = objc_opt_class();
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

+ (void)writeEmojiDefaultsAndReleaseActiveInputView
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v2 writeEmojiDefaults];
}

- (void)reloadForCategory:(int64_t)a3 withSender:(id)a4
{
  v9 = a4;
  v6 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];

  v7 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
  if (v6 != v9)
  {

    if (v7 != v9)
    {
      goto LABEL_5;
    }

    v7 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  }

  [v7 updateToCategory:a3];

LABEL_5:
  v8 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v8 refreshLocalRecents];
}

- (int64_t)reloadCategoryForOffsetPercentage:(double)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];

  if (v7 != v6)
  {
    return 0;
  }

  v9 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  v10 = [v9 updateToCategoryWithOffsetPercentage:a3];

  return v10;
}

- (void)reloadCategoryForIndexPath:(id)a3 withSender:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
  v8 = v7;
  if (v7 == v6)
  {
    v9 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
LABEL_8:
      v12 = v11;
      [v11 updateToIndexPath:v15];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  if (v12 == v6)
  {
    v13 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    v11 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
}

- (BOOL)userHasSelectedSkinToneEmoji
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  v3 = [v2 hasDisplayedSkinToneHelp];

  return v3;
}

- (void)emojiUsed:(id)a3 language:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v7 emojiUsedFromEmojiKeyboardPalette:v6 inputModeIdentifier:v5 completionHandler:0];
}

- (void)updateSkinToneBaseKey:(id)a3 variantUsed:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v7 updateSkinToneBaseKey:v6 variantUsed:v5];
}

- (id)recents
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  v3 = [v2 recents];

  return v3;
}

- (id)recentEmojiAtIndex:(int64_t)a3 size:(unint64_t *)a4
{
  v6 = +[UIKeyboardEmojiPreferences sharedInstance];
  v7 = [v6 recentEmojiAtIndex:a3 size:a4];

  return v7;
}

- (id)emojiWithoutDuplicateRecents:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 emojiWithoutDuplicateRecents:v3];

  return v5;
}

- (id)skinToneBaseKeyPreferences
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  v3 = [v2 skinToneBaseKeyPreferences];

  return v3;
}

- (BOOL)hasLastUsedVariantForEmojiString:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 hasLastUsedVariantForEmojiString:v3];

  return v5;
}

- (id)lastUsedVariantEmojiForEmojiString:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 lastUsedVariantEmojiForEmojiString:v3];

  return v5;
}

- (UIKeyboardEmojiCategory)lastViewedCategory
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  v3 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", [v2 selectedCategoryType]);

  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v3 setLastVisibleFirstEmojiIndex:{objc_msgSend(v4, "emojiCategoryDefaultsIndex:", v3)}];

  return v3;
}

- (void)setLastViewedCategory:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v4 setSelectedCategoryType:{objc_msgSend(v3, "categoryType")}];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v5 setEmojiCategoryDefaultsIndex:objc_msgSend(v3 forCategory:{"lastVisibleFirstEmojiIndex"), v3}];
}

- (int64_t)lastVisibleFirstEmojiIndexforCategory:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 emojiCategoryDefaultsIndex:v3];

  return v5;
}

- (void)didVisitIndexPath:(id)a3 withSender:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];

  if (v7 == v6)
  {
    v8 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    [v7 didVisitIndexPath:v10];
  }

LABEL_5:
}

- (UIKeyboardEmojiKeyView)inputView
{
  WeakRetained = objc_loadWeakRetained(&self->_inputView);

  return WeakRetained;
}

- (UIKeyboardEmojiKeyView)categoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryView);

  return WeakRetained;
}

@end