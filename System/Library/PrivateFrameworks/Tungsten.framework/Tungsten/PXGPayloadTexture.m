@interface PXGPayloadTexture
- (CGSize)pixelSize;
- (PXGPayloadTexture)init;
- (PXGPayloadTexture)initWithPayload:(id)a3 presentationType:(unsigned __int8)a4;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGPayloadTexture.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXGPayloadTexture init]"}];

  abort();
}

- (PXGPayloadTexture)initWithPayload:(id)a3 presentationType:(unsigned __int8)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PXGPayloadTexture;
  v7 = [(PXGBaseTexture *)&v11 init];
  if (v7)
  {
    v8 = [v6 copyWithZone:0];
    payload = v7->_payload;
    v7->_payload = v8;

    v7->_presentationType = a4;
  }

  return v7;
}

@end