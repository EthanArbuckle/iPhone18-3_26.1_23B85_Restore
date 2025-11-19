@interface TSCHPropertyMigrator
- (TSCHPropertyMigrator)initWithProperties:(id)a3;
- (void)migrateToSeries:(id)a3;
- (void)visitExistingSeries:(id)a3;
@end

@implementation TSCHPropertyMigrator

- (TSCHPropertyMigrator)initWithProperties:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCHPropertyMigrator initWithProperties:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 66, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v36.receiver = self;
  v36.super_class = TSCHPropertyMigrator;
  v25 = [(TSCHPropertyMigrator *)&v36 init];
  if (v25)
  {
    v29 = objc_msgSend_copy(v5, v24, v26, v27, v28);
    propertiesToForce = v25->_propertiesToForce;
    v25->_propertiesToForce = v29;

    v31 = objc_alloc_init(MEMORY[0x277D81208]);
    shouldForceFlags = v25->_shouldForceFlags;
    v25->_shouldForceFlags = v31;

    v33 = objc_alloc_init(MEMORY[0x277D81210]);
    valuesToForce = v25->_valuesToForce;
    v25->_valuesToForce = v33;
  }

  return v25;
}

- (void)visitExistingSeries:(id)a3
{
  v4 = a3;
  propertiesToForce = self->_propertiesToForce;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276232ACC;
  v11[3] = &unk_27A6B6D88;
  v12 = v4;
  v13 = self;
  v6 = v4;
  objc_msgSend_enumeratePropertiesUsingBlock_(propertiesToForce, v7, v8, v9, v10, v11);
}

- (void)migrateToSeries:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  propertiesToForce = self->_propertiesToForce;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276232D38;
  v13[3] = &unk_27A6B6DB0;
  v14 = v4;
  v15 = self;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  objc_msgSend_enumeratePropertiesUsingBlock_(propertiesToForce, v9, v10, v11, v12, v13);
}

@end