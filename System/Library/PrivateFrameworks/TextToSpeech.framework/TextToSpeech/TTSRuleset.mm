@interface TTSRuleset
+ (TTSRuleset)rulesetWithData:(id)a3 identifier:(id)a4 priority:(unint64_t)a5;
+ (id)processReplacementStringForSpecialCharacters:(id)a3;
- (NSNumber)ruleCount;
- (TTSRuleset)init;
- (void)addRuleReplacement:(id)a3;
- (void)addRuleString:(id)a3;
- (void)addRules:(id)a3;
- (void)addRulesFromData:(id)a3;
@end

@implementation TTSRuleset

- (TTSRuleset)init
{
  v10.receiver = self;
  v10.super_class = TTSRuleset;
  v6 = [(TTSRuleset *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4, v5);
    ruleReplacements = v6->_ruleReplacements;
    v6->_ruleReplacements = v7;
  }

  return v6;
}

+ (TTSRuleset)rulesetWithData:(id)a3 identifier:(id)a4 priority:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [TTSRuleset alloc];
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  objc_msgSend_addRulesFromData_(v14, v15, v8, v16, v17);

  objc_msgSend_setPriority_(v14, v18, a5, v19, v20);
  objc_msgSend_setIdentifier_(v14, v21, v7, v22, v23);

  return v14;
}

- (NSNumber)ruleCount
{
  v5 = MEMORY[0x1E696AD98];
  v6 = objc_msgSend_ruleReplacements(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v5, v12, v11, v13, v14);

  return v15;
}

- (void)addRuleString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v8 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v13, 1, v7);

  objc_msgSend_addRules_(self, v9, v8, v10, v11, v13, v14);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)addRuleReplacement:(id)a3
{
  v121 = a3;
  v8 = objc_msgSend_ruleReplacements(self, v4, v5, v6, v7);
  v13 = objc_msgSend_lastObject(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_group(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_replacement(v121, v19, v20, v21, v22);
  v27 = objc_msgSend_containsString_(v23, v24, @"_HOMOGRAPH_START", v25, v26);

  v32 = objc_msgSend_replacement(v121, v28, v29, v30, v31);
  v36 = objc_msgSend_containsString_(v32, v33, @"_ENG_CORE", v34, v35);

  if ((v36 & 1) != 0 || v27)
  {
    v40 = @"ENGCORE";
    if (v27)
    {
      v40 = @"HOMOGRAPH";
    }

    v45 = v40;
    if (v18 && (objc_msgSend_key(v18, v41, v42, v43, v44), v46 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v46, v47, v45, v48, v49), v46, isEqualToString))
    {
      v55 = objc_msgSend_ruleReplacements(self, v51, v52, v53, v54);
      v60 = objc_msgSend_count(v55, v56, v57, v58, v59);
      objc_msgSend_setEndIndex_(v18, v61, v60, v62, v63);

      objc_msgSend_setGroup_(v121, v64, v18, v65, v66);
    }

    else
    {
      v67 = objc_alloc_init(TTSRuleGroup);
      objc_msgSend_setKey_(v67, v68, v45, v69, v70);
      v75 = objc_msgSend_ruleReplacements(self, v71, v72, v73, v74);
      v80 = objc_msgSend_count(v75, v76, v77, v78, v79);
      objc_msgSend_setStartIndex_(v67, v81, v80, v82, v83);

      v88 = objc_msgSend_ruleReplacements(self, v84, v85, v86, v87);
      v93 = objc_msgSend_count(v88, v89, v90, v91, v92);
      objc_msgSend_setEndIndex_(v67, v94, v93, v95, v96);

      objc_msgSend_setGroup_(v121, v97, v67, v98, v99);
    }
  }

  objc_msgSend_setRuleset_(v121, v37, self, v38, v39);
  v104 = objc_msgSend_ruleReplacements(self, v100, v101, v102, v103);
  v109 = objc_msgSend_count(v104, v105, v106, v107, v108);
  objc_msgSend_setIndex_(v121, v110, v109, v111, v112);

  v117 = objc_msgSend_ruleReplacements(self, v113, v114, v115, v116);
  objc_msgSend_addObject_(v117, v118, v121, v119, v120);
}

- (void)addRules:(id)a3
{
  v116 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v104 = self;
  objc_sync_enter(v104);
  v9 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v5, v6, v7, v8);
  v103 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v10, @"(.*?)", 1, 0);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v4;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v109, v115, 16);
  if (v15)
  {
    v108 = *v110;
    *&v16 = 138412290;
    v102 = v16;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v110 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v109 + 1) + 8 * i);
        v19 = objc_msgSend_stringByTrimmingCharactersInSet_(v18, v12, v9, v13, v14, v102);
        if ((objc_msgSend_hasPrefix_(v19, v20, @"#", v21, v22) & 1) == 0 && objc_msgSend_length(v19, v23, v24, v25, v26))
        {
          v30 = objc_msgSend_componentsSeparatedByString_(v19, v27, @"-->", v28, v29);
          if (objc_msgSend_containsString_(v19, v31, @"-->", v32, v33) && objc_msgSend_count(v30, v34, v35, v36, v37) == 2)
          {
            v41 = objc_msgSend_objectAtIndexedSubscript_(v30, v38, 0, v39, v40);
            v45 = objc_msgSend_stringByTrimmingCharactersInSet_(v41, v42, v9, v43, v44);

            v49 = objc_msgSend_objectAtIndexedSubscript_(v30, v46, 1, v47, v48);
            v106 = objc_msgSend_stringByTrimmingCharactersInSet_(v49, v50, v9, v51, v52);

            v57 = objc_msgSend_length(v106, v53, v54, v55, v56);
            v105 = objc_msgSend_matchesInString_options_range_(v103, v58, v106, 2, 0, v57);
            if (objc_msgSend_count(v105, v59, v60, v61, v62))
            {
              v67 = objc_msgSend_firstObject(v105, v63, v64, v65, v66);
              v71 = objc_msgSend_rangeAtIndex_(v67, v68, 1, v69, v70);
              objc_msgSend_substringWithRange_(v106, v72, v71, v72, v73);
            }

            else
            {
              v67 = objc_msgSend_componentsSeparatedByString_(v106, v63, @"#", v65, v66);
              objc_msgSend_firstObject(v67, v74, v75, v76, v77);
            }
            v78 = ;

            v79 = [TTSRegex alloc];
            v83 = objc_msgSend_initWithPerlPattern_(v79, v80, v45, v81, v82);
            if (v83)
            {
              v84 = objc_alloc_init(TTSRuleReplacement);
              objc_msgSend_setRegex_(v84, v85, v83, v86, v87);
              objc_msgSend_setRuleset_(v84, v88, v104, v89, v90);
              v94 = objc_msgSend_processReplacementStringForSpecialCharacters_(TTSRuleset, v91, v78, v92, v93);
              objc_msgSend_setReplacement_(v84, v95, v94, v96, v97);

              objc_msgSend_addRuleReplacement_(v104, v98, v84, v99, v100);
            }

            else
            {
              v84 = AXTTSLogCommon();
              if (os_log_type_enabled(&v84->super, OS_LOG_TYPE_ERROR))
              {
                *buf = v102;
                v114 = v18;
                _os_log_error_impl(&dword_1A9324000, &v84->super, OS_LOG_TYPE_ERROR, "Invalid rule %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v45 = AXTTSLogCommon();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = v102;
              v114 = v19;
              _os_log_error_impl(&dword_1A9324000, v45, OS_LOG_TYPE_ERROR, "Invalid rule: %@", buf, 0xCu);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v109, v115, 16);
    }

    while (v15);
  }

  objc_sync_exit(v104);
  v101 = *MEMORY[0x1E69E9840];
}

- (void)addRulesFromData:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v9 = objc_msgSend_initWithData_encoding_(v6, v7, v5, 4, v8);

  v13 = objc_msgSend_componentsSeparatedByString_(v9, v10, @"[data]", v11, v12);
  v25 = objc_msgSend_lastObject(v13, v14, v15, v16, v17);

  v21 = objc_msgSend_componentsSeparatedByString_(v25, v18, @"\n", v19, v20);
  objc_msgSend_addRules_(self, v22, v21, v23, v24);
}

+ (id)processReplacementStringForSpecialCharacters:(id)a3
{
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a3, a2, @"\\\, @"\, v3);
  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"\\e\, @"\x1B\, v6);

  v10 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"\\e/+", @"\x1B/+", v9);

  v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v11, @"\x1B\x1Bos", @"\x1B\\eos", v12);

  return v13;
}

@end