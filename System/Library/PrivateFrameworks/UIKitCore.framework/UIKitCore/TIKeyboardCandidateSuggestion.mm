@interface TIKeyboardCandidateSuggestion
+ (id)candidateWithSuggestion:(id)a3;
+ (id)candidateWithSuggestion:(id)a3 customInfoType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (TIKeyboardCandidateSuggestion)initWithSuggestion:(id)a3 customInfoType:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TIKeyboardCandidateSuggestion

+ (id)candidateWithSuggestion:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSuggestion:v4 customInfoType:0];

  return v5;
}

+ (id)candidateWithSuggestion:(id)a3 customInfoType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithSuggestion:v6 customInfoType:a4];

  return v7;
}

- (TIKeyboardCandidateSuggestion)initWithSuggestion:(id)a3 customInfoType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardCandidateSuggestion;
  v8 = [(TIKeyboardCandidateSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_textSuggestion, a3);
    v9->_customInfoType = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardCandidateSuggestion;
  v4 = [(TIKeyboardCandidateSuggestion *)&v8 copyWithZone:a3];
  v5 = [(UITextSuggestion *)self->_textSuggestion copy];
  v6 = v4[20];
  v4[20] = v5;

  v4[19] = self->_customInfoType;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardCandidateSuggestion;
  if ([(TIKeyboardCandidateSuggestion *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    textSuggestion = self->_textSuggestion;
    v6 = [v4 textSuggestion];
    v7 = textSuggestion == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end