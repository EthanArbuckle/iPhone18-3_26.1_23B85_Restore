@interface TSCH3DShaderProgram
- (BOOL)isMetal;
- (BOOL)isSamplerVariable:(id)a3;
- (NSMutableArray)sortedLinks;
- (NSMutableDictionary)variableToVertexAttributeLocation;
- (NSString)fragment;
- (NSString)vertex;
- (TSCH3DShaderProgram)init;
- (TSCH3DShaderProgram)initWithVersion:(id)a3;
- (TSCH3DShaderType)uniformLinkageFor:(id)a3;
- (id)existingLinkageOfVariable:(id)a3;
- (id)interleavedLinkedVertexAttributeVariables;
- (id)linkageOfVariable:(id)a3;
- (id)linkedInputVariablesForType:(TSCH3DShaderType)a3 scope:(TSCH3DShaderVariableScopeType)a4;
- (id)linkedTextureVariables;
- (id)linkedUniformVariablesForType:(TSCH3DShaderType)a3 isTexture:(BOOL)a4;
- (id)p_boundArgumentDeclarationForLinkedVariable:(id)a3 variableType:(id)a4 variableName:(id)a5 bindingType:(id)a6 bufferIndex:(unint64_t)a7;
- (id)p_boundBufferArgumentDeclarationForLinkedVariable:(id)a3 variableType:(id)a4 variableName:(id)a5 bufferIndex:(unint64_t)a6;
- (id)p_boundSamplerArgumentDeclarationForLinkedVariable:(id)a3 bufferIndex:(unint64_t)a4;
- (id)p_boundTextureArgumentDeclarationForLinkedVariable:(id)a3 bufferIndex:(unint64_t)a4;
- (id)p_generateType:(TSCH3DShaderType)a3;
- (id)p_metalVertexInputLines;
- (id)uniformVariablesForType:(TSCH3DShaderType)a3;
- (id)usedAttributeNameForVariable:(id)a3;
- (id)usedNameForVariable:(id)a3 type:(TSCH3DShaderType)a4 scope:(TSCH3DShaderVariableScopeType)a5;
- (id)usedUniformNameForVariable:(id)a3;
- (int64_t)uniformBufferIndexForType:(TSCH3DShaderType)a3;
- (int64_t)vertexUniformBufferIndex;
- (pair<BOOL,)resultLinkageOfVariable:(id)a3;
- (unint64_t)p_countOfAttributeBindingsForType:(TSCH3DShaderType)a3;
- (unint64_t)p_metalVertexBufferCount;
- (unint64_t)processSection:(id)a3 accumulate:(id)a4 conclusions:(id)a5;
- (unint64_t)textureBindingsCount;
- (unint64_t)vertexAttributeLocationForVariable:(id)a3;
- (void)accumulateSection:(id)a3 intoArray:(id)a4;
- (void)addAttributeVariable:(id)a3;
- (void)addFunctionString:(id)a3 name:(id)a4;
- (void)addToSection:(id)a3 statement:(id)a4 type:(TSCH3DShaderType)a5;
- (void)addToSection:(id)a3 variable:(id)a4 space:(id)a5 type:(TSCH3DShaderType)a6 format:(id)a7 arguments:(char *)a8;
- (void)addUniformVariable:(id)a3;
- (void)assignVariable:(id)a3 statement:(id)a4 substitutes:(id)a5 type:(TSCH3DShaderType)a6 toSection:(int)a7;
- (void)declareType:(id)a3 name:(id)a4;
- (void)link;
- (void)p_addCompatibilityFunctions;
- (void)p_addToSection:(id)a3 variable:(id)a4 space:(id)a5 type:(TSCH3DShaderType)a6 format:(id)a7 substitutes:(id)a8;
- (void)p_generateFunctions;
- (void)p_generateGlobalsForType:(TSCH3DShaderType)a3;
- (void)p_generateMetalFragmentGlobals;
- (void)p_generateMetalFragmentInputs;
- (void)p_generateMetalFragmentTextureVariable;
- (void)p_generateMetalVertexAttributes;
- (void)p_generateMetalVertexGlobals;
- (void)p_generateMetalVertexInputs;
- (void)p_generatePreprocessorDefinitionsForType:(TSCH3DShaderType)a3;
- (void)p_generateSection:(id)a3 type:(TSCH3DShaderType)a4;
- (void)p_generateType:(TSCH3DShaderType)a3 globalType:(TSCH3DShaderVariableScopeType)a4 storageQualifier:(id)a5;
- (void)p_generateTypeDeclarations;
@end

@implementation TSCH3DShaderProgram

- (TSCH3DShaderProgram)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (TSCH3DShaderProgram)initWithVersion:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = TSCH3DShaderProgram;
  v6 = [(TSCH3DShaderProgram *)&v36 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    links = v6->_links;
    v6->_links = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    declarationSection = v6->_declarationSection;
    v6->_declarationSection = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    temporarySection = v6->_temporarySection;
    v6->_temporarySection = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    statementSection = v6->_statementSection;
    v6->_statementSection = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resolutionSection = v6->_resolutionSection;
    v6->_resolutionSection = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    outcomeSection = v6->_outcomeSection;
    v6->_outcomeSection = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    conclusionSection = v6->_conclusionSection;
    v6->_conclusionSection = v19;

    objc_storeStrong(v6->_sections, v6->_declarationSection);
    objc_storeStrong(&v6->_sections[1], v6->_temporarySection);
    objc_storeStrong(&v6->_sections[2], v6->_statementSection);
    objc_storeStrong(&v6->_sections[3], v6->_resolutionSection);
    objc_storeStrong(&v6->_sections[4], v6->_outcomeSection);
    objc_storeStrong(&v6->_sections[5], v6->_conclusionSection);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    functions = v6->_functions;
    v6->_functions = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    functionNames = v6->_functionNames;
    v6->_functionNames = v23;

    v25 = objc_alloc_init(TSCH3DOrderedDictionary);
    typeDeclarations = v6->_typeDeclarations;
    v6->_typeDeclarations = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB98]);
    variablesWithBackingResources = v6->_variablesWithBackingResources;
    v6->_variablesWithBackingResources = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB98]);
    interleavedAttributeVariables = v6->_interleavedAttributeVariables;
    v6->_interleavedAttributeVariables = v29;

    objc_storeStrong(&v6->_version, a3);
    objc_msgSend_p_addCompatibilityFunctions(v6, v31, v32, v33, v34);
  }

  return v6;
}

- (BOOL)isMetal
{
  version = self->_version;
  if (!version)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DShaderProgram isMetal]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 539, 0, "invalid nil value for '%{public}s'", "_version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    version = self->_version;
  }

  return objc_msgSend_isMetal(version, a2, v2, v3, v4);
}

- (id)existingLinkageOfVariable:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_links, a2, v3, v4, v5, a3);

  return v6;
}

- (unint64_t)textureBindingsCount
{
  v6 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, a2, v2, v3, v4, 1, 1);
  v11 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, v7, v8, v9, v10, 2, 1);
  v16 = objc_msgSend_count(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_count(v11, v17, v18, v19, v20);

  return v21 + v16;
}

- (unint64_t)p_countOfAttributeBindingsForType:(TSCH3DShaderType)a3
{
  v6 = objc_msgSend_linkedInputVariablesForType_scope_(self, a2, v3, v4, v5, a3._value, 8);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  return v11;
}

- (pair<BOOL,)resultLinkageOfVariable:(id)a3
{
  v5 = v3;
  v74 = a3;
  v11 = objc_msgSend_existingLinkageOfVariable_(self, v6, v7, v8, v9);
  v15 = v11;
  if (!v11)
  {
    v15 = objc_msgSend_linkageWithVariable_(TSCH3DShaderVariableLinkage, v10, v12, v13, v14, v74);
    if (self->_sortedLinks)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DShaderProgram resultLinkageOfVariable:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 580, 0, "adding link after sorting");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    }

    if (self->_variableToVertexAttributeLocation)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DShaderProgram resultLinkageOfVariable:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 581, 0, "adding link after creating vertex attribute location cache");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    }

    if (self->_linkedInputVariables)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DShaderProgram resultLinkageOfVariable:]");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 582, 0, "expected empty cache");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
    }

    sortedLinks = self->_sortedLinks;
    self->_sortedLinks = 0;

    variableToVertexAttributeLocation = self->_variableToVertexAttributeLocation;
    self->_variableToVertexAttributeLocation = 0;

    linkedInputVariables = self->_linkedInputVariables;
    self->_linkedInputVariables = 0;

    objc_msgSend_setObject_forKey_(self->_links, v68, v69, v70, v71, v15, v74);
  }

  *v5 = v11 != 0;
  *(v5 + 8) = v15;

  result.var1 = v73;
  result.var0 = v72;
  return result;
}

- (id)linkageOfVariable:(id)a3
{
  objc_msgSend_resultLinkageOfVariable_(self, a2, v3, v4, v5, a3);
  v6 = v8;

  return v6;
}

- (BOOL)isSamplerVariable:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_type(v3, v4, v5, v6, v7);
  if (objc_msgSend_isEqual_(v8, v9, v10, v11, v12, @"sampler2D"))
  {
    isEqual = 1;
  }

  else
  {
    v18 = objc_msgSend_type(v3, v13, v14, v15, v16);
    isEqual = objc_msgSend_isEqual_(v18, v19, v20, v21, v22, @"sampler3D");
  }

  return isEqual;
}

- (TSCH3DShaderType)uniformLinkageFor:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isSamplerVariable_(self, v5, v6, v7, v8, v4))
  {
    if (objc_msgSend_shaderType(v4, v9, v10, v11, v12) == 1)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DShaderProgram uniformLinkageFor:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 604, 0, "cannot have vertex linkage for sampler %@", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v32 = 2;
  }

  else
  {
    v32 = objc_msgSend_initialLinkType(v4, v9, v10, v11, v12);
  }

  return v32;
}

- (void)addUniformVariable:(id)a3
{
  v4 = a3;
  objc_msgSend_resultLinkageOfVariable_(self, v5, v6, v7, v8, v4);
  v9 = v56;
  v14 = v9;
  if ((v55 & 1) == 0)
  {
    objc_msgSend_setShader_scope_(v9, v10, v11, v12, v13, 1, 4);
    objc_msgSend_setShader_scope_(v14, v15, v16, v17, v18, 2, 4);
    v23 = objc_msgSend_uniformLinkageFor_(self, v19, v20, v21, v22, v4);
    objc_msgSend_setLinkage_(v14, v24, v25, v26, v27, v23);
    objc_msgSend_addDeclaredShader_scope_(v14, v28, v29, v30, v31, 1, 4);
    objc_msgSend_addDeclaredShader_scope_(v14, v32, v33, v34, v35, 2, 4);
  }

  if ((objc_msgSend_isUniform(v14, v10, v11, v12, v13) & 1) == 0)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCH3DShaderProgram addUniformVariable:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 624, 0, "invalid linkage for uniform %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }
}

- (void)addAttributeVariable:(id)a3
{
  v40 = objc_msgSend_linkageOfVariable_(self, a2, v3, v4, v5, a3);
  if (objc_msgSend_isUniform(v40, v8, v9, v10, v11))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DShaderProgram addAttributeVariable:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    v23 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v17, v22, 633, 0, "[%@ %@] invalid linkage %@", self, v23, v40);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_addShader_scope_(v40, v12, v13, v14, v15, 1, 8);
  objc_msgSend_addLinkage_(v40, v32, v33, v34, v35, 1);
  objc_msgSend_addDeclaredShader_scope_(v40, v36, v37, v38, v39, 1, 8);
}

- (void)p_addToSection:(id)a3 variable:(id)a4 space:(id)a5 type:(TSCH3DShaderType)a6 format:(id)a7 substitutes:(id)a8
{
  v64 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v19 = a8;
  if (v15)
  {
    v63 = v16;
    v23 = objc_msgSend_linkageOfVariable_(self, v18, v20, v21, v22, v15);
    if (objc_msgSend_isUniform(v23, v24, v25, v26, v27))
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DShaderProgram p_addToSection:variable:space:type:format:substitutes:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      v39 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v40, v41, v42, v43, v33, v38, 650, 0, "[%@ %@] invalid linkage %@", self, v39, v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    v48 = objc_msgSend_assignmentWithAssignee_statement_dependees_program_(TSCH3DShaderAssignment, v28, v29, v30, v31, v23, v17, v19, self);

    v16 = v63;
  }

  else
  {
    v48 = objc_msgSend_statementWithFormat_dependees_program_(TSCH3DShaderStatement, v18, v20, v21, v22, v17, v19, self);
  }

  v54 = objc_msgSend_array(MEMORY[0x277CBEA60], v49, v50, v51, v52);
  if (LODWORD(a6._value) && LODWORD(a6._value) != 3)
  {
    v58 = objc_msgSend_forceLinkageForType_(v48, v53, v55, v56, v57, a6._value);

    v54 = v58;
  }

  objc_msgSend_addObject_(v64, v53, v55, v56, v57, v48);
  objc_msgSend_addObjectsFromArray_(self->_conclusionSection, v59, v60, v61, v62, v54);
}

- (void)addToSection:(id)a3 variable:(id)a4 space:(id)a5 type:(TSCH3DShaderType)a6 format:(id)a7 arguments:(char *)a8
{
  v64 = a3;
  v63 = a4;
  v14 = a5;
  v65 = a8;
  v15 = a7;
  v62 = v14;
  v61 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v16, v17, v18, v19, @"@@", @"@");
  v24 = objc_msgSend_length(v15, v20, v21, v22, v23);
  v29 = objc_msgSend_length(v61, v25, v26, v27, v28);
  v30 = v24 - v29;
  v36 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v31, v32, v33, v34, v24 - v29);
  if (v24 != v29)
  {
    do
    {
      v40 = v65;
      v65 += 8;
      v42 = *v40;
      if (!v42 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v43, v44, v45, "[TSCH3DShaderProgram addToSection:variable:space:type:format:arguments:]");
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v54, v55, v56, v47, v52, 677, 0, "invalid statement argument %@, format %@", v42, v15);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
      }

      objc_msgSend_tsu_addNonNilObject_(v36, v41, v43, v44, v45, v42);

      --v30;
    }

    while (v30);
  }

  objc_msgSend_p_addToSection_variable_space_type_format_substitutes_(self, v35, v37, v38, v39, v64, v63, v62, a6._value, v15, v36);
}

- (void)addToSection:(id)a3 statement:(id)a4 type:(TSCH3DShaderType)a5
{
  v16 = a3;
  v11 = objc_msgSend_statementWithString_linkageType_(TSCH3DShaderRawStatement, v7, v8, v9, v10, a4, a5._value);
  objc_msgSend_addObject_(v16, v12, v13, v14, v15, v11);
}

- (void)assignVariable:(id)a3 statement:(id)a4 substitutes:(id)a5 type:(TSCH3DShaderType)a6 toSection:(int)a7
{
  LODWORD(v7) = a7;
  v33 = a3;
  v12 = a4;
  v14 = a5;
  if (v7 > 5)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "[TSCH3DShaderProgram assignVariable:statement:substitutes:type:toSection:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    v7 = v7;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 695, 0, "section out of range %ld", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  else
  {
    v7 = v7;
  }

  objc_msgSend_p_addToSection_variable_space_type_format_substitutes_(self, v13, v15, v16, v17, self->_sections[v7], v33, 0, a6._value, v12, v14);
}

- (void)addFunctionString:(id)a3 name:(id)a4
{
  v19 = a3;
  v6 = a4;
  if ((objc_msgSend_containsObject_(self->_functionNames, v7, v8, v9, v10, v6) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_functions, v11, v12, v13, v14, v19);
    objc_msgSend_addObject_(self->_functionNames, v15, v16, v17, v18, v6);
  }
}

- (void)declareType:(id)a3 name:(id)a4
{
  v16 = a3;
  v6 = a4;
  v11 = objc_msgSend_objectForKey_(self->_typeDeclarations, v7, v8, v9, v10, v6);

  if (!v11)
  {
    objc_msgSend_setObject_forKey_(self->_typeDeclarations, v12, v13, v14, v15, v16, v6);
  }
}

- (void)accumulateSection:(id)a3 intoArray:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v20, v24, 16);
  if (v13)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_isLinked(v19, v12, v14, v15, v16, v20))
        {
          objc_msgSend_addObject_(v6, v12, v14, v15, v16, v19);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v20, v24, 16);
    }

    while (v13);
  }
}

- (unint64_t)processSection:(id)a3 accumulate:(id)a4 conclusions:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v54 = a4;
  v52 = a5;
  v55 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = v8;
  v18 = 0;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, v16, v17, &v56, v60, 16);
  if (v20)
  {
    v24 = *v57;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v57 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v26 = *(*(&v56 + 1) + 8 * i);
        if ((objc_msgSend_isLinked(v26, v19, v21, v22, v23) & 1) == 0)
        {
          v32 = objc_msgSend_resolve(v26, v27, v28, v29, v30);
          if (v32)
          {
            if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
            {
              v36 = objc_opt_class();
              v37 = NSStringFromSelector(a2);
              NSLog(&cfstr_PAddingVarying.isa, v36, self, v37, v32);
            }

            objc_msgSend_addObjectsFromArray_(v55, v31, v33, v34, v35, v32);
          }

          if (objc_msgSend_isLinked(v26, v38, v39, v40, v41))
          {
            objc_msgSend_addObject_(v54, v27, v28, v29, v30, v26);
          }
        }

        v18 += objc_msgSend_isLinked(v26, v27, v28, v29, v30);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, v21, v22, v23, &v56, v60, 16);
    }

    while (v20);
  }

  v46 = objc_msgSend_count(v13, v42, v43, v44, v45);
  objc_msgSend_addObjectsFromArray_(v52, v47, v48, v49, v50, v55);

  return v46 - v18;
}

- (void)link
{
  if (!self->_isLinked)
  {
    if (((((((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1) && (v4 = objc_opt_class(), NSStringFromSelector(a2), v5 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_PLinks.isa, v4, self, v5, self->_links), v5, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1) && (v6 = objc_opt_class(), NSStringFromSelector(a2), v7 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_P_0.isa, v6, self, v7, @"declarations", self->_declarationSection), v7, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1) && (v8 = objc_opt_class(), NSStringFromSelector(a2), v9 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_P_0.isa, v8, self, v9, @"temporaries", self->_temporarySection), v9, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1) && (v10 = objc_opt_class(), NSStringFromSelector(a2), v11 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_P_0.isa, v10, self, v11, @"statement", self->_statementSection), v11, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1) && (v12 = objc_opt_class(), NSStringFromSelector(a2), v13 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_P_0.isa, v12, self, v13, @"resolutions", self->_resolutionSection), v13, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1) && (v14 = objc_opt_class(), NSStringFromSelector(a2), v15 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_P_0.isa, v14, self, v15, @"outcomes", self->_outcomeSection), v15, (byte_280A46430) || byte_280A44400 == 1 && byte_280A46431 == 1)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(a2);
      NSLog(&cfstr_P_0.isa, v16, self, v17, @"conclusions", self->_conclusionSection);
    }

    v18 = self->_declarationSection;
    p_temporarySection = &self->_temporarySection;
    v19 = self->_temporarySection;
    p_statementSection = &self->_statementSection;
    v20 = self->_statementSection;
    p_resolutionSection = &self->_resolutionSection;
    v21 = self->_resolutionSection;
    *&v22 = v20;
    *(&v22 + 1) = v21;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v97[0] = v23;
    v97[1] = v22;
    p_outcomeSection = &self->_outcomeSection;
    v98 = self->_outcomeSection;
    p_conclusionSection = &self->_conclusionSection;
    v99 = self->_conclusionSection;
    v96 = 0u;
    memset(v95, 0, sizeof(v95));
    v25 = self;
    for (i = 0; i != 48; i += 8)
    {
      v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v26, v27, v28);
      v31 = *(v95 + i);
      *(v95 + i) = v30;

      objc_msgSend_accumulateSection_intoArray_(v25, v32, v33, v34, v35, *(v97 + i), v30);
    }

    aSelector = a2;
    p_declarationSection = &self->_declarationSection;
    v86 = self;

    v37 = *(&v96 + 1);
    v41 = 0;
    v42 = 0;
    do
    {
      v42 += objc_msgSend_count(*(v97 + v41), v36, v38, v39, v40);
      v41 += 8;
    }

    while (v41 != 48);
    v43 = 0x277CCA000uLL;
    do
    {
      for (j = 0; j != 6; ++j)
      {
        v94[j] = objc_msgSend_processSection_accumulate_conclusions_(v25, v36, v38, v39, v40, *(v97 + j * 8), *(v95 + j * 8), v37);
      }

      v45 = 0;
      for (k = 0; k != 6; ++k)
      {
        v45 += LODWORD(v94[k]);
      }

      if (v42 <= v45)
      {
        v93 = v42;
        v47 = objc_msgSend_string(*(v43 + 2920), v36, v38, v39, v40);
        v53 = objc_msgSend_string(*(v43 + 2920), v48, v49, v50, v51);
        for (m = 0; m != 6; ++m)
        {
          objc_msgSend_appendFormat_(v47, v52, v54, v55, v56, @"[%ld] %ld remains\n", m, v94[m]);
          objc_msgSend_appendFormat_(v53, v58, v59, v60, v61, @"[%ld] = %@\n", m, *(v97 + m));
        }

        v62 = MEMORY[0x277D81150];
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v54, v55, v56, "void (anonymous namespace)::AssertResolved(BOOL, const Sections &, const SectionsSums &)");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v68, v69, v70, v71, v92, v67, 785, 0, "unable to resolve remaining\n%@\n%@", v47, v53);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
        v43 = 0x277CCA000;
        v42 = v93;
      }

      if (v45)
      {
        v76 = v42 > v45;
      }

      else
      {
        v76 = 0;
      }

      v42 = v45;
    }

    while (v76);
    if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
    {
      v77 = objc_opt_class();
      v78 = NSStringFromSelector(aSelector);
      NSLog(&cfstr_PLinks.isa, v77, v25, v78, v25->_links);
    }

    vertex = v25->_vertex;
    v25->_vertex = 0;

    fragment = v25->_fragment;
    v25->_fragment = 0;

    v81 = 0;
    v94[0] = p_declarationSection;
    v94[1] = p_temporarySection;
    v94[2] = p_statementSection;
    v94[3] = p_resolutionSection;
    v94[4] = p_outcomeSection;
    v94[5] = p_conclusionSection;
    do
    {
      objc_storeStrong(v94[v81], *(v95 + v81 * 8));
      ++v81;
    }

    while (v81 != 6);
    v86->_isLinked = 1;

    for (n = 40; n != -8; n -= 8)
    {
    }

    for (ii = 40; ii != -8; ii -= 8)
    {
    }
  }
}

- (void)p_generateType:(TSCH3DShaderType)a3 globalType:(TSCH3DShaderVariableScopeType)a4 storageQualifier:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v104 = a5;
  if (!self->_accumulator)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DShaderProgram p_generateType:globalType:storageQualifier:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 846, 0, "invalid nil value for '%{public}s'", "_accumulator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (LODWORD(a3._value) != 2 || LODWORD(a4._value) != 8)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = self->_links;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v27, v28, v29, &v108, v112, 16);
    if (v31)
    {
      if (a3._value)
      {
        value = a3._value;
      }

      else
      {
        value = -1;
      }

      v107 = value;
      v36 = *v109;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v109 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v108 + 1) + 8 * i);
          v40 = objc_msgSend_existingLinkageOfVariable_(self, v30, v32, v33, v34, v38);
          if (!v40)
          {
            v44 = MEMORY[0x277D81150];
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v41, v42, v43, "[TSCH3DShaderProgram p_generateType:globalType:storageQualifier:]");
            v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 851, 0, "invalid key %@", v38);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
          }

          if ((objc_msgSend_linked(v40, v39, v41, v42, v43) & v107) == a3._value)
          {
            v64 = objc_msgSend_globalNameForShader_scope_(v40, v59, v60, v61, v62, a3._value, a4._value);
            if (v64)
            {
              v68 = objc_msgSend_variable(v40, v63, v65, v66, v67);
              v69 = v68 == v38;

              if (!v69)
              {
                v74 = MEMORY[0x277D81150];
                v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCH3DShaderProgram p_generateType:globalType:storageQualifier:]");
                v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 857, 0, "variable mismatch between linkage %@ _links %@", v40, self->_links);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
              }

              accumulator = self->_accumulator;
              isMetal = objc_msgSend_isMetal(self, v70, v71, v72, v73);
              v95 = objc_msgSend_variableQualifiersWithStorageQualifier_isMetal_(v40, v91, v92, v93, v94, v104, isMetal);
              objc_msgSend_appendFormat_(accumulator, v96, v97, v98, v99, @"%@ %@;\n", v95, v64);
            }
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, v32, v33, v34, &v108, v112, 16);
      }

      while (v31);
    }

    objc_msgSend_appendString_(self->_accumulator, v100, v101, v102, v103, @"\n");
  }
}

- (id)interleavedLinkedVertexAttributeVariables
{
  v6 = objc_msgSend_linkedVertexAttributeVariables(self, a2, v2, v3, v4);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2761A7300;
  v17[3] = &unk_27A6B66F0;
  v17[4] = self;
  v10 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v6, v7, COERCE_DOUBLE(3221225472), v8, v9, v17);

  v15 = objc_msgSend_copy(v10, v11, v12, v13, v14);

  return v15;
}

- (void)p_generateMetalVertexGlobals
{
  v57 = objc_msgSend_interleavedLinkedVertexAttributeVariables(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v57, v6, v7, v8, v9))
  {
    objc_msgSend_appendString_(self->_accumulator, v10, v11, v12, v13, @"\n");
    objc_msgSend_appendString_(self->_accumulator, v14, v15, v16, v17, @"typedef struct {\n");
    v23 = objc_msgSend_count(v57, v18, v19, v20, v21);
    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        v28 = objc_msgSend_objectAtIndexedSubscript_(v57, v22, v24, v25, v26, i);
        v33 = objc_msgSend_variable(v28, v29, v30, v31, v32);
        v38 = objc_msgSend_commonShaderType(v33, v34, v35, v36, v37);

        v43 = objc_msgSend_name(v28, v39, v40, v41, v42);
        v49 = objc_msgSend_p_boundArgumentDeclarationForLinkedVariable_variableType_variableName_bindingType_bufferIndex_(self, v44, v45, v46, v47, v28, v38, v43, @"attribute", i);
        if (v49)
        {
          objc_msgSend_appendFormat_(self->_accumulator, v48, v50, v51, v52, @"%@;\n", v49);
        }
      }
    }

    objc_msgSend_appendString_(self->_accumulator, v22, v24, v25, v26, @"} InterleavedAttributes;\n");
    objc_msgSend_appendString_(self->_accumulator, v53, v54, v55, v56, @"\n");
  }
}

- (void)p_generateMetalFragmentGlobals
{
  objc_msgSend_appendString_(self->_accumulator, a2, v2, v3, v4, @"\n");
  objc_msgSend_appendString_(self->_accumulator, v6, v7, v8, v9, @"typedef struct {\n  texture2d<float> tex;\n  sampler sam;\n} TextureData;\n");
  objc_msgSend_appendString_(self->_accumulator, v10, v11, v12, v13, @"\n");
  objc_msgSend_appendString_(self->_accumulator, v14, v15, v16, v17, @"float4 texture2D(TextureData t, float2 texcoord)\n{\n  return t.tex.sample(t.sam, tsch_vec2(texcoord.x, texcoord.y));\n}\n");
  objc_msgSend_appendString_(self->_accumulator, v18, v19, v20, v21, @"float4 fboTexture2D(TextureData t, float2 texcoord)\n{\n  return texture2D(t, tsch_vec2(texcoord.x, 1 - texcoord.y));\n}\n");
  objc_msgSend_appendString_(self->_accumulator, v22, v23, v24, v25, @"tsch_mediump_vec4 texture2DProj(TextureData t, tsch_vec4 texcoord)\n{\n  tsch_mediump_vec4 ndcTexcoord = texcoord / texcoord.w;\n  return texture2D(t, ndcTexcoord.xy);\n}\n");
  accumulator = self->_accumulator;

  objc_msgSend_appendString_(accumulator, v26, v27, v28, v29, @"tsch_mediump_vec4 fboTexture2DProj(TextureData t, tsch_vec4 texcoord)\n{\n  tsch_mediump_vec4 ndcTexcoord = texcoord / texcoord.w;\n  return fboTexture2D(t, ndcTexcoord.xy);\n}\n");
}

- (void)p_generateGlobalsForType:(TSCH3DShaderType)a3
{
  value = a3._value;
  v7 = self;
  v244 = *MEMORY[0x277D85DE8];
  v241 = a3._value;
  if (!self->_version)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderProgram p_generateGlobalsForType:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 933, 0, "invalid nil value for '%{public}s'", "_version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    value = a3._value;
    v7 = self;
  }

  if (objc_msgSend_isMetal(v7, a2, v3, v4, v5))
  {
    objc_msgSend_appendString_(v7->_accumulator, v23, v24, v25, v26, @"typedef struct {\n");
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    obj = v7->_links;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, v28, v29, v30, &v237, v243, 16);
    if (v32)
    {
      if (a3._value)
      {
        v36 = a3._value;
      }

      else
      {
        v36 = -1;
      }

      v37 = *v238;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v238 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v237 + 1) + 8 * i);
          v41 = objc_msgSend_existingLinkageOfVariable_(self, v31, v33, v34, v35, v39);
          if (!v41)
          {
            v45 = MEMORY[0x277D81150];
            v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v42, v43, v44, "[TSCH3DShaderProgram p_generateGlobalsForType:]");
            v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 941, 0, "invalid key %@", v39);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
          }

          if ((v36 & objc_msgSend_linked(v41, v40, v42, v43, v44)) == a3._value)
          {
            v65 = objc_msgSend_globalNameForShader_scope_(v41, v60, v61, v62, v63, a3._value, 16);
            if (v65)
            {
              v69 = objc_msgSend_variable(v41, v64, v66, v67, v68);
              v70 = v69 == v39;

              if (!v70)
              {
                v75 = MEMORY[0x277D81150];
                v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "[TSCH3DShaderProgram p_generateGlobalsForType:]");
                v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 945, 0, "variable mismatch between linkage %@ _links %@", v41, self->_links);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
              }

              v91 = objc_msgSend_commonShaderType(v39, v71, v72, v73, v74);
              if (!v91)
              {
                v95 = MEMORY[0x277D81150];
                v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v92, v93, v94, "[TSCH3DShaderProgram p_generateGlobalsForType:]");
                v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v98, v99, v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v102, v103, v104, v105, v96, v101, 947, 0, "invalid nil value for '%{public}s'", "commonShaderType");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107, v108, v109);
              }

              objc_msgSend_appendFormat_(self->_accumulator, v90, v92, v93, v94, @"%@ %@;\n", v91, v65);
            }
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v33, v34, v35, &v237, v243, 16);
      }

      while (v32);
    }

    v110 = qword_280A46750;
    v115 = objc_msgSend_existingLinkageOfVariable_(self, v111, v112, v113, v114, v110);
    v116 = v115 == 0;

    if (!v116)
    {
      v121 = objc_msgSend_commonShaderType(v110, v117, v118, v119, v120);
      v126 = objc_msgSend_name(v110, v122, v123, v124, v125);
      objc_msgSend_appendFormat_(self->_accumulator, v127, v128, v129, v130, @"%@ %@ %@;\n", v121, v126, @"[[position]]");
    }

    objc_msgSend_appendString_(self->_accumulator, v117, v118, v119, v120, @"} RasterizerData;\n");
    v135 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, v131, v132, v133, v134, a3._value, 0);
    if (objc_msgSend_count(v135, v136, v137, v138, v139))
    {
      objc_msgSend_appendString_(self->_accumulator, v140, v141, v142, v143, @"\n");
      objc_msgSend_appendString_(self->_accumulator, v144, v145, v146, v147, @"typedef struct {\n");
      v235 = 0u;
      v236 = 0u;
      v233 = 0u;
      v234 = 0u;
      v148 = v135;
      v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v149, v150, v151, v152, &v233, v242, 16);
      if (v154)
      {
        v158 = *v234;
        do
        {
          for (j = 0; j != v154; ++j)
          {
            if (*v234 != v158)
            {
              objc_enumerationMutation(v148);
            }

            v160 = *(*(&v233 + 1) + 8 * j);
            v161 = objc_msgSend_variable(v160, v153, v155, v156, v157);
            v166 = objc_msgSend_commonShaderType(v161, v162, v163, v164, v165);

            v171 = objc_msgSend_name(v160, v167, v168, v169, v170);
            objc_msgSend_appendFormat_(self->_accumulator, v172, v173, v174, v175, @"%@ %@;\n", v166, v171);
          }

          v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v148, v153, v155, v156, v157, &v233, v242, 16);
        }

        while (v154);
      }

      accumulator = self->_accumulator;
      if (LODWORD(a3._value) > 3)
      {
        objc_msgSend_appendFormat_(accumulator, v176, v177, v178, v179, @"} %@Uniforms;\n", 0);
      }

      else
      {
        objc_msgSend_appendFormat_(accumulator, v176, v177, v178, v179, @"} %@Uniforms;\n", off_27A6B6750[a3._value & 3]);
      }
    }

    if (LODWORD(a3._value) == 2)
    {
      objc_msgSend_p_generateMetalFragmentGlobals(self, v140, v141, v142, v143);
    }

    else if (LODWORD(a3._value) == 1)
    {
      objc_msgSend_p_generateMetalVertexGlobals(self, v140, v141, v142, v143);
    }

    else
    {
      v204 = MEMORY[0x277D81150];
      v205 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, "[TSCH3DShaderProgram p_generateGlobalsForType:]");
      v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v206, v207, v208, v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      v215 = sub_27619B234(&v241, v211, v212, v213, v214);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v204, v216, v217, v218, v219, v205, v210, 982, 0, "Invalid shader type %@", v215);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
    }

    v203 = v241;
  }

  else
  {
    objc_msgSend_p_generateType_globalType_storageQualifier_(v7, v23, v24, v25, v26, value, 4, @"uniform");
    v185 = objc_msgSend_vertexAttributeQualifierForShaderType_(v7->_version, v181, v182, v183, v184, value);
    objc_msgSend_p_generateType_globalType_storageQualifier_(self, v186, v187, v188, v189, a3._value, 8, v185);

    v194 = objc_msgSend_vertexVaryingQualifierForShaderType_(self->_version, v190, v191, v192, v193, a3._value);
    objc_msgSend_p_generateType_globalType_storageQualifier_(self, v195, v196, v197, v198, a3._value, 16, v194);

    v203 = a3._value;
  }

  v224 = self->_accumulator;
  v225 = objc_msgSend_additionalGlobalsForShaderType_(self->_version, v199, v200, v201, v202, v203);
  objc_msgSend_appendFormat_(v224, v226, v227, v228, v229, @"%@\n", v225);
}

- (void)p_generateTypeDeclarations
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_typeDeclarations;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v20, v24, 16);
  if (v9)
  {
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = objc_msgSend_objectForKey_(self->_typeDeclarations, v8, v10, v11, v12, *(*(&v20 + 1) + 8 * v14));
        objc_msgSend_appendFormat_(self->_accumulator, v16, v17, v18, v19, @"\n%@\n", v15);

        ++v14;
      }

      while (v9 != v14);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v20, v24, 16);
    }

    while (v9);
  }
}

- (void)p_generateFunctions
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_functions;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v15, v19, 16);
  if (v9)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendFormat_(self->_accumulator, v8, v10, v11, v12, @"\n%@\n", *(*(&v15 + 1) + 8 * v14++));
      }

      while (v9 != v14);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v15, v19, 16);
    }

    while (v9);
  }
}

- (void)p_generateSection:(id)a3 type:(TSCH3DShaderType)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v48 = a3;
  if (!self->_accumulator)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DShaderProgram p_generateSection:type:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1012, 0, "invalid nil value for '%{public}s'", "_accumulator", v48);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = v48;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v49, v53, 16);
  if (v31)
  {
    v35 = *v50;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v25);
        }

        v37 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_linkageType(v37, v30, v32, v33, v34) == LODWORD(a4._value))
        {
          accumulator = self->_accumulator;
          v39 = objc_msgSend_string(v37, v30, v32, v33, v34);
          objc_msgSend_appendFormat_(accumulator, v40, v41, v42, v43, @"%@\n", v39);

          objc_msgSend_setGeneratedForType_(v37, v44, v45, v46, v47, a4._value);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v30, v32, v33, v34, &v49, v53, 16);
    }

    while (v31);
  }
}

- (void)p_addCompatibilityFunctions
{
  version = self->_version;
  if (!version)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DShaderProgram p_addCompatibilityFunctions]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 1022, 0, "invalid nil value for '%{public}s'", "_version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    version = self->_version;
  }

  MEMORY[0x2821F9670](version, sel_addCompatibilityFunctionsForShaderProgram_, v2, v3, v4);
}

- (NSMutableArray)sortedLinks
{
  v31[1] = *MEMORY[0x277D85DE8];
  sortedLinks = self->_sortedLinks;
  if (!sortedLinks)
  {
    v7 = objc_msgSend_allKeys(self->_links, a2, v2, v3, v4);
    v12 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v8, v9, v10, v11, @"name", 1);
    v31[0] = v12;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v31, 1);
    v22 = objc_msgSend_sortedArrayUsingDescriptors_(v7, v18, v19, v20, v21, v17);
    v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
    v29 = self->_sortedLinks;
    p_sortedLinks = &self->_sortedLinks;
    *p_sortedLinks = v27;

    sortedLinks = *p_sortedLinks;
  }

  return sortedLinks;
}

- (NSMutableDictionary)variableToVertexAttributeLocation
{
  variableToVertexAttributeLocation = self->_variableToVertexAttributeLocation;
  if (!variableToVertexAttributeLocation)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_variableToVertexAttributeLocation;
    self->_variableToVertexAttributeLocation = v4;

    for (i = 0; ; ++i)
    {
      v11 = objc_msgSend_linkedVertexAttributeVariables(self, v6, v7, v8, v9);
      v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

      if (i >= v16)
      {
        break;
      }

      v21 = objc_msgSend_linkedVertexAttributeVariables(self, v17, v18, v19, v20);
      v26 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v23, v24, v25, i);
      v31 = objc_msgSend_variable(v26, v27, v28, v29, v30);

      v36 = objc_msgSend_objectForKeyedSubscript_(self->_variableToVertexAttributeLocation, v32, v33, v34, v35, v31);

      if (!v36)
      {
        v41 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v37, v38, v39, v40, i);
        objc_msgSend_setObject_forKeyedSubscript_(self->_variableToVertexAttributeLocation, v42, v43, v44, v45, v41, v31);
      }
    }

    variableToVertexAttributeLocation = self->_variableToVertexAttributeLocation;
  }

  return variableToVertexAttributeLocation;
}

- (id)linkedInputVariablesForType:(TSCH3DShaderType)a3 scope:(TSCH3DShaderVariableScopeType)a4
{
  v143 = *MEMORY[0x277D85DE8];
  if (!self->_linkedInputVariables)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    linkedInputVariables = self->_linkedInputVariables;
    self->_linkedInputVariables = v8;
  }

  v133 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, v4, v5, v6, a3._value);
  v132 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v10, v11, v12, v13, a4._value);
  v18 = objc_msgSend_objectForKeyedSubscript_(self->_linkedInputVariables, v14, v15, v16, v17, v133);
  v23 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v20, v21, v22, v132);

  v28 = self->_linkedInputVariables;
  if (v23)
  {
    v29 = objc_msgSend_objectForKeyedSubscript_(v28, v24, v25, v26, v27, v133);
    v34 = objc_msgSend_objectForKeyedSubscript_(v29, v30, v31, v32, v33, v132);
  }

  else
  {
    v35 = objc_msgSend_objectForKeyedSubscript_(v28, v24, v25, v26, v27, v133);

    if (!v35)
    {
      v40 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v36, v37, v38, v39);
      objc_msgSend_setObject_forKeyedSubscript_(self->_linkedInputVariables, v41, v42, v43, v44, v40, v133);
    }

    v134 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37, v38, v39);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v48 = objc_msgSend_sortedLinks(self, v45, 0.0, v46, v47);
    obj = v48;
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, v50, v51, v52, &v138, v142, 16);
    if (v54)
    {
      if (a3._value)
      {
        value = a3._value;
      }

      else
      {
        value = -1;
      }

      v59 = *v139;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v139 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v138 + 1) + 8 * i);
          v63 = objc_msgSend_existingLinkageOfVariable_(self, v53, v55, v56, v57, v61);
          if (!v63)
          {
            v67 = MEMORY[0x277D81150];
            v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v64, v65, v66, "[TSCH3DShaderProgram linkedInputVariablesForType:scope:]");
            v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 1065, 0, "invalid key %@", v61);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
          }

          if ((objc_msgSend_linked(v63, v62, v64, v65, v66) & value) == a3._value)
          {
            v87 = objc_msgSend_globalNameForShader_scope_(v63, v82, v83, v84, v85, a3._value, a4._value);
            if (v87)
            {
              v91 = objc_msgSend_linkedVariable(TSCH3DShaderLinkedVariable, v86, v88, v89, v90);
              objc_msgSend_setName_(v91, v92, v93, v94, v95, v87);
              objc_msgSend_setVariable_(v91, v96, v97, v98, v99, v61);
              objc_msgSend_setScope_(v91, v100, v101, v102, v103, a4._value);
              objc_msgSend_addObject_(v134, v104, v105, v106, v107, v91);
            }
          }
        }

        v48 = obj;
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, v55, v56, v57, &v138, v142, 16);
      }

      while (v54);
    }

    v112 = objc_msgSend_copy(v134, v108, v109, v110, v111);
    v117 = objc_msgSend_objectForKeyedSubscript_(self->_linkedInputVariables, v113, v114, v115, v116, v133);
    objc_msgSend_setObject_forKeyedSubscript_(v117, v118, v119, v120, v121, v112, v132);

    v126 = objc_msgSend_objectForKeyedSubscript_(self->_linkedInputVariables, v122, v123, v124, v125, v133);
    v34 = objc_msgSend_objectForKeyedSubscript_(v126, v127, v128, v129, v130, v132);
  }

  return v34;
}

- (id)linkedUniformVariablesForType:(TSCH3DShaderType)a3 isTexture:(BOOL)a4
{
  v8 = objc_msgSend_linkedInputVariablesForType_scope_(self, a2, v4, v5, v6, a3._value, 4);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2761A8C34;
  v14[3] = &unk_27A6B6710;
  v15 = a4;
  v12 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v8, v9, COERCE_DOUBLE(3221225472), v10, v11, v14);

  return v12;
}

- (id)linkedTextureVariables
{
  v6 = objc_msgSend_linkedInputVariablesForType_scope_(self, a2, v2, v3, v4, 2, 4);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2761A8DB0;
  v17[3] = &unk_27A6B66F0;
  v17[4] = self;
  v10 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v6, v7, COERCE_DOUBLE(3221225472), v8, v9, v17);
  v15 = objc_msgSend_copy(v10, v11, v12, v13, v14);

  return v15;
}

- (void)p_generatePreprocessorDefinitionsForType:(TSCH3DShaderType)a3
{
  version = self->_version;
  if (!version)
  {
    v8 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderProgram p_generatePreprocessorDefinitionsForType:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v15, v16, v17, v27, v13, 1110, 0, "invalid nil value for '%{public}s'", "_version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    version = self->_version;
  }

  accumulator = self->_accumulator;
  v28 = objc_msgSend_preprocessorDefinitions(version, a2, v3, v4, v5, a3._value);
  objc_msgSend_appendFormat_(accumulator, v23, v24, v25, v26, @"%@\n", v28);
}

- (id)p_metalVertexInputLines
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_interleavedLinkedVertexAttributeVariables(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v11, v12, v13, v14, v15);

  if (v16)
  {
    objc_msgSend_addObject_(v6, v17, v18, v19, v20, @"InterleavedAttributes v_in [[stage_in]]");
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v21 = objc_msgSend_linkedVertexAttributeVariables(self, v17, 0.0, v19, v20);
  v26 = 0;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, &v75, v79, 16);
  if (v28)
  {
    v32 = *v76;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v76 != v32)
        {
          objc_enumerationMutation(v21);
        }

        v34 = *(*(&v75 + 1) + 8 * i);
        v35 = objc_msgSend_variable(v34, v27, v29, v30, v31);
        v40 = objc_msgSend_commonShaderType(v35, v36, v37, v38, v39);

        v45 = objc_msgSend_inputVariableName(v34, v41, v42, v43, v44);
        v51 = objc_msgSend_p_boundBufferArgumentDeclarationForLinkedVariable_variableType_variableName_bufferIndex_(self, v46, v47, v48, v49, v34, v40, v45, v26);
        if (v51)
        {
          objc_msgSend_addObject_(v6, v50, v52, v53, v54, v51);
          ++v26;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v27, v29, v30, v31, &v75, v79, 16);
    }

    while (v28);
  }

  v59 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, v55, v56, v57, v58, 1, 0);
  if (objc_msgSend_count(v59, v60, v61, v62, v63))
  {
    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v64, v65, v66, v67, @"constant VertexUniforms *uniforms [[buffer(%lu)]]", v26);
    objc_msgSend_addObject_(v6, v69, v70, v71, v72, v68);
  }

  v73 = objc_msgSend_copy(v6, v64, v65, v66, v67);

  return v73;
}

- (unint64_t)p_metalVertexBufferCount
{
  v5 = objc_msgSend_p_metalVertexInputLines(self, a2, v2, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (int64_t)vertexUniformBufferIndex
{
  v6 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, a2, v2, v3, v4, 1, 0);
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_linkedVertexAttributeVariables(self, v11, v12, v13, v14);
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v20;
}

- (void)p_generateMetalVertexInputs
{
  v20 = objc_msgSend_p_metalVertexInputLines(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v20, v6, v7, v8, v9))
  {
    accumulator = self->_accumulator;
    v15 = objc_msgSend_componentsJoinedByString_(v20, v10, v11, v12, v13, @",\n");
    objc_msgSend_appendFormat_(accumulator, v16, v17, v18, v19, @",\n%@", v15);
  }
}

- (void)p_generateMetalFragmentInputs
{
  v80 = *MEMORY[0x277D85DE8];
  v73 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v9 = objc_msgSend_linkedTextureVariables(self, v6, 0.0, v7, v8);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v74, v79, 16);
  if (v15)
  {
    v19 = 0;
    v20 = *v75;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(v9);
        }

        v22 = *(*(&v74 + 1) + 8 * i);
        v23 = objc_msgSend_p_boundTextureArgumentDeclarationForLinkedVariable_bufferIndex_(self, v14, v16, v17, v18, v22, v19);
        v28 = objc_msgSend_p_boundSamplerArgumentDeclarationForLinkedVariable_bufferIndex_(self, v24, v25, v26, v27, v22, v19);
        v33 = v28;
        if (v23)
        {
          v34 = v28 == 0;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          v78[0] = v23;
          v78[1] = v28;
          v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v30, v31, v32, v78, 2);
          objc_msgSend_tsu_addObjectsFromNonNilArray_(v73, v36, v37, v38, v39, v35);

          ++v19;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v74, v79, 16);
    }

    while (v15);
  }

  v44 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, v40, v41, v42, v43, 2, 0);
  if (objc_msgSend_count(v44, v45, v46, v47, v48))
  {
    v53 = objc_msgSend_fragmentUniformBufferIndex(self, v49, v50, v51, v52);
    v58 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v54, v55, v56, v57, @"constant FragmentUniforms *uniforms [[buffer(%lu)]]", v53);
    objc_msgSend_addObject_(v73, v59, v60, v61, v62, v58);
  }

  if (objc_msgSend_count(v73, v49, v50, v51, v52))
  {
    accumulator = self->_accumulator;
    v68 = objc_msgSend_componentsJoinedByString_(v73, v63, v64, v65, v66, @",\n");
    objc_msgSend_appendFormat_(accumulator, v69, v70, v71, v72, @",\n%@", v68);
  }
}

- (id)p_boundTextureArgumentDeclarationForLinkedVariable:(id)a3 bufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_inputVariableName(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_stringWithFormat_(v7, v13, v14, v15, v16, @"%@Texture", v12);

  v22 = objc_msgSend_p_boundArgumentDeclarationForLinkedVariable_variableType_variableName_bindingType_bufferIndex_(self, v18, v19, v20, v21, v6, @"texture2d<float>", v17, @"texture", a4);

  return v22;
}

- (id)p_boundSamplerArgumentDeclarationForLinkedVariable:(id)a3 bufferIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_inputVariableName(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_stringWithFormat_(v7, v13, v14, v15, v16, @"%@Sampler", v12);

  v22 = objc_msgSend_p_boundArgumentDeclarationForLinkedVariable_variableType_variableName_bindingType_bufferIndex_(self, v18, v19, v20, v21, v6, @"sampler", v17, @"sampler", a4);

  return v22;
}

- (id)p_boundBufferArgumentDeclarationForLinkedVariable:(id)a3 variableType:(id)a4 variableName:(id)a5 bufferIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, v13, v14, v15, @"const device %@ *", a4);
  v21 = objc_msgSend_p_boundArgumentDeclarationForLinkedVariable_variableType_variableName_bindingType_bufferIndex_(self, v17, v18, v19, v20, v10, v16, v11, @"buffer", a6);

  return v21;
}

- (id)p_boundArgumentDeclarationForLinkedVariable:(id)a3 variableType:(id)a4 variableName:(id)a5 bindingType:(id)a6 bufferIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  variablesWithBackingResources = self->_variablesWithBackingResources;
  v21 = objc_msgSend_variable(v12, v17, v18, v19, v20);
  LOBYTE(variablesWithBackingResources) = objc_msgSend_containsObject_(variablesWithBackingResources, v22, v23, v24, v25, v21);

  if (variablesWithBackingResources)
  {
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, @"%@ %@ [[%@(%lu)]]", v13, v14, v15, a7);
  }

  else
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCH3DShaderProgram p_boundArgumentDeclarationForLinkedVariable:variableType:variableName:bindingType:bufferIndex:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    v42 = objc_msgSend_variable(v12, v38, v39, v40, v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v43, v44, v45, v46, v32, v37, 1211, 0, "Variable %@ does not have a backing resource associated with it. Do not create a binding for an Attribute Variable that is not used, since Metal requires all bindings to be used.", v42);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
    v30 = 0;
  }

  return v30;
}

- (void)p_generateMetalFragmentTextureVariable
{
  v67 = *MEMORY[0x277D85DE8];
  v61 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = objc_msgSend_linkedTextureVariables(self, v6, 0.0, v7, v8);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v62, v66, 16);
  if (v15)
  {
    v19 = *v63;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        v22 = objc_msgSend_variable(v21, v14, v16, v17, v18);
        v27 = objc_msgSend_usedUniformNameForVariable_(self, v23, v24, v25, v26, v22);

        variablesWithBackingResources = self->_variablesWithBackingResources;
        v33 = objc_msgSend_variable(v21, v29, v30, v31, v32);
        LOBYTE(variablesWithBackingResources) = objc_msgSend_containsObject_(variablesWithBackingResources, v34, v35, v36, v37, v33);

        if (((v27 != 0) & variablesWithBackingResources) == 1)
        {
          v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, v39, v40, v41, @"TextureData %@ = {%@Texture, %@Sampler}\n", v27, v27, v27);;
          objc_msgSend_addObject_(v61, v43, v44, v45, v46, v42);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v14, v16, v17, v18, &v62, v66, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v61, v47, v48, v49, v50))
  {
    accumulator = self->_accumulator;
    v56 = objc_msgSend_componentsJoinedByString_(v61, v51, v52, v53, v54, &stru_288528678);
    objc_msgSend_appendFormat_(accumulator, v57, v58, v59, v60, @"%@", v56);
  }
}

- (void)p_generateMetalVertexAttributes
{
  v98 = *MEMORY[0x277D85DE8];
  v92 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v9 = objc_msgSend_interleavedLinkedVertexAttributeVariables(self, v5, v6, v7, v8);
  v14 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v9, v10, v11, v12, v13, &unk_28851CFF8);
  v91 = objc_msgSend_tsu_uniqueObjects(v14, v15, v16, v17, v18);

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = objc_msgSend_linkedVertexAttributeVariables(self, v19, 0.0, v20, v21);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, v24, v25, &v93, v97, 16);
  if (v27)
  {
    v31 = *v94;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v94 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v93 + 1) + 8 * i);
        v34 = objc_msgSend_variable(v33, v26, v28, v29, v30);
        v39 = objc_msgSend_commonShaderType(v34, v35, v36, v37, v38);

        v44 = objc_msgSend_name(v33, v40, v41, v42, v43);
        v49 = objc_msgSend_variable(v33, v45, v46, v47, v48);
        v54 = objc_msgSend_containsObject_(v91, v50, v51, v52, v53, v49);

        v59 = MEMORY[0x277CCACA8];
        if (v54)
        {
          v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, v56, v57, v58, @"v_in.%@", v44);
        }

        else
        {
          v65 = objc_msgSend_inputVariableName(v33, v55, v56, v57, v58);
          v61 = objc_msgSend_stringWithFormat_(v59, v66, v67, v68, v69, @"%@[vertexID]", v65);
        }

        v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v60, v62, v63, v64, @"%@ %@ = %@\n", v39, v44, v61);;
        objc_msgSend_addObject_(v92, v71, v72, v73, v74, v70);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, v28, v29, v30, &v93, v97, 16);
    }

    while (v27);
  }

  if (objc_msgSend_count(v92, v75, v76, v77, v78))
  {
    accumulator = self->_accumulator;
    v84 = objc_msgSend_componentsJoinedByString_(v92, v79, v80, v81, v82, &stru_288528678);
    objc_msgSend_appendFormat_(accumulator, v85, v86, v87, v88, @"%@", v84);
  }
}

- (id)uniformVariablesForType:(TSCH3DShaderType)a3
{
  v6 = objc_msgSend_linkedUniformVariablesForType_isTexture_(self, a2, v3, v4, v5, a3._value, 0);
  v11 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v6, v7, v8, v9, v10, &unk_28851D018);

  return v11;
}

- (int64_t)uniformBufferIndexForType:(TSCH3DShaderType)a3
{
  value = a3._value;
  if (LODWORD(a3._value) == 2)
  {

    return objc_msgSend_fragmentUniformBufferIndex(self, a2, v3, v4, v5);
  }

  else if (LODWORD(a3._value) == 1)
  {

    return (MEMORY[0x2821F9670])(self, sel_vertexUniformBufferIndex);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderProgram uniformBufferIndexForType:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    v17 = sub_27619B234(&value, v13, v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v18, v19, v20, v21, v7, v12, 1276, 0, "Invalid shader type %@", v17, value);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)p_generateType:(TSCH3DShaderType)a3
{
  p_accumulator = &self->_accumulator;
  if (self->_accumulator)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderProgram p_generateType:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 1282, 0, "expected nil value for '%{public}s'", "_accumulator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v3, v4, v5);
  objc_storeStrong(p_accumulator, v24);
  objc_msgSend_p_generatePreprocessorDefinitionsForType_(self, v25, v26, v27, v28, a3._value);
  objc_msgSend_p_generateGlobalsForType_(self, v29, v30, v31, v32, a3._value);
  objc_msgSend_p_generateTypeDeclarations(self, v33, v34, v35, v36);
  objc_msgSend_p_generateFunctions(self, v37, v38, v39, v40);
  if (objc_msgSend_isMetal(self, v41, v42, v43, v44))
  {
    if (LODWORD(a3._value) == 2)
    {
      objc_msgSend_appendString_(*p_accumulator, v45, v46, v47, v48, @"fragment float4 fragmentShader(\n  RasterizerData dat [[stage_in]]");
      objc_msgSend_p_generateMetalFragmentInputs(self, v61, v62, v63, v64);
      objc_msgSend_appendString_(*p_accumulator, v65, v66, v67, v68, @" {\n"));
      objc_msgSend_p_generateMetalFragmentTextureVariable(self, v69, v70, v71, v72);
    }

    else if (LODWORD(a3._value) == 1)
    {
      objc_msgSend_appendString_(*p_accumulator, v45, v46, v47, v48, @"vertex RasterizerData vertexShader(\n  uint vertexID [[vertex_id]]");
      objc_msgSend_p_generateMetalVertexInputs(self, v49, v50, v51, v52);
      objc_msgSend_appendString_(*p_accumulator, v53, v54, v55, v56, @" {\n  RasterizerData dat;\n"));
      objc_msgSend_p_generateMetalVertexAttributes(self, v57, v58, v59, v60);
    }
  }

  else
  {
    objc_msgSend_appendString_(*p_accumulator, v45, v46, v47, v48, @"void main() {\n");
  }

  objc_msgSend_p_generateSection_type_(self, v45, v46, v47, v48, self->_declarationSection, a3._value);
  objc_msgSend_p_generateSection_type_(self, v73, v74, v75, v76, self->_temporarySection, a3._value);
  objc_msgSend_p_generateSection_type_(self, v77, v78, v79, v80, self->_statementSection, a3._value);
  objc_msgSend_p_generateSection_type_(self, v81, v82, v83, v84, self->_resolutionSection, a3._value);
  objc_msgSend_p_generateSection_type_(self, v85, v86, v87, v88, self->_outcomeSection, a3._value);
  objc_msgSend_p_generateSection_type_(self, v89, v90, v91, v92, self->_conclusionSection, a3._value);
  accumulator = self->_accumulator;
  v98 = objc_msgSend_additionalConclusionsForShaderType_(self->_version, v94, v95, v96, v97, a3._value);
  objc_msgSend_appendFormat_(accumulator, v99, v100, v101, v102, @"%@\n", v98);

  objc_msgSend_appendString_(*p_accumulator, v103, v104, v105, v106, @"}\n");
  v107 = *p_accumulator;
  *p_accumulator = 0;

  return v24;
}

- (NSString)vertex
{
  objc_msgSend_link(self, a2, v2, v3, v4);
  vertex = self->_vertex;
  if (!vertex)
  {
    v11 = objc_msgSend_p_generateType_(self, v6, v7, v8, v9, 1);
    v12 = self->_vertex;
    self->_vertex = v11;

    vertex = self->_vertex;
  }

  return vertex;
}

- (NSString)fragment
{
  objc_msgSend_link(self, a2, v2, v3, v4);
  fragment = self->_fragment;
  if (!fragment)
  {
    v11 = objc_msgSend_p_generateType_(self, v6, v7, v8, v9, 2);
    v12 = self->_fragment;
    self->_fragment = v11;

    fragment = self->_fragment;
  }

  return fragment;
}

- (id)usedNameForVariable:(id)a3 type:(TSCH3DShaderType)a4 scope:(TSCH3DShaderVariableScopeType)a5
{
  v10 = objc_msgSend_existingLinkageOfVariable_(self, a2, v5, v6, v7, a3);
  if (objc_msgSend_isUsed(v10, v11, v12, v13, v14))
  {
    v19 = objc_msgSend_nameForShader_scope_(v10, v15, v16, v17, v18, a4._value, a5._value);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)usedUniformNameForVariable:(id)a3
{
  v6 = objc_msgSend_usedNameForVariable_type_scope_(self, a2, v3, v4, v5, a3, 1, 4);

  return v6;
}

- (id)usedAttributeNameForVariable:(id)a3
{
  v6 = objc_msgSend_usedNameForVariable_type_scope_(self, a2, v3, v4, v5, a3, 1, 8);

  return v6;
}

- (unint64_t)vertexAttributeLocationForVariable:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_variableToVertexAttributeLocation(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v11, v12, v13, v4);

  if (!v14 || (objc_msgSend_variableToVertexAttributeLocation(self, v15, v16, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v19, v20, v21, v22, v23, v4), v24 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_unsignedIntegerValue(v24, v25, v26, v27, v28), v24, v19, v29 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DShaderProgram vertexAttributeLocationForVariable:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 1359, 0, "variable %@ is not linked to shader program %@", v4, self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v29;
}

@end