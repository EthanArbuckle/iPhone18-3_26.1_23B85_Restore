@interface UITextFormattingViewControllerComponentGroup
- (BOOL)isEqual:(id)a3;
- (UITextFormattingViewControllerComponentGroup)initWithCoder:(id)a3;
- (UITextFormattingViewControllerComponentGroup)initWithComponents:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextFormattingViewControllerComponentGroup

- (UITextFormattingViewControllerComponentGroup)initWithComponents:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UITextFormattingViewControllerComponentGroup;
  v6 = [(UITextFormattingViewControllerComponentGroup *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    objc_storeStrong(&v6->_components, a3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UITextFormattingViewControllerComponentGroup *)self components];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  v9 = v4[2];
  v4[2] = v8;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UITextFormattingViewControllerComponentGroup *)self identifier];
      v7 = [(UITextFormattingViewControllerComponentGroup *)v5 identifier];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(UITextFormattingViewControllerComponentGroup *)self components];
        v9 = [(UITextFormattingViewControllerComponentGroup *)v5 components];
        v10 = [v8 isEqualToArray:v9];
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
  v3 = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  v4 = [v3 hash];
  v5 = [(UITextFormattingViewControllerComponentGroup *)self components];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerComponentGroup *)self identifier];
  [v4 encodeObject:v5 forKey:@"_Identifier"];

  v6 = [(UITextFormattingViewControllerComponentGroup *)self components];
  [v4 encodeObject:v6 forKey:@"_Components"];
}

- (UITextFormattingViewControllerComponentGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerComponentGroup *)self init];
  if (v5)
  {
    v6 = _UITextFormattingViewControllerComponentGroupClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = _UITextFormattingViewControllerComponentGroupClasses();
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_Components"];
    components = v5->_components;
    v5->_components = v10;
  }

  return v5;
}

@end