@interface _UICommandIdentifier
+ (id)identifierWithAction:(SEL)a3 propertyList:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UICommandIdentifier)initWithAction:(SEL)a3 propertyList:(id)a4;
- (_UICommandIdentifier)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UICommandIdentifier

+ (id)identifierWithAction:(SEL)a3 propertyList:(id)a4
{
  v5 = a4;
  v6 = [[_UICommandIdentifier alloc] initWithAction:a3 propertyList:v5];

  return v6;
}

- (_UICommandIdentifier)initWithAction:(SEL)a3 propertyList:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UICommandIdentifier;
  v8 = [(_UICommandIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_action = a3;
    objc_storeStrong(&v8->_propertyList, a4);
  }

  return v9;
}

- (_UICommandIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UICommandIdentifier;
  v5 = [(_UICommandIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"action"];
    v5->_action = NSSelectorFromString(v6);

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"propertyList"];
    propertyList = v5->_propertyList;
    v5->_propertyList = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"<_UICommandIdentifier"];
  v4 = NSStringFromSelector(self->_action);
  [v3 appendFormat:@" -> Action: %@", v4];

  if (self->_propertyList)
  {
    [v3 appendFormat:@", PropertyList: %@", self->_propertyList];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  action = self->_action;
  v6 = a3;
  v5 = NSStringFromSelector(action);
  [v6 encodeObject:v5 forKey:@"action"];

  [v6 encodeObject:self->_propertyList forKey:@"propertyList"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_action == v4[1])
  {
    propertyList = self->_propertyList;
    if (propertyList | v4[2])
    {
      v5 = [propertyList isEqual:?];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end