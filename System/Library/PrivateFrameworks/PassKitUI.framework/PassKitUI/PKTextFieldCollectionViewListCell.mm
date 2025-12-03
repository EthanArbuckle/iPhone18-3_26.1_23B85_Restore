@interface PKTextFieldCollectionViewListCell
- (BOOL)textFieldShouldReturn:(id)return forContentView:(id)view;
- (id)textFieldText;
- (void)beginEditing;
- (void)endEditing;
- (void)prepareForReuse;
- (void)resetTextFieldTextFromLabel;
- (void)setToolbarItems:(id)items;
- (void)textFieldDidBeginEditing:(id)editing forContentView:(id)view;
- (void)textFieldDidChangeSelection:(id)selection forContentView:(id)view;
- (void)textFieldDidEndEditing:(id)editing forContentView:(id)view;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PKTextFieldCollectionViewListCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  contentConfiguration = [(PKTextFieldCollectionViewListCell *)self contentConfiguration];
  v6 = [contentConfiguration copy];
  v8 = [v6 updatedConfigurationForState:stateCopy];

  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView setDelegate:self];

  [(PKTextFieldCollectionViewListCell *)self setContentConfiguration:v8];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKTextFieldCollectionViewListCell;
  [(PKTextFieldCollectionViewListCell *)&v4 prepareForReuse];
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView prepareForReuse];
}

- (id)textFieldText
{
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  textFieldText = [_textFieldContentView textFieldText];

  return textFieldText;
}

- (void)beginEditing
{
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView beginEditing];
}

- (void)endEditing
{
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView endEditing];
}

- (void)resetTextFieldTextFromLabel
{
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView resetTextFieldTextFromLabel];
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  _textFieldContentView = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [_textFieldContentView setToolbarItems:itemsCopy];
}

- (BOOL)textFieldShouldReturn:(id)return forContentView:(id)view
{
  returnCopy = return;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldShouldReturn:returnCopy forListCell:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textFieldDidBeginEditing:(id)editing forContentView:(id)view
{
  editingCopy = editing;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidBeginEditing:editingCopy forListCell:self];
  }
}

- (void)textFieldDidEndEditing:(id)editing forContentView:(id)view
{
  editingCopy = editing;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidEndEditing:editingCopy forListCell:self];
  }
}

- (void)textFieldDidChangeSelection:(id)selection forContentView:(id)view
{
  selectionCopy = selection;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidChangeSelection:selectionCopy forListCell:self];
  }
}

@end