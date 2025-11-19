@interface AFBBufferBuilder
@end

@implementation AFBBufferBuilder

apple::aiml::flatbuffers2::DetachedBuffer *__120__AFBBufferBuilder_TRIFBCloudKitTreatmentRecordAsset__trifbFinishedBufferWithRootCloudKitTreatmentRecordAssetOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__112__AFBBufferBuilder_TRIFBCloudKitAssetRecordAsset__trifbFinishedBufferWithRootCloudKitAssetRecordAssetOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__98__AFBBufferBuilder_TRIFBTrialManagedAsset__trifbFinishedBufferWithRootTrialManagedAssetOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__104__AFBBufferBuilder_TRIFBMobileAssetReference__trifbFinishedBufferWithRootMobileAssetReferenceOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

void __108__AFBBufferBuilder_TRIFBFactorMetadataKeyValue__trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 unsignedIntValue];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  v7 = v5[7];
  v6 = v5[8];
  if (v7 >= v6)
  {
    v9 = v5[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<apple::aiml::flatbuffers2::Offset<void>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>>(v14);
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = v4;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    v18 = v5[6];
    v5[6] = v17;
    v5[7] = v8;
    v5[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = v3;
    v8 = v7 + 4;
  }

  v5[7] = v8;
}

apple::aiml::flatbuffers2::DetachedBuffer *__108__AFBBufferBuilder_TRIFBFactorMetadataKeyValue__trifbFinishedBufferWithRootFactorMetadataKeyValueOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

void __86__AFBBufferBuilder_TRIFBFactorLevel__trifbCreateSortedVectorOfFactorLevelWithOffsets___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 unsignedIntValue];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  v7 = v5[7];
  v6 = v5[8];
  if (v7 >= v6)
  {
    v9 = v5[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<apple::aiml::flatbuffers2::Offset<void>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>>(v14);
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = v4;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    v18 = v5[6];
    v5[6] = v17;
    v5[7] = v8;
    v5[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = v3;
    v8 = v7 + 4;
  }

  v5[7] = v8;
}

apple::aiml::flatbuffers2::DetachedBuffer *__86__AFBBufferBuilder_TRIFBFactorLevel__trifbFinishedBufferWithRootFactorLevelOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__96__AFBBufferBuilder_TRIFBFastFactorLevels__trifbFinishedBufferWithRootFastFactorLevelsOfs_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2318F1E10);
  }

  return result;
}

@end