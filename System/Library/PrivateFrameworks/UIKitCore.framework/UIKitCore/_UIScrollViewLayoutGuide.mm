@interface _UIScrollViewLayoutGuide
- (id)_boundsHeightVariable;
- (id)_boundsWidthVariable;
- (id)nsli_boundsHeightVariable;
- (id)nsli_boundsWidthVariable;
- (void)_setOwningView:(id)view;
@end

@implementation _UIScrollViewLayoutGuide

- (id)nsli_boundsWidthVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentWidthVariable = [owningView nsli_contentWidthVariable];

  return nsli_contentWidthVariable;
}

- (id)nsli_boundsHeightVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentHeightVariable = [owningView nsli_contentHeightVariable];

  return nsli_contentHeightVariable;
}

- (void)_setOwningView:(id)view
{
  v3.receiver = self;
  v3.super_class = _UIScrollViewLayoutGuide;
  [(UILayoutGuide *)&v3 _setOwningView:view];
}

- (id)_boundsWidthVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  _contentWidthVariable = [owningView _contentWidthVariable];

  return _contentWidthVariable;
}

- (id)_boundsHeightVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  _contentHeightVariable = [owningView _contentHeightVariable];

  return _contentHeightVariable;
}

@end