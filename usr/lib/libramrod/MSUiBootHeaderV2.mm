@interface MSUiBootHeaderV2
- (BOOL)loadHeaderAtOffset:(unsigned int)offset;
- (MSUiBootHeaderV2)initWithIOServiceWriter:(id)writer;
- (id)_hashData:(id)data withMethod:(id)method;
- (id)_hashDataWithNativeHashMethod:(id)method;
- (id)computeHash;
- (id)packStructure;
- (void)dealloc;
- (void)invalidate;
- (void)makeValid;
- (void)setAsFirstGeneration;
- (void)setHeaderHash:(char *)hash;
@end

@implementation MSUiBootHeaderV2

- (MSUiBootHeaderV2)initWithIOServiceWriter:(id)writer
{
  v5.receiver = self;
  v5.super_class = MSUiBootHeaderV2;
  v3 = [(MSUiBootHeader *)&v5 initWithIOServiceWriter:writer];
  if (v3)
  {
    v3->_headerHash = calloc(0x20uLL, 1uLL);
    v3->_headerReserved = calloc(0x10uLL, 1uLL);
    v3->_headerSignature = 1;
  }

  return v3;
}

- (void)setHeaderHash:(char *)hash
{
  headerHash = self->_headerHash;
  v4 = *(hash + 1);
  *headerHash = *hash;
  *(headerHash + 1) = v4;
}

- (id)packStructure
{
  v6[0] = 1095128392;
  v6[1] = [(MSUiBootHeaderV2 *)self headerVersion];
  v6[2] = [(MSUiBootHeader *)self headerGeneration];
  v6[3] = [(MSUiBootHeader *)self imageAddress];
  headerHash = self->_headerHash;
  v4 = *(headerHash + 1);
  v8 = *headerHash;
  v9 = v4;
  v7 = *self->_headerReserved;
  return [NSData dataWithBytes:v6 length:64];
}

- (BOOL)loadHeaderAtOffset:(unsigned int)offset
{
  v3 = *&offset;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  v9 = 0u;
  v5 = [(IOServiceWriter *)[(MSUiBootHeader *)self serviceWriter] readDataAtOffset:*&offset ofLength:64];
  v6 = [v5 length];
  if (v6)
  {
    [v5 getBytes:&v8 length:64];
    [(MSUiBootHeaderV2 *)self setHeaderVersion:DWORD1(v8)];
    [(MSUiBootHeader *)self setHeaderGeneration:DWORD2(v8)];
    [(MSUiBootHeader *)self setImageAddress:HIDWORD(v8)];
    [(MSUiBootHeaderV2 *)self setHeaderSignature:v8];
    [(MSUiBootHeaderV2 *)self setHeaderHash:v10];
    [(MSUiBootHeaderV2 *)self setHeaderReserved:&v9];
    [(MSUiBootHeader *)self setStartLocation:v3];
  }

  return v6 != 0;
}

- (void)setAsFirstGeneration
{
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeaderV1 *)&v3 setAsFirstGeneration];
  [(MSUiBootHeader *)self setHeaderGeneration:1];
}

- (void)invalidate
{
  [(MSUiBootHeaderV2 *)self setHeaderSignature:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeaderV1 *)&v3 invalidate];
}

- (void)makeValid
{
  [(MSUiBootHeaderV2 *)self setHeaderSignature:1095128392];
  [(MSUiBootHeaderV2 *)self setHeaderVersion:1];
  v3 = [-[MSUiBootHeaderV2 computeHash](self "computeHash")];

  [(MSUiBootHeaderV2 *)self setHeaderHash:v3];
}

- (id)computeHash
{
  v3 = [-[MSUiBootHeaderV2 packStructure](self "packStructure")];

  return [(MSUiBootHeaderV2 *)self _hashDataWithNativeHashMethod:v3];
}

- (id)_hashDataWithNativeHashMethod:(id)method
{
  v5 = MGCopyAnswer();

  return [(MSUiBootHeaderV2 *)self _hashData:method withMethod:v5];
}

- (id)_hashData:(id)data withMethod:(id)method
{
  v6 = [data length];
  if ([method isEqualToString:kAMAuthInstallApParameterImg4DigestSHA1])
  {
    v7 = 20;
    v8 = calloc(0x14uLL, 1uLL);
    CC_SHA1([data bytes], v6, v8);
  }

  else if ([method isEqualToString:kAMAuthInstallApParameterImg4DigestSHA384])
  {
    v7 = 48;
    v8 = calloc(0x30uLL, 1uLL);
    CC_SHA384([data bytes], v6, v8);
  }

  else
  {
    iBU_LOG_real(@"Unknown hash digest type: %@", "[MSUiBootHeaderV2 _hashData:withMethod:]", v9, v10, v11, v12, v13, v14, method);
    v8 = 0;
    v7 = 0;
  }

  v15 = [NSData dataWithBytes:v8 length:v7];
  free(v8);
  return v15;
}

- (void)dealloc
{
  free(self->_headerHash);
  free(self->_headerReserved);
  v3.receiver = self;
  v3.super_class = MSUiBootHeaderV2;
  [(MSUiBootHeader *)&v3 dealloc];
}

@end