@interface PXGViewRecordingViewSerializable
- (PXGViewRecordingViewSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGViewRecordingViewSerializable

- (id)createSerializableObject
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"spriteIndex";
  spriteIndex = [(PXGViewRecordingViewSerializable *)self spriteIndex];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:spriteIndex];
  v13[0] = v4;
  v12[1] = @"presentationType";
  presentationType = [(PXGViewRecordingViewSerializable *)self presentationType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:presentationType];
  v13[1] = v6;
  v12[2] = @"payloadViewClass";
  payloadViewClass = [(PXGViewRecordingViewSerializable *)self payloadViewClass];
  v13[2] = payloadViewClass;
  v12[3] = @"needsParenting";
  needsParenting = [(PXGViewRecordingViewSerializable *)self needsParenting];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:needsParenting];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (PXGViewRecordingViewSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = PXGViewRecordingViewSerializable;
  v5 = [(PXGViewRecordingViewSerializable *)&v15 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:@"spriteIndex"];
    unsignedIntValue = [v7 unsignedIntValue];

    v5->_spriteIndex = unsignedIntValue;
    v9 = [v6 objectForKeyedSubscript:@"presentationType"];
    LOBYTE(unsignedIntValue) = [v9 unsignedIntValue];

    v5->_presentationType = unsignedIntValue;
    v10 = [v6 objectForKeyedSubscript:@"payloadViewClass"];
    payloadViewClass = v5->_payloadViewClass;
    v5->_payloadViewClass = v10;

    v12 = [v6 objectForKeyedSubscript:@"needsParenting"];

    v13 = v12;
    LOBYTE(v12) = [v13 BOOLValue];

    v5->_needsParenting = v12;
  }

  return v5;
}

@end