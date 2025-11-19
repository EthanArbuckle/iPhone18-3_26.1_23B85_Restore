@interface TSCHPropertyMutationIndirectTuple
- (TSCHPropertyMutationIndirectTuple)initWithStyleOwner:(id)a3 mutations:(id)a4;
- (TSCHPropertyMutationIndirectTuple)initWithStyleOwnerType:(int)a3 index:(unint64_t)a4 inChart:(id)a5 mutations:(id)a6;
- (id)styleOwner;
- (id)styleOwnerRef;
@end

@implementation TSCHPropertyMutationIndirectTuple

- (TSCHPropertyMutationIndirectTuple)initWithStyleOwnerType:(int)a3 index:(unint64_t)a4 inChart:(id)a5 mutations:(id)a6
{
  v31.receiver = self;
  v31.super_class = TSCHPropertyMutationIndirectTuple;
  v8 = [(TSCHPropertyMutationTuple *)&v31 initWithStyleOwner:a5 mutations:a6];
  v13 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  if ((a3 - 6) > 0xFFFFFFFA)
  {
    v8->_styleOwnerType = a3;
    v8->_styleOwnerIndex = a4;
LABEL_5:
    v29 = v8;
    goto LABEL_6;
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHPropertyMutationIndirectTuple initWithStyleOwnerType:index:inChart:mutations:]");
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleViewProxy.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 64, 0, "Invalid TSCHStyleOwnerType");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  v29 = 0;
LABEL_6:

  return v29;
}

- (TSCHPropertyMutationIndirectTuple)initWithStyleOwner:(id)a3 mutations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_msgSend_chartInfo(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_styleOwnerRefForStyleOwner_(v12, v13, v14, v15, v16, v7);

  v18 = objc_alloc(objc_opt_class());
  v23 = objc_msgSend_type(v17, v19, v20, v21, v22);
  v28 = objc_msgSend_index(v17, v24, v25, v26, v27);
  v33 = objc_msgSend_chartInfo(v7, v29, v30, v31, v32);

  v38 = objc_msgSend_initWithStyleOwnerType_index_inChart_mutations_(v18, v34, v35, v36, v37, v23, v28, v33, v6);
  return v38;
}

- (id)styleOwner
{
  styleOwner = self->super._styleOwner;
  v6 = objc_msgSend_styleOwnerReferenceWithType_index_(TSCHStyleOwnerReference, a2, v2, v3, v4, self->_styleOwnerType, self->_styleOwnerIndex);
  v11 = objc_msgSend_styleOwnerForRef_(styleOwner, v7, v8, v9, v10, v6);

  return v11;
}

- (id)styleOwnerRef
{
  v3 = [TSCHStyleOwnerReference alloc];
  v8 = objc_msgSend_initWithStyleOwnerType_index_(v3, v4, v5, v6, v7, self->_styleOwnerType, self->_styleOwnerIndex);

  return v8;
}

@end