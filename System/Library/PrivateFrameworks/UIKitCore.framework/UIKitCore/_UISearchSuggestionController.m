@interface _UISearchSuggestionController
- (_UISearchSuggestionControllerDelegate)delegate;
@end

@implementation _UISearchSuggestionController

- (_UISearchSuggestionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end