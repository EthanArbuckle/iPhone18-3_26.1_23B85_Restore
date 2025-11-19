@interface TPFloatingDrawables
- (NSArray)swift_allDrawables;
- (NSIndexSet)pageIndexesOfPagesContainingDrawables;
- (NSSet)allDrawables;
- (TPDocumentRoot)documentRoot;
- (TPFloatingDrawables)initWithContext:(id)a3;
- (id)childEnumerator;
- (id)drawablesOnPageIndex:(unint64_t)a3;
- (id)orderedDrawablesOnPageIndex:(unint64_t)a3;
- (id)swift_drawablesOnPageIndex:(unint64_t)a3;
- (id)tagForDrawable:(id)a3;
- (unint64_t)countOfAllDrawables;
- (unint64_t)maximumPageIndex;
- (unint64_t)pageIndexForDrawable:(id)a3;
- (void)addDrawable:(id)a3 toPageIndex:(unint64_t)a4 insertContext:(id)a5 suppressDOLC:(BOOL)a6;
- (void)addDrawables:(id)a3 toPageIndex:(unint64_t)a4 insertContext:(id)a5;
- (void)applyTag:(id)a3 toDrawable:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)moveDrawable:(id)a3 toPageIndex:(unint64_t)a4;
- (void)p_addDrawable:(id)a3 toPageIndex:(unint64_t)a4;
- (void)p_removeDrawable:(id)a3;
- (void)removeDrawable:(id)a3 suppressDOLC:(BOOL)a4;
- (void)removeDrawables:(id)a3;
- (void)removeTagForDrawable:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TPFloatingDrawables

- (TPFloatingDrawables)initWithContext:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TPFloatingDrawables;
  v5 = [(TPFloatingDrawables *)&v23 initWithContext:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    drawablesByPageIndex = v5->_drawablesByPageIndex;
    v5->_drawablesByPageIndex = v6;

    v13 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v8, v9, v10, v11, v12, 517, 0);
    pageIndexByDrawable = v5->_pageIndexByDrawable;
    v5->_pageIndexByDrawable = v13;

    v20 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v15, v16, v17, v18, v19, 517, 0);
    tagByDrawable = v5->_tagByDrawable;
    v5->_tagByDrawable = v20;

    if (!v5->_drawablesByPageIndex || !v5->_pageIndexByDrawable || !v5->_tagByDrawable)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)a3
{
  v119 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  drawablesByPageIndex = self->_drawablesByPageIndex;
  self->_drawablesByPageIndex = v4;

  v11 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v6, v7, v8, v9, v10, 517, 0);
  pageIndexByDrawable = self->_pageIndexByDrawable;
  self->_pageIndexByDrawable = v11;

  v18 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v13, v14, v15, v16, v17, 517, 0);
  tagByDrawable = self->_tagByDrawable;
  self->_tagByDrawable = v18;

  v20 = v119;
  google::protobuf::internal::AssignDescriptors();
  v26 = objc_msgSend_messageWithDescriptor_(v20, v21, v22, v23, v24, v25, off_2812F85B8[16]);
  v120 = self;
  v118 = v20;

  v131 = 0;
  v132 = 0;
  v133 = 0;
  v27 = *(v26 + 32);
  v123 = objc_opt_new();
  v122 = v27;
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = MEMORY[0x277D80A18];
    v121 = v26;
    while (1)
    {
      v30 = *(*(v26 + 40) + 8 * v28 + 8);
      v31 = *(v30 + 96);
      v32 = *(v30 + 32);
      v33 = *(v30 + 56);
      v34 = *(v30 + 80);
      if (!(v32 | v33))
      {
        break;
      }

      if (v32 >= 1)
      {
        v35 = *(v30 + 32);
        v36 = 8;
        while (1)
        {
          v37 = *(*(v30 + 40) + v36);
          v38 = v133;
          if (!v133)
          {
            goto LABEL_11;
          }

          v39 = v132;
          v40 = *v133;
          if (v132 >= *v133)
          {
            break;
          }

          LODWORD(v132) = v132 + 1;
          v41 = *&v133[2 * v39 + 2];
LABEL_13:
          if (*(v37 + 24))
          {
            v43 = *(v37 + 24);
          }

          else
          {
            v43 = v29;
          }

          TSP::Reference::CopyFrom(v41, v43);
          v36 += 8;
          if (!--v35)
          {
            goto LABEL_17;
          }
        }

        if (v40 == HIDWORD(v132))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v131);
          v38 = v133;
          v40 = *v133;
        }

        *v38 = v40 + 1;
        v41 = MEMORY[0x277C92D60](v131);
        v42 = &v133[2 * v132];
        LODWORD(v132) = v132 + 1;
        *(v42 + 1) = v41;
        goto LABEL_13;
      }

LABEL_17:
      if (v33 >= 1)
      {
        v44 = v33;
        v45 = 8;
        while (1)
        {
          v46 = *(*(v30 + 64) + v45);
          v47 = v133;
          if (!v133)
          {
            goto LABEL_24;
          }

          v48 = v132;
          v49 = *v133;
          if (v132 >= *v133)
          {
            break;
          }

          LODWORD(v132) = v132 + 1;
          v50 = *&v133[2 * v48 + 2];
LABEL_26:
          if (*(v46 + 24))
          {
            v52 = *(v46 + 24);
          }

          else
          {
            v52 = v29;
          }

          TSP::Reference::CopyFrom(v50, v52);
          v45 += 8;
          if (!--v44)
          {
            goto LABEL_44;
          }
        }

        if (v49 == HIDWORD(v132))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v131);
          v47 = v133;
          v49 = *v133;
        }

        *v47 = v49 + 1;
        v50 = MEMORY[0x277C92D60](v131);
        v51 = &v133[2 * v132];
        LODWORD(v132) = v132 + 1;
        *(v51 + 1) = v50;
        goto LABEL_26;
      }

LABEL_44:
      v62 = [TPPageGroupInfo alloc];
      v68 = objc_msgSend_initWithPageIndex_bgCount_fgCount_drawableCount_(v62, v63, v64, v65, v66, v67, v31, v32, v33, v34, v118);
      objc_msgSend_addObject_(v123, v69, v70, v71, v72, v73, v68);
      v26 = v121;

      if (++v28 == v122)
      {
        goto LABEL_45;
      }
    }

    if (v34 < 1)
    {
      goto LABEL_44;
    }

    v53 = *(v30 + 80);
    v54 = 8;
    while (1)
    {
      v55 = *(*(v30 + 88) + v54);
      v56 = v133;
      if (!v133)
      {
        goto LABEL_38;
      }

      v57 = v132;
      v58 = *v133;
      if (v132 >= *v133)
      {
        break;
      }

      LODWORD(v132) = v132 + 1;
      v59 = *&v133[2 * v57 + 2];
LABEL_40:
      if (*(v55 + 24))
      {
        v61 = *(v55 + 24);
      }

      else
      {
        v61 = v29;
      }

      TSP::Reference::CopyFrom(v59, v61);
      v54 += 8;
      if (!--v53)
      {
        goto LABEL_44;
      }
    }

    if (v58 == HIDWORD(v132))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v131);
      v56 = v133;
      v58 = *v133;
    }

    *v56 = v58 + 1;
    v59 = MEMORY[0x277C92D60](v131);
    v60 = &v133[2 * v132];
    LODWORD(v132) = v132 + 1;
    *(v60 + 1) = v59;
    goto LABEL_40;
  }

LABEL_45:
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x3032000000;
  v129[3] = sub_275FBF8BC;
  v129[4] = sub_275FBF8CC;
  v130 = 0;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = sub_275FBF8D4;
  v128[3] = &unk_27A6A8290;
  v128[4] = v129;
  v74 = v118;
  v75 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v74, v76, v77, v78, v79, v80, &v131, v75, 0, v128);

  if (*(v26 + 16))
  {
    v86 = *(v26 + 48);
    v87 = *(v86 + 24);
    if (v87 >= 1)
    {
      v88 = 8;
      v89 = MEMORY[0x277D80A18];
      do
      {
        v90 = *(*(v86 + 32) + v88);
        v91 = objc_alloc(MEMORY[0x277CCACA8]);
        v97 = objc_msgSend_tsp_initWithProtobufString_(v91, v92, v93, v94, v95, v96, *(v90 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v98 = *(v90 + 32);
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = sub_275FBF8E4;
        v127[3] = &unk_27A6A82B8;
        v127[4] = v120;
        v127[5] = v97;
        v99 = v74;
        v101 = objc_opt_class();
        if (v98)
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v99, v100, v102, v103, v104, v105, v98, v101, 0, v127, v118);
        }

        else
        {
          objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v99, v100, v102, v103, v104, v105, v89, v101, 0, v127, v118);
        }

        v88 += 8;
        --v87;
      }

      while (v87);
    }
  }

  v106 = objc_msgSend_sourceType(v74, v81, v82, v83, v84, v85, v118);
  v112 = objc_msgSend_fileFormatVersion(v74, v107, v108, v109, v110, v111);
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = sub_275FBF8FC;
  v124[3] = &unk_27A6A8308;
  v126 = v106 == 3;
  v125 = v122;
  v124[4] = v120;
  v124[5] = v123;
  v124[6] = v129;
  v124[7] = v112;
  objc_msgSend_addFinalizeHandler_(v74, v113, v114, v115, v116, v117, v124);
  _Block_object_dispose(v129, 8);

  sub_275FB56E8(&v131);
}

- (void)saveToArchiver:(id)a3
{
  v179 = *MEMORY[0x277D85DE8];
  v3 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v3, v4, v5, v6, v7, v8, sub_275FC2680, off_2812F85B8[16]);

  v15 = objc_msgSend_allKeys(self->_drawablesByPageIndex, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_sortedArrayUsingSelector_(v15, v16, v17, v18, v19, v20, sel_compare_);

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  obj = v21;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, v24, v25, v26, &v172, v178, 16);
  if (v28)
  {
    v161 = *v173;
    do
    {
      v33 = 0;
      v162 = v28;
      do
      {
        if (*v173 != v161)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v172 + 1) + 8 * v33);
        v35 = *(v9 + 40);
        if (!v35)
        {
          goto LABEL_11;
        }

        v36 = *(v9 + 32);
        v37 = *v35;
        if (v36 < *v35)
        {
          *(v9 + 32) = v36 + 1;
          v38 = *&v35[2 * v36 + 2];
          goto LABEL_13;
        }

        if (v37 == *(v9 + 36))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
          v35 = *(v9 + 40);
          v37 = *v35;
        }

        *v35 = v37 + 1;
        v38 = sub_275FAF18C(*(v9 + 24));
        v39 = *(v9 + 32);
        v40 = *(v9 + 40) + 8 * v39;
        *(v9 + 32) = v39 + 1;
        *(v40 + 8) = v38;
LABEL_13:
        v41 = objc_msgSend_unsignedIntValue(v34, v27, v29, v30, v31, v32);
        if (v41 >= 0x7FFFFFFF)
        {
          v140 = v41;
          v159 = v41;
          TSUSetCrashReporterInfo();
          v141 = MEMORY[0x277D81150];
          v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, v146, "[TPFloatingDrawables saveToArchiver:]", "[TPFloatingDrawables saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", 236, v159);
          v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, v149, v150, v151, v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v154, v155, v156, v157, v158, v147, v153, 236, 1, "bad page index: %lu for drawable", v140);

          TSUCrashBreakpoint();
          abort();
        }

        *(v38 + 16) |= 1u;
        *(v38 + 96) = v41;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v46 = objc_msgSend_orderedDrawablesOnPageIndex_(self, v42, 0, v43, v44, v45, v41);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, v48, v49, v50, v51, &v168, v177, 16);
        if (v53)
        {
          v58 = *v169;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v169 != v58)
              {
                objc_enumerationMutation(v46);
              }

              v60 = *(*(&v168 + 1) + 8 * i);
              v61 = *(v38 + 88);
              if (!v61)
              {
                goto LABEL_24;
              }

              v62 = *(v38 + 80);
              v63 = *v61;
              if (v62 < *v61)
              {
                *(v38 + 80) = v62 + 1;
                v64 = *&v61[2 * v62 + 2];
                goto LABEL_26;
              }

              if (v63 == *(v38 + 84))
              {
LABEL_24:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v38 + 72));
                v61 = *(v38 + 88);
                v63 = *v61;
              }

              *v61 = v63 + 1;
              v64 = sub_275FAF0C0(*(v38 + 72));
              v65 = *(v38 + 80);
              v66 = *(v38 + 88) + 8 * v65;
              *(v38 + 80) = v65 + 1;
              *(v66 + 8) = v64;
LABEL_26:
              *(v64 + 16) |= 1u;
              v67 = *(v64 + 24);
              if (!v67)
              {
                v68 = *(v64 + 8);
                if (v68)
                {
                  v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
                }

                v67 = MEMORY[0x277C92D60](v68);
                *(v64 + 24) = v67;
              }

              objc_msgSend_setStrongReference_message_(v3, v52, v54, v55, v56, v57, v60, v67);
            }

            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v52, v54, v55, v56, v57, &v168, v177, 16);
          }

          while (v53);
        }

        ++v33;
      }

      while (v33 != v162);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, v29, v30, v31, v32, &v172, v178, 16);
    }

    while (v28);
  }

  if (objc_msgSend_count(self->_tagByDrawable, v69, v70, v71, v72, v73))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v3, v74, v75, v76, v77, v78, *MEMORY[0x277D80988], *MEMORY[0x277D80990], @"TPPageTemplates");
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v3, v79, v80, v81, v82, v83, 2, v9);
    *(v9 + 16) |= 1u;
    v89 = *(v9 + 48);
    if (!v89)
    {
      v90 = *(v9 + 8);
      if (v90)
      {
        v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
      }

      v89 = sub_275FAF034(v90);
      *(v9 + 48) = v89;
    }

    v91 = objc_msgSend_keyEnumerator(self->_tagByDrawable, v84, v85, v86, v87, v88);
    v97 = objc_msgSend_allObjects(v91, v92, v93, v94, v95, v96);
    v103 = objc_msgSend_sortedArrayUsingComparator_(v97, v98, v99, v100, v101, v102, &unk_2885010B8);

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v104 = v103;
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, v106, v107, v108, v109, &v164, v176, 16);
    if (v111)
    {
      v116 = *v165;
      do
      {
        for (j = 0; j != v111; ++j)
        {
          if (*v165 != v116)
          {
            objc_enumerationMutation(v104);
          }

          v118 = *(*(&v164 + 1) + 8 * j);
          v119 = *(v89 + 32);
          if (!v119)
          {
            goto LABEL_49;
          }

          v120 = *(v89 + 24);
          v121 = *v119;
          if (v120 < *v119)
          {
            *(v89 + 24) = v120 + 1;
            v122 = *&v119[2 * v120 + 2];
            goto LABEL_51;
          }

          if (v121 == *(v89 + 28))
          {
LABEL_49:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v89 + 16));
            v119 = *(v89 + 32);
            v121 = *v119;
          }

          *v119 = v121 + 1;
          v122 = sub_275FAEFA8(*(v89 + 16));
          v123 = *(v89 + 24);
          v124 = *(v89 + 32) + 8 * v123;
          *(v89 + 24) = v123 + 1;
          *(v124 + 8) = v122;
LABEL_51:
          *(v122 + 16) |= 2u;
          v125 = *(v122 + 32);
          if (!v125)
          {
            v126 = *(v122 + 8);
            if (v126)
            {
              v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
            }

            v125 = MEMORY[0x277C92D60](v126);
            *(v122 + 32) = v125;
          }

          objc_msgSend_setWeakReference_message_(v3, v110, v112, v113, v114, v115, v118, v125);
          v132 = objc_msgSend_objectForKey_(self->_tagByDrawable, v127, v128, v129, v130, v131, v118);
          v133 = v132;
          v139 = objc_msgSend_UTF8String(v132, v134, v135, v136, v137, v138);
          sub_275FC0914(v122, v139);
        }

        v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v110, v112, v113, v114, v115, &v164, v176, 16);
      }

      while (v111);
    }
  }
}

- (unint64_t)countOfAllDrawables
{
  result = self->_pageIndexByDrawable;
  if (result)
  {
    return objc_msgSend_count(result, a2, v2, v3, v4, v5);
  }

  return result;
}

- (NSSet)allDrawables
{
  v6 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6 && objc_msgSend_count(v6, v7, v8, v9, v10, v11))
  {
    v18 = objc_msgSend_setWithArray_(MEMORY[0x277D81310], v13, v14, v15, v16, v17, v12);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSArray)swift_allDrawables
{
  v6 = objc_msgSend_allDrawables(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_allObjects(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (id)drawablesOnPageIndex:(unint64_t)a3
{
  if (objc_msgSend_isDocSetupPageIndex_(TPPageInfo, a2, v3, v4, v5, v6))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPFloatingDrawables drawablesOnPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 292, 0, "shouldn't use the doc setup page index in TPFloatingDrawables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  drawablesByPageIndex = self->_drawablesByPageIndex;
  v33 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, v10, v11, v12, v13, a3);
  v39 = objc_msgSend_objectForKeyedSubscript_(drawablesByPageIndex, v34, v35, v36, v37, v38, v33);

  return v39;
}

- (id)swift_drawablesOnPageIndex:(unint64_t)a3
{
  v7 = objc_msgSend_drawablesOnPageIndex_(self, a2, v3, v4, v5, v6, a3);
  v13 = objc_msgSend_allObjects(v7, v8, v9, v10, v11, v12);

  return v13;
}

- (id)orderedDrawablesOnPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_drawablesZOrder(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_drawablesOnPageIndex_(self, v16, v17, v18, v19, v20, a3);
  v27 = objc_msgSend_orderedDrawables_(v15, v22, v23, v24, v25, v26, v21);

  return v27;
}

- (unint64_t)maximumPageIndex
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = self->_drawablesByPageIndex;
  v8 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v4, v5, v6, v7, &v20, v24, 16);
  if (v10)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v2);
        }

        v17 = objc_msgSend_unsignedIntegerValue(*(*(&v20 + 1) + 8 * v16), v9, v11, v12, v13, v14, v20);
        if (v17 <= v8)
        {
          v18 = v8;
        }

        else
        {
          v18 = v17;
        }

        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v18;
        }

        ++v16;
      }

      while (v10 != v16);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v9, v11, v12, v13, v14, &v20, v24, 16);
    }

    while (v10);
  }

  return v8;
}

- (NSIndexSet)pageIndexesOfPagesContainingDrawables
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = self->_drawablesByPageIndex;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, v9, &v31, v35, 16);
  if (v11)
  {
    v16 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v4);
        }

        v18 = objc_msgSend_unsignedIntegerValue(*(*(&v31 + 1) + 8 * i), v10, v12, v13, v14, v15, v31);
        objc_msgSend_addIndex_(v3, v19, v20, v21, v22, v23, v18);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, v12, v13, v14, v15, &v31, v35, 16);
    }

    while (v11);
  }

  v29 = objc_msgSend_copy(v3, v24, v25, v26, v27, v28);

  return v29;
}

- (unint64_t)pageIndexForDrawable:(id)a3
{
  v7 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, a2, v3, v4, v5, v6, a3);
  v13 = v7;
  if (v7)
  {
    v14 = objc_msgSend_unsignedIntegerValue(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (id)tagForDrawable:(id)a3
{
  v7 = objc_msgSend_objectForKey_(self->_tagByDrawable, a2, v3, v4, v5, v6, a3);

  return v7;
}

- (void)p_addDrawable:(id)a3 toPageIndex:(unint64_t)a4
{
  v87 = a3;
  v11 = objc_msgSend_documentRoot(self, v6, v7, v8, v9, v10);
  isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v12, v13, v14, v15, v16, a4, v11);

  if (isAlternativePageIndex_documentRoot)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPFloatingDrawables p_addDrawable:toPageIndex:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v31, v32, v33, v34, v35, v24, v30, 350, 0, "shouldn't use the alternative page page index in TPFloatingDrawables (%lu)", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
  }

  if (a4 >= 0x7FFFFFFF)
  {
    TSUSetCrashReporterInfo();
    v69 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v74, "[TPFloatingDrawables p_addDrawable:toPageIndex:]", "[TPFloatingDrawables p_addDrawable:toPageIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm", 357, a4);
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v82, v83, v84, v85, v86, v75, v81, 357, 1, "bad page index: %lu for drawable", a4);

    TSUCrashBreakpoint();
    abort();
  }

  v41 = objc_alloc(MEMORY[0x277CCABB0]);
  v47 = objc_msgSend_initWithUnsignedInteger_(v41, v42, v43, v44, v45, v46, a4);
  v54 = objc_msgSend_objectForKeyedSubscript_(self->_drawablesByPageIndex, v48, v49, v50, v51, v52, v47);
  if (!v54)
  {
    v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_msgSend_setObject_forKeyedSubscript_(self->_drawablesByPageIndex, v59, v60, v61, v62, v63);
  }

  objc_msgSend_addObject_(v54, v53, v55, v56, v57, v58, v87);
  objc_msgSend_setObject_forKey_(self->_pageIndexByDrawable, v64, v65, v66, v67, v68, v47, v87);
}

- (void)addDrawable:(id)a3 toPageIndex:(unint64_t)a4 insertContext:(id)a5 suppressDOLC:(BOOL)a6
{
  v39 = a3;
  v10 = a5;
  objc_msgSend_willModify(self, v11, v12, v13, v14, v15);
  if (!a6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v39, v22, v23, v24, v25, v26, WeakRetained, v10);
  }

  objc_msgSend_p_addDrawable_toPageIndex_(self, v16, v17, v18, v19, v20, v39, a4);
  if (!a6)
  {
    v27 = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v39, v28, v29, v30, v31, v32, v27, v10);

    v33 = objc_loadWeakRetained(&self->_documentRoot);
    objc_msgSend_didAddDrawable_(v33, v34, v35, v36, v37, v38, v39);
  }
}

- (void)addDrawables:(id)a3 toPageIndex:(unint64_t)a4 insertContext:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, v15, &v24, v28, 16);
  if (v17)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addDrawable_toPageIndex_insertContext_(self, v16, v18, v19, v20, v21, *(*(&v24 + 1) + 8 * v23++), a4, v9, v24);
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v16, v18, v19, v20, v21, &v24, v28, 16);
    }

    while (v17);
  }
}

- (void)applyTag:(id)a3 toDrawable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, v8, v9, v10, v11, v12, v7);
  if (!v6 || !v7 || objc_msgSend_isEqualToString_(v6, v13, v15, v16, v17, v18, &stru_288501738))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, v18, "[TPFloatingDrawables applyTag:toDrawable:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 405, 0, "The given parameters are invalid.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
  }

  if (!v14)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, v18, "[TPFloatingDrawables applyTag:toDrawable:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v45, v46, v47, v48, v49, v38, v44, 406, 0, "The given drawable is not in the storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53, v54);
  }

  v55 = objc_msgSend_unsignedIntegerValue(v14, v13, v15, v16, v17, v18);
  v61 = objc_msgSend_drawablesOnPageIndex_(self, v56, v57, v58, v59, v60, v55);
  v80 = MEMORY[0x277D85DD0];
  v81 = 3221225472;
  v82 = sub_275FC1868;
  v83 = &unk_27A6A8350;
  v62 = v7;
  v84 = v62;
  v85 = self;
  v63 = v6;
  v86 = v63;
  v64 = v14;
  v87 = v64;
  objc_msgSend_enumerateObjectsUsingBlock_(v61, v65, v66, v67, v68, v69, &v80);
  objc_msgSend_willModify(self, v70, v71, v72, v73, v74, v80, v81, v82, v83);
  objc_msgSend_setObject_forKey_(self->_tagByDrawable, v75, v76, v77, v78, v79, v63, v62);
}

- (void)p_removeDrawable:(id)a3
{
  v36 = a3;
  v10 = objc_msgSend_objectForKey_(self->_pageIndexByDrawable, v4, v5, v6, v7, v8);
  if (v10)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(self->_drawablesByPageIndex, v9, v11, v12, v13, v14, v10);
    objc_msgSend_removeObjectForKey_(self->_pageIndexByDrawable, v16, v17, v18, v19, v20, v36);
    objc_msgSend_removeObject_(v15, v21, v22, v23, v24, v25, v36);
    if (!objc_msgSend_count(v15, v26, v27, v28, v29, v30))
    {
      objc_msgSend_removeObjectForKey_(self->_drawablesByPageIndex, v31, v32, v33, v34, v35, v10);
    }

    objc_msgSend_removeObjectForKey_(self->_tagByDrawable, v31, v32, v33, v34, v35, v36);
  }
}

- (void)removeTagForDrawable:(id)a3
{
  v32 = a3;
  if (v32)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
    objc_msgSend_removeObjectForKey_(self->_tagByDrawable, v9, v10, v11, v12, v13, v32);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPFloatingDrawables removeTagForDrawable:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 445, 0, "The given drawable is nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }
}

- (void)removeDrawable:(id)a3 suppressDOLC:(BOOL)a4
{
  v44 = a3;
  objc_msgSend_willModify(self, v6, v7, v8, v9, v10);
  if (!a4)
  {
    v16 = objc_msgSend_documentRoot(self, v11, v12, v13, v14, v15);
    objc_msgSend_willRemoveDrawable_(v16, v17, v18, v19, v20, v21, v44);

    v27 = objc_msgSend_documentRoot(self, v22, v23, v24, v25, v26);
    objc_msgSend_willBeRemovedFromDocumentRoot_(v44, v28, v29, v30, v31, v32, v27);
  }

  objc_msgSend_p_removeDrawable_(self, v11, v12, v13, v14, v15, v44);
  if (!a4)
  {
    v38 = objc_msgSend_documentRoot(self, v33, v34, v35, v36, v37);
    objc_msgSend_wasRemovedFromDocumentRoot_(v44, v39, v40, v41, v42, v43, v38);
  }
}

- (void)removeDrawables:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, v9, &v18, v22, 16);
  if (v11)
  {
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_removeDrawable_(self, v10, v12, v13, v14, v15, *(*(&v18 + 1) + 8 * v17++), v18);
      }

      while (v11 != v17);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, v12, v13, v14, v15, &v18, v22, 16);
    }

    while (v11);
  }
}

- (void)moveDrawable:(id)a3 toPageIndex:(unint64_t)a4
{
  v44 = a3;
  if (objc_msgSend_pageIndexForDrawable_(self, v6, v7, v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "[TPFloatingDrawables moveDrawable:toPageIndex:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 486, 0, "moving unknown drawable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
  }

  else
  {
    objc_msgSend_willModify(self, v11, v12, v13, v14, v15);
    objc_msgSend_p_removeDrawable_(self, v34, v35, v36, v37, v38, v44);
    objc_msgSend_p_addDrawable_toPageIndex_(self, v39, v40, v41, v42, v43, v44, a4);
  }
}

- (id)childEnumerator
{
  v6 = objc_msgSend_allDrawables(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_objectEnumerator(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v8, 0, v9, v10, v11, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v26, v30, 16);
  if (v19)
  {
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v26 + 1) + 8 * v25++), v18, v20, v21, v22, v23, v6, v7);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v26, v30, 16);
    }

    while (v19);
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_documentRoot, v6);
  v13 = objc_msgSend_context(v6, v8, v9, v10, v11, v12);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v14, v15, v16, v17, v18, v13);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v19, 0, v20, v21, v22, 0);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, v28, &v43, v47, 16);
  if (v30)
  {
    v35 = *v44;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v23);
        }

        v37 = *(*(&v43 + 1) + 8 * i);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v37, v29, v31, v32, v33, v34, v6, v7);
        objc_msgSend_didAddDrawable_(v6, v38, v39, v40, v41, v42, v37);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, v31, v32, v33, v34, &v43, v47, 16);
    }

    while (v30);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_documentRoot, 0);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v5, 0, v6, v7, v8, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v46, v50, 16);
  if (v16)
  {
    v21 = *v47;
    do
    {
      v22 = 0;
      do
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v9);
        }

        v23 = *(*(&v46 + 1) + 8 * v22);
        v24 = objc_msgSend_documentRoot(self, v15, v17, v18, v19, v20);
        objc_msgSend_willRemoveDrawable_(v24, v25, v26, v27, v28, v29, v23);

        objc_msgSend_willBeRemovedFromDocumentRoot_(v23, v30, v31, v32, v33, v34, v4);
        ++v22;
      }

      while (v16 != v22);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v46, v50, 16);
    }

    while (v16);
  }

  v40 = objc_msgSend_context(v4, v35, v36, v37, v38, v39);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v41, v42, v43, v44, v45, v40);

  objc_storeWeak(&self->_documentRoot, 0);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = objc_msgSend_tsu_allKeys(self->_pageIndexByDrawable, v5, 0, v6, v7, v8, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, v14, &v23, v27, 16);
  if (v16)
  {
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v23 + 1) + 8 * v22++), v15, v17, v18, v19, v20, v4);
      }

      while (v16 != v22);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, v17, v18, v19, v20, &v23, v27, 16);
    }

    while (v16);
  }
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end