@interface TypistKeyboardGreek
- (TypistKeyboardGreek)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)preprocessing;
- (void)setupSentenceBoundryStrings;
@end

@implementation TypistKeyboardGreek

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardGreek;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"el_GR"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardGreek;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v16) <= 1194.0)
  {

    goto LABEL_6;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 _referenceBounds];
  if (CGRectGetHeight(v17) <= 1194.0)
  {
LABEL_7:

    return;
  }

  isFloating = [(TypistKeyboard *)self isFloating];

  if (isFloating)
  {
LABEL_6:
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
    v8 = [keyPlanes objectForKeyedSubscript:defaultPlaneName];
    v9 = [v8 objectForKeyedSubscript:@"´"];
    [(TypistKeyboardGreek *)self setAcuteDiacriticKey:v9];

    mainScreen = [(TypistKeyboard *)self keyPlanes];
    mainScreen2 = [(TypistKeyboard *)self defaultPlaneName];
    v10 = [mainScreen objectForKeyedSubscript:mainScreen2];
    v11 = [v10 objectForKeyedSubscript:@"σ"];
    keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
    defaultPlaneName2 = [(TypistKeyboard *)self defaultPlaneName];
    v14 = [keyPlanes2 objectForKeyedSubscript:defaultPlaneName2];
    [v14 setObject:v11 forKeyedSubscript:@"ς"];

    goto LABEL_7;
  }
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  Height = CGRectGetHeight(v17);
  if (Height > 1194.0)
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
    if (CGRectGetHeight(v18) <= 1194.0 || ![(TypistKeyboard *)self isFloating])
    {
      v14 = keyCopy;
LABEL_12:

      goto LABEL_13;
    }
  }

  acuteKeys = [(TypistKeyboardGreek *)self acuteKeys];
  if (acuteKeys)
  {
    v9 = acuteKeys;
    acuteKeys2 = [(TypistKeyboardGreek *)self acuteKeys];
    v11 = [acuteKeys2 objectForKeyedSubscript:keyCopy];
    if (v11)
    {
      v12 = v11;
      acuteKeys3 = [(TypistKeyboardGreek *)self acuteKeys];
      v14 = [acuteKeys3 objectForKeyedSubscript:keyCopy];
    }

    else
    {
      v14 = keyCopy;
    }
  }

  else
  {
    v14 = keyCopy;
  }

  if (Height > 1194.0)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v14;
}

- (id)addAccentKeyAction:(id)action
{
  v18[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  Height = CGRectGetHeight(v20);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v21) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    acuteKeys = [(TypistKeyboardGreek *)self acuteKeys];
    if (acuteKeys)
    {
      v9 = acuteKeys;
      acuteDiacriticKey = [(TypistKeyboardGreek *)self acuteDiacriticKey];
      if (acuteDiacriticKey)
      {
        v11 = acuteDiacriticKey;
        acuteKeys2 = [(TypistKeyboardGreek *)self acuteKeys];
        v13 = [acuteKeys2 objectForKeyedSubscript:actionCopy];
        if (v13)
        {
          acuteDiacriticKey2 = [(TypistKeyboardGreek *)self acuteDiacriticKey];
          v18[0] = acuteDiacriticKey2;
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

- (TypistKeyboardGreek)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TypistKeyboardGreek;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acuteKeys"];
    acuteKeys = v5->_acuteKeys;
    v5->_acuteKeys = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acuteDiacriticKey"];
    acuteDiacriticKey = v5->_acuteDiacriticKey;
    v5->_acuteDiacriticKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TypistKeyboardGreek;
  [(TypistKeyboard *)&v7 encodeWithCoder:coderCopy];
  acuteKeys = self->_acuteKeys;
  if (acuteKeys)
  {
    [coderCopy encodeObject:acuteKeys forKey:@"acuteKeys"];
  }

  acuteDiacriticKey = self->_acuteDiacriticKey;
  if (acuteDiacriticKey)
  {
    [coderCopy encodeObject:acuteDiacriticKey forKey:@"acuteDiacriticKey"];
  }
}

@end