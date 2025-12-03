@interface TSCERefNamingContext
- (TSCERefNamingContext)init;
- (TSKUIDStruct)hostTableUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reset;
@end

@implementation TSCERefNamingContext

- (TSCERefNamingContext)init
{
  v9.receiver = self;
  v9.super_class = TSCERefNamingContext;
  v2 = [(TSCERefNamingContext *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_reset(v2, v3, v4, v5, v6);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v9 = objc_msgSend_contextSheetName(self, v5, v6, v7, v8);
  objc_msgSend_setContextSheetName_(v4, v10, v9, v11, v12);

  v17 = objc_msgSend_hostTableUID(self, v13, v14, v15, v16);
  objc_msgSend_setHostTableUID_(v4, v18, v17, v18, v19);
  v24 = objc_msgSend_suppressIdenticalEndReference(self, v20, v21, v22, v23);
  objc_msgSend_setSuppressIdenticalEndReference_(v4, v25, v24, v26, v27);
  v32 = objc_msgSend_useSymbolicNames(self, v28, v29, v30, v31);
  objc_msgSend_setUseSymbolicNames_(v4, v33, v32, v34, v35);
  v40 = objc_msgSend_allowTableName(self, v36, v37, v38, v39);
  objc_msgSend_setAllowTableName_(v4, v41, v40, v42, v43);
  v48 = objc_msgSend_allowSpanningColumnReferenceBodyQualifier(self, v44, v45, v46, v47);
  objc_msgSend_setAllowSpanningColumnReferenceBodyQualifier_(v4, v49, v48, v50, v51);
  v56 = objc_msgSend_showGeometricAsBase(self, v52, v53, v54, v55);
  objc_msgSend_setShowGeometricAsBase_(v4, v57, v56, v58, v59);
  v64 = objc_msgSend_quoteComponents(self, v60, v61, v62, v63);
  objc_msgSend_setQuoteComponents_(v4, v65, v64, v66, v67);
  v72 = objc_msgSend_forceEscaping(self, v68, v69, v70, v71);
  objc_msgSend_setForceEscaping_(v4, v73, v72, v74, v75);
  v80 = objc_msgSend_forceTableName(self, v76, v77, v78, v79);
  objc_msgSend_setForceTableName_(v4, v81, v80, v82, v83);
  v88 = objc_msgSend_forceSheetName(self, v84, v85, v86, v87);
  objc_msgSend_setForceSheetName_(v4, v89, v88, v90, v91);
  v96 = objc_msgSend_forFormulaPlainText(self, v92, v93, v94, v95);
  objc_msgSend_setForFormulaPlainText_(v4, v97, v96, v98, v99);
  v104 = objc_msgSend_usedSymbolicName(self, v100, v101, v102, v103);
  objc_msgSend_setUsedSymbolicName_(v4, v105, v104, v106, v107);
  return v4;
}

- (void)reset
{
  contextSheetName = self->_contextSheetName;
  self->_contextSheetName = 0;

  *&self->_suppressIdenticalEndReference = 256;
  self->_hostTableUID._lower = 0;
  self->_hostTableUID._upper = 0;
  self->_allowTableName = 1;
  *&self->_allowSpanningColumnReferenceBodyQualifier = 0;
}

- (TSKUIDStruct)hostTableUID
{
  upper = self->_hostTableUID._upper;
  lower = self->_hostTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end