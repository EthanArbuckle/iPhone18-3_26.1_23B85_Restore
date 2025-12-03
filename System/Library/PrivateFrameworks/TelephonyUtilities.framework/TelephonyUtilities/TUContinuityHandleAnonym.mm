@interface TUContinuityHandleAnonym
- (NSString)localizedDisplayName;
- (TUContinuityHandleAnonym)initWithCoder:(id)coder;
- (TUContinuityHandleAnonym)initWithIdentifier:(id)identifier label:(id)label localizedDisplayName:(id)name type:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUContinuityHandleAnonym

- (TUContinuityHandleAnonym)initWithIdentifier:(id)identifier label:(id)label localizedDisplayName:(id)name type:(int64_t)type
{
  identifierCopy = identifier;
  labelCopy = label;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = TUContinuityHandleAnonym;
  v14 = [(TUContinuityHandleAnonym *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_label, label);
    objc_storeStrong(&v15->_localizedDisplayName, name);
    v15->_type = type;
  }

  return v15;
}

- (NSString)localizedDisplayName
{
  if ([(NSString *)self->_label length])
  {
    v3 = [MEMORY[0x1E695CEE0] localizedStringForLabel:self->_label];
  }

  else
  {
    v3 = self->_localizedDisplayName;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" label=%@", self->_label];
  [v6 appendFormat:@" localizedDisplayName=%@", self->_localizedDisplayName];
  [v6 appendFormat:@" type=%ld", self->_type];
  [v6 appendFormat:@" identifier=%@", self->_identifier];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

- (TUContinuityHandleAnonym)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_label);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_localizedDisplayName);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
  v14 = NSStringFromSelector(sel_type);
  v15 = [coderCopy decodeIntegerForKey:v14];

  v16 = [(TUContinuityHandleAnonym *)self initWithIdentifier:v7 label:v10 localizedDisplayName:v13 type:v15];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  label = self->_label;
  v8 = NSStringFromSelector(sel_label);
  [coderCopy encodeObject:label forKey:v8];

  localizedDisplayName = self->_localizedDisplayName;
  v10 = NSStringFromSelector(sel_localizedDisplayName);
  [coderCopy encodeObject:localizedDisplayName forKey:v10];

  type = self->_type;
  v12 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v12];
}

@end