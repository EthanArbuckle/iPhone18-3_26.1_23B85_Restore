@interface AFBBufferBuilder(TRIFBFactorMetadataKeyValue)
- (id)trifbCreateFactorMetadataKeyValueUsingBlock:()TRIFBFactorMetadataKeyValue;
- (id)trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:()TRIFBFactorMetadataKeyValue;
- (id)trifbFinishedBufferWithRootFactorMetadataKeyValueOfs:()TRIFBFactorMetadataKeyValue error:;
- (uint64_t)trifbFinishBufferWithRootFactorMetadataKeyValueOfs:()TRIFBFactorMetadataKeyValue error:;
@end

@implementation AFBBufferBuilder(TRIFBFactorMetadataKeyValue)

- (id)trifbCreateFactorMetadataKeyValueUsingBlock:()TRIFBFactorMetadataKeyValue
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2908 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  v7 = [TRIFBFactorMetadataKeyValueBuilder alloc];
  selfCopy = self;
  if (v7)
  {
    v29.receiver = v7;
    v29.super_class = TRIFBFactorMetadataKeyValueBuilder;
    v9 = objc_msgSendSuper2(&v29, sel_init);
    v7 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_owner, self);
      firstError = [selfCopy firstError];
      v11 = firstError == 0;

      if (v11)
      {
        operator new();
      }
    }
  }

  v5[2](v5, v7);
  if (v7)
  {
    firstError2 = [(AFBBufferBuilder *)v7->_owner firstError];
    v13 = firstError2 == 0;

    if (v13)
    {
      v14 = [(AFBBufferBuilder *)v7->_owner fbb];
      v15 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(v14, v7->_bldr->var1);
      v16 = (*(v14 + 5) + *(v14 + 4) - v15);
      v17 = (v16 - *v16);
      v18 = *v17;
      if (v18 >= 5 && v17[2])
      {
        if (v18 >= 7 && v17[3])
        {
          v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v15];
          goto LABEL_18;
        }

        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__finish object:v7 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2865 description:{@"%@", @"Failed to set required field val on a table of type: TRIFBFactorMetadataKeyValueBuilder"}];

        v30[0] = *MEMORY[0x277CCA450];
        v29.receiver = @"Failed to set required field val on a table of type: TRIFBFactorMetadataKeyValueBuilder";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:v30 count:1];
        v25 = objc_alloc(MEMORY[0x277CCA9B8]);
        v23 = [v25 initWithDomain:*MEMORY[0x277CED160] code:4 userInfo:v21];
        [(AFBBufferBuilder *)v7->_owner setError:v23];
      }

      else
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__finish object:v7 file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2854 description:{@"%@", @"Failed to set required field key on a table of type: TRIFBFactorMetadataKeyValueBuilder"}];

        v30[0] = *MEMORY[0x277CCA450];
        v29.receiver = @"Failed to set required field key on a table of type: TRIFBFactorMetadataKeyValueBuilder";
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

- (id)trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:()TRIFBFactorMetadataKeyValue
{
  v33[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2917 description:{@"Invalid parameter not satisfying: %@", @"offsets"}];
  }

  [self throwIfFinalizedWithSelector:a2];
  firstError = [self firstError];

  if (firstError)
  {
    v7 = &unk_28436F9B0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x4812000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = &unk_22EAF1499;
    v31 = 0;
    v32 = 0;
    __p = 0;
    v8 = [v5 count];
    if (v8 > (v32 - __p) >> 2)
    {
      if (!(v8 >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>>(v8);
      }

      std::vector<apple::aiml::flatbuffers2::Offset<void>>::__throw_length_error[abi:ne200100]();
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __108__AFBBufferBuilder_TRIFBFactorMetadataKeyValue__trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets___block_invoke;
    v23[3] = &unk_27885E828;
    v23[4] = &v24;
    [v5 enumerateObjectsUsingBlock:v23];
    v9 = [self fbb];
    v10 = v9;
    v11 = v25[6];
    v12 = v25[7];
    v13 = (v12 - v11) >> 2;
    v14 = 126 - 2 * __clz(v13);
    if (v12 == v11)
    {
      v15 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>,std::allocator<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>>>(std::vector<apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue>> &)::t;
    }

    else
    {
      v15 = v25[6];
    }

    v33[0] = v9;
    if (v12 == v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    std::__introsort<std::_ClassicAlgPolicy,apple::aiml::flatbuffers2::FlatBufferBuilder::TableKeyComparator<FactorMetadataKeyValue> &,apple::aiml::flatbuffers2::Offset<FactorMetadataKeyValue> *,false>(v15, &v15[v12 - v11], v33, v16, 1);
    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(v10, (v12 - v11) >> 2, 4uLL);
    if (v11 != v12)
    {
      v17 = v15 - 4;
      v18 = (v12 - v11) >> 2;
      do
      {
        v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(v10, *&v17[4 * v18]);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned int>(v10, v19);
        --v18;
      }

      while (v18);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(v10, v13)}];
    _Block_object_dispose(&v24, 8);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)trifbFinishedBufferWithRootFactorMetadataKeyValueOfs:()TRIFBFactorMetadataKeyValue error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2934 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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
    v12 = [self trifbFinishBufferWithRootFactorMetadataKeyValueOfs:v7 error:&v22];
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

- (uint64_t)trifbFinishBufferWithRootFactorMetadataKeyValueOfs:()TRIFBFactorMetadataKeyValue error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2968 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
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

@end