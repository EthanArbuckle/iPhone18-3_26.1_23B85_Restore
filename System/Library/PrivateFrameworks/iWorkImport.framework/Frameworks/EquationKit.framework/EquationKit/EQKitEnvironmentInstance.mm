@interface EQKitEnvironmentInstance
+ (id)dataForDefaultEnvironment;
+ (id)dataForEnvironment:(id)environment;
+ (id)defaultEnvironment;
+ (id)environmentFromData:(id)data;
- (EQKitEnvironmentInstance)initWithConfig:(id)config;
- (void)beginLayout;
- (void)dealloc;
- (void)endLayout;
@end

@implementation EQKitEnvironmentInstance

+ (id)environmentFromData:(id)data
{
  v12 = 0;
  v13 = 0;
  v4 = objc_opt_class();
  v6 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v5, data, 0, &v12, &v13);
  v7 = sub_275C950F4(v4, v6);
  v8 = [EQKitEnvironmentInstance alloc];
  return objc_msgSend_initWithConfig_(v8, v9, v7, v10, v12, v13);
}

+ (id)dataForDefaultEnvironment
{
  if (qword_280A38B08 != -1)
  {
    sub_275D01FDC();
  }

  return qword_280A38B00;
}

+ (id)defaultEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275CC95DC;
  block[3] = &unk_27A6779A0;
  block[4] = self;
  if (qword_280A38B18 != -1)
  {
    dispatch_once(&qword_280A38B18, block);
  }

  return qword_280A38B10;
}

+ (id)dataForEnvironment:(id)environment
{
  v8 = 0;
  v4 = objc_msgSend_newDictionaryForArchiving(environment, a2, environment, v3);
  v6 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v5, v4, 100, 0, &v8);

  return v6;
}

- (EQKitEnvironmentInstance)initWithConfig:(id)config
{
  v40.receiver = self;
  v40.super_class = EQKitEnvironmentInstance;
  v7 = [(EQKitEnvironmentInstance *)&v40 init];
  if (v7)
  {
    v10 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v4, v5, v6);
    if (!v10)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[EQKitEnvironmentInstance initWithConfig:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/EquationKit/EQKitEnvironmentInstance.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 103, 0, "invalid nil value for '%{public}s'", "bundle");
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v20 = objc_msgSend_pathForResource_ofType_(v10, v8, @"EQKitOperatorDictionary", @"plist");
    v23 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v21, v20, v22);
    v7->mConfig = objc_msgSend_copy(config, v24, v25, v26);
    v7->mOperatorDictionary = sub_275CC79CC(v23);
    v27 = objc_opt_class();
    v30 = objc_msgSend_objectForKey_(v7->mConfig, v28, @"fonts", v29);
    sub_275C950F4(v27, v30);
    v31 = objc_opt_class();
    v34 = objc_msgSend_objectForKey_(v7->mConfig, v32, @"version", v33);
    v35 = sub_275C950F4(v31, v34);
    sub_275CBAA78(&v39, v35, v36, v37);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mOperatorDictionary = self->mOperatorDictionary;
  if (mOperatorDictionary)
  {
    v4 = sub_275CC79C8(mOperatorDictionary);
    MEMORY[0x277C8CFC0](v4, 0x1020C40EAA897C4);
  }

  mFontManager = self->mFontManager;
  if (mFontManager)
  {
    (*(mFontManager->var0 + 1))(mFontManager);
  }

  mKerningManager = self->mKerningManager;
  if (mKerningManager)
  {
    v7 = sub_275C9B0FC(mKerningManager);
    MEMORY[0x277C8CFC0](v7, 0x1020C408D4A57B4);
  }

  mLayoutConfig = self->mLayoutConfig;
  if (mLayoutConfig)
  {
    MEMORY[0x277C8CFC0](mLayoutConfig, 0x1000C4000313F17);
  }

  mBlahtexConfig = self->mBlahtexConfig;
  if (mBlahtexConfig)
  {
    sub_275CAF5D8(mBlahtexConfig + 40);
    v10 = sub_275CAF5D8(mBlahtexConfig);
    MEMORY[0x277C8CFC0](v10, 0x10A0C40864A76ABLL);
  }

  v11.receiver = self;
  v11.super_class = EQKitEnvironmentInstance;
  [(EQKitEnvironmentInstance *)&v11 dealloc];
}

- (void)beginLayout
{
  sub_275C9B078(self->mFontManager);
  mKerningManager = self->mKerningManager;

  sub_275C9B328(mKerningManager);
}

- (void)endLayout
{
  sub_275C9B338(self->mKerningManager);
  mFontManager = self->mFontManager;

  sub_275C9B088(mFontManager);
}

@end