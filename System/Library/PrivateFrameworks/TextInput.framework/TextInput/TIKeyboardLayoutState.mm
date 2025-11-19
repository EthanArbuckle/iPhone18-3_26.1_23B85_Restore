@interface TIKeyboardLayoutState
- (BOOL)isEqual:(id)a3;
- (NSString)hardwareLayout;
- (NSString)softwareLayout;
- (TIKeyboardLayoutState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardLayoutState

- (NSString)softwareLayout
{
  v2 = [(TIKeyboardLayoutState *)self inputMode];
  v3 = TIInputModeGetComponentsFromIdentifier(v2);
  v4 = [v3 objectForKeyedSubscript:@"sw"];

  return v4;
}

- (NSString)hardwareLayout
{
  v2 = [(TIKeyboardLayoutState *)self inputMode];
  v3 = TIInputModeGetComponentsFromIdentifier(v2);
  v4 = [v3 objectForKeyedSubscript:@"hw"];

  return v4;
}

- (unint64_t)hash
{
  if ([(TIKeyboardLayoutState *)self hasCandidateKey])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [(TIKeyboardLayoutState *)self hasAccentKey];
  if ([(TIKeyboardLayoutState *)self canMultitap])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | (4 * v4) | [(TIKeyboardLayoutState *)self isAlphabeticPlane];
  if ([(TIKeyboardLayoutState *)self isKanaPlane])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (4 * v6) | [(TIKeyboardLayoutState *)self diacriticForwardCompose];
  v9 = 257 * ([(TIKeyboardLayoutState *)self userInterfaceIdiom]& 3 | (4 * v8));
  v10 = [(TIKeyboardLayoutState *)self inputMode];
  v11 = v9 + [v10 hash];

  v12 = [(TIKeyboardLayoutState *)self layoutTag];
  v13 = [v12 hash];

  return 257 * v11 + v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TIKeyboardLayoutState *)self inputMode];
    v7 = [v5 inputMode];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TIKeyboardLayoutState *)self inputMode];
      v10 = [v5 inputMode];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v13 = [(TIKeyboardLayoutState *)self hasCandidateKey];
    if (v13 != [v5 hasCandidateKey])
    {
      goto LABEL_15;
    }

    v14 = [(TIKeyboardLayoutState *)self hasAccentKey];
    if (v14 != [v5 hasAccentKey])
    {
      goto LABEL_15;
    }

    v15 = [(TIKeyboardLayoutState *)self canMultitap];
    if (v15 != [v5 canMultitap])
    {
      goto LABEL_15;
    }

    v16 = [(TIKeyboardLayoutState *)self isAlphabeticPlane];
    if (v16 != [v5 isAlphabeticPlane])
    {
      goto LABEL_15;
    }

    v17 = [(TIKeyboardLayoutState *)self isKanaPlane];
    if (v17 != [v5 isKanaPlane])
    {
      goto LABEL_15;
    }

    v18 = [(TIKeyboardLayoutState *)self diacriticForwardCompose];
    if (v18 != [v5 diacriticForwardCompose])
    {
      goto LABEL_15;
    }

    v19 = [(TIKeyboardLayoutState *)self layoutTag];
    v20 = [v5 layoutTag];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(TIKeyboardLayoutState *)self layoutTag];
      v23 = [v5 layoutTag];
      v24 = [v22 isEqualToString:v23];

      if (!v24)
      {
LABEL_15:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    v26 = [(TIKeyboardLayoutState *)self userInterfaceIdiom];
    v12 = v26 == [v5 userInterfaceIdiom];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(TIKeyboardLayoutState *)self inputMode];
  [v3 appendFormat:@"; inputMode = %@", v4];

  if ([(TIKeyboardLayoutState *)self hasCandidateKey])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"; hasCandidateKey = %s", v5];
  if ([(TIKeyboardLayoutState *)self hasAccentKey])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v3 appendFormat:@"; hasAccentKey = %s", v6];
  if ([(TIKeyboardLayoutState *)self canMultitap])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  [v3 appendFormat:@"; canMultitap = %s", v7];
  if ([(TIKeyboardLayoutState *)self isAlphabeticPlane])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  [v3 appendFormat:@"; isAlphabeticPlane = %s", v8];
  if ([(TIKeyboardLayoutState *)self isKanaPlane])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v3 appendFormat:@"; isKanaPlane = %s", v9];
  if ([(TIKeyboardLayoutState *)self diacriticForwardCompose])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  [v3 appendFormat:@"; diacriticForwardCompose = %s", v10];
  v11 = [(TIKeyboardLayoutState *)self layoutTag];

  if (v11)
  {
    v12 = [(TIKeyboardLayoutState *)self layoutTag];
    [v3 appendFormat:@"; layoutTag = %@", v12];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  inputMode = self->_inputMode;
  v8 = v4;
  if (inputMode)
  {
    [v4 encodeObject:inputMode forKey:@"inputMode"];
    v4 = v8;
  }

  if (self->_hasCandidateKey)
  {
    [v8 encodeBool:1 forKey:@"hasCandidateKey"];
    v4 = v8;
  }

  if (self->_hasAccentKey)
  {
    [v8 encodeBool:1 forKey:@"hasAccentKey"];
    v4 = v8;
  }

  if (self->_canMultitap)
  {
    [v8 encodeBool:1 forKey:@"canMultitap"];
    v4 = v8;
  }

  if (self->_isAlphabeticPlane)
  {
    [v8 encodeBool:1 forKey:@"isAlphabeticPlane"];
    v4 = v8;
  }

  if (self->_isKanaPlane)
  {
    [v8 encodeBool:1 forKey:@"isKanaPlane"];
    v4 = v8;
  }

  if (self->_diacriticForwardCompose)
  {
    [v8 encodeBool:1 forKey:@"diacriticForwardCompose"];
    v4 = v8;
  }

  layoutTag = self->_layoutTag;
  if (layoutTag)
  {
    [v8 encodeObject:layoutTag forKey:@"layoutTag"];
    v4 = v8;
  }

  userInterfaceIdiom = self->_userInterfaceIdiom;
  if (userInterfaceIdiom)
  {
    [v8 encodeInt:userInterfaceIdiom forKey:@"userInterfaceIdiom"];
    v4 = v8;
  }
}

- (TIKeyboardLayoutState)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TIKeyboardLayoutState;
  v5 = [(TIKeyboardLayoutState *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;

    v5->_hasCandidateKey = [v4 decodeBoolForKey:@"hasCandidateKey"];
    v5->_hasAccentKey = [v4 decodeBoolForKey:@"hasAccentKey"];
    v5->_canMultitap = [v4 decodeBoolForKey:@"canMultitap"];
    v5->_isAlphabeticPlane = [v4 decodeBoolForKey:@"isAlphabeticPlane"];
    v5->_isKanaPlane = [v4 decodeBoolForKey:@"isKanaPlane"];
    v5->_diacriticForwardCompose = [v4 decodeBoolForKey:@"diacriticForwardCompose"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutTag"];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v8;

    v5->_userInterfaceIdiom = [v4 decodeIntForKey:@"userInterfaceIdiom"];
    v10 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TIKeyboardLayoutState);
  if (v5)
  {
    v6 = [(NSString *)self->_inputMode copyWithZone:a3];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;

    v5->_hasCandidateKey = self->_hasCandidateKey;
    v5->_hasAccentKey = self->_hasAccentKey;
    v5->_canMultitap = self->_canMultitap;
    v5->_isAlphabeticPlane = self->_isAlphabeticPlane;
    v5->_isKanaPlane = self->_isKanaPlane;
    v5->_diacriticForwardCompose = self->_diacriticForwardCompose;
    v8 = [(NSString *)self->_layoutTag copyWithZone:a3];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v8;

    v5->_userInterfaceIdiom = self->_userInterfaceIdiom;
  }

  return v5;
}

@end