@interface TSCHPropertyMutationTuple
- (TSCHPropertyMutationTuple)initWithStyleOwner:(id)owner mutationMap:(id)map;
- (TSCHPropertyMutationTuple)initWithStyleOwner:(id)owner mutations:(id)mutations;
- (id)description;
- (id)indirectTuple;
- (id)styleOwnerRef;
@end

@implementation TSCHPropertyMutationTuple

- (TSCHPropertyMutationTuple)initWithStyleOwner:(id)owner mutations:(id)mutations
{
  ownerCopy = owner;
  mutationsCopy = mutations;
  v13 = mutationsCopy;
  if (ownerCopy)
  {
    if (mutationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHPropertyMutationTuple initWithStyleOwner:mutations:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationTuple.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 24, 0, "invalid nil value for '%{public}s'", "styleOwner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v32 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHPropertyMutationTuple initWithStyleOwner:mutations:]");
  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationTuple.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 25, 0, "invalid nil value for '%{public}s'", "mutations");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
LABEL_3:
  v47.receiver = self;
  v47.super_class = TSCHPropertyMutationTuple;
  v14 = [(TSCHPropertyMutationTuple *)&v47 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleOwner, owner);
    objc_storeStrong(&v15->_mutations, mutations);
  }

  return v15;
}

- (TSCHPropertyMutationTuple)initWithStyleOwner:(id)owner mutationMap:(id)map
{
  ownerCopy = owner;
  v7 = sub_2762F3E68(map);
  v12 = objc_msgSend_initWithStyleOwner_mutations_(self, v8, v9, v10, v11, ownerCopy, v7);

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_stringWithFormat_(v3, v6, v7, v8, v9, @"<%@: %p _styleOwner=%p _mutations=%p>", v5, self, self->_styleOwner, self->_mutations);

  return v10;
}

- (id)indirectTuple
{
  v6 = objc_msgSend_styleOwnerRef(self, a2, v2, v3, v4);
  v7 = [TSCHPropertyMutationIndirectTuple alloc];
  v12 = objc_msgSend_type(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_index(v6, v13, v14, v15, v16);
  v22 = objc_msgSend_styleOwner(self, v18, v19, v20, v21);
  v27 = objc_msgSend_chartInfo(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_mutations(self, v28, v29, v30, v31);
  v37 = objc_msgSend_initWithStyleOwnerType_index_inChart_mutations_(v7, v33, v34, v35, v36, v12, v17, v27, v32);

  return v37;
}

- (id)styleOwnerRef
{
  v6 = objc_msgSend_styleOwner(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_styleOwner(self, v12, v13, v14, v15);
  v21 = objc_msgSend_styleOwnerRefForStyleOwner_(v11, v17, v18, v19, v20, v16);

  return v21;
}

@end