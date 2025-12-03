@interface PXGPayloadTexture
- (CGSize)pixelSize;
- (PXGPayloadTexture)init;
- (PXGPayloadTexture)initWithPayload:(id)payload presentationType:(unsigned __int8)type;
@end

@implementation PXGPayloadTexture

- (CGSize)pixelSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (PXGPayloadTexture)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPayloadTexture.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXGPayloadTexture init]"}];

  abort();
}

- (PXGPayloadTexture)initWithPayload:(id)payload presentationType:(unsigned __int8)type
{
  payloadCopy = payload;
  v11.receiver = self;
  v11.super_class = PXGPayloadTexture;
  v7 = [(PXGBaseTexture *)&v11 init];
  if (v7)
  {
    v8 = [payloadCopy copyWithZone:0];
    payload = v7->_payload;
    v7->_payload = v8;

    v7->_presentationType = type;
  }

  return v7;
}

@end