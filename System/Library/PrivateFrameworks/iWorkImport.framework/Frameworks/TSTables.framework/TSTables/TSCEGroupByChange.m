@interface TSCEGroupByChange
- (TSCEGroupByChange)initWithArchive:(const void *)a3;
- (TSCEGroupByChange)initWithType:(unsigned __int8)a3 groupByUid:(const TSKUIDStruct *)a4;
- (TSCEGroupByChange)initWithType:(unsigned __int8)a3 groupingColumnChanges:(const void *)a4 groupByUid:(const TSKUIDStruct *)a5;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)previousGroupNodeUidForUpdatedGroupNodeUid:(const TSKUIDStruct *)a3;
- (TSKUIDStruct)updatedGroupNodeUidForPreviousGroupNodeUid:(const TSKUIDStruct *)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)previousRelativeAncestorLevelForUpdatedAncestorCategoryLevel:(unsigned __int8)a3 numLevels:(unsigned __int8)a4;
- (unsigned)updatedRelativeAncestorLevelForPreviousAncestorCategoryLevel:(unsigned __int8)a3 numLevels:(unsigned __int8)a4;
- (void)addRemoveOfGroupUid:(const TSKUIDStruct *)a3;
- (void)mapPreviousGroupNodeUid:(const TSKUIDStruct *)a3 toUpdatedGroupNodeUid:(const TSKUIDStruct *)a4;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCEGroupByChange

- (TSCEGroupByChange)initWithType:(unsigned __int8)a3 groupByUid:(const TSKUIDStruct *)a4
{
  v7.receiver = self;
  v7.super_class = TSCEGroupByChange;
  result = [(TSCEGroupByChange *)&v7 init];
  if (result)
  {
    result->_changeType = a3;
    result->_groupByUid = *a4;
    *&result->_previousLevel = -1;
    result->_isInverse = 0;
  }

  return result;
}

- (TSCEGroupByChange)initWithType:(unsigned __int8)a3 groupingColumnChanges:(const void *)a4 groupByUid:(const TSKUIDStruct *)a5
{
  v6 = objc_msgSend_initWithType_groupByUid_(self, a2, a3, a5, a5);
  v7 = v6;
  if (v6)
  {
    v8 = (v6 + 56);
    if (&v7->_groupingColumnChanges != a4)
    {
      sub_22123F6E0(v8, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 1);
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSCEGroupByChange alloc];
  v6 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v4, v5, self->_changeType, &self->_groupingColumnChanges, &self->_groupByUid);
  objc_msgSend_setPreviousLevel_(v6, v7, self->_previousLevel, v8, v9);
  objc_msgSend_setUpdatedLevel_(v6, v10, self->_updatedLevel, v11, v12);
  objc_msgSend_setIsInverse_(v6, v13, self->_isInverse, v14, v15);
  for (i = &self->_previousGroupNodeToUpdated.__table_.__first_node_; ; objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(v6, v16, &i[2], &i[4], v17))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  for (j = &self->_updatedGroupNodeToPrevious.__table_.__first_node_; ; objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(v6, v16, &j[4], &j[2], v17))
  {
    j = j->__next_;
    if (!j)
    {
      break;
    }
  }

  return v6;
}

- (void)addRemoveOfGroupUid:(const TSKUIDStruct *)a3
{
  removedGroupNodeUids = self->_removedGroupNodeUids;
  if (!removedGroupNodeUids)
  {
    v7 = objc_opt_new();
    v8 = self->_removedGroupNodeUids;
    self->_removedGroupNodeUids = v7;

    removedGroupNodeUids = self->_removedGroupNodeUids;
  }

  lower = a3->_lower;
  upper = a3->_upper;

  objc_msgSend_addUUID_(removedGroupNodeUids, a2, lower, upper, v3);
}

- (void)mapPreviousGroupNodeUid:(const TSKUIDStruct *)a3 toUpdatedGroupNodeUid:(const TSKUIDStruct *)a4
{
  *(sub_221230440(&self->_previousGroupNodeToUpdated.__table_.__bucket_list_.__ptr_, a3) + 2) = *a4;
  *(sub_221230440(&self->_updatedGroupNodeToPrevious.__table_.__bucket_list_.__ptr_, a4) + 2) = *a3;
  previousGroupNodeUids = self->_previousGroupNodeUids;
  if (!previousGroupNodeUids)
  {
    v10 = objc_opt_new();
    v11 = self->_previousGroupNodeUids;
    self->_previousGroupNodeUids = v10;

    v12 = objc_opt_new();
    updatedGroupNodeUids = self->_updatedGroupNodeUids;
    self->_updatedGroupNodeUids = v12;

    previousGroupNodeUids = self->_previousGroupNodeUids;
  }

  objc_msgSend_addUUID_(previousGroupNodeUids, v7, a3->_lower, a3->_upper, v8);
  objc_msgSend_addUUID_(self->_updatedGroupNodeUids, v14, a4->_lower, a4->_upper, v15);
}

- (TSKUIDStruct)previousGroupNodeUidForUpdatedGroupNodeUid:(const TSKUIDStruct *)a3
{
  lower = a3->_lower;
  upper = a3->_upper;
  v5 = sub_2210875C4(&self->_updatedGroupNodeToPrevious.__table_.__bucket_list_.__ptr_, a3);
  if (v5)
  {
    lower = v5[4];
    upper = v5[5];
  }

  v6 = lower;
  v7 = upper;
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (TSKUIDStruct)updatedGroupNodeUidForPreviousGroupNodeUid:(const TSKUIDStruct *)a3
{
  lower = a3->_lower;
  upper = a3->_upper;
  v5 = sub_2210875C4(&self->_previousGroupNodeToUpdated.__table_.__bucket_list_.__ptr_, a3);
  if (v5)
  {
    lower = v5[4];
    upper = v5[5];
  }

  v6 = lower;
  v7 = upper;
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (unsigned)previousRelativeAncestorLevelForUpdatedAncestorCategoryLevel:(unsigned __int8)a3 numLevels:(unsigned __int8)a4
{
  v4 = a4 - a3;
  changeType = self->_changeType;
  if (changeType == 3)
  {
    if (self->_previousLevel >= v4)
    {
      ++a3;
    }
  }

  else if (changeType == 4)
  {
    a3 -= self->_previousLevel >= v4;
  }

  return a3;
}

- (unsigned)updatedRelativeAncestorLevelForPreviousAncestorCategoryLevel:(unsigned __int8)a3 numLevels:(unsigned __int8)a4
{
  changeType = self->_changeType;
  if (changeType <= 6)
  {
    if (((1 << changeType) & 0x67) != 0)
    {
      return -1;
    }

    else
    {
      v6 = a4 - a3 + 1;
      if (changeType == 3)
      {
        a3 -= self->_previousLevel >= v6;
      }

      else if (self->_previousLevel >= v6)
      {
        ++a3;
      }
    }
  }

  return a3;
}

- (TSCEGroupByChange)initWithArchive:(const void *)a3
{
  if (*(a3 + 9))
  {
    v5 = *(a3 + 9);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  v53[0] = TSKUIDStruct::loadFromMessage(v5, a2);
  v53[1] = v6;
  v8 = objc_msgSend_initWithType_groupByUid_(self, v6, *(a3 + 96), v53, v7);
  if (v8)
  {
    v9 = objc_opt_new();
    previousGroupNodeUids = v8->_previousGroupNodeUids;
    v8->_previousGroupNodeUids = v9;

    v11 = objc_opt_new();
    updatedGroupNodeUids = v8->_updatedGroupNodeUids;
    v8->_updatedGroupNodeUids = v11;

    v14 = *(a3 + 4);
    v15 = *(a3 + 100);
    if ((v14 & 0x10) == 0)
    {
      v15 = -1;
    }

    v8->_previousLevel = v15;
    v16 = *(a3 + 104);
    if ((v14 & 0x20) == 0)
    {
      v16 = -1;
    }

    v8->_updatedLevel = v16;
    v17 = *(a3 + 14);
    if (v17 > 0)
    {
      end = v8->_groupingColumnChanges.__end_;
      v19 = 8;
      do
      {
        v20 = *(*(a3 + 8) + v19);
        v22 = *(v20 + 24);
        v21 = *(v20 + 28);
        cap = v8->_groupingColumnChanges.__cap_;
        if (end >= cap)
        {
          begin = v8->_groupingColumnChanges.__begin_;
          v25 = end - begin;
          v26 = (end - begin) >> 1;
          if (v26 <= -2)
          {
            sub_22107C148();
          }

          v27 = cap - begin;
          if (v27 <= v26 + 1)
          {
            v28 = v26 + 1;
          }

          else
          {
            v28 = v27;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            sub_22115DB94(&v8->_groupingColumnChanges, v29);
          }

          v30 = v26;
          v31 = (2 * v26);
          *v31 = v22;
          v31[1] = v21;
          end = (2 * v26 + 2);
          v32 = &v31[-2 * v30];
          memcpy(v32, begin, v25);
          v33 = v8->_groupingColumnChanges.__begin_;
          v8->_groupingColumnChanges.__begin_ = v32;
          v8->_groupingColumnChanges.__end_ = end;
          v8->_groupingColumnChanges.__cap_ = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *end = v22;
          *(end + 1) = v21;
          end = (end + 2);
        }

        v8->_groupingColumnChanges.__end_ = end;
        v19 += 8;
        --v17;
      }

      while (v17);
      v14 = *(a3 + 4);
    }

    if ((v14 & 2) != 0)
    {
      sub_2212696E0(*(a3 + 10), v13, v52);
      sub_22120A3D8(&v8->_previousGroupNodeToUpdated, v52);
      sub_2210BDEC0(v52);
      for (i = &v8->_previousGroupNodeToUpdated.__table_.__first_node_; ; objc_msgSend_addUUID_(v8->_updatedGroupNodeUids, v36, i[4].__next_, i[5].__next_, v37))
      {
        i = i->__next_;
        if (!i)
        {
          break;
        }

        objc_msgSend_addUUID_(v8->_previousGroupNodeUids, v13, i[2].__next_, i[3].__next_, v34);
      }

      v14 = *(a3 + 4);
    }

    if ((v14 & 4) != 0)
    {
      sub_2212696E0(*(a3 + 11), v13, v52);
      sub_22120A3D8(&v8->_updatedGroupNodeToPrevious, v52);
      sub_2210BDEC0(v52);
      for (j = &v8->_updatedGroupNodeToPrevious.__table_.__first_node_; ; objc_msgSend_addUUID_(v8->_updatedGroupNodeUids, v50, j[2].__next_, j[3].__next_, v51))
      {
        j = j->__next_;
        if (!j)
        {
          break;
        }

        objc_msgSend_addUUID_(v8->_previousGroupNodeUids, v47, j[4].__next_, j[5].__next_, v48);
      }
    }

    v38 = *(a3 + 8);
    if (v38)
    {
      v39 = objc_opt_new();
      removedGroupNodeUids = v8->_removedGroupNodeUids;
      v8->_removedGroupNodeUids = v39;

      if (v38 >= 1)
      {
        v42 = 8;
        do
        {
          v43 = TSKUIDStruct::loadFromMessage(*(*(a3 + 5) + v42), v41);
          objc_msgSend_addUUID_(v8->_removedGroupNodeUids, v44, v43, v44, v45);
          v42 += 8;
          --v38;
        }

        while (v38);
      }
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)a3
{
  v5 = *(a3 + 4);
  *(a3 + 24) = self->_changeType;
  *(a3 + 4) = v5 | 9;
  v6 = *(a3 + 9);
  if (!v6)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(a3 + 9) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_groupByUid, v6);
  previousLevel = self->_previousLevel;
  if (previousLevel != 255)
  {
    *(a3 + 4) |= 0x10u;
    *(a3 + 25) = previousLevel;
  }

  updatedLevel = self->_updatedLevel;
  if (updatedLevel != 255)
  {
    *(a3 + 4) |= 0x20u;
    *(a3 + 26) = updatedLevel;
  }

  begin = self->_groupingColumnChanges.__begin_;
  end = self->_groupingColumnChanges.__end_;
  while (begin != end)
  {
    v16 = *(a3 + 8);
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *(a3 + 14);
    v18 = *v16;
    if (v17 < *v16)
    {
      *(a3 + 14) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
      goto LABEL_18;
    }

    if (v18 == *(a3 + 15))
    {
LABEL_16:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
      v16 = *(a3 + 8);
      v18 = *v16;
    }

    *v16 = v18 + 1;
    v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive_GroupingColumnChangeArchive>(*(a3 + 6));
    v20 = *(a3 + 14);
    v21 = *(a3 + 8) + 8 * v20;
    *(a3 + 14) = v20 + 1;
    *(v21 + 8) = v19;
LABEL_18:
    v22 = *begin;
    v23 = *(begin + 1);
    v19[4] |= 3u;
    v19[6] = v22;
    v19[7] = v23;
    begin = (begin + 2);
  }

  if (self->_previousGroupNodeToUpdated.__table_.__size_)
  {
    *(a3 + 4) |= 2u;
    v24 = *(a3 + 10);
    if (!v24)
    {
      v25 = *(a3 + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x223DA0310](v25);
      *(a3 + 10) = v24;
    }

    TSKUIDStructMap::saveToMessage(&self->_previousGroupNodeToUpdated, v24);
  }

  if (self->_updatedGroupNodeToPrevious.__table_.__size_)
  {
    *(a3 + 4) |= 4u;
    v26 = *(a3 + 11);
    if (!v26)
    {
      v27 = *(a3 + 1);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x223DA0310](v27);
      *(a3 + 11) = v26;
    }

    TSKUIDStructMap::saveToMessage(&self->_updatedGroupNodeToPrevious, v26);
  }

  if (objc_msgSend_count(self->_removedGroupNodeUids, v8, v9, v10, v11))
  {
    removedGroupNodeUids = self->_removedGroupNodeUids;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_22123F514;
    v32[3] = &unk_27845D920;
    v32[4] = a3;
    objc_msgSend_foreachUuid_(removedGroupNodeUids, v28, v32, v29, v30);
  }
}

- (TSKUIDStruct)groupByUid
{
  upper = self->_groupByUid._upper;
  lower = self->_groupByUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 28) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

@end