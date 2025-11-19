@interface _PKEnterCurrencyWithSuggestionsTextField
- (_PKEnterCurrencyWithSuggestionsTextFieldDataSource)suggestionsDataSource;
- (_PKEnterCurrencyWithSuggestionsTextFieldDelegate)suggestionsDelegate;
- (void)insertTextSuggestion:(id)a3;
- (void)setInputDelegate:(id)a3;
@end

@implementation _PKEnterCurrencyWithSuggestionsTextField

- (void)setInputDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _PKEnterCurrencyWithSuggestionsTextField;
  [(_PKEnterCurrencyWithSuggestionsTextField *)&v11 setInputDelegate:v4];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___PKEnterCurrencyWithSuggestionsTextField_setInputDelegate___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)insertTextSuggestion:(id)a3
{
  v11 = a3;
  [(_PKEnterCurrencyWithSuggestionsTextField *)self setText:&stru_1F3BD7330];
  v4 = [(_PKEnterCurrencyWithSuggestionsTextField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v11 inputText];
    v6 = [v4 textField:self shouldChangeCharactersInRange:0 replacementString:{0, v5}];

    if (v6)
    {
      v7 = [v11 inputText];
      [(_PKEnterCurrencyWithSuggestionsTextField *)self setText:v7];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_suggestionsDataSource);

  if (WeakRetained)
  {
    v9 = [v11 numericSuggestion];
    v10 = objc_loadWeakRetained(&self->_suggestionsDelegate);
    [v10 textFieldDidSelectSuggestion:v9];
  }
}

- (_PKEnterCurrencyWithSuggestionsTextFieldDelegate)suggestionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsDelegate);

  return WeakRetained;
}

- (_PKEnterCurrencyWithSuggestionsTextFieldDataSource)suggestionsDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsDataSource);

  return WeakRetained;
}

@end