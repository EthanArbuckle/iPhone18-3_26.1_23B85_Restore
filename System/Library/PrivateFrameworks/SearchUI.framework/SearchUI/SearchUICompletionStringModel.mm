@interface SearchUICompletionStringModel
- (SearchUICompletionStringModel)initWithAttributedTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6;
- (SearchUICompletionStringModel)initWithTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6;
@end

@implementation SearchUICompletionStringModel

- (SearchUICompletionStringModel)initWithTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = MEMORY[0x1E696AAB0];
  v11 = a3;
  v12 = [[v10 alloc] initWithString:v11];

  v13 = [(SearchUICompletionStringModel *)self initWithAttributedTypedString:v12 hasTokens:v8 queryId:a5 hasMarkedText:v6];
  return v13;
}

- (SearchUICompletionStringModel)initWithAttributedTypedString:(id)a3 hasTokens:(BOOL)a4 queryId:(unint64_t)a5 hasMarkedText:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SearchUICompletionStringModel;
  v12 = [(SearchUICompletionStringModel *)&v15 init];
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