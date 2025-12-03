@interface _UISearchTabHostedFieldConfiguration
- (_UISearchTabHostedFieldConfiguration)initWithSearchBarView:(id)view cancelAction:(id)action;
- (_UISearchTabHostedFieldHost)_searchFieldHost;
- (void)setSearchIconMatchedViewIdentifier:(id)identifier;
- (void)setShowsCancelAction:(BOOL)action;
@end

@implementation _UISearchTabHostedFieldConfiguration

- (_UISearchTabHostedFieldConfiguration)initWithSearchBarView:(id)view cancelAction:(id)action
{
  viewCopy = view;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = _UISearchTabHostedFieldConfiguration;
  v9 = [(_UISearchTabHostedFieldConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchBarView, view);
    objc_storeStrong(&v10->_cancelAction, action);
  }

  return v10;
}

- (void)setShowsCancelAction:(BOOL)action
{
  if (self->_showsCancelAction != action)
  {
    self->_showsCancelAction = action;
    WeakRetained = objc_loadWeakRetained(&self->__searchFieldHost);
    [WeakRetained _updateHostedSearchFieldCancelActionVisibility:self];
  }
}

- (void)setSearchIconMatchedViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  searchIconMatchedViewIdentifier = self->_searchIconMatchedViewIdentifier;
  v10 = identifierCopy;
  v7 = searchIconMatchedViewIdentifier;
  if (v7 == v10)
  {

    searchBarView = v10;
LABEL_10:

    goto LABEL_11;
  }

  if (!v10 || !v7)
  {

LABEL_8:
    objc_storeStrong(&self->_searchIconMatchedViewIdentifier, identifier);
    searchBarView = [(_UISearchTabHostedFieldConfiguration *)self searchBarView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [searchBarView _setSearchIconMatchedViewIdentifier:v10];
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