@interface PIParallaxStyleRecipe
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParallaxStyleRecipe:(id)a3;
- (PIParallaxStyleRecipe)initWithParameters:(id)a3 foregroundFilters:(id)a4 backgroundFilters:(id)a5 matteFilters:(id)a6;
- (id)description;
@end

@implementation PIParallaxStyleRecipe

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PIParallaxStyleRecipe *)self parameters];
  v6 = [(PIParallaxStyleRecipe *)self foregroundFilters];
  v7 = [(PIParallaxStyleRecipe *)self backgroundFilters];
  v8 = [(PIParallaxStyleRecipe *)self matteFilters];
  v9 = [v3 stringWithFormat:@"<%@:%p parameters: %@\nforeground:%@\n background: %@\n matte: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqualToParallaxStyleRecipe:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxStyleRecipe *)self parameters];
  v6 = [v4 parameters];
  v7 = [v5 isEqualToDictionary:v6];

  if (v7 && (-[PIParallaxStyleRecipe foregroundFilters](self, "foregroundFilters"), v8 = objc_claimAutoreleasedReturnValue(), [v4 foregroundFilters], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToArray:", v9), v9, v8, v10) && (-[PIParallaxStyleRecipe backgroundFilters](self, "backgroundFilters"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "backgroundFilters"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToArray:", v12), v12, v11, v13))
  {
    v14 = [(PIParallaxStyleRecipe *)self matteFilters];
    v15 = [v4 matteFilters];
    v16 = [v14 isEqualToArray:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIParallaxStyleRecipe *)self isEqualToParallaxStyleRecipe:v4];

  return v5;
}

- (PIParallaxStyleRecipe)initWithParameters:(id)a3 foregroundFilters:(id)a4 backgroundFilters:(id)a5 matteFilters:(id)a6
{
  v23.receiver = self;
  v23.super_class = PIParallaxStyleRecipe;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PIParallaxStyleRecipe *)&v23 init];
  v14 = [v12 copy];

  parameters = v13->_parameters;
  v13->_parameters = v14;

  v16 = [v11 copy];
  foregroundFilters = v13->_foregroundFilters;
  v13->_foregroundFilters = v16;

  v18 = [v10 copy];
  backgroundFilters = v13->_backgroundFilters;
  v13->_backgroundFilters = v18;

  v20 = [v9 copy];
  matteFilters = v13->_matteFilters;
  v13->_matteFilters = v20;

  return v13;
}

@end