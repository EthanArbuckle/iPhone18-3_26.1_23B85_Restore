@interface PXGMetalRecordingTextureCreatedEventSerializable
- (PXGMetalRecordingTextureCreatedEventSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGMetalRecordingTextureCreatedEventSerializable

- (id)createSerializableObject
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"texture";
  v3 = [(PXGMetalRecordingTextureCreatedEventSerializable *)self texture];
  v4 = [v3 createSerializableObject];
  v9[1] = @"options";
  v10[0] = v4;
  v5 = [(PXGMetalRecordingTextureCreatedEventSerializable *)self options];
  v6 = [v5 createSerializableObject];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (PXGMetalRecordingTextureCreatedEventSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXGMetalRecordingTextureCreatedEventSerializable;
  v5 = [(PXGMetalRecordingTextureCreatedEventSerializable *)&v14 init];
  if (v5)
  {
    v6 = v4;
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