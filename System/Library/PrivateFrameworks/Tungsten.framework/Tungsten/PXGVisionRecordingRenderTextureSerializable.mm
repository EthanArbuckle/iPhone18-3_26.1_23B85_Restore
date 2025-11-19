@interface PXGVisionRecordingRenderTextureSerializable
- (PXGVisionRecordingRenderTextureSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGVisionRecordingRenderTextureSerializable

- (id)createSerializableObject
{
  v25[10] = *MEMORY[0x277D85DE8];
  v24[0] = @"entity";
  v3 = [(PXGVisionRecordingRenderTextureSerializable *)self entity];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v25[0] = v23;
  v24[1] = @"texture";
  v22 = [(PXGVisionRecordingRenderTextureSerializable *)self texture];
  v4 = [v22 createSerializableObject];
  v25[1] = v4;
  v24[2] = @"materialIdentifier";
  v5 = [(PXGVisionRecordingRenderTextureSerializable *)self materialIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v25[2] = v6;
  v24[3] = @"wantsMaterial";
  v7 = [(PXGVisionRecordingRenderTextureSerializable *)self wantsMaterial];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v25[3] = v8;
  v24[4] = @"wantsMaterialUpdate";
  v9 = [(PXGVisionRecordingRenderTextureSerializable *)self wantsMaterialUpdate];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v25[4] = v10;
  v24[5] = @"hasFallbackMaterial";
  v11 = [(PXGVisionRecordingRenderTextureSerializable *)self hasFallbackMaterial];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  v25[5] = v12;
  v24[6] = @"reuseType";
  v13 = [(PXGVisionRecordingRenderTextureSerializable *)self reuseType];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v25[6] = v14;
  v24[7] = @"instanceCount";
  v15 = [(PXGVisionRecordingRenderTextureSerializable *)self instanceCount];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v25[7] = v16;
  v24[8] = @"spriteIndices";
  v17 = [(PXGVisionRecordingRenderTextureSerializable *)self spriteIndices];
  v25[8] = v17;
  v24[9] = @"removed";
  v18 = [(PXGVisionRecordingRenderTextureSerializable *)self removed];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  v25[9] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:10];

  return v20;
}

- (PXGVisionRecordingRenderTextureSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PXGVisionRecordingRenderTextureSerializable;
  v5 = [(PXGVisionRecordingRenderTextureSerializable *)&v30 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"entity"];
    v8 = [v7 unsignedIntValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setEntity:v8];
    v9 = [PXGMetalRecordingMetalSpriteTextureSerializable alloc];
    v10 = [v6 objectForKeyedSubscript:@"texture"];
    v11 = [(PXGMetalRecordingMetalSpriteTextureSerializable *)v9 initWithSerializableObject:v10];
    [(PXGVisionRecordingRenderTextureSerializable *)v5 setTexture:v11];

    v12 = [v6 objectForKeyedSubscript:@"materialIdentifier"];
    v13 = [v12 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setMaterialIdentifier:v13];
    v14 = [v6 objectForKeyedSubscript:@"wantsMaterial"];
    v15 = [v14 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setWantsMaterial:v15];
    v16 = [v6 objectForKeyedSubscript:@"wantsMaterialUpdate"];
    v17 = [v16 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setWantsMaterialUpdate:v17];
    v18 = [v6 objectForKeyedSubscript:@"hasFallbackMaterial"];
    v19 = [v18 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setHasFallbackMaterial:v19];
    v20 = [v6 objectForKeyedSubscript:@"reuseType"];
    v21 = [v20 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setReuseType:v21];
    v22 = [v6 objectForKeyedSubscript:@"instanceCount"];
    v23 = [v22 intValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setInstanceCount:v23];
    v24 = [v6 objectForKeyedSubscript:@"spriteIndices"];
    v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_2959];
    [(PXGVisionRecordingRenderTextureSerializable *)v5 setSpriteIndices:v25];

    v26 = [v6 objectForKeyedSubscript:@"removed"];

    v27 = v26;
    v28 = [v27 BOOLValue];

    [(PXGVisionRecordingRenderTextureSerializable *)v5 setRemoved:v28];
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