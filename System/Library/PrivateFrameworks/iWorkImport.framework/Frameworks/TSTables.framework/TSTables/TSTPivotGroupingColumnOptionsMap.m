@interface TSTPivotGroupingColumnOptionsMap
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)keys;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)pivotOptionsForUID:(TSKUIDStruct)a3;
- (id)prunedCopyWithUids:(void *)a3;
- (void)clear;
- (void)enumerateOptionsUsingBlock:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setPivotOptions:(id)a3 forUid:(TSKUIDStruct)a4;
@end

@implementation TSTPivotGroupingColumnOptionsMap

- (id)pivotOptionsForUID:(TSKUIDStruct)a3
{
  v11 = a3;
  p_optionsForUidMap = &self->_optionsForUidMap;
  v4 = sub_22112C8D0(&self->_optionsForUidMap, &v11._lower);
  if (&p_optionsForUidMap->__tree_.__end_node_ == v4)
  {
    v9 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v5, v6, v7, v8);
  }

  else
  {
    v9 = v4[6].__left_;
  }

  return v9;
}

- (void)setPivotOptions:(id)a3 forUid:(TSKUIDStruct)a4
{
  v17 = a4;
  v6 = a3;
  objc_msgSend_willModify(self, v7, v8, v9, v10, v17._lower, v17._upper);
  p_optionsForUidMap = &self->_optionsForUidMap;
  if (objc_msgSend_isNotEmpty(v6, v11, v12, v13, v14))
  {
    v18 = &v17;
    v16 = sub_2213D96C4(p_optionsForUidMap, &v17._lower);
    objc_storeStrong((v16 + 48), a3);
  }

  else if (&p_optionsForUidMap->__tree_.__end_node_ != sub_22112C8D0(p_optionsForUidMap, &v17._lower))
  {
    sub_2213D977C(p_optionsForUidMap, &v17._lower);
  }
}

- (void)clear
{
  p_optionsForUidMap = &self->_optionsForUidMap;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  sub_2213D9800(&self->_optionsForUidMap, self->_optionsForUidMap.__tree_.__end_node_.__left_);
  p_optionsForUidMap->__tree_.__begin_node_ = p_end_node;
  p_optionsForUidMap->__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)keys
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = self + 3;
  cap = self[2].__cap_;
  if (cap != &self[3])
  {
    v6 = 0;
    do
    {
      v7 = retstr->__cap_;
      if (v6 >= v7)
      {
        v8 = v6 - retstr->__begin_;
        if ((v8 + 1) >> 60)
        {
          sub_22107C148();
        }

        v9 = v7 - retstr->__begin_;
        v10 = v9 >> 3;
        if (v9 >> 3 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_221086F74(retstr, v11);
        }

        v12 = (16 * v8);
        *v12 = cap[2];
        v6 = (16 * v8 + 16);
        v13 = retstr->__end_ - retstr->__begin_;
        v14 = (16 * v8 - v13);
        memcpy(v12 - v13, retstr->__begin_, v13);
        self = retstr->__begin_;
        retstr->__begin_ = v14;
        retstr->__end_ = v6;
        retstr->__cap_ = 0;
        if (self)
        {
          operator delete(self);
        }
      }

      else
      {
        *v6++ = cap[2];
      }

      retstr->__end_ = v6;
      upper = cap->_upper;
      if (upper)
      {
        do
        {
          lower = upper;
          upper = upper->__begin_;
        }

        while (upper);
      }

      else
      {
        do
        {
          lower = cap[1]._lower;
          v17 = lower->__begin_ == cap;
          cap = lower;
        }

        while (!v17);
      }

      cap = lower;
    }

    while (lower != v4);
  }

  return self;
}

- (void)enumerateOptionsUsingBlock:(id)a3
{
  v4 = a3;
  v13 = 0;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v12 = *&begin_node[4].__left_;
      v7 = begin_node[6].__left_;
      v4[2](v4, &v12, v7, &v13);
      v8 = v13;

      if (v8)
      {
        break;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSTPivotGroupingColumnOptionsMap alloc];
  v9 = objc_msgSend_context(self, v5, v6, v7, v8);
  v13 = objc_msgSend_initWithContext_(v4, v10, v9, v11, v12);

  self = (self + 64);
  isa = self->super.super.isa;
  p_delegate = &self->super._delegate;
  v16 = isa;
  if (isa != p_delegate)
  {
    do
    {
      objc_msgSend_setPivotOptions_forUid_(v13, v14, *(v16 + 6), *(v16 + 4), *(v16 + 5));
      v18 = *(v16 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v16 + 2);
          v20 = *v19 == v16;
          v16 = v19;
        }

        while (!v20);
      }

      v16 = v19;
    }

    while (v19 != p_delegate);
  }

  return v13;
}

- (id)prunedCopyWithUids:(void *)a3
{
  v5 = [TSTPivotGroupingColumnOptionsMap alloc];
  v10 = objc_msgSend_context(self, v6, v7, v8, v9);
  v14 = objc_msgSend_initWithContext_(v5, v11, v10, v12, v13);

  v17 = *a3;
  v18 = *(a3 + 1);
  while (v17 != v18)
  {
    v19 = *v17;
    v20 = v17[1];
    v21 = objc_msgSend_pivotOptionsForUID_(self, v15, *v17, v20, v16);
    objc_msgSend_setPivotOptions_forUid_(v14, v22, v21, v19, v20);

    v17 += 2;
  }

  return v14;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[280], v6, v7);

  v10 = *(v8 + 24);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if (i >= *(v8 + 64))
      {
        v14 = 0;
        v12 = 0;
      }

      else
      {
        v12 = TSKUIDStruct::loadFromMessage(*(*(v8 + 72) + 8 * i + 8), v9);
        v14 = v13;
      }

      v15 = [TSTPivotGroupingColumnOptions alloc];
      v17 = objc_msgSend_initWithFlags_sortingAggregateRuleUid_(v15, v16, *(*(v8 + 48) + 4 * i), v12, v14);
      TSP::UUIDData::UUIDData(v19, *(*(v8 + 32) + 8 * i + 8));
      objc_msgSend_setPivotOptions_forUid_(self, v18, v17, v19[0], v19[1]);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2213D985C, off_2812E4498[280], v6);

  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v40 = *&begin_node[4].__left_;
      v10 = begin_node[6].__left_;
      v11 = *(v7 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = *(v7 + 24);
      v13 = *v11;
      if (v12 < *v11)
      {
        *(v7 + 24) = v12 + 1;
        v14 = *&v11[2 * v12 + 2];
        goto LABEL_9;
      }

      if (v13 == *(v7 + 28))
      {
LABEL_7:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 16));
        v11 = *(v7 + 32);
        v13 = *v11;
      }

      *v11 = v13 + 1;
      v14 = MEMORY[0x223DA0360](*(v7 + 16));
      v15 = *(v7 + 24);
      v16 = *(v7 + 32) + 8 * v15;
      *(v7 + 24) = v15 + 1;
      *(v16 + 8) = v14;
LABEL_9:
      TSKUIDStruct::saveToMessage(&v40, v14);
      v21 = objc_msgSend_flags(v10, v17, v18, v19, v20);
      v26 = v21;
      v27 = *(v7 + 40);
      if (v27 == *(v7 + 44))
      {
        v28 = v27 + 1;
        sub_2210BBC64((v7 + 40), v27 + 1);
        *(*(v7 + 48) + 4 * v27) = v26;
      }

      else
      {
        *(*(v7 + 48) + 4 * v27) = v21;
        v28 = v27 + 1;
      }

      *(v7 + 40) = v28;
      v39._lower = objc_msgSend_sortingAggregateRuleUid(v10, v22, v23, v24, v25, v39._lower, v39._upper);
      v39._upper = v29;
      v30 = *(v7 + 72);
      if (!v30)
      {
        goto LABEL_17;
      }

      v31 = *(v7 + 64);
      v32 = *v30;
      if (v31 >= *v30)
      {
        if (v32 == *(v7 + 68))
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 56));
          v30 = *(v7 + 72);
          v32 = *v30;
        }

        *v30 = v32 + 1;
        v33 = MEMORY[0x223DA0360](*(v7 + 56));
        v34 = *(v7 + 64);
        v35 = *(v7 + 72) + 8 * v34;
        *(v7 + 64) = v34 + 1;
        *(v35 + 8) = v33;
        goto LABEL_19;
      }

      *(v7 + 64) = v31 + 1;
      v33 = *&v30[2 * v31 + 2];
LABEL_19:
      TSKUIDStruct::saveToMessage(&v39, v33);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v37 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v37 = begin_node[2].__left_;
          v38 = v37->__left_ == begin_node;
          begin_node = v37;
        }

        while (!v38);
      }

      begin_node = v37;
    }

    while (v37 != p_end_node);
  }
}

- (id)description
{
  v43 = objc_opt_new();
  objc_msgSend_appendFormat_(v43, v3, @"TSTPivotGroupingColumnOptionsMap %p\n", v4, v5, self);
  begin_node = self->_optionsForUidMap.__tree_.__begin_node_;
  p_end_node = &self->_optionsForUidMap.__tree_.__end_node_;
  if (begin_node != &self->_optionsForUidMap.__tree_.__end_node_)
  {
    do
    {
      v45 = *&begin_node[4].__left_;
      v7 = begin_node[6].__left_;
      v8 = TSKUIDStruct::description(&v45);
      if (objc_msgSend_sortByGrandTotal(v7, v9, v10, v11, v12))
      {
        v17 = @"Y";
      }

      else
      {
        v17 = @"N";
      }

      if (objc_msgSend_sortDescending(v7, v13, v14, v15, v16))
      {
        v22 = @"Y";
      }

      else
      {
        v22 = @"N";
      }

      if (objc_msgSend_repeatLabels(v7, v18, v19, v20, v21))
      {
        v27 = @"Y";
      }

      else
      {
        v27 = @"N";
      }

      if (objc_msgSend_hideTotals(v7, v23, v24, v25, v26))
      {
        v32 = @"Y";
      }

      else
      {
        v32 = @"N";
      }

      v44._lower = objc_msgSend_sortingAggregateRuleUid(v7, v28, v29, v30, v31);
      v44._upper = v33;
      v34 = TSKUIDStruct::description(&v44);
      objc_msgSend_appendFormat_(v43, v35, @"uid:%@, sortByGrTotal:%@, sortDesc:%@, repeatLbls:%@, hideTtls:%@, sortAggRuleUid:%@\n", v36, v37, v8, v17, v22, v27, v32, v34);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v39 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v39 = begin_node[2].__left_;
          v40 = v39->__left_ == begin_node;
          begin_node = v39;
        }

        while (!v40);
      }

      begin_node = v39;
    }

    while (v39 != p_end_node);
  }

  return v43;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 8) = self + 72;
  return self;
}

@end