@interface TTMergeableStringUndoEditCommand
- (BOOL)addToGroup:(id)a3;
- (BOOL)hasTopoIDsThatCanChange;
- (NSString)description;
- (TTMergeableStringUndoEditCommand)init;
- (void)applyToString:(id)a3;
- (void)dealloc;
- (void)updateInsertTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation TTMergeableStringUndoEditCommand

- (TTMergeableStringUndoEditCommand)init
{
  v3.receiver = self;
  v3.super_class = TTMergeableStringUndoEditCommand;
  if ([(TTMergeableStringUndoEditCommand *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  deleteRanges = self->_deleteRanges;
  if (deleteRanges)
  {
    v6 = self->_deleteRanges;
    std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x19A8FD070](deleteRanges, 0x20C40960023A9);
  }

  insertStrings = self->_insertStrings;
  if (insertStrings)
  {
    v6 = self->_insertStrings;
    std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x19A8FD070](insertStrings, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = TTMergeableStringUndoEditCommand;
  [(TTMergeableStringUndoEditCommand *)&v5 dealloc];
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  deleteRanges = self->_deleteRanges;
  v8 = *deleteRanges;
  v9 = deleteRanges[1];
  if (*deleteRanges != v9)
  {
    do
    {
      updateTopoIDRange(v8++, a3, a4, &v18);
    }

    while (v8 != v9);
    deleteRanges = self->_deleteRanges;
  }

  if (deleteRanges != &v18)
  {
    std::vector<TopoIDRange>::__assign_with_size[abi:ne200100]<TopoIDRange*,TopoIDRange*>(deleteRanges, v18, v19, 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3));
  }

  v15 = a3->var0.var0;
  var1 = a3->var1;
  v16 = a3->var0.var1;
  v17 = var1;
  v12 = a4->var0.var0;
  v11 = a4->var1;
  v13 = a4->var0.var1;
  v14 = v11;
  [(TTMergeableStringUndoEditCommand *)self updateInsertTopoIDRange:&v15 toNewRangeID:&v12];
  v21 = &v18;
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](&v21);
}

- (BOOL)hasTopoIDsThatCanChange
{
  deleteRanges = self->_deleteRanges;
  v4 = *deleteRanges;
  v5 = deleteRanges[1];
  if (*deleteRanges == v5)
  {
LABEL_4:
    insertStrings = self->_insertStrings;
    v9 = *insertStrings;
    v10 = insertStrings[1];
    if (*insertStrings == v10)
    {
      return 0;
    }

    else
    {
      do
      {
        v11 = *v9;
        v12 = v9[3];
        v13 = +[TTMergeableString unserialisedReplicaID];

        result = v11 == v13;
        v9 += 4;
      }

      while (v11 != v13 && v9 != v10);
    }
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = +[TTMergeableString unserialisedReplicaID];

      if (v6 == v7)
      {
        return 1;
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

- (void)updateInsertTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  insertStrings = self->_insertStrings;
  v7 = *insertStrings;
  v8 = insertStrings[1];
  while (v7 != v8)
  {
    if ([*v7 isEqual:a3->var0.var0])
    {
      v9 = *(v7 + 8);
      var1 = a3->var0.var1;
      if (v9 >= var1 && (v9 != var1 || [*v7 TTCompare:a3->var0.var0] != -1))
      {
        v11 = a3->var0.var0;
        v12 = a3->var1 + a3->var0.var1;
        v14 = v11;
        v15 = v12;
        v13 = TopoID::operator>=(v7, &v14);

        if (!v13)
        {
          objc_storeStrong(v7, a4->var0.var0);
          *(v7 + 8) = *(v7 + 8) + a4->var0.var1 - a3->var0.var1;
        }
      }
    }

    v7 += 32;
  }
}

- (void)applyToString:(id)a3
{
  v4 = a3;
  deleteRanges = self->_deleteRanges;
  v6 = *deleteRanges;
  v7 = deleteRanges[1];
  v8 = *deleteRanges;
  if (v7 != *deleteRanges)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = v9;
      v13 = v12;
      v17 = v12;
      v18 = v10;
      v19 = v11;
      if (v4)
      {
        [v4 getSubstrings:&v20 forTopoIDRange:&v17];
      }

      else
      {
      }

      v8 += 24;
    }

    while (v8 != v7);
    __p = 0;
    v15 = 0;
    v16 = 0;
    [v4 getCharacterRanges:&__p forSubstrings:&v20];
    [v4 deleteSubstrings:&v20 withCharacterRanges:&__p];
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }
  }

  if (*(self->_insertStrings + 1) != *self->_insertStrings)
  {
    [v4 undeleteSubstrings:?];
  }
}

- (BOOL)addToGroup:(id)a3
{
  v4 = a3;
  v5 = [(TTMergeableStringUndoEditCommand *)self deleteRanges];
  v6 = *v5;
  v7 = v5[1];
  while (v6 != v7)
  {
    v8 = *v6;
    v11 = v8;
    v9 = *(v6 + 16);
    v12 = *(v6 + 8);
    v13 = v9;
    if (v4)
    {
      [v4 addSeenRange:&v11];
    }

    else
    {
    }

    v6 += 24;
  }

  return 1;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<TTMergeableStringUndoEditCommand %p Delete:", self];
  deleteRanges = self->_deleteRanges;
  v5 = *deleteRanges;
  v6 = deleteRanges[1];
  if (*deleteRanges != v6)
  {
    do
    {
      v7 = [*v5 TTShortDescription];
      [v3 appendFormat:@"%@:%d-%u, ", v7, *(v5 + 8), (*(v5 + 8) + *(v5 + 16) - 1)];

      v5 += 24;
    }

    while (v5 != v6);
  }

  [v3 appendFormat:@"  Insert:"];
  insertStrings = self->_insertStrings;
  v9 = *insertStrings;
  v10 = insertStrings[1];
  if (*insertStrings != v10)
  {
    do
    {
      v11 = [*v9 TTShortDescription];
      [v3 appendFormat:@"%@:%d-%u=>'%@', ", v11, *(v9 + 8), (*(v9 + 8) + *(v9 + 16) - 1), *(v9 + 24)];

      v9 += 32;
    }

    while (v9 != v10);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end