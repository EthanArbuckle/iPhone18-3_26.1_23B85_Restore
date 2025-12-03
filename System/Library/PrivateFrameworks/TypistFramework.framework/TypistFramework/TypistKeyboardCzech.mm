@interface TypistKeyboardCzech
- (TypistKeyboardCzech)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)convertRepresentedStringsIfNecessary:(id)necessary;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)preprocessing;
@end

@implementation TypistKeyboardCzech

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardCzech;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"cs_CZ"];
}

- (id)convertRepresentedStringsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy isEqualToString:@"̌"])
  {
    v4 = @"ˇ";
  }

  else
  {
    v4 = necessaryCopy;
  }

  return v4;
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardCzech;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardCzech *)self setAcuteKeys:&unk_28802A5A0];
    [(TypistKeyboardCzech *)self setCaronKeys:&unk_28802A5C8];
  }

  return v5;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v17) <= 1194.0)
  {
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
    if (CGRectGetHeight(v18) <= 1194.0)
    {

      goto LABEL_12;
    }

    isFloating = [(TypistKeyboard *)self isFloating];

    if (!isFloating)
    {
      goto LABEL_12;
    }
  }

  acuteKeys = [(TypistKeyboardCzech *)self acuteKeys];
  v9 = [acuteKeys objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    acuteKeys2 = [(TypistKeyboardCzech *)self acuteKeys];
LABEL_11:
    v13 = acuteKeys2;
    v14 = [acuteKeys2 objectForKeyedSubscript:keyCopy];

    goto LABEL_13;
  }

  caronKeys = [(TypistKeyboardCzech *)self caronKeys];
  v12 = [caronKeys objectForKeyedSubscript:keyCopy];

  if (v12)
  {
    acuteKeys2 = [(TypistKeyboardCzech *)self caronKeys];
    goto LABEL_11;
  }

LABEL_12:
  v14 = keyCopy;
LABEL_13:

  return v14;
}

- (void)preprocessing
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardCzech;
  [(TypistKeyboard *)&v7 preprocessing];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v8) <= 1194.0)
  {

    goto LABEL_6;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 _referenceBounds];
  if (CGRectGetHeight(v9) <= 1194.0)
  {

    goto LABEL_8;
  }

  isFloating = [(TypistKeyboard *)self isFloating];

  if (isFloating)
  {
LABEL_6:
    v6 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"´"];
    [(TypistKeyboardCzech *)self setAcuteDiacriticKey:v6];

    mainScreen = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ˇ"];
    [(TypistKeyboardCzech *)self setCaronDiacriticKey:mainScreen];
LABEL_8:
  }
}

- (id)addAccentKeyAction:(id)action
{
  v22[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v24) <= 1194.0)
  {
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
    if (CGRectGetHeight(v25) <= 1194.0)
    {

LABEL_15:
      goto LABEL_16;
    }

    isFloating = [(TypistKeyboard *)self isFloating];

    if (!isFloating)
    {
      goto LABEL_16;
    }
  }

  acuteKeys = [(TypistKeyboardCzech *)self acuteKeys];
  v9 = [acuteKeys objectForKeyedSubscript:actionCopy];
  if (v9)
  {
    v10 = v9;
    acuteDiacriticKey = [(TypistKeyboardCzech *)self acuteDiacriticKey];

    if (acuteDiacriticKey)
    {
      acuteDiacriticKey2 = [(TypistKeyboardCzech *)self acuteDiacriticKey];
      v22[0] = acuteDiacriticKey2;
      v13 = MEMORY[0x277CBEA60];
      v14 = v22;
LABEL_14:
      v18 = [v13 arrayWithObjects:v14 count:1];

      goto LABEL_17;
    }
  }

  else
  {
  }

  mainScreen = [(TypistKeyboardCzech *)self caronKeys];
  v15 = [mainScreen objectForKeyedSubscript:actionCopy];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  caronDiacriticKey = [(TypistKeyboardCzech *)self caronDiacriticKey];

  if (caronDiacriticKey)
  {
    acuteDiacriticKey2 = [(TypistKeyboardCzech *)self caronDiacriticKey];
    v21 = acuteDiacriticKey2;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v21;
    goto LABEL_14;
  }

LABEL_16:
  v18 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (TypistKeyboardCzech)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TypistKeyboardCzech;
  v5 = [(TypistKeyboard *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acuteKeys"];
    acuteKeys = v5->_acuteKeys;
    v5->_acuteKeys = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caronKeys"];
    caronKeys = v5->_caronKeys;
    v5->_caronKeys = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acuteDiacriticKey"];
    acuteDiacriticKey = v5->_acuteDiacriticKey;
    v5->_acuteDiacriticKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caronDiacriticKey"];
    caronDiacriticKey = v5->_caronDiacriticKey;
    v5->_caronDiacriticKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardCzech;
  [(TypistKeyboard *)&v9 encodeWithCoder:coderCopy];
  acuteKeys = self->_acuteKeys;
  if (acuteKeys)
  {
    [coderCopy encodeObject:acuteKeys forKey:@"acuteKeys"];
  }

  caronKeys = self->_caronKeys;
  if (caronKeys)
  {
    [coderCopy encodeObject:caronKeys forKey:@"caronKeys"];
  }

  acuteDiacriticKey = self->_acuteDiacriticKey;
  if (acuteDiacriticKey)
  {
    [coderCopy encodeObject:acuteDiacriticKey forKey:@"acuteDiacriticKey"];
  }

  caronDiacriticKey = self->_caronDiacriticKey;
  if (caronDiacriticKey)
  {
    [coderCopy encodeObject:caronDiacriticKey forKey:@"caronDiacriticKey"];
  }
}

@end