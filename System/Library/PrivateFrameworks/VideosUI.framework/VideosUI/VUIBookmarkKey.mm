@interface VUIBookmarkKey
- (VUIBookmarkKey)init;
- (VUIBookmarkKey)initWithIdentifier:(id)identifier keyType:(int64_t)type;
- (id)description;
@end

@implementation VUIBookmarkKey

- (VUIBookmarkKey)initWithIdentifier:(id)identifier keyType:(int64_t)type
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v12.receiver = self;
    v12.super_class = VUIBookmarkKey;
    v7 = [(VUIBookmarkKey *)&v12 init];
    if (v7)
    {
      v8 = [identifierCopy copy];
      identifier = v7->_identifier;
      v7->_identifier = v8;

      v7->_keyType = type;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIBookmarkKey)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Use -[VUIBookmark initWithIdentifier:keyType:] instead."];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VUIBookmarkKey;
  v4 = [(VUIBookmarkKey *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, identifier=%@, keyType=%ld", v4, self->_identifier, self->_keyType];

  return v5;
}

@end