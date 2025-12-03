@interface MantaFTABSubfile
- (MantaFTABSubfile)initWithTag:(id)tag data:(id)data;
- (MantaFTABSubfile)initWithTag:(id)tag dataPointer:(const void *)pointer dataLength:(unsigned int)length;
- (NSString)dumpString;
- (id)generateHashSHA256;
- (id)generateHashSHA384;
- (id)generateHashSHA512;
@end

@implementation MantaFTABSubfile

- (NSString)dumpString
{
  string = [MEMORY[0x29EDBA050] string];
  v4 = [(MantaFTABSubfile *)self tag];
  [string appendFormat:@"Subfile Tag: %@\n", v4];

  [string appendFormat:@"Length: %u\n", -[MantaFTABSubfile dataLength](self, "dataLength")];
  v5 = FormatHex([(MantaFTABSubfile *)self dataPointer], [(MantaFTABSubfile *)self dataLength], 1);
  [string appendString:v5];
  v6 = [MEMORY[0x29EDBA0F8] stringWithString:string];

  return v6;
}

- (MantaFTABSubfile)initWithTag:(id)tag dataPointer:(const void *)pointer dataLength:(unsigned int)length
{
  tagCopy = tag;
  v13.receiver = self;
  v13.super_class = MantaFTABSubfile;
  v9 = [(MantaFTABSubfile *)&v13 init];
  if (v9)
  {
    v10 = [tagCopy copy];
    tag = v9->_tag;
    v9->_tag = v10;

    v9->_dataPointer = pointer;
    v9->_dataLength = length;
  }

  return v9;
}

- (MantaFTABSubfile)initWithTag:(id)tag data:(id)data
{
  tagCopy = tag;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = MantaFTABSubfile;
  v8 = [(MantaFTABSubfile *)&v14 init];
  if (v8)
  {
    v9 = [tagCopy copy];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;

    v8->_dataPointer = [(NSData *)v8->_data bytes];
    v8->_dataLength = [(NSData *)v8->_data length];
  }

  return v8;
}

- (id)generateHashSHA256
{
  v8 = *MEMORY[0x29EDCA608];
  memset(&v6, 0, sizeof(v6));
  CC_SHA256_Init(&v6);
  CC_SHA256_Update(&v6, self->_dataPointer, self->_dataLength);
  CC_SHA256_Final(md, &v6);
  v3 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:32];
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)generateHashSHA384
{
  v8 = *MEMORY[0x29EDCA608];
  memset(&v6, 0, sizeof(v6));
  CC_SHA384_Init(&v6);
  CC_SHA384_Update(&v6, self->_dataPointer, self->_dataLength);
  CC_SHA384_Final(md, &v6);
  v3 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:48];
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)generateHashSHA512
{
  v8 = *MEMORY[0x29EDCA608];
  memset(&v6, 0, sizeof(v6));
  CC_SHA512_Init(&v6);
  CC_SHA512_Update(&v6, self->_dataPointer, self->_dataLength);
  CC_SHA512_Final(md, &v6);
  v3 = [MEMORY[0x29EDB8DA0] dataWithBytes:md length:64];
  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

@end