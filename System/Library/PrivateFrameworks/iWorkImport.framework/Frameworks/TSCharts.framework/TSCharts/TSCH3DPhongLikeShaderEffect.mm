@interface TSCH3DPhongLikeShaderEffect
- (void)injectCommonShaderInto:(id)into context:(id)context;
@end

@implementation TSCH3DPhongLikeShaderEffect

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  objc_msgSend_injectEmissiveToProgram_(self, v5, v6, v7, v8);
  objc_msgSend_injectAmbientToProgram_(self, v9, v10, v11, v12, intoCopy);
  objc_msgSend_injectDiffuseToProgram_(self, v13, v14, v15, v16, intoCopy);
  objc_msgSend_injectSpecularToProgram_(self, v17, v18, v19, v20, intoCopy);
  objc_msgSend_injectFinalColorToProgram_(self, v21, v22, v23, v24, intoCopy);
  objc_msgSend_addConclusion_statement_(intoCopy, v25, v26, v27, v28, qword_280A46758, @"@@", qword_280A464B8);
}

@end