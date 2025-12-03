@interface UITextReplacementGenerator
- (BOOL)shouldAllowString:(id)string intoReplacements:(id)replacements;
- (id)replacementWithText:(id)text;
- (id)replacements;
- (void)addPlaceholderForEmptyReplacements:(id)replacements;
@end

@implementation UITextReplacementGenerator

- (BOOL)shouldAllowString:(id)string intoReplacements:(id)replacements
{
  stringCopy = string;
  replacementsCopy = replacements;
  if ([stringCopy length] && (-[UITextReplacementGenerator stringToReplace](self, "stringToReplace"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(stringCopy, "isEqualToString:", v8), v8, (v9 & 1) == 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__UITextReplacementGenerator_shouldAllowString_intoReplacements___block_invoke;
    v12[3] = &unk_1E71055A0;
    v13 = stringCopy;
    v10 = [replacementsCopy indexOfObjectPassingTest:v12] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __65__UITextReplacementGenerator_shouldAllowString_intoReplacements___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 menuTitle];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (id)replacementWithText:(id)text
{
  textCopy = text;
  replacementRange = [(UITextReplacementGenerator *)self replacementRange];
  stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
  v7 = [UITextReplacement replacementWithRange:replacementRange original:stringToReplace replacement:textCopy menuTitle:textCopy];

  return v7;
}

- (void)addPlaceholderForEmptyReplacements:(id)replacements
{
  replacementsCopy = replacements;
  if (![replacementsCopy count])
  {
    v3 = _UINSLocalizedStringWithDefaultValue(@"No Replacements Found", @"No Replacements Found");
    v4 = [UITextReplacement replacementWithRange:0 original:0 replacement:0 menuTitle:v3];

    [replacementsCopy addObject:v4];
  }
}

- (id)replacements
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITextReplacement.m" lineNumber:121 description:{@"%@ subclasses must override %s", v6, "-[UITextReplacementGenerator replacements]"}];

  return 0;
}

@end