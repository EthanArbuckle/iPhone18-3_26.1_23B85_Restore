@interface TPLayoutState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutState:(id)state;
- (TPLayoutState)init;
- (TPLayoutState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)archivedLayoutStateInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)reset;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context;
@end

@implementation TPLayoutState

- (TPLayoutState)init
{
  v10.receiver = self;
  v10.super_class = TPLayoutState;
  v2 = [(TPLayoutState *)&v10 init];
  v8 = v2;
  if (v2)
  {
    objc_msgSend_reset(v2, v3, v4, v5, v6, v7);
  }

  return v8;
}

- (void)reset
{
  sectionHints = self->_sectionHints;
  self->_sectionHints = 0;

  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *&self->_sectionIndex = v5;
  *&self->_documentPageIndex = v5;
  missingFonts = self->_missingFonts;
  self->_bodyLength = 0x7FFFFFFFFFFFFFFFLL;
  self->_missingFonts = 0;
}

- (BOOL)isEqualToLayoutState:(id)state
{
  stateCopy = state;
  v5 = *(stateCopy + 5);
  v6 = self->_sectionHints;
  v7 = v5;
  if ((!(v6 | v7) || (v13 = v7, isEqual = objc_msgSend_isEqual_(v6, v8, v9, v10, v11, v12, v7), v13, v6, isEqual)) && self->_lastPageCount == *(stateCopy + 4) && self->_sectionIndex == *(stateCopy + 1) && self->_sectionPageIndex == *(stateCopy + 2) && self->_documentPageIndex == *(stateCopy + 3) && self->_bodyLength == *(stateCopy + 6))
  {
    v15 = sub_2760047FC(self->_missingFonts, *(stateCopy + 7));
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)archivedLayoutStateInContext:(id)context
{
  contextCopy = context;
  v5 = [TPArchivedLayoutState alloc];
  v11 = objc_msgSend_initWithContext_layoutState_(v5, v6, v7, v8, v9, v10, contextCopy, self);

  return v11;
}

- (TPLayoutState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v12 = objc_msgSend_init(self, v6, v7, v8, v9, v10);
  if (v12 && objc_msgSend_documentHasCurrentFileFormatVersion(unarchiverCopy, v11, v13, v14, v15, v16))
  {
    v17 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v23 = objc_msgSend_messageWithDescriptor_(v17, v18, v19, v20, v21, v22, off_2812F85B8[50]);

    v24 = v23[4];
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v24 & 1) != 0 && v23[18] != 0x7FFFFFFF)
    {
      v25 = v23[18];
    }

    v12->_sectionIndex = v25;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v24 & 2) != 0 && v23[19] != 0x7FFFFFFF)
    {
      v26 = v23[19];
    }

    v12->_sectionPageIndex = v26;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v24 & 4) != 0 && v23[20] != 0x7FFFFFFF)
    {
      v27 = v23[20];
    }

    v12->_documentPageIndex = v27;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v24 & 8) != 0 && v23[21] != 0x7FFFFFFF)
    {
      v28 = v23[21];
    }

    v12->_lastPageCount = v28;
    v29 = v23[8];
    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v36 = objc_msgSend_initWithCapacity_(v30, v31, v32, v33, v34, v35, v29);
    sectionHints = v12->_sectionHints;
    v12->_sectionHints = v36;

    objc_msgSend_reset(v12, v38, v39, v40, v41, v42);
  }

  return v12;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context
{
  archiverCopy = archiver;
  contextCopy = context;
  v165 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v14 = objc_msgSend_messageWithNewFunction_descriptor_(v165, v9, v10, v11, v12, v13, sub_2760055B4, off_2812F85B8[50]);

  sectionIndex = self->_sectionIndex;
  if (sectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(sectionIndex))
    {
      v75 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPLayoutState saveToArchive:archiver:context:]");
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v83, v84, v85, v86, v87, v76, v82, 133, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91, v92);
      LODWORD(sectionIndex) = -1;
    }

    v14[4] |= 1u;
    v14[18] = sectionIndex;
  }

  sectionPageIndex = self->_sectionPageIndex;
  if (sectionPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(sectionPageIndex))
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPLayoutState saveToArchive:archiver:context:]");
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v101, v102, v103, v104, v105, v94, v100, 137, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109, v110);
      LODWORD(sectionPageIndex) = -1;
    }

    v14[4] |= 2u;
    v14[19] = sectionPageIndex;
  }

  documentPageIndex = self->_documentPageIndex;
  if (documentPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(documentPageIndex))
    {
      v111 = MEMORY[0x277D81150];
      v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPLayoutState saveToArchive:archiver:context:]");
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v119, v120, v121, v122, v123, v112, v118, 141, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126, v127, v128);
      LODWORD(documentPageIndex) = -1;
    }

    v14[4] |= 4u;
    v14[20] = documentPageIndex;
  }

  lastPageCount = self->_lastPageCount;
  if (lastPageCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(lastPageCount))
    {
      v129 = MEMORY[0x277D81150];
      v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPLayoutState saveToArchive:archiver:context:]");
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v137, v138, v139, v140, v141, v130, v136, 145, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v143, v144, v145, v146);
      LODWORD(lastPageCount) = -1;
    }

    v14[4] |= 8u;
    v14[21] = lastPageCount;
  }

  v24 = TSUSystemVersionNumber();
  if (v24 >= 0x80000000)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPLayoutState saveToArchive:archiver:context:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v47, v48, v49, v50, v51, v40, v46, 150, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55, v56);
    LODWORD(v24) = 0x7FFFFFFF;
  }

  else if (v24 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPLayoutState saveToArchive:archiver:context:]");
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v65, v66, v67, v68, v69, v58, v64, 150, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73, v74);
    LODWORD(v24) = 0x80000000;
  }

  v30 = v14[4] | 0x20;
  v14[4] = v30;
  v14[23] = v24;
  bodyLength = self->_bodyLength;
  if (bodyLength != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(bodyLength))
    {
      v147 = MEMORY[0x277D81150];
      v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPLayoutState saveToArchive:archiver:context:]");
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v149, v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v147, v155, v156, v157, v158, v159, v148, v154, 168, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161, v162, v163, v164);
      v30 = v14[4];
      LODWORD(bodyLength) = -1;
    }

    v14[4] = v30 | 0x10;
    v14[22] = bodyLength;
  }

  v32 = objc_msgSend_allObjects(self->_missingFonts, v25, v26, v27, v28, v29);
  v38 = v32;
  if (v32)
  {
    objc_msgSend_tsp_saveToProtobufStringArray_(v32, v33, v34, v35, v36, v37, v14 + 12);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToLayoutState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToLayoutState = objc_msgSend_isEqualToLayoutState_(self, v5, v6, v7, v8, v9, equalCopy);
    }

    else
    {
      isEqualToLayoutState = 0;
    }
  }

  return isEqualToLayoutState;
}

- (unint64_t)hash
{
  objc_msgSend_hash(self->_sectionHints, a2, v2, v3, v4, v5);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v7 = TSUHashWithSeed();
  return objc_msgSend_hash(self->_missingFonts, v8, v9, v10, v11, v12) ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = objc_msgSend_allocWithZone_(TPLayoutState, a2, v3, v4, v5, v6, zone);
  v14 = objc_msgSend_init(v8, v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    *(v14 + 8) = self->_sectionIndex;
    *(v14 + 16) = self->_sectionPageIndex;
    *(v14 + 24) = self->_documentPageIndex;
    *(v14 + 32) = self->_lastPageCount;
    objc_storeStrong((v14 + 40), self->_sectionHints);
    *(v15 + 48) = self->_bodyLength;
    objc_storeStrong((v15 + 56), self->_missingFonts);
  }

  return v15;
}

@end