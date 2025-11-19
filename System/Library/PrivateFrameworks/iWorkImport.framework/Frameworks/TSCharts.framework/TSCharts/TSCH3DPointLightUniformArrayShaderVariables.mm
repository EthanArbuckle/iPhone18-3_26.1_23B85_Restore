@interface TSCH3DPointLightUniformArrayShaderVariables
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)variables;
- (TSCH3DPointLightUniformArrayShaderVariables)init;
- (void)initializeArrayVariables;
@end

@implementation TSCH3DPointLightUniformArrayShaderVariables

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DPointLightUniformArrayShaderVariables;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)variables
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761B1B0C;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A46950 != -1)
  {
    dispatch_once(&qword_280A46950, block);
  }

  v2 = qword_280A46948;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DPointLightUniformArrayShaderVariables allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 65, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCH3DPointLightUniformArrayShaderVariables)init
{
  v9.receiver = self;
  v9.super_class = TSCH3DPointLightUniformArrayShaderVariables;
  v2 = [(TSCH3DPointLightUniformArrayShaderVariables *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_initializePrefix_(v2, v3, v4, v5, v6, @"PointLight");
  }

  return v7;
}

- (void)initializeArrayVariables
{
  v7.receiver = self;
  v7.super_class = TSCH3DPointLightUniformArrayShaderVariables;
  [(TSCH3DLightUniformArrayShaderVariables *)&v7 initializeArrayVariables];
  objc_msgSend_addArrayName_type_(self->super._variables, v3, v4, v5, v6, @"Position", @"vec3");
}

@end