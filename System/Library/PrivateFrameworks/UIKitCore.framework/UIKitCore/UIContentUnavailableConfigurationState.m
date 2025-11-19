@interface UIContentUnavailableConfigurationState
+ (UIContentUnavailableConfigurationState)_readonlyContentUnavailableConfigurationState:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UIContentUnavailableConfigurationState)initWithCoder:(NSCoder *)coder;
- (UIContentUnavailableConfigurationState)initWithTraitCollection:(UITraitCollection *)traitCollection;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCustomState:(id)a3 forKey:(id)a4;
- (void)setSearchText:(NSString *)searchText;
- (void)setTraitCollection:(UITraitCollection *)traitCollection;
@end

@implementation UIContentUnavailableConfigurationState

- (UIContentUnavailableConfigurationState)initWithTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = traitCollection;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIContentUnavailableConfigurationState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];
  }

  v11.receiver = self;
  v11.super_class = UIContentUnavailableConfigurationState;
  v7 = [(UIContentUnavailableConfigurationState *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_traitCollection, traitCollection);
  }

  return v8;
}

- (UIContentUnavailableConfigurationState)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = UIContentUnavailableConfigurationState;
    v6 = [(UIContentUnavailableConfigurationState *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_traitCollection, v5);
      v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
      searchText = v7->_searchText;
      v7->_searchText = v8;

      if (![(NSCoder *)v4 requiresSecureCoding])
      {
        v10 = [(NSCoder *)v4 decodeObjectForKey:@"customStates"];
        customStates = v7->_customStates;
        v7->_customStates = v10;
      }
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [v4 encodeObject:self->_searchText forKey:@"searchText"];
  if (([v4 requiresSecureCoding] & 1) == 0)
  {
    [v4 encodeObject:self->_customStates forKey:@"customStates"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = self;
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__initWithState_ object:v4 file:@"UIContentUnavailableConfigurationState.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];
    }

    v4 = [v4 initWithTraitCollection:v6->_traitCollection];
    if (v4)
    {
      v7 = [(NSMutableDictionary *)v6->_customStates mutableCopy];
      v8 = *(v4 + 16);
      *(v4 + 16) = v7;

      objc_storeStrong((v4 + 32), v6->_searchText);
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        traitCollection = v6->_traitCollection;
        v8 = self->_traitCollection;
        v9 = traitCollection;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          LOBYTE(v11) = 0;
          if (!v8 || !v9)
          {
            goto LABEL_23;
          }

          v11 = [(UITraitCollection *)v8 isEqual:v9];

          if (!v11)
          {
            goto LABEL_24;
          }
        }

        customStates = v6->_customStates;
        v8 = self->_customStates;
        v13 = customStates;
        v10 = v13;
        if (v8 == v13)
        {

LABEL_18:
          searchText = self->_searchText;
          v15 = v6->_searchText;
          v8 = searchText;
          v16 = v15;
          v10 = v16;
          if (v8 == v16)
          {
            LOBYTE(v11) = 1;
          }

          else
          {
            LOBYTE(v11) = 0;
            if (v8 && v16)
            {
              LOBYTE(v11) = [(UITraitCollection *)v8 isEqual:v16];
            }
          }

          goto LABEL_23;
        }

        LOBYTE(v11) = 0;
        if (v8 && v13)
        {
          v11 = [(UITraitCollection *)v8 isEqual:v13];

          if (!v11)
          {
            goto LABEL_24;
          }

          goto LABEL_18;
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_25:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(UITraitCollection *)self->_traitCollection hash];
  v4 = [(NSMutableDictionary *)self->_customStates hash]^ v3;
  return v4 ^ [(NSString *)self->_searchText hash];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traitCollection = %@", self->_traitCollection];
    [v3 addObject:v4];

    if (self->_searchText)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchText = %@", self->_searchText];
      [v3 addObject:v5];
    }
  }

  if (self->_customStates)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Custom = %@", self->_customStates];
    [v3 addObject:v6];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v3 componentsJoinedByString:@" "];;
  v11 = [v7 stringWithFormat:@"<%@: %p %@>", v9, self, v10];;

  return v11;
}

- (void)setTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = traitCollection;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIContentUnavailableConfigurationState.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];

    v6 = 0;
  }

  if (self->_traitCollection != v6)
  {
    ++self->_mutations;
    v8 = v6;
    objc_storeStrong(&self->_traitCollection, traitCollection);
    v6 = v8;
  }
}

- (void)setCustomState:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self)
  {
    ++self->_mutations;
  }

  customStates = self->_customStates;
  if (!customStates)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_customStates;
    self->_customStates = v8;

    customStates = self->_customStates;
  }

  [(NSMutableDictionary *)customStates setObject:v10 forKeyedSubscript:v6];
}

- (void)setSearchText:(NSString *)searchText
{
  v4 = searchText;
  v5 = self->_searchText;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  v8 = v10;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    ++self->_mutations;
    v9 = v8;
    v5 = self->_searchText;
    self->_searchText = v9;
    goto LABEL_9;
  }

LABEL_10:
}

+ (UIContentUnavailableConfigurationState)_readonlyContentUnavailableConfigurationState:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (!v2)
  {
    if (qword_1ED49C930 != -1)
    {
      dispatch_once(&qword_1ED49C930, &__block_literal_global_54);
    }

    v3 = _MergedGlobals_1003;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_7:
    v4 = v3;
    goto LABEL_9;
  }

  v5 = [UIContentUnavailableConfigurationState alloc];
  v6 = [v2 traitCollection];
  v4 = [(UIContentUnavailableConfigurationState *)v5 initWithTraitCollection:v6];

LABEL_9:

  return v4;
}

void __88__UIContentUnavailableConfigurationState__readonlyContentUnavailableConfigurationState___block_invoke()
{
  v0 = [UIContentUnavailableConfigurationState alloc];
  v3 = +[UITraitCollection _emptyTraitCollection];
  v1 = [(UIContentUnavailableConfigurationState *)v0 initWithTraitCollection:v3];
  v2 = _MergedGlobals_1003;
  _MergedGlobals_1003 = v1;
}

@end