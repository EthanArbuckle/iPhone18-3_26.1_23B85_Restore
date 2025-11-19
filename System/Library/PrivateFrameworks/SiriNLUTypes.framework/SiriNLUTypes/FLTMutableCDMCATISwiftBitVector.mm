@interface FLTMutableCDMCATISwiftBitVector
- (FLTMutableCDMCATISwiftBitVector)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)bit_shift;
- (unint64_t)bits_per_block;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_bytes;
- (void)data:(id)a3;
- (void)setBit_shift:(unint64_t)a3;
- (void)setBits_per_block:(unint64_t)a3;
- (void)setData:(id)a3;
- (void)setNumber_of_bits:(unint64_t)a3;
- (void)setNumber_of_bytes:(unint64_t)a3;
@end

@implementation FLTMutableCDMCATISwiftBitVector

- (void)data:(id)a3
{
  v7 = a3;
  v4 = [(FLTMutableCDMCATISwiftBitVector *)self data];
  v5 = [v4 bytes];
  v6 = [(FLTMutableCDMCATISwiftBitVector *)self data];
  v7[2](v7, v5, [v6 length]);
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setBit_shift:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)bit_shift
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bit_shift"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setBits_per_block:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)bits_per_block
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bits_per_block"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setNumber_of_bytes:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_bytes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_bytes"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setNumber_of_bits:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_bits
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_bits"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (FLTMutableCDMCATISwiftBitVector)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableCDMCATISwiftBitVector;
  v2 = [(FLTMutableCDMCATISwiftBitVector *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end