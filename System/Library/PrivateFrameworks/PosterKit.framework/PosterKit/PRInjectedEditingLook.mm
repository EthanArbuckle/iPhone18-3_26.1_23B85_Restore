@interface PRInjectedEditingLook
+ (id)injectedEditingLookFromLook:(id)look;
- (BOOL)isEqual:(id)equal;
- (PRInjectedEditingLook)init;
- (PRInjectedEditingLook)initWithBSXPCCoder:(id)coder;
- (PRInjectedEditingLook)initWithCoder:(id)coder;
- (PRInjectedEditingLook)initWithIdentifier:(id)identifier displayName:(id)name;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRInjectedEditingLook

- (PRInjectedEditingLook)init
{
  [(PRInjectedEditingLook *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRInjectedEditingLook)initWithIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PRInjectedEditingLook;
  v8 = [(PRInjectedEditingLook *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    if (nameCopy)
    {
      v11 = [nameCopy copy];
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

+ (id)injectedEditingLookFromLook:(id)look
{
  lookCopy = look;
  v5 = [self alloc];
  identifier = [lookCopy identifier];
  displayName = [lookCopy displayName];

  v8 = [v5 initWithIdentifier:identifier displayName:displayName];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
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
      displayName = [(PRInjectedEditingLook *)self displayName];
      displayName2 = [(PRInjectedEditingLook *)v6 displayName];
      v8 = [displayName isEqualToString:displayName2];
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
  identifier = [(PRInjectedEditingLook *)self identifier];
  v5 = [v3 appendString:identifier];

  displayName = [(PRInjectedEditingLook *)self displayName];
  v7 = [v3 appendString:displayName];

  v8 = [v3 hash];
  return v8;
}

- (PRInjectedEditingLook)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];

  v7 = [(PRInjectedEditingLook *)self initWithIdentifier:v5 displayName:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
}

- (PRInjectedEditingLook)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];

  v7 = [(PRInjectedEditingLook *)self initWithIdentifier:v5 displayName:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
}

@end