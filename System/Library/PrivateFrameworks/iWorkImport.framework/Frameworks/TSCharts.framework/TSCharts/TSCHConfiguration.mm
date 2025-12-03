@interface TSCHConfiguration
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedChartConfiguration;
- (TSCHConfiguration)init;
- (TSSPropertyMap)appSpecificPropertyOverrides;
@end

@implementation TSCHConfiguration

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCHConfiguration;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedChartConfiguration
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27631F734;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47AC0 != -1)
  {
    dispatch_once(&qword_280A47AC0, block);
  }

  v2 = qword_280A47AB8;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHConfiguration allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHConfiguration.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 48, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCHConfiguration)init
{
  v3.receiver = self;
  v3.super_class = TSCHConfiguration;
  result = [(TSCHConfiguration *)&v3 init];
  if (result)
  {
    result->_supportsChartDataEditor = 1;
    *&result->_supportsNumberFormatSameAsSource = 0;
    result->_use3DFillFor3DChartFallback = 1;
    *&result->_shouldForceDiscreteGraphicsFor3D = 0;
  }

  return result;
}

- (TSSPropertyMap)appSpecificPropertyOverrides
{
  objc_opt_class();
  v6 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v2, v3, v4, v5);
  v11 = objc_msgSend_appChartPropertyOverrides(v6, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  return v12;
}

@end