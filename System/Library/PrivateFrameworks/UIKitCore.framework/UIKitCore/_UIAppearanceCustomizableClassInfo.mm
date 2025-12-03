@interface _UIAppearanceCustomizableClassInfo
+ (id)_cachedClassInfoForViewClass:(Class)class withGuideClass:(Class)guideClass;
- (BOOL)isEqual:(id)equal;
- (Class)_guideClass;
- (id)_superClassInfo;
- (id)description;
- (void)dealloc;
@end

@implementation _UIAppearanceCustomizableClassInfo

- (Class)_guideClass
{
  result = self->_guideClass;
  if (!result)
  {
    return self->_customizableViewClass;
  }

  return result;
}

- (id)_superClassInfo
{
  guideClass = self->_guideClass;
  if (guideClass && !self->_isGuideClassRoot)
  {
    customizableViewClass = self->_customizableViewClass;
    Superclass = class_getSuperclass(guideClass);
    v5 = customizableViewClass;
  }

  else
  {
    if (self->_isCustomizableViewClassRoot)
    {
      return 0;
    }

    v5 = class_getSuperclass(self->_customizableViewClass);
    Superclass = self->_guideClass;
  }

  return [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:v5 withGuideClass:Superclass];
}

+ (id)_cachedClassInfoForViewClass:(Class)class withGuideClass:(Class)guideClass
{
  v7 = qword_1ED49E600;
  if (!qword_1ED49E600)
  {
    qword_1ED49E600 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
    qword_1ED49E608 = @"no guide class";
    v7 = qword_1ED49E600;
  }

  v8 = [v7 objectForKey:class];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
    [qword_1ED49E600 setObject:v8 forKey:class];
  }

  if (guideClass)
  {
    guideClassCopy = guideClass;
  }

  else
  {
    guideClassCopy = qword_1ED49E608;
  }

  v10 = [v8 objectForKey:guideClassCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(self);
    v10[4] = class;
    v10[5] = guideClass;
    if (guideClass)
    {
      v11 = [MEMORY[0x1E696AAE8] bundleForClass:guideClass];
      v12 = v11 == _UIKitBundle();
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 8) = v12;
    if (objc_opt_class() == class)
    {
      v14 = 1;
    }

    else
    {
      Superclass = class_getSuperclass(class);
      v14 = Superclass == objc_opt_class();
    }

    *(v10 + 9) = v14;
    if (guideClass)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = NSStringFromClass(class);
      v17 = [v15 stringWithFormat:@"%@-%@", v16, NSStringFromClass(guideClass)];
    }

    else
    {
      v17 = NSStringFromClass(class);
    }

    v18 = v17;
    v10[2] = v17;
    v10[3] = [(NSString *)v18 hash];
    [v8 setObject:v10 forKey:guideClassCopy];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  classReferenceKey = self->_classReferenceKey;
  _classReferenceKey = [equal _classReferenceKey];

  return [(NSString *)classReferenceKey isEqualToString:_classReferenceKey];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass(self->_customizableViewClass);
  guideClass = self->_guideClass;
  if (guideClass)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@", Guide class: %@>", NSStringFromClass(guideClass)];
  }

  else
  {
    v6 = @">";
  }

  return [v3 stringWithFormat:@"<Customizable class: %@%@", v4, v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIAppearanceCustomizableClassInfo;
  [(_UIAppearanceCustomizableClassInfo *)&v3 dealloc];
}

@end