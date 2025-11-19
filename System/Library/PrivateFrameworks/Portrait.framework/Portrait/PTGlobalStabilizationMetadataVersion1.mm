@interface PTGlobalStabilizationMetadataVersion1
- ($2825F4736939C4A6D3AD43837233062D)originalVideoDimensions;
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (PTGlobalStabilizationMetadataVersion1)initWithData:(id)a3;
- (PTGlobalStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)a3;
- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3;
@end

@implementation PTGlobalStabilizationMetadataVersion1

- ($2825F4736939C4A6D3AD43837233062D)originalVideoDimensions
{
  if (!self->_hasOriginalVideoDimensions)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"originalVideoDimensions is optional metadata and hasn't been found." userInfo:{0, v2, v3}];
    objc_exception_throw(v5);
  }

  return self->_originalVideoDimensions;
}

- (PTGlobalStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = PTGlobalStabilizationMetadataVersion1;
  v3 = [(PTGlobalStabilizationMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3
{
  if (self->_hasOriginalVideoDimensions)
  {
    return 32;
  }

  else
  {
    return 16;
  }
}

- (PTGlobalStabilizationMetadataVersion1)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  v6 = bswap32(v5[3]);
  v15.receiver = self;
  v15.super_class = PTGlobalStabilizationMetadataVersion1;
  v7 = [(PTGlobalStabilizationMetadata *)&v15 initWithMajorVersion:1 minorVersion:v6];
  if (v7 && (v8 = bswap32(*v5), [v4 length] == v8) && (v8 & 7) == 0 && -[PTGlobalStabilizationMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalStabilizationMetadata majorVersion](v7, "majorVersion") == bswap32(v5[2]))
  {
    v9 = (v8 + 0x7FFFFFFF0) >> 3;
    v14 = 0;
    v10 = [PTParameterPairSerialization getUIntParameter:1 fromPairs:v5 + 4 numPairs:v9 didFindValue:&v14 + 1];
    v11 = [PTParameterPairSerialization getUIntParameter:2 fromPairs:v5 + 4 numPairs:v9 didFindValue:&v14];
    if (HIBYTE(v14) == 1 && v14 == 1)
    {
      v7->_hasOriginalVideoDimensions = 1;
      v7->_originalVideoDimensions.width = v10;
      v7->_originalVideoDimensions.height = v11;
    }

    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  if ([v6 length] >= v8 && -[PTGlobalStabilizationMetadata majorVersion](self, "majorVersion") == 1)
  {
    v9 = [v6 mutableBytes];
    *v9 = bswap32([(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7]);
    v9[1] = 1650553971;
    v9[2] = bswap32([(PTGlobalStabilizationMetadata *)self majorVersion]);
    v9[3] = bswap32([(PTGlobalStabilizationMetadata *)self minorVersion]);
    v10 = v9 + 4;
    v14 = v10;
    if (self->_hasOriginalVideoDimensions)
    {
      [PTParameterPairSerialization appendUIntParameter:1 value:self->_originalVideoDimensions.width toOutput:&v14];
      [PTParameterPairSerialization appendUIntParameter:2 value:self->_originalVideoDimensions.height toOutput:&v14];
      v10 = v14;
    }

    v11 = v10 - [v6 bytes];
    v12 = v11 == [(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end