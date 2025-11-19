@interface SPUICompletionStringModel
- (SPUICompletionStringModel)initWithTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6;
@end

@implementation SPUICompletionStringModel

- (SPUICompletionStringModel)initWithTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SPUICompletionStringModel;
  v12 = [(SPUICompletionStringModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayedText, a3);
    v13->_searchFieldHasTokens = a4;
    v13->_queryId = a5;
    v13->_hasMarkedText = a6;
  }

  return v13;
}

@end