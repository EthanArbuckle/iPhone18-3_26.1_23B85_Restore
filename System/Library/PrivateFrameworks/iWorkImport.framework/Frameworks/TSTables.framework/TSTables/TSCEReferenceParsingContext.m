@interface TSCEReferenceParsingContext
- (TSCEReferenceParsingContext)initWithContextResolver:(id)a3 components:(id)a4;
- (TSCEReferenceParsingContext)initWithContextTableResolver:(id)a3 components:(id)a4;
- (TSCEReferenceResolving)contextResolver;
- (id)copyWithZone:(_NSZone *)a3;
- (void)reset;
@end

@implementation TSCEReferenceParsingContext

- (TSCEReferenceParsingContext)initWithContextTableResolver:(id)a3 components:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSCEReferenceParsingContext;
  v8 = [(TSCEReferenceParsingContext *)&v11 init];
  v9 = v8;
  if (v6 && v8)
  {
    v8->_contextTableResolver = v6;
    objc_storeStrong(&v8->_components, a4);
  }

  return v9;
}

- (TSCEReferenceParsingContext)initWithContextResolver:(id)a3 components:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_calcEngine(v6, v8, v9, v10, v11);
  v16 = objc_msgSend_tableResolverForRefResolver_(v12, v13, v6, v14, v15);

  v19 = objc_msgSend_initWithContextTableResolver_components_(self, v17, v16, v7, v18);
  return v19;
}

- (TSCEReferenceResolving)contextResolver
{
  contextTableResolver = self->_contextTableResolver;
  if (contextTableResolver)
  {
    contextTableResolver = objc_msgSend_referenceResolverObject(contextTableResolver, a2, v2, v3, v4);
    v5 = vars8;
  }

  return contextTableResolver;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_contextTableResolver(self, v5, v6, v7, v8);
  v12 = objc_msgSend_initWithContextTableResolver_components_(v4, v10, v9, self->_components, v11);

  v17 = objc_msgSend_contextSheetName(self, v13, v14, v15, v16);
  objc_msgSend_setContextSheetName_(v12, v18, v17, v19, v20);

  v25 = objc_msgSend_sheetName(self, v21, v22, v23, v24);
  objc_msgSend_setSheetName_(v12, v26, v25, v27, v28);

  v33 = objc_msgSend_tableName(self, v29, v30, v31, v32);
  objc_msgSend_setTableName_(v12, v34, v33, v35, v36);

  v41 = objc_msgSend_sheetNameUnquoted(self, v37, v38, v39, v40);
  objc_msgSend_setSheetNameUnquoted_(v12, v42, v41, v43, v44);

  v49 = objc_msgSend_tableNameUnquoted(self, v45, v46, v47, v48);
  objc_msgSend_setTableNameUnquoted_(v12, v50, v49, v51, v52);

  v57 = objc_msgSend_referencesMatchingInputAsPrefix(self, v53, v54, v55, v56);
  objc_msgSend_setReferencesMatchingInputAsPrefix_(v12, v58, v57, v59, v60);

  v65 = objc_msgSend_abortObject(self, v61, v62, v63, v64);
  objc_msgSend_setAbortObject_(v12, v66, v65, v67, v68);

  v73 = objc_msgSend_preserveFlags(self, v69, v70, v71, v72);
  objc_msgSend_setPreserveFlags_(v12, v74, v73, v75, v76);
  v81 = objc_msgSend_filterColons(self, v77, v78, v79, v80);
  objc_msgSend_setFilterColons_(v12, v82, v81, v83, v84);
  IsComplete = objc_msgSend_referenceIsComplete(self, v85, v86, v87, v88);
  objc_msgSend_setReferenceIsComplete_(v12, v90, IsComplete, v91, v92);
  v97 = objc_msgSend_parseAsBaseTableReference(self, v93, v94, v95, v96);
  objc_msgSend_setParseAsBaseTableReference_(v12, v98, v97, v99, v100);
  v105 = objc_msgSend_namesUsed(self, v101, v102, v103, v104);
  objc_msgSend_setNamesUsed_(v12, v106, v105, v107, v108);
  v113 = objc_msgSend_trimNames(self, v109, v110, v111, v112);
  objc_msgSend_setTrimNames_(v12, v114, v113, v115, v116);
  return v12;
}

- (void)reset
{
  objc_msgSend_setSheetName_(self, a2, 0, v2, v3);
  objc_msgSend_setTableName_(self, v5, 0, v6, v7);
  objc_msgSend_setSheetNameUnquoted_(self, v8, 0, v9, v10);
  objc_msgSend_setTableNameUnquoted_(self, v11, 0, v12, v13);
  objc_msgSend_setPreserveFlags_(self, v14, 0, v15, v16);
  objc_msgSend_setNamesUsed_(self, v17, 0, v18, v19);

  objc_msgSend_setReferencesMatchingInputAsPrefix_(self, v20, 0, v21, v22);
}

@end