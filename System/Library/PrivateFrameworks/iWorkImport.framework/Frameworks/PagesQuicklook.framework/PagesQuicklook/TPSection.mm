@interface TPSection
- (BOOL)isHeaderFooterEmpty:(int64_t)a3;
- (BOOL)isHeaderFooterVisible:(int64_t)a3;
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (NSArray)pageInfosForPropagation;
- (NSArray)sectionTemplatePages;
- (NSString)localizedPrettyDisplayStringLong;
- (NSString)localizedPrettyDisplayStringShort;
- (NSURL)url;
- (TPPageTemplate)pageTemplate;
- (TPSection)initWithContext:(id)a3;
- (TPSection)initWithContext:(id)a3 section:(id)a4;
- (TSWPStorage)parentStorage;
- (id)allDrawables;
- (id)childEnumerator;
- (id)copyWithContext:(id)a3;
- (id)objectUUIDPath;
- (id)sectionTemplatePageOwningInfo:(id)a3;
- (id)sectionTemplatePageOwningModel:(id)a3;
- (void)acceptVisitor:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)i_clearPropertiesToDefaults;
- (void)i_copyHeadersAndFootersFrom:(id)a3 dolcContext:(id)a4 withBlock:(id)a5;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_addAllDrawablesFromInfo:(id)a3 toMutableArray:(id)a4;
- (void)p_unarchiveAndUpgrade:(id)a3 archive:(const void *)a4;
- (void)p_upgradePageSizeAndMarginsFromObsoleteSettings:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setBackgroundFill:(id)a3;
- (void)setInheritPreviousHeaderFooter:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setParentStorage:(id)a3;
- (void)setSectionHyperlinkUUID:(id)a3;
- (void)setSectionPageNumberKind:(unsigned int)a3;
- (void)setSectionPageNumberStart:(unsigned int)a3;
- (void)setSectionStartKind:(unsigned int)a3;
- (void)setSectionTemplateEvenOddPagesDifferent:(BOOL)a3;
- (void)setSectionTemplateFirstPageDifferent:(BOOL)a3;
- (void)setSectionTemplateFirstPageHidesHeaderFooter:(BOOL)a3;
- (void)setSectionTemplatePageForFirstPage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TPSection

- (void)setName:(id)a3
{
  v10 = a3;
  if (self->_name != v10)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
    objc_storeStrong(&self->_name, a3);
  }
}

- (void)setInheritPreviousHeaderFooter:(BOOL)a3
{
  if (self->_inheritPreviousHeaderFooter != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_inheritPreviousHeaderFooter = a3;
  }
}

- (void)setSectionTemplateFirstPageDifferent:(BOOL)a3
{
  if (self->_sectionTemplateFirstPageDifferent != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionTemplateFirstPageDifferent = a3;
  }
}

- (void)setSectionTemplateFirstPageHidesHeaderFooter:(BOOL)a3
{
  if (self->_sectionTemplateFirstPageHidesHeaderFooter != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionTemplateFirstPageHidesHeaderFooter = a3;
  }
}

- (void)setSectionTemplateEvenOddPagesDifferent:(BOOL)a3
{
  if (self->_sectionTemplateEvenOddPagesDifferent != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionTemplateEvenOddPagesDifferent = a3;
  }
}

- (void)setSectionStartKind:(unsigned int)a3
{
  if (self->_sectionStartKind != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionStartKind = a3;
  }
}

- (void)setSectionPageNumberKind:(unsigned int)a3
{
  if (self->_sectionPageNumberKind != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionPageNumberKind = a3;
  }
}

- (void)setSectionPageNumberStart:(unsigned int)a3
{
  if (self->_sectionPageNumberStart != a3)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionPageNumberStart = a3;
  }
}

- (TPSection)initWithContext:(id)a3 section:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_initWithContext_(self, v8, v9, v10, v11, v12, v6);
  v19 = v13;
  if (v7 && v13)
  {
    v20 = objc_msgSend_inheritPreviousHeaderFooter(v7, v14, v15, v16, v17, v18);
    objc_msgSend_setInheritPreviousHeaderFooter_(v19, v21, v22, v23, v24, v25, v20);
    PageDifferent = objc_msgSend_sectionTemplateFirstPageDifferent(v7, v26, v27, v28, v29, v30);
    objc_msgSend_setSectionTemplateFirstPageDifferent_(v19, v32, v33, v34, v35, v36, PageDifferent);
    PageHidesHeaderFooter = objc_msgSend_sectionTemplateFirstPageHidesHeaderFooter(v7, v37, v38, v39, v40, v41);
    objc_msgSend_setSectionTemplateFirstPageHidesHeaderFooter_(v19, v43, v44, v45, v46, v47, PageHidesHeaderFooter);
    v53 = objc_msgSend_sectionTemplateEvenOddPagesDifferent(v7, v48, v49, v50, v51, v52);
    objc_msgSend_setSectionTemplateEvenOddPagesDifferent_(v19, v54, v55, v56, v57, v58, v53);
    started = objc_msgSend_sectionStartKind(v7, v59, v60, v61, v62, v63);
    objc_msgSend_setSectionStartKind_(v19, v65, v66, v67, v68, v69, started);
    v75 = objc_msgSend_sectionPageNumberKind(v7, v70, v71, v72, v73, v74);
    objc_msgSend_setSectionPageNumberKind_(v19, v76, v77, v78, v79, v80, v75);
    v86 = objc_msgSend_sectionPageNumberStart(v7, v81, v82, v83, v84, v85);
    objc_msgSend_setSectionPageNumberStart_(v19, v87, v88, v89, v90, v91, v86);
    v97 = objc_msgSend_name(v7, v92, v93, v94, v95, v96);
    objc_msgSend_setName_(v19, v98, v99, v100, v101, v102, v97);

    v108 = objc_msgSend_backgroundFill(v7, v103, v104, v105, v106, v107);
    v114 = objc_msgSend_copy(v108, v109, v110, v111, v112, v113);
    objc_msgSend_setBackgroundFill_(v19, v115, v116, v117, v118, v119, v114);

    v125 = 0;
    sectionTemplatePages = v19->_sectionTemplatePages;
    do
    {
      v127 = objc_msgSend_copyWithContext_(*&v7[v125 * 8 + 64], v120, v121, v122, v123, v124, v6);
      v128 = sectionTemplatePages[v125];
      sectionTemplatePages[v125] = v127;

      objc_msgSend_setSection_(sectionTemplatePages[v125++], v129, v130, v131, v132, v133, v19);
    }

    while (v125 != 3);
  }

  return v19;
}

- (TPSection)initWithContext:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = TPSection;
  v5 = [(TPSection *)&v41 initWithContext:v4];
  v6 = [TPSectionTemplatePage alloc];
  v12 = objc_msgSend_initWithSection_(v6, v7, v8, v9, v10, v11, v5);
  v13 = v5->_sectionTemplatePages[0];
  v5->_sectionTemplatePages[0] = v12;

  v14 = [TPSectionTemplatePage alloc];
  v20 = objc_msgSend_initWithSection_(v14, v15, v16, v17, v18, v19, v5);
  v21 = v5->_sectionTemplatePages[1];
  v5->_sectionTemplatePages[1] = v20;

  v22 = [TPSectionTemplatePage alloc];
  v28 = objc_msgSend_initWithSection_(v22, v23, v24, v25, v26, v27, v5);
  v29 = v5->_sectionTemplatePages[2];
  v5->_sectionTemplatePages[2] = v28;

  objc_msgSend_i_clearPropertiesToDefaults(v5, v30, v31, v32, v33, v34);
  objc_msgSend_p_makeUserGuideStorage(v5, v35, v36, v37, v38, v39);

  return v5;
}

- (id)objectUUIDPath
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
  v9 = objc_msgSend_objectUUIDPath(WeakRetained, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_uuids(v9, v10, v11, v12, v13, v14);

  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v22 = objc_msgSend_count(v15, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_initWithCapacity_(v16, v23, v24, v25, v26, v27, v22 + 1);
  objc_msgSend_addObjectsFromArray_(v28, v29, v30, v31, v32, v33, v15);
  v39 = objc_msgSend_objectUUID(self, v34, v35, v36, v37, v38);
  objc_msgSend_addObject_(v28, v40, v41, v42, v43, v44, v39);

  v45 = objc_alloc(MEMORY[0x277D81360]);
  v51 = objc_msgSend_initWithArray_(v45, v46, v47, v48, v49, v50, v28);

  return v51;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  objc_msgSend_i_clearPropertiesToDefaults(self, v5, v6, v7, v8, v9);
  v10 = v4;
  google::protobuf::internal::AssignDescriptors();
  v16 = objc_msgSend_messageWithDescriptor_(v10, v11, v12, v13, v14, v15, off_2812F85B8[26]);

  v22 = *(v16 + 16);
  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = objc_msgSend_tsp_initWithProtobufString_(v23, v24, v25, v26, v27, v28, *(v16 + 96) & 0xFFFFFFFFFFFFFFFELL);
    name = self->_name;
    self->_name = v29;

    v22 = *(v16 + 16);
  }

  if ((v22 & 0x40) != 0)
  {
    v31 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(v16 + 144))
    {
      v37 = objc_msgSend_tsp_initWithMessage_(v31, v32, v33, v34, v35, v36, *(v16 + 144));
    }

    else
    {
      v37 = objc_msgSend_tsp_initWithMessage_(v31, v32, v33, v34, v35, v36, MEMORY[0x277D809E0]);
    }

    sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
    self->_sectionHyperlinkUUID = v37;
  }

  v40 = objc_msgSend_preUFFVersion(v10, v17, v18, v19, v20, v21);
  if (v40 < *MEMORY[0x277D810D8])
  {
    objc_msgSend_p_unarchiveAndUpgrade_archive_(self, v39, v41, v42, v43, v44, v10, v16);
    goto LABEL_36;
  }

  if ((*(v16 + 16) & 2) != 0)
  {
    v53 = *(v16 + 104);
    v191[0] = MEMORY[0x277D85DD0];
    v191[1] = 3221225472;
    v191[2] = sub_275FCE2CC;
    v191[3] = &unk_27A6A8490;
    v191[4] = self;
    v54 = v10;
    v55 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v54, v56, v57, v58, v59, v60, v53, v55, 0, v191);
  }

  else
  {
    v45 = [TPSectionTemplatePage alloc];
    v51 = objc_msgSend_initWithSection_(v45, v46, v47, v48, v49, v50, self);
    v52 = self->_sectionTemplatePages[0];
    self->_sectionTemplatePages[0] = v51;
  }

  if ((*(v16 + 16) & 4) != 0)
  {
    v69 = *(v16 + 112);
    v190[0] = MEMORY[0x277D85DD0];
    v190[1] = 3221225472;
    v190[2] = sub_275FCE350;
    v190[3] = &unk_27A6A8490;
    v190[4] = self;
    v70 = v10;
    v71 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v72, v73, v74, v75, v76, v69, v71, 0, v190);
  }

  else
  {
    v61 = [TPSectionTemplatePage alloc];
    v67 = objc_msgSend_initWithSection_(v61, v62, v63, v64, v65, v66, self);
    v68 = self->_sectionTemplatePages[1];
    self->_sectionTemplatePages[1] = v67;
  }

  if ((*(v16 + 16) & 8) != 0)
  {
    v90 = *(v16 + 120);
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = sub_275FCE3DC;
    v189[3] = &unk_27A6A8490;
    v189[4] = self;
    v91 = v10;
    v92 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v91, v93, v94, v95, v96, v97, v90, v92, 0, v189);
  }

  else
  {
    v77 = [TPSectionTemplatePage alloc];
    v83 = objc_msgSend_initWithSection_(v77, v78, v79, v80, v81, v82, self);
    v84 = self->_sectionTemplatePages[2];
    self->_sectionTemplatePages[2] = v83;
  }

  v98 = *(v16 + 16);
  if ((v98 & 0x4000) != 0)
  {
    self->_inheritPreviousHeaderFooter = *(v16 + 171);
    if ((v98 & 0x800000) == 0)
    {
LABEL_21:
      if ((v98 & 0x2000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else if ((v98 & 0x800000) == 0)
  {
    goto LABEL_21;
  }

  self->_sectionTemplateFirstPageDifferent = *(v16 + 204);
  if ((v98 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v98 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_sectionTemplateFirstPageHidesHeaderFooter = *(v16 + 206);
  if ((v98 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v98 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_sectionTemplateEvenOddPagesDifferent = *(v16 + 205);
  if ((v98 & 0x200000) == 0)
  {
LABEL_24:
    if ((v98 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_sectionStartKind = *(v16 + 196);
  v98 = *(v16 + 16);
  if ((v98 & 0x400000) == 0)
  {
LABEL_25:
    if ((v98 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_34:
    self->_sectionPageNumberStart = *(v16 + 208);
    if ((*(v16 + 16) & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_33:
  self->_sectionPageNumberKind = *(v16 + 200);
  v98 = *(v16 + 16);
  if ((v98 & 0x4000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_26:
  if ((v98 & 0x20) != 0)
  {
LABEL_35:
    v99 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v85, v86, v87, v88, v89, *(v16 + 136), v10);
    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v99;
  }

LABEL_36:
  if (v40 > 0x2CBDB02A3)
  {
    v102 = 0;
  }

  else
  {
    v102 = objc_opt_new();
    v107 = *(v16 + 16);
    if ((v107 & 0x20000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 180);
      v108 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v109, v110, v111, v112, v113, v108, @"obsolete_paper_width");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x40000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 184);
      v114 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v115, v116, v117, v118, v119, v114, @"obsolete_paper_height");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x80) != 0)
    {
      v103.n128_f64[0] = *(v16 + 152);
      v120 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v121, v122, v123, v124, v125, v120, @"obsolete_left_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x100) != 0)
    {
      v103.n128_f64[0] = *(v16 + 156);
      v126 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v127, v128, v129, v130, v131, v126, @"obsolete_right_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x200) != 0)
    {
      v103.n128_f64[0] = *(v16 + 160);
      v132 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v133, v134, v135, v136, v137, v132, @"obsolete_top_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x400) != 0)
    {
      v103.n128_f64[0] = *(v16 + 164);
      v138 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v139, v140, v141, v142, v143, v138, @"obsolete_bottom_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x80000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 188);
      v144 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v145, v146, v147, v148, v149, v144, @"obsolete_header_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x100000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 192);
      v150 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v151, v152, v153, v154, v155, v150, @"obsolete_footer_margin");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x800) != 0)
    {
      v156 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106, *(v16 + 168));
      objc_msgSend_setObject_forKeyedSubscript_(v102, v157, v158, v159, v160, v161, v156, @"obsolete_shows_header");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x1000) != 0)
    {
      v162 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106, *(v16 + 169));
      objc_msgSend_setObject_forKeyedSubscript_(v102, v163, v164, v165, v166, v167, v162, @"obsolete_shows_footer");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x8000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 172);
      v168 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v169, v170, v171, v172, v173, v168, @"obsolete_header_padding");

      v107 = *(v16 + 16);
    }

    if ((v107 & 0x10000) != 0)
    {
      v103.n128_f64[0] = *(v16 + 176);
      v174 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v101, v103, v104, v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v102, v175, v176, v177, v178, v179, v174, @"obsolete_footer_padding");
    }
  }

  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = sub_275FCE468;
  v186[3] = &unk_27A6A84B8;
  v188 = v40;
  v186[4] = self;
  v180 = v102;
  v187 = v180;
  objc_msgSend_addFinalizeHandler_(v10, v181, v182, v183, v184, v185, v186);
}

- (void)saveToArchiver:(id)a3
{
  v70 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v70, v4, v5, v6, v7, v8, sub_275FD1EDC, off_2812F85B8[26]);

  *(v9 + 171) = self->_inheritPreviousHeaderFooter;
  *(v9 + 204) = self->_sectionTemplateFirstPageDifferent;
  *(v9 + 206) = self->_sectionTemplateFirstPageHidesHeaderFooter;
  sectionTemplateEvenOddPagesDifferent = self->_sectionTemplateEvenOddPagesDifferent;
  v16 = *(v9 + 16);
  *(v9 + 16) = v16 | 0x3804000;
  *(v9 + 205) = sectionTemplateEvenOddPagesDifferent;
  sectionStartKind = self->_sectionStartKind;
  *(v9 + 16) = v16 | 0x3A04000;
  *(v9 + 196) = sectionStartKind;
  sectionPageNumberKind = self->_sectionPageNumberKind;
  *(v9 + 16) = v16 | 0x3E04000;
  *(v9 + 200) = sectionPageNumberKind;
  sectionPageNumberStart = self->_sectionPageNumberStart;
  *(v9 + 16) = v16 | 0x7E04000;
  *(v9 + 208) = sectionPageNumberStart;
  v20 = self->_sectionTemplatePages[0];
  if (v20)
  {
    *(v9 + 16) = v16 | 0x7E04002;
    v21 = *(v9 + 104);
    if (!v21)
    {
      v22 = *(v9 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C92D60](v22);
      *(v9 + 104) = v21;
    }

    objc_msgSend_setStrongReference_message_(v70, v10, v11, v12, v13, v14, v20, v21);
  }

  v23 = self->_sectionTemplatePages[1];
  if (v23)
  {
    *(v9 + 16) |= 4u;
    v24 = *(v9 + 112);
    if (!v24)
    {
      v25 = *(v9 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C92D60](v25);
      *(v9 + 112) = v24;
    }

    objc_msgSend_setStrongReference_message_(v70, v10, v11, v12, v13, v14, v23, v24);
  }

  v26 = self->_sectionTemplatePages[2];
  if (v26)
  {
    *(v9 + 16) |= 8u;
    v27 = *(v9 + 120);
    if (!v27)
    {
      v28 = *(v9 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C92D60](v28);
      *(v9 + 120) = v27;
    }

    objc_msgSend_setStrongReference_message_(v70, v10, v11, v12, v13, v14, v26, v27);
  }

  if (self->_backgroundFill)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v70, v10, v11, v12, v13, v14, 30, v9);
    backgroundFill = self->_backgroundFill;
    *(v9 + 16) |= 0x20u;
    v35 = *(v9 + 136);
    if (!v35)
    {
      v36 = *(v9 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C92CE0](v36);
      *(v9 + 136) = v35;
    }

    objc_msgSend_saveToArchive_archiver_(backgroundFill, v29, v30, v31, v32, v33, v35, v70);
    v42 = objc_msgSend_documentRoot(self, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_settings(v42, v43, v44, v45, v46, v47);
    hasBody = objc_msgSend_hasBody(v48, v49, v50, v51, v52, v53);

    v60 = MEMORY[0x277D80998];
    if (hasBody)
    {
      v60 = MEMORY[0x277D808C8];
    }

    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v70, v55, v56, v57, v58, v59, *MEMORY[0x277D808C0], *v60, @"TPPageBackgrounds");
  }

  sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
  if (sectionHyperlinkUUID)
  {
    *(v9 + 16) |= 0x40u;
    v62 = *(v9 + 144);
    if (!v62)
    {
      v63 = *(v9 + 8);
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      v62 = MEMORY[0x277C92D20](v63);
      *(v9 + 144) = v62;
    }

    objc_msgSend_tsp_saveToMessage_(sectionHyperlinkUUID, v10, v11, v12, v13, v14, v62);
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v70, v64, v65, v66, v67, v68, 31, v9);
  }

  v69 = objc_msgSend_UTF8String(self->_name, v10, v11, v12, v13, v14);
  sub_275FCE858(v9, v69);
}

- (BOOL)isHeaderFooterVisible:(int64_t)a3
{
  if (a3)
  {
    return 1;
  }

  v7 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v9 = sectionTemplatePages[v7];
    if (v9)
    {
      v10 = v9;
      isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v10, v11, v12, v13, v14, v15, 0);
      goto LABEL_7;
    }

    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPSection isHeaderFooterVisible:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 401, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
    v10 = sectionTemplatePages[v7];
    if (v10)
    {
      break;
    }

LABEL_8:

    if (++v7 == 3)
    {
      return 1;
    }
  }

  isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v10, v35, v36, v37, v38, v39, 0);
LABEL_7:
  if (isHeaderFooterEmpty)
  {
    goto LABEL_8;
  }

  return 0;
}

- (BOOL)isHeaderFooterEmpty:(int64_t)a3
{
  v8 = 0;
  v9 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v11 = sectionTemplatePages[v8];
    if (v11)
    {
      v12 = v11;
      isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v12, v13, v14, v15, v16, v17, a3);
      goto LABEL_6;
    }

    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPSection isHeaderFooterEmpty:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 417, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
    v12 = sectionTemplatePages[v8];
    if (v12)
    {
      break;
    }

LABEL_7:

    v9 = v8++ > 1;
    if (v8 == 3)
    {
      return 1;
    }
  }

  isHeaderFooterEmpty = objc_msgSend_isHeaderFooterEmpty_(v12, v37, v38, v39, v40, v41, a3);
LABEL_6:
  if (isHeaderFooterEmpty)
  {
    goto LABEL_7;
  }

  return v9;
}

- (void)setSectionHyperlinkUUID:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSection;
  [(TPSection *)&v12 willModify];
  v10 = objc_msgSend_copy(v4, v5, v6, v7, v8, v9);
  sectionHyperlinkUUID = self->_sectionHyperlinkUUID;
  self->_sectionHyperlinkUUID = v10;
}

- (NSString)localizedPrettyDisplayStringShort
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_settings(v7, v8, v9, v10, v11, v12);
  hasBody = objc_msgSend_hasBody(v13, v14, v15, v16, v17, v18);

  if (hasBody)
  {
    v25 = objc_msgSend_name(self, v20, v21, v22, v23, v24);
    if (objc_msgSend_length(v25, v26, v27, v28, v29, v30) && !objc_msgSend_isEqualToString_(@"Section", v31, v32, v33, v34, v35, v25))
    {
      if (v25)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v36 = objc_msgSend_bodyStorage(v7, v20, v21, v22, v23, v24);
  v42 = objc_msgSend_sectionIndexForSection_(v36, v37, v38, v39, v40, v41, self);

  if (v42 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "[TPSection localizedPrettyDisplayStringShort]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v56, v57, v58, v59, v60, v49, v55, 460, 0, "Could not find the section index of the current section from inside the body storage, falling back on section array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64, v65);
    v71 = objc_msgSend_sections(v7, v66, v67, v68, v69, v70);
    v42 = objc_msgSend_indexOfObject_(v71, v72, v73, v74, v75, v76, self);

    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "[TPSection localizedPrettyDisplayStringShort]");
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v84, v85, v86, v87, v88, v42, v83, 463, 0, "Could not find the section index at all.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92, v93);
      LODWORD(v42) = -1;
    }
  }

  v25 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, @"%d", (v42 + 1));
LABEL_9:

  return v25;
}

- (NSString)localizedPrettyDisplayStringLong
{
  v7 = objc_msgSend_name(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_settings(v13, v14, v15, v16, v17, v18);
  hasBody = objc_msgSend_hasBody(v19, v20, v21, v22, v23, v24);

  if (objc_msgSend_length(v7, v26, v27, v28, v29, v30))
  {
    isEqualToString = objc_msgSend_isEqualToString_(@"Section", v31, v32, v33, v34, v35, v7);
  }

  else
  {
    isEqualToString = 1;
  }

  if ((hasBody & isEqualToString) == 1)
  {
    v37 = objc_msgSend_bodyStorage(v13, v31, v32, v33, v34, v35);
    v43 = objc_msgSend_sectionIndexForSection_(v37, v38, v39, v40, v41, v42, self);

    v44 = MEMORY[0x277CCACA8];
    v45 = sub_275FFFC3C();
    v51 = objc_msgSend_localizedStringForKey_value_table_(v45, v46, v47, v48, v49, v50, @"Section %ld", &stru_288501738, @"Pages");
    v57 = objc_msgSend_localizedStringWithFormat_(v44, v52, v53, v54, v55, v56, v51, v43 + 1);
  }

  else
  {
    if (hasBody)
    {
      goto LABEL_9;
    }

    v58 = objc_msgSend_bodyStorage(v13, v31, v32, v33, v34, v35);
    v64 = objc_msgSend_sectionIndexForSection_(v58, v59, v60, v61, v62, v63, self);

    v65 = MEMORY[0x277CCACA8];
    v45 = sub_275FFFC3C();
    v51 = objc_msgSend_localizedStringForKey_value_table_(v45, v66, v67, v68, v69, v70, @"Page %ld", &stru_288501738, @"Pages");
    v57 = objc_msgSend_localizedStringWithFormat_(v65, v71, v72, v73, v74, v75, v51, v64 + 1);
  }

  v76 = v57;

  v7 = v76;
LABEL_9:

  return v7;
}

- (NSURL)url
{
  v7 = objc_msgSend_sectionHyperlinkUUID(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_UUIDString(v7, v8, v9, v10, v11, v12);

  if (!v13 || !objc_msgSend_length(v13, v14, v15, v16, v17, v18))
  {
    v19 = objc_msgSend_objectUUID(self, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_UUIDString(v19, v20, v21, v22, v23, v24);

    v13 = v25;
  }

  if (!objc_msgSend_length(v13, v14, v15, v16, v17, v18))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, "[TPSection url]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 503, 0, "Expecting to have a section hyperlink UUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
  }

  if (objc_msgSend_length(v13, v26, v27, v28, v29, v30))
  {
    v54 = objc_msgSend_stringByAppendingString_(*MEMORY[0x277D80FF0], v49, v50, v51, v52, v53, v13);
    v60 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v55, v56, v57, v58, v59, v54);
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithContext_section_(v5, v6, v7, v8, v9, v10, v4, self);

  return v11;
}

- (void)setSectionTemplatePageForFirstPage:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8, v9);
  v10 = self->_sectionTemplatePages[0];
  self->_sectionTemplatePages[0] = v4;
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

- (void)setParentStorage:(id)a3
{
  v30 = a3;
  objc_storeWeak(&self->_parentStorage, v30);
  v9 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v11 = sectionTemplatePages[v9];
    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPSection setParentStorage:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 654, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
      v11 = sectionTemplatePages[v9];
    }

    objc_msgSend_setParentStorage_(v11, v4, v5, v6, v7, v8, v30);
    ++v9;
  }

  while (v9 != 3);
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v33 = a3;
  v7 = a4;
  v12 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v14 = sectionTemplatePages[v12];
    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "[TPSection adoptStylesheet:withMapper:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 662, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
      v14 = sectionTemplatePages[v12];
    }

    objc_msgSend_adoptStylesheet_withMapper_(v14, v6, v8, v9, v10, v11, v33, v7);
    ++v12;
  }

  while (v12 != 3);
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v33 = a3;
  v7 = a4;
  v12 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v14 = sectionTemplatePages[v12];
    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "[TPSection willBeAddedToDocumentRoot:dolcContext:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 672, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
      v14 = sectionTemplatePages[v12];
    }

    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v14, v6, v8, v9, v10, v11, v33, v7);
    ++v12;
  }

  while (v12 != 3);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v44 = a3;
  v6 = a4;
  v12 = objc_msgSend_context(v44, v7, v8, v9, v10, v11);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v13, v14, v15, v16, v17, v12);

  v23 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v25 = sectionTemplatePages[v23];
    if (!v25)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPSection wasAddedToDocumentRoot:dolcContext:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 682, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
      v25 = sectionTemplatePages[v23];
    }

    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v25, v18, v19, v20, v21, v22, v44, v6);
    ++v23;
  }

  while (v23 != 3);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v36 = a3;
  v8 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v10 = sectionTemplatePages[v8];
    if (!v10)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v4, v5, v6, v7, "[TPSection willBeRemovedFromDocumentRoot:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v20, v21, v22, v23, v12, v18, 694, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
      v10 = sectionTemplatePages[v8];
    }

    objc_msgSend_willBeRemovedFromDocumentRoot_(v10, v3, v4, v5, v6, v7, v36);
    ++v8;
  }

  while (v8 != 3);
  v29 = objc_msgSend_context(v36, v3, v4, v5, v6, v7);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v30, v31, v32, v33, v34, v29);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v30 = a3;
  v9 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v11 = sectionTemplatePages[v9];
    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPSection wasRemovedFromDocumentRoot:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 704, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
      v11 = sectionTemplatePages[v9];
    }

    objc_msgSend_wasRemovedFromDocumentRoot_(v11, v4, v5, v6, v7, v8, v30);
    ++v9;
  }

  while (v9 != 3);
}

- (id)childEnumerator
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_aggregateEnumeratorWithObjects_(MEMORY[0x277D81148], a2, v2, v3, v4, v5, 0);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = objc_msgSend_sectionTemplatePages(self, v8, 0, v9, v10, v11, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v33, v37, 16);
  if (v19)
  {
    v24 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v12);
        }

        v27 = objc_msgSend_childEnumerator(*(*(&v33 + 1) + 8 * i), v18, v20, v21, v22, v23);
        if (v27)
        {
          objc_msgSend_addObject_(v7, v26, v28, v29, v30, v31, v27);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v33, v37, 16);
    }

    while (v19);
  }

  return v7;
}

- (void)acceptVisitor:(id)a3
{
  v9 = TSUProtocolCast();
  if (v9)
  {
    objc_msgSend_visitTPSection_(v9, v4, v5, v6, v7, v8, self, &unk_288546520);
  }
}

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  v11 = objc_msgSend_documentRoot(self, v6, v7, v8, v9, v10);
  objc_msgSend_pageSize(v11, v12, v13, v14, v15, v16);
  objc_msgSend_renderedImageSizeForObjectSize_(v5, v17, v18, v19, v20, v21);
  v23 = v22;
  v25 = v24;

  v26 = v23;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)a3
{
  v4 = a3;
  v10 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  v19 = v4;
  do
  {
    v12 = sectionTemplatePages[v10];
    v13 = objc_msgSend_headerAndFooterStyle(v4, v5, v6, v7, v8, v9);
    objc_msgSend_i_ensureHeaderFooterStoragesExistWithStylesheet_paragraphStyle_context_(v12, v14, v15, v16, v17, v18, v19, v13, 0);

    ++v10;
    v4 = v19;
  }

  while (v10 != 3);
}

- (void)i_copyHeadersAndFootersFrom:(id)a3 dolcContext:(id)a4 withBlock:(id)a5
{
  v28 = a3;
  v8 = a4;
  v10 = a5;
  for (i = 0; i != 3; ++i)
  {
    v16 = objc_msgSend_sectionTemplatePageForType_(self, v9, v11, v12, v13, v14, i);
    v22 = objc_msgSend_sectionTemplatePageForType_(v28, v17, v18, v19, v20, v21, i);
    objc_msgSend_i_copyHeadersAndFootersFrom_dolcContext_withBlock_(v16, v23, v24, v25, v26, v27, v22, v8, v10);
  }
}

- (void)setBackgroundFill:(id)a3
{
  v38 = a3;
  if (self->_backgroundFill != v38)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7, v8);
    objc_opt_class();
    v9 = TSUDynamicCast();
    v15 = v9;
    if (v9)
    {
      v16 = objc_msgSend_imageData(v9, v10, v11, v12, v13, v14);
      objc_msgSend_willRemoveReferenceToData_(self, v17, v18, v19, v20, v21, v16);
    }

    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11, v12, v13, v14);

    if (v22 == v38)
    {
      v23 = 0;
    }

    else
    {
      v23 = v38;
    }

    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v23;

    objc_opt_class();
    v25 = TSUDynamicCast();
    v31 = v25;
    if (v25)
    {
      v32 = objc_msgSend_imageData(v25, v26, v27, v28, v29, v30);
      objc_msgSend_didAddReferenceToData_(self, v33, v34, v35, v36, v37, v32);
    }
  }
}

- (void)i_clearPropertiesToDefaults
{
  objc_msgSend_setInheritPreviousHeaderFooter_(self, a2, v2, v3, v4, v5, 1);
  objc_msgSend_setSectionTemplateFirstPageDifferent_(self, v7, v8, v9, v10, v11, 0);
  objc_msgSend_setSectionTemplateFirstPageHidesHeaderFooter_(self, v12, v13, v14, v15, v16, 0);
  objc_msgSend_setSectionTemplateEvenOddPagesDifferent_(self, v17, v18, v19, v20, v21, 0);
  objc_msgSend_setSectionStartKind_(self, v22, v23, v24, v25, v26, 0);
  objc_msgSend_setSectionPageNumberKind_(self, v27, v28, v29, v30, v31, 0);
  objc_msgSend_setSectionPageNumberStart_(self, v32, v33, v34, v35, v36, 1);
  objc_msgSend_setName_(self, v37, v38, v39, v40, v41, @"Section");

  objc_msgSend_setBackgroundFill_(self, v42, v43, v44, v45, v46, 0);
}

- (void)p_unarchiveAndUpgrade:(id)a3 archive:(const void *)a4
{
  v6 = a3;
  objc_msgSend_willModifyForUpgrade(self, v7, v8, v9, v10, v11);
  objc_msgSend_i_clearPropertiesToDefaults(self, v12, v13, v14, v15, v16);
  v17 = [TPSectionTemplatePage alloc];
  v23 = objc_msgSend_initWithSection_(v17, v18, v19, v20, v21, v22, self);
  sectionTemplatePages = self->_sectionTemplatePages;
  v25 = self->_sectionTemplatePages[0];
  self->_sectionTemplatePages[0] = v23;

  v26 = [TPSectionTemplatePage alloc];
  v32 = objc_msgSend_initWithSection_(v26, v27, v28, v29, v30, v31, self);
  v33 = self->_sectionTemplatePages[1];
  self->_sectionTemplatePages[1] = v32;

  v34 = [TPSectionTemplatePage alloc];
  v40 = objc_msgSend_initWithSection_(v34, v35, v36, v37, v38, v39, self);
  v41 = self->_sectionTemplatePages[2];
  self->_sectionTemplatePages[2] = v40;

  for (i = 0; i != 3; ++i)
  {
    v48 = sectionTemplatePages[i];
    if (v48)
    {
      v49 = v48;
    }

    else
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "[TPSection p_unarchiveAndUpgrade:archive:]");
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v58, v59, v60, v61, v62, v51, v57, 905, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66, v67);
      v49 = sectionTemplatePages[i];
      if (!v49)
      {
        continue;
      }
    }

    if (i != 2)
    {
      goto LABEL_40;
    }

    if (*(a4 + 8) != 3)
    {
      goto LABEL_17;
    }

    v122 = 0;
    v123 = 0;
    v68 = 8;
    v124 = 0;
    do
    {
      v69 = v124;
      if (!v124)
      {
        goto LABEL_13;
      }

      v70 = v123;
      v71 = *v124;
      if (v123 < *v124)
      {
        LODWORD(v123) = v123 + 1;
        v72 = *&v124[2 * v70 + 2];
        goto LABEL_15;
      }

      if (v71 == HIDWORD(v123))
      {
LABEL_13:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v122);
        v69 = v124;
        v71 = *v124;
      }

      *v69 = v71 + 1;
      v72 = MEMORY[0x277C92D60](v122);
      v73 = &v124[2 * v123];
      LODWORD(v123) = v123 + 1;
      *(v73 + 1) = v72;
LABEL_15:
      TSP::Reference::CopyFrom(v72, *(*(a4 + 5) + v68));
      v68 += 8;
    }

    while (v68 != 32);
    v120[0] = MEMORY[0x277D85DD0];
    v120[1] = 3221225472;
    v120[2] = sub_275FD08A4;
    v120[3] = &unk_27A6A8508;
    v121 = v49;
    v74 = v6;
    v75 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v74, v76, v77, v78, v79, v80, &v122, v75, 0, v120);

    sub_275FB56E8(&v122);
LABEL_17:
    if (*(a4 + 14) != 3)
    {
      goto LABEL_28;
    }

    v122 = 0;
    v123 = 0;
    v81 = 8;
    v124 = 0;
    while (2)
    {
      v82 = v124;
      if (!v124)
      {
        goto LABEL_24;
      }

      v83 = v123;
      v84 = *v124;
      if (v123 < *v124)
      {
        LODWORD(v123) = v123 + 1;
        v85 = *&v124[2 * v83 + 2];
        goto LABEL_26;
      }

      if (v84 == HIDWORD(v123))
      {
LABEL_24:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v122);
        v82 = v124;
        v84 = *v124;
      }

      *v82 = v84 + 1;
      v85 = MEMORY[0x277C92D60](v122);
      v86 = &v124[2 * v123];
      LODWORD(v123) = v123 + 1;
      *(v86 + 1) = v85;
LABEL_26:
      TSP::Reference::CopyFrom(v85, *(*(a4 + 8) + v81));
      v81 += 8;
      if (v81 != 32)
      {
        continue;
      }

      break;
    }

    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_275FD0958;
    v118[3] = &unk_27A6A8508;
    v119 = v49;
    v87 = v6;
    v88 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v87, v89, v90, v91, v92, v93, &v122, v88, 0, v118);

    sub_275FB56E8(&v122);
LABEL_28:
    v94 = *(a4 + 20);
    if (v94)
    {
      v122 = 0;
      v123 = 0;
      v124 = 0;
      if (v94 >= 1)
      {
        v95 = 8;
        while (1)
        {
          v96 = v124;
          if (!v124)
          {
            goto LABEL_36;
          }

          v97 = v123;
          v98 = *v124;
          if (v123 >= *v124)
          {
            break;
          }

          LODWORD(v123) = v123 + 1;
          v99 = *&v124[2 * v97 + 2];
LABEL_38:
          TSP::Reference::CopyFrom(v99, *(*(a4 + 11) + v95));
          v95 += 8;
          if (!--v94)
          {
            goto LABEL_39;
          }
        }

        if (v98 == HIDWORD(v123))
        {
LABEL_36:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v122);
          v96 = v124;
          v98 = *v124;
        }

        *v96 = v98 + 1;
        v99 = MEMORY[0x277C92D60](v122);
        v100 = &v124[2 * v123];
        LODWORD(v123) = v123 + 1;
        *(v100 + 1) = v99;
        goto LABEL_38;
      }

LABEL_39:
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = sub_275FD0A0C;
      v116[3] = &unk_27A6A8508;
      v117 = v49;
      v101 = v6;
      v102 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v101, v103, v104, v105, v106, v107, &v122, v102, 0, v116);

      sub_275FB56E8(&v122);
    }

LABEL_40:
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_275FD0B28;
    v114[3] = &unk_27A6A8418;
    v114[4] = self;
    v108 = v49;
    v115 = v108;
    objc_msgSend_addFinalizeHandler_(v6, v109, v110, v111, v112, v113, v114);
  }
}

- (void)p_upgradePageSizeAndMarginsFromObsoleteSettings:(id)a3
{
  v259 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(v259, v4, v5, v6, v7, v8, @"obsolete_paper_width");

  if (v9)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(v259, v10, v11, v12, v13, v14, @"obsolete_paper_width");
    objc_msgSend_tsu_CGFloatValue(v15, v16, v17, v18, v19, v20);
    v22 = v21;
  }

  else
  {
    v22 = 0x4083200000000000;
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(v259, v10, v11, v12, v13, v14, @"obsolete_paper_height");

  if (v23)
  {
    v29 = objc_msgSend_objectForKeyedSubscript_(v259, v24, v25, v26, v27, v28, @"obsolete_paper_height");
    objc_msgSend_tsu_CGFloatValue(v29, v30, v31, v32, v33, v34);
    v36 = v35;
  }

  else
  {
    v36 = 0x4088C00000000000;
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(v259, v24, v25, v26, v27, v28, @"obsolete_left_margin");
  if (v38)
  {
    v43 = objc_msgSend_objectForKeyedSubscript_(v259, v37, v39, v40, v41, v42, @"obsolete_left_margin");
    objc_msgSend_tsu_CGFloatValue(v43, v44, v45, v46, v47, v48);
    v50 = v49;
  }

  else
  {
    v50 = 0x4052000000000000;
  }

  v57 = objc_msgSend_objectForKeyedSubscript_(v259, v51, v52, v53, v54, v55, @"obsolete_right_margin");
  if (v57)
  {
    v62 = objc_msgSend_objectForKeyedSubscript_(v259, v56, v58, v59, v60, v61, @"obsolete_right_margin");
    objc_msgSend_tsu_CGFloatValue(v62, v63, v64, v65, v66, v67);
    v69 = v68;
  }

  else
  {
    v69 = 0x4052000000000000;
  }

  v76 = objc_msgSend_objectForKeyedSubscript_(v259, v70, v71, v72, v73, v74, @"obsolete_top_margin");
  if (v76)
  {
    v81 = objc_msgSend_objectForKeyedSubscript_(v259, v75, v77, v78, v79, v80, @"obsolete_top_margin");
    objc_msgSend_tsu_CGFloatValue(v81, v82, v83, v84, v85, v86);
    v88 = v87;
  }

  else
  {
    v88 = 72.0;
  }

  v95 = objc_msgSend_objectForKeyedSubscript_(v259, v89, v90, v91, v92, v93, @"obsolete_bottom_margin");
  if (v95)
  {
    v100 = objc_msgSend_objectForKeyedSubscript_(v259, v94, v96, v97, v98, v99, @"obsolete_bottom_margin");
    objc_msgSend_tsu_CGFloatValue(v100, v101, v102, v103, v104, v105);
    v107 = v106;
  }

  else
  {
    v107 = 72.0;
  }

  v114 = objc_msgSend_objectForKeyedSubscript_(v259, v108, v109, v110, v111, v112, @"obsolete_header_margin");
  if (v114)
  {
    v119 = objc_msgSend_objectForKeyedSubscript_(v259, v113, v115, v116, v117, v118, @"obsolete_header_margin");
    objc_msgSend_tsu_CGFloatValue(v119, v120, v121, v122, v123, v124);
    v126 = v125;
  }

  else
  {
    v126 = 36.0;
  }

  v133 = objc_msgSend_objectForKeyedSubscript_(v259, v127, v128, v129, v130, v131, @"obsolete_footer_margin");
  if (v133)
  {
    v138 = objc_msgSend_objectForKeyedSubscript_(v259, v132, v134, v135, v136, v137, @"obsolete_footer_margin");
    objc_msgSend_tsu_CGFloatValue(v138, v139, v140, v141, v142, v143);
    v145 = v144;
  }

  else
  {
    v145 = 36.0;
  }

  v151 = objc_msgSend_objectForKeyedSubscript_(v259, v146, v147, v148, v149, v150, @"obsolete_header_margin");
  if (v151)
  {

    goto LABEL_48;
  }

  v162 = objc_msgSend_objectForKeyedSubscript_(v259, v152, v153, v154, v155, v156, @"obsolete_footer_margin");

  if (!v162)
  {
    if (!self->_sectionTemplatePages[2])
    {
      v163 = MEMORY[0x277D81150];
      v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, v158, v159, v160, v161, "[TPSection p_upgradePageSizeAndMarginsFromObsoleteSettings:]");
      v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v165, v166, v167, v168, v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v163, v171, v172, v173, v174, v175, v164, v170, 1027, 0, "Need odd page master to calculate header/footer heights");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v176, v177, v178, v179, v180);
    }

    v182 = objc_msgSend_objectForKeyedSubscript_(v259, v157, v158, v159, v160, v161, @"obsolete_shows_header");
    if (v182)
    {
      v187 = objc_msgSend_objectForKeyedSubscript_(v259, v181, v183, v184, v185, v186, @"obsolete_shows_header");
      v193 = objc_msgSend_BOOLValue(v187, v188, v189, v190, v191, v192);
    }

    else
    {
      v193 = 0;
    }

    v200 = objc_msgSend_objectForKeyedSubscript_(v259, v194, v195, v196, v197, v198, @"obsolete_shows_footer");
    if (v200)
    {
      v205 = objc_msgSend_objectForKeyedSubscript_(v259, v199, v201, v202, v203, v204, @"obsolete_shows_footer");
      v211 = objc_msgSend_BOOLValue(v205, v206, v207, v208, v209, v210);
    }

    else
    {
      v211 = 0;
    }

    v258 = v22;
    if (v193)
    {
      v257 = v107;
      v213 = objc_msgSend_objectForKeyedSubscript_(v259, v157, v158, v159, v160, v161, @"obsolete_header_padding");
      if (v213)
      {
        v218 = objc_msgSend_objectForKeyedSubscript_(v259, v212, v214, v215, v216, v217, @"obsolete_header_padding");
        objc_msgSend_tsu_CGFloatValue(v218, v219, v220, v221, v222, v223);
        v225 = v224;
      }

      else
      {
        v225 = 9.0;
      }

      objc_msgSend_headerHeight(self->_sectionTemplatePages[2], v227, v228, v229, v230, v231);
      v158.n128_f64[0] = v88 + v158.n128_f64[0];
      v226 = v225 + v158.n128_f64[0];
      v126 = v88;
      v107 = v257;
      if (!v211)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v226 = v88;
      if (!v211)
      {
LABEL_47:
        v88 = v226;
        v22 = v258;
        goto LABEL_48;
      }
    }

    v233 = objc_msgSend_objectForKeyedSubscript_(v259, v157, v158, v159, v160, v161, @"obsolete_footer_padding");
    if (v233)
    {
      v238 = objc_msgSend_objectForKeyedSubscript_(v259, v232, v234, v235, v236, v237, @"obsolete_footer_padding");
      objc_msgSend_tsu_CGFloatValue(v238, v239, v240, v241, v242, v243);
      v245 = v244;
    }

    else
    {
      v245 = 9.0;
    }

    objc_msgSend_footerHeight(self->_sectionTemplatePages[2], v246, v247, v248, v249, v250);
    v158.n128_f64[0] = v107 + v158.n128_f64[0];
    v145 = v107;
    v107 = v245 + v158.n128_f64[0];
    goto LABEL_47;
  }

LABEL_48:
  v251 = objc_msgSend_documentRoot(self, v157, v158, v159, v160, v161);
  v252.n128_u64[0] = v22;
  v253.n128_u64[0] = v36;
  v254.n128_u64[0] = v50;
  v255.n128_u64[0] = v69;
  objc_msgSend_upgradeFromOldSectionWithPageSize_leftMargin_rightMargin_topMargin_bottomMargin_headerMargin_footerMargin_(v251, v256, v252, v253, v254, v255, v88, v107, v126, v145);
}

- (NSArray)sectionTemplatePages
{
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v13 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v15 = sectionTemplatePages[v13];
    if (v15)
    {
      v16 = v15;
      objc_msgSend_addObject_(v8, v17, v18, v19, v20, v21, v16);
    }

    else
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPSection sectionTemplatePages]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v31, v32, v33, v34, v23, v29, 1073, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38, v39);
      v16 = sectionTemplatePages[v13];
      if (v16)
      {
        objc_msgSend_addObject_(v8, v40, v41, v42, v43, v44, v16);
      }
    }

    ++v13;
  }

  while (v13 != 3);

  return v8;
}

- (id)sectionTemplatePageOwningModel:(id)a3
{
  v5 = a3;
  v10 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v12 = sectionTemplatePages[v10];
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, v9, "[TPSection sectionTemplatePageOwningModel:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 1092, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
      v12 = sectionTemplatePages[v10];
    }

    if (objc_msgSend_containsModelObject_(v12, v4, v6, v7, v8, v9, v5))
    {
      break;
    }

    if (++v10 == 3)
    {
      v31 = 0;
      goto LABEL_8;
    }
  }

  v31 = sectionTemplatePages[v10];
LABEL_8:

  return v31;
}

- (id)sectionTemplatePageOwningInfo:(id)a3
{
  v5 = a3;
  v10 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  while (1)
  {
    v12 = sectionTemplatePages[v10];
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, v9, "[TPSection sectionTemplatePageOwningInfo:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 1107, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
      v12 = sectionTemplatePages[v10];
    }

    if (objc_msgSend_containsInfo_(v12, v4, v6, v7, v8, v9, v5))
    {
      break;
    }

    if (++v10 == 3)
    {
      v31 = 0;
      goto LABEL_8;
    }
  }

  v31 = sectionTemplatePages[v10];
LABEL_8:

  return v31;
}

- (void)p_addAllDrawablesFromInfo:(id)a3 toMutableArray:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29 = &unk_288510940;
  v8 = TSUProtocolCast();
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    objc_msgSend_addObject_(v7, v9, v11, v12, v13, v14, v10, &unk_288510940);
  }

  if (v8)
  {
    objc_msgSend_childInfos(v8, v9, v11, v12, v13, v14);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v15 = v31 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, v20, &v30, v34, 16);
    if (v22)
    {
      v27 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v15);
          }

          objc_msgSend_p_addAllDrawablesFromInfo_toMutableArray_(self, v21, v23, v24, v25, v26, *(*(&v30 + 1) + 8 * i), v7, v29);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, v23, v24, v25, v26, &v30, v34, 16);
      }

      while (v22);
    }
  }
}

- (id)allDrawables
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v13 = 0;
  sectionTemplatePages = self->_sectionTemplatePages;
  do
  {
    v14 = sectionTemplatePages[v13];
    if (v14)
    {
      v15 = v14;
      objc_msgSend_sectionTemplateDrawables(v15, v16, v17, v18, v19, v20);
    }

    else
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPSection allDrawables]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v29, v30, v31, v32, v33, v22, v28, 1191, 0, "invalid nil value for '%{public}s'", "_sectionTemplatePages[type]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37, v38);
      v15 = sectionTemplatePages[v13];
      if (!v15)
      {
        goto LABEL_25;
      }

      objc_msgSend_sectionTemplateDrawables(v15, v7, v9, v10, v11, v12);
    }
    v91 = ;
    if (objc_msgSend_count(v91, v39, v40, v41, v42, v43))
    {
      v49 = objc_msgSend_array(MEMORY[0x277CBEB18], v44, v45, v46, v47, v48);
      objc_msgSend_addObjectsFromArray_(v49, v50, v51, v52, v53, v54, v91);
    }

    else
    {
      v49 = 0;
    }

    v55 = 1;
    do
    {
      v56 = v55;
      v57 = 3;
      do
      {
        v58 = objc_msgSend_headerFooter_fragmentAtIndex_(v15, v44, v45, v46, v47, v48, 0, 0);
        v64 = objc_msgSend_childInfos(v58, v59, v60, v61, v62, v63);

        if (objc_msgSend_count(v64, v65, v66, v67, v68, v69))
        {
          if (!v49)
          {
            v49 = objc_msgSend_array(MEMORY[0x277CBEB18], v70, v71, v72, v73, v74);
          }

          objc_msgSend_addObjectsFromArray_(v49, v70, v71, v72, v73, v74, v64);
        }

        --v57;
      }

      while (v57);
      v55 = 0;
    }

    while ((v56 & 1) != 0);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v75 = v49;
    v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, v77, v78, v79, v80, &v92, v96, 16);
    if (v82)
    {
      v87 = *v93;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v93 != v87)
          {
            objc_enumerationMutation(v75);
          }

          objc_msgSend_p_addAllDrawablesFromInfo_toMutableArray_(self, v81, v83, v84, v85, v86, *(*(&v92 + 1) + 8 * i), v8);
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v81, v83, v84, v85, v86, &v92, v96, 16);
      }

      while (v82);
    }

LABEL_25:
    ++v13;
  }

  while (v13 != 3);

  return v8;
}

- (TPPageTemplate)pageTemplate
{
  v7 = objc_msgSend_sectionTemplatePageForType_(self, a2, v2, v3, v4, v5, 0);
  v13 = objc_msgSend_pageTemplateUUIDPath(v7, v8, v9, v10, v11, v12);

  if (v13)
  {
    objc_opt_class();
    v19 = objc_msgSend_documentRoot(self, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_context(v19, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_objectWithUUIDPath_(v25, v26, v27, v28, v29, v30, v13);
    v32 = TSUDynamicCast();

    if (v32)
    {
      goto LABEL_5;
    }

    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "[TPSection(Propagation) pageTemplate]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v46, v47, v48, v49, v50, v39, v45, 32, 0, "invalid nil value for '%{public}s'", "pageTemplate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54, v55);
  }

  v32 = 0;
LABEL_5:

  return v32;
}

- (NSArray)pageInfosForPropagation
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v8, v9, v10, v11, v12, v7);
  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16, v17, v18);
  v25 = objc_msgSend_bodyStorage(v7, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_sectionIndexForSection_(v25, v26, v27, v28, v29, v30, self);

  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "[TPSection(Propagation) pageInfosForPropagation]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v45, v46, v47, v48, v49, v38, v44, 43, 0, "Unable to find this TPSection object in the body storage");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70, v71);
    goto LABEL_6;
  }

  v50 = objc_msgSend_documentPageRangeOfSectionIndex_forcePagination_(v13, v32, v33, v34, v35, v36, v31, 1);
  if (v50 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v56 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v55, "[TPSection(Propagation) pageInfosForPropagation]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSection+Propagation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v63, v64, v65, v66, v38, v44, 46, 0, "The page controller has no pages for this section");
    goto LABEL_5;
  }

  v73 = v50;
  v74 = v51;
  if (v50 < &v51[v50])
  {
    do
    {
      v75 = [TPPaginatedPageInfo alloc];
      v81 = objc_msgSend_initWithPageIndex_documentRoot_layoutInfoProvider_(v75, v76, v77, v78, v79, v80, v73, v7, v13);
      objc_msgSend_addObject_(v19, v82, v83, v84, v85, v86, v81);

      ++v73;
      --v74;
    }

    while (v74);
  }

LABEL_6:

  return v19;
}

@end