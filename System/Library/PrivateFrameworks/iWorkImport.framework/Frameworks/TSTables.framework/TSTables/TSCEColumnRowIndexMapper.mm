@interface TSCEColumnRowIndexMapper
- (TSCEColumnRowIndexMapper)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsCompressionMapForIndexes:(id)indexes;
- (unsigned)mappedIndexForSourceIndex:(unsigned int)index;
@end

@implementation TSCEColumnRowIndexMapper

- (TSCEColumnRowIndexMapper)init
{
  v3.receiver = self;
  v3.super_class = TSCEColumnRowIndexMapper;
  return [(TSCEColumnRowIndexMapper *)&v3 init];
}

- (id)initAsCompressionMapForIndexes:(id)indexes
{
  indexesCopy = indexes;
  v16.receiver = self;
  v16.super_class = TSCEColumnRowIndexMapper;
  v5 = [(TSCEColumnRowIndexMapper *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22130CF08;
    v11[3] = &unk_278462D78;
    v13 = v14;
    v12 = v5;
    objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v7, v11, v8, v9);

    _Block_object_dispose(v14, 8);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4 != self)
  {
    v4->_indexMap.__table_.__max_load_factor_ = self->_indexMap.__table_.__max_load_factor_;
    sub_2211DBE28(&v4->_indexMap.__table_.__bucket_list_.__ptr_, self->_indexMap.__table_.__first_node_.__next_, 0);
  }

  return v5;
}

- (unsigned)mappedIndexForSourceIndex:(unsigned int)index
{
  indexCopy = index;
  v3 = sub_2211DC534(&self->_indexMap.__table_.__bucket_list_.__ptr_, &indexCopy);
  v4 = v3 + 5;
  if (!v3)
  {
    v4 = &indexCopy;
  }

  return *v4;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end