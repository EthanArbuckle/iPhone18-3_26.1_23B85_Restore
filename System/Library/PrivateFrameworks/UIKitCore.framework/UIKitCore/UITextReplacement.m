@interface UITextReplacement
+ (UITextReplacement)replacementWithRange:(id)a3 original:(id)a4 replacement:(id)a5 menuTitle:(id)a6 isDictationCommandReplacement:(BOOL)a7;
- (BOOL)_isNoReplacementsFoundItem;
- (void)didReplaceTextWithTarget:(id)a3;
@end

@implementation UITextReplacement

+ (UITextReplacement)replacementWithRange:(id)a3 original:(id)a4 replacement:(id)a5 menuTitle:(id)a6 isDictationCommandReplacement:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(UITextReplacement);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_range, a3);
    objc_storeStrong(&v17->_originalText, a4);
    objc_storeStrong(&v17->_replacementText, a5);
    objc_storeStrong(&v17->_menuTitle, a6);
    v17->_isDictationCommandReplacement = a7;
  }

  return v17;
}

- (void)didReplaceTextWithTarget:(id)a3
{
  v13 = a3;
  v4 = [(UITextReplacement *)self replacementCompletionBlock];

  if (v4 && [v13 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v5 = v13;
    v6 = [(UITextReplacement *)self range];
    v7 = [v6 start];

    v8 = [(UITextReplacement *)self replacementText];
    v9 = [v5 positionFromPosition:v7 offset:{objc_msgSend(v8, "length")}];

    v10 = [v5 textRangeFromPosition:v7 toPosition:v9];
    v11 = [(UITextReplacement *)self replacementCompletionBlock];
    v12 = [(UITextReplacement *)self replacementText];
    (v11)[2](v11, v12, v10, v5);

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