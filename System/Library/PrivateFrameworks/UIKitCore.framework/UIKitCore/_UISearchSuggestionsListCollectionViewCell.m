@interface _UISearchSuggestionsListCollectionViewCell
- (_UISearchSuggestion_dci)representedSuggestion;
- (_UISearchSuggestionsListCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setRepresentedSuggestion:(id)a3;
@end

@implementation _UISearchSuggestionsListCollectionViewCell

- (_UISearchSuggestionsListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UISearchSuggestionsListCollectionViewCell;
  v3 = [(UICollectionViewListCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor labelColor];
    [(UIView *)v3 setTintColor:v4];
  }

  return v3;
}

- (void)setRepresentedSuggestion:(id)a3
{
  v4 = a3;
  v8 = +[UIListContentConfiguration cellConfiguration];
  v5 = [v4 iconImage];
  [v8 setImage:v5];

  v6 = [v4 localizedSuggestion];
  [v8 setText:v6];

  v7 = [v4 localizedAttributedSuggestion];
  [v8 setAttributedText:v7];

  [(UICollectionViewCell *)self setContentConfiguration:v8];
  objc_storeWeak(&self->_representedSuggestion, v4);
}

- (_UISearchSuggestion_dci)representedSuggestion
{
  WeakRetained = objc_loadWeakRetained(&self->_representedSuggestion);

  return WeakRetained;
}

@end