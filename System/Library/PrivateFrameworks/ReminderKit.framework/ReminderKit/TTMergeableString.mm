@interface TTMergeableString
+ (id)unserialisedReplicaID;
- (BOOL)canMergeString:(id)a3;
- (BOOL)graphIsEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFragment;
- (BOOL)selection:(id)a3 wasModifiedAfter:(id)a4;
- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)a3 wasModifiedAfter:(id)a4;
- (NSString)description;
- (TTMergeableString)initWithArchive:(const void *)a3 andReplicaID:(id)a4 withOrderedSubstrings:(void *)a5 timestamp:(id)a6;
- (TTMergeableString)initWithData:(id)a3 andReplicaID:(id)a4;
- (TTMergeableString)initWithReplicaID:(id)a3 asFragment:(BOOL)a4;
- (TTMergeableStringDelegate)delegate;
- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5;
- (__n128)deleteSubstrings:(uint64_t)a3 withCharacterRanges:(char)a4;
- (id).cxx_construct;
- (id)characterRangesForSelection:(id)a3;
- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dotDescription:(unint64_t)a3;
- (id)i_saveDeltasSinceTimestamp:(id)a3 toArchive:(void *)a4;
- (id)replicaUUIDForCharacterAtIndex:(unint64_t)a3;
- (id)selectionForCharacterRanges:(id)a3;
- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4;
- (id)serialize;
- (id)serializeDeltaSinceTimestamp:(id)a3;
- (int64_t)substring:(void *)a3 modifiedAfter:(id)a4;
- (unint64_t)getCharacterIndexForCharID:(TopoID)a3;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)mergeWithString:(id)a3 mergeTimestamps:(BOOL)a4;
- (void)checkTimestampLogStyleErrors:(BOOL)a3;
- (void)cleanupObjectsNeedingUpdatedRanges;
- (void)coalesce;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)a3;
- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4;
- (void)dumpMergeData:(id)a3;
- (void)endEditing;
- (void)enumerateRangesModifiedAfter:(id)a3 usingBlock:(id)a4;
- (void)enumerateSubstrings:(id)a3;
- (void)generateIdsForLocalChanges;
- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)a3;
- (void)getCharacterRanges:(void *)a3 forSubstrings:(void *)a4;
- (void)getSubstringBeforeTopoID:(TopoID)a3;
- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4;
- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4;
- (void)getSubstrings:(void *)a3 inOrderedSubstrings:(void *)a4 forCharacterRange:(_NSRange)a5;
- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (void)insertString:(id)a3 atIndex:(unint64_t)a4;
- (void)mergeWith:(id)a3;
- (void)moveRange:(_NSRange)a3 toIndex:(unint64_t)a4;
- (void)orderedSubstrings;
- (void)realizeLocalChangesIn:(id)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)saveSubstrings:(void *)a3 archiveSet:(void *)a4 linkSet:(void *)a5 archivedString:(id *)a6 toArchive:(void *)a7;
- (void)saveToArchive:(void *)a3;
- (void)setDocument:(id)a3;
- (void)setTimestamp:(id)a3;
- (void)sortSplitNodes;
- (void)splitTopoSubstring:(void *)a3 atIndex:(unsigned int)a4;
- (void)traverseUnordered:(id)a3;
- (void)updateAttributedStringAfterMerge;
- (void)updateCache;
- (void)updateClock;
- (void)updateSubstringIndexes;
- (void)updateTimestampsInRange:(_NSRange)a3;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation TTMergeableString

- (void)setDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 replica];
  [(TTMergeableString *)self setReplicaUUID:v5];

  v6 = objc_opt_class();
  v7 = REMDynamicCast(v6, v4);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 sharedTopotextTimestamp];
    [(TTMergeableString *)self setTimestamp:v9];

    objc_setAssociatedObject(self, TTMergeableStringCRDataTypeCRDocumentKey, v8, 0);
  }

  else
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [TTMergeableString(CRDataType) setDocument:v10];
    }
  }
}

- (void)mergeWith:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v7);
    }

    [(TTMergeableString *)self mergeWithString:v8 mergeTimestamps:0];
    v4 = [(TTMergeableString *)self document];

    if (v4)
    {
      v5 = [(TTMergeableString *)self document];
      v6 = [v5 stringsWithClocksNeedingUpdating];
      [v6 addObject:self];
    }
  }
}

- (void)realizeLocalChangesIn:(id)a3
{
  [(TTMergeableString *)self generateIdsForLocalChanges];
  v4 = [(TTMergeableString *)self document];

  if (v4)
  {
    v6 = [(TTMergeableString *)self document];
    v5 = [v6 stringsWithClocksToResetAfterRealizingLocalChanges];
    [v5 addObject:self];
  }
}

- (TTMergeableString)initWithReplicaID:(id)a3 asFragment:(BOOL)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v18.receiver = self;
  v18.super_class = TTMergeableString;
  v8 = [(TTMergeableString *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replicaUUID, a3);
    v9->_unserializedClock = 0;
    if (!a4)
    {
      operator new();
    }

    v10 = [[TTVectorMultiTimestamp alloc] initWithCapacity:2];
    timestamp = v9->_timestamp;
    v9->_timestamp = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
    objectsNeedingUpdatedRanges = v9->_objectsNeedingUpdatedRanges;
    v9->_objectsNeedingUpdatedRanges = v12;

    v9->_cacheInvalid = 1;
    v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
    attributedString = v9->_attributedString;
    v9->_attributedString = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5812000000;
  v16 = __Block_byref_object_copy__15;
  v17 = __Block_byref_object_dispose__15;
  v18 = &unk_19A260519;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  if (begin == end)
  {
    v7 = &v13;
  }

  else
  {
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v6 = *begin;
      v12[0] = v5;
      v12[1] = 3221225472;
      v12[2] = __28__TTMergeableString_dealloc__block_invoke;
      v12[3] = &unk_1E7509A38;
      v12[4] = &v13;
      traverseUnordered(v6, v12);
      ++begin;
    }

    while (begin != end);
    v7 = v14;
  }

  for (i = v7[8]; i; i = *i)
  {
    v9 = i[2];
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10)
      {
        *(v9 + 56) = v10;
        operator delete(v10);
      }

      MEMORY[0x19A8FD070](v9, 0x1080C40D9F1C51ELL);
    }
  }

  _Block_object_dispose(&v13, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v19);
  v11.receiver = self;
  v11.super_class = TTMergeableString;
  [(TTMergeableString *)&v11 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  topotext::String::String(v8);
  [(TTMergeableString *)self saveToArchive:v8];
  v4 = objc_alloc(objc_opt_class());
  v5 = [(TTMergeableString *)self replicaUUID];
  v6 = [v4 initWithArchive:v8 andReplicaID:v5];

  topotext::String::~String(v8);
  return v6;
}

+ (id)unserialisedReplicaID
{
  if (+[TTMergeableString unserialisedReplicaID]::predicate != -1)
  {
    +[TTMergeableString unserialisedReplicaID];
  }

  v3 = +[TTMergeableString unserialisedReplicaID]::TTUnserialisedReplicaID;

  return v3;
}

uint64_t __42__TTMergeableString_unserialisedReplicaID__block_invoke()
{
  +[TTMergeableString unserialisedReplicaID]::TTUnserialisedReplicaID = [MEMORY[0x1E696AFB0] UUID];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)length
{
  v2 = [(TTMergeableString *)self string];
  v3 = [v2 length];

  return v3;
}

- (void)insertString:(id)a3 atIndex:(unint64_t)a4
{
  v7 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
  [(TTMergeableString *)self insertAttributedString:v6 atIndex:a4];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [(TTMergeableString *)self replaceCharactersInRange:location withAttributedString:length, v7];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v7 = [(TTMergeableString *)self delegate];
  v8 = v7;
  if (v7)
  {
    [v7 beginEditing];
  }

  [(TTMergeableString *)self beginEditing];
  [(TTMergeableString *)self deleteCharactersInRange:location, length];
  [(TTMergeableString *)self insertAttributedString:v9 atIndex:location];
  [(TTMergeableString *)self endEditing];
  if (v8)
  {
    [v8 endEditing];
  }
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = a3;
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, &v13, &v14, 1uLL);
    [(TTMergeableString *)self getSubstrings:&v10 forCharacterRange:location, length];
    [(TTMergeableString *)self deleteSubstrings:&v10 withCharacterRanges:&__p];
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      v11 = v10;
      operator delete(v10);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_16;
  }

  if (a4)
  {
    if ([(TTMergeableString *)self length]== a4)
    {
      v7 = [(TTMergeableString *)self orderedSubstrings];
      v8 = [(TTMergeableString *)self orderedSubstrings];
      v9 = *(*v7 + v8[1] - *v8 - 16);
      begin = self->_endNodes.__begin_;
      goto LABEL_14;
    }

    v12 = TTBoundedCheckedCastNSUIntegerToUInt32(a4);
    for (i = 0; ; i += 8)
    {
      v9 = *(*[(TTMergeableString *)self orderedSubstrings]+ i);
      if ((*(v9 + 44) & 1) == 0)
      {
        v14 = *(v9 + 4);
        v15 = v12 >= v14;
        v16 = v12 - v14;
        if (!v15)
        {
          v17 = [(TTMergeableString *)self splitTopoSubstring:v9 atIndex:v12];
          [(TTMergeableString *)self invalidateCache];
          goto LABEL_15;
        }

        v12 = v16;
        if (!v16)
        {
          break;
        }
      }
    }

    v11 = *[(TTMergeableString *)self orderedSubstrings]+ i;
  }

  else
  {
    v9 = *self->_startNodes.__begin_;
    v11 = *[(TTMergeableString *)self orderedSubstrings];
  }

  begin = (v11 + 8);
LABEL_14:
  v17 = *begin;
LABEL_15:
  [(TTMergeableString *)self insertAttributedString:v6 after:v9 before:v17];

LABEL_16:
}

- (void)endEditing
{
  editCount = self->_editCount;
  if (editCount)
  {
    v3 = editCount - 1;
    self->_editCount = v3;
    if (!v3)
    {
      [(TTMergeableString *)self coalesce];
    }
  }
}

- (id)replicaUUIDForCharacterAtIndex:(unint64_t)a3
{
  v4 = [(TTMergeableString *)self orderedSubstrings];
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  while (1)
  {
    v8 = *v5;
    if ((*(*v5 + 44) & 1) == 0)
    {
      break;
    }

    v9 = v7;
LABEL_8:
    ++v5;
    v7 = v9;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v8 + 16);
  v9 = v7 + v10;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (!v11 || v12 >= v10)
  {
    goto LABEL_8;
  }

  v13 = *v8;
LABEL_11:

  return v13;
}

- (id)selectionForCharacterRanges:(id)a3
{
  v3 = [(TTMergeableString *)self selectionForCharacterRanges:a3 selectionAffinity:0];

  return v3;
}

- (id)selectionForCharacterRanges:(id)a3 selectionAffinity:(unint64_t)a4
{
  v6 = a3;
  v36 = objc_alloc_init(TTMergeableStringSelection);
  v35 = a4;
  [(TTMergeableStringSelection *)v36 setSelectionAffinity:a4];
  if (![v6 count])
  {
    goto LABEL_32;
  }

  v7 = [(TTMergeableString *)self orderedSubstrings];
  v33 = v7[1];
  v34 = *v7;
  if (*v7 == v33)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = *v34;
    if (*(*v34 + 44))
    {
      goto LABEL_31;
    }

    while (1)
    {
      v12 = [v6 objectAtIndexedSubscript:v9];
      v13 = [v12 rangeValue];
      v15 = v14;

      if (!v10)
      {
        break;
      }

      v10 = v15 == 0;
      if (v15 | v35)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13 == 0;
      }

      v17 = !v16;
      if (v35 || v8 != v13)
      {
        v19 = 0;
        if (v35 == 1)
        {
          v18 = 0;
          if (v8 == v13)
          {
            v19 = 0;
            v18 = *(v11 + 56) == *(v11 + 48);
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(v11 + 72) == 0;
      }

      v27 = v13 - v17;
      if (v8 + *(v11 + 16) <= v13 - v17 && !v18 && !v19)
      {
        v10 = 1;
        goto LABEL_29;
      }

      v28 = *v11;
      v29 = *(v11 + 8);
      v30 = [MEMORY[0x1E696AFB0] TTZero];
      v31 = v29 + v27 - v8;
      v25 = v28;
      v37 = v25;
      v38 = v31;
      v39 = v30;
      v40 = 0;
      std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](-[TTMergeableStringSelection selectionRanges](v36, "selectionRanges"), &v37);
      v26 = v15 == 0;

LABEL_25:
      v9 += v26;
      if (v9 >= [v6 count])
      {
        goto LABEL_29;
      }
    }

    v20 = v13 + v15;
    if (v8 + *(v11 + 16) > v20 - 1)
    {
      v21 = *v11;
      v22 = *(v11 + 8) + v20 + ~v8;
      v23 = *([(TTMergeableStringSelection *)v36 selectionRanges]+ 8);
      v24 = *(v23 - 16);
      *(v23 - 16) = v21;
      v25 = v21;

      *(v23 - 8) = v22;
      v10 = 1;
      v26 = 1;
      goto LABEL_25;
    }

    v10 = 0;
LABEL_29:
    if (v9 >= [v6 count])
    {
      break;
    }

    v8 += *(v11 + 16);
LABEL_31:
    ++v34;
  }

  while (v34 != v33);
LABEL_32:

  return v36;
}

- (id)characterRangesForSelection:(id)a3
{
  v3 = [(TTMergeableString *)self characterRangesForSelection:a3 selectedSubstringsBlock:0];

  return v3;
}

- (id)characterRangesForSelection:(id)a3 selectedSubstringsBlock:(id)a4
{
  v42 = self;
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v46 = v6;
  v8 = [v6 selectionRanges];
  if (v8[1] == *v8)
  {
    v39 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
    v47[0] = v39;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];

    goto LABEL_50;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(TTMergeableString *)v42 orderedSubstrings];
  v10 = *v9;
  v43 = *(v9 + 8);
  if (*v9 == v43)
  {
    goto LABEL_50;
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    v44 = v10;
    v14 = *v10;
    while (1)
    {
      v15 = v7;
      v16 = *[v46 selectionRanges] + 32 * v12;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = v19;
      v21 = *(v16 + 24);
      v22 = *v14;
      if (v13)
      {
        break;
      }

      if (![v19 isEqual:v22])
      {
        goto LABEL_37;
      }

      v30 = *(v14 + 8);
      if (v21 < v30 || v21 >= *(v14 + 16) + v30)
      {
        goto LABEL_37;
      }

      if (*(v14 + 44))
      {
        v31 = 0;
      }

      else
      {
        v31 = v21 - v30 + 1;
      }

      v7 = v15;
      v32 = [MEMORY[0x1E696B098] valueWithRange:{v4, v11 + v31 - v4}];
      [v45 addObject:v32];

      ++v12;
      if (v15)
      {
        v15[2](v15, v14, 0, v31);
      }

      v13 = 1;
LABEL_35:

      v33 = [v46 selectionRanges];
      if (v12 >= (v33[1] - *v33) >> 5)
      {
        goto LABEL_38;
      }
    }

    v23 = [v17 isEqual:v22];
    v24 = *(v14 + 8);
    if (v18 >= v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1 && v18 < *(v14 + 16) + v24 || v24 == v18 && [*v14 isEqual:v17])
    {
      v4 = v11;
      if ((*(v14 + 44) & 1) == 0)
      {
        v4 = v11 + v18 - *(v14 + 8);
      }

      v26 = [MEMORY[0x1E696AFB0] TTZero];
      v27 = [v20 isEqual:v26];
      if (v21)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      if (v28 == 1)
      {
        if ((*(v14 + 44) & 1) == 0 && ![v46 selectionAffinity] && *(v14 + 72))
        {
          ++v4;
        }

        v29 = [MEMORY[0x1E696B098] valueWithRange:{v4, 0}];
        [v45 addObject:v29];

        ++v12;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      v7 = v15;
      goto LABEL_35;
    }

LABEL_37:

    v7 = v15;
LABEL_38:
    v34 = [v46 selectionRanges];
    if (v12 >= (v34[1] - *v34) >> 5)
    {
      break;
    }

    if (!((v7 == 0) | v13 & 1))
    {
      if (*(v14 + 44))
      {
        v35 = 0;
      }

      else
      {
        v35 = *(v14 + 16);
      }

      v36 = *(v14 + 40);
      v50.length = [(TTMergeableString *)v42 length]- v4;
      v49.location = v36;
      v49.length = v35;
      v50.location = v4;
      v37 = NSIntersectionRange(v49, v50);
      v7[2](v7, v14, v37.location, v37.length);
    }

    v38 = (*(v14 + 44) & 1) != 0 ? 0 : *(v14 + 16);
    v11 += v38;
    v10 = v44 + 1;
  }

  while (v44 + 1 != v43);
LABEL_50:

  v40 = *MEMORY[0x1E69E9840];

  return v45;
}

- (void)setTimestamp:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_timestamp, a3);
  if ([(TTMergeableString *)self shouldInvalidateCachedSubstringsWithTimestamp:v11])
  {
    [(TTMergeableString *)self invalidateCache];
    [(TTMergeableString *)self updateClock];
    replicaTextClock = self->_replicaTextClock;
    v6 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:0];
    if (replicaTextClock <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = replicaTextClock;
    }

    self->_replicaTextClock = v7;
    replicaStyleClock = self->_replicaStyleClock;
    v9 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1];
    if (replicaStyleClock <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = replicaStyleClock;
    }

    self->_replicaStyleClock = v10;
  }
}

- (BOOL)isFragment
{
  begin = self->_startNodes.__begin_;
  if ((self->_startNodes.__end_ - begin) != 8 || (self->_endNodes.__end_ - self->_endNodes.__begin_) != 8)
  {
    goto LABEL_9;
  }

  v4 = *begin;
  v5 = [MEMORY[0x1E696AFB0] TTZero];
  if (*(v4 + 2))
  {
    goto LABEL_4;
  }

  v7 = [*v4 isEqual:v5];

  if ((v7 & 1) == 0)
  {
LABEL_9:
    LOBYTE(v6) = 1;
    return v6;
  }

  v8 = *self->_endNodes.__begin_;
  v5 = [MEMORY[0x1E696AFB0] TTZero];
  if (*(v8 + 2) == -1)
  {
    v6 = [*v8 isEqual:v5] ^ 1;
    goto LABEL_5;
  }

LABEL_4:
  LOBYTE(v6) = 1;
LABEL_5:

  return v6;
}

- (void)updateTimestampsInRange:(_NSRange)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = +[TTMergeableString unserialisedReplicaID];
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16[0] = location;
    v16[1] = length;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, v16, &v17, 1uLL);
    [(TTMergeableString *)self getSubstrings:&v13 forCharacterRange:location, length];
    v7 = v13;
    v8 = v14;
    while (v7 != v8)
    {
      objc_storeStrong((*v7 + 24), v6);
      v7 += 8;
    }

    [(TTMergeableString *)self coalesce];
    self->_hasLocalChanges = 1;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteSubstrings:(void *)a3 withCharacterRanges:(void *)a4
{
  obj = +[TTMergeableString unserialisedReplicaID];
  v9 = *a3;
  for (i = *(a3 + 1); v9 != i; ++v9)
  {
    v10 = *v9;
    if ((*(*v9 + 44) & 1) == 0)
    {
      *(v10 + 44) = 1;
      objc_storeStrong((v10 + 24), obj);
    }
  }

  v11 = *(a4 + 1);
  v12 = 126 - 2 * __clz((v11 - *a4) >> 4);
  if (v11 == *a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  *&v14 = std::__introsort<std::_ClassicAlgPolicy,[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(*a4, v11, v13, 1, v7).n128_u64[0];
  v15 = *a4;
  v16 = *(a4 + 1);
  while (v15 != v16)
  {
    [(NSMutableAttributedString *)self->_attributedString deleteCharactersInRange:v15->n128_u64[0], v15->n128_u64[1], v14];
    ++v15;
  }

  v17 = [(TTMergeableString *)self delegate];
  v18 = v17;
  if (v17)
  {
    [v17 beginEditing];
    v19 = *a4;
    v20 = *(a4 + 1);
    location = **a4;
    v21.length = *(*a4 + 8);
    if (*a4 == v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v27.location = v19->n128_u64[0];
        v24 = v19->n128_u64[1];
        v21.location = location;
        v27.length = v24;
        v21 = NSUnionRange(v21, v27);
        location = v21.location;
        v23 += v24;
        ++v19;
      }

      while (v19 != v20);
    }

    [v18 edited:2 range:location changeInLength:{v21.length, -v23}];
  }

  [(TTMergeableString *)self coalesce];
  [(TTMergeableString *)self updateSubstringIndexes];
  self->_hasLocalChanges = 1;
  if (v18)
  {
    [v18 endEditing];
  }
}

- (TopoIDRange)insertAttributedString:(SEL)a3 after:(id)a4 before:(void *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__17;
  v16 = 256;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if ([v7 length])
  {
    +[TTMergeableString unserialisedReplicaID];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v8 = v12;
  retstr->var0.var0 = v12[6];
  retstr->var0.var1 = *(v8 + 14);
  retstr->var1 = *(v8 + 16);
  _Block_object_dispose(&v11, 8);

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __57__TTMergeableString_insertAttributedString_after_before___block_invoke(uint64_t a1, id *a2, id *a3)
{
  memset(v8, 0, sizeof(v8));
  updateTopoIDRange((*(*(a1 + 32) + 8) + 48), a2, a3, v8);
  v6 = v8[0];
  v7 = *(*(a1 + 32) + 8);
  objc_storeStrong((v7 + 48), *v8[0]);
  *(v7 + 56) = *(v6 + 8);
  *(v7 + 64) = *(v6 + 16);
  v9 = v8;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v9);
}

- (void)moveRange:(_NSRange)a3 toIndex:(unint64_t)a4
{
  if (a3.length)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    [(TTMergeableString *)self getSubstrings:&__p forCharacterRange:a3.location, a3.length];
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

- (void)getSubstrings:(void *)a3 forCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [(TTMergeableString *)self orderedSubstrings];

  [(TTMergeableString *)self getSubstrings:a3 inOrderedSubstrings:v8 forCharacterRange:location, length];
}

- (void)getSubstrings:(void *)a3 inOrderedSubstrings:(void *)a4 forCharacterRange:(_NSRange)a5
{
  if (!a5.length)
  {
    return;
  }

  v8 = *a4;
  v7 = *(a4 + 1);
  if (*a4 == v7)
  {
    goto LABEL_18;
  }

  length = a5.length;
  location = a5.location;
  v12 = 0;
  v13 = a5.location + a5.length;
  while (1)
  {
    v14 = *v8;
    v20 = v14;
    if ((*(v14 + 44) & 1) == 0)
    {
      break;
    }

    v15 = v12;
LABEL_6:
    v7 = *(a4 + 1);
LABEL_12:
    v8 += 8;
    v12 = v15;
    if (v8 == v7)
    {
      goto LABEL_18;
    }
  }

  v15 = v12 + *(v14 + 16);
  if (v15 <= location)
  {
    goto LABEL_12;
  }

  if (v13 <= v12)
  {
    goto LABEL_18;
  }

  if (location > v12)
  {
    v19 = [(TTMergeableString *)self splitTopoSubstring:v14 atIndex:TTBoundedCheckedCastNSUIntegerToUInt32(location - v12)];
    v8 = std::vector<TopoSubstring *>::insert(a4, v8 + 8, &v19);
    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v19);
    if (v13 < v15)
    {
      v18 = [(TTMergeableString *)self splitTopoSubstring:v19 atIndex:TTBoundedCheckedCastNSUIntegerToUInt32(length)];
      v16 = v8 + 8;
      v17 = &v18;
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  if (v15 <= v13)
  {
    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v20);
    goto LABEL_6;
  }

  v19 = [(TTMergeableString *)self splitTopoSubstring:v14 atIndex:TTBoundedCheckedCastNSUIntegerToUInt32(v13 - v12)];
  std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v20);
  v16 = v8 + 8;
  v17 = &v19;
LABEL_17:
  std::vector<TopoSubstring *>::insert(a4, v16, v17);
LABEL_18:
  [(TTMergeableString *)self invalidateCache];
}

- (void)getSubstringBeforeTopoID:(TopoID)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = *self->_startNodes.__begin_;
  v20 = a3.var0;
  v7 = [(TTMergeableString *)self orderedSubstrings];
  v9 = *v7;
  v8 = v7[1];
  if (*v7 == v8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_18;
  }

  v19 = self;
  while (1)
  {
    v10 = *v9;
    v11 = **v9;
    v12 = *(v10 + 2);
    v13 = *(v10 + 4);
    if (![var0 isEqual:v11])
    {
      goto LABEL_10;
    }

    v14 = var1 - v12;
    if (var1 == v12)
    {
      goto LABEL_17;
    }

    if (var1 <= v12)
    {
      goto LABEL_10;
    }

    v15 = v11;
    v16 = v15;
    if (v13 + v12 > var1)
    {
      break;
    }

    if (v13 + v12 == var1)
    {
      v17 = [v20 TTCompare:v15];

      var0 = v20;
      if (v17 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {

      var0 = v20;
    }

LABEL_10:
    if (!*(v10 + 44))
    {
      v6 = v10;
    }

    if (++v9 == v8)
    {
      goto LABEL_13;
    }
  }

  var0 = v20;
LABEL_15:
  if ((*(v10 + 44) & 1) == 0)
  {
    [(TTMergeableString *)v19 splitTopoSubstring:v10 atIndex:v14];
    [(TTMergeableString *)v19 invalidateCache];
    v6 = v10;
  }

LABEL_17:

LABEL_18:
  return v6;
}

- (void)getSubstrings:(void *)a3 forTopoIDRange:(TopoIDRange *)a4
{
  if (!a4->var1)
  {
    goto LABEL_36;
  }

  v6 = [(TTMergeableString *)self orderedSubstrings];
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
    goto LABEL_36;
  }

  v32 = 0;
  do
  {
    v9 = *v7;
    v36 = v9;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (([a4->var0.var0 isEqual:v10] & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = v10;
    v14 = v12 + v11;
    v34 = v13;
    v35 = v12 + v11;
    if (TopoID::operator<=(&v34, a4))
    {
      goto LABEL_13;
    }

    v15 = a4->var0.var0;
    v16 = v15;
    v17 = a4->var1 + a4->var0.var1;
    if (v11 == v17)
    {
      if ([v13 isEqual:v15])
      {
        goto LABEL_12;
      }

      v18 = [v13 TTCompare:v16];

      if (v18 == 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 > v17)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }
    }

    var1 = a4->var0.var1;
    if (var1 > v11)
    {
      v34 = [(TTMergeableString *)self splitTopoSubstring:v36 atIndex:var1 - v11];
      v20 = a4->var0.var0;
      v21 = a4->var1 + a4->var0.var1;
      v22 = v13;
      v23 = v22;
      if (v21 >= v14)
      {
        if (v21 != v14)
        {

          goto LABEL_32;
        }

        v31 = [v20 TTCompare:v22];

        if (v31 != -1)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      [(TTMergeableString *)self splitTopoSubstring:v34 atIndex:a4->var1];
LABEL_32:
      std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v34);
      goto LABEL_33;
    }

    v24 = v13;
    v25 = a4->var0.var0;
    v26 = v25;
    v27 = a4->var1 + a4->var0.var1;
    if (v14 <= v27)
    {
      if (v14 != v27)
      {

LABEL_31:
        std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v36);
        goto LABEL_14;
      }

      v30 = [v24 TTCompare:v25];

      if (v30 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }

    v28 = v36;
    v29 = a4->var0.var0;
    [(TTMergeableString *)self splitTopoSubstring:v28 atIndex:a4->var0.var1 - v11 + a4->var1];

    std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](a3, &v36);
LABEL_33:
    v32 = 1;
LABEL_14:

    ++v7;
  }

  while (v7 != v8);
  if (v32)
  {
    [(TTMergeableString *)self invalidateCache];
  }

LABEL_36:
}

- (void)getCharacterRanges:(void *)a3 forSubstrings:(void *)a4
{
  std::vector<_NSRange>::reserve(a3, (*(a4 + 1) - *a4) >> 3);
  v28 = 0u;
  v29 = 0u;
  v30 = 1065353216;
  v7 = *a4;
  v8 = *(a4 + 1);
  while (v7 != v8)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(&v28, v7++);
  }

  v9 = [(TTMergeableString *)self orderedSubstrings];
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != v11)
  {
    v12 = 0;
    do
    {
      v27 = *v10;
      v13 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v28, &v27);
      v14 = v13;
      if (*(v27 + 44))
      {
        v15 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = *(v27 + 16);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v17 = *(a3 + 1);
      v16 = *(a3 + 2);
      if (v17 >= v16)
      {
        v19 = *a3;
        v20 = v17 - *a3;
        v21 = v20 >> 4;
        v22 = (v20 >> 4) + 1;
        if (v22 >> 60)
        {
          std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a3, v24);
        }

        v25 = (16 * v21);
        *v25 = v12;
        v25[1] = v15;
        v18 = 16 * v21 + 16;
        memcpy(0, v19, v20);
        v26 = *a3;
        *a3 = 0;
        *(a3 + 1) = v18;
        *(a3 + 2) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v12;
        v17[1] = v15;
        v18 = (v17 + 2);
      }

      *(a3 + 1) = v18;
      if (*(&v29 + 1) == 1)
      {
        break;
      }

      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(&v28, v14);
LABEL_24:
      v12 += v15;
      ++v10;
    }

    while (v10 != v11);
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v28);
}

- (unint64_t)getCharacterIndexForCharID:(TopoID)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(TTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
LABEL_18:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      v10 = (*(*v6 + 44) & 1) != 0 ? 0 : *(v9 + 16);
      if (*(v9 + 8) == var1 && ([*v9 isEqual:var0] & 1) != 0)
      {
        break;
      }

      if ([*v9 isEqual:var0])
      {
        v11 = *(v9 + 8);
        if (v11 < var1 || v11 == var1 && [*v9 TTCompare:var0] == -1)
        {
          v12 = *v9;
          v13 = v12;
          v14 = *(v9 + 16) + *(v9 + 8);
          if (v14 > var1)
          {

LABEL_21:
            v8 = v8 + var1 - *(v9 + 8);
            break;
          }

          if (v14 == var1)
          {
            v15 = [var0 TTCompare:v12];

            if (v15 == -1)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      v8 += v10;
      if (++v6 == v7)
      {
        goto LABEL_18;
      }
    }
  }

  return v8;
}

- (void)enumerateSubstrings:(id)a3
{
  v4 = a3;
  v5 = [(TTMergeableString *)self orderedSubstrings];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 != v7)
  {
    do
    {
      v8 = *v6;
      if ((*(*v6 + 44) & 1) == 0)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = *(v8 + 40);
          v12 = *v8;
          v11 = *(v8 + 16);
          v13 = *(v8 + 8);
          v14 = v11;
          v4[2](v4, v10, v9, &v12, *(v8 + 24), *(v8 + 32));
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

- (int64_t)substring:(void *)a3 modifiedAfter:(id)a4
{
  v5 = a4;
  v6 = [v5 clockForUUID:*a3 atIndex:0] - *(a3 + 2);
  if (v6 >= *(a3 + 4))
  {
    if ([v5 clockForUUID:*(a3 + 3) atIndex:1] <= *(a3 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = v6 & ~(v6 >> 63);
  }

  return v7;
}

- (void)enumerateRangesModifiedAfter:(id)a3 usingBlock:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  v7 = [(TTMergeableString *)self orderedSubstrings];
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    do
    {
      v10 = *v8;
      if ((*(*v8 + 44) & 1) == 0)
      {
        if (*(v10 + 16))
        {
          v11 = [(TTMergeableString *)self substring:*v8 modifiedAfter:v12];
          if ((v11 & 0x8000000000000000) == 0)
          {
            v6[2](v6, v11 + *(v10 + 40), *(v10 + 16) - v11);
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }
}

- (BOOL)textEitherSideOfSelectionAnchor:(TopoID)a3 wasModifiedAfter:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [(TTMergeableString *)self orderedSubstrings];
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *v9;
      if (v12)
      {
        break;
      }

      if ([var0 isEqual:*v13])
      {
        v14 = *(v13 + 2);
        if (v14 <= var1 && *(v13 + 4) + v14 > var1)
        {
          v15 = *(v13 + 44) != 1 || v11 == 0;
          if (!v15 && ([(TTMergeableString *)self substring:v11 modifiedAfter:v7]& 0x8000000000000000) == 0 || (v16 = [(TTMergeableString *)self substring:v13 modifiedAfter:v7], (v16 & 0x8000000000000000) == 0) && v16 <= var1 - *(v13 + 2))
          {
LABEL_32:
            v19 = 1;
            goto LABEL_31;
          }

          v17 = *v13;
          v18 = *(v13 + 2) + *(v13 + 4) - 1;

          if (v18 != var1)
          {
            goto LABEL_30;
          }

          goto LABEL_7;
        }
      }

      if (!*(v13 + 4) && *(v13 + 2) == var1 && ([*v13 isEqual:var0] & 1) != 0)
      {
        goto LABEL_7;
      }

      if (*(v13 + 44) != 1 || ([(TTMergeableString *)self substring:v13 modifiedAfter:v7]& 0x8000000000000000) == 0)
      {
        v12 = 0;
        goto LABEL_27;
      }

      v12 = 0;
LABEL_8:
      v13 = v11;
LABEL_27:
      ++v9;
      v11 = v13;
      if (v9 == v10)
      {
        goto LABEL_30;
      }
    }

    if (![(TTMergeableString *)self substring:*v9 modifiedAfter:v7]&& *(v13 + 4))
    {
      goto LABEL_32;
    }

    if ((*(v13 + 44) & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

LABEL_30:
  v19 = 0;
LABEL_31:

  return v19;
}

- (BOOL)selection:(id)a3 wasModifiedAfter:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v8 = [v6 selectionRanges];
  if (v8[1] == *v8)
  {
    LOBYTE(self) = 0;
  }

  else
  {
    v9 = [v6 selectionRanges];
    if (v9[1] - *v9 != 32)
    {
LABEL_9:
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __48__TTMergeableString_selection_wasModifiedAfter___block_invoke;
      v22[3] = &unk_1E7509AA8;
      v22[4] = self;
      v23 = v7;
      v24 = &v25;
      v20 = [(TTMergeableString *)self characterRangesForSelection:v6 selectedSubstringsBlock:v22];
      LOBYTE(self) = *(v26 + 24);

      goto LABEL_10;
    }

    v10 = *[v6 selectionRanges];
    v11 = [MEMORY[0x1E696AFB0] TTZero];
    v12 = v11;
    if (*(v10 + 24))
    {

      goto LABEL_9;
    }

    v13 = [*(v10 + 16) isEqual:v11];

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [v6 selectionRanges];
    v15 = *v14;
    v16 = **v14;
    v17 = *(v15 + 2);
    v18 = v16;
    v19 = v18;
    if (self)
    {
      LOBYTE(self) = [(TTMergeableString *)self textEitherSideOfSelectionAnchor:v18 wasModifiedAfter:v17, v7];
    }

    else
    {
    }
  }

LABEL_10:
  _Block_object_dispose(&v25, 8);

  return self & 1;
}

NSUInteger __48__TTMergeableString_selection_wasModifiedAfter___block_invoke(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  result = [*(a1 + 32) substring:a2 modifiedAfter:*(a1 + 40)];
  if ((result & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 44) & 1) != 0 || (v10.length = *(a2 + 16) - result, v10.location = result + *(a2 + 40), v11.location = a3, v11.length = a4, v9 = NSIntersectionRange(v10, v11), result = v9.location, v9.length))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)splitTopoSubstring:(void *)a3 atIndex:(unsigned int)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 2);
  v8 = *(a3 + 4);
  *(a3 + 4) = a4;
  operator new();
}

- (void)orderedSubstrings
{
  if (self->_cacheInvalid)
  {
    [(TTMergeableString *)self updateCache];
  }

  return &self->_orderedSubstrings;
}

- (void)updateCache
{
  begin = self->_orderedSubstrings.__begin_;
  self->_orderedSubstrings.__end_ = begin;
  self->_cacheInvalid = 0;
  v4 = self->_startNodes.__begin_;
  if (v4 != self->_startNodes.__end_)
  {
    v5 = *v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__TTMergeableString_updateCache__block_invoke;
    v6[3] = &unk_1E7509AD0;
    v6[4] = self;
    traverseRecursive(v5, v6);
  }

  if (self->_orderedSubstrings.__cap_ - begin)
  {
    std::vector<TopoSubstring *>::shrink_to_fit(&self->_orderedSubstrings.__begin_);
  }
}

- (void)updateAttributedStringAfterMerge
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v4 = [(TTMergeableString *)self orderedSubstrings];
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = [(NSMutableAttributedString *)v3 length];
    if ((*(v7 + 44) & 1) == 0)
    {
      [(NSMutableAttributedString *)v3 ic_appendAttributedSubstring:self->_attributedString fromRange:*(v7 + 40), *(v7 + 16)];
    }

    *(v7 + 40) = TTBoundedCheckedCastNSUIntegerToUInt32(v8);
    ++v5;
  }

  attributedString = self->_attributedString;
  self->_attributedString = v3;
}

- (void)updateSubstringIndexes
{
  v2 = [(TTMergeableString *)self orderedSubstrings];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      *(v6 + 40) = v5;
      if ((*(v6 + 44) & 1) == 0)
      {
        v5 += *(v6 + 16);
      }

      ++v3;
    }

    while (v3 != v4);
  }
}

- (void)coalesce
{
  if (!self->_editCount && ![(TTMergeableString *)self isFragment])
  {
    v3 = *self->_startNodes.__begin_;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x5812000000;
    v44 = __Block_byref_object_copy__15;
    v45 = __Block_byref_object_dispose__15;
    v46 = &unk_19A260519;
    memset(v47, 0, sizeof(v47));
    v48 = 1065353216;
    v33 = 0;
    v34 = &v33;
    v35 = 0x5812000000;
    v36 = __Block_byref_object_copy__15;
    v37 = __Block_byref_object_dispose__15;
    v38 = &unk_19A260519;
    memset(v39, 0, sizeof(v39));
    v40 = 1065353216;
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v4 = +[TTMergeableString unserialisedReplicaID];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __29__TTMergeableString_coalesce__block_invoke;
    v25[3] = &unk_1E7509AF8;
    v32 = v3;
    v29 = &v33;
    v5 = v4;
    v26 = v5;
    v6 = v18;
    v27 = v6;
    v28 = self;
    v30 = v49;
    v31 = &v41;
    [(TTMergeableString *)self traverseUnordered:v25];
    for (i = v42[8]; i; i = *i)
    {
      v8 = i[2];
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      unserializedClock = self->_unserializedClock;
      objc_storeStrong(v8, v4);
      *(v8 + 8) = unserializedClock;
      self->_unserializedClock += *(v8 + 16);
      v13 = v9;
      v22 = v13;
      v23 = v10;
      v24 = v11;
      v19 = *v8;
      v14 = *(v8 + 16);
      v20 = *(v8 + 8);
      v21 = v14;
      [(TTMergeableString *)self updateTopoIDRange:&v22 toNewRangeID:&v19];
    }

    for (j = v34[8]; j; j = *j)
    {
      v16 = j[2];
      if (v16)
      {
        v17 = *(v16 + 48);
        if (v17)
        {
          *(v16 + 56) = v17;
          operator delete(v17);
        }

        MEMORY[0x19A8FD070](v16, 0x1080C40D9F1C51ELL);
      }
    }

    [(TTMergeableString *)self invalidateCache];

    _Block_object_dispose(&v33, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v39);
    _Block_object_dispose(&v41, 8);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v47);
    _Block_object_dispose(v49, 8);
  }
}

void __29__TTMergeableString_coalesce__block_invoke(void *a1, uint64_t a2)
{
  v41 = a2;
  if (a1[10] != a2)
  {
    v2 = a2;
    v3 = *(a2 + 48);
    if (*(a2 + 56) - v3 == 8)
    {
      do
      {
        v5 = *v3;
        v40 = v5;
        if (*(v5 + 72) != 1 || *(v2 + 44) != *(v5 + 44))
        {
          return;
        }

        if ([*v2 isEqual:*v5])
        {
          v6 = v41;
          if (*(v2 + 16) + *(v2 + 8) == *(v5 + 8) && *(v41 + 32) == *(v40 + 32))
          {
            v7 = [*(v41 + 24) isEqual:*(v40 + 24)];
            v6 = v41;
            if (v7)
            {
              v8 = v40;
              if (v41 != v40)
              {
                std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v41 + 48), *(v40 + 48), *(v40 + 56), (*(v40 + 56) - *(v40 + 48)) >> 3);
                v8 = v40;
                v6 = v41;
              }

              *(v6 + 16) += *(v8 + 16);
              std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[7] + 8) + 48), &v40);
              goto LABEL_26;
            }
          }
        }

        else
        {
          v6 = v41;
        }

        if (*v6 != a1[4] || *v40 != *v6 || *(v6 + 32) != *(v40 + 32) || ![*(v6 + 24) isEqual:*(v40 + 24)])
        {
          return;
        }

        v9 = v41;
        v10 = *v41;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (v41 != v40)
        {
          std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>((v41 + 48), *(v40 + 48), *(v40 + 56), (*(v40 + 56) - *(v40 + 48)) >> 3);
        }

        v13 = a1[5];
        v14 = v13;
        v15 = *(*(a1[8] + 8) + 24);
        v16 = v41;
        v17 = *(v41 + 16);
        v18 = v14;
        v19 = *(v40 + 16) + *(v16 + 16);
        objc_storeStrong(v16, v13);
        *(v16 + 8) = v15;
        *(v16 + 16) = v19;
        *(*(a1[8] + 8) + 24) += *(v41 + 16);
        v20 = a1[6];
        v21 = v10;
        v37 = v21;
        v38 = v11;
        v39 = v12;
        v22 = v18;
        v34 = v22;
        v35 = v15;
        v36 = v12;
        if (v20)
        {
          [v20 updateTopoIDRange:&v37 toNewRangeID:&v34];
        }

        else
        {
        }

        v23 = a1[6];
        v24 = v40;
        v31 = *v40;
        v25 = *(v24 + 16);
        v32 = *(v24 + 8);
        v33 = v25;
        v26 = v22;
        v28 = v26;
        v27 = *(v40 + 16);
        v29 = v17 + v15;
        v30 = v27;
        if (v23)
        {
          [v23 updateTopoIDRange:&v31 toNewRangeID:&v28];
        }

        else
        {
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[9] + 8) + 48), &v41);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>((*(a1[7] + 8) + 48), &v40);
        *(a1[6] + 112) = 1;

LABEL_26:
        v2 = v41;
        v3 = *(v41 + 48);
      }

      while (*(v41 + 56) - v3 == 8);
    }
  }
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v27 = a3->var0.var0;
        var1 = a3->var1;
        v28 = a3->var0.var1;
        v29 = var1;
        v24 = a4->var0.var0;
        v13 = a4->var1;
        v25 = a4->var0.var1;
        v26 = v13;
        if (v11)
        {
          [v11 updateTopoIDRange:&v27 toNewRangeID:&v24];
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  updateRangeBlock = self->_updateRangeBlock;
  if (updateRangeBlock)
  {
    v21 = a3->var0.var0;
    v15 = a3->var1;
    v22 = a3->var0.var1;
    v23 = v15;
    v18 = a4->var0.var0;
    v16 = a4->var1;
    v19 = a4->var0.var1;
    v20 = v16;
    updateRangeBlock[2](updateRangeBlock, &v21, &v18);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cleanupObjectsNeedingUpdatedRanges
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 hasTopoIDsThatCanChange] & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [(TTMergeableString *)self objectsNeedingUpdatedRanges];
  [v9 minusHashTable:v3];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)generateIdsForLocalChanges
{
  v3 = [(TTMergeableString *)self timestamp];
  -[TTMergeableString generateIdsForLocalChangesSafeForSharedTimestamp:](self, "generateIdsForLocalChangesSafeForSharedTimestamp:", [v3 isDocumentShared]);
}

- (void)generateIdsForLocalChangesSafeForSharedTimestamp:(BOOL)a3
{
  if (self->_hasLocalChanges)
  {
    replicaStyleClock = self->_replicaStyleClock;
    v6 = +[TTMergeableString unserialisedReplicaID];
    v7 = [(TTMergeableString *)self orderedSubstrings];
    v28 = a3;
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = *v8;
        if (**v8 == v6)
        {
          break;
        }

        if (v11[3] == v6)
        {
          v12 = *(v11 + 8);
          LODWORD(v13) = v12 + 8;
          if (*(v11 + 44))
          {
            v13 = v13;
          }

          else
          {
            v13 = (v12 + 1);
          }

          if (replicaStyleClock <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = replicaStyleClock;
          }

          if (v14 + 1 > self->_replicaStyleClock)
          {
            v15 = v14 + 1;
          }

          else
          {
            v15 = self->_replicaStyleClock;
          }

          self->_replicaStyleClock = v15;
          objc_storeStrong(v11 + 3, self->_replicaUUID);
          *(v11 + 8) = v14;
LABEL_21:
          v10 = 1;
        }

        if (++v8 == v9)
        {
          goto LABEL_25;
        }
      }

      replicaUUID = self->_replicaUUID;
      v17 = replicaUUID;
      replicaTextClock = self->_replicaTextClock;
      v19 = *(v11 + 4);
      v32 = *v11;
      v20 = *(v11 + 4);
      v33 = *(v11 + 2);
      v34 = v20;
      v21 = v17;
      v29 = v21;
      v30 = replicaTextClock;
      v31 = v19;
      [(TTMergeableString *)self updateTopoIDRange:&v32 toNewRangeID:&v29];
      objc_storeStrong(v11, replicaUUID);
      v22 = v11[3];
      *(v11 + 2) = replicaTextClock;
      *(v11 + 4) = v19;
      self->_replicaTextClock += v19;
      if (v22 == v6)
      {
        objc_storeStrong(v11 + 3, self->_replicaUUID);
        *(v11 + 8) = 0;
        v23 = self->_replicaStyleClock;
        if (v23 <= 1)
        {
          v23 = 1;
        }

        self->_replicaStyleClock = v23;
      }

      goto LABEL_21;
    }

    v10 = 0;
LABEL_25:
    [(TTMergeableString *)self cleanupObjectsNeedingUpdatedRanges];
    if ((v10 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v28)
    {
      v24 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:0];
      v25 = self->_replicaTextClock;
      if (v24 >= v25)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = self->_replicaTextClock;
    }

    [(TTVectorMultiTimestamp *)self->_timestamp setClock:v25 forUUID:self->_replicaUUID atIndex:0];
    if (!v28)
    {
      v27 = self->_replicaStyleClock;
LABEL_34:
      [(TTVectorMultiTimestamp *)self->_timestamp setClock:v27 forUUID:self->_replicaUUID atIndex:1];
LABEL_35:
      self->_unserializedClock = 0;
      self->_hasLocalChanges = 0;

      return;
    }

LABEL_31:
    v26 = [(TTVectorMultiTimestamp *)self->_timestamp clockForUUID:self->_replicaUUID atIndex:1];
    v27 = self->_replicaStyleClock;
    if (v26 >= v27)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }
}

- (BOOL)canMergeString:(id)a3
{
  v4 = a3;
  if ([(TTMergeableString *)self isFragment])
  {
    v5 = 0;
  }

  else if ([v4 isFragment])
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 1065353216;
    v6 = [v4 startNodes];
    v7 = *v6;
    v8 = *(v6 + 8);
    while (v7 != v8)
    {
      v9 = *v7;
      v10 = **v7;
      v11 = *(v9 + 2) + *(v9 + 4) - 1;
      v24 = v10;
      v25 = v11;
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID>(&v26, &v24);

      ++v7;
    }

    v12 = [v4 endNodes];
    v13 = *v12;
    v14 = v12[1];
    while (v13 != v14)
    {
      std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID const&>(&v26, *v13++);
    }

    v15 = [(TTMergeableString *)self orderedSubstrings];
    v16 = *v15;
    v17 = v15[1];
LABEL_12:
    if (v16 != v17)
    {
      v18 = *v16;
      v19 = **v16;
      v20 = *(v18 + 2);
      if (*(v18 + 4) <= 1u)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v18 + 4);
      }

      while (1)
      {
        v22 = v19;
        v24 = v22;
        v25 = v20;
        std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__erase_unique<TopoID>(&v26, &v24);

        if (!*(&v27 + 1))
        {
          break;
        }

        ++v20;
        if (!--v21)
        {

          ++v16;
          goto LABEL_12;
        }
      }
    }

    v5 = *(&v27 + 1) == 0;
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(&v26);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)updateClock
{
  if (self->_replicaUUID)
  {
    v28 = [MEMORY[0x1E696AFB0] TTZero];
    v3 = [MEMORY[0x1E696AFB0] TTZero];
    v4 = [(TTMergeableString *)self orderedSubstrings];
    v27 = self;
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *v5;
        v10 = **v5;
        v11 = [MEMORY[0x1E696AFB0] TTZero];
        if ([v10 isEqual:v11])
        {
          goto LABEL_12;
        }

        v12 = *v9;
        v13 = v12;
        v14 = *(v9 + 2) + *(v9 + 4) - 1;
        if (v14 > v7)
        {
          break;
        }

        if (v14 != v7)
        {

          goto LABEL_12;
        }

        v16 = [v12 TTCompare:v28];

        if (v16 == 1)
        {
          goto LABEL_7;
        }

LABEL_13:
        v17 = v9[3];
        v18 = [MEMORY[0x1E696AFB0] TTZero];
        if (([v17 isEqual:v18] & 1) == 0)
        {
          v19 = *(v9 + 8);
          if (v19 > v8)
          {

LABEL_17:
            v20 = v9[3];

            v8 = *(v9 + 8);
            v3 = v20;
            goto LABEL_18;
          }

          if (v19 == v8)
          {
            v21 = [v9[3] TTCompare:v3];

            if (v21 != 1)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

LABEL_18:
        if (++v5 == v6)
        {
          goto LABEL_25;
        }
      }

LABEL_7:
      v15 = *v9;
      v11 = v28;
      v7 = *(v9 + 2) + *(v9 + 4) - 1;
      v28 = v15;
LABEL_12:

      goto LABEL_13;
    }

    v8 = 0;
    v7 = 0;
LABEL_25:
    v22 = v27;
    v23 = [v28 TTCompare:{v27->_replicaUUID, v27}];
    v24 = [v3 TTCompare:v22->_replicaUUID];
    if (v23 == -1)
    {
      v25 = v7;
    }

    else
    {
      v25 = v7 + 1;
    }

    if (v24 == -1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v8 + 1;
    }

    v22->_replicaTextClock = v25;
    v22->_replicaStyleClock = v26;
  }
}

void __27__TTMergeableString_check___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(a2 + 8);
    v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      if ([v9 intersectsIndexesInRange:{v8, v7}])
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E696A588];
        v18[0] = @"TTMergeableString graph has two characters with the same id.";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        v13 = [v11 initWithDomain:@"TopoText" code:-2 userInfo:v12];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }

      else
      {
        [v10 addIndexesInRange:{v8, v7}];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{v8, v7}];
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)checkTimestampLogStyleErrors:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke;
  v3[3] = &unk_1E7509B48;
  v3[4] = self;
  v4 = a3;
  [(TTMergeableString *)self traverseUnordered:v3];
}

void __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = [*(a1 + 32) timestamp];
    v10 = [v9 clockForUUID:v4 atIndex:0];

    v11 = [*(a1 + 32) timestamp];
    v12 = [v11 clockForUUID:v5 atIndex:1];
    v13 = (v6 + v7 - 1);

    if (v10 <= v13)
    {
      v14 = +[REMLog crdt];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = [*(a1 + 32) timestamp];
      [v22 setClock:(v13 + 1) forUUID:v4 atIndex:0];
    }

    if (v12 <= v8)
    {
      if (*(a1 + 40) == 1)
      {
        v23 = +[REMLog crdt];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __50__TTMergeableString_checkTimestampLogStyleErrors___block_invoke_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
        }
      }

      v31 = [*(a1 + 32) timestamp];
      [v31 setClock:(v8 + 1) forUUID:v5 atIndex:1];
    }
  }
}

- (void)dumpMergeData:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableAttributedString *)self->_attributedString mutableCopy];
  v6 = [v4[19] mutableCopy];
  v7 = arc4random();
  v36 = v6;
  v37 = v5;
  v38 = v4;
  v8 = [(NSMutableAttributedString *)self->_attributedString length];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [(NSMutableAttributedString *)self->_attributedString mutableString];
      v13 = [v11 stringWithFormat:@"%c", (v7 ^ objc_msgSend(v12, "characterAtIndex:", i)) % 0x5E + 32];
      [v10 replaceCharactersInRange:i withString:{1, v13}];
    }
  }

  v14 = v38;
  v15 = [v38[19] length];
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v17 = v14;
      v18 = [v14[19] mutableString];
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v17[19] mutableString];
      v21 = [v19 stringWithFormat:@"%c", (v7 ^ objc_msgSend(v20, "characterAtIndex:", j)) % 0x5E + 32];
      [v18 replaceCharactersInRange:j withString:{1, v21}];

      v14 = v38;
    }
  }

  v22 = [(TTMergeableString *)self serialize];
  v23 = [v14 serialize];
  v24 = [MEMORY[0x1E696AC08] remcrtt_createTemporaryFileDirectoryURLIfNeeded];
  v25 = [v24 path];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeA-%p.data", self];
  v27 = [v25 stringByAppendingPathComponent:v26];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mergeB-%p.data", self];
  v29 = [v25 stringByAppendingPathComponent:v28];

  [v22 writeToFile:v27 atomically:1];
  [v23 writeToFile:v29 atomically:1];
  v30 = +[REMLog crdt];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    replicaUUID = self->_replicaUUID;
    *buf = 134218754;
    v40 = self;
    v41 = 2112;
    v42 = replicaUUID;
    v43 = 2112;
    v44 = v27;
    v45 = 2112;
    v46 = v29;
    _os_log_error_impl(&dword_19A0DB000, v30, OS_LOG_TYPE_ERROR, "Dumping merge: %p %@ %@ %@", buf, 0x2Au);
  }

  attributedString = self->_attributedString;
  self->_attributedString = v37;
  v32 = v37;

  v33 = v38[19];
  v38[19] = v36;

  v34 = *MEMORY[0x1E69E9840];
}

- (unint64_t)mergeWithString:(id)a3 mergeTimestamps:(BOOL)a4
{
  v97 = a4;
  v123[1] = *MEMORY[0x1E69E9840];
  v101 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"DebugDumpMergeData"];

  if (v6)
  {
    [(TTMergeableString *)self dumpMergeData:v101];
  }

  [(TTMergeableString *)self generateIdsForLocalChanges];
  [v101 generateIdsForLocalChanges];
  [v101 checkTimestampLogStyleErrors:0];
  if (![(TTMergeableString *)self canMergeString:v101])
  {
    v10 = 0;
    goto LABEL_123;
  }

  v7 = [(TTMergeableString *)self timestamp];
  v8 = [v101 timestamp];
  v9 = [v7 compareTo:v8];

  if (v9)
  {
    memset(v119, 0, sizeof(v119));
    v120 = 1065353216;
    v116 = 0u;
    v117 = 0u;
    v118 = 1065353216;
    v113 = 0u;
    v114 = 0u;
    v115 = 1065353216;
    v110 = 0u;
    v111 = 0u;
    v112 = 1065353216;
    v107 = 0u;
    v108 = 0u;
    v109 = 1065353216;
    v11 = [(NSMutableAttributedString *)self->_attributedString length];
    v12 = [v101 isFragment];
    v96 = v11;
    v13 = [(TTMergeableString *)self orderedSubstrings];
    v14 = *v13;
    v15 = v13[1];
    if (*v13 != v15)
    {
      v9 = &std::piecewise_construct;
      do
      {
        v16 = *v14;
        v103 = v16;
        std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v119, v16)[4] = v16;
        if (v12)
        {
          v17 = [v101 startNodes];
          v18 = *v17;
          v19 = *(v17 + 8);
          while (v18 != v19)
          {
            v20 = *v18;
            if ([**v18 isEqual:*v16])
            {
              v21 = *(v20 + 2);
              v22 = v16[2];
              if (v21 >= v22 && v21 < v16[4] + v22)
              {
                v103 = v20;
                std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v119, v20)[4] = v16;
              }
            }

            ++v18;
          }
        }

        ++v14;
      }

      while (v14 != v15);
    }

    v99 = [v101 orderedSubstrings];
    for (i = *v99; i != v99[1]; i += 8)
    {
      v24 = *i;
      v25 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v119, *i);
      v26 = v25;
      if (!v25)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v122 = *MEMORY[0x1E696A588];
        v123[0] = @"Reached substring that is not in our graph.";
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:&v122 count:1];
        v98 = [v46 initWithDomain:@"TopoText" code:-3 userInfo:v47];

        goto LABEL_46;
      }

      v106 = v25[4];
      v27 = *(v106 + 16);
      v28 = *(v24 + 16);
      if (v27 <= v28)
      {
        if (v27 < v28)
        {
          v103 = [(TTMergeableString *)self splitTopoSubstring:v24 atIndex:?];
          i = std::vector<TopoSubstring *>::insert(v99, i + 8, &v103) - 8;
        }
      }

      else
      {
        v29 = *(v24 + 16);
        v30 = [TTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
        v105 = v30;
        v31 = *v30;
        v32 = *(v30 + 2);
        v33 = v31;
        v103 = v33;
        v104 = v32;
        v121 = &v103;
        std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID&&>,std::tuple<>>(v119, &v103)[4] = v30;

        if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v107, &v106))
        {
          v103 = &v106;
          v34 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v107, &v106)[3];
          v103 = &v105;
          std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v107, &v105)[3] = v34;
          std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__erase_unique<TopoSubstring *>(&v107, &v106);
        }
      }

      v35 = *(v24 + 48);
      v9 = *(v24 + 56);
      while (v35 != v9)
      {
        v36 = *v35;
        v37 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v119, *v35);
        v121 = 0;
        if (!v37)
        {
          operator new();
        }

        v38 = v37[4];
        v121 = v38;
        if (v38[2] == *(v36 + 8))
        {
          if ([*v38 isEqual:*v36])
          {
            goto LABEL_34;
          }

          v39 = *(v36 + 8);
          v40 = v121[2];
        }

        v41 = [TTMergeableString splitTopoSubstring:"splitTopoSubstring:atIndex:" atIndex:?];
        v103 = v41;
        std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(v119, v41)[4] = v41;
        v121 = v41;
LABEL_34:
        v105 = v26[4];
        v42 = v105[6];
        v43 = v105[7];
        if (v42 != v43)
        {
          while (*v42 != v121)
          {
            if (++v42 == v43)
            {
              goto LABEL_39;
            }
          }
        }

        if (v42 == v43)
        {
LABEL_39:
          if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v107, &v105))
          {
            v45 = v105[6];
            v44 = v105[7];
            v103 = &v105;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v107, &v105)[3] = (v44 - v45) >> 3;
          }

          v103 = v121;
          std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100]((v105 + 6), &v103);
          ++*(v103 + 18);
        }

        ++v35;
      }
    }

    v98 = 0;
LABEL_46:
    [(TTMergeableString *)self invalidateCache];
    if (v98 || (v102 = 0, v48 = [(TTMergeableString *)self check:&v102], v98 = v102, (v48 & 1) == 0))
    {
      v81 = +[REMLog crdt];
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        [TTMergeableString mergeWithString:v98 mergeTimestamps:v81];
      }

      v82 = +[REMLog crdt];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        [(TTMergeableString *)v82 mergeWithString:v83 mergeTimestamps:v84, v85, v86, v87, v88, v89];
      }

      for (j = v108; j; j = *j)
      {
        std::vector<TopoSubstring *>::resize((j[2] + 48), j[3]);
      }

      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_57);
      traverseUnorderedSimple(*self->_startNodes.__begin_, &__block_literal_global_59_0);
      [(NSMutableAttributedString *)self->_attributedString replaceCharactersInRange:v96 withString:[(NSMutableAttributedString *)self->_attributedString length]- v96, &stru_1F0D67F00];
      for (k = v114; k; k = *k)
      {
        v92 = k[2];
        if (v92)
        {
          v93 = *(v92 + 48);
          if (v93)
          {
            *(v92 + 56) = v93;
            operator delete(v93);
          }

          MEMORY[0x19A8FD070](v92, 0x1080C40D9F1C51ELL);
        }
      }

      [(TTMergeableString *)self invalidateCache];
      [(TTMergeableString *)self coalesce];
      [(TTMergeableString *)self dumpMergeData:v101];
      v10 = 0;
    }

    else
    {
      v49 = *v99;
      if (*v99 != v99[1])
      {
        v9 = &v116;
        while (1)
        {
          v48 = *v49;
          v50 = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(v119, *v49)[4];
          v103 = v50;
          v51 = *(v50 + 32);
          v52 = *(v48 + 32);
          if (v51 < v52)
          {
            goto LABEL_51;
          }

          if (v51 == v52 && [*(v50 + 24) TTCompare:*(v48 + 24)] == -1)
          {
            break;
          }

LABEL_73:
          v49 += 8;
          if (v49 == v99[1])
          {
            goto LABEL_74;
          }
        }

        v50 = v103;
LABEL_51:
        if (*(v50 + 44))
        {
          if (*(v48 + 44))
          {
LABEL_61:
            if ((*(v48 + 44) & 1) == 0)
            {
              attributedString = self->_attributedString;
              if (*(v103 + 44))
              {
                v55 = TTBoundedCheckedCastNSUIntegerToUInt32([(NSMutableAttributedString *)self->_attributedString length]);
                *(v103 + 10) = v55;
                v56 = self->_attributedString;
                v57 = [v101 string];
                if (*(v48 + 44))
                {
                  v58 = 0;
                }

                else
                {
                  v58 = *(v48 + 16);
                }

                [(NSMutableAttributedString *)v56 ic_appendAttributedSubstring:v57 fromRange:*(v48 + 40), v58];
              }

              else
              {
                v59 = *(v103 + 10);
                v60 = *(v103 + 4);
                v57 = [v101 string];
                if (*(v48 + 44))
                {
                  v61 = 0;
                }

                else
                {
                  v61 = *(v48 + 16);
                }

                [(NSMutableAttributedString *)attributedString ic_replaceCharactersInRange:v59 withAttributedSubstring:v60 fromRange:v57, *(v48 + 40), v61];
              }
            }

            v62 = v103;
            *(v103 + 44) = *(v48 + 44);
            objc_storeStrong(v62 + 3, *(v48 + 24));
            *(v62 + 8) = *(v48 + 32);
            goto LABEL_73;
          }

          v53 = &v113;
        }

        else if (*(v48 + 44))
        {
          v53 = &v116;
        }

        else
        {
          v53 = &v110;
        }

        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v53, &v103);
        goto LABEL_61;
      }

LABEL_74:
      [(TTMergeableString *)self sortSplitNodes];
      [(TTMergeableString *)self invalidateCache];
      [v101 invalidateCache];
      [(TTMergeableString *)self updateAttributedStringAfterMerge];
      if (v97)
      {
        v63 = [(TTMergeableString *)self timestamp];
        v48 = [v101 timestamp];
        [v63 mergeWithTimestamp:v48];

        [(TTMergeableString *)self updateClock];
        [(TTMergeableString *)self checkTimestampLogStyleErrors:1];
      }

      v64 = [(TTMergeableString *)self delegate];
      v65 = v64;
      if (v64)
      {
        v100 = v64;
        [v64 beginEditing];
        v66 = [(TTMergeableString *)self orderedSubstrings];
        v67 = *v66;
        v68 = v66[1];
        if (*v66 != v68)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          do
          {
            v103 = *v67;
            v72 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v113, &v103);
            v73 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v116, &v103);
            v74 = v73 != 0;
            if (v72)
            {
              if ((*(v103 + 44) & 1) == 0)
              {
                if (v71)
                {
                  v75 = v70;
                }

                else
                {
                  v48 = v69;
                  v9 = 0;
                  v75 = 0;
                }

                v70 = v75 + *(v103 + 4);
                v71 = 1;
              }
            }

            else
            {
              v76 = v73;
              if (v73)
              {
                if (v71)
                {
                  v77 = v9;
                }

                else
                {
                  v48 = v69;
                  v77 = 0;
                }

                if (v71)
                {
                  v78 = v70;
                }

                else
                {
                  v78 = 0;
                }

                v79 = *(v103 + 4);
                v9 = v77 + v79;
                v70 = v78 - v79;
              }

              else if (v71)
              {
                [v100 edited:2 range:v48 changeInLength:{v9, v70}];
                v69 += v70;
              }

              if (std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v110, &v103))
              {
                [v100 edited:1 range:v69 changeInLength:{*(v103 + 4), 0}];
              }

              if (*(v103 + 44) == 1 && v76 == 0)
              {
                v71 = 0;
              }

              else
              {
                v69 += *(v103 + 4);
                v71 = v74;
              }
            }

            ++v67;
          }

          while (v67 != v68);
        }

        v65 = v100;
        [v100 endEditing];
      }

      if (*(&v117 + 1) | *(&v114 + 1) | *(&v111 + 1))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v107);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v110);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v113);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v116);
    std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v119);

    goto LABEL_123;
  }

  v10 = 1;
LABEL_123:

  v94 = *MEMORY[0x1E69E9840];
  return v10;
}

void __53__TTMergeableString_mergeWithString_mergeTimestamps___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  while (v2 != v3)
  {
    v4 = *v2++;
    ++*(v4 + 72);
  }
}

- (void)sortSplitNodes
{
  minIdPath(*self->_startNodes.__begin_, v3);
  v2 = v3[0];
}

- (void)traverseUnordered:(id)a3
{
  v6 = a3;
  begin = self->_startNodes.__begin_;
  end = self->_startNodes.__end_;
  while (begin != end)
  {
    traverseUnordered(*begin++, v6);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TTMergeableString *)self string];
  v7 = [v3 stringWithFormat:@"<%@ %p = '%@'>", v5, self, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  attributedString = self->_attributedString;
  v6 = [v4 attributedString];
  LOBYTE(attributedString) = [(NSMutableAttributedString *)attributedString isEqual:v6];

  v7 = (attributedString & 1) != 0 && [(TTMergeableString *)self graphIsEqual:v4];
  return v7;
}

- (BOOL)graphIsEqual:(id)a3
{
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x5812000000;
  v24 = __Block_byref_object_copy__66;
  v25 = __Block_byref_object_dispose__67;
  v26 = &unk_19A260519;
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  [(TTMergeableString *)self coalesce];
  [v4 coalesce];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34__TTMergeableString_graphIsEqual___block_invoke;
  v20[3] = &unk_1E7509A38;
  v20[4] = &v21;
  [(TTMergeableString *)self traverseUnordered:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__TTMergeableString_graphIsEqual___block_invoke_2;
  v19[3] = &unk_1E7509B90;
  v19[4] = &v21;
  v19[5] = &v29;
  [v4 traverseUnordered:v19];
  if (*(v30 + 24) == 1)
  {
    v5 = v22 + 8;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v6 = v5[2];
      v7 = v6;
      v9 = v5[4];
      v8 = v5[5];
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10 || (v12 = *(v9 + 48), v11 = *(v9 + 56), v11 - v12 != *(v8 + 56) - *(v8 + 48)))
      {
        *(v30 + 24) = 0;

        break;
      }

      if (v11 != v12)
      {
        v13 = 0;
        if (((v11 - v12) >> 3) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = (v11 - v12) >> 3;
        }

        while (1)
        {
          v15 = **(*(v9 + 48) + 8 * v13);
          if (([v15 isEqual:v15] & 1) == 0)
          {
            break;
          }

          if (v14 == ++v13)
          {
            goto LABEL_17;
          }
        }

        *(v30 + 24) = 0;
      }

LABEL_17:
      v16 = *(v30 + 24);
    }

    while ((v16 & 1) != 0);
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v21, 8);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v27);
  _Block_object_dispose(&v29, 8);

  return v17;
}

uint64_t *__34__TTMergeableString_graphIsEqual___block_invoke(uint64_t a1, void *a2)
{
  std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2)[4] = a2;
  result = std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>((*(*(a1 + 32) + 8) + 48), a2);
  result[5] = 0;
  return result;
}

uint64_t *__34__TTMergeableString_graphIsEqual___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>((*(*(a1 + 32) + 8) + 48), a2);
  if (result && (v7 = result, v8 = result[4], *(a2 + 32) == *(v8 + 32)) && (result = [*(a2 + 24) isEqual:*(v8 + 24)], (result & 1) != 0))
  {
    v7[5] = a2;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = [(TTMergeableString *)self attributedString];
  v3 = [v2 hash];

  return v3;
}

- (id)dotDescription:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendFormat:@"subgraph cluster_%ld%p_%ld {\n  rankdir=LR;\n", a3, self, a3];
  if ([(TTMergeableString *)self isFragment])
  {
    v6 = @"<Fragment>";
  }

  else
  {
    v7 = [(TTMergeableString *)self string];
    v8 = [v7 string];
    v6 = [v8 description];
  }

  v9 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  v10 = [(TTMergeableString *)self replicaUUID];
  v32 = v9;
  v11 = [v10 TTShortDescription];
  [v5 appendFormat:@"  label=%@_%ld (%ld)    '%@'\n", v11, a3, -[TTVectorMultiTimestamp clockForUUID:atIndex:](self->_timestamp, "clockForUUID:atIndex:", self->_replicaUUID, 0), v9];

  [v5 appendFormat:@"  color=lightgrey;\n"];
  v12 = [(TTMergeableString *)self orderedSubstrings];
  v13 = *v12;
  v34 = v12[1];
  if (*v12 != v34)
  {
    v33 = self;
    do
    {
      v14 = *v13;
      begin = self->_startNodes.__begin_;
      end = self->_startNodes.__end_;
      if (begin != end)
      {
        while (*begin != v14)
        {
          if (++begin == end)
          {
            goto LABEL_12;
          }
        }
      }

      if (begin == end)
      {
LABEL_12:
        v21 = self->_endNodes.__begin_;
        v22 = self->_endNodes.__end_;
        if (v21 != v22)
        {
          while (*v21 != v14)
          {
            if (++v21 == v22)
            {
              goto LABEL_18;
            }
          }
        }

        if (v21 != v22)
        {
          v17 = [*v14 TTShortDescription];
          [v5 appendFormat:@"  N%ld%p [label=End\\n%@, %d];\n", a3, v14, v17, *(v14 + 8)];
          goto LABEL_25;
        }

LABEL_18:
        v17 = &stru_1F0D67F00;
        if ((*(v14 + 44) & 1) == 0)
        {
          v23 = [(NSMutableAttributedString *)self->_attributedString string];
          v24 = v23;
          if (*(v14 + 44))
          {
            v25 = 0;
          }

          else
          {
            v25 = *(v14 + 16);
          }

          v17 = [v23 substringWithRange:{*(v14 + 40), v25}];
        }

        v20 = [*v14 TTShortDescription];
        v26 = *(v14 + 8);
        v27 = *(v14 + 16);
        v28 = [*(v14 + 24) TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=%@ %@, %d-%u (%@, %d)];\n", a3, v14, v17, v20, v26, (v26 + v27 - 1), v28, *(v14 + 32)];

        self = v33;
      }

      else
      {
        v17 = *v14;
        v18 = *(v14 + 8);
        v19 = *(v14 + 16);
        v20 = [(__CFString *)v17 TTShortDescription];
        [v5 appendFormat:@"  N%ld%p [label=Start\\n%@, %d];\n", a3, v14, v20, (v18 + v19 - 1)];
      }

LABEL_25:
      v29 = *(v14 + 48);
      v30 = *(v14 + 56);
      while (v29 != v30)
      {
        [v5 appendFormat:@"  N%ld%p -> N%ld%p;\n", a3, v14, a3, *v29++];
      }

      ++v13;
    }

    while (v13 != v34);
  }

  [v5 appendString:@"}\n"];

  return v5;
}

- (TTMergeableStringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (__n128)deleteSubstrings:(uint64_t)a3 withCharacterRanges:(char)a4
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v58 = a2[-1].n128_u64[0];
        v57 = a2 - 1;
        if (*v12 >= v58)
        {
          return result;
        }

LABEL_107:
        v128 = *v12;
        *v12 = *v57;
        result = v128;
LABEL_108:
        *v57 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = (v12 + 16);
      v63 = *(v12 + 16);
      v64 = (v12 + 32);
      v65 = *(v12 + 32);
      if (*v12 >= v63)
      {
        if (v63 < v65)
        {
          result = *v59;
          *v59 = *v64;
          *v64 = result;
          if (*v12 < *(v12 + 16))
          {
            v131 = *v12;
            *v12 = *v59;
            result = v131;
            *v59 = v131;
          }
        }
      }

      else
      {
        if (v63 < v65)
        {
          v129 = *v12;
          *v12 = *v64;
          result = v129;
          goto LABEL_180;
        }

        v133 = *v12;
        *v12 = *v59;
        result = v133;
        *v59 = v133;
        if (*(v12 + 16) < v65)
        {
          result = *v59;
          *v59 = *v64;
LABEL_180:
          *v64 = result;
        }
      }

      if (v64->n128_u64[0] >= v9->n128_u64[0])
      {
        return result;
      }

      result = *v64;
      *v64 = *v9;
      *v9 = result;
      if (v59->n128_u64[0] >= v64->n128_u64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *v64;
      *v64 = result;
LABEL_184:
      if (*v12 < *(v12 + 16))
      {
        v134 = *v12;
        *v12 = *v59;
        result = v134;
        *v59 = v134;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v66 = (v12 + 16);
      v68 = v12 == a2 || v66 == a2;
      if (a4)
      {
        if (!v68)
        {
          v69 = 0;
          v70 = v12;
          do
          {
            v71 = v66;
            v72 = v70[2];
            if (*v70 < v72)
            {
              v73 = v70[3];
              v74 = v69;
              while (1)
              {
                result = *(v12 + v74);
                *(v12 + v74 + 16) = result;
                if (!v74)
                {
                  break;
                }

                v75 = *(v12 + v74 - 16);
                v74 -= 16;
                if (v75 >= v72)
                {
                  v76 = (v12 + v74 + 16);
                  goto LABEL_127;
                }
              }

              v76 = v12;
LABEL_127:
              *v76 = v72;
              v76[1] = v73;
            }

            v66 = v71 + 1;
            v69 += 16;
            v70 = v71;
          }

          while (&v71[1] != a2);
        }
      }

      else if (!v68)
      {
        do
        {
          v104 = v66;
          v105 = a1[1].n128_u64[0];
          if (a1->n128_u64[0] < v105)
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v108 < v105);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v66 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v77 = (v13 - 2) >> 1;
        v78 = v77;
        do
        {
          v79 = v78;
          if (v77 >= v78)
          {
            v80 = (2 * v78) | 1;
            v81 = (v12 + 16 * v80);
            v82 = *v81;
            if (2 * v79 + 2 < v13 && v81[2] < v82)
            {
              v82 = v81[2];
              v81 += 2;
              v80 = 2 * v79 + 2;
            }

            v83 = (v12 + 16 * v79);
            v84 = *v83;
            v85 = *v83;
            if (*v83 >= v82)
            {
              do
              {
                v86 = v81;
                *v83 = *v81;
                if (v77 < v80)
                {
                  break;
                }

                v87 = (2 * v80) | 1;
                v81 = (v12 + 16 * v87);
                v80 = 2 * v80 + 2;
                v88 = *v81;
                if (v80 >= v13)
                {
                  v80 = v87;
                }

                else if (v81[2] >= v88)
                {
                  v80 = v87;
                }

                else
                {
                  v88 = v81[2];
                  v81 += 2;
                }

                v83 = v86;
              }

              while (v85 >= v88);
              *v86 = v84;
            }
          }

          v78 = v79 - 1;
        }

        while (v79);
        do
        {
          v89 = 0;
          v130 = *v12;
          v90 = v12;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v95 >= v94[-1].n128_u64[0])
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v130;
            *v92 = v130;
          }

          else
          {
            *v92 = *a2;
            result = v130;
            *a2 = v130;
            v96 = (&v92[1] - v12) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = (v12 + 16 * v99);
              v101 = v92->n128_u64[0];
              if (v92->n128_u64[0] < v100->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v100;
                  result = *v100;
                  *v92 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = (v12 + 16 * v99);
                  v92 = v103;
                }

                while (v101 < v100->n128_u64[0]);
                v103->n128_u64[0] = v101;
                v103->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (*v12 >= v14->n128_u64[0])
      {
        if (v17 < v16)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (*v12 < v14->n128_u64[0])
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v17 < v16)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v14->n128_u64[0] < v9->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (*(v12 + 16) >= v21)
      {
        if (v21 < v22)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v19->n128_u64[0] < v20->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v21 < v22)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v20->n128_u64[0] < v10->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (*(v12 + 32) >= v29)
      {
        if (v28 < v30)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v26->n128_u64[0] < v27->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v28 < v30)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v27->n128_u64[0] < v11->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v20->n128_u64[0] >= v15->n128_u64[0])
      {
        if (v34 < v35)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v20->n128_u64[0] < v15->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v34 < v35)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v15->n128_u64[0] < v27->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = *v12;
    if (v14->n128_u64[0] >= *v12)
    {
      if (v18 < v16)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (v14->n128_u64[0] < *v12)
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v18 < v16)
    {
      v110 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v110;
      *v9 = v110;
      goto LABEL_58;
    }

    v117 = *v14;
    *v14 = *v12;
    result = v117;
    *v12 = v117;
    if (*v12 < v9->n128_u64[0])
    {
      v110 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    v36 = *v12;
    if (a4)
    {
      v37 = *(v12 + 8);
LABEL_61:
      v38 = 0;
      do
      {
        v39 = *(v12 + v38 + 16);
        v38 += 16;
      }

      while (v36 < v39);
      v40 = v12 + v38;
      v41 = a2;
      if (v38 == 16)
      {
        v41 = a2;
        do
        {
          if (v40 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v43);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v36 >= v42);
      }

      v12 += v38;
      if (v40 < v41)
      {
        v44 = v41;
        do
        {
          v126 = *v12;
          *v12 = *v44;
          result = v126;
          *v44 = v126;
          do
          {
            v45 = *(v12 + 16);
            v12 += 16;
          }

          while (v36 < v45);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v36 >= v46);
        }

        while (v12 < v44);
      }

      v47 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
      if (v40 < v41)
      {
        goto LABEL_80;
      }

      v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(a1, (v12 - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(v12, a2, v49))
      {
        a2 = (v12 - 16);
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v37 = *(v12 + 8);
      if (v36 < *(v12 - 16))
      {
        goto LABEL_61;
      }

      if (v9->n128_u64[0] >= v36)
      {
        v51 = v12 + 16;
        do
        {
          v12 = v51;
          if (v51 >= a2)
          {
            break;
          }

          v51 += 16;
        }

        while (*v12 >= v36);
      }

      else
      {
        do
        {
          v50 = *(v12 + 16);
          v12 += 16;
        }

        while (v50 >= v36);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v53 < v36);
      }

      while (v12 < v52)
      {
        v127 = *v12;
        *v12 = *v52;
        result = v127;
        *v52 = v127;
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
        }

        while (v54 >= v36);
        do
        {
          v55 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v55 < v36);
      }

      v56 = (v12 - 16);
      if ((v12 - 16) != a1)
      {
        result = *v56;
        *a1 = *v56;
      }

      a4 = 0;
      *(v12 - 16) = v36;
      *(v12 - 8) = v37;
    }
  }

  v59 = (v12 + 16);
  v60 = *(v12 + 16);
  v62 = a2[-1].n128_u64[0];
  v57 = a2 - 1;
  v61 = v62;
  if (*v12 >= v60)
  {
    if (v60 >= v61)
    {
      return result;
    }

    result = *v59;
    *v59 = *v57;
    *v57 = result;
    goto LABEL_184;
  }

  if (v60 < v61)
  {
    goto LABEL_107;
  }

  v132 = *v12;
  *v12 = *v59;
  result = v132;
  *v59 = v132;
  if (*(v12 + 16) < v57->n128_u64[0])
  {
    result = *v59;
    *v59 = *v57;
    goto LABEL_108;
  }

  return result;
}

- (TTMergeableString)initWithData:(id)a3 andReplicaID:(id)a4
{
  v6 = a3;
  v7 = a4;
  topotext::String::String(v13);
  v8 = [v6 bytes];
  v9 = TTBoundedCheckedCastNSUIntegerToUInt32([v6 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v13, v8, v9))
  {
    self = [(TTMergeableString *)self initWithArchive:v13 andReplicaID:v7];
    v10 = self;
  }

  else
  {
    v11 = +[REMLog crdt];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithData:andReplicaID:];
    }

    v10 = 0;
  }

  topotext::String::~String(v13);

  return v10;
}

- (TTMergeableString)initWithArchive:(const void *)a3 andReplicaID:(id)a4 withOrderedSubstrings:(void *)a5 timestamp:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v43 = a4;
  v44 = a6;
  v45 = [(TTMergeableString *)self initWithReplicaID:v43 asFragment:1];
  if (!v45)
  {
    goto LABEL_42;
  }

  if (*(a3 + 32))
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = *(a3 + 5);
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      v10 = *v10;
      v11 = *(*(a3 + 5) + 8);
    }

    v12 = [v9 initWithBytes:v10 length:v11 encoding:4];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12];
      v39 = v13;
      [(TTMergeableString *)v45 setAttributedString:v14];

      v41 = a3;
      v15 = *(a3 + 14);
      __p = 0;
      v53 = 0;
      v54 = 0;
      std::vector<TopoSubstring *>::reserve(&__p, v15);
      if (v15)
      {
        operator new();
      }

      v16 = v44;
      if (!v44)
      {
        v17 = [TTVectorMultiTimestamp alloc];
        v18 = v17;
        v19 = v41[9];
        if (!v19)
        {
          v19 = *(topotext::String::default_instance(v17) + 72);
        }

        v16 = [(TTVectorMultiTimestamp *)v18 initWithArchive:v19 andCapacity:2];
      }

      [(TTMergeableString *)v45 setTimestamp:v16];
      if (!v44)
      {
      }

      v20 = [(TTMergeableString *)v45 timestamp];
      v40 = [v20 sortedUUIDs];

      [v40 count];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v21 = v40;
      v22 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v22)
      {
        v23 = *v49;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v49 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v48 + 1) + 8 * i);
            v26 = [MEMORY[0x1E696AFB0] TTZero];
            LOBYTE(v25) = [v25 isEqual:v26];

            if (v25)
            {
              v27 = 0;
              goto LABEL_27;
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v27 = 1;
LABEL_27:

      memset(v46, 0, sizeof(v46));
      v47 = 1065353216;
      v30 = [(TTMergeableString *)v45 attributedString];
      v31 = [v30 length] == 0;

      if (v31)
      {
        if (v27)
        {
          if (![(TTMergeableString *)v45 isFragment])
          {
            [(TTMergeableString *)v45 updateClock];
          }

          v32 = 1;
LABEL_36:
          if (a5 && &__p != a5)
          {
            std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>(a5, __p, v53, (v53 - __p) >> 3);
          }

          std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v46);

          if (__p)
          {
            v53 = __p;
            operator delete(__p);
          }

          if ((v32 & 1) == 0)
          {
            v35 = 0;
            goto LABEL_43;
          }

LABEL_42:
          v35 = v45;
LABEL_43:
          v29 = v35;
          goto LABEL_44;
        }
      }

      else
      {
        v33 = +[REMLog crdt];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
        }
      }

      v34 = [(TTMergeableString *)v45 startNodes];
      v34[1] = *v34;
      v32 = 0;
      goto LABEL_36;
    }
  }

  v28 = +[REMLog crdt];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [TTMergeableString(TTMergeableStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
  }

  v29 = 0;
LABEL_44:

  v36 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)saveToArchive:(void *)a3
{
  [(TTMergeableString *)self generateIdsForLocalChanges];
  [(TTMergeableString *)self coalesce];
  [(TTMergeableString *)self checkTimestampLogStyleErrors:1];
  v5 = [(TTMergeableString *)self orderedSubstrings];

  [(TTMergeableString *)self saveSubstrings:v5 archiveSet:0 linkSet:0 archivedString:0 toArchive:a3];
}

- (void)saveSubstrings:(void *)a3 archiveSet:(void *)a4 linkSet:(void *)a5 archivedString:(id *)a6 toArchive:(void *)a7
{
  v57 = a6;
  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  v11 = *a3;
  v12 = *(a3 + 1);
  if (*a3 != v12)
  {
    v13 = 0;
    do
    {
      v65 = *v11;
      v68 = &v65;
      *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v66, &v65) + 6) = v13++;
      ++v11;
    }

    while (v11 != v12);
  }

  v60 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v14 = [(TTMergeableString *)self timestamp];
  v63 = [v14 sortedUUIDs];

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [MEMORY[0x1E696AFB0] TTZero];
  [v15 setObject:&unk_1F0D99B50 forKeyedSubscript:v16];
  v62 = a4;

  v17 = [v63 count];
  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v18 + 1, v57}];
      v21 = [v63 objectAtIndexedSubscript:v18];
      [v15 setObject:v20 forKeyedSubscript:v21];

      v18 = v19;
    }

    while (v17 != v19);
  }

  v22 = *a3;
  v61 = *(a3 + 1);
  if (*a3 != v61)
  {
    while (1)
    {
      v65 = *v22;
      v23 = *(a7 + 15);
      v24 = *(a7 + 14);
      if (v24 >= v23)
      {
        if (v23 == *(a7 + 16))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a7 + 6, v23 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::Substring>::New();
      }

      v25 = *(a7 + 6);
      *(a7 + 14) = v24 + 1;
      v26 = *(v25 + 8 * v24);
      *(v26 + 32) |= 1u;
      v27 = *(v26 + 40);
      if (!v27)
      {
        operator new();
      }

      v28 = [v15 objectForKeyedSubscript:{*v65, v57}];
      v29 = [v28 integerValue];
      *(v27 + 32) |= 1u;
      *(v27 + 40) = v29;

      *(v26 + 32) |= 1u;
      v30 = *(v26 + 40);
      if (!v30)
      {
        operator new();
      }

      v31 = *(v65 + 8);
      *(v30 + 32) |= 2u;
      *(v30 + 44) = v31;
      if (v62)
      {
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v62, &v65))
        {
          break;
        }
      }

      *(v26 + 32) |= 4u;
      v32 = *(v26 + 48);
      if (!v32)
      {
        operator new();
      }

      v33 = [v15 objectForKeyedSubscript:*(v65 + 24)];
      v34 = [v33 integerValue];
      *(v32 + 32) |= 1u;
      *(v32 + 40) = v34;

      *(v26 + 32) |= 4u;
      v35 = *(v26 + 48);
      if (!v35)
      {
        operator new();
      }

      v36 = v65;
      v37 = *(v65 + 32);
      *(v35 + 32) |= 2u;
      *(v35 + 44) = v37;
      if (*(v36 + 44) == 1)
      {
        goto LABEL_29;
      }

      v38 = [(TTMergeableString *)self attributedString];
      v39 = v38;
      if (*(v65 + 44))
      {
        v40 = 0;
      }

      else
      {
        v40 = *(v65 + 16);
      }

      v43 = [v38 attributedSubstringFromRange:{*(v65 + 40), v40}];
      [v60 appendAttributedString:v43];

      v42 = *(v26 + 32);
LABEL_32:
      v44 = v65;
      v45 = *(v65 + 16);
      *(v26 + 32) = v42 | 2;
      *(v26 + 56) = v45;
      v46 = *(v44 + 48);
      v47 = *(v44 + 56);
      while (v46 != v47)
      {
        v64 = *v46;
        if (!a5 || std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(a5, &v64))
        {
          v68 = &v64;
          v48 = *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v66, &v64) + 6);
          v49 = *(v26 + 72);
          if (v49 == *(v26 + 76))
          {
            google::protobuf::RepeatedField<unsigned int>::Reserve((v26 + 64), v49 + 1);
            v49 = *(v26 + 72);
          }

          v50 = *(v26 + 64);
          *(v26 + 72) = v49 + 1;
          *(v50 + 4 * v49) = v48;
        }

        ++v46;
      }

      if (++v22 == v61)
      {
        goto LABEL_41;
      }
    }

    *(v26 + 32) |= 4u;
    v41 = *(v26 + 48);
    if (!v41)
    {
      operator new();
    }

    v41[8] |= 1u;
    v41[10] = 0;
    *(v26 + 32) |= 4u;
    v41[8] |= 2u;
    v41[11] = 0;
LABEL_29:
    v42 = *(v26 + 32) | 8;
    *(v26 + 32) = v42;
    *(v26 + 60) = 1;
    goto LABEL_32;
  }

LABEL_41:
  v51 = [v60 string];
  [v51 UTF8String];
  v52 = [v60 string];
  [v52 lengthOfBytesUsingEncoding:4];
  *(a7 + 8) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  if (*(a7 + 5) == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  MEMORY[0x19A8FCFF0]();

  if (v58)
  {
    *v58 = v60;
  }

  v53 = [(TTMergeableString *)self timestamp];
  v54 = [v53 isDocumentShared];

  if ((v54 & 1) == 0)
  {
    v55 = [(TTMergeableString *)self timestamp];
    *(a7 + 8) |= 4u;
    v56 = *(a7 + 9);
    if (!v56)
    {
      operator new();
    }

    [v55 saveToArchive:v56];
  }

  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v66);
}

- (id)serialize
{
  topotext::String::String(v7);
  [(TTMergeableString *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::String::ByteSize(v7)];
  v4 = [v3 mutableBytes];
  v5 = TTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, v4, v5);
  topotext::String::~String(v7);

  return v3;
}

- (id)i_saveDeltasSinceTimestamp:(id)a3 toArchive:(void *)a4
{
  v6 = a3;
  [(TTMergeableString *)self generateIdsForLocalChanges];
  [(TTMergeableString *)self coalesce];
  v27 = self;
  v28 = a4;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 1065353216;
  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v7 = [(TTMergeableString *)self orderedSubstrings];
  v9 = *v7;
  v8 = v7[1];
  v29 = v8;
  while (v9 != v8)
  {
    v10 = *v9;
    v32 = v10;
    v11 = *v10;
    v12 = *(v10 + 8);
    LODWORD(v10) = *(v10 + 16);
    v13 = [v6 clockForUUID:v11 atIndex:0];
    v14 = [v6 clockForUUID:v11 atIndex:1];
    if (v10 + v12 >= v13 || *(v32 + 32) >= v14)
    {
      std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v33, &v32);
      if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
      {
        std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v32);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32);
      }

      v23 = *(v32 + 48);
      v24 = *(v32 + 56);
      while (v23 != v24)
      {
        v31 = *v23;
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v31))
        {
          std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v31);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v31);
        }

        ++v23;
      }
    }

    else
    {
      v15 = *(v32 + 48);
      v16 = *(v32 + 56);
      while (v15 != v16)
      {
        v17 = *v15;
        v18 = **v15;
        v19 = *(v17 + 2);
        v20 = *(v17 + 4);
        v21 = [v6 clockForUUID:v18 atIndex:0];
        v22 = [v6 clockForUUID:v18 atIndex:1];
        if ((v20 + v19 >= v21 || *(v17 + 8) >= v22) && !std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v35, &v32))
        {
          std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](&v37, &v32);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v35, &v32);
        }

        ++v15;
      }
    }

    ++v9;
    v8 = v29;
  }

  v30 = 0;
  [(TTMergeableString *)v27 saveSubstrings:&v37 archiveSet:v33 linkSet:v35 archivedString:&v30 toArchive:v28];
  v25 = v30;
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v33);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v35);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  return v25;
}

- (id)serializeDeltaSinceTimestamp:(id)a3
{
  v4 = a3;
  topotext::String::String(v9);
  [(TTMergeableString *)self saveDeltaSinceTimestamp:v4 toArchive:v9];
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::String::ByteSize(v9)];
  v6 = [v5 mutableBytes];
  v7 = TTBoundedCheckedCastNSUIntegerToUInt32([v5 length]);
  google::protobuf::MessageLite::SerializeToArray(v9, v6, v7);
  topotext::String::~String(v9);

  return v5;
}

- (void)mergeWithString:(uint64_t)a1 mergeTimestamps:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to merge strings: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end