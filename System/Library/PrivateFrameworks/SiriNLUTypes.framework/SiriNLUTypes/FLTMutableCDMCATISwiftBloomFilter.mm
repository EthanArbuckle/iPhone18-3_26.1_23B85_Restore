@interface FLTMutableCDMCATISwiftBloomFilter
- (FLTMutableCDMCATISwiftBloomFilter)init;
- (double)false_positive_rate;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_hashes;
- (unint64_t)seed;
- (unsigned)expected_items_buffer;
- (unsigned)expected_number_of_items;
- (unsigned)number_of_items;
- (void)setBit_vector:(id)bit_vector;
- (void)setExpected_items_buffer:(unsigned int)expected_items_buffer;
- (void)setExpected_number_of_items:(unsigned int)expected_number_of_items;
- (void)setFalse_positive_rate:(double)false_positive_rate;
- (void)setName:(id)name;
- (void)setNumber_of_bits:(unint64_t)number_of_bits;
- (void)setNumber_of_hashes:(unint64_t)number_of_hashes;
- (void)setNumber_of_items:(unsigned int)number_of_items;
- (void)setSeed:(unint64_t)seed;
@end

@implementation FLTMutableCDMCATISwiftBloomFilter

- (void)setExpected_items_buffer:(unsigned int)expected_items_buffer
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:expected_items_buffer];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)expected_items_buffer
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"expected_items_buffer"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setNumber_of_items:(unsigned int)number_of_items
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:number_of_items];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)number_of_items
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_items"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setName:(id)name
{
  v4 = [name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFalse_positive_rate:(double)false_positive_rate
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:false_positive_rate];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)false_positive_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"false_positive_rate"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setExpected_number_of_items:(unsigned int)expected_number_of_items
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:expected_number_of_items];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)expected_number_of_items
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"expected_number_of_items"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setSeed:(unint64_t)seed
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:seed];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)seed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"seed"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setNumber_of_hashes:(unint64_t)number_of_hashes
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:number_of_hashes];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_hashes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_hashes"];
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

- (void)setBit_vector:(id)bit_vector
{
  v4 = [bit_vector copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (FLTMutableCDMCATISwiftBloomFilter)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableCDMCATISwiftBloomFilter;
  v2 = [(FLTMutableCDMCATISwiftBloomFilter *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end