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
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (self->_alternativeRecord)
    {
      v8 = [(STSCHNdefRecordBundle *)v6 alternativeRecord];
      if (v8)
      {
        v9 = v8;
        alternativeRecord = self->_alternativeRecord;
        v11 = [(STSCHNdefRecordBundle *)v7 alternativeRecord];
        LODWORD(alternativeRecord) = [(STSNDEFRecord *)alternativeRecord isEqual:v11];

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

    v12 = [(STSCHNdefRecordBundle *)v7 alternativeRecord];

    if (v12)
    {
      goto LABEL_9;
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    v15 = [(STSCHNdefRecordBundle *)v7 configurationRecord];
    if (v15)
    {
      v16 = v15;
      configurationRecord = self->_configurationRecord;
      v18 = [(STSCHNdefRecordBundle *)v7 configurationRecord];
      LODWORD(configurationRecord) = [(STSNDEFRecord *)configurationRecord isEqual:v18];

      if (!configurationRecord)
      {
        goto LABEL_9;
      }
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    v19 = [(STSCHNdefRecordBundle *)v7 configurationRecord];

    if (!v19)
    {
      goto LABEL_9;
    }

    auxiliaryRecords = self->_auxiliaryRecords;
    v21 = [(STSCHNdefRecordBundle *)v7 auxiliaryRecords];
    LODWORD(auxiliaryRecords) = [(NSArray *)auxiliaryRecords isEqualToArray:v21];

    if (!auxiliaryRecords)
    {
      goto LABEL_9;
    }

    if (!self->_errorRecord)
    {
      goto LABEL_9;
    }

    v22 = [(STSCHNdefRecordBundle *)v7 errorRecord];
    if (v22)
    {
      v23 = v22;
      v24 = self->_configurationRecord;
      v25 = [(STSCHNdefRecordBundle *)v7 errorRecord];
      LODWORD(v24) = [(STSNDEFRecord *)v24 isEqual:v25];

      if (!v24)
      {
        goto LABEL_9;
      }
    }

    if (self->_errorRecord)
    {
      v26 = [(STSCHNdefRecordBundle *)v7 errorRecord];
      v13 = v26 != 0;
    }

    else
    {
LABEL_9:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
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