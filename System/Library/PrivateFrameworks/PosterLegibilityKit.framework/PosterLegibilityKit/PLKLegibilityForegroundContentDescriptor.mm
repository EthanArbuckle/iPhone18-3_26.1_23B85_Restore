@interface PLKLegibilityForegroundContentDescriptor
+ (id)contentDescriptorForPrimaryColor:(id)color secondaryColor:(id)secondaryColor;
+ (id)defaultContentDescriptor;
- (BOOL)isEqual:(id)equal;
- (PLKLegibilityForegroundContentDescriptor)initWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation PLKLegibilityForegroundContentDescriptor

+ (id)defaultContentDescriptor
{
  if (defaultContentDescriptor_onceToken != -1)
  {
    +[PLKLegibilityForegroundContentDescriptor defaultContentDescriptor];
  }

  v3 = defaultContentDescriptor_defaultForegroundContentDescriptor;

  return v3;
}

void __68__PLKLegibilityForegroundContentDescriptor_defaultContentDescriptor__block_invoke()
{
  v0 = [PLKLegibilityForegroundContentDescriptor alloc];
  v4 = [MEMORY[0x277D75348] clearColor];
  v1 = [MEMORY[0x277D75348] clearColor];
  v2 = [(PLKLegibilityForegroundContentDescriptor *)v0 initWithPrimaryColor:v4 secondaryColor:v1];
  v3 = defaultContentDescriptor_defaultForegroundContentDescriptor;
  defaultContentDescriptor_defaultForegroundContentDescriptor = v2;
}

+ (id)contentDescriptorForPrimaryColor:(id)color secondaryColor:(id)secondaryColor
{
  secondaryColorCopy = secondaryColor;
  colorCopy = color;
  v7 = [objc_alloc(objc_opt_class()) initWithPrimaryColor:colorCopy secondaryColor:secondaryColorCopy];

  return v7;
}

- (PLKLegibilityForegroundContentDescriptor)initWithPrimaryColor:(id)color secondaryColor:(id)secondaryColor
{
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  v12.receiver = self;
  v12.super_class = PLKLegibilityForegroundContentDescriptor;
  v8 = [(PLKLegibilityContentDescriptor *)&v12 initWithContentColor:colorCopy];
  v9 = v8;
  if (v8)
  {
    if (secondaryColorCopy)
    {
      v10 = secondaryColorCopy;
    }

    else
    {
      v10 = colorCopy;
    }

    objc_storeStrong(&v8->_secondaryColor, v10);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLKLegibilityForegroundContentDescriptor;
    if ([(PLKLegibilityContentDescriptor *)&v13 isEqual:equalCopy])
    {
      v5 = objc_opt_class();
      v6 = equalCopy;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      secondaryColor = [(PLKLegibilityForegroundContentDescriptor *)v9 secondaryColor];

      secondaryColor2 = [(PLKLegibilityForegroundContentDescriptor *)self secondaryColor];
      v8 = [secondaryColor isEqual:secondaryColor2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = PLKLegibilityForegroundContentDescriptor;
  v4 = [(PLKLegibilityContentDescriptor *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_secondaryColor withName:@"_secondaryColor" skipIfNil:1];

  return v4;
}

@end