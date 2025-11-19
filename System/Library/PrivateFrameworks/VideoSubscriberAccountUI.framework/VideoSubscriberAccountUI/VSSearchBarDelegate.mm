@interface VSSearchBarDelegate
- (VSSearchBarDelegate)init;
- (void)clearText;
- (void)setSearchBar:(id)a3;
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
  v3 = [(VSSearchBarDelegate *)self searchBar];
  [v3 setText:&stru_2880B8BB0];

  [(VSSearchBarDelegate *)self setText:&stru_2880B8BB0];
}

- (void)setSearchBar:(id)a3
{
  v5 = a3;
  searchBar = self->_searchBar;
  if (searchBar != v5)
  {
    v10 = v5;
    [(UISearchBar *)searchBar setDelegate:0];
    objc_storeStrong(&self->_searchBar, a3);
    [(UISearchBar *)v10 setDelegate:self];
    v7 = [(UISearchBar *)v10 text];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
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