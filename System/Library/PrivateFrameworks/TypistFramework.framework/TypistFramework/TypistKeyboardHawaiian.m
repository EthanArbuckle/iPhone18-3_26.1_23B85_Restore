@interface TypistKeyboardHawaiian
- (TypistKeyboardHawaiian)initWithCoder:(id)a3;
- (id)addAccentKeyAction:(id)a3;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)preprocessing;
- (void)setupSentenceBoundryStrings;
@end

@implementation TypistKeyboardHawaiian

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardHawaiian;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"haw"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardHawaiian;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:a3 options:a4];
  if (!v5)
  {
    [(TypistKeyboardHawaiian *)self setKahakoKeys:&unk_28802A730];
  }

  return v5;
}

- (void)setupSentenceBoundryStrings
{
  v3.receiver = self;
  v3.super_class = TypistKeyboardHawaiian;
  [(TypistKeyboard *)&v3 setupSentenceBoundryStrings];
  -[TypistKeyboard setSentencePrefixingCharacters:](self, "setSentencePrefixingCharacters:", @"¡¿'‘“(ʻ");
}

- (void)preprocessing
{
  v8.receiver = self;
  v8.super_class = TypistKeyboardHawaiian;
  [(TypistKeyboard *)&v8 preprocessing];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  if (CGRectGetHeight(v9) <= 1194.0)
  {

    goto LABEL_6;
  }

  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  if (CGRectGetHeight(v10) <= 1194.0)
  {
LABEL_7:

    return;
  }

  v5 = [(TypistKeyboard *)self isFloating];

  if (v5)
  {
LABEL_6:
    v3 = [(TypistKeyboard *)self keyPlanes];
    v4 = [(TypistKeyboard *)self defaultPlaneName];
    v6 = [v3 objectForKeyedSubscript:v4];
    v7 = [v6 objectForKeyedSubscript:@"¯"];
    [(TypistKeyboardHawaiian *)self setKahakoDiacriticKey:v7];

    goto LABEL_7;
  }
}

- (id)getPostfixKey:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  Height = CGRectGetHeight(v15);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v16) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    v8 = [(TypistKeyboardHawaiian *)self kahakoKeys];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = v9;
      v11 = [(TypistKeyboardHawaiian *)self kahakoKeys];
      v12 = [v11 objectForKeyedSubscript:v5];
    }

    else
    {
      v12 = v5;
    }

    if (Height <= 1194.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v5;
  }

LABEL_10:

  return v12;
}

- (id)addAccentKeyAction:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  Height = CGRectGetHeight(v19);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v20) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    v8 = [(TypistKeyboardHawaiian *)self kahakoKeys];
    v9 = [v8 objectForKeyedSubscript:v5];
    if (v9)
    {
      v10 = v9;
      v11 = [(TypistKeyboardHawaiian *)self kahakoDiacriticKey];
      if (v11)
      {
        v12 = v11;
        v13 = [(TypistKeyboardHawaiian *)self kahakoDiacriticKey];
        v17[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

        goto LABEL_10;
      }
    }

    v14 = 0;
LABEL_10:
    if (Height <= 1194.0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (TypistKeyboardHawaiian)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TypistKeyboardHawaiian;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kahakoKeys"];
    kahakoKeys = v5->_kahakoKeys;
    v5->_kahakoKeys = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kahakoDiacriticKey"];
    kahakoDiacriticKey = v5->_kahakoDiacriticKey;
    v5->_kahakoDiacriticKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TypistKeyboardHawaiian;
  [(TypistKeyboard *)&v7 encodeWithCoder:v4];
  kahakoKeys = self->_kahakoKeys;
  if (kahakoKeys)
  {
    [v4 encodeObject:kahakoKeys forKey:@"kahakoKeys"];
  }

  kahakoDiacriticKey = self->_kahakoDiacriticKey;
  if (kahakoDiacriticKey)
  {
    [v4 encodeObject:kahakoDiacriticKey forKey:@"kahakoDiacriticKey"];
  }
}

@end