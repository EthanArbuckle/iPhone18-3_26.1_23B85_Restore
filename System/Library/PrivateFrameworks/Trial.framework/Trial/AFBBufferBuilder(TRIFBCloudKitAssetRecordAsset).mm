@interface AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset)
- (id)trifbCreateCloudKitAssetRecordAssetUsingBlock:()TRIFBCloudKitAssetRecordAsset;
- (id)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset;
- (id)trifbFinishedBufferWithRootCloudKitAssetRecordAssetOfs:()TRIFBCloudKitAssetRecordAsset error:;
- (uint64_t)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset;
- (uint64_t)trifbFinishBufferWithRootCloudKitAssetRecordAssetOfs:()TRIFBCloudKitAssetRecordAsset error:;
- (void)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset;
@end

@implementation AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset)

- (id)trifbCreateCloudKitAssetRecordAssetUsingBlock:()TRIFBCloudKitAssetRecordAsset
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:984 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  v7 = [TRIFBCloudKitAssetRecordAssetBuilder alloc];
  selfCopy = self;
  if (v7)
  {
    v15.receiver = v7;
    v15.super_class = TRIFBCloudKitAssetRecordAssetBuilder;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    v7 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_owner, self);
      firstError = [selfCopy firstError];

      if (!firstError)
      {
        operator new();
      }
    }
  }

  v5[2](v5, v7);
  if (v7)
  {
    firstError2 = [(AFBBufferBuilder *)v7->_owner firstError];

    if (firstError2)
    {
      v12 = &unk_28436F9B0;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(-[AFBBufferBuilder fbb](v7->_owner, "fbb"), v7->_bldr->var1)}];
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v12;
}

- (id)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset
{
  *a2 = &unk_28435E0B8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (id)trifbFinishedBufferWithRootCloudKitAssetRecordAssetOfs:()TRIFBCloudKitAssetRecordAsset error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1006 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    if (a4)
    {
      [self firstError];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    path = [self path];
    if (!path)
    {
      unsignedIntValue = [v7 unsignedIntValue];
      v16 = [self fbb];
      apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(v16, unsignedIntValue, v17);
      [self finalizeWithSelector:a2];
      operator new();
    }

    v22 = 0;
    v12 = [self trifbFinishBufferWithRootCloudKitAssetRecordAssetOfs:v7 error:&v22];
    v13 = v22;
    if (v12)
    {
      v21 = v13;
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:path options:8 error:&v21];
      v14 = v21;

      v13 = v14;
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v18 = v13;
      *a4 = v13;
    }
  }

  return v9;
}

- (uint64_t)trifbFinishBufferWithRootCloudKitAssetRecordAssetOfs:()TRIFBCloudKitAssetRecordAsset error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1040 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    if (a4)
    {
      [self firstError];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    unsignedIntValue = [v11 unsignedIntValue];
    v13 = [self fbb];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(v13, unsignedIntValue, v14);
    BufferPointer = apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer([self fbb]);
    v16 = [self fbb];
    v17 = v16[8];
    v18 = v16[12];
    v19 = v16[10];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release(v25, [self fbb]);
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(v25);
    v24 = 0;
    v9 = [self finalizeWithSelector:a2 allocatorBufferAddr:BufferPointer size:(v17 - v18 + v19) error:&v24];
    v20 = v24;

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v21 = v20;
      *a4 = v20;
    }
  }

  return v9;
}

- (void)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset
{

  operator delete(self);
}

- (uint64_t)trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:()TRIFBCloudKitAssetRecordAsset
{
  v3 = *(a2 + 8);
  if (v3 == "Z106[AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset) trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:]E3$_1" || ((v3 & "Z106[AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset) trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:]E3$_1" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z106[AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset) trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:]E3$_1") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z106[AFBBufferBuilder(TRIFBCloudKitAssetRecordAsset) trifbCreateVectorOfCloudKitAssetRecordAssetWithOffsets:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end