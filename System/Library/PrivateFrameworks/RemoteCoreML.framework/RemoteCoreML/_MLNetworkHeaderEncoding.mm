@interface _MLNetworkHeaderEncoding
+ (id)acknowledgeFailData;
+ (id)acknowledgeSucessData;
+ (id)constructDataPacket:(id)packet HeaderEncoding:(unint64_t)encoding;
+ (unint64_t)getHeaderDataSize:(id)size;
+ (unint64_t)getHeaderEncoding:(id)encoding;
+ (void)getHeaderDataStart:(id)start;
+ (void)getHeaderEnd:(id)end;
@end

@implementation _MLNetworkHeaderEncoding

+ (id)constructDataPacket:(id)packet HeaderEncoding:(unint64_t)encoding
{
  encodingCopy = encoding;
  packetCopy = packet;
  v8 = [packetCopy length];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&encodingCopy length:8];
  [v5 appendBytes:&v8 length:8];
  bytes = [packetCopy bytes];

  [v5 appendBytes:bytes length:v8];

  return v5;
}

+ (id)acknowledgeSucessData
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = [@"SUCCESS" dataUsingEncoding:4];
  v4 = [v2 initWithData:v3];

  v5 = [_MLNetworkHeaderEncoding constructDataPacket:v4 HeaderEncoding:kMLAckSuccessNetworkHeaderEncoding];

  return v5;
}

+ (id)acknowledgeFailData
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = [@"FAIL" dataUsingEncoding:4];
  v4 = [v2 initWithData:v3];

  v5 = [_MLNetworkHeaderEncoding constructDataPacket:v4 HeaderEncoding:kMLAckFailNetworkHeaderEncoding];

  return v5;
}

+ (unint64_t)getHeaderEncoding:(id)encoding
{
  encodingCopy = encoding;
  if (![encodingCopy bytes] || ((v4 = objc_msgSend(encodingCopy, "bytes"), v5 = *v4, *v4 >= kMLTextNetworkHeaderEncoding) ? (v6 = v5 > kMLIncomingDataNetworkHeaderEncoding) : (v6 = 1), v6))
  {
    v5 = kMLErrorNetworkHeaderEncoding;
  }

  return v5;
}

+ (unint64_t)getHeaderDataSize:(id)size
{
  sizeCopy = size;
  if ([sizeCopy bytes])
  {
    v4 = *([sizeCopy bytes] + 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)getHeaderDataStart:(id)start
{
  startCopy = start;
  if ([startCopy bytes])
  {
    v4 = ([startCopy bytes] + 16);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)getHeaderEnd:(id)end
{
  endCopy = end;
  v4 = [_MLNetworkHeaderEncoding getHeaderDataSize:endCopy];
  if ([endCopy bytes])
  {
    v5 = ([endCopy bytes] + v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end