@interface TSWPCTTypesetterCache
- (id).cxx_construct;
- (shared_ptr<TSWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)identifier;
- (void)addTypesetterForParagraphIdentifier:(unint64_t)identifier typesetter:(shared_ptr<TSWPParagraphTypesetter>)typesetter;
- (void)clearCache;
- (void)dealloc;
- (void)p_limitCacheSize:(unint64_t)size;
- (void)removeTypesetterForParagraphIndex:(unint64_t)index;
@end

@implementation TSWPCTTypesetterCache

- (void)dealloc
{
  objc_msgSend_clearCache(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSWPCTTypesetterCache;
  [(TSWPCTTypesetterCache *)&v4 dealloc];
}

- (shared_ptr<TSWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)identifier
{
  *v3 = 0;
  v3[1] = 0;
  left = self->_typesetters.__tree_.__end_node_.__left_;
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  v5 = left;
  if (left)
  {
    v7 = p_end_node;
    do
    {
      v8 = v5[4].__left_;
      v9 = v8 >= identifier;
      v10 = v8 < identifier;
      if (v9)
      {
        v7 = v5;
      }

      v5 = v5[v10].__left_;
    }

    while (v5);
    if (v7 != p_end_node && v7[4].__left_ <= identifier)
    {
      v12 = v7[5].__left_;
      v11 = v7[6].__left_;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
      }

      *v3 = v12;
      v3[1] = v11;
    }
  }

  result.var1 = a2;
  result.var0 = p_end_node;
  return result;
}

- (void)addTypesetterForParagraphIdentifier:(unint64_t)identifier typesetter:(shared_ptr<TSWPParagraphTypesetter>)typesetter
{
  v19[0] = identifier;
  if (*typesetter.var0)
  {
    var0 = typesetter.var0;
    v19[2] = v19;
    v6 = sub_276DE4DCC(&self->_typesetters, v19);
    v9 = *var0;
    v8 = *(var0 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[6];
    v6[5] = v9;
    v6[6] = v8;
    if (v10)
    {
      sub_276D5EEA0(v10);
    }

    objc_msgSend_p_limitCacheSize_(self, v7, v19[0]);
    if (self->_typesetters.__tree_.__size_ >= 0x41)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPCTTypesetterCache addTypesetterForParagraphIdentifier:typesetter:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCTTypesetterCache.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 46, 0, "too many entries in our typesetter cache");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }
  }
}

- (void)removeTypesetterForParagraphIndex:(unint64_t)index
{
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  left = self->_typesetters.__tree_.__end_node_.__left_;
  if (left)
  {
    p_typesetters = &self->_typesetters;
    v6 = p_end_node;
    do
    {
      v7 = left[4];
      v8 = v7 >= index;
      v9 = v7 < index;
      if (v8)
      {
        v6 = left;
      }

      left = left[v9];
    }

    while (left);
    if (v6 != p_end_node && v6[4] <= index)
    {
      sub_276DE4EA0(p_typesetters, v6);
    }
  }
}

- (void)clearCache
{
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  sub_276DE52D4(&self->_typesetters, self->_typesetters.__tree_.__end_node_.__left_);
  p_end_node->__left_ = 0;
  p_end_node[1].__left_ = 0;
  p_end_node[-1].__left_ = p_end_node;
}

- (void)p_limitCacheSize:(unint64_t)size
{
  if (self->_typesetters.__tree_.__size_ >= 0x41)
  {
    p_end_node = &self->_typesetters.__tree_.__end_node_;
    left = self->_typesetters.__tree_.__end_node_.__left_;
    if (left)
    {
      do
      {
        begin_node = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      do
      {
        begin_node = p_end_node[2].__left_;
        v6 = *begin_node == p_end_node;
        p_end_node = begin_node;
      }

      while (v6);
    }

    if (begin_node[4] == size)
    {
      begin_node = self->_typesetters.__tree_.__begin_node_;
    }

    sub_276DE4EA0(&self->_typesetters, begin_node);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end