@interface PSIInitialSuggestionIdentifier
- (PSIInitialSuggestionIdentifier)initWithDictionary:(id)a3;
- (PSIInitialSuggestionIdentifier)initWithSuggestionTemplateKey:(id)a3 firstGroupId:(unint64_t)a4 secondGroupId:(unint64_t)a5;
- (id)dictionary;
@end

@implementation PSIInitialSuggestionIdentifier

- (id)dictionary
{
  v9[3] = *MEMORY[0x1E69E9840];
  firstGroupId = self->_firstGroupId;
  v9[0] = self->_suggestionTemplateKey;
  v8[0] = @"suggestionTemplateKey";
  v8[1] = @"firstGroupId";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:firstGroupId];
  v9[1] = v4;
  v8[2] = @"secondGroupId";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_secondGroupId];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (PSIInitialSuggestionIdentifier)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"suggestionTemplateKey"];
  v6 = [v4 objectForKeyedSubscript:@"firstGroupId"];
  v7 = [v6 integerValue];

  v8 = [v4 objectForKeyedSubscript:@"secondGroupId"];

  v9 = [v8 integerValue];
  v10 = [(PSIInitialSuggestionIdentifier *)self initWithSuggestionTemplateKey:v5 firstGroupId:v7 secondGroupId:v9];

  return v10;
}

- (PSIInitialSuggestionIdentifier)initWithSuggestionTemplateKey:(id)a3 firstGroupId:(unint64_t)a4 secondGroupId:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = PSIInitialSuggestionIdentifier;
  v10 = [(PSIInitialSuggestionIdentifier *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_suggestionTemplateKey, a3);
    v11->_firstGroupId = a4;
    v11->_secondGroupId = a5;
    v12 = v11;
  }

  return v11;
}

@end