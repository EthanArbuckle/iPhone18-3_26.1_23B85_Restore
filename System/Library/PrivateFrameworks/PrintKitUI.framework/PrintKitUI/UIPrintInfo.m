@interface UIPrintInfo
+ (UIPrintInfo)printInfo;
+ (UIPrintInfo)printInfoWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (UIPrintInfo)init;
- (UIPrintInfo)initWithCoder:(NSCoder *)coder;
- (id)_createPrintSettingsForPrinter:(id)a3;
- (id)_initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)numNUpColumns;
- (int64_t)numNUpRows;
- (void)_updateWithPrinter:(id)a3;
- (void)applyPreset:(id)a3;
- (void)clearPreset:(id)a3 origPrintInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)resetToDefaultSettings:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation UIPrintInfo

+ (UIPrintInfo)printInfo
{
  v2 = [[a1 alloc] _initWithDictionary:0];

  return v2;
}

+ (UIPrintInfo)printInfoWithDictionary:(NSDictionary *)dictionary
{
  v4 = dictionary;
  v5 = [[a1 alloc] _initWithDictionary:v4];

  return v5;
}

- (UIPrintInfo)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-[UIPrintInfo init] not allowed"];

  return 0;
}

- (id)_initWithDictionary:(id)a3
{
  v109[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v108.receiver = self;
  v108.super_class = UIPrintInfo;
  v5 = [(UIPrintInfo *)&v108 init];
  if (!v5)
  {
    goto LABEL_82;
  }

  v6 = CopyDictionaryString(v4, @"UIPrintInfoPrinterIDKey", 0);
  printerID = v5->_printerID;
  v5->_printerID = v6;

  v8 = GetDefaultJobName();
  v9 = CopyDictionaryString(v4, @"UIPrintInfoJobNameKey", v8);
  jobName = v5->_jobName;
  v5->_jobName = v9;

  v11 = v4;
  v12 = v11;
  if (v11 && ([v11 objectForKey:@"UIPrintInfoOutputTypeKey"], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = [v13 intValue];
  }

  else
  {
    v15 = 0;
  }

  v5->_outputType = v15;
  v16 = v12;
  v17 = v16;
  if (v12 && ([v16 objectForKey:@"UIPrintInfoOrientationKey"], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    v20 = [v18 intValue];
  }

  else
  {
    v20 = 0;
  }

  v5->_orientation = v20;
  v21 = (v5->_outputType & 0xFFFFFFFFFFFFFFFDLL) != 1;
  v22 = v17;
  v23 = v22;
  if (v12)
  {
    v24 = [v22 objectForKey:@"UIPrintInfoDuplexKey"];
    if (v24)
    {
      v25 = v24;
      v21 = [v24 intValue];
    }

    v5->_duplex = v21;
    v26 = [v23 objectForKey:@"UIPrintInfoCopiesKey"];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 intValue];

      goto LABEL_17;
    }
  }

  else
  {
    v5->_duplex = v21;
  }

  v28 = 1;
LABEL_17:

  v5->_copies = v28;
  v29 = v23;
  v30 = v29;
  if (v12)
  {
    v31 = [v29 objectForKey:@"UIPrintInfoScaleUpKey"];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 BOOLValue];
    }

    else
    {
      v33 = 0;
    }

    v5->_scaleUp = v33;
    v35 = [v30 objectForKey:@"UIPrintInfoStapleKey"];
    if (v35)
    {
      v36 = v35;
      v34 = [v35 intValue];
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v5->_scaleUp = 0;
  }

  v5->_staple = v34;
  v37 = v30;
  v38 = v37;
  if (v12)
  {
    v39 = [v37 objectForKey:@"UIPrintInfoPunchKey"];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 intValue];
    }

    else
    {
      v41 = 0;
    }

    v5->_punch = v41;
    v43 = [v38 objectForKey:@"UIPrintInfoFoldKey"];
    if (v43)
    {
      v44 = v43;
      v42 = [v43 intValue];
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
    v5->_punch = 0;
  }

  v5->_fold = v42;
  v45 = v38;
  v46 = v45;
  if (!v12)
  {
    v5->_imagePDFAnnotations = 0;
LABEL_40:
    v52 = 4;
    goto LABEL_41;
  }

  v47 = [v45 objectForKey:@"UIPrintInfoImageAnnotationsKey"];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 BOOLValue];
  }

  else
  {
    v49 = 0;
  }

  v5->_imagePDFAnnotations = v49;
  v50 = [v46 objectForKey:@"UIPrintInfoQualityKey"];
  if (!v50)
  {
    goto LABEL_40;
  }

  v51 = v50;
  v52 = [v50 intValue];

LABEL_41:
  v5->_quality = v52;
  v53 = v46;
  v54 = v53;
  if (v12)
  {
    v55 = [v53 objectForKey:@"UIPrintInfoCoatKey"];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 intValue];
    }

    else
    {
      v57 = 0;
    }

    v5->_coat = v57;
    v59 = [v54 objectForKey:@"UIPrintInfoLaminateKey"];
    if (v59)
    {
      v60 = v59;
      v58 = [v59 intValue];
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v5->_coat = 0;
  }

  v5->_laminate = v58;
  v61 = v54;
  v62 = v61;
  if (v12 && ([v61 objectForKey:@"UIPrintInfoTrimKey"], (v63 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v64 = v63;
    v65 = [v63 intValue];
  }

  else
  {
    v65 = 0;
  }

  v5->_trim = v65;
  v66 = CopyDictionaryString(v62, @"UIPrintInfoFinishingTemplateKey", 0);
  finishingTemplate = v5->_finishingTemplate;
  v5->_finishingTemplate = v66;

  v68 = CopyDictionaryString(v62, @"UIPrintInfoOutputBinKey", 0);
  outputBin = v5->_outputBin;
  v5->_outputBin = v68;

  v70 = CopyDictionaryString(v62, @"UIPrintInfoPageStackOrderKey", 0);
  pageStackOrder = v5->_pageStackOrder;
  v5->_pageStackOrder = v70;

  v72 = CopyDictionaryString(v62, @"UIPrintInfoInputSlotKey", 0);
  inputSlot = v5->_inputSlot;
  v5->_inputSlot = v72;

  v74 = CopyDictionaryString(v62, @"UIPrintInfoMediaTypeKey", 0);
  mediaType = v5->_mediaType;
  v5->_mediaType = v74;

  if (v12)
  {
    v76 = [v62 objectForKey:@"UIPrintInfoJobPresetKey"];
  }

  else
  {
    v76 = 0;
  }

  jobPreset = v5->_jobPreset;
  v5->_jobPreset = v76;

  v78 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v109[0] = v78;
  v79 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v109[1] = v79;
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
  if (v12)
  {
    v81 = [v62 objectForKey:@"UIPrintInfoNUpRowsColumnsKey"];
  }

  else
  {
    v81 = 0;
  }

  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = v80;
  }

  v83 = v82;

  nUpRowsColumns = v5->_nUpRowsColumns;
  v5->_nUpRowsColumns = v83;

  v85 = v62;
  v86 = v85;
  if (v12)
  {
    v87 = [v85 objectForKey:@"UIPrintInfoLayoutDirectionKey"];
    if (v87)
    {
      v88 = v87;
      v89 = [v87 intValue];
    }

    else
    {
      v89 = 0;
    }

    v5->_nUpLayoutDirection = v89;
    v91 = [v86 objectForKey:@"UIPrintInfoBorderTypeKey"];
    if (v91)
    {
      v92 = v91;
      v90 = [v91 intValue];
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    v90 = 0;
    v5->_nUpLayoutDirection = 0;
  }

  v5->_borderType = v90;
  v93 = v86;
  v94 = v93;
  if (v12)
  {
    v95 = [v93 objectForKey:@"UIPrintInfoBookletStyleKey"];
    if (v95)
    {
      v96 = v95;
      v97 = [v95 intValue];
    }

    else
    {
      v97 = 0;
    }

    v5->_bookletStyle = v97;
    v99 = [v94 objectForKey:@"UIPrintInfoFipHorizontalKey"];
    if (v99)
    {
      v100 = v99;
      v98 = [v99 BOOLValue];
    }

    else
    {
      v98 = 0;
    }
  }

  else
  {
    v98 = 0;
    v5->_bookletStyle = 0;
  }

  v5->_flipHorizontal = v98;
  v101 = v94;
  v102 = v101;
  v103 = 1.0;
  if (v12)
  {
    v104 = [v101 objectForKey:@"UIPrintInfoScalingFactorKey"];
    if (v104)
    {
      v105 = v104;
      [v104 floatValue];
      v103 = v106;
    }
  }

  v5->_scalingFactor = v103;
LABEL_82:

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  v5 = (self->_outputType & 0xFFFFFFFFFFFFFFFDLL) != 1;
  printerID = self->_printerID;
  if (printerID)
  {
    [v3 setObject:printerID forKey:@"UIPrintInfoPrinterIDKey"];
  }

  jobName = self->_jobName;
  if (jobName)
  {
    [v4 setObject:jobName forKey:@"UIPrintInfoJobNameKey"];
  }

  if (self->_outputType)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v8 forKey:@"UIPrintInfoOutputTypeKey"];
  }

  if (self->_orientation)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v9 forKey:@"UIPrintInfoOrientationKey"];
  }

  if (self->_duplex != v5)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v10 forKey:@"UIPrintInfoDuplexKey"];
  }

  if (self->_copies != 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v11 forKey:@"UIPrintInfoCopiesKey"];
  }

  if (self->_scaleUp)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v12 forKey:@"UIPrintInfoScaleUpKey"];
  }

  if (self->_staple)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v13 forKey:@"UIPrintInfoStapleKey"];
  }

  if (self->_punch)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v14 forKey:@"UIPrintInfoPunchKey"];
  }

  if (self->_fold)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v15 forKey:@"UIPrintInfoFoldKey"];
  }

  if (self->_imagePDFAnnotations)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v16 forKey:@"UIPrintInfoImageAnnotationsKey"];
  }

  if (self->_quality != 4)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v17 forKey:@"UIPrintInfoQualityKey"];
  }

  if (self->_coat)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v18 forKey:@"UIPrintInfoCoatKey"];
  }

  if (self->_laminate)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v19 forKey:@"UIPrintInfoLaminateKey"];
  }

  if (self->_trim)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v20 forKey:@"UIPrintInfoTrimKey"];
  }

  finishingTemplate = self->_finishingTemplate;
  if (finishingTemplate)
  {
    [v4 setObject:finishingTemplate forKey:@"UIPrintInfoFinishingTemplateKey"];
  }

  outputBin = self->_outputBin;
  if (outputBin)
  {
    [v4 setObject:outputBin forKey:@"UIPrintInfoOutputBinKey"];
  }

  pageStackOrder = self->_pageStackOrder;
  if (pageStackOrder)
  {
    [v4 setObject:pageStackOrder forKey:@"UIPrintInfoPageStackOrderKey"];
  }

  inputSlot = self->_inputSlot;
  if (inputSlot)
  {
    [v4 setObject:inputSlot forKey:@"UIPrintInfoInputSlotKey"];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v4 setObject:mediaType forKey:@"UIPrintInfoMediaTypeKey"];
  }

  jobPreset = self->_jobPreset;
  if (jobPreset)
  {
    [v4 setObject:jobPreset forKey:@"UIPrintInfoJobPresetKey"];
  }

  nUpRowsColumns = self->_nUpRowsColumns;
  if (nUpRowsColumns)
  {
    [v4 setObject:nUpRowsColumns forKey:@"UIPrintInfoNUpRowsColumnsKey"];
  }

  if (self->_nUpLayoutDirection)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v28 forKey:@"UIPrintInfoLayoutDirectionKey"];
  }

  if (self->_borderType)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v29 forKey:@"UIPrintInfoBorderTypeKey"];
  }

  if (self->_bookletStyle)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v4 setObject:v30 forKey:@"UIPrintInfoBookletStyleKey"];
  }

  if (self->_flipHorizontal)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v31 forKey:@"UIPrintInfoFipHorizontalKey"];
  }

  if (self->_scalingFactor != 1.0)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v4 setObject:v32 forKey:@"UIPrintInfoScalingFactorKey"];
  }

  return v4;
}

- (UIPrintInfo)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoPrinterIDKey"];
  printerID = self->_printerID;
  self->_printerID = v5;

  v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoJobNameKey"];
  jobName = self->_jobName;
  self->_jobName = v7;

  self->_outputType = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoOutputTypeKey"];
  self->_orientation = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoOrientationKey"];
  self->_duplex = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoDuplexKey"];
  self->_copies = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoCopiesKey"];
  self->_scaleUp = [(NSCoder *)v4 decodeBoolForKey:@"UIPrintInfoScaleUpKey"];
  self->_staple = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoStapleKey"];
  self->_punch = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoPunchKey"];
  self->_fold = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoFoldKey"];
  self->_imagePDFAnnotations = [(NSCoder *)v4 decodeBoolForKey:@"UIPrintInfoImageAnnotationsKey"];
  self->_quality = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoQualityKey"];
  self->_coat = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoCoatKey"];
  self->_laminate = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoLaminateKey"];
  self->_trim = [(NSCoder *)v4 decodeIntForKey:@"UIPrintInfoTrimKey"];
  v9 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoFinishingTemplateKey"];
  finishingTemplate = self->_finishingTemplate;
  self->_finishingTemplate = v9;

  v11 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoOutputBinKey"];
  outputBin = self->_outputBin;
  self->_outputBin = v11;

  v13 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoPageStackOrderKey"];
  pageStackOrder = self->_pageStackOrder;
  self->_pageStackOrder = v13;

  v15 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoInputSlotKey"];
  inputSlot = self->_inputSlot;
  self->_inputSlot = v15;

  v17 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoMediaTypeKey"];
  mediaType = self->_mediaType;
  self->_mediaType = v17;

  v19 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoJobPresetKey"];
  jobPreset = self->_jobPreset;
  self->_jobPreset = v19;

  v21 = [(NSCoder *)v4 decodeObjectForKey:@"UIPrintInfoNUpRowsColumnsKey"];
  nUpRowsColumns = self->_nUpRowsColumns;
  self->_nUpRowsColumns = v21;

  self->_nUpLayoutDirection = [(NSCoder *)v4 decodeIntegerForKey:@"UIPrintInfoLayoutDirectionKey"];
  self->_borderType = [(NSCoder *)v4 decodeIntegerForKey:@"UIPrintInfoBorderTypeKey"];
  self->_bookletStyle = [(NSCoder *)v4 decodeIntegerForKey:@"UIPrintInfoBookletStyleKey"];
  self->_flipHorizontal = [(NSCoder *)v4 decodeBoolForKey:@"UIPrintInfoFipHorizontalKey"];
  [(NSCoder *)v4 decodeFloatForKey:@"UIPrintInfoScalingFactorKey"];
  v24 = v23;

  self->_scalingFactor = v24;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  printerID = self->_printerID;
  v29 = v4;
  if (printerID)
  {
    [v4 encodeObject:printerID forKey:@"UIPrintInfoPrinterIDKey"];
    v4 = v29;
  }

  jobName = self->_jobName;
  if (jobName)
  {
    [v29 encodeObject:jobName forKey:@"UIPrintInfoJobNameKey"];
    v4 = v29;
  }

  outputType = self->_outputType;
  if (outputType)
  {
    [v29 encodeInt:outputType forKey:@"UIPrintInfoOutputTypeKey"];
    v4 = v29;
  }

  orientation = self->_orientation;
  if (orientation)
  {
    [v29 encodeInt:orientation forKey:@"UIPrintInfoOrientationKey"];
    v4 = v29;
  }

  duplex = self->_duplex;
  if (duplex)
  {
    [v29 encodeInt:duplex forKey:@"UIPrintInfoDuplexKey"];
    v4 = v29;
  }

  copies = self->_copies;
  if (copies)
  {
    [v29 encodeInt:copies forKey:@"UIPrintInfoCopiesKey"];
    v4 = v29;
  }

  if (self->_scaleUp)
  {
    [v29 encodeBool:1 forKey:@"UIPrintInfoScaleUpKey"];
    v4 = v29;
  }

  staple = self->_staple;
  if (staple)
  {
    [v29 encodeInt:staple forKey:@"UIPrintInfoStapleKey"];
    v4 = v29;
  }

  punch = self->_punch;
  if (punch)
  {
    [v29 encodeInt:punch forKey:@"UIPrintInfoPunchKey"];
    v4 = v29;
  }

  fold = self->_fold;
  if (fold)
  {
    [v29 encodeInt:fold forKey:@"UIPrintInfoFoldKey"];
    v4 = v29;
  }

  if (self->_imagePDFAnnotations)
  {
    [v29 encodeBool:1 forKey:@"UIPrintInfoImageAnnotationsKey"];
    v4 = v29;
  }

  quality = self->_quality;
  if (quality != 4)
  {
    [v29 encodeInt:quality forKey:@"UIPrintInfoQualityKey"];
    v4 = v29;
  }

  coat = self->_coat;
  if (coat)
  {
    [v29 encodeInt:coat forKey:@"UIPrintInfoCoatKey"];
    v4 = v29;
  }

  laminate = self->_laminate;
  if (laminate)
  {
    [v29 encodeInt:laminate forKey:@"UIPrintInfoLaminateKey"];
    v4 = v29;
  }

  trim = self->_trim;
  if (trim)
  {
    [v29 encodeInt:trim forKey:@"UIPrintInfoTrimKey"];
    v4 = v29;
  }

  finishingTemplate = self->_finishingTemplate;
  if (finishingTemplate)
  {
    [v29 encodeObject:finishingTemplate forKey:@"UIPrintInfoFinishingTemplateKey"];
    v4 = v29;
  }

  outputBin = self->_outputBin;
  if (outputBin)
  {
    [v29 encodeObject:outputBin forKey:@"UIPrintInfoOutputBinKey"];
    v4 = v29;
  }

  pageStackOrder = self->_pageStackOrder;
  if (pageStackOrder)
  {
    [v29 encodeObject:pageStackOrder forKey:@"UIPrintInfoPageStackOrderKey"];
    v4 = v29;
  }

  inputSlot = self->_inputSlot;
  if (inputSlot)
  {
    [v29 encodeObject:inputSlot forKey:@"UIPrintInfoInputSlotKey"];
    v4 = v29;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v29 encodeObject:mediaType forKey:@"UIPrintInfoMediaTypeKey"];
    v4 = v29;
  }

  jobPreset = self->_jobPreset;
  if (jobPreset)
  {
    [v29 encodeObject:jobPreset forKey:@"UIPrintInfoJobPresetKey"];
    v4 = v29;
  }

  nUpRowsColumns = self->_nUpRowsColumns;
  if (nUpRowsColumns)
  {
    [v29 encodeObject:nUpRowsColumns forKey:@"UIPrintInfoNUpRowsColumnsKey"];
    v4 = v29;
  }

  nUpLayoutDirection = self->_nUpLayoutDirection;
  if (nUpLayoutDirection)
  {
    [v29 encodeInteger:nUpLayoutDirection forKey:@"UIPrintInfoLayoutDirectionKey"];
    v4 = v29;
  }

  borderType = self->_borderType;
  if (borderType)
  {
    [v29 encodeInteger:borderType forKey:@"UIPrintInfoBorderTypeKey"];
    v4 = v29;
  }

  bookletStyle = self->_bookletStyle;
  if (bookletStyle)
  {
    [v29 encodeInteger:bookletStyle forKey:@"UIPrintInfoBookletStyleKey"];
    v4 = v29;
  }

  if (self->_flipHorizontal)
  {
    [v29 encodeBool:1 forKey:@"UIPrintInfoFipHorizontalKey"];
    v4 = v29;
  }

  scalingFactor = self->_scalingFactor;
  if (scalingFactor != 1.0)
  {
    *&scalingFactor = scalingFactor;
    [v29 encodeFloat:@"UIPrintInfoScalingFactorKey" forKey:scalingFactor];
    v4 = v29;
  }
}

- (void)updateWithDictionary:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__UIPrintInfo_updateWithDictionary___block_invoke;
  v3[3] = &unk_279A9C5C0;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __36__UIPrintInfo_updateWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqual:@"UIPrintInfoOutputTypeKey"])
  {
    [*(a1 + 32) setOutputType:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoOrientationKey"])
  {
    [*(a1 + 32) setOrientation:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoDuplexKey"])
  {
    [*(a1 + 32) setDuplex:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoCopiesKey"])
  {
    [*(a1 + 32) setCopies:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoScaleUpKey"])
  {
    [*(a1 + 32) setScaleUp:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoImageAnnotationsKey"])
  {
    [*(a1 + 32) setImagePDFAnnotations:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoQualityKey"])
  {
    [*(a1 + 32) setQuality:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoStapleKey"])
  {
    [*(a1 + 32) setStaple:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoPunchKey"])
  {
    [*(a1 + 32) setPunch:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoFoldKey"])
  {
    [*(a1 + 32) setFold:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoCoatKey"])
  {
    [*(a1 + 32) setCoat:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoLaminateKey"])
  {
    [*(a1 + 32) setLaminate:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoTrimKey"])
  {
    [*(a1 + 32) setTrim:{objc_msgSend(v5, "intValue")}];
    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoFinishingTemplateKey"])
  {
    v6 = [v5 stringValue];
    [*(a1 + 32) setFinishingTemplate:v6];
LABEL_39:

    goto LABEL_40;
  }

  if ([v9 isEqual:@"UIPrintInfoOutputBinKey"])
  {
    v6 = [v5 stringValue];
    [*(a1 + 32) setOutputBin:v6];
    goto LABEL_39;
  }

  if ([v9 isEqual:@"UIPrintInfoPageStackOrderKey"])
  {
    v6 = [v5 stringValue];
    [*(a1 + 32) setPageStackOrder:v6];
    goto LABEL_39;
  }

  if ([v9 isEqual:@"UIPrintInfoInputSlotKey"])
  {
    v6 = [v5 stringValue];
    [*(a1 + 32) setInputSlot:v6];
    goto LABEL_39;
  }

  if ([v9 isEqual:@"UIPrintInfoMediaTypeKey"])
  {
    v6 = [v5 stringValue];
    [*(a1 + 32) setMediaType:v6];
    goto LABEL_39;
  }

  if ([v9 isEqual:@"UIPrintInfoJobPresetKey"])
  {
    [*(a1 + 32) setJobPreset:v5];
    v7 = *(a1 + 32);
    v6 = [v7 jobPreset];
    [v7 applyPreset:v6];
    goto LABEL_39;
  }

  if ([v9 isEqual:@"UIPrintInfoNUpRowsColumnsKey"])
  {
    [*(a1 + 32) setNUpRowsColumns:v5];
  }

  else if ([v9 isEqual:@"UIPrintInfoLayoutDirectionKey"])
  {
    [*(a1 + 32) setNUpLayoutDirection:{objc_msgSend(v5, "integerValue")}];
  }

  else if ([v9 isEqual:@"UIPrintInfoBorderTypeKey"])
  {
    [*(a1 + 32) setBorderType:{objc_msgSend(v5, "integerValue")}];
  }

  else if ([v9 isEqual:@"UIPrintInfoBookletStyleKey"])
  {
    [*(a1 + 32) setBookletStyle:{objc_msgSend(v5, "integerValue")}];
  }

  else if ([v9 isEqual:@"UIPrintInfoFipHorizontalKey"])
  {
    [*(a1 + 32) setFlipHorizontal:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if ([v9 isEqual:@"UIPrintInfoScalingFactorKey"])
  {
    [v5 floatValue];
    [*(a1 + 32) setScalingFactor:v8];
  }

LABEL_40:
}

- (void)resetToDefaultSettings:(id)a3
{
  v4 = a3;
  [(UIPrintInfo *)self setJobPreset:0];
  [(UIPrintInfo *)self setAppliedPresetsList:0];
  -[UIPrintInfo setFinishingOption:](self, "setFinishingOption:", [v4 finishingOption]);
  v5 = [v4 finishingTemplate];
  [(UIPrintInfo *)self setFinishingTemplate:v5];

  -[UIPrintInfo setStaple:](self, "setStaple:", [v4 staple]);
  -[UIPrintInfo setPunch:](self, "setPunch:", [v4 punch]);
  -[UIPrintInfo setFold:](self, "setFold:", [v4 fold]);
  -[UIPrintInfo setLaminate:](self, "setLaminate:", [v4 laminate]);
  -[UIPrintInfo setCoat:](self, "setCoat:", [v4 coat]);
  -[UIPrintInfo setTrim:](self, "setTrim:", [v4 trim]);
  v6 = [v4 pageStackOrder];
  [(UIPrintInfo *)self setPageStackOrder:v6];

  v7 = [v4 outputBin];

  [(UIPrintInfo *)self setOutputBin:v7];
  v9 = [(UIPrintInfo *)self currentPrinter];
  v8 = [v9 pkPrinter];
  [(UIPrintInfo *)self _updateWithPrinter:v8];
}

- (void)applyPreset:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  [a3 objectForKey:*MEMORY[0x277D41180]];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v43 = v53 = 0u;
  obj = [v43 allKeys];
  v44 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v44)
  {
    v4 = *v51;
    v5 = *MEMORY[0x277D410D0];
    v45 = *MEMORY[0x277D411D8];
    v41 = *MEMORY[0x277D41220];
    v6 = *MEMORY[0x277D41160];
    v7 = *MEMORY[0x277D410C0];
    v32 = *MEMORY[0x277D41178];
    v8 = *MEMORY[0x277D41170];
    v36 = *MEMORY[0x277D411D0];
    v34 = *MEMORY[0x277D411C8];
    v39 = *MEMORY[0x277D410D8];
    v35 = *MEMORY[0x277D410E8];
    v37 = *v51;
    v38 = *MEMORY[0x277D410E0];
    v42 = *MEMORY[0x277D41160];
    v33 = *MEMORY[0x277D410D0];
    v31 = *MEMORY[0x277D41170];
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        if ([v10 isEqualToString:v5])
        {
          v11 = [v43 objectForKey:v5];
          if ((([v11 isEqualToString:v39] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", v35)) && -[UIPrintInfo duplex](self, "duplex") == UIPrintInfoDuplexNone)
          {
            v12 = 1;
LABEL_21:
            [(UIPrintInfo *)self setDuplex:v12];
          }

          else if ([v11 isEqualToString:v38])
          {
            v12 = 0;
            goto LABEL_21;
          }

LABEL_57:

          v6 = v42;
          goto LABEL_58;
        }

        if (([v10 isEqualToString:v45] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", v41))
        {
          if ([v10 isEqualToString:v41])
          {
            v13 = [v43 objectForKey:v41];
            v14 = [v13 integerValue];

            v6 = v42;
            v15 = v14;
            v4 = v37;
            [(UIPrintInfo *)self setQuality:v15];
          }

          if ([v10 isEqualToString:v45])
          {
            v11 = [v43 objectForKey:v45];
            if ([v11 containsString:v36] && -[UIPrintInfo quality](self, "quality") == 4)
            {
              v16 = 2;
            }

            else if ([v11 isEqualToString:v34] && -[UIPrintInfo quality](self, "quality") == 5)
            {
              v16 = 1;
            }

            else if ([v11 containsString:v36] && -[UIPrintInfo quality](self, "quality") == 5)
            {
              v16 = 3;
            }

            else
            {
              v16 = 0;
            }

            [(UIPrintInfo *)self setOutputType:v16];
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        if ([v10 isEqualToString:v6])
        {
          v17 = arrayForKey(v43, v6);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (!v18)
          {
            goto LABEL_51;
          }

          v19 = v18;
          v20 = *v47;
          while (1)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v46 + 1) + 8 * i) integerValue];
              if (v22 > 15)
              {
                v23 = v22 - 16;
                if ((v22 - 16) <= 0x3F)
                {
                  if (((1 << v23) & 0xC00033030) != 0)
                  {
                    goto LABEL_44;
                  }

                  if (((1 << v23) & 0xCCC0000000000000) != 0)
                  {
                    goto LABEL_48;
                  }

                  if (v22 == 16)
                  {
                    [(UIPrintInfo *)self setLaminate:16];
                    continue;
                  }
                }

                if ((v22 - 90) < 0xB)
                {
                  [(UIPrintInfo *)self setFold:?];
                  continue;
                }

                if ((v22 - 82) < 2)
                {
LABEL_48:
                  [(UIPrintInfo *)self setPunch:v22];
                  continue;
                }
              }

              else if (v22 > 7)
              {
                if (v22 == 8)
                {
LABEL_44:
                  [(UIPrintInfo *)self setStaple:v22];
                  continue;
                }

                if (v22 == 15)
                {
                  [(UIPrintInfo *)self setCoat:?];
                }
              }

              else
              {
                if (v22 == 4)
                {
                  goto LABEL_44;
                }

                if (v22 == 5)
                {
                  goto LABEL_48;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (!v19)
            {
LABEL_51:
              [(UIPrintInfo *)self setFinishingOption:2];

              v4 = v37;
              v6 = v42;
              goto LABEL_64;
            }
          }
        }

        if ([v10 isEqualToString:v7])
        {
          v24 = [v43 objectForKey:v7];
          v25 = [v24 integerValue];

          v4 = v37;
          v26 = v25;
          v6 = v42;
          [(UIPrintInfo *)self setCopies:v26];
LABEL_64:
          v5 = v33;
          goto LABEL_58;
        }

        if ([v10 isEqualToString:v32])
        {
          v27 = [v43 objectForKey:v32];
          [(UIPrintInfo *)self setMediaType:v27];

          v4 = v37;
          goto LABEL_64;
        }

        v5 = v33;
        if ([v10 isEqualToString:v8])
        {
          v8 = v31;
          v28 = [v43 objectForKey:v31];
          [(UIPrintInfo *)self setInputSlot:v28];
        }

        else if ([v10 isEqual:@"UIPrintInfoNUpRowsColumnsKey"])
        {
          v28 = [v43 objectForKey:@"UIPrintInfoNUpRowsColumnsKey"];
          [(UIPrintInfo *)self setNUpRowsColumns:v28];
        }

        else if ([v10 isEqual:@"UIPrintInfoLayoutDirectionKey"])
        {
          v28 = [v43 objectForKey:@"UIPrintInfoLayoutDirectionKey"];
          -[UIPrintInfo setNUpLayoutDirection:](self, "setNUpLayoutDirection:", [v28 integerValue]);
        }

        else if ([v10 isEqual:@"UIPrintInfoBorderTypeKey"])
        {
          v28 = [v43 objectForKey:@"UIPrintInfoBorderTypeKey"];
          -[UIPrintInfo setBorderType:](self, "setBorderType:", [v28 integerValue]);
        }

        else if ([v10 isEqual:@"UIPrintInfoBookletStyleKey"])
        {
          v28 = [v43 objectForKey:@"UIPrintInfoBookletStyleKey"];
          -[UIPrintInfo setBookletStyle:](self, "setBookletStyle:", [v28 integerValue]);
        }

        else if ([v10 isEqual:@"UIPrintInfoFipHorizontalKey"])
        {
          v28 = [v43 objectForKey:@"UIPrintInfoFipHorizontalKey"];
          -[UIPrintInfo setFlipHorizontal:](self, "setFlipHorizontal:", [v28 BOOLValue]);
        }

        else
        {
          if (![v10 isEqual:@"UIPrintInfoScalingFactorKey"])
          {
            goto LABEL_58;
          }

          v28 = [v43 objectForKey:@"UIPrintInfoScalingFactorKey"];
          [v28 floatValue];
          [(UIPrintInfo *)self setScalingFactor:v29];
        }

        v4 = v37;
LABEL_58:
        ++v9;
      }

      while (v9 != v44);
      v30 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      v44 = v30;
    }

    while (v30);
  }
}

- (void)clearPreset:(id)a3 origPrintInfo:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v39 = [a3 objectForKey:*MEMORY[0x277D41180]];
  -[UIPrintInfo setCopies:](self, "setCopies:", [v6 copies]);
  v7 = [v6 pageRanges];
  [(UIPrintInfo *)self setPageRanges:v7];

  v8 = [(UIPrintInfo *)self currentPrinter];
  if ([v8 supportsDuplex])
  {
    v9 = [v6 duplex];
  }

  else
  {
    v9 = 0;
  }

  [(UIPrintInfo *)self setDuplex:v9];

  -[UIPrintInfo setOutputType:](self, "setOutputType:", [v6 outputType]);
  v10 = [v6 printPaper];
  [(UIPrintInfo *)self setPrintPaper:v10];

  -[UIPrintInfo setOrientation:](self, "setOrientation:", [v6 orientation]);
  [v6 scalingFactor];
  [(UIPrintInfo *)self setScalingFactor:?];
  -[UIPrintInfo setImagePDFAnnotations:](self, "setImagePDFAnnotations:", [v6 imagePDFAnnotations]);
  v11 = [v6 inputSlot];
  [(UIPrintInfo *)self setInputSlot:v11];

  v12 = [v6 mediaType];
  [(UIPrintInfo *)self setMediaType:v12];

  -[UIPrintInfo setQuality:](self, "setQuality:", [v6 quality]);
  [(UIPrintInfo *)self setNUpRowsColumns:0];
  [(UIPrintInfo *)self setNUpLayoutDirection:0];
  [(UIPrintInfo *)self setBorderType:0];
  [(UIPrintInfo *)self setBookletStyle:0];
  [(UIPrintInfo *)self setFlipHorizontal:0];
  -[UIPrintInfo setFinishingOption:](self, "setFinishingOption:", [v6 finishingOption]);
  v13 = [v6 finishingTemplate];
  [(UIPrintInfo *)self setFinishingTemplate:v13];

  -[UIPrintInfo setStaple:](self, "setStaple:", [v6 staple]);
  -[UIPrintInfo setPunch:](self, "setPunch:", [v6 punch]);
  -[UIPrintInfo setFold:](self, "setFold:", [v6 fold]);
  -[UIPrintInfo setLaminate:](self, "setLaminate:", [v6 laminate]);
  -[UIPrintInfo setCoat:](self, "setCoat:", [v6 coat]);
  -[UIPrintInfo setTrim:](self, "setTrim:", [v6 trim]);
  v14 = [v6 pageStackOrder];
  [(UIPrintInfo *)self setPageStackOrder:v14];

  v15 = [v6 outputBin];
  [(UIPrintInfo *)self setOutputBin:v15];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = [v39 allKeys];
  v43 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v43)
  {
    v17 = *v49;
    v18 = *MEMORY[0x277D410D0];
    v42 = *MEMORY[0x277D411D8];
    v41 = *MEMORY[0x277D41220];
    v19 = *MEMORY[0x277D41160];
    v36 = *MEMORY[0x277D410C0];
    v34 = *MEMORY[0x277D41170];
    v35 = *MEMORY[0x277D41178];
    v37 = *v49;
    v38 = v16;
    v40 = *MEMORY[0x277D410D0];
    do
    {
      v20 = 0;
      do
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        if ([v21 isEqualToString:{v18, v34}])
        {
          v22 = [(UIPrintInfo *)self currentPrinter];
          if ([v22 supportsDuplex])
          {
            v23 = [v6 duplex];
          }

          else
          {
            v23 = 0;
          }

          [(UIPrintInfo *)self setDuplex:v23];
          goto LABEL_16;
        }

        if ([v21 isEqualToString:v42])
        {
          -[UIPrintInfo setOutputType:](self, "setOutputType:", [v6 outputType]);
          goto LABEL_17;
        }

        if ([v21 isEqualToString:v41])
        {
          -[UIPrintInfo setQuality:](self, "setQuality:", [v6 quality]);
          goto LABEL_17;
        }

        if ([v21 isEqualToString:v19])
        {
          v24 = arrayForKey(v39, v19);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v25 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (!v25)
          {
            goto LABEL_47;
          }

          v26 = v25;
          v27 = *v45;
          while (1)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [*(*(&v44 + 1) + 8 * i) integerValue];
              if (v29 > 15)
              {
                v30 = v29 - 16;
                if ((v29 - 16) <= 0x3F)
                {
                  if (((1 << v30) & 0xC00033030) != 0)
                  {
                    goto LABEL_40;
                  }

                  if (((1 << v30) & 0xCCC0000000000000) != 0)
                  {
                    goto LABEL_44;
                  }

                  if (v29 == 16)
                  {
                    -[UIPrintInfo setLaminate:](self, "setLaminate:", [v6 laminate]);
                    continue;
                  }
                }

                if ((v29 - 90) < 0xB)
                {
                  -[UIPrintInfo setFold:](self, "setFold:", [v6 fold]);
                  continue;
                }

                if ((v29 - 82) < 2)
                {
LABEL_44:
                  -[UIPrintInfo setPunch:](self, "setPunch:", [v6 punch]);
                  continue;
                }
              }

              else if (v29 > 7)
              {
                if (v29 == 8)
                {
LABEL_40:
                  -[UIPrintInfo setStaple:](self, "setStaple:", [v6 staple]);
                  continue;
                }

                if (v29 == 15)
                {
                  -[UIPrintInfo setCoat:](self, "setCoat:", [v6 coat]);
                }
              }

              else
              {
                if (v29 == 4)
                {
                  goto LABEL_40;
                }

                if (v29 == 5)
                {
                  goto LABEL_44;
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (!v26)
            {
LABEL_47:
              [(UIPrintInfo *)self setFinishingOption:2];

              v17 = v37;
              v16 = v38;
              goto LABEL_52;
            }
          }
        }

        if ([v21 isEqualToString:v36])
        {
          -[UIPrintInfo setCopies:](self, "setCopies:", [v6 copies]);
LABEL_52:
          v18 = v40;
          goto LABEL_17;
        }

        if ([v21 isEqualToString:v35])
        {
          v31 = [v6 mediaType];
          [(UIPrintInfo *)self setMediaType:v31];

          goto LABEL_52;
        }

        if ([v21 isEqualToString:v34])
        {
          v32 = [v6 inputSlot];
          [(UIPrintInfo *)self setInputSlot:v32];

          goto LABEL_52;
        }

        v18 = v40;
        if ([v21 isEqual:@"UIPrintInfoNUpRowsColumnsKey"])
        {
          v22 = [v6 nUpRowsColumns];
          [(UIPrintInfo *)self setNUpRowsColumns:v22];
LABEL_16:

          goto LABEL_17;
        }

        if ([v21 isEqual:@"UIPrintInfoLayoutDirectionKey"])
        {
          -[UIPrintInfo setNUpLayoutDirection:](self, "setNUpLayoutDirection:", [v6 nUpLayoutDirection]);
        }

        else if ([v21 isEqual:@"UIPrintInfoBorderTypeKey"])
        {
          -[UIPrintInfo setBorderType:](self, "setBorderType:", [v6 borderType]);
        }

        else if ([v21 isEqual:@"UIPrintInfoBookletStyleKey"])
        {
          -[UIPrintInfo setBookletStyle:](self, "setBookletStyle:", [v6 bookletStyle]);
        }

        else if ([v21 isEqual:@"UIPrintInfoFipHorizontalKey"])
        {
          -[UIPrintInfo setFlipHorizontal:](self, "setFlipHorizontal:", [v6 flipHorizontal]);
        }

        else if ([v21 isEqual:@"UIPrintInfoScalingFactorKey"])
        {
          [v6 scalingFactor];
          [(UIPrintInfo *)self setScalingFactor:?];
        }

LABEL_17:
        ++v20;
      }

      while (v20 != v43);
      v33 = [v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
      v43 = v33;
    }

    while (v33);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(UIPrintInfo *)self dictionaryRepresentation];
  v6 = [v4 _initWithDictionary:v5];

  return v6;
}

- (void)_updateWithPrinter:(id)a3
{
  v24 = a3;
  v4 = [v24 name];
  v5 = [v4 copy];
  printerID = self->_printerID;
  self->_printerID = v5;

  if ([v24 hasPrintInfoSupported])
  {
    v7 = [v24 printInfoSupported];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:*MEMORY[0x277D410D0]];
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 1;
  v9 = MEMORY[0x277CBEBF8];
LABEL_6:
  duplex = self->_duplex;
  if (duplex == 1)
  {
    v12 = MEMORY[0x277D410E8];
  }

  else
  {
    if (duplex != 2)
    {
      goto LABEL_12;
    }

    v12 = MEMORY[0x277D410D8];
  }

  if (([v9 containsObject:*v12] & 1) == 0)
  {
    self->_duplex = 0;
  }

LABEL_12:
  if (v10)
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v13 = [v8 objectForKey:*MEMORY[0x277D41128]];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_staple];
  v15 = [v13 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    self->_staple = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_punch];
  v17 = [v13 containsObject:v16];

  if ((v17 & 1) == 0)
  {
    self->_punch = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fold];
  v19 = [v13 containsObject:v18];

  if ((v19 & 1) == 0)
  {
    self->_fold = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:self->_coat];
  v21 = [v13 containsObject:v20];

  if ((v21 & 1) == 0)
  {
    self->_coat = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:self->_laminate];
  v23 = [v13 containsObject:v22];

  if ((v23 & 1) == 0)
  {
    self->_laminate = 0;
  }
}

- (id)_createPrintSettingsForPrinter:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D410A0]);
  if (self->_copies >= 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v5 setObject:v6 forKey:*MEMORY[0x277D410C0]];
  }

  v7 = MEMORY[0x277D410E0];
  if ((self->_outputType | 2) != 3)
  {
    duplex = self->_duplex;
    if (duplex == 2)
    {
      v7 = MEMORY[0x277D410D8];
    }

    if (duplex == 1)
    {
      v7 = MEMORY[0x277D410E8];
    }
  }

  v9 = *MEMORY[0x277D410D0];
  [v5 setObject:*v7 forKey:*MEMORY[0x277D410D0]];
  if ([(UIPrintInfo *)self bookletStyle]== 1)
  {
    [v5 setObject:*MEMORY[0x277D410D8] forKey:v9];
  }

  v10 = [(UIPrintInfo *)self numNUpRows];
  v11 = [(UIPrintInfo *)self numNUpColumns]* v10;
  if (v11 < 2)
  {
    if (self->_orientation != 1)
    {
      goto LABEL_36;
    }

    v21 = [v4 hasPrintInfoSupported];
    v22 = MEMORY[0x277D411A0];
    if (v21)
    {
      v23 = [v4 printInfoSupported];
      v24 = *v22;
      v17 = [v23 objectForKey:v24];
    }

    else
    {
      v17 = 0;
      v24 = *MEMORY[0x277D411A0];
    }

    v25 = *MEMORY[0x277D411B8];
    if ([v17 containsObject:*MEMORY[0x277D411B8]])
    {
      v20 = v25;
    }

    else
    {
      v20 = *MEMORY[0x277D411A8];
    }

    v19 = v5;
    v18 = v24;
  }

  else
  {
    if (((1 << v11) & 0x10210) != 0)
    {
      v12 = MEMORY[0x277D411B0];
    }

    else
    {
      v12 = MEMORY[0x277D411A8];
    }

    if (((1 << v11) & 0x10210) != 0)
    {
      v13 = MEMORY[0x277D411A8];
    }

    else
    {
      v13 = MEMORY[0x277D411B0];
    }

    if (v11 <= 0x10)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x277D411A8];
    }

    if (v11 <= 0x10)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x277D411B0];
    }

    if ([(UIPrintInfo *)self orientation])
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = *v16;
    v18 = *MEMORY[0x277D411A0];
    v19 = v5;
    v20 = v17;
  }

  [v19 setObject:v20 forKey:v18];

LABEL_36:
  v26 = self->_jobName;
  if (![(NSString *)v26 length])
  {
    v27 = GetDefaultJobName();

    v26 = v27;
  }

  v28 = [(NSString *)v26 precomposedStringWithCanonicalMapping];
  v29 = [v28 cStringUsingEncoding:4];
  if (v29)
  {
    v30 = v29;
    if (strlen(v29) < 0x100)
    {
      v32 = v28;
    }

    else
    {
      v31 = v30 + 254;
      do
      {
        if ((*v31 & 0xC0) != 0x80)
        {
          break;
        }

        --v31;
      }

      while (v31 > v30);
      if (v31 < v30)
      {
        [UIPrintInfo _createPrintSettingsForPrinter:];
      }

      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v30 length:v31 - v30 encoding:4];
    }

    v33 = v32;
  }

  else
  {
    v33 = &stru_2871AE610;
  }

  [v5 setObject:v33 forKey:*MEMORY[0x277D41150]];
  v34 = self->_outputType - 1;
  if (v34 > 2)
  {
    v36 = MEMORY[0x277D41228];
    v35 = MEMORY[0x277D411C8];
  }

  else
  {
    v35 = qword_279A9C650[v34];
    v36 = qword_279A9C668[v34];
  }

  [v5 setObject:*v35 forKey:*MEMORY[0x277D411D8]];
  v37 = *MEMORY[0x277D41220];
  [v5 setObject:*v36 forKey:*MEMORY[0x277D41220]];
  v38 = [v4 hasPrintInfoSupported];
  v39 = MEMORY[0x277D41128];
  if (v38)
  {
    v40 = [v4 printInfoSupported];
    v41 = [v40 objectForKey:*v39];
  }

  else
  {
    v41 = 0;
  }

  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  staple = self->_staple;
  if (!staple || (self->_outputType | 2) != 2)
  {
    goto LABEL_92;
  }

  if (staple == 4)
  {
    v44 = 4;
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:4];
    v46 = [v41 containsObject:v45];

    if (v46)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 20)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithInteger:20];
    v48 = [v41 containsObject:v47];

    v44 = 20;
    if (v48)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 21)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithInteger:21];
    v50 = [v41 containsObject:v49];

    v44 = 21;
    if (v50)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 28)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithInteger:28];
    v52 = [v41 containsObject:v51];

    v44 = 28;
    if (v52)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 29)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithInteger:29];
    v54 = [v41 containsObject:v53];

    v44 = 29;
    if (v54)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 31)
  {
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:31];
    v56 = [v41 containsObject:v55];

    v44 = 31;
    if (v56)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 32)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:32];
    v58 = [v41 containsObject:v57];

    v44 = 32;
    if (v58)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 33)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithInteger:33];
    v60 = [v41 containsObject:v59];

    v44 = 33;
    if (v60)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 35)
  {
    v61 = [MEMORY[0x277CCABB0] numberWithInteger:35];
    v62 = [v41 containsObject:v61];

    v44 = 35;
    if (v62)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 50)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithInteger:50];
    v64 = [v41 containsObject:v63];

    v44 = 50;
    if (v64)
    {
      goto LABEL_91;
    }

    staple = self->_staple;
  }

  if (staple == 51)
  {
    v65 = [MEMORY[0x277CCABB0] numberWithInteger:51];
    v66 = [v41 containsObject:v65];

    v44 = 51;
    if ((v66 & 1) == 0)
    {
      staple = self->_staple;
      goto LABEL_89;
    }

LABEL_91:
    v69 = [MEMORY[0x277CCABB0] numberWithInt:v44];
    [v42 addObject:v69];

    goto LABEL_92;
  }

LABEL_89:
  if (staple == 8)
  {
    v67 = [MEMORY[0x277CCABB0] numberWithInteger:8];
    v68 = [v41 containsObject:v67];

    v44 = 8;
    if (v68)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  punch = self->_punch;
  if (!punch || (self->_outputType | 2) != 2)
  {
    goto LABEL_130;
  }

  if (punch == 5)
  {
    v71 = 5;
    v72 = [MEMORY[0x277CCABB0] numberWithInteger:5];
    v73 = [v41 containsObject:v72];

    if (v73)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 70)
  {
    v74 = [MEMORY[0x277CCABB0] numberWithInteger:70];
    v75 = [v41 containsObject:v74];

    v71 = 70;
    if (v75)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 71)
  {
    v76 = [MEMORY[0x277CCABB0] numberWithInteger:71];
    v77 = [v41 containsObject:v76];

    v71 = 71;
    if (v77)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 74)
  {
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:74];
    v79 = [v41 containsObject:v78];

    v71 = 74;
    if (v79)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 75)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithInteger:75];
    v81 = [v41 containsObject:v80];

    v71 = 75;
    if (v81)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 77)
  {
    v82 = [MEMORY[0x277CCABB0] numberWithInteger:77];
    v83 = [v41 containsObject:v82];

    v71 = 77;
    if (v83)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 78)
  {
    v84 = [MEMORY[0x277CCABB0] numberWithInteger:78];
    v85 = [v41 containsObject:v84];

    v71 = 78;
    if (v85)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 79)
  {
    v86 = [MEMORY[0x277CCABB0] numberWithInteger:79];
    v87 = [v41 containsObject:v86];

    v71 = 79;
    if (v87)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 81)
  {
    v88 = [MEMORY[0x277CCABB0] numberWithInteger:81];
    v89 = [v41 containsObject:v88];

    v71 = 81;
    if (v89)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 82)
  {
    v90 = [MEMORY[0x277CCABB0] numberWithInteger:82];
    v91 = [v41 containsObject:v90];

    v71 = 82;
    if (v91)
    {
      goto LABEL_129;
    }

    punch = self->_punch;
  }

  if (punch == 83)
  {
    v92 = [MEMORY[0x277CCABB0] numberWithInteger:83];
    v93 = [v41 containsObject:v92];

    v71 = 83;
    if ((v93 & 1) == 0)
    {
      punch = self->_punch;
      goto LABEL_127;
    }

LABEL_129:
    v96 = [MEMORY[0x277CCABB0] numberWithInt:v71];
    [v42 addObject:v96];

    goto LABEL_130;
  }

LABEL_127:
  if (punch == 85)
  {
    v94 = [MEMORY[0x277CCABB0] numberWithInteger:85];
    v95 = [v41 containsObject:v94];

    v71 = 85;
    if (v95)
    {
      goto LABEL_129;
    }
  }

LABEL_130:
  fold = self->_fold;
  if (!fold || (self->_outputType | 2) != 2)
  {
    goto LABEL_165;
  }

  if (fold == 90)
  {
    v98 = 90;
    v99 = [MEMORY[0x277CCABB0] numberWithInteger:90];
    v100 = [v41 containsObject:v99];

    if (v100)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 91)
  {
    v101 = [MEMORY[0x277CCABB0] numberWithInteger:91];
    v102 = [v41 containsObject:v101];

    v98 = 91;
    if (v102)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 92)
  {
    v103 = [MEMORY[0x277CCABB0] numberWithInteger:92];
    v104 = [v41 containsObject:v103];

    v98 = 92;
    if (v104)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 93)
  {
    v105 = [MEMORY[0x277CCABB0] numberWithInteger:93];
    v106 = [v41 containsObject:v105];

    v98 = 93;
    if (v106)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 94)
  {
    v107 = [MEMORY[0x277CCABB0] numberWithInteger:94];
    v108 = [v41 containsObject:v107];

    v98 = 94;
    if (v108)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 95)
  {
    v109 = [MEMORY[0x277CCABB0] numberWithInteger:95];
    v110 = [v41 containsObject:v109];

    v98 = 95;
    if (v110)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 96)
  {
    v111 = [MEMORY[0x277CCABB0] numberWithInteger:96];
    v112 = [v41 containsObject:v111];

    v98 = 96;
    if (v112)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 97)
  {
    v113 = [MEMORY[0x277CCABB0] numberWithInteger:97];
    v114 = [v41 containsObject:v113];

    v98 = 97;
    if (v114)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 98)
  {
    v115 = [MEMORY[0x277CCABB0] numberWithInteger:98];
    v116 = [v41 containsObject:v115];

    v98 = 98;
    if (v116)
    {
      goto LABEL_164;
    }

    fold = self->_fold;
  }

  if (fold == 99)
  {
    v117 = [MEMORY[0x277CCABB0] numberWithInteger:99];
    v118 = [v41 containsObject:v117];

    v98 = 99;
    if ((v118 & 1) == 0)
    {
      fold = self->_fold;
      goto LABEL_162;
    }

LABEL_164:
    v121 = [MEMORY[0x277CCABB0] numberWithInt:v98];
    [v42 addObject:v121];

    goto LABEL_165;
  }

LABEL_162:
  if (fold == 100)
  {
    v119 = [MEMORY[0x277CCABB0] numberWithInteger:100];
    v120 = [v41 containsObject:v119];

    v98 = 100;
    if (v120)
    {
      goto LABEL_164;
    }
  }

LABEL_165:
  if (self->_coat)
  {
    v122 = [MEMORY[0x277CCABB0] numberWithInt:15];
    [v42 addObject:v122];
  }

  if (self->_laminate)
  {
    v123 = [MEMORY[0x277CCABB0] numberWithInt:16];
    [v42 addObject:v123];
  }

  if ([v42 count])
  {
    [v5 setObject:v42 forKey:*v39];
  }

  finishingTemplate = self->_finishingTemplate;
  if (finishingTemplate)
  {
    [v5 setObject:finishingTemplate forKey:*MEMORY[0x277D41118]];
  }

  outputBin = self->_outputBin;
  if (outputBin)
  {
    [v5 setObject:outputBin forKey:*MEMORY[0x277D411C0]];
  }

  pageStackOrder = self->_pageStackOrder;
  if (pageStackOrder)
  {
    [v5 setObject:pageStackOrder forKey:*MEMORY[0x277D41200]];
  }

  if (self->_jobAccountID && [v4 supportsJobAccountID])
  {
    [v5 setObject:self->_jobAccountID forKey:*MEMORY[0x277D41148]];
  }

  pdfPassword = self->_pdfPassword;
  if (pdfPassword)
  {
    [v5 setObject:pdfPassword forKey:*MEMORY[0x277D410C8]];
  }

  if (self->_imagePDFAnnotations)
  {
    v128 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setObject:v128 forKey:*MEMORY[0x277D410B8]];
  }

  if (self->_quality != 4)
  {
    v129 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v5 setObject:v129 forKey:v37];
  }

  inputSlot = self->_inputSlot;
  if (inputSlot)
  {
    [v5 setObject:inputSlot forKey:*MEMORY[0x277D41138]];
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v5 setObject:mediaType forKey:*MEMORY[0x277D41190]];
  }

  jobPreset = self->_jobPreset;
  if (jobPreset)
  {
    [v5 setObject:jobPreset forKey:*MEMORY[0x277D41168]];
  }

  v133 = v5;

  return v133;
}

- (int64_t)numNUpRows
{
  v2 = [(UIPrintInfo *)self nUpRowsColumns];
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 integerValue];
  return v4;
}

- (int64_t)numNUpColumns
{
  v2 = [(UIPrintInfo *)self nUpRowsColumns];
  v3 = [v2 objectAtIndex:1];

  v4 = [v3 integerValue];
  return v4;
}

@end