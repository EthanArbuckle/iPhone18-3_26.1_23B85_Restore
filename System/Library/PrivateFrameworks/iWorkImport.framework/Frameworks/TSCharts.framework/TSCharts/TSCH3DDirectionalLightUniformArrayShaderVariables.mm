@interface TSCH3DDirectionalLightUniformArrayShaderVariables
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)variables;
- (TSCH3DDirectionalLightUniformArrayShaderVariables)init;
- (void)initializeArrayVariables;
@end

@implementation TSCH3DDirectionalLightUniformArrayShaderVariables

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DDirectionalLightUniformArrayShaderVariables;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)variables
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761B1E80;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46960 != -1)
  {
    dispatch_once(&qword_280A46960, block);
  }

  v2 = qword_280A46958;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DDirectionalLightUniformArrayShaderVariables allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 85, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCH3DDirectionalLightUniformArrayShaderVariables)init
{
  v9.receiver = self;
  v9.super_class = TSCH3DDirectionalLightUniformArrayShaderVariables;
  v2 = [(TSCH3DDirectionalLightUniformArrayShaderVariables *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_initializePrefix_(v2, v3, v4, v5, v6, @"DirectionalLight");
  }

  return v7;
}

- (void)initializeArrayVariables
{
  v7.receiver = self;
  v7.super_class = TSCH3DDirectionalLightUniformArrayShaderVariables;
  [(TSCH3DLightUniformArrayShaderVariables *)&v7 initializeArrayVariables];
  objc_msgSend_addArrayName_type_(self->super._variables, v3, v4, v5, v6, @"Direction", @"vec3");
}

@end