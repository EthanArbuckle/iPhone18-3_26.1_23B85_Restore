@interface _UISearchSuggestionsListCollectionViewCell
- (_UISearchSuggestion_dci)representedSuggestion;
- (_UISearchSuggestionsListCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setRepresentedSuggestion:(id)suggestion;
@end

@implementation _UISearchSuggestionsListCollectionViewCell

- (_UISearchSuggestionsListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UISearchSuggestionsListCollectionViewCell;
  v3 = [(UICollectionViewListCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor labelColor];
    [(UIView *)v3 setTintColor:v4];
  }

  return v3;
}

- (void)setRepresentedSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v8 = +[UIListContentConfiguration cellConfiguration];
  iconImage = [suggestionCopy iconImage];
  [v8 setImage:iconImage];

  localizedSuggestion = [suggestionCopy localizedSuggestion];
  [v8 setText:localizedSuggestion];

  localizedAttributedSuggestion = [suggestionCopy localizedAttributedSuggestion];
  [v8 setAttributedText:localizedAttributedSuggestion];

  [(UICollectionViewCell *)self setContentConfiguration:v8];
  objc_storeWeak(&self->_representedSuggestion, suggestionCopy);
}

- (_UISearchSuggestion_dci)representedSuggestion
{
  WeakRetained = objc_loadWeakRetained(&self->_representedSuggestion);

  return WeakRetained;
}

@end