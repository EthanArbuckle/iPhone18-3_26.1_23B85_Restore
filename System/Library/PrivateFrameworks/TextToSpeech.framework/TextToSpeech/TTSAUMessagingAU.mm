@interface TTSAUMessagingAU
- (TTSFirstPartyAudioUnit)owningAudioUnit;
- (id)callAudioUnit:(id)unit;
@end

@implementation TTSAUMessagingAU

- (id)callAudioUnit:(id)unit
{
  v87 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  v12 = objc_msgSend_objectForKeyedSubscript_(unitCopy, v5, @"TTSMessageChannelMessageSelectorKey", v6, v7);
  if (v12 && (objc_msgSend__validSelectorsForProtocol(TTSAUMessagingHost, v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v13, v14, v12, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v17, v13, v17))
  {
    v21 = objc_msgSend_objectForKeyedSubscript_(unitCopy, v18, @"TTSMessageChannelMessageArgumentsKey", v19, v20);
    v22 = NSSelectorFromString(v12);
    v27 = objc_msgSend_owningAudioUnit(self, v23, v24, v25, v26);
    v31 = objc_msgSend_methodSignatureForSelector_(v27, v28, v22, v29, v30);

    v35 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v32, v31, v33, v34);
    objc_msgSend_setSelector_(v35, v36, v22, v37, v38);
    v43 = objc_msgSend_owningAudioUnit(self, v39, v40, v41, v42);
    objc_msgSend_setTarget_(v35, v44, v43, v45, v46);

    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v47 = v21;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v81, v86, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v82;
      v54 = 2;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v82 != v53)
          {
            objc_enumerationMutation(v47);
          }

          v85 = *(*(&v81 + 1) + 8 * i);
          objc_msgSend_setArgument_atIndex_(v35, v50, &v85, v54++, v51, v81);
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v81, v86, 16);
      }

      while (v52);
    }

    objc_msgSend_retainArguments(v35, v56, v57, v58, v59);
    objc_msgSend_invoke(v35, v60, v61, v62, v63);
    v68 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v64, v65, v66, v67);
    v85 = 0;
    v69 = v31;
    if (*objc_msgSend_methodReturnType(v69, v70, v71, v72, v73) != 118)
    {
      objc_msgSend_getReturnValue_(v35, v74, &v85, v75, v76);
      if (v85)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v68, v77, v85, @"TTSMessageChannelMessageReturnValueKey", v78);
      }
    }
  }

  else
  {
    v68 = MEMORY[0x1E695E0F8];
  }

  v79 = *MEMORY[0x1E69E9840];

  return v68;
}

- (TTSFirstPartyAudioUnit)owningAudioUnit
{
  WeakRetained = objc_loadWeakRetained(&self->_owningAudioUnit);

  return WeakRetained;
}

@end