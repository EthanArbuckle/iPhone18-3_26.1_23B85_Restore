@interface SFDeviceRegulatoryAttributes
+ (NSCalendar)_calendar;
+ (NSDictionary)_yearCodeToStartDateLookup;
+ (NSISO8601DateFormatter)_dateFormatter;
+ (NSString)_weekCodeLookup;
+ (SFDeviceRegulatoryAttributes)currentDeviceAttributes;
+ (id)getRegulatoryAttributes;
+ (void)getRegulatoryAttributes;
- (BOOL)_unarchiveRegulatoryCatalogBundleAtPath:(id)path toURL:(id)l;
- (NSString)plantCode;
- (SFDeviceRegulatoryAttributes)initWithRegulatoryAttributes:(id)attributes serialNumber:(id)number;
- (UIImage)regulatoryImage;
- (void)_resolveCountryOfOrigin:(id)origin;
- (void)_resolveDeviceAttributes:(id)attributes;
- (void)_resolveIndiaBISRegulatoryNumber:(id)number;
- (void)_resolveMIIT:(id)t;
- (void)_resolveManufacturingDateRelatedFields:(id)fields;
- (void)_resolveOTARegulatoryCatalog:(id)catalog;
- (void)_resolveRegulatoryImage:(id)image;
@end

@implementation SFDeviceRegulatoryAttributes

- (SFDeviceRegulatoryAttributes)initWithRegulatoryAttributes:(id)attributes serialNumber:(id)number
{
  attributesCopy = attributes;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = SFDeviceRegulatoryAttributes;
  v8 = [(SFDeviceRegulatoryAttributes *)&v12 init];
  if (v8)
  {
    v9 = [numberCopy copy];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = v9;

    [(SFDeviceRegulatoryAttributes *)v8 _resolveDeviceAttributes:attributesCopy];
  }

  return v8;
}

+ (SFDeviceRegulatoryAttributes)currentDeviceAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SFDeviceRegulatoryAttributes_currentDeviceAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentDeviceAttributes_onceToken != -1)
  {
    dispatch_once(&currentDeviceAttributes_onceToken, block);
  }

  v2 = currentDeviceAttributes__currentDeviceAttributes;

  return v2;
}

void __55__SFDeviceRegulatoryAttributes_currentDeviceAttributes__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) getRegulatoryAttributes];
  v2 = MGCopyAnswer();
  v3 = [objc_alloc(*(a1 + 32)) initWithRegulatoryAttributes:v5 serialNumber:v2];
  v4 = currentDeviceAttributes__currentDeviceAttributes;
  currentDeviceAttributes__currentDeviceAttributes = v3;
}

- (void)_resolveDeviceAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (!attributesCopy)
  {
    v11 = 0;
    v6 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v6 = [attributesCopy objectForKeyedSubscript:@"RegulatoryInfo"];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"RegulatoryInfo"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = MEMORY[0x277CCAAA0];
      v10 = [v5 objectForKeyedSubscript:@"RegulatoryInfo"];
      v25 = 0;
      v6 = [v9 JSONObjectWithData:v10 options:0 error:&v25];
      v11 = v25;

      goto LABEL_8;
    }

    v6 = 0;
  }

  v11 = 0;
LABEL_8:
  v12 = [v5 objectForKeyedSubscript:@"RegulatoryImages"];
  if (v12)
  {
    v14 = [v5 objectForKeyedSubscript:@"RegulatoryImages"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v12 = [v5 objectForKeyedSubscript:@"RegulatoryImages"];
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = [v5 objectForKeyedSubscript:@"RegulatoryCatalog"];
  if (v13)
  {
    v16 = [v5 objectForKeyedSubscript:@"RegulatoryCatalog"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      v13 = 0;
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v13 = [v5 objectForKeyedSubscript:@"RegulatoryCatalog"];
  }

  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_18:
  v18 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SFDeviceRegulatoryAttributes _resolveDeviceAttributes:];
  }

LABEL_21:
  [(SFDeviceRegulatoryAttributes *)self _resolveManufacturingDateRelatedFields:v6];
  [(SFDeviceRegulatoryAttributes *)self _resolveIndiaBISRegulatoryNumber:v6];
  [(SFDeviceRegulatoryAttributes *)self _resolveCountryOfOrigin:v6];
  [(SFDeviceRegulatoryAttributes *)self _resolveMIIT:v6];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v21 = [environment objectForKeyedSubscript:@"XCTestBundlePath"];

  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v21 containsString:@"SettingsFoundation"])
  {
    v22 = objc_opt_new();
    resolvedRegulatoryImage = self->__resolvedRegulatoryImage;
    self->__resolvedRegulatoryImage = v22;
  }

  else
  {
    if (v13)
    {
      [(SFDeviceRegulatoryAttributes *)self _resolveOTARegulatoryCatalog:v13];
    }

    else
    {
      v24 = SFLogForCategory(3uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [SFDeviceRegulatoryAttributes _resolveDeviceAttributes:];
      }
    }

    if (!self->__resolvedRegulatoryImage)
    {
      [(SFDeviceRegulatoryAttributes *)self _resolveRegulatoryImage:v12];
    }
  }
}

- (void)_resolveManufacturingDateRelatedFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [fieldsCopy objectForKeyedSubscript:@"manufacturingDate"];
  if (v5)
  {
    v6 = v5;
    v7 = [fieldsCopy objectForKeyedSubscript:@"manufacturingDate"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [fieldsCopy objectForKeyedSubscript:@"manufacturingDate"];
      v10 = +[SFDeviceRegulatoryAttributes _dateFormatter];
      v11 = [v10 dateFromString:v9];

      resolvedManufacturingDate = self->__resolvedManufacturingDate;
      self->__resolvedManufacturingDate = v11;
      v13 = v11;

      v14 = +[SFDeviceRegulatoryAttributes _calendar];
      self->_yearForWeekOfManufacture = [v14 component:4 fromDate:v13];

      v15 = +[SFDeviceRegulatoryAttributes _calendar];
      self->_yearOfManufacture = [v15 component:4 fromDate:v13];

      v16 = +[SFDeviceRegulatoryAttributes _calendar];
      self->_monthOfManufacture = [v16 component:8 fromDate:v13];

      v17 = +[SFDeviceRegulatoryAttributes _calendar];
      v18 = [v17 component:0x2000 fromDate:v13];

      self->_weekOfManufacture = v18;
LABEL_12:

      goto LABEL_13;
    }
  }

  v19 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [SFDeviceRegulatoryAttributes _resolveManufacturingDateRelatedFields:];
  }

  serialNumber = [(SFDeviceRegulatoryAttributes *)self serialNumber];
  v21 = [serialNumber length];

  if (v21 == 12)
  {
    serialNumber2 = [(SFDeviceRegulatoryAttributes *)self serialNumber];
    v9 = [serialNumber2 substringWithRange:{3, 1}];

    serialNumber3 = [(SFDeviceRegulatoryAttributes *)self serialNumber];
    v24 = [serialNumber3 substringWithRange:{4, 1}];

    v25 = +[SFDeviceRegulatoryAttributes _yearCodeToStartDateLookup];
    v26 = [v25 objectForKeyedSubscript:v9];

    if (v26)
    {
      v27 = +[SFDeviceRegulatoryAttributes _yearCodeToStartDateLookup];
      v28 = [v27 objectForKeyedSubscript:v9];

      v29 = +[SFDeviceRegulatoryAttributes _weekCodeLookup];
      v30 = [v29 rangeOfString:v24];
      v32 = v31;

      if (v32 == 1)
      {
        v33 = +[SFDeviceRegulatoryAttributes _calendar];
        v34 = [v33 components:0x2000 fromDate:v28];

        [v34 setWeekOfYear:{objc_msgSend(v34, "weekOfYear") + v30}];
        v35 = +[SFDeviceRegulatoryAttributes _calendar];
        v36 = [v35 dateByAddingUnit:0x2000 value:v30 toDate:v28 options:1];
        resolvedStartingWeek = self->__resolvedStartingWeek;
        self->__resolvedStartingWeek = v36;

        v38 = +[SFDeviceRegulatoryAttributes _calendar];
        _resolvedStartingWeek = [(SFDeviceRegulatoryAttributes *)self _resolvedStartingWeek];
        self->_yearForWeekOfManufacture = [v38 component:0x4000 fromDate:_resolvedStartingWeek];

        v40 = +[SFDeviceRegulatoryAttributes _calendar];
        _resolvedStartingWeek2 = [(SFDeviceRegulatoryAttributes *)self _resolvedStartingWeek];
        self->_yearOfManufacture = [v40 component:4 fromDate:_resolvedStartingWeek2];

        v42 = +[SFDeviceRegulatoryAttributes _calendar];
        _resolvedStartingWeek3 = [(SFDeviceRegulatoryAttributes *)self _resolvedStartingWeek];
        self->_monthOfManufacture = [v42 component:8 fromDate:_resolvedStartingWeek3];

        v44 = +[SFDeviceRegulatoryAttributes _calendar];
        _resolvedStartingWeek4 = [(SFDeviceRegulatoryAttributes *)self _resolvedStartingWeek];
        self->_weekOfManufacture = [v44 component:0x2000 fromDate:_resolvedStartingWeek4];
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_resolveIndiaBISRegulatoryNumber:(id)number
{
  v49 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = [numberCopy objectForKeyedSubscript:@"elabel"];
  if (v5)
  {
    v6 = v5;
    v7 = [numberCopy objectForKeyedSubscript:@"elabel"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [numberCopy objectForKeyedSubscript:@"elabel"];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 objectForKeyedSubscript:@"bis"];
        if (v11 && (v12 = v11, [v10 objectForKeyedSubscript:@"bis"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
        {
          v15 = [v10 objectForKeyedSubscript:@"bis"];
          v16 = [v15 objectForKeyedSubscript:@"regulatory"];
          if (v16)
          {
            v17 = v16;
            v18 = [v10 objectForKeyedSubscript:@"bis"];
            v19 = [v18 objectForKeyedSubscript:@"regulatory"];
            objc_opt_class();
            v20 = objc_opt_isKindOfClass();

            if (v20)
            {
              v21 = [v10 objectForKeyedSubscript:@"bis"];
              v22 = [v21 objectForKeyedSubscript:@"regulatory"];

              resolvedIndiaBISNumber = self->__resolvedIndiaBISNumber;
              self->__resolvedIndiaBISNumber = v22;

              goto LABEL_12;
            }
          }

          else
          {
          }

          v41 = [v10 objectForKeyedSubscript:@"bis"];
          if (!v41)
          {
            goto LABEL_33;
          }

          v42 = v41;
          v43 = [v10 objectForKeyedSubscript:@"bis"];
          v44 = [v43 objectForKeyedSubscript:@"regulatory"];

          if (!v44)
          {
            v32 = SFLogForCategory(3uLL);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [SFDeviceRegulatoryAttributes _resolveIndiaBISRegulatoryNumber:];
            }
          }

          else
          {
LABEL_33:
            v32 = SFLogForCategory(3uLL);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [SFDeviceRegulatoryAttributes _resolveIndiaBISRegulatoryNumber:];
            }
          }
        }

        else
        {
          v32 = SFLogForCategory(3uLL);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [SFDeviceRegulatoryAttributes _resolveIndiaBISRegulatoryNumber:];
          }
        }

        goto LABEL_12;
      }
    }
  }

  v24 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [SFDeviceRegulatoryAttributes _resolveIndiaBISRegulatoryNumber:];
  }

  v10 = 0;
LABEL_12:
  p_resolvedIndiaBISNumber = &self->__resolvedIndiaBISNumber;
  if (self->__resolvedIndiaBISNumber)
  {
    goto LABEL_26;
  }

  plantCode = [(SFDeviceRegulatoryAttributes *)self plantCode];

  if (plantCode)
  {
    v27 = MGCopyAnswer();
    v28 = MEMORY[0x277CBEAC0];
    v29 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/RegulatoryImages");
    v30 = MEMORY[0x277CCACA8];
    if (v27)
    {
      lowercaseString = [v27 lowercaseString];
    }

    else
    {
      lowercaseString = &stru_287749F98;
    }

    v33 = [v30 stringWithFormat:@"IndiaBISMappings~%@.plist", lowercaseString];
    v34 = [v29 stringByAppendingPathComponent:v33];
    v35 = [v28 dictionaryWithContentsOfFile:v34];

    if (v27)
    {
    }

    plantCode2 = [(SFDeviceRegulatoryAttributes *)self plantCode];
    v37 = [v35 objectForKey:plantCode2];

    if (v37)
    {
      objc_storeStrong(p_resolvedIndiaBISNumber, v37);
    }
  }

  if (*p_resolvedIndiaBISNumber)
  {
LABEL_26:
    v38 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *p_resolvedIndiaBISNumber;
      *buf = 136315394;
      v46 = "[SFDeviceRegulatoryAttributes _resolveIndiaBISRegulatoryNumber:]";
      v47 = 2112;
      v48 = v39;
      _os_log_impl(&dword_2659AD000, v38, OS_LOG_TYPE_DEFAULT, "%{Public}s: BIS e-label: '%{Public}@'", buf, 0x16u);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_resolveMIIT:(id)t
{
  v27 = *MEMORY[0x277D85DE8];
  tCopy = t;
  v5 = [tCopy objectForKeyedSubscript:@"elabel"];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [tCopy objectForKeyedSubscript:@"elabel"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = [tCopy objectForKeyedSubscript:@"elabel"];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 objectForKeyedSubscript:@"miit"];
    if (v11 && (v12 = v11, [v10 objectForKeyedSubscript:@"miit"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
    {
      v15 = [v10 objectForKeyedSubscript:@"miit"];
      v16 = [v15 objectForKeyedSubscript:@"nal"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v15 objectForKeyedSubscript:@"label"];
        objc_opt_class();
        v18 = objc_opt_isKindOfClass();

        if (v18)
        {
          objc_storeStrong(&self->__resolvedMIITDictionary, v15);
          goto LABEL_12;
        }
      }

      else
      {
      }

      v22 = SFLogForCategory(3uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceRegulatoryAttributes _resolveMIIT:];
      }
    }

    else
    {
      v15 = SFLogForCategory(3uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [SFDeviceRegulatoryAttributes _resolveMIIT:];
      }
    }
  }

  else
  {
LABEL_9:
    v15 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SFDeviceRegulatoryAttributes _resolveMIIT:];
    }

    v10 = 0;
  }

LABEL_12:

  if (self->__resolvedMIITDictionary)
  {
    v19 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      resolvedMIITDictionary = self->__resolvedMIITDictionary;
      v23 = 136315394;
      v24 = "[SFDeviceRegulatoryAttributes _resolveMIIT:]";
      v25 = 2112;
      v26 = resolvedMIITDictionary;
      _os_log_impl(&dword_2659AD000, v19, OS_LOG_TYPE_DEFAULT, "%{Public}s: MIIT e-label: '%{Public}@'", &v23, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_resolveCountryOfOrigin:(id)origin
{
  v30 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  v5 = [originCopy objectForKeyedSubscript:@"countryOfOrigin"];
  if (v5)
  {
    v6 = v5;
    v7 = [originCopy objectForKeyedSubscript:@"countryOfOrigin"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [originCopy objectForKeyedSubscript:@"countryOfOrigin"];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 objectForKeyedSubscript:@"assembledIn"];
        if (v11 && (v12 = v11, [v10 objectForKeyedSubscript:@"assembledIn"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) != 0))
        {
          v15 = [v10 objectForKeyedSubscript:@"assembledIn"];
          v16 = SF_LocalizedStringForCountryOfOriginAssembledIn(v15);
        }

        else
        {
          v21 = [v10 objectForKeyedSubscript:@"madeIn"];
          if (!v21 || (v22 = v21, [v10 objectForKeyedSubscript:@"madeIn"], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, v22, (v24 & 1) == 0))
          {
            v15 = SFLogForCategory(3uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [SFDeviceRegulatoryAttributes _resolveCountryOfOrigin:];
            }

            goto LABEL_21;
          }

          v15 = [v10 objectForKeyedSubscript:@"madeIn"];
          v16 = SF_LocalizedStringForCountryOfOriginMadeIn(v15);
        }

        resolvedCountryOfOrigin = self->__resolvedCountryOfOrigin;
        self->__resolvedCountryOfOrigin = v16;

LABEL_21:
        goto LABEL_10;
      }
    }
  }

  v17 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [SFDeviceRegulatoryAttributes _resolveCountryOfOrigin:];
  }

  v10 = 0;
LABEL_10:
  if (self->__resolvedCountryOfOrigin)
  {
    v18 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->__resolvedCountryOfOrigin;
      v26 = 136315394;
      v27 = "[SFDeviceRegulatoryAttributes _resolveCountryOfOrigin:]";
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_2659AD000, v18, OS_LOG_TYPE_DEFAULT, "%{Public}s: Country of Origin e-label: '%{Public}@'", &v26, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_unarchiveRegulatoryCatalogBundleAtPath:(id)path toURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = AAFileStreamOpenWithPath([path UTF8String], 0, 2u);
  if (v6)
  {
    v7 = v6;
    v8 = AADecompressionInputStreamOpen(v6, 0x4000000000000000uLL, 2);
    if (v8)
    {
      v9 = v8;
      v10 = AADecodeArchiveInputStreamOpen(v8, 0, 0, 0, 2);
      if (v10)
      {
        v11 = v10;
        path = [lCopy path];
        v13 = AAExtractArchiveOutputStreamOpen([path UTF8String], 0, 0, 0, 2);

        v14 = v13 != 0;
        if (v13)
        {
          v15 = AAArchiveStreamProcess(v11, v13, 0, 0, 0, 2);
          v16 = SFLogForCategory(1uLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 134218242;
            v20 = v15;
            v21 = 2112;
            v22 = lCopy;
            _os_log_impl(&dword_2659AD000, v16, OS_LOG_TYPE_DEFAULT, "Extracted %ld entries to %@", &v19, 0x16u);
          }

          AAArchiveStreamClose(v13);
        }

        AAArchiveStreamClose(v11);
      }

      else
      {
        v14 = 0;
      }

      AAByteStreamClose(v9);
    }

    else
    {
      v14 = 0;
    }

    AAByteStreamClose(v7);
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_resolveOTARegulatoryCatalog:(id)catalog
{
  v46 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  v5 = MGCopyAnswer();
  v6 = MGCopyAnswer();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"RegulatoryCatalog-%@.bundle", v6];
  v10 = [temporaryDirectory URLByAppendingPathComponent:v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"RegulatoryCatalog-%@.aar", v6];
  v12 = [temporaryDirectory URLByAppendingPathComponent:v11];

  if (catalogCopy)
  {
    v41 = 0;
    [catalogCopy writeToURL:v12 options:1 error:&v41];
    v13 = v41;
    v14 = SFLogForCategory(1uLL);
    resolvedRegulatoryImage = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFDeviceRegulatoryAttributes _resolveOTARegulatoryCatalog:];
      }

LABEL_5:

      goto LABEL_22;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [v12 absoluteString];
      *buf = 136315394;
      v43 = "[SFDeviceRegulatoryAttributes _resolveOTARegulatoryCatalog:]";
      v44 = 2114;
      v45 = absoluteString;
      _os_log_impl(&dword_2659AD000, &resolvedRegulatoryImage->super, OS_LOG_TYPE_DEFAULT, "%{Public}s: Wrote aar  to %{public}@", buf, 0x16u);
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];

    path = [v12 path];
    v26 = [(SFDeviceRegulatoryAttributes *)self _unarchiveRegulatoryCatalogBundleAtPath:path toURL:v10];

    v27 = SFLogForCategory(1uLL);
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        absoluteString2 = [v10 absoluteString];
        *buf = 136315394;
        v43 = "[SFDeviceRegulatoryAttributes _resolveOTARegulatoryCatalog:]";
        v44 = 2114;
        v45 = absoluteString2;
        _os_log_impl(&dword_2659AD000, v28, OS_LOG_TYPE_DEFAULT, "%{Public}s: Wrote bundle  %{public}@", buf, 0x16u);
      }

      v30 = [MEMORY[0x277CCA8D8] bundleWithURL:v10];
      v31 = [MEMORY[0x277D755B8] imageNamed:v5 inBundle:v30 compatibleWithTraitCollection:0];

      if (v31)
      {
        v32 = SFLogForCategory(1uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v43 = "[SFDeviceRegulatoryAttributes _resolveOTARegulatoryCatalog:]";
          _os_log_impl(&dword_2659AD000, v32, OS_LOG_TYPE_DEFAULT, "%{Public}s: Found regulatory image in Regulatory Catalog OTA path", buf, 0xCu);
        }

        resolvedRegulatoryImage = self->__resolvedRegulatoryImage;
        self->__resolvedRegulatoryImage = v31;
        v13 = v31;
        goto LABEL_5;
      }
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(SFDeviceRegulatoryAttributes *)v10 _resolveOTARegulatoryCatalog:v28];
      }
    }

    v13 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SFDeviceRegulatoryAttributes *)v13 _resolveOTARegulatoryCatalog:v33, v34, v35, v36, v37, v38, v39];
    }
  }

  else
  {
    v13 = SFLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SFDeviceRegulatoryAttributes *)v13 _resolveOTARegulatoryCatalog:v16, v17, v18, v19, v20, v21, v22];
    }
  }

LABEL_22:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_resolveRegulatoryImage:(id)image
{
  v123 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isInternalInstall = [currentDevice sf_isInternalInstall];

  if (!sf_isInternalInstall)
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
    if (imageCopy)
    {
LABEL_9:
      v84 = v8;
      v12 = MGCopyAnswer();
      v9 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_44:
    v40 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [SFDeviceRegulatoryAttributes _resolveRegulatoryImage:v40];
    }

LABEL_71:
    if (v9)
    {
      v63 = v9;
    }

    else
    {
      v63 = MGCopyAnswer();
    }

    v64 = v63;
    v65 = v9;
    if (v10)
    {
      v66 = v10;
    }

    else
    {
      v66 = MGCopyAnswer();
    }

    v67 = v66;
    v60 = _SFBuiltInRegulatoryImage(v64, v66);

    v9 = v65;
    goto LABEL_78;
  }

  v8 = [standardUserDefaults stringForKey:@"SFRegulatoryModelNumber"];
  v9 = [standardUserDefaults stringForKey:@"SFHWModelStr"];
  v10 = [standardUserDefaults stringForKey:@"SFDeviceVariant"];
  v11 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
    v117 = 2112;
    v118 = v8;
    v119 = 2112;
    v120 = v9;
    v121 = 2112;
    v122 = v10;
    _os_log_impl(&dword_2659AD000, v11, OS_LOG_TYPE_DEFAULT, "%{Public}s: MobileGestalt Overrides: %@, %@, %@", buf, 0x2Au);
  }

  if (!imageCopy)
  {
    goto LABEL_44;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v84 = v8;
  v12 = v9;
  v9 = v12;
  if (!v10)
  {
LABEL_7:
    v13 = MGCopyAnswer();
    goto LABEL_11;
  }

LABEL_10:
  v13 = v10;
LABEL_11:
  v83 = v13;
  v87 = [v12 stringByAppendingFormat:@"-%@", v13];
  v14 = [v12 length];
  v15 = SFLogForCategory(3uLL);
  v16 = v15;
  v85 = imageCopy;
  if (v14)
  {
    v79 = v9;
    v80 = v10;
    v81 = standardUserDefaults;
    selfCopy = self;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
      v117 = 2112;
      v118 = v87;
      _os_log_impl(&dword_2659AD000, v16, OS_LOG_TYPE_DEFAULT, "%{Public}s: Looking for Lockdown Regulatory Image '%@'", buf, 0x16u);
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v19 = v18;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = imageCopy;
    v20 = [obj countByEnumeratingWithState:&v88 objects:v114 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v89;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v89 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v88 + 1) + 8 * v23);
        v25 = [v24 objectForKey:@"ImageId"];
        v26 = SFLogForCategory(3uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
          v117 = 2112;
          v118 = v25;
          _os_log_impl(&dword_2659AD000, v26, OS_LOG_TYPE_DEFAULT, "%{Public}s: Candidate Lockdown Regulatory Image '%@'", buf, 0x16u);
        }

        if ([v12 caseInsensitiveCompare:v25] && objc_msgSend(v87, "caseInsensitiveCompare:", v25))
        {
          goto LABEL_38;
        }

        v27 = [v24 objectForKey:@"ImageData"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = CGImageSourceCreateWithData(v27, 0);
          if (v28)
          {
            v29 = v28;
            Count = CGImageSourceGetCount(v28);
            if (Count)
            {
              v31 = Count;
              ImageAtIndex = CGImageSourceCreateImageAtIndex(v29, 0, 0);
              v33 = ImageAtIndex;
              if (v31 == 2)
              {
                v48 = CGImageSourceCreateImageAtIndex(v29, 1uLL, 0);
                v49 = v48;
                if (v33 && v48)
                {
                  v77 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v33 scale:0 orientation:v19];
                  v78 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v49 scale:0 orientation:v19];
                  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
                  [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:v19];
                  v50 = image = v49;
                  v51 = objc_alloc_init(MEMORY[0x277D755C0]);
                  v52 = MEMORY[0x277D75C80];
                  v113[0] = v50;
                  v53 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
                  v113[1] = v53;
                  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
                  v55 = [v52 traitCollectionWithTraitsFromCollections:v54];
                  [v51 registerImage:v77 withTraitCollection:v55];

                  v56 = MEMORY[0x277D75C80];
                  v112[0] = v50;
                  v57 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
                  v112[1] = v57;
                  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:2];
                  v59 = [v56 traitCollectionWithTraitsFromCollections:v58];
                  [v51 registerImage:v78 withTraitCollection:v59];

                  v60 = [v51 imageWithTraitCollection:currentTraitCollection];
                  CGImageRelease(v33);
                  CGImageRelease(image);
                  CFRelease(v29);
                  v61 = SFLogForCategory(3uLL);
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
                    v117 = 2112;
                    v118 = v25;
                    _os_log_impl(&dword_2659AD000, v61, OS_LOG_TYPE_DEFAULT, "%{Public}s: Matched style-sensitive Lockdown Regulatory Image '%{Public}@'", buf, 0x16u);
                  }

                  standardUserDefaults = v81;
                  self = selfCopy;
                  v9 = v79;
                  v62 = v77;
                }

                else
                {
                  if (v33)
                  {
                    CGImageRelease(v33);
                  }

                  standardUserDefaults = v81;
                  self = selfCopy;
                  if (v49)
                  {
                    CGImageRelease(v49);
                  }

                  CFRelease(v29);
                  v62 = SFLogForCategory(3uLL);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    [SFDeviceRegulatoryAttributes _resolveRegulatoryImage:];
                  }

                  v60 = 0;
LABEL_65:
                  v9 = v79;
                }

                v10 = v80;
                v39 = v83;
                if (v60)
                {
                  goto LABEL_70;
                }

                goto LABEL_67;
              }

              if (ImageAtIndex)
              {
                v60 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:ImageAtIndex scale:0 orientation:v19];
                CGImageRelease(v33);
                CFRelease(v29);
                v62 = SFLogForCategory(3uLL);
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
                  v117 = 2112;
                  v118 = v25;
                  _os_log_impl(&dword_2659AD000, v62, OS_LOG_TYPE_DEFAULT, "%{Public}s: Matched Lockdown Regulatory Image '%@'", buf, 0x16u);
                }

                standardUserDefaults = v81;
                self = selfCopy;
                goto LABEL_65;
              }

              v34 = SFLogForCategory(3uLL);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
                v117 = 2112;
                v118 = v25;
                v35 = v34;
                v36 = "%{Public}s: Failed decoding Lockdown Regulatory Image '%{Public}@'";
                goto LABEL_41;
              }
            }

            else
            {
              v34 = SFLogForCategory(3uLL);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
                v117 = 2112;
                v118 = v25;
                v35 = v34;
                v36 = "%{Public}s: Empty Lockdown Regulatory Image '%{Public}@'";
LABEL_41:
                _os_log_error_impl(&dword_2659AD000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);
              }
            }

            CFRelease(v29);
            goto LABEL_37;
          }

          v37 = SFLogForCategory(3uLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [(SFDeviceRegulatoryAttributes *)v110 _resolveRegulatoryImage:v37];
          }
        }

        else
        {
          v37 = SFLogForCategory(3uLL);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [(SFDeviceRegulatoryAttributes *)v108 _resolveRegulatoryImage:v37];
          }
        }

LABEL_37:
LABEL_38:

        if (v21 == ++v23)
        {
          v38 = [obj countByEnumeratingWithState:&v88 objects:v114 count:16];
          v21 = v38;
          if (v38)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

    standardUserDefaults = v81;
    self = selfCopy;
    v9 = v79;
    v10 = v80;
    v39 = v83;
LABEL_67:
    v16 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v116 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
      v117 = 2112;
      v118 = v87;
      _os_log_impl(&dword_2659AD000, v16, OS_LOG_TYPE_DEFAULT, "%{Public}s: No matching Lockdown Regulatory Image for '%{Public}@'", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SFDeviceRegulatoryAttributes *)v16 _resolveRegulatoryImage:v41, v42, v43, v44, v45, v46, v47];
    }

    v39 = v83;
  }

  v60 = 0;
LABEL_70:

  v8 = v84;
  imageCopy = v85;
  if (!v60)
  {
    goto LABEL_71;
  }

LABEL_78:
  v107 = 533419158;
  v106 = xmmword_2659C1758;
  v105 = 1106979518;
  v104 = xmmword_2659C176C;
  v103 = -1820426635;
  v102 = xmmword_2659C1780;
  v101 = -937652876;
  v100 = xmmword_2659C1794;
  v99 = -609570151;
  v98 = xmmword_2659C17A8;
  v97 = -874769875;
  v96 = xmmword_2659C17BC;
  v95 = 1874287171;
  v94 = xmmword_2659C17D0;
  v93 = -781324731;
  v92 = xmmword_2659C17E4;
  if (MGIsDeviceOneOfType())
  {
    v68 = MGCopyAnswer();
    v69 = v9;
    v70 = MGCopyAnswer();
    self->__resolvedIsLockdownImageOverridden = 1;
    _SFBuiltInRegulatoryImage(v68, v70);
    v72 = v71 = v10;

    v9 = v69;
    v60 = v72;
    v10 = v71;
  }

  resolvedRegulatoryImage = self->__resolvedRegulatoryImage;
  self->__resolvedRegulatoryImage = v60;

  v74 = *MEMORY[0x277D85DE8];
}

+ (id)getRegulatoryAttributes
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 1;
  v2 = container_system_group_path_for_identifier();
  if (!v2)
  {
    v4 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SFDeviceRegulatoryAttributes *)&v20 getRegulatoryAttributes:v4];
    }

    goto LABEL_13;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
  v5 = chmod(v3, 0x1FFu);
  free(v3);
  if (v5 && *__error() != 1)
  {
    v6 = SFLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(SFDeviceRegulatoryAttributes *)v6];
    }
  }

  if (!v4)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v7 = [v4 stringByAppendingPathComponent:@"Library"];
  v8 = [v7 stringByAppendingPathComponent:@"RegulatoryImages"];
  v9 = [v8 stringByAppendingPathComponent:@"regulatory_images.plist"];

  v10 = SFLogForCategory(3uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "+[SFDeviceRegulatoryAttributes getRegulatoryAttributes]";
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2659AD000, v10, OS_LOG_TYPE_DEFAULT, "%{Public}s: Lockdown Regulatory Images at '%@'", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (UIImage)regulatoryImage
{
  _resolvedRegulatoryImage = [(SFDeviceRegulatoryAttributes *)self _resolvedRegulatoryImage];

  if (_resolvedRegulatoryImage)
  {
    _resolvedRegulatoryImage2 = [(SFDeviceRegulatoryAttributes *)self _resolvedRegulatoryImage];
  }

  else
  {
    _resolvedRegulatoryImage2 = objc_opt_new();
  }

  return _resolvedRegulatoryImage2;
}

- (NSString)plantCode
{
  serialNumber = [(SFDeviceRegulatoryAttributes *)self serialNumber];
  v4 = [serialNumber length];

  if (v4 == 12)
  {
    serialNumber2 = [(SFDeviceRegulatoryAttributes *)self serialNumber];
    v6 = [serialNumber2 substringWithRange:{0, 3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NSString)_weekCodeLookup
{
  if (_weekCodeLookup_onceToken != -1)
  {
    +[SFDeviceRegulatoryAttributes _weekCodeLookup];
  }

  v3 = _weekCodeLookup___weekCodeLookup;

  return v3;
}

void __47__SFDeviceRegulatoryAttributes__weekCodeLookup__block_invoke()
{
  v0 = _weekCodeLookup___weekCodeLookup;
  _weekCodeLookup___weekCodeLookup = @"123456789CDFGHJKLMNPQRTVWXY";
}

+ (NSCalendar)_calendar
{
  if (_calendar_onceToken != -1)
  {
    +[SFDeviceRegulatoryAttributes _calendar];
  }

  v3 = _calendar___calendarForLookup;

  return v3;
}

uint64_t __41__SFDeviceRegulatoryAttributes__calendar__block_invoke()
{
  _calendar___calendarForLookup = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

+ (NSISO8601DateFormatter)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[SFDeviceRegulatoryAttributes _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatterForISO8601;

  return v3;
}

uint64_t __46__SFDeviceRegulatoryAttributes__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = _dateFormatter___dateFormatterForISO8601;
  _dateFormatter___dateFormatterForISO8601 = v0;

  v2 = _dateFormatter___dateFormatterForISO8601;

  return [v2 setFormatOptions:1907];
}

+ (NSDictionary)_yearCodeToStartDateLookup
{
  if (_yearCodeToStartDateLookup_onceToken != -1)
  {
    +[SFDeviceRegulatoryAttributes _yearCodeToStartDateLookup];
  }

  v3 = _yearCodeToStartDateLookup___yearCodeToStartDateLookup;

  return v3;
}

void __58__SFDeviceRegulatoryAttributes__yearCodeToStartDateLookup__block_invoke()
{
  v25[20] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setDateFormat:@"MM/dd/yyyy"];
  v24[0] = @"P";
  v23 = [v0 dateFromString:@"12/28/2014"];
  v25[0] = v23;
  v24[1] = @"Q";
  v22 = [v0 dateFromString:@"06/28/2015"];
  v25[1] = v22;
  v24[2] = @"R";
  v21 = [v0 dateFromString:@"12/27/2015"];
  v25[2] = v21;
  v24[3] = @"S";
  v20 = [v0 dateFromString:@"06/26/2016"];
  v25[3] = v20;
  v24[4] = @"T";
  v19 = [v0 dateFromString:@"01/01/2017"];
  v25[4] = v19;
  v24[5] = @"V";
  v18 = [v0 dateFromString:@"07/02/2017"];
  v25[5] = v18;
  v24[6] = @"W";
  v17 = [v0 dateFromString:@"12/31/2017"];
  v25[6] = v17;
  v24[7] = @"X";
  v16 = [v0 dateFromString:@"07/01/2018"];
  v25[7] = v16;
  v24[8] = @"Y";
  v15 = [v0 dateFromString:@"12/30/2018"];
  v25[8] = v15;
  v24[9] = @"Z";
  v14 = [v0 dateFromString:@"06/30/2019"];
  v25[9] = v14;
  v24[10] = @"C";
  v13 = [v0 dateFromString:@"12/29/2019"];
  v25[10] = v13;
  v24[11] = @"D";
  v1 = [v0 dateFromString:@"06/28/2020"];
  v25[11] = v1;
  v24[12] = @"F";
  v2 = [v0 dateFromString:@"12/27/2020"];
  v25[12] = v2;
  v24[13] = @"G";
  v3 = [v0 dateFromString:@"06/27/2021"];
  v25[13] = v3;
  v24[14] = @"H";
  v4 = [v0 dateFromString:@"12/26/2021"];
  v25[14] = v4;
  v24[15] = @"J";
  v5 = [v0 dateFromString:@"06/26/2022"];
  v25[15] = v5;
  v24[16] = @"K";
  v6 = [v0 dateFromString:@"01/01/2023"];
  v25[16] = v6;
  v24[17] = @"L";
  v7 = [v0 dateFromString:@"07/02/2023"];
  v25[17] = v7;
  v24[18] = @"M";
  v8 = [v0 dateFromString:@"12/31/2023"];
  v25[18] = v8;
  v24[19] = @"N";
  v9 = [v0 dateFromString:@"06/30/2024"];
  v25[19] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:20];
  v11 = _yearCodeToStartDateLookup___yearCodeToStartDateLookup;
  _yearCodeToStartDateLookup___yearCodeToStartDateLookup = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_resolveDeviceAttributes:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{Public}s: Invalid RegulatoryInfo: '%{Public}@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveDeviceAttributes:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty regulatoryCatalog: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveManufacturingDateRelatedFields:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty manufacturingDate entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveIndiaBISRegulatoryNumber:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{Public}s: Invalid BIS format: '%{Public}@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveIndiaBISRegulatoryNumber:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty BIS Regulatory entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveIndiaBISRegulatoryNumber:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty BIS entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveIndiaBISRegulatoryNumber:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty elabel entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveMIIT:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{Public}s: Invalid MIIT format: '%{Public}@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveMIIT:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty MIIT entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveMIIT:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: Empty elabel entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveCountryOfOrigin:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{Public}s: Invalid Country of Origin format: '%{Public}@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveCountryOfOrigin:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2659AD000, v0, v1, "%{Public}s: No Country of Origin entry: '%@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveOTARegulatoryCatalog:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{public}s: There was an error writing the regulatory catalog to aar %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveOTARegulatoryCatalog:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_2659AD000, a2, OS_LOG_TYPE_ERROR, "%{Public}s: There was an error writing bundle to %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_resolveOTARegulatoryCatalog:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: Image is null when looking into .car", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resolveOTARegulatoryCatalog:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: Regulatory Catalog data is empty", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resolveRegulatoryImage:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
  _os_log_error_impl(&dword_2659AD000, log, OS_LOG_TYPE_ERROR, "%{Public}s: Lockdown Regulatory Image not data", buf, 0xCu);
}

- (void)_resolveRegulatoryImage:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2659AD000, v0, v1, "%{Public}s: Failed decoding style-sensitive Lockdown Regulatory Image '%{Public}@'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resolveRegulatoryImage:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
  _os_log_error_impl(&dword_2659AD000, log, OS_LOG_TYPE_ERROR, "%{Public}s: No Lockdown Regulatory Image source", buf, 0xCu);
}

- (void)_resolveRegulatoryImage:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: No Lockdown Regulatory Image device model", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resolveRegulatoryImage:(os_log_t)log .cold.5(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SFDeviceRegulatoryAttributes _resolveRegulatoryImage:]";
  _os_log_debug_impl(&dword_2659AD000, log, OS_LOG_TYPE_DEBUG, "%{Public}s: No Lockdown Regulatory Images in container", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getRegulatoryAttributes
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *self;
  OUTLINED_FUNCTION_2(&dword_2659AD000, a2, a3, "%{Public}s: Failed to get group path for Regulatory Images! error = %llu", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end