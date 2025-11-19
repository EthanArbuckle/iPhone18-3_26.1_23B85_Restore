@interface TSTHeaderNameMgrTile
+ (id)medianStringFromArray:(id)a3;
- (TSTHeaderNameMgrTile)initWithHeaderNameMgr:(id)a3 context:(id)a4;
- (id).cxx_construct;
- (id)splitTile;
- (void)createFragmentEntryForString:(id)a3 createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)a4;
- (void)dealloc;
- (void)fragmentEntryForString:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)unpackAfterUnarchive:(id)a3;
@end

@implementation TSTHeaderNameMgrTile

- (TSTHeaderNameMgrTile)initWithHeaderNameMgr:(id)a3 context:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSTHeaderNameMgrTile;
  result = [(TSTHeaderNameMgrTile *)&v6 initWithContext:a4];
  if (result)
  {
    result->_headerNameMgr = a3;
    result->_tileLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)dealloc
{
  p_nameFragmentToEntry = &self->_nameFragmentToEntry;
  p_end_node = &self->_nameFragmentToEntry.__tree_.__end_node_;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[5].__left_;
      if (left)
      {

        sub_2212796F0((left + 2), left[3]);
        MEMORY[0x223DA1450](left, 0x10A0C409E7DBB34);
      }

      v7 = begin_node[1].__left_;
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  sub_2214115BC(p_nameFragmentToEntry, p_nameFragmentToEntry->__tree_.__end_node_.__left_);
  p_nameFragmentToEntry->__tree_.__begin_node_ = p_end_node;
  p_nameFragmentToEntry->__tree_.__end_node_.__left_ = 0;
  p_nameFragmentToEntry->__tree_.__size_ = 0;
  v10.receiver = self;
  v10.super_class = TSTHeaderNameMgrTile;
  [(TSTHeaderNameMgrTile *)&v10 dealloc];
}

+ (id)medianStringFromArray:(id)a3
{
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5, v6, v7))
  {
    v11 = objc_msgSend_sortedArrayUsingSelector_(v3, v8, sel_compare_, v9, v10);
    v16 = objc_msgSend_count(v3, v12, v13, v14, v15);
    v20 = objc_msgSend_objectAtIndex_(v3, v17, v16 >> 1, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)loadFromUnarchiver:(id)a3
{
  v25 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v25, v4, off_2812E4498[310], v5, v6);

  v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(v7 + 48) & 0xFFFFFFFFFFFFFFFELL, v9, v10);
  firstFragment = self->_firstFragment;
  self->_firstFragment = v11;

  v16 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v13, *(v7 + 56) & 0xFFFFFFFFFFFFFFFELL, v14, v15);
  lastFragment = self->_lastFragment;
  self->_lastFragment = v16;

  if (*(v7 + 32) >= 1)
  {
    v21 = *(*(v7 + 40) + 8);
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    v22 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v18, v21[3] & 0xFFFFFFFFFFFFFFFELL, v19, v20, v25);
    v26 = 0;
    v27 = v22;
    if (v21[4])
    {
      v23 = v21[4];
    }

    else
    {
      v23 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    v26 = sub_2212697C0(v23);
    if (v21[5])
    {
      v24 = v21[5];
    }

    else
    {
      v24 = &TSCE::_UidCellRefSetArchive_default_instance_;
    }

    sub_22127926C(&v28, v24);
    operator new();
  }
}

- (void)unpackAfterUnarchive:(id)a3
{
  v11 = a3;
  self->_headerNameMgr = v11;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    do
    {
      objc_msgSend_unpackEntryAfterUnarchive_(self->_headerNameMgr, v4, begin_node[5].__left_, v5, v6);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->super.super.isa == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != &self->_nameFragmentToEntry.__tree_.__end_node_);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2214117F0, off_2812E4498[310], v6);

  if (self->_headerNameMgr || (v12 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHeaderNameMgrTile saveToArchiver:]", v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 443, 0, "invalid nil value for '%{public}s'", "_headerNameMgr"), v17, v13, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22), self->_headerNameMgr))
  {
    firstFragment = self->_firstFragment;
    if (firstFragment)
    {
      v24 = objc_msgSend_tsp_protobufString(firstFragment, v8, v9, v10, v11);
      *(v7 + 16) |= 1u;
      sub_22108CCD0(__p, v24);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }
    }

    lastFragment = self->_lastFragment;
    if (lastFragment)
    {
      v26 = objc_msgSend_tsp_protobufString(lastFragment, v8, v9, v10, v11);
      *(v7 + 16) |= 2u;
      sub_22108CCD0(__p, v26);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v49 < 0)
      {
        operator delete(__p[0]);
      }
    }

    os_unfair_lock_lock(&self->_tileLock);
    begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
    if (begin_node != &self->_nameFragmentToEntry.__tree_.__end_node_)
    {
      while (1)
      {
        left = begin_node[5].__left_;
        if (left)
        {
          break;
        }

LABEL_31:
        isa = begin_node[1].__left_;
        if (isa)
        {
          do
          {
            v46 = isa;
            isa = isa->super.super.isa;
          }

          while (isa);
        }

        else
        {
          do
          {
            v46 = begin_node[2].__left_;
            v47 = v46->super.super.isa == begin_node;
            begin_node = v46;
          }

          while (!v47);
        }

        begin_node = v46;
        if (v46 == &self->_nameFragmentToEntry.__tree_.__end_node_)
        {
          goto LABEL_37;
        }
      }

      v29 = *(v7 + 40);
      if (!v29)
      {
        goto LABEL_16;
      }

      v30 = *(v7 + 32);
      v31 = *v29;
      if (v30 < *v29)
      {
        *(v7 + 32) = v30 + 1;
        v32 = *&v29[2 * v30 + 2];
LABEL_18:
        if (left[5])
        {
          v35 = left[5];
          v40 = objc_msgSend_tsp_protobufString(v35, v36, v37, v38, v39);
          *(v32 + 16) |= 1u;
          sub_22108CCD0(__p, v40);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v49 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(v32 + 16) |= 2u;
        v41 = *(v32 + 32);
        if (!v41)
        {
          v42 = *(v32 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v42);
          *(v32 + 32) = v41;
        }

        __p[0] = *(left + 4);
        sub_221269820(__p, v41);
        *(v32 + 16) |= 4u;
        v43 = *(v32 + 40);
        if (!v43)
        {
          v44 = *(v32 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v44);
          *(v32 + 40) = v43;
        }

        os_unfair_lock_lock(left);
        sub_2212790F0(left + 2, v43);
        os_unfair_lock_unlock(left);
        goto LABEL_31;
      }

      if (v31 == *(v7 + 36))
      {
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
        v29 = *(v7 + 40);
        v31 = *v29;
      }

      *v29 = v31 + 1;
      v32 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrTileArchive_NameFragmentArchive>(*(v7 + 24));
      v33 = *(v7 + 32);
      v34 = *(v7 + 40) + 8 * v33;
      *(v7 + 32) = v33 + 1;
      *(v34 + 8) = v32;
      goto LABEL_18;
    }

LABEL_37:
    os_unfair_lock_unlock(&self->_tileLock);
  }
}

- (void)fragmentEntryForString:(id)a3
{
  v11 = a3;
  if (!objc_msgSend_length(v11, v4, v5, v6, v7) || (v8 = sub_22141185C(&self->_nameFragmentToEntry, &v11), &self->_nameFragmentToEntry.__tree_.__end_node_ == v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 40);
  }

  return v9;
}

- (void)createFragmentEntryForString:(id)a3 createIfMissingUsingPrecedentCoord:(const TSUCellCoord *)a4
{
  v6 = a3;
  obj = v6;
  if (objc_msgSend_length(v6, v7, v8, v9, v10))
  {
    v11 = *a4;
    v12 = sub_22141185C(&self->_nameFragmentToEntry, &obj);
    if (&self->_nameFragmentToEntry.__tree_.__end_node_ == v12)
    {
      objc_msgSend_addChangedTile_(self->_headerNameMgr, v13, self, v14, v15, v11);
      if (v11.row == 0x7FFFFFFF || (*&v11 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        objc_msgSend_getNextPrecedentCoord_(self->_headerNameMgr, v17, 0, v18, v19);
      }

      operator new();
    }

    v16 = *(v12 + 40);
    v6 = obj;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)splitTile
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_count(self, a2, v2, v3, v4);
  v7 = 0;
  v8 = 88;
  v75 = self;
  p_nameFragmentToEntry = &self->_nameFragmentToEntry;
  begin_node = self->_nameFragmentToEntry.__tree_.__begin_node_;
  do
  {
    delegate = begin_node->super._delegate;
    v12 = begin_node;
    if (delegate)
    {
      do
      {
        begin_node = delegate;
        delegate = *delegate;
      }

      while (delegate);
    }

    else
    {
      do
      {
        begin_node = v12[2];
        v13 = begin_node->super.super.isa == v12;
        v12 = begin_node;
      }

      while (!v13);
    }

    v13 = v7++ == v6 >> 1;
  }

  while (!v13);
  p_end_node = &self->_nameFragmentToEntry.__tree_.__end_node_;
  if (begin_node == &self->_nameFragmentToEntry.__tree_.__end_node_)
  {
    v18 = 0;
    goto LABEL_33;
  }

  v18 = begin_node->super._UUID;
  if (!v18)
  {
LABEL_33:
    v28 = 0;
    goto LABEL_34;
  }

  objc_msgSend_addChangedTile_(v75->_headerNameMgr, v15, v75, v16, v17);
  v19 = [TSTHeaderNameMgrTile alloc];
  headerNameMgr = v75->_headerNameMgr;
  v25 = objc_msgSend_context(headerNameMgr, v21, v22, v23, v24);
  v28 = objc_msgSend_initWithHeaderNameMgr_context_(v19, v26, headerNameMgr, v25, v27);

  v33 = objc_msgSend_lastFragment(v75, v29, v30, v31, v32);
  objc_msgSend_setLastFragment_(v28, v34, v33, v35, v36);

  v37 = objc_alloc(MEMORY[0x277CBEB18]);
  v76 = objc_msgSend_initWithCapacity_(v37, v38, 25000, v39, v40);
  v44 = *p_nameFragmentToEntry;
  if (*p_nameFragmentToEntry != p_end_node)
  {
    do
    {
      v45 = v44 + 4;
      if (objc_msgSend_compare_(v18, v41, v44[4], v42, v43, v75) == -1)
      {
        objc_msgSend_addObject_(v76, v41, *v45, v42, v43);
        v46 = v44[5];
        v81 = v44 + 4;
        *(sub_221411618(v28 + v8, v44 + 4) + 40) = v46;
        v52 = objc_msgSend_firstFragment(v28, v47, v48, v49, v50);
        if (!v52 || (v53 = v8, v54 = *v45, objc_msgSend_firstFragment(v28, v41, v51, v42, v43), v55 = objc_claimAutoreleasedReturnValue(), LODWORD(v54) = objc_msgSend_compare_(v54, v56, v55, v57, v58) == -1, v55, v52, v8 = v53, v54))
        {
          objc_msgSend_setFirstFragment_(v28, v41, *v45, v42, v43);
        }
      }

      v59 = v44[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v44[2];
          v13 = *v60 == v44;
          v44 = v60;
        }

        while (!v13);
      }

      v44 = v60;
    }

    while (v60 != p_end_node);
  }

  os_unfair_lock_lock(&v75->_tileLock);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v61 = v76;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v77, v82, 16);
  if (v63)
  {
    v64 = *v78;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v81 = *(*(&v77 + 1) + 8 * i);
        sub_2214118EC(p_nameFragmentToEntry, &v81);
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v66, &v77, v82, 16);
    }

    while (v63);
  }

  os_unfair_lock_unlock(&v75->_tileLock);
  objc_msgSend_setLastFragment_(v75, v67, v18, v68, v69);
  if (!objc_msgSend_count(v28, v70, v71, v72, v73))
  {

    v28 = 0;
  }

LABEL_34:

  return v28;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

@end