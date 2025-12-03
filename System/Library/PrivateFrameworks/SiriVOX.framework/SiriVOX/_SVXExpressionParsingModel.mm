@interface _SVXExpressionParsingModel
- (_SVXExpressionParsingModel)initWithParseableExpressions:(id)expressions aceViewIdByExpressionId:(id)id aceViewByAceId:(id)aceId;
@end

@implementation _SVXExpressionParsingModel

- (_SVXExpressionParsingModel)initWithParseableExpressions:(id)expressions aceViewIdByExpressionId:(id)id aceViewByAceId:(id)aceId
{
  expressionsCopy = expressions;
  idCopy = id;
  aceIdCopy = aceId;
  v15.receiver = self;
  v15.super_class = _SVXExpressionParsingModel;
  v12 = [(_SVXExpressionParsingModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parseableExpressions, expressions);
    objc_storeStrong(&v13->_aceViewIdByExpressionId, id);
    objc_storeStrong(&v13->_aceViewByAceId, aceId);
  }

  return v13;
}

@end