@interface UIImageConfiguration
+ (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale;
+ (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection;
+ (id)_completeConfiguration:(void *)a3 fromConfiguration:;
+ (id)_unspecifiedConfiguration;
- (BOOL)_isEquivalentToConfiguration:(id)a3;
- (BOOL)_shouldApplyConfiguration:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (UIImageConfiguration)configurationByApplyingConfiguration:(UIImageConfiguration *)otherConfiguration;
- (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale;
- (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIImageConfiguration)initWithCoder:(id)a3;
- (UITraitCollection)_effectiveTraitCollectionForImageLookup;
- (_UISystemIconAppearance)_systemIconAppearance;
- (id)_configurationIgnoringDynamicType;
- (id)_configurationWithSystemIconAppearance:(id)a3;
- (id)_initWithTraitCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_initWithConfiguration:(void *)a1;
- (void)_applyConfigurationValuesTo:(id)a3;
- (void)_setSystemIconAppearance:(_BYTE *)a1;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithTraitCollection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIImageConfiguration;
  v5 = [(UIImageConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [(UITraitCollection *)v4 _traitCollectionRelevantForImageConfiguration];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;
  }

  return v5;
}

- (uint64_t)_initWithConfiguration:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [objc_opt_class() _unspecifiedConfiguration];
    v5 = [v4 configurationByApplyingConfiguration:v3];
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
  v4 = [(UITraitCollection *)traitCollection _traitCollectionRelevantForImageConfiguration];
  v5 = self->_traitCollection;
  v6 = v4;
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
    v10 = self;
    goto LABEL_10;
  }

LABEL_9:
  v10 = [(UIImageConfiguration *)self copy];
  objc_storeStrong(&v10->_traitCollection, v4);
LABEL_10:

  return v10;
}

+ (UIImageConfiguration)configurationWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = traitCollection;
  v5 = [[a1 alloc] _initWithTraitCollection:v4];

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
    v11 = self;
    goto LABEL_10;
  }

LABEL_9:
  v11 = [(UIImageConfiguration *)self copy];
  objc_storeStrong(&v11->_locale, locale);
LABEL_10:

  return v11;
}

+ (UIImageConfiguration)configurationWithLocale:(NSLocale *)locale
{
  v4 = locale;
  v5 = [[a1 alloc] _init];
  v6 = v5[3];
  v5[3] = v4;

  return v5;
}

- (id)_configurationIgnoringDynamicType
{
  if (self->_ignoresDynamicType)
  {
    v2 = self;
  }

  else
  {
    v2 = [(UIImageConfiguration *)self copy];
    v2->_ignoresDynamicType = 1;
  }

  return v2;
}

- (id)_configurationWithSystemIconAppearance:(id)a3
{
  v4 = a3;
  v5 = [(UIImageConfiguration *)self _systemIconAppearance];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [v5 isEqual:v6];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = self;
    goto LABEL_10;
  }

LABEL_9:
  v9 = [(UIImageConfiguration *)self copy];
  [(UIImageConfiguration *)v9 _setSystemIconAppearance:v7];
LABEL_10:

  return v9;
}

- (void)_setSystemIconAppearance:(_BYTE *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && (v3 || (a1[8] & 1) != 0))
  {
    v6 = v3;
    objc_setAssociatedObject(a1, &_UIImageConfigurationSystemIconAppearanceKey, v3, 1);
    v4 = v6;
    v5 = a1[8] & 0xFE;
    if (v6)
    {
      ++v5;
    }

    a1[8] = v5;
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

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && v4->_ignoresDynamicType == self->_ignoresDynamicType)
    {
      traitCollection = v4->_traitCollection;
      v7 = self->_traitCollection;
      v8 = traitCollection;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v8)
        {
          goto LABEL_19;
        }

        v10 = [(UITraitCollection *)v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_21;
        }
      }

      locale = v4->_locale;
      v7 = self->_locale;
      v12 = locale;
      v9 = v12;
      if (v7 == v12)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v12)
        {
          goto LABEL_19;
        }

        v10 = [(UITraitCollection *)v7 isEqual:v12];

        if (!v10)
        {
          goto LABEL_21;
        }
      }

      if (((*&v4->_flags ^ *&self->_flags) & 1) == 0)
      {
        v7 = [(UIImageConfiguration *)self _systemIconAppearance];
        v9 = [(UIImageConfiguration *)v4 _systemIconAppearance];
        LOBYTE(v10) = _deferringTokenEqualToToken(v7, v9);
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

- (BOOL)_isEquivalentToConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = [(UIImageConfiguration *)self traitCollection];
  if (v5)
  {
    v6 = [v4 traitCollection];

    if (v6)
    {
      v7 = [(UIImageConfiguration *)self traitCollection];
      v8 = [v4 traitCollection];
      v9 = [(UITraitCollection *)v7 _matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:v8];

      if (!v9)
      {
        goto LABEL_29;
      }

      LODWORD(v5) = 1;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  v10 = [(UIImageConfiguration *)self locale];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 locale];

    if (v12)
    {
      v13 = [(UIImageConfiguration *)self locale];
      v14 = [v4 locale];
      v15 = v13;
      v16 = v14;
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

      LODWORD(v5) = 1;
    }
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    LODWORD(v5) = v5 | [v4 _ignoresDynamicType];
  }

  if (*&self->_flags & 1) != 0 && (v4[8])
  {
    v19 = [(UIImageConfiguration *)self _systemIconAppearance];
    v20 = [v4 _systemIconAppearance];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {

LABEL_27:
      LOBYTE(v5) = 1;
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
    LOBYTE(v5) = 0;
  }

LABEL_30:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) _init];
  objc_storeStrong((v4 + 16), self->_traitCollection);
  objc_storeStrong((v4 + 24), self->_locale);
  *(v4 + 12) = self->_ignoresDynamicType;
  v5 = [(UIImageConfiguration *)self _systemIconAppearance];
  [(UIImageConfiguration *)v4 _setSystemIconAppearance:v5];

  return v4;
}

- (UIImageConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"UITraitCollection"];

  v7 = [(UIImageConfiguration *)self _initWithTraitCollection:v6];
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"NSLocale"];
    locale = v7->_locale;
    v7->_locale = v9;

    if ([v4 containsValueForKey:@"UIIgnoresDynamicType"])
    {
      v7->_ignoresDynamicType = [v4 decodeBoolForKey:@"UIIgnoresDynamicType"];
    }

    if ([v4 containsValueForKey:@"_UISystemIconAppearance"])
    {
      v11 = objc_opt_self();
      v12 = [v4 decodeObjectOfClass:v11 forKey:@"_UISystemIconAppearance"];
      [(UIImageConfiguration *)v7 _setSystemIconAppearance:v12];
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  traitCollection = self->_traitCollection;
  if (traitCollection)
  {
    [v7 encodeObject:traitCollection forKey:@"UITraitCollection"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v7 encodeObject:locale forKey:@"NSLocale"];
  }

  if ([(UIImageConfiguration *)self _ignoresDynamicType])
  {
    [v7 encodeBool:self->_ignoresDynamicType forKey:@"UIIgnoresDynamicType"];
  }

  if (*&self->_flags)
  {
    v6 = [(UIImageConfiguration *)self _systemIconAppearance];
    [v7 encodeObject:v6 forKey:@"_UISystemIconAppearance"];
  }
}

- (UIImageConfiguration)configurationByApplyingConfiguration:(UIImageConfiguration *)otherConfiguration
{
  v4 = otherConfiguration;
  if ([(UIImageConfiguration *)self _shouldApplyConfiguration:v4])
  {
    v5 = [(UIImageConfiguration *)self copy];
    [(UIImageConfiguration *)v4 _applyConfigurationValuesTo:v5];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (BOOL)_shouldApplyConfiguration:(id)a3
{
  if (a3)
  {
    return [a3 _isUnspecified] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)_applyConfigurationValuesTo:(id)a3
{
  v14 = a3;
  v4 = [v14 traitCollection];
  v5 = self->_traitCollection;
  v6 = v5;
  if (v4 && v5)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke;
    v15[3] = &unk_1E710D508;
    v15[4] = v5;
    v15[5] = v4;
    v7 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:v15];
  }

  else
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }

    v7 = v8;
  }

  v9 = v14[2];
  v14[2] = v7;

  locale = self->_locale;
  if (locale)
  {
    objc_storeStrong(v14 + 3, locale);
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

  *(v14 + 12) = ignoresDynamicType;
LABEL_14:
  if (*&self->_flags)
  {
    v13 = [(UIImageConfiguration *)self _systemIconAppearance];
    [(UIImageConfiguration *)v14 _setSystemIconAppearance:v13];
  }
}

+ (id)_completeConfiguration:(void *)a3 fromConfiguration:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v5)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v5;
    v10 = v13;
    goto LABEL_16;
  }

  v12 = _UICurrentImageTraitCollection();
  v5 = [v12 imageConfiguration];

  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [(UIImageConfiguration *)v6 _initWithConfiguration:v5];

    v5 = v7;
  }

  v8 = v4;
  v9 = v5;
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
  v3 = [MEMORY[0x1E695DF70] array];
  if (![(UIImageConfiguration *)self _isUnspecified])
  {
    traitCollection = self->_traitCollection;
    if (traitCollection)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [(UITraitCollection *)traitCollection _traitsDescription];
      v7 = [v5 stringWithFormat:@"traits=(%@)", v6];
      [v3 addObject:v7];
    }

    if (self->_locale)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"locale=(%@)", self->_locale];
      [v3 addObject:v8];
    }

    if (self->_ignoresDynamicType)
    {
      [v3 addObject:@"ignores dynamic type"];
    }

    if (*&self->_flags)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [(UIImageConfiguration *)self _systemIconAppearance];
      v11 = [v9 stringWithFormat:@"_systemIconAppearance=(%@)", v10];
      [v3 addObject:v11];
    }
  }

  if ([v3 count])
  {
    v12 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"unspecified";
  }

  return v12;
}

@end