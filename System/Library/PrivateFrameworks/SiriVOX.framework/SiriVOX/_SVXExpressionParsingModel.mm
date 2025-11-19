@interface _SVXExpressionParsingModel
- (_SVXExpressionParsingModel)initWithParseableExpressions:(id)a3 aceViewIdByExpressionId:(id)a4 aceViewByAceId:(id)a5;
@end

@implementation _SVXExpressionParsingModel

- (_SVXExpressionParsingModel)initWithParseableExpressions:(id)a3 aceViewIdByExpressionId:(id)a4 aceViewByAceId:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _SVXExpressionParsingModel;
  v12 = [(_SVXExpressionParsingModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parseableExpressions, a3);
    objc_storeStrong(&v13->_aceViewIdByExpressionId, a4);
    objc_storeStrong(&v13->_aceViewByAceId, a5);
  }

  return v13;
}

@end