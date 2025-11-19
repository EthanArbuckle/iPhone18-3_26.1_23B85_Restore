@interface UIDictationMultilingualString
- (BOOL)isEqual:(id)a3;
- (UIDictationMultilingualString)initWithCoder:(id)a3;
- (UIDictationMultilingualString)initWithDictionary:(id)a3;
- (UIDictationMultilingualString)initWithText:(id)a3 forLanguage:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationMultilingualString

- (UIDictationMultilingualString)initWithText:(id)a3 forLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIDictationMultilingualString;
  v8 = [(UIDictationMultilingualString *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    text = v8->_text;
    v8->_text = v9;

    v11 = [v7 copy];
    dominantLanguage = v8->_dominantLanguage;
    v8->_dominantLanguage = v11;
  }

  return v8;
}

- (UIDictationMultilingualString)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"text"];
  v6 = [v4 objectForKeyedSubscript:@"language"];

  if (v5)
  {
    self = [(UIDictationMultilingualString *)self initWithText:v5 forLanguage:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UIDictationMultilingualString)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIDictationMultilingualString;
  v5 = [(UIDictationMultilingualString *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    dominantLanguage = v5->_dominantLanguage;
    v5->_dominantLanguage = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeObject:self->_dominantLanguage forKey:@"language"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(UIDictationMultilingualString *)self text];
  v6 = [v4 text];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(UIDictationMultilingualString *)self dominantLanguage];
    v8 = [v4 dominantLanguage];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(UIDictationMultilingualString *)self text];
  v4 = [v3 hash];
  v5 = [(UIDictationMultilingualString *)self dominantLanguage];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v2 = [(UIDictationMultilingualString *)self dictionaryValue];
  v3 = [v2 description];

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