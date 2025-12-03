@interface TTMergeableStringSelection
- (BOOL)hasTopoIDsThatCanChange;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TTMergeableStringSelection)initWithArchive:(const void *)archive;
- (TTMergeableStringSelection)initWithData:(id)data;
- (id).cxx_construct;
- (id)serialize;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive;
- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
@end

@implementation TTMergeableStringSelection

- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  begin = self->_selectionRanges.__begin_;
  end = self->_selectionRanges.__end_;
  while (begin != end)
  {
    updated = updateTopoID(begin, range, d);
    v10 = v9;
    var0 = begin->var0;
    begin->var0 = updated;

    begin->var1 = v10;
    v12 = begin + 1;
    v13 = updateTopoID(v12, range, d);
    v15 = v14;
    v16 = v12->var0;
    v12->var0 = v13;

    v12->var1 = v15;
    begin = v12 + 1;
  }

  v17 = range->var0.var0;
}

- (BOOL)hasTopoIDsThatCanChange
{
  begin = self->_selectionRanges.__begin_;
  end = self->_selectionRanges.__end_;
  if (begin == end)
  {
    return 0;
  }

  while (1)
  {
    v4 = *begin;
    v5 = +[TTMergeableString unserialisedReplicaID];
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = begin[2];
    v8 = +[TTMergeableString unserialisedReplicaID];

    result = v7 == v8;
    begin += 4;
    if (v7 == v8 || begin == end)
    {
      return result;
    }
  }

  return 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    selectionRanges = [v5 selectionRanges];
    begin = self->_selectionRanges.__begin_;
    end = self->_selectionRanges.__end_;
    if (selectionRanges[1] - *selectionRanges == end - begin)
    {
      if (end == begin)
      {
LABEL_12:
        selectionAffinity = [(TTMergeableStringSelection *)self selectionAffinity];
        v15 = selectionAffinity == [v5 selectionAffinity];
LABEL_15:

        goto LABEL_16;
      }

      v9 = 0;
      if (((end - begin) >> 5) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = (end - begin) >> 5;
      }

      while (1)
      {
        v11 = *selectionRanges;
        v12 = *selectionRanges + v9;
        v13 = self->_selectionRanges.__begin_;
        if (*(v12 + 8) != *&v13[v9 + 8] || ![*v12 isEqual:*&v13[v9]] || *(v11 + v9 + 24) != *&v13[v9 + 24] || (objc_msgSend(*(v11 + v9 + 16), "isEqual:", *&v13[v9 + 16]) & 1) == 0)
        {
          break;
        }

        v9 += 32;
        if (!--v10)
        {
          goto LABEL_12;
        }
      }
    }

    v15 = 0;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  begin = self->_selectionRanges.__begin_;
  v3 = self->_selectionRanges.__end_ - begin;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 >> 5;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  do
  {
    v9 = [*&begin[v5] hash];
    v10 = (self->_selectionRanges.__begin_ + v5);
    v11 = *(v10 + 2);
    v12 = [v10[2] hash];
    begin = self->_selectionRanges.__begin_;
    v6 ^= v9 ^ v11 ^ v12 ^ *&begin[v5 + 24];
    v5 += 32;
    --v8;
  }

  while (v8);
  return v6;
}

- (TTMergeableStringSelection)initWithData:(id)data
{
  dataCopy = data;
  topotext::Selection::Selection(v10);
  bytes = [dataCopy bytes];
  v6 = TTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(TTMergeableStringSelection *)self initWithArchive:v10];
    selfCopy = self;
  }

  else
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TTMergeableStringSelection initWithData:v8];
    }

    selfCopy = 0;
  }

  topotext::Selection::~Selection(v10);

  return selfCopy;
}

- (TTMergeableStringSelection)initWithArchive:(const void *)archive
{
  v4 = [(TTMergeableStringSelection *)self init];
  if (v4)
  {
    v5 = *(archive + 18);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(archive + 12);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = objc_alloc(MEMORY[0x1E696AFB0]);
        v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(archive + 40, i);
        if (*(v10 + 23) >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = *v10;
        }

        v12 = [v9 initWithUUIDBytes:v11];
        [v6 addObject:v12];
      }
    }

    if (v5)
    {
      for (j = 0; j != v5; ++j)
      {
        v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(archive + 64, j);
        v15 = *(v14 + 5);
        if (!v15)
        {
          v15 = *(topotext::Selection_Range::default_instance(v14) + 40);
        }

        v16 = [v6 objectAtIndexedSubscript:*(v15 + 40)];
        v17 = *(v15 + 44);
        if ((*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(archive + 64, j) + 32) & 2) != 0)
        {
          v20 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(archive + 64, j);
          v21 = *(v20 + 6);
          if (!v21)
          {
            v21 = *(topotext::Selection_Range::default_instance(v20) + 48);
          }

          tTZero = [v6 objectAtIndexedSubscript:*(v21 + 40)];
          v19 = *(v21 + 44);
        }

        else
        {
          tTZero = [MEMORY[0x1E696AFB0] TTZero];
          v19 = 0;
        }

        v22 = v16;
        v25 = v22;
        v26 = v17;
        v23 = tTZero;
        v27 = v23;
        v28 = v19;
        std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](&v4->_selectionRanges.__begin_, &v25);
      }
    }

    [(TTMergeableStringSelection *)v4 setSelectionAffinity:*(archive + 22) & ((*(archive + 8) << 29) >> 31)];
  }

  return v4;
}

- (void)saveToArchive:(void *)archive
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__TTMergeableStringSelection_saveToArchive___block_invoke;
  v39[3] = &unk_1E7509C80;
  v6 = v5;
  v40 = v6;
  v7 = MEMORY[0x19A8FD720](v39);
  begin = self->_selectionRanges.__begin_;
  for (i = self->_selectionRanges.__end_; begin != i; begin += 4)
  {
    v10 = *(archive + 19);
    v11 = *(archive + 18);
    if (v11 >= v10)
    {
      if (v10 == *(archive + 20))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 8, v10 + 1);
      }

      google::protobuf::internal::GenericTypeHandler<topotext::Selection_Range>::New();
    }

    v12 = *(archive + 8);
    *(archive + 18) = v11 + 1;
    v13 = *(v12 + 8 * v11);
    *(v13 + 32) |= 1u;
    v14 = *(v13 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = v7[2](v7, *begin);
    *(v14 + 32) |= 1u;
    *(v14 + 40) = v15;
    *(v13 + 32) |= 1u;
    v16 = *(v13 + 40);
    if (!v16)
    {
      operator new();
    }

    v17 = *(begin + 2);
    *(v16 + 32) |= 2u;
    *(v16 + 44) = v17;
    v18 = begin[2];
    if (v18 || *(begin + 6))
    {
      *(v13 + 32) |= 2u;
      v19 = *(v13 + 48);
      if (!v19)
      {
        operator new();
      }

      v20 = v7[2](v7, v18);
      *(v19 + 32) |= 1u;
      *(v19 + 40) = v20;
      *(v13 + 32) |= 2u;
      v21 = *(v13 + 48);
      if (!v21)
      {
        operator new();
      }

      v22 = *(begin + 6);
      *(v21 + 32) |= 2u;
      *(v21 + 44) = v22;
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v24)
  {
    v25 = *v36;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v35 + 1) + 8 * j);
        v41[0] = 0;
        v41[1] = 0;
        v28 = [v27 getUUIDBytes:{v41, v35}];
        v29 = *(archive + 13);
        v30 = *(archive + 12);
        if (v30 >= v29)
        {
          if (v29 == *(archive + 14))
          {
            v28 = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 5, v29 + 1);
          }

          google::protobuf::internal::StringTypeHandlerBase::New(v28);
        }

        v31 = *(archive + 5);
        *(archive + 12) = v30 + 1;
        MEMORY[0x19A8FCFF0](*(v31 + 8 * v30), v41, 16);
      }

      v24 = [v23 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v24);
  }

  selectionAffinity = [(TTMergeableStringSelection *)self selectionAffinity];
  v33 = selectionAffinity;
  if (!topotext::Selection_Affinity_IsValid(selectionAffinity))
  {
    __assert_rtn("set_affinity", "topotext.pb.h", 3757, "::topotext::Selection_Affinity_IsValid(value)");
  }

  *(archive + 8) |= 4u;
  *(archive + 22) = v33;

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __44__TTMergeableStringSelection_saveToArchive___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) indexOfObject:v3];
  v5 = v4;
  if (v3 && v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) count];
    [*(a1 + 32) addObject:v3];
  }

  return v5;
}

- (id)serialize
{
  topotext::Selection::Selection(v7);
  [(TTMergeableStringSelection *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::Selection::ByteSize(v7)];
  mutableBytes = [v3 mutableBytes];
  v5 = TTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, mutableBytes, v5);
  topotext::Selection::~Selection(v7);

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<TTMergeableStringSelection %p ", self];
  begin = self->_selectionRanges.__begin_;
  for (i = self->_selectionRanges.__end_; begin != i; begin += 4)
  {
    tTShortDescription = [*begin TTShortDescription];
    [v3 appendFormat:@" %@:%d", tTShortDescription, *(begin + 2)];

    v7 = begin[2];
    tTZero = [MEMORY[0x1E696AFB0] TTZero];
    if ([v7 isEqual:tTZero])
    {
      v9 = *(begin + 6);

      if (!v9)
      {
        continue;
      }
    }

    else
    {
    }

    tTShortDescription2 = [begin[2] TTShortDescription];
    [v3 appendFormat:@"-%@:%d", tTShortDescription2, *(begin + 6)];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end