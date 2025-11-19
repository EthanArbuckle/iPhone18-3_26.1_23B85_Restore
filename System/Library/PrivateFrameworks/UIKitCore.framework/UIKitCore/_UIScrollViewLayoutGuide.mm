@interface _UIScrollViewLayoutGuide
- (id)_boundsHeightVariable;
- (id)_boundsWidthVariable;
- (id)nsli_boundsHeightVariable;
- (id)nsli_boundsWidthVariable;
- (void)_setOwningView:(id)a3;
@end

@implementation _UIScrollViewLayoutGuide

- (id)nsli_boundsWidthVariable
{
  v2 = [(UILayoutGuide *)self owningView];
  v3 = [v2 nsli_contentWidthVariable];

  return v3;
}

- (id)nsli_boundsHeightVariable
{
  v2 = [(UILayoutGuide *)self owningView];
  v3 = [v2 nsli_contentHeightVariable];

  return v3;
}

- (void)_setOwningView:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UIScrollViewLayoutGuide;
  [(UILayoutGuide *)&v3 _setOwningView:a3];
}

- (id)_boundsWidthVariable
{
  v2 = [(UILayoutGuide *)self owningView];
  v3 = [v2 _contentWidthVariable];

  return v3;
}

- (id)_boundsHeightVariable
{
  v2 = [(UILayoutGuide *)self owningView];
  v3 = [v2 _contentHeightVariable];

  return v3;
}

@end