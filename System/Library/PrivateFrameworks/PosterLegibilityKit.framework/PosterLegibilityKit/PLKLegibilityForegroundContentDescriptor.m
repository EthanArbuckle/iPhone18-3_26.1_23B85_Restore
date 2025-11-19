@interface PLKLegibilityForegroundContentDescriptor
+ (id)contentDescriptorForPrimaryColor:(id)a3 secondaryColor:(id)a4;
+ (id)defaultContentDescriptor;
- (BOOL)isEqual:(id)a3;
- (PLKLegibilityForegroundContentDescriptor)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
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

+ (id)contentDescriptorForPrimaryColor:(id)a3 secondaryColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithPrimaryColor:v6 secondaryColor:v5];

  return v7;
}

- (PLKLegibilityForegroundContentDescriptor)initWithPrimaryColor:(id)a3 secondaryColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PLKLegibilityForegroundContentDescriptor;
  v8 = [(PLKLegibilityContentDescriptor *)&v12 initWithContentColor:v6];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    objc_storeStrong(&v8->_secondaryColor, v10);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLKLegibilityForegroundContentDescriptor;
    if ([(PLKLegibilityContentDescriptor *)&v13 isEqual:v4])
    {
      v5 = objc_opt_class();
      v6 = v4;
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

      v10 = [(PLKLegibilityForegroundContentDescriptor *)v9 secondaryColor];

      v11 = [(PLKLegibilityForegroundContentDescriptor *)self secondaryColor];
      v8 = [v10 isEqual:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLKLegibilityForegroundContentDescriptor;
  v4 = [(PLKLegibilityContentDescriptor *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_secondaryColor withName:@"_secondaryColor" skipIfNil:1];

  return v4;
}

@end