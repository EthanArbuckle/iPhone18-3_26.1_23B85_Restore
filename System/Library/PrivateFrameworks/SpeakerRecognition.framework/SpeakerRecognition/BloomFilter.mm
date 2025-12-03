@interface BloomFilter
- (BOOL)contains:(id)contains;
- (BloomFilter)initWithCoder:(id)coder;
- (BloomFilter)initWithExpectedNumberOfItems:(unint64_t)items falsePositiveRate:(double)rate seed:(unsigned int)seed;
- (void)add:(id)add;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BloomFilter

- (void)encodeWithCoder:(id)coder
{
  bitVector = self->_bitVector;
  coderCopy = coder;
  bvData = [(BitVector *)bitVector bvData];
  [coderCopy encodeObject:bvData forKey:@"SSRBitVector-Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_expectedNumberOfItems];
  [coderCopy encodeObject:v6 forKey:@"SSRBloomFilter-NumItems"];

  [coderCopy encodeDouble:@"SSRBloomFilter-FalsePositiveRate" forKey:self->_falsePositiveRate];
  [coderCopy encodeInt32:self->_seed forKey:@"SSRBloomFilter-Seed"];
}

- (BloomFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSRBitVector-Data"];
  v6 = [coderCopy decodeInt32ForKey:@"SSRBloomFilter-Seed"];
  [coderCopy decodeDoubleForKey:@"SSRBloomFilter-FalsePositiveRate"];
  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSRBloomFilter-NumItems"];

  v10 = [v9 unsignedIntegerValue] - v6;
  v11 = [(BloomFilter *)self initWithExpectedNumberOfItems:v10 falsePositiveRate:v6 seed:v8];
  [(BloomFilter *)v11 _loadBitVectorData:v5];

  return v11;
}

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  v5 = +[MurmurHasher hash128WithKey:length:seed:](MurmurHasher, "hash128WithKey:length:seed:", [containsCopy bytes], objc_msgSend(containsCopy, "length"), self->_seed);
  if (self->_numberHashes)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(BitVector *)self->_bitVector testAtIndex:(v7 + v9 * v8) % self->_numberOfBits];
      if (!v11)
      {
        break;
      }

      v9 = ++v10;
    }

    while (self->_numberHashes > v10);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)add:(id)add
{
  addCopy = add;
  v4 = addCopy;
  v5 = +[MurmurHasher hash128WithKey:length:seed:](MurmurHasher, "hash128WithKey:length:seed:", [addCopy bytes], objc_msgSend(addCopy, "length"), self->_seed);
  if (self->_numberHashes)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      [(BitVector *)self->_bitVector setAtIndex:(v7 + v9 * v8) % self->_numberOfBits];
      v9 = ++v10;
    }

    while (self->_numberHashes > v10);
  }
}

- (BloomFilter)initWithExpectedNumberOfItems:(unint64_t)items falsePositiveRate:(double)rate seed:(unsigned int)seed
{
  v39 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = BloomFilter;
  v8 = [(BloomFilter *)&v24 init];
  if (v8)
  {
    SSRLogInitIfNeeded();
    v8->_seed = seed;
    v9 = items + seed;
    v8->_expectedNumberOfItems = v9;
    v8->_falsePositiveRate = rate;
    v10 = vcvtpd_u64_f64(log(rate) * v9 / -0.480453014);
    v8->_numberOfBits = v10;
    v8->_numberHashes = vcvtpd_u64_f64((v10 / v9) * 0.693147181);
    v11 = [[BitVector alloc] initWithNumberOfBits:v8->_numberOfBits];
    bitVector = v8->_bitVector;
    v8->_bitVector = v11;

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
    {
      seedCopy = seed;
      expectedNumberOfItems = v8->_expectedNumberOfItems;
      falsePositiveRate = v8->_falsePositiveRate;
      numberOfBits = v8->_numberOfBits;
      numberHashes = v8->_numberHashes;
      v19 = v8->_bitVector;
      v20 = v13;
      v21 = [(BitVector *)v19 description];
      *buf = 136316674;
      v26 = "[BloomFilter initWithExpectedNumberOfItems:falsePositiveRate:seed:]";
      v27 = 2048;
      v28 = expectedNumberOfItems;
      v29 = 2048;
      v30 = falsePositiveRate;
      v31 = 2048;
      v32 = numberOfBits;
      v33 = 2048;
      v34 = numberHashes;
      v35 = 2048;
      v36 = seedCopy;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_INFO, "%s _expectedNumberOfItems: %lu\n _falsePositiveRate: %f\n _numberOfBits: %lu\n _numberHashes: %lu\n seed: %lu\n BitVector: %@\n", buf, 0x48u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

@end