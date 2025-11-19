@interface TSCHPropertyValueStorageContainer
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setCategoryAxisNonStyles:(id)a3;
- (void)setCategoryAxisStyles:(id)a3;
- (void)setParagraphStyles:(id)a3;
- (void)setReferenceLineNonStyles:(id)a3;
- (void)setReferenceLineStyles:(id)a3;
- (void)setSeriesNonStyles:(id)a3;
- (void)setSeriesPrivateStyles:(id)a3;
- (void)setSeriesThemeStyles:(id)a3;
- (void)setValueAxisNonStyles:(id)a3;
- (void)setValueAxisStyles:(id)a3;
@end

@implementation TSCHPropertyValueStorageContainer

- (void)setValueAxisStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  valueAxisStyles = self->_valueAxisStyles;
  self->_valueAxisStyles = v8;
}

- (void)setValueAxisNonStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  valueAxisNonStyles = self->_valueAxisNonStyles;
  self->_valueAxisNonStyles = v8;
}

- (void)setCategoryAxisStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  categoryAxisStyles = self->_categoryAxisStyles;
  self->_categoryAxisStyles = v8;
}

- (void)setCategoryAxisNonStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  categoryAxisNonStyles = self->_categoryAxisNonStyles;
  self->_categoryAxisNonStyles = v8;
}

- (void)setSeriesThemeStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  seriesThemeStyles = self->_seriesThemeStyles;
  self->_seriesThemeStyles = v8;
}

- (void)setSeriesPrivateStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  seriesPrivateStyles = self->_seriesPrivateStyles;
  self->_seriesPrivateStyles = v8;
}

- (void)setSeriesNonStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  seriesNonStyles = self->_seriesNonStyles;
  self->_seriesNonStyles = v8;
}

- (void)setParagraphStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  paragraphStyles = self->_paragraphStyles;
  self->_paragraphStyles = v8;
}

- (void)setReferenceLineStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  referenceLineStyles = self->_referenceLineStyles;
  self->_referenceLineStyles = v8;
}

- (void)setReferenceLineNonStyles:(id)a3
{
  v10 = a3;
  v8 = objc_msgSend_mutableCopy(v10, v4, v5, v6, v7);
  referenceLineNonStyles = self->_referenceLineNonStyles;
  self->_referenceLineNonStyles = v8;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v8 = v7;
  v9 = *(a3 + 10);
  if (v9)
  {
    v10 = *(a3 + 6);
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = sub_276374760;
    v164[3] = &unk_27A6B7480;
    v164[4] = self;
    v4 = v7;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v4, v12, v13, v14, v15, v10, v11, 0, v164);

    v9 = *(a3 + 10);
  }

  if ((v9 & 2) != 0)
  {
    v16 = *(a3 + 7);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_27637476C;
    v163[3] = &unk_27A6B74F8;
    v163[4] = self;
    v4 = v8;
    v17 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v4, v18, v19, v20, v21, v16, v17, 0, v163);

    v9 = *(a3 + 10);
  }

  if ((v9 & 4) != 0)
  {
    v22 = *(a3 + 8);
    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_276374778;
    v162[3] = &unk_27A6B74A8;
    v162[4] = self;
    v4 = v8;
    v23 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v4, v24, v25, v26, v27, v22, v23, 0, v162);

    v9 = *(a3 + 10);
  }

  if ((v9 & 8) != 0)
  {
    v28 = *(a3 + 9);
    v161[0] = MEMORY[0x277D85DD0];
    v161[1] = 3221225472;
    v161[2] = sub_276374784;
    v161[3] = &unk_27A6B74D0;
    v161[4] = self;
    v4 = v8;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v4, v30, v31, v32, v33, v28, v29, 0, v161);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x10) != 0)
  {
    v34 = *(a3 + 10);
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = sub_276374790;
    v160[3] = &unk_27A6B7520;
    v160[4] = self;
    v4 = v8;
    v35 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v36, v37, v38, v39, v34, v35, 0, v160);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x20) != 0)
  {
    v40 = *(a3 + 11);
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = sub_27637479C;
    v159[3] = &unk_27A6B7520;
    v159[4] = self;
    v4 = v8;
    v41 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v42, v43, v44, v45, v40, v41, 0, v159);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x40) != 0)
  {
    v46 = *(a3 + 12);
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_2763747A8;
    v158[3] = &unk_27A6B7520;
    v158[4] = self;
    v4 = v8;
    v47 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v48, v49, v50, v51, v46, v47, 0, v158);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x80) != 0)
  {
    v52 = *(a3 + 13);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_2763747B4;
    v157[3] = &unk_27A6B7520;
    v157[4] = self;
    v4 = v8;
    v53 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v54, v55, v56, v57, v52, v53, 0, v157);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x100) != 0)
  {
    v58 = *(a3 + 14);
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = sub_2763747C0;
    v156[3] = &unk_27A6B7520;
    v156[4] = self;
    v4 = v8;
    v59 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v60, v61, v62, v63, v58, v59, 0, v156);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x200) != 0)
  {
    v64 = *(a3 + 15);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_2763747CC;
    v155[3] = &unk_27A6B7520;
    v155[4] = self;
    v4 = v8;
    v65 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v66, v67, v68, v69, v64, v65, 0, v155);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x400) != 0)
  {
    v70 = *(a3 + 16);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_2763747D8;
    v154[3] = &unk_27A6B7520;
    v154[4] = self;
    v4 = v8;
    v71 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v72, v73, v74, v75, v70, v71, 0, v154);

    v9 = *(a3 + 10);
  }

  if ((v9 & 0x800) != 0)
  {
    v76 = *(a3 + 17);
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_2763747E4;
    v153[3] = &unk_27A6B7520;
    v153[4] = self;
    v4 = v8;
    v77 = objc_opt_class();
    objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v4, v78, v79, v80, v81, v76, v77, 0, v153);
  }

  if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v148 = Message;
    v149 = self;
    v147 = *(Message + 32);
    if (v147 >= 1)
    {
      for (i = 0; i != v147; ++i)
      {
        v84 = *(*(Message + 40) + 8 * i + 8);
        v85 = [TSCHChartAxisID alloc];
        if (*(v84 + 48))
        {
          v90 = objc_msgSend_initWithArchive_(v85, v86, v87, v88, v89, *(v84 + 48));
        }

        else
        {
          v90 = objc_msgSend_initWithArchive_(v85, v86, v87, v88, v89, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        v95 = v90;
        v96 = *(v84 + 32);
        v98 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v91, v92, v93, v94, v96);
        if (v96 >= 1)
        {
          v102 = 8;
          do
          {
            v103 = *(*(v84 + 40) + v102);
            v104 = [TSCHReferenceLineNonStyleItem alloc];
            v109 = objc_msgSend_initFromUnarchiver_message_(v104, v105, v106, v107, v108, v8, v103);
            objc_msgSend_addObject_(v98, v110, v111, v112, v113, v109);

            v102 += 8;
            --v96;
          }

          while (v96);
        }

        referenceLineNonStyles = v149->_referenceLineNonStyles;
        v115 = referenceLineNonStyles;
        if (!referenceLineNonStyles)
        {
          v115 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v4 = v115;
        }

        v116 = objc_msgSend_mutableCopy(v115, v97, v99, v100, v101);
        v117 = v149->_referenceLineNonStyles;
        v149->_referenceLineNonStyles = v116;

        if (!referenceLineNonStyles)
        {
        }

        objc_msgSend_setObject_forKey_(v149->_referenceLineNonStyles, v118, v119, v120, v121, v98, v95);

        Message = v148;
      }
    }

    v122 = *(Message + 56);
    if (v122 >= 1)
    {
      v123 = 8;
      v124 = MEMORY[0x277D80A68];
      do
      {
        v125 = *(*(Message + 64) + v123);
        v126 = [TSCHChartAxisID alloc];
        if (*(v125 + 24))
        {
          v131 = objc_msgSend_initWithArchive_(v126, v127, v128, v129, v130, *(v125 + 24));
        }

        else
        {
          v131 = objc_msgSend_initWithArchive_(v126, v127, v128, v129, v130, &TSCH::_ChartAxisIDArchive_default_instance_);
        }

        v132 = *(v125 + 32);
        v151[0] = MEMORY[0x277D85DD0];
        v151[1] = 3221225472;
        v151[2] = sub_2763747F0;
        v151[3] = &unk_27A6BA0B8;
        v151[4] = v149;
        v133 = v131;
        v152 = v133;
        v134 = v8;
        v136 = objc_opt_class();
        if (v132)
        {
          objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v134, v135, v137, v138, v139, v132, v136, 0, v151);
        }

        else
        {
          objc_msgSend_readSparseReferenceArrayMessage_class_protocol_completion_(v134, v135, v137, v138, v139, v124, v136, 0, v151);
        }

        v123 += 8;
        --v122;
        Message = v148;
      }

      while (v122);
    }

    if (*(Message + 16))
    {
      v140 = *(Message + 72);
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = sub_276374894;
      v150[3] = &unk_27A6BA0E0;
      v150[4] = v149;
      v141 = v8;
      v142 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v141, v143, v144, v145, v146, v140, v142, 0, v150);
    }
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v195 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  v173 = TSUCheckedDynamicCast();
  if (v173)
  {
    *(a3 + 10) |= 1u;
    v11 = *(a3 + 6);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C97B90](v12);
      *(a3 + 6) = v11;
    }

    objc_msgSend_setStrongReference_message_(v6, v7, v8, v9, v10, v173, v11);
  }

  objc_opt_class();
  v174 = TSUCheckedDynamicCast();
  if (v174)
  {
    *(a3 + 10) |= 2u;
    v17 = *(a3 + 7);
    if (!v17)
    {
      v18 = *(a3 + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97B90](v18);
      *(a3 + 7) = v17;
    }

    objc_msgSend_setStrongReference_message_(v6, v13, v14, v15, v16, v174, v17);
  }

  objc_opt_class();
  v175 = TSUCheckedDynamicCast();
  if (v175)
  {
    *(a3 + 10) |= 4u;
    v23 = *(a3 + 8);
    if (!v23)
    {
      v24 = *(a3 + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C97B90](v24);
      *(a3 + 8) = v23;
    }

    objc_msgSend_setStrongReference_message_(v6, v19, v20, v21, v22, v175, v23);
  }

  objc_opt_class();
  v176 = TSUCheckedDynamicCast();
  if (v176)
  {
    *(a3 + 10) |= 8u;
    v29 = *(a3 + 9);
    if (!v29)
    {
      v30 = *(a3 + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C97B90](v30);
      *(a3 + 9) = v29;
    }

    objc_msgSend_setStrongReference_message_(v6, v25, v26, v27, v28, v176, v29);
  }

  valueAxisStyles = self->_valueAxisStyles;
  *(a3 + 10) |= 0x10u;
  v32 = *(a3 + 10);
  if (!v32)
  {
    v33 = *(a3 + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x277C97B20](v33);
    *(a3 + 10) = v32;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v25, v26, v27, v28, valueAxisStyles, v32);
  valueAxisNonStyles = self->_valueAxisNonStyles;
  *(a3 + 10) |= 0x20u;
  v39 = *(a3 + 11);
  if (!v39)
  {
    v40 = *(a3 + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97B20](v40);
    *(a3 + 11) = v39;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v34, v35, v36, v37, valueAxisNonStyles, v39);
  categoryAxisStyles = self->_categoryAxisStyles;
  *(a3 + 10) |= 0x40u;
  v46 = *(a3 + 12);
  if (!v46)
  {
    v47 = *(a3 + 1);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x277C97B20](v47);
    *(a3 + 12) = v46;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v41, v42, v43, v44, categoryAxisStyles, v46);
  categoryAxisNonStyles = self->_categoryAxisNonStyles;
  *(a3 + 10) |= 0x80u;
  v53 = *(a3 + 13);
  if (!v53)
  {
    v54 = *(a3 + 1);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    v53 = MEMORY[0x277C97B20](v54);
    *(a3 + 13) = v53;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v48, v49, v50, v51, categoryAxisNonStyles, v53);
  seriesThemeStyles = self->_seriesThemeStyles;
  *(a3 + 10) |= 0x100u;
  v60 = *(a3 + 14);
  if (!v60)
  {
    v61 = *(a3 + 1);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C97B20](v61);
    *(a3 + 14) = v60;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v55, v56, v57, v58, seriesThemeStyles, v60);
  seriesPrivateStyles = self->_seriesPrivateStyles;
  *(a3 + 10) |= 0x200u;
  v67 = *(a3 + 15);
  if (!v67)
  {
    v68 = *(a3 + 1);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x277C97B20](v68);
    *(a3 + 15) = v67;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v62, v63, v64, v65, seriesPrivateStyles, v67);
  seriesNonStyles = self->_seriesNonStyles;
  *(a3 + 10) |= 0x400u;
  v74 = *(a3 + 16);
  if (!v74)
  {
    v75 = *(a3 + 1);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x277C97B20](v75);
    *(a3 + 16) = v74;
  }

  objc_msgSend_setSparseReferenceArray_message_(v6, v69, v70, v71, v72, seriesNonStyles, v74);
  paragraphStyles = self->_paragraphStyles;
  *(a3 + 10) |= 0x800u;
  v81 = *(a3 + 17);
  if (!v81)
  {
    v82 = *(a3 + 1);
    if (v82)
    {
      v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
    }

    v81 = MEMORY[0x277C97B20](v82);
    *(a3 + 17) = v81;
  }

  v83 = objc_msgSend_setSparseReferenceArray_message_(v6, v76, v77, v78, v79, paragraphStyles, v81);
  if (self->_referenceLineNonStyles || self->_referenceLineStyles || self->_referenceLineThemeStyle)
  {
    TSCH::PropertyValueStorageContainerReferenceLinesArchive::default_instance(v83);
    v84 = google::protobuf::internal::ExtensionSet::MutableMessage();
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    obj = self->_referenceLineNonStyles;
    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, v86, v87, v88, &v188, v194, 16);
    if (v90)
    {
      v178 = *v189;
      do
      {
        v94 = 0;
        v179 = v90;
        do
        {
          if (*v189 != v178)
          {
            objc_enumerationMutation(obj);
          }

          v95 = *(*(&v188 + 1) + 8 * v94);
          v96 = *(v84 + 40);
          if (!v96)
          {
            goto LABEL_70;
          }

          v97 = *(v84 + 32);
          v98 = *v96;
          if (v97 < *v96)
          {
            *(v84 + 32) = v97 + 1;
            v99 = *&v96[2 * v97 + 2];
            goto LABEL_72;
          }

          if (v98 == *(v84 + 36))
          {
LABEL_70:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v84 + 24));
            v96 = *(v84 + 40);
            v98 = *v96;
          }

          *v96 = v98 + 1;
          v99 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineSparseNonStylesArchive>(*(v84 + 24));
          v100 = *(v84 + 32);
          v101 = *(v84 + 40) + 8 * v100;
          *(v84 + 32) = v100 + 1;
          *(v101 + 8) = v99;
LABEL_72:
          *(v99 + 16) |= 1u;
          v102 = *(v99 + 48);
          if (!v102)
          {
            v103 = *(v99 + 8);
            if (v103)
            {
              v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
            }

            v102 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v103);
            *(v99 + 48) = v102;
          }

          objc_msgSend_saveToArchive_(v95, v89, v91, v92, v93, v102);
          objc_opt_class();
          v108 = objc_msgSend_objectForKeyedSubscript_(self->_referenceLineNonStyles, v104, v105, v106, v107, v95);
          v109 = TSUCheckedDynamicCast();

          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v110 = v109;
          v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v111, v112, v113, v114, &v184, v193, 16);
          v120 = self;
          if (v116)
          {
            v121 = *v185;
            do
            {
              for (i = 0; i != v116; ++i)
              {
                if (*v185 != v121)
                {
                  objc_enumerationMutation(v110);
                }

                v123 = *(*(&v184 + 1) + 8 * i);
                v124 = *(v99 + 40);
                if (!v124)
                {
                  goto LABEL_86;
                }

                v125 = *(v99 + 32);
                v126 = *v124;
                if (v125 < *v124)
                {
                  *(v99 + 32) = v125 + 1;
                  objc_msgSend_saveToArchiver_message_(v123, v115, v117, v118, v119, v6, *&v124[2 * v125 + 2]);
                  continue;
                }

                if (v126 == *(v99 + 36))
                {
LABEL_86:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v99 + 24));
                  v124 = *(v99 + 40);
                  v126 = *v124;
                }

                *v124 = v126 + 1;
                v127 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartReferenceLineNonStyleItem>(*(v99 + 24));
                v128 = *(v99 + 32);
                v129 = *(v99 + 40) + 8 * v128;
                *(v99 + 32) = v128 + 1;
                *(v129 + 8) = v127;
                objc_msgSend_saveToArchiver_message_(v123, v130, v131, v132, v133, v6, v127);
              }

              v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v115, v117, v118, v119, &v184, v193, 16);
            }

            while (v116);
          }

          self = v120;
          ++v94;
        }

        while (v94 != v179);
        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, v91, v92, v93, &v188, v194, 16);
      }

      while (v90);
    }

    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v134 = self->_referenceLineStyles;
    v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, v136, v137, v138, &v180, v192, 16);
    if (!v140)
    {
      goto LABEL_114;
    }

    v144 = *v181;
LABEL_94:
    v145 = 0;
    while (1)
    {
      if (*v181 != v144)
      {
        objc_enumerationMutation(v134);
      }

      v146 = *(*(&v180 + 1) + 8 * v145);
      v147 = *(v84 + 64);
      if (!v147)
      {
        goto LABEL_102;
      }

      v148 = *(v84 + 56);
      v149 = *v147;
      if (v148 >= *v147)
      {
        break;
      }

      *(v84 + 56) = v148 + 1;
      v150 = *&v147[2 * v148 + 2];
LABEL_104:
      *(v150 + 16) |= 1u;
      v153 = *(v150 + 24);
      if (!v153)
      {
        v154 = *(v150 + 8);
        if (v154)
        {
          v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
        }

        v153 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v154);
        *(v150 + 24) = v153;
      }

      objc_msgSend_saveToArchive_(v146, v139, v141, v142, v143, v153);
      v160 = objc_msgSend_objectForKey_(self->_referenceLineStyles, v155, v156, v157, v158, v146);
      *(v150 + 16) |= 2u;
      v164 = *(v150 + 32);
      if (!v164)
      {
        v165 = *(v150 + 8);
        if (v165)
        {
          v165 = *(v165 & 0xFFFFFFFFFFFFFFFELL);
        }

        v164 = MEMORY[0x277C97B20](v165);
        *(v150 + 32) = v164;
      }

      objc_msgSend_setSparseReferenceArray_message_(v6, v159, v161, v162, v163, v160, v164);

      if (v140 == ++v145)
      {
        v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v139, v141, v142, v143, &v180, v192, 16);
        if (!v140)
        {
LABEL_114:

          objc_opt_class();
          v167 = TSUCheckedDynamicCast();
          if (v167)
          {
            *(v84 + 16) |= 1u;
            v171 = *(v84 + 72);
            if (!v171)
            {
              v172 = *(v84 + 8);
              if (v172)
              {
                v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
              }

              v171 = MEMORY[0x277C97B90](v172);
              *(v84 + 72) = v171;
            }

            objc_msgSend_setStrongReference_message_(v6, v166, v168, v169, v170, v167, v171);
          }

          goto LABEL_121;
        }

        goto LABEL_94;
      }
    }

    if (v149 == *(v84 + 60))
    {
LABEL_102:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v84 + 48));
      v147 = *(v84 + 64);
      v149 = *v147;
    }

    *v147 = v149 + 1;
    v150 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineStylesArchive>(*(v84 + 48));
    v151 = *(v84 + 56);
    v152 = *(v84 + 64) + 8 * v151;
    *(v84 + 56) = v151 + 1;
    *(v152 + 8) = v150;
    goto LABEL_104;
  }

LABEL_121:
}

@end