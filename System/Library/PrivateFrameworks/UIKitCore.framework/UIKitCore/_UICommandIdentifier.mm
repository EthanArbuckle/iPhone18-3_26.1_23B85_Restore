@interface _UICommandIdentifier
+ (id)identifierWithAction:(SEL)action propertyList:(id)list;
- (BOOL)isEqual:(id)equal;
- (_UICommandIdentifier)initWithAction:(SEL)action propertyList:(id)list;
- (_UICommandIdentifier)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UICommandIdentifier

+ (id)identifierWithAction:(SEL)action propertyList:(id)list
{
  listCopy = list;
  v6 = [[_UICommandIdentifier alloc] initWithAction:action propertyList:listCopy];

  return v6;
}

- (_UICommandIdentifier)initWithAction:(SEL)action propertyList:(id)list
{
  listCopy = list;
  v11.receiver = self;
  v11.super_class = _UICommandIdentifier;
  v8 = [(_UICommandIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_action = action;
    objc_storeStrong(&v8->_propertyList, list);
  }

  return v9;
}

- (_UICommandIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _UICommandIdentifier;
  v5 = [(_UICommandIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"action"];
    v5->_action = NSSelectorFromString(v6);

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"propertyList"];
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

- (void)encodeWithCoder:(id)coder
{
  action = self->_action;
  coderCopy = coder;
  v5 = NSStringFromSelector(action);
  [coderCopy encodeObject:v5 forKey:@"action"];

  [coderCopy encodeObject:self->_propertyList forKey:@"propertyList"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_action == equalCopy[1])
  {
    propertyList = self->_propertyList;
    if (propertyList | equalCopy[2])
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