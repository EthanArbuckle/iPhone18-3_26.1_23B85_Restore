@interface UIDictationMultilingualString
- (BOOL)isEqual:(id)equal;
- (UIDictationMultilingualString)initWithCoder:(id)coder;
- (UIDictationMultilingualString)initWithDictionary:(id)dictionary;
- (UIDictationMultilingualString)initWithText:(id)text forLanguage:(id)language;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationMultilingualString

- (UIDictationMultilingualString)initWithText:(id)text forLanguage:(id)language
{
  textCopy = text;
  languageCopy = language;
  v14.receiver = self;
  v14.super_class = UIDictationMultilingualString;
  v8 = [(UIDictationMultilingualString *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;

    v11 = [languageCopy copy];
    dominantLanguage = v8->_dominantLanguage;
    v8->_dominantLanguage = v11;
  }

  return v8;
}

- (UIDictationMultilingualString)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"text"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"language"];

  if (v5)
  {
    self = [(UIDictationMultilingualString *)self initWithText:v5 forLanguage:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UIDictationMultilingualString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UIDictationMultilingualString;
  v5 = [(UIDictationMultilingualString *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    dominantLanguage = v5->_dominantLanguage;
    v5->_dominantLanguage = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeObject:self->_dominantLanguage forKey:@"language"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIDictationMultilingualString);
  v5 = [(NSString *)self->_text copy];
  [(UIDictationMultilingualString *)v4 setText:v5];

  v6 = [(NSString *)self->_dominantLanguage copy];
  [(UIDictationMultilingualString *)v4 setDominantLanguage:v6];

  [(UIDictationMultilingualString *)v4 setCorrectionIdentifier:self->_correctionIdentifier];
  [(UIDictationMultilingualString *)v4 setInteractionIdentifier:self->_interactionIdentifier];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  text = [(UIDictationMultilingualString *)self text];
  text2 = [equalCopy text];
  if ([text isEqualToString:text2])
  {
    dominantLanguage = [(UIDictationMultilingualString *)self dominantLanguage];
    dominantLanguage2 = [equalCopy dominantLanguage];
    v9 = [dominantLanguage isEqualToString:dominantLanguage2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  text = [(UIDictationMultilingualString *)self text];
  v4 = [text hash];
  dominantLanguage = [(UIDictationMultilingualString *)self dominantLanguage];
  v6 = [dominantLanguage hash];

  return v6 ^ v4;
}

- (id)description
{
  dictionaryValue = [(UIDictationMultilingualString *)self dictionaryValue];
  v3 = [dictionaryValue description];

  return v3;
}

- (id)dictionaryValue
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = @"text";
  v7[1] = @"language";
  *v8 = vbslq_s8(vceqzq_s64(*&self->_text), vdupq_n_s64(&stru_1EFB14550), *&self->_text);
  v2 = MEMORY[0x1E695DF20];
  v3 = v8[1];
  v4 = v8[0];
  v5 = [v2 dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end