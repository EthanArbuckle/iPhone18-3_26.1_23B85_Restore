@interface UIImageConfiguration
+ (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale;
+ (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_completeConfiguration:(void *)configuration fromConfiguration:;
+ (id)_unspecifiedConfiguration;
- (BOOL)_isEquivalentToConfiguration:(id)configuration;
- (BOOL)_shouldApplyConfiguration:(id)configuration;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (NSString)debugDescription;
- (NSString)description;
- (UIImageConfiguration)configurationByApplyingConfiguration:(UIImageConfiguration *)otherConfiguration;
- (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale;
- (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIImageConfiguration)initWithCoder:(id)coder;
- (UITraitCollection)_effectiveTraitCollectionForImageLookup;
- (_UISystemIconAppearance)_systemIconAppearance;
- (id)_configurationIgnoringDynamicType;
- (id)_configurationWithSystemIconAppearance:(id)appearance;
- (id)_initWithTraitCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_initWithConfiguration:(void *)configuration;
- (void)_applyConfigurationValuesTo:(id)to;
- (void)_setSystemIconAppearance:(_BYTE *)appearance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIImageConfiguration

- (UITraitCollection)_effectiveTraitCollectionForImageLookup
{
  traitCollection = self->_traitCollection;
  if (traitCollection)
  {
    v4 = traitCollection;
  }

  else
  {
    v4 = +[UITraitCollection _emptyTraitCollection];
  }

  v5 = v4;
  if (self->_ignoresDynamicType)
  {
    if (qword_1ED49ED58 != -1)
    {
      dispatch_once(&qword_1ED49ED58, &__block_literal_global_38_0);
    }

    v6 = qword_1ED49ED50;
    v7 = [v5 _traitCollectionByReplacingObject:v6 forTraitToken:0x1EFE32440];

    v5 = v7;
  }

  return v5;
}

- (id)_initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = UIImageConfiguration;
  v5 = [(UIImageConfiguration *)&v9 init];
  if (v5)
  {
    _traitCollectionRelevantForImageConfiguration = [(UITraitCollection *)collectionCopy _traitCollectionRelevantForImageConfiguration];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = _traitCollectionRelevantForImageConfiguration;
  }

  return v5;
}

- (uint64_t)_initWithConfiguration:(void *)configuration
{
  if (configuration)
  {
    v3 = a2;
    _unspecifiedConfiguration = [objc_opt_class() _unspecifiedConfiguration];
    v5 = [_unspecifiedConfiguration configurationByApplyingConfiguration:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_unspecifiedConfiguration
{
  if (_MergedGlobals_1158 != -1)
  {
    dispatch_once(&_MergedGlobals_1158, &__block_literal_global_328);
  }

  v3 = qword_1ED49ED48;

  return v3;
}

void __49__UIImageConfiguration__unspecifiedConfiguration__block_invoke()
{
  v0 = [[UIImageConfiguration alloc] _init];
  v1 = qword_1ED49ED48;
  qword_1ED49ED48 = v0;
}

- (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection
{
  _traitCollectionRelevantForImageConfiguration = [(UITraitCollection *)traitCollection _traitCollectionRelevantForImageConfiguration];
  v5 = self->_traitCollection;
  v6 = _traitCollectionRelevantForImageConfiguration;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  if (v6 && v7)
  {
    v9 = [(UITraitCollection *)v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = [(UIImageConfiguration *)self copy];
  objc_storeStrong(&selfCopy->_traitCollection, _traitCollectionRelevantForImageConfiguration);
LABEL_10:

  return selfCopy;
}

+ (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = [[self alloc] _initWithTraitCollection:v4];

  return v5;
}

- (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale
{
  v5 = locale;
  v6 = self->_locale;
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v8 == v7)
  {

    goto LABEL_7;
  }

  if (v7 && v8)
  {
    v10 = [(NSLocale *)v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = [(UIImageConfiguration *)self copy];
  objc_storeStrong(&selfCopy->_locale, locale);
LABEL_10:

  return selfCopy;
}

+ (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale
{
  v4 = locale;
  _init = [[self alloc] _init];
  v6 = _init[3];
  _init[3] = v4;

  return _init;
}

- (id)_configurationIgnoringDynamicType
{
  if (self->_ignoresDynamicType)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(UIImageConfiguration *)self copy];
    selfCopy->_ignoresDynamicType = 1;
  }

  return selfCopy;
}

- (id)_configurationWithSystemIconAppearance:(id)appearance
{
  appearanceCopy = appearance;
  _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
  v6 = appearanceCopy;
  v7 = v6;
  if (_systemIconAppearance == v6)
  {

    goto LABEL_7;
  }

  if (v6 && _systemIconAppearance)
  {
    v8 = [_systemIconAppearance isEqual:v6];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = [(UIImageConfiguration *)self copy];
  [(UIImageConfiguration *)selfCopy _setSystemIconAppearance:v7];
LABEL_10:

  return selfCopy;
}

- (void)_setSystemIconAppearance:(_BYTE *)appearance
{
  v3 = a2;
  v4 = v3;
  if (appearance && (v3 || (appearance[8] & 1) != 0))
  {
    v6 = v3;
    objc_setAssociatedObject(appearance, &_UIImageConfigurationSystemIconAppearanceKey, v3, 1);
    v4 = v6;
    v5 = appearance[8] & 0xFE;
    if (v6)
    {
      ++v5;
    }

    appearance[8] = v5;
  }
}

- (_UISystemIconAppearance)_systemIconAppearance
{
  if (*&self->_flags)
  {
    v3 = objc_getAssociatedObject(self, &_UIImageConfigurationSystemIconAppearanceKey);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self != configurationCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && configurationCopy->_ignoresDynamicType == self->_ignoresDynamicType)
    {
      traitCollection = configurationCopy->_traitCollection;
      _systemIconAppearance = self->_traitCollection;
      v8 = traitCollection;
      _systemIconAppearance2 = v8;
      if (_systemIconAppearance == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!_systemIconAppearance || !v8)
        {
          goto LABEL_19;
        }

        v10 = [(UITraitCollection *)_systemIconAppearance isEqual:v8];

        if (!v10)
        {
          goto LABEL_21;
        }
      }

      locale = configurationCopy->_locale;
      _systemIconAppearance = self->_locale;
      v12 = locale;
      _systemIconAppearance2 = v12;
      if (_systemIconAppearance == v12)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!_systemIconAppearance || !v12)
        {
          goto LABEL_19;
        }

        v10 = [(UITraitCollection *)_systemIconAppearance isEqual:v12];

        if (!v10)
        {
          goto LABEL_21;
        }
      }

      if (((*&configurationCopy->_flags ^ *&self->_flags) & 1) == 0)
      {
        _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
        _systemIconAppearance2 = [(UIImageConfiguration *)configurationCopy _systemIconAppearance];
        LOBYTE(v10) = _deferringTokenEqualToToken(_systemIconAppearance, _systemIconAppearance2);
LABEL_19:

        goto LABEL_21;
      }
    }

    LOBYTE(v10) = 0;
    goto LABEL_21;
  }

  LOBYTE(v10) = 1;
LABEL_21:

  return v10;
}

- (BOOL)_isEquivalentToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    goto LABEL_29;
  }

  traitCollection = [(UIImageConfiguration *)self traitCollection];
  if (traitCollection)
  {
    traitCollection2 = [configurationCopy traitCollection];

    if (traitCollection2)
    {
      traitCollection3 = [(UIImageConfiguration *)self traitCollection];
      traitCollection4 = [configurationCopy traitCollection];
      v9 = [(UITraitCollection *)traitCollection3 _matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:traitCollection4];

      if (!v9)
      {
        goto LABEL_29;
      }

      LODWORD(traitCollection) = 1;
    }

    else
    {
      LODWORD(traitCollection) = 0;
    }
  }

  locale = [(UIImageConfiguration *)self locale];
  if (locale)
  {
    v11 = locale;
    locale2 = [configurationCopy locale];

    if (locale2)
    {
      locale3 = [(UIImageConfiguration *)self locale];
      locale4 = [configurationCopy locale];
      v15 = locale3;
      v16 = locale4;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if (!v15 || !v16)
        {

          goto LABEL_29;
        }

        v18 = [v15 isEqual:v16];

        if ((v18 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      LODWORD(traitCollection) = 1;
    }
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    LODWORD(traitCollection) = traitCollection | [configurationCopy _ignoresDynamicType];
  }

  if (*&self->_flags & 1) != 0 && (configurationCopy[8])
  {
    _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
    _systemIconAppearance2 = [configurationCopy _systemIconAppearance];
    v21 = _systemIconAppearance;
    v22 = _systemIconAppearance2;
    v23 = v22;
    if (v21 == v22)
    {

LABEL_27:
      LOBYTE(traitCollection) = 1;
      goto LABEL_30;
    }

    if (v21 && v22)
    {
      v24 = [v21 isEqual:v22];

      if ((v24 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_29:
    LOBYTE(traitCollection) = 0;
  }

LABEL_30:

  return traitCollection;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [objc_alloc(objc_opt_class()) _init];
  objc_storeStrong((_init + 16), self->_traitCollection);
  objc_storeStrong((_init + 24), self->_locale);
  *(_init + 12) = self->_ignoresDynamicType;
  _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
  [(UIImageConfiguration *)_init _setSystemIconAppearance:_systemIconAppearance];

  return _init;
}

- (UIImageConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"UITraitCollection"];

  v7 = [(UIImageConfiguration *)self _initWithTraitCollection:v6];
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"NSLocale"];
    locale = v7->_locale;
    v7->_locale = v9;

    if ([coderCopy containsValueForKey:@"UIIgnoresDynamicType"])
    {
      v7->_ignoresDynamicType = [coderCopy decodeBoolForKey:@"UIIgnoresDynamicType"];
    }

    if ([coderCopy containsValueForKey:@"_UISystemIconAppearance"])
    {
      v11 = objc_opt_self();
      v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"_UISystemIconAppearance"];
      [(UIImageConfiguration *)v7 _setSystemIconAppearance:v12];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  traitCollection = self->_traitCollection;
  if (traitCollection)
  {
    [coderCopy encodeObject:traitCollection forKey:@"UITraitCollection"];
  }

  locale = self->_locale;
  if (locale)
  {
    [coderCopy encodeObject:locale forKey:@"NSLocale"];
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    [coderCopy encodeBool:self->_ignoresDynamicType forKey:@"UIIgnoresDynamicType"];
  }

  if (*&self->_flags)
  {
    _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
    [coderCopy encodeObject:_systemIconAppearance forKey:@"_UISystemIconAppearance"];
  }
}

- (UIImageConfiguration)configurationByApplyingConfiguration:(UIImageConfiguration *)otherConfiguration
{
  v4 = otherConfiguration;
  if ([(UIImageConfiguration *)self _shouldApplyConfiguration:v4])
  {
    selfCopy = [(UIImageConfiguration *)self copy];
    [(UIImageConfiguration *)v4 _applyConfigurationValuesTo:selfCopy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)_shouldApplyConfiguration:(id)configuration
{
  if (configuration)
  {
    return [configuration _isUnspecified] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)_applyConfigurationValuesTo:(id)to
{
  toCopy = to;
  traitCollection = [toCopy traitCollection];
  v5 = self->_traitCollection;
  v6 = v5;
  if (traitCollection && v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke;
    v15[3] = &unk_1E710D508;
    v15[4] = v5;
    v15[5] = traitCollection;
    v7 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v15];
  }

  else
  {
    if (traitCollection)
    {
      v8 = traitCollection;
    }

    else
    {
      v8 = v5;
    }

    v7 = v8;
  }

  v9 = toCopy[2];
  toCopy[2] = v7;

  locale = self->_locale;
  if (locale)
  {
    objc_storeStrong(toCopy + 3, locale);
  }

  v11 = dyld_program_sdk_at_least();
  ignoresDynamicType = self->_ignoresDynamicType;
  if (v11)
  {
    if (!self->_ignoresDynamicType)
    {
      goto LABEL_14;
    }

    ignoresDynamicType = 1;
  }

  *(toCopy + 12) = ignoresDynamicType;
LABEL_14:
  if (*&self->_flags)
  {
    _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
    [(UIImageConfiguration *)toCopy _setSystemIconAppearance:_systemIconAppearance];
  }
}

+ (id)_completeConfiguration:(void *)configuration fromConfiguration:
{
  v4 = a2;
  configurationCopy = configuration;
  objc_opt_self();
  if (configurationCopy)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = configurationCopy;
    v10 = v13;
    goto LABEL_16;
  }

  v12 = _UICurrentImageTraitCollection();
  configurationCopy = [v12 imageConfiguration];

  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [(UIImageConfiguration *)v6 _initWithConfiguration:configurationCopy];

    configurationCopy = v7;
  }

  v8 = v4;
  v9 = configurationCopy;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (!v9)
    {

LABEL_14:
      v14 = [v10 configurationByApplyingConfiguration:v8];
      goto LABEL_15;
    }

    v11 = [v8 isEqual:v9];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v14 = v8;
LABEL_15:
  v13 = v14;
LABEL_16:

  return v13;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIImageConfiguration *)self description];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

- (NSString)description
{
  array = [MEMORY[0x1E695DF70] array];
  if (![(UIImageConfiguration *)self _isUnspecified])
  {
    traitCollection = self->_traitCollection;
    if (traitCollection)
    {
      v5 = MEMORY[0x1E696AEC0];
      _traitsDescription = [(UITraitCollection *)traitCollection _traitsDescription];
      v7 = [v5 stringWithFormat:@"traits=(%@)", _traitsDescription];
      [array addObject:v7];
    }

    if (self->_locale)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"locale=(%@)", self->_locale];
      [array addObject:v8];
    }

    if (self->_ignoresDynamicType)
    {
      [array addObject:@"ignores dynamic type"];
    }

    if (*&self->_flags)
    {
      v9 = MEMORY[0x1E696AEC0];
      _systemIconAppearance = [(UIImageConfiguration *)self _systemIconAppearance];
      v11 = [v9 stringWithFormat:@"_systemIconAppearance=(%@)", _systemIconAppearance];
      [array addObject:v11];
    }
  }

  if ([array count])
  {
    v12 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"unspecified";
  }

  return v12;
}

@end