@interface TNFormBasedSheet
- (TNFormBasedSheet)initWithContext:(id)a3 importedTargetName:(id)a4;
- (TSKUIDStruct)tableUID;
- (TSTTableInfo)tableInfo;
- (void)clearTableInfoCache;
- (void)loadFromUnarchiver:(id)a3;
- (void)resolveImportedTargetNameInDocumentRoot:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setTableInfo:(id)a3;
- (void)setTableUID:(TSKUIDStruct)a3;
@end

@implementation TNFormBasedSheet

- (void)setTableUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower);
  self->_tableUID._lower = lower;
  self->_tableUID._upper = upper;
  tableInfo = self->_tableInfo;
  self->_tableInfo = 0;

  importedTargetName = self->_importedTargetName;
  if (importedTargetName)
  {
    v9 = objc_msgSend_rangeOfString_(importedTargetName, v7, @" :: ");
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setName_(self, v10, self->_importedTargetName);
    }

    else
    {
      v16 = objc_msgSend_substringFromIndex_(self->_importedTargetName, v10, &v10[v9]);
      objc_msgSend_setName_(self, v11, v16);
    }

    v12 = self->_importedTargetName;
    self->_importedTargetName = 0;
  }

  else
  {
    if (lower | upper)
    {
      return;
    }

    v17 = sub_275F37BC8();
    v14 = objc_msgSend_localizedStringForKey_value_table_(v17, v13, @"Empty Form", &stru_2884F65E0, @"Numbers");
    objc_msgSend_setName_(self, v15, v14);

    v12 = v17;
  }
}

- (void)setTableInfo:(id)a3
{
  v9 = a3;
  tableInfo = self->_tableInfo;
  self->_tableInfo = 0;

  if (v9)
  {
    v7 = objc_msgSend_tableUID(v9, v5, v6);
    objc_msgSend_setTableUID_(self, v8, v7, v8);
  }
}

- (TSTTableInfo)tableInfo
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    v5 = MEMORY[0x277D80D40];
    lower = self->_tableUID._lower;
    upper = self->_tableUID._upper;
    v8 = objc_msgSend_documentRoot(self, a2, v2);
    v11 = objc_msgSend_calculationEngine(v8, v9, v10);
    v13 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v5, v12, lower, upper, v11);
    v14 = self->_tableInfo;
    self->_tableInfo = v13;

    v17 = objc_msgSend_documentRoot(self->_tableInfo, v15, v16);

    tableInfo = self->_tableInfo;
    if (!v17)
    {
      self->_tableInfo = 0;

      tableInfo = self->_tableInfo;
    }
  }

  return tableInfo;
}

- (void)clearTableInfoCache
{
  tableInfo = self->_tableInfo;
  self->_tableInfo = 0;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DAFE8[28]);

  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = &unk_2812DB3A0;
  }

  v9.receiver = self;
  v9.super_class = TNFormBasedSheet;
  [(TNSheet *)&v9 loadFromArchive:v7 unarchiver:v4];
  self->_tableUID._lower = TSKUIDStruct::loadFromMessage();
  self->_tableUID._upper = v8;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_275F2AE4C, off_2812DAFE8[28]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275EEE708(v8);
    *(v6 + 24) = v7;
  }

  v12.receiver = self;
  v12.super_class = TNFormBasedSheet;
  [(TNSheet *)&v12 saveToArchive:v7 archiver:v4];
  p_tableUID = &self->_tableUID;
  if (p_tableUID->_lower || p_tableUID->_upper)
  {
    *(v6 + 16) |= 2u;
    v10 = *(v6 + 32);
    if (!v10)
    {
      v11 = *(v6 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C90F50](v11);
      *(v6 + 32) = v10;
    }

    TSKUIDStruct::saveToMessage(p_tableUID, v10);
  }
}

- (TNFormBasedSheet)initWithContext:(id)a3 importedTargetName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TNFormBasedSheet;
  v8 = [(TNSheet *)&v11 initWithContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_importedTargetName, a4);
  }

  return v9;
}

- (void)resolveImportedTargetNameInDocumentRoot:(id)a3
{
  v21 = a3;
  v6 = objc_msgSend_rangeOfString_(self->_importedTargetName, v4, @" :: ");
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = objc_msgSend_substringToIndex_(self->_importedTargetName, v5, v6);
    v10 = objc_msgSend_substringFromIndex_(self->_importedTargetName, v9, &v7[v6]);
    objc_opt_class();
    v12 = objc_msgSend_resolverContainerForName_caseSensitive_(v21, v11, v8, 1);
    v13 = TSUDynamicCast();

    if (v13)
    {
      v15 = objc_msgSend_tableInfoForName_caseSensitive_(v13, v14, v10, 1);
      v18 = objc_msgSend_tableUID(v15, v16, v17);
      objc_msgSend_setTableUID_(self, v19, v18, v19);
    }
  }

  importedTargetName = self->_importedTargetName;
  self->_importedTargetName = 0;
}

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID._lower;
  upper = p_tableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end