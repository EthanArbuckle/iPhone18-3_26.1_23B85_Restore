@interface _PKEnterCurrencyWithSuggestionsTextField
- (_PKEnterCurrencyWithSuggestionsTextFieldDataSource)suggestionsDataSource;
- (_PKEnterCurrencyWithSuggestionsTextFieldDelegate)suggestionsDelegate;
- (void)insertTextSuggestion:(id)suggestion;
- (void)setInputDelegate:(id)delegate;
@end

@implementation _PKEnterCurrencyWithSuggestionsTextField

- (void)setInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _PKEnterCurrencyWithSuggestionsTextField;
  [(_PKEnterCurrencyWithSuggestionsTextField *)&v11 setInputDelegate:delegateCopy];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___PKEnterCurrencyWithSuggestionsTextField_setInputDelegate___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v9, &location);
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  [(_PKEnterCurrencyWithSuggestionsTextField *)self setText:&stru_1F3BD7330];
  delegate = [(_PKEnterCurrencyWithSuggestionsTextField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    inputText = [suggestionCopy inputText];
    v6 = [delegate textField:self shouldChangeCharactersInRange:0 replacementString:{0, inputText}];

    if (v6)
    {
      inputText2 = [suggestionCopy inputText];
      [(_PKEnterCurrencyWithSuggestionsTextField *)self setText:inputText2];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_suggestionsDataSource);

  if (WeakRetained)
  {
    numericSuggestion = [suggestionCopy numericSuggestion];
    v10 = objc_loadWeakRetained(&self->_suggestionsDelegate);
    [v10 textFieldDidSelectSuggestion:numericSuggestion];
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