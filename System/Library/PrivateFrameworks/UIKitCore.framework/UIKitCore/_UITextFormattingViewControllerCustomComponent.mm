@interface _UITextFormattingViewControllerCustomComponent
- (BOOL)isEqual:(id)equal;
- (_UITextFormattingViewControllerCustomComponent)initWithCoder:(id)coder;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name subcomponents:(id)subcomponents;
- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name textAnimationName:(id)animationName;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UITextFormattingViewControllerCustomComponent

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name
{
  titleCopy = title;
  hintCopy = hint;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = _UITextFormattingViewControllerCustomComponent;
  v16 = [(UITextFormattingViewControllerComponent *)&v19 initWithComponentKey:key preferredSize:size];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v17->_accessibilityHint, hint);
    objc_storeStrong(&v17->_systemImageName, name);
  }

  return v17;
}

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name subcomponents:(id)subcomponents
{
  subcomponentsCopy = subcomponents;
  v16 = [(_UITextFormattingViewControllerCustomComponent *)self initWithComponentKey:key preferredSize:size title:title accessibilityHint:hint systemImageName:name];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__subcomponents, subcomponents);
  }

  return v17;
}

- (_UITextFormattingViewControllerCustomComponent)initWithComponentKey:(id)key preferredSize:(int64_t)size title:(id)title accessibilityHint:(id)hint systemImageName:(id)name textAnimationName:(id)animationName
{
  animationNameCopy = animationName;
  v16 = [(_UITextFormattingViewControllerCustomComponent *)self initWithComponentKey:key preferredSize:size title:title accessibilityHint:hint systemImageName:name];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->__textAnimationName, animationName);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  preferredSize = [(UITextFormattingViewControllerComponent *)self preferredSize];
  title = [(_UITextFormattingViewControllerCustomComponent *)self title];
  accessibilityHint = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  systemImageName = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  v11 = [v5 initWithComponentKey:componentKey preferredSize:preferredSize title:title accessibilityHint:accessibilityHint systemImageName:systemImageName];

  v12 = [(NSArray *)self->__subcomponents copyWithZone:zone];
  v13 = v11[6];
  v11[6] = v12;

  v14 = [(NSString *)self->__textAnimationName copyWithZone:zone];
  v15 = v11[7];
  v11[7] = v14;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
      componentKey2 = [(UITextFormattingViewControllerComponent *)v5 componentKey];
      if (componentKey == componentKey2 && (v8 = [(UITextFormattingViewControllerComponent *)self preferredSize], v8 == [(UITextFormattingViewControllerComponent *)v5 preferredSize]))
      {
        title = [(_UITextFormattingViewControllerCustomComponent *)self title];
        title2 = [(_UITextFormattingViewControllerCustomComponent *)v5 title];
        if ([title isEqualToString:title2])
        {
          accessibilityHint = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
          accessibilityHint2 = [(_UITextFormattingViewControllerCustomComponent *)v5 accessibilityHint];
          if ([accessibilityHint isEqualToString:accessibilityHint2])
          {
            systemImageName = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
            systemImageName2 = [(_UITextFormattingViewControllerCustomComponent *)v5 systemImageName];
            v24 = systemImageName;
            if ([systemImageName isEqualToString:systemImageName2])
            {
              _subcomponents = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
              _subcomponents2 = [(_UITextFormattingViewControllerCustomComponent *)v5 _subcomponents];
              v22 = _subcomponents;
              v16 = _subcomponents;
              v17 = _subcomponents2;
              if ([v16 isEqualToArray:_subcomponents2])
              {
                _textAnimationName = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
                _textAnimationName2 = [(_UITextFormattingViewControllerCustomComponent *)v5 _textAnimationName];
                v18 = [_textAnimationName isEqualToString:_textAnimationName2];
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
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  v4 = [componentKey hash];
  v5 = [(UITextFormattingViewControllerComponent *)self preferredSize]^ v4;
  title = [(_UITextFormattingViewControllerCustomComponent *)self title];
  v7 = [title hash];
  accessibilityHint = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  v9 = v5 ^ v7 ^ [accessibilityHint hash];
  systemImageName = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  v11 = [systemImageName hash];
  _subcomponents = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
  v13 = v11 ^ [_subcomponents hash];
  _textAnimationName = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
  v15 = v13 ^ [_textAnimationName hash];

  return v9 ^ v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  componentKey = [(UITextFormattingViewControllerComponent *)self componentKey];
  [coderCopy encodeObject:componentKey forKey:@"_ComponentKey"];

  [coderCopy encodeInteger:-[UITextFormattingViewControllerComponent preferredSize](self forKey:{"preferredSize"), @"_PreferredSize"}];
  title = [(_UITextFormattingViewControllerCustomComponent *)self title];
  [coderCopy encodeObject:title forKey:@"_Title"];

  accessibilityHint = [(_UITextFormattingViewControllerCustomComponent *)self accessibilityHint];
  [coderCopy encodeObject:accessibilityHint forKey:@"_AccessibilityHint"];

  systemImageName = [(_UITextFormattingViewControllerCustomComponent *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"_SystemImageName"];

  _subcomponents = [(_UITextFormattingViewControllerCustomComponent *)self _subcomponents];
  [coderCopy encodeObject:_subcomponents forKey:@"_Subcomponents"];

  _textAnimationName = [(_UITextFormattingViewControllerCustomComponent *)self _textAnimationName];
  [coderCopy encodeObject:_textAnimationName forKey:@"_TextAnimationNameCodingKey"];
}

- (_UITextFormattingViewControllerCustomComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = _UITextFormattingViewControllerCustomComponentClasses();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"_ComponentKey"];

  v7 = _UITextFormattingViewControllerCustomComponentClasses();
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_PreferredSize"];

  v9 = [(UITextFormattingViewControllerComponent *)self initWithComponentKey:v6 preferredSize:v8];
  if (v9)
  {
    v10 = _UITextFormattingViewControllerCustomComponentClasses();
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_Title"];
    title = v9->_title;
    v9->_title = v11;

    v13 = _UITextFormattingViewControllerCustomComponentClasses();
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_AccessibilityHint"];
    accessibilityHint = v9->_accessibilityHint;
    v9->_accessibilityHint = v14;

    v16 = _UITextFormattingViewControllerCustomComponentClasses();
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_SystemImageName"];
    systemImageName = v9->_systemImageName;
    v9->_systemImageName = v17;

    v19 = _UITextFormattingViewControllerCustomComponentClasses();
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"_Subcomponents"];
    subcomponents = v9->__subcomponents;
    v9->__subcomponents = v20;

    v22 = _UITextFormattingViewControllerCustomComponentClasses();
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"_TextAnimationNameCodingKey"];
    textAnimationName = v9->__textAnimationName;
    v9->__textAnimationName = v23;
  }

  return v9;
}

@end