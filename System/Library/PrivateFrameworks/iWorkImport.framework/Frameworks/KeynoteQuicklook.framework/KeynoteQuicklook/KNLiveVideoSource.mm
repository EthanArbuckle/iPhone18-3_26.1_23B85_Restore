@interface KNLiveVideoSource
+ (NSString)accessibilityLabelForCameraArrowTriangle2CirclePath;
+ (id)colorForSymbolTintColorIdentifier:(int64_t)identifier;
+ (id)colorSetForSymbolTintColorIdentifier:(int64_t)identifier;
+ (id)systemImageNameForSymbolImageIdentifier:(int64_t)identifier;
+ (int64_t)p_archivedSymbolImageIdentifierForSymbolImageIdentifier:(int64_t)identifier;
+ (int64_t)p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:(int64_t)identifier;
- (BOOL)isEquivalentToLiveVideoSource:(id)source;
- (BOOL)supportsBackgroundKind:(int64_t)kind;
- (KNLiveVideoCaptureDeviceDescription)captureDeviceDescription;
- (KNLiveVideoSource)initWithContext:(id)context name:(id)name isDefaultSource:(BOOL)source;
- (id)copyWithContext:(id)context;
- (int64_t)symbolImageIdentifier;
- (int64_t)symbolTintColorIdentifier;
- (void)didInitFromSOS;
- (void)i_updateDefaultSourceCaptureDeviceDescription:(id)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)rollbackToCollaborationCommandUsageState:(id)state;
- (void)saveToArchiver:(id)archiver;
- (void)setCaptureDeviceDescription:(id)description;
- (void)setName:(id)name;
- (void)setPosterImageData:(id)data;
- (void)setSymbolAbbreviationText:(id)text;
- (void)setSymbolImageIdentifier:(int64_t)identifier;
- (void)setSymbolTintColorIdentifier:(int64_t)identifier;
- (void)willBeUsedByCollaborationCommandWithUsageToken:(id)token;
@end

@implementation KNLiveVideoSource

- (void)setName:(id)name
{
  nameCopy = name;
  if (self->_name != nameCopy)
  {
    v9 = nameCopy;
    objc_msgSend_willModify(self, nameCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_name, v8);
    nameCopy = v8;
  }
}

- (KNLiveVideoSource)initWithContext:(id)context name:(id)name isDefaultSource:(BOOL)source
{
  contextCopy = context;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = KNLiveVideoSource;
  v12 = [(KNLiveVideoSource *)&v29 initWithContext:contextCopy];
  if (v12)
  {
    v13 = objc_msgSend_copy(nameCopy, v10, v11);
    name = v12->_name;
    v12->_name = v13;

    v12->_isDefaultSource = source;
    v15 = objc_opt_class();
    v18 = objc_msgSend_defaultSymbolImageIdentifier(v15, v16, v17);
    v12->_symbolImageIdentifier = objc_msgSend_p_archivedSymbolImageIdentifierForSymbolImageIdentifier_(v15, v19, v18);
    v22 = objc_msgSend_defaultSymbolTintColorIdentifier(v15, v20, v21);
    v12->_symbolTintColorIdentifier = objc_msgSend_p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier_(v15, v23, v22);
    v26 = objc_msgSend_emptyUsageState(KNLiveVideoSourceCollaborationCommandUsageState, v24, v25);
    collaborationCommandUsageState = v12->_collaborationCommandUsageState;
    v12->_collaborationCommandUsageState = v26;
  }

  return v12;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [KNLiveVideoSource alloc];
  v8 = objc_msgSend_name(self, v6, v7);
  v10 = objc_msgSend_initWithContext_name_(v5, v9, contextCopy, v8);

  v13 = objc_msgSend_copy(self->_collaborationCommandUsageState, v11, v12);
  v14 = *(v10 + 72);
  *(v10 + 72) = v13;

  v17 = objc_msgSend_copy(self->_captureDeviceDescription, v15, v16);
  v18 = *(v10 + 104);
  *(v10 + 104) = v17;

  *(v10 + 96) = self->_isDefaultSource;
  objc_msgSend_willRemoveReferenceToData_(v10, v19, *(v10 + 112));
  objc_storeStrong((v10 + 112), self->_posterImageData);
  objc_msgSend_didAddReferenceToData_(v10, v20, *(v10 + 112));
  v23 = objc_msgSend_copy(self->_symbolAbbreviationText, v21, v22);
  v24 = *(v10 + 120);
  *(v10 + 120) = v23;

  *(v10 + 80) = self->_symbolImageIdentifier;
  *(v10 + 88) = self->_symbolTintColorIdentifier;
  *(v10 + 128) = self->_definedCaptureDeviceDescription;

  return v10;
}

- (KNLiveVideoCaptureDeviceDescription)captureDeviceDescription
{
  if (self->_isDefaultSource)
  {
    v2 = &OBJC_IVAR___KNLiveVideoSource__defaultSourceCaptureDeviceDescription;
  }

  else
  {
    v2 = &OBJC_IVAR___KNLiveVideoSource__captureDeviceDescription;
  }

  return *(&self->super.super.isa + *v2);
}

- (void)setCaptureDeviceDescription:(id)description
{
  descriptionCopy = description;
  if (objc_msgSend_canChangeCaptureDeviceDescription(self, v4, v5))
  {
    v7 = self->_captureDeviceDescription;
    v8 = descriptionCopy;
    if (v8 | v7)
    {
      v10 = v8;
      isEqual = objc_msgSend_isEqual_(v7, v9, v8);

      if ((isEqual & 1) == 0)
      {
        objc_msgSend_willModify(self, v12, v13);
        v16 = objc_msgSend_copy(v10, v14, v15);
        captureDeviceDescription = self->_captureDeviceDescription;
        self->_captureDeviceDescription = v16;

        self->_definedCaptureDeviceDescription = self->_captureDeviceDescription != 0;
      }
    }
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNLiveVideoSource setCaptureDeviceDescription:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 141, 0, "Attempting to change the capture device description of a source whose capture device description can't be changed.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }
}

- (void)i_updateDefaultSourceCaptureDeviceDescription:(id)description
{
  descriptionCopy = description;
  if (self->_isDefaultSource)
  {
    objc_storeStrong(&self->_defaultSourceCaptureDeviceDescription, description);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNLiveVideoSource i_updateDefaultSourceCaptureDeviceDescription:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 160, 0, "It is only valid to call this method for a default source");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }
}

- (void)setPosterImageData:(id)data
{
  dataCopy = data;
  if (self->_posterImageData != dataCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_msgSend_willRemoveReferenceToData_(self, v7, self->_posterImageData);
    objc_storeStrong(&self->_posterImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v8, self->_posterImageData);
    self->_definedPosterImageData = self->_posterImageData != 0;
  }
}

- (void)setSymbolAbbreviationText:(id)text
{
  textCopy = text;
  if (self->_symbolAbbreviationText != textCopy)
  {
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(textCopy, v6, v7);
    symbolAbbreviationText = self->_symbolAbbreviationText;
    self->_symbolAbbreviationText = v8;

    self->_definedSymbolAbbreviationText = self->_symbolAbbreviationText != 0;
  }
}

- (int64_t)symbolImageIdentifier
{
  symbolImageIdentifier = self->_symbolImageIdentifier;
  if (symbolImageIdentifier >= 0xF)
  {
    v4 = objc_msgSend_captureDeviceDescription(self, a2, v2);
    if (v4)
    {
      v5 = objc_opt_class();
      v8 = objc_msgSend_identifier(v4, v6, v7);
      symbolImageIdentifier = objc_msgSend_defaultSymbolImageIdentifierForCaptureDeviceIdentifier_(v5, v9, v8);
    }

    else
    {
      v10 = objc_opt_class();
      symbolImageIdentifier = objc_msgSend_defaultSymbolImageIdentifier(v10, v11, v12);
    }
  }

  return symbolImageIdentifier;
}

- (void)setSymbolImageIdentifier:(int64_t)identifier
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_p_archivedSymbolImageIdentifierForSymbolImageIdentifier_(v5, v6, identifier);
  if (self->_symbolImageIdentifier != v7)
  {
    v10 = v7;
    objc_msgSend_willModify(self, v8, v9);
    self->_symbolImageIdentifier = v10;
  }
}

+ (int64_t)p_archivedSymbolImageIdentifierForSymbolImageIdentifier:(int64_t)identifier
{
  if ((identifier - 1) >= 0xE)
  {
    return 0;
  }

  else
  {
    return identifier;
  }
}

+ (id)systemImageNameForSymbolImageIdentifier:(int64_t)identifier
{
  if (identifier > 0xE)
  {
    return 0;
  }

  else
  {
    return off_27A698D30[identifier];
  }
}

- (int64_t)symbolTintColorIdentifier
{
  if (self->_symbolTintColorIdentifier < 6uLL)
  {
    return self->_symbolTintColorIdentifier;
  }

  v4 = objc_opt_class();

  return objc_msgSend_defaultSymbolTintColorIdentifier(v4, v5, v6);
}

- (void)setSymbolTintColorIdentifier:(int64_t)identifier
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier_(v5, v6, identifier);
  if (self->_symbolTintColorIdentifier != v7)
  {
    v10 = v7;
    objc_msgSend_willModify(self, v8, v9);
    self->_symbolTintColorIdentifier = v10;
  }
}

+ (int64_t)p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier:(int64_t)identifier
{
  if ((identifier - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return identifier;
  }
}

+ (id)colorForSymbolTintColorIdentifier:(int64_t)identifier
{
  v3 = 0;
  if (identifier > 2)
  {
    switch(identifier)
    {
      case 3:
        v3 = objc_msgSend_systemYellowColor(MEMORY[0x277D75348], a2, 3);
        break;
      case 4:
        v3 = objc_msgSend_systemGreenColor(MEMORY[0x277D75348], a2, 4);
        break;
      case 5:
        v3 = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], a2, 5);
        break;
    }
  }

  else if (identifier)
  {
    if (identifier == 1)
    {
      v3 = objc_msgSend_whiteColor(MEMORY[0x277D75348], a2, 1);
    }

    else if (identifier == 2)
    {
      v3 = objc_msgSend_systemRedColor(MEMORY[0x277D75348], a2, 2);
    }
  }

  else
  {
    v3 = objc_msgSend_blackColor(MEMORY[0x277D75348], a2, 0);
  }

  return v3;
}

- (void)willBeUsedByCollaborationCommandWithUsageToken:(id)token
{
  tokenCopy = token;
  objc_msgSend_willModify(self, v4, v5);
  v7 = objc_msgSend_usageStateByAddingCollaborationCommandUsageToken_(self->_collaborationCommandUsageState, v6, tokenCopy);
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v7;
}

- (void)rollbackToCollaborationCommandUsageState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v5);
  v8 = objc_msgSend_copy(stateCopy, v6, v7);
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v8;
}

- (BOOL)isEquivalentToLiveVideoSource:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (self->_isDefaultSource)
  {
    isEqual = sourceCopy[96];
  }

  else
  {
    v9 = objc_msgSend_name(self, v5, v6);
    v12 = objc_msgSend_name(v7, v10, v11);
    if (objc_msgSend_isEqualToString_(v9, v13, v12))
    {
      v16 = objc_msgSend_captureDeviceDescription(self, v14, v15);
      v19 = objc_msgSend_captureDeviceDescription(v7, v17, v18);
      v20 = v16;
      v22 = v19;
      if (v20 | v22)
      {
        isEqual = objc_msgSend_isEqual_(v20, v21, v22);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual & 1;
}

- (BOOL)supportsBackgroundKind:(int64_t)kind
{
  if (kind == 1)
  {
    v4 = objc_msgSend_captureDeviceDescription(self, a2, 1);
    v7 = v4;
    if (v4)
    {
      v8 = objc_msgSend_identifier(v4, v5, v6);
      v3 = objc_msgSend_isIOSScreenRecordingDevice(v8, v9, v10) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = kind == 0;
  }

  return v3;
}

- (void)didInitFromSOS
{
  v5.receiver = self;
  v5.super_class = KNLiveVideoSource;
  [(KNLiveVideoSource *)&v5 didInitFromSOS];
  posterImageData = self->_posterImageData;
  if (posterImageData)
  {
    objc_msgSend_didAddReferenceToData_(self, v3, posterImageData);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[106]);

  if (*(v5 + 16))
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v15, v16, *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[KNLiveVideoSource loadFromUnarchiver:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 644, 0, "Missing name in message.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v14 = &stru_2884D8E20;
  }

  name = self->_name;
  self->_name = &v14->isa;

  v19 = *(v5 + 16);
  if ((v19 & 4) != 0)
  {
    v20 = [KNLiveVideoCaptureDeviceDescription alloc];
    if (*(v5 + 40))
    {
      v22 = objc_msgSend_initWithMessage_unarchiver_(v20, v21, *(v5 + 40), unarchiverCopy);
    }

    else
    {
      v22 = objc_msgSend_initWithMessage_unarchiver_(v20, v21, &unk_2812EBD48, unarchiverCopy);
    }

    captureDeviceDescription = self->_captureDeviceDescription;
    self->_captureDeviceDescription = v22;

    self->_definedCaptureDeviceDescription = 1;
    v19 = *(v5 + 16);
  }

  if ((v19 & 0x80) != 0)
  {
    self->_isDefaultSource = *(v5 + 72);
  }

  if ((v19 & 0x10) != 0)
  {
    v24 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v18, *(v5 + 56));
    posterImageData = self->_posterImageData;
    self->_posterImageData = v24;

    self->_definedPosterImageData = 1;
    v19 = *(v5 + 16);
  }

  if ((v19 & 2) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_tsp_initWithProtobufString_(v26, v27, *(v5 + 32) & 0xFFFFFFFFFFFFFFFELL);
    symbolAbbreviationText = self->_symbolAbbreviationText;
    self->_symbolAbbreviationText = v28;

    self->_definedSymbolAbbreviationText = 1;
    v19 = *(v5 + 16);
  }

  if ((v19 & 0x20) != 0)
  {
    self->_symbolImageIdentifier = *(v5 + 64);
  }

  else if (self->_captureDeviceDescription)
  {
    v30 = objc_opt_class();
    v33 = objc_msgSend_identifier(self->_captureDeviceDescription, v31, v32);
    v35 = objc_msgSend_defaultSymbolImageIdentifierForCaptureDeviceIdentifier_(v30, v34, v33);
    self->_symbolImageIdentifier = objc_msgSend_p_archivedSymbolImageIdentifierForSymbolImageIdentifier_(v30, v36, v35);
  }

  else
  {
    v37 = objc_opt_class();
    v40 = objc_msgSend_defaultSymbolImageIdentifier(v37, v38, v39);
    self->_symbolImageIdentifier = objc_msgSend_p_archivedSymbolImageIdentifierForSymbolImageIdentifier_(v37, v41, v40);
  }

  v42 = *(v5 + 16);
  if ((v42 & 0x40) == 0)
  {
    v43 = objc_opt_class();
    v46 = objc_msgSend_defaultSymbolTintColorIdentifier(v43, v44, v45);
    self->_symbolTintColorIdentifier = objc_msgSend_p_archivedSymbolTintColorIdentifierForSymbolTintColorIdentifier_(v43, v47, v46);
    if ((*(v5 + 16) & 8) != 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[KNLiveVideoSource loadFromUnarchiver:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 689, 0, "Missing collaborationCommandUsageState in message.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
    v50 = objc_msgSend_emptyUsageState(KNLiveVideoSourceCollaborationCommandUsageState, v58, v59);
    goto LABEL_28;
  }

  self->_symbolTintColorIdentifier = *(v5 + 68);
  if ((v42 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  v48 = [KNLiveVideoSourceCollaborationCommandUsageState alloc];
  if (*(v5 + 48))
  {
    v50 = objc_msgSend_initWithMessage_unarchiver_(v48, v49, *(v5 + 48), unarchiverCopy);
  }

  else
  {
    v50 = objc_msgSend_initWithMessage_unarchiver_(v48, v49, &qword_2812EBD20, unarchiverCopy);
  }

LABEL_28:
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  self->_collaborationCommandUsageState = v50;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_275DCD320, off_2812EA908[106]);

  v9 = objc_msgSend_tsp_protobufString(self->_name, v7, v8);
  *(v6 + 16) |= 1u;
  sub_275D55B98(__p, v9);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  captureDeviceDescription = self->_captureDeviceDescription;
  if (captureDeviceDescription)
  {
    *(v6 + 16) |= 4u;
    v13 = *(v6 + 40);
    if (!v13)
    {
      v14 = *(v6 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = sub_275E21854(v14);
      *(v6 + 40) = v13;
    }

    objc_msgSend_saveToMessage_archiver_(captureDeviceDescription, v10, v13, archiverCopy);
  }

  isDefaultSource = self->_isDefaultSource;
  v16 = *(v6 + 16);
  *(v6 + 16) = v16 | 0x80;
  *(v6 + 72) = isDefaultSource;
  posterImageData = self->_posterImageData;
  if (posterImageData)
  {
    *(v6 + 16) = v16 | 0x90;
    v18 = *(v6 + 56);
    if (!v18)
    {
      v19 = *(v6 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C8EFD0](v19);
      *(v6 + 56) = v18;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v10, posterImageData, v18);
  }

  symbolAbbreviationText = self->_symbolAbbreviationText;
  if (symbolAbbreviationText)
  {
    v21 = objc_msgSend_tsp_protobufString(symbolAbbreviationText, v10, v11);
    *(v6 + 16) |= 2u;
    sub_275D55B98(__p, v21);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }
  }

  symbolImageIdentifier = self->_symbolImageIdentifier;
  if (symbolImageIdentifier >= 0x80000000)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNLiveVideoSource saveToArchiver:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 713, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    LODWORD(symbolImageIdentifier) = 0x7FFFFFFF;
  }

  else if (symbolImageIdentifier <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNLiveVideoSource saveToArchiver:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 713, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
    LODWORD(symbolImageIdentifier) = 0x80000000;
  }

  *(v6 + 16) |= 0x20u;
  *(v6 + 64) = symbolImageIdentifier;
  symbolTintColorIdentifier = self->_symbolTintColorIdentifier;
  if (symbolTintColorIdentifier >= 0x80000000)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNLiveVideoSource saveToArchiver:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 715, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
    LODWORD(symbolTintColorIdentifier) = 0x7FFFFFFF;
  }

  else if (symbolTintColorIdentifier <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[KNLiveVideoSource saveToArchiver:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoSource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 715, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
    LODWORD(symbolTintColorIdentifier) = 0x80000000;
  }

  v24 = *(v6 + 16);
  *(v6 + 16) = v24 | 0x40;
  *(v6 + 68) = symbolTintColorIdentifier;
  collaborationCommandUsageState = self->_collaborationCommandUsageState;
  *(v6 + 16) = v24 | 0x48;
  v26 = *(v6 + 48);
  if (!v26)
  {
    v27 = *(v6 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = sub_275E21784(v27);
    *(v6 + 48) = v26;
  }

  objc_msgSend_saveToMessage_archiver_(collaborationCommandUsageState, v10, v26, archiverCopy);
  v28 = sub_275E53AE0();
  objc_msgSend_setMessageVersion_(archiverCopy, v29, v28);
  v30 = sub_275E53AD0();
  objc_msgSend_requiresDocumentVersion_(archiverCopy, v31, v30);
}

+ (NSString)accessibilityLabelForCameraArrowTriangle2CirclePath
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"A still camera containing ‘chasing arrows’ where a lens would be", &stru_2884D8E20, @"Keynote");

  return v4;
}

+ (id)colorSetForSymbolTintColorIdentifier:(int64_t)identifier
{
  v3 = sub_275E560BC(identifier);

  return v3;
}

@end