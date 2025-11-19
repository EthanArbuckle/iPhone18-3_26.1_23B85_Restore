@interface _UISpringParameters
+ (_UISpringParameters)parametersWithDampingRatio:(double)a3 response:(double)a4;
- (BOOL)isEqual:(id)a3;
- (_UISpringParameters)initWithCoder:(id)a3;
- (_UISpringParameters)initWithDampingRatio:(double)a3 response:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISpringParameters

+ (_UISpringParameters)parametersWithDampingRatio:(double)a3 response:(double)a4
{
  v4 = [[a1 alloc] initWithDampingRatio:a3 response:a4];

  return v4;
}

- (_UISpringParameters)initWithDampingRatio:(double)a3 response:(double)a4
{
  v7.receiver = self;
  v7.super_class = _UISpringParameters;
  result = [(_UISpringParameters *)&v7 init];
  if (result)
  {
    result->__dampingRatio = a3;
    result->__response = a4;
  }

  return result;
}

- (_UISpringParameters)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"_dampingRatio"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"_response"];
  v8 = v7;

  return [(_UISpringParameters *)self initWithDampingRatio:v6 response:v8];
}

- (void)encodeWithCoder:(id)a3
{
  dampingRatio = self->__dampingRatio;
  v5 = a3;
  [v5 encodeDouble:@"_dampingRatio" forKey:dampingRatio];
  [v5 encodeDouble:@"_response" forKey:self->__response];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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