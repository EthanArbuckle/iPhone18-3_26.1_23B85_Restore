@interface TSAExportableDocumentType
+ (id)exportableTypeWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (TSAExportableDocumentType)initWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message;
- (TSAExportableDocumentType)initWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message exportProgressTitle:(id)title exportMessage:(id)exportMessage;
@end

@implementation TSAExportableDocumentType

+ (id)exportableTypeWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message
{
  messageCopy = message;
  nameCopy = name;
  typeCopy = type;
  v11 = [self alloc];
  v13 = objc_msgSend_initWithType_localizedName_exportProgressMessage_(v11, v12, typeCopy, nameCopy, messageCopy);

  return v13;
}

- (TSAExportableDocumentType)initWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message
{
  typeCopy = type;
  nameCopy = name;
  messageCopy = message;
  v28.receiver = self;
  v28.super_class = TSAExportableDocumentType;
  v14 = [(TSAExportableDocumentType *)&v28 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(typeCopy, v11, v12, v13);
    type = v14->_type;
    v14->_type = v15;

    v20 = objc_msgSend_copy(nameCopy, v17, v18, v19);
    localizedName = v14->_localizedName;
    v14->_localizedName = v20;

    v25 = objc_msgSend_copy(messageCopy, v22, v23, v24);
    exportProgressMessage = v14->_exportProgressMessage;
    v14->_exportProgressMessage = v25;
  }

  return v14;
}

- (TSAExportableDocumentType)initWithType:(id)type localizedName:(id)name exportProgressMessage:(id)message exportProgressTitle:(id)title exportMessage:(id)exportMessage
{
  typeCopy = type;
  nameCopy = name;
  messageCopy = message;
  titleCopy = title;
  exportMessageCopy = exportMessage;
  v39.receiver = self;
  v39.super_class = TSAExportableDocumentType;
  v20 = [(TSAExportableDocumentType *)&v39 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(typeCopy, v17, v18, v19);
    type = v20->_type;
    v20->_type = v21;

    v26 = objc_msgSend_copy(nameCopy, v23, v24, v25);
    localizedName = v20->_localizedName;
    v20->_localizedName = v26;

    v31 = objc_msgSend_copy(messageCopy, v28, v29, v30);
    exportProgressMessage = v20->_exportProgressMessage;
    v20->_exportProgressMessage = v31;

    v36 = objc_msgSend_copy(exportMessageCopy, v33, v34, v35);
    exportMessage = v20->_exportMessage;
    v20->_exportMessage = v36;

    objc_storeStrong(&v20->_exportProgressTitle, title);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v8 = objc_msgSend_type(self, v5, v6, v7);
  objc_opt_class();
  v9 = TSUDynamicCast();

  v13 = objc_msgSend_type(v9, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v14, v13, v15);

  return isEqualToString;
}

@end