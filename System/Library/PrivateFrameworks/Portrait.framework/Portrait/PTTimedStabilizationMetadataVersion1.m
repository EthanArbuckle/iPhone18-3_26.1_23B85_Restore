@interface PTTimedStabilizationMetadataVersion1
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (PTTimedStabilizationMetadataVersion1)initWithData:(id)a3 minorVersion:(unsigned int)a4;
- (PTTimedStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)a3;
- (__n128)setStabilizationHomography:(__n128)a3;
- (__n128)stabilizationHomography;
- (double)estimatedMotionBlur;
- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3;
@end

@implementation PTTimedStabilizationMetadataVersion1

- (__n128)stabilizationHomography
{
  if (a1[4].n128_u8[0] != 1)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"stabilizationHomography is optional metadata and hasn't been found." userInfo:{0, v1, v2}];
    objc_exception_throw(v4);
  }

  return a1[1];
}

- (__n128)setStabilizationHomography:(__n128)a3
{
  result[4].n128_u8[0] = 1;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

- (double)estimatedMotionBlur
{
  if (*(a1 + 80) != 1)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"estimatedMotionBlur is optional metadata and hasn't been found." userInfo:{0, v1, v2}];
    objc_exception_throw(v4);
  }

  return *(a1 + 72);
}

- (PTTimedStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = PTTimedStabilizationMetadataVersion1;
  v3 = [(PTTimedStabilizationMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3
{
  if (self->_hasStabilizationHomography)
  {
    v3 = 80;
  }

  else
  {
    v3 = 8;
  }

  if (LOBYTE(self[1].super.super.isa))
  {
    return v3 + 16;
  }

  else
  {
    return v3;
  }
}

- (PTTimedStabilizationMetadataVersion1)initWithData:(id)a3 minorVersion:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PTTimedStabilizationMetadataVersion1 *)self initWithMinorVersion:v4];
  if (v7 && ((v8 = [v6 bytes], v9 = bswap32(*v8), objc_msgSend(v6, "length") == v9) ? (v10 = (v9 & 7) == 0) : (v10 = 0), v10))
  {
    v11 = (v9 + 0x7FFFFFFF8) >> 3;
    v26 = 0u;
    v27 = 0u;
    v12 = 1;
    v25 = 0u;
    v13 = 1;
    do
    {
      v24 = 0;
      [PTParameterPairSerialization getFloatParameter:v12 fromPairs:v8 + 2 numPairs:v11 didFindValue:&v24];
      if ((((v12 - 1) % 3u) & 0xFELL) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = (v12 - 1) % 3u;
      }

      *((&v25 + (v12 - 1) / 3u) | (4 * v15)) = v14;
      v13 &= v24;
      ++v12;
    }

    while (v12 != 10);
    if (v13)
    {
      v7->_hasStabilizationHomography = 1;
      v16 = v27;
      *&v7->_anon_10[16] = v26;
      *&v7->_anon_10[32] = v16;
      *v7->_anon_10 = v25;
    }

    v23 = 0;
    v22 = 0;
    [PTParameterPairSerialization getFloatParameter:10 fromPairs:v8 + 2 numPairs:v11 didFindValue:&v23];
    v21 = v17;
    [PTParameterPairSerialization getFloatParameter:11 fromPairs:v8 + 2 numPairs:v11 didFindValue:&v22];
    if (v23 == 1 && v22 == 1)
    {
      LOBYTE(v7[1].super.super.isa) = 1;
      *&v7->_estimatedMotionBlur[7] = __PAIR64__(v18, v21);
    }

    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTTimedStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] >= v8 && -[PTTimedStabilizationMetadata majorVersion](self, "majorVersion") == 1)
  {
    v9 = [v6 mutableBytes];
    *v9 = bswap32([(PTTimedStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7]);
    v9[1] = 1650553971;
    v17 = v9 + 2;
    if (self->_hasStabilizationHomography)
    {
      for (i = 1; i != 10; ++i)
      {
        LODWORD(v10) = *&self->_anon_10[16 * ((i - 1) / 3u) + 4 * ((i - 1 + (i - 1) / 3u) & 3)];
        [PTParameterPairSerialization appendFloatParameter:i value:&v17 toOutput:v10];
      }
    }

    if (LOBYTE(self[1].super.super.isa) == 1)
    {
      [PTParameterPairSerialization appendFloatParameter:10 value:&v17 toOutput:*&self->_estimatedMotionBlur[7]];
      LODWORD(v12) = *(&self->_hasEstimatedMotionBlur + 3);
      [PTParameterPairSerialization appendFloatParameter:11 value:&v17 toOutput:v12];
    }

    v13 = v17;
    v14 = v13 - [v6 bytes];
    v15 = v14 == [(PTTimedStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end