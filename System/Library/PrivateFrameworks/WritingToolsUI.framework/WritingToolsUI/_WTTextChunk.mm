@interface _WTTextChunk
- (_WTTextChunk)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initChunkWithIdentifier:(id)identifier;
@end

@implementation _WTTextChunk

- (id)initChunkWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _WTTextChunk;
  v6 = [(_WTTextChunk *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (_WTTextChunk)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(_WTTextChunk *)self initChunkWithIdentifier:uUIDString];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_WTTextChunk alloc];
  identifier = [(_WTTextChunk *)self identifier];
  v6 = [(_WTTextChunk *)v4 initChunkWithIdentifier:identifier];

  return v6;
}

@end