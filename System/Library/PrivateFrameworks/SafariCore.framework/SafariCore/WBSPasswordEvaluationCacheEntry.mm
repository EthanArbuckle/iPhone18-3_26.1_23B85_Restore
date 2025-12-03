@interface WBSPasswordEvaluationCacheEntry
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordEvaluationCacheEntry)initWithCoder:(id)coder;
- (WBSPasswordEvaluationCacheEntry)initWithDictionaryRepresentation:(id)representation;
- (id)_initWithPasswordEvaluation:(id)evaluation versionNumber:(id)number;
- (id)passwordEvaluationWithPassword:(id)password;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSPasswordEvaluationCacheEntry

- (id)_initWithPasswordEvaluation:(id)evaluation versionNumber:(id)number
{
  evaluationCopy = evaluation;
  v12.receiver = self;
  v12.super_class = WBSPasswordEvaluationCacheEntry;
  v7 = [(WBSPasswordEvaluationCacheEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_evaluation, evaluation);
    versionNumber = v8->_versionNumber;
    v8->_versionNumber = &unk_1F308EC28;

    v10 = v8;
  }

  return v8;
}

- (WBSPasswordEvaluationCacheEntry)initWithDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"evaluation"];
  v5 = [[WBSPasswordEvaluation alloc] initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = [v4 safari_numberForKey:@"versionNumber"];
    self = [(WBSPasswordEvaluationCacheEntry *)self _initWithPasswordEvaluation:v5 versionNumber:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)passwordEvaluationWithPassword:(id)password
{
  passwordCopy = password;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  patternMatches = [(WBSPasswordEvaluation *)self->_evaluation patternMatches];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __66__WBSPasswordEvaluationCacheEntry_passwordEvaluationWithPassword___block_invoke;
  v15 = &unk_1E7CF1F28;
  v6 = passwordCopy;
  v16 = v6;
  v17 = &v18;
  v7 = [patternMatches safari_mapObjectsUsingBlock:&v12];

  if (v19[3])
  {
    v8 = 0;
  }

  else
  {
    v9 = [WBSPasswordEvaluation alloc];
    v10 = [(WBSPasswordEvaluation *)self->_evaluation evaluationType:v12];
    [(WBSPasswordEvaluation *)self->_evaluation guessesRequired];
    v8 = [(WBSPasswordEvaluation *)v9 initWithEvaluationType:v10 password:v6 patternMatches:v7 guessesRequired:?];
  }

  _Block_object_dispose(&v18, 8);

  return v8;
}

WBSPasswordPatternMatch *__66__WBSPasswordEvaluationCacheEntry_passwordEvaluationWithPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 range];
  if (v4 + v5 <= [*(a1 + 32) length])
  {
    v7 = [WBSPasswordPatternMatch alloc];
    v8 = [v3 type];
    v9 = *(a1 + 32);
    v10 = [v3 range];
    v12 = [v9 substringWithRange:{v10, v11}];
    v13 = [v3 range];
    v15 = v14;
    [v3 guessesRequired];
    v17 = v16;
    v18 = [v3 userInfo];
    v6 = [(WBSPasswordPatternMatch *)v7 initWithType:v8 matchedSubstring:v12 range:v13 guessesRequired:v15 userInfo:v18, v17];
  }

  else
  {
    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  dictionaryRepresentation = [(WBSPasswordEvaluation *)self->_evaluation dictionaryRepresentation];
  v4 = [v2 dictionaryWithDictionary:dictionaryRepresentation];

  [v4 removeObjectForKey:@"password"];
  v5 = [v4 objectForKeyedSubscript:@"patternMatches"];
  v6 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_11];
  [v4 setObject:v6 forKeyedSubscript:@"patternMatches"];
  v10[0] = @"evaluation";
  v10[1] = @"versionNumber";
  v11[0] = v4;
  v11[1] = &unk_1F308EC28;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __59__WBSPasswordEvaluationCacheEntry_dictionaryRepresentation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
  [v2 removeObjectForKey:@"matchedSubstring"];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(WBSPasswordEvaluationCacheEntry *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation];
}

- (WBSPasswordEvaluationCacheEntry)initWithCoder:(id)coder
{
  decodeObject = [coder decodeObject];
  v5 = [(WBSPasswordEvaluationCacheEntry *)self initWithDictionaryRepresentation:decodeObject];

  return v5;
}

@end