@interface TTSRulesetRunner
- (NSNumber)ruleCount;
- (TTSRulesetRunner)init;
- (id)_computeActiveRanges:(id)ranges withIgnoreRanges:(id)ignoreRanges;
- (id)_ignoreRangesForString:(id)string;
- (id)_processSpeechString:(id)string startingAt:(unint64_t)at currentRecursionDepth:(unint64_t)depth;
- (id)_processTemplateReplacementTextForText:(id)text replacement:(id)replacement cString:(const char *)string;
- (id)processText:(id)text;
- (void)_recomputeRuleOrdering;
- (void)cancelProcessing;
- (void)loadRuleSet:(id)set;
- (void)reset;
- (void)unloadRuleset:(id)ruleset;
@end

@implementation TTSRulesetRunner

- (TTSRulesetRunner)init
{
  v20.receiver = self;
  v20.super_class = TTSRulesetRunner;
  v6 = [(TTSRulesetRunner *)&v20 init];
  if (v6)
  {
    v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4, v5);
    ruleReplacements = v6->_ruleReplacements;
    v6->_ruleReplacements = v7;

    v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
    ruleSets = v6->_ruleSets;
    v6->_ruleSets = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, -1);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(v15, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v17 = dispatch_queue_create("ttsruleset.execution", v16);
    regexExecutionQueue = v6->_regexExecutionQueue;
    v6->_regexExecutionQueue = v17;
  }

  return v6;
}

- (void)reset
{
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4);
  ruleReplacements = self->_ruleReplacements;
  self->_ruleReplacements = v6;

  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11);
  ruleSets = self->_ruleSets;
  self->_ruleSets = v12;

  MEMORY[0x1EEE66BB8]();
}

- (void)loadRuleSet:(id)set
{
  objc_msgSend_addObject_(self->_ruleSets, a2, set, v3, v4);

  MEMORY[0x1EEE66B58](self, sel__recomputeRuleOrdering, v6, v7, v8);
}

- (void)unloadRuleset:(id)ruleset
{
  objc_msgSend_removeObject_(self->_ruleSets, a2, ruleset, v3, v4);

  MEMORY[0x1EEE66B58](self, sel__recomputeRuleOrdering, v6, v7, v8);
}

- (void)_recomputeRuleOrdering
{
  v68 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(self->_ruleReplacements, a2, v2, v3, v4);
  v10 = objc_msgSend_ruleSets(self, v6, v7, v8, v9);
  objc_msgSend_sortUsingComparator_(v10, v11, &unk_1F1CEDB28, v12, v13);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = objc_msgSend_ruleSets(self, v14, v15, v16, v17);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v62, v67, 16);
  if (v19)
  {
    v24 = v19;
    v25 = *v63;
    do
    {
      v26 = 0;
      do
      {
        if (*v63 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v62 + 1) + 8 * v26);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v28 = objc_msgSend_ruleReplacements(v27, v20, v21, v22, v23);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v58, v66, 16);
        if (v30)
        {
          v35 = v30;
          v36 = *v59;
          do
          {
            v37 = 0;
            do
            {
              if (*v59 != v36)
              {
                objc_enumerationMutation(v28);
              }

              v38 = *(*(&v58 + 1) + 8 * v37);
              v39 = objc_msgSend_ruleReplacements(self, v31, v32, v33, v34);
              v44 = objc_msgSend_count(v39, v40, v41, v42, v43);
              objc_msgSend_setIndex_(v38, v45, v44, v46, v47);

              v52 = objc_msgSend_ruleReplacements(self, v48, v49, v50, v51);
              objc_msgSend_addObject_(v52, v53, v38, v54, v55);

              ++v37;
            }

            while (v35 != v37);
            v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v58, v66, 16);
          }

          while (v35);
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v62, v67, 16);
    }

    while (v24);
  }

  v56 = *MEMORY[0x1E69E9840];
}

- (id)processText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_setExecuting_(selfCopy, v6, 1, v7, v8);
    v9 = [TTSSpeechString alloc];
    v13 = objc_msgSend_initWithOriginalString_(v9, v10, textCopy, v11, v12);
    v18 = objc_msgSend_preRuleWriter(selfCopy, v14, v15, v16, v17);

    if (v18)
    {
      v23 = objc_msgSend_preRuleWriter(selfCopy, v19, v20, v21, v22);
      v24 = (v23)[2](v23, v13);

      if (objc_msgSend_finalized(v24, v25, v26, v27, v28))
      {
        v29 = [TTSSpeechString alloc];
        v13 = objc_msgSend_initWithParentSpeechString_(v29, v30, v24, v31, v32);
      }

      else
      {
        v13 = v24;
      }
    }

    v34 = objc_msgSend__processSpeechString_startingAt_currentRecursionDepth_(selfCopy, v19, v13, 0, 0);
    v39 = objc_msgSend_postRuleWriter(selfCopy, v35, v36, v37, v38);

    if (v39)
    {
      if (objc_msgSend_finalized(v34, v40, v41, v42, v43))
      {
        v48 = [TTSSpeechString alloc];
        v52 = objc_msgSend_initWithParentSpeechString_(v48, v49, v34, v50, v51);

        v34 = v52;
      }

      v53 = objc_msgSend_postRuleWriter(selfCopy, v44, v45, v46, v47);
      v54 = (v53)[2](v53, v34);

      v34 = v54;
    }

    if (objc_msgSend_finalized(v34, v40, v41, v42, v43))
    {
      v59 = [TTSSpeechString alloc];
      v63 = objc_msgSend_initWithParentSpeechString_(v59, v60, v34, v61, v62);

      v34 = v63;
    }

    v64 = objc_msgSend_sharedInstance(TTSRegexCache, v55, v56, v57, v58);
    v67 = objc_msgSend_regexForString_atStart_(v64, v65, @"__AXTTS_SHIELDS_(UP|DOWN)__", 0, v66);

    v72 = objc_msgSend_originalString(v34, v68, v69, v70, v71);
    v77 = objc_msgSend_originalString(v34, v73, v74, v75, v76);
    v82 = objc_msgSend_length(v77, v78, v79, v80, v81);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = sub_1A9348B04;
    v88[3] = &unk_1E7880458;
    v33 = v34;
    v89 = v33;
    objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(v67, v83, v72, 2, 0, v82, v88);

    objc_msgSend_setExecuting_(selfCopy, v84, 0, v85, v86);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)cancelProcessing
{
  if (objc_msgSend_executing(self, a2, v2, v3, v4))
  {
    objc_msgSend_setShouldAbort_(self, v6, 1, v7, v8);
    obj = self;
    objc_sync_enter(obj);
    objc_msgSend_setShouldAbort_(obj, v9, 0, v10, v11);
    objc_sync_exit(obj);
  }
}

- (NSNumber)ruleCount
{
  v5 = MEMORY[0x1E696AD98];
  v6 = objc_msgSend_ruleReplacements(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v5, v12, v11, v13, v14);

  return v15;
}

- (id)_ignoreRangesForString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_rangeOfString_(stringCopy, v4, @"__AXTTS_SHIELDS_UP__", v5, v6);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  v13 = v7;
  v14 = &v8[v7];
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11);
  if (v14 >= objc_msgSend_length(stringCopy, v15, v16, v17, v18))
  {
    goto LABEL_26;
  }

  v48 = v12;
  v23 = 1;
  while (1)
  {
    v24 = objc_msgSend_length(stringCopy, v19, v20, v21, v22);
    v25 = v24 - v14;
    v27 = objc_msgSend_rangeOfString_options_range_(stringCopy, v26, @"__AXTTS_SHIELDS_UP__", 2, v14, v24 - v14);
    v29 = v28;
    v30 = objc_msgSend_rangeOfString_options_range_(stringCopy, v28, @"__AXTTS_SHIELDS_DOWN__", 2, v14, v25);
    v31 = v27 == 0x7FFFFFFFFFFFFFFFLL || v27 > v30;
    v32 = v31;
    if (v30 == 0x7FFFFFFFFFFFFFFFLL || !v32)
    {
      break;
    }

    if (--v23)
    {
      v14 = &v19[v30];
      goto LABEL_20;
    }

    v14 = &v19[v30];
    v34 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v19, v13, &v19[v30 - v13], v22);
    objc_msgSend_addObject_(v48, v35, v34, v36, v37);

    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_24:
    if (v14 >= objc_msgSend_length(stringCopy, v19, v20, v21, v22))
    {
      goto LABEL_25;
    }
  }

  if (v23)
  {
    v33 = v13;
  }

  else
  {
    v33 = v27;
  }

  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++v23;
    v13 = v33;
    v14 = &v29[v27];
  }

LABEL_20:
  if (v27 != 0x7FFFFFFFFFFFFFFFLL || v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

LABEL_25:
  v38 = v23 == 0;
  v12 = v48;
  if (!v38)
  {
LABEL_26:
    v39 = MEMORY[0x1E696B098];
    v40 = objc_msgSend_length(stringCopy, v19, v20, v21, v22);
    v43 = objc_msgSend_valueWithRange_(v39, v41, v13, v40 - v13, v42);
    objc_msgSend_addObject_(v12, v44, v43, v45, v46);
  }

LABEL_27:

  return v12;
}

- (id)_computeActiveRanges:(id)ranges withIgnoreRanges:(id)ignoreRanges
{
  v54 = *MEMORY[0x1E69E9840];
  ignoreRangesCopy = ignoreRanges;
  v10 = objc_msgSend_mutableCopy(ranges, v6, v7, v8, v9);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = ignoreRangesCopy;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v49, v53, 16);
  if (v48)
  {
    v47 = *v50;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v17 = objc_msgSend_rangeValue(*(*(&v49 + 1) + 8 * i), length, v13, v14, v15);
        v19 = v18;
        if (objc_msgSend_count(v10, v18, v20, v21, v22))
        {
          v23 = 0;
          v24 = v19 + v17;
          while (1)
          {
            v25 = objc_msgSend_objectAtIndexedSubscript_(v10, length, v23, v14, v15);
            v30 = objc_msgSend_rangeValue(v25, v26, v27, v28, v29);
            v32 = v31;

            v56.location = v30;
            v56.length = v32;
            v57.location = v17;
            v57.length = v19;
            v33 = NSIntersectionRange(v56, v57);
            length = v33.length;
            if (v30 >= v24)
            {
              goto LABEL_23;
            }

            if (!v33.length)
            {
              goto LABEL_21;
            }

            v34 = v17 - v30;
            if (v17 > v30)
            {
              break;
            }

            if (v33.location != v30 || v32 != v33.length)
            {
              objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v33.length, v19 + v17, v30 + v32 - v24, v15);
              v41 = LABEL_20:;
              objc_msgSend_setObject_atIndexedSubscript_(v10, v42, v41, v23, v43);

LABEL_21:
              ++v23;
              goto LABEL_22;
            }

            objc_msgSend_removeObjectAtIndex_(v10, v33.length, v23, v34, v15);
LABEL_22:
            if (v23 >= objc_msgSend_count(v10, length, v13, v14, v15))
            {
              goto LABEL_23;
            }
          }

          if (v33.location == v17 && v33.length == v19)
          {
            v35 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v33.length, v30, v34, v15);
            objc_msgSend_setObject_atIndexedSubscript_(v10, v36, v35, v23, v37);

            v14 = v32 + v30 - v24;
            if (v32 + v30 != v24)
            {
              v38 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], length, v19 + v17, v14, v15);
              objc_msgSend_insertObject_atIndex_(v10, v39, v38, ++v23, v40);
            }

            goto LABEL_22;
          }

          objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v33.length, v30, v32 - v33.length, v15);
          goto LABEL_20;
        }

LABEL_23:
        ;
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, length, &v49, v53, 16);
    }

    while (v48);
  }

  v44 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_processSpeechString:(id)string startingAt:(unint64_t)at currentRecursionDepth:(unint64_t)depth
{
  v244 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v13 = objc_msgSend_ruleCount(self, v9, v10, v11, v12);
  v18 = objc_msgSend_unsignedLongValue(v13, v14, v15, v16, v17);

  if (v18 > at)
  {
    depthCopy = depth;
    v214 = stringCopy;
    v23 = objc_msgSend_transformedString(stringCopy, v19, v20, v21, v22);
    v27 = objc_msgSend__ignoreRangesForString_(self, v24, v23, v25, v26);
    v28 = v23;
    v221 = objc_msgSend_cStringUsingEncoding_(v28, v29, 4, v30, v31);
    v209 = v23;
    v222 = objc_msgSend_lengthOfBytesUsingEncoding_(v23, v32, 4, v33, v34);
    v208 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38);
    v43 = objc_msgSend_ruleCount(self, v39, v40, v41, v42);
    atCopy = at;
    iterations = objc_msgSend_unsignedLongValue(v43, v44, v45, v46, v47) - at;

    v219 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v48, v49, v50, v51);
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    obj = objc_msgSend_ruleSets(self, v52, v53, v54, v55);
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v237, v243, 16);
    selfCopy = self;
    if (v57)
    {
      v61 = v57;
      v62 = *v238;
      v63 = 0x1E696B000uLL;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v238 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v237 + 1) + 8 * i);
          v66 = objc_msgSend_valueWithPointer_(*(v63 + 152), v58, v65, v59, v60);
          v71 = objc_msgSend_array(MEMORY[0x1E695DF70], v67, v68, v69, v70);
          v76 = objc_msgSend_activationRegex(v65, v72, v73, v74, v75);

          if (v76)
          {
            v81 = objc_msgSend_activationRegex(v65, v77, v78, v79, v80);
            v235[0] = MEMORY[0x1E69E9820];
            v235[1] = 3221225472;
            v235[2] = sub_1A93498E8;
            v235[3] = &unk_1E7880328;
            v82 = v71;
            v236 = v82;
            objc_msgSend_enumerateMatchesInCString_length_usingBlock_(v81, v83, v221, v222, v235);

            v84 = v236;
          }

          else
          {
            v84 = objc_msgSend_valueWithRange_(*(v63 + 152), v77, 0, v222, v80);
            v242 = v84;
            objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, &v242, 1, v86);
            v88 = v87 = v27;
            v82 = objc_msgSend_mutableCopy(v88, v89, v90, v91, v92);

            v27 = v87;
            self = selfCopy;
          }

          v95 = objc_msgSend__computeActiveRanges_withIgnoreRanges_(self, v93, v82, v27, v94);
          objc_msgSend_setObject_forKeyedSubscript_(v219, v96, v95, v66, v97);

          v63 = 0x1E696B000;
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v237, v243, 16);
      }

      while (v61);
    }

    v102 = objc_msgSend_regexExecutionQueue(self, v98, v99, v100, v101);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9349958;
    block[3] = &unk_1E78804A8;
    block[4] = self;
    v232 = atCopy;
    v103 = v219;
    v229 = v103;
    v233 = v222;
    v234 = v221;
    v220 = v209;
    v230 = v220;
    v104 = v208;
    v231 = v104;
    dispatch_apply(iterations, v102, block);

    if (!objc_msgSend_count(v104, v105, v106, v107, v108))
    {
      v126 = AXTTSLogCommon();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
      {
        sub_1A9578824(depthCopy, v126, v127, v128, v129);
      }

      stringCopy = v214;
      v125 = v214;
      goto LABEL_42;
    }

    objc_msgSend_sortUsingComparator_(v104, v109, &unk_1F1CEFCF8, v110, v111);
    v115 = objc_msgSend_indexOfObjectPassingTest_(v104, v112, &unk_1F1CEFD18, v113, v114);
    v206 = v27;
    obja = v103;
    v212 = v104;
    if (v115 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v119 = v214;
      if (depthCopy <= 0x31)
      {
        v143 = v104;
        v210 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }

      v120 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v130 = v115;
      v131 = objc_msgSend_objectAtIndexedSubscript_(v104, v116, v115, v117, v118);
      v136 = objc_msgSend_ruleReplacement(v131, v132, v133, v134, v135);
      v120 = objc_msgSend_effectiveIndex(v136, v137, v138, v139, v140);

      v119 = v214;
      if (depthCopy < 0x32)
      {
        v144 = objc_msgSend_subarrayWithRange_(v104, v141, 0, v130, v142);
        v227[0] = MEMORY[0x1E69E9820];
        v227[1] = 3221225472;
        v227[2] = sub_1A9349D50;
        v227[3] = &unk_1E7880508;
        v210 = v120;
        v227[4] = v120;
        v148 = objc_msgSend_ax_filteredArrayUsingBlock_(v104, v145, v227, v146, v147);
        v143 = objc_msgSend_arrayByAddingObjectsFromArray_(v144, v149, v148, v150, v151);

        goto LABEL_26;
      }
    }

    v210 = v120;
    v143 = v104;
LABEL_26:
    v152 = [TTSSpeechString alloc];
    v156 = objc_msgSend_initWithParentSpeechString_(v152, v153, v119, v154, v155);
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v226 = 0u;
    v217 = v143;
    v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v157, &v223, v241, 16);
    if (v158)
    {
      v160 = v158;
      v161 = *v224;
      do
      {
        for (j = 0; j != v160; ++j)
        {
          if (*v224 != v161)
          {
            objc_enumerationMutation(v217);
          }

          v163 = *(*(&v223 + 1) + 8 * j);
          v164 = objc_msgSend__processTemplateReplacementTextForText_replacement_cString_(selfCopy, v159, v220, v163, v221);
          v169 = objc_msgSend_match(v163, v165, v166, v167, v168);
          v174 = objc_msgSend_utf8Range(v169, v170, v171, v172, v173);
          v176 = objc_msgSend_utf16RangeFromUTF8Range_chars_size_(TTSUnicodeUtils, v175, v174, v175, v221, v222);
          v178 = v177;

          v183 = objc_msgSend_matchLogger(selfCopy, v179, v180, v181, v182);

          if (v183)
          {
            v188 = objc_msgSend_matchLogger(selfCopy, v184, v185, v186, v187);
            v193 = objc_msgSend_originalString(v156, v189, v190, v191, v192);
            v198 = objc_msgSend_ruleReplacement(v163, v194, v195, v196, v197);
            (v188)[2](v188, v193, v176, v178, v164, v198);
          }

          objc_msgSend_transformRange_to_(v156, v184, v176, v178, v164);
        }

        v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v217, v159, &v223, v241, 16);
      }

      while (v160);
    }

    if (depthCopy > 0x31 || v210 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v200 = AXTTSLogCommon();
      v104 = v212;
      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
      {
        sub_1A9578824(depthCopy, v200, v201, v202, v203);
      }

      v125 = v156;
      stringCopy = v214;
    }

    else
    {
      v125 = objc_msgSend__processSpeechString_startingAt_currentRecursionDepth_(selfCopy, v199, v156, v210 + 1, depthCopy + 1);
      stringCopy = v214;
      v104 = v212;
    }

    v27 = v206;
    v103 = obja;
LABEL_42:

    goto LABEL_43;
  }

  v121 = AXTTSLogCommon();
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9578824(depth, v121, v122, v123, v124);
  }

  v125 = stringCopy;
LABEL_43:

  v204 = *MEMORY[0x1E69E9840];

  return v125;
}

- (id)_processTemplateReplacementTextForText:(id)text replacement:(id)replacement cString:(const char *)string
{
  v125 = *MEMORY[0x1E69E9840];
  replacementCopy = replacement;
  v9 = objc_msgSend_replacement(replacementCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_sharedInstance(TTSRegexCache, v15, v16, v17, v18);
  v22 = objc_msgSend_regexForString_atStart_(v19, v20, @"\\$(?<num>\\d+)(?=\\D|$)|(\\$\\{(?<numbrack>\\d+)\\})", 0, v21);

  v27 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24, v25, v26);
  v32 = objc_msgSend_length(v14, v28, v29, v30, v31);
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = sub_1A934A118;
  v121[3] = &unk_1E7880530;
  v33 = v14;
  v122 = v33;
  v34 = v27;
  v123 = v34;
  v111 = v22;
  objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(v22, v35, v33, 2, 0, v32, v121);
  v116 = v34;
  v40 = objc_msgSend_allKeys(v34, v36, v37, v38, v39);
  v44 = objc_msgSend_sortedArrayUsingComparator_(v40, v41, &unk_1F1CEFD38, v42, v43);

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v44;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v117, v124, 16);
  if (v46)
  {
    v50 = v46;
    v115 = *v118;
    v51 = replacementCopy;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        v53 = v33;
        if (*v118 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v117 + 1) + 8 * i);
        v55 = objc_msgSend_objectForKeyedSubscript_(v116, v47, v54, v48, v49);
        v60 = objc_msgSend_unsignedLongValue(v55, v56, v57, v58, v59) - 1;

        v65 = objc_msgSend_rangeValue(v54, v61, v62, v63, v64);
        v67 = v66;
        v71 = objc_msgSend_match(v51, v66, v68, v69, v70);
        v76 = objc_msgSend_captureGroups(v71, v72, v73, v74, v75);
        v81 = objc_msgSend_count(v76, v77, v78, v79, v80);

        if (v60 >= v81)
        {
          v107 = &stru_1F1CFF8D8;
          objc_msgSend_stringByReplacingCharactersInRange_withString_(v53, v82, v65, v67, &stru_1F1CFF8D8);
        }

        else
        {
          v86 = objc_msgSend_match(v51, v82, v83, v84, v85);
          v91 = objc_msgSend_captureGroups(v86, v87, v88, v89, v90);
          v95 = objc_msgSend_objectAtIndex_(v91, v92, v60, v93, v94);
          v100 = objc_msgSend_utf8Range(v95, v96, v97, v98, v99);
          v102 = v101;

          if (v102)
          {
            v104 = v100 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v104 = 1;
          }

          if (v104)
          {
            v107 = &stru_1F1CFF8D8;
          }

          else
          {
            v105 = objc_alloc(MEMORY[0x1E696AEC0]);
            v107 = objc_msgSend_initWithBytes_length_encoding_(v105, v106, &string[v100], v102, 4);
          }

          v51 = replacementCopy;
          objc_msgSend_stringByReplacingCharactersInRange_withString_(v53, v103, v65, v67, v107);
        }
        v33 = ;
      }

      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v117, v124, 16);
    }

    while (v50);
  }

  else
  {
    v51 = replacementCopy;
  }

  v108 = v33;
  v109 = *MEMORY[0x1E69E9840];
  return v33;
}

@end