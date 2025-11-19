@interface PKTextFieldCollectionViewListCell
- (BOOL)textFieldShouldReturn:(id)a3 forContentView:(id)a4;
- (id)textFieldText;
- (void)beginEditing;
- (void)endEditing;
- (void)prepareForReuse;
- (void)resetTextFieldTextFromLabel;
- (void)setToolbarItems:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3 forContentView:(id)a4;
- (void)textFieldDidChangeSelection:(id)a3 forContentView:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 forContentView:(id)a4;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation PKTextFieldCollectionViewListCell

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [(PKTextFieldCollectionViewListCell *)self contentConfiguration];
  v6 = [v5 copy];
  v8 = [v6 updatedConfigurationForState:v4];

  v7 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v7 setDelegate:self];

  [(PKTextFieldCollectionViewListCell *)self setContentConfiguration:v8];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKTextFieldCollectionViewListCell;
  [(PKTextFieldCollectionViewListCell *)&v4 prepareForReuse];
  v3 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v3 prepareForReuse];
}

- (id)textFieldText
{
  v2 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  v3 = [v2 textFieldText];

  return v3;
}

- (void)beginEditing
{
  v2 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v2 beginEditing];
}

- (void)endEditing
{
  v2 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v2 endEditing];
}

- (void)resetTextFieldTextFromLabel
{
  v2 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v2 resetTextFieldTextFromLabel];
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = [(PKTextFieldCollectionViewListCell *)self _textFieldContentView];
  [v5 setToolbarItems:v4];
}

- (BOOL)textFieldShouldReturn:(id)a3 forContentView:(id)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldShouldReturn:v5 forListCell:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)textFieldDidBeginEditing:(id)a3 forContentView:(id)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidBeginEditing:v5 forListCell:self];
  }
}

- (void)textFieldDidEndEditing:(id)a3 forContentView:(id)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidEndEditing:v5 forListCell:self];
  }
}

- (void)textFieldDidChangeSelection:(id)a3 forContentView:(id)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(PKTextFieldCollectionViewListCellDelegate *)self->_delegate textFieldDidChangeSelection:v5 forListCell:self];
  }
}

@end