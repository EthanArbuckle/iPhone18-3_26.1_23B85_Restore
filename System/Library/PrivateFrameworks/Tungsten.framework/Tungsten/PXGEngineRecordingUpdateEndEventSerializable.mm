@interface PXGEngineRecordingUpdateEndEventSerializable
- (PXGEngineRecordingUpdateEndEventSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGEngineRecordingUpdateEndEventSerializable

- (id)createSerializableObject
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"updated";
  updated = [(PXGEngineRecordingUpdateEndEventSerializable *)self updated];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:updated];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (PXGEngineRecordingUpdateEndEventSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PXGEngineRecordingUpdateEndEventSerializable;
  v5 = [(PXGEngineRecordingUpdateEndEventSerializable *)&v8 init];
  if (v5)
  {
    v6 = [objectCopy objectForKeyedSubscript:@"updated"];
    v5->_updated = [v6 BOOLValue];
  }

  return v5;
}

@end