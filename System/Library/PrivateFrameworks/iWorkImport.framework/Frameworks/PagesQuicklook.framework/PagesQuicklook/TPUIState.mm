@interface TPUIState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUIState:(id)state;
- (CGRect)visibleRect;
- (TPUIState)init;
- (TPUIState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)UIStateForChart:(id)chart;
- (id)archivedUIStateInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)resetForInitialViewing;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context;
- (void)setSelectionPath:(id)path;
- (void)setUIState:(id)state forChart:(id)chart;
@end

@implementation TPUIState

- (TPUIState)init
{
  v7.receiver = self;
  v7.super_class = TPUIState;
  v2 = [(TPUIState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x277CBF398] + 16);
    v2->_visibleRect.origin = *MEMORY[0x277CBF398];
    v2->_visibleRect.size = v4;
    v2->_wordCountHUDType = 1;
    v2->_wordCountHUDPosition = xmmword_27605FCF8;
    v2->_showsComments = 1;
    selectedInspectorSwitchSegmentIdentifier = v2->_selectedInspectorSwitchSegmentIdentifier;
    v2->_selectedInspectorSwitchSegmentIdentifier = @"TPMacInspectorSegmentIdentifierFormat";

    *&v3->_showUserDefinedGuides = 257;
    v3->_presentationAutoScrollSpeed = -1.0;
  }

  return v3;
}

- (void)setSelectionPath:(id)path
{
  pathCopy = path;
  selectionPath = self->_selectionPath;
  p_selectionPath = &self->_selectionPath;
  if (selectionPath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_selectionPath, path);
    pathCopy = v8;
  }
}

- (id)UIStateForChart:(id)chart
{
  v8 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], a2, v3, v4, v5, v6, chart);
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_chartUIState, v9, v10, v11, v12, v13, v8);

  return v14;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  v11 = objc_msgSend_weakReferenceForObject_(MEMORY[0x277D80868], v6, v7, v8, v9, v10, chart);
  v17 = objc_msgSend_mutableCopy(self->_chartUIState, v12, v13, v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v20 = v19;

  objc_msgSend_setObject_forKeyedSubscript_(v20, v21, v22, v23, v24, v25, stateCopy, v11);
  v31 = objc_msgSend_copy(v20, v26, v27, v28, v29, v30);
  chartUIState = self->_chartUIState;
  self->_chartUIState = v31;
}

- (BOOL)isEqualToUIState:(id)state
{
  stateCopy = state;
  if (!CGRectEqualToRect(self->_visibleRect, *(stateCopy + 7)))
  {
    goto LABEL_41;
  }

  v5 = *(stateCopy + 15);
  v6 = self->_selectionPath;
  v7 = v5;
  if (v6 | v7)
  {
    v13 = v7;
    isEqual = objc_msgSend_isEqual_(v6, v8, v9, v10, v11, v12, v7);

    if (!isEqual)
    {
      goto LABEL_41;
    }
  }

  if (self->_sectionTemplateDrawablesSelectable != stateCopy[8] || self->_rulersVisible != stateCopy[98] || self->_layoutBordersVisible != stateCopy[99] || self->_wordCountHUDVisible != stateCopy[24] || self->_wordCountHUDType != *(stateCopy + 7))
  {
    goto LABEL_41;
  }

  v15 = 0;
  if (self->_wordCountHUDPosition.x == *(stateCopy + 4))
  {
    v9.n128_u64[0] = *&self->_wordCountHUDPosition.y;
    v10.n128_u64[0] = *(stateCopy + 5);
    if (v9.n128_f64[0] == v10.n128_f64[0])
    {
      if (self->_showsComments == stateCopy[100] && self->_hasShowsCTMarkup == stateCopy[101] && self->_showsCTMarkup == stateCopy[102] && self->_hasShowsCTDeletions == stateCopy[103] && self->_showsCTDeletions == stateCopy[104] && self->_changeTrackingPaused == stateCopy[105] && self->_showsFlowMode == stateCopy[106])
      {
        objc_msgSend_tsu_CGFloatValue(self->_flowModeFontScale, v8, v9, v10, v11, v12);
        v17 = v16.n128_f64[0];
        objc_msgSend_tsu_CGFloatValue(*(stateCopy + 17), v18, v16, v19, v20, v21);
        if (v17 == v22 && self->_showsPageNavigator == stateCopy[107] && self->_showsTOCNavigator == stateCopy[108] && self->_pencilAnnotationsHidden == stateCopy[109] && self->_showsActivityStream == stateCopy[110] && self->_tocOrPageNavWidth == *(stateCopy + 26) && self->_activityOrAnnotationWidth == *(stateCopy + 27) && self->_shouldShowCommentSidebar == stateCopy[48] && self->_viewScaleMode == *(stateCopy + 2) && self->_pageViewState == *(stateCopy + 18) && self->_viewScale == *(stateCopy + 19) && CGRectEqualToRect(self->_windowFrame, *(stateCopy + 56)) && sub_275FE7F28(self->_selectedInspectorSwitchSegmentIdentifier, *(stateCopy + 11)) && self->_inspectorHidden == stateCopy[96] && self->_showUserDefinedGuides == stateCopy[111] && sub_275FE7F28(self->_authorForFilteringName, *(stateCopy + 20)) && sub_275FE7EB0(self->_authorForFiltering, *(stateCopy + 21)) && sub_275FE7EB0(self->_freehandDrawingToolkitUIState, *(stateCopy + 22)) && sub_275FE7EB0(self->_pencilAnnotationUIState, *(stateCopy + 23)) && self->_viewScaleModeiOS == *(stateCopy + 24) && self->_presentationAutoScrollSpeed == *(stateCopy + 25) && self->_showUserDefinedPageTemplateGuides == stateCopy[112])
        {
          v15 = self->_editingDisabled == stateCopy[97];
          goto LABEL_42;
        }
      }

LABEL_41:
      v15 = 0;
    }
  }

LABEL_42:

  return v15;
}

- (id)archivedUIStateInContext:(id)context
{
  contextCopy = context;
  v5 = [TPArchivedUIState alloc];
  v11 = objc_msgSend_initWithContext_uiState_(v5, v6, v7, v8, v9, v10, contextCopy, self);

  return v11;
}

- (TPUIState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v12 = objc_msgSend_init(self, v7, v8, v9, v10, v11);

  if (!v12)
  {
    goto LABEL_114;
  }

  v18 = *(archive + 4);
  v212 = unarchiverCopy;
  v213 = v12;
  if ((v18 & 4) == 0)
  {
LABEL_3:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    v95 = objc_alloc(MEMORY[0x277D806C8]);
    if (*(archive + 22))
    {
      v101 = objc_msgSend_initWithArchive_unarchiver_(v95, v96, v97, v98, v99, v100, *(archive + 22), unarchiverCopy);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  TSPCGPointFromMessage(*(archive + 9));
  v12[28] = v94;
  v12[29] = v15.n128_u64[0];
  v14 = *MEMORY[0x277CBF3A8];
  *(v12 + 15) = *MEMORY[0x277CBF3A8];
  v18 = *(archive + 4);
  if ((v18 & 0x20) == 0)
  {
    if ((~v18 & 0x30000) == 0)
    {
      v15.n128_u64[0] = 0x4088000000000000;
      v16.n128_u64[0] = 0x4090000000000000;
      if (*(archive + 188))
      {
        v15.n128_f64[0] = 1024.0;
      }

      v14.n128_f64[0] = v15.n128_f64[0] / *(archive + 46);
      v12[30] = v14.n128_u64[0];
    }

    goto LABEL_3;
  }

  TSPCGSizeCreateFromMessage(*(archive + 12));
  v12[30] = v14.n128_u64[0];
  v12[31] = v15.n128_u64[0];
  v18 = *(archive + 4);
  if ((v18 & 0x8000) != 0)
  {
    goto LABEL_29;
  }

LABEL_4:
  if ((v18 & 0x200) != 0)
  {
    v95 = objc_alloc(MEMORY[0x277D806C8]);
    if (*(archive + 16))
    {
      v101 = objc_msgSend_initWithArchive_unarchiver_(v95, v96, v97, v98, v99, v100, *(archive + 16), unarchiverCopy);
LABEL_32:
      v102 = v12[15];
      v12[15] = v101;
      goto LABEL_33;
    }

LABEL_30:
    v101 = objc_msgSend_initWithArchive_unarchiver_(v95, v96, v97, v98, v99, v100, MEMORY[0x277D80750], unarchiverCopy);
    goto LABEL_32;
  }

  if ((v18 & 0x100) == 0 || ((v19 = objc_alloc(MEMORY[0x277D806C8]), *(archive + 15)) ? (v25 = objc_msgSend_initWithArchive_unarchiver_(v19, v20, v21, v22, v23, v24, *(archive + 15), unarchiverCopy)) : (v25 = objc_msgSend_initWithArchive_unarchiver_(v19, v20, v21, v22, v23, v24, MEMORY[0x277D80750], unarchiverCopy)), v26 = v25, v26, !v26))
  {
    if ((~*(archive + 4) & 0x18) != 0)
    {
      goto LABEL_34;
    }

    v196 = *(archive + 10);
    v237[0] = 0;
    v237[1] = v237;
    v237[2] = 0x3032000000;
    v237[3] = sub_275FE8D64;
    v237[4] = sub_275FE8D74;
    v238 = 0;
    v236[0] = MEMORY[0x277D85DD0];
    v236[1] = 3221225472;
    v236[2] = sub_275FE8E28;
    v236[3] = &unk_27A6A8890;
    v236[4] = v237;
    sub_275FE8D7C(unarchiverCopy, v196, &unk_2885242D8, v236);
    v234[0] = 0;
    v234[1] = v234;
    v234[2] = 0x3032000000;
    v234[3] = sub_275FE8D64;
    v234[4] = sub_275FE8D74;
    v235 = 0;
    if (*(archive + 11))
    {
      v197 = *(archive + 11);
    }

    else
    {
      v197 = MEMORY[0x277D80A18];
    }

    v233[0] = MEMORY[0x277D85DD0];
    v233[1] = 3221225472;
    v233[2] = sub_275FE8EE4;
    v233[3] = &unk_27A6A88B8;
    v233[4] = v234;
    sub_275FE8E38(unarchiverCopy, v197, &unk_288510140, v233);
    v203 = objc_msgSend_context(unarchiverCopy, v198, v199, v200, v201, v202);
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = sub_275FE8EF4;
    v229[3] = &unk_27A6A88E0;
    v232 = v237;
    v231 = v234;
    v229[4] = v203;
    v230 = v12;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v204, v205, v206, v207, v208, v229);

    _Block_object_dispose(v234, 8);
    _Block_object_dispose(v237, 8);
    v102 = v238;
LABEL_33:

    goto LABEL_34;
  }

  v27 = v26;
  v210 = v27;
  v33 = objc_msgSend_orderedSelections(v27, v28, v29, v30, v31, v32);
  archiveCopy = archive;
  v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);

  if (v39)
  {
    v40 = 0;
    do
    {
      objc_opt_class();
      v46 = objc_msgSend_orderedSelections(v27, v41, v42, v43, v44, v45);
      v52 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, v48, v49, v50, v51, v40);
      v53 = TSUDynamicCast();

      isRange = objc_msgSend_isRange(v53, v54, v55, v56, v57, v58);
      v60 = TSUProtocolCast();
      v66 = objc_msgSend_infoCount(v60, v61, v62, v63, v64, v65, &unk_2885226A8);

      v72 = v40 + 1;
      if (v40 + 1 < v39)
      {
        v211 = v27;
        v73 = objc_msgSend_orderedSelections(v27, v67, v68, v69, v70, v71);
        v79 = objc_msgSend_objectAtIndexedSubscript_(v73, v74, v75, v76, v77, v78, v40 + 1);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (v66)
        {
          v86 = 0;
        }

        else
        {
          v86 = isRange;
        }

        if ((v86 & isKindOfClass) == 1)
        {
          v87 = objc_msgSend_copyWithNewRange_(v53, v81, v82, v83, v84, v85, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8));
          v93 = objc_msgSend_selectionPathReplacingMostSpecificLocationOfSelection_withSelection_(v211, v88, v89, v90, v91, v92, v53, v87);

          v72 = v40 + 2;
          v27 = v93;
        }

        else
        {
          v27 = v211;
        }
      }

      v40 = v72;
    }

    while (v72 < v39);
  }

  v12 = v213;
  objc_storeStrong(v213 + 15, v27);

  archive = archiveCopy;
LABEL_34:
  if ((*(archive + 18) & 4) != 0)
  {
    *(v12 + 8) = *(archive + 189);
  }

  archiveCopy2 = archive;
  v104 = *(archive + 10);
  if (v104 >= 1)
  {
    v105 = 8;
    do
    {
      v106 = *(*(archive + 6) + v105);
      v107 = objc_alloc(MEMORY[0x277D80038]);
      v113 = objc_msgSend_initWithArchive_(v107, v108, v109, v110, v111, v112, v106);
      v114 = *(v106 + 48);
      v226[0] = MEMORY[0x277D85DD0];
      v226[1] = 3221225472;
      v226[2] = sub_275FE90B8;
      v226[3] = &unk_27A6A8908;
      v227 = v213;
      v115 = v113;
      v228 = v115;
      v116 = v212;
      v117 = v226;
      v119 = objc_opt_class();
      if (v114)
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v116, v118, v120, v121, v122, v123, v114, v119, 0, v117);
      }

      else
      {
        objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v116, v118, v120, v121, v122, v123, MEMORY[0x277D80A18], v119, 0, v117);
      }

      v105 += 8;
      --v104;
    }

    while (v104);
  }

  v124 = *(archive + 5);
  v12 = v213;
  if ((v124 & 0x100) != 0)
  {
    *(v213 + 98) = *(archive + 244);
  }

  v125 = *(archive + 4);
  if ((v125 & 0x80000) != 0)
  {
    *(v213 + 99) = *(archive + 190);
  }

  if ((v125 & 0x100000) != 0)
  {
    *(v213 + 24) = *(archive + 191);
  }

  unarchiverCopy = v212;
  if ((v125 & 0x400000) != 0)
  {
    *(v213 + 7) = *(archive + 49);
  }

  if ((~v125 & 0x10800000) == 0)
  {
    v14.n128_f64[0] = *(archive + 50);
    v15.n128_f64[0] = *(archive + 52);
    v213[4] = v14.n128_u64[0];
    v213[5] = v15.n128_u64[0];
  }

  if ((v124 & 0x200) != 0)
  {
    *(v213 + 100) = *(archive + 245);
  }

  *(v213 + 101) = (v124 & 0x800) != 0;
  if ((v124 & 0x800) != 0)
  {
    *(v213 + 102) = *(archive + 247);
  }

  *(v213 + 103) = (v124 & 0x2000) != 0;
  if ((v124 & 0x2000) != 0)
  {
    *(v213 + 104) = *(archive + 252);
    if ((v125 & 0x8000000) == 0)
    {
LABEL_58:
      if ((v124 & 4) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_74;
    }
  }

  else if ((v125 & 0x8000000) == 0)
  {
    goto LABEL_58;
  }

  *(v213 + 105) = *(archive + 207);
  if ((v124 & 4) == 0)
  {
LABEL_59:
    if ((v124 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v213 + 106) = *(archive + 223);
  if ((v124 & 0x40) == 0)
  {
LABEL_60:
    if ((v125 & 0x1000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_75:
  v14.n128_u32[0] = *(archive + 59);
  v127 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v13, v14, v15, v16, v17);
  v128 = v213[17];
  v213[17] = v127;

  v125 = *(archive + 4);
  if ((v125 & 0x1000000) != 0)
  {
LABEL_61:
    *(v213 + 107) = *(archive + 204);
  }

LABEL_62:
  v126 = *(archive + 5);
  if (v126)
  {
    *(v213 + 108) = *(archive + 221);
    if ((v125 & 0x80000000) == 0)
    {
LABEL_64:
      if ((v126 & 8) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_79;
    }
  }

  else if ((v125 & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  *(v213 + 109) = *(archive + 220);
  if ((v126 & 8) == 0)
  {
LABEL_65:
    if ((v126 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v213 + 110) = *(archive + 224);
  if ((v126 & 0x10) == 0)
  {
LABEL_66:
    if ((v126 & 0x20) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_81;
  }

LABEL_80:
  v14.n128_f64[0] = *(archive + 57);
  v213[26] = v14.n128_u64[0];
  if ((v126 & 0x20) == 0)
  {
LABEL_67:
    if ((v125 & 0x4000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_82;
  }

LABEL_81:
  v14.n128_f64[0] = *(archive + 58);
  v213[27] = v14.n128_u64[0];
  if ((v125 & 0x4000000) == 0)
  {
LABEL_68:
    if ((v125 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v213 + 48) = *(archive + 206);
  if ((v125 & 0x200000) == 0)
  {
LABEL_69:
    if ((v125 & 0x20000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_84;
  }

LABEL_83:
  v213[2] = *(archive + 48);
  if ((v125 & 0x20000000) == 0)
  {
LABEL_70:
    if ((v126 & 0x80) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_84:
  v213[18] = *(archive + 53);
  if ((v126 & 0x80) != 0)
  {
LABEL_85:
    TSPCGFloatFromFloat(*(archive + 60));
    v213[19] = v14.n128_u64[0];
    v125 = *(archive + 4);
  }

LABEL_86:
  if ((~v125 & 0xC0) == 0)
  {
    TSPCGPointFromMessage(*(archive + 13));
    v213[7] = v129;
    v213[8] = v130;
    if (*(archive + 14))
    {
      v131 = *(archive + 14);
    }

    else
    {
      v131 = MEMORY[0x277D809D8];
    }

    TSPCGSizeCreateFromMessage(v131);
    v213[9] = v14.n128_u64[0];
    v213[10] = v15.n128_u64[0];
    v125 = *(archive + 4);
  }

  if (v125)
  {
    v132 = objc_alloc(MEMORY[0x277CCACA8]);
    v138 = objc_msgSend_tsp_initWithProtobufString_(v132, v133, v134, v135, v136, v137, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    v139 = v213[11];
    v213[11] = v138;

    v125 = *(archive + 4);
  }

  if ((v125 & 0x2000000) != 0)
  {
    *(v213 + 96) = *(archive + 205);
  }

  if ((*(archive + 21) & 4) != 0)
  {
    *(v213 + 111) = *(archive + 246);
  }

  if ((v125 & 2) != 0)
  {
    v140 = objc_alloc(MEMORY[0x277CCACA8]);
    v146 = objc_msgSend_tsp_initWithProtobufString_(v140, v141, v142, v143, v144, v145, *(archive + 8) & 0xFFFFFFFFFFFFFFFELL);
    v147 = v213[20];
    v213[20] = v146;

    v125 = *(archive + 4);
  }

  if ((v125 & 0x400) != 0)
  {
    v148 = *(archive + 17);
    v224[0] = MEMORY[0x277D85DD0];
    v224[1] = 3221225472;
    v224[2] = sub_275FE9188;
    v224[3] = &unk_27A6A8930;
    v225 = v213;
    v149 = v212;
    v150 = v224;
    v151 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v149, v152, v153, v154, v155, v156, v148, v151, 0, v150);

    v125 = archiveCopy2[4];
  }

  if ((v125 & 0x800) != 0)
  {
    v163 = *(archiveCopy2 + 18);
    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 3221225472;
    v222[2] = sub_275FE9194;
    v222[3] = &unk_27A6A8958;
    v223 = v213;
    v164 = v212;
    v165 = v222;
    v166 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v164, v167, v168, v169, v170, v171, v163, v166, 0, v165);

    v157 = v223;
  }

  else
  {
    v157 = objc_msgSend_context(v212, v13, v14, v15, v16, v17);
    v219[0] = MEMORY[0x277D85DD0];
    v219[1] = 3221225472;
    v219[2] = sub_275FE9214;
    v219[3] = &unk_27A6A8418;
    v220 = v213;
    v221 = v157;
    objc_msgSend_addFinalizeHandler_(v212, v158, v159, v160, v161, v162, v219);
  }

  if ((*(archiveCopy2 + 17) & 0x20) != 0)
  {
    v183 = *(archiveCopy2 + 20);
    v217[0] = MEMORY[0x277D85DD0];
    v217[1] = 3221225472;
    v217[2] = sub_275FE9264;
    v217[3] = &unk_27A6A8980;
    v218 = v213;
    v184 = v212;
    v185 = v217;
    v186 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v184, v187, v188, v189, v190, v191, v183, v186, 0, v185);

    v177 = v218;
  }

  else
  {
    v177 = objc_msgSend_context(v212, v172, v173, v174, v175, v176);
    v214[0] = MEMORY[0x277D85DD0];
    v214[1] = 3221225472;
    v214[2] = sub_275FE9270;
    v214[3] = &unk_27A6A8418;
    v215 = v213;
    v216 = v177;
    objc_msgSend_addFinalizeHandler_(v212, v178, v179, v180, v181, v182, v214);
  }

  v192 = archiveCopy2[5];
  if ((v192 & 0x1000) != 0)
  {
    v213[24] = archiveCopy2[62];
  }

  if ((*(archiveCopy2 + 19) & 0x40) != 0)
  {
    TSPCGFloatFromFloat(*(archiveCopy2 + 54));
    v213[25] = v193;
    v192 = archiveCopy2[5];
  }

  if ((v192 & 0x4000) != 0)
  {
    *(v213 + 112) = *(archiveCopy2 + 253);
  }

  *(v213 + 97) = *(archiveCopy2 + 222);
LABEL_114:
  v194 = v12;

  return v194;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context
{
  v168[2] = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  contextCopy = context;
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  *(archive + 4) |= 4u;
  v12 = *(archive + 9);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C92D30](v13);
    *(archive + 9) = v12;
  }

  v169.x = x;
  v169.y = y;
  TSPCGPointCopyToMessage(v169, v12);
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  *(archive + 4) |= 0x20u;
  v16 = *(archive + 12);
  if (!v16)
  {
    v17 = *(archive + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C92D10](v17);
    *(archive + 12) = v16;
  }

  v170.width = width;
  v170.height = height;
  TSPCGSizeCopyToMessage(v170, v16);
  v18 = objc_alloc(MEMORY[0x277D80670]);
  v24 = objc_msgSend_tsck_documentRoot(contextCopy, v19, v20, v21, v22, v23);
  v159 = objc_msgSend_initWithDocumentRoot_(v18, v25, v26, v27, v28, v29, v24);

  v35 = objc_msgSend_emptySelection(TPCanvasSelection, v30, v31, v32, v33, v34);
  v36 = MEMORY[0x277D806C8];
  v168[0] = v159;
  v168[1] = v35;
  v158 = v35;
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v38, v39, v40, v41, v168, 2);
  v160 = objc_msgSend_selectionPathWithSelectionArray_(v36, v43, v44, v45, v46, v47, v42);

  *(archive + 4) |= 0x100u;
  v53 = *(archive + 15);
  if (!v53)
  {
    v54 = *(archive + 1);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    v53 = MEMORY[0x277C92CF0](v54);
    *(archive + 15) = v53;
  }

  objc_msgSend_saveToArchive_archiver_context_(v160, v48, v49, v50, v51, v52, v53, archiverCopy, contextCopy);
  selectionPath = self->_selectionPath;
  if (selectionPath)
  {
    *(archive + 4) |= 0x8000u;
    v61 = *(archive + 22);
    if (!v61)
    {
      v62 = *(archive + 1);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C92CF0](v62);
      *(archive + 22) = v61;
    }

    objc_msgSend_saveToArchive_archiver_context_(selectionPath, v55, v56, v57, v58, v59, v61, archiverCopy, contextCopy);
  }

  sectionTemplateDrawablesSelectable = self->_sectionTemplateDrawablesSelectable;
  *(archive + 4) |= 0x40000u;
  *(archive + 189) = sectionTemplateDrawablesSelectable;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v64 = self->_chartUIState;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, v66, v67, v68, v69, &v161, v167, 16);
  if (v71)
  {
    v76 = *v162;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v162 != v76)
        {
          objc_enumerationMutation(v64);
        }

        v78 = *(*(&v161 + 1) + 8 * i);
        v79 = *(archive + 6);
        if (!v79)
        {
          goto LABEL_29;
        }

        v80 = *(archive + 10);
        v81 = *v79;
        if (v80 < *v79)
        {
          *(archive + 10) = v80 + 1;
          v82 = *&v79[2 * v80 + 2];
          goto LABEL_31;
        }

        if (v81 == *(archive + 11))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 32));
          v79 = *(archive + 6);
          v81 = *v79;
        }

        *v79 = v81 + 1;
        v82 = MEMORY[0x277C92D80](*(archive + 4));
        v83 = *(archive + 10);
        v84 = *(archive + 6) + 8 * v83;
        *(archive + 10) = v83 + 1;
        *(v84 + 8) = v82;
LABEL_31:
        *(v82 + 40) |= 1u;
        v85 = *(v82 + 48);
        if (!v85)
        {
          v86 = *(v82 + 8);
          if (v86)
          {
            v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          v85 = MEMORY[0x277C92D60](v86);
          *(v82 + 48) = v85;
        }

        objc_msgSend_setWeakLazyReference_message_(archiverCopy, v70, v72, v73, v74, v75, v78, v85);
        v92 = objc_msgSend_objectForKeyedSubscript_(self->_chartUIState, v87, v88, v89, v90, v91, v78);
        objc_msgSend_saveToArchive_(v92, v93, v94, v95, v96, v97, v82);
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v70, v72, v73, v74, v75, &v161, v167, 16);
    }

    while (v71);
  }

  *(archive + 244) = self->_rulersVisible;
  v102 = *(archive + 4);
  v103 = *(archive + 5);
  *(archive + 190) = self->_layoutBordersVisible;
  *(archive + 191) = self->_wordCountHUDVisible;
  *(archive + 49) = self->_wordCountHUDType;
  v104.n128_f32[0] = self->_wordCountHUDPosition.x;
  *(archive + 50) = v104.n128_u32[0];
  v104.n128_u64[0] = *&self->_wordCountHUDPosition.y;
  v104.n128_f32[0] = v104.n128_f64[0];
  *(archive + 4) = v102 | 0x10D80000;
  *(archive + 52) = v104.n128_u32[0];
  showsComments = self->_showsComments;
  v106 = v103 | 0x300;
  *(archive + 5) = v103 | 0x300;
  *(archive + 245) = showsComments;
  if (self->_hasShowsCTMarkup)
  {
    showsCTMarkup = self->_showsCTMarkup;
    v106 = v103 | 0xB00;
    *(archive + 5) = v103 | 0xB00;
    *(archive + 247) = showsCTMarkup;
  }

  if (self->_hasShowsCTDeletions)
  {
    showsCTDeletions = self->_showsCTDeletions;
    v106 |= 0x2000u;
    *(archive + 5) = v106;
    *(archive + 252) = showsCTDeletions;
  }

  changeTrackingPaused = self->_changeTrackingPaused;
  v110 = v102 | 0x18D80000;
  *(archive + 4) = v110;
  *(archive + 207) = changeTrackingPaused;
  showsFlowMode = self->_showsFlowMode;
  v112 = v106 | 4;
  *(archive + 5) = v112;
  *(archive + 223) = showsFlowMode;
  flowModeFontScale = self->_flowModeFontScale;
  if (flowModeFontScale)
  {
    objc_msgSend_tsu_CGFloatValue(flowModeFontScale, v98, v104, v99, v100, v101);
    *&v114 = v114;
    v110 = *(archive + 4);
    v112 = *(archive + 5) | 0x40;
    *(archive + 5) = v112;
    *(archive + 59) = LODWORD(v114);
  }

  *(archive + 204) = self->_showsPageNavigator;
  *(archive + 221) = self->_showsTOCNavigator;
  *(archive + 220) = self->_pencilAnnotationsHidden;
  *(archive + 224) = self->_showsActivityStream;
  *(archive + 5) = v112 | 0x39;
  *(archive + 228) = vcvt_f32_f64(*&self->_tocOrPageNavWidth);
  *(archive + 206) = self->_shouldShowCommentSidebar;
  *(archive + 48) = self->_viewScaleMode;
  pageViewState = self->_pageViewState;
  *(archive + 4) = v110 | 0xA5200000;
  *(archive + 53) = pageViewState;
  TSPCGFloatToFloat(self->_viewScale);
  *(archive + 5) |= 0x80u;
  *(archive + 60) = v116;
  if (!CGRectEqualToRect(self->_windowFrame, *MEMORY[0x277CBF3A0]))
  {
    v122 = self->_windowFrame.origin.x;
    v123 = self->_windowFrame.origin.y;
    *(archive + 4) |= 0x40u;
    v124 = *(archive + 13);
    if (!v124)
    {
      v125 = *(archive + 1);
      if (v125)
      {
        v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
      }

      v124 = MEMORY[0x277C92D30](v125);
      *(archive + 13) = v124;
    }

    v171.x = v122;
    v171.y = v123;
    TSPCGPointCopyToMessage(v171, v124);
    v126 = self->_windowFrame.size.width;
    v127 = self->_windowFrame.size.height;
    *(archive + 4) |= 0x80u;
    v128 = *(archive + 14);
    if (!v128)
    {
      v129 = *(archive + 1);
      if (v129)
      {
        v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
      }

      v128 = MEMORY[0x277C92D10](v129);
      *(archive + 14) = v128;
    }

    v172.width = v126;
    v172.height = v127;
    TSPCGSizeCopyToMessage(v172, v128);
  }

  selectedInspectorSwitchSegmentIdentifier = self->_selectedInspectorSwitchSegmentIdentifier;
  if (selectedInspectorSwitchSegmentIdentifier)
  {
    v131 = objc_msgSend_tsp_protobufString(selectedInspectorSwitchSegmentIdentifier, v117, v118, v119, v120, v121);
    *(archive + 4) |= 1u;
    sub_275FBA9EC(__p, v131);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v166 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(archive + 205) = self->_inspectorHidden;
  showUserDefinedGuides = self->_showUserDefinedGuides;
  v119.n128_u64[0] = 0x40002000000;
  v118.n128_u64[0] = vorr_s8(*(archive + 16), 0x40002000000);
  *(archive + 2) = v118.n128_u64[0];
  *(archive + 246) = showUserDefinedGuides;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v117, v118, v119, v120, v121, 23, archive);
  authorForFilteringName = self->_authorForFilteringName;
  if (authorForFilteringName)
  {
    v139 = objc_msgSend_tsp_protobufString(authorForFilteringName, v133, v134, v135, v136, v137);
    *(archive + 4) |= 2u;
    sub_275FBA9EC(__p, v139);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v166 < 0)
    {
      operator delete(__p[0]);
    }
  }

  authorForFiltering = self->_authorForFiltering;
  if (authorForFiltering)
  {
    *(archive + 4) |= 0x400u;
    v141 = *(archive + 17);
    if (!v141)
    {
      v142 = *(archive + 1);
      if (v142)
      {
        v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
      }

      v141 = MEMORY[0x277C92D60](v142);
      *(archive + 17) = v141;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v133, v134, v135, v136, v137, authorForFiltering, v141);
  }

  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v133, v134, v135, v136, v137, 32, archive);
  freehandDrawingToolkitUIState = self->_freehandDrawingToolkitUIState;
  if (freehandDrawingToolkitUIState)
  {
    *(archive + 4) |= 0x800u;
    v149 = *(archive + 18);
    if (!v149)
    {
      v150 = *(archive + 1);
      if (v150)
      {
        v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
      }

      v149 = MEMORY[0x277C92D60](v150);
      *(archive + 18) = v149;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v143, v144, v145, v146, v147, freehandDrawingToolkitUIState, v149);
  }

  pencilAnnotationUIState = self->_pencilAnnotationUIState;
  if (pencilAnnotationUIState)
  {
    *(archive + 4) |= 0x2000u;
    v152 = *(archive + 20);
    if (!v152)
    {
      v153 = *(archive + 1);
      if (v153)
      {
        v153 = *(v153 & 0xFFFFFFFFFFFFFFFELL);
      }

      v152 = MEMORY[0x277C92D60](v153);
      *(archive + 20) = v152;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v143, v144, v145, v146, v147, pencilAnnotationUIState, v152);
  }

  viewScaleModeiOS = self->_viewScaleModeiOS;
  v155 = *(archive + 5);
  *(archive + 5) = v155 | 0x1000;
  *(archive + 62) = viewScaleModeiOS;
  v144.n128_u64[0] = *&self->_presentationAutoScrollSpeed;
  if (v144.n128_f64[0] > 0.0)
  {
    v144.n128_f32[0] = v144.n128_f64[0];
    *(archive + 4) |= 0x40000000u;
    *(archive + 54) = v144.n128_u32[0];
  }

  showUserDefinedPageTemplateGuides = self->_showUserDefinedPageTemplateGuides;
  *(archive + 5) = v155 | 0x5000;
  *(archive + 253) = showUserDefinedPageTemplateGuides;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v143, v144, v145, v146, v147, 39, archive);
  editingDisabled = self->_editingDisabled;
  *(archive + 5) |= 2u;
  *(archive + 222) = editingDisabled;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = objc_msgSend_allocWithZone_(TPUIState, a2, v3, v4, v5, v6, zone);
  v14 = objc_msgSend_init(v8, v9, v10, v11, v12, v13);
  v15 = v14;
  if (v14)
  {
    size = self->_visibleRect.size;
    *(v14 + 224) = self->_visibleRect.origin;
    *(v14 + 240) = size;
    objc_storeStrong((v14 + 120), self->_selectionPath);
    *(v15 + 8) = self->_sectionTemplateDrawablesSelectable;
    objc_storeStrong((v15 + 128), self->_chartUIState);
    *(v15 + 98) = self->_rulersVisible;
    *(v15 + 99) = self->_layoutBordersVisible;
    *(v15 + 24) = self->_wordCountHUDVisible;
    *(v15 + 28) = self->_wordCountHUDType;
    *(v15 + 32) = self->_wordCountHUDPosition;
    *(v15 + 100) = self->_showsComments;
    *(v15 + 101) = self->_hasShowsCTMarkup;
    *(v15 + 102) = self->_showsCTMarkup;
    *(v15 + 103) = self->_hasShowsCTDeletions;
    *(v15 + 104) = self->_showsCTDeletions;
    *(v15 + 105) = self->_changeTrackingPaused;
    *(v15 + 106) = self->_showsFlowMode;
    objc_storeStrong((v15 + 136), self->_flowModeFontScale);
    *(v15 + 107) = self->_showsPageNavigator;
    *(v15 + 108) = self->_showsTOCNavigator;
    *(v15 + 109) = self->_pencilAnnotationsHidden;
    *(v15 + 110) = self->_showsActivityStream;
    *(v15 + 208) = self->_tocOrPageNavWidth;
    *(v15 + 216) = self->_activityOrAnnotationWidth;
    *(v15 + 48) = self->_shouldShowCommentSidebar;
    *(v15 + 16) = self->_viewScaleMode;
    *(v15 + 144) = self->_pageViewState;
    *(v15 + 152) = self->_viewScale;
    origin = self->_windowFrame.origin;
    *(v15 + 72) = self->_windowFrame.size;
    *(v15 + 56) = origin;
    objc_storeStrong((v15 + 88), self->_selectedInspectorSwitchSegmentIdentifier);
    *(v15 + 96) = self->_inspectorHidden;
    *(v15 + 111) = self->_showUserDefinedGuides;
    objc_storeStrong((v15 + 160), self->_authorForFilteringName);
    objc_storeStrong((v15 + 168), self->_authorForFiltering);
    objc_storeStrong((v15 + 176), self->_freehandDrawingToolkitUIState);
    objc_storeStrong((v15 + 184), self->_pencilAnnotationUIState);
    *(v15 + 192) = self->_viewScaleModeiOS;
    *(v15 + 200) = self->_presentationAutoScrollSpeed;
    *(v15 + 112) = self->_showUserDefinedPageTemplateGuides;
    *(v15 + 97) = self->_editingDisabled;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToUIState = objc_msgSend_isEqualToUIState_(self, v5, v6, v7, v8, v9, equalCopy);
    }

    else
    {
      isEqualToUIState = 0;
    }
  }

  return isEqualToUIState;
}

- (unint64_t)hash
{
  v2.n128_u64[0] = *&self->_visibleRect.origin.x;
  v3.n128_u64[0] = *&self->_visibleRect.origin.y;
  v4.n128_u64[0] = *&self->_visibleRect.size.width;
  v5.n128_u64[0] = *&self->_visibleRect.size.height;
  v7 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], a2, v2, v3, v4, v5);
  objc_msgSend_hash(v7, v8, v9, v10, v11, v12);

  objc_msgSend_hash(self->_selectionPath, v13, v14, v15, v16, v17);
  TSUHashWithSeed();
  objc_msgSend_hash(self->_chartUIState, v18, v19, v20, v21, v22);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v23.n128_u64[0] = *&self->_wordCountHUDPosition.x;
  v24.n128_u64[0] = *&self->_wordCountHUDPosition.y;
  v28 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v25, v23, v24, v26, v27);
  objc_msgSend_hash(v28, v29, v30, v31, v32, v33);

  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_hash(self->_flowModeFontScale, v34, v35, v36, v37, v38);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v39.n128_u64[0] = *&self->_viewScale;
  v44 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v39, v41, v42, v43);
  objc_msgSend_hash(v44, v45, v46, v47, v48, v49);

  v50.n128_u64[0] = *&self->_windowFrame.origin.x;
  v51.n128_u64[0] = *&self->_windowFrame.origin.y;
  v52.n128_u64[0] = *&self->_windowFrame.size.width;
  v53.n128_u64[0] = *&self->_windowFrame.size.height;
  v55 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v54, v50, v51, v52, v53);
  objc_msgSend_hash(v55, v56, v57, v58, v59, v60);

  objc_msgSend_hash(self->_selectedInspectorSwitchSegmentIdentifier, v61, v62, v63, v64, v65);
  TSUHashWithSeed();
  TSUHashWithSeed();
  objc_msgSend_hash(self->_authorForFilteringName, v66, v67, v68, v69, v70);
  objc_msgSend_hash(self->_authorForFiltering, v71, v72, v73, v74, v75);
  objc_msgSend_hash(self->_freehandDrawingToolkitUIState, v76, v77, v78, v79, v80);
  objc_msgSend_hash(self->_pencilAnnotationUIState, v81, v82, v83, v84, v85);
  TSUHashWithSeed();
  v86.n128_u64[0] = *&self->_presentationAutoScrollSpeed;
  v91 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v87, v86, v88, v89, v90);
  objc_msgSend_hash(v91, v92, v93, v94, v95, v96);

  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (void)resetForInitialViewing
{
  v3 = MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_visibleRect.origin = *MEMORY[0x277CBF3A0];
  self->_visibleRect.size = v4;
  selectionPath = self->_selectionPath;
  self->_selectionPath = 0;

  self->_viewScale = 0.0;
  v9 = *v3;
  v10 = *(v3 + 16);
  self->_windowFrame.origin = *v3;
  self->_windowFrame.size = v10;
  self->_viewScaleModeiOS = 2;
  chartUIState = self->_chartUIState;

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(chartUIState, v6, v9, v10, v7, v8, &unk_2885011B8);
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end