@interface WTTextSuggestion
- (BOOL)isEqual:(id)equal;
- (WTTextSuggestion)initWithCoder:(id)coder;
- (WTTextSuggestion)initWithOriginalRange:(_NSRange)range replacement:(id)replacement suggestionCategory:(id)category suggestionDescription:(id)description;
- (WTTextSuggestion)initWithXPCDictionary:(id)dictionary;
- (_NSRange)originalRange;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation WTTextSuggestion

- (WTTextSuggestion)initWithOriginalRange:(_NSRange)range replacement:(id)replacement suggestionCategory:(id)category suggestionDescription:(id)description
{
  length = range.length;
  location = range.location;
  replacementCopy = replacement;
  categoryCopy = category;
  descriptionCopy = description;
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
    v17 = [replacementCopy copy];
    replacement = v14->_replacement;
    v14->_replacement = v17;

    v19 = [categoryCopy copy];
    suggestionCategory = v14->_suggestionCategory;
    v14->_suggestionCategory = v19;

    v21 = [descriptionCopy copy];
    suggestionDescription = v14->_suggestionDescription;
    v14->_suggestionDescription = v21;

    v14->_state = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  uuid = [(WTTextSuggestion *)self uuid];
  v4 = [uuid hash];

  return [(WTTextSuggestion *)self state]+ 257 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uuid = [(WTTextSuggestion *)self uuid];
    uuid2 = [(WTTextSuggestion *)v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      state = [(WTTextSuggestion *)self state];
      v9 = state == [(WTTextSuggestion *)v5 state];
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

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"WTTextSuggestionKey" UTF8String];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
}

- (WTTextSuggestion)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  [@"WTTextSuggestionKey" UTF8String];
  v5 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(WTTextSuggestion *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"WTSessionCodingKeyUUID"];

  v5 = MEMORY[0x277CCAE60];
  originalRange = [(WTTextSuggestion *)self originalRange];
  v8 = [v5 valueWithRange:{originalRange, v7}];
  [coderCopy encodeObject:v8 forKey:@"WTSessionCodingKeyOriginalRange"];

  replacement = [(WTTextSuggestion *)self replacement];
  [coderCopy encodeObject:replacement forKey:@"WTSessionCodingKeyReplacement"];

  suggestionCategory = [(WTTextSuggestion *)self suggestionCategory];
  [coderCopy encodeObject:suggestionCategory forKey:@"WTSessionCodingKeySuggestionCategory"];

  suggestionDescription = [(WTTextSuggestion *)self suggestionDescription];
  [coderCopy encodeObject:suggestionDescription forKey:@"WTSessionCodingKeySuggestionDescription"];

  [coderCopy encodeInt64:-[WTTextSuggestion state](self forKey:{"state"), @"WTSessionCodingKeyState"}];
}

- (WTTextSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WTTextSuggestion *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyUUID"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyOriginalRange"];
    v5->_originalRange.location = [v8 rangeValue];
    v5->_originalRange.length = v9;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeyReplacement"];
    replacement = v5->_replacement;
    v5->_replacement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeySuggestionCategory"];
    suggestionCategory = v5->_suggestionCategory;
    v5->_suggestionCategory = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WTSessionCodingKeySuggestionDescription"];
    suggestionDescription = v5->_suggestionDescription;
    v5->_suggestionDescription = v14;

    v5->_state = [coderCopy decodeInt64ForKey:@"WTSessionCodingKeyState"];
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