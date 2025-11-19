@interface AFBBufferBuilder(TRIFBTrialManagedAsset)
- (id)trifbCreateTrialManagedAssetUsingBlock:()TRIFBTrialManagedAsset;
- (id)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset;
- (id)trifbFinishedBufferWithRootTrialManagedAssetOfs:()TRIFBTrialManagedAsset error:;
- (uint64_t)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset;
- (uint64_t)trifbFinishBufferWithRootTrialManagedAssetOfs:()TRIFBTrialManagedAsset error:;
- (void)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset;
@end

@implementation AFBBufferBuilder(TRIFBTrialManagedAsset)

- (id)trifbCreateTrialManagedAssetUsingBlock:()TRIFBTrialManagedAsset
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1610 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v7 = [TRIFBTrialManagedAssetBuilder alloc];
  v8 = a1;
  if (v7)
  {
    v29.receiver = v7;
    v29.super_class = TRIFBTrialManagedAssetBuilder;
    v9 = objc_msgSendSuper2(&v29, sel_init);
    v7 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_owner, a1);
      v10 = [v8 firstError];
      v11 = v10 == 0;

      if (v11)
      {
        operator new();
      }
    }
  }

  v5[2](v5, v7);
  if (v7)
  {
    v12 = [(AFBBufferBuilder *)v7->_owner firstError];
    v13 = v12 == 0;

    if (v13)
    {
      v14 = [(AFBBufferBuilder *)v7->_owner fbb];
      v15 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(v14, v7->_bldr->var1);
      v16 = (*(v14 + 5) + *(v14 + 4) - v15);
      v17 = (v16 - *v16);
      v18 = *v17;
      if (v18 >= 9 && v17[4])
      {
        if (v18 >= 0xD && v17[6])
        {
          v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v15];
          goto LABEL_18;
        }

        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:sel__finish object:v7 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1505 description:{@"%@", @"Failed to set required field cloudKitMetadata on a table of type: TRIFBTrialManagedAssetBuilder"}];

        v30[0] = *MEMORY[0x277CCA450];
        v29.receiver = @"Failed to set required field cloudKitMetadata on a table of type: TRIFBTrialManagedAssetBuilder";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:v30 count:1];
        v25 = objc_alloc(MEMORY[0x277CCA9B8]);
        v23 = [v25 initWithDomain:*MEMORY[0x277CED160] code:4 userInfo:v21];
        [(AFBBufferBuilder *)v7->_owner setError:v23];
      }

      else
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:sel__finish object:v7 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1494 description:{@"%@", @"Failed to set required field assetId on a table of type: TRIFBTrialManagedAssetBuilder"}];

        v30[0] = *MEMORY[0x277CCA450];
        v29.receiver = @"Failed to set required field assetId on a table of type: TRIFBTrialManagedAssetBuilder";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:v30 count:1];
        v22 = objc_alloc(MEMORY[0x277CCA9B8]);
        v23 = [v22 initWithDomain:*MEMORY[0x277CED160] code:4 userInfo:v21];
        [(AFBBufferBuilder *)v7->_owner setError:v23];
      }
    }

    v19 = &unk_28436F9B0;
  }

  else
  {
    v19 = 0;
  }

LABEL_18:

  objc_autoreleasePoolPop(v6);
  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset
{
  *a2 = &unk_28435E138;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (id)trifbFinishedBufferWithRootTrialManagedAssetOfs:()TRIFBTrialManagedAsset error:
{
  v7 = a3;
  if (!v7)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1632 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v8 = [a1 firstError];

  if (v8)
  {
    if (a4)
    {
      [a1 firstError];
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
    v11 = [a1 path];
    if (!v11)
    {
      v15 = [v7 unsignedIntValue];
      v16 = [a1 fbb];
      apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(v16, v15, v17);
      [a1 finalizeWithSelector:a2];
      operator new();
    }

    v22 = 0;
    v12 = [a1 trifbFinishBufferWithRootTrialManagedAssetOfs:v7 error:&v22];
    v13 = v22;
    if (v12)
    {
      v21 = v13;
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v11 options:8 error:&v21];
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

- (uint64_t)trifbFinishBufferWithRootTrialManagedAssetOfs:()TRIFBTrialManagedAsset error:
{
  v7 = a3;
  if (!v7)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1666 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  [a1 throwIfFinalizedWithSelector:a2];
  v8 = [a1 firstError];

  if (v8)
  {
    if (a4)
    {
      [a1 firstError];
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
    v12 = [v11 unsignedIntValue];
    v13 = [a1 fbb];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(v13, v12, v14);
    BufferPointer = apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer([a1 fbb]);
    v16 = [a1 fbb];
    v17 = v16[8];
    v18 = v16[12];
    v19 = v16[10];
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release(v25, [a1 fbb]);
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(v25);
    v24 = 0;
    v9 = [a1 finalizeWithSelector:a2 allocatorBufferAddr:BufferPointer size:(v17 - v18 + v19) error:&v24];
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

- (void)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset
{

  operator delete(a1);
}

- (uint64_t)trifbCreateVectorOfTrialManagedAssetWithOffsets:()TRIFBTrialManagedAsset
{
  v3 = *(a2 + 8);
  if (v3 == "Z92[AFBBufferBuilder(TRIFBTrialManagedAsset) trifbCreateVectorOfTrialManagedAssetWithOffsets:]E3$_2" || ((v3 & "Z92[AFBBufferBuilder(TRIFBTrialManagedAsset) trifbCreateVectorOfTrialManagedAssetWithOffsets:]E3$_2" & 0x8000000000000000) != 0) != __OFSUB__(v3, "Z92[AFBBufferBuilder(TRIFBTrialManagedAsset) trifbCreateVectorOfTrialManagedAssetWithOffsets:]E3$_2") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("Z92[AFBBufferBuilder(TRIFBTrialManagedAsset) trifbCreateVectorOfTrialManagedAssetWithOffsets:]E3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end