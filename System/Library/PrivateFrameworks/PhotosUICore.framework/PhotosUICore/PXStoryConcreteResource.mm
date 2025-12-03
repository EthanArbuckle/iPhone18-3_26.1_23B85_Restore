@interface PXStoryConcreteResource
- (BOOL)isEqual:(id)equal;
- (PXStoryConcreteResource)initWithIdentifier:(id)identifier kind:(int64_t)kind;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteResource

- (unint64_t)hash
{
  px_storyResourceIdentifier = [(PXStoryConcreteResource *)self px_storyResourceIdentifier];
  v3 = [px_storyResourceIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      px_storyResourceIdentifier = [(PXStoryConcreteResource *)self px_storyResourceIdentifier];
      px_storyResourceIdentifier2 = [(PXStoryConcreteResource *)v5 px_storyResourceIdentifier];

      v8 = [px_storyResourceIdentifier isEqualToString:px_storyResourceIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (PXStoryConcreteResource)initWithIdentifier:(id)identifier kind:(int64_t)kind
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PXStoryConcreteResource;
  v7 = [(PXStoryConcreteResource *)&v13 init];
  if (v7)
  {
    if (identifierCopy)
    {
      v8 = identifierCopy;
      identifier = v7->_identifier;
      v7->_identifier = v8;
    }

    else
    {
      identifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [identifier UUIDString];
      v11 = v7->_identifier;
      v7->_identifier = uUIDString;
    }

    v7->_kind = kind;
  }

  return v7;
}

@end