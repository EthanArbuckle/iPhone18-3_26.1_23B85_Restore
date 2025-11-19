@interface TNTheme
- (void)bootstrapBlackHardCodedTheme;
- (void)bootstrapWhiteHardCodedTheme;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_initDefaultHardCodedStyles;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setTablePrototypes:(id)a3;
@end

@implementation TNTheme

- (void)setTablePrototypes:(id)a3
{
  if (self->mTablePrototypes != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    v5 = a3;

    self->mTablePrototypes = a3;
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

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  if (*(a3 + 6))
  {
    v4 = *(a3 + 6);
  }

  else
  {
    v4 = MEMORY[0x277D80BD8];
  }

  v5.receiver = self;
  v5.super_class = TNTheme;
  [(TSATheme *)&v5 loadFromArchive:v4 unarchiver:a4];
}

- (void)loadFromUnarchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(a3, v5, off_2812DAFE8[30]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v7, a3);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_275F17158;
  v4[3] = &unk_27A6A2C88;
  v4[5] = self;
  v4[6] = a3;
  v4[4] = a4;
  objc_msgSend_pushScopeForField_message_usingBlock_(a4, a2, 1, a3, v4);
}

- (void)saveToArchiver:(id)a3
{
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(a3, v5, sub_275F1725C, off_2812DAFE8[30]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v7, a3);
}

@end