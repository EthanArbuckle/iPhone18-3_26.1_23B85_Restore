@interface PXGEngineRecordingDataStoreSerializable
- (PXGEngineRecordingDataStoreSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
@end

@implementation PXGEngineRecordingDataStoreSerializable

- (id)createSerializableObject
{
  v16[5] = *MEMORY[0x277D85DE8];
  v15[0] = @"spriteStyles";
  v14 = [(PXGEngineRecordingDataStoreSerializable *)self spriteStyles];
  v13 = PXGCreateDictionaryWithTransforms(v14, &__block_literal_global_3, &__block_literal_global_11);
  v16[0] = v13;
  v15[1] = @"spriteInfos";
  v3 = [(PXGEngineRecordingDataStoreSerializable *)self spriteInfos];
  v4 = PXGCreateDictionaryWithTransforms(v3, &__block_literal_global_3, &__block_literal_global_11);
  v16[1] = v4;
  v15[2] = @"spriteGeometries";
  v5 = [(PXGEngineRecordingDataStoreSerializable *)self spriteGeometries];
  v6 = PXGCreateDictionaryWithTransforms(v5, &__block_literal_global_3, &__block_literal_global_11);
  v16[2] = v6;
  v15[3] = @"spriteEntities";
  v7 = [(PXGEngineRecordingDataStoreSerializable *)self spriteEntities];
  v8 = PXGCreateDictionaryWithTransforms(v7, &__block_literal_global_3, &__block_literal_global_11);
  v16[3] = v8;
  v15[4] = @"spriteTextureInfos";
  v9 = [(PXGEngineRecordingDataStoreSerializable *)self spriteTextureInfos];
  v10 = PXGCreateDictionaryWithTransforms(v9, &__block_literal_global_3, &__block_literal_global_11);
  v16[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v11;
}

- (PXGEngineRecordingDataStoreSerializable)initWithSerializableObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXGEngineRecordingDataStoreSerializable;
  v5 = [(PXGEngineRecordingDataStoreSerializable *)&v18 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"spriteStyles"];
    v8 = PXGCreateDictionaryWithTransforms(v7, &__block_literal_global_7, &__block_literal_global_552);
    [(PXGEngineRecordingDataStoreSerializable *)v5 setSpriteStyles:v8];

    v9 = [v6 objectForKeyedSubscript:@"spriteInfos"];
    v10 = PXGCreateDictionaryWithTransforms(v9, &__block_literal_global_7, &__block_literal_global_68);
    [(PXGEngineRecordingDataStoreSerializable *)v5 setSpriteInfos:v10];

    v11 = [v6 objectForKeyedSubscript:@"spriteGeometries"];
    v12 = PXGCreateDictionaryWithTransforms(v11, &__block_literal_global_7, &__block_literal_global_72);
    [(PXGEngineRecordingDataStoreSerializable *)v5 setSpriteGeometries:v12];

    v13 = [v6 objectForKeyedSubscript:@"spriteEntities"];
    v14 = PXGCreateDictionaryWithTransforms(v13, &__block_literal_global_7, &__block_literal_global_76);
    [(PXGEngineRecordingDataStoreSerializable *)v5 setSpriteEntities:v14];

    v15 = [v6 objectForKeyedSubscript:@"spriteTextureInfos"];

    v16 = PXGCreateDictionaryWithTransforms(v15, &__block_literal_global_7, &__block_literal_global_80);
    [(PXGEngineRecordingDataStoreSerializable *)v5 setSpriteTextureInfos:v16];
  }

  return v5;
}

PXGSpriteTextureInfoSerializable *__70__PXGEngineRecordingDataStoreSerializable_initWithSerializableObject___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXGSpriteTextureInfoSerializable alloc] initWithSerializableObject:v2];

  return v3;
}

PXGSpriteEntitySerializable *__70__PXGEngineRecordingDataStoreSerializable_initWithSerializableObject___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXGSpriteEntitySerializable alloc] initWithSerializableObject:v2];

  return v3;
}

PXGSpriteGeometrySerializable *__70__PXGEngineRecordingDataStoreSerializable_initWithSerializableObject___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXGSpriteGeometrySerializable alloc] initWithSerializableObject:v2];

  return v3;
}

PXGSpriteInfoSerializable *__70__PXGEngineRecordingDataStoreSerializable_initWithSerializableObject___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXGSpriteInfoSerializable alloc] initWithSerializableObject:v2];

  return v3;
}

PXGSpriteStyleSerializable *__70__PXGEngineRecordingDataStoreSerializable_initWithSerializableObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXGSpriteStyleSerializable alloc] initWithSerializableObject:v2];

  return v3;
}

@end