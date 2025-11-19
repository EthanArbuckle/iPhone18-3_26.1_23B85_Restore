@interface TSCH3DShaderEffectsStates
- (TSCH3DShaderEffectsStates)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stateForStateInfo:(id)a3 createIfNil:(BOOL)a4;
- (id)valueStateForKey:(id)a3;
- (void)setState:(id)a3 forStateInfo:(id)a4;
@end

@implementation TSCH3DShaderEffectsStates

- (TSCH3DShaderEffectsStates)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DShaderEffectsStates;
  v2 = [(TSCH3DShaderEffectsStates *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v2->_objects;
    v2->_objects = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DShaderEffectsStates;
  v4 = [(TSCH3DShaderEffectsStates *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(%@)", v4, self->_objects);

  return v9;
}

- (id)valueStateForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_objects, a2, v3, v4, v5, a3);

  return v6;
}

- (id)stateForStateInfo:(id)a3 createIfNil:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_stateSharingID(v6, v7, v8, v9, v10);
  v17 = objc_msgSend_objectForKey_(self->_objects, v12, v13, v14, v15, v11);
  if (v17)
  {
    v21 = 1;
  }

  else
  {
    v21 = !v4;
  }

  if (!v21)
  {
    v17 = objc_alloc_init(objc_msgSend_stateClass(v6, v16, v18, v19, v20));
    v43 = &unk_28856FD90;
    v23 = TSUCheckedProtocolCast();
    if (!v23)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCH3DShaderEffectsStates stateForStateInfo:createIfNil:]", &unk_28856FD90);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 54, 0, "invalid nil value for '%{public}s'", "copyableResult");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    objc_msgSend_tsu_setNonNilObject_forKey_(self->_objects, v22, v24, v25, v26, v23, v11, v43);
  }

  return v17;
}

- (void)setState:(id)a3 forStateInfo:(id)a4
{
  v31 = &unk_28856FD90;
  v32 = a4;
  v6 = TSUCheckedProtocolCast();
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DShaderEffectsStates setState:forStateInfo:]", &unk_28856FD90);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 63, 0, "invalid nil value for '%{public}s'", "copyableState");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objects = self->_objects;
  v26 = objc_msgSend_stateSharingID(v32, v5, v7, v8, v9, v31);
  objc_msgSend_tsu_setNonNilObject_forKey_(objects, v27, v28, v29, v30, v6, v26);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v66 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v66)
  {
    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = self->_objects;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, v16, v17, v18, &v69, v73, 16);
    if (v20)
    {
      v24 = *v70;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v70 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v69 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKeyedSubscript_(self->_objects, v19, v21, v22, v23, v26);
          v28 = TSUProtocolCast();
          v33 = v28;
          if (v28)
          {
            v34 = objc_msgSend_mutableCopy(v28, v29, v30, v31, v32, &unk_28856FE58);
            objc_msgSend_setObject_forKeyedSubscript_(v68, v35, v36, v37, v38, v34, v26);
          }

          else
          {
            v65 = &unk_28856FD90;
            v40 = TSUCheckedProtocolCast();
            if (!v40)
            {
              v44 = MEMORY[0x277D81150];
              v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v41, v42, v43, "[TSCH3DShaderEffectsStates copyWithZone:]", &unk_28856FD90);
              v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v51, v52, v53, v54, v45, v50, 83, 0, "invalid nil value for '%{public}s'", "copyableValue");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
            }

            v34 = objc_msgSend_copy(v40, v39, v41, v42, v43, v65);
            objc_msgSend_setObject_forKeyedSubscript_(v68, v59, v60, v61, v62, v34, v26);
            v33 = v40;
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v21, v22, v23, &v69, v73, 16);
      }

      while (v20);
    }

    v63 = v66[1];
    v66[1] = v68;
  }

  return v66;
}

@end