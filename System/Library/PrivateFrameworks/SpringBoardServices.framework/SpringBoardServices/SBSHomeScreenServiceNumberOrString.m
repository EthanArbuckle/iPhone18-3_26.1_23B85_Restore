@interface SBSHomeScreenServiceNumberOrString
- (SBSHomeScreenServiceNumberOrString)initWithCoder:(id)a3;
- (SBSHomeScreenServiceNumberOrString)initWithNumberOrString:(id)a3;
@end

@implementation SBSHomeScreenServiceNumberOrString

- (SBSHomeScreenServiceNumberOrString)initWithNumberOrString:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_6;
      }

      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"SBSHomeScreenServiceSpecification.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"!numberOrString || [numberOrString isKindOfClass:[NSString self]] || [numberOrString isKindOfClass:[NSNumber self]]"}];
    }
  }

LABEL_6:
  v13.receiver = self;
  v13.super_class = SBSHomeScreenServiceNumberOrString;
  v9 = [(SBSHomeScreenServiceNumberOrString *)&v13 init];
  if (v9)
  {
    v10 = [v5 copyWithZone:0];
    numberOrString = v9->_numberOrString;
    v9->_numberOrString = v10;
  }

  return v9;
}

- (SBSHomeScreenServiceNumberOrString)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"numberOrString"];

  v10 = [(SBSHomeScreenServiceNumberOrString *)self initWithNumberOrString:v9];
  return v10;
}

@end