@interface STSCHNdefRecordBundle
- (BOOL)isEqual:(id)a3;
- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)a3 configurationRecord:(id)a4 auxiliaryRecords:(id)a5 errorRecord:(id)a6;
@end

@implementation STSCHNdefRecordBundle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v18 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v9 = v6;
    if (self->_alternativeRecord)
    {
      v10 = objc_msgSend_alternativeRecord(v6, v7, v8);
      if (v10)
      {
        v11 = v10;
        alternativeRecord = self->_alternativeRecord;
        v13 = objc_msgSend_alternativeRecord(v9, v7, v8);
        LODWORD(alternativeRecord) = objc_msgSend_isEqual_(alternativeRecord, v14, v13);

        if (!alternativeRecord)
        {
          goto LABEL_9;
        }
      }

      if (self->_alternativeRecord)
      {
        goto LABEL_9;
      }
    }

    v15 = objc_msgSend_alternativeRecord(v9, v7, v8);

    if (v15)
    {
      goto LABEL_9;
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    v20 = objc_msgSend_configurationRecord(v9, v16, v17);
    if (v20)
    {
      v23 = v20;
      configurationRecord = self->_configurationRecord;
      v25 = objc_msgSend_configurationRecord(v9, v21, v22);
      LODWORD(configurationRecord) = objc_msgSend_isEqual_(configurationRecord, v26, v25);

      if (!configurationRecord)
      {
        goto LABEL_9;
      }
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    v27 = objc_msgSend_configurationRecord(v9, v21, v22);

    if (!v27)
    {
      goto LABEL_9;
    }

    auxiliaryRecords = self->_auxiliaryRecords;
    v31 = objc_msgSend_auxiliaryRecords(v9, v28, v29);
    LODWORD(auxiliaryRecords) = objc_msgSend_isEqualToArray_(auxiliaryRecords, v32, v31);

    if (!auxiliaryRecords)
    {
      goto LABEL_9;
    }

    if (!self->_errorRecord)
    {
      goto LABEL_9;
    }

    v35 = objc_msgSend_errorRecord(v9, v33, v34);
    if (v35)
    {
      v38 = v35;
      v39 = self->_configurationRecord;
      v40 = objc_msgSend_errorRecord(v9, v36, v37);
      LODWORD(v39) = objc_msgSend_isEqual_(v39, v41, v40);

      if (!v39)
      {
        goto LABEL_9;
      }
    }

    if (self->_errorRecord)
    {
      v42 = objc_msgSend_errorRecord(v9, v36, v37);
      v18 = v42 != 0;
    }

    else
    {
LABEL_9:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)a3 configurationRecord:(id)a4 auxiliaryRecords:(id)a5 errorRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = STSCHNdefRecordBundle;
  v15 = [(STSCHNdefRecordBundle *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alternativeRecord, a3);
    objc_storeStrong(&v16->_configurationRecord, a4);
    objc_storeStrong(&v16->_auxiliaryRecords, a5);
    objc_storeStrong(&v16->_errorRecord, a6);
  }

  return v16;
}

@end