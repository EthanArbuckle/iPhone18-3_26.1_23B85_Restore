@interface VUIBookmarkKey
- (VUIBookmarkKey)init;
- (VUIBookmarkKey)initWithIdentifier:(id)a3 keyType:(int64_t)a4;
- (id)description;
@end

@implementation VUIBookmarkKey

- (VUIBookmarkKey)initWithIdentifier:(id)a3 keyType:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = VUIBookmarkKey;
    v7 = [(VUIBookmarkKey *)&v12 init];
    if (v7)
    {
      v8 = [v6 copy];
      identifier = v7->_identifier;
      v7->_identifier = v8;

      v7->_keyType = a4;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
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