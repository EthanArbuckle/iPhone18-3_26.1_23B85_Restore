@interface VKRecognizedBarcode
- (CIBarcodeDescriptor)barcodeDescriptor;
- (NSString)payloadStringValue;
- (NSString)symbology;
- (VKRecognizedBarcode)initWithFrameInfo:(id)a3 barcodeObservation:(id)a4;
- (VNBarcodeObservation)observation;
- (id)description;
@end

@implementation VKRecognizedBarcode

- (VKRecognizedBarcode)initWithFrameInfo:(id)a3 barcodeObservation:(id)a4
{
  v5.receiver = self;
  v5.super_class = VKRecognizedBarcode;
  return [(VKRecognizedItem *)&v5 initWithFrameInfo:a3 rectangleObservation:a4];
}

- (VNBarcodeObservation)observation
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = VKRecognizedBarcode;
  v4 = [(VKRecognizedItem *)&v7 observation];
  v5 = VKDynamicCast(v3, v4);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VKRecognizedBarcode;
  v4 = [(VKRecognizedBarcode *)&v9 description];
  v5 = [(VKRecognizedBarcode *)self observation];
  v6 = [v5 payloadStringValue];
  v7 = [v3 stringWithFormat:@"%@ payload:%@", v4, v6];

  return v7;
}

- (NSString)symbology
{
  v2 = [(VKRecognizedBarcode *)self observation];
  v3 = [v2 symbology];

  return v3;
}

- (CIBarcodeDescriptor)barcodeDescriptor
{
  v2 = [(VKRecognizedBarcode *)self observation];
  v3 = [v2 barcodeDescriptor];

  return v3;
}

- (NSString)payloadStringValue
{
  v2 = [(VKRecognizedBarcode *)self observation];
  v3 = [v2 payloadStringValue];

  return v3;
}

@end