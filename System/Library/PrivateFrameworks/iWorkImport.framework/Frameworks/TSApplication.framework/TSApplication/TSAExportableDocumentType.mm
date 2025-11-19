@interface TSAExportableDocumentType
+ (id)exportableTypeWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TSAExportableDocumentType)initWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5;
- (TSAExportableDocumentType)initWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5 exportProgressTitle:(id)a6 exportMessage:(id)a7;
@end

@implementation TSAExportableDocumentType

+ (id)exportableTypeWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v13 = objc_msgSend_initWithType_localizedName_exportProgressMessage_(v11, v12, v10, v9, v8);

  return v13;
}

- (TSAExportableDocumentType)initWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = TSAExportableDocumentType;
  v14 = [(TSAExportableDocumentType *)&v28 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(v8, v11, v12, v13);
    type = v14->_type;
    v14->_type = v15;

    v20 = objc_msgSend_copy(v9, v17, v18, v19);
    localizedName = v14->_localizedName;
    v14->_localizedName = v20;

    v25 = objc_msgSend_copy(v10, v22, v23, v24);
    exportProgressMessage = v14->_exportProgressMessage;
    v14->_exportProgressMessage = v25;
  }

  return v14;
}

- (TSAExportableDocumentType)initWithType:(id)a3 localizedName:(id)a4 exportProgressMessage:(id)a5 exportProgressTitle:(id)a6 exportMessage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v39.receiver = self;
  v39.super_class = TSAExportableDocumentType;
  v20 = [(TSAExportableDocumentType *)&v39 init];
  if (v20)
  {
    v21 = objc_msgSend_copy(v12, v17, v18, v19);
    type = v20->_type;
    v20->_type = v21;

    v26 = objc_msgSend_copy(v13, v23, v24, v25);
    localizedName = v20->_localizedName;
    v20->_localizedName = v26;

    v31 = objc_msgSend_copy(v14, v28, v29, v30);
    exportProgressMessage = v20->_exportProgressMessage;
    v20->_exportProgressMessage = v31;

    v36 = objc_msgSend_copy(v16, v33, v34, v35);
    exportMessage = v20->_exportMessage;
    v20->_exportMessage = v36;

    objc_storeStrong(&v20->_exportProgressTitle, a6);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v8 = objc_msgSend_type(self, v5, v6, v7);
  objc_opt_class();
  v9 = TSUDynamicCast();

  v13 = objc_msgSend_type(v9, v10, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v14, v13, v15);

  return isEqualToString;
}

@end