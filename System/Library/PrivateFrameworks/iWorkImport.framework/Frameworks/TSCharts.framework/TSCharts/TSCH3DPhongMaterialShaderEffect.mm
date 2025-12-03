@interface TSCH3DPhongMaterialShaderEffect
- (void)injectCommonShaderInto:(id)into context:(id)context;
@end

@implementation TSCH3DPhongMaterialShaderEffect

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  contextCopy = context;
  v11 = objc_msgSend_resourceForMaterial_(self->super._pool, v7, v8, v9, v10, self->super._material);

  variables = self->super._variables;
  if (v11)
  {
    v17 = objc_msgSend_texture(variables, v12, v13, v14, v15);
    v22 = objc_msgSend_textureFunctionNameForVariable_projective_(contextCopy, v18, v19, v20, v21, v17, 0);

    v27 = objc_msgSend_textureColor(self->super._variables, v23, v24, v25, v26);
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, v29, v30, v31, @"%@(@@, @@.xy)", v22);
    v37 = objc_msgSend_texture(self->super._variables, v33, v34, v35, v36);
    v42 = objc_msgSend_texcoords(self->super._variables, v38, v39, v40, v41);
    objc_msgSend_addDeclaration_statement_(intoCopy, v43, v44, v45, v46, v27, v32, v37, v42);

    v51 = objc_msgSend_color(self->super._variables, v47, v48, v49, v50);
    v56 = objc_msgSend_textureColor(self->super._variables, v52, v53, v54, v55);
    v61 = objc_msgSend_factor(self->super._variables, v57, v58, v59, v60);
    objc_msgSend_addStatement_statement_(intoCopy, v62, v63, v64, v65, v51, @"@@ * @@", v56, v61);
  }

  else
  {
    v22 = objc_msgSend_color(variables, v12, v13, v14, v15);
    v51 = objc_msgSend_factor(self->super._variables, v66, v67, v68, v69);
    objc_msgSend_addVertexStatement_statement_(intoCopy, v70, v71, v72, v73, v22, @"@@", v51);
  }
}

@end