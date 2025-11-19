@interface TSTMergeRegionMap
+ (id)mergeRegionMapFromMap:(id)a3 intersectingRange:(id)a4;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)mergedRangeForCellID:(id)a3;
- (BOOL)find:(id)a3;
- (BOOL)hasRangeSpanningRows;
- (BOOL)insert:(id)a3;
- (BOOL)partiallyIntersectsCellRange:(id)a3;
- (BOOL)partiallyIntersectsCellRegion:(id)a3;
- (BOOL)remove:(id)a3;
- (TSTMergeRegionMap)initWithContext:(id)a3;
- (id).cxx_construct;
- (id)description;
- (id)initRegionMapFromMap:(id)a3 intersectingRange:(id)a4;
- (id)initRegionMapFromMap:(id)a3 rowRemapping:(id)a4;
- (id)iterator;
- (id)mergedGridIndicesForDimension:(int)a3;
@end

@implementation TSTMergeRegionMap

+ (id)mergeRegionMapFromMap:(id)a3 intersectingRange:(id)a4
{
  v4 = [[TSTMergeRegionMap alloc] initRegionMapFromMap:a3 intersectingRange:a4];

  return v4;
}

- (id)initRegionMapFromMap:(id)a3 rowRemapping:(id)a4
{
  if (([a4 isVertical] & 1) == 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap initRegionMapFromMap:rowRemapping:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 26, @"remapping must be vertical."}];
  }

  v9 = -[TSTMergeRegionMap initWithContext:](self, "initWithContext:", [a3 context]);
  v10 = v9;
  if (a3 && v9)
  {
    v11 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:a3];
    if ([(TSTMergeRegionMapIterator *)v11 hasNextMergeRegion])
    {
      do
      {
        v12 = [(TSTMergeRegionMapIterator *)v11 nextMergeRegion];
        -[TSTMergeRegionMap insert:](v10, "insert:", v12 & 0xFFFFFFFFFFFF0000 | [a4 mapIndex:v12]);
      }

      while ([(TSTMergeRegionMapIterator *)v11 hasNextMergeRegion]);
    }
  }

  return v10;
}

- (id)initRegionMapFromMap:(id)a3 intersectingRange:(id)a4
{
  v6 = -[TSTMergeRegionMap initWithContext:](self, "initWithContext:", [a3 context]);
  v7 = v6;
  if (!a3 || !v6 || a4.var0.var0 == 0xFFFF || (*&a4 & 0xFF0000) == 0xFF0000 || !HIWORD(*&a4) || (*&a4 & 0xFFFF00000000) == 0)
  {
    return v7;
  }

  v33 = *&a4 >> 16;
  if (a4.var1.var0 * *&a4.var1.var1 >= *(a3 + 28))
  {
    v17 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:a3];
    if (![(TSTMergeRegionMapIterator *)v17 hasNextMergeRegion])
    {
LABEL_57:

      return v7;
    }

    while (1)
    {
      v18 = [(TSTMergeRegionMapIterator *)v17 nextMergeRegion];
      v19 = 0;
      if (v18 != 0xFFFF)
      {
        v20 = 0xFFFFLL;
        v21 = 16711680;
        v22 = 0;
        if ((v18 & 0xFF0000) == 0xFF0000)
        {
          goto LABEL_47;
        }

        v19 = 0;
        if (HIWORD(v18))
        {
          v20 = 0xFFFFLL;
          v21 = 16711680;
          v22 = 0;
          if ((v18 & 0xFFFF00000000) != 0)
          {
            v20 = 0;
            var1 = BYTE2(v18);
            if (BYTE2(v18) <= a4.var0.var1)
            {
              var1 = a4.var0.var1;
            }

            if (v18 <= a4.var0.var0)
            {
              var0 = a4.var0.var0;
            }

            else
            {
              var0 = v18;
            }

            if ((BYTE4(v18) + BYTE2(v18) - 1) >= (LOBYTE(a4.var1.var0) + a4.var0.var1 - 1))
            {
              v25 = (LOBYTE(a4.var1.var0) + a4.var0.var1 - 1);
            }

            else
            {
              v25 = (BYTE4(v18) + BYTE2(v18) - 1);
            }

            if ((v18 + HIWORD(v18) - 1) >= (a4.var0.var0 + a4.var1.var1 - 1))
            {
              v26 = (a4.var0.var0 + a4.var1.var1 - 1);
            }

            else
            {
              v26 = (v18 + HIWORD(v18) - 1);
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

  v8 = a4.var0.var0 + a4.var1.var1 - 1;
  if (v8 >= a4.var0.var0)
  {
    v9 = *&a4.var1 + HIWORD(*&a4.var0) + 255;
    v10 = a4.var0.var1;
    v11 = a4.var0.var0;
    do
    {
      if (v10 <= v9)
      {
        v12 = v33;
        do
        {
          a4 = (v11 | (v12 << 16) | *&a4 & 0xFFFFFFFF00000000);
          v13 = [a3 mergedRangeForCellID:a4];
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

- (TSTMergeRegionMap)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTMergeRegionMap;
  result = [(TSPObject *)&v4 initWithContext:a3];
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
      v5 = [(TSTMergeRegionMapIterator *)v4 nextMergeRegion];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", BYTE2(v5), v5];
      [v3 appendString:{objc_msgSend(v6, "stringWithFormat:", @"(%@, %@)", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", WORD2(v5), HIWORD(v5)))}];
      if ([(TSTMergeRegionMapIterator *)v4 hasNextMergeRegion])
      {
        [v3 appendString:{@", "}];
      }
    }

    while ([(TSTMergeRegionMapIterator *)v4 hasNextMergeRegion]);
  }

  return v3;
}

- (BOOL)insert:(id)a3
{
  v5 = ~a3.var0.var0;
  v22 = a3;
  [(TSPObject *)self willModify];
  if (!v5 || (*&a3 & 0xFF0000) == 0xFF0000 || !HIWORD(*&a3) || (*&a3 & 0xFFFF00000000) == 0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 172, @"can't insert an invalid merge range"}];
  }

  v8 = a3.var0.var0 + a3.var1.var1 - 1;
  if (v8 >= a3.var0.var0)
  {
    var0 = a3.var0.var0;
    while (a3.var0.var1 > (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
    {
LABEL_15:
      if (++var0 > v8)
      {
        v16 = a3.var0.var0;
        do
        {
          if (a3.var0.var1 <= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
          {
            v17 = *&a3 >> 16;
            do
            {
              v21 = v16 | (v17 << 16);
              v23 = &v21;
              *(std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__emplace_unique_key_args<TSUColumnRowCoordinate,std::piecewise_construct_t const&,std::tuple<TSUColumnRowCoordinate const&>,std::tuple<>>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21) + 5) = a3.var0;
              LODWORD(v17) = v17 + 1;
            }

            while (v17 <= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1));
          }

          ++v16;
        }

        while (v16 <= v8);
        goto LABEL_7;
      }
    }

    v14 = *&a3 >> 16;
    while (1)
    {
      v15 = v14;
      LODWORD(v23) = var0 | (v14 << 16);
      if (std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v23))
      {
        break;
      }

      LOBYTE(v14) = v15 + 1;
      if ((v15 + 1) > (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
      {
        goto LABEL_15;
      }
    }

    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
    [v18 handleFailureInFunction:v19 file:v20 lineNumber:186 description:{@"can't merge an already-merged cell: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", v15, var0)}];
    return 0;
  }

  else
  {
LABEL_7:
    if (std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v22))
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap insert:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 204, @"merge region to be inserted already exists!"}];
    }

    v23 = &v22;
    v11 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__emplace_unique_key_args<TSUColumnRowCoordinate,std::piecewise_construct_t const&,std::tuple<TSUColumnRowCoordinate const&>,std::tuple<>>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v22);
    *(v11 + 5) = HIDWORD(v22);
    self->mUnionedMergeRange = TSTCellRangeUnionCellRange(*&self->mUnionedMergeRange, v22);
    return 1;
  }
}

- (BOOL)remove:(id)a3
{
  v3 = a3;
  v5 = ~a3.var0.var0;
  v22 = a3;
  [(TSPObject *)self willModify];
  if (!v5 || (*&v3 & 0xFF0000) == 0xFF0000 || !HIWORD(*&v3) || (*&v3 & 0xFFFF00000000) == 0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 217, @"can't remove an invalid merge range"}];
  }

  v20 = v3.var0.var0 + v3.var1.var1 - 1;
  if (v20 >= v3.var0.var0)
  {
    v18 = *&v3 >> 16;
    v8 = *&v3.var1 + HIWORD(*&v3.var0) + 255;
    var1 = v3.var0.var1;
    do
    {
      if (var1 <= v8)
      {
        v9 = v18;
        do
        {
          v21 = v3.var0.var0 | (v9 << 16);
          if (!std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21))
          {
            v10 = [MEMORY[0x277D6C290] currentHandler];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
            [v10 handleFailureInFunction:v11 file:v12 lineNumber:222 description:{@"can't unmerge an already-unmerged cell: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%hu, %hu)", BYTE2(v21), v21)}];
          }

          std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__erase_unique<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v21);
          ++v9;
        }

        while (v9 <= v8);
      }

      ++*&v3.var0;
    }

    while (v3.var0.var0 <= v20);
  }

  if (!std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v22))
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap remove:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 228, @"merge region to be deleted doesn't exist!"}];
  }

  std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__erase_unique<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v22);
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

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)mergedRangeForCellID:(id)a3
{
  v15 = a3;
  v4 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v15);
  if (v4)
  {
    v14 = *(v4 + 5);
    v5 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&self->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &v14);
    if (!v5)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap mergedRangeForCellID:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 267, @"merge region map inconsistency found"}];
    }

    v8 = *(v5 + 5);
    v9 = (v14 | (v8 << 32));
    if (v14 == 0xFFFF || (v14 & 0xFF0000) == 0xFF0000 || (v8 >= 0x10000 ? (v10 = v8 == 0) : (v10 = 1), v10))
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap mergedRangeForCellID:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 269, @"merge region map inconsistency found"}];
    }
  }

  else
  {
    return 0xFFFFFFLL;
  }

  return v9;
}

- (BOOL)partiallyIntersectsCellRange:(id)a3
{
  var0 = a3.var0;
  v4 = 0;
  if (a3.var0.var0 == 0xFFFF)
  {
    return v4;
  }

  if ((*&a3 & 0xFF0000) == 0xFF0000)
  {
    return v4;
  }

  v4 = 0;
  var1 = a3.var1.var1;
  if (!a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    return v4;
  }

  p_mMergeRegionTopLeftToMergeRegionSize = &self->mMergeRegionTopLeftToMergeRegionSize;
  v8 = a3.var1;
  if (self->mMergeRegionTopLeftToMergeRegionSize.__table_.__size_ >= a3.var1.var0 * a3.var1.var1)
  {
    v45 = a3.var0.var0 + a3.var1.var1 - 1;
    if (v45 < a3.var0.var0)
    {
      return 0;
    }

    v43 = *&a3 >> 16;
    v22 = LOBYTE(a3.var1.var0) + a3.var0.var1 - 1;
    v42 = a3.var0.var1;
    v44 = a3.var0.var0;
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
      v28 = [MEMORY[0x277D6C290] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap partiallyIntersectsCellRange:]"];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"];
      v31 = v28;
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
    v12 = [(TSTMergeRegionMapIterator *)v9 nextMergeRegion];
    v13 = 0;
    if (v12 == 0xFFFF)
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
    if ((v12 & 0xFF0000) != 0xFF0000)
    {
      v13 = 0;
      if (!HIWORD(v12))
      {
        goto LABEL_26;
      }

      v14 = 0xFFFFLL;
      v15 = 16711680;
      v16 = 0;
      if ((v12 & 0xFFFF00000000) != 0)
      {
        v14 = 0;
        v17 = var0.var1;
        if (BYTE2(v12) > var0.var1)
        {
          v17 = BYTE2(v12);
        }

        if (v12 <= var0.var0)
        {
          v18 = var0.var0;
        }

        else
        {
          v18 = v12;
        }

        if ((BYTE4(v12) + BYTE2(v12) - 1) >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = (BYTE4(v12) + BYTE2(v12) - 1);
        }

        if ((v12 + HIWORD(v12) - 1) >= v11)
        {
          v20 = v11;
        }

        else
        {
          v20 = (v12 + HIWORD(v12) - 1);
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
      if ((v21 & 0xFFFF00000000) != 0 && ((v21 ^ v12) & 0xFFFFFFFF00FFFFFFLL) != 0)
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

- (BOOL)partiallyIntersectsCellRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isEmpty])
  {
    return 0;
  }

  size = self->mMergeRegionTopLeftToMergeRegionSize.__table_.__size_;
  if (size < [a3 cellCount])
  {
    v6 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    while ([(TSTMergeRegionMapIterator *)v6 hasNextMergeRegion])
    {
      if ([a3 partiallyIntersectsCellRange:{-[TSTMergeRegionMapIterator nextMergeRegion](v6, "nextMergeRegion")}])
      {

        return 1;
      }
    }

    return 0;
  }

  v8 = [objc_msgSend(a3 "iterator")];
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
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap partiallyIntersectsCellRegion:]"];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 381, @"merge region map inconsistency found"}];
      }

      if (![a3 containsCellRange:v13 | (*(v10 + 5) << 32)])
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

- (BOOL)find:(id)a3
{
  v14 = a3;
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

  v5 = self;
  LOBYTE(self) = 0;
  if (!a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    return self;
  }

  if (mUnionedMergeRange.origin.row > a3.var0.var0 || (v6 = mUnionedMergeRange.origin.row + mUnionedMergeRange.size.numberOfRows - 1, v6 < a3.var0.var0) || a3.var0.var1 < mUnionedMergeRange.origin.column || (v7 = (LOBYTE(mUnionedMergeRange.size.numberOfColumns) + mUnionedMergeRange.origin.column - 1), v7 < a3.var0.var1) || v7 < (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1) || v6 < (a3.var0.var0 + a3.var1.var1 - 1))
  {
LABEL_6:
    LOBYTE(self) = 0;
    return self;
  }

  self = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&v5->mCellIDToMergeRegionTopLeft.__table_.__bucket_list_.__ptr_, &v14);
  if (self)
  {
    modifyObjectToken_high = HIDWORD(self->super._modifyObjectToken);
    v8 = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(&v5->mMergeRegionTopLeftToMergeRegionSize.__table_.__bucket_list_.__ptr_, &modifyObjectToken_high);
    if (!v8)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTMergeRegionMap find:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTMergeRegionMap.mm"), 413, @"merge region map inconsistency found"}];
    }

    LOBYTE(self) = *(v8 + 11) == v14.var1.var1 && *(v8 + 10) == v14.var1.var0;
  }

  return self;
}

- (id)mergedGridIndicesForDimension:(int)a3
{
  if (!a3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    if ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion])
    {
      do
      {
        v7 = [(TSTMergeRegionMapIterator *)v5 nextMergeRegion];
        [v4 addIndexesInRange:{v7 + 1, HIWORD(v7) - 1}];
      }

      while ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion]);
    }

    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5 = [[TSTMergeRegionMapIterator alloc] initWithMergeRegionMap:self];
    if ([(TSTMergeRegionMapIterator *)v5 hasNextMergeRegion])
    {
      do
      {
        v6 = [(TSTMergeRegionMapIterator *)v5 nextMergeRegion];
        [v4 addIndexesInRange:{BYTE2(v6) + 1, WORD2(v6) - 1}];
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
  v2 = [(TSTMergeRegionMap *)self iterator];
  do
  {
    v3 = [v2 hasNextMergeRegion];
  }

  while (v3 && !([v2 nextMergeRegion] >> 49));
  return v3;
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