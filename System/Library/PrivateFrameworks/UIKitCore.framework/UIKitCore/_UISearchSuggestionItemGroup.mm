@interface _UISearchSuggestionItemGroup
- (_UISearchSuggestionItemGroup)initWithHeaderTitle:(id)title headerAction:(id)action suggestionItems:(id)items;
- (id)description;
@end

@implementation _UISearchSuggestionItemGroup

- (_UISearchSuggestionItemGroup)initWithHeaderTitle:(id)title headerAction:(id)action suggestionItems:(id)items
{
  titleCopy = title;
  actionCopy = action;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = _UISearchSuggestionItemGroup;
  v11 = [(_UISearchSuggestionItemGroup *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    headerTitle = v11->_headerTitle;
    v11->_headerTitle = v12;

    objc_storeStrong(&v11->_headerAction, action);
    v14 = [itemsCopy copy];
    suggestionItems = v11->_suggestionItems;
    v11->_suggestionItems = v14;
  }

  return v11;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionItemGroup;
  v3 = [(_UISearchSuggestionItemGroup *)&v8 description];
  if ([(NSString *)self->_headerTitle length])
  {
    v4 = [v3 stringByAppendingFormat:@" title=%@", self->_headerTitle];

    v3 = v4;
  }

  if (self->_headerAction)
  {
    v5 = [v3 stringByAppendingFormat:@" action=%p", self->_headerAction];

    v3 = v5;
  }

  if ([(NSArray *)self->_suggestionItems count])
  {
    [v3 stringByAppendingFormat:@" suggestions=%p", self->_suggestionItems];
  }

  else
  {
    [v3 stringByAppendingString:@" no suggestions"];
  }
  v6 = ;

  return v6;
}

@end