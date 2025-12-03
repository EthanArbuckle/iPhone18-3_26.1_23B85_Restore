@interface UITextReplacement
+ (UITextReplacement)replacementWithRange:(id)range original:(id)original replacement:(id)replacement menuTitle:(id)title isDictationCommandReplacement:(BOOL)commandReplacement;
- (BOOL)_isNoReplacementsFoundItem;
- (void)didReplaceTextWithTarget:(id)target;
@end

@implementation UITextReplacement

+ (UITextReplacement)replacementWithRange:(id)range original:(id)original replacement:(id)replacement menuTitle:(id)title isDictationCommandReplacement:(BOOL)commandReplacement
{
  rangeCopy = range;
  originalCopy = original;
  replacementCopy = replacement;
  titleCopy = title;
  v16 = objc_alloc_init(UITextReplacement);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_range, range);
    objc_storeStrong(&v17->_originalText, original);
    objc_storeStrong(&v17->_replacementText, replacement);
    objc_storeStrong(&v17->_menuTitle, title);
    v17->_isDictationCommandReplacement = commandReplacement;
  }

  return v17;
}

- (void)didReplaceTextWithTarget:(id)target
{
  targetCopy = target;
  replacementCompletionBlock = [(UITextReplacement *)self replacementCompletionBlock];

  if (replacementCompletionBlock && [targetCopy conformsToProtocol:&unk_1EFE8B2D0])
  {
    v5 = targetCopy;
    range = [(UITextReplacement *)self range];
    start = [range start];

    replacementText = [(UITextReplacement *)self replacementText];
    v9 = [v5 positionFromPosition:start offset:{objc_msgSend(replacementText, "length")}];

    v10 = [v5 textRangeFromPosition:start toPosition:v9];
    replacementCompletionBlock2 = [(UITextReplacement *)self replacementCompletionBlock];
    replacementText2 = [(UITextReplacement *)self replacementText];
    (replacementCompletionBlock2)[2](replacementCompletionBlock2, replacementText2, v10, v5);

    [(UITextReplacement *)self setReplacementCompletionBlock:0];
  }
}

- (BOOL)_isNoReplacementsFoundItem
{
  menuTitle = self->_menuTitle;
  v3 = _UINSLocalizedStringWithDefaultValue(@"No Replacements Found", @"No Replacements Found");
  LOBYTE(menuTitle) = [(NSString *)menuTitle isEqualToString:v3];

  return menuTitle;
}

@end