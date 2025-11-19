@interface _WTTextChunk
- (_WTTextChunk)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initChunkWithIdentifier:(id)a3;
@end

@implementation _WTTextChunk

- (id)initChunkWithIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _WTTextChunk;
  v6 = [(_WTTextChunk *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = v7;
  }

  return v7;
}

- (_WTTextChunk)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(_WTTextChunk *)self initChunkWithIdentifier:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_WTTextChunk alloc];
  v5 = [(_WTTextChunk *)self identifier];
  v6 = [(_WTTextChunk *)v4 initChunkWithIdentifier:v5];

  return v6;
}

@end