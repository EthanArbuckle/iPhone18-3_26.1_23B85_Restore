@interface _UISearchTabHostedFieldConfiguration
- (_UISearchTabHostedFieldConfiguration)initWithSearchBarView:(id)a3 cancelAction:(id)a4;
- (_UISearchTabHostedFieldHost)_searchFieldHost;
- (void)setSearchIconMatchedViewIdentifier:(id)a3;
- (void)setShowsCancelAction:(BOOL)a3;
@end

@implementation _UISearchTabHostedFieldConfiguration

- (_UISearchTabHostedFieldConfiguration)initWithSearchBarView:(id)a3 cancelAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UISearchTabHostedFieldConfiguration;
  v9 = [(_UISearchTabHostedFieldConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchBarView, a3);
    objc_storeStrong(&v10->_cancelAction, a4);
  }

  return v10;
}

- (void)setShowsCancelAction:(BOOL)a3
{
  if (self->_showsCancelAction != a3)
  {
    self->_showsCancelAction = a3;
    WeakRetained = objc_loadWeakRetained(&self->__searchFieldHost);
    [WeakRetained _updateHostedSearchFieldCancelActionVisibility:self];
  }
}

- (void)setSearchIconMatchedViewIdentifier:(id)a3
{
  v5 = a3;
  searchIconMatchedViewIdentifier = self->_searchIconMatchedViewIdentifier;
  v10 = v5;
  v7 = searchIconMatchedViewIdentifier;
  if (v7 == v10)
  {

    v9 = v10;
LABEL_10:

    goto LABEL_11;
  }

  if (!v10 || !v7)
  {

LABEL_8:
    objc_storeStrong(&self->_searchIconMatchedViewIdentifier, a3);
    v9 = [(_UISearchTabHostedFieldConfiguration *)self searchBarView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 _setSearchIconMatchedViewIdentifier:v10];
    }

    goto LABEL_10;
  }

  v8 = [(NSString *)v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (_UISearchTabHostedFieldHost)_searchFieldHost
{
  WeakRetained = objc_loadWeakRetained(&self->__searchFieldHost);

  return WeakRetained;
}

@end