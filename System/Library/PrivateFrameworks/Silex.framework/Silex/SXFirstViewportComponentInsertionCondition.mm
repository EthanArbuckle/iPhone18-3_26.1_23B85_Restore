@interface SXFirstViewportComponentInsertionCondition
- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider;
- (SXFirstViewportComponentInsertionCondition)initWithAllowFirstViewportException:(BOOL)exception;
@end

@implementation SXFirstViewportComponentInsertionCondition

- (SXFirstViewportComponentInsertionCondition)initWithAllowFirstViewportException:(BOOL)exception
{
  v5.receiver = self;
  v5.super_class = SXFirstViewportComponentInsertionCondition;
  result = [(SXFirstViewportComponentInsertionCondition *)&v5 init];
  if (result)
  {
    result->_allowFirstViewportException = exception;
  }

  return result;
}

- (BOOL)validateMarker:(id)marker componentTraits:(unint64_t)traits layoutProvider:(id)provider
{
  markerCopy = marker;
  providerCopy = provider;
  [markerCopy approximateLocation];
  v10 = v9;
  [providerCopy viewportSize];
  v12 = v11;
  trailingComponent = [markerCopy trailingComponent];
  if (trailingComponent)
  {
    v14 = 0;
  }

  else
  {
    path = [markerCopy path];
    v14 = [path count] == 0;
  }

  [providerCopy documentSize];
  v17 = v16;
  [providerCopy viewportSize];
  if (v10 >= v12)
  {
    v22 = 1;
  }

  else
  {
    v19 = v18;
    allowFirstViewportException = [(SXFirstViewportComponentInsertionCondition *)self allowFirstViewportException];
    v21 = v17 <= v19 && allowFirstViewportException;
    v22 = v21 && v14;
  }

  return v22;
}

@end