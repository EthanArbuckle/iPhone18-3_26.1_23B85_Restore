@interface UISCompatibilityContext
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISCompatibilityContext)initWithBSXPCCoder:(id)coder;
- (UISCompatibilityContext)initWithSupportedDisplaySizes:(id)sizes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation UISCompatibilityContext

- (UISCompatibilityContext)initWithSupportedDisplaySizes:(id)sizes
{
  sizesCopy = sizes;
  v9.receiver = self;
  v9.super_class = UISCompatibilityContext;
  v5 = [(UISCompatibilityContext *)&v9 init];
  if (v5)
  {
    v6 = [sizesCopy copy];
    supportedDisplaySizes = v5->_supportedDisplaySizes;
    v5->_supportedDisplaySizes = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    supportedDisplaySizes = [(UISCompatibilityContext *)self supportedDisplaySizes];
    supportedDisplaySizes2 = [(UISCompatibilityContext *)v5 supportedDisplaySizes];
    v8 = [supportedDisplaySizes isEqual:supportedDisplaySizes2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_supportedDisplaySizes withName:@"SupportedDisplaySizes"];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISCompatibilityContext alloc];
  supportedDisplaySizes = [(UISCompatibilityContext *)self supportedDisplaySizes];
  v6 = [(UISCompatibilityContext *)v4 initWithSupportedDisplaySizes:supportedDisplaySizes];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UISMutableCompatibilityContext alloc];
  supportedDisplaySizes = [(UISCompatibilityContext *)self supportedDisplaySizes];
  v6 = [(UISCompatibilityContext *)v4 initWithSupportedDisplaySizes:supportedDisplaySizes];

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  supportedDisplaySizes = [(UISCompatibilityContext *)self supportedDisplaySizes];
  [coderCopy encodeCollection:supportedDisplaySizes forKey:@"DisplaySizes"];
}

- (UISCompatibilityContext)initWithBSXPCCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UISCompatibilityContext;
  v5 = [(UISCompatibilityContext *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_class();
    [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"DisplaySizes"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    v9 = v7;
    if (v8)
    {
      v10 = v8;
      v11 = *v22;
      v12 = *MEMORY[0x1E695F060];
      v13 = *(MEMORY[0x1E695F060] + 8);
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v21 + 1) + 8 * i) bs_CGSizeValue];
          if (v16 == v12 && v15 == v13)
          {

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v20 = 0;
              _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error decoding supported display sizes.", v20, 2u);
            }

            v9 = 0;
            goto LABEL_17;
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v9 = v7;
    }

LABEL_17:

    if (v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_supportedDisplaySizes, v18);
  }

  return v5;
}

@end