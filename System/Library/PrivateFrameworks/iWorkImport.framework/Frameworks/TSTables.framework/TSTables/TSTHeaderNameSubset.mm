@interface TSTHeaderNameSubset
- (TSCECellRefSet)headerCellsExactlyMatching:(SEL)matching;
- (TSCECellRefSet)headerCellsMatchingPrefix:(SEL)prefix;
- (TSKUIDStruct)limitedToTableUID;
- (TSTHeaderNameSubset)initWithHeaderNameMgr:(id)mgr limitToTableUID:(const TSKUIDStruct *)d;
- (id).cxx_construct;
- (id)description;
- (void)loadSubsetWithExactMatches:(const void *)matches prefixMatches:(const void *)prefixMatches;
@end

@implementation TSTHeaderNameSubset

- (TSTHeaderNameSubset)initWithHeaderNameMgr:(id)mgr limitToTableUID:(const TSKUIDStruct *)d
{
  mgrCopy = mgr;
  v11.receiver = self;
  v11.super_class = TSTHeaderNameSubset;
  v8 = [(TSTHeaderNameSubset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hnm, mgr);
    v9->_limitedToTableUID = *d;
  }

  return v9;
}

- (void)loadSubsetWithExactMatches:(const void *)matches prefixMatches:(const void *)prefixMatches
{
  v8 = objc_msgSend_calcEngine(self->_hnm, a2, matches, prefixMatches, v4);
  for (i = *(matches + 2); i; i = *i)
  {
    if ((sub_221278D0C(i + 3) & 1) == 0)
    {
      sub_221279358(i + 3, v8, &v13);
      if ((TSCECellRefSet::isEmpty(&v13) & 1) == 0)
      {
        v15 = (i + 2);
        v10 = sub_221411970(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, i + 2, &unk_2217E1BE8, &v15, &v14);
        TSCECellRefSet::operator=(v10 + 3, &v13);
      }

      sub_22107C800(&v13, v13._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }

  for (j = *(prefixMatches + 2); j; j = *j)
  {
    if ((sub_221278D0C(j + 3) & 1) == 0)
    {
      sub_221279358(j + 3, v8, &v13);
      if ((TSCECellRefSet::isEmpty(&v13) & 1) == 0)
      {
        v15 = (j + 2);
        v12 = sub_221411970(&self->_prefixStringsInHeaderCells.__table_.__bucket_list_.__ptr_, j + 2, &unk_2217E1BE8, &v15, &v14);
        TSCECellRefSet::operator=(v12 + 3, &v13);
      }

      sub_22107C800(&v13, v13._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }
}

- (TSCECellRefSet)headerCellsExactlyMatching:(SEL)matching
{
  v6 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x4812000000;
  v52 = sub_221408BA8;
  v53 = sub_221408BB4;
  v54 = &unk_22188E88F;
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  if (objc_msgSend_length(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_namePrefixIndex(self->_hnm, v11, v12, v13, v14);
    v19 = objc_msgSend_foldName_(v15, v16, v6, v17, v18);

    v48._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v48._coordsForOwnerUid.__tree_.__size_ = 0;
    v48._coordsForOwnerUid.__tree_.__begin_node_ = &v48._coordsForOwnerUid.__tree_.__end_node_;
    hnm = self->_hnm;
    if (hnm)
    {
      objc_msgSend_wordFragmentsFromString_savePreserveFlags_(hnm, v20, v19, 0, v21);
      v23 = v45;
      v24 = v46;
      if (v45 != v46)
      {
        v25 = 1;
        while (1)
        {
          v43[0] = *v23;
          v29 = sub_221411C68(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, v43, v26, v27, v28);
          if (!v29)
          {
            break;
          }

          if (v25)
          {
            TSCECellRefSet::operator=(&v48, v29 + 3);
          }

          else
          {
            TSCECellRefSet::intersectWith(&v48, v29 + 1);
          }

          v25 = 0;
          if (++v23 == v24)
          {
            goto LABEL_14;
          }
        }

        TSCECellRefSet::clear(&v48);
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
    }

LABEL_14:
    if ((TSCECellRefSet::isEmpty(&v48) & 1) == 0)
    {
      v34 = objc_msgSend_calcEngine(self->_hnm, v30, v31, v32, v33);
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3032000000;
      v43[3] = sub_221408BC0;
      v43[4] = sub_221408BD0;
      v44 = 0;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_221408BD8;
      v37[3] = &unk_278464A68;
      v41 = v43;
      v38 = v34;
      selfCopy = self;
      v40 = v19;
      v42 = &v49;
      v35 = v34;
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v48, v37);

      _Block_object_dispose(v43, 8);
    }

    v43[0] = &v45;
    sub_22107C2C0(v43);
    sub_22107C800(&v48, v48._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  else
  {
    v19 = v6;
  }

  TSCECellRefSet::TSCECellRefSet(retstr, v50 + 2);
  _Block_object_dispose(&v49, 8);
  sub_22107C800(&v55, v56[0]);

  return result;
}

- (TSCECellRefSet)headerCellsMatchingPrefix:(SEL)prefix
{
  v6 = a4;
  v73 = 0;
  v74 = &v73;
  v75 = 0x4812000000;
  v76 = sub_221408BA8;
  v77 = sub_221408BB4;
  v78 = &unk_22188E88F;
  v80[0] = 0;
  v80[1] = 0;
  v79 = v80;
  if ((objc_msgSend_includesPrefixes(self, v7, v8, v9, v10) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTHeaderNameSubset headerCellsMatchingPrefix:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 710, 0, "Warning: asking for prefix matching, but this search result didn't specify prefixes when it was created");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (!objc_msgSend_length(v6, v11, v12, v13, v14))
  {
    goto LABEL_27;
  }

  v30 = objc_msgSend_namePrefixIndex(self->_hnm, v26, v27, v28, v29);
  v34 = objc_msgSend_foldName_(v30, v31, v6, v32, v33);

  v72._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v72._coordsForOwnerUid.__tree_.__size_ = 0;
  v72._coordsForOwnerUid.__tree_.__begin_node_ = &v72._coordsForOwnerUid.__tree_.__end_node_;
  hnm = self->_hnm;
  v57 = v34;
  if (!hnm)
  {
    v38 = retstr;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_24;
  }

  v38 = retstr;
  objc_msgSend_wordFragmentsFromString_savePreserveFlags_(hnm, v35, v34, 0, v36);
  v40 = v69;
  v39 = v70;
  if (v69 == v70)
  {
    goto LABEL_24;
  }

  v41 = 0;
  v42 = v70 - v69 - 1;
  v43 = 1;
  while (1)
  {
    v68 = *v40;
    if (v41 == v42)
    {
      v64._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v64._coordsForOwnerUid.__tree_.__size_ = 0;
      v64._coordsForOwnerUid.__tree_.__begin_node_ = &v64._coordsForOwnerUid.__tree_.__end_node_;
      for (i = self->_prefixStringsInHeaderCells.__table_.__first_node_.__next_; i; i = *i)
      {
        if (objc_msgSend_hasPrefix_(*(i + 2), v44, v68, v46, v47))
        {
          TSCECellRefSet::addCellRefs(&v64, i + 1);
        }
      }

      if (v43)
      {
        TSCECellRefSet::operator=(&v72, &v64);
      }

      else
      {
        TSCECellRefSet::intersectWith(&v72, &v64);
      }

      sub_22107C800(&v64, v64._coordsForOwnerUid.__tree_.__end_node_.__left_);
      goto LABEL_20;
    }

    v49 = sub_221411C68(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, &v68, v45, v46, v47);
    if (!v49)
    {
      break;
    }

    if (v43)
    {
      TSCECellRefSet::operator=(&v72, v49 + 3);
    }

    else
    {
      TSCECellRefSet::intersectWith(&v72, v49 + 1);
    }

LABEL_20:
    ++v41;

    v43 = 0;
    if (++v40 == v39)
    {
      goto LABEL_24;
    }
  }

  TSCECellRefSet::clear(&v72);

LABEL_24:
  retstr = v38;
  if ((TSCECellRefSet::isEmpty(&v72) & 1) == 0)
  {
    v54 = objc_msgSend_calcEngine(self->_hnm, v50, v51, v52, v53);
    v64._coordsForOwnerUid.__tree_.__begin_node_ = 0;
    v64._coordsForOwnerUid.__tree_.__end_node_.__left_ = &v64;
    v64._coordsForOwnerUid.__tree_.__size_ = 0x3032000000;
    v65 = sub_221408BC0;
    v66 = sub_221408BD0;
    v67 = 0;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_221409220;
    v58[3] = &unk_278464A68;
    v62 = &v64;
    v59 = v54;
    selfCopy = self;
    v61 = v57;
    v63 = &v73;
    v55 = v54;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v72, v58);

    _Block_object_dispose(&v64, 8);
  }

  v64._coordsForOwnerUid.__tree_.__begin_node_ = &v69;
  sub_22107C2C0(&v64);
  sub_22107C800(&v72, v72._coordsForOwnerUid.__tree_.__end_node_.__left_);
  v6 = v57;
LABEL_27:
  TSCECellRefSet::TSCECellRefSet(retstr, v74 + 2);
  _Block_object_dispose(&v73, 8);
  sub_22107C800(&v79, v80[0]);

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@ for '%@'", v6, v7, v4, self->_originalFullReferenceString);
}

- (TSKUIDStruct)limitedToTableUID
{
  upper = self->_limitedToTableUID._upper;
  lower = self->_limitedToTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  return self;
}

@end