@interface TypistKeyboardHawaiian
- (TypistKeyboardHawaiian)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)preprocessing;
- (void)setupSentenceBoundryStrings;
@end

@implementation TypistKeyboardHawaiian

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardHawaiian;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"haw"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardHawaiian;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v9) <= 1194.0)
  {

    goto LABEL_6;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 _referenceBounds];
  if (CGRectGetHeight(v10) <= 1194.0)
  {
LABEL_7:

    return;
  }

  isFloating = [(TypistKeyboard *)self isFloating];

  if (isFloating)
  {
LABEL_6:
    mainScreen = [(TypistKeyboard *)self keyPlanes];
    mainScreen2 = [(TypistKeyboard *)self defaultPlaneName];
    v6 = [mainScreen objectForKeyedSubscript:mainScreen2];
    v7 = [v6 objectForKeyedSubscript:@"¯"];
    [(TypistKeyboardHawaiian *)self setKahakoDiacriticKey:v7];

    goto LABEL_7;
  }
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  Height = CGRectGetHeight(v15);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v16) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    kahakoKeys = [(TypistKeyboardHawaiian *)self kahakoKeys];
    v9 = [kahakoKeys objectForKeyedSubscript:keyCopy];
    if (v9)
    {
      v10 = v9;
      kahakoKeys2 = [(TypistKeyboardHawaiian *)self kahakoKeys];
      v12 = [kahakoKeys2 objectForKeyedSubscript:keyCopy];
    }

    else
    {
      v12 = keyCopy;
    }

    if (Height <= 1194.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = keyCopy;
  }

LABEL_10:

  return v12;
}

- (id)addAccentKeyAction:(id)action
{
  v17[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  Height = CGRectGetHeight(v19);
  if (Height <= 1194.0 || ([MEMORY[0x277D759A0] mainScreen], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_referenceBounds"), CGRectGetHeight(v20) > 1194.0) && -[TypistKeyboard isFloating](self, "isFloating"))
  {
    kahakoKeys = [(TypistKeyboardHawaiian *)self kahakoKeys];
    v9 = [kahakoKeys objectForKeyedSubscript:actionCopy];
    if (v9)
    {
      v10 = v9;
      kahakoDiacriticKey = [(TypistKeyboardHawaiian *)self kahakoDiacriticKey];
      if (kahakoDiacriticKey)
      {
        v12 = kahakoDiacriticKey;
        kahakoDiacriticKey2 = [(TypistKeyboardHawaiian *)self kahakoDiacriticKey];
        v17[0] = kahakoDiacriticKey2;
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

- (TypistKeyboardHawaiian)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TypistKeyboardHawaiian;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kahakoKeys"];
    kahakoKeys = v5->_kahakoKeys;
    v5->_kahakoKeys = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kahakoDiacriticKey"];
    kahakoDiacriticKey = v5->_kahakoDiacriticKey;
    v5->_kahakoDiacriticKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TypistKeyboardHawaiian;
  [(TypistKeyboard *)&v7 encodeWithCoder:coderCopy];
  kahakoKeys = self->_kahakoKeys;
  if (kahakoKeys)
  {
    [coderCopy encodeObject:kahakoKeys forKey:@"kahakoKeys"];
  }

  kahakoDiacriticKey = self->_kahakoDiacriticKey;
  if (kahakoDiacriticKey)
  {
    [coderCopy encodeObject:kahakoDiacriticKey forKey:@"kahakoDiacriticKey"];
  }
}

@end