@interface PPAugmentedGazetteerMetadata
- (PPAugmentedGazetteerMetadata)initWithStatement:(id)statement;
@end

@implementation PPAugmentedGazetteerMetadata

- (PPAugmentedGazetteerMetadata)initWithStatement:(id)statement
{
  statementCopy = statement;
  v20.receiver = self;
  v20.super_class = PPAugmentedGazetteerMetadata;
  v5 = [(PPAugmentedGazetteerMetadata *)&v20 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [statementCopy getInt64ForColumnName:"qid" table:"metadata"];
  if (HIDWORD(v7))
  {
    v16 = pp_default_log_handle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

      objc_autoreleasePoolPop(v6);
      v15 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v17 = "Augmented gazetteer qid was not a valid uint32_t value";
LABEL_12:
    _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, v17, buf, 2u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v16 = pp_default_log_handle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v17 = "Invalid augmented gazetteer qid of 0 detected";
    goto LABEL_12;
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Q%u", v7];
  qid = v5->_qid;
  v5->_qid = v8;

  v5->_threshold = vcvtd_n_f64_s64([statementCopy getInt64ForColumnName:"threshold" table:"metadata"], 3uLL);
  v10 = [statementCopy getNSStringForColumnName:"category" table:"metadata"];
  category = v5->_category;
  v5->_category = v10;

  v5->_gazetteerDomain = [statementCopy getInt64ForColumnName:"gazetteerDomain" table:"metadata"];
  v12 = [statementCopy getNSStringForColumnName:"alias" table:"metadata"];
  alias = v5->_alias;
  v5->_alias = v12;

  v14 = [statementCopy getInt64AsNSNumberForColumnName:"isLocation" table:"metadata"];
  v5->_isLocation = [v14 BOOLValue];

  objc_autoreleasePoolPop(v6);
LABEL_5:
  v15 = v5;
LABEL_10:

  return v15;
}

@end