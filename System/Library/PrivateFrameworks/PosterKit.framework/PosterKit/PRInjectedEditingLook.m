@interface PRInjectedEditingLook
+ (id)injectedEditingLookFromLook:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PRInjectedEditingLook)init;
- (PRInjectedEditingLook)initWithBSXPCCoder:(id)a3;
- (PRInjectedEditingLook)initWithCoder:(id)a3;
- (PRInjectedEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRInjectedEditingLook

- (PRInjectedEditingLook)init
{
  [(PRInjectedEditingLook *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRInjectedEditingLook)initWithIdentifier:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PRInjectedEditingLook;
  v8 = [(PRInjectedEditingLook *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    if (v7)
    {
      v11 = [v7 copy];
    }

    else
    {
      v11 = &stru_1F1C13D90;
    }

    displayName = v8->_displayName;
    v8->_displayName = &v11->isa;
  }

  return v8;
}

+ (id)injectedEditingLookFromLook:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 identifier];
  v7 = [v4 displayName];

  v8 = [v5 initWithIdentifier:v6 displayName:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && (-[PRInjectedEditingLook identifier](self, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), -[PRInjectedEditingLook identifier](v6, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, v12))
    {
      v13 = [(PRInjectedEditingLook *)self displayName];
      v14 = [(PRInjectedEditingLook *)v6 displayName];
      v8 = [v13 isEqualToString:v14];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [(PRInjectedEditingLook *)self identifier];
  v5 = [v3 appendString:v4];

  v6 = [(PRInjectedEditingLook *)self displayName];
  v7 = [v3 appendString:v6];

  v8 = [v3 hash];
  return v8;
}

- (PRInjectedEditingLook)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];

  v7 = [(PRInjectedEditingLook *)self initWithIdentifier:v5 displayName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_displayName forKey:@"_displayName"];
}

- (PRInjectedEditingLook)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];

  v7 = [(PRInjectedEditingLook *)self initWithIdentifier:v5 displayName:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_displayName forKey:@"_displayName"];
}

@end