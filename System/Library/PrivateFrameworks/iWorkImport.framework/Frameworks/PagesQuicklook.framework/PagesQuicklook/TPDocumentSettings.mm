@interface TPDocumentSettings
- (TPDocumentSettings)initWithContext:(id)context;
- (id)stringWithCurrentDate;
- (int64_t)basicFootnoteFormat;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetForNewDocumentFromTemplate:(id)template locale:(id)locale;
- (void)saveToArchiver:(id)archiver;
- (void)setAnnotationsVisible:(BOOL)visible;
- (void)setAutoHyphenation:(BOOL)hyphenation;
- (void)setBibliographyFormat:(id)format;
- (void)setCTBubblesVisibility:(int)visibility;
- (void)setChangeBarsVisible:(BOOL)visible;
- (void)setCopyMovies:(BOOL)movies;
- (void)setCopyTemplateAssets:(BOOL)assets;
- (void)setCreationDate:(id)date;
- (void)setCreationLocale:(id)locale;
- (void)setDecimalTab:(id)tab;
- (void)setDocumentIsRTL:(BOOL)l;
- (void)setFootnoteFormat:(int64_t)format;
- (void)setFootnoteGap:(int64_t)gap;
- (void)setFootnoteKind:(int64_t)kind;
- (void)setFootnoteNumbering:(int64_t)numbering;
- (void)setFormatChangesVisible:(BOOL)visible;
- (void)setHasBody:(BOOL)body;
- (void)setHasFacingPages:(BOOL)pages;
- (void)setHasFooters:(BOOL)footers;
- (void)setHasHeaders:(BOOL)headers;
- (void)setHyperlinksEnabled:(BOOL)enabled;
- (void)setHyphenationLanguage:(id)language;
- (void)setLanguage:(id)language;
- (void)setOriginalTemplate:(id)template;
- (void)setPlaceholderAuthoring:(BOOL)authoring;
- (void)setQuickLookPreview:(BOOL)preview;
- (void)setSectionAuthoring:(BOOL)authoring;
- (void)setShowCTDeletions:(BOOL)deletions;
- (void)setShowCTMarkup:(BOOL)markup;
- (void)setTocLinksEnabled:(BOOL)enabled;
- (void)setUseLigatures:(BOOL)ligatures;
@end

@implementation TPDocumentSettings

- (void)setHasHeaders:(BOOL)headers
{
  if (self->_hasHeaders != headers)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_hasHeaders = headers;
  }
}

- (void)setHasFooters:(BOOL)footers
{
  if (self->_hasFooters != footers)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_hasFooters = footers;
  }
}

- (void)setHasFacingPages:(BOOL)pages
{
  if (self->_hasFacingPages != pages)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_hasFacingPages = pages;
  }
}

- (void)setQuickLookPreview:(BOOL)preview
{
  if (self->_qlPreview != preview)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_qlPreview = preview;
  }
}

- (void)setCopyMovies:(BOOL)movies
{
  if (self->_copyMovies != movies)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_copyMovies = movies;
  }
}

- (void)setCopyTemplateAssets:(BOOL)assets
{
  if (self->_copyAssets != assets)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_copyAssets = assets;
  }
}

- (void)setPlaceholderAuthoring:(BOOL)authoring
{
  if (self->_placeholderAuthoring != authoring)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_placeholderAuthoring = authoring;
  }
}

- (void)setHyperlinksEnabled:(BOOL)enabled
{
  if (self->_linksEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_linksEnabled = enabled;
  }
}

- (void)setAutoHyphenation:(BOOL)hyphenation
{
  if (self->_hyphenation != hyphenation)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_hyphenation = hyphenation;
  }
}

- (void)setUseLigatures:(BOOL)ligatures
{
  if (self->_ligatures != ligatures)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_ligatures = ligatures;
  }
}

- (void)setTocLinksEnabled:(BOOL)enabled
{
  if (self->_tocLinksEnabled != enabled)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_tocLinksEnabled = enabled;
  }
}

- (void)setShowCTMarkup:(BOOL)markup
{
  if (self->_showCTMarkup != markup)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_showCTMarkup = markup;
  }
}

- (void)setShowCTDeletions:(BOOL)deletions
{
  if (self->_showCTDeletions != deletions)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_showCTDeletions = deletions;
  }
}

- (void)setCTBubblesVisibility:(int)visibility
{
  if (self->_ctBubblesVisibility != visibility)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_ctBubblesVisibility = visibility;
  }
}

- (void)setChangeBarsVisible:(BOOL)visible
{
  if (self->_changeBarsVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_changeBarsVisible = visible;
  }
}

- (void)setFormatChangesVisible:(BOOL)visible
{
  if (self->_formatChangesVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_formatChangesVisible = visible;
  }
}

- (void)setAnnotationsVisible:(BOOL)visible
{
  if (self->_annotationsVisible != visible)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_annotationsVisible = visible;
  }
}

- (void)setDocumentIsRTL:(BOOL)l
{
  if (self->_documentIsRTL != l)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_documentIsRTL = l;
  }
}

- (void)setSectionAuthoring:(BOOL)authoring
{
  if (self->_sectionAuthoring != authoring)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_sectionAuthoring = authoring;
  }
}

- (void)setFootnoteKind:(int64_t)kind
{
  if (self->_footnoteKind != kind)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_footnoteKind = kind;
  }
}

- (void)setFootnoteFormat:(int64_t)format
{
  if (self->_footnoteFormat != format)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_footnoteFormat = format;
  }
}

- (void)setFootnoteNumbering:(int64_t)numbering
{
  if (self->_footnoteNumbering != numbering)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_footnoteNumbering = numbering;
  }
}

- (void)setFootnoteGap:(int64_t)gap
{
  if (self->_footnoteGap != gap)
  {
    objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
    self->_footnoteGap = gap;
  }
}

- (void)setDecimalTab:(id)tab
{
  tabCopy = tab;
  if (self->_decimalTab != tabCopy)
  {
    v15 = tabCopy;
    objc_msgSend_willModify(self, tabCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_decimalTab, v14);
    tabCopy = v14;
  }
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  if (self->_language != languageCopy)
  {
    v15 = languageCopy;
    objc_msgSend_willModify(self, languageCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_language, v14);
    languageCopy = v14;
  }
}

- (void)setHyphenationLanguage:(id)language
{
  languageCopy = language;
  if (self->_hyphenationLanguage != languageCopy)
  {
    v15 = languageCopy;
    objc_msgSend_willModify(self, languageCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_hyphenationLanguage, v14);
    languageCopy = v14;
  }
}

- (void)setCreationLocale:(id)locale
{
  localeCopy = locale;
  if (self->_creationLocale != localeCopy)
  {
    v15 = localeCopy;
    objc_msgSend_willModify(self, localeCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_creationLocale, v14);
    localeCopy = v14;
  }
}

- (void)setOriginalTemplate:(id)template
{
  templateCopy = template;
  if (self->_originalTemplate != templateCopy)
  {
    v15 = templateCopy;
    objc_msgSend_willModify(self, templateCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_originalTemplate, v14);
    templateCopy = v14;
  }
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  if (self->_creationDate != dateCopy)
  {
    v15 = dateCopy;
    objc_msgSend_willModify(self, dateCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_creationDate, v14);
    dateCopy = v14;
  }
}

- (void)setBibliographyFormat:(id)format
{
  formatCopy = format;
  if (self->_bibliographyFormat != formatCopy)
  {
    v15 = formatCopy;
    objc_msgSend_willModify(self, formatCopy, v5, v6, v7, v8);
    v14 = objc_msgSend_copy(v15, v9, v10, v11, v12, v13);

    objc_storeStrong(&self->_bibliographyFormat, v14);
    formatCopy = v14;
  }
}

- (int64_t)basicFootnoteFormat
{
  if (self->_footnoteFormat == 5)
  {
    return 0;
  }

  else
  {
    return self->_footnoteFormat;
  }
}

- (void)setHasBody:(BOOL)body
{
  objc_msgSend_willModify(self, a2, v3, v4, v5, v6);
  self->_hasBody = body;
  v25 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10, v11, v12, v13);
  v19 = objc_msgSend_documentRoot(self, v14, v15, v16, v17, v18);
  objc_msgSend_postNotificationName_object_(v25, v20, v21, v22, v23, v24, @"TPHasBodyChanged", v19);
}

- (TPDocumentSettings)initWithContext:(id)context
{
  contextCopy = context;
  v64.receiver = self;
  v64.super_class = TPDocumentSettings;
  v5 = [(TPDocumentSettings *)&v64 initWithContext:contextCopy];
  v11 = v5;
  if (v5)
  {
    v5->_hasBody = 1;
    v5->_hasHeaders = 1;
    v5->_hasFooters = 1;
    v5->_hasFacingPages = 0;
    v5->_qlPreview = 1;
    v5->_copyMovies = 1;
    v5->_copyAssets = 1;
    v5->_placeholderAuthoring = 0;
    v5->_sectionAuthoring = 0;
    v5->_linksEnabled = 1;
    v5->_hyphenation = 0;
    v5->_ligatures = 0;
    v5->_showCTMarkup = 1;
    v5->_showCTDeletions = 1;
    v5->_ctBubblesVisibility = 0;
    v5->_changeBarsVisible = 1;
    v5->_formatChangesVisible = 1;
    v5->_annotationsVisible = 1;
    v5->_footnoteKind = 0;
    v5->_footnoteFormat = 0;
    v5->_footnoteNumbering = 0;
    v5->_footnoteGap = 10;
    v12 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v6, v7, v8, v9, v10);
    v18 = v12;
    if (v12)
    {
      v19 = objc_msgSend_decimalSeparator(v12, v13, v14, v15, v16, v17);
      objc_msgSend_setDecimalTab_(v11, v20, v21, v22, v23, v24, v19);

      v30 = objc_msgSend_languageCode(v18, v25, v26, v27, v28, v29);
      objc_msgSend_setLanguage_(v11, v31, v32, v33, v34, v35, v30);

      objc_msgSend_setHyphenationLanguage_(v11, v36, v37, v38, v39, v40, &stru_288501738);
      v46 = objc_msgSend_localeIdentifier(v18, v41, v42, v43, v44, v45);
      objc_msgSend_setCreationLocale_(v11, v47, v48, v49, v50, v51, v46);
    }

    v57 = objc_msgSend_stringWithCurrentDate(v11, v52, v53, v54, v55, v56);
    objc_msgSend_setCreationDate_(v11, v58, v59, v60, v61, v62, v57);
  }

  return v11;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, v8, off_2812F85B8[4]);

  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v10, v11, v12, v13, v14))
  {
    objc_msgSend_willModifyForUpgrade(self, v15, v16, v17, v18, v19);
    v20 = 1;
  }

  else
  {
    v20 = *(v9 + 120);
  }

  self->_hasBody = v20;
  self->_hasHeaders = *(v9 + 121);
  self->_hasFooters = *(v9 + 122);
  v21 = *(v9 + 16);
  if ((v21 & 0x8000) != 0)
  {
    v22 = *(v9 + 101);
  }

  else
  {
    v22 = 0;
  }

  self->_hasFacingPages = v22;
  self->_qlPreview = *(v9 + 123);
  self->_copyMovies = *(v9 + 124);
  self->_copyAssets = *(v9 + 125);
  self->_placeholderAuthoring = *(v9 + 88);
  self->_sectionAuthoring = *(v9 + 102);
  self->_linksEnabled = *(v9 + 126);
  self->_hyphenation = *(v9 + 89);
  self->_ligatures = *(v9 + 90);
  self->_tocLinksEnabled = *(v9 + 91);
  self->_documentIsRTL = *(v9 + 100);
  if (v21 < 0)
  {
    v23 = *(v9 + 127);
  }

  else
  {
    v23 = 1;
  }

  self->_showCTMarkup = v23 & 1;
  if ((v21 & 0x100000) != 0)
  {
    v24 = *(v9 + 116);
  }

  else
  {
    v24 = 1;
  }

  self->_showCTDeletions = v24 & 1;
  if ((v21 & 0x1000) != 0)
  {
    v25 = *(v9 + 92);
  }

  else
  {
    v25 = 0;
  }

  self->_ctBubblesVisibility = v25;
  v26 = *(v9 + 16);
  if ((v26 & 0x200000) != 0)
  {
    v27 = *(v9 + 117);
  }

  else
  {
    v27 = 1;
  }

  self->_changeBarsVisible = v27 & 1;
  if ((v26 & 0x400000) != 0)
  {
    v28 = *(v9 + 118);
  }

  else
  {
    v28 = 1;
  }

  self->_formatChangesVisible = v28 & 1;
  if ((v26 & 0x800000) != 0)
  {
    v29 = *(v9 + 119);
    self->_annotationsVisible = v29;
    if ((v29 & 1) == 0)
    {
      objc_msgSend_willModifyForUpgradeWithOptions_(self, v15, v16, v17, v18, v19, 2);
      self->_annotationsVisible = 1;
      v26 = *(v9 + 16);
    }
  }

  else
  {
    self->_annotationsVisible = 1;
  }

  self->_footnoteKind = *(v9 + 96);
  v30 = *(v9 + 108);
  self->_footnoteFormat = *(v9 + 104);
  self->_footnoteNumbering = v30;
  if ((v26 & 0x80000) != 0)
  {
    v31 = *(v9 + 112);
  }

  else
  {
    v31 = 10;
  }

  self->_footnoteGap = v31;
  decimalTab = self->_decimalTab;
  self->_decimalTab = 0;

  if (*(v9 + 16))
  {
    v33 = objc_alloc(MEMORY[0x277CCACA8]);
    v39 = objc_msgSend_tsp_initWithProtobufString_(v33, v34, v35, v36, v37, v38, *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v40 = self->_decimalTab;
    self->_decimalTab = v39;
  }

  language = self->_language;
  self->_language = 0;

  if ((*(v9 + 16) & 2) != 0)
  {
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v48 = objc_msgSend_tsp_initWithProtobufString_(v42, v43, v44, v45, v46, v47, *(v9 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v49 = self->_language;
    self->_language = v48;
  }

  hyphenationLanguage = self->_hyphenationLanguage;
  self->_hyphenationLanguage = 0;

  if ((*(v9 + 16) & 4) != 0)
  {
    v62 = objc_alloc(MEMORY[0x277CCACA8]);
    v61 = objc_msgSend_tsp_initWithProtobufString_(v62, v63, v64, v65, v66, v67, *(v9 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if (!self->_language)
    {
      goto LABEL_38;
    }

    objc_msgSend_willModifyForUpgrade(self, v51, v52, v53, v54, v55);
    v61 = objc_msgSend_copy(self->_language, v56, v57, v58, v59, v60);
  }

  v68 = self->_hyphenationLanguage;
  self->_hyphenationLanguage = v61;

LABEL_38:
  creationLocale = self->_creationLocale;
  self->_creationLocale = 0;

  if ((*(v9 + 16) & 8) != 0)
  {
    v70 = objc_alloc(MEMORY[0x277CCACA8]);
    v76 = objc_msgSend_tsp_initWithProtobufString_(v70, v71, v72, v73, v74, v75, *(v9 + 48) & 0xFFFFFFFFFFFFFFFELL);
    v77 = self->_creationLocale;
    self->_creationLocale = v76;
  }

  originalTemplate = self->_originalTemplate;
  self->_originalTemplate = 0;

  if ((*(v9 + 16) & 0x20) != 0)
  {
    v79 = objc_alloc(MEMORY[0x277CCACA8]);
    v85 = objc_msgSend_tsp_initWithProtobufString_(v79, v80, v81, v82, v83, v84, *(v9 + 64) & 0xFFFFFFFFFFFFFFFELL);
    v86 = self->_originalTemplate;
    self->_originalTemplate = v85;
  }

  creationDate = self->_creationDate;
  self->_creationDate = 0;

  if ((*(v9 + 16) & 0x40) != 0)
  {
    v88 = objc_alloc(MEMORY[0x277CCACA8]);
    v94 = objc_msgSend_tsp_initWithProtobufString_(v88, v89, v90, v91, v92, v93, *(v9 + 72) & 0xFFFFFFFFFFFFFFFELL);
    v95 = self->_creationDate;
    self->_creationDate = v94;
  }

  bibliographyFormat = self->_bibliographyFormat;
  self->_bibliographyFormat = 0;

  if ((*(v9 + 16) & 0x80) != 0)
  {
    v97 = objc_alloc(MEMORY[0x277CCACA8]);
    v103 = objc_msgSend_tsp_initWithProtobufString_(v97, v98, v99, v100, v101, v102, *(v9 + 80) & 0xFFFFFFFFFFFFFFFELL);
    v104 = self->_bibliographyFormat;
    self->_bibliographyFormat = v103;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v6, v7, v8, v9, sub_276002C30, off_2812F85B8[4]);

  v11 = *(v10 + 16);
  *(v10 + 120) = self->_hasBody;
  *(v10 + 121) = self->_hasHeaders;
  hasFooters = self->_hasFooters;
  *(v10 + 16) = v11 | 0x7000000;
  *(v10 + 122) = hasFooters;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v13, v14, v15, v16, v17, 34, v10);
  *(v10 + 101) = self->_hasFacingPages;
  *(v10 + 123) = self->_qlPreview;
  *(v10 + 124) = self->_copyMovies;
  *(v10 + 125) = self->_copyAssets;
  *(v10 + 88) = self->_placeholderAuthoring;
  *(v10 + 102) = self->_sectionAuthoring;
  *(v10 + 126) = self->_linksEnabled;
  *(v10 + 89) = self->_hyphenation;
  *(v10 + 90) = self->_ligatures;
  v23 = *(v10 + 16);
  *(v10 + 91) = self->_tocLinksEnabled;
  *(v10 + 100) = self->_documentIsRTL;
  *(v10 + 127) = self->_showCTMarkup;
  showCTDeletions = self->_showCTDeletions;
  v23 |= 0xF811CF00;
  *(v10 + 16) = v23;
  *(v10 + 116) = showCTDeletions;
  *(v10 + 92) = self->_ctBubblesVisibility;
  *(v10 + 117) = self->_changeBarsVisible;
  *(v10 + 118) = self->_formatChangesVisible;
  *(v10 + 119) = self->_annotationsVisible;
  *(v10 + 96) = self->_footnoteKind;
  *(v10 + 104) = self->_footnoteFormat;
  footnoteNumbering = self->_footnoteNumbering;
  *(v10 + 16) = v23 | 0xE63000;
  *(v10 + 108) = footnoteNumbering;
  footnoteGap = self->_footnoteGap;
  if (footnoteGap >= 0x80000000)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPDocumentSettings saveToArchiver:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v49, v50, v51, v52, v53, v42, v48, 378, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57, v58);
    LODWORD(footnoteGap) = 0x7FFFFFFF;
  }

  else if (footnoteGap <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPDocumentSettings saveToArchiver:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentSettings.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v67, v68, v69, v70, v71, v60, v66, 378, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75, v76);
    LODWORD(footnoteGap) = 0x80000000;
  }

  *(v10 + 16) |= 0x80000u;
  *(v10 + 112) = footnoteGap;
  decimalTab = self->_decimalTab;
  if (decimalTab)
  {
    v28 = objc_msgSend_UTF8String(decimalTab, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 1u;
    sub_275FBA9EC(__p, v28);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  language = self->_language;
  if (language)
  {
    v30 = objc_msgSend_UTF8String(language, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 2u;
    sub_275FBA9EC(__p, v30);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  hyphenationLanguage = self->_hyphenationLanguage;
  if (hyphenationLanguage)
  {
    v32 = objc_msgSend_UTF8String(hyphenationLanguage, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 4u;
    sub_275FBA9EC(__p, v32);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  creationLocale = self->_creationLocale;
  if (creationLocale)
  {
    v34 = objc_msgSend_UTF8String(creationLocale, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 8u;
    sub_275FBA9EC(__p, v34);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  originalTemplate = self->_originalTemplate;
  if (originalTemplate)
  {
    v36 = objc_msgSend_UTF8String(originalTemplate, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 0x20u;
    sub_275FBA9EC(__p, v36);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    v38 = objc_msgSend_UTF8String(creationDate, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 0x40u;
    sub_275FBA9EC(__p, v38);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }

  bibliographyFormat = self->_bibliographyFormat;
  if (bibliographyFormat)
  {
    v40 = objc_msgSend_UTF8String(bibliographyFormat, v18, v19, v20, v21, v22);
    *(v10 + 16) |= 0x80u;
    sub_275FBA9EC(__p, v40);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v78 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)resetForNewDocumentFromTemplate:(id)template locale:(id)locale
{
  templateCopy = template;
  localeCopy = locale;
  objc_msgSend_setOriginalTemplate_(self, v7, v8, v9, v10, v11, templateCopy);
  v17 = objc_msgSend_stringWithCurrentDate(self, v12, v13, v14, v15, v16);
  objc_msgSend_setCreationDate_(self, v18, v19, v20, v21, v22, v17);

  objc_msgSend_setPlaceholderAuthoring_(self, v23, v24, v25, v26, v27, 0);
  objc_msgSend_setHyperlinksEnabled_(self, v28, v29, v30, v31, v32, 1);
  objc_msgSend_setQuickLookPreview_(self, v33, v34, v35, v36, v37, 1);
  objc_msgSend_setCopyMovies_(self, v38, v39, v40, v41, v42, 1);
  objc_msgSend_setCopyTemplateAssets_(self, v43, v44, v45, v46, v47, 1);
  objc_msgSend_setFootnoteFormat_(self, v48, v49, v50, v51, v52, 0);
  if (localeCopy)
  {
    v58 = objc_alloc(MEMORY[0x277D81228]);
    v64 = objc_msgSend_initWithLocale_(v58, v59, v60, v61, v62, v63, localeCopy);
  }

  else
  {
    v64 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v53, v54, v55, v56, v57);
  }

  v70 = v64;
  if (v64)
  {
    v72 = objc_msgSend_decimalSeparator(v64, v65, v66, v67, v68, v69);
    if (v72)
    {
      objc_msgSend_setDecimalTab_(self, v71, v73, v74, v75, v76, v72);
    }

    v82 = objc_msgSend_languageCode(v70, v77, v78, v79, v80, v81);
    objc_msgSend_setLanguage_(self, v83, v84, v85, v86, v87, v82);

    v93 = objc_msgSend_languageCode(v70, v88, v89, v90, v91, v92);
    v94 = TSUHasBiDiLanguage();
    objc_msgSend_setDocumentIsRTL_(self, v95, v96, v97, v98, v99, v94);

    v106 = objc_msgSend_localeIdentifier(v70, v100, v101, v102, v103, v104);
    if (v106)
    {
      objc_msgSend_setCreationLocale_(self, v105, v107, v108, v109, v110, v106);
    }

    v116 = objc_msgSend_locale(v70, v111, v112, v113, v114, v115);
    v117 = TSWPNumberTypeForLocale();

    if (v117 == 1)
    {
      objc_msgSend_setFootnoteFormat_(self, v118, v119, v120, v121, v122, 5);
    }
  }
}

- (id)stringWithCurrentDate
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v9 = objc_msgSend_localTimeZone(MEMORY[0x277CBEBB0], v4, v5, v6, v7, v8);
  objc_msgSend_setTimeZone_(v3, v10, v11, v12, v13, v14, v9);

  objc_msgSend_setDateFormat_(v3, v15, v16, v17, v18, v19, @"yyyy-MM-dd'T'HH:mm:ssZ");
  v25 = objc_msgSend_stringFromDate_(v3, v20, v21, v22, v23, v24, v2);

  return v25;
}

@end