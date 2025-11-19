@interface _UITextFormattingViewControllerCustomComponent
- (BOOL)isEqual:(id)a3;
- (_UITextFormattingViewControllerCustomComponent)initWithCoder:(id)a3;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7 subcomponents:(id)a8;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7 textAnimationName:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITextFormattingViewControllerCustomComponent

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = _UITextFormattingViewControllerCustomComponent;
  v16 = [(UITextFormattingViewControllerComponent *)&v19 initWithComponentKey:a3 preferredSize:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_title, a5);
    objc_storeStrong(&v17->_accessibilityHint, a6);
    objc_storeStrong(&v17->_systemImageName, a7);
  }

  return v17;
}

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7 subcomponents:(id)a8
{
  v15 = a8;
  v16 = [(_UITextFormattingViewControllerCustomComponent *)self initWithComponentKey:a3 preferredSize:a4 title:a5 accessibilityHint:a6 systemImageName:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__subcomponents, a8);
  }

  return v17;
}

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)a3 preferredSize:(int64_t)a4 title:(id)a5 accessibilityHint:(id)a6 systemImageName:(id)a7 textAnimationName:(id)a8
{
  v15 = a8;
  v16 = [(_UITextFormattingViewControllerCustomComponent *)self initWithComponentKey:a3 preferredSize:a4 title:a5 accessibilityHint:a6 systemImageName:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__textAnimationName, a8);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(UITextFormattingViewControllerComponent *)self componentKey];
  v7 = [(UITextFormattingViewControllerComponent *)self preferredSize];
  v8 = [(_UITextFormattingViewControllerCustomComponent *)self title];
  v9 = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  v10 = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  v11 = [v5 initWithComponentKey:v6 preferredSize:v7 title:v8 accessibilityHint:v9 systemImageName:v10];

  v12 = [(NSArray *)self->__subcomponents copyWithZone:a3];
  v13 = v11[6];
  v11[6] = v12;

  v14 = [(NSString *)self->__textAnimationName copyWithZone:a3];
  v15 = v11[7];
  v11[7] = v14;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UITextFormattingViewControllerComponent *)self componentKey];
      v7 = [(UITextFormattingViewControllerComponent *)v5 componentKey];
      if (v6 == v7 && (v8 = [(UITextFormattingViewControllerComponent *)self preferredSize], v8 == [(UITextFormattingViewControllerComponent *)v5 preferredSize]))
      {
        v9 = [(_UITextFormattingViewControllerCustomComponent *)self title];
        v10 = [(_UITextFormattingViewControllerCustomComponent *)v5 title];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
          v12 = [(_UITextFormattingViewControllerCustomComponent *)v5 accessibilityHint];
          if ([v11 isEqualToString:v12])
          {
            v13 = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
            v23 = [(_UITextFormattingViewControllerCustomComponent *)v5 systemImageName];
            v24 = v13;
            if ([v13 isEqualToString:v23])
            {
              v14 = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
              v15 = [(_UITextFormattingViewControllerCustomComponent *)v5 _subcomponents];
              v22 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqualToArray:v15])
              {
                v21 = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
                v20 = [(_UITextFormattingViewControllerCustomComponent *)v5 _textAnimationName];
                v18 = [v21 isEqualToString:v20];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(UITextFormattingViewControllerComponent *)self componentKey];
  v4 = [v3 hash];
  v5 = [(UITextFormattingViewControllerComponent *)self preferredSize]^ v4;
  v6 = [(_UITextFormattingViewControllerCustomComponent *)self title];
  v7 = [v6 hash];
  v8 = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  v11 = [v10 hash];
  v12 = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
  v13 = v11 ^ [v12 hash];
  v14 = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
  v15 = v13 ^ [v14 hash];

  return v9 ^ v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITextFormattingViewControllerComponent *)self componentKey];
  [v4 encodeObject:v5 forKey:@"_ComponentKey"];

  [v4 encodeInteger:-[UITextFormattingViewControllerComponent preferredSize](self forKey:{"preferredSize"), @"_PreferredSize"}];
  v6 = [(_UITextFormattingViewControllerCustomComponent *)self title];
  [v4 encodeObject:v6 forKey:@"_Title"];

  v7 = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  [v4 encodeObject:v7 forKey:@"_AccessibilityHint"];

  v8 = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  [v4 encodeObject:v8 forKey:@"_SystemImageName"];

  v9 = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
  [v4 encodeObject:v9 forKey:@"_Subcomponents"];

  v10 = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
  [v4 encodeObject:v10 forKey:@"_TextAnimationNameCodingKey"];
}

- (_UITextFormattingViewControllerCustomComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = _UITextFormattingViewControllerCustomComponentClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"_ComponentKey"];

  v7 = _UITextFormattingViewControllerCustomComponentClasses();
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"_PreferredSize"];

  v9 = [(UITextFormattingViewControllerComponent *)self initWithComponentKey:v6 preferredSize:v8];
  if (v9)
  {
    v10 = _UITextFormattingViewControllerCustomComponentClasses();
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_Title"];
    title = v9->_title;
    v9->_title = v11;

    v13 = _UITextFormattingViewControllerCustomComponentClasses();
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_AccessibilityHint"];
    accessibilityHint = v9->_accessibilityHint;
    v9->_accessibilityHint = v14;

    v16 = _UITextFormattingViewControllerCustomComponentClasses();
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_SystemImageName"];
    systemImageName = v9->_systemImageName;
    v9->_systemImageName = v17;

    v19 = _UITextFormattingViewControllerCustomComponentClasses();
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_Subcomponents"];
    subcomponents = v9->__subcomponents;
    v9->__subcomponents = v20;

    v22 = _UITextFormattingViewControllerCustomComponentClasses();
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_TextAnimationNameCodingKey"];
    textAnimationName = v9->__textAnimationName;
    v9->__textAnimationName = v23;
  }

  return v9;
}

@end