@interface ICSDigestPair
+ (id)digestPairWithSerializedData:(id)data;
- (id)serializedData;
@end

@implementation ICSDigestPair

+ (id)digestPairWithSerializedData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4 == 40)
  {
    bytes = [dataCopy bytes];
    v5 = objc_opt_new();
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:20];
    v11 = v5[1];
    v5[1] = v10;

    v12 = MEMORY[0x277CBEA90];
    v13 = bytes + 20;
    goto LABEL_9;
  }

  if (v4 == 21)
  {
    bytes2 = [dataCopy bytes];
    if (*bytes2)
    {
      goto LABEL_6;
    }

    v14 = bytes2;
    v5 = objc_opt_new();
    v12 = MEMORY[0x277CBEA90];
    v13 = (v14 + 1);
LABEL_9:
    v15 = [v12 dataWithBytes:v13 length:20];
    v7 = v5[2];
    v5[2] = v15;
    goto LABEL_10;
  }

  if (v4 != 20)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = objc_opt_new();
  v6 = dataCopy;
  v7 = v5[1];
  v5[1] = v6;
LABEL_10:

LABEL_11:

  return v5;
}

- (id)serializedData
{
  unprocessedDigest = self->_unprocessedDigest;
  if ((unprocessedDigest || self->_processedDigest) && (![(NSData *)unprocessedDigest length]|| [(NSData *)self->_unprocessedDigest length]== 20) && (![(NSData *)self->_processedDigest length]|| [(NSData *)self->_processedDigest length]== 20))
  {
    v4 = self->_unprocessedDigest;
    if (self->_processedDigest)
    {
      if (v4)
      {
        v5 = [MEMORY[0x277CBEB28] dataWithCapacity:40];
        [(NSData *)v5 appendData:self->_unprocessedDigest];
      }

      else
      {
        v5 = [MEMORY[0x277CBEB28] dataWithCapacity:21];
        v7 = 0;
        [(NSData *)v5 appendBytes:&v7 length:1];
      }

      [(NSData *)v5 appendData:self->_processedDigest];
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end