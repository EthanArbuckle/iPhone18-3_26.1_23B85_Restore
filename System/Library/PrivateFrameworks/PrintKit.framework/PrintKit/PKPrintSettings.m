@interface PKPrintSettings
+ (id)default;
+ (id)photo;
- (BOOL)isEqual:(id)a3;
- (NSArray)pageRanges;
- (PKPrintSettings)init;
- (PKPrintSettings)initWithCoder:(id)a3;
- (PKPrintSettings)initWithPaper:(id)a3;
- (PKPrintSettings)initWithSettings:(id)a3;
- (PKPrintSettings)initWithUserCodableDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)keyedNameToVisitName:(id)a3;
- (id)objectForKey:(id)a3;
- (id)userCodableDictionary;
- (unint64_t)hash;
- (void)_setupDefaults;
- (void)encodeWithCoder:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setFromUserCodableDictionary:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPageRanges:(id)a3;
- (void)visitProperties:(Visitor *)a3;
@end

@implementation PKPrintSettings

- (void)_setupDefaults
{
  v3 = +[PKPaper genericLetterPaper];
  paper = self->_paper;
  self->_paper = v3;

  self->_copies = 1;
  orientation = self->_orientation;
  self->_orientation = 0;

  objc_storeStrong(&self->_printQuality, @"3");
}

- (PKPrintSettings)init
{
  v5.receiver = self;
  v5.super_class = PKPrintSettings;
  v2 = [(PKPrintSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKPrintSettings *)v2 _setupDefaults];
  }

  return v3;
}

- (PKPrintSettings)initWithPaper:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPrintSettings;
  v5 = [(PKPrintSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPrintSettings *)v5 _setupDefaults];
    [(PKPrintSettings *)v6 setPaper:v4];
  }

  return v6;
}

- (PKPrintSettings)initWithSettings:(id)a3
{
  v4 = [a3 userCodableDictionary];
  if (v4)
  {
    self = [(PKPrintSettings *)self initWithUserCodableDictionary:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSettings:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:2 forKey:@"version"];
  EncodeVisitor::visitProperties(self, v4);
}

- (PKPrintSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPrintSettings;
  v5 = [(PKPrintSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPrintSettings *)v5 _setupDefaults];
    if ([v4 decodeIntForKey:@"version"] != 2)
    {
      __assert_rtn("[PKPrintSettings initWithCoder:]", "PKPrintSettings.m", 75, "[coder decodeIntForKey:@version] == 2");
    }

    DecodeVisitor::visitProperties(v6, v4);
  }

  return v6;
}

+ (id)default
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)photo
{
  v2 = [PKPrintSettings alloc];
  v3 = +[PKPaper generic4x6Paper];
  v4 = [(PKPrintSettings *)v2 initWithPaper:v3];

  [(PKPrintSettings *)v4 setObject:@"5" forKey:@"print-quality"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__PKPrintSettings_isEqual___block_invoke;
    v7[3] = &unk_279A92530;
    v7[4] = &v8;
    CompareVisitor::visitProperties(self, v4, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __27__PKPrintSettings_isEqual___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 200))(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)hash
{
  v2 = [(PKPrintSettings *)self userCodableDictionary];
  v3 = [v2 hash];

  return v3;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PKPrintSettings_userCodableDictionary__block_invoke;
  v6[3] = &unk_279A92468;
  v4 = v3;
  v7 = v4;
  UserCodedSerializationVisitor::visitProperties(self, v6);

  return v4;
}

void __40__PKPrintSettings_userCodableDictionary__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = v8;
  if (*a5)
  {
    v10 = (*(v8 + 2))(v8);
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v11];
  }
}

- (PKPrintSettings)initWithUserCodableDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPrintSettings;
  v5 = [(PKPrintSettings *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPrintSettings *)v5 _setupDefaults];
    [(PKPrintSettings *)v6 setFromUserCodableDictionary:v4];
  }

  return v6;
}

- (void)setFromUserCodableDictionary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PKPrintSettings_setFromUserCodableDictionary___block_invoke;
  v6[3] = &unk_279A92468;
  v7 = v4;
  v5 = v4;
  UserCodedSerializationVisitor::visitProperties(self, v6);
}

void __48__PKPrintSettings_setFromUserCodableDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
{
  v12 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v12];
  if (v9)
  {
    v10 = v8[2](v8, v9);
    v11 = *a5;
    *a5 = v10;
  }
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__PKPrintSettings_debugDescription__block_invoke;
  v4[3] = &unk_279A92508;
  v4[4] = self;
  v4[5] = &v5;
  DescVisitor::visitProperties(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__PKPrintSettings_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v10 = [*(a1 + 32) description];
  v5 = (*(*a2 + 208))(a2);
  v6 = (*(*a2 + 200))(a2);
  v7 = [v4 stringWithFormat:@"%@ Encoded classes: %@, properties %@", v10, v5, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)visitProperties:(Visitor *)a3
{
  (*(a3->var0 + 2))(a3, a2);
  (*(a3->var0 + 19))(a3, @"paper", &self->_paper);
  (*(a3->var0 + 8))(a3, @"printerInfoURL", &self->_printerInfoURL);
  (*(a3->var0 + 8))(a3, @"printerSuppliesURL", &self->_printerSuppliesURL);
  (*(a3->var0 + 3))(a3, @"annotationsImaged", &self->_annotationsImaged);
  (*(a3->var0 + 4))(a3, @"copies", &self->_copies);
  (*(a3->var0 + 7))(a3, @"documentPassword", &self->_documentPassword);
  (*(a3->var0 + 7))(a3, @"duplex", &self->_duplex);
  (*(a3->var0 + 7))(a3, @"finishingTemplate", &self->_finishingTemplate);
  (*(a3->var0 + 14))(a3, @"finishings", &self->_finishings);
  (*(a3->var0 + 7))(a3, @"inputSlot", &self->_inputSlot);
  (*(a3->var0 + 7))(a3, @"mediaType", &self->_mediaType);
  (*(a3->var0 + 7))(a3, @"jobAccountID", &self->_jobAccountID);
  (*(a3->var0 + 7))(a3, @"jobName", &self->_jobName);
  (*(a3->var0 + 7))(a3, @"orientation", &self->_orientation);
  (*(a3->var0 + 7))(a3, @"outputBin", &self->_outputBin);
  (*(a3->var0 + 7))(a3, @"outputMode", &self->_outputMode);
  (*(a3->var0 + 7))(a3, @"pageScale", &self->_pageScale);
  (*(a3->var0 + 7))(a3, @"pageStackOrder", &self->_pageStackOrder);
  (*(a3->var0 + 7))(a3, @"printQuality", &self->_printQuality);
  (*(a3->var0 + 7))(a3, @"thumbnailPosition", &self->_thumbnailPosition);
  (*(a3->var0 + 7))(a3, @"fileType", &self->_fileType);
  (*(a3->var0 + 15))(a3, @"pageRanges_asStringArray", &self->_pageRanges_asStringArray);
  (*(a3->var0 + 7))(a3, @"jobPresetName", &self->_jobPresetName);
  v5 = *(a3->var0 + 24);

  v5(a3);
}

- (id)keyedNameToVisitName:(id)a3
{
  v10[18] = *MEMORY[0x277D85DE8];
  v3 = a3;
  {
    v9[0] = @"com.apple.image-pdf-annotations";
    v9[1] = @"copies";
    v10[0] = @"annotationsImaged";
    v10[1] = @"copies";
    v9[2] = @"document-password";
    v9[3] = @"sides";
    v10[2] = @"documentPassword";
    v10[3] = @"duplex";
    v9[4] = @"com.apple.finishingTemplate";
    v9[5] = @"com.apple.finishings";
    v10[4] = @"finishingTemplate";
    v10[5] = @"finishings";
    v9[6] = @"com.apple.inputSlot";
    v9[7] = @"job-account-id";
    v10[6] = @"inputSlot";
    v10[7] = @"jobAccountID";
    v9[8] = @"job-name";
    v9[9] = @"com.apple.mediaType";
    v10[8] = @"jobName";
    v10[9] = @"mediaType";
    v9[10] = @"orientation-requested";
    v9[11] = @"com.apple.outputBin";
    v10[10] = @"orientation";
    v10[11] = @"outputBin";
    v9[12] = @"print-color-mode";
    v9[13] = @"page-ranges";
    v10[12] = @"outputMode";
    v10[13] = @"pageRanges";
    v9[14] = @"com.apple.page-scaling";
    v9[15] = @"com.apple.pageStackOrder";
    v10[14] = @"pageScale";
    v10[15] = @"pageStackOrder";
    v9[16] = @"print-quality";
    v9[17] = @"com.apple.thumbnail-position";
    v10[16] = @"printQuality";
    v10[17] = @"thumbnailPosition";
    [PKPrintSettings keyedNameToVisitName:]::sMapping = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:18];
  }

  v4 = [-[PKPrintSettings keyedNameToVisitName:]::sMapping objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_ERROR, "No mapping to old style key from %@ anymore - use properties directly", &v7, 0xCu);
    }
  }

  return v4;
}

- (NSArray)pageRanges
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(PKPrintSettings *)self pageRanges_asStringArray];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = MEMORY[0x277CCAE60];
          v10 = NSRangeFromString(*(*(&v13 + 1) + 8 * i));
          v11 = [v9 valueWithRange:{v10.location, v10.length, v13}];
          [v4 addObject:v11];
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPageRanges:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v18.location = [*(*(&v12 + 1) + 8 * i) rangeValue];
          v11 = NSStringFromRange(v18);
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = 0;
  }

  [(PKPrintSettings *)self setPageRanges_asStringArray:v6];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"com.apple.jobPreset"])
  {
    v8 = [(__CFString *)v6 objectForKeyedSubscript:@"PresetInfo"];
    v9 = [v8 objectForKeyedSubscript:@"UIPrintInfoJobPresetKey"];
    v10 = [v9 objectForKeyedSubscript:@"JobPresetOption"];
    v11 = [v10 objectForKeyedSubscript:@"preset-name"];
    [(PKPrintSettings *)self setJobPresetName:v11];
  }

  else if ([v7 isEqualToString:@"page-ranges"])
  {
    [(PKPrintSettings *)self setPageRanges:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqualToString:@"print-quality"])
    {
      v12 = [(__CFString *)v6 integerValue];
      v13 = @"3";
      if (v12 != [@"3" integerValue])
      {
        v14 = [(__CFString *)v6 integerValue];
        if (v14 == [@"5" integerValue])
        {
          v13 = @"5";
        }

        else
        {
          v13 = @"4";
        }
      }

      v15 = v13;

      v6 = v15;
    }

    v16 = [(PKPrintSettings *)self keyedNameToVisitName:v7];
    if (v16)
    {
      v17 = [(PKPrintSettings *)self userCodableDictionary];
      v18 = [v17 objectForKeyedSubscript:v16];
      v19 = [v18 isEqual:v6];

      if ((v19 & 1) == 0)
      {
        v21 = v16;
        v22 = v6;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        [(PKPrintSettings *)self setFromUserCodableDictionary:v20];
      }
    }

    else
    {
      v17 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&dword_25F5FC000, v17, OS_LOG_TYPE_ERROR, "No mapping to visit key %@", buf, 0xCu);
      }
    }
  }
}

- (void)removeObjectForKey:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"orientation-requested"])
  {
    [(PKPrintSettings *)self setOrientation:0];
  }

  else
  {
    v5 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_ERROR, "No mapping to visit key %@", &v6, 0xCu);
    }
  }
}

- (id)objectForKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"page-ranges"])
  {
    v5 = [(PKPrintSettings *)self pageRanges];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v6 = [(PKPrintSettings *)self keyedNameToVisitName:v4];
    v7 = v6;
    if (v6)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__PKPrintSettings_objectForKey___block_invoke;
      v10[3] = &unk_279A92A00;
      v11 = v6;
      v12 = &v13;
      UserCodedSerializationVisitor::visitProperties(self, v10);
      v8 = v11;
    }

    else
    {
      v8 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_ERROR, "No mapping to visit key %@", buf, 0xCu);
      }
    }

    v5 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v5;
}

void __32__PKPrintSettings_objectForKey___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a2;
  v8 = a3;
  if ([v12 isEqualToString:*(a1 + 32)])
  {
    v9 = v8[2](v8, *a5);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

@end