@interface KNAppDelegateBase
+ (KNAppPropertiesProvider)kn_sharedPropertiesProvider;
- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste;
- (KNAppDelegateBase)init;
- (id)createCompatibilityDelegate;
- (id)universalPreviewImageNameForDocumentType:(id)type;
- (void)registerAllowedElementKinds;
- (void)registerClassTypeMappings;
- (void)registerDrawableInfoClassMapping;
- (void)registerSOSClassTypeMappings;
@end

@implementation KNAppDelegateBase

- (KNAppDelegateBase)init
{
  v32.receiver = self;
  v32.super_class = KNAppDelegateBase;
  v2 = [(TSABaseApplicationDelegate *)&v32 init];
  if (v2)
  {
    v3 = objc_opt_class();
    objc_msgSend_resetSharedConfigurations(v3, v4, v5);
    objc_msgSend_registerClassTypeMappings(v2, v6, v7);
    objc_msgSend_registerSOSClassTypeMappings(v2, v8, v9);
    objc_msgSend_registerAllowedElementKinds(v2, v10, v11);
    v14 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], v12, v13);
    objc_msgSend_setSupportsContainedTextEditing_(v14, v15, 1);
    objc_msgSend_setSupportsControlCells_(v14, v16, 0);
    objc_msgSend_setHasLargerFonts_(v14, v17, 1);
    objc_msgSend_setMaxNumberOfRows_(v14, v18, 999);
    objc_msgSend_setMaxNumberOfColumns_(v14, v19, 65);
    objc_msgSend_setShowsHideUnhideUI_(v14, v20, 0);
    objc_msgSend_setExportPermanentHidingState_(v14, v21, 1);
    objc_msgSend_setPasteFilterHidingAsUserHiding_(v14, v22, 1);
    objc_msgSend_setAllowsFullyFilteredTables_(v14, v23, 0);
    objc_msgSend_setCellEditorsCanScrollToNonLocalTableSelection_(v14, v24, 0);
    objc_msgSend_setSupportsPlaceholderGeometry_(v14, v25, 1);
    objc_msgSend_setStructuredTextImportConfidenceThresholdForCanvas_(v14, v26, v27, 0.75);
    objc_msgSend_setSupportsDynamicallyHidingRowColumnForDragDrop_(v14, v28, 1);
    objc_msgSend_setSupportsHDRRendering_(v14, v29, 1);
    v30 = v2;
  }

  return v2;
}

+ (KNAppPropertiesProvider)kn_sharedPropertiesProvider
{
  objc_opt_class();
  v5 = objc_msgSend_sharedPropertiesProvider(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (id)createCompatibilityDelegate
{
  v2 = objc_alloc_init(KNQuicklookCompatibilityDelegate);

  return v2;
}

- (void)registerDrawableInfoClassMapping
{
  v5.receiver = self;
  v5.super_class = KNAppDelegateBase;
  [(TSABaseApplicationDelegate *)&v5 registerDrawableInfoClassMapping];
  v2 = MEMORY[0x277D80220];
  v3 = objc_opt_class();
  objc_msgSend_registerClassForUnarchiving_(v2, v4, v3);
}

- (id)universalPreviewImageNameForDocumentType:(id)type
{
  v19[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v19[0] = @"com.apple.iwork.keynote.kth";
  v19[1] = @"com.apple.iwork.keynote.sffkth";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v19, 2);
  v7 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v6, v5);

  if (v7)
  {
    v8 = @"doc_manager_template";
  }

  else
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend_kn_sharedPropertiesProvider(v9, v10, v11);
    v15 = objc_msgSend_powerPointDocumentTypes(v12, v13, v14);
    v17 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v16, v15);

    if (v17)
    {
      v8 = @"doc_manager_keynote_ppt_landscape";
    }

    else
    {
      v8 = @"doc_manager_keynote_classic_landscape";
    }
  }

  return v8;
}

- (void)registerSOSClassTypeMappings
{
  v2.receiver = self;
  v2.super_class = KNAppDelegateBase;
  [(TSABaseApplicationDelegate *)&v2 registerSOSClassTypeMappings];
}

- (void)registerClassTypeMappings
{
  v5 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], a2, v2);
  sub_275DAB56C(v5, v5);

  v6 = objc_msgSend_sharedRegistry(MEMORY[0x277D80AB0], v3, v4);
  sub_275DABB70(v6, v6);
}

- (void)registerAllowedElementKinds
{
  for (i = 0; i != 9; ++i)
  {
    if (i != 6)
    {
      if (i == 4)
      {
        objc_msgSend_setDisallowedElementKinds_forStorageKind_(MEMORY[0x277D80F28], a2, 785903, 4);
        objc_msgSend_setDisallowedSmartFieldKinds_forStorageKind_(MEMORY[0x277D80F28], v4, 2437, 4);
      }

      else if (i == 3)
      {
        objc_msgSend_setDisallowedElementKinds_forStorageKind_(MEMORY[0x277D80F28], a2, 708044, 3);
        objc_msgSend_setDisallowedSmartFieldKinds_forStorageKind_(MEMORY[0x277D80F28], v3, 133, 3);
      }

      else
      {
        objc_msgSend_setDisallowedElementKinds_forStorageKind_(MEMORY[0x277D80F28], a2, 785903, i);
        objc_msgSend_setDisallowedSmartFieldKinds_forStorageKind_(MEMORY[0x277D80F28], v5, 133, i);
      }
    }
  }
}

- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste
{
  pasteCopy = paste;
  hyperlinkCopy = hyperlink;
  rootCopy = root;
  v13.receiver = self;
  v13.super_class = KNAppDelegateBase;
  if ([(TSWPApplicationDelegate *)&v13 isValidURLForImportedHyperlink:hyperlinkCopy targetDocumentRoot:rootCopy forCrossDocumentPaste:pasteCopy])
  {
    v11 = 1;
  }

  else
  {
    v11 = objc_msgSend_URLContainsKeynoteSpecificHyperlink_(KNHyperlinkController, v10, hyperlinkCopy);
  }

  return v11;
}

@end