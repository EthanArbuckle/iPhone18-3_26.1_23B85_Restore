@interface TSCEPartialResultMapByOffset
- (TSCEPartialResultMapByOffset)initWithPartialResultTree:(id)tree;
- (id).cxx_construct;
- (id)partialResultForOffset:(unsigned int)offset;
@end

@implementation TSCEPartialResultMapByOffset

- (TSCEPartialResultMapByOffset)initWithPartialResultTree:(id)tree
{
  treeCopy = tree;
  v28.receiver = self;
  v28.super_class = TSCEPartialResultMapByOffset;
  v5 = [(TSCEPartialResultMapByOffset *)&v28 init];
  if (v5)
  {
    v6 = [TSCEPartialResultTreeEnumerator alloc];
    v10 = objc_msgSend_initWithPartialResultTree_(v6, v7, treeCopy, v8, v9);
    v19 = objc_msgSend_nextResult(v10, v11, v12, v13, v14);
    if (v19)
    {
      do
      {
        if (objc_msgSend_offset(v19, v15, v16, v17, v18) != -1)
        {
          v27 = objc_msgSend_offset(v19, v20, v21, v22, v23);
          v29 = &v27;
          v24 = sub_2212E3780(&v5->_mapByOffset.__table_.__bucket_list_.__ptr_, &v27);
          objc_storeStrong(v24 + 3, v19);
        }

        v25 = objc_msgSend_nextResult(v10, v20, v21, v22, v23);

        v19 = v25;
      }

      while (v25);
    }
  }

  return v5;
}

- (id)partialResultForOffset:(unsigned int)offset
{
  offsetCopy = offset;
  if (offset == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2211DC534(&self->_mapByOffset.__table_.__bucket_list_.__ptr_, &offsetCopy);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end