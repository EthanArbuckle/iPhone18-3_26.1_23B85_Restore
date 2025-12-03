@interface TSTTableDataListSegment
- (TSTTableDataListSegment)initWithType:(int)type keyRange:(_NSRange)range context:(id)context;
- (_NSRange)keyRange;
- (id).cxx_construct;
- (id)contentsOfObjectForKey:(unsigned int)key;
- (id)copyWithContext:(id)context;
- (id)objectAtIndexedSubscript:(unsigned int)subscript;
- (id)split;
- (void)encodeObjectsToDataListArchive:(void *)archive archiver:(id)archiver;
- (void)enumerateObjectsWithBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadObjectsFromDataListArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setKeyRange:(_NSRange)range;
- (void)setObject:(id)object atIndexedSubscript:(unsigned int)subscript;
@end

@implementation TSTTableDataListSegment

- (TSTTableDataListSegment)initWithType:(int)type keyRange:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = TSTTableDataListSegment;
  v10 = [(TSTTableDataListSegment *)&v19 initWithContext:contextCopy];
  v15 = v10;
  if (v10)
  {
    v10->_listType = type;
    v10->_keyRange.location = location;
    v10->_keyRange.length = length;
    v16 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14);
    keys = v15->_keys;
    v15->_keys = v16;

    v15->_estimatedByteSize = 0;
  }

  return v15;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithType_keyRange_context_(v5, v6, self->_listType, self->_keyRange.location, self->_keyRange.length, contextCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2213BEC40;
  v16[3] = &unk_2784641D8;
  v8 = v7;
  v17 = v8;
  v9 = contextCopy;
  v18 = v9;
  objc_msgSend_enumerateObjectsWithBlock_(self, v10, v16, v11, v12);
  v13 = v18;
  v14 = v8;

  return v14;
}

- (void)setKeyRange:(_NSRange)range
{
  p_keyRange = &self->_keyRange;
  if (range.location != self->_keyRange.location || range.length != self->_keyRange.length)
  {
    location = range.location;
    if (HIDWORD(range.location))
    {
      TSUSetCrashReporterInfo();
      v8 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataListSegment setKeyRange:]", v10, v11, "[TSTTableDataListSegment setKeyRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 88);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v12, v16, 88, 1, "Datalist segment range start out of bounds on set");
    }

    else
    {
      length = range.length;
      if (!HIDWORD(range.length))
      {
        objc_msgSend_willModify(self, a2, range.location, LODWORD(range.length), v3);
        p_keyRange->location = location;
        p_keyRange->length = length;
        return;
      }

      TSUSetCrashReporterInfo();
      v18 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableDataListSegment setKeyRange:]", v20, v21, "[TSTTableDataListSegment setKeyRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 89);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v12, v16, 89, 1, "Datalist segment range length out of bounds on set!");
    }

    TSUCrashBreakpoint();
    abort();
  }
}

- (id)split
{
  if (objc_msgSend_shouldSplit(self, a2, v2, v3, v4))
  {
    objc_msgSend_willModify(self, v6, v7, v8, v9);
    v10 = objc_alloc(objc_opt_class());
    listType = self->_listType;
    p_keyRange = &self->_keyRange;
    location = self->_keyRange.location;
    length = self->_keyRange.length;
    v19 = objc_msgSend_context(self, v15, v16, v17, v18);
    v21 = objc_msgSend_initWithType_keyRange_context_(v10, v20, listType, location, length, v19);

    v26 = objc_msgSend_copy(self->_keys, v22, v23, v24, v25);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_2213BF684;
    v174[3] = &unk_27845DE60;
    v174[4] = self;
    v27 = v21;
    v175 = v27;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v26, v28, 2, v174, v29);
    if (objc_msgSend_count(v27, v30, v31, v32, v33))
    {
      v38 = objc_msgSend_mutableCopy(v26, v34, v35, v36, v37);
      v43 = objc_msgSend_keys(v27, v39, v40, v41, v42);
      objc_msgSend_removeIndexes_(v38, v44, v43, v45, v46);

      v51 = objc_msgSend_copy(self->_keys, v47, v48, v49, v50);
      if (objc_msgSend_isEqualToIndexSet_(v51, v52, v26, v53, v54))
      {
        objc_storeStrong(&self->_keys, v38);
        Index = objc_msgSend_lastIndex(self->_keys, v55, v56, v57, v58);
        v64 = objc_msgSend_keys(v27, v60, v61, v62, v63);
        v69 = objc_msgSend_firstIndex(v64, v65, v66, v67, v68);

        v72 = v69 - Index;
        if (v69 <= Index)
        {
          TSUSetCrashReporterInfo();
          v114 = MEMORY[0x277D81150];
          v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSTTableDataListSegment split]", v116, v117, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 161);
          v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v120, v121);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v123, v118, v122, 161, 1, "Keys overlap during split!");

          TSUCrashBreakpoint();
        }

        else
        {
          if (v72 > 1)
          {
            v73 = ((v69 + Index) >> 1) + 1;
          }

          else
          {
            v73 = v69;
          }

          if (v72 <= 1)
          {
            v74 = Index;
          }

          else
          {
            v74 = (v69 + Index) >> 1;
          }

          v75 = p_keyRange->location;
          v76 = p_keyRange->length;
          p_keyRange->length = v74 - p_keyRange->location + 1;
          objc_msgSend_setKeyRange_(v27, v70, v73, v75 - v73 + v76, v71);
          v81 = objc_msgSend_keyRange(v27, v77, v78, v79, v80);
          v86 = p_keyRange->length;
          if (v81 == v86 + p_keyRange->location)
          {
            if (HIDWORD(p_keyRange->location))
            {
              TSUSetCrashReporterInfo();
              v134 = MEMORY[0x277D81150];
              v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, "[TSTTableDataListSegment split]", v136, v137, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 179);
              v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v140, v141);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v134, v143, v138, v142, 179, 1, "Existing datalist segment range start out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else if (HIDWORD(v86))
            {
              TSUSetCrashReporterInfo();
              v144 = MEMORY[0x277D81150];
              v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v145, "[TSTTableDataListSegment split]", v146, v147, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 180);
              v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v150, v151);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v153, v148, v152, 180, 1, "Existing datalist segment range length out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else if (objc_msgSend_keyRange(v27, v82, v83, v84, v85) >> 32)
            {
              TSUSetCrashReporterInfo();
              v154 = MEMORY[0x277D81150];
              v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "[TSTTableDataListSegment split]", v156, v157, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 181);
              v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v160, v161);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v154, v163, v158, v162, 181, 1, "New datalist segment range start out of bounds on split!");

              TSUCrashBreakpoint();
            }

            else
            {
              objc_msgSend_keyRange(v27, v87, v88, v89, v90);
              if (!HIDWORD(v91))
              {
                v92 = v27;

                goto LABEL_18;
              }

              TSUSetCrashReporterInfo();
              v164 = MEMORY[0x277D81150];
              v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, "[TSTTableDataListSegment split]", v166, v167, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 182);
              v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v170, v171);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v173, v168, v172, 182, 1, "New datalist segment range length out of bounds on split!");

              TSUCrashBreakpoint();
            }
          }

          else
          {
            TSUSetCrashReporterInfo();
            v124 = MEMORY[0x277D81150];
            v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "[TSTTableDataListSegment split]", v126, v127, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 176);
            v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v130, v131);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v124, v133, v128, v132, 176, 1, "Segment ranges are discontiguous!");

            TSUCrashBreakpoint();
          }
        }
      }

      else
      {
        TSUSetCrashReporterInfo();
        v104 = MEMORY[0x277D81150];
        v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "[TSTTableDataListSegment split]", v106, v107, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 148);
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v110, v111);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v113, v108, v112, 148, 1, "Datalist segment changed during split!");

        TSUCrashBreakpoint();
      }
    }

    else
    {
      TSUSetCrashReporterInfo();
      v94 = MEMORY[0x277D81150];
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "[TSTTableDataListSegment split]", v96, v97, "[TSTTableDataListSegment split]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 140);
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v100, v101);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v103, v98, v102, 140, 1, "New segment is empty during split!");

      TSUCrashBreakpoint();
    }

    abort();
  }

  v92 = 0;
LABEL_18:

  return v92;
}

- (id)objectAtIndexedSubscript:(unsigned int)subscript
{
  subscriptCopy = subscript;
  if (subscript)
  {
    v3 = sub_2211DC534(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    if (v3)
    {
      v8 = v3[3];
      if (v8)
      {
        v9 = objc_msgSend_key(v3[3], v4, v5, v6, v7);
        if (v9 != subscriptCopy)
        {
          TSUSetCrashReporterInfo();
          v10 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableDataListSegment objectAtIndexedSubscript:]", v12, v13, "[TSTTableDataListSegment objectAtIndexedSubscript:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 202);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v16, v17);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 202, 1, "Got an object with a bad key!");

          TSUCrashBreakpoint();
          abort();
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)contentsOfObjectForKey:(unsigned int)key
{
  keyCopy = key;
  if (key)
  {
    v3 = sub_2211DC534(&self->_data.__table_.__bucket_list_.__ptr_, &keyCopy);
    if (v3)
    {
      v8 = v3[3];
      if (v8)
      {
        v9 = objc_msgSend_key(v3[3], v4, v5, v6, v7);
        if (v9 != keyCopy)
        {
          TSUSetCrashReporterInfo();
          v10 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableDataListSegment contentsOfObjectForKey:]", v12, v13, "[TSTTableDataListSegment contentsOfObjectForKey:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", 223);
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v16, v17);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 223, 1, "Got an object with a bad key!");

          TSUCrashBreakpoint();
          abort();
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v20 = objc_msgSend_payload(v8, v4, v5, v6, v7);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setObject:(id)object atIndexedSubscript:(unsigned int)subscript
{
  v5 = *&subscript;
  subscriptCopy = subscript;
  objc_msgSend_willModify(self, a2, object, *&subscript, v4);
  if (object)
  {
    objc_msgSend_setKey_(object, v8, v5, v9, v10);
    v28 = &subscriptCopy;
    v11 = sub_2213C0608(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    objc_storeStrong(v11 + 3, object);
    objc_msgSend_addIndex_(self->_keys, v12, subscriptCopy, v13, v14);
    self->_estimatedByteSize += objc_msgSend_byteSizeForArchiving(object, v15, v16, v17, v18);
  }

  else
  {
    v28 = &subscriptCopy;
    v19 = sub_2213C0608(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    self->_estimatedByteSize -= objc_msgSend_byteSizeForArchiving(v19[3], v20, v21, v22, v23);
    sub_221387BB4(&self->_data.__table_.__bucket_list_.__ptr_, &subscriptCopy);
    objc_msgSend_removeIndex_(self->_keys, v24, subscriptCopy, v25, v26);
  }
}

- (void)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  p_first_node = &self->_data.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    blockCopy[2](blockCopy, p_first_node[3].__next_, &v6);
  }

  while ((v6 & 1) == 0);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[40], v6, v7);

  self->_listType = *(v8 + 56);
  self->_keyRange.location = TSPNSRangeFromMessage();
  self->_keyRange.length = v9;
  v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v9, v10, v11, v12);
  keys = self->_keys;
  self->_keys = v13;

  v15 = *(v8 + 40);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 32);
  if (v17)
  {
    v18 = 8 * v17;
    do
    {
      TST::TableDataList_ListEntry::TableDataList_ListEntry(v22, *v16);
      listType = self->_listType;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_2213BFDD4;
      v21[3] = &unk_278464200;
      v21[4] = self;
      objc_msgSend_loadObjectFromArchive_listType_unarchiver_completion_(TSTTableDataObject, v20, v22, listType, unarchiverCopy, v21);
      TST::TableDataList_ListEntry::~TableDataList_ListEntry(v22);
      ++v16;
      v18 -= 8;
    }

    while (v18);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2213C086C, off_2812E4498[40], v6);

  if (HIDWORD(self->_keyRange.location) || HIDWORD(self->_keyRange.length))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataListSegment saveToArchiver:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 284, 0, "Datalist segment range out of bounds on archive!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = *(v7 + 16);
  *(v7 + 56) = self->_listType;
  *(v7 + 16) = v22 | 3;
  if (!*(v7 + 48))
  {
    v23 = *(v7 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(v7 + 48) = MEMORY[0x223DA0370](v23);
  }

  TSPNSRangeCopyToMessage();
  keys = self->_keys;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2213C006C;
  v29[3] = &unk_278464228;
  v29[4] = self;
  v31 = v7;
  v25 = archiverCopy;
  v30 = v25;
  objc_msgSend_enumerateIndexesUsingBlock_(keys, v26, v29, v27, v28);
}

- (void)loadObjectsFromDataListArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (!self->_listType)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataListSegment loadObjectsFromDataListArchive:unarchiver:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataListSegment.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 303, 0, "Need to set up a segment before doing an upgrade-type load of it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = *(archive + 5);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(archive + 8);
  if (v23)
  {
    v24 = 8 * v23;
    do
    {
      TST::TableDataList_ListEntry::TableDataList_ListEntry(v28, *v22);
      listType = self->_listType;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_2213C0318;
      v27[3] = &unk_278464200;
      v27[4] = self;
      objc_msgSend_loadObjectFromArchive_listType_unarchiver_completion_(TSTTableDataObject, v26, v28, listType, unarchiverCopy, v27);
      TST::TableDataList_ListEntry::~TableDataList_ListEntry(v28);
      ++v22;
      v24 -= 8;
    }

    while (v24);
  }
}

- (void)encodeObjectsToDataListArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  keys = self->_keys;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213C044C;
  v12[3] = &unk_278464228;
  v13 = archiverCopy;
  archiveCopy = archive;
  v12[4] = self;
  v8 = archiverCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(keys, v9, v12, v10, v11);
}

- (_NSRange)keyRange
{
  p_keyRange = &self->_keyRange;
  location = self->_keyRange.location;
  length = p_keyRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  return self;
}

@end