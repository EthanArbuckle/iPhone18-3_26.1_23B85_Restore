@interface SearchUICompletionStringModel
- (SearchUICompletionStringModel)initWithAttributedTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text;
- (SearchUICompletionStringModel)initWithTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text;
@end

@implementation SearchUICompletionStringModel

- (SearchUICompletionStringModel)initWithTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text
{
  textCopy = text;
  tokensCopy = tokens;
  v10 = MEMORY[0x1E696AAB0];
  stringCopy = string;
  v12 = [[v10 alloc] initWithString:stringCopy];

  v13 = [(SearchUICompletionStringModel *)self initWithAttributedTypedString:v12 hasTokens:tokensCopy queryId:id hasMarkedText:textCopy];
  return v13;
}

- (SearchUICompletionStringModel)initWithAttributedTypedString:(id)string hasTokens:(BOOL)tokens queryId:(unint64_t)id hasMarkedText:(BOOL)text
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = SearchUICompletionStringModel;
  v12 = [(SearchUICompletionStringModel *)&v15 init];
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