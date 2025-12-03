@interface VKPolylineOverlayRenderRegion
- (BOOL)isEquivalentToNewRegion:(id)region;
- (Box<double,)visibleRect;
- (id).cxx_construct;
- (id)initForVisibleRect:(const void *)rect snappingRegion:(const void *)region routeLineDatas:(const void *)datas;
@end

@implementation VKPolylineOverlayRenderRegion

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 8) = self + 72;
  *(self + 88) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(self + 104) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  return self;
}

- (Box<double,)visibleRect
{
  v2 = self->_visibleRect._minimum._e[0];
  v3 = self->_visibleRect._minimum._e[1];
  v4 = self->_visibleRect._maximum._e[0];
  v5 = self->_visibleRect._maximum._e[1];
  result._maximum._e[1] = v5;
  result._maximum._e[0] = v4;
  result._minimum._e[1] = v3;
  result._minimum._e[0] = v2;
  return result;
}

- (BOOL)isEquivalentToNewRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  v6 = 0;
  v7 = 1;
  do
  {
    if (*&regionCopy[8 * v6 + 32] < self->_visibleRect._minimum._e[v6] || *&regionCopy[8 * v6 + 48] > self->_visibleRect._maximum._e[v6])
    {
      goto LABEL_25;
    }

    v8 = v7;
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  if (self->_snappingRegion._rects.__tree_.__size_ != *(regionCopy + 10))
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  begin_node = self->_snappingRegion._rects.__tree_.__begin_node_;
  p_end_node = &self->_snappingRegion._rects.__tree_.__end_node_;
  if (begin_node != &self->_snappingRegion._rects.__tree_.__end_node_)
  {
    v11 = regionCopy + 72;
    v12 = *(regionCopy + 9);
    while (v12)
    {
      v13 = v5 + 72;
      v14 = v12;
      do
      {
        v15 = md::MultiRectSetCompare::operator()((v14 + 32), &begin_node->_visibleRect);
        if (v15)
        {
          v16 = 8;
        }

        else
        {
          v16 = 0;
        }

        if (!v15)
        {
          v13 = v14;
        }

        v14 = *&v14[v16];
      }

      while (v14);
      if (v13 == v11 || md::MultiRectSetCompare::operator()(&begin_node->_visibleRect, (v13 + 32)))
      {
        break;
      }

      isa = begin_node->_routeLineDatas.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_routeLineDatas.__tree_.__end_node_.__left_;
          v19 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v19);
      }

      v20 = 1;
      begin_node = left;
      if (left == p_end_node)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  v20 = 1;
LABEL_26:

  return v20;
}

- (id)initForVisibleRect:(const void *)rect snappingRegion:(const void *)region routeLineDatas:(const void *)datas
{
  v31.receiver = self;
  v31.super_class = VKPolylineOverlayRenderRegion;
  v8 = [(VKPolylineOverlayRenderRegion *)&v31 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_visibleRect._minimum._e[0] = *rect;
  v8->_visibleRect._minimum._e[1] = *(rect + 1);
  v8->_visibleRect._maximum._e[0] = *(rect + 2);
  v8->_visibleRect._maximum._e[1] = *(rect + 3);
  if (&v8->_routeLineDatas != datas)
  {
    v12 = *datas;
    v10 = datas + 8;
    v11 = v12;
    if (v8->_routeLineDatas.__tree_.__size_)
    {
      p_end_node = &v8->_routeLineDatas.__tree_.__end_node_;
      left = v8->_routeLineDatas.__tree_.__end_node_.__left_;
      begin_node = v8->_routeLineDatas.__tree_.__begin_node_;
      v8->_routeLineDatas.__tree_.__begin_node_ = &v8->_routeLineDatas.__tree_.__end_node_;
      left[2] = 0;
      v8->_routeLineDatas.__tree_.__end_node_.__left_ = 0;
      v8->_routeLineDatas.__tree_.__size_ = 0;
      if (*(begin_node + 1))
      {
        v16 = *(begin_node + 1);
      }

      else
      {
        v16 = begin_node;
      }

      if (v16)
      {
        v17 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v16);
        if (v11 == v10)
        {
          v19 = v16;
        }

        else
        {
          v18 = v11;
          do
          {
            v19 = v17;
            v21 = *(v18 + 4);
            v20 = *(v18 + 5);
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v22 = v16[5];
            v16[4] = v21;
            v16[5] = v20;
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v22);
            }

            v23 = p_end_node->__left_;
            v24 = v9 + 2;
            v25 = v9 + 2;
            if (p_end_node->__left_)
            {
              do
              {
                while (1)
                {
                  v24 = v23;
                  if (v16[4] >= v23[4])
                  {
                    break;
                  }

                  v23 = *v23;
                  v25 = v24;
                  if (!*v24)
                  {
                    goto LABEL_20;
                  }
                }

                v23 = v23[1];
              }

              while (v23);
              v25 = v24 + 1;
            }

LABEL_20:
            std::__tree<unsigned short>::__insert_node_at(v9 + 1, v24, v25, v16);
            if (v17)
            {
              v17 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v17);
            }

            else
            {
              v17 = 0;
            }

            v26 = *(v18 + 1);
            if (v26)
            {
              do
              {
                v11 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v11 = *(v18 + 2);
                v27 = *v11 == v18;
                v18 = v11;
              }

              while (!v27);
            }

            if (!v19)
            {
              break;
            }

            v16 = v19;
            v18 = v11;
          }

          while (v11 != v10);
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v19);
        if (!v17)
        {
          goto LABEL_38;
        }

        for (i = v17[2]; i; i = i[2])
        {
          v17 = i;
        }

        v28 = v17;
      }

      else
      {
        v28 = 0;
      }

      std::__tree<gdc::LayerDataWithWorld>::destroy(v28);
    }

LABEL_38:
    if (v11 != v10)
    {
      operator new();
    }
  }

  if (v9 + 8 != region)
  {
    std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__assign_multi<std::__tree_const_iterator<gm::Box<double,2>,std::__tree_node<gm::Box<double,2>,void *> *,long>>((v9 + 8), *region, region + 1);
  }

  v9[11] = *(region + 3);
  v9[12] = *(region + 4);
  v9[13] = *(region + 5);
  v9[14] = *(region + 6);
  return v9;
}

@end