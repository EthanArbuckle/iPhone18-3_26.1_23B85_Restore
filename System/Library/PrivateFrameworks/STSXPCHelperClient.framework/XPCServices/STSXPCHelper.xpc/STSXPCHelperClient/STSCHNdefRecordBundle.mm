@interface STSCHNdefRecordBundle
- (BOOL)isEqual:(id)equal;
- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)record configurationRecord:(id)configurationRecord auxiliaryRecords:(id)records errorRecord:(id)errorRecord;
@end

@implementation STSCHNdefRecordBundle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (self->_alternativeRecord)
    {
      alternativeRecord = [(STSCHNdefRecordBundle *)v6 alternativeRecord];
      if (alternativeRecord)
      {
        v9 = alternativeRecord;
        alternativeRecord = self->_alternativeRecord;
        alternativeRecord2 = [(STSCHNdefRecordBundle *)v7 alternativeRecord];
        LODWORD(alternativeRecord) = [(STSNDEFRecord *)alternativeRecord isEqual:alternativeRecord2];

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

    alternativeRecord3 = [(STSCHNdefRecordBundle *)v7 alternativeRecord];

    if (alternativeRecord3)
    {
      goto LABEL_9;
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    configurationRecord = [(STSCHNdefRecordBundle *)v7 configurationRecord];
    if (configurationRecord)
    {
      v16 = configurationRecord;
      configurationRecord = self->_configurationRecord;
      configurationRecord2 = [(STSCHNdefRecordBundle *)v7 configurationRecord];
      LODWORD(configurationRecord) = [(STSNDEFRecord *)configurationRecord isEqual:configurationRecord2];

      if (!configurationRecord)
      {
        goto LABEL_9;
      }
    }

    if (!self->_configurationRecord)
    {
      goto LABEL_9;
    }

    configurationRecord3 = [(STSCHNdefRecordBundle *)v7 configurationRecord];

    if (!configurationRecord3)
    {
      goto LABEL_9;
    }

    auxiliaryRecords = self->_auxiliaryRecords;
    auxiliaryRecords = [(STSCHNdefRecordBundle *)v7 auxiliaryRecords];
    LODWORD(auxiliaryRecords) = [(NSArray *)auxiliaryRecords isEqualToArray:auxiliaryRecords];

    if (!auxiliaryRecords)
    {
      goto LABEL_9;
    }

    if (!self->_errorRecord)
    {
      goto LABEL_9;
    }

    errorRecord = [(STSCHNdefRecordBundle *)v7 errorRecord];
    if (errorRecord)
    {
      v23 = errorRecord;
      v24 = self->_configurationRecord;
      errorRecord2 = [(STSCHNdefRecordBundle *)v7 errorRecord];
      LODWORD(v24) = [(STSNDEFRecord *)v24 isEqual:errorRecord2];

      if (!v24)
      {
        goto LABEL_9;
      }
    }

    if (self->_errorRecord)
    {
      errorRecord3 = [(STSCHNdefRecordBundle *)v7 errorRecord];
      v13 = errorRecord3 != 0;
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

- (STSCHNdefRecordBundle)initWithAlternativeRecord:(id)record configurationRecord:(id)configurationRecord auxiliaryRecords:(id)records errorRecord:(id)errorRecord
{
  recordCopy = record;
  configurationRecordCopy = configurationRecord;
  recordsCopy = records;
  errorRecordCopy = errorRecord;
  v18.receiver = self;
  v18.super_class = STSCHNdefRecordBundle;
  v15 = [(STSCHNdefRecordBundle *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alternativeRecord, record);
    objc_storeStrong(&v16->_configurationRecord, configurationRecord);
    objc_storeStrong(&v16->_auxiliaryRecords, records);
    objc_storeStrong(&v16->_errorRecord, errorRecord);
  }

  return v16;
}

@end