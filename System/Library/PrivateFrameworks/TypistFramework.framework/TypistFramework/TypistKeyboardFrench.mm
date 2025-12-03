@interface TypistKeyboardFrench
- (TypistKeyboardFrench)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)preprocessing;
@end

@implementation TypistKeyboardFrench

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardFrench;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"fr"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardFrench;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardFrench *)self setPostfixedKeys:&unk_28802A6E0];
  }

  return v5;
}

- (void)preprocessing
{
  v15.receiver = self;
  v15.super_class = TypistKeyboardFrench;
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
    [(TypistKeyboardFrench *)self setAccentKey:v9];

    mainScreen = [(TypistKeyboard *)self keyPlanes];
    mainScreen2 = [(TypistKeyboard *)self defaultPlaneName];
    v10 = [mainScreen objectForKeyedSubscript:mainScreen2];
    v11 = [v10 objectForKeyedSubscript:@"´"];
    keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
    defaultPlaneName2 = [(TypistKeyboard *)self defaultPlaneName];
    v14 = [keyPlanes2 objectForKeyedSubscript:defaultPlaneName2];
    [v14 setObject:v11 forKeyedSubscript:@"ˋ"];

    goto LABEL_7;
  }
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  accentKey = [(TypistKeyboardFrench *)self accentKey];
  if (!accentKey)
  {
    goto LABEL_11;
  }

  v6 = accentKey;
  postfixedKeys = [(TypistKeyboardFrench *)self postfixedKeys];
  v8 = [postfixedKeys objectForKeyedSubscript:keyCopy];
  if (v8)
  {
    v9 = v8;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v17) <= 1194.0)
    {

      goto LABEL_8;
    }

    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
    if (CGRectGetHeight(v18) > 1194.0)
    {
      isFloating = [(TypistKeyboard *)self isFloating];

      if (!isFloating)
      {
        goto LABEL_11;
      }

LABEL_8:
      postfixedKeys2 = [(TypistKeyboardFrench *)self postfixedKeys];
      v14 = [postfixedKeys2 objectForKeyedSubscript:keyCopy];

      goto LABEL_12;
    }
  }

LABEL_11:
  v14 = keyCopy;
LABEL_12:

  return v14;
}

- (id)addAccentKeyAction:(id)action
{
  v16[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  postfixedKeys = [(TypistKeyboardFrench *)self postfixedKeys];
  v6 = [postfixedKeys objectForKeyedSubscript:actionCopy];

  if (v6)
  {
    accentKey = [(TypistKeyboardFrench *)self accentKey];
    if (accentKey)
    {
      v8 = accentKey;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
      if (CGRectGetHeight(v18) <= 1194.0)
      {

        goto LABEL_8;
      }

      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
      if (CGRectGetHeight(v19) > 1194.0)
      {
        isFloating = [(TypistKeyboard *)self isFloating];

        if (!isFloating)
        {
          goto LABEL_12;
        }

LABEL_8:
        accentKey2 = [(TypistKeyboardFrench *)self accentKey];
        v16[0] = accentKey2;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v13 = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (TypistKeyboardFrench)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TypistKeyboardFrench;
  v5 = [(TypistKeyboard *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postfixedKeys"];
    postfixedKeys = v5->_postfixedKeys;
    v5->_postfixedKeys = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentKey"];
    accentKey = v5->_accentKey;
    v5->_accentKey = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TypistKeyboardFrench;
  [(TypistKeyboard *)&v7 encodeWithCoder:coderCopy];
  postfixedKeys = self->_postfixedKeys;
  if (postfixedKeys)
  {
    [coderCopy encodeObject:postfixedKeys forKey:@"postfixedKeys"];
  }

  accentKey = self->_accentKey;
  if (accentKey)
  {
    [coderCopy encodeObject:accentKey forKey:@"accentKey"];
  }
}

@end