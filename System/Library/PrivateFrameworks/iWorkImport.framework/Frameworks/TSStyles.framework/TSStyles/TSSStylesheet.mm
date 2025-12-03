@interface TSSStylesheet
- (BOOL)cascadedContainsStyle:(id)style;
- (BOOL)containsStyle:(id)style;
- (BOOL)isAncestorOf:(id)of;
- (BOOL)isDescendentOf:(id)of;
- (BOOL)isEqual:(id)equal;
- (BOOL)isParentOf:(id)of;
- (BOOL)p_shouldDoDOLCForStyle:(id)style;
- (BOOL)shouldAlwaysArchiveWhenInMemory;
- (NSArray)identifiedStyles;
- (NSSet)baseStyles;
- (NSSet)styles;
- (TSSStylesheet)child;
- (TSSStylesheet)initWithContext:(id)context canCullStyles:(BOOL)styles;
- (TSSStylesheet)rootAncestor;
- (id)cascadedStyleWithIdentifier:(id)identifier;
- (id)cascadedStyleWithIdentifier:(id)identifier componentMask:(unint64_t)mask;
- (id)childrenOfStyle:(id)style;
- (id)firstCascadedStylePassingTest:(id)test;
- (id)firstUnidentifiedRootStyleOfClass:(Class)class withOverridePropertyMap:(id)map;
- (id)identifiedStylesOfClass:(Class)class;
- (id)namedStylesOfClass:(Class)class;
- (id)pVariationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context;
- (id)p_stylesPassingTest:(id)test cascade:(BOOL)cascade;
- (id)packageLocator;
- (id)repairOrReplaceErrantStyle:(id)style;
- (id)styleWithIdentifier:(id)identifier;
- (id)styleWithIdentifier:(id)identifier componentMask:(unint64_t)mask;
- (id)styleWithUUIDIfAvailable:(id)available;
- (id)stylesOfClass:(Class)class;
- (id)stylesWithName:(id)name;
- (id)unusedStyleIdentifierWithPackageString:(id)string styleDescriptor:(id)descriptor contentTag:(id)tag;
- (id)variationOfStyle:(id)style exactPropertyMap:(id)map;
- (id)variationOfStyle:(id)style propertyMap:(id)map;
- (id)variationOfStyle:(id)style propertyMap:(id)map context:(id)context;
- (id)variationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context;
- (id)variationOfStyleMatchingStyle:(id)style withNewParentStyle:(id)parentStyle;
- (unint64_t)descendantCount;
- (unint64_t)hash;
- (unsigned)delayedArchivingPriority;
- (void)addStyle:(id)style withParent:(id)parent identifier:(id)identifier;
- (void)didLoadChildObjectFromDocumentSupport:(id)support;
- (void)enumerateCascadedStylesUsingBlock:(id)block;
- (void)enumerateStylesUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveAllStylesToStylesheet:(id)stylesheet stripIdentifiers:(BOOL)identifiers;
- (void)moveStyle:(id)style toStylesheet:(id)stylesheet stripIdentifiers:(BOOL)identifiers overwriteIdentifiers:(BOOL)overwriteIdentifiers;
- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier;
- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier shouldDoDOLC:(BOOL)c;
- (void)p_addStyleToParentChildren:(id)children;
- (void)p_removeStyle:(id)style;
- (void)p_removeStyleFromParentChildren:(id)children;
- (void)p_setIdentifier:(id)identifier ofStyle:(id)style;
- (void)p_setParent:(id)parent ofStyle:(id)style;
- (void)removeStyle:(id)style;
- (void)resetBaseStyleSetUpdatedFlag;
- (void)saveStyles:(id)styles toArchiver:(id)archiver;
- (void)saveStylesToMessage:(void *)message archiver:(id)archiver versions:(id *)versions;
- (void)saveToArchiver:(id)archiver;
- (void)saveVersionedStylesToMessage:(void *)message archiver:(id)archiver targetVersion:(unint64_t)version;
- (void)setIdentifier:(id)identifier ofStyle:(id)style;
- (void)setParent:(id)parent;
- (void)setParent:(id)parent ofStyle:(id)style;
- (void)style:(id)style didChangeUUIDToValue:(id)value fromValue:(id)fromValue;
- (void)unlockStylesheetForDurationOfBlock:(id)block;
@end

@implementation TSSStylesheet

- (unsigned)delayedArchivingPriority
{
  v3 = objc_msgSend_parent(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_delayedArchivingPriority(v3, v4, v5) - 1;
  }

  else
  {
    v7 = 1000;
  }

  return v7;
}

- (id)packageLocator
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  v12 = objc_msgSend_stylesheet(v9, v10, v11);

  if (v12 == self)
  {
    v19 = @"DocumentStylesheet";
  }

  else
  {
    v15 = objc_msgSend_theme(v9, v13, v14);
    v18 = objc_msgSend_legacyStylesheet(v15, v16, v17);

    if (v18 == self)
    {
      v19 = @"ThemeStylesheet";
    }

    else
    {
      v19 = @"Stylesheet";
    }
  }

  return v19;
}

- (BOOL)shouldAlwaysArchiveWhenInMemory
{
  objc_opt_class();
  v5 = objc_msgSend_context(self, v3, v4);
  v8 = objc_msgSend_documentObject(v5, v6, v7);
  v9 = TSUDynamicCast();

  v12 = objc_msgSend_stylesheet(v9, v10, v11);
  if (v12 == self)
  {
    shouldAlwaysArchiveWhenInMemory = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSSStylesheet;
    shouldAlwaysArchiveWhenInMemory = [(TSSStylesheet *)&v15 shouldAlwaysArchiveWhenInMemory];
  }

  return shouldAlwaysArchiveWhenInMemory;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v120 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812FAF80[8]);

  if (*(v6 + 16))
  {
    v9 = *(v6 + 96);
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_276CA55B4;
    v147[3] = &unk_27A6EEA50;
    v147[4] = self;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v147);
  }

  self->mIsLocked = *(v6 + 241);
  self->mCanCullStyles = *(v6 + 240);
  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v7, v8))
  {
    v14 = objc_msgSend_p_allFilteredIdentifiersInArchive_unarchiver_(self, v13, v6, unarchiverCopy);
    v15 = v14;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v16 = *(v6 + 32);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = (v14 + 8);
      while (1)
      {
        v19 = *v18;
        if (!*v18)
        {
          goto LABEL_21;
        }

        v20 = *(*(v6 + 40) + 8 * v17 + 8);
        v21 = *(v20 + 3);
        v22 = (v15 + 8);
        do
        {
          if (v19[4] >= v21)
          {
            v22 = v19;
          }

          v19 = v19[v19[4] < v21];
        }

        while (v19);
        if (v22 == v18 || v21 < v22[4])
        {
          goto LABEL_21;
        }

        v23 = v127;
        if (!v127)
        {
          goto LABEL_18;
        }

        v24 = *v127;
        if (v126 >= *v127)
        {
          break;
        }

        v25 = &v127[2 * v126];
        LODWORD(v126) = v126 + 1;
        v26 = *(v25 + 1);
LABEL_20:
        TSP::Reference::CopyFrom(v26, v20);
LABEL_21:
        if (++v17 == v16)
        {
          goto LABEL_22;
        }
      }

      if (v24 == HIDWORD(v126))
      {
LABEL_18:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v125);
        v23 = v127;
        v24 = *v127;
      }

      *v23 = v24 + 1;
      v26 = MEMORY[0x277CA0650](v125);
      v27 = &v127[2 * v126];
      LODWORD(v126) = v126 + 1;
      *(v27 + 1) = v26;
      goto LABEL_20;
    }

LABEL_22:
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_276CA5D7C;
    v133[3] = &unk_27A6EEAF0;
    v133[4] = self;
    v28 = unarchiverCopy;
    v29 = objc_opt_class();
    objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v28, v30, &v125, v29, 0, v133);

    sub_276CA86B8(&v125);
    v119 = v15;
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v32 = *(v6 + 56);
    v33 = MEMORY[0x277D80A18];
    if (v32 >= 1)
    {
      v34 = 0;
      v35 = (v15 + 8);
      while (1)
      {
        TSS::StylesheetArchive_IdentifiedStyleEntry::StylesheetArchive_IdentifiedStyleEntry(&v125, *(*(v6 + 64) + 8 * v34 + 8));
        v37 = v129;
        if (!v129)
        {
          v37 = v33;
        }

        v38 = *v35;
        if (!*v35)
        {
          goto LABEL_44;
        }

        v39 = *(v37 + 3);
        v40 = v35;
        do
        {
          if (v38[4] >= v39)
          {
            v40 = v38;
          }

          v38 = v38[v38[4] < v39];
        }

        while (v38);
        if (v40 == v35 || v39 < v40[4])
        {
          goto LABEL_44;
        }

        v41 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v36, v128 & 0xFFFFFFFFFFFFFFFELL);
        objc_msgSend_addObject_(v31, v42, v41);

        v43 = v132;
        if (!v132)
        {
          goto LABEL_38;
        }

        v44 = *v132;
        if (v131 >= *v132)
        {
          break;
        }

        v45 = &v132[2 * v131];
        LODWORD(v131) = v131 + 1;
        v46 = *(v45 + 1);
LABEL_40:
        if (v129)
        {
          v48 = v129;
        }

        else
        {
          v48 = v33;
        }

        TSP::Reference::CopyFrom(v46, v48);
LABEL_44:
        TSS::StylesheetArchive_IdentifiedStyleEntry::~StylesheetArchive_IdentifiedStyleEntry(&v125);
        if (++v34 == v32)
        {
          goto LABEL_45;
        }
      }

      if (v44 == HIDWORD(v131))
      {
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v130);
        v43 = v132;
        v44 = *v132;
      }

      *v43 = v44 + 1;
      v46 = MEMORY[0x277CA0650](v130);
      v47 = &v132[2 * v131];
      LODWORD(v131) = v131 + 1;
      *(v47 + 1) = v46;
      goto LABEL_40;
    }

LABEL_45:
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = sub_276CA5F68;
    v123[3] = &unk_27A6EEBB8;
    v123[4] = self;
    v49 = v31;
    v124 = v49;
    v50 = v28;
    v51 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v50, v52, &v130, v51, 0, v123);

    sub_276CA86B8(&v130);
    v53 = *(v6 + 80);
    v54 = objc_alloc(MEMORY[0x277D81308]);
    v56 = objc_msgSend_initWithCapacity_(v54, v55, v53);
    mParentToChildrenStyleMap = self->mParentToChildrenStyleMap;
    self->mParentToChildrenStyleMap = v56;

    if (v53 < 1)
    {
      goto LABEL_81;
    }

    v60 = 0;
    v61 = (v119 + 8);
    selfCopy = self;
LABEL_47:
    v62 = *(*(v6 + 88) + 8 * v60 + 8);
    v63 = *(v62 + 48);
    if (!v63)
    {
      v63 = v33;
    }

    v64 = *v61;
    if (!*v61)
    {
      goto LABEL_80;
    }

    v65 = *(v63 + 3);
    v66 = (v119 + 8);
    do
    {
      if (v64[4] >= v65)
      {
        v66 = v64;
      }

      v64 = v64[v64[4] < v65];
    }

    while (v64);
    if (v66 == v61 || v65 < v66[4])
    {
      goto LABEL_80;
    }

    v125 = 0;
    v126 = 0;
    v127 = 0;
    v67 = *(v62 + 32);
    if (v67 < 1)
    {
      goto LABEL_79;
    }

    v68 = v50;
    v69 = 0;
    while (1)
    {
      v70 = *v61;
      if (!*v61)
      {
        goto LABEL_73;
      }

      v71 = *(*(v62 + 40) + 8 * v69 + 8);
      v72 = *(v71 + 3);
      v73 = (v119 + 8);
      do
      {
        if (v70[4] >= v72)
        {
          v73 = v70;
        }

        v70 = v70[v70[4] < v72];
      }

      while (v70);
      if (v73 == v61 || v72 < v73[4])
      {
        goto LABEL_73;
      }

      v74 = v127;
      if (!v127)
      {
        goto LABEL_70;
      }

      v75 = *v127;
      if (v126 >= *v127)
      {
        break;
      }

      v76 = &v127[2 * v126];
      LODWORD(v126) = v126 + 1;
      v77 = *(v76 + 1);
LABEL_72:
      TSP::Reference::CopyFrom(v77, v71);
LABEL_73:
      if (++v69 == v67)
      {
        v50 = v68;
        self = selfCopy;
        if (v126 >= 1)
        {
          if (*(v62 + 48))
          {
            v79 = *(v62 + 48);
          }

          else
          {
            v79 = v33;
          }

          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = sub_276CA5FF4;
          v122[3] = &unk_27A6EEB68;
          v122[4] = selfCopy;
          v80 = v50;
          v81 = objc_opt_class();
          v82 = objc_opt_class();
          objc_msgSend_readWeakReferenceMessage_class_protocol_repeatedMessage_class_protocol_completion_(v80, v83, v79, v81, 0, &v125, v82, 0, v122);
        }

LABEL_79:
        sub_276CA86B8(&v125);
LABEL_80:
        if (++v60 == v53)
        {
LABEL_81:
          v84 = v120;
          if (objc_msgSend_preUFFVersion(v50, v58, v59) < 0x774119F38)
          {
            objc_msgSend_willModifyForUpgrade(self, v85, v86);
          }

          if (v119)
          {
            sub_276CA8664(v119, *(v119 + 8));
            MEMORY[0x277CA0980](v119, 0x1020C4062D53EE8);
          }

          goto LABEL_120;
        }

        goto LABEL_47;
      }
    }

    if (v75 == HIDWORD(v126))
    {
LABEL_70:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v125);
      v74 = v127;
      v75 = *v127;
    }

    *v74 = v75 + 1;
    v77 = MEMORY[0x277CA0650](v125);
    v78 = &v127[2 * v126];
    LODWORD(v126) = v126 + 1;
    *(v78 + 1) = v77;
    goto LABEL_72;
  }

  v87 = objc_alloc(MEMORY[0x277D81268]);
  v89 = objc_msgSend_initWithCapacity_(v87, v88, *(v6 + 32));
  mStyles = self->mStyles;
  self->mStyles = v89;

  v91 = objc_alloc(MEMORY[0x277CBEB38]);
  v93 = objc_msgSend_initWithCapacity_(v91, v92, *(v6 + 32));
  mUUIDToStyleMap = self->mUUIDToStyleMap;
  self->mUUIDToStyleMap = v93;

  v95 = objc_alloc(MEMORY[0x277CBEB38]);
  v97 = objc_msgSend_initWithCapacity_(v95, v96, *(v6 + 56));
  mIdentifierToStyleMap = self->mIdentifierToStyleMap;
  self->mIdentifierToStyleMap = v97;

  v99 = objc_alloc(MEMORY[0x277D81308]);
  v101 = objc_msgSend_initWithCapacity_(v99, v100, *(v6 + 80));
  v102 = self->mParentToChildrenStyleMap;
  self->mParentToChildrenStyleMap = v101;

  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_276CA563C;
  v144[3] = &unk_27A6EEB18;
  v103 = unarchiverCopy;
  v145 = v103;
  selfCopy2 = self;
  v104 = MEMORY[0x277CA0D60](v144);
  v104[2](v104, v6 + 24);
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = sub_276CA596C;
  v141[3] = &unk_27A6EEB18;
  v105 = v103;
  v142 = v105;
  selfCopy3 = self;
  v106 = MEMORY[0x277CA0D60](v141);
  v106[2](v106, v6 + 48);
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = sub_276CA5B38;
  v138[3] = &unk_27A6EEB18;
  v139 = v105;
  selfCopy4 = self;
  v107 = MEMORY[0x277CA0D60](v138);
  v107[2](v107, v6 + 72);
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = sub_276CA5D10;
  v134[3] = &unk_27A6EEB90;
  v108 = v104;
  v135 = v108;
  v109 = v106;
  v136 = v109;
  v110 = v107;
  v137 = v110;
  v111 = MEMORY[0x277CA0D60](v134);
  v112 = v111;
  v113 = *(v6 + 16);
  if ((v113 & 2) != 0)
  {
    (*(v111 + 16))(v111, *(v6 + 104));
    v113 = *(v6 + 16);
  }

  if ((v113 & 4) != 0)
  {
    v112[2](v112, *(v6 + 112));
    v113 = *(v6 + 16);
  }

  if ((v113 & 8) != 0)
  {
    v112[2](v112, *(v6 + 120));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x10) != 0)
  {
    v112[2](v112, *(v6 + 128));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x20) != 0)
  {
    v112[2](v112, *(v6 + 136));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x40) != 0)
  {
    v112[2](v112, *(v6 + 144));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x80) != 0)
  {
    v112[2](v112, *(v6 + 152));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x100) != 0)
  {
    v112[2](v112, *(v6 + 160));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x200) != 0)
  {
    v112[2](v112, *(v6 + 168));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x400) != 0)
  {
    v112[2](v112, *(v6 + 176));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x800) != 0)
  {
    v112[2](v112, *(v6 + 184));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x1000) != 0)
  {
    v112[2](v112, *(v6 + 192));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x2000) != 0)
  {
    v112[2](v112, *(v6 + 200));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x4000) != 0)
  {
    v112[2](v112, *(v6 + 208));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x8000) != 0)
  {
    v112[2](v112, *(v6 + 216));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x10000) != 0)
  {
    v112[2](v112, *(v6 + 224));
    v113 = *(v6 + 16);
  }

  if ((v113 & 0x20000) != 0)
  {
    v112[2](v112, *(v6 + 232));
  }

  v84 = v120;
LABEL_120:
  if (objc_msgSend_sourceType(v84, v85, v86) == 1)
  {
    if (objc_msgSend_fileFormatVersion(v84, v114, v115) >= 0xA000100000003)
    {
      v121[0] = MEMORY[0x277D85DD0];
      v121[1] = 3221225472;
      v121[2] = sub_276CA608C;
      v121[3] = &unk_27A6EEBE0;
      v121[4] = self;
      objc_msgSend_addFinalizeHandler_(v84, v116, v121);
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(self, v116, v117);
    }
  }
}

- (void)saveStyles:(id)styles toArchiver:(id)archiver
{
  stylesCopy = styles;
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v8, sub_276CA873C, off_2812FAF80[8]);

  mParent = self->mParent;
  if (mParent)
  {
    *(v9 + 16) |= 1u;
    v12 = *(v9 + 96);
    if (!v12)
    {
      v13 = *(v9 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA0650](v13);
      *(v9 + 96) = v12;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v10, mParent, v12);
  }

  if (!self->mIsLocked)
  {
    *(v9 + 16) |= 0x80000u;
    *(v9 + 241) = 0;
  }

  mStyles = stylesCopy;
  if (!stylesCopy)
  {
    mStyles = self->mStyles;
  }

  objc_msgSend_setStrongReferenceSet_message_(archiverCopy, v10, mStyles, v9 + 24);
  v17 = objc_msgSend_allKeys(self->mIdentifierToStyleMap, v15, v16);
  v19 = objc_msgSend_sortedArrayUsingComparator_(v17, v18, &unk_2885E6280);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276CA63D0;
  v31[3] = &unk_27A6EEC28;
  v31[4] = self;
  v20 = stylesCopy;
  v32 = v20;
  v34 = v9;
  v21 = archiverCopy;
  v33 = v21;
  objc_msgSend_enumerateObjectsUsingBlock_(v19, v22, v31);

  mParentToChildrenStyleMap = self->mParentToChildrenStyleMap;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_276CA666C;
  v27[3] = &unk_27A6EEC50;
  v24 = v20;
  v28 = v24;
  v30 = v9;
  v25 = v21;
  v29 = v25;
  objc_msgSend_tsp_enumerateKeysAndObjectsUsingBlock_(mParentToChildrenStyleMap, v26, v27);
}

- (void)saveToArchiver:(id)archiver
{
  v103 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276CA873C, off_2812FAF80[8]);

  mParent = self->mParent;
  if (mParent)
  {
    *(v6 + 16) |= 1u;
    v9 = *(v6 + 96);
    if (!v9)
    {
      v10 = *(v6 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA0650](v10);
      *(v6 + 96) = v9;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v7, mParent, v9);
  }

  if (!self->mIsLocked)
  {
    *(v6 + 16) |= 0x80000u;
    *(v6 + 241) = 0;
  }

  if (self->mCanCullStyles)
  {
    *(v6 + 16) |= 0x40000u;
    *(v6 + 240) = 1;
  }

  v101 = 0;
  objc_msgSend_saveStylesToMessage_archiver_versions_(self, v7, v6, archiverCopy, &v101);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v11 = v101;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v97, v102, 16);
  if (v15)
  {
    v16 = *v98;
    v17 = *MEMORY[0x277D808C8];
    v18 = *MEMORY[0x277D808D0];
    v96 = *MEMORY[0x277D808D8];
    v95 = *MEMORY[0x277D808E0];
    v94 = *MEMORY[0x277D808E8];
    v93 = *MEMORY[0x277D808F0];
    v92 = *MEMORY[0x277D808F8];
    v91 = *MEMORY[0x277D80900];
    v90 = *MEMORY[0x277D80908];
    v89 = *MEMORY[0x277D80910];
    v88 = *MEMORY[0x277D80918];
    v87 = *MEMORY[0x277D80920];
    v86 = *MEMORY[0x277D80928];
    v85 = *MEMORY[0x277D80930];
    v84 = *MEMORY[0x277D80938];
    v83 = *MEMORY[0x277D80940];
    v82 = *MEMORY[0x277D80948];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v98 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v20 = objc_msgSend_unsignedLongLongValue(*(*(&v97 + 1) + 8 * i), v13, v14);
        if (v20 == v17)
        {
          *(v6 + 16) |= 2u;
          v22 = *(v6 + 104);
          if (!v22)
          {
            v23 = *(v6 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v23);
            *(v6 + 104) = v22;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v22, archiverCopy, v17);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v24, 7, v6);
        }

        else if (v20 == v18)
        {
          *(v6 + 16) |= 4u;
          v25 = *(v6 + 112);
          if (!v25)
          {
            v26 = *(v6 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v26);
            *(v6 + 112) = v25;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v25, archiverCopy, v18);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v27, 8, v6);
        }

        else if (v20 == v96)
        {
          *(v6 + 16) |= 8u;
          v28 = *(v6 + 120);
          if (!v28)
          {
            v29 = *(v6 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v29);
            *(v6 + 120) = v28;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v28, archiverCopy, v96);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v30, 9, v6);
        }

        else if (v20 == v95)
        {
          *(v6 + 16) |= 0x10u;
          v31 = *(v6 + 128);
          if (!v31)
          {
            v32 = *(v6 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v32);
            *(v6 + 128) = v31;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v31, archiverCopy, v95);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v33, 10, v6);
        }

        else if (v20 == v94)
        {
          *(v6 + 16) |= 0x20u;
          v34 = *(v6 + 136);
          if (!v34)
          {
            v35 = *(v6 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v35);
            *(v6 + 136) = v34;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v34, archiverCopy, v94);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v36, 11, v6);
        }

        else if (v20 == v93)
        {
          *(v6 + 16) |= 0x40u;
          v37 = *(v6 + 144);
          if (!v37)
          {
            v38 = *(v6 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v38);
            *(v6 + 144) = v37;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v37, archiverCopy, v93);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v39, 12, v6);
        }

        else if (v20 == v92)
        {
          *(v6 + 16) |= 0x80u;
          v40 = *(v6 + 152);
          if (!v40)
          {
            v41 = *(v6 + 8);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v40 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v41);
            *(v6 + 152) = v40;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v40, archiverCopy, v92);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v42, 13, v6);
        }

        else if (v20 == v91)
        {
          *(v6 + 16) |= 0x100u;
          v43 = *(v6 + 160);
          if (!v43)
          {
            v44 = *(v6 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v44);
            *(v6 + 160) = v43;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v43, archiverCopy, v91);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v45, 14, v6);
        }

        else if (v20 == v90)
        {
          *(v6 + 16) |= 0x200u;
          v46 = *(v6 + 168);
          if (!v46)
          {
            v47 = *(v6 + 8);
            if (v47)
            {
              v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
            }

            v46 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v47);
            *(v6 + 168) = v46;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v46, archiverCopy, v90);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v48, 15, v6);
        }

        else if (v20 == v89)
        {
          *(v6 + 16) |= 0x400u;
          v49 = *(v6 + 176);
          if (!v49)
          {
            v50 = *(v6 + 8);
            if (v50)
            {
              v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
            }

            v49 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v50);
            *(v6 + 176) = v49;
          }

          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v21, v49, archiverCopy, v89);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v51, 16, v6);
        }

        else if (v20 == v88)
        {
          v52 = sub_276CA8174(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v53, v52, archiverCopy, v88);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v54, 17, v6);
        }

        else if (v20 == v87)
        {
          v55 = sub_276CA81C4(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v56, v55, archiverCopy, v87);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v57, 18, v6);
        }

        else if (v20 == v86)
        {
          v58 = sub_276CA8214(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v59, v58, archiverCopy, v86);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v60, 19, v6);
        }

        else if (v20 == v85)
        {
          v61 = sub_276CA8264(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v62, v61, archiverCopy, v85);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v63, 20, v6);
        }

        else if (v20 == v84)
        {
          v64 = sub_276CA82B4(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v65, v64, archiverCopy, v84);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v66, 21, v6);
        }

        else if (v20 == v83)
        {
          v67 = sub_276CA8304(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v68, v67, archiverCopy, v83);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v69, 22, v6);
        }

        else
        {
          if (v20 != v82)
          {
            v81 = NSStringFromTSPVersion();
            TSUSetCrashReporterInfo();

            v74 = MEMORY[0x277D81150];
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "[TSSStylesheet(Archiving) saveToArchiver:]", "[TSSStylesheet(Archiving) saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet_Archiving.mm", 483, v81);
            v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet_Archiving.mm");
            v79 = NSStringFromTSPVersion();
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v76, v78, 483, 1, "Style with version %{public}@ is not supported.", v79);

            TSUCrashBreakpoint();
            abort();
          }

          v70 = sub_276CA8354(v6);
          objc_msgSend_saveVersionedStylesToMessage_archiver_targetVersion_(self, v71, v70, archiverCopy, v82);
          objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v72, 23, v6);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v97, v102, 16);
    }

    while (v15);
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (void)saveStylesToMessage:(void *)message archiver:(id)archiver versions:(id *)versions
{
  versionsCopy = versions;
  v57 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (self->mCanCullStyles)
  {
    objc_msgSend_setWeakReferenceSet_message_(archiverCopy, v8, self->mStyles, message + 24);
    goto LABEL_20;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = objc_msgSend_tsp_sortedObjectArray(self->mStyles, v8, v9);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v52, v56, 16);
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = *v53;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v53 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v52 + 1) + 8 * i);
      Version = objc_msgSend_minimumReadVersion(v20, v15, v16, versionsCopy);
      if (Version > UnsafePointer())
      {
        v23 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v22, Version);
        objc_msgSend_addObject_(v10, v24, v23);

        continue;
      }

      v25 = *(message + 5);
      if (!v25)
      {
        v28 = *(message + 9);
LABEL_15:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 24));
        v25 = *(message + 5);
        v27 = *v25;
        goto LABEL_16;
      }

      v26 = *(message + 8);
      v27 = *v25;
      if (v26 < *v25)
      {
        *(message + 8) = v26 + 1;
        objc_msgSend_setStrongReference_message_(archiverCopy, v22, v20, *&v25[2 * v26 + 2]);
        continue;
      }

      if (v27 == *(message + 9))
      {
        goto LABEL_15;
      }

LABEL_16:
      *v25 = v27 + 1;
      v29 = MEMORY[0x277CA0650](*(message + 3));
      v30 = *(message + 8);
      v31 = *(message + 5) + 8 * v30;
      *(message + 8) = v30 + 1;
      *(v31 + 8) = v29;
      objc_msgSend_setStrongReference_message_(archiverCopy, v32, v20, v29);
    }

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v52, v56, 16);
  }

  while (v17);
LABEL_19:

LABEL_20:
  v33 = objc_msgSend_allKeys(self->mIdentifierToStyleMap, v11, v12, versionsCopy);
  v35 = objc_msgSend_sortedArrayUsingComparator_(v33, v34, &unk_2885E62A0);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_276CA75A4;
  v49[3] = &unk_27A6EEC28;
  v49[4] = self;
  v49[5] = v10;
  messageCopy = message;
  v36 = archiverCopy;
  v50 = v36;
  objc_msgSend_enumerateObjectsUsingBlock_(v35, v37, v49);

  mParentToChildrenStyleMap = self->mParentToChildrenStyleMap;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_276CA7768;
  v45[3] = &unk_27A6EEC78;
  v45[4] = self;
  messageCopy2 = message;
  v39 = v36;
  v46 = v39;
  v47 = v10;
  objc_msgSend_tsp_enumerateKeysAndObjectsUsingBlock_(mParentToChildrenStyleMap, v40, v45);
  if (v44)
  {
    v41 = v10;
    *v44 = v10;
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)saveVersionedStylesToMessage:(void *)message archiver:(id)archiver targetVersion:(unint64_t)version
{
  v58 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = objc_msgSend_tsp_sortedObjectArray(self->mStyles, v9, v10);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v53, v57, 16);
  if (v15)
  {
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v53 + 1) + 8 * i);
        if (objc_msgSend_minimumReadVersion(v18, v13, v14) == version)
        {
          v19 = *(message + 4);
          if (!self->mCanCullStyles)
          {
            if (v19)
            {
              v22 = *(message + 6);
              v23 = *v19;
              if (v22 < *v19)
              {
                *(message + 6) = v22 + 1;
                objc_msgSend_setStrongReference_message_(archiverCopy, v13, v18, *&v19[2 * v22 + 2]);
                continue;
              }

              if (v23 == *(message + 7))
              {
LABEL_21:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
                v19 = *(message + 4);
                v23 = *v19;
              }

              *v19 = v23 + 1;
              v30 = MEMORY[0x277CA0650](*(message + 2));
              v31 = *(message + 6);
              v32 = *(message + 4) + 8 * v31;
              *(message + 6) = v31 + 1;
              *(v32 + 8) = v30;
              objc_msgSend_setStrongReference_message_(archiverCopy, v33, v18, v30);
              continue;
            }

            v25 = *(message + 7);
            goto LABEL_21;
          }

          if (v19)
          {
            v20 = *(message + 6);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(message + 6) = v20 + 1;
              objc_msgSend_setWeakReference_message_(archiverCopy, v13, v18, *&v19[2 * v20 + 2]);
              continue;
            }

            if (v21 == *(message + 7))
            {
LABEL_17:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
              v19 = *(message + 4);
              v21 = *v19;
            }

            *v19 = v21 + 1;
            v26 = MEMORY[0x277CA0650](*(message + 2));
            v27 = *(message + 6);
            v28 = *(message + 4) + 8 * v27;
            *(message + 6) = v27 + 1;
            *(v28 + 8) = v26;
            objc_msgSend_setWeakReference_message_(archiverCopy, v29, v18, v26);
            continue;
          }

          v24 = *(message + 7);
          goto LABEL_17;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v53, v57, 16);
    }

    while (v15);
  }

  v36 = objc_msgSend_allKeys(self->mIdentifierToStyleMap, v34, v35);
  v38 = objc_msgSend_sortedArrayUsingComparator_(v36, v37, &unk_2885E62C0);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_276CA7E0C;
  v49[3] = &unk_27A6EECA0;
  v49[4] = self;
  versionCopy = version;
  messageCopy = message;
  v39 = archiverCopy;
  v50 = v39;
  objc_msgSend_enumerateObjectsUsingBlock_(v38, v40, v49);

  mParentToChildrenStyleMap = self->mParentToChildrenStyleMap;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_276CA7F90;
  v45[3] = &unk_27A6EECC8;
  versionCopy2 = version;
  messageCopy2 = message;
  v45[4] = self;
  v42 = v39;
  v46 = v42;
  objc_msgSend_tsp_enumerateKeysAndObjectsUsingBlock_(mParentToChildrenStyleMap, v43, v45);

  v44 = *MEMORY[0x277D85DE8];
}

- (TSSStylesheet)initWithContext:(id)context canCullStyles:(BOOL)styles
{
  v15.receiver = self;
  v15.super_class = TSSStylesheet;
  v5 = [(TSSStylesheet *)&v15 initWithContext:context];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D81268]);
    mStyles = v5->mStyles;
    v5->mStyles = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mIdentifierToStyleMap = v5->mIdentifierToStyleMap;
    v5->mIdentifierToStyleMap = v8;

    v10 = objc_alloc_init(MEMORY[0x277D81308]);
    mParentToChildrenStyleMap = v5->mParentToChildrenStyleMap;
    v5->mParentToChildrenStyleMap = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mUUIDToStyleMap = v5->mUUIDToStyleMap;
    v5->mUUIDToStyleMap = v12;

    v5->mCanCullStyles = styles;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  if (!equalCopy)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    goto LABEL_8;
  }

  v7 = v5;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = v7;
  objc_sync_enter(v9);
  if ((objc_msgSend_isEqual_(v9[9], v10, selfCopy->mStyles) & 1) == 0)
  {
    objc_sync_exit(v9);

    objc_sync_exit(selfCopy);
    goto LABEL_8;
  }

  isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v9[8], v11, selfCopy->mIdentifierToStyleMap);
  objc_sync_exit(v9);

  objc_sync_exit(selfCopy);
  if (!isEqualToDictionary)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v13 = 1;
LABEL_9:

  return v13;
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_hash(selfCopy->mStyles, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (NSSet)styles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_copy(selfCopy->mStyles, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  objc_msgSend_willModify(self, v5, v6);
  if (self == parentCopy)
  {
    sub_276CE0BC4(self);
  }

  mParent = self->mParent;
  if (mParent)
  {
    objc_msgSend_setChild_(mParent, v7, 0);
  }

  objc_storeStrong(&self->mParent, parent);
  v10 = self->mParent;
  if (v10)
  {
    objc_msgSend_setChild_(v10, v9, self);
  }
}

- (BOOL)isParentOf:(id)of
{
  v4 = objc_msgSend_parent(of, a2, of);
  LOBYTE(self) = v4 == self;

  return self;
}

- (BOOL)isDescendentOf:(id)of
{
  ofCopy = of;
  mParent = self->mParent;
  if (mParent)
  {
    if (mParent == ofCopy)
    {
      isDescendentOf = 1;
    }

    else
    {
      isDescendentOf = objc_msgSend_isDescendentOf_(mParent, v4, ofCopy);
    }
  }

  else
  {
    isDescendentOf = 0;
  }

  return isDescendentOf;
}

- (BOOL)isAncestorOf:(id)of
{
  ofCopy = of;
  v7 = objc_msgSend_parent(ofCopy, v5, v6);

  if (v7)
  {
    v12 = objc_msgSend_parent(ofCopy, v8, v9);
    if (v12 == self)
    {
      isAncestorOf = 1;
    }

    else
    {
      v13 = objc_msgSend_parent(ofCopy, v10, v11);
      isAncestorOf = objc_msgSend_isAncestorOf_(self, v14, v13);
    }
  }

  else
  {
    isAncestorOf = 0;
  }

  return isAncestorOf;
}

- (TSSStylesheet)rootAncestor
{
  selfCopy = self;
  v5 = objc_msgSend_parent(selfCopy, v3, v4);

  if (v5)
  {
    do
    {
      v8 = objc_msgSend_parent(selfCopy, v6, v7);

      v11 = objc_msgSend_parent(v8, v9, v10);

      selfCopy = v8;
    }

    while (v11);
  }

  else
  {
    v8 = selfCopy;
  }

  return v8;
}

- (unint64_t)descendantCount
{
  selfCopy = self;
  v5 = objc_msgSend_child(selfCopy, v3, v4);

  if (v5)
  {
    v5 = 0;
    v8 = selfCopy;
    do
    {
      ++v5;
      selfCopy = objc_msgSend_child(v8, v6, v7);

      v11 = objc_msgSend_child(selfCopy, v9, v10);

      v8 = selfCopy;
    }

    while (v11);
  }

  return v5;
}

- (void)addStyle:(id)style withParent:(id)parent identifier:(id)identifier
{
  identifierCopy = identifier;
  parentCopy = parent;
  styleCopy = style;
  shouldDoDOLCForStyle = objc_msgSend_p_shouldDoDOLCForStyle_(self, v10, styleCopy);
  objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(self, v12, styleCopy, parentCopy, identifierCopy, shouldDoDOLCForStyle);
}

- (id)repairOrReplaceErrantStyle:(id)style
{
  styleCopy = style;
  if (objc_msgSend_isVariation(styleCopy, v5, v6) && (objc_msgSend_parent(styleCopy, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v43 = objc_msgSend_parentStyleForFixingOrphanVariation(styleCopy, v10, v11);
    if (v43)
    {
      v44 = objc_msgSend_overridePropertyMap(styleCopy, v41, v42);
      v14 = objc_msgSend_variationOfStyle_propertyMap_(self, v45, v43, v44);
    }

    else
    {
      objc_msgSend_setIsVariation_(styleCopy, v41, 0);
      v14 = styleCopy;
    }
  }

  else
  {
    v14 = styleCopy;
  }

  v15 = objc_msgSend_parent(v14, v12, v13);
  v18 = objc_msgSend_stylesheet(v15, v16, v17);
  v20 = v18;
  if (v15 && v18 != self && (objc_msgSend_isAncestorOf_(v18, v19, self) & 1) == 0)
  {
    isLocked = objc_msgSend_isLocked(v20, v19, v21);
    objc_msgSend_setIsLocked_(v20, v23, 0);
    objc_msgSend_removeStyle_(v20, v24, v15);
    objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(self, v25, v15, 0, 0, 0);
    objc_msgSend_setIsLocked_(v20, v26, isLocked);
  }

  if (objc_msgSend_containsStyle_(self, v19, v14))
  {
    v29 = objc_msgSend_stylesheet(v14, v27, v28);

    if (!v29)
    {
      objc_msgSend_setStylesheet_(v14, v30, self);
    }

    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    v32 = objc_msgSend_stylesheet(v14, v30, v31);

    if (v32 == self)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_msgSend_addStyle_withParent_identifier_shouldDoDOLC_(self, v27, v14, v15, 0, 0);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v33 = MEMORY[0x277D81150];
  v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSSStylesheet repairOrReplaceErrantStyle:]");
  v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 495, 0, "-repairOrReplaceErrantStyle: returned nil for %{public}@", styleCopy);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
LABEL_16:

  return v14;
}

- (void)removeStyle:(id)style
{
  styleCopy = style;
  objc_msgSend_willModify(self, v4, v5);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_p_removeStyle_(selfCopy, v7, styleCopy);
  objc_sync_exit(selfCopy);
}

- (BOOL)containsStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_containsObject_(selfCopy->mStyles, v6, styleCopy);
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)cascadedContainsStyle:(id)style
{
  styleCopy = style;
  if (objc_msgSend_containsStyle_(self, v5, styleCopy))
  {
    v7 = 1;
  }

  else
  {
    mParent = self->mParent;
    if (mParent)
    {
      v7 = objc_msgSend_cascadedContainsStyle_(mParent, v6, styleCopy);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)styleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mIdentifierToStyleMap, v6, identifierCopy);
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)cascadedStyleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend_styleWithIdentifier_(self, v5, identifierCopy);
  if (!v7)
  {
    v7 = objc_msgSend_cascadedStyleWithIdentifier_(self->mParent, v6, identifierCopy);
  }

  return v7;
}

- (id)styleWithIdentifier:(id)identifier componentMask:(unint64_t)mask
{
  maskCopy = mask;
  v63 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v48 = identifierCopy;
  v11 = sub_276C9BF88(identifierCopy, v10);
  v14 = objc_msgSend_count(v11, v12, v13) > 2;
  v17 = objc_msgSend_count(v11, v15, v16) > 2;
  v20 = objc_msgSend_count(v11, v18, v19) > 2;
  v57 = v11;
  v23 = objc_msgSend_count(v11, v21, v22) == 4;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = objc_msgSend_keyEnumerator(selfCopy->mIdentifierToStyleMap, v24, v25);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v58, v62, 16);
  if (v27)
  {
    v29 = maskCopy & v14;
    v56 = v17 & (maskCopy >> 1);
    v52 = v20 & (maskCopy >> 2);
    v50 = v23 & (maskCopy >> 3);
    v54 = *v59;
LABEL_3:
    v55 = v27;
    v30 = 0;
    while (1)
    {
      if (*v59 != v54)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v58 + 1) + 8 * v30);
      if (v29)
      {
        v23 = objc_msgSend_objectAtIndexedSubscript_(v57, v28, 0);
        v5 = String(v31, v32);
        if (!objc_msgSend_isEqual_(v23, v33, v5))
        {
          goto LABEL_18;
        }
      }

      if (!v56 || (objc_msgSend_objectAtIndexedSubscript_(v57, v28, 1), v4 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend_intValue(v4, v34, v35), String(v31, v37) == v36))
      {
        if (!v52)
        {
          if (v50)
          {
            goto LABEL_15;
          }

          isEqual = 1;
          goto LABEL_20;
        }

        v53 = objc_msgSend_objectAtIndexedSubscript_(v57, v28, 2);
        v6 = String(v31, v38);
        if (objc_msgSend_isEqual_(v53, v39, v6))
        {
          if ((v50 & 1) == 0)
          {
            isEqual = 1;
            goto LABEL_16;
          }

LABEL_15:
          v41 = objc_msgSend_objectAtIndexedSubscript_(v57, v28, 3);
          v43 = String(v31, v42);
          isEqual = objc_msgSend_isEqual_(v41, v44, v43);

          if (v52)
          {
LABEL_16:

            goto LABEL_23;
          }

LABEL_20:
          if (!v56)
          {
LABEL_25:
            if (v29)
            {

              if (isEqual)
              {
                goto LABEL_32;
              }
            }

            else if (isEqual)
            {
LABEL_32:
              v45 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mIdentifierToStyleMap, v28, v31);
              goto LABEL_33;
            }

            goto LABEL_29;
          }
        }

        else
        {

          isEqual = 0;
LABEL_23:
          if ((v56 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_25;
      }

      if (v29)
      {
LABEL_18:
      }

LABEL_29:
      if (v55 == ++v30)
      {
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v58, v62, 16);
        if (v27)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v45 = 0;
LABEL_33:

  objc_sync_exit(selfCopy);
  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)cascadedStyleWithIdentifier:(id)identifier componentMask:(unint64_t)mask
{
  identifierCopy = identifier;
  v9 = objc_msgSend_styleWithIdentifier_componentMask_(self, v7, identifierCopy, mask);
  if (!v9)
  {
    v9 = objc_msgSend_cascadedStyleWithIdentifier_componentMask_(self->mParent, v8, identifierCopy, mask);
  }

  return v9;
}

- (void)setIdentifier:(id)identifier ofStyle:(id)style
{
  identifierCopy = identifier;
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_p_setIdentifier_ofStyle_(selfCopy, v10, identifierCopy, styleCopy);
  objc_sync_exit(selfCopy);
}

- (void)setParent:(id)parent ofStyle:(id)style
{
  parentCopy = parent;
  styleCopy = style;
  objc_msgSend_willModify(self, v7, v8);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_p_setParent_ofStyle_(selfCopy, v10, parentCopy, styleCopy);
  objc_sync_exit(selfCopy);
}

- (id)childrenOfStyle:(id)style
{
  styleCopy = style;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x277D81310];
  v8 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mParentToChildrenStyleMap, v7, styleCopy);
  v10 = objc_msgSend_setWithArray_(v6, v9, v8);

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)stylesWithName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = selfCopy->mStyles;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_name(v14, v9, v10, v20);
        isEqualToString = objc_msgSend_isEqualToString_(nameCopy, v16, v15);

        if (isEqualToString)
        {
          objc_msgSend_addObject_(v5, v9, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)stylesOfClass:(Class)class
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = selfCopy->mStyles;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_isMemberOfClass_(v13, v9, class, v16))
        {
          objc_msgSend_addObject_(v5, v9, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v16, v20, 16);
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)identifiedStyles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_allValues(selfCopy->mIdentifierToStyleMap, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)identifiedStylesOfClass:(Class)class
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = selfCopy->mIdentifierToStyleMap;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mIdentifierToStyleMap, v9, *(*(&v18 + 1) + 8 * i), v18);
        if (objc_msgSend_isMemberOfClass_(v13, v14, class))
        {
          objc_msgSend_addObject_(v5, v15, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v18, v22, 16);
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)enumerateStylesUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = selfCopy->mStyles;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v14 = 0;
      blockCopy[2](blockCopy, v11, &v14);
      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, &v15, v19, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateCascadedStylesUsingBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_enumerateStylesUsingBlock_(self, v4, blockCopy);
  v7 = objc_msgSend_parent(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_parent(self, v8, v9);
    objc_msgSend_enumerateStylesUsingBlock_(v10, v11, blockCopy);
  }
}

- (id)p_stylesPassingTest:(id)test cascade:(BOOL)cascade
{
  cascadeCopy = cascade;
  v33 = *MEMORY[0x277D85DE8];
  testCopy = test;
  selfCopy = self;
  v31 = 0;
  if (selfCopy)
  {
    v7 = selfCopy;
    v8 = 0;
    v25 = selfCopy;
    while (1)
    {
      v9 = v7;
      objc_sync_enter(v9);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = objc_msgSend_styles(v9, v10, v11);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v27, v32, 16);
      if (v14)
      {
        v15 = *v28;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          if (testCopy[2](testCopy, v17, &v31))
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            objc_msgSend_addObject_(v8, v18, v17, v25);
          }

          if (v31)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v27, v32, 16);
            if (v14)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      objc_sync_exit(v9);
      if (!cascadeCopy)
      {
        break;
      }

      v7 = objc_msgSend_parent(v9, v19, v20);

      if (!v7 || (v31 & 1) != 0)
      {
        goto LABEL_21;
      }
    }

    v7 = v25;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_21:
  v21 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v21 = v8;
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSSet)baseStyles
{
  v2 = MEMORY[0x277D81310];
  v3 = objc_msgSend_stylesPassingTest_(self, a2, &unk_2885E62E0);
  v5 = objc_msgSend_setWithArray_(v2, v4, v3);

  return v5;
}

- (void)resetBaseStyleSetUpdatedFlag
{
  obj = self;
  objc_sync_enter(obj);
  obj->mBaseStyleSetUpdated = 0;
  objc_sync_exit(obj);
}

- (id)firstCascadedStylePassingTest:(id)test
{
  testCopy = test;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276CABD20;
  v13[3] = &unk_27A6EEE18;
  v14 = testCopy;
  v5 = testCopy;
  v7 = objc_msgSend_cascadedStylesPassingTest_(self, v6, v13);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)namedStylesOfClass:(Class)class
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276CABDD4;
  v5[3] = &unk_27A6EEE38;
  v5[4] = class;
  v3 = objc_msgSend_stylesPassingTest_(self, a2, v5);

  return v3;
}

- (id)firstUnidentifiedRootStyleOfClass:(Class)class withOverridePropertyMap:(id)map
{
  v32 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = selfCopy->mStyles;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);

        v11 = v14;
        if (objc_msgSend_isMemberOfClass_(v14, v15, class, v27))
        {
          v20 = objc_msgSend_styleIdentifier(v14, v16, v17);
          if (v20 || (objc_msgSend_isVariation(v11, v18, v19) & 1) != 0 || (objc_msgSend_parent(v11, v21, v22), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else if (objc_msgSend_overridePropertyMapIsEqualTo_(v11, v23, mapCopy))
          {
            goto LABEL_18;
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v27, v31, 16);
      v10 = v24;
    }

    while (v24);
  }

  v11 = 0;
LABEL_18:

  objc_sync_exit(selfCopy);
  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)variationOfStyle:(id)style propertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  if (self->mIsLocked)
  {
    sub_276CE0C74();
  }

  v10 = mapCopy;
  if (!styleCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSSStylesheet variationOfStyle:propertyMap:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 778, 0, "Style can not be nil.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17);
  }

  if (objc_msgSend_isVariation(styleCopy, v8, v9))
  {
    v20 = objc_msgSend_parent(styleCopy, v18, v19);
  }

  else
  {
    v20 = styleCopy;
  }

  v23 = v20;
  if (!v23)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSSStylesheet variationOfStyle:propertyMap:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 786, 0, "Cannot create a variation of variation style <%p> with no parent: %@", styleCopy, styleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  if (objc_msgSend_isVariation(v23, v21, v22))
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSSStylesheet variationOfStyle:propertyMap:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 787, 0, "Can't create variation with a variation base style <%p> baseStyle: %@ style: %@", v23, v23, styleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  v39 = objc_msgSend_newOverridePropertyMapWithPropertyMap_(styleCopy, v31, v10);
  if (objc_msgSend_count(v39, v40, v41))
  {
    if (v39)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v44 = v23;
  v39 = 0;
  if (v23)
  {
LABEL_16:
    isVariation = v44;
    goto LABEL_29;
  }

LABEL_17:
  if (v23 != styleCopy)
  {
    v46 = objc_msgSend_stylesheet(styleCopy, v42, v43);
    v48 = v46;
    if (v46 == self)
    {
      IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(styleCopy, v47, v39);

      if (IsEqualTo)
      {
        v44 = styleCopy;
        if (styleCopy)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v52 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mParentToChildrenStyleMap, v51, v23);
  v55 = objc_msgSend_count(v52, v53, v54);
  if (v55)
  {
    v57 = v55 - 1;
    while (1)
    {
      isVariation = objc_msgSend_objectAtIndexedSubscript_(v52, v56, v57);
      if (objc_msgSend_overridePropertyMapIsEqualTo_(isVariation, v58, v39))
      {
        break;
      }

      if (--v57 == -1)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    isVariation = 0;
  }

  objc_sync_exit(selfCopy);
  if (!isVariation)
  {
    v59 = objc_alloc(objc_opt_class());
    v62 = objc_msgSend_context(selfCopy, v60, v61);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v59, v63, v62, 0, v39, 1);

    objc_msgSend_willModify(selfCopy, v64, v65);
    v66 = selfCopy;
    objc_sync_enter(v66);
    objc_msgSend_p_addStyle_withParent_identifier_(v66, v67, isVariation, v23, 0);
    objc_sync_exit(v66);
  }

LABEL_29:

  return isVariation;
}

- (id)variationOfStyleMatchingStyle:(id)style withNewParentStyle:(id)parentStyle
{
  parentStyleCopy = parentStyle;
  v9 = objc_msgSend_propertyMap(style, v7, v8);
  v11 = objc_msgSend_variationOfStyle_propertyMap_(self, v10, parentStyleCopy, v9);

  return v11;
}

- (id)variationOfStyle:(id)style propertyMap:(id)map context:(id)context
{
  contextCopy = context;
  mapCopy = map;
  styleCopy = style;
  v13 = objc_msgSend_context(self, v11, v12);

  if (v13 == contextCopy)
  {
    objc_msgSend_variationOfStyle_propertyMap_(self, v14, styleCopy, mapCopy);
  }

  else
  {
    objc_msgSend_pVariationOfStyle_propertyMap_matchStyles_context_(self, v14, styleCopy, mapCopy, 0, contextCopy);
  }
  v15 = ;

  return v15;
}

- (id)variationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context
{
  stylesCopy = styles;
  contextCopy = context;
  mapCopy = map;
  styleCopy = style;
  v16 = objc_msgSend_context(self, v14, v15);

  if (v16 == contextCopy)
  {
    objc_msgSend_variationOfStyle_propertyMap_(self, v17, styleCopy, mapCopy);
  }

  else
  {
    objc_msgSend_pVariationOfStyle_propertyMap_matchStyles_context_(self, v17, styleCopy, mapCopy, stylesCopy, contextCopy);
  }
  v18 = ;

  return v18;
}

- (id)variationOfStyle:(id)style exactPropertyMap:(id)map
{
  styleCopy = style;
  mapCopy = map;
  if (self->mIsLocked)
  {
    sub_276CE101C();
  }

  v10 = mapCopy;
  v11 = objc_msgSend_stylesheet(styleCopy, v8, v9);
  v14 = v11;
  if (v11 == self)
  {
  }

  else
  {
    v15 = objc_msgSend_stylesheet(styleCopy, v12, v13);
    isAncestorOf = objc_msgSend_isAncestorOf_(v15, v16, self);

    if ((isAncestorOf & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSStylesheet variationOfStyle:exactPropertyMap:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 888, 0, "Original style belongs to an unrelated stylesheet while performing variation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }
  }

  if (!styleCopy)
  {
    sub_276CE0F78();
  }

  if (!v10)
  {
    sub_276CE0ED4();
  }

  if (objc_msgSend_isVariation(styleCopy, v18, v19))
  {
    v31 = objc_msgSend_parent(styleCopy, v27, v28);
    if (!v31)
    {
      sub_276CE0E24(styleCopy);
    }
  }

  else
  {
    v31 = styleCopy;
  }

  if (objc_msgSend_isVariation(v31, v29, v30))
  {
    sub_276CE0D74(v31);
  }

  v32 = v10;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mParentToChildrenStyleMap, v34, v31);
  v38 = objc_msgSend_count(v35, v36, v37);
  if (v38)
  {
    v40 = v38 - 1;
    while (1)
    {
      v41 = objc_msgSend_objectAtIndexedSubscript_(v35, v39, v40);
      v43 = v41;
      if (v41 != styleCopy && (objc_msgSend_overridePropertyMapIsEqualTo_(v41, v42, v32) & 1) != 0)
      {
        break;
      }

      if (--v40 == -1)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v43 = 0;
  }

  objc_sync_exit(selfCopy);
  if (!v43)
  {
    v44 = objc_alloc(objc_opt_class());
    v47 = objc_msgSend_context(selfCopy, v45, v46);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v44, v48, v47, 0, v32, 1);

    objc_msgSend_willModify(selfCopy, v50, v51);
    v52 = selfCopy;
    objc_sync_enter(v52);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_276CAC8F0;
    v55[3] = &unk_27A6EEE60;
    v55[4] = v52;
    v43 = isVariation;
    v56 = v43;
    v57 = v31;
    objc_msgSend_performBlockIgnoringModifications_(v43, v53, v55);

    objc_sync_exit(v52);
  }

  return v43;
}

- (void)didLoadChildObjectFromDocumentSupport:(id)support
{
  supportCopy = support;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_stylesheet(v4, v5, v6);

    if (v8 == self)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if ((objc_msgSend_containsObject_(selfCopy->mStyles, v10, v7) & 1) == 0)
      {
        objc_msgSend_willModify(selfCopy, v11, v12);
        v15 = objc_msgSend_styleIdentifier(v7, v13, v14);

        if (v15)
        {
          mIdentifierToStyleMap = selfCopy->mIdentifierToStyleMap;
          v19 = objc_msgSend_styleIdentifier(v7, v16, v17);
          objc_msgSend_setObject_forKeyedSubscript_(mIdentifierToStyleMap, v20, v7, v19);
        }

        v21 = objc_msgSend_parent(v7, v16, v17);

        if (v21)
        {
          objc_msgSend_p_addStyleToParentChildren_(selfCopy, v22, v7);
        }

        objc_msgSend_addObject_(selfCopy->mStyles, v22, v7);
        if (objc_msgSend_p_shouldDoDOLCForStyle_(selfCopy, v23, v7))
        {
          v26 = objc_msgSend_context(selfCopy, v24, v25);
          objc_msgSend_wasAddedToDocumentWithContext_(v7, v27, v26);

          mUUIDToStyleMap = selfCopy->mUUIDToStyleMap;
          v31 = objc_msgSend_objectUUID(v7, v29, v30);
          v33 = objc_msgSend_objectForKeyedSubscript_(mUUIDToStyleMap, v32, v31);

          if (v33)
          {
            v36 = MEMORY[0x277D81150];
            v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSSStylesheet didLoadChildObjectFromDocumentSupport:]");
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 973, 0, "adding a style with a duplicate UUID");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
          }

          v43 = selfCopy->mUUIDToStyleMap;
          v44 = objc_msgSend_objectUUID(v7, v34, v35);
          v46 = objc_msgSend_objectForKeyedSubscript_(v43, v45, v44);

          if (!v46)
          {
            v49 = selfCopy->mUUIDToStyleMap;
            v50 = objc_msgSend_objectUUID(v7, v47, v48);
            objc_msgSend_setObject_forKey_(v49, v51, v7, v50);
          }
        }
      }

      objc_sync_exit(selfCopy);
    }
  }
}

- (void)moveStyle:(id)style toStylesheet:(id)stylesheet stripIdentifiers:(BOOL)identifiers overwriteIdentifiers:(BOOL)overwriteIdentifiers
{
  overwriteIdentifiersCopy = overwriteIdentifiers;
  styleCopy = style;
  stylesheetCopy = stylesheet;
  v13 = styleCopy;
  if (!styleCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSSStylesheet moveStyle:toStylesheet:stripIdentifiers:overwriteIdentifiers:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 985, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    v13 = 0;
  }

  v21 = objc_msgSend_stylesheet(v13, v10, v11);
  v24 = v21;
  if (v21 == self)
  {

    if (stylesheetCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v25 = objc_msgSend_stylesheet(styleCopy, v22, v23);

  if (v25)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSSStylesheet moveStyle:toStylesheet:stripIdentifiers:overwriteIdentifiers:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 986, 0, "style to move must be in this stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  if (!stylesheetCopy)
  {
LABEL_13:
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSSStylesheet moveStyle:toStylesheet:stripIdentifiers:overwriteIdentifiers:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 987, 0, "invalid nil value for '%{public}s'", "destinationStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }

LABEL_7:
  if (!styleCopy)
  {
    goto LABEL_36;
  }

  v35 = objc_msgSend_stylesheet(styleCopy, v26, v27);
  if (!v35)
  {
    v40 = styleCopy;
    if (!stylesheetCopy)
    {
      goto LABEL_36;
    }

LABEL_15:
    v48 = objc_msgSend_parent(v40, v36, v37);
    v51 = objc_msgSend_styleIdentifier(styleCopy, v49, v50);
    v53 = objc_msgSend_styleWithIdentifier_(stylesheetCopy, v52, v51);
    v56 = v53;
    if (v51 && v53)
    {
      if (!identifiers)
      {
        if (!overwriteIdentifiersCopy)
        {
          v57 = String(v51, v54);
          v59 = String(v51, v58);
          v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v60, @"%@_renamedInMove", v59);
          v63 = String(v51, v62);
          v65 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(stylesheetCopy, v64, v57, v61, v63);

          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else if (!identifiers)
    {
LABEL_22:
      v65 = v51;
LABEL_23:
      v66 = styleCopy;
      if (!overwriteIdentifiersCopy || !v56)
      {
LABEL_27:
        v67 = objc_msgSend_stylesheet(v66, v54, v55);

        if (v67)
        {
          v70 = objc_msgSend_stylesheet(styleCopy, v68, v69);
          objc_msgSend_removeStyle_(v70, v71, styleCopy);
        }

        else
        {
          if (!objc_msgSend_tsp_isInDocument(styleCopy, v68, v69))
          {
LABEL_32:
            v75 = objc_msgSend_stylesheet(v48, v72, v73);

            if (v75 == stylesheetCopy)
            {
              objc_msgSend_addStyle_withParent_identifier_(stylesheetCopy, v76, styleCopy, v48, v65);
            }

            else
            {
              objc_msgSend_setIsVariation_(styleCopy, v76, 0);
              objc_msgSend_addStyle_withIdentifier_(stylesheetCopy, v77, styleCopy, v65);
            }

            goto LABEL_36;
          }

          v70 = objc_msgSend_context(self, v72, v73);
          objc_msgSend_willBeRemovedFromDocumentWithContext_(styleCopy, v74, v70);
        }

        goto LABEL_32;
      }

      objc_msgSend_setIdentifier_ofStyle_(self, v54, 0, v56);
LABEL_26:
      v66 = styleCopy;
      goto LABEL_27;
    }

    v65 = 0;
    goto LABEL_23;
  }

  v38 = v35;
  v39 = objc_msgSend_stylesheet(styleCopy, v36, v37);

  v40 = styleCopy;
  if (v39 == self && stylesheetCopy)
  {
    goto LABEL_15;
  }

LABEL_36:
}

- (void)moveAllStylesToStylesheet:(id)stylesheet stripIdentifiers:(BOOL)identifiers
{
  v47 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  v9 = objc_msgSend_styles(self, v7, v8);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_276CAD280;
  v44 = sub_276CAD2AC;
  v45 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_276CAD2B4;
  v36[3] = &unk_27A6EEE88;
  v36[4] = self;
  v38 = &v40;
  v10 = stylesheetCopy;
  v37 = v10;
  identifiersCopy = identifiers;
  v11 = MEMORY[0x277CA0D60](v36);
  v12 = v41[5];
  v41[5] = v11;

  [TSSTheme disablePresetValidation]_0();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v32, v46, 16);
  if (v14)
  {
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        (*(v41[5] + 16))();
        v20 = objc_msgSend_stylesheet(v17, v18, v19);
        v21 = v20 == v10;

        if (!v21)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSSStylesheet moveAllStylesToStylesheet:stripIdentifiers:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 1076, 0, "style %@ got lost somewhere", v17);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v32, v46, 16);
    }

    while (v14);
  }

  [TSSTheme enablePresetValidation]_0();
  _Block_object_dispose(&v40, 8);

  v30 = *MEMORY[0x277D85DE8];
}

- (id)styleWithUUIDIfAvailable:(id)available
{
  availableCopy = available;
  v7 = objc_msgSend_context(self, v5, v6);

  if (!v7)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSSStylesheet styleWithUUIDIfAvailable:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1090, 0, "styleWithUUIDIfAvailable: may only be called on the stylesheet with a context.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mUUIDToStyleMap, v17, availableCopy);
  objc_sync_exit(selfCopy);

  return v18;
}

- (void)unlockStylesheetForDurationOfBlock:(id)block
{
  mIsLocked = self->mIsLocked;
  self->mIsLocked = 0;
  (*(block + 2))(block, a2);
  self->mIsLocked = mIsLocked;
}

- (BOOL)p_shouldDoDOLCForStyle:(id)style
{
  v4 = objc_msgSend_documentRoot(self, a2, style);
  v7 = objc_msgSend_stylesheet(v4, v5, v6);

  if (v7 == self)
  {
    v11 = 1;
  }

  else
  {
    v10 = objc_msgSend_parent(v7, v8, v9);
    v11 = v10 == self;
  }

  return v11;
}

- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier
{
  identifierCopy = identifier;
  parentCopy = parent;
  styleCopy = style;
  shouldDoDOLCForStyle = objc_msgSend_p_shouldDoDOLCForStyle_(self, v10, styleCopy);
  objc_msgSend_p_addStyle_withParent_identifier_shouldDoDOLC_(self, v12, styleCopy, parentCopy, identifierCopy, shouldDoDOLCForStyle);
}

- (void)p_addStyle:(id)style withParent:(id)parent identifier:(id)identifier shouldDoDOLC:(BOOL)c
{
  cCopy = c;
  styleCopy = style;
  parentCopy = parent;
  identifierCopy = identifier;
  if (self->mIsLocked)
  {
    sub_276CE111C();
  }

  v14 = identifierCopy;
  if (!styleCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1165, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = objc_msgSend_documentRoot(self, v12, v13);
  v25 = objc_msgSend_stylesheet(v22, v23, v24);

  if (v25 == self)
  {
    v28 = objc_msgSend_documentRoot(self, v26, v27);
    isBeingLocalized = objc_msgSend_isBeingLocalized(v28, v29, v30);

    if ((isBeingLocalized & 1) == 0)
    {
      v34 = objc_msgSend_documentRoot(self, v32, v33);
      v37 = objc_msgSend_accessController(v34, v35, v36);

      objc_msgSend_assertHasWrite(v37, v38, v39);
    }
  }

  if (styleCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v41 = styleCopy;
    if (objc_msgSend_containsStyle_(selfCopy, v42, v41))
    {
    }

    else
    {
      v46 = objc_msgSend_stylesheet(v41, v43, v44);

      if (!v46)
      {
LABEL_13:
        if (parentCopy)
        {
          v62 = objc_msgSend_stylesheet(parentCopy, v45, v47);
          v65 = v62;
          if (v62 == selfCopy)
          {
          }

          else
          {
            v66 = objc_msgSend_stylesheet(parentCopy, v63, v64);
            isAncestorOf = objc_msgSend_isAncestorOf_(v66, v67, selfCopy);

            if ((isAncestorOf & 1) == 0)
            {
              v69 = MEMORY[0x277D81150];
              v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
              v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v73, v70, v72, 1196, 0, "Parent style belongs to an unrelated stylesheet while adding style.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
            }
          }
        }

        objc_msgSend_addObject_(selfCopy->mStyles, v45, v41);
        objc_msgSend_setStylesheet_(v41, v76, selfCopy);
        if (parentCopy)
        {
          objc_msgSend_p_setParent_ofStyle_(selfCopy, v77, parentCopy, v41);
        }

        else if (objc_msgSend_isVariation(v41, v77, v78))
        {
          v81 = MEMORY[0x277D81150];
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v85, v82, v84, 1203, 0, "Adding a variant style without a parent to stylesheet.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87);
        }

        if (v14)
        {
          objc_msgSend_p_setIdentifier_ofStyle_(selfCopy, v79, v14, v41);
        }

        if (cCopy)
        {
          v88 = objc_msgSend_context(selfCopy, v79, v80);
          objc_msgSend_wasAddedToDocumentWithContext_(v41, v89, v88);
        }

        if ((objc_msgSend_isVariation(v41, v79, v80) & 1) == 0)
        {
          selfCopy->mBaseStyleSetUpdated = 1;
        }

        v92 = objc_msgSend_context(selfCopy, v90, v91);
        v95 = objc_msgSend_context(v41, v93, v94);

        if (v92 != v95)
        {
          v98 = MEMORY[0x277D81150];
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
          v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v102, v99, v101, 1220, 0, "style and stylesheet must have same context");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
        }

        v105 = objc_msgSend_context(selfCopy, v96, v97);

        if (v105)
        {
          mUUIDToStyleMap = selfCopy->mUUIDToStyleMap;
          v109 = objc_msgSend_objectUUID(v41, v106, v107);
          v111 = objc_msgSend_objectForKeyedSubscript_(mUUIDToStyleMap, v110, v109);

          if (v111)
          {
            v117 = objc_msgSend_objectUUID(v41, v112, v113);
            v118 = selfCopy->mUUIDToStyleMap;
            v121 = objc_msgSend_objectUUID(v41, v119, v120);
            v138 = objc_msgSend_objectForKeyedSubscript_(v118, v122, v121);
            TSUSetCrashReporterInfo();

            v123 = MEMORY[0x277D81150];
            v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]", "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1222, v41, v117, v138);
            v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
            v130 = objc_msgSend_objectUUID(v41, v128, v129);
            v131 = selfCopy->mUUIDToStyleMap;
            v134 = objc_msgSend_objectUUID(v41, v132, v133);
            v136 = objc_msgSend_objectForKeyedSubscript_(v131, v135, v134);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v137, v125, v127, 1222, 1, "adding a style %{public}@ with a duplicate UUID %{public}@; existing style with that UUID is %{public}@", v41, v130, v136);

            TSUCrashBreakpoint();
            abort();
          }

          v114 = selfCopy->mUUIDToStyleMap;
          v115 = objc_msgSend_objectUUID(v41, v112, v113);
          objc_msgSend_setObject_forKey_(v114, v116, v41, v115);
        }

        objc_sync_exit(selfCopy);

        goto LABEL_34;
      }
    }

    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    v52 = TSUObjectReferenceDescription();
    v53 = TSUObjectReferenceDescription();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v51, 1189, 0, "Adding style %{public}@ to stylesheet %{public}@ when style is already in a stylesheet.", v52, v53);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v55, v56);
    v59 = objc_msgSend_stylesheet(v41, v57, v58);

    if (v59 != selfCopy)
    {
      v60 = objc_msgSend_stylesheet(v41, v45, v47);
      objc_msgSend_removeStyle_(v60, v61, v41);
    }

    goto LABEL_13;
  }

LABEL_34:
  sub_276CBE6E4();
}

- (void)p_removeStyle:(id)style
{
  styleCopy = style;
  if (self->mIsLocked)
  {
    sub_276CE121C();
  }

  v77 = styleCopy;
  if (!styleCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStylesheet p_removeStyle:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1248, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    goto LABEL_21;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = v77;
  v8 = selfCopy;
  if (objc_msgSend_containsStyle_(v8, v9, v7))
  {
    v12 = objc_msgSend_stylesheet(v7, v10, v11);

    if (v12 == v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D81150];
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSSStylesheet p_removeStyle:]");
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v25 = TSUObjectReferenceDescription();
  v26 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v24, 1254, 0, "Removing style %{public}@ from stylesheet %{public}@ when style not in stylesheet.", v25, v26);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
LABEL_9:
  if (objc_msgSend_p_shouldDoDOLCForStyle_(v8, v13, v7))
  {
    v32 = objc_msgSend_context(v8, v30, v31);
    objc_msgSend_willBeRemovedFromDocumentWithContext_(v7, v33, v32);
  }

  v34 = objc_msgSend_parent(v7, v30, v31);

  if (v34)
  {
    objc_msgSend_p_setParent_ofStyle_(v8, v35, 0, v7);
  }

  v37 = objc_msgSend_styleIdentifier(v7, v35, v36);

  if (v37)
  {
    objc_msgSend_p_setIdentifier_ofStyle_(v8, v38, 0, v7);
  }

  if ((objc_msgSend_isVariation(v7, v38, v39) & 1) == 0)
  {
    v8->mBaseStyleSetUpdated = 1;
  }

  objc_msgSend_setStylesheet_(v7, v40, 0);
  objc_msgSend_removeObject_(v8->mStyles, v41, v7);
  v44 = objc_msgSend_context(v8, v42, v43);

  if (v44)
  {
    mUUIDToStyleMap = v8->mUUIDToStyleMap;
    v48 = objc_msgSend_objectUUID(v7, v45, v46);
    v50 = objc_msgSend_objectForKeyedSubscript_(mUUIDToStyleMap, v49, v48);

    v53 = v8->mUUIDToStyleMap;
    if (v50 != v7)
    {
      v56 = objc_msgSend_objectUUID(v7, v51, v52);
      v58 = objc_msgSend_objectForKeyedSubscript_(v53, v57, v56);
      v76 = objc_msgSend_objectUUID(v7, v59, v60);
      TSUSetCrashReporterInfo();

      v61 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSSStylesheet p_removeStyle:]", "[TSSStylesheet p_removeStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1283, v58, v76, v7);
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
      v66 = v8->mUUIDToStyleMap;
      v69 = objc_msgSend_objectUUID(v7, v67, v68);
      v71 = objc_msgSend_objectForKeyedSubscript_(v66, v70, v69);
      v74 = objc_msgSend_objectUUID(v7, v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v75, v63, v65, 1283, 1, "Surprising value %@ in mUUIDToStyleMap for %@, expected %@", v71, v74, v7);

      TSUCrashBreakpoint();
      abort();
    }

    v54 = objc_msgSend_objectUUID(v7, v51, v52);
    objc_msgSend_removeObjectForKey_(v53, v55, v54);
  }

  objc_sync_exit(v8);

LABEL_21:
}

- (void)p_setIdentifier:(id)identifier ofStyle:(id)style
{
  identifierCopy = identifier;
  styleCopy = style;
  v8 = styleCopy;
  if (self->mIsLocked)
  {
    sub_276CE13F0();
  }

  if (styleCopy)
  {
    if (!objc_msgSend_isEqual_(identifierCopy, v7, &stru_2885E7A20))
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v10 = v8;
      v11 = selfCopy;
      if (objc_msgSend_containsStyle_(v11, v12, v10))
      {
        v15 = objc_msgSend_stylesheet(v10, v13, v14);

        if (v15 == v11)
        {
          if (!identifierCopy)
          {
            goto LABEL_9;
          }

          v18 = objc_msgSend_styleWithIdentifier_(v11, v16, identifierCopy);
          v19 = v18;
          if (v18 == v10)
          {
LABEL_14:

            objc_sync_exit(v11);
            goto LABEL_16;
          }

          if (!v18)
          {
LABEL_9:
            v20 = objc_msgSend_styleIdentifier(v10, v16, v17);

            if (v20)
            {
              v23 = v11[8];
              v24 = objc_msgSend_styleIdentifier(v10, v21, v22);
              objc_msgSend_removeObjectForKey_(v23, v25, v24);
            }

            objc_msgSend_setStyleIdentifier_(v10, v21, identifierCopy);
            if (identifierCopy)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v11[8], v26, v10);
            }

            v19 = 0;
            goto LABEL_14;
          }

          v44 = TSUObjectReferenceDescription();
          v45 = TSUObjectReferenceDescription();
          v56 = TSUObjectReferenceDescription();
          TSUSetCrashReporterInfo();

          v46 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSSStylesheet p_setIdentifier:ofStyle:]", "[TSSStylesheet p_setIdentifier:ofStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1317, v44, v45, identifierCopy, v56);
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
          v51 = TSUObjectReferenceDescription();
          v52 = TSUObjectReferenceDescription();
          v53 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v54, v48, v50, 1317, 1, "Replacing %@ with %@ for identifier %@ in stylesheet %@.", v51, v52, identifierCopy, v53);

          TSUCrashBreakpoint();
LABEL_23:
          abort();
        }
      }

      else
      {
      }

      v35 = TSUObjectReferenceDescription();
      v55 = TSUObjectReferenceDescription();
      TSUSetCrashReporterInfo();

      v36 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSSStylesheet p_setIdentifier:ofStyle:]", "[TSSStylesheet p_setIdentifier:ofStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1304, v35, v55);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
      v41 = TSUObjectReferenceDescription();
      v42 = TSUObjectReferenceDescription();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v38, v40, 1304, 1, "Can't identify style %@ unless it is contained in stylesheet %@.", v41, v42);

      TSUCrashBreakpoint();
      goto LABEL_23;
    }

LABEL_20:
    sub_276CE131C();
  }

  v27 = MEMORY[0x277D81150];
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSStylesheet p_setIdentifier:ofStyle:]");
  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1293, 0, "invalid nil value for '%{public}s'", "style");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  if (objc_msgSend_isEqual_(identifierCopy, v34, &stru_2885E7A20))
  {
    goto LABEL_20;
  }

LABEL_16:
}

- (void)p_setParent:(id)parent ofStyle:(id)style
{
  parentCopy = parent;
  styleCopy = style;
  v8 = styleCopy;
  if (self->mIsLocked)
  {
    sub_276CE14F0();
  }

  if (!styleCopy)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSStylesheet p_setParent:ofStyle:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1341, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    goto LABEL_18;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = v8;
  v11 = selfCopy;
  if ((objc_msgSend_containsStyle_(v11, v12, v10) & 1) == 0)
  {

    goto LABEL_23;
  }

  v15 = objc_msgSend_stylesheet(v10, v13, v14);

  if (v15 != v11)
  {
LABEL_23:
    v41 = TSUObjectReferenceDescription();
    v56 = TSUObjectReferenceDescription();
    TSUSetCrashReporterInfo();

    v42 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSSStylesheet p_setParent:ofStyle:]", "[TSSStylesheet p_setParent:ofStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1347, v41, v56);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    v47 = TSUObjectReferenceDescription();
    v48 = TSUObjectReferenceDescription();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v44, v46, 1347, 1, "Can't set the parent of a style %@ unless it is contained in stylesheet %@.", v47, v48);

    TSUCrashBreakpoint();
    goto LABEL_26;
  }

  if (parentCopy)
  {
    v18 = parentCopy;
    v19 = v11;
    if (objc_msgSend_containsStyle_(v19, v20, v18))
    {
      v23 = objc_msgSend_stylesheet(v18, v21, v22);

      if (v23 == v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v31 = objc_msgSend_parent(v19, v16, v17);
    v32 = v18;
    v33 = v31;
    if (objc_msgSend_containsStyle_(v33, v34, v32))
    {
      v37 = objc_msgSend_stylesheet(v32, v35, v36);

      if (v37 == v33)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    TSUSetCrashReporterInfo();
    v50 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSSStylesheet p_setParent:ofStyle:]", "[TSSStylesheet p_setParent:ofStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1349);
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v52, v54, 1349, 1, "Can't set the parent of a style to a style in an unrelated stylesheet");

    TSUCrashBreakpoint();
LABEL_26:
    abort();
  }

LABEL_13:
  v38 = objc_msgSend_parent(v10, v16, v17);

  if (v38)
  {
    objc_msgSend_p_removeStyleFromParentChildren_(v11, v39, v10);
  }

  objc_msgSend_setParent_(v10, v39, parentCopy);
  if (parentCopy)
  {
    objc_msgSend_p_addStyleToParentChildren_(v11, v40, v10);
  }

  objc_sync_exit(v11);

LABEL_18:
}

- (void)p_addStyleToParentChildren:(id)children
{
  childrenCopy = children;
  v41 = childrenCopy;
  if (!childrenCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStylesheet p_addStyleToParentChildren:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1367, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    childrenCopy = 0;
  }

  v14 = objc_msgSend_parent(childrenCopy, v5, v6);

  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSSStylesheet p_addStyleToParentChildren:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1368, 0, "invalid nil value for '%{public}s'", "style.parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_stylesheet(v41, v15, v16);

  if (v24 != self)
  {
    sub_276CE15F0(v41, self);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mParentToChildrenStyleMap = selfCopy->mParentToChildrenStyleMap;
  v29 = objc_msgSend_parent(v41, v27, v28);
  v31 = objc_msgSend_objectForKeyedSubscript_(mParentToChildrenStyleMap, v30, v29);

  if (v31)
  {
    if (objc_msgSend_indexOfObjectIdenticalTo_(v31, v32, v41) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_addObject_(v31, v33, v41);
    }
  }

  else
  {
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_initWithObjects_(v34, v35, v41, 0);
    v36 = selfCopy->mParentToChildrenStyleMap;
    v39 = objc_msgSend_parent(v41, v37, v38);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v40, v31, v39);
  }

  objc_sync_exit(selfCopy);
}

- (void)p_removeStyleFromParentChildren:(id)children
{
  childrenCopy = children;
  v6 = objc_msgSend_parent(childrenCopy, v4, v5);

  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSSStylesheet p_removeStyleFromParentChildren:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1384, 0, "invalid nil value for '%{public}s'", "style.parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mParentToChildrenStyleMap = selfCopy->mParentToChildrenStyleMap;
  v19 = objc_msgSend_parent(childrenCopy, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(mParentToChildrenStyleMap, v20, v19);

  v24 = objc_msgSend_indexOfObjectIdenticalTo_(v21, v22, childrenCopy);
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_removeObjectAtIndex_(v21, v23, v24);
  }

  if (v21 && !objc_msgSend_count(v21, v23, v24))
  {
    v27 = selfCopy->mParentToChildrenStyleMap;
    v28 = objc_msgSend_parent(childrenCopy, v25, v26);
    objc_msgSend_removeObjectForKey_(v27, v29, v28);
  }

  objc_sync_exit(selfCopy);
}

- (id)pVariationOfStyle:(id)style propertyMap:(id)map matchStyles:(id)styles context:(id)context
{
  v83 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  mapCopy = map;
  stylesCopy = styles;
  contextCopy = context;
  if (!styleCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1410, 0, "invalid nil value for '%{public}s'", "style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (objc_msgSend_isVariation(styleCopy, v12, v13))
  {
    v23 = objc_msgSend_parent(styleCopy, v21, v22);
  }

  else
  {
    v23 = styleCopy;
  }

  v26 = v23;
  if (!v23)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1414, 0, "Cannot create a variation of variation style <%p> with no parent: %@", styleCopy, styleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  if (objc_msgSend_isVariation(v26, v24, v25))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSSStylesheet pVariationOfStyle:propertyMap:matchStyles:context:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 1415, 0, "Can't create variation with a variation base style <%p> baseStyle: %@ style: %@", v26, v26, styleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
  }

  if (!v26)
  {
    v26 = styleCopy;
  }

  v42 = objc_msgSend_newOverridePropertyMapWithPropertyMap_(styleCopy, v34, mapCopy);
  if (objc_msgSend_count(v42, v43, v44))
  {
    if (v42)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v47 = v26;
  v42 = 0;
  if (v47)
  {
LABEL_17:
    isVariation = v47;
    goto LABEL_44;
  }

LABEL_18:
  if (v26 != styleCopy)
  {
    v49 = objc_msgSend_stylesheet(styleCopy, v45, v46);
    v51 = v49;
    if (v49 == self)
    {
      IsEqualTo = objc_msgSend_overridePropertyMapIsEqualTo_(styleCopy, v50, v42);

      if (IsEqualTo)
      {
        v47 = styleCopy;
        if (styleCopy)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v55 = objc_msgSend_objectForKeyedSubscript_(selfCopy->mParentToChildrenStyleMap, v54, v26);
  v58 = objc_msgSend_count(v55, v56, v57);
  if (v58)
  {
    v60 = v58 - 1;
    while (1)
    {
      isVariation = objc_msgSend_objectAtIndexedSubscript_(v55, v59, v60);
      if (objc_msgSend_overridePropertyMapIsEqualTo_(isVariation, v61, v42))
      {
        break;
      }

      if (--v60 == -1)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_27:
    isVariation = 0;
  }

  objc_sync_exit(selfCopy);
  if (stylesCopy && !isVariation)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v62 = stylesCopy;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v78, v82, 16);
    if (v64)
    {
      isVariation = 0;
      v65 = *v79;
LABEL_32:
      v66 = 0;
      v67 = isVariation;
      while (1)
      {
        if (*v79 != v65)
        {
          objc_enumerationMutation(v62);
        }

        isVariation = *(*(&v78 + 1) + 8 * v66);

        if (objc_msgSend_overridePropertyMapIsEqualTo_(isVariation, v68, v42))
        {
          break;
        }

        ++v66;
        v67 = isVariation;
        if (v64 == v66)
        {
          v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v69, &v78, v82, 16);
          if (v64)
          {
            goto LABEL_32;
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      isVariation = 0;
    }
  }

  if (!isVariation)
  {
    v70 = objc_alloc(objc_opt_class());
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v70, v71, contextCopy, 0, v42, 1);
    objc_msgSend_setParent_(isVariation, v72, v26);
    if (stylesCopy)
    {
      objc_msgSend_addObject_(stylesCopy, v73, isVariation);
    }
  }

LABEL_44:

  v74 = *MEMORY[0x277D85DE8];

  return isVariation;
}

- (void)style:(id)style didChangeUUIDToValue:(id)value fromValue:(id)fromValue
{
  styleCopy = style;
  valueCopy = value;
  fromValueCopy = fromValue;
  v12 = objc_msgSend_documentRoot(self, v10, v11);
  v15 = objc_msgSend_stylesheet(v12, v13, v14);
  v18 = v15;
  if (v15 == self)
  {
  }

  else
  {
    v19 = objc_msgSend_documentRoot(self, v16, v17);
    v22 = objc_msgSend_stylesheet(v19, v20, v21);
    isAncestorOf = objc_msgSend_isAncestorOf_(self, v23, v22);

    if (!isAncestorOf)
    {
      goto LABEL_9;
    }
  }

  if (fromValueCopy)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(self->mUUIDToStyleMap, v25, fromValueCopy);

    if (v26 != styleCopy)
    {
      sub_276CE16A8();
    }

    objc_msgSend_removeObjectForKey_(self->mUUIDToStyleMap, styleCopy, fromValueCopy);
  }

  objc_msgSend_setObject_forKeyedSubscript_(self->mUUIDToStyleMap, v25, styleCopy, valueCopy);
LABEL_9:
}

- (id)unusedStyleIdentifierWithPackageString:(id)string styleDescriptor:(id)descriptor contentTag:(id)tag
{
  tagCopy = tag;
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v9;
    v9 = String(string, v10, descriptor);

    if (tagCopy)
    {
      v13 = String(v9, tagCopy);

      v9 = v13;
    }

    v14 = objc_msgSend_styleWithIdentifier_(self, v12, v9);
    ++v10;
  }

  while (v14);

  return v9;
}

- (TSSStylesheet)child
{
  WeakRetained = objc_loadWeakRetained(&self->mChild);

  return WeakRetained;
}

@end