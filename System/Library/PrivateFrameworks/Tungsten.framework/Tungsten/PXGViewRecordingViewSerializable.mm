@interface PXGViewRecordingViewSerializable
- (PXGViewRecordingViewSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGViewRecordingViewSerializable

- (id)createSerializableObject
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"spriteIndex";
  v3 = [(PXGViewRecordingViewSerializable *)self spriteIndex];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v13[0] = v4;
  v12[1] = @"presentationType";
  v5 = [(PXGViewRecordingViewSerializable *)self presentationType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v13[1] = v6;
  v12[2] = @"payloadViewClass";
  v7 = [(PXGViewRecordingViewSerializable *)self payloadViewClass];
  v13[2] = v7;
  v12[3] = @"needsParenting";
  v8 = [(PXGViewRecordingViewSerializable *)self needsParenting];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (PXGViewRecordingViewSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXGViewRecordingViewSerializable;
  v5 = [(PXGViewRecordingViewSerializable *)&v15 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"spriteIndex"];
    v8 = [v7 unsignedIntValue];

    v5->_spriteIndex = v8;
    v9 = [v6 objectForKeyedSubscript:@"presentationType"];
    LOBYTE(v8) = [v9 unsignedIntValue];

    v5->_presentationType = v8;
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