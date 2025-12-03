@interface TSPDocumentResourceInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDocumentResourceInfo:(id)info;
- (CGSize)pixelSize;
- (NSString)description;
- (NSString)recordName;
- (TSPDocumentResourceInfo)init;
- (TSPDocumentResourceInfo)initWithDigestString:(id)string locator:(id)locator fileExtension:(id)extension fileSize:(unint64_t)size tags:(id)tags pixelSize:(CGSize)pixelSize fallbackColor:(id)color;
@end

@implementation TSPDocumentResourceInfo

- (TSPDocumentResourceInfo)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceInfo init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 13, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDocumentResourceInfo init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDocumentResourceInfo)initWithDigestString:(id)string locator:(id)locator fileExtension:(id)extension fileSize:(unint64_t)size tags:(id)tags pixelSize:(CGSize)pixelSize fallbackColor:(id)color
{
  height = pixelSize.height;
  width = pixelSize.width;
  stringCopy = string;
  locatorCopy = locator;
  extensionCopy = extension;
  tagsCopy = tags;
  colorCopy = color;
  v48.receiver = self;
  v48.super_class = TSPDocumentResourceInfo;
  v24 = [(TSPDocumentResourceInfo *)&v48 init];
  if (v24)
  {
    v25 = objc_msgSend_copy(stringCopy, v22, v23);
    digestString = v24->_digestString;
    v24->_digestString = v25;

    v29 = objc_msgSend_copy(locatorCopy, v27, v28);
    locator = v24->_locator;
    v24->_locator = v29;

    v33 = objc_msgSend_copy(extensionCopy, v31, v32);
    fileExtension = v24->_fileExtension;
    v24->_fileExtension = v33;

    v24->_fileSize = size;
    v37 = objc_msgSend_copy(tagsCopy, v35, v36);
    v40 = v37;
    if (v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = objc_msgSend_set(MEMORY[0x277CBEB98], v38, v39);
    }

    tags = v24->_tags;
    v24->_tags = v41;

    v24->_pixelSize.width = width;
    v24->_pixelSize.height = height;
    v45 = objc_msgSend_copy(colorCopy, v43, v44);
    fallbackColor = v24->_fallbackColor;
    v24->_fallbackColor = v45;
  }

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToDocumentResourceInfo = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      isEqualToDocumentResourceInfo = objc_msgSend_isEqualToDocumentResourceInfo_(self, v5, v6);
    }

    else
    {
      isEqualToDocumentResourceInfo = 0;
    }
  }

  return isEqualToDocumentResourceInfo;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPDocumentResourceInfo;
  v4 = [(TSPDocumentResourceInfo *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ - digestString: (%@), locator: (%@), fileExtension: (%@), fileSize: (%llu), tags: (%@), fallbackColor: (%@)", v4, self->_digestString, self->_locator, self->_fileExtension, self->_fileSize, self->_tags, self->_fallbackColor);

  return v6;
}

- (BOOL)isEqualToDocumentResourceInfo:(id)info
{
  infoCopy = info;
  digestString = self->_digestString;
  v8 = objc_msgSend_digestString(infoCopy, v6, v7);
  if (!objc_msgSend_isEqualToString_(digestString, v9, v8))
  {
    goto LABEL_6;
  }

  locator = self->_locator;
  v13 = objc_msgSend_locator(infoCopy, v10, v11);
  if ((objc_msgSend_isEqualToString_(locator, v14, v13) & 1) == 0)
  {

LABEL_6:
    isEqualToSet = 0;
    goto LABEL_7;
  }

  fileExtension = self->_fileExtension;
  v18 = objc_msgSend_fileExtension(infoCopy, v15, v16);
  LODWORD(fileExtension) = objc_msgSend_isEqualToString_(fileExtension, v19, v18);

  if (!fileExtension)
  {
    isEqualToSet = 0;
    goto LABEL_8;
  }

  v8 = objc_msgSend_tags(infoCopy, v20, v21);
  isEqualToSet = objc_msgSend_isEqualToSet_(self->_tags, v22, v8);
LABEL_7:

LABEL_8:
  return isEqualToSet;
}

- (NSString)recordName
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_recordType(self, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"%@.%@", v5, self->_digestString);

  return v7;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end