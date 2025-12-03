@interface TSTExpandCollapseState
- (TSTExpandCollapseState)initWithArchive:(const void *)archive;
- (TSTExpandCollapseState)initWithCollapsed:(id)collapsed expanded:(id)expanded dimension:(int64_t)dimension;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeInverse;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTExpandCollapseState

- (TSTExpandCollapseState)initWithCollapsed:(id)collapsed expanded:(id)expanded dimension:(int64_t)dimension
{
  collapsedCopy = collapsed;
  expandedCopy = expanded;
  v36.receiver = self;
  v36.super_class = TSTExpandCollapseState;
  v14 = [(TSTExpandCollapseState *)&v36 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(collapsedCopy, v10, v11, v12, v13);
    uidsCollapsed = v14->_uidsCollapsed;
    v14->_uidsCollapsed = v15;

    v21 = objc_msgSend_copy(expandedCopy, v17, v18, v19, v20);
    uidsExpanded = v14->_uidsExpanded;
    v14->_uidsExpanded = v21;

    v27 = v14->_uidsCollapsed;
    if (v27)
    {
      objc_msgSend_uuidsAsTSUVector(v27, v23, v24, v25, v26);
    }

    else
    {
      v34 = 0uLL;
      v35 = 0;
    }

    p_collapsedGroupUIDs = &v14->_collapsedGroupUIDs;
    begin = v14->_collapsedGroupUIDs.__begin_;
    if (begin)
    {
      v14->_collapsedGroupUIDs.__end_ = begin;
      operator delete(begin);
      p_collapsedGroupUIDs->__begin_ = 0;
      v14->_collapsedGroupUIDs.__end_ = 0;
      v14->_collapsedGroupUIDs.__cap_ = 0;
    }

    *&p_collapsedGroupUIDs->__begin_ = v34;
    v14->_collapsedGroupUIDs.__cap_ = v35;
    v30 = v14->_uidsExpanded;
    if (v30)
    {
      objc_msgSend_uuidsAsTSUVector(v30, v23, v24, v25, v26);
    }

    else
    {
      v34 = 0uLL;
      v35 = 0;
    }

    p_expandedGroupUIDs = &v14->_expandedGroupUIDs;
    v32 = v14->_expandedGroupUIDs.__begin_;
    if (v32)
    {
      v14->_expandedGroupUIDs.__end_ = v32;
      operator delete(v32);
      p_expandedGroupUIDs->__begin_ = 0;
      v14->_expandedGroupUIDs.__end_ = 0;
      v14->_expandedGroupUIDs.__cap_ = 0;
    }

    *&p_expandedGroupUIDs->__begin_ = v34;
    v14->_expandedGroupUIDs.__cap_ = v35;
    v14->_dimension = dimension;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTExpandCollapseState alloc];
  v9 = objc_msgSend_uidsCollapsed(self, v5, v6, v7, v8);
  v14 = objc_msgSend_uidsExpanded(self, v10, v11, v12, v13);
  v16 = objc_msgSend_initWithCollapsed_expanded_dimension_(v4, v15, v9, v14, self->_dimension);

  return v16;
}

- (TSTExpandCollapseState)initWithArchive:(const void *)archive
{
  v25.receiver = self;
  v25.super_class = TSTExpandCollapseState;
  v4 = [(TSTExpandCollapseState *)&v25 init];
  if (v4)
  {
    v5 = *(archive + 8);
    if (v5 >= 1)
    {
      v6 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v26, *(*(archive + 5) + v6));
        v24 = v26;
        sub_221083454(&v4->_collapsedGroupUIDs, &v24);
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    v7 = *(archive + 14);
    if (v7 >= 1)
    {
      v8 = 8;
      do
      {
        TSP::UUIDData::UUIDData(&v26, *(*(archive + 8) + v8));
        v24 = v26;
        sub_221083454(&v4->_expandedGroupUIDs, &v24);
        v8 += 8;
        --v7;
      }

      while (v7);
    }

    if (v4->_collapsedGroupUIDs.__end_ != v4->_collapsedGroupUIDs.__begin_)
    {
      v9 = [TSCEMutableUIDSet alloc];
      v13 = objc_msgSend_initWithTSUUUIDVector_(v9, v10, &v4->_collapsedGroupUIDs, v11, v12);
      uidsCollapsed = v4->_uidsCollapsed;
      v4->_uidsCollapsed = v13;
    }

    if (v4->_expandedGroupUIDs.__end_ != v4->_expandedGroupUIDs.__begin_)
    {
      v15 = [TSCEMutableUIDSet alloc];
      v19 = objc_msgSend_initWithTSUUUIDVector_(v15, v16, &v4->_expandedGroupUIDs, v17, v18);
      uidsExpanded = v4->_uidsExpanded;
      v4->_uidsExpanded = v19;
    }

    if (*(archive + 16))
    {
      v21 = *(archive + 18);
      if (v21 == -1)
      {
        v22 = -1;
      }

      else
      {
        v22 = v21 == 1;
      }

      v4->_dimension = v22;
    }
  }

  return v4;
}

- (void)saveToArchive:(void *)archive
{
  uidsCollapsed = self->_uidsCollapsed;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22113CF38;
  v15[3] = &unk_27845D920;
  v15[4] = archive;
  objc_msgSend_foreachUuid_(uidsCollapsed, a2, v15, v3, v4);
  uidsExpanded = self->_uidsExpanded;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22113CFEC;
  v14[3] = &unk_27845D920;
  v14[4] = archive;
  objc_msgSend_foreachUuid_(uidsExpanded, v9, v14, v10, v11);
  dimension = self->_dimension;
  if (dimension == -1)
  {
    v13 = -1;
  }

  else
  {
    v13 = dimension == 1;
  }

  *(archive + 4) |= 1u;
  *(archive + 18) = v13;
}

- (id)makeInverse
{
  v3 = [TSTExpandCollapseState alloc];
  v5 = objc_msgSend_initWithCollapsed_expanded_dimension_(v3, v4, self->_uidsExpanded, self->_uidsCollapsed, self->_dimension);

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end