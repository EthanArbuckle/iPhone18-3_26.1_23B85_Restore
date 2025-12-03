@interface UITextFormattingViewControllerComponent
- (BOOL)isEqual:(id)equal;
- (UITextFormattingViewControllerComponent)initWithCoder:(id)coder;
- (UITextFormattingViewControllerComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UITextFormattingViewControllerComponent

- (UITextFormattingViewControllerComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = UITextFormattingViewControllerComponent;
  v8 = [(UITextFormattingViewControllerComponent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_componentKey, key);
    v9->_preferredSize = size;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  v6 = [v4 initWithComponentKey:componentKey preferredSize:{-[UITextFormattingViewControllerComponent preferredSize](self, "preferredSize")}];

  return v6;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
      componentKey2 = [(UITextFormattingViewControllerComponent *)v5 componentKey];
      if (componentKey == componentKey2)
      {
        preferredSize = [(UITextFormattingViewControllerComponent *)self preferredSize];
        v8 = preferredSize == [(UITextFormattingViewControllerComponent *)v5 preferredSize];
      }

      else
      {
        v8 = 0;
      }
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
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  v4 = [componentKey hash];
  preferredSize = [(UITextFormattingViewControllerComponent *)self preferredSize];

  return preferredSize ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  [coderCopy encodeObject:componentKey forKey:@"_ComponentKey"];

  [coderCopy encodeInteger:-[UITextFormattingViewControllerComponent preferredSize](self forKey:{"preferredSize"), @"_PreferredSize"}];
}

- (UITextFormattingViewControllerComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UITextFormattingViewControllerComponent *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_ComponentKey"];
    componentKey = v5->_componentKey;
    v5->_componentKey = v6;

    v5->_preferredSize = [coderCopy decodeIntegerForKey:@"_PreferredSize"];
  }

  return v5;
}

@end