@interface TTSAUMessagingHost
+ (id)_validSelectorsForProtocol;
- (TTSAUMessagingHost)initWithMessageChannel:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_loadProtocolMethods;
- (void)forwardInvocation:(id)a3;
@end

@implementation TTSAUMessagingHost

- (TTSAUMessagingHost)initWithMessageChannel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TTSAUMessagingHost;
  v6 = [(TTSAUMessagingHost *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, a3);
    objc_msgSend__loadProtocolMethods(v7, v8, v9, v10, v11);
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  objc_msgSend_retainArguments(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
  v18 = objc_msgSend_methodSignature(v4, v14, v15, v16, v17);
  v23 = objc_msgSend_numberOfArguments(v18, v19, v20, v21, v22);

  if (v23 >= 3)
  {
    v28 = objc_msgSend_methodSignature(v4, v24, v25, v26, v27);
    v33 = objc_msgSend_numberOfArguments(v28, v29, v30, v31, v32);

    if (v33 >= 3)
    {
      v34 = 2;
      do
      {
        v35 = objc_msgSend_methodSignature(v4, v24, v25, v26, v27);
        v36 = v35;
        ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v36, v37, v34, v38, v39);

        if (*ArgumentTypeAtIndex == 64 && !ArgumentTypeAtIndex[1])
        {
          v80 = 0;
          objc_msgSend_getArgument_atIndex_(v4, v41, &v80, v34, v44);
          objc_msgSend_addObject_(v13, v45, v80, v46, v47);
        }

        ++v34;
        v48 = objc_msgSend_methodSignature(v4, v41, v42, v43, v44);
        v53 = objc_msgSend_numberOfArguments(v48, v49, v50, v51, v52);
      }

      while (v34 < v53);
    }
  }

  v54 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25, v26, v27);
  v59 = objc_msgSend_selector(v4, v55, v56, v57, v58);
  v60 = NSStringFromSelector(v59);
  objc_msgSend_setObject_forKeyedSubscript_(v54, v61, v60, @"TTSMessageChannelMessageSelectorKey", v62);

  objc_msgSend_setObject_forKeyedSubscript_(v54, v63, v13, @"TTSMessageChannelMessageArgumentsKey", v64);
  v69 = objc_msgSend_channel(self, v65, v66, v67, v68);
  v73 = objc_msgSend_callAudioUnit_(v69, v70, v54, v71, v72);

  v80 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"TTSMessageChannelMessageReturnValueKey", v75, v76);
  if (v80)
  {
    objc_msgSend_setReturnValue_(v4, v77, &v80, v78, v79);
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = NSStringFromSelector(a3);
  v9 = objc_msgSend_methods(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, v4, v11, v12);

  return v13;
}

- (void)_loadProtocolMethods
{
  v3 = objc_opt_class();
  v8 = objc_msgSend__validSelectorsForProtocol(v3, v4, v5, v6, v7);
  methods = self->_methods;
  self->_methods = v8;

  MEMORY[0x1EEE66BB8]();
}

+ (id)_validSelectorsForProtocol
{
  outCount = 0;
  v2 = &unk_1F1D143F8;
  v3 = protocol_copyMethodDescriptionList(v2, 1, 1, &outCount);
  v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6, v7);
  if (outCount)
  {
    v12 = 0;
    p_types = &v3->types;
    do
    {
      v14 = *(p_types - 1);
      v15 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v8, *p_types, v9, v10);
      v16 = NSStringFromSelector(v14);
      objc_msgSend_setObject_forKeyedSubscript_(v11, v17, v15, v16, v18);

      ++v12;
      p_types += 2;
    }

    while (v12 < outCount);
  }

  free(v3);

  return v11;
}

@end