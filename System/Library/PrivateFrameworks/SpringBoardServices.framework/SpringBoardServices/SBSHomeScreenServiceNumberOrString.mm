@interface SBSHomeScreenServiceNumberOrString
- (SBSHomeScreenServiceNumberOrString)initWithCoder:(id)coder;
- (SBSHomeScreenServiceNumberOrString)initWithNumberOrString:(id)string;
@end

@implementation SBSHomeScreenServiceNumberOrString

- (SBSHomeScreenServiceNumberOrString)initWithNumberOrString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    currentHandler = objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSHomeScreenServiceSpecification.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"!numberOrString || [numberOrString isKindOfClass:[NSString self]] || [numberOrString isKindOfClass:[NSNumber self]]"}];
    }
  }

LABEL_6:
  v13.receiver = self;
  v13.super_class = SBSHomeScreenServiceNumberOrString;
  v9 = [(SBSHomeScreenServiceNumberOrString *)&v13 init];
  if (v9)
  {
    v10 = [stringCopy copyWithZone:0];
    numberOrString = v9->_numberOrString;
    v9->_numberOrString = v10;
  }

  return v9;
}

- (SBSHomeScreenServiceNumberOrString)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v4 setWithObjects:{v6, v7, 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"numberOrString"];

  v10 = [(SBSHomeScreenServiceNumberOrString *)self initWithNumberOrString:v9];
  return v10;
}

@end