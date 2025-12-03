@interface VSSearchBarDelegate
- (VSSearchBarDelegate)init;
- (void)clearText;
- (void)setSearchBar:(id)bar;
@end

@implementation VSSearchBarDelegate

- (VSSearchBarDelegate)init
{
  v6.receiver = self;
  v6.super_class = VSSearchBarDelegate;
  v2 = [(VSSearchBarDelegate *)&v6 init];
  v3 = v2;
  if (v2)
  {
    text = v2->_text;
    v2->_text = &stru_2880B8BB0;
  }

  return v3;
}

- (void)clearText
{
  searchBar = [(VSSearchBarDelegate *)self searchBar];
  [searchBar setText:&stru_2880B8BB0];

  [(VSSearchBarDelegate *)self setText:&stru_2880B8BB0];
}

- (void)setSearchBar:(id)bar
{
  barCopy = bar;
  searchBar = self->_searchBar;
  if (searchBar != barCopy)
  {
    v10 = barCopy;
    [(UISearchBar *)searchBar setDelegate:0];
    objc_storeStrong(&self->_searchBar, bar);
    [(UISearchBar *)v10 setDelegate:self];
    text = [(UISearchBar *)v10 text];
    v8 = text;
    if (text)
    {
      v9 = text;
    }

    else
    {
      v9 = &stru_2880B8BB0;
    }

    [(VSSearchBarDelegate *)self setText:v9];
  }

  MEMORY[0x2821F96F8]();
}

@end