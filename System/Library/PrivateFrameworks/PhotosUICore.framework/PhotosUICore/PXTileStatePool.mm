@interface PXTileStatePool
- (PXTileStatePool)init;
- (id).cxx_construct;
- (id)description;
- (id)indexesOfStatesPassingTest:(id)test;
- (unint64_t)checkOutIndexWithInitialConfiguration:(id)configuration;
- (unint64_t)indexOfFirstStatePassingTest:(id)test;
- (unint64_t)indexOfStateWithTargetIdentifier:(PXTileIdentifier *)identifier;
- (void)_cleanupStateAtIndex:(unint64_t)index;
- (void)_storeTargetIdentifierLookupForTileState:(PXTileState *)state withIndex:(unint64_t)index;
- (void)checkInIndex:(unint64_t)index;
- (void)checkInIndexes:(id)indexes;
- (void)dealloc;
- (void)enumerateStatesAtIndexes:(id)indexes usingBlock:(id)block;
- (void)enumerateStatesInRect:(CGRect)rect usingBlock:(id)block;
- (void)setTargetIdentifier:(PXTileIdentifier *)identifier forTileStateAtIndex:(unint64_t)index;
@end

@implementation PXTileStatePool

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30__PXTileStatePool_description__block_invoke;
  v12[3] = &unk_1E7737C60;
  v4 = v3;
  v13 = v4;
  [(PXTileStatePool *)self enumerateStatesUsingBlock:v12];
  [v4 appendString:@"* targetIdentifier -> index lookup\n"];
  for (i = self->_indexByTargetIdentifier.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = i[4];
    v10[2] = i[3];
    v10[3] = v6;
    v10[4] = i[5];
    v11 = *(i + 12);
    v7 = i[2];
    v10[0] = i[1];
    v10[1] = v7;
    v8 = PXTileIdentifierDescription(v10);
    [v4 appendFormat:@"%@ -> %lu\n", v8, *(i + 13)];
  }

  [v4 appendFormat:@">"];

  return v4;
}

void __66__PXTileStatePool__storeCurrentFrameLookupForTileState_withIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 56) objectForKey:a2];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD50] indexSet];
    [*(*(a1 + 32) + 56) setObject:? forKey:?];
  }

  [v3 addIndex:*(a1 + 40)];
}

- (void)_storeTargetIdentifierLookupForTileState:(PXTileState *)state withIndex:(unint64_t)index
{
  length = state->var2.length;
  if (length)
  {
    v5 = 0;
    index = state->var2.index;
    v7 = state->var2.length;
    do
    {
      v7 ^= index[v5] << v5;
      ++v5;
    }

    while (length != v5);
    size = self->_indexByTargetIdentifier.__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_25;
    }

    v9 = vcnt_s8(size);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v7 >= size)
      {
        v10 = v7 % size;
      }
    }

    else
    {
      v10 = (size - 1) & v7;
    }

    v11 = self->_indexByTargetIdentifier.__table_.__bucket_list_.__ptr_[v10];
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_25:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (v12[2] == length)
        {
          v14 = 0;
          do
          {
            v15 = v12[v14 + 3];
            v16 = index[v14++];
          }

          while (v14 < length && v15 == v16);
          if (v15 == v16)
          {
            v12[13] = index;
            return;
          }
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= size)
          {
            v13 %= size;
          }
        }

        else
        {
          v13 &= size - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_25;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_25;
      }
    }
  }
}

void __58__PXTileStatePool_setCurrentGeometry_forTileStateAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 56) objectForKey:a2];
  [v3 removeIndex:*(a1 + 40)];
}

- (void)setTargetIdentifier:(PXTileIdentifier *)identifier forTileStateAtIndex:(unint64_t)index
{
  v7 = &self->_states[index];
  p_length = &v7->var2.length;
  length = v7->var2.length;
  v10 = identifier->length;
  v11 = length == identifier->length;
  if (length)
  {
    v12 = length == v10;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    index = v7->var2.index;
    v14 = 1;
    do
    {
      v16 = *index++;
      v15 = v16;
      v17 = *(&identifier->length + v14);
      v11 = v16 == v17;
      if (v14 >= length)
      {
        break;
      }

      ++v14;
    }

    while (v15 == v17);
  }

  if (!v11)
  {
    if (v10 || (v22 = *&v7->var2.index[1], v27[0] = *p_length, v27[1] = v22, v23 = *&v7->var2.index[3], v24 = *&v7->var2.index[5], v25 = *&v7->var2.index[7], v28 = v7->var2.index[9], v27[3] = v24, v27[4] = v25, v27[2] = v23, v26 = [(PXTileStatePool *)self indexOfStateWithTargetIdentifier:v27], v26 == 0x7FFFFFFFFFFFFFFFLL) || v26 == index)
    {
      std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::__erase_unique<PXTileIdentifier>(&self->_indexByTargetIdentifier.__table_.__bucket_list_.__ptr_, p_length);
    }

    v18 = *&identifier->index[1];
    *p_length = *&identifier->length;
    *&v7->var2.index[1] = v18;
    v19 = *&identifier->index[3];
    v20 = *&identifier->index[5];
    v21 = *&identifier->index[7];
    v7->var2.index[9] = identifier->index[9];
    *&v7->var2.index[5] = v20;
    *&v7->var2.index[7] = v21;
    *&v7->var2.index[3] = v19;
    [(PXTileStatePool *)self _storeTargetIdentifierLookupForTileState:v7 withIndex:index];
  }
}

- (unint64_t)indexOfStateWithTargetIdentifier:(PXTileIdentifier *)identifier
{
  v4 = std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::find<PXTileIdentifier>(&self->_indexByTargetIdentifier.__table_.__bucket_list_.__ptr_, &identifier->length);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = v4[13];
    if ([(NSMutableIndexSet *)self->_usedIndexes containsIndex:v6])
    {
      return v6;
    }
  }

  return v5;
}

- (id)indexesOfStatesPassingTest:(id)test
{
  testCopy = test;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  usedIndexes = self->_usedIndexes;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PXTileStatePool_indexesOfStatesPassingTest___block_invoke;
  v12[3] = &unk_1E7731CE8;
  v12[4] = self;
  v7 = testCopy;
  v14 = v7;
  v8 = indexSet;
  v13 = v8;
  [(NSMutableIndexSet *)usedIndexes enumerateIndexesUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __46__PXTileStatePool_indexesOfStatesPassingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 48) + 16))();
  if (result)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (unint64_t)indexOfFirstStatePassingTest:(id)test
{
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  usedIndexes = self->_usedIndexes;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PXTileStatePool_indexOfFirstStatePassingTest___block_invoke;
  v9[3] = &unk_1E7739B38;
  v9[4] = self;
  v10 = testCopy;
  v11 = &v12;
  v6 = testCopy;
  [(NSMutableIndexSet *)usedIndexes enumerateIndexesUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __48__PXTileStatePool_indexOfFirstStatePassingTest___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

- (void)enumerateStatesInRect:(CGRect)rect usingBlock:(id)block
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  blockCopy = block;
  PXEnumeratePageKeysForRect();
}

void __52__PXTileStatePool_enumerateStatesInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(*(a1 + 32) + 56) objectForKey:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PXTileStatePool_enumerateStatesInRect_usingBlock___block_invoke_2;
  v10[3] = &unk_1E7731CC0;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v7 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v7;
  v8 = v6;
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  [v5 enumerateIndexesUsingBlock:v10];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

uint64_t __52__PXTileStatePool_enumerateStatesInRect_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CGRectIntersectsRect(*(a1 + 56), *(*(*(a1 + 32) + 8) + 712 * a2 + 288));
  if (result)
  {
    result = (*(*(a1 + 40) + 16))();
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

- (void)enumerateStatesAtIndexes:(id)indexes usingBlock:(id)block
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXTileStatePool_enumerateStatesAtIndexes_usingBlock___block_invoke;
  v6[3] = &unk_1E7731C98;
  v6[4] = self;
  v6[5] = block;
  blockCopy = block;
  [indexes enumerateRangesUsingBlock:v6];
}

uint64_t __55__PXTileStatePool_enumerateStatesAtIndexes_usingBlock___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    v6 = 712 * a2;
    do
    {
      result = (*(*(v5 + 40) + 16))();
      ++v4;
      v6 += 712;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (void)_cleanupStateAtIndex:(unint64_t)index
{
  v5 = &self->_states[index];
  var10 = v5->var10;
  if (var10)
  {

    v5->var10 = 0;
  }

  var11 = v5->var11;
  if (var11)
  {

    v5->var11 = 0;
  }

  v8 = *&v5->var2.index[1];
  v13[0] = *&v5->var2.length;
  v13[1] = v8;
  v9 = *&v5->var2.index[3];
  v10 = *&v5->var2.index[5];
  v11 = *&v5->var2.index[7];
  v14 = v5->var2.index[9];
  v13[3] = v10;
  v13[4] = v11;
  v13[2] = v9;
  v12 = [(PXTileStatePool *)self indexOfStateWithTargetIdentifier:v13];
  if (v12 == index && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    std::__hash_table<std::__hash_value_type<PXTileIdentifier,unsigned long>,std::__unordered_map_hasher<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::hash<PXTileIdentifier>,std::equal_to<PXTileIdentifier>,true>,std::__unordered_map_equal<PXTileIdentifier,std::__hash_value_type<PXTileIdentifier,unsigned long>,std::equal_to<PXTileIdentifier>,std::hash<PXTileIdentifier>,true>,std::allocator<std::__hash_value_type<PXTileIdentifier,unsigned long>>>::__erase_unique<PXTileIdentifier>(&self->_indexByTargetIdentifier.__table_.__bucket_list_.__ptr_, &v5->var2.length);
  }

  PXEnumeratePageKeysForRect();
}

void __40__PXTileStatePool__cleanupStateAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 56) objectForKey:a2];
  [v3 removeIndex:*(a1 + 40)];
}

- (void)checkInIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PXTileStatePool_checkInIndexes___block_invoke;
  v5[3] = &unk_1E774C138;
  v5[4] = self;
  [indexesCopy enumerateIndexesUsingBlock:v5];
  [(NSMutableIndexSet *)self->_usedIndexes removeIndexes:indexesCopy];
  [(NSMutableIndexSet *)self->_unusedIndexes addIndexes:indexesCopy];
}

- (void)checkInIndex:(unint64_t)index
{
  [(PXTileStatePool *)self _cleanupStateAtIndex:?];
  [(NSMutableIndexSet *)self->_usedIndexes removeIndex:index];
  unusedIndexes = self->_unusedIndexes;

  [(NSMutableIndexSet *)unusedIndexes addIndex:index];
}

- (unint64_t)checkOutIndexWithInitialConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(NSMutableIndexSet *)self->_unusedIndexes count])
  {
    statesMaxCount = self->_statesMaxCount;
    v6 = 2 * statesMaxCount;
    if (!statesMaxCount)
    {
      v6 = 10;
    }

    self->_statesMaxCount = v6;
    self->_states = malloc_type_realloc(self->_states, 712 * v6, 0x108004092BF69EFuLL);
    [(NSMutableIndexSet *)self->_unusedIndexes addIndexesInRange:statesMaxCount, self->_statesMaxCount - statesMaxCount];
  }

  firstIndex = [(NSMutableIndexSet *)self->_unusedIndexes firstIndex];
  [(NSMutableIndexSet *)self->_unusedIndexes removeIndex:firstIndex];
  [(NSMutableIndexSet *)self->_usedIndexes addIndex:firstIndex];
  bzero(&self->_states[firstIndex], 0x2C8uLL);
  states = self->_states;
  configurationCopy[2](configurationCopy, &states[firstIndex]);
  [(PXTileStatePool *)self _storeCurrentFrameLookupForTileState:&states[firstIndex] withIndex:firstIndex];
  [(PXTileStatePool *)self _storeTargetIdentifierLookupForTileState:&states[firstIndex] withIndex:firstIndex];

  return firstIndex;
}

- (void)dealloc
{
  usedIndexes = self->_usedIndexes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__PXTileStatePool_dealloc__block_invoke;
  v6[3] = &unk_1E774C138;
  v6[4] = self;
  [(NSMutableIndexSet *)usedIndexes enumerateIndexesUsingBlock:v6];
  states = self->_states;
  if (states)
  {
    free(states);
    self->_states = 0;
  }

  v5.receiver = self;
  v5.super_class = PXTileStatePool;
  [(PXTileStatePool *)&v5 dealloc];
}

void __26__PXTileStatePool_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8) + 712 * a2;
  v3 = *(v2 + 688);
  if (v3)
  {

    *(v2 + 688) = 0;
  }

  v4 = *(v2 + 680);
  if (v4)
  {

    *(v2 + 680) = 0;
  }
}

- (PXTileStatePool)init
{
  v12.receiver = self;
  v12.super_class = PXTileStatePool;
  v2 = [(PXTileStatePool *)&v12 init];
  if (v2)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    usedIndexes = v2->_usedIndexes;
    v2->_usedIndexes = indexSet;

    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    unusedIndexes = v2->_unusedIndexes;
    v2->_unusedIndexes = indexSet2;

    v7 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:1282];
    v8 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v7 valuePointerFunctions:v8 capacity:0];
    tileIndexesByPageKey = v2->_tileIndexesByPageKey;
    v2->_tileIndexesByPageKey = v9;
  }

  return v2;
}

@end