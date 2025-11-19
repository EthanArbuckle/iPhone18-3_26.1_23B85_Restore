@interface PLSharedStreamsValidatedExternalResource
- (id)description;
- (void)setSharedStreamsType:(unsigned int)a3;
@end

@implementation PLSharedStreamsValidatedExternalResource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> - sharedStreamsType: %ld, recipeID: %ld", v5, self, -[PLSharedStreamsValidatedExternalResource sharedStreamsType](self, "sharedStreamsType"), -[PLValidatedExternalResource recipeID](self, "recipeID")];

  return v6;
}

- (void)setSharedStreamsType:(unsigned int)a3
{
  self->_sharedStreamsType = a3;
  if (a3 > 9)
  {
    v3 = 65741;
  }

  else
  {
    v3 = dword_19C60B898[a3];
  }

  [(PLValidatedExternalResource *)self setRecipeID:v3];
}

@end