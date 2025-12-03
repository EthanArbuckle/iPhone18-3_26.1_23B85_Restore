@interface PXGMetalRecordingTextureCreatedEventSerializable
- (PXGMetalRecordingTextureCreatedEventSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGMetalRecordingTextureCreatedEventSerializable

- (id)createSerializableObject
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"texture";
  texture = [(PXGMetalRecordingTextureCreatedEventSerializable *)self texture];
  createSerializableObject = [texture createSerializableObject];
  v9[1] = @"options";
  v10[0] = createSerializableObject;
  options = [(PXGMetalRecordingTextureCreatedEventSerializable *)self options];
  createSerializableObject2 = [options createSerializableObject];
  v10[1] = createSerializableObject2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (PXGMetalRecordingTextureCreatedEventSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = PXGMetalRecordingTextureCreatedEventSerializable;
  v5 = [(PXGMetalRecordingTextureCreatedEventSerializable *)&v14 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [PXGMetalRecordingMetalSpriteTextureSerializable alloc];
    v8 = [v6 objectForKeyedSubscript:@"texture"];
    v9 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)v7 initWithSerializableObject:v8];
    [(PXGMetalRecordingTextureCreatedEventSerializable *)v5 setTexture:v9];

    v10 = [PXGTextureConverterOptionsSerializable alloc];
    v11 = [v6 objectForKeyedSubscript:@"options"];

    v12 = [(PXGTextureConverterOptionsSerializable *)v10 initWithSerializableObject:v11];
    [(PXGMetalRecordingTextureCreatedEventSerializable *)v5 setOptions:v12];
  }

  return v5;
}

@end