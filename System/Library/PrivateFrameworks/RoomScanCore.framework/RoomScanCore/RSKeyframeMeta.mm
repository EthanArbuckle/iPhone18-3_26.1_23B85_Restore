@interface RSKeyframeMeta
- (RSKeyframeMeta)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSKeyframeMeta

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  objc_storeStrong((v4 + 8), self->_identifier);
  v5 = *&self[1].super.isa;
  v6 = *&self[1]._size;
  v7 = *&self[2]._size;
  *(v4 + 64) = *&self[2].super.isa;
  *(v4 + 80) = v7;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 16) = self->_size;
  *(v4 + 24) = self->_timestamp;
  return v4;
}

- (RSKeyframeMeta)init
{
  v3.receiver = self;
  v3.super_class = RSKeyframeMeta;
  result = [(RSKeyframeMeta *)&v3 init];
  if (result)
  {
    result->_size = 0;
    result->_timestamp = 0.0;
  }

  return result;
}

@end