@interface BloomFilter
- (BOOL)contains:(id)a3;
- (BloomFilter)initWithCoder:(id)a3;
- (BloomFilter)initWithExpectedNumberOfItems:(unint64_t)a3 falsePositiveRate:(double)a4 seed:(unsigned int)a5;
- (void)add:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BloomFilter

- (void)encodeWithCoder:(id)a3
{
  bitVector = self->_bitVector;
  v7 = a3;
  v5 = [(BitVector *)bitVector bvData];
  [v7 encodeObject:v5 forKey:@"SSRBitVector-Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_expectedNumberOfItems];
  [v7 encodeObject:v6 forKey:@"SSRBloomFilter-NumItems"];

  [v7 encodeDouble:@"SSRBloomFilter-FalsePositiveRate" forKey:self->_falsePositiveRate];
  [v7 encodeInt32:self->_seed forKey:@"SSRBloomFilter-Seed"];
}

- (BloomFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSRBitVector-Data"];
  v6 = [v4 decodeInt32ForKey:@"SSRBloomFilter-Seed"];
  [v4 decodeDoubleForKey:@"SSRBloomFilter-FalsePositiveRate"];
  v8 = v7;
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSRBloomFilter-NumItems"];

  v10 = [v9 unsignedIntegerValue] - v6;
  v11 = [(BloomFilter *)self initWithExpectedNumberOfItems:v10 falsePositiveRate:v6 seed:v8];
  [(BloomFilter *)v11 _loadBitVectorData:v5];

  return v11;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = +[MurmurHasher hash128WithKey:length:seed:](MurmurHasher, "hash128WithKey:length:seed:", [v4 bytes], objc_msgSend(v4, "length"), self->_seed);
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

- (void)add:(id)a3
{
  v11 = a3;
  v4 = v11;
  v5 = +[MurmurHasher hash128WithKey:length:seed:](MurmurHasher, "hash128WithKey:length:seed:", [v11 bytes], objc_msgSend(v11, "length"), self->_seed);
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

- (BloomFilter)initWithExpectedNumberOfItems:(unint64_t)a3 falsePositiveRate:(double)a4 seed:(unsigned int)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = BloomFilter;
  v8 = [(BloomFilter *)&v24 init];
  if (v8)
  {
    SSRLogInitIfNeeded();
    v8->_seed = a5;
    v9 = a3 + a5;
    v8->_expectedNumberOfItems = v9;
    v8->_falsePositiveRate = a4;
    v10 = vcvtpd_u64_f64(log(a4) * v9 / -0.480453014);
    v8->_numberOfBits = v10;
    v8->_numberHashes = vcvtpd_u64_f64((v10 / v9) * 0.693147181);
    v11 = [[BitVector alloc] initWithNumberOfBits:v8->_numberOfBits];
    bitVector = v8->_bitVector;
    v8->_bitVector = v11;

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
    {
      v14 = a5;
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
      v36 = v14;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_INFO, "%s _expectedNumberOfItems: %lu\n _falsePositiveRate: %f\n _numberOfBits: %lu\n _numberHashes: %lu\n seed: %lu\n BitVector: %@\n", buf, 0x48u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

@end