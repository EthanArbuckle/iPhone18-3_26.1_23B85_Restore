@interface SPUICompletionStringModel
- (SPUICompletionStringModel)initWithTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text;
@end

@implementation SPUICompletionStringModel

- (SPUICompletionStringModel)initWithTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = SPUICompletionStringModel;
  v12 = [(SPUICompletionStringModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayedText, string);
    v13->_searchFieldHasTokens = tokens;
    v13->_queryId = id;
    v13->_hasMarkedText = text;
  }

  return v13;
}

@end