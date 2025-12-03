@interface PXGVisionRecordingRenderTextureSerializable
- (PXGVisionRecordingRenderTextureSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingRenderTextureSerializable

- (id)createSerializableObject
{
  v25[10] = *MEMORY[0x277D85DE8];
  v24[0] = @"entity";
  entity = [(PXGVisionRecordingRenderTextureSerializable *)self entity];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:entity];
  v25[0] = v23;
  v24[1] = @"texture";
  texture = [(PXGVisionRecordingRenderTextureSerializable *)self texture];
  createSerializableObject = [texture createSerializableObject];
  v25[1] = createSerializableObject;
  v24[2] = @"materialIdentifier";
  materialIdentifier = [(PXGVisionRecordingRenderTextureSerializable *)self materialIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:materialIdentifier];
  v25[2] = v6;
  v24[3] = @"wantsMaterial";
  wantsMaterial = [(PXGVisionRecordingRenderTextureSerializable *)self wantsMaterial];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:wantsMaterial];
  v25[3] = v8;
  v24[4] = @"wantsMaterialUpdate";
  wantsMaterialUpdate = [(PXGVisionRecordingRenderTextureSerializable *)self wantsMaterialUpdate];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:wantsMaterialUpdate];
  v25[4] = v10;
  v24[5] = @"hasFallbackMaterial";
  hasFallbackMaterial = [(PXGVisionRecordingRenderTextureSerializable *)self hasFallbackMaterial];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:hasFallbackMaterial];
  v25[5] = v12;
  v24[6] = @"reuseType";
  reuseType = [(PXGVisionRecordingRenderTextureSerializable *)self reuseType];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:reuseType];
  v25[6] = v14;
  v24[7] = @"instanceCount";
  instanceCount = [(PXGVisionRecordingRenderTextureSerializable *)self instanceCount];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:instanceCount];
  v25[7] = v16;
  v24[8] = @"spriteIndices";
  spriteIndices = [(PXGVisionRecordingRenderTextureSerializable *)self spriteIndices];
  v25[8] = spriteIndices;
  v24[9] = @"removed";
  removed = [(PXGVisionRecordingRenderTextureSerializable *)self removed];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:removed];
  v25[9] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v20;
}

- (PXGVisionRecordingRenderTextureSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v30.receiver = self;
  v30.super_class = PXGVisionRecordingRenderTextureSerializable;
  v5 = [(PXGVisionRecordingRenderTextureSerializable *)&v30 init];
  if (v5)
  {
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:@"entity"];
    unsignedIntValue = [v7 unsignedIntValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setEntity:unsignedIntValue];
    v9 = [PXGMetalRecordingMetalSpriteTextureSerializable alloc];
    v10 = [v6 objectForKeyedSubscript:@"texture"];
    v11 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)v9 initWithSerializableObject:v10];
    [(PXGVisionRecordingRenderTextureSerializable *)v5 setTexture:v11];

    v12 = [v6 objectForKeyedSubscript:@"materialIdentifier"];
    intValue = [v12 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setMaterialIdentifier:intValue];
    v14 = [v6 objectForKeyedSubscript:@"wantsMaterial"];
    bOOLValue = [v14 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setWantsMaterial:bOOLValue];
    v16 = [v6 objectForKeyedSubscript:@"wantsMaterialUpdate"];
    bOOLValue2 = [v16 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setWantsMaterialUpdate:bOOLValue2];
    v18 = [v6 objectForKeyedSubscript:@"hasFallbackMaterial"];
    bOOLValue3 = [v18 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setHasFallbackMaterial:bOOLValue3];
    v20 = [v6 objectForKeyedSubscript:@"reuseType"];
    intValue2 = [v20 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setReuseType:intValue2];
    v22 = [v6 objectForKeyedSubscript:@"instanceCount"];
    intValue3 = [v22 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setInstanceCount:intValue3];
    v24 = [v6 objectForKeyedSubscript:@"spriteIndices"];
    v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_2959];
    [(PXGVisionRecordingRenderTextureSerializable *)v5 setSpriteIndices:v25];

    v26 = [v6 objectForKeyedSubscript:@"removed"];

    v27 = v26;
    bOOLValue4 = [v27 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setRemoved:bOOLValue4];
  }

  return v5;
}

BOOL __74__PXGVisionRecordingRenderTextureSerializable_initWithSerializableObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 unsignedIntValue];
  v5 = [v4 unsignedIntValue];

  return a2 > v5;
}

@end