@interface _PASBloomFilterForWriting
+ (id)bloomFilterInMemoryWithNumberOfValuesN:(unint64_t)a3 errorRateP:(float)a4;
- (void)setWithHashes:(id)a3;
@end

@implementation _PASBloomFilterForWriting

- (void)setWithHashes:(id)a3
{
  v5 = self->super._data;
  v6 = [a3 hashes];
  v13 = 0;
  if (self->super._numHashFunctions >= 1)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = *(v7 + 4 * v8);
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v10 = v9 % self->super._numBits;
      v11 = 1 << (v10 & 7);
      v12 = (v10 >> 3) + 16;
      [(NSData *)v5 getBytes:&v13 range:v12, 1];
      v13 |= v11;
      [(NSData *)v5 replaceBytesInRange:v12 withBytes:1 length:&v13, 1];
      ++v8;
    }

    while (v8 < self->super._numHashFunctions);
  }
}

+ (id)bloomFilterInMemoryWithNumberOfValuesN:(unint64_t)a3 errorRateP:(float)a4
{
  v9 = 1000;
  if (a3 > 0x3E8)
  {
    v9 = a3;
  }

  v10 = 0.00001;
  if (a4 >= 0.00001)
  {
    v10 = a4;
    if (a4 > 0.99999)
    {
      v10 = 0.99999;
    }
  }

  v20 = v8;
  v21 = v7;
  v22 = v5;
  v23 = v6;
  v11 = v9;
  v12 = ceil(log(v10) * v9 / -0.480453014);
  LODWORD(v4) = vcvtad_u64_f64(v12 * 0.693147181 / v11);
  if (v4 <= 0x40 && (v13 = vcvtps_u32_f32(vcvts_n_f32_u64(vcvtpd_u64_f64(v12 * 0.125) + 16, 0xEuLL)), v13 << 14 <= 0x40000000))
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v13 << 14];
    v18 = bswap32([v15 length] - 16);
    v19 = v4 << 24;
    [v15 replaceBytesInRange:0 withBytes:16 length:{&v17, 16}];
    v14 = [[_PASBloomFilterForWriting alloc] initWithData:v15 numBits:((v13 << 17) - 128) hashFunctionCode:1 numHashFunctions:v4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end