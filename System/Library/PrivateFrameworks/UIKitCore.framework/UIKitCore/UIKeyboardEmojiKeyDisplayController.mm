@interface UIKeyboardEmojiKeyDisplayController
+ (Class)classForCategoryControl:(int64_t)control;
+ (Class)classForInputView:(int64_t)view;
+ (void)writeEmojiDefaultsAndReleaseActiveInputView;
- (BOOL)hasLastUsedVariantForEmojiString:(id)string;
- (BOOL)userHasSelectedSkinToneEmoji;
- (UIKeyboardEmojiCategory)lastViewedCategory;
- (UIKeyboardEmojiKeyDisplayController)init;
- (UIKeyboardEmojiKeyView)categoryView;
- (UIKeyboardEmojiKeyView)inputView;
- (id)emojiWithoutDuplicateRecents:(id)recents;
- (id)lastUsedVariantEmojiForEmojiString:(id)string;
- (id)recentEmojiAtIndex:(int64_t)index size:(unint64_t *)size;
- (id)recents;
- (id)skinToneBaseKeyPreferences;
- (int64_t)lastVisibleFirstEmojiIndexforCategory:(id)category;
- (int64_t)reloadCategoryForOffsetPercentage:(double)percentage withSender:(id)sender;
- (void)dealloc;
- (void)didVisitIndexPath:(id)path withSender:(id)sender;
- (void)emojiUsed:(id)used language:(id)language;
- (void)reloadCategoryForIndexPath:(id)path withSender:(id)sender;
- (void)reloadForCategory:(int64_t)category withSender:(id)sender;
- (void)setLastViewedCategory:(id)category;
- (void)updateEmojiKeyManagerWithKey:(id)key withKeyView:(id)view;
- (void)updateSkinToneBaseKey:(id)key variantUsed:(id)used;
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

- (void)updateEmojiKeyManagerWithKey:(id)key withKeyView:(id)view
{
  keyCopy = key;
  viewCopy = view;
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || _UIApplicationIsStickerPickerService())
  {
    if ([keyCopy displayType] == 36)
    {
      v7 = 8;
    }

    else
    {
      if ([keyCopy displayType] != 37)
      {
        goto LABEL_9;
      }

      v7 = 16;
    }

    v8 = objc_storeWeak((&self->super.isa + v7), viewCopy);
    [viewCopy setEmojiKeyManager:self];
  }

LABEL_9:
}

+ (Class)classForInputView:(int64_t)view
{
  if (view == 1)
  {
    +[UIKeyboardImpl isSplit];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (Class)classForCategoryControl:(int64_t)control
{
  if (control == 1)
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

- (void)reloadForCategory:(int64_t)category withSender:(id)sender
{
  senderCopy = sender;
  inputView = [(UIKeyboardEmojiKeyDisplayController *)self inputView];

  categoryView = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
  if (inputView != senderCopy)
  {

    if (categoryView != senderCopy)
    {
      goto LABEL_5;
    }

    categoryView = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  }

  [categoryView updateToCategory:category];

LABEL_5:
  v8 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v8 refreshLocalRecents];
}

- (int64_t)reloadCategoryForOffsetPercentage:(double)percentage withSender:(id)sender
{
  senderCopy = sender;
  categoryView = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];

  if (categoryView != senderCopy)
  {
    return 0;
  }

  inputView = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  v10 = [inputView updateToCategoryWithOffsetPercentage:percentage];

  return v10;
}

- (void)reloadCategoryForIndexPath:(id)path withSender:(id)sender
{
  pathCopy = path;
  senderCopy = sender;
  categoryView = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
  v8 = categoryView;
  if (categoryView == senderCopy)
  {
    inputView = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      inputView2 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
LABEL_8:
      inputView3 = inputView2;
      [inputView2 updateToIndexPath:pathCopy];
      goto LABEL_9;
    }
  }

  else
  {
  }

  inputView3 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
  if (inputView3 == senderCopy)
  {
    inputView4 = [(UIKeyboardEmojiKeyDisplayController *)self inputView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    inputView2 = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
}

- (BOOL)userHasSelectedSkinToneEmoji
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  hasDisplayedSkinToneHelp = [v2 hasDisplayedSkinToneHelp];

  return hasDisplayedSkinToneHelp;
}

- (void)emojiUsed:(id)used language:(id)language
{
  languageCopy = language;
  usedCopy = used;
  v7 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v7 emojiUsedFromEmojiKeyboardPalette:usedCopy inputModeIdentifier:languageCopy completionHandler:0];
}

- (void)updateSkinToneBaseKey:(id)key variantUsed:(id)used
{
  usedCopy = used;
  keyCopy = key;
  v7 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v7 updateSkinToneBaseKey:keyCopy variantUsed:usedCopy];
}

- (id)recents
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  recents = [v2 recents];

  return recents;
}

- (id)recentEmojiAtIndex:(int64_t)index size:(unint64_t *)size
{
  v6 = +[UIKeyboardEmojiPreferences sharedInstance];
  v7 = [v6 recentEmojiAtIndex:index size:size];

  return v7;
}

- (id)emojiWithoutDuplicateRecents:(id)recents
{
  recentsCopy = recents;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 emojiWithoutDuplicateRecents:recentsCopy];

  return v5;
}

- (id)skinToneBaseKeyPreferences
{
  v2 = +[UIKeyboardEmojiPreferences sharedInstance];
  skinToneBaseKeyPreferences = [v2 skinToneBaseKeyPreferences];

  return skinToneBaseKeyPreferences;
}

- (BOOL)hasLastUsedVariantForEmojiString:(id)string
{
  stringCopy = string;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 hasLastUsedVariantForEmojiString:stringCopy];

  return v5;
}

- (id)lastUsedVariantEmojiForEmojiString:(id)string
{
  stringCopy = string;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 lastUsedVariantEmojiForEmojiString:stringCopy];

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

- (void)setLastViewedCategory:(id)category
{
  categoryCopy = category;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v4 setSelectedCategoryType:{objc_msgSend(categoryCopy, "categoryType")}];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v5 setEmojiCategoryDefaultsIndex:objc_msgSend(categoryCopy forCategory:{"lastVisibleFirstEmojiIndex"), categoryCopy}];
}

- (int64_t)lastVisibleFirstEmojiIndexforCategory:(id)category
{
  categoryCopy = category;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  v5 = [v4 emojiCategoryDefaultsIndex:categoryCopy];

  return v5;
}

- (void)didVisitIndexPath:(id)path withSender:(id)sender
{
  pathCopy = path;
  senderCopy = sender;
  inputView = [(UIKeyboardEmojiKeyDisplayController *)self inputView];

  if (inputView == senderCopy)
  {
    categoryView = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    inputView = [(UIKeyboardEmojiKeyDisplayController *)self categoryView];
    [inputView didVisitIndexPath:pathCopy];
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