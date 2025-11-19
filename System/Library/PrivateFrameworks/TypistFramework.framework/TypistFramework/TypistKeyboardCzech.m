@interface TypistKeyboardCzech
- (TypistKeyboardCzech)initWithCoder:(id)a3;
- (id)addAccentKeyAction:(id)a3;
- (id)convertRepresentedStringsIfNecessary:(id)a3;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)preprocessing;
@end

@implementation TypistKeyboardCzech

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardCzech;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"cs_CZ"];
}

- (id)convertRepresentedStringsIfNecessary:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"̌"])
  {
    v4 = @"ˇ";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardCzech;
  v5 = [(TypistKeyboard *)&v7 setupKeyboardInfo:a3 options:a4];
  if (!v5)
  {
    [(TypistKeyboardCzech *)self setAcuteKeys:&unk_28802A5A0];
    [(TypistKeyboardCzech *)self setCaronKeys:&unk_28802A5C8];
  }

  return v5;
}

- (id)getPostfixKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _referenceBounds];
  if (CGRectGetHeight(v17) <= 1194.0)
  {
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 _referenceBounds];
    if (CGRectGetHeight(v18) <= 1194.0)
    {

      goto LABEL_12;
    }

    v7 = [(TypistKeyboard *)self isFloating];

    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = [(TypistKeyboardCzech *)self acuteKeys];
  v9 = [v8 objectForKeyedSubscript:v4];

  if (v9)
  {
    v10 = [(TypistKeyboardCzech *)self acuteKeys];
LABEL_11:
    v13 = v10;
    v14 = [v10 objectForKeyedSubscript:v4];

    goto LABEL_13;
  }

  v11 = [(TypistKeyboardCzech *)self caronKeys];
  v12 = [v11 objectForKeyedSubscript:v4];

  if (v12)
  {
    v10 = [(TypistKeyboardCzech *)self caronKeys];
    goto LABEL_11;
  }

LABEL_12:
  v14 = v4;
LABEL_13:

  return v14;
}

- (void)preprocessing
{
  v7.receiver = self;
  v7.super_class = TypistKeyboardCzech;
  [(TypistKeyboard *)&v7 preprocessing];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  if (CGRectGetHeight(v8) <= 1194.0)
  {

    goto LABEL_6;
  }

  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  if (CGRectGetHeight(v9) <= 1194.0)
  {

    goto LABEL_8;
  }

  v5 = [(TypistKeyboard *)self isFloating];

  if (v5)
  {
LABEL_6:
    v6 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"´"];
    [(TypistKeyboardCzech *)self setAcuteDiacriticKey:v6];

    v3 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ˇ"];
    [(TypistKeyboardCzech *)self setCaronDiacriticKey:v3];
LABEL_8:
  }
}

- (id)addAccentKeyAction:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _referenceBounds];
  if (CGRectGetHeight(v24) <= 1194.0)
  {
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 _referenceBounds];
    if (CGRectGetHeight(v25) <= 1194.0)
    {

LABEL_15:
      goto LABEL_16;
    }

    v7 = [(TypistKeyboard *)self isFloating];

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v8 = [(TypistKeyboardCzech *)self acuteKeys];
  v9 = [v8 objectForKeyedSubscript:v4];
  if (v9)
  {
    v10 = v9;
    v11 = [(TypistKeyboardCzech *)self acuteDiacriticKey];

    if (v11)
    {
      v12 = [(TypistKeyboardCzech *)self acuteDiacriticKey];
      v22[0] = v12;
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

  v5 = [(TypistKeyboardCzech *)self caronKeys];
  v15 = [v5 objectForKeyedSubscript:v4];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [(TypistKeyboardCzech *)self caronDiacriticKey];

  if (v17)
  {
    v12 = [(TypistKeyboardCzech *)self caronDiacriticKey];
    v21 = v12;
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

- (TypistKeyboardCzech)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TypistKeyboardCzech;
  v5 = [(TypistKeyboard *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acuteKeys"];
    acuteKeys = v5->_acuteKeys;
    v5->_acuteKeys = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caronKeys"];
    caronKeys = v5->_caronKeys;
    v5->_caronKeys = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acuteDiacriticKey"];
    acuteDiacriticKey = v5->_acuteDiacriticKey;
    v5->_acuteDiacriticKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caronDiacriticKey"];
    caronDiacriticKey = v5->_caronDiacriticKey;
    v5->_caronDiacriticKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TypistKeyboardCzech;
  [(TypistKeyboard *)&v9 encodeWithCoder:v4];
  acuteKeys = self->_acuteKeys;
  if (acuteKeys)
  {
    [v4 encodeObject:acuteKeys forKey:@"acuteKeys"];
  }

  caronKeys = self->_caronKeys;
  if (caronKeys)
  {
    [v4 encodeObject:caronKeys forKey:@"caronKeys"];
  }

  acuteDiacriticKey = self->_acuteDiacriticKey;
  if (acuteDiacriticKey)
  {
    [v4 encodeObject:acuteDiacriticKey forKey:@"acuteDiacriticKey"];
  }

  caronDiacriticKey = self->_caronDiacriticKey;
  if (caronDiacriticKey)
  {
    [v4 encodeObject:caronDiacriticKey forKey:@"caronDiacriticKey"];
  }
}

@end