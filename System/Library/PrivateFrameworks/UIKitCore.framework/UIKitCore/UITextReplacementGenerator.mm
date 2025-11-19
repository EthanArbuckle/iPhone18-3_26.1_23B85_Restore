@interface UITextReplacementGenerator
- (BOOL)shouldAllowString:(id)a3 intoReplacements:(id)a4;
- (id)replacementWithText:(id)a3;
- (id)replacements;
- (void)addPlaceholderForEmptyReplacements:(id)a3;
@end

@implementation UITextReplacementGenerator

- (BOOL)shouldAllowString:(id)a3 intoReplacements:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && (-[UITextReplacementGenerator stringToReplace](self, "stringToReplace"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, (v9 & 1) == 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__UITextReplacementGenerator_shouldAllowString_intoReplacements___block_invoke;
    v12[3] = &unk_1E71055A0;
    v13 = v6;
    v10 = [v7 indexOfObjectPassingTest:v12] == 0x7FFFFFFFFFFFFFFFLL;
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

- (id)replacementWithText:(id)a3
{
  v4 = a3;
  v5 = [(UITextReplacementGenerator *)self replacementRange];
  v6 = [(UITextReplacementGenerator *)self stringToReplace];
  v7 = [UITextReplacement replacementWithRange:v5 original:v6 replacement:v4 menuTitle:v4];

  return v7;
}

- (void)addPlaceholderForEmptyReplacements:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    v3 = _UINSLocalizedStringWithDefaultValue(@"No Replacements Found", @"No Replacements Found");
    v4 = [UITextReplacement replacementWithRange:0 original:0 replacement:0 menuTitle:v3];

    [v5 addObject:v4];
  }
}

- (id)replacements
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"UITextReplacement.m" lineNumber:121 description:{@"%@ subclasses must override %s", v6, "-[UITextReplacementGenerator replacements]"}];

  return 0;
}

@end