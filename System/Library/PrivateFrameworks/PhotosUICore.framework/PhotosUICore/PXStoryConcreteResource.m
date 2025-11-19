@interface PXStoryConcreteResource
- (BOOL)isEqual:(id)a3;
- (PXStoryConcreteResource)initWithIdentifier:(id)a3 kind:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteResource

- (unint64_t)hash
{
  v2 = [(PXStoryConcreteResource *)self px_storyResourceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryConcreteResource *)self px_storyResourceIdentifier];
      v7 = [(PXStoryConcreteResource *)v5 px_storyResourceIdentifier];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXStoryConcreteResource)initWithIdentifier:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PXStoryConcreteResource;
  v7 = [(PXStoryConcreteResource *)&v13 init];
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
      identifier = v7->_identifier;
      v7->_identifier = v8;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v10 = [identifier UUIDString];
      v11 = v7->_identifier;
      v7->_identifier = v10;
    }

    v7->_kind = a4;
  }

  return v7;
}

@end