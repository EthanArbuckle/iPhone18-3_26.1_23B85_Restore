@interface _UIScrollViewContentOffsetGuide
- (BOOL)_uili_requiresObservationForVariable:(id)variable;
- (id)_boundsHeightVariable;
- (id)_boundsWidthVariable;
- (id)_minXVariable;
- (id)_minYVariable;
- (id)nsli_boundsHeightVariable;
- (id)nsli_boundsWidthVariable;
- (id)nsli_minXVariable;
- (id)nsli_minYVariable;
- (void)_setOwningView:(id)view;
@end

@implementation _UIScrollViewContentOffsetGuide

- (id)nsli_boundsWidthVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentXOffsetVariable = [owningView nsli_contentXOffsetVariable];

  return nsli_contentXOffsetVariable;
}

- (id)nsli_boundsHeightVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentYOffsetVariable = [owningView nsli_contentYOffsetVariable];

  return nsli_contentYOffsetVariable;
}

- (id)nsli_minXVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_minXVariable = [owningView nsli_minXVariable];

  return nsli_minXVariable;
}

- (id)nsli_minYVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_minYVariable = [owningView nsli_minYVariable];

  return nsli_minYVariable;
}

- (void)_setOwningView:(id)view
{
  v3.receiver = self;
  v3.super_class = _UIScrollViewContentOffsetGuide;
  [(UILayoutGuide *)&v3 _setOwningView:view];
}

- (id)_minXVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  _minXVariable = [owningView _minXVariable];

  return _minXVariable;
}

- (id)_minYVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  _minYVariable = [owningView _minYVariable];

  return _minYVariable;
}

- (id)_boundsWidthVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentXOffsetVariable = [owningView nsli_contentXOffsetVariable];

  return nsli_contentXOffsetVariable;
}

- (id)_boundsHeightVariable
{
  owningView = [(UILayoutGuide *)self owningView];
  nsli_contentYOffsetVariable = [owningView nsli_contentYOffsetVariable];

  return nsli_contentYOffsetVariable;
}

- (BOOL)_uili_requiresObservationForVariable:(id)variable
{
  variableCopy = variable;
  _minXVariable = [(_UIScrollViewContentOffsetGuide *)self _minXVariable];
  v6 = _minXVariable;
  if (_minXVariable == variableCopy)
  {

    goto LABEL_5;
  }

  _minYVariable = [(_UIScrollViewContentOffsetGuide *)self _minYVariable];

  if (_minYVariable == variableCopy)
  {
LABEL_5:
    owningView = [(UILayoutGuide *)self owningView];
    v8 = [owningView _uili_requiresObservationForVariable:variableCopy];

    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end