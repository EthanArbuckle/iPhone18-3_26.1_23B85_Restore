@interface VKRecognizedBarcode
- (CIBarcodeDescriptor)barcodeDescriptor;
- (NSString)payloadStringValue;
- (NSString)symbology;
- (VKRecognizedBarcode)initWithFrameInfo:(id)info barcodeObservation:(id)observation;
- (VNBarcodeObservation)observation;
- (id)description;
@end

@implementation VKRecognizedBarcode

- (VKRecognizedBarcode)initWithFrameInfo:(id)info barcodeObservation:(id)observation
{
  v5.receiver = self;
  v5.super_class = VKRecognizedBarcode;
  return [(VKRecognizedItem *)&v5 initWithFrameInfo:info rectangleObservation:observation];
}

- (VNBarcodeObservation)observation
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = VKRecognizedBarcode;
  observation = [(VKRecognizedItem *)&v7 observation];
  v5 = VKDynamicCast(v3, observation);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VKRecognizedBarcode;
  v4 = [(VKRecognizedBarcode *)&v9 description];
  observation = [(VKRecognizedBarcode *)self observation];
  payloadStringValue = [observation payloadStringValue];
  v7 = [v3 stringWithFormat:@"%@ payload:%@", v4, payloadStringValue];

  return v7;
}

- (NSString)symbology
{
  observation = [(VKRecognizedBarcode *)self observation];
  symbology = [observation symbology];

  return symbology;
}

- (CIBarcodeDescriptor)barcodeDescriptor
{
  observation = [(VKRecognizedBarcode *)self observation];
  barcodeDescriptor = [observation barcodeDescriptor];

  return barcodeDescriptor;
}

- (NSString)payloadStringValue
{
  observation = [(VKRecognizedBarcode *)self observation];
  payloadStringValue = [observation payloadStringValue];

  return payloadStringValue;
}

@end