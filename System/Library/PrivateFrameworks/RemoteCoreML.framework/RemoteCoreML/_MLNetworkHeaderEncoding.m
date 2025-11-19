@interface _MLNetworkHeaderEncoding
+ (id)acknowledgeFailData;
+ (id)acknowledgeSucessData;
+ (id)constructDataPacket:(id)a3 HeaderEncoding:(unint64_t)a4;
+ (unint64_t)getHeaderDataSize:(id)a3;
+ (unint64_t)getHeaderEncoding:(id)a3;
+ (void)getHeaderDataStart:(id)a3;
+ (void)getHeaderEnd:(id)a3;
@end

@implementation _MLNetworkHeaderEncoding

+ (id)constructDataPacket:(id)a3 HeaderEncoding:(unint64_t)a4
{
  v9 = a4;
  v4 = a3;
  v8 = [v4 length];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v9 length:8];
  [v5 appendBytes:&v8 length:8];
  v6 = [v4 bytes];

  [v5 appendBytes:v6 length:v8];

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

+ (unint64_t)getHeaderEncoding:(id)a3
{
  v3 = a3;
  if (![v3 bytes] || ((v4 = objc_msgSend(v3, "bytes"), v5 = *v4, *v4 >= kMLTextNetworkHeaderEncoding) ? (v6 = v5 > kMLIncomingDataNetworkHeaderEncoding) : (v6 = 1), v6))
  {
    v5 = kMLErrorNetworkHeaderEncoding;
  }

  return v5;
}

+ (unint64_t)getHeaderDataSize:(id)a3
{
  v3 = a3;
  if ([v3 bytes])
  {
    v4 = *([v3 bytes] + 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)getHeaderDataStart:(id)a3
{
  v3 = a3;
  if ([v3 bytes])
  {
    v4 = ([v3 bytes] + 16);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)getHeaderEnd:(id)a3
{
  v3 = a3;
  v4 = [_MLNetworkHeaderEncoding getHeaderDataSize:v3];
  if ([v3 bytes])
  {
    v5 = ([v3 bytes] + v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end