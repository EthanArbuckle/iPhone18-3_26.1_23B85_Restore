@interface FLTMutableCDMCATISwiftBloomFilter
- (FLTMutableCDMCATISwiftBloomFilter)init;
- (double)false_positive_rate;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)number_of_bits;
- (unint64_t)number_of_hashes;
- (unint64_t)seed;
- (unsigned)expected_items_buffer;
- (unsigned)expected_number_of_items;
- (unsigned)number_of_items;
- (void)setBit_vector:(id)a3;
- (void)setExpected_items_buffer:(unsigned int)a3;
- (void)setExpected_number_of_items:(unsigned int)a3;
- (void)setFalse_positive_rate:(double)a3;
- (void)setName:(id)a3;
- (void)setNumber_of_bits:(unint64_t)a3;
- (void)setNumber_of_hashes:(unint64_t)a3;
- (void)setNumber_of_items:(unsigned int)a3;
- (void)setSeed:(unint64_t)a3;
@end

@implementation FLTMutableCDMCATISwiftBloomFilter

- (void)setExpected_items_buffer:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)expected_items_buffer
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"expected_items_buffer"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setNumber_of_items:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)number_of_items
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_items"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFalse_positive_rate:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)false_positive_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"false_positive_rate"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setExpected_number_of_items:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)expected_number_of_items
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"expected_number_of_items"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setSeed:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)seed
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"seed"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setNumber_of_hashes:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)number_of_hashes
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"number_of_hashes"];
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

- (void)setBit_vector:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end