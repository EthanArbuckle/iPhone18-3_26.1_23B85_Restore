@interface _UISpringParameters
+ (_UISpringParameters)parametersWithDampingRatio:(double)ratio response:(double)response;
- (BOOL)isEqual:(id)equal;
- (_UISpringParameters)initWithCoder:(id)coder;
- (_UISpringParameters)initWithDampingRatio:(double)ratio response:(double)response;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISpringParameters

+ (_UISpringParameters)parametersWithDampingRatio:(double)ratio response:(double)response
{
  v4 = [[self alloc] initWithDampingRatio:ratio response:response];

  return v4;
}

- (_UISpringParameters)initWithDampingRatio:(double)ratio response:(double)response
{
  v7.receiver = self;
  v7.super_class = _UISpringParameters;
  result = [(_UISpringParameters *)&v7 init];
  if (result)
  {
    result->__dampingRatio = ratio;
    result->__response = response;
  }

  return result;
}

- (_UISpringParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"_dampingRatio"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"_response"];
  v8 = v7;

  return [(_UISpringParameters *)self initWithDampingRatio:v6 response:v8];
}

- (void)encodeWithCoder:(id)coder
{
  dampingRatio = self->__dampingRatio;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_dampingRatio" forKey:dampingRatio];
  [coderCopy encodeDouble:@"_response" forKey:self->__response];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(_UISpringParameters *)self _dampingRatio];
    v7 = v6;
    [v5 _dampingRatio];
    if (v7 == v8)
    {
      [(_UISpringParameters *)self _response];
      v10 = v9;
      [v5 _response];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__dampingRatio);
  v8[0] = v3;
  v4 = NSStringFromSelector(sel__response);
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [UIDescriptionBuilder descriptionForObject:self keys:v5];

  return v6;
}

@end