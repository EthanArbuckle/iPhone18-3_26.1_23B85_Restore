@interface TIKeyboardLayoutState
- (BOOL)isEqual:(id)equal;
- (NSString)hardwareLayout;
- (NSString)softwareLayout;
- (TIKeyboardLayoutState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardLayoutState

- (NSString)softwareLayout
{
  inputMode = [(TIKeyboardLayoutState *)self inputMode];
  v3 = TIInputModeGetComponentsFromIdentifier(inputMode);
  v4 = [v3 objectForKeyedSubscript:@"sw"];

  return v4;
}

- (NSString)hardwareLayout
{
  inputMode = [(TIKeyboardLayoutState *)self inputMode];
  v3 = TIInputModeGetComponentsFromIdentifier(inputMode);
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
  inputMode = [(TIKeyboardLayoutState *)self inputMode];
  v11 = v9 + [inputMode hash];

  layoutTag = [(TIKeyboardLayoutState *)self layoutTag];
  v13 = [layoutTag hash];

  return 257 * v11 + v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    inputMode = [(TIKeyboardLayoutState *)self inputMode];
    inputMode2 = [v5 inputMode];
    v8 = inputMode2;
    if (inputMode == inputMode2)
    {
    }

    else
    {
      inputMode3 = [(TIKeyboardLayoutState *)self inputMode];
      inputMode4 = [v5 inputMode];
      v11 = [inputMode3 isEqualToString:inputMode4];

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    hasCandidateKey = [(TIKeyboardLayoutState *)self hasCandidateKey];
    if (hasCandidateKey != [v5 hasCandidateKey])
    {
      goto LABEL_15;
    }

    hasAccentKey = [(TIKeyboardLayoutState *)self hasAccentKey];
    if (hasAccentKey != [v5 hasAccentKey])
    {
      goto LABEL_15;
    }

    canMultitap = [(TIKeyboardLayoutState *)self canMultitap];
    if (canMultitap != [v5 canMultitap])
    {
      goto LABEL_15;
    }

    isAlphabeticPlane = [(TIKeyboardLayoutState *)self isAlphabeticPlane];
    if (isAlphabeticPlane != [v5 isAlphabeticPlane])
    {
      goto LABEL_15;
    }

    isKanaPlane = [(TIKeyboardLayoutState *)self isKanaPlane];
    if (isKanaPlane != [v5 isKanaPlane])
    {
      goto LABEL_15;
    }

    diacriticForwardCompose = [(TIKeyboardLayoutState *)self diacriticForwardCompose];
    if (diacriticForwardCompose != [v5 diacriticForwardCompose])
    {
      goto LABEL_15;
    }

    layoutTag = [(TIKeyboardLayoutState *)self layoutTag];
    layoutTag2 = [v5 layoutTag];
    v21 = layoutTag2;
    if (layoutTag == layoutTag2)
    {
    }

    else
    {
      layoutTag3 = [(TIKeyboardLayoutState *)self layoutTag];
      layoutTag4 = [v5 layoutTag];
      v24 = [layoutTag3 isEqualToString:layoutTag4];

      if (!v24)
      {
LABEL_15:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    userInterfaceIdiom = [(TIKeyboardLayoutState *)self userInterfaceIdiom];
    v12 = userInterfaceIdiom == [v5 userInterfaceIdiom];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  inputMode = [(TIKeyboardLayoutState *)self inputMode];
  [v3 appendFormat:@"; inputMode = %@", inputMode];

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
  layoutTag = [(TIKeyboardLayoutState *)self layoutTag];

  if (layoutTag)
  {
    layoutTag2 = [(TIKeyboardLayoutState *)self layoutTag];
    [v3 appendFormat:@"; layoutTag = %@", layoutTag2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inputMode = self->_inputMode;
  v8 = coderCopy;
  if (inputMode)
  {
    [coderCopy encodeObject:inputMode forKey:@"inputMode"];
    coderCopy = v8;
  }

  if (self->_hasCandidateKey)
  {
    [v8 encodeBool:1 forKey:@"hasCandidateKey"];
    coderCopy = v8;
  }

  if (self->_hasAccentKey)
  {
    [v8 encodeBool:1 forKey:@"hasAccentKey"];
    coderCopy = v8;
  }

  if (self->_canMultitap)
  {
    [v8 encodeBool:1 forKey:@"canMultitap"];
    coderCopy = v8;
  }

  if (self->_isAlphabeticPlane)
  {
    [v8 encodeBool:1 forKey:@"isAlphabeticPlane"];
    coderCopy = v8;
  }

  if (self->_isKanaPlane)
  {
    [v8 encodeBool:1 forKey:@"isKanaPlane"];
    coderCopy = v8;
  }

  if (self->_diacriticForwardCompose)
  {
    [v8 encodeBool:1 forKey:@"diacriticForwardCompose"];
    coderCopy = v8;
  }

  layoutTag = self->_layoutTag;
  if (layoutTag)
  {
    [v8 encodeObject:layoutTag forKey:@"layoutTag"];
    coderCopy = v8;
  }

  userInterfaceIdiom = self->_userInterfaceIdiom;
  if (userInterfaceIdiom)
  {
    [v8 encodeInt:userInterfaceIdiom forKey:@"userInterfaceIdiom"];
    coderCopy = v8;
  }
}

- (TIKeyboardLayoutState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TIKeyboardLayoutState;
  v5 = [(TIKeyboardLayoutState *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMode"];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;

    v5->_hasCandidateKey = [coderCopy decodeBoolForKey:@"hasCandidateKey"];
    v5->_hasAccentKey = [coderCopy decodeBoolForKey:@"hasAccentKey"];
    v5->_canMultitap = [coderCopy decodeBoolForKey:@"canMultitap"];
    v5->_isAlphabeticPlane = [coderCopy decodeBoolForKey:@"isAlphabeticPlane"];
    v5->_isKanaPlane = [coderCopy decodeBoolForKey:@"isKanaPlane"];
    v5->_diacriticForwardCompose = [coderCopy decodeBoolForKey:@"diacriticForwardCompose"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutTag"];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v8;

    v5->_userInterfaceIdiom = [coderCopy decodeIntForKey:@"userInterfaceIdiom"];
    v10 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TIKeyboardLayoutState);
  if (v5)
  {
    v6 = [(NSString *)self->_inputMode copyWithZone:zone];
    inputMode = v5->_inputMode;
    v5->_inputMode = v6;

    v5->_hasCandidateKey = self->_hasCandidateKey;
    v5->_hasAccentKey = self->_hasAccentKey;
    v5->_canMultitap = self->_canMultitap;
    v5->_isAlphabeticPlane = self->_isAlphabeticPlane;
    v5->_isKanaPlane = self->_isKanaPlane;
    v5->_diacriticForwardCompose = self->_diacriticForwardCompose;
    v8 = [(NSString *)self->_layoutTag copyWithZone:zone];
    layoutTag = v5->_layoutTag;
    v5->_layoutTag = v8;

    v5->_userInterfaceIdiom = self->_userInterfaceIdiom;
  }

  return v5;
}

@end