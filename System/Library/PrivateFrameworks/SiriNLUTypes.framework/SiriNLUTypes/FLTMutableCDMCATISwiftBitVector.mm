@interface FLTMutableCDMCATISwiftBitVector
- (FLTMutableCDMCATISwiftBitVector)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)bit_shift;
- (unint64_t)bits_per_block;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_bytes;
- (void)data:(id)data;
- (void)setBit_shift:(unint64_t)bit_shift;
- (void)setBits_per_block:(unint64_t)bits_per_block;
- (void)setData:(id)data;
- (void)setNumber_of_bits:(unint64_t)number_of_bits;
- (void)setNumber_of_bytes:(unint64_t)number_of_bytes;
@end

@implementation FLTMutableCDMCATISwiftBitVector

- (void)data:(id)data
{
  dataCopy = data;
  data = [(FLTMutableCDMCATISwiftBitVector *)self data];
  bytes = [data bytes];
  data2 = [(FLTMutableCDMCATISwiftBitVector *)self data];
  dataCopy[2](dataCopy, bytes, [data2 length]);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setBit_shift:(unint64_t)bit_shift
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:bit_shift];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)bit_shift
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bit_shift"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setBits_per_block:(unint64_t)bits_per_block
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:bits_per_block];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)bits_per_block
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"bits_per_block"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setNumber_of_bytes:(unint64_t)number_of_bytes
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:number_of_bytes];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_bytes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_bytes"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setNumber_of_bits:(unint64_t)number_of_bits
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:number_of_bits];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_bits
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_bits"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end