uint64_t sub_276AB6518(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[SFUCryptoKey(TSPCryptoInfo) incrementDecodedLengthBy:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 144, 0, "This is not a mutable crypto info.");

  v9 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v9, v7, v8);
}

uint64_t sub_276AB65D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v8 = v4;
  if (v5 == v8)
  {
    v32 = 0;
  }

  else
  {
    v9 = objc_msgSend_cryptoKey(v5, v6, v7);
    v12 = objc_msgSend_cryptoKey(v8, v10, v11);
    if (SFUEqualCryptoKeys() && (v15 = objc_msgSend_preferredBlockSize(v5, v13, v14), v15 == objc_msgSend_preferredBlockSize(v8, v16, v17)))
    {
      v20 = objc_msgSend_blockInfos(v5, v18, v19);
      v25 = objc_msgSend_blockInfos(v8, v21, v22);
      if (v20 == v25)
      {
        v32 = 0;
      }

      else
      {
        v26 = objc_msgSend_blockInfos(v5, v23, v24);
        v29 = objc_msgSend_blockInfos(v8, v27, v28);
        isEqual = objc_msgSend_isEqual_(v26, v30, v29);

        v32 = isEqual ^ 1u;
      }
    }

    else
    {
      v32 = 1;
    }
  }

  return v32;
}

void sub_276AB6724(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

BOOL sub_276AB678C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v8 = a2;
  if (v5 | v8)
  {
    v10 = objc_msgSend_cryptoKey(v5, v6, v7);
    if (SFUEqualCryptoKeys())
    {
      v9 = objc_msgSend_preferredBlockSize(v5, v11, v12) != a3;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_276AB683C(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = v3;
  if (!v3 || a2 == -1)
  {
    v15 = v3;
  }

  else
  {
    if (!a2)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "id<TSPMutableCryptoInfo>  _Nonnull TSPMutableCryptoInfoForTranscodingToKey(SFUCryptoKey * _Nonnull __strong, size_t)");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 178, 0, "Preferred block size cannot be zero.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }

    v13 = [TSPMutableCryptoInfoInternal alloc];
    v15 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(v13, v14, v5, a2, 0, 0);
  }

  v16 = v15;

  return v16;
}

id sub_276AB695C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v11 = v8;
  if (!v7 || a2 == -1)
  {
    if (objc_msgSend_count(v8, v9, v10))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "id<TSPCryptoInfo>  _Nonnull TSPCryptoInfoCreate(SFUCryptoKey * _Nonnull __strong, size_t, NSArray * _Nullable __strong, size_t)");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 184, 0, "Block infos shouldn't be set when preferred block size is SIZE_T_MAX.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    v21 = v7;
  }

  else
  {
    if (!a2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "id<TSPCryptoInfo>  _Nonnull TSPCryptoInfoCreate(SFUCryptoKey * _Nonnull __strong, size_t, NSArray * _Nullable __strong, size_t)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 188, 0, "Preferred block size cannot be zero.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = [TSPCryptoInfoInternal alloc];
    v21 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(v19, v20, v7, a2, v11, a4);
  }

  v30 = v21;

  return v30;
}

void sub_276AB6B2C(void *a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSPCryptoInfoSaveToMessage(id<TSPCryptoInfo>  _Nonnull __strong, TSP::EncryptionInfo &)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 193, 0, "invalid nil value for '%{public}s'", "info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_decodedLength(v5, v3, v4);
  if (v13)
  {
    *(a2 + 16) |= 1u;
    *(a2 + 48) = v13;
  }

  v16 = objc_msgSend_preferredBlockSize(v5, v14, v15);
  if (v16 != -1)
  {
    *(a2 + 16) |= 2u;
    *(a2 + 56) = v16;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = objc_msgSend_blockInfos(v5, v17, v18);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v42, 16);
  if (v23)
  {
    v24 = *v39;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v38 + 1) + 8 * i);
        v27 = *(a2 + 40);
        if (!v27)
        {
          v29 = *(a2 + 36);
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v29 + 1);
          v27 = *(a2 + 40);
          v29 = *v27;
          goto LABEL_18;
        }

        v28 = *(a2 + 32);
        v29 = *v27;
        if (v28 < *v27)
        {
          *(a2 + 32) = v28 + 1;
          v30 = *&v27[2 * v28 + 2];
          goto LABEL_19;
        }

        if (v29 == *(a2 + 36))
        {
          goto LABEL_17;
        }

LABEL_18:
        *v27 = v29 + 1;
        v30 = sub_2769F58B8(*(a2 + 24));
        v31 = *(a2 + 32);
        v32 = *(a2 + 40) + 8 * v31;
        *(a2 + 32) = v31 + 1;
        *(v32 + 8) = v30;
LABEL_19:
        v33 = objc_msgSend_encodedLength(v26, v21, v22);
        *(v30 + 16) |= 1u;
        *(v30 + 24) = v33;
        v36 = objc_msgSend_decodedLength(v26, v34, v35);
        if (v33 != v36)
        {
          *(v30 + 16) |= 2u;
          *(v30 + 32) = v36;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v42, 16);
    }

    while (v23);
  }

  v37 = *MEMORY[0x277D85DE8];
}

id sub_276AB6E08(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 48);
    }

    else
    {
      v5 = 0;
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a2 + 32);
    if (v7 < 1)
    {
      v17 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = objc_msgSend_initWithCapacity_(v8, v9, v7);
      v11 = 8;
      do
      {
        v12 = *(*(a2 + 40) + v11);
        v13 = *(v12 + 24);
        if ((*(v12 + 16) & 2) != 0)
        {
          v14 = *(v12 + 32);
        }

        v15 = TSUEncodedBlockInfoCreate();
        objc_msgSend_addObject_(v10, v16, v15);

        v11 += 8;
        --v7;
      }

      while (v7);
      v17 = v10;
    }

    v18 = sub_276AB695C(v3, v6, v17, v5);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_276AB7094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v206[40] = *MEMORY[0x277D85DE8];
  v205[0] = @"TSWPLinkedTextBoxes";
  v204 = sub_276AB6F50(a1, a2, a3);
  v203 = objc_msgSend_localizedStringForKey_value_table_(v204, v3, @"TSWPLinkedTextBoxes", @"Linked Text Boxes", @"TSPersistence");
  v206[0] = v203;
  v205[1] = @"TSWPInlineDrawables";
  v202 = sub_276AB6F50(v203, v4, v5);
  v201 = objc_msgSend_localizedStringForKey_value_table_(v202, v6, @"TSWPInlineDrawables", @"Inline Drawables", @"TSPersistence");
  v206[1] = v201;
  v205[2] = @"TSWPFloatingEquations";
  v200 = sub_276AB6F50(v201, v7, v8);
  v199 = objc_msgSend_localizedStringForKey_value_table_(v200, v9, @"TSWPFloatingEquations", @"Floating Equations", @"TSPersistence");
  v206[2] = v199;
  v205[3] = @"TSWPEquations";
  v198 = sub_276AB6F50(v199, v10, v11);
  v197 = objc_msgSend_localizedStringForKey_value_table_(v198, v12, @"TSWPEquations", @"Equations", @"TSPersistence");
  v206[3] = v197;
  v205[4] = @"TSWPNewBorderOptions";
  v196 = sub_276AB6F50(v197, v13, v14);
  v195 = objc_msgSend_localizedStringForKey_value_table_(v196, v15, @"TSWPNewBorderOptions", @"New paragraph border options", @"TSPersistence");
  v206[4] = v195;
  v205[5] = @"TSWPOverlappingComments";
  v194 = sub_276AB6F50(v195, v16, v17);
  v193 = objc_msgSend_localizedStringForKey_value_table_(v194, v18, @"TSWPOverlappingComments", @"Overlapping Comments", @"TSPersistence");
  v206[5] = v193;
  v205[6] = @"TPPageTemplates";
  v192 = sub_276AB6F50(v193, v19, v20);
  v191 = objc_msgSend_localizedStringForKey_value_table_(v192, v21, @"TPPageTemplates", @"Page Templates", @"TSPersistence");
  v206[6] = v191;
  v205[7] = @"TSWPVerticalText";
  v190 = sub_276AB6F50(v191, v22, v23);
  v189 = objc_msgSend_localizedStringForKey_value_table_(v190, v24, @"TSWPVerticalText", @"Vertical Text", @"TSPersistence");
  v206[7] = v189;
  v205[8] = @"TSDThreadedComments";
  v188 = sub_276AB6F50(v189, v25, v26);
  v187 = objc_msgSend_localizedStringForKey_value_table_(v188, v27, @"TSDThreadedComments", @"Threaded Comments", @"TSPersistence");
  v206[8] = v187;
  v205[9] = @"TSCHLeaderLines";
  v186 = sub_276AB6F50(v187, v28, v29);
  v185 = objc_msgSend_localizedStringForKey_value_table_(v186, v30, @"TSCHLeaderLines", @"Chart Leader Lines", @"TSPersistence");
  v206[9] = v185;
  v205[10] = @"TSCHDonutCharts";
  v184 = sub_276AB6F50(v185, v31, v32);
  v183 = objc_msgSend_localizedStringForKey_value_table_(v184, v33, @"TSCHDonutCharts", @"Donut Charts", @"TSPersistence");
  v206[10] = v183;
  v205[11] = @"TSCHRadarCharts";
  v182 = sub_276AB6F50(v183, v34, v35);
  v181 = objc_msgSend_localizedStringForKey_value_table_(v182, v36, @"TSCHRadarCharts", @"Radar Charts", @"TSPersistence");
  v206[11] = v181;
  v205[12] = @"TSCHRoundedCorners";
  v180 = sub_276AB6F50(v181, v37, v38);
  v179 = objc_msgSend_localizedStringForKey_value_table_(v180, v39, @"TSCHRoundedCorners", @"Rounded corners in charts", @"TSPersistence");
  v206[12] = v179;
  v205[13] = @"TSAGalleries";
  v178 = sub_276AB6F50(v179, v40, v41);
  v177 = objc_msgSend_localizedStringForKey_value_table_(v178, v42, @"TSAGalleries", @"Image Galleries", @"TSPersistence");
  v206[13] = v177;
  v205[14] = @"TSACaptions";
  v176 = sub_276AB6F50(v177, v43, v44);
  v175 = objc_msgSend_localizedStringForKey_value_table_(v176, v45, @"TSACaptions", @"Object captions or titles", @"TSPersistence");
  v206[14] = v175;
  v205[15] = @"TSDFreehandDrawings";
  v174 = sub_276AB6F50(v175, v46, v47);
  v173 = objc_msgSend_localizedStringForKey_value_table_(v174, v48, @"TSDFreehandDrawings", @"Drawings", @"TSPersistence");
  v206[15] = v173;
  v205[16] = @"TSDMovieInfoPlaysAcrossSlides";
  v172 = sub_276AB6F50(v173, v49, v50);
  v171 = objc_msgSend_localizedStringForKey_value_table_(v172, v51, @"TSDMovieInfoPlaysAcrossSlides", @"Multi-slide Movies", @"TSPersistence");
  v206[16] = v171;
  v205[17] = @"TSKPencilAnnotations";
  v170 = sub_276AB6F50(v171, v52, v53);
  v169 = objc_msgSend_localizedStringForKey_value_table_(v170, v54, @"TSKPencilAnnotations", @"Annotations", @"TSPersistence");
  v206[17] = v169;
  v205[18] = @"TSKImprovedPencilAnnotations";
  v168 = sub_276AB6F50(v169, v55, v56);
  v167 = objc_msgSend_localizedStringForKey_value_table_(v168, v57, @"TSKImprovedPencilAnnotations", @"Improved Annotations", @"TSPersistence");
  v206[18] = v167;
  v205[19] = @"TSWPChangeTrackingInTextBoxes";
  v166 = sub_276AB6F50(v167, v58, v59);
  v165 = objc_msgSend_localizedStringForKey_value_table_(v166, v60, @"TSWPChangeTrackingInTextBoxes", @"Change tracking in text boxes and shapes", @"TSPersistence");
  v206[19] = v165;
  v205[20] = @"TPPageBackgrounds";
  v164 = sub_276AB6F50(v165, v61, v62);
  v163 = objc_msgSend_localizedStringForKey_value_table_(v164, v63, @"TPPageBackgrounds", @"Page Backgrounds", @"TSPersistence");
  v206[20] = v163;
  v205[21] = @"TNSheetBackgrounds";
  v162 = sub_276AB6F50(v163, v64, v65);
  v161 = objc_msgSend_localizedStringForKey_value_table_(v162, v66, @"TNSheetBackgrounds", @"Sheet Backgrounds", @"TSPersistence");
  v206[21] = v161;
  v205[22] = @"KNGalleryFadeAndMove";
  v160 = sub_276AB6F50(v161, v67, v68);
  v159 = objc_msgSend_localizedStringForKey_value_table_(v160, v69, @"KNGalleryFadeAndMove", @"Fade and Move Builds on Image Galleries", @"TSPersistence");
  v206[22] = v159;
  v205[23] = @"KNAlignToPath";
  v158 = sub_276AB6F50(v159, v70, v71);
  v157 = objc_msgSend_localizedStringForKey_value_table_(v158, v72, @"KNAlignToPath", @"Align to Path option for Move Action Build", @"TSPersistence");
  v206[23] = v157;
  v205[24] = @"TSTCategorizedTables";
  v156 = sub_276AB6F50(v157, v73, v74);
  v155 = objc_msgSend_localizedStringForKey_value_table_(v156, v75, @"TSTCategorizedTables", @"Categorized Tables", @"TSPersistence");
  v206[24] = v155;
  v205[25] = @"TSTExpandedTables";
  v154 = sub_276AB6F50(v155, v76, v77);
  v153 = objc_msgSend_localizedStringForKey_value_table_(v154, v78, @"TSTExpandedTables", @"Expanded Tables", @"TSPersistence");
  v206[25] = v153;
  v205[26] = @"TSCEReduceCalcEngineMsgSize";
  v152 = sub_276AB6F50(v153, v79, v80);
  v151 = objc_msgSend_localizedStringForKey_value_table_(v152, v81, @"TSCEReduceCalcEngineMsgSize", @"Saving Large Files", @"TSPersistence");
  v206[26] = v151;
  v205[27] = @"TSKCellPencilAnnotations";
  v150 = sub_276AB6F50(v151, v82, v83);
  v149 = objc_msgSend_localizedStringForKey_value_table_(v150, v84, @"TSKCellPencilAnnotations", @"Cell Annotations", @"TSPersistence");
  v206[27] = v149;
  v205[28] = @"TSWPAdvancedTextStyles";
  v148 = sub_276AB6F50(v149, v85, v86);
  v147 = objc_msgSend_localizedStringForKey_value_table_(v148, v87, @"TSWPAdvancedTextStyles", @"New Text Fill and Outline Options", @"TSPersistence");
  v206[28] = v147;
  v205[29] = @"TPLinkToPage";
  v146 = sub_276AB6F50(v147, v88, v89);
  v145 = objc_msgSend_localizedStringForKey_value_table_(v146, v90, @"TPLinkToPage", @"Links to Pages", @"TSPersistence");
  v206[29] = v145;
  v205[30] = @"TNLinkToSheet";
  v144 = sub_276AB6F50(v145, v91, v92);
  v143 = objc_msgSend_localizedStringForKey_value_table_(v144, v93, @"TNLinkToSheet", @"Links to Sheets", @"TSPersistence");
  v206[30] = v143;
  v205[31] = @"TSWPDropCaps";
  v142 = sub_276AB6F50(v143, v94, v95);
  v141 = objc_msgSend_localizedStringForKey_value_table_(v142, v96, @"TSWPDropCaps", @"Drop Caps", @"TSPersistence");
  v206[31] = v141;
  v205[32] = @"TSWPLinkToIBAReference";
  v140 = sub_276AB6F50(v141, v97, v98);
  v139 = objc_msgSend_localizedStringForKey_value_table_(v140, v99, @"TSWPLinkToIBAReference", @"IBA Import Hyperlinks", @"TSPersistence");
  v206[32] = v139;
  v205[33] = @"TSAWebVideos";
  v138 = sub_276AB6F50(v139, v100, v101);
  v137 = objc_msgSend_localizedStringForKey_value_table_(v138, v102, @"TSAWebVideos", @"Web Videos", @"TSPersistence");
  v206[33] = v137;
  v205[34] = @"TSTPivotTables";
  v136 = sub_276AB6F50(v137, v103, v104);
  v135 = objc_msgSend_localizedStringForKey_value_table_(v136, v105, @"TSTPivotTables", @"Pivot Tables", @"TSPersistence");
  v206[34] = v135;
  v205[35] = @"TSDObjectLinks";
  v134 = sub_276AB6F50(v135, v106, v107);
  v109 = objc_msgSend_localizedStringForKey_value_table_(v134, v108, @"TSDObjectLinks", @"Object Links", @"TSPersistence");
  v206[35] = v109;
  v205[36] = @"KNLiveVideos";
  v112 = sub_276AB6F50(v109, v110, v111);
  v114 = objc_msgSend_localizedStringForKey_value_table_(v112, v113, @"KNLiveVideos", @"Live Video", @"TSPersistence");
  v206[36] = v114;
  v205[37] = @"TSTPivotTables_v2";
  v117 = sub_276AB6F50(v114, v115, v116);
  v119 = objc_msgSend_localizedStringForKey_value_table_(v117, v118, @"TSTPivotTables_v2", @"Pivot Tables v2", @"TSPersistence");
  v206[37] = v119;
  v205[38] = @"KNLiveVideoBackgrounds";
  v122 = sub_276AB6F50(v119, v120, v121);
  v124 = objc_msgSend_localizedStringForKey_value_table_(v122, v123, @"KNLiveVideoBackgrounds", @"Live Video Backgrounds", @"TSPersistence");
  v206[38] = v124;
  v205[39] = @"TSAObject3D";
  v127 = sub_276AB6F50(v124, v125, v126);
  v129 = objc_msgSend_localizedStringForKey_value_table_(v127, v128, @"TSAObject3D", @"3D Object", @"TSPersistence");
  v206[39] = v129;
  v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v130, v206, v205, 40);
  v132 = qword_280A52A50;
  qword_280A52A50 = v131;

  v133 = *MEMORY[0x277D85DE8];
}

void sub_276AB7CC8(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_allKeys(a1, v5, v6);
  v9 = objc_msgSend_sortedArrayUsingComparator_(v7, v8, &unk_2885C4FF8);

  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v25, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v21;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      v18 = objc_msgSend_objectForKeyedSubscript_(a1, v13, v17, v20);
      v4[2](v4, v17, v18, &v24);

      if (v24)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v20, v25, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_276AB7E38(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_tsp_identifier(v6, v7, v8);
  objc_opt_class();
  v10 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_tsp_identifier(v10, v11, v12);
  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

void sub_276AB7EDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDA38 = v5;
  qword_2812FDA30[0] = &unk_2885C5028;
  if (atomic_load_explicit(dword_2812FC268, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC268);
  }

  qword_2812FDA48 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FDA30, v4);
}

void sub_276AB7F8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  sub_276AB86C8(&unk_2812FDA50, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FDA50, v4);
}

void sub_276AB7FFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDA98 = v5;
  qword_2812FDA90[0] = &unk_2885C5188;
  if (atomic_load_explicit(dword_2812FC2A8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC2A8);
  }

  dword_2812FDAB0 = 0;
  qword_2812FDAA8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FDA90, v4);
}

void *sub_276AB80B0(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C5028;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812FC268, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC268);
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_276AB8118(uint64_t *a1)
{
  if (a1 != qword_2812FDA30)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::DataReference::~DataReference(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_276AB817C(uint64_t *a1)
{
  sub_276AB8118(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_276AB81BC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::DataReference::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_276AB8218(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v19 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v19, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v19 + 1);
    v8 = *v19;
    if (*v19 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
        v19 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v17;
        goto LABEL_7;
      }

      v7 = (v19 + 2);
    }

    v19 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v15);
        *(a1 + 24) = v14;
        v7 = v19;
      }

      v13 = sub_276BD61C4(a3, v14, v7);
    }

    else
    {
      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 20) = v8 - 1;
        return v19;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_2769F617C((a1 + 8));
        v7 = v19;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v6);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *sub_276AB8360(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_276AB8450(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(a1 + 16))
  {
    v6 = TSP::DataReference::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

void sub_276AB84DC(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_276AB8584(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_276AB8584(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 4) |= 1u;
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v7);
      v3[3] = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_DataReference_default_instance_;
    }

    return TSP::DataReference::MergeFrom(v6, v8);
  }

  return result;
}

void sub_276AB862C(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_276AB81BC(a1);

    sub_276AB84DC(a1, a2);
  }
}

uint64_t sub_276AB8678(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSP::DataReference::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276AB8690()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FC2C8, 0);
  result = *off_2812FC320;
  v1 = off_2812FC320[1];
  return result;
}

uint64_t sub_276AB86C8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C50D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FC288, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC288);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return a1;
}

uint64_t sub_276AB874C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(a1 + 32);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812FDA50)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C((a1 + 8));
  return a1;
}

void sub_276AB8820(uint64_t a1)
{
  sub_276AB874C(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_276AB8860(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = TSP::Reference::Clear(*(result + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 14) = 0;
    *(v1 + 6) = 0;
    *(v1 + 60) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return result;
}

google::protobuf::internal *sub_276AB8948(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v39, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (v9 != 18)
            {
              goto LABEL_47;
            }

            *(a1 + 16) |= 1u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 24);
          }

          else
          {
            if (v11 != 3 || v9 != 26)
            {
LABEL_47:
              if (v9)
              {
                v28 = (v9 & 7) == 4;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              v29 = *(a1 + 8);
              if (v29)
              {
                v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
              }

              else
              {
                v30 = sub_2769F617C((a1 + 8));
                v8 = v39;
              }

              v20 = google::protobuf::internal::UnknownFieldParse(v9, v30, v8, a3, v5);
              goto LABEL_54;
            }

            *(a1 + 16) |= 2u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 32);
          }

          v24 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
          v20 = google::protobuf::internal::InlineGreedyStringParser(v24, v39, a3);
          goto LABEL_54;
        }

        if (v9 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v19);
          *(a1 + 40) = v18;
          v8 = v39;
        }

        v20 = sub_276BD2124(a3, v18, v8);
LABEL_54:
        v39 = v20;
        if (!v20)
        {
          goto LABEL_67;
        }

        goto LABEL_55;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_47;
        }

        v6 |= 8u;
        v22 = (v8 + 1);
        v21 = *v8;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_36:
          v39 = v22;
          *(a1 + 48) = v21;
          goto LABEL_55;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v8, v21);
        v39 = v33;
        *(a1 + 48) = v34;
        if (!v33)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5)
      {
        if (v9 != 40)
        {
          goto LABEL_47;
        }

        v6 |= 0x10u;
        v25 = (v8 + 1);
        LODWORD(v26) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *v25;
        v26 = (v26 + (v27 << 7) - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v8 + 2);
LABEL_46:
          v39 = v25;
          *(a1 + 56) = v26;
          goto LABEL_55;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v8, v26);
        v39 = v37;
        *(a1 + 56) = v38;
        if (!v37)
        {
LABEL_67:
          v39 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 6 || v9 != 48)
        {
          goto LABEL_47;
        }

        v6 |= 0x20u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_25:
          v39 = v16;
          *(a1 + 60) = v15 != 0;
          goto LABEL_55;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v39 = v35;
        *(a1 + 60) = v36 != 0;
        if (!v35)
        {
          goto LABEL_67;
        }
      }

LABEL_55:
      if (sub_2769F6104(a3, &v39, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v39;
}

const google::protobuf::UnknownFieldSet *sub_276AB8C8C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(a1 + 40);
    *v4 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      *(v4 + 1) = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v4 + 3;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        *(v4 + 2) = v13;
        v12 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v11;
      v12 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v10, v12, a3, v4);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2769E1AB4(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(a1 + 48);
    *v4 = 32;
    if (v16 > 0x7F)
    {
      *(v4 + 1) = v16 | 0x80;
      v17 = v16 >> 7;
      if (v16 >> 14)
      {
        v4 = (v4 + 3);
        do
        {
          *(v4 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          v4 = (v4 + 1);
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v4 - 1) = v18;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v4 + 2) = v17;
        v4 = (v4 + 3);
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      *(v4 + 1) = v16;
      v4 = (v4 + 2);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_23:
  v4 = sub_2769E1AB4(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 56);
  *v4 = 40;
  if (v20 > 0x7F)
  {
    *(v4 + 1) = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      v4 = (v4 + 3);
      do
      {
        *(v4 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        v4 = (v4 + 1);
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v4 - 1) = v22;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v4 + 2) = v21;
      v4 = (v4 + 3);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *(v4 + 1) = v20;
    v4 = (v4 + 2);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 60);
  *v4 = 48;
  *(v4 + 1) = v7;
  v4 = (v4 + 2);
LABEL_10:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_276AB8F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) != 0)
  {
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 4) & 2);
}

uint64_t sub_276AB8F98(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if ((~v5 & 0x22) != 0)
  {
    v9 = sub_276AB8F3C(a1);
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v7 = *(v6 + 23);
  v8 = *(v6 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v7;
  }

  v9 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 3);
  if (v5)
  {
LABEL_7:
    v10 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v9 = (v9 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_10:
  if ((v5 & 0x1C) == 0)
  {
    goto LABEL_15;
  }

  if ((v5 & 4) != 0)
  {
    v14 = TSP::Reference::ByteSizeLong(*(a1 + 40), a2, a3, a4);
    v9 = (&v14->ptr_ + v9 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 8) == 0)
    {
LABEL_13:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = (v9 + ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1);
  if ((v5 & 0x10) != 0)
  {
LABEL_14:
    v9 = (v9 + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_15:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v9, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v9;
    return v9;
  }
}

void sub_276AB9130(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_276AB91D8(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_276AB91D8(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 24);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 32);
    *(v3 + 4) |= 2u;
    v9 = v3[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 4, (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_19:
    *(v3 + 4) |= 4u;
    v10 = v3[5];
    if (!v10)
    {
      v11 = v3[1];
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v11);
      v3[5] = v10;
    }

    if (*(a2 + 40))
    {
      v12 = *(a2 + 40);
    }

    else
    {
      v12 = &TSP::_Reference_default_instance_;
    }

    result = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v3[6] = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 4) |= v5;
        return result;
      }

LABEL_10:
      *(v3 + 60) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_28:
    *(v3 + 14) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_276AB9324(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_276AB8860(a1);

    sub_276AB9130(a1, a2);
  }
}

uint64_t sub_276AB9370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0x22) != 0)
  {
    return 0;
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276AB93B4()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FC2C8, 0);
  result = off_2812FC320[2];
  v1 = off_2812FC320[3];
  return result;
}

uint64_t sub_276AB93EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C5188;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FC2A8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC2A8);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t *sub_276AB9458(uint64_t *a1)
{
  if (a1 != qword_2812FDA90)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276AB874C(v2);
      MEMORY[0x277C9F670](v3, 0x10A1C40F9A64509);
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_276AB94BC(uint64_t *a1)
{
  sub_276AB9458(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_276AB94FC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_276AB8860(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_276AB955C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  for (i = *(a3 + 92); (sub_2769F6104(a3, &v23, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v23 + 1);
    v8 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v23 + 2);
LABEL_6:
      v23 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v21;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 16)
      {
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v23 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          if (!v23)
          {
            return 0;
          }
        }

        else
        {
          v16 = (v7 + 2);
LABEL_23:
          v23 = v16;
        }

        if (v15 > 2)
        {
          sub_276BD6364((a1 + 8), v15);
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
        }

        continue;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_276AB9D0C(v19);
        *(a1 + 24) = v18;
        v7 = v23;
      }

      v14 = sub_276BD6294(a3, v18, v7);
      goto LABEL_31;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v8 - 1;
      return v23;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C((a1 + 8));
      v7 = v23;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
LABEL_31:
    v23 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *sub_276AB972C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 20);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = (a2 + 3);
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          v9 = (v9 + 1);
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v8;
      v9 = (a2 + 2);
    }

    a2 = sub_276AB8C8C(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 32);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_276AB98AC(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = sub_276AB8F98(*(a1 + 24), a2, a3, a4);
    result = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v5 & 2) == 0)
    {
      return result;
    }
  }

  v8 = *(a1 + 32);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v9;
  return result;
}

uint64_t sub_276AB9940(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v11 = sub_276AB98AC(a1, a2, a3, a4);
  }

  else
  {
    v5 = sub_276AB8F98(*(a1 + 24), a2, a3, a4);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v8 = *(a1 + 32);
    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 10;
    }

    v11 = (v5 + v7 + v10 + 2);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v11, (a1 + 20), v6);
  }

  else
  {
    *(a1 + 20) = v11;
    return v11;
  }
}

void sub_276AB9A08(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_276AB9AB0(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_276AB9AB0(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276AB9D0C(v7);
        v3[3] = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812FDA50;
      }

      result = sub_276AB91D8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_276AB9B64(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_276AB94FC(a1);

    sub_276AB9A08(a1, a2);
  }
}

BOOL sub_276AB9BB0(uint64_t a1)
{
  result = 0;
  if ((~*(a1 + 16) & 3) == 0)
  {
    v1 = *(a1 + 24);
    v2 = *(v1 + 16);
    if (~v2 & 0x22) == 0 && ((v2 & 4) == 0 || (TSP::Reference::IsInitialized(*(v1 + 40))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_276AB9C08()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FC2C8, 0);
  result = off_2812FC320[4];
  v1 = off_2812FC320[5];
  return result;
}

void *sub_276AB9C44(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276AB9EB0(a1, a2, a3);
}

void *sub_276AB9D10(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276AB9FB0(a1, 1);
  sub_276AB86C8(v2, a1);
  return v2;
}

void *sub_276AB9D9C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276ABA03C(a1);
}

void *sub_276AB9EB0(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_276AB9F24(a1, 1, a3);
  *v4 = &unk_2885C5028;
  v4[1] = a1;
  v4[2] = 0;
  if (atomic_load_explicit(dword_2812FC268, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC268);
  }

  v4[3] = 0;
  return v4;
}

void *sub_276AB9F24(google::protobuf::Arena *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(this + 24))
  {
    sub_276BD63A8(this, a2, a3);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276AB9FAC);
}

void *sub_276AB9FB0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD63D4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, sub_276ABA038);
}

void *sub_276ABA03C(google::protobuf::Arena *a1)
{
  v2 = sub_276ABA0B4(a1, 1);
  *v2 = &unk_2885C5188;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812FC2A8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC2A8);
  }

  *(v2 + 8) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_276ABA0B4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD640C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_276ABA13C);
}

uint64_t sub_276ABA14C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_scheme(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, @"iWorkAVAsset");

  return isEqualToString;
}

id sub_276ABA198(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = MEMORY[0x277CCACE0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  objc_msgSend_setScheme_(v11, v12, @"iWorkAVAsset");
  objc_msgSend_setHost_(v11, v13, v10);

  v15 = objc_msgSend_stringByAppendingString_(@"/", v14, v9);

  objc_msgSend_setPath_(v11, v16, v15);
  v18 = objc_msgSend_stringByAppendingString_(@"uti=", v17, v8);

  objc_msgSend_setQuery_(v11, v19, v18);
  v22 = objc_msgSend_URL(v11, v20, v21);

  return v22;
}

id sub_276ABA294(void *a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_tsp_isIWorkAVAssetURL(a1, a2, a3) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[NSURL(TSPersistence) tsp_embeddedUTI]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSURL_TSPersistence.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 46, 0, "UTIs only provided within iWork-internal URLs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_absoluteString(a1, v4, v5);
  v16 = objc_msgSend_rangeOfString_(v13, v14, @"uti=");
  v17 = v15;
  if (!v15)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[NSURL(TSPersistence) tsp_embeddedUTI]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSURL_TSPersistence.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 49, 0, "Expected UTI in iWork URL!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_substringFromIndex_(v13, v15, &v17[v16]);

  return v25;
}

id sub_276ABA400(void *a1, const char *a2)
{
  v4 = objc_msgSend_checkResourceIsReachableAndReturnError_(a1, a2, 0);
  v5 = 0;
  if (v4)
  {
    v11 = 0;
    v6 = *MEMORY[0x277CBE808];
    v10 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(a1, v3, &v11, v6, &v10);
    v5 = v11;
    if ((ResourceValue_forKey_error & 1) == 0)
    {
      if (*MEMORY[0x277D81418] != -1)
      {
        v9 = v5;
        sub_276BD6444();
        v5 = v9;
      }

      v5 = 0;
    }
  }

  return v5;
}

void sub_276ABA4AC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81420];
  *MEMORY[0x277D81420] = v0;
}

id sub_276ABA4F0(void *a1, const char *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_query(a1, a2, a3);
  v5 = objc_msgSend_componentsSeparatedByString_(v3, v4, @"&");

  v8 = objc_msgSend_count(v5, v6, v7);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB38]);
    v8 = objc_msgSend_initWithCapacity_(v9, v10, v8);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v5;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v38, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = objc_msgSend_componentsSeparatedByString_(*(*(&v34 + 1) + 8 * i), v14, @"=");
          if (objc_msgSend_count(v18, v19, v20) == 2)
          {
            v22 = objc_msgSend_objectAtIndexedSubscript_(v18, v21, 0);
            v24 = objc_msgSend_objectForKeyedSubscript_(v8, v23, v22);

            if (!v24)
            {
              v26 = objc_msgSend_objectAtIndexedSubscript_(v18, v25, 1);
              v29 = objc_msgSend_stringByRemovingPercentEncoding(v26, v27, v28);
              objc_msgSend_setObject_forKeyedSubscript_(v8, v30, v29, v22);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v38, 16);
      }

      while (v15);
    }

    v5 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_276ABAA74()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276ABB048()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABB08C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABB0D0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276ABB114(void *a1, void *a2)
{
  v7 = a2;
  *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
  objc_msgSend_setDidWriteSupportBundleSuccessfuly_(*(a1[4] + 40), v3, (v7 != 0) & *(*(a1[6] + 8) + 24));
  if (objc_msgSend_shouldUpdate(*(a1[4] + 40), v4, v5))
  {
    dispatch_group_enter(*(a1[4] + 48));
    objc_msgSend_setShouldLeavePendingEndSave_(*(a1[4] + 40), v6, 1);
  }
}

void sub_276ABB1E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v7 = objc_msgSend_safeSaveAssistant(*(*(a1 + 32) + 40), a2, a3);
  v6 = objc_msgSend_writeURL(v7, v4, v5);
  (*(v3 + 16))(v3, v6);
}

void sub_276ABB270()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABB920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a37, 8);

  _Block_object_dispose((v45 - 240), 8);
  _Block_object_dispose((v45 - 192), 8);

  _Block_object_dispose((v45 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_276ABBA60()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276ABBAA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276ABBABC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_safeSaveAssistant(*(*(a1 + 32) + 40), v10, v11);
  v13 = *(*(*(a1 + 56) + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(*(a1 + 64) + 8);
  obj = *(v15 + 40);
  v17 = objc_msgSend_endSaveWithSuccess_toURL_addingAttributes_error_(v12, v16, v13, v9, v14, &obj);
  objc_storeStrong((v15 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v17;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setOriginalURL_(*(*(a1 + 32) + 40), v18, v8);
    objc_msgSend_setURL_(*(*(a1 + 32) + 40), v19, v9);
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21);
    v25 = objc_msgSend_originalURL(*(*(a1 + 32) + 40), v23, v24);
    objc_msgSend_removeItemAtURL_error_(v22, v26, v25, 0);

    v29 = objc_msgSend_originalURL(*(*(a1 + 32) + 40), v27, v28);
    v32 = objc_msgSend_URL(*(*(a1 + 32) + 40), v30, v31);
    objc_msgSend_itemAtURL_didMoveToURL_(v7, v33, v29, v32);

    if (objc_msgSend_shouldUpdate(*(*(a1 + 32) + 40), v34, v35))
    {
      v38 = objc_msgSend_URL(*(*(a1 + 32) + 40), v36, v37);
      v39 = *(*(a1 + 72) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;

      v42 = objc_msgSend_writtenPackageWithURL_(*(a1 + 48), v41, *(*(*(a1 + 72) + 8) + 40));
      v43 = *(*(a1 + 80) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      objc_msgSend_setPresentedSupportURL_(*(a1 + 32), v45, *(*(*(a1 + 72) + 8) + 40));
    }
  }
}

void sub_276ABBCE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_safeSaveAssistant(*(*(a1 + 32) + 40), v4, v5);
  v7 = *(*(*(a1 + 56) + 8) + 24);
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v11 = objc_msgSend_endSaveWithSuccess_toURL_addingAttributes_error_(v6, v10, v7, v3, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v11;

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setURL_(*(*(a1 + 32) + 40), v12, v3);
    if (objc_msgSend_shouldUpdate(*(*(a1 + 32) + 40), v13, v14))
    {
      v17 = objc_msgSend_URL(*(*(a1 + 32) + 40), v15, v16);
      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v21 = objc_msgSend_writtenPackageWithURL_(*(a1 + 48), v20, *(*(*(a1 + 72) + 8) + 40));
      v22 = *(*(a1 + 80) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      objc_msgSend_setPresentedSupportURL_(*(a1 + 32), v24, *(*(*(a1 + 72) + 8) + 40));
    }
  }
}

void sub_276ABBE3C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABC108(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v16 = a5;
  if (a6 & 1) != 0 || (objc_msgSend_tsp_hasReadFileAccess(MEMORY[0x277CCACC8], v14, v15))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = MEMORY[0x277CCA9E8];
    v25 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276ABC2BC;
    v23[3] = &unk_27A6E2ED0;
    v18 = *(a1 + 32);
    v24 = *(a1 + 40);
    LOBYTE(v18) = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v17, v19, v13, 1, 0, v18, &v25, v23);
    v22 = v25;
    if ((v18 & 1) == 0)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD655C();
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v20, v21);
    }
  }
}

void sub_276ABC2BC(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v3, v4);
    v8 = objc_msgSend_threadDictionary(v5, v6, v7);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v9, v10, @"TSPSupportURL");
  }

  (*(*(a1 + 32) + 16))();
}

void sub_276ABC388()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABC870()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABCC1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v13 = objc_msgSend_documentUUID(*(a1 + 40), v11, v12);
  v16 = objc_msgSend_versionUUID(*(a1 + 40), v14, v15);
  *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_isSupportAtURLValid_documentUUID_versionUUID_documentProperties_(v10, v17, v7, v13, v16, 0);

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_18;
  }

  v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19);
  v23 = objc_msgSend_path(v8, v21, v22);
  v25 = objc_msgSend_fileExistsAtPath_(v20, v24, v23);

  if (v25)
  {
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_removeItemAtURL_error_(v20, v26, v8, *(a1 + 64));
  }

  v27 = *(*(a1 + 56) + 8);
  v28 = *(v27 + 24);
  if (*(a1 + 72) != 1)
  {
    if (*(v27 + 24))
    {
      v29 = objc_msgSend_moveItemAtURL_toURL_error_(v20, v26, v7, v8, *(a1 + 64));
      goto LABEL_9;
    }

LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  if (!*(v27 + 24))
  {
    goto LABEL_10;
  }

  v29 = objc_msgSend_copyItemAtURL_toURL_error_(v20, v26, v7, v8, *(a1 + 64));
LABEL_9:
  v27 = *(*(a1 + 56) + 8);
LABEL_11:
  *(v27 + 24) = v29;
  v30 = *(*(a1 + 56) + 8);
  if (*(v30 + 24) == 1)
  {
    v31 = objc_msgSend_writeToDocumentBundleURL_error_(*(a1 + 48), v26, v8, *(a1 + 64));
    v30 = *(*(a1 + 56) + 8);
  }

  else
  {
    v31 = 0;
  }

  *(v30 + 24) = v31;
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (*(a1 + 72) & 1) == 0)
  {
    objc_msgSend_itemAtURL_didMoveToURL_(v32, v26, v7, v8);
  }

LABEL_18:
}

void sub_276ABCFFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
  v10 = 0;
  v5 = objc_msgSend_URLForDirectory_inDomain_appropriateForURL_create_error_(v3, v4, 13, 1, 0, 1, &v10);
  v6 = v10;

  if (v5)
  {
    v8 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v5, v7, @"DocumentSupport", 1);
    v9 = qword_280A52AA0;
    qword_280A52AA0 = v8;
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD65C0();
  }
}

void sub_276ABD0E4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABD364()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABD3A8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABE4D8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D813F8];
  *MEMORY[0x277D813F8] = v0;
}

void sub_276ABE5B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (*MEMORY[0x277D813F0] != -1)
    {
      sub_276BD668C();
    }

    objc_end_catch();
    JUMPOUT(0x276ABE598);
  }

  _Unwind_Resume(a1);
}

void sub_276ABE620()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D813F8];
  *MEMORY[0x277D813F8] = v0;
}

id sub_276ABF070()
{
  if (qword_280A52AD8 != -1)
  {
    sub_276BD66A0();
  }

  v1 = qword_280A52AD0;

  return v1;
}

uint64_t sub_276ABF4CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_msgSend_URLByAppendingPathComponent_(*(a1 + 32), v6, a3);
  v9 = objc_msgSend_writeToURL_options_error_(v5, v8, v7, 0, *(a1 + 40));

  return v9;
}

void sub_276ABF980(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276ABFA90()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ABFD38(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringByAppendingPathComponent_(@"Metadata", a2, @"Properties.plist");
  v3 = qword_280A52AB0;
  qword_280A52AB0 = v2;
}

void sub_276ABFDC8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringByAppendingPathComponent_(@"Metadata", a2, @"DocumentIdentifier");
  v3 = qword_280A52AC0;
  qword_280A52AC0 = v2;
}

void sub_276AC07AC(uint64_t a1, const char *a2)
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"documentUUID";
  v5[1] = @"versionUUID";
  v5[2] = @"shareUUID";
  v5[3] = @"fileFormatVersion";
  v5[4] = @"privateUUID";
  v5[5] = @"revision";
  v5[6] = @"stableDocumentUUID";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 7);
  v3 = qword_280A52AD0;
  qword_280A52AD0 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t UnsafePointer()
{
  return qword_280A51F00;
}

{
  return qword_280A51F08;
}

BOOL sub_276AC0890(unint64_t a1)
{
  if (qword_280A51F00 < a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = HIDWORD(a1) & 0xFFFFFF;
  v4 = a1 & 0xFFFFFF;
  while (1)
  {
    v5 = qword_276C16E80[v2];
    if (v3 == HIDWORD(v5))
    {
      break;
    }

    result = 0;
    if (v3 <= HIDWORD(v5) && v2++ != 30)
    {
      continue;
    }

    return result;
  }

  return v4 >= v5;
}

uint64_t UnsafePointer(uint64_t result, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a2)
  {
    *a2 = HIWORD(result);
  }

  if (a3)
  {
    *a3 = WORD2(result);
  }

  if (a4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_276AC091C(void *a1, const char *a2)
{
  v2 = objc_msgSend_componentsSeparatedByString_(a1, a2, @".");
  if (objc_msgSend_count(v2, v3, v4) == 3)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v2, v5, 0);
    v9 = objc_msgSend_integerValue(v6, v7, v8);

    if (v9 >= 0x10000)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 307, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
      v11 = 0xFFFF000000000000;
    }

    else if (v9 < 0)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 307, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
      v11 = 0;
    }

    else
    {
      v11 = v9 << 48;
    }

    v12 = objc_msgSend_objectAtIndexedSubscript_(v2, v10, 1);
    v15 = objc_msgSend_integerValue(v12, v13, v14);

    if (v15 >= 0x10000)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 308, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      v17 = 0xFFFF00000000;
    }

    else if (v15 < 0)
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 308, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
      v17 = 0;
    }

    else
    {
      v17 = v15 << 32;
    }

    v18 = objc_msgSend_objectAtIndexedSubscript_(v2, v16, 2);
    v21 = objc_msgSend_integerValue(v18, v19, v20);

    if (v21 >= 0x100000000)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 309, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
      v21 = 0xFFFFFFFFLL;
    }

    else if (v21 < 0)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 309, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
      v21 = 0;
    }

    v23 = v17 | v11 | v21;
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSPVersion TSPVersionFromNSString(NSString *__strong)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 303, 0, "Version should consist of 3 numbers separated by '.'");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    v23 = 0;
  }

  return v23;
}

unint64_t UnsafePointer(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_versionMessage(v1, v2, v3);
  v6 = UnsafePointer(v4, v5);

  return v6;
}

unint64_t UnsafePointer(uint64_t a1, const char *a2)
{
  v2 = *a1;
  if (*a1 < 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v4 = **(a1 + 8);
  if (v4 >= 0x10000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPVersion TSPVersionFromMessage(const TSPVersionMessage &)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 340, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    v5 = 0xFFFF000000000000;
  }

  else
  {
    v5 = v4 << 48;
  }

  if (v2 == 1)
  {
    v6 = 0;
LABEL_11:
    v8 = 0;
    return v5 | v6 | v8;
  }

  v7 = *(*(a1 + 8) + 4);
  if (v7 >= 0x10000)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPVersion TSPVersionFromMessage(const TSPVersionMessage &)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 341, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v6 = 0xFFFF00000000;
  }

  else
  {
    v6 = v7 << 32;
  }

  if (v2 < 3)
  {
    goto LABEL_11;
  }

  v8 = *(*(a1 + 8) + 8);
  return v5 | v6 | v8;
}

void UnsafePointer(unint64_t a1, void *a2)
{
  v6 = a2;
  v5 = objc_msgSend_versionMessage(v6, v3, v4);
  UnsafePointer(a1, v5);
}

unint64_t UnsafePointer(unint64_t result, uint64_t a2)
{
  *a2 = 0;
  if (!*(a2 + 4))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v2 = *(a2 + 8);
  *v2 = HIWORD(result);
  *a2 = 1;
  if (*(a2 + 4) == 1)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v2[1] = WORD2(result);
  *a2 = 2;
  if (*(a2 + 4) == 2)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v2[2] = result;
  *a2 = 3;
  return result;
}

void sub_276AC13A4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC1AE4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC1B28()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC1B6C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC1C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = TSPPackageWriter;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_276AC1E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 56);
  v2 = (v1 + 56);
  if (!v3)
  {
    objc_storeStrong(v2, *(a1 + 40));
  }
}

void sub_276AC2774(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  objc_msgSend_setError_(*(a1 + 32), v5, v7);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

void sub_276AC2968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276AC29A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AC29BC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276AC3A80()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC3E54()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC42A8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC44F0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC478C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
}

void sub_276AC496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276AC499C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276AC4B58()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AC5D30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A08184(va);

  _Unwind_Resume(a1);
}

uint64_t sub_276AC6814(uint64_t a1, const char *a2)
{
  result = objc_msgSend_containsItem_(*(a1 + 40), a2, a2);
  if (result)
  {
    v5 = *(a1 + 32);

    return MEMORY[0x2821F9670](v5, sel_removeItem_, a2);
  }

  return result;
}

__CFString *sub_276AC69B4(uint64_t a1, const char *a2)
{
  if (a1 < 3)
  {
    return off_27A6E6B90[a1];
  }

  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSString *NSStringFromTSPPackageIdentifier(TSPPackageIdentifier)");
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCommon.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 22, 0, "Unexpected integer value for package identifier: %d", a1);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return @"Unknown";
}

uint64_t sub_276AC6A7C(uint64_t a1, const char *a2)
{
  v2 = a1;
  if (a1 >= 3)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSPPackageIdentifier TSPPackageIdentifierFromUnsignedInteger(uint32_t)");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCommon.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 32, 0, "Unexpected integer value for package identifier: %d", v2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    LOBYTE(v2) = 0;
  }

  return v2;
}

id sub_276AC6EE4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = UnsafePointer();
  v11 = objc_msgSend_count(v7, v9, v10);
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v63 = objc_msgSend_initWithCapacity_(v12, v13, v11);
  if (v11)
  {
    v59 = a4;
    v60 = a5;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v61 = v7;
    obj = v7;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v65, v69, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v66;
      v22 = v8;
      v23 = v63;
      v62 = *v66;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v66 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v65 + 1) + 8 * i);
          v28 = objc_msgSend_identifier(v25, v18, v19, v59, v60, v61);
          if (v28)
          {
            v29 = objc_msgSend_objectForKeyedSubscript_(v23, v26, v28);
            if (v29)
            {
              v31 = v29;
              v32 = [TSPFeatureInfo alloc];
              Version = objc_msgSend_readVersion(v25, v33, v34);
              v38 = objc_msgSend_readVersion(v31, v36, v37);
              if (Version <= v38)
              {
                Version = v38;
              }

              v41 = objc_msgSend_writeVersion(v25, v39, v40);
              v44 = objc_msgSend_writeVersion(v31, v42, v43);
              if (v41 <= v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = v41;
              }

              v47 = v32;
              v23 = v63;
              v48 = objc_msgSend_initWithIdentifier_readVersion_writeVersion_validatingValues_(v47, v45, v28, Version, v46, 0);

              objc_msgSend_setObject_forKeyedSubscript_(v63, v49, v48, v28);
              v21 = v62;
            }

            else
            {
              objc_msgSend_setObject_forKeyedSubscript_(v23, v30, v25, v28);
            }
          }

          v50 = objc_msgSend_readVersion(v25, v26, v27);
          if (v22 <= v50)
          {
            v22 = v50;
          }

          v53 = objc_msgSend_writeVersion(v25, v51, v52);
          if (v8 <= v53)
          {
            v8 = v53;
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v65, v69, 16);
      }

      while (v20);
    }

    else
    {
      v22 = v8;
    }

    a5 = v60;
    v7 = v61;
    a4 = v59;
    if (v59)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = v8;
    if (a4)
    {
LABEL_27:
      *a4 = v22;
    }
  }

  if (a5)
  {
    *a5 = v8;
  }

  v54 = objc_msgSend_allValues(v63, v14, v15, v59, v60, v61);
  v56 = objc_msgSend_sortedArrayUsingComparator_(v54, v55, &unk_2885C5610);

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

uint64_t sub_276AC7188(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_identifier(a2, v5, v6);
  v10 = objc_msgSend_identifier(v4, v8, v9);

  v12 = objc_msgSend_compare_(v7, v11, v10);
  return v12;
}

void sub_276AC7844(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_delegate(WeakRetained, v4, v5);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_context_didDownloadRemoteData_error_(v6, v7, WeakRetained, *(a1 + 32), v8);
  }
}

void sub_276AC78F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AC79CC;
  v7[3] = &unk_27A6E2C78;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void sub_276AC7BFC(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = objc_msgSend_context(*(a1 + 32), v3, v4);
  v10 = objc_msgSend_delegate(v7, v8, v9);
  objc_initWeak(&location, v10);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276AC7D44;
  v12[3] = &unk_27A6E6C20;
  objc_copyWeak(&v13, &location);
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], v12);
  CFRunLoopWakeUp(Main);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_276AC7D44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_requestAutosave(v8, v5, v6);
    }
  }
}

void sub_276AC8410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_276A519D8(&a17);
  v23 = a18;
  a18 = 0;
  if (v23)
  {
    sub_276BD5C8C(v23);
  }

  _Unwind_Resume(a1);
}

void sub_276AC9270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::util::MessageDifferencer::~MessageDifferencer(va);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Unwind_Resume(a1);
}

void sub_276ACA340(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v5 = objc_msgSend_bundle(*(*(a1 + 32) + 8), v3, v4);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276ACA428;
  v9[3] = &unk_27A6E6CE8;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v2;
  objc_msgSend_performResourceAccessUsingQueue_block_(v7, v8, 0, v9);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_276ACA428(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD6844();
    }
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277D74218]);
    v6 = objc_msgSend_digestString(*(*(a1 + 32) + 16), v4, v5);
    v8 = objc_msgSend_initWithName_bundle_(v3, v7, v6, *(a1 + 40));
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_276ACA508()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276ACA740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276ACA838(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v8 = objc_msgSend_context(*(a1 + 32), a2, a3);
    v6 = objc_msgSend_downloadObserverManager(v8, v4, v5);
    objc_msgSend_notifyDownloadObserversForData_withStatus_info_wait_(v6, v7, *(a1 + 32), 1, 0, 0);
  }
}

void sub_276ACACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPEncoderWriteCoordinator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276ACAF0C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v84 = *MEMORY[0x277D85DE8];
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  objc_msgSend_close(*(a1 + 32), v18, v19);
  v20 = UnsafePointer();
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v23 = objc_msgSend_featureInfos(*(a1 + 40), v21, v22);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v79, v83, 16);
  if (v27)
  {
    v28 = *v80;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v80 != v28)
        {
          objc_enumerationMutation(v23);
        }

        Version = objc_msgSend_readVersion(*(*(&v79 + 1) + 8 * i), v25, v26);
        if (v20 <= Version)
        {
          v20 = Version;
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v79, v83, 16);
    }

    while (v27);
  }

  if (a2)
  {
    v33 = 0;
  }

  else
  {
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    v40 = *(a1 + 64);
    v78 = 0;
    v41 = objc_msgSend_createMetadataForRootObject_readVersion_dataArchiver_archivedObjects_componentObjectUUIDMap_externalReferences_weakExternalReferences_lazyReferences_dataReferences_error_(v38, v31, v39, v20, v40, v64, v65, v66, v15, v16, v17, &v78);
    v33 = v78;
    if (v41)
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = sub_276ACB3F4;
      v76 = sub_276ACB404;
      v77 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_276ACB40C;
      aBlock[3] = &unk_27A6E6D38;
      v42 = *(a1 + 64);
      v71 = &v72;
      aBlock[4] = v42;
      v70 = *(a1 + 80);
      v37 = v41;
      v43 = *(a1 + 48);
      v68 = v37;
      v69 = v43;
      v44 = _Block_copy(aBlock);
      if (objc_msgSend_skipMetadataObjectSerialization(*(a1 + 48), v45, v46))
      {
        (*(v44 + 2))(v44, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      }

      else
      {
        v49 = objc_msgSend_newMetadataComponentWriteChannel(*(*(a1 + 64) + 8), v47, v48);
        v50 = v73[5];
        v73[5] = v49;

        v51 = [TSPComponent alloc];
        v53 = objc_msgSend_initWithDelegate_rootObject_(v51, v52, 0, v37);
        v54 = [TSPComponentWriter alloc];
        v55 = *(a1 + 64);
        v58 = objc_msgSend_componentWriterMode(*(a1 + 48), v56, v57);
        v59 = v73[5];
        v61 = objc_msgSend_initWithComponent_locator_rootObject_delegate_mode_packageIdentifier_objectReferenceMapOrNil_writeChannel_archiverManager_(v54, v60, v53, 0, v37, v55, v58, 1, 0, v59, *(*(a1 + 64) + 16));
        objc_msgSend_writeWithCompletionQueue_completion_(v61, v62, *(a1 + 72), v44);
      }

      _Block_object_dispose(&v72, 8);
      goto LABEL_22;
    }
  }

  objc_msgSend_stopCapturingSnapshots(*(a1 + 64), v31, v32);
  v35 = *(a1 + 80);
  v36 = v33;
  if (!v33)
  {
    v36 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v34, 0);
  }

  (*(v35 + 16))(v35, 0, 0, v36);
  if (v33)
  {
    v37 = 0;
  }

  else
  {

    v37 = 0;
    v33 = 0;
  }

LABEL_22:

  v63 = *MEMORY[0x277D85DE8];
}

void sub_276ACB318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276ACB3F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276ACB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v65 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v59 = a7;
  v14 = a8;
  v15 = a9;
  objc_msgSend_close(*(*(*(a1 + 64) + 8) + 40), v16, v17);
  if (objc_msgSend_count(v13, v18, v19) || objc_msgSend_count(v59, v20, v21))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPEncoderWriteCoordinator writeRootObject:completion:]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 115, 0, "External references are not supported in metadata archive.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  if (objc_msgSend_count(v14, v20, v22))
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSPEncoderWriteCoordinator writeRootObject:completion:]_block_invoke");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 116, 0, "Lazy references are not supported in metadata archive.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  if (objc_msgSend_count(v15, v30, v31))
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPEncoderWriteCoordinator writeRootObject:completion:]_block_invoke");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 117, 0, "Data references are not supported in metadata archive.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }

  objc_msgSend_stopCapturingSnapshots(*(a1 + 32), v39, v40);
  if (a2)
  {
    v49 = *(a1 + 56);
    v50 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v48, 0);
    (*(v49 + 16))(v49, 0, 0, v50);
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = *(*(a1 + 32) + 40);
    v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v60, v64, 16);
    if (v53)
    {
      v54 = *v61;
      do
      {
        v55 = 0;
        do
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(v51);
          }

          (*(*(*(&v60 + 1) + 8 * v55++) + 16))();
        }

        while (v53 != v55);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v56, &v60, v64, 16);
      }

      while (v53);
    }

    v57 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t sub_276ACB874(void *a1, const char *a2)
{
  result = objc_msgSend_containsItem_(*(a1[4] + 56), a2, a1[5]);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t sub_276ACBA14(uint64_t a1, const char *a2)
{
  v3 = *(*(a1 + 32) + 56);
  if (!v3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPEncoderWriteCoordinator delayArchivingOfObject:]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPEncoderWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 167, 0, "Cannot add more delayed objects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v3 = *(*(a1 + 32) + 56);
  }

  v11 = *(a1 + 40);

  return objc_msgSend_addItem_(v3, a2, v11);
}

void sub_276ACBEB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 72);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, a3);
  objc_msgSend_setObject_forUncopiedKey_(v4, v5, v6, *(a1 + 40));
}

void sub_276ACC27C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_allObjects(*(*(a1 + 32) + 56), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  *(v7 + 56) = 0;
}

void sub_276ACC5BC(void *a1, const char *a2)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 72), a2, a1[5]);
  v5 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4);
  *(*(a1[6] + 8) + 24) = v7 == v5;

  if (*(*(a1[6] + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), v6);
}

void sub_276ACD060(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), v3, v7, *(a1 + 56));
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 24) - 1;
  *(v4 + 24) = v5;
  if (!v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 32));
    }
  }
}

void sub_276ACD624(_Unwind_Exception *a1)
{
  v4 = sub_276A16E7C(v2);
  MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

void sub_276ACD73C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v3, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

void sub_276ACDBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = sub_276A16E7C(v10);
  MEMORY[0x277C9F670](v12, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

uint64_t sub_276ACDC88(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276ACDD00(a1, i + 2);
  }

  return a1;
}

void *sub_276ACDD00(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_276ACDF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276ACDF64(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276ACDFDC(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t **sub_276ACDFDC(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276ACE24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

void *sub_276ACE260(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_276ACE4A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_276ACE4BC(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276ACE72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

void sub_276ACE7EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

void *TSP::UUIDData::UUIDData(void *this, const TSP::UUID *a2)
{
  *this = 0;
  this[1] = 0;
  *this = *(a2 + 3);
  this[1] = *(a2 + 4);
  return this;
}

{
  *this = 0;
  this[1] = 0;
  *this = *(a2 + 3);
  this[1] = *(a2 + 4);
  return this;
}

uint64_t *TSP::UUIDData::saveToMessage(uint64_t *this, TSP::UUID *a2)
{
  v2 = *this;
  v3 = *(a2 + 4);
  *(a2 + 4) = v3 | 1;
  *(a2 + 3) = v2;
  v4 = this[1];
  *(a2 + 4) = v3 | 3;
  *(a2 + 4) = v4;
  return this;
}

TSP::UUIDData *TSP::UUIDData::UUIDData(TSP::UUIDData *this, const TSP::CFUUIDArchive *a2)
{
  *this = 0;
  *(this + 1) = 0;
  if (*(a2 + 16))
  {
    v12 = *(a2 + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      sub_276A07B90(__p, *v12, *(v12 + 8));
    }

    else
    {
      v13 = *v12;
      v17 = *(v12 + 16);
      *__p = v13;
    }

    if (SHIBYTE(v17) < 0)
    {
      v15 = __p[0];
      *this = *__p[0];
      *(this + 1) = v15[1];
      operator delete(v15);
      return this;
    }

    v11 = *__p;
  }

  else
  {
    v3 = *(a2 + 36);
    v3.i32[1] = *(a2 + 11);
    v4 = vrev32_s8(v3);
    v5.i64[0] = *(a2 + 4);
    v5.i64[1] = *(a2 + 10);
    v6 = vorrq_s8(vshll_n_s32(vshr_n_u32(v4, 0x18uLL), 0x20uLL), v5);
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    v7 = v5;
    v8 = vshlq_n_s64(v5, 0x18uLL);
    v9 = vand_s8(vshr_n_u32(v4, 8uLL), 0xFF000000FFLL);
    v5.i64[0] = v9.u32[0];
    v5.i64[1] = v9.u32[1];
    v10.i64[0] = 0xFF0000000000;
    v10.i64[1] = 0xFF0000000000;
    v11 = vorrq_s8(vorrq_s8(vorrq_s8(v6, vandq_s8(v8, v10)), vshlq_n_s64(v5, 0x30uLL)), vshlq_n_s64(v7, 0x38uLL));
  }

  *this = v11;
  return this;
}

uint64_t TSP::UUIDData::saveToMessage(uint64_t this, TSP::CFUUIDArchive *a2)
{
  v2 = *(this + 4);
  v3 = *(a2 + 4);
  v4 = *(this + 12);
  *(a2 + 8) = *this;
  *(a2 + 36) = v2;
  *(a2 + 4) = v3 | 0x1E;
  *(a2 + 11) = v4;
  return this;
}

void sub_276ACEE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = sub_276AB6F50(a1, a2, a3);
  v8 = objc_msgSend_sharedSupportPath(v5, v6, v7);
  v25[0] = v8;
  v25[1] = @"DocumentResources";
  v25[2] = @"SageMetadata.plist";
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v25, 3);
  v12 = objc_msgSend_fileURLWithPathComponents_(v4, v11, v10);

  v15 = objc_msgSend_sharedSageRegistryMetadataURL(*(a1 + 32), v13, v14);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v18, v19, 0))
  {
    v20 = objc_alloc(*(a1 + 32));
    v22 = objc_msgSend_initWithMetadataURL_(v20, v21, v18);
    v23 = qword_280A52AE0;
    qword_280A52AE0 = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_276ACF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = sub_276AB6F50(a1, a2, a3);
  v8 = objc_msgSend_sharedSupportPath(v5, v6, v7);
  v25[0] = v8;
  v25[1] = @"DocumentResources";
  v25[2] = @"LegacyMetadata.plist";
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v25, 3);
  v12 = objc_msgSend_fileURLWithPathComponents_(v4, v11, v10);

  v15 = objc_msgSend_sharedTangierRegistryMetadataURL(*(a1 + 32), v13, v14);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v18, v19, 0))
  {
    v20 = [TSPDocumentResourceLegacyTangierRegistry alloc];
    v22 = objc_msgSend_initWithMetadataURL_(v20, v21, v18);
    v23 = qword_280A52AE8;
    qword_280A52AE8 = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_276ACF32C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276ACFC04(uint64_t result)
{
  *(result + 32) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = result + 32;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_276ACFC20(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 104);
  if (!v3)
  {
    v3 = &qword_2812FC940;
  }

  v4 = *(v3 + 4);
  if (v4 < 1 || a1 == 0)
  {
    return 0;
  }

  v7 = a1;
  v8 = 0;
  do
  {
    v9 = *(a2 + 104);
    if (!v9)
    {
      v9 = &qword_2812FC940;
    }

    v10 = *(v9[3] + 4 * v8);
    v11 = *(v7 + 32);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v7 + 32;
    do
    {
      if (*(v11 + 32) >= v10)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 32) < v10));
    }

    while (v11);
    if (v12 == v7 + 32 || v10 < *(v12 + 32))
    {
LABEL_19:
      operator new();
    }

    v7 = *(v12 + 40);
    ++v8;
  }

  while (v8 < v4 && v7);
  if (!v7)
  {
    return 0;
  }

  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return 1;
}

void sub_276ACFD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2769C1430(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276ACFD98(void *a1, const google::protobuf::Message *a2, char a3)
{
  v6 = (*(*a2 + 152))(a2);
  (*(*a2 + 152))(a2);

  return sub_276ACFE48(a1, a2, v6, v7, 0, 0, a3);
}

uint64_t sub_276ACFE48(void *a1, const google::protobuf::Message *a2, google::protobuf::Descriptor *a3, std::mutex ***a4, uint64_t a5, int a6, char a7)
{
  v7 = a1[3];
  v124 = a1 + 4;
  if (v7 != a1 + 4)
  {
    v8 = a6;
    v10 = a4;
    v11 = a2;
    if (a4)
    {
      v12 = a7;
    }

    else
    {
      v12 = 1;
    }

    v117 = v12;
    v130 = 1;
    while (1)
    {
      v13 = v7[5];
      v14 = *(v7 + 8);
      FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(a3, *(v7 + 8));
      if (FieldByNumber)
      {
        v17 = FieldByNumber;
        v13[6] = FieldByNumber;
      }

      else
      {
        if (v10)
        {
          KnownExtensionByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v10, v14);
        }

        else
        {
          v19 = google::protobuf::DescriptorPool::generated_pool(0);
          KnownExtensionByNumber = google::protobuf::DescriptorPool::FindExtensionByNumber(v19, a3, v14);
        }

        v17 = KnownExtensionByNumber;
        v13[6] = KnownExtensionByNumber;
        if (!KnownExtensionByNumber)
        {
          v38 = v13;
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD09BC(a1, a3, __p);
          v44 = __p;
          if (v136 < 0)
          {
            v44 = __p[0];
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 77, 0, "Field rules under field number %d in message %{public}s will be ignored because this field number is unknown.", v14, v44);
          if (v136 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
          sub_276AD0A84(v38);
          goto LABEL_39;
        }
      }

      v20 = v13[1];
      if (v20)
      {
        v21 = v8 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (!v21 && *(v20 + 116) != 2)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
        sub_276AD0B0C(a1, v17, __p);
        v27 = __p;
        if (v136 < 0)
        {
          v27 = __p[0];
        }

        v28 = *(a3 + 1);
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 85, 0, "Field [%{public}s] for message %{public}s will not be preserved because it belongs to a repeated inline message.", v27, v28);
        if (v136 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        *(v20 + 16) |= 0x18u;
        *(v20 + 116) = 0xFFFFFFFFLL;
        v11 = a2;
      }

      v31 = *(v17 + 48);
      if (v31)
      {
        v137 = v17;
        v138 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v31, memory_order_acquire) != -1)
        {
          __p[0] = &v138;
          __p[1] = &v137;
          v139 = __p;
          std::__call_once(v31, &v139, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v17 + 56)] != 10)
      {
        goto LABEL_40;
      }

      v32 = google::protobuf::FieldDescriptor::message_type(v17);
      if (v32)
      {
        v34 = v32;
        v35 = *(v32 + 8);
        v125 = v17;
        if (*(v35 + 23) < 0)
        {
          if (v35[1] == 13 && **v35 == 0x656665522E505354 && *(*v35 + 5) == 0x65636E6572656665)
          {
            goto LABEL_119;
          }

          if (v35[1] != 17)
          {
            goto LABEL_69;
          }

          v35 = *v35;
LABEL_55:
          v50 = *v35;
          v51 = v35[1];
          v52 = *(v35 + 16);
          if (v50 != 0x617461442E505354 || v51 != 0x636E657265666552 || v52 != 101)
          {
            goto LABEL_69;
          }

          v55 = 0;
          if (v20)
          {
LABEL_120:
            if (v55)
            {
              v86 = 1;
            }

            else
            {
              v86 = 2;
            }

            *(v20 + 16) |= 4u;
            *(v20 + 112) = v86;
          }
        }

        else
        {
          v36 = *(v35 + 23);
          if (v36 != 13)
          {
            if (v36 != 17)
            {
              goto LABEL_69;
            }

            goto LABEL_55;
          }

          v56 = *v35;
          v57 = *(v35 + 5);
          if (v56 != 0x656665522E505354 || v57 != 0x65636E6572656665)
          {
LABEL_69:
            if (v20)
            {
              *(v20 + 16) |= 4u;
              *(v20 + 112) = 3;
            }

            v59 = *(v17 + 60);
            v128 = v59;
            if (v117)
            {
              if ((a7 & 1) == 0)
              {
                v131 = v32;
                v60 = MEMORY[0x277D81150];
                v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
                v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
                sub_276AD0B0C(a1, v125, __p);
                v65 = __p;
                if (v136 < 0)
                {
                  v65 = __p[0];
                }

                v66 = *(a3 + 1);
                if (*(v66 + 23) < 0)
                {
                  v66 = *v66;
                }

                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 149, 0, "Field [%{public}s] for message %{public}s will not be preserved because it is not defined in the archiver's message.", v65, v66);
                goto LABEL_137;
              }
            }

            else if (v59 == 3)
            {
              v67 = google::protobuf::Reflection::FieldSize(v10, v11, v17);
              if (v20)
              {
                v68 = v20;
              }

              else
              {
                v68 = a5;
              }

              v127 = v67;
              v69 = v128;
              if (v67 >= 1)
              {
                goto LABEL_89;
              }
            }

            else
            {
              if (google::protobuf::Reflection::HasField(v10, v11, v17))
              {
                if (v20)
                {
                  v68 = v20;
                }

                else
                {
                  v68 = a5;
                }

                v127 = 1;
                v69 = v128;
LABEL_89:
                v132 = v34;
                v133 = v68;
                v129 = v13;
                v71 = 0;
                v134 = 0;
                if (a5)
                {
                  v72 = v20 == 0;
                }

                else
                {
                  v72 = 1;
                }

                v73 = !v72;
                v123 = v73;
                v74 = v130;
                do
                {
                  if (v69 == 3)
                  {
                    RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v10, v11, v17, v71);
                  }

                  else
                  {
                    RepeatedMessage = google::protobuf::Reflection::GetMessage(v10, v11, v17, 0);
                  }

                  v76 = RepeatedMessage;
                  v77 = v134;
                  if (!v134)
                  {
                    (*(*RepeatedMessage + 152))(RepeatedMessage);
                    v77 = v78;
                  }

                  v134 = v77;
                  v79 = sub_276ACFE48(v129, v76, v132);
                  v37 = 0;
                  if (v79)
                  {
                    if (v133)
                    {
                      sub_276AD0C58(v129, v133, v76, v132, v134, 1);
                    }

                    if (v123)
                    {
                      v80 = *(v20 + 24);
                      if (v80 >= 1)
                      {
                        v81 = 0;
                        v82 = *(a5 + 24);
                        do
                        {
                          if (v82 == *(a5 + 28))
                          {
                            google::protobuf::RepeatedField<unsigned long long>::Reserve();
                          }

                          *(*(a5 + 32) + 8 * v82++) = *(*(v20 + 32) + v81);
                          v81 += 8;
                          *(a5 + 24) = v82;
                        }

                        while (8 * v80 != v81);
                      }

                      v83 = *(v20 + 48);
                      if (v83 >= 1)
                      {
                        v84 = 0;
                        v85 = *(a5 + 48);
                        do
                        {
                          if (v85 == *(a5 + 52))
                          {
                            google::protobuf::RepeatedField<unsigned long long>::Reserve();
                          }

                          *(*(a5 + 56) + 8 * v85++) = *(*(v20 + 56) + v84);
                          v84 += 8;
                          *(a5 + 48) = v85;
                        }

                        while (8 * v83 != v84);
                      }

                      v37 = v74;
                      v8 = a6;
                      v10 = a4;
                      v11 = a2;
                      v17 = v125;
                    }

                    else
                    {
                      v37 = v74;
                    }
                  }

                  ++v71;
                  v74 = v37;
                  v69 = v128;
                }

                while (v71 != v127);
                goto LABEL_41;
              }

              v131 = v34;
              v94 = MEMORY[0x277D81150];
              v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
              v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
              sub_276AD0B0C(a1, v125, __p);
              v97 = __p;
              if (v136 < 0)
              {
                v97 = __p[0];
              }

              v98 = *(a3 + 1);
              if (*(v98 + 23) < 0)
              {
                v98 = *v98;
              }

              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v96, v61, v63, 144, 0, "Field [%{public}s] for message %{public}s will not be preserved because it is not defined in the archiver's message.", v97, v98);
LABEL_137:
              if (v136 < 0)
              {
                operator delete(__p[0]);
              }

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100);
              v11 = a2;
              v34 = v131;
            }

            LODWORD(v37) = sub_276ACFE48(v13, 0, v34) & v130;
            goto LABEL_41;
          }

LABEL_119:
          v55 = 1;
          if (v20)
          {
            goto LABEL_120;
          }
        }

        if (!a5)
        {
          goto LABEL_40;
        }

        if (v117)
        {
          if ((a7 & 1) == 0)
          {
            v87 = MEMORY[0x277D81150];
            v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
            v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
            sub_276AD0B0C(a1, v125, __p);
            v92 = __p;
            if (v136 < 0)
            {
              v92 = __p[0];
            }

            v93 = *(a3 + 1);
            if (*(v93 + 23) < 0)
            {
              v93 = *v93;
            }

            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v91, v88, v90, 116, 0, "Field [%{public}s] for message %{public}s will not be preserved because it is not defined in the archiver's message.", v92, v93);
            goto LABEL_164;
          }

LABEL_40:
          LODWORD(v37) = v130;
          goto LABEL_41;
        }

        v101 = *(v125 + 15);
        if (v101 == 3)
        {
          v102 = google::protobuf::Reflection::FieldSize(v10, v11, v125);
          if (v102 >= 1)
          {
            goto LABEL_146;
          }

          v8 = a6;
          goto LABEL_40;
        }

        if (google::protobuf::Reflection::HasField(v10, v11, v125))
        {
          v102 = 1;
LABEL_146:
          for (i = 0; i != v102; ++i)
          {
            if (v101 == 3)
            {
              Message = google::protobuf::Reflection::GetRepeatedMessage(v10, v11, v125, i);
            }

            else
            {
              Message = google::protobuf::Reflection::GetMessage(v10, v11, v125, 0);
            }

            v106 = *(Message + 24);
            if (v55)
            {
              v107 = *(a5 + 24);
              if (v107 == *(a5 + 28))
              {
                google::protobuf::RepeatedField<unsigned long long>::Reserve();
              }

              *(*(a5 + 32) + 8 * v107) = v106;
              *(a5 + 24) = v107 + 1;
            }

            else
            {
              v108 = *(a5 + 48);
              if (v108 == *(a5 + 52))
              {
                google::protobuf::RepeatedField<unsigned long long>::Reserve();
              }

              *(*(a5 + 56) + 8 * v108) = v106;
              *(a5 + 48) = v108 + 1;
            }

            v10 = a4;
            LODWORD(v37) = v130;
          }

          v8 = a6;
          goto LABEL_41;
        }

        v109 = MEMORY[0x277D81150];
        v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "BOOL TSP::FieldInfoNode::UpdateTypeAndReferencesWithMessage(const PB::Message *, const PB::Descriptor *, const PB::Reflection *, TSP::FieldInfo *, BOOL, BOOL)");
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
        sub_276AD0B0C(a1, v125, __p);
        v8 = a6;
        v112 = __p;
        if (v136 < 0)
        {
          v112 = __p[0];
        }

        v113 = *(a3 + 1);
        if (*(v113 + 23) < 0)
        {
          v113 = *v113;
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v111, v88, v90, 111, 0, "Field [%{public}s] for message %{public}s will not be preserved because it is not defined in the archiver's message.", v112, v113);
LABEL_164:
        if (v136 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115);
LABEL_39:
        v11 = a2;
        goto LABEL_40;
      }

      LODWORD(v37) = 0;
LABEL_41:
      v130 = v37;
      v47 = v7[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v7[2];
          v21 = *v48 == v7;
          v7 = v48;
        }

        while (!v21);
      }

      v7 = v48;
      if (v48 == v124)
      {
        return v130 & 1;
      }
    }
  }

  LOBYTE(v130) = 1;
  return v130 & 1;
}

void sub_276AD094C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_276AD09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (v6 && (v7 = *(a1 + 48)) != 0)
  {
    sub_276AD0B0C(v6, v7, a3);
    v8 = *(a3 + 23);
    if (*(a3 + 23) < 0)
    {
      v8 = *(a3 + 8);
    }

    if (v8)
    {
      std::string::append(a3, " / ");
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v9 = *(a2 + 8);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  return std::string::append(a3, v11, v12);
}

void sub_276AD0A68(_Unwind_Exception *exception_object)
{
  if (*v2 < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276AD0A84(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 16) |= 0x18u;
    *(v1 + 116) = 0xFFFFFFFFLL;
  }

  v2 = *(result + 24);
  v3 = (result + 32);
  if (v2 != (result + 32))
  {
    do
    {
      result = sub_276AD0A84(v2[5]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

std::string *sub_276AD0B0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && a1[6])
  {
    sub_276AD0B0C(a3);
    v5 = *(a3 + 23);
    if (*(a3 + 23) < 0)
    {
      v5 = *(a3 + 8);
    }

    if (v5)
    {
      std::string::append(a3, " / ");
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v6 = *(a2 + 8);
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  std::string::append(a3, v8, v9);
  std::string::append(a3, "(");
  std::to_string(&v13, *(a2 + 68));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, v10, size);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return std::string::append(a3, ")");
}

void sub_276AD0C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*v16 < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AD0C58(void *a1, uint64_t a2, const google::protobuf::Message *a3, uint64_t a4, google::protobuf::Reflection *a5, int a6)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  google::protobuf::Reflection::ListFields(a5, a3, &v59);
  v7 = v59;
  if (v60 == v59)
  {
    goto LABEL_77;
  }

  v8 = 0;
  v9 = (v60 - v59) >> 3;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v49 = a1 + 4;
  v50 = v9;
  do
  {
    v10 = *(v59 + v8);
    v11 = *(v10 + 48);
    if (v11)
    {
      v62 = *(v59 + v8);
      v63 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v11, memory_order_acquire) != -1)
      {
        __p[0] = &v63;
        __p[1] = &v62;
        v64 = __p;
        std::__call_once(v11, &v64, sub_2769C149C);
      }
    }

    v52 = v8;
    if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v10 + 56)] == 10)
    {
      if (!a6)
      {
        goto LABEL_17;
      }

      v12 = *v49;
      if (!*v49)
      {
        goto LABEL_17;
      }

      v13 = *(v10 + 68);
      v14 = a1 + 4;
      do
      {
        if (*(v12 + 32) >= v13)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 32) < v13));
      }

      while (v12);
      if (v14 == v49 || v13 < *(v14 + 8))
      {
LABEL_17:
        v15 = *(v10 + 60);
        if (v15 == 3)
        {
          v16 = google::protobuf::Reflection::FieldSize(a5, a3, v10);
        }

        else if (google::protobuf::Reflection::HasField(a5, a3, v10))
        {
          v16 = 1;
        }

        else
        {
          v18 = MEMORY[0x277D81150];
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSP::FieldInfoNode::UpdateFieldInfoReferencesUsingMessage(TSP::FieldInfo *, const PB::Message *, const PB::Descriptor *, const PB::Reflection *, BOOL)");
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD0B0C(a1, v10, __p);
          v23 = __p;
          if (v58 < 0)
          {
            v23 = __p[0];
          }

          v24 = *(a4 + 8);
          if (*(v24 + 23) < 0)
          {
            v24 = *v24;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 233, 0, "Field [%{public}s] for message %{public}s will not be preserved because it is not defined in the archiver's message.", v23, v24);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
          v16 = 0;
        }

        v53 = google::protobuf::FieldDescriptor::message_type(v10);
        if (v53)
        {
          v27 = *(v53 + 8);
          if (*(v27 + 23) < 0)
          {
            if (v27[1] == 13 && **v27 == 0x656665522E505354 && *(*v27 + 5) == 0x65636E6572656665)
            {
              v54 = 0;
              v30 = 1;
              goto LABEL_58;
            }

            if (v27[1] != 17)
            {
LABEL_50:
              v30 = 0;
              v54 = 0;
              goto LABEL_58;
            }

            v27 = *v27;
          }

          else
          {
            v28 = *(v27 + 23);
            if (v28 == 13)
            {
              v54 = 0;
              v37 = *v27;
              v38 = *(v27 + 5);
              v30 = v37 == 0x656665522E505354 && v38 == 0x65636E6572656665;
LABEL_58:
              if (v16 >= 1)
              {
                v40 = 0;
                v41 = 0;
                do
                {
                  if (v15 == 3)
                  {
                    RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(a5, a3, v10, v40);
                  }

                  else
                  {
                    RepeatedMessage = google::protobuf::Reflection::GetMessage(a5, a3, v10, 0);
                  }

                  v43 = RepeatedMessage;
                  if (v30)
                  {
                    v44 = *(a2 + 24);
                    if (v44 == *(a2 + 28))
                    {
                      google::protobuf::RepeatedField<unsigned long long>::Reserve();
                    }

                    *(*(a2 + 32) + 8 * v44) = RepeatedMessage[3];
                    *(a2 + 24) = v44 + 1;
                  }

                  else if (v54)
                  {
                    v45 = *(a2 + 48);
                    if (v45 == *(a2 + 52))
                    {
                      google::protobuf::RepeatedField<unsigned long long>::Reserve();
                    }

                    *(*(a2 + 56) + 8 * v45) = RepeatedMessage[3];
                    *(a2 + 48) = v45 + 1;
                  }

                  else
                  {
                    if (!v41)
                    {
                      (*(*RepeatedMessage + 152))(RepeatedMessage);
                      v41 = v46;
                    }

                    sub_276AD0C58(a1, a2, v43, v53, v41, 0);
                  }

                  ++v40;
                }

                while (v16 != v40);
              }

              goto LABEL_75;
            }

            if (v28 != 17)
            {
              goto LABEL_50;
            }
          }

          v30 = 0;
          v31 = *v27;
          v32 = v27[1];
          v33 = *(v27 + 16);
          v36 = v31 == 0x617461442E505354 && v32 == 0x636E657265666552 && v33 == 101;
          v54 = v36;
          goto LABEL_58;
        }
      }
    }

LABEL_75:
    v8 = v52 + 1;
  }

  while (v52 + 1 != v50);
  v7 = v59;
LABEL_77:
  if (v7)
  {
    v60 = v7;
    operator delete(v7);
  }
}

void sub_276AD1120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276AD117C(void *a1, const google::protobuf::Message *a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  sub_276AD11A0(a1, a2, a3, a4, a5, a6);
  return 1;
}

uint64_t sub_276AD11A0(void *a1, const google::protobuf::Message *a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  (*(*a2 + 152))(a2);
  v9 = v8;
  v10 = (*(*a2 + 152))(a2);
  v68 = v9;
  v64 = a2;
  UnknownFields = google::protobuf::Reflection::GetUnknownFields(v9, a2);
  v12 = UnknownFields[1] - *UnknownFields;
  v13 = v12 >> 4;
  if ((v12 >> 4) >= 1)
  {
    v14 = UnknownFields;
    v15 = 0;
    v16 = a1 + 4;
    v17 = -((v12 >> 4) & 0x7FFFFFFF);
    v18 = MEMORY[0x277D81408];
    v19 = &qword_2812FC940;
    do
    {
      v20 = (*v14 + 16 * v15++);
      v21 = *v20;
      v22 = *v16;
      if (*v16)
      {
        v23 = a1 + 4;
        do
        {
          if (*(v22 + 32) >= v21)
          {
            v23 = v22;
          }

          v22 = *(v22 + 8 * (*(v22 + 32) < v21));
        }

        while (v22);
        if (v23 != v16 && v21 >= *(v23 + 8))
        {
          v24 = *(v23[5] + 8);
          if (v24)
          {
            v25 = *(v24 + 116);
            if (((*(v24 + 16) & 0x10) == 0 || v25 != -1) && v25 != -1)
            {
              if (v25 != 2)
              {
                v63 = v17;
                if (v25 == 1)
                {
                  if (!a3)
                  {
                    goto LABEL_34;
                  }
                }

                else if (!a3)
                {
                  goto LABEL_34;
                }

                if (*(v24 + 104))
                {
                  v30 = *(v24 + 104);
                }

                else
                {
                  v30 = v19;
                }

                v31 = v19;
                v32 = sub_276A1BC18(a3, v30);
                v19 = v31;
                if (!v32)
                {
LABEL_34:
                  operator new();
                }

                v17 = v63;
                v18 = MEMORY[0x277D81408];
                continue;
              }

              if (*v18 != -1)
              {
                v33 = v18;
                v34 = v19;
                sub_276BD6880();
                v19 = v34;
                v18 = v33;
              }

              if (a6)
              {
                *a6 = 1;
              }
            }
          }
        }
      }

      if (v15 < v13)
      {
        v26 = (*v14 + 16 * v15);
        v27 = v17 + v15;
        while (1)
        {
          v28 = *v26;
          v26 += 4;
          if (v28 != v21)
          {
            break;
          }

          ++v15;
          if (__CFADD__(v27++, 1))
          {
            goto LABEL_36;
          }
        }
      }
    }

    while (v15 < v13);
  }

LABEL_36:
  v35 = a1[3];
  if (v35 != a1 + 4)
  {
    do
    {
      v36 = v35[5];
      v37 = *(v36 + 8);
      if (!v37 || *(v37 + 112) == 3)
      {
        v38 = *(v35 + 8);
        FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v10, *(v35 + 8));
        if (FieldByNumber)
        {
          KnownExtensionByNumber = FieldByNumber;
          *(v36 + 48) = FieldByNumber;
        }

        else
        {
          KnownExtensionByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v68, v38);
          *(v36 + 48) = KnownExtensionByNumber;
          if (!KnownExtensionByNumber)
          {
            goto LABEL_64;
          }
        }

        v42 = *(KnownExtensionByNumber + 48);
        if (v42)
        {
          v72 = KnownExtensionByNumber;
          v73 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v42, memory_order_acquire) != -1)
          {
            __p[0] = &v73;
            __p[1] = &v72;
            v74 = __p;
            std::__call_once(v42, &v74, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(KnownExtensionByNumber + 56)] != 10)
        {
          v51 = MEMORY[0x277D81150];
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "BOOL TSP::FieldInfoNode::ProcessUnknownFieldsFromMessage(const PB::Message *, TSP::FieldPathSet *, NSMutableArray *__autoreleasing *, NSMutableArray *__autoreleasing *, BOOL *)");
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD0B0C(a1, KnownExtensionByNumber, __p);
          if (v71 >= 0)
          {
            v54 = __p;
          }

          else
          {
            v54 = __p[0];
          }

          v55 = *(v10 + 1);
          if (*(v55 + 23) < 0)
          {
            v55 = *v55;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v53, v45, v47, 366, 0, "Field rules under field [%{public}s] for message %{public}s will not be preserved because there is a mismatch between the field rule type and the field descriptor.", v54, v55);
          goto LABEL_60;
        }

        if (*(KnownExtensionByNumber + 60) == 3)
        {
          if (sub_276AD1898(v36, 0))
          {
            v44 = MEMORY[0x277D81150];
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "BOOL TSP::FieldInfoNode::ProcessUnknownFieldsFromMessage(const PB::Message *, TSP::FieldPathSet *, NSMutableArray *__autoreleasing *, NSMutableArray *__autoreleasing *, BOOL *)");
            v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
            sub_276AD0B0C(a1, KnownExtensionByNumber, __p);
            if (v71 >= 0)
            {
              v49 = __p;
            }

            else
            {
              v49 = __p[0];
            }

            v50 = *(v10 + 1);
            if (*(v50 + 23) < 0)
            {
              v50 = *v50;
            }

            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 358, 0, "Field rules under field [%{public}s] for message %{public}s will not be preserved because it belongs to a repeated inline message.", v49, v50);
LABEL_60:
            if (v71 < 0)
            {
              operator delete(__p[0]);
            }

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
          }
        }

        else
        {
          Message = google::protobuf::Reflection::GetMessage(v68, v64, KnownExtensionByNumber, 0);
          sub_276AD11A0(v36, Message, a3, a4, a5, a6);
        }
      }

LABEL_64:
      v59 = v35[1];
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
          v60 = v35[2];
          v61 = *v60 == v35;
          v35 = v60;
        }

        while (!v61);
      }

      v35 = v60;
    }

    while (v60 != a1 + 4);
  }

  return 1;
}

void sub_276AD17EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22)
  {
    sub_2769C1430(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AD1854()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276AD1898(uint64_t a1, uint64_t a2)
{
  if (sub_276AD1FC0(a1, a2))
  {
    return 1;
  }

  v5 = *(a1 + 24);
  v6 = (a1 + 32);
  if (v5 != (a1 + 32))
  {
    do
    {
      v7 = v5[5];
      if (sub_276AD1FC0(v7, a2))
      {
        return 1;
      }

      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *(v8 + 116);
        if ((*(v8 + 16) & 0x10) != 0 && v9 == -1)
        {
          if ((*(v8 + 120) - 1) >= 2)
          {
            goto LABEL_11;
          }
        }

        else if (v9 == -1)
        {
LABEL_11:
          if (*(v8 + 112) == 3 && (sub_276AD1898(v7, a2) & 1) != 0)
          {
            return 1;
          }
        }
      }

      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v6);
  }

  return 0;
}

uint64_t sub_276AD1988(void *a1, google::protobuf::Message *a2, void *a3, void **a4, void **a5)
{
  (*(*a2 + 152))(a2);
  v68 = v7;
  v66 = a2;
  v8 = (*(*a2 + 152))(a2);
  v9 = a1[3];
  v63 = a1;
  v10 = a1 + 4;
  if (v9 != v10)
  {
    v11 = v8;
    do
    {
      v12 = v9[5];
      v13 = *(v12 + 8);
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v13 + 116);
      if ((*(v13 + 16) & 0x10) != 0 && v14 == -1)
      {
        v15 = *(v13 + 120);
        if (!v15)
        {
          v16 = 0;
          goto LABEL_15;
        }

        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v16 = 0;
            v17 = 0;
            LOBYTE(v15) = 4;
            goto LABEL_16;
          }

LABEL_14:
          v16 = 0;
          LOBYTE(v15) = 0;
LABEL_15:
          v17 = 1;
          goto LABEL_16;
        }

        v17 = 0;
        LOBYTE(v15) = 5;
        v16 = 1;
      }

      else
      {
        if (v14 == -1)
        {
          goto LABEL_14;
        }

        if (v14 == 2)
        {
          v16 = 0;
          v17 = 0;
          LOBYTE(v15) = 3;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          if (v14 == 1)
          {
            LOBYTE(v15) = 2;
          }

          else
          {
            LOBYTE(v15) = 1;
          }
        }
      }

LABEL_16:
      v18 = *(v9 + 8);
      FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v11, *(v9 + 8));
      if (FieldByNumber)
      {
        KnownExtensionByNumber = FieldByNumber;
        *(v12 + 48) = FieldByNumber;
      }

      else
      {
        KnownExtensionByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v68, v18);
        *(v12 + 48) = KnownExtensionByNumber;
        if (!KnownExtensionByNumber)
        {
          if (((1 << v15) & 0x31) == 0)
          {
            goto LABEL_72;
          }

          UnknownFields = google::protobuf::Reflection::GetUnknownFields(v68, v66);
          v33 = *UnknownFields;
          v34 = UnknownFields[1] - *UnknownFields;
          if ((v34 >> 4) < 1)
          {
            goto LABEL_72;
          }

          v35 = (v34 >> 4) & 0x7FFFFFFF;
          while (1)
          {
            v36 = *v33;
            v33 += 4;
            if (v36 == v18)
            {
              break;
            }

            if (!--v35)
            {
              goto LABEL_72;
            }
          }

          if ((v15 & 6) != 4 && !sub_276AD1898(v12, 1))
          {
            goto LABEL_72;
          }

          v52 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "BOOL TSP::FieldInfoNode::ProcessPreserveNewerFieldsFromMessage(const PB::Message *, TSP::FieldPathSet *, NSMutableArray *__autoreleasing *, NSMutableArray *__autoreleasing *)");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD09BC(v63, v11, __p);
          v55 = __p;
          if (v70 < 0)
          {
            v55 = __p[0];
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v54, v39, v41, 424, 0, "Newer value field rules under field %d for message %{public}s will not be preserved because the field is unknown.", v18, v55);
          goto LABEL_68;
        }
      }

      if ((v15 & 6) == 4)
      {
        if (a3)
        {
          v22 = *(v13 + 104) ? *(v13 + 104) : &qword_2812FC940;
          if (sub_276A1BC18(a3, v22))
          {
            goto LABEL_72;
          }
        }

        v24 = objc_msgSend_knownFieldWithFieldDescriptor_fieldInfo_message_reflection_(TSPKnownField, v20, KnownExtensionByNumber, v13, v66, v68);
        if (v16)
        {
          v25 = *a4;
          if (!*a4)
          {
            v26 = objc_alloc(MEMORY[0x277CBEB18]);
            v28 = objc_msgSend_initWithObjects_(v26, v27, v24, 0);
            v29 = a4;
            goto LABEL_61;
          }

LABEL_39:
          objc_msgSend_addObject_(v25, v23, v24);
        }

        else
        {
          v25 = *a5;
          if (*a5)
          {
            goto LABEL_39;
          }

          v50 = objc_alloc(MEMORY[0x277CBEB18]);
          v28 = objc_msgSend_initWithObjects_(v50, v51, v24, 0);
          v29 = a5;
LABEL_61:
          *v29 = v28;
        }

        goto LABEL_72;
      }

      if (v17)
      {
        if (*(KnownExtensionByNumber + 60) == 3)
        {
          if (google::protobuf::Reflection::FieldSize(v68, v66, KnownExtensionByNumber) <= 0)
          {
            goto LABEL_72;
          }
        }

        else if (!google::protobuf::Reflection::HasField(v68, v66, KnownExtensionByNumber))
        {
          goto LABEL_72;
        }

        v37 = *(KnownExtensionByNumber + 48);
        if (v37)
        {
          v71 = KnownExtensionByNumber;
          v72 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v37, memory_order_acquire) != -1)
          {
            __p[0] = &v72;
            __p[1] = &v71;
            v73 = __p;
            std::__call_once(v37, &v73, sub_2769C149C);
          }
        }

        if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(KnownExtensionByNumber + 56)] != 10)
        {
          v45 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "BOOL TSP::FieldInfoNode::ProcessPreserveNewerFieldsFromMessage(const PB::Message *, TSP::FieldPathSet *, NSMutableArray *__autoreleasing *, NSMutableArray *__autoreleasing *)");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD0B0C(v63, KnownExtensionByNumber, __p);
          v48 = __p;
          if (v70 < 0)
          {
            v48 = __p[0];
          }

          v49 = *(v11 + 1);
          if (*(v49 + 23) < 0)
          {
            v49 = *v49;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v47, v39, v41, 467, 0, "Field rules under field [%{public}s] for message %{public}s will not be preserved because there is a mismatch between the field rule type and the field descriptor.", v48, v49);
          goto LABEL_68;
        }

        if (*(KnownExtensionByNumber + 60) == 3)
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "BOOL TSP::FieldInfoNode::ProcessPreserveNewerFieldsFromMessage(const PB::Message *, TSP::FieldPathSet *, NSMutableArray *__autoreleasing *, NSMutableArray *__autoreleasing *)");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldInfoTree.mm");
          sub_276AD0B0C(v63, KnownExtensionByNumber, __p);
          v43 = __p;
          if (v70 < 0)
          {
            v43 = __p[0];
          }

          v44 = *(v11 + 1);
          if (*(v44 + 23) < 0)
          {
            v44 = *v44;
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 459, 0, "Field rules under field [%{public}s] for message %{public}s will not be preserved because it belongs to a repeated inline message.", v43, v44);
LABEL_68:
          if (v70 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
          goto LABEL_72;
        }

        Message = google::protobuf::Reflection::GetMessage(v68, v66, KnownExtensionByNumber, 0);
        sub_276AD1988(v12, Message, a3, a4, a5);
      }

LABEL_72:
      v59 = v9[1];
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
          v60 = v9[2];
          v61 = *v60 == v9;
          v9 = v60;
        }

        while (!v61);
      }

      v9 = v60;
    }

    while (v60 != v10);
  }

  return 1;
}

void sub_276AD1F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_276AD1FC0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 116);
    if ((*(v2 + 16) & 0x10) != 0 && v3 == -1)
    {
      v2 = *(v2 + 120);
      if (v2 >= 3)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = dword_276C170C8[v2];
      }
    }

    else if ((v3 + 1) < 4)
    {
      LODWORD(v2) = v3 + 1;
    }

    else
    {
      LODWORD(v2) = 1;
    }
  }

  v4 = (v2 & 6) == 4;
  v5 = (v2 - 1) < 2;
  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void sub_276AD2034(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_276AD20B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_276AD20C8(va, a2);
  _Unwind_Resume(a1);
}

uint64_t *sub_276AD20C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = sub_2769C1374(v3, a2);
    MEMORY[0x277C9F670](v4, 0x1060C4094AFC76ALL);
  }

  return a1;
}

void sub_276AD2114(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276AD214C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2769C1374(result, a2);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276AD2190(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C56F0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_276AD21D0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_276AD2BCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(a1, v7, @"TSPObjectDeepCopyOption_ObjectProxy");
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277D81308]);
    objc_msgSend_setObject_forKeyedSubscript_(a1, v11, v9, @"TSPObjectDeepCopyOption_ObjectProxy");
  }

  objc_msgSend_setObject_forUncopiedKey_(v9, v10, v12, v6);
}

void sub_276AD2CAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (v15)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(a1, v6, v7);
    objc_opt_class();
    v10 = TSUDynamicCast();
    if (!v10)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      v10 = objc_msgSend_mutableCopy(v11, v12, v13);

      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      objc_msgSend_setObject_forKeyedSubscript_(a1, v14, v10, v7);
    }

    objc_msgSend_addObject_(v10, v9, v15);
  }
}

void sub_276AD3BF8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_276A07EA8(va);
  sub_276A07EA8(va1);

  _Unwind_Resume(a1);
}

void sub_276AD3EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  TSP::Reference::~Reference(va);
  _Unwind_Resume(a1);
}

void sub_276AD4344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A08184(va);

  _Unwind_Resume(a1);
}

void sub_276AD4774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276A07EA8((v10 - 104));
  sub_276A07EA8(&a9);

  _Unwind_Resume(a1);
}

void sub_276AD4A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_276B7B560(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_276AD5504(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_276AD67D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  if (v5)
  {
    if (objc_msgSend_code(v5, a2, a3) != 256)
    {
      return;
    }

    v8 = objc_msgSend_domain(*(*(a1 + 32) + 88), v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277CCA050]);

    if (!isEqualToString)
    {
      return;
    }

    v4 = *(a1 + 32);
  }

  v11 = *(a1 + 40);

  objc_storeStrong((v4 + 88), v11);
}

uint64_t sub_276AD6974(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AD698C(uint64_t a1, const char *a2)
{
  v3 = atomic_load((*(*(a1 + 32) + 24) + 8));
  if (v3)
  {
    v4 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA050], 3072, 0);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(*(a1 + 32) + 88);
    v6 = *(v7 + 40);
    *(v7 + 40) = v8;
  }
}

void sub_276AD6DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v31 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_276AD6DF4(void *a1, char a2, int a3)
{
  *(*(a1[6] + 8) + 24) = a2;
  *(*(a1[7] + 8) + 24) = a3;
  if (a3)
  {
    v4 = a1[5];
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  v5 = *(a1[4] + 72);

  dispatch_group_leave(v5);
}

void sub_276AD6E5C(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, *(*(*(a1 + 64) + 8) + 24));
    }
  }

  v6 = objc_msgSend_finishUnarchiving(*(a1 + 32), v2, v3);
  v9 = *(*(a1 + 64) + 8);
  if (v6)
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 24) = v10 & 1;
  v11 = *(a1 + 32);
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v12 = v11[22];
    v13 = *(a1 + 32);
    v14 = v13[22];
    v17 = objc_msgSend_componentIdentifier(v13, v15, v16);
    v19 = objc_msgSend_tsp_objectForIdentifier_(v14, v18, v17);
    objc_msgSend_setRootObject_(*(*(a1 + 32) + 32), v20, v19);
    objc_msgSend_didReadObjects_(*(*(a1 + 32) + 32), v21, v12);
    objc_msgSend_processObjectsToModifyWithRootObject_(*(a1 + 32), v22, v19);

    v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_error(v11, v7, v8);
    v12 = 0;
    if (!v24)
    {
      v24 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v25, 0);
    }

    v23 = v24;
  }

  v26 = *(*(*(a1 + 64) + 8) + 24);
  (*(*(a1 + 48) + 16))();
  v27 = *(a1 + 32);
  v28 = *(v27 + 176);
  *(v27 + 176) = 0;

  objc_autoreleasePoolPop(v4);
}

void sub_276AD709C(uint64_t a1, const char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_hasReadFailure(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v6 = objc_alloc(objc_msgSend_objectClass(*(a1 + 40), v4, v5));
    inited = objc_msgSend_initBaseObjectFromUnarchiver_(v6, v7, *(a1 + 40));
    if (objc_msgSend_validatedLoadFromUnarchiver_(inited, v9, *(a1 + 40)))
    {
      v12 = objc_msgSend_tsp_unknownContent(inited, v10, v11);
      objc_msgSend_loadFromUnarchiver_(v12, v13, *(a1 + 40));

      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(v15 + 72);
      v17 = *(v15 + 104);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AD74B0;
      block[3] = &unk_27A6E29B0;
      block[4] = v15;
      block[5] = inited;
      v26 = v14;
      dispatch_group_async(v16, v17, block);
    }

    else
    {
      objc_msgSend_unarchiveClass(*(a1 + 40), v10, v11);
      if (UnsafePointer != -1)
      {
        sub_276BD68A8();
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v18, 0);
      v22 = objc_msgSend_tsp_errorWithError_hints_(v19, v21, v20, &unk_2885E5AA0);
      objc_msgSend_setError_(*(a1 + 32), v23, v22);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_276AD724C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a2 == 1)
  {
    v30 = objc_begin_catch(a1);
    if (!v23)
    {
      v23 = objc_msgSend_unarchiveClass(*(v21 + 40), v28, v29);
      if (!v23)
      {
        v23 = objc_opt_class();
      }
    }

    v31 = NSStringFromClass(v23);
    v32 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSPReader unarchiveObjectWithUnarchiver:]_block_invoke");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    v39 = objc_msgSend_name(v30, v37, v38);
    objc_msgSend_objectIdentifier(*(v21 + 40), v40, v41);
    v55 = objc_msgSend_reason(v30, v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v44, v34, v36, 298, 0, "Caught %{public}@ while initializing [%{public}@-%llu]: %{public}@");

    v45 = MEMORY[0x277CCA9B8];
    v47 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v46, 0);
    v49 = objc_msgSend_stringByAppendingString_(v31, v48, @"UnarchiverException");
    a21 = v49;
    v51 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, &a21, 1);
    v53 = objc_msgSend_tsp_errorWithError_hints_(v45, v52, v47, v51);
    objc_msgSend_setError_(*(v21 + 32), v54, v53);

    objc_end_catch();
    JUMPOUT(0x276AD7208);
  }

  _Unwind_Resume(a1);
}

void sub_276AD74C0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AD75BC(uint64_t a1, const char *a2)
{
  if (objc_msgSend_setObject_forIdentifier_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48)) && objc_msgSend_shouldValidateComponentsOfInMemoryObjects(*(a1 + 32), v3, v4))
  {
    v7 = objc_msgSend_tsp_component(*(a1 + 40), v5, v6);
    v10 = *(a1 + 32);
    if (v7 != *(v10 + 32))
    {
      v21 = v7;
      *(v10 + 200) |= 2u;
      if (UnsafePointer != -1)
      {
        sub_276BD68BC();
      }

      v11 = objc_msgSend_packageIdentifier(*(*(a1 + 32) + 32), v8, v9) == 2;
      v7 = v21;
      if (v11)
      {
        v11 = objc_msgSend_packageIdentifier(v21, v12, v13) == 2;
        v7 = v21;
        if (!v11)
        {
          v15 = *(a1 + 32);
          v16 = MEMORY[0x277CCA9B8];
          v17 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
          v19 = objc_msgSend_tsp_recoverableErrorWithError_(v16, v18, v17);
          objc_msgSend_setError_(v15, v20, v19);

          v7 = v21;
        }
      }
    }
  }
}

void sub_276AD7714()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276AD7CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_276ADB024(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 24) = 0;
    *(v3 + 16) = v5;
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_276AD7D30(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_276ADB424(a1, a2);
  }

  else
  {
    sub_276ADB3A0(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

void sub_276AD7D70(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_hasAlternateMessages(*(a1 + 32), a2, a3))
  {
    if (a3 >= 1 && a3 <= a4)
    {
      return;
    }
  }

  else if (a3 == a4)
  {
    return;
  }

  v10 = objc_msgSend_context(*(a1 + 40), v8, v9);
  v13 = objc_msgSend_dataManager(v10, v11, v12);
  v41 = objc_msgSend_dataForIdentifier_(v13, v14, a2);

  v15 = MEMORY[0x277D81150];
  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPReader addUnarchivedObject:unarchiver:]_block_invoke");
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  v18 = *(a1 + 48);
  v19 = objc_opt_class();
  v38 = NSStringFromClass(v19);
  v22 = *(a1 + 56);
  if (v41)
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
  }

  else
  {
    v24 = @"Nil";
  }

  v25 = objc_msgSend_filename(v41, v20, v21);
  v28 = objc_msgSend_anonymousUniqueIdentifier(v41, v26, v27);
  v31 = objc_msgSend_UUIDString(v28, v29, v30);
  v34 = objc_msgSend_digestString(v41, v32, v33);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v35, v40, v39, 401, 0, "Object [%{public}@-%llu] was archived with %td reference(s) to data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@> identifier=%llu, but unarchived %td reference(s) to it.", v38, v22, a4, v24, v25, v31, v34, a2, a3);

  if (v41)
  {
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
}

void sub_276AD7F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21)
{
  if (*(v26 - 88))
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276AD8018(uint64_t a1, const char *a2)
{
  objc_msgSend_countForIdentifier_default_(*(a1 + 32), a2, a2, 0);
  (*(*(a1 + 40) + 16))();
  return 1;
}

uint64_t sub_276AD8078(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3 || objc_msgSend_countForIdentifier_default_(v3, a2, a2, 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(*(a1 + 40) + 16))();
  }

  return 1;
}

void sub_276AD8580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276AD85A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_makeComponentDataReferenceMap(*(*(a1 + 32) + 56), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276AD978C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v16 - 128) = 0;

  v19 = *(v16 - 128);
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    v21 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPReader resolveReferences]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    v28 = objc_msgSend_name(v20, v26, v27);
    v38 = objc_msgSend_reason(v20, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v31, v23, v25, 872, 0, "Caught %{public}@ while running reference completion handler: %{public}@");

    v32 = MEMORY[0x277CCA9B8];
    v34 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v33, 0);
    v36 = objc_msgSend_tsp_errorWithError_hints_(v32, v35, v34, &unk_2885E5B48);
    objc_msgSend_setError_(*(v16 - 104), v37, v36);

    objc_end_catch();
    JUMPOUT(0x276AD9758);
  }

  _Unwind_Resume(a1);
}

void sub_276ADA1CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if ((*(v4 + 200) & 2) != 0 || objc_msgSend_count(*(v4 + 192), a2, a3))
  {
    objc_msgSend_willModifyObject_options_(*(a1 + 40), a2, *(a1 + 48), 3);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(*(a1 + 32) + 192);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (v11 != *(a1 + 48))
        {
          objc_msgSend_willModifyObject_options_(*(a1 + 40), v7, v11, 3, v13);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_276ADAB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_276ADAEEC(va);
  _Unwind_Resume(a1);
}

void sub_276ADAEA8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276ADAEEC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276ADAF40(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276ADAF40(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_276ADAF94(uint64_t a1)
{
  sub_276ADAFD0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276ADAFD0(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_276ADAEEC(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_276ADB024(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_2769BA860();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_276ADB144(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = *(a2 + 4);
  v10 = *(a2 + 1);
  a2[3] = 0;
  *(v8 + 16) = v10;
  *&v19 = 32 * v2 + 32;
  v11 = *(a1 + 8);
  v12 = 32 * v2 + *a1 - v11;
  sub_276ADB18C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_276ADB30C(&v17);
  return v16;
}

void sub_276ADB130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276ADB30C(va);
  _Unwind_Resume(a1);
}

void sub_276ADB144(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276ADB18C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 4);
      v6 = *(v4 + 1);
      v4[3] = 0;
      *(a4 + 16) = v6;
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  sub_276ADB230(a1, a2, a3);
  return sub_276ADB278(v8);
}

void sub_276ADB230(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t sub_276ADB278(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276ADB2C4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_276ADB2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

uint64_t sub_276ADB30C(uint64_t a1)
{
  sub_276ADB344(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276ADB344(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

id sub_276ADB3A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  sub_276ADB5A0(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(v4 + 24) = _Block_copy(*(a2 + 24));
  *(v4 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(v4 + 40) = *(a2 + 40);
  result = v5;
  *(v4 + 48) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t sub_276ADB424(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_2769BA860();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_2769BACF8(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_276ADB5A0(v7, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(v7 + 24) = _Block_copy(*(a2 + 24));
  *(v7 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = v8;
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_2769BAD54(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_2769BAF24(&v15);
  return v14;
}

void sub_276ADB58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2769BAF24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276ADB5A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276ADB61C(result, a4);
  }

  return result;
}

void sub_276ADB600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_276ADB61C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2769BAFA4(a1, a2);
  }

  sub_2769BA860();
}

void sub_276ADB658(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276ADAFD0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_276ADB794(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    sub_276ADAEEC(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_276ADB90C(uint64_t a1)
{
  buffer[10] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
LABEL_2:
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, *(*(a1 + 32) + 96), 0);
    }

    goto LABEL_9;
  }

  if (!*(v2 + 8))
  {
    v8 = objc_autoreleasePoolPush();
    v13 = objc_msgSend_serializedData(*(*(a1 + 32) + 80), v9, v10);
    if (v13)
    {
      v15 = objc_msgSend_serializedData(*(*(a1 + 32) + 88), v11, v12);
      if (v15)
      {
        v16 = *(a1 + 32);
        v17 = *(v16 + 64);
        if (v17)
        {
          v18 = *(v16 + 56);
          v19 = *v17;
          if (v18 < *v17)
          {
            *(v16 + 56) = v18 + 1;
            v20 = *&v17[2 * v18 + 2];
            goto LABEL_27;
          }

          if (v19 != *(v16 + 60))
          {
LABEL_26:
            *v17 = v19 + 1;
            v20 = sub_2769F5A44(*(v16 + 48));
            v30 = *(v16 + 56);
            v31 = *(v16 + 64) + 8 * v30;
            *(v16 + 56) = v30 + 1;
            *(v31 + 8) = v20;
LABEL_27:
            *(v20 + 16) |= 1u;
            v32 = *(v20 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = google::protobuf::internal::ArenaStringPtr::Mutable((v20 + 24), v32);
            objc_msgSend_tsp_saveToProtobufString_(@"Object", v34, v33);
            size = dispatch_data_get_size(*(*(a1 + 32) + 96));
            v36 = *(v20 + 16);
            *(v20 + 16) = v36 | 2;
            *(v20 + 32) = size;
            v37 = dispatch_data_get_size(v15);
            *(v20 + 16) = v36 | 6;
            *(v20 + 40) = v37;
            concat = dispatch_data_create_concat(*(*(a1 + 32) + 96), v15);
            v39 = *(a1 + 32);
            v40 = *(v39 + 96);
            *(v39 + 96) = concat;

            v41 = *(a1 + 32);
            v42 = *(v41 + 64);
            if (v42)
            {
              v43 = *(v41 + 56);
              v44 = *v42;
              if (v43 < *v42)
              {
                *(v41 + 56) = v43 + 1;
                v45 = *&v42[2 * v43 + 2];
LABEL_36:
                *(v45 + 16) |= 1u;
                v48 = *(v45 + 8);
                if (v48)
                {
                  v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
                }

                v49 = google::protobuf::internal::ArenaStringPtr::Mutable((v45 + 24), v48);
                objc_msgSend_tsp_saveToProtobufString_(@"Metadata", v50, v49);
                v51 = dispatch_data_get_size(*(*(a1 + 32) + 96));
                v52 = *(v45 + 16);
                *(v45 + 16) = v52 | 2;
                *(v45 + 32) = v51;
                v53 = dispatch_data_get_size(v13);
                *(v45 + 16) = v52 | 6;
                *(v45 + 40) = v53;
                v54 = dispatch_data_create_concat(*(*(a1 + 32) + 96), v13);
                v55 = *(a1 + 32);
                v56 = *(v55 + 96);
                *(v55 + 96) = v54;

                v60 = sub_2769F1E74(*(a1 + 32) + 32, v57, v58, v59);
                sub_276A0160C(v75, v60);
                google::protobuf::io::CodedOutputStream::CodedOutputStream(buffer, v75, 1);
                buffer[8] = (*(*(*(a1 + 32) + 32) + 96))();
                google::protobuf::io::CodedOutputStream::~CodedOutputStream(buffer);
                v62 = sub_276A016D0(v75, v61);
                sub_276A01610(v75);
                v63 = a1 + 32;
                v64 = *(*(a1 + 32) + 96);
                buffer[0] = dispatch_data_get_size(v64);
                v65 = dispatch_data_create_concat(v64, v62);
                v66 = *(*(a1 + 32) + 96);
                *(*v63 + 96) = v65;

                v67 = *(*(a1 + 32) + 96);
                v68 = dispatch_data_create(buffer, 8uLL, 0, 0);
                v69 = dispatch_data_create_concat(v67, v68);
                v70 = *(*(a1 + 32) + 96);
                *(*v63 + 96) = v69;

                v71 = *(*(a1 + 32) + 96);
                v72 = dispatch_data_create(" TSPN3TSP20DatabaseOutputStreamE", 4uLL, 0, 0);
                v73 = dispatch_data_create_concat(v71, v72);
                v74 = *(*(a1 + 32) + 96);
                *(*v63 + 96) = v73;

                *(*v63 + 16) = 1;
                objc_autoreleasePoolPop(v8);
                goto LABEL_2;
              }

              if (v44 != *(v41 + 60))
              {
LABEL_35:
                *v42 = v44 + 1;
                v45 = sub_2769F5A44(*(v41 + 48));
                v46 = *(v41 + 56);
                v47 = *(v41 + 64) + 8 * v46;
                *(v41 + 56) = v46 + 1;
                *(v47 + 8) = v45;
                goto LABEL_36;
              }
            }

            else
            {
              v44 = *(v41 + 60);
            }

            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v41 + 48), v44 + 1);
            v42 = *(v41 + 64);
            v44 = *v42;
            goto LABEL_35;
          }
        }

        else
        {
          v19 = *(v16 + 60);
        }

        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v16 + 48), v19 + 1);
        v17 = *(v16 + 64);
        v19 = *v17;
        goto LABEL_26;
      }

      v25 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
      v26 = *(a1 + 32);
      v27 = *(v26 + 8);
      *(v26 + 8) = v25;

      v28 = *(a1 + 40);
      if (v28)
      {
        (*(v28 + 16))(v28, 0, *(*(a1 + 32) + 8));
      }
    }

    else
    {
      v21 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      v22 = *(a1 + 32);
      v23 = *(v22 + 8);
      *(v22 + 8) = v21;

      v24 = *(a1 + 40);
      if (v24)
      {
        (*(v24 + 16))(v24, 0, *(*(a1 + 32) + 8));
      }
    }

    v29 = *MEMORY[0x277D85DE8];

    objc_autoreleasePoolPop(v8);
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
LABEL_9:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *(v4 + 16);
  v6 = *MEMORY[0x277D85DE8];

  v5();
}

void sub_276ADBFDC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 16) == 1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationEncoder appendData:completion:]_block_invoke");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationEncoder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 114, 0, "Cannot append data after the encoding has finished.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v12 = *(a1 + 48);
    if (v12)
    {
      v20 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      (*(v12 + 16))(v12);
    }
  }

  else if (*(v3 + 8))
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(v13 + 16);

      v14();
    }
  }

  else
  {
    dispatch_suspend(*(v3 + 24));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276ADC278;
    aBlock[3] = &unk_27A6E6C48;
    v15 = *(a1 + 48);
    aBlock[4] = *(a1 + 32);
    v25 = v15;
    v16 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276ADC2F4;
    v21[3] = &unk_27A6E6F08;
    v17 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v17;
    v23 = v16;
    v18 = v16;
    objc_msgSend_performIOChannelReadWithAccessor_(v22, v19, v21);
  }
}

void sub_276ADC278(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }

  dispatch_resume(*(*(a1 + 32) + 24));
}

void sub_276ADC2F4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v11 = *(a1 + 48);
    v12 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v3, 0);
    (*(v11 + 16))(v11, v12);

    goto LABEL_13;
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  if (!v7)
  {
    v9 = *(v6 + 60);
    goto LABEL_8;
  }

  v8 = *(v6 + 56);
  v9 = *v7;
  if (v8 >= *v7)
  {
    if (v9 != *(v6 + 60))
    {
LABEL_9:
      *v7 = v9 + 1;
      v10 = sub_2769F5A44(*(v6 + 48));
      v13 = *(v6 + 56);
      v14 = *(v6 + 64) + 8 * v13;
      *(v6 + 56) = v13 + 1;
      *(v14 + 8) = v10;
      goto LABEL_10;
    }

LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 48), v9 + 1);
    v7 = *(v6 + 64);
    v9 = *v7;
    goto LABEL_9;
  }

  *(v6 + 56) = v8 + 1;
  v10 = *&v7[2 * v8 + 2];
LABEL_10:
  v15 = objc_msgSend_digestString(*(a1 + 40), v3, v4);
  *(v10 + 16) |= 1u;
  v16 = *(v10 + 8);
  if (v16)
  {
    v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  v17 = google::protobuf::internal::ArenaStringPtr::Mutable((v10 + 24), v16);
  objc_msgSend_tsp_saveToProtobufString_(v15, v18, v17);

  size = dispatch_data_get_size(*(*(a1 + 32) + 96));
  *(v10 + 16) |= 2u;
  *(v10 + 32) = size;
  v22 = objc_msgSend_length(*(a1 + 40), v20, v21);
  *(v10 + 16) |= 4u;
  *(v10 + 40) = v22;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_276ADC56C;
  v25[3] = &unk_27A6E6EE0;
  v29 = v30;
  v26 = *(a1 + 40);
  v23 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v23;
  objc_msgSend_readWithHandler_(v5, v24, v25);

  _Block_object_dispose(v30, 8);
LABEL_13:
}

void sub_276ADC56C(void *a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (v7)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD68E4();
      }

LABEL_8:
      *(*(a1[7] + 8) + 24) = 0;
      (*(a1[6] + 16))();
      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(*(a1[5] + 96), data2);
      v10 = a1[5];
      v11 = *(v10 + 96);
      *(v10 + 96) = concat;
    }

    if (a2)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_276ADC684()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ADD1CC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ADD5C4(void *a1, const char *a2)
{
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 16), a2, a1[5]);
  if (!v10)
  {
    v3 = objc_alloc(MEMORY[0x277CCAA50]);
    v10 = objc_msgSend_initWithOptions_capacity_(v3, v4, 512, 1);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 16), v5, v10, a1[5]);
  }

  v6 = [TSPDataDownloadObserverInfo alloc];
  v8 = objc_msgSend_initWithDownloadObserver_data_options_completionHandler_(v6, v7, a1[6], a1[5], a1[8], a1[7]);
  objc_msgSend_addObject_(v10, v9, v8);
}

void sub_276ADD764(void *a1, const char *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (UnsafePointer != -1)
  {
    sub_276BD6920();
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 16), a2, a1[5]);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v3;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v34, 16);
    if (v7)
    {
      v9 = v7;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          objc_msgSend_notifyWithStatus_info_(v12, v8, a1[7], a1[6]);
          if (objc_msgSend_shouldClearObserverForStatus_(v12, v13, a1[7]))
          {
            objc_msgSend_addObject_(v4, v8, v12);
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v29, v34, 16);
      }

      while (v9);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v4;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v33, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v14);
          }

          objc_msgSend_removeObject_(v5, v17, *(*(&v25 + 1) + 8 * j), v25);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v33, 16);
      }

      while (v18);
    }

    if (!objc_msgSend_count(v5, v21, v22))
    {
      objc_msgSend_removeObjectForKey_(*(a1[4] + 16), v23, a1[5]);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_276ADD974()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276ADDB8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276ADDC54()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ADDD70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276ADDE38()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ADE9E0(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v34 = v25;
  if (a2 == 2)
  {
    v26 = objc_begin_catch(exc_buf);
    v29 = objc_msgSend_error(v26, v27, v28);

    if (!v29)
    {
      v33 = objc_msgSend_sfu_localErrno(v26, v30, v31);
      if (v33)
      {
        objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v32, v33, 0);
        objc_claimAutoreleasedReturnValue();
      }

      else
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6984();
        }

        objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v32, 0);
        objc_claimAutoreleasedReturnValue();
      }
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x276ADE720);
}

void sub_276ADEC14()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276ADF4B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v6 = objc_begin_catch(a1);
    objc_msgSend_error(v6, v7, v8);
    if (!objc_claimAutoreleasedReturnValue())
    {
      v12 = objc_msgSend_sfu_localErrno(v6, v9, v10);
      if (v12)
      {
        objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v11, v12, 0);
      }

      else
      {
        objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      }

      objc_claimAutoreleasedReturnValue();
    }

    objc_end_catch();
    JUMPOUT(0x276ADF3CCLL);
  }

  _Unwind_Resume(a1);
}

void *sub_276ADF7C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

id sub_276ADFA48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  v7 = objc_msgSend_objectWithUUID_(v4, v6, v5);

  return v7;
}

id sub_276ADFB1C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v6 = objc_msgSend_objectUUID(v3, v4, v5);

  return v6;
}

__n128 sub_276AE0700(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_276AE0718(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v11 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  v6 = sub_276A174D4((v4 + 72), &v11, v5);

  if (v6)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v6 + 3);
    *(v8 + 57) = *(v6 + 33);
    *(v8 + 48) = v9;
  }

  return objc_msgSend_validateDataCollaborationProperties_forData_(*(a1 + 32), v7, *(*(a1 + 48) + 8) + 48, *(a1 + 40));
}

uint64_t sub_276AE096C(uint64_t a1, const char *a2, uint64_t a3)
{
  *v15 = 0;
  *&v15[4] = 0x8000000080000000;
  *&v15[16] = 0;
  v15[24] = 0;
  v4 = *(a1 + 32);
  v14 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  v6 = sub_276A174D4((v4 + 72), &v14, v5);

  v8 = *(a1 + 32);
  if (v6)
  {
    *v15 = *(v6 + 3);
    *&v15[9] = *(v6 + 33);
  }

  objc_msgSend_validateDataCollaborationProperties_forData_(v8, v7, v15, *(a1 + 40));
  v9 = *(a1 + 48);
  v13[0] = *v15;
  v13[1] = *&v15[16];
  return (*(v9 + 16))(v9, v13, v10, v11);
}

uint64_t sub_276AE0BE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  v5 = sub_276AE1A30((v4 + 72), &v8, &v8);

  (*(*(a1 + 48) + 16))();
  return objc_msgSend_validateDataCollaborationProperties_forData_(*(a1 + 32), v6, (v5 + 3), *(a1 + 40));
}

uint64_t sub_276AE0FE4(uint64_t a1)
{
  sub_276AE1398(v3, *(a1 + 32) + 72);
  sub_276AE16A0(*(a1 + 32) + 120, v3);
  return sub_276A16E7C(v3);
}

uint64_t sub_276AE1398(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276AE1410(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t **sub_276AE1410(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276AE168C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

void sub_276AE16A0(uint64_t a1, uint64_t *a2)
{
  sub_276AE1744(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_276AE1744(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276A16EB8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **sub_276AE17A0(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276AE1A1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_276AE1A30(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276AE1CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

void sub_276AE1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276AE1ECC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AE1EE4(uint64_t a1, int a2, void *a3, void *a4)
{
  v22 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = v22;
    if (v22)
    {
      v14 = *(*(*(a1 + 32) + 8) + 40);
      if (a2)
      {
        if (!v14)
        {
          v15 = objc_msgSend_tsp_dataFromDispatchData_(MEMORY[0x277CBEA90], v7, v22);
          v16 = *(a1 + 40);
LABEL_9:
          v17 = *(v16 + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v15;

          goto LABEL_13;
        }
      }

      else if (!v14)
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB28]);
        v20 = *(*(a1 + 32) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v14 = *(*(*(a1 + 32) + 8) + 40);
        v13 = v22;
      }

      objc_msgSend_tsp_appendDispatchData_(v14, v7, v13);
      goto LABEL_13;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v16 = *(a1 + 32);
    goto LABEL_9;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD69AC();
  }

LABEL_13:
}

void sub_276AE2034()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

id sub_276AE2078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a6;
  v13 = objc_alloc(MEMORY[0x277CBEB38]);
  v16 = objc_msgSend_count(v11, v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_276AE224C;
  v35 = sub_276AE225C;
  v36 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_276AE2264;
  v25[3] = &unk_27A6E6FF0;
  v19 = v18;
  v26 = v19;
  v20 = v12;
  v27 = v20;
  v28 = &v31;
  v30 = a5;
  v29 = a4;
  objc_msgSend_enumerateItemsUsingBlock_(v11, v21, v25);
  v22 = v32[5];
  if (v22)
  {
    v23 = 0;
    if (a7)
    {
      *a7 = v22;
    }
  }

  else
  {
    v23 = v19;
  }

  _Block_object_dispose(&v31, 8);
  return v23;
}

void sub_276AE2208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276AE224C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AE2264(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  v70 = v6;
  if (v6)
  {
    v11 = objc_msgSend_objectIfLoaded(v6, v7, v8);
    if (!v11)
    {
      v12 = objc_msgSend_tsp_identifier(v70, v9, v10);
      v15 = objc_msgSend_componentManager(*(a1 + 40), v13, v14);
      v17 = objc_msgSend_componentForRootObjectOfLazyReference_(v15, v16, v70);

      v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v18, v12);
      v21 = v17 == 0;
      if (v17)
      {
        v22 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v19, v20);

        if (v22)
        {
          v11 = 0;
          v25 = 0;
        }

        else
        {
          v50 = objc_msgSend_componentObjectUUIDMap(v17, v23, v24);
          v25 = objc_msgSend_objectUUIDForIdentifier_(v50, v51, v12);

          v54 = v25;
          if (!v25)
          {
            v54 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v53);
          }

          objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v52, v54, v20);
          if (!v25)
          {
          }

          v11 = 0;
        }

        v21 = 0;
      }

      else
      {
        v11 = 0;
        v25 = 0;
      }

      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = a2) == 0)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[NSDictionary(TSPObjectSerialization) tsp_identifierToObjectUUIDDictionaryFromWeakExternalReferences:updatingComponentInfo:failIfReferenceIsNotPersisted:context:error:]_block_invoke");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationInternal.mm");
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v40, 62, 0, "Unexpected external reference class: %{public}@", v42);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      v47 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v46, 0);
      v48 = *(*(a1 + 48) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;

      v11 = 0;
      v17 = 0;
      v25 = 0;
LABEL_25:
      *a3 = 1;
      goto LABEL_37;
    }
  }

  v12 = objc_msgSend_tsp_identifier(v11, v9, v10);
  v17 = objc_msgSend_tsp_component(v11, v26, v27);
  v25 = objc_msgSend_objectUUID(v11, v28, v29);
  v20 = v25;
  if (!v25)
  {
    v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31);
  }

  v32 = *(a1 + 32);
  v33 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v30, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v32, v34, v20, v33);

  v21 = 0;
  if (!v25)
  {
LABEL_21:

    if (v17)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v17)
  {
LABEL_26:
    v55 = v12;
    if (v17)
    {
      v55 = objc_msgSend_identifier(v17, v35, v36);
    }

    goto LABEL_28;
  }

LABEL_22:
  if (v21)
  {
    goto LABEL_26;
  }

  v55 = v12;
  if (*(a1 + 64))
  {
    v56 = MEMORY[0x277CCA9B8];
    v57 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v35, 0);
    v59 = objc_msgSend_tsp_recoverableErrorWithError_(v56, v58, v57);
    v60 = *(*(a1 + 48) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v59;

    v17 = 0;
    goto LABEL_25;
  }

LABEL_28:
  v62 = *(a1 + 56);
  v63 = *(v62 + 88);
  if (!v63)
  {
    v65 = *(v62 + 84);
LABEL_33:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v62 + 72), v65 + 1);
    v63 = *(v62 + 88);
    v65 = *v63;
    goto LABEL_34;
  }

  v64 = *(v62 + 80);
  v65 = *v63;
  if (v64 < *v63)
  {
    *(v62 + 80) = v64 + 1;
    v66 = *&v63[2 * v64 + 2];
    goto LABEL_35;
  }

  if (v65 == *(v62 + 84))
  {
    goto LABEL_33;
  }

LABEL_34:
  *v63 = v65 + 1;
  v66 = sub_2769F5108(*(v62 + 72));
  v67 = *(v62 + 80);
  v68 = *(v62 + 88) + 8 * v67;
  *(v62 + 80) = v67 + 1;
  *(v68 + 8) = v66;
LABEL_35:
  v69 = *(v66 + 16);
  *(v66 + 16) = v69 | 1;
  *(v66 + 24) = v55;
  if (v55 != v12)
  {
    *(v66 + 16) = v69 | 3;
    *(v66 + 32) = v12;
  }

LABEL_37:
}

void sub_276AE26B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v12)
  {
  }

  _Unwind_Resume(a1);
}

void *sub_276AE279C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = objc_msgSend_initWithCapacity_(v5, v6, v3);
  v8 = 8;
  do
  {
    v9 = *(*(a3 + 16) + v8);
    if (*(v9 + 24))
    {
      v10 = *(v9 + 24);
    }

    else
    {
      v10 = &TSP::_UUID_default_instance_;
    }

    TSP::UUIDData::UUIDData(&v19, v10);
    v18 = v19;
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v13 = objc_msgSend_initWithUUIDBytes_(v11, v12, &v18);
    v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v14, *(v9 + 32));
    objc_msgSend_setObject_forKeyedSubscript_(v7, v16, v13, v15);

    v8 += 8;
    --v3;
  }

  while (v3);
  return v7;
}

uint64_t sub_276AE28C0(void *a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AE292C;
  v4[3] = &unk_27A6E7010;
  v4[4] = a3;
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, a2, v4);
}

void sub_276AE292C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v13 = *(v10 + 12);
    goto LABEL_7;
  }

  v12 = *(v10 + 8);
  v13 = *v11;
  if (v12 >= *v11)
  {
    if (v13 != *(v10 + 12))
    {
LABEL_8:
      *v11 = v13 + 1;
      v14 = sub_2769F5280(*v10);
      v15 = *(v10 + 8);
      v16 = *(v10 + 16) + 8 * v15;
      *(v10 + 8) = v15 + 1;
      *(v16 + 8) = v14;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(*(a1 + 32), v13 + 1);
    v11 = *(v10 + 16);
    v13 = *v11;
    goto LABEL_8;
  }

  *(v10 + 8) = v12 + 1;
  v14 = *&v11[2 * v12 + 2];
LABEL_9:
  v17 = objc_msgSend_unsignedLongLongValue(v5, v7, v8);
  *(v14 + 16) |= 2u;
  *(v14 + 32) = v17;
  sub_2769C65D4(v20, v9);
  *(v14 + 16) |= 1u;
  v18 = *(v14 + 24);
  if (!v18)
  {
    v19 = *(v14 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v19);
    *(v14 + 24) = v18;
  }

  TSP::UUIDData::saveToMessage(v20, v18);
LABEL_14:
}

void *sub_276AE2AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = objc_msgSend_initWithCapacity_(v5, v6, v3);
  v8 = 0;
  while (1)
  {
    v9 = [TSPDecoderDataInfo alloc];
    v11 = objc_msgSend_initWithMessage_(v9, v10, *(*(a3 + 16) + 8 * v8 + 8));
    v14 = v11;
    if (!v11)
    {
      break;
    }

    v15 = MEMORY[0x277CCABB0];
    v16 = objc_msgSend_identifier(v11, v12, v13);
    v18 = objc_msgSend_numberWithLongLong_(v15, v17, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v19, v14, v18);

    if (++v8 >= v3)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_276AE2BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = objc_msgSend_initWithCapacity_(v5, v6, v3);
  v8 = 8;
  do
  {
    sub_2769EAA14(v18, *(*(a3 + 16) + v8));
    if ((v19 & 4) != 0)
    {
      v10 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, v20 & 0xFFFFFFFFFFFFFFFELL);
      v11 = v21;
      v13 = objc_msgSend_resourceNameForFilename_identifier_(TSPData, v12, v10, v21);
      v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v14, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v7, v16, v13, v15);
    }

    sub_2769EAC58(v18);
    v8 += 8;
    --v3;
  }

  while (v3);
  return v7;
}

void sub_276AE2CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769EAC58(va);

  _Unwind_Resume(a1);
}

uint64_t sub_276AE2D10(void *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (objc_msgSend_count(a1, v7, v8))
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = a1;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v37, 16);
    if (v12)
    {
      v13 = *v34;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = *(a3 + 2);
        if (!v16)
        {
          break;
        }

        v17 = a3[2];
        v18 = *v16;
        if (v17 >= *v16)
        {
          if (v18 == a3[3])
          {
LABEL_12:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v18 + 1);
            v16 = *(a3 + 2);
            v18 = *v16;
          }

          *v16 = v18 + 1;
          v19 = sub_2769F557C(*a3);
          v23 = a3[2];
          v24 = *(a3 + 2) + 8 * v23;
          a3[2] = v23 + 1;
          *(v24 + 8) = v19;
          v20 = objc_msgSend_archiveInfoMessage_archiver_packageWriter_(v15, v25, v19, v6, 0, v33);
          goto LABEL_14;
        }

        a3[2] = v17 + 1;
        v19 = *&v16[2 * v17 + 2];
        v20 = objc_msgSend_archiveInfoMessage_archiver_packageWriter_(v15, v11, v19, v6, 0, v33);
LABEL_14:
        if ((v20 & 1) == 0)
        {
          v30 = 0;
          goto LABEL_21;
        }

        v26 = objc_msgSend_filename(v15, v21, v22);
        *(v19 + 16) |= 4u;
        v27 = *(v19 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = google::protobuf::internal::ArenaStringPtr::Mutable((v19 + 40), v27);
        objc_msgSend_tsp_saveToProtobufString_(v26, v29, v28);

        if (v12 == ++v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v33, v37, 16);
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }
      }

      v18 = a3[3];
      goto LABEL_12;
    }

LABEL_19:
    v30 = 1;
LABEL_21:
  }

  else
  {
    v30 = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}