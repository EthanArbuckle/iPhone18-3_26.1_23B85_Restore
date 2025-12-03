@interface PTGlobalStabilizationMetadataVersion1
- ($2825F4736939C4A6D3AD43837233062D)originalVideoDimensions;
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (PTGlobalStabilizationMetadataVersion1)initWithData:(id)data;
- (PTGlobalStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)version;
- (unsigned)sizeOfSerializedObjectWithOptions:(id)options;
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

- (PTGlobalStabilizationMetadataVersion1)initWithMinorVersion:(unsigned int)version
{
  v7.receiver = self;
  v7.super_class = PTGlobalStabilizationMetadataVersion1;
  v3 = [(PTGlobalStabilizationMetadata *)&v7 initWithMajorVersion:1 minorVersion:*&version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (unsigned)sizeOfSerializedObjectWithOptions:(id)options
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

- (PTGlobalStabilizationMetadataVersion1)initWithData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v6 = bswap32(bytes[3]);
  v15.receiver = self;
  v15.super_class = PTGlobalStabilizationMetadataVersion1;
  v7 = [(PTGlobalStabilizationMetadata *)&v15 initWithMajorVersion:1 minorVersion:v6];
  if (v7 && (v8 = bswap32(*bytes), [dataCopy length] == v8) && (v8 & 7) == 0 && -[PTGlobalStabilizationMetadata majorVersion](v7, "majorVersion") == 1 && -[PTGlobalStabilizationMetadata majorVersion](v7, "majorVersion") == bswap32(bytes[2]))
  {
    v9 = (v8 + 0x7FFFFFFF0) >> 3;
    v14 = 0;
    v10 = [PTParameterPairSerialization getUIntParameter:1 fromPairs:bytes + 4 numPairs:v9 didFindValue:&v14 + 1];
    v11 = [PTParameterPairSerialization getUIntParameter:2 fromPairs:bytes + 4 numPairs:v9 didFindValue:&v14];
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

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  if ([dataCopy length] >= v8 && -[PTGlobalStabilizationMetadata majorVersion](self, "majorVersion") == 1)
  {
    mutableBytes = [dataCopy mutableBytes];
    *mutableBytes = bswap32([(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy]);
    mutableBytes[1] = 1650553971;
    mutableBytes[2] = bswap32([(PTGlobalStabilizationMetadata *)self majorVersion]);
    mutableBytes[3] = bswap32([(PTGlobalStabilizationMetadata *)self minorVersion]);
    v10 = mutableBytes + 4;
    v14 = v10;
    if (self->_hasOriginalVideoDimensions)
    {
      [PTParameterPairSerialization appendUIntParameter:1 value:self->_originalVideoDimensions.width toOutput:&v14];
      [PTParameterPairSerialization appendUIntParameter:2 value:self->_originalVideoDimensions.height toOutput:&v14];
      v10 = v14;
    }

    v11 = v10 - [dataCopy bytes];
    v12 = v11 == [(PTGlobalStabilizationMetadataVersion1 *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end