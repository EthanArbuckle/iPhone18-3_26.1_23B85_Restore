@interface TIKeyboardCandidateSuggestion
+ (id)candidateWithSuggestion:(id)suggestion;
+ (id)candidateWithSuggestion:(id)suggestion customInfoType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (TIKeyboardCandidateSuggestion)initWithSuggestion:(id)suggestion customInfoType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TIKeyboardCandidateSuggestion

+ (id)candidateWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = [[self alloc] initWithSuggestion:suggestionCopy customInfoType:0];

  return v5;
}

+ (id)candidateWithSuggestion:(id)suggestion customInfoType:(unint64_t)type
{
  suggestionCopy = suggestion;
  v7 = [[self alloc] initWithSuggestion:suggestionCopy customInfoType:type];

  return v7;
}

- (TIKeyboardCandidateSuggestion)initWithSuggestion:(id)suggestion customInfoType:(unint64_t)type
{
  suggestionCopy = suggestion;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateSuggestion;
  v8 = [(TIKeyboardCandidateSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textSuggestion, suggestion);
    v9->_customInfoType = type;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TIKeyboardCandidateSuggestion;
  v4 = [(TIKeyboardCandidateSuggestion *)&v8 copyWithZone:zone];
  v5 = [(UITextSuggestion *)self->_textSuggestion copy];
  v6 = v4[20];
  v4[20] = v5;

  v4[19] = self->_customInfoType;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = TIKeyboardCandidateSuggestion;
  if ([(TIKeyboardCandidateSuggestion *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    textSuggestion = self->_textSuggestion;
    textSuggestion = [equalCopy textSuggestion];
    v7 = textSuggestion == textSuggestion;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end