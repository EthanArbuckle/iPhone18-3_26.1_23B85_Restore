@interface TSTMergeRegionMap
+ (id)mergeRegionMapFromMap:(id)map intersectingRange:(id)range;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)mergedRangeForCellID:(id)d;
- (BOOL)find:(id)find;
- (BOOL)hasRangeSpanningRows;
- (BOOL)insert:(id)insert;
- (BOOL)partiallyIntersectsCellRange:(id)range;
- (BOOL)partiallyIntersectsCellRegion:(id)region;
- (BOOL)remove:(id)remove;
- (TSTMergeRegionMap)initWithContext:(id)context;
- (id).cxx_construct;
- (id)description;
- (id)initRegionMapFromMap:(id)map intersectingRange:(id)range;
- (id)initRegionMapFromMap:(id)map rowRemapping:(id)remapping;
- (id)iterator;
- (id)mergedGridIndicesForDimension:(int)dimension;
@end

@implementation TSTMergeRegionMap

+ (id)mergeRegionMapFromMap:(id)map intersectingRange:(id)range
{
  v4 = [[TSTMergeRegionMap alloc] initRegionMapFromMap:map intersectingRange:range];

  return v4;
}

- (id)initRegionMapFromMap:(id)map rowRemapping:(id)remapping
{
  if (([remapping isVertical] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap initRegionMapFromMap:rowRemapping:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 26, @"remapping must be vertical."}];
  }

  v9 = -[TSTMergeRegionMap initWithContext:](self, "initWithContext:", [map context]);
  v10 = v9;
  if (map && v9)
  {
    v11 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:map];
    if ([(TSTMergeRegionMapIterator *)v11 hasNextMergeRegion])
    {
      do
      {
        nextMergeRegion = [(TSTMergeRegionMapIterator *)v11 nextMergeRegion];
        -[TSTMergeRegionMap insert:](v10, "insert:", nextMergeRegion & 0xFFFFFFFFFFFF0000 | [remapping mapIndex:nextMergeRegion]);
      }

      while ([(TSTMergeRegionMapIterator *)v11 hasNextMergeRegion]);
    }
  }

  return v10;
}

- (id)initRegionMapFromMap:(id)map intersectingRange:(id)range
{
  v6 = -[TSTMergeRegionMap initWithContext:](self, "initWithContext:", [map context]);
  v7 = v6;
  if (!map || !v6 || range.var0.var0 == 0xFFFF || (*&range & 0xFF0000) == 0xFF0000 || !HIWORD(*&range) || (*&range & 0xFFFF00000000) == 0)
  {
    return v7;
  }

  v33 = *&range >> 16;
  if (range.var1.var0 * *&range.var1.var1 >= *(map + 28))
  {
    v17 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:map];
    if (![(TSTMergeRegionMapIterator *)v17 hasNextMergeRegion])
    {
LABEL_57:

      return v7;
    }

    while (1)
    {
      nextMergeRegion = [(TSTMergeRegionMapIterator *)v17 nextMergeRegion];
      v19 = 0;
      if (nextMergeRegion != 0xFFFF)
      {
        v20 = 0xFFFFLL;
        v21 = 16711680;
        v22 = 0;
        if ((nextMergeRegion & 0xFF0000) == 0xFF0000)
        {
          goto LABEL_47;
        }

        v19 = 0;
        if (HIWORD(nextMergeRegion))
        {
          v20 = 0xFFFFLL;
          v21 = 16711680;
          v22 = 0;
          if ((nextMergeRegion & 0xFFFF00000000) != 0)
          {
            v20 = 0;
            var1 = BYTE2(nextMergeRegion);
            if (BYTE2(nextMergeRegion) <= range.var0.var1)
            {
              var1 = range.var0.var1;
            }

            if (nextMergeRegion <= range.var0.var0)
            {
              var0 = range.var0.var0;
            }

            else
            {
              var0 = nextMergeRegion;
            }

            if ((BYTE4(nextMergeRegion) + BYTE2(nextMergeRegion) - 1) >= (LOBYTE(range.var1.var0) + range.var0.var1 - 1))
            {
              v25 = (LOBYTE(range.var1.var0) + range.var0.var1 - 1);
            }

            else
            {
              v25 = (BYTE4(nextMergeRegion) + BYTE2(nextMergeRegion) - 1);
            }

            if ((nextMergeRegion + HIWORD(nextMergeRegion) - 1) >= (range.var0.var0 + range.var1.var1 - 1))
            {
              v26 = (range.var0.var0 + range.var1.var1 - 1);
            }

            else
            {
              v26 = (nextMergeRegion + HIWORD(nextMergeRegion) - 1);
            }

            v21 = 0;
            v19 = 0;
            v22 = 0;
            if (var0 <= v26 && var1 <= v25)
            {
              v22 = ((v26 - var0) << 48) + 0x1000000000000;
              v19 = (((v25 - var1) << 32) + 0x100000000) & 0xFFFF00000000;
              v21 = var1 << 16;
              v20 = var0;
            }
          }

          goto LABEL_47;
        }
      }

      v20 = 0xFFFFLL;
      v21 = 16711680;
      v22 = 0;
LABEL_47:
      v27 = v21 | v20 | v19 | v22;
      if (v27 != 0xFFFF)
      {
        v15 = (v27 & 0xFF0000) == 16711680;
        v28 = v27 & 0xFFFF00000000;
        v29 = HIWORD(v27);
        v30 = v15 || v29 == 0;
        if (!v30 && v28 != 0)
        {
          [(TSTMergeRegionMap *)v7 insert:?];
        }
      }

      if (![(TSTMergeRegionMapIterator *)v17 hasNextMergeRegion])
      {
        goto LABEL_57;
      }
    }
  }

  v8 = range.var0.var0 + range.var1.var1 - 1;
  if (v8 >= range.var0.var0)
  {
    v9 = *&range.var1 + HIWORD(*&range.var0) + 255;
    v10 = range.var0.var1;
    v11 = range.var0.var0;
    do
    {
      if (v10 <= v9)
      {
        v12 = v33;
        do
        {
          range = (v11 | (v12 << 16) | *&range & 0xFFFFFFFF00000000);
          v13 = [map mergedRangeForCellID:range];
          v14 = v13;
          if (v13 != 0xFFFF)
          {
            v15 = (v13 & 0xFF0000) == 0xFF0000 || HIWORD(v13) == 0;
            v16 = v15 || (v13 & 0xFFFF00000000) == 0;
            if (!v16 && ![(TSTMergeRegionMap *)v7 find:v13])
            {
              [(TSTMergeRegionMap *)v7 insert:v14];
            }
          }

          ++v12;
        }

        while (v12 <= v9);
      }

      ++v11;
    }

    while (v11 <= v8);
  }

  return v7;
}

- (TSTMergeRegionMap)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSTMergeRegionMap;
  result = [(TSPObject *)&v4 initWithContext:context];
  if (result)
  {
    result->mUnionedMergeRange = 0xFFFFFFLL;
  }

  return result;
}

- (id)iterator
{
  v2 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"TSTMergeRegionMap %p: ", self];
  v4 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
  if ([(TSTMergeRegionMapIterator *)v4 hasNextMergeRegion])
  {
    do
    {
      nextMergeRegion = [(TSTMergeRegionMapIterator *)v4 nextMergeRegion];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", BYTE2(nextMergeRegion), nextMergeRegion];
      [v3 appendString:{objc_msgSend(v6, "stringWithFormat:", @"(%@, %@)", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", WORD2(nextMergeRegion), HIWORD(nextMergeRegion)))}];
      if ([(TSTMergeRegionMapIterator *)v4 hasNextMergeRegion])
      {
        [v3 appendString:{@", "}];
      }
    }

    while ([(TSTMergeRegionMapIterator *)v4 hasNextMergeRegion]);
  }

  return v3;
}

- (BOOL)insert:(id)insert
{
  v5 = ~insert.var0.var0;
  insertCopy = insert;
  [(TSPObject *)self willModify];
  if (!v5 || (*&insert & 0xFF0000) == 0xFF0000 || !HIWORD(*&insert) || (*&insert & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 172, @"can't insert an invalid merge range"}];
  }

  v8 = insert.var0.var0 + insert.var1.var1 - 1;
  if (v8 >= insert.var0.var0)
  {
    var0 = insert.var0.var0;
    while (insert.var0.var1 > (LOBYTE(insert.var1.var0) + insert.var0.var1 - 1))
    {
LABEL_15:
      if (++var0 > v8)
      {
        v16 = insert.var0.var0;
        do
        {
          if (insert.var0.var1 <= (LOBYTE(insert.var1.var0) + insert.var0.var1 - 1))
          {
            v17 = *&insert >> 16;
            do
            {
              v21 = v16 | (v17 << 16);
              v23 = &v21;
              *(std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__emplace_unique_key_args<TSUColumnRowCoordinate,std::piecewise_construct_t const&,std::tuple<TSUColumnRowCoordinate const&>,std::tuple<>>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21) + 5) = insert.var0;
              LODWORD(v17) = v17 + 1;
            }

            while (v17 <= (LOBYTE(insert.var1.var0) + insert.var0.var1 - 1));
          }

          ++v16;
        }

        while (v16 <= v8);
        goto LABEL_7;
      }
    }

    v14 = *&insert >> 16;
    while (1)
    {
      v15 = v14;
      LODWORD(v23) = var0 | (v14 << 16);
      if (std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v23))
      {
        break;
      }

      LOBYTE(v14) = v15 + 1;
      if ((v15 + 1) > (LOBYTE(insert.var1.var0) + insert.var0.var1 - 1))
      {
        goto LABEL_15;
      }
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
    [currentHandler2 handleFailureInFunction:v19 file:v20 lineNumber:186 description:{@"can't merge an already-merged cell: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", v15, var0)}];
    return 0;
  }

  else
  {
LABEL_7:
    if (std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &insertCopy))
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
      [currentHandler3 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 204, @"merge region to be inserted already exists!"}];
    }

    v23 = &insertCopy;
    v11 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__emplace_unique_key_args<TSUColumnRowCoordinate,std::piecewise_construct_t const&,std::tuple<TSUColumnRowCoordinate const&>,std::tuple<>>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &insertCopy);
    *(v11 + 5) = HIDWORD(insertCopy);
    self->mUnionedMergeRange = TSTCellRangeUnionCellRange(*&self->mUnionedMergeRange, insertCopy);
    return 1;
  }
}

- (BOOL)remove:(id)remove
{
  removeCopy = remove;
  v5 = ~remove.var0.var0;
  removeCopy2 = remove;
  [(TSPObject *)self willModify];
  if (!v5 || (*&removeCopy & 0xFF0000) == 0xFF0000 || !HIWORD(*&removeCopy) || (*&removeCopy & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 217, @"can't remove an invalid merge range"}];
  }

  v20 = removeCopy.var0.var0 + removeCopy.var1.var1 - 1;
  if (v20 >= removeCopy.var0.var0)
  {
    v18 = *&removeCopy >> 16;
    v8 = *&removeCopy.var1 + HIWORD(*&removeCopy.var0) + 255;
    var1 = removeCopy.var0.var1;
    do
    {
      if (var1 <= v8)
      {
        v9 = v18;
        do
        {
          v21 = removeCopy.var0.var0 | (v9 << 16);
          if (!std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21))
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
            [currentHandler2 handleFailureInFunction:v11 file:v12 lineNumber:222 description:{@"can't unmerge an already-unmerged cell: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(v21), v21)}];
          }

          std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__erase_unique<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21);
          ++v9;
        }

        while (v9 <= v8);
      }

      ++*&removeCopy.var0;
    }

    while (removeCopy.var0.var0 <= v20);
  }

  if (!std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &removeCopy2))
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
    [currentHandler3 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 228, @"merge region to be deleted doesn't exist!"}];
  }

  std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__erase_unique<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &removeCopy2);
  self->mUnionedMergeRange = 0xFFFFFFLL;
  next = self->mMergeRegionTopLeftToMergeRegionSize.__table_.__first_node_.__next_;
  if (next)
  {
    v16 = 0xFFFFFFLL;
    do
    {
      v16 = TSTCellRangeUnionCellRange(v16, next[2]);
      self->mUnionedMergeRange = v16;
      next = *next;
    }

    while (next);
  }

  return 1;
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)mergedRangeForCellID:(id)d
{
  dCopy = d;
  v4 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v4)
  {
    v14 = *(v4 + 5);
    v5 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v14);
    if (!v5)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap mergedRangeForCellID:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 267, @"merge region map inconsistency found"}];
    }

    v8 = *(v5 + 5);
    v9 = (v14 | (v8 << 32));
    if (v14 == 0xFFFF || (v14 & 0xFF0000) == 0xFF0000 || (v8 >= 0x10000 ? (v10 = v8 == 0) : (v10 = 1), v10))
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap mergedRangeForCellID:]"];
      [currentHandler2 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 269, @"merge region map inconsistency found"}];
    }
  }

  else
  {
    return 0xFFFFFFLL;
  }

  return v9;
}

- (BOOL)partiallyIntersectsCellRange:(id)range
{
  var0 = range.var0;
  v4 = 0;
  if (range.var0.var0 == 0xFFFF)
  {
    return v4;
  }

  if ((*&range & 0xFF0000) == 0xFF0000)
  {
    return v4;
  }

  v4 = 0;
  var1 = range.var1.var1;
  if (!range.var1.var1 || (*&range & 0xFFFF00000000) == 0)
  {
    return v4;
  }

  p_mMergeRegionTopLeftToMergeRegionSize = &self->mMergeRegionTopLeftToMergeRegionSize;
  v8 = range.var1;
  if (self->mMergeRegionTopLeftToMergeRegionSize.__table_.__size_ >= range.var1.var0 * range.var1.var1)
  {
    v45 = range.var0.var0 + range.var1.var1 - 1;
    if (v45 < range.var0.var0)
    {
      return 0;
    }

    v43 = *&range >> 16;
    v22 = LOBYTE(range.var1.var0) + range.var0.var1 - 1;
    v42 = range.var0.var1;
    v44 = range.var0.var0;
    while (v42 > v22)
    {
LABEL_62:
      v4 = 0;
      if (++v44 > v45)
      {
        return v4;
      }
    }

    v23 = v44;
    v24 = v43;
    while (1)
    {
      v47 = v23 & 0xFF00FFFF | (v24 << 16);
      v25 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v47);
      if (v25)
      {
        break;
      }

LABEL_61:
      if (++v24 > v22)
      {
        goto LABEL_62;
      }
    }

    v46 = *(v25 + 5);
    v26 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(p_mMergeRegionTopLeftToMergeRegionSize, &v46);
    if (!v26)
    {
      v27 = v23;
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap partiallyIntersectsCellRange:]"];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
      v31 = currentHandler;
      v23 = v27;
      [v31 handleFailureInFunction:v29 file:v30 lineNumber:320 description:@"merge region map inconsistency found"];
    }

    v32 = 0;
    v33 = *(v26 + 5);
    if (v46 == 0xFFFF)
    {
      goto LABEL_59;
    }

    v34 = 0xFFFFLL;
    v35 = 16711680;
    v36 = 0;
    if ((v46 & 0xFF0000) == 0xFF0000)
    {
      goto LABEL_60;
    }

    v32 = 0;
    if (v33 < 0x10000)
    {
LABEL_59:
      v34 = 0xFFFFLL;
      v35 = 16711680;
      v36 = 0;
    }

    else
    {
      v34 = 0xFFFFLL;
      v35 = 16711680;
      v36 = 0;
      if (*(v26 + 5))
      {
        v34 = 0;
        v37 = v43;
        if (BYTE2(v46) > v43)
        {
          v37 = BYTE2(v46);
        }

        if (v46 <= var0.var0)
        {
          v38 = var0.var0;
        }

        else
        {
          v38 = v46;
        }

        if ((v33 + BYTE2(v46) - 1) >= v22)
        {
          v39 = v22;
        }

        else
        {
          v39 = (v33 + BYTE2(v46) - 1);
        }

        if ((v46 + WORD1(v33) - 1) >= v45)
        {
          v40 = v45;
        }

        else
        {
          v40 = (v46 + WORD1(v33) - 1);
        }

        v35 = 0;
        v32 = 0;
        v36 = 0;
        if (v38 <= v40 && v37 <= v39)
        {
          v36 = ((v40 - v38) << 48) + 0x1000000000000;
          v32 = (((v39 - v37) << 32) + 0x100000000) & 0xFFFF00000000;
          v35 = v37 << 16;
          v34 = v38;
        }
      }
    }

LABEL_60:
    if ((((v35 | v34 | v32 | v36) ^ (v46 | (v33 << 32))) & 0xFFFFFFFF00FFFFFFLL) != 0)
    {
      return 1;
    }

    goto LABEL_61;
  }

  v9 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
  if (![(TSTMergeRegionMapIterator *)v9 hasNextMergeRegion])
  {
LABEL_31:
    v4 = 0;
    goto LABEL_32;
  }

  v10 = *&v8 + HIWORD(*&var0) + 255;
  v11 = var0.var0 + var1 - 1;
  while (1)
  {
    nextMergeRegion = [(TSTMergeRegionMapIterator *)v9 nextMergeRegion];
    v13 = 0;
    if (nextMergeRegion == 0xFFFF)
    {
LABEL_26:
      v14 = 0xFFFFLL;
      v15 = 16711680;
      v16 = 0;
      goto LABEL_27;
    }

    v14 = 0xFFFFLL;
    v15 = 16711680;
    v16 = 0;
    if ((nextMergeRegion & 0xFF0000) != 0xFF0000)
    {
      v13 = 0;
      if (!HIWORD(nextMergeRegion))
      {
        goto LABEL_26;
      }

      v14 = 0xFFFFLL;
      v15 = 16711680;
      v16 = 0;
      if ((nextMergeRegion & 0xFFFF00000000) != 0)
      {
        v14 = 0;
        v17 = var0.var1;
        if (BYTE2(nextMergeRegion) > var0.var1)
        {
          v17 = BYTE2(nextMergeRegion);
        }

        if (nextMergeRegion <= var0.var0)
        {
          v18 = var0.var0;
        }

        else
        {
          v18 = nextMergeRegion;
        }

        if ((BYTE4(nextMergeRegion) + BYTE2(nextMergeRegion) - 1) >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = (BYTE4(nextMergeRegion) + BYTE2(nextMergeRegion) - 1);
        }

        if ((nextMergeRegion + HIWORD(nextMergeRegion) - 1) >= v11)
        {
          v20 = v11;
        }

        else
        {
          v20 = (nextMergeRegion + HIWORD(nextMergeRegion) - 1);
        }

        v15 = 0;
        v13 = 0;
        v16 = 0;
        if (v18 <= v20 && v17 <= v19)
        {
          v16 = ((v20 - v18) << 48) + 0x1000000000000;
          v13 = (((v19 - v17) << 32) + 0x100000000) & 0xFFFF00000000;
          v15 = v17 << 16;
          v14 = v18;
        }
      }
    }

LABEL_27:
    if (HIWORD(v16))
    {
      v21 = v15 | v14 | v13 | v16;
      if ((v21 & 0xFFFF00000000) != 0 && ((v21 ^ nextMergeRegion) & 0xFFFFFFFF00FFFFFFLL) != 0)
      {
        break;
      }
    }

    if (![(TSTMergeRegionMapIterator *)v9 hasNextMergeRegion])
    {
      goto LABEL_31;
    }
  }

  v4 = 1;
LABEL_32:

  return v4;
}

- (BOOL)partiallyIntersectsCellRegion:(id)region
{
  if (!region)
  {
    return 0;
  }

  if ([region isEmpty])
  {
    return 0;
  }

  size = self->mMergeRegionTopLeftToMergeRegionSize.__table_.__size_;
  if (size < [region cellCount])
  {
    v6 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    while ([(TSTMergeRegionMapIterator *)v6 hasNextMergeRegion])
    {
      if ([region partiallyIntersectsCellRange:{-[TSTMergeRegionMapIterator nextMergeRegion](v6, "nextMergeRegion")}])
      {

        return 1;
      }
    }

    return 0;
  }

  v8 = [objc_msgSend(region "iterator")];
  v14 = v8;
  if (v8 == 0xFFFF || (*&v8 & 0xFF0000) == 0xFF0000)
  {
    return 0;
  }

  while (1)
  {
    v9 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v14);
    if (v9)
    {
      v13 = *(v9 + 5);
      v10 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v13);
      if (!v10)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap partiallyIntersectsCellRegion:]"];
        [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 381, @"merge region map inconsistency found"}];
      }

      if (![region containsCellRange:v13 | (*(v10 + 5) << 32)])
      {
        break;
      }
    }

    if (v14 == 0xFFFF || (v14 & 0xFF0000) == 0xFF0000)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)find:(id)find
{
  findCopy = find;
  mUnionedMergeRange = self->mUnionedMergeRange;
  if (HIWORD(*&mUnionedMergeRange))
  {
    v4 = (*&mUnionedMergeRange & 0xFFFF00000000) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  selfCopy = self;
  LOBYTE(self) = 0;
  if (!find.var1.var1 || (*&find & 0xFFFF00000000) == 0)
  {
    return self;
  }

  if (mUnionedMergeRange.origin.row > find.var0.var0 || (v6 = mUnionedMergeRange.origin.row + mUnionedMergeRange.size.numberOfRows - 1, v6 < find.var0.var0) || find.var0.var1 < mUnionedMergeRange.origin.column || (v7 = (LOBYTE(mUnionedMergeRange.size.numberOfColumns) + mUnionedMergeRange.origin.column - 1), v7 < find.var0.var1) || v7 < (LOBYTE(find.var1.var0) + find.var0.var1 - 1) || v6 < (find.var0.var0 + find.var1.var1 - 1))
  {
LABEL_6:
    LOBYTE(self) = 0;
    return self;
  }

  self = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&selfCopy->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &findCopy);
  if (self)
  {
    modifyObjectToken_high = HIDWORD(self->super._modifyObjectToken);
    v8 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&selfCopy->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &modifyObjectToken_high);
    if (!v8)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap find:]"];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 413, @"merge region map inconsistency found"}];
    }

    LOBYTE(self) = *(v8 + 11) == findCopy.var1.var1 && *(v8 + 10) == findCopy.var1.var0;
  }

  return self;
}

- (id)mergedGridIndicesForDimension:(int)dimension
{
  if (!dimension)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    if ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion])
    {
      do
      {
        nextMergeRegion = [(TSTMergeRegionMapIterator *)v5 nextMergeRegion];
        [v4 addIndexesInRange:{nextMergeRegion + 1, HIWORD(nextMergeRegion) - 1}];
      }

      while ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion]);
    }

    goto LABEL_8;
  }

  if (dimension == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    if ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion])
    {
      do
      {
        nextMergeRegion2 = [(TSTMergeRegionMapIterator *)v5 nextMergeRegion];
        [v4 addIndexesInRange:{BYTE2(nextMergeRegion2) + 1, WORD2(nextMergeRegion2) - 1}];
      }

      while ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion]);
    }

LABEL_8:

    goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (BOOL)hasRangeSpanningRows
{
  iterator = [(TSTMergeRegionMap *)self iterator];
  do
  {
    hasNextMergeRegion = [iterator hasNextMergeRegion];
  }

  while (hasNextMergeRegion && !([iterator nextMergeRegion] >> 49));
  return hasNextMergeRegion;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end