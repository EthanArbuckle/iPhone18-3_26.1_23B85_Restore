@interface PXGEngineRecordingUpdateStartEventSerializable
- (PXGEngineRecordingUpdateStartEventSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGEngineRecordingUpdateStartEventSerializable

- (id)createSerializableObject
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"targetTimestamp";
  [(PXGEngineRecordingUpdateStartEventSerializable *)self targetTimestamp];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v11[0] = v3;
  v10[1] = @"needsUpdate";
  needsUpdate = [(PXGEngineRecordingUpdateStartEventSerializable *)self needsUpdate];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:needsUpdate];
  v11[1] = v5;
  v10[2] = @"pendingUpdateEntities";
  pendingUpdateEntities = [(PXGEngineRecordingUpdateStartEventSerializable *)self pendingUpdateEntities];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:pendingUpdateEntities];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (PXGEngineRecordingUpdateStartEventSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = PXGEngineRecordingUpdateStartEventSerializable;
  v5 = [(PXGEngineRecordingUpdateStartEventSerializable *)&v16 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:@"targetTimestamp"];
    [v7 doubleValue];
    v9 = v8;

    v5->_targetTimestamp = v9;
    v10 = [v6 objectForKeyedSubscript:@"needsUpdate"];
    unsignedIntValue = [v10 unsignedIntValue];

    v5->_needsUpdate = unsignedIntValue;
    v12 = [v6 objectForKeyedSubscript:@"pendingUpdateEntities"];

    v13 = v12;
    unsignedIntValue2 = [v13 unsignedIntValue];

    v5->_pendingUpdateEntities = unsignedIntValue2;
  }

  return v5;
}

@end