@interface VKMercatorTerrainHeightCache
- (VKMercatorTerrainHeightProvider)heightProvider;
- (double)heightForAnchor:(void *)a3;
- (id).cxx_construct;
- (void)invalidateRect:(const void *)a3;
- (void)removeCachedValueForAnchor:(void *)a3;
@end

@implementation VKMercatorTerrainHeightCache

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  return self;
}

- (VKMercatorTerrainHeightProvider)heightProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_heightProvider);

  return WeakRetained;
}

- (void)invalidateRect:(const void *)a3
{
  p_anchorToHeight = &self->_anchorToHeight;
  begin_node = self->_anchorToHeight.__tree_.__begin_node_;
  p_end_node = &self->_anchorToHeight.__tree_.__end_node_;
  if (begin_node != &self->_anchorToHeight.__tree_.__end_node_)
  {
    v7 = a3 + 16;
    do
    {
      size = begin_node->_anchorToHeight.__tree_.__size_;
      (*(*size + 7))(size, a2);
      v11 = 0;
      v12 = 1;
      while (v9 >= *(a3 + v11) && v9 < *&v7[8 * v11])
      {
        v13 = v12;
        v12 = 0;
        v9 = v10;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          v14 = std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(p_anchorToHeight, begin_node);
          operator delete(begin_node);
          md::Anchor::worldPointDidChange(size);
          goto LABEL_13;
        }
      }

      heightProvider = begin_node->_heightProvider;
      if (heightProvider)
      {
        do
        {
          v14 = heightProvider;
          heightProvider = *heightProvider;
        }

        while (heightProvider);
      }

      else
      {
        do
        {
          v14 = begin_node->_anchorToHeight.__tree_.__begin_node_;
          v16 = *v14 == begin_node;
          begin_node = v14;
        }

        while (!v16);
      }

LABEL_13:
      begin_node = v14;
    }

    while (v14 != p_end_node);
  }
}

- (void)removeCachedValueForAnchor:(void *)a3
{
  p_end_node = &self->_anchorToHeight.__tree_.__end_node_;
  left = self->_anchorToHeight.__tree_.__end_node_.__left_;
  if (left)
  {
    p_anchorToHeight = &self->_anchorToHeight;
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
      std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(p_anchorToHeight, v6);

      operator delete(v6);
    }
  }
}

- (double)heightForAnchor:(void *)a3
{
  p_end_node = &self->_anchorToHeight.__tree_.__end_node_;
  left = self->_anchorToHeight.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  v6 = &self->_anchorToHeight.__tree_.__end_node_;
  do
  {
    v7 = *(left + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = left;
    }

    left = *(left + v9);
  }

  while (left);
  if (v6 != p_end_node && v6[4].__left_ <= a3)
  {
    return *&v6[5].__left_;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_heightProvider);
  (*(*a3 + 56))(a3);
  [WeakRetained heightAtPoint:?];
  v12 = v11;

  v14 = p_end_node->__left_;
  if (!p_end_node->__left_)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v15 = v14;
      v16 = *(v14 + 4);
      if (v16 <= a3)
      {
        break;
      }

      v14 = *v15;
      if (!*v15)
      {
        goto LABEL_15;
      }
    }

    if (v16 >= a3)
    {
      break;
    }

    v14 = *(v15 + 1);
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v13 = v12;
  v15[10] = v13;
  return v12;
}

@end