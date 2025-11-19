@interface TSWPCTTypesetterCache
- (id).cxx_construct;
- (shared_ptr<TSWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)a3;
- (void)addTypesetterForParagraphIdentifier:(unint64_t)a3 typesetter:(shared_ptr<TSWPParagraphTypesetter>)a4;
- (void)clearCache;
- (void)dealloc;
- (void)p_limitCacheSize:(unint64_t)a3;
- (void)removeTypesetterForParagraphIndex:(unint64_t)a3;
@end

@implementation TSWPCTTypesetterCache

- (void)dealloc
{
  [(TSWPCTTypesetterCache *)self clearCache];
  v3.receiver = self;
  v3.super_class = TSWPCTTypesetterCache;
  [(TSWPCTTypesetterCache *)&v3 dealloc];
}

- (shared_ptr<TSWPParagraphTypesetter>)cachedTypesetterForParagraphIdentifier:(unint64_t)a3
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
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v5;
      }

      v5 = v5[v10].__left_;
    }

    while (v5);
    if (v7 != p_end_node && v7[4].__left_ <= a3)
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

- (void)addTypesetterForParagraphIdentifier:(unint64_t)a3 typesetter:(shared_ptr<TSWPParagraphTypesetter>)a4
{
  v12[0] = a3;
  if (*a4.var0)
  {
    var0 = a4.var0;
    v12[2] = v12;
    v6 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_typesetters, v12);
    v8 = *var0;
    v7 = *(var0 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v6[6];
    v6[5] = v8;
    v6[6] = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    [(TSWPCTTypesetterCache *)self p_limitCacheSize:v12[0]];
    if (self->_typesetters.__tree_.__size_ >= 2)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPCTTypesetterCache addTypesetterForParagraphIdentifier:typesetter:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCTTypesetterCache.mm"), 57, @"too many entries in our typesetter cache"}];
    }
  }
}

- (void)removeTypesetterForParagraphIndex:(unint64_t)a3
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
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        v6 = left;
      }

      left = left[v9];
    }

    while (left);
    if (v6 != p_end_node && v6[4] <= a3)
    {
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::erase(p_typesetters, v6);
    }
  }
}

- (void)clearCache
{
  p_end_node = &self->_typesetters.__tree_.__end_node_;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::destroy(&self->_typesetters, self->_typesetters.__tree_.__end_node_.__left_);
  p_end_node->__left_ = 0;
  p_end_node[1].__left_ = 0;
  p_end_node[-1].__left_ = p_end_node;
}

- (void)p_limitCacheSize:(unint64_t)a3
{
  if (self->_typesetters.__tree_.__size_ >= 2)
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

    if (begin_node[4] == a3)
    {
      begin_node = self->_typesetters.__tree_.__begin_node_;
    }

    std::__tree<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<TSWPParagraphTypesetter>>>>::erase(&self->_typesetters, begin_node);
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