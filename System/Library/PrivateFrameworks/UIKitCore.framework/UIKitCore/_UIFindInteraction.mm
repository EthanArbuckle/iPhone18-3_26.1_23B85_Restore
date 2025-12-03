@interface _UIFindInteraction
- (UIView)view;
- (_UIFindInteraction)init;
- (_UITextSearching)searchableObject;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (void)didMoveToView:(id)view;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
@end

@implementation _UIFindInteraction

- (_UIFindInteraction)init
{
  v3.receiver = self;
  v3.super_class = _UIFindInteraction;
  return [(_UIFindInteraction *)&v3 init];
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  wrappedFindInteraction = self->_wrappedFindInteraction;
  if (!wrappedFindInteraction)
  {
    v5 = [[UIFindInteraction alloc] initWithSessionDelegate:self];
    v6 = self->_wrappedFindInteraction;
    self->_wrappedFindInteraction = v5;

    wrappedFindInteraction = self->_wrappedFindInteraction;
  }

  [(UIFindInteraction *)wrappedFindInteraction didMoveToView:viewCopy];
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  v5 = [UITextSearchingFindSession alloc];
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  v7 = [(UITextSearchingFindSession *)v5 initWithSearchableObject:WeakRetained];

  return v7;
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_searchableObject);
    [v7 didBeginTextSearchOperation];
  }
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_searchableObject);
    [v7 didEndTextSearchOperation];
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UITextSearching)searchableObject
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableObject);

  return WeakRetained;
}

@end