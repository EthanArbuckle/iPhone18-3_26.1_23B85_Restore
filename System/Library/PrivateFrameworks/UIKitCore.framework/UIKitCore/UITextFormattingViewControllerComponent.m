@interface UITextFormattingViewControllerComponent
- (BOOL)isEqual:(id)a3;
- (UITextFormattingViewControllerComponent)initWithCoder:(id)a3;
- (UITextFormattingViewControllerComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextFormattingViewControllerComponent

- (UITextFormattingViewControllerComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UITextFormattingViewControllerComponent;
  v8 = [(UITextFormattingViewControllerComponent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_componentKey, a3);
    v9->_preferredSize = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(UITextFormattingViewControllerComponent *)self componentKey];
  v6 = [v4 initWithComponentKey:v5 preferredSize:{-[UITextFormattingViewControllerComponent preferredSize](self, "preferredSize")}];

  return v6;
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UITextFormattingViewControllerComponent *)self componentKey];
      v7 = [(UITextFormattingViewControllerComponent *)v5 componentKey];
      if (v6 == v7)
      {
        v9 = [(UITextFormattingViewControllerComponent *)self preferredSize];
        v8 = v9 == [(UITextFormattingViewControllerComponent *)v5 preferredSize];
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
  v3 = [(UITextFormattingViewControllerComponent *)self componentKey];
  v4 = [v3 hash];
  v5 = [(UITextFormattingViewControllerComponent *)self preferredSize];

  return v5 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(UITextFormattingViewControllerComponent *)self componentKey];
  [v5 encodeObject:v4 forKey:@"_ComponentKey"];

  [v5 encodeInteger:-[UITextFormattingViewControllerComponent preferredSize](self forKey:{"preferredSize"), @"_PreferredSize"}];
}

- (UITextFormattingViewControllerComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerComponent *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_ComponentKey"];
    componentKey = v5->_componentKey;
    v5->_componentKey = v6;

    v5->_preferredSize = [v4 decodeIntegerForKey:@"_PreferredSize"];
  }

  return v5;
}

@end