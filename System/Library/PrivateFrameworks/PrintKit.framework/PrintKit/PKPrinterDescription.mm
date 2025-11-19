@interface PKPrinterDescription
+ (id)attributesRequiredForPKPaperList;
+ (id)standardRequestedAttributes;
+ (id)txtRecordReconstructingAttributes;
- (BOOL)_calcPrintScalingSupported:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (PKPrinterDescription)initWithAttributes:(const GET_PRINTER_ATTRIBUTES_Response *)a3 translations:(id)a4;
- (PKPrinterDescription)initWithAttributes:(const GET_PRINTER_ATTRIBUTES_Response *)a3 txtRecord:(id)a4 translations:(id)a5;
- (PKPrinterDescription)initWithCoder:(id)a3;
- (PKPrinterDescription)initWithTXT:(id)a3;
- (PKPrinterDescription)initWithUserCodableDictionary:(id)a3;
- (id)_calcDeviceID:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcFinishingTemplates:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcInputSlots:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcJobPresets:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcMediaTypes:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcOutputBins:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calcSpecialFeedOrientation:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculateFormats:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculateMediaColSupportedArray:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculateOutputModes:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculatePaperList:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculateQuality:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_calculateSides:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (id)_makePrinterDeviceIDFromTxt;
- (id)makeTXTRecordWithURL:(id)a3;
- (id)printInfoSupportedDictionary;
- (id)txtRecordObjectForKey:(id)a3;
- (id)userCodableDictionary;
- (int64_t)_calcJobAccountIDSupport:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (unint64_t)_calcIdentifyActions:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (void)_calcPrinterDriverInfo:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (void)_ingestAttrs:(const GET_PRINTER_ATTRIBUTES_Response *)a3;
- (void)_ingestTxtRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)visitProperties:(Visitor *)a3;
@end

@implementation PKPrinterDescription

+ (id)standardRequestedAttributes
{
  v4[33] = *MEMORY[0x277D85DE8];
  v4[0] = IPPNomenclature::keyCopiesSupported;
  v4[1] = IPPNomenclature::keyDocumentFormatSupported;
  v4[2] = IPPNomenclature::keyDocumentPasswordSupported;
  v4[3] = IPPNomenclature::keyFinishingsColDatabase;
  v4[4] = IPPNomenclature::keyFinishingsSupported;
  v4[5] = IPPNomenclature::keyOutputBinDefault;
  v4[6] = IPPNomenclature::keyPrinterOutputTray;
  v4[7] = IPPNomenclature::keyOutputBinSupported;
  v4[8] = IPPNomenclature::keyIdentifyActionsSupported;
  v4[9] = IPPNomenclature::keyJobAccountIDSupported;
  v4[10] = IPPNomenclature::keyJpegFeaturesSupported;
  v4[11] = IPPNomenclature::keyJpegKOctetsSupported;
  v4[12] = IPPNomenclature::keyJpegXDimensionSupported;
  v4[13] = IPPNomenclature::keyJpegYDimensionSupported;
  v4[14] = IPPNomenclature::keyLandscapeOrientationRequestedPreferred;
  v4[15] = IPPNomenclature::keyMediaColSupported;
  v4[16] = IPPNomenclature::keyMediaSourceSupported;
  v4[17] = IPPNomenclature::keyMediaColReady;
  v4[18] = IPPNomenclature::keyOperationsSupported;
  v4[19] = IPPNomenclature::keyPdfKOctetsSupported;
  v4[20] = IPPNomenclature::keyPrintColorModeSupported;
  v4[21] = IPPNomenclature::keyPrintQualitySupported;
  v4[22] = IPPNomenclature::keyPrintScalingSupported;
  v4[23] = IPPNomenclature::keyPrinterChargeInfoUri;
  v4[24] = IPPNomenclature::keyPrinterInputTray;
  v4[25] = IPPNomenclature::keyMediaTypeSupported;
  v4[26] = IPPNomenclature::keyPrinterMandatoryJobAttributes;
  v4[27] = IPPNomenclature::keyPrinterStateReasons;
  v4[28] = IPPNomenclature::keySidesSupported;
  v4[29] = IPPNomenclature::keyJobPresetsSupported;
  v4[30] = IPPNomenclature::keyPrinterMoreInfo;
  v4[31] = IPPNomenclature::keyPrinterSupplyInfoURI;
  v4[32] = IPPNomenclature::keyPrinterStringsURI;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:33];

  return v2;
}

+ (id)txtRecordReconstructingAttributes
{
  v4[13] = *MEMORY[0x277D85DE8];
  v4[0] = IPPNomenclature::keyDocumentFormatSupported;
  v4[1] = IPPNomenclature::keyOutputModeSupported;
  v4[2] = IPPNomenclature::keyPrintColorModeSupported;
  v4[3] = IPPNomenclature::keyPrinterDNS_SD_Name;
  v4[4] = IPPNomenclature::keyPrinterKind;
  v4[5] = IPPNomenclature::keyPrinterLocation;
  v4[6] = IPPNomenclature::keyPrinterMakeAndModel;
  v4[7] = IPPNomenclature::keyPrinterMoreInfo;
  v4[8] = IPPNomenclature::keyPrinterName;
  v4[9] = IPPNomenclature::keyPrinterUUID;
  v4[10] = IPPNomenclature::keySidesSupported;
  v4[11] = IPPNomenclature::keyURFSupported;
  v4[12] = IPPNomenclature::keyURIAuthenticationSupported;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:13];

  return v2;
}

- (id)printInfoSupportedDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  sides = self->_sides;
  if (sides)
  {
    [v3 setObject:sides forKeyedSubscript:@"sides"];
  }

  orientations = self->_orientations;
  if (orientations)
  {
    [v4 setObject:orientations forKeyedSubscript:@"orientation-requested"];
  }

  quality = self->_quality;
  if (quality)
  {
    [v4 setObject:quality forKeyedSubscript:@"print-quality"];
  }

  formats = self->_formats;
  if (formats)
  {
    [v4 setObject:formats forKeyedSubscript:@"document-format"];
  }

  mediaColSupportedArray = self->_mediaColSupportedArray;
  if (mediaColSupportedArray)
  {
    [v4 setObject:mediaColSupportedArray forKeyedSubscript:@"media-col-supported"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsPrintColorMode];
  [v4 setObject:v10 forKeyedSubscript:@"com.apple.supportsPrintColorMode"];

  outputModes = self->_outputModes;
  if (outputModes)
  {
    [v4 setObject:outputModes forKeyedSubscript:@"print-color-mode"];
  }

  finishings = self->_finishings;
  if (finishings)
  {
    [v4 setObject:finishings forKeyedSubscript:@"com.apple.finishings"];
  }

  finishingTemplates = self->_finishingTemplates;
  if (finishingTemplates)
  {
    [v4 setObject:finishingTemplates forKeyedSubscript:@"com.apple.finishingTemplate"];
  }

  outputBins = self->_outputBins;
  if (outputBins)
  {
    [v4 setObject:outputBins forKeyedSubscript:@"com.apple.outputBin"];
  }

  inputSlots = self->_inputSlots;
  if (inputSlots)
  {
    [v4 setObject:inputSlots forKeyedSubscript:@"com.apple.inputSlot"];
  }

  mediaTypes = self->_mediaTypes;
  if (mediaTypes)
  {
    [v4 setObject:mediaTypes forKeyedSubscript:@"com.apple.mediaType"];
  }

  jobPresets = self->_jobPresets;
  if (jobPresets)
  {
    [v4 setObject:jobPresets forKeyedSubscript:@"com.apple.jobPreset"];
  }

  printerInfoURL = self->_printerInfoURL;
  if (printerInfoURL)
  {
    [v4 setObject:printerInfoURL forKeyedSubscript:@"PrinterInfoURL"];
  }

  suppliesInfoURL = self->_suppliesInfoURL;
  if (suppliesInfoURL)
  {
    [v4 setObject:suppliesInfoURL forKeyedSubscript:@"PrinterSuppliesURL"];
  }

  return v4;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = PKPrinterDescription;
  v2 = [(PKPrinterDescription *)&v4 description];

  return v2;
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__PKPrinterDescription_debugDescription__block_invoke;
  v4[3] = &unk_279A92508;
  v4[4] = self;
  v4[5] = &v5;
  DescVisitor::visitProperties(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__PKPrinterDescription_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
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
  (*(a3->var0 + 3))(a3, @"type_has_duplex", &self->_type_has_duplex);
  (*(a3->var0 + 3))(a3, @"type_has_color", &self->_type_has_color);
  (*(a3->var0 + 16))(a3, @"attrs_document_format_supported", &self->_attrs_document_format_supported);
  (*(a3->var0 + 16))(a3, @"attrs_printer_native_formats", &self->_attrs_printer_native_formats);
  (*(a3->var0 + 15))(a3, @"attrs_media_source_supported", &self->_attrs_media_source_supported);
  (*(a3->var0 + 7))(a3, @"driverformat", &self->_driverformat);
  (*(a3->var0 + 16))(a3, @"jpegFeatures", &self->_jpegFeatures);
  (*(a3->var0 + 16))(a3, @"mandatoryJobAttributes", &self->_mandatoryJobAttributes);
  (*(a3->var0 + 4))(a3, @"documentPasswordSupported", &self->_documentPasswordSupported);
  (*(a3->var0 + 6))(a3, @"jobAccountIDSupport", &self->_jobAccountIDSupport);
  (*(a3->var0 + 4))(a3, @"max_pdf", &self->_max_pdf);
  (*(a3->var0 + 4))(a3, @"max_jpeg", &self->_max_jpeg);
  (*(a3->var0 + 4))(a3, @"max_jpeg_x", &self->_max_jpeg_x);
  (*(a3->var0 + 4))(a3, @"max_jpeg_y", &self->_max_jpeg_y);
  (*(a3->var0 + 4))(a3, @"preferred_landscape", &self->_preferred_landscape);
  (*(a3->var0 + 3))(a3, @"print_scaling_supported", &self->_print_scaling_supported);
  (*(a3->var0 + 3))(a3, @"pin_required", &self->_pin_required);
  (*(a3->var0 + 6))(a3, @"printer_type_from_cups_scalar", &self->_printer_type_from_cups_scalar);
  (*(a3->var0 + 4))(a3, @"identifyActions", &self->_identifyActions);
  (*(a3->var0 + 15))(a3, @"sides", &self->_sides);
  (*(a3->var0 + 15))(a3, @"orientations", &self->_orientations);
  (*(a3->var0 + 15))(a3, @"quality", &self->_quality);
  (*(a3->var0 + 15))(a3, @"formats", &self->_formats);
  (*(a3->var0 + 15))(a3, @"mediaColSupportedArray", &self->_mediaColSupportedArray);
  (*(a3->var0 + 18))(a3, @"specialFeedOrientation", &self->_specialFeedOrientation);
  (*(a3->var0 + 3))(a3, @"supportsPrintColorMode", &self->_supportsPrintColorMode);
  (*(a3->var0 + 20))(a3, @"paperList", &self->_paperList);
  (*(a3->var0 + 15))(a3, @"outputModes", &self->_outputModes);
  (*(a3->var0 + 14))(a3, @"finishings", &self->_finishings);
  (*(a3->var0 + 17))(a3, @"finishingTemplates", &self->_finishingTemplates);
  (*(a3->var0 + 17))(a3, @"outputBins", &self->_outputBins);
  (*(a3->var0 + 22))(a3, @"trays", &self->_trays);
  (*(a3->var0 + 17))(a3, @"inputSlots", &self->_inputSlots);
  (*(a3->var0 + 17))(a3, @"mediaTypes", &self->_mediaTypes);
  (*(a3->var0 + 17))(a3, @"jobPresets", &self->_jobPresets);
  (*(a3->var0 + 8))(a3, @"printerInfoURL", &self->_printerInfoURL);
  (*(a3->var0 + 8))(a3, @"suppliesInfoURL", &self->_suppliesInfoURL);
  (*(a3->var0 + 8))(a3, @"quotaManagementURL", &self->_quotaManagementURL);
  (*(a3->var0 + 7))(a3, @"deviceID", &self->_deviceID);
  (*(a3->var0 + 12))(a3, @"dids", &self->_dids);
  (*(a3->var0 + 12))(a3, @"translations", &self->_translations);
  v5 = *(a3->var0 + 24);

  v5(a3);
}

- (PKPrinterDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPrinterDescription;
  v5 = [(PKPrinterDescription *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"_txtRecord"];
    txtRecord = v5->_txtRecord;
    v5->_txtRecord = v7;

    DecodeVisitor::visitProperties(v5, v4);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  txtRecord = self->_txtRecord;
  if (txtRecord)
  {
    [v5 encodeObject:txtRecord forKey:@"_txtRecord"];
  }

  EncodeVisitor::visitProperties(self, v5);
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
    v7[2] = __32__PKPrinterDescription_isEqual___block_invoke;
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

uint64_t __32__PKPrinterDescription_isEqual___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 200))(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PKPrinterDescription_userCodableDictionary__block_invoke;
  v6[3] = &unk_279A92468;
  v4 = v3;
  v7 = v4;
  UserCodedSerializationVisitor::visitProperties(self, v6);

  return v4;
}

void __45__PKPrinterDescription_userCodableDictionary__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
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

- (PKPrinterDescription)initWithUserCodableDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPrinterDescription;
  v5 = [(PKPrinterDescription *)&v9 init];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__PKPrinterDescription_initWithUserCodableDictionary___block_invoke;
    v7[3] = &unk_279A92468;
    v8 = v4;
    UserCodedSerializationVisitor::visitProperties(v5, v7);
  }

  return v5;
}

void __54__PKPrinterDescription_initWithUserCodableDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
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

- (id)makeTXTRecordWithURL:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setObject:@"1" forKeyedSubscript:@"txtvers"];
  [v5 setObject:@"1" forKeyedSubscript:@"qtotal"];
  v6 = [v4 path];
  [v5 setObject:v6 forKeyedSubscript:@"rp"];

  v7 = [v5 objectForKeyedSubscript:@"ty"];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 objectForKeyedSubscript:@"ty"];
    v10 = [v8 stringWithFormat:@"(%@)", v9];
    [v5 setObject:v10 forKeyedSubscript:@"product"];
  }

  if ([(PKPrinterDescription *)self supportsPrintColorMode])
  {
    v11 = @"T";
  }

  else
  {
    v11 = @"F";
  }

  [v5 setObject:v11 forKeyedSubscript:@"color"];
  if ([(PKPrinterDescription *)self type_has_duplex])
  {
    v12 = @"T";
  }

  else
  {
    v12 = @"F";
  }

  [v5 setObject:v12 forKeyedSubscript:@"duplex"];
  v13 = [(PKPrinterDescription *)self formats];
  v14 = [v13 componentsJoinedByString:{@", "}];
  [v5 setObject:v14 forKeyedSubscript:@"pdl"];

  v15 = [(PKPrinterDescription *)self deviceID];
  [v5 setObject:v15 forKeyedSubscript:@"urf"];

  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];

  if (v17)
  {
    if ([v17 hasPrefix:@"urn:uuid:"])
    {
      v18 = [v17 substringFromIndex:{objc_msgSend(@"urn:uuid:", "length")}];

      v17 = v18;
    }

    [v5 setObject:v17 forKeyedSubscript:@"uuid"];
  }

  v19 = [(PKPrinterDescription *)self dids];
  v20 = [v19 objectForKeyedSubscript:@"MDL"];
  [v5 setObject:v20 forKeyedSubscript:@"display-name"];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [&unk_2871ADAC0 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = *v30;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(&unk_2871ADAC0);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [v5 objectForKey:v24];
        v26 = v25 == 0;

        if (v26)
        {
          v27 = _PKLogCategory(PKLogCategoryDiscovery[0]);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v34 = v4;
            v35 = 2114;
            v36 = v24;
            _os_log_impl(&dword_25F5FC000, v27, OS_LOG_TYPE_ERROR, "txt record for '%{public}@' does not contain '%{public}@', not AirPrint compliant", buf, 0x16u);
          }

          v5 = 0;
          goto LABEL_25;
        }
      }

      v21 = [&unk_2871ADAC0 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return v5;
}

+ (id)attributesRequiredForPKPaperList
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = IPPNomenclature::keyMediaColReady;
  v4[1] = IPPNomenclature::keyMediaColDatabase;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (PKPrinterDescription)initWithAttributes:(const GET_PRINTER_ATTRIBUTES_Response *)a3 translations:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKPrinterDescription;
  v8 = [(PKPrinterDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_translations, a4);
    [(PKPrinterDescription *)v9 _ingestAttrs:a3];
  }

  return v9;
}

- (PKPrinterDescription)initWithTXT:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPrinterDescription;
  v5 = [(PKPrinterDescription *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPrinterDescription *)v5 _ingestTxtRecord:v4];
  }

  return v6;
}

- (PKPrinterDescription)initWithAttributes:(const GET_PRINTER_ATTRIBUTES_Response *)a3 txtRecord:(id)a4 translations:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKPrinterDescription;
  v10 = [(PKPrinterDescription *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_translations, a5);
    [(PKPrinterDescription *)v11 _ingestTxtRecord:v8];
    [(PKPrinterDescription *)v11 _ingestAttrs:a3];
  }

  return v11;
}

- (id)_calcFinishingTemplates:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v26 = objc_opt_new();
  v24 = Printd_Parameters::_get_FinishingsColDatabase(&a3->var0);
  if ([v24 count])
  {
    v29 = objc_opt_new();
    v23 = GetLocalizedNameForOption(&cfstr_None.isa, &cfstr_Finishingtempl.isa);
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"none", @"finishingTemplateChoice", v23, @"finishingTemplateText", 0}];
    [v26 addObject:v4];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v24;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v5)
    {
      v6 = *v37;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v37 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v36 + 1) + 8 * i);
          v9 = [v8 _findAttribute0:@"finishing-template" valueTag:0];
          v10 = ippGetIXString(v9, 0);

          if (v10 && ([v29 containsObject:v10] & 1) == 0 && objc_msgSend(v10, "hasPrefix:", @"fold-"))
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v11 = [&unk_2871ADAD8 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v11)
            {
              v12 = *v33;
LABEL_12:
              v13 = 0;
              while (1)
              {
                if (*v33 != v12)
                {
                  objc_enumerationMutation(&unk_2871ADAD8);
                }

                if ([v10 containsString:*(*(&v32 + 1) + 8 * v13)])
                {
                  break;
                }

                if (v11 == ++v13)
                {
                  v11 = [&unk_2871ADAD8 countByEnumeratingWithState:&v32 objects:v40 count:16];
                  if (v11)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_18;
                }
              }
            }

            else
            {
LABEL_18:
              [v29 addObject:v10];
              v14 = objc_opt_new();
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __77__PKPrinterDescription_PrintertoolSideConstruction___calcFinishingTemplates___block_invoke;
              v30[3] = &unk_279A92558;
              v27 = v14;
              v31 = v27;
              [v8 enumerateAttributes:v30];
              v15 = v10;
              v16 = GetLocalizedNameForOption(v15, &cfstr_Finishingtempl.isa);
              if ([v16 isEqual:v15])
              {
                v17 = [(PKPrinterDescription *)self translations];
                v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"finishing-template.%@", v15];
                v19 = [v17 objectForKey:v18];

                if (v19)
                {
                  v20 = v19;

                  v16 = v20;
                }
              }

              if (([v16 isEqual:v15] & 1) == 0)
              {
                v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, @"finishingTemplateChoice", v16, @"finishingTemplateText", v27, @"finishingTemplateOptions", 0}];
                [v26 addObject:v21];
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v5);
    }
  }

  return v26;
}

void __77__PKPrinterDescription_PrintertoolSideConstruction___calcFinishingTemplates___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 value_tag] == 52)
  {
    v3 = [v4 name];
    if ([v3 compare:@"media-size"])
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

- (id)_calcOutputBins:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v4 = objc_opt_new();
  v5 = Printd_Parameters::_get_OutputBinSupported(&a3->var0);
  if ([v5 count])
  {
    v6 = Printd_Parameters::_get_OutputBinDefault(&a3->var0);
    v7 = Printd_Parameters::_get_PrinterOutputTray(&a3->var0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__PKPrinterDescription_PrintertoolSideConstruction___calcOutputBins___block_invoke;
    v11[3] = &unk_279A92580;
    v8 = v6;
    v12 = v8;
    v13 = v7;
    v14 = v4;
    v9 = v7;
    [v5 enumerateObjectsUsingBlock:v11];
  }

  return v4;
}

void __69__PKPrinterDescription_PrintertoolSideConstruction___calcOutputBins___block_invoke(id *a1, void *a2, unint64_t a3)
{
  v12 = a2;
  v5 = objc_opt_new();
  [v5 setObject:v12 forKey:@"OutputBinChoice"];
  v6 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:@" "];
  v7 = [v6 capitalizedString];

  [v5 setObject:v7 forKey:@"OutputBinText"];
  if ([a1[4] isEqualToString:v12])
  {
    [v5 setObject:@"YES" forKey:@"DefaultOutputBin"];
  }

  if ([a1[5] count] > a3)
  {
    v8 = [a1[5] objectAtIndexedSubscript:a3];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:"stackingorder=firstToLast" length:26];;
      [v8 rangeOfData:v9 options:0 range:{0, objc_msgSend(v8, "length")}];
      if (v10)
      {
        v11 = @"Normal";
      }

      else
      {
        v11 = @"Reverse";
      }

      [v5 setObject:v11 forKey:@"com.apple.pageStackOrder"];
    }
  }

  [a1[6] addObject:v5];
}

- (unint64_t)_calcIdentifyActions:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  Printd_Parameters::_get_IdentifyActionsSupported(&a3->var0);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"display", v10}])
        {
          v4 |= 1uLL;
        }

        else if ([v8 hasPrefix:@"flash"])
        {
          v4 |= 2uLL;
        }

        else if ([v8 hasPrefix:@"sound"])
        {
          v4 |= 4uLL;
        }

        else if ([v8 hasPrefix:@"speak"])
        {
          v4 |= 8uLL;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v4;
}

- (id)_calcSpecialFeedOrientation:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  Printd_Parameters::_get_MediaColReady(&a3->var0);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v4 = v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 mediaSourceProperties];
        if (v9)
        {
          v10 = [v8 mediaSize];
          v11 = v10;
          if (!v10 || ([v10 hasValidIntegerTypesForXAndY] & 1) == 0)
          {
            goto LABEL_22;
          }

          v12 = [v11 xDimension];
          v13 = [v11 yDimension];
          v14 = v13;
          if (v12 < 1 || v13 < 1)
          {
            goto LABEL_22;
          }

          v16 = [v9 feedDirection];
          v17 = [v9 feedOrientation];
          if ([v16 compare:@"long-edge-first"])
          {
            if ([v17 integerValue] == 6)
            {
              if (!v17)
              {
LABEL_21:

LABEL_22:
                goto LABEL_23;
              }

LABEL_19:
              v18 = [PKPaper mediaNameForWidth:v12 height:v14 borderless:0 simplex:0];
              [v20 setObject:v17 forKey:v18];
            }

            goto LABEL_21;
          }

          if (!v17)
          {
            v17 = &unk_2871AD8E0;
          }

          goto LABEL_19;
        }

LABEL_23:
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v20;
}

- (BOOL)_calcPrintScalingSupported:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = Printd_Parameters::_get_PrintScalingSupported(&a3->var0);
  v5 = [v3 setWithArray:v4];

  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2871ADAF0];
  v7 = [v5 intersectsSet:v6];

  return v7;
}

- (id)_calculateSides:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v9[3] = *MEMORY[0x277D85DE8];
  v4 = Printd_Parameters::_get_SidesSupported(&a3->var0);
  if ([v4 count] > 1)
  {

LABEL_4:
    self->_type_has_duplex = 1;
    v9[0] = @"one-sided";
    v9[1] = @"two-sided-short-edge";
    v9[2] = @"two-sided-long-edge";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    goto LABEL_6;
  }

  type_has_duplex = self->_type_has_duplex;

  if (type_has_duplex)
  {
    goto LABEL_4;
  }

  v8 = @"one-sided";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
LABEL_6:

  return v6;
}

- (id)_calculateQuality:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v4 = objc_opt_new();
  v5 = Printd_Parameters::_get_PrintQualitySupported(&a3->var0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__PKPrinterDescription_PrintertoolSideConstruction___calculateQuality___block_invoke;
  v10[3] = &unk_279A925A8;
  v6 = v4;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

  if (![v6 count])
  {
    v7 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_DEFAULT, "No print-quality-supported attribute found.  Defaulting to normal quality.", v9, 2u);
    }

    [v6 addObject:@"4"];
  }

  return v6;
}

void __71__PKPrinterDescription_PrintertoolSideConstruction___calculateQuality___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v3, "integerValue")];
  [v4 addObject:v5];
}

- (id)_calculateFormats:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = Printd_Parameters::_get_DocumentFormatSupported(&a3->var0);
  v6 = [v4 setWithArray:v5];

  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_2871ADB08];
  [v6 intersectSet:v7];
  if (![v6 count])
  {
    v8 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "No document-format-supported attribute found or no supported formats found.", buf, 2u);
    }

    v9 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"pdl"];
    v10 = v9;
    if (v9)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v9 lowercaseString];
      v12 = [v11 componentsSeparatedByString:{@", "}];

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if ([v7 containsObject:v16])
            {
              [v6 addObject:v16];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v13);
      }
    }
  }

  v17 = +[PKDefaults requiredPDL];
  if (v17 && ([v6 containsObject:v17] & 1) == 0)
  {
    v18 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v17;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_25F5FC000, v18, OS_LOG_TYPE_DEFAULT, "Formats array doesn't contain '%{public}@', which is required; contains: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v19 = [v6 allObjects];

  return v19;
}

- (id)_calculateMediaColSupportedArray:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v3 = Printd_Parameters::_get_MediaColSupported(&a3->var0);
  if (![v3 count])
  {
    v4 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_DEFAULT, "No mediaColSupported found, defaulting to media-bottom-margin, media-left-margin, media-right-margin, media-size, and media-top-margin.", v6, 2u);
    }

    v3 = &unk_2871ADB20;
  }

  return v3;
}

- (id)_calculatePaperList:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v4 = [PKPaperList paperListWithAttrs:a3 translations:self->_translations];
  if (!v4)
  {
    v5 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "would like lazily fetched paperlist", buf, 2u);
    }

    self->_wantsComprehensivePaperList = 1;
    v4 = [PKPaperList paperListWithTXTRecord:self->_txtRecord];
    if (!v4)
    {
      v6 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_ERROR, "Missing txt record sufficent for paper list", v8, 2u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (id)_calculateOutputModes:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = Printd_Parameters::_get_PrintColorModeSupported(&a3->var0);
  if (![v4 count])
  {
    if (self->_type_has_color)
    {
      v10 = @"monochrome";
      v11 = @"color";
      v5 = &v10;
      v6 = 2;
    }

    else
    {
      v9 = @"monochrome";
      v5 = &v9;
      v6 = 1;
    }

    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:{v6, v9, v10, v11, v12}];

    v4 = v7;
  }

  return v4;
}

- (id)_calcInputSlots:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_trays;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
        v10 = [v8 name];
        [v9 setObject:v10 forKey:@"InputSlotChoice"];

        v11 = [v8 localizedName];
        [v9 setObject:v11 forKey:@"InputSlotName"];

        v12 = [v8 mediaName];
        LOBYTE(v11) = v12 == 0;

        if ((v11 & 1) == 0)
        {
          v13 = [v8 mediaName];
          [v9 setObject:v13 forKey:@"InputSlotMedia"];
        }

        [v4 addObject:v9];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v4;
}

- (id)_calcMediaTypes:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = objc_opt_new();
  v17 = Printd_Parameters::_get_MediaTypeSupported(&a3->var0);
  if (!v17)
  {
    goto LABEL_18;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v17;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v4)
  {

LABEL_18:
    v25[0] = @"MediaTypeChoice";
    v25[1] = @"MediaTypeName";
    v26[0] = @"auto";
    v26[1] = @"auto";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v19 insertObject:v15 atIndex:0];

    goto LABEL_19;
  }

  v5 = 0;
  v6 = *v22;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v22 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v21 + 1) + 8 * i);
      v9 = GetLocalizedNameForOption(v8, &cfstr_Mediatypenames.isa);
      if ([v9 isEqual:v8])
      {
        v10 = [(PKPrinterDescription *)self translations];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"media-type.%@", v8];
        v12 = [v10 objectForKey:v11];

        if (v12)
        {
          v13 = v12;

          v9 = v13;
        }
      }

      if (([v9 isEqual:v8] & 1) == 0)
      {
        v27[0] = @"MediaTypeChoice";
        v27[1] = @"MediaTypeName";
        v28[0] = v8;
        v28[1] = v9;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
        [v19 addObject:v14];

        v5 |= [(NSString *)v8 isEqual:@"auto"];
      }
    }

    v4 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  }

  while (v4);

  if ((v5 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v19;
}

- (id)_calcJobPresets:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = objc_opt_new();
  v4 = Printd_Parameters::_get_JobPresetsSupported(&a3->var0);
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = objc_opt_new();
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __69__PKPrinterDescription_PrintertoolSideConstruction___calcJobPresets___block_invoke;
          v24[3] = &unk_279A92558;
          v10 = v9;
          v25 = v10;
          [v8 enumerateAttributes:v24];
          v11 = [v10 objectForKeyedSubscript:@"preset-name"];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            v14 = [(PKPrinterDescription *)self translations];
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"job-preset.%@", v13];
            v16 = [v14 objectForKey:v15];

            v17 = v13;
            if (v16)
            {
              v17 = v16;
            }

            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v17, @"JobPresetChoice", v10, @"JobPresetOption", 0}];
            [v23 addObject:v18];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    v4 = v20;
  }

  return v23;
}

void __69__PKPrinterDescription_PrintertoolSideConstruction___calcJobPresets___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(PK_ipp_attribute_t *)v3 name];
  v5 = [(PK_ipp_attribute_t *)v3 value_tag];
  v6 = v5 - 33;
  if ((v5 - 33) > 0x23)
  {
    goto LABEL_7;
  }

  if (((1 << v6) & 0xB00000000) != 0)
  {
    v7 = ippGetIXString(v3, 0);
    [*(a1 + 32) setObject:v7 forKey:v4];

    goto LABEL_12;
  }

  if (((1 << v6) & 5) != 0)
  {
    if ([v4 compare:@"finishings"])
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{ippGetIXInteger(v3, 0)}];
    }

    else
    {
      v10 = v3;
      v11 = objc_opt_new();
      *v12 = MEMORY[0x277D85DD0];
      *&v12[8] = 3221225472;
      *&v12[16] = ___ZL21convertIPPIntsToArrayP18PK_ipp_attribute_t_block_invoke;
      *&v12[24] = &unk_279A8FDD8;
      v8 = v11;
      v13 = v8;
      [(PK_ipp_attribute_t *)v10 enumerateValues:v12];
    }

    [*(a1 + 32) setObject:v8 forKey:{v4, *v12, *&v12[8], *&v12[24]}];
  }

  else
  {
LABEL_7:
    v9 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315650;
      *&v12[4] = "[PKPrinterDescription(PrintertoolSideConstruction) _calcJobPresets:]_block_invoke";
      *&v12[12] = 1024;
      *&v12[14] = v5;
      *&v12[18] = 2114;
      *&v12[20] = v4;
      _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_ERROR, "%s: unhandled valueTag %d for %{public}@", v12, 0x1Cu);
    }
  }

LABEL_12:
}

- (id)_calcDeviceID:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v4 = Printd_Parameters::_get_PrinterDeviceId(&a3->var0);
  if (!v4)
  {
    v4 = [(PKPrinterDescription *)self _makePrinterDeviceIDFromTxt];
  }

  return v4;
}

- (int64_t)_calcJobAccountIDSupport:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  mandatoryJobAttributes = self->_mandatoryJobAttributes;
  if (mandatoryJobAttributes && [(NSSet *)mandatoryJobAttributes containsObject:@"job-account-id"])
  {
    return 1;
  }

  if (!Printd_Parameters::_has_JobAccountIDSupported(&a3->var0))
  {
    return 0;
  }

  if (Printd_Parameters::_get_JobAccountIDSupported(&a3->var0))
  {
    return 2;
  }

  return 0;
}

- (void)_calcPrinterDriverInfo:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  bzero(v14, 0x838uLL);
  *&v16 = [(PKPrinterDescription *)self printer_type_from_cups_scalar];
  v4 = [(PKPrinterDescription *)self dids];
  v5 = liteFigureOutDriverSetupInfo(&v16, v14, v4);

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:*(&v16 + 1)];
    attrs_document_format_supported = self->_attrs_document_format_supported;
    self->_attrs_document_format_supported = v6;

    v8 = [MEMORY[0x277CBEB98] setWithArray:v17];
    attrs_printer_native_formats = self->_attrs_printer_native_formats;
    self->_attrs_printer_native_formats = v8;

    objc_storeStrong(&self->_attrs_media_source_supported, *(&v17 + 1));
    v10 = v18;
    self->_printer_type_from_cups_scalar = v16;
    v11 = v10;
    driverformat = self->_driverformat;
    self->_driverformat = v11;
  }

  else
  {
    driverformat = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(driverformat, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_25F5FC000, driverformat, OS_LOG_TYPE_ERROR, "Driver initialization failed.", v13, 2u);
    }
  }
}

- (id)_makePrinterDeviceIDFromTxt
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"URF"];
  v32 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"usb_MFG"];
  v2 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"usb_MDL"];
  v33 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"product"];
  if (v32 || !v33)
  {
    goto LABEL_12;
  }

  if ([v33 rangeOfString:@"DesignJet" options:1] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v33, "rangeOfString:options:", @"DeskJet", 1) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v33, "rangeOfString:options:", @"LaserJet", 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = @"HP";
    if ([v33 rangeOfString:@"Photosmart" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v3 = [v33 rangeOfString:@"OfficeJet" options:1];
    v4 = @"HP";
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = @"Unknown";
    }
  }

  else
  {
    v4 = @"HP";
  }

  v32 = v4;
LABEL_12:
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = @"Unknown";
  }

  v31 = v5;
  if (!v2 && v33)
  {
    v31 = v33;
  }

  snprintf(__str, 0x400uLL, "MFG:%s;MDL:%s;CMD", [(__CFString *)v32 UTF8String], [(__CFString *)v31 UTF8String]);
  if ([PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF_valid)
  {
    if ([PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF)
    {
LABEL_20:
      strlcat(__str, ":URF", 0x400uLL);
      goto LABEL_42;
    }
  }

  else
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PrintKitAlwaysURF", @".GlobalPreferences", &[PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF_valid);
    if ([PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF_valid)
    {
      v7 = AppBooleanValue;
    }

    else
    {
      v7 = 0;
    }

    [PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF = v7;
    [PKPrinterDescription(PrintertoolSideConstruction) _makePrinterDeviceIDFromTxt]::alwaysURF_valid = 1;
    if (v7)
    {
      goto LABEL_20;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = self->_formats;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = ":";
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        strlcat(__str, v10, 0x400uLL);
        v14 = [v13 isEqual:@"image/jpeg"];
        v15 = "JPEG";
        if (v14 & 1) != 0 || (v16 = [v13 isEqual:@"application/pdf"], v15 = "PDF", (v16) || (v17 = objc_msgSend(v13, "isEqual:", @"image/png"), v15 = "PNG", (v17) || (v18 = objc_msgSend(v13, "isEqual:", @"application/postscript"), v15 = "PS", (v18) || (v19 = objc_msgSend(v13, "isEqual:", @"application/vnd.hp-pcl"), v15 = "PCL", (v19) || (v20 = objc_msgSend(v13, "isEqual:", @"image/urf"), v15 = "URF", v20))
        {
          strlcat(__str, v15, 0x400uLL);
        }

        else
        {
          v21 = v13;
          strlcat(__str, [v13 UTF8String], 0x400uLL);
        }

        ++v12;
        v10 = ",";
      }

      while (v9 != v12);
      v22 = [(NSArray *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v9 = v22;
      v10 = ",";
    }

    while (v22);
  }

LABEL_42:
  strlcat(__str, ";", 0x400uLL);
  v23 = v34;
  if (!v34)
  {
    v23 = @"CP1,RS300,W8,SRGB24";
  }

  v35 = v23;
  v24 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"printer-type"];
  v25 = v24 == 0;

  if (!v25)
  {
    v26 = [v35 stringByReplacingOccurrencesOfString:@"CP1 withString:{", @"CP255, "}];

    v35 = v26;
  }

  strlcat(__str, "URF:", 0x400uLL);
  v27 = v35;
  strlcat(__str, [v35 UTF8String], 0x400uLL);
  strlcat(__str, ";", 0x400uLL);
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];

  return v28;
}

- (id)txtRecordObjectForKey:(id)a3
{
  txtRecord = self->_txtRecord;
  v4 = [a3 lowercaseString];
  v5 = [(NSDictionary *)txtRecord objectForKey:v4];

  return v5;
}

- (void)_ingestTxtRecord:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___ZL20ensureLowercasedKeysP12NSDictionaryIP8NSStringS1_E_block_invoke;
  v11[3] = &unk_279A924B8;
  v6 = v5;
  v12 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];

  txtRecord = self->_txtRecord;
  self->_txtRecord = v6;

  v8 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"Color"];
  v9 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"Duplex"];
  v10 = [(PKPrinterDescription *)self txtRecordObjectForKey:@"product"];
  if (v8 && ([v8 isEqual:@"T"] & 1) != 0 || v10 && objc_msgSend(v10, "rangeOfString:", @"Color") != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_type_has_color = 1;
  }

  if (v9 && [v9 isEqual:@"T"])
  {
    self->_type_has_duplex = 1;
  }
}

- (void)_ingestAttrs:(const GET_PRINTER_ATTRIBUTES_Response *)a3
{
  v63[2] = *MEMORY[0x277D85DE8];
  if (Printd_Parameters::_has_CopiesSupported(&a3->var0))
  {
    Printd_Parameters::_get_CopiesSupported(&a3->var0, &v62);
    if (SHIDWORD(v62) >= 2)
    {
      self->_printer_type_from_cups_scalar |= 4uLL;
    }
  }

  if (Printd_Parameters::_has_JpegFeaturesSupported(&a3->var0))
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = Printd_Parameters::_get_JpegFeaturesSupported(&a3->var0);
    v7 = [v5 setWithArray:v6];
    jpegFeatures = self->_jpegFeatures;
    self->_jpegFeatures = v7;
  }

  v9 = MEMORY[0x277CBEB98];
  v10 = Printd_Parameters::_get_PrinterMandatoryJobAttributes(&a3->var0);
  v11 = [v9 setWithArray:v10];
  mandatoryJobAttributes = self->_mandatoryJobAttributes;
  self->_mandatoryJobAttributes = v11;

  self->_documentPasswordSupported = 0;
  if (Printd_Parameters::_has_DocumentPasswordSupported(&a3->var0))
  {
    self->_documentPasswordSupported = Printd_Parameters::_has_DocumentPasswordSupported(&a3->var0);
  }

  self->_jobAccountIDSupport = [(PKPrinterDescription *)self _calcJobAccountIDSupport:a3];
  if (Printd_Parameters::_has_PdfKOctetsSupported(&a3->var0))
  {
    Printd_Parameters::_get_PdfKOctetsSupported(&a3->var0, &v62);
    self->_max_pdf = HIDWORD(v62);
  }

  if (Printd_Parameters::_has_JpegKOctetsSupported(&a3->var0))
  {
    Printd_Parameters::_get_JpegKOctetsSupported(&a3->var0, &v62);
    self->_max_jpeg = HIDWORD(v62);
  }

  if (Printd_Parameters::_has_JpegXDimensionSupported(&a3->var0))
  {
    Printd_Parameters::_get_JpegXDimensionSupported(&a3->var0, &v62);
    self->_max_jpeg_x = HIDWORD(v62);
  }

  if (Printd_Parameters::_has_JpegYDimensionSupported(&a3->var0))
  {
    Printd_Parameters::_get_JpegYDimensionSupported(&a3->var0, &v62);
    self->_max_jpeg_y = HIDWORD(v62);
  }

  self->_preferred_landscape = 4;
  v13 = @"4";
  if (Printd_Parameters::_has_LandscapeOrientationRequestedPreferred(&a3->var0) && Printd_Parameters::_get_LandscapeOrientationRequestedPreferred(&a3->var0) == 5)
  {
    v14 = @"5";

    self->_preferred_landscape = 5;
    v13 = v14;
  }

  v63[0] = @"3";
  v63[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  orientations = self->_orientations;
  self->_orientations = v15;

  v17 = [(PKPrinterDescription *)self _calcSpecialFeedOrientation:a3];
  specialFeedOrientation = self->_specialFeedOrientation;
  self->_specialFeedOrientation = v17;

  self->_print_scaling_supported = [(PKPrinterDescription *)self _calcPrintScalingSupported:a3];
  v19 = [(PKPrinterDescription *)self _calculateSides:a3];
  sides = self->_sides;
  self->_sides = v19;

  v21 = [(PKPrinterDescription *)self _calculateQuality:a3];
  quality = self->_quality;
  self->_quality = v21;

  v23 = [(PKPrinterDescription *)self _calculateFormats:a3];
  formats = self->_formats;
  self->_formats = v23;

  v25 = [(PKPrinterDescription *)self _calculateMediaColSupportedArray:a3];
  mediaColSupportedArray = self->_mediaColSupportedArray;
  self->_mediaColSupportedArray = v25;

  v27 = Printd_Parameters::_get_PrintColorModeSupported(&a3->var0);
  self->_supportsPrintColorMode = [v27 count] != 0;

  v28 = [(PKPrinterDescription *)self _calculatePaperList:a3];
  paperList = self->_paperList;
  self->_paperList = v28;

  v30 = [(PKPrinterDescription *)self _calculateOutputModes:a3];
  outputModes = self->_outputModes;
  self->_outputModes = v30;

  v32 = Printd_Parameters::_get_FinishingsSupported(&a3->var0);
  finishings = self->_finishings;
  self->_finishings = v32;

  v34 = [(PKPrinterDescription *)self _calcFinishingTemplates:a3];
  finishingTemplates = self->_finishingTemplates;
  self->_finishingTemplates = v34;

  v36 = [(PKPrinterDescription *)self _calcOutputBins:a3];
  outputBins = self->_outputBins;
  self->_outputBins = v36;

  v38 = Printd_Parameters::_get_MediaSourceSupported(&a3->var0);
  v39 = Printd_Parameters::_get_PrinterInputTray(&a3->var0);
  v40 = [PKTray traysWithMediaSourceSupported:v38 printerInputTrays:v39];
  trays = self->_trays;
  self->_trays = v40;

  v42 = [(PKPrinterDescription *)self _calcInputSlots:a3];
  inputSlots = self->_inputSlots;
  self->_inputSlots = v42;

  v44 = [(PKPrinterDescription *)self _calcMediaTypes:a3];
  mediaTypes = self->_mediaTypes;
  self->_mediaTypes = v44;

  v46 = [(PKPrinterDescription *)self _calcJobPresets:a3];
  jobPresets = self->_jobPresets;
  self->_jobPresets = v46;

  v48 = Printd_Parameters::_get_PrinterMoreInfo(&a3->var0);
  printerInfoURL = self->_printerInfoURL;
  self->_printerInfoURL = v48;

  v50 = Printd_Parameters::_get_PrinterSupplyInfoURI(&a3->var0);
  suppliesInfoURL = self->_suppliesInfoURL;
  self->_suppliesInfoURL = v50;

  v52 = Printd_Parameters::_get_PrinterChargeInfoUri(&a3->var0);
  quotaManagementURL = self->_quotaManagementURL;
  self->_quotaManagementURL = v52;

  self->_identifyActions = [(PKPrinterDescription *)self _calcIdentifyActions:a3];
  v54 = [(PKPrinterDescription *)self _calcDeviceID:a3];
  deviceID = self->_deviceID;
  self->_deviceID = v54;

  v56 = self->_deviceID;
  if (v56)
  {
    v56 = _cupsGet1284Values(&v56->super.isa);
  }

  dids = self->_dids;
  self->_dids = v56;

  v58 = [(NSDictionary *)self->_dids objectForKey:@"TEST-PIN-REQUIRED"];
  v59 = v58 == 0;

  if (!v59)
  {
    self->_pin_required = 1;
  }

  [(PKPrinterDescription *)self _calcPrinterDriverInfo:a3];
  v60 = [(NSDictionary *)self->_dids objectForKey:@"TEST-FAX"];
  v61 = v60 == 0;

  if (!v61)
  {
    self->_printer_type_from_cups_scalar |= 0x80uLL;
  }
}

@end