@interface TypistKeyboardGreek
- (TypistKeyboardGreek)initWithCoder:(id)a3;
- (id)addAccentKeyAction:(id)a3;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)preprocessing;
- (void)setupSentenceBoundryStrings;
@end

@implementation TypistKeyboardGreek

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardGreek;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"el_GR"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardGreek;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:a3 options:a4];
  if (!v5)
  {
    [(TypistKeyboardGreek *)self setAcuteKeys:&unk_28802A708];
  }

  return v5;
}

- (void)setupSentenceBoundryStrings
{
  [(TypistKeyboard *)self setSentenceDelimitingCharacters:@"'’”;"];
  [(TypistKeyboard *)self setSentenceTrailingCharacters:@".?!»"];

  -[TypistKeyboard setSentencePrefixingCharacters:](self, "setSentencePrefixingCharacters:", @"¡¿'‘“(«");
}

- (void)preprocessing
{
  v15.receiver = self;
  v15.super_class = TypistKeyboardGreek;
  [(TypistKeyboard *)&v15 preprocessing];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  if (CGRectGetHeight(v16) <= 1194.0)
  {

    goto LABEL_6;
  }

  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  if (CGRectGetHeight(v17) <= 1194.0)
  {
LABEL_7:

    return;
  }

  v5 = [(TypistKeyboard *)self isFloating];

  if (v5)
  {
LABEL_6:
    v6 = [(TypistKeyboard *)self keyPlanes];
    v7 = [(TypistKeyboard *)self defaultPlaneName];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 objectForKeyedSubscript:@"´"];
    [(TypistKeyboardGreek *)self setAcuteDiacriticKey:v9];

    v3 = [(TypistKeyboard *)self keyPlanes];
    v4 = [(TypistKeyboard *)self defaultPlaneName];
    v10 = [v3 objectForKeyedSubscript:v4];
    v11 = [v10 objectForKeyedSubscript:@"σ"];
    v12 = [(TypistKeyboard *)self keyPlanes];
    v13 = [(TypistKeyboard *)self defaultPlaneName];
    v14 = [v12 objectForKeyedSubscript:v13];
    [v14 setObject:v11 forKeyedSubscript:@"ς"];

    goto LABEL_7;
  }
}

- (id)getPostfixKey:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  Height = CGRectGetHeight(v17);
  if (Height > 1194.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
    if (CGRectGetHeight(v18) <= 1194.0 || ![(TypistKeyboard *)self isFloating])
    {
      v14 = v5;
LABEL_12:

      goto LABEL_13;
    }
  }

  v8 = [(TypistKeyboardGreek *)self acuteKeys];
  if (v8)
  {
    v9 = v8;
    v10 = [(TypistKeyboardGreek *)self acuteKeys];
    v11 = [v10 objectForKeyedSubscript:v5];
    if (v11)
    {
      v12 = v11;
      v13 = [(TypistKeyboardGreek *)self acuteKeys];
      v14 = [v13 objectForKeyedSubscript:v5];
    }

    else
    {
      v14 = v5;
    }
  }

  else
  {
    v14 = v5;
  }

  if (Height > 1194.0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (id)addAccentKeyAction:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 _referenceBounds];
  Height = CGRectGetHeight(v20);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v21) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    v8 = [(TypistKeyboardGreek *)self acuteKeys];
    if (v8)
    {
      v9 = v8;
      v10 = [(TypistKeyboardGreek *)self acuteDiacriticKey];
      if (v10)
      {
        v11 = v10;
        v12 = [(TypistKeyboardGreek *)self acuteKeys];
        v13 = [v12 objectForKeyedSubscript:v5];
        if (v13)
        {
          v14 = [(TypistKeyboardGreek *)self acuteDiacriticKey];
          v18[0] = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        }

        else
        {
          v15 = 0;
        }

LABEL_13:
        if (Height <= 1194.0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (TypistKeyboardGreek)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TypistKeyboardGreek;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acuteKeys"];
    acuteKeys = v5->_acuteKeys;
    v5->_acuteKeys = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acuteDiacriticKey"];
    acuteDiacriticKey = v5->_acuteDiacriticKey;
    v5->_acuteDiacriticKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TypistKeyboardGreek;
  [(TypistKeyboard *)&v7 encodeWithCoder:v4];
  acuteKeys = self->_acuteKeys;
  if (acuteKeys)
  {
    [v4 encodeObject:acuteKeys forKey:@"acuteKeys"];
  }

  acuteDiacriticKey = self->_acuteDiacriticKey;
  if (acuteDiacriticKey)
  {
    [v4 encodeObject:acuteDiacriticKey forKey:@"acuteDiacriticKey"];
  }
}

@end