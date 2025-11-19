@interface SXFirstViewportComponentInsertionCondition
- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5;
- (SXFirstViewportComponentInsertionCondition)initWithAllowFirstViewportException:(BOOL)a3;
@end

@implementation SXFirstViewportComponentInsertionCondition

- (SXFirstViewportComponentInsertionCondition)initWithAllowFirstViewportException:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SXFirstViewportComponentInsertionCondition;
  result = [(SXFirstViewportComponentInsertionCondition *)&v5 init];
  if (result)
  {
    result->_allowFirstViewportException = a3;
  }

  return result;
}

- (BOOL)validateMarker:(id)a3 componentTraits:(unint64_t)a4 layoutProvider:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 approximateLocation];
  v10 = v9;
  [v8 viewportSize];
  v12 = v11;
  v13 = [v7 trailingComponent];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [v7 path];
    v14 = [v15 count] == 0;
  }

  [v8 documentSize];
  v17 = v16;
  [v8 viewportSize];
  if (v10 >= v12)
  {
    v22 = 1;
  }

  else
  {
    v19 = v18;
    v20 = [(SXFirstViewportComponentInsertionCondition *)self allowFirstViewportException];
    v21 = v17 <= v19 && v20;
    v22 = v21 && v14;
  }

  return v22;
}

@end