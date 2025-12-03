@interface VIBloomFilter
- (BOOL)containsItem:(id)item;
- (VIBloomFilter)initWithData:(id)data numberOfHashes:(unsigned int)hashes numberOfBits:(unsigned int)bits seed:(unsigned int)seed error:(id *)error;
- (VIBloomFilter)initWithNumberOfHashes:(unsigned int)hashes numberOfBits:(unint64_t)bits seed:(unsigned int)seed;
- (void)addItem:(id)item;
@end

@implementation VIBloomFilter

- (VIBloomFilter)initWithNumberOfHashes:(unsigned int)hashes numberOfBits:(unint64_t)bits seed:(unsigned int)seed
{
  v13.receiver = self;
  v13.super_class = VIBloomFilter;
  v8 = [(VIBloomFilter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_numberOfBits = bits;
    v8->_seed = seed;
    v8->_numberOfHashes = hashes;
    v8->_numberOfAddedItems = 0;
    v10 = [[VIBitVector alloc] initWithNumberOfBits:v8->_numberOfBits];
    bits = v9->_bits;
    v9->_bits = v10;
  }

  return v9;
}

- (VIBloomFilter)initWithData:(id)data numberOfHashes:(unsigned int)hashes numberOfBits:(unsigned int)bits seed:(unsigned int)seed error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = VIBloomFilter;
  v13 = [(VIBloomFilter *)&v21 init];
  v14 = v13;
  if (v13 && (v13->_numberOfBits = bits, v13->_seed = seed, v13->_numberOfHashes = hashes, v13->_numberOfAddedItems = 0, v15 = [[VIBitVector alloc] initWithData:dataCopy], bits = v14->_bits, v14->_bits = v15, bits, numberOfBits = v14->_numberOfBits, numberOfBits > [(VIBitVector *)v14->_bits numberOfBits]))
  {
    if (error)
    {
      v22 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incompatible data with bits: %lu and number of bits %lu", -[VIBitVector numberOfBits](v14->_bits, "numberOfBits"), v14->_numberOfBits];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.bloom_filter.error_domain" code:1 userInfo:v19];

      error = 0;
    }
  }

  else
  {
    error = v14;
  }

  return error;
}

- (void)addItem:(id)item
{
  v7[2] = *MEMORY[0x1E69E9840];
  _HashItem(item, v7);
  if (self->_numberOfHashes)
  {
    v4 = 0;
    v5 = v7[0];
    v6 = v7[1];
    do
    {
      [(VIBitVector *)self->_bits setAtIndex:(v5 + v6 * v4++) % self->_numberOfBits];
    }

    while (self->_numberOfHashes > v4);
  }

  ++self->_numberOfAddedItems;
}

- (BOOL)containsItem:(id)item
{
  v8[2] = *MEMORY[0x1E69E9840];
  _HashItem(item, v8);
  if (!self->_numberOfHashes)
  {
    return 1;
  }

  v4 = 0;
  v5 = v8[0];
  v6 = v8[1];
  do
  {
    result = [(VIBitVector *)self->_bits checkAtIndex:(v5 + v6 * v4) % self->_numberOfBits];
    if (!result)
    {
      break;
    }

    ++v4;
  }

  while (self->_numberOfHashes > v4);
  return result;
}

@end