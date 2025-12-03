@interface SXLayoutParameters
- (SXLayoutParameters)initWithLayoutOptions:(id)options layoutType:(unint64_t)type expectedDuration:(double)duration;
- (id)description;
@end

@implementation SXLayoutParameters

- (SXLayoutParameters)initWithLayoutOptions:(id)options layoutType:(unint64_t)type expectedDuration:(double)duration
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = SXLayoutParameters;
  v10 = [(SXLayoutParameters *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_layoutOptions, options);
    v11->_layoutType = type;
    v11->_expectedDuration = duration;
  }

  return v11;
}

- (id)description
{
  layoutType = [(SXLayoutParameters *)self layoutType];
  v4 = @"unknown";
  if (layoutType == 2)
  {
    v4 = @"update";
  }

  if (layoutType == 1)
  {
    v5 = @"new";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p type: %@;", objc_opt_class(), self, v5];;
  layoutOptions = [(SXLayoutParameters *)self layoutOptions];
  [v6 appendFormat:@"\noptions: \n%@", layoutOptions];

  [(SXLayoutParameters *)self expectedDuration];
  [v6 appendFormat:@"\nexpectedDuration: \n%@", v8];
  [v6 appendFormat:@"\n>"];

  return v6;
}

@end