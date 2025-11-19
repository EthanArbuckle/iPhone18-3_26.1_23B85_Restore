@interface VIBloomFilter
- (BOOL)containsItem:(id)a3;
- (VIBloomFilter)initWithData:(id)a3 numberOfHashes:(unsigned int)a4 numberOfBits:(unsigned int)a5 seed:(unsigned int)a6 error:(id *)a7;
- (VIBloomFilter)initWithNumberOfHashes:(unsigned int)a3 numberOfBits:(unint64_t)a4 seed:(unsigned int)a5;
- (void)addItem:(id)a3;
@end

@implementation VIBloomFilter

- (VIBloomFilter)initWithNumberOfHashes:(unsigned int)a3 numberOfBits:(unint64_t)a4 seed:(unsigned int)a5
{
  v13.receiver = self;
  v13.super_class = VIBloomFilter;
  v8 = [(VIBloomFilter *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_numberOfBits = a4;
    v8->_seed = a5;
    v8->_numberOfHashes = a3;
    v8->_numberOfAddedItems = 0;
    v10 = [[VIBitVector alloc] initWithNumberOfBits:v8->_numberOfBits];
    bits = v9->_bits;
    v9->_bits = v10;
  }

  return v9;
}

- (VIBloomFilter)initWithData:(id)a3 numberOfHashes:(unsigned int)a4 numberOfBits:(unsigned int)a5 seed:(unsigned int)a6 error:(id *)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v21.receiver = self;
  v21.super_class = VIBloomFilter;
  v13 = [(VIBloomFilter *)&v21 init];
  v14 = v13;
  if (v13 && (v13->_numberOfBits = a5, v13->_seed = a6, v13->_numberOfHashes = a4, v13->_numberOfAddedItems = 0, v15 = [[VIBitVector alloc] initWithData:v12], bits = v14->_bits, v14->_bits = v15, bits, numberOfBits = v14->_numberOfBits, numberOfBits > [(VIBitVector *)v14->_bits numberOfBits]))
  {
    if (a7)
    {
      v22 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Incompatible data with bits: %lu and number of bits %lu", -[VIBitVector numberOfBits](v14->_bits, "numberOfBits"), v14->_numberOfBits];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

      *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.bloom_filter.error_domain" code:1 userInfo:v19];

      a7 = 0;
    }
  }

  else
  {
    a7 = v14;
  }

  return a7;
}

- (void)addItem:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  _HashItem(a3, v7);
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

- (BOOL)containsItem:(id)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  _HashItem(a3, v8);
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