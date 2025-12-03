@interface UITextFormattingViewControllerComponentGroup
- (BOOL)isEqual:(id)equal;
- (UITextFormattingViewControllerComponentGroup)initWithCoder:(id)coder;
- (UITextFormattingViewControllerComponentGroup)initWithComponents:(id)components;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITextFormattingViewControllerComponentGroup

- (UITextFormattingViewControllerComponentGroup)initWithComponents:(id)components
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = UITextFormattingViewControllerComponentGroup;
  v6 = [(UITextFormattingViewControllerComponentGroup *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;

    objc_storeStrong(&v6->_components, components);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  components = [(UITextFormattingViewControllerComponentGroup *)self components];
  v6 = [components copy];
  v7 = v4[1];
  v4[1] = v6;

  identifier = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  v9 = v4[2];
  v4[2] = identifier;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(UITextFormattingViewControllerComponentGroup *)self identifier];
      identifier2 = [(UITextFormattingViewControllerComponentGroup *)v5 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        components = [(UITextFormattingViewControllerComponentGroup *)self components];
        components2 = [(UITextFormattingViewControllerComponentGroup *)v5 components];
        v10 = [components isEqualToArray:components2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  v4 = [identifier hash];
  components = [(UITextFormattingViewControllerComponentGroup *)self components];
  v6 = [components hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"_Identifier"];

  components = [(UITextFormattingViewControllerComponentGroup *)self components];
  [coderCopy encodeObject:components forKey:@"_Components"];
}

- (UITextFormattingViewControllerComponentGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerComponentGroup *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerComponentGroupClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = _UITextFormattingViewControllerComponentGroupClasses();
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_Components"];
    components = v5->_components;
    v5->_components = v10;
  }

  return v5;
}

@end