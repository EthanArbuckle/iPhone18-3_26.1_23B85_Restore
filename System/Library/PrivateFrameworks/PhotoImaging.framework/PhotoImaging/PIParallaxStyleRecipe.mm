@interface PIParallaxStyleRecipe
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParallaxStyleRecipe:(id)recipe;
- (PIParallaxStyleRecipe)initWithParameters:(id)parameters foregroundFilters:(id)filters backgroundFilters:(id)backgroundFilters matteFilters:(id)matteFilters;
- (id)description;
@end

@implementation PIParallaxStyleRecipe

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  parameters = [(PIParallaxStyleRecipe *)self parameters];
  foregroundFilters = [(PIParallaxStyleRecipe *)self foregroundFilters];
  backgroundFilters = [(PIParallaxStyleRecipe *)self backgroundFilters];
  matteFilters = [(PIParallaxStyleRecipe *)self matteFilters];
  v9 = [v3 stringWithFormat:@"<%@:%p parameters: %@\nforeground:%@\n background: %@\n matte: %@>", v4, self, parameters, foregroundFilters, backgroundFilters, matteFilters];

  return v9;
}

- (BOOL)isEqualToParallaxStyleRecipe:(id)recipe
{
  recipeCopy = recipe;
  parameters = [(PIParallaxStyleRecipe *)self parameters];
  parameters2 = [recipeCopy parameters];
  v7 = [parameters isEqualToDictionary:parameters2];

  if (v7 && (-[PIParallaxStyleRecipe foregroundFilters](self, "foregroundFilters"), v8 = objc_claimAutoreleasedReturnValue(), [recipeCopy foregroundFilters], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToArray:", v9), v9, v8, v10) && (-[PIParallaxStyleRecipe backgroundFilters](self, "backgroundFilters"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recipeCopy, "backgroundFilters"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToArray:", v12), v12, v11, v13))
  {
    matteFilters = [(PIParallaxStyleRecipe *)self matteFilters];
    matteFilters2 = [recipeCopy matteFilters];
    v16 = [matteFilters isEqualToArray:matteFilters2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIParallaxStyleRecipe *)self isEqualToParallaxStyleRecipe:equalCopy];

  return v5;
}

- (PIParallaxStyleRecipe)initWithParameters:(id)parameters foregroundFilters:(id)filters backgroundFilters:(id)backgroundFilters matteFilters:(id)matteFilters
{
  v23.receiver = self;
  v23.super_class = PIParallaxStyleRecipe;
  matteFiltersCopy = matteFilters;
  backgroundFiltersCopy = backgroundFilters;
  filtersCopy = filters;
  parametersCopy = parameters;
  v13 = [(PIParallaxStyleRecipe *)&v23 init];
  v14 = [parametersCopy copy];

  parameters = v13->_parameters;
  v13->_parameters = v14;

  v16 = [filtersCopy copy];
  foregroundFilters = v13->_foregroundFilters;
  v13->_foregroundFilters = v16;

  v18 = [backgroundFiltersCopy copy];
  backgroundFilters = v13->_backgroundFilters;
  v13->_backgroundFilters = v18;

  v20 = [matteFiltersCopy copy];
  matteFilters = v13->_matteFilters;
  v13->_matteFilters = v20;

  return v13;
}

@end