@interface WTTextSuggestion
- (BOOL)isEqual:(id)a3;
- (WTTextSuggestion)initWithCoder:(id)a3;
- (WTTextSuggestion)initWithOriginalRange:(_NSRange)a3 replacement:(id)a4 suggestionCategory:(id)a5 suggestionDescription:(id)a6;
- (WTTextSuggestion)initWithXPCDictionary:(id)a3;
- (_NSRange)originalRange;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation WTTextSuggestion

- (WTTextSuggestion)initWithOriginalRange:(_NSRange)a3 replacement:(id)a4 suggestionCategory:(id)a5 suggestionDescription:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = WTTextSuggestion;
  v14 = [(WTTextSuggestion *)&v24 init];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_originalRange.location = location;
    v14->_originalRange.length = length;
    v17 = [v11 copy];
    replacement = v14->_replacement;
    v14->_replacement = v17;

    v19 = [v12 copy];
    suggestionCategory = v14->_suggestionCategory;
    v14->_suggestionCategory = v19;

    v21 = [v13 copy];
    suggestionDescription = v14->_suggestionDescription;
    v14->_suggestionDescription = v21;

    v14->_state = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(WTTextSuggestion *)self uuid];
  v4 = [v3 hash];

  return [(WTTextSuggestion *)self state]+ 257 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(WTTextSuggestion *)self uuid];
    v7 = [(WTTextSuggestion *)v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(WTTextSuggestion *)self state];
      v9 = v8 == [(WTTextSuggestion *)v5 state];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v3 = a3;
  [@"WTTextSuggestionKey" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

- (WTTextSuggestion)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  [@"WTTextSuggestionKey" UTF8String];
  v5 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(WTTextSuggestion *)self uuid];
  [v12 encodeObject:v4 forKey:@"WTSessionCodingKeyUUID"];

  v5 = MEMORY[0x277CCAE60];
  v6 = [(WTTextSuggestion *)self originalRange];
  v8 = [v5 valueWithRange:{v6, v7}];
  [v12 encodeObject:v8 forKey:@"WTSessionCodingKeyOriginalRange"];

  v9 = [(WTTextSuggestion *)self replacement];
  [v12 encodeObject:v9 forKey:@"WTSessionCodingKeyReplacement"];

  v10 = [(WTTextSuggestion *)self suggestionCategory];
  [v12 encodeObject:v10 forKey:@"WTSessionCodingKeySuggestionCategory"];

  v11 = [(WTTextSuggestion *)self suggestionDescription];
  [v12 encodeObject:v11 forKey:@"WTSessionCodingKeySuggestionDescription"];

  [v12 encodeInt64:-[WTTextSuggestion state](self forKey:{"state"), @"WTSessionCodingKeyState"}];
}

- (WTTextSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WTTextSuggestion *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyOriginalRange"];
    v5->_originalRange.location = [v8 rangeValue];
    v5->_originalRange.length = v9;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyReplacement"];
    replacement = v5->_replacement;
    v5->_replacement = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeySuggestionCategory"];
    suggestionCategory = v5->_suggestionCategory;
    v5->_suggestionCategory = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeySuggestionDescription"];
    suggestionDescription = v5->_suggestionDescription;
    v5->_suggestionDescription = v14;

    v5->_state = [v4 decodeInt64ForKey:@"WTSessionCodingKeyState"];
  }

  return v5;
}

- (_NSRange)originalRange
{
  length = self->_originalRange.length;
  location = self->_originalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end