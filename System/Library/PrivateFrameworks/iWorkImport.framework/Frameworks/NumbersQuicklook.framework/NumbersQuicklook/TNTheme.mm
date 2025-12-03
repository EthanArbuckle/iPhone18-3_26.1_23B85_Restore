@interface TNTheme
- (void)bootstrapBlackHardCodedTheme;
- (void)bootstrapWhiteHardCodedTheme;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_initDefaultHardCodedStyles;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setTablePrototypes:(id)prototypes;
@end

@implementation TNTheme

- (void)setTablePrototypes:(id)prototypes
{
  if (self->mTablePrototypes != prototypes)
  {
    objc_msgSend_willModify(self, a2, prototypes);
    prototypesCopy = prototypes;

    self->mTablePrototypes = prototypes;
  }
}

- (void)p_initDefaultHardCodedStyles
{
  TSWPShapePackageStringForPresetKind();
  objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v3, v4);
  v5 = String();
  v8 = objc_msgSend_documentStylesheet(self, v6, v7);
  v10 = objc_msgSend_styleWithIdentifier_(v8, v9, v5);
  LODWORD(v11) = 24.0;
  objc_msgSend_setFloatValue_forProperty_(v10, v12, 17, v11);
  objc_msgSend_setValue_forProperty_(v10, v13, @"Helvetica", 16);
  objc_opt_class();
  objc_msgSend_documentRoot(self, v14, v15);
  v16 = TSUDynamicCast();
  v20 = objc_msgSend_documentStylesheet(self, v17, v18);

  objc_msgSend_upgradeStylesheetForSheetStyles_(v16, v19, v20);
}

- (void)bootstrapWhiteHardCodedTheme
{
  objc_msgSend_p_initDefaultHardCodedStyles(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_bootstrapThemeAlternate_, 3);
}

- (void)bootstrapBlackHardCodedTheme
{
  objc_msgSend_p_initDefaultHardCodedStyles(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_bootstrapThemeAlternate_, 4);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  if (*(archive + 6))
  {
    v4 = *(archive + 6);
  }

  else
  {
    v4 = MEMORY[0x277D80BD8];
  }

  v5.receiver = self;
  v5.super_class = TNTheme;
  [(TSATheme *)&v5 loadFromArchive:v4 unarchiver:unarchiver];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiver, v5, off_2812DAFE8[30]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v7, unarchiver);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_275F17158;
  v4[3] = &unk_27A6A2C88;
  v4[5] = self;
  v4[6] = archive;
  v4[4] = archiver;
  objc_msgSend_pushScopeForField_message_usingBlock_(archiver, a2, 1, archive, v4);
}

- (void)saveToArchiver:(id)archiver
{
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiver, v5, sub_275F1725C, off_2812DAFE8[30]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v7, archiver);
}

@end