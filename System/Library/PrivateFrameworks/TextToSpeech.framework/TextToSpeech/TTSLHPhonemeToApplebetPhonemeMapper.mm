@interface TTSLHPhonemeToApplebetPhonemeMapper
+ (id)_initializeRules;
+ (id)_leftRaisingContextRule;
+ (id)_phonemeArray:(id)a3;
+ (id)_phonemeRules;
+ (id)_phonoMatch:(id)a3 match:(id)a4 matchpos:(int)a5 count:(int)a6;
+ (id)_phonoTranslation:(id)a3;
+ (id)_retrieveRegularExpression:(id)a3;
+ (id)_rightRaisingContextRule;
+ (id)_uberLeftRaisingContextRule;
+ (id)_uberRightRaisingContextRule;
+ (id)_uberUberRightRaisingContextRule;
+ (id)_uberUberUberRightRaisingContextRule;
+ (id)convertLHToApplebet:(id)a3;
@end

@implementation TTSLHPhonemeToApplebetPhonemeMapper

+ (id)_retrieveRegularExpression:(id)a3
{
  v3 = a3;
  if (qword_1EB391090 != -1)
  {
    sub_1A957910C();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1A935C5D8;
  v21 = sub_1A935C5E8;
  v22 = 0;
  v14[1] = MEMORY[0x1E69E9820];
  v14[2] = 3221225472;
  v14[3] = sub_1A935C5F0;
  v14[4] = &unk_1E7880B80;
  v16 = &v17;
  v4 = v3;
  v15 = v4;
  AX_PERFORM_WITH_LOCK();
  v6 = v18[5];
  if (!v6)
  {
    v14[0] = 0;
    v7 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v5, v4, 0, v14);
    v8 = v14[0];
    v9 = v18[5];
    v18[5] = v7;

    if (v8)
    {
      v10 = AXTTSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A9579120(v8, v10);
      }
    }

    else
    {
      v13 = v4;
      AX_PERFORM_WITH_LOCK();
      v10 = v13;
    }

    v6 = v18[5];
  }

  v11 = v6;

  _Block_object_dispose(&v17, 8);

  return v11;
}

+ (id)_phonoMatch:(id)a3 match:(id)a4 matchpos:(int)a5 count:(int)a6
{
  LODWORD(v6) = a5;
  v61 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v53 = a4;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v53;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v56, v60, 16);
  if (v18)
  {
    v19 = *v57;
    while (2)
    {
      v20 = 0;
      v6 = v6;
      do
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * v20);
        v22 = objc_msgSend_objectAtIndexedSubscript_(v55, v15, v6, v16, v17);
        v27 = objc_msgSend_phoneme(v22, v23, v24, v25, v26);

        v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, @"^%@\\d?$", v29, v30, v21);
        v35 = objc_msgSend__retrieveRegularExpression_(a1, v32, v31, v33, v34);

        v40 = objc_msgSend_length(v27, v36, v37, v38, v39);
        v42 = objc_msgSend_firstMatchInString_options_range_(v35, v41, v27, 0, 0, v40);
        if ((objc_msgSend_isEqualToString_(v21, v43, @"()", v44, v45) & 1) == 0 && (!v42 || objc_msgSend_range(v42, v46, v47, v48, v49) == 0x7FFFFFFFFFFFFFFFLL))
        {

          v50 = 0;
          goto LABEL_13;
        }

        objc_msgSend_addObject_(v13, v46, v27, v48, v49);

        ++v20;
        ++v6;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v56, v60, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v50 = v13;
LABEL_13:

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

+ (id)_phonemeArray:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v72 = a3;
  v8 = objc_msgSend_mutableCopy(v72, v4, v5, v6, v7);
  v73 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12);
LABEL_2:
  if (objc_msgSend_length(v8, v13, v14, v15, v16))
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1D0F8A0, v17, &v74, v78, 16);
    if (v21)
    {
      v22 = *v75;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v75 != v22)
          {
            objc_enumerationMutation(&unk_1F1D0F8A0);
          }

          v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"^%@", v19, v20, *(*(&v74 + 1) + 8 * i));
          v28 = objc_msgSend__retrieveRegularExpression_(a1, v25, v24, v26, v27);

          v33 = objc_msgSend_length(v8, v29, v30, v31, v32);
          v35 = objc_msgSend_firstMatchInString_options_range_(v28, v34, v8, 0, 0, v33);
          v40 = v35;
          if (v35)
          {
            v41 = objc_msgSend_range(v35, v36, v37, v38, v39);
            v44 = objc_msgSend_substringWithRange_(v8, v42, v41, v42, v43);
            v45 = [TTSApplebetMapperPhonemeInfo alloc];
            v50 = objc_msgSend_init(v45, v46, v47, v48, v49);

            objc_msgSend_setStartTime_(v50, v51, &unk_1F1D0F828, v52, v53);
            objc_msgSend_setEndTime_(v50, v54, &unk_1F1D0F828, v55, v56);
            objc_msgSend_setPhoneme_(v50, v57, v44, v58, v59);
            objc_msgSend_addObject_(v73, v60, v50, v61, v62);
            v67 = objc_msgSend_range(v40, v63, v64, v65, v66);
            objc_msgSend_replaceCharactersInRange_withString_(v8, v68, v67, v68, &stru_1F1CFF8D8);

            goto LABEL_2;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1D0F8A0, v18, &v74, v78, 16);
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v69 = v73;
  }

  else
  {
    v69 = v73;
    v21 = v73;
  }

  v70 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_phonemeRules
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A935CCDC;
  block[3] = &unk_1E7880300;
  block[4] = a1;
  if (qword_1EB3910A8 != -1)
  {
    dispatch_once(&qword_1EB3910A8, block);
  }

  v2 = qword_1EB3910A0;

  return v2;
}

+ (id)_rightRaisingContextRule
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"^%@", v2, v3, @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))");
  v9 = objc_msgSend__retrieveRegularExpression_(a1, v6, v5, v7, v8);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935CE34;
  aBlock[3] = &unk_1E7880BC8;
  v15 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);

  return v12;
}

+ (id)_uberRightRaisingContextRule
{
  v5 = objc_msgSend__retrieveRegularExpression_(a1, a2, @"[h.']", v2, v3);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"^%@", v7, v8, @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))");
  v13 = objc_msgSend__retrieveRegularExpression_(a1, v10, v9, v11, v12);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D05C;
  aBlock[3] = &unk_1E7880BF0;
  v20 = v5;
  v21 = v13;
  v14 = v13;
  v15 = v5;
  v16 = _Block_copy(aBlock);
  v17 = _Block_copy(v16);

  return v17;
}

+ (id)_uberUberRightRaisingContextRule
{
  v5 = objc_msgSend__retrieveRegularExpression_(a1, a2, @"['h]", v2, v3);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"^%@$", v7, v8, @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))");
  v13 = objc_msgSend__retrieveRegularExpression_(a1, v10, v9, v11, v12);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D328;
  aBlock[3] = &unk_1E7880BF0;
  v20 = v5;
  v21 = v13;
  v14 = v13;
  v15 = v5;
  v16 = _Block_copy(aBlock);
  v17 = _Block_copy(v16);

  return v17;
}

+ (id)_uberUberUberRightRaisingContextRule
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"^%@$", v2, v3, @"((t)|(d)|(n)|(T)|(D)|(s)|(z)|(S)|(Z)|(t&S)|(d&Z)|(j)|(i)|(I))");
  v9 = objc_msgSend__retrieveRegularExpression_(a1, v6, v5, v7, v8);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D5C0;
  aBlock[3] = &unk_1E7880BC8;
  v15 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);

  return v12;
}

+ (id)_leftRaisingContextRule
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"^%@$", v2, v3, @"((i)|(I)|(e&I)|(a&I)|(O&I)|(n)|(j)|(s)|(z))");
  v9 = objc_msgSend__retrieveRegularExpression_(a1, v6, v5, v7, v8);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D7B4;
  aBlock[3] = &unk_1E7880BC8;
  v15 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);

  return v12;
}

+ (id)_uberLeftRaisingContextRule
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"^%@$", v2, v3, @"((i)|(I)|(e&I)|(a&I)|(O&I)|(n)|(j)|(s)|(z))");
  v9 = objc_msgSend__retrieveRegularExpression_(a1, v6, v5, v7, v8);

  v13 = objc_msgSend__retrieveRegularExpression_(a1, v10, @"[.]", v11, v12);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A935D9DC;
  aBlock[3] = &unk_1E7880BF0;
  v20 = v9;
  v21 = v13;
  v14 = v13;
  v15 = v9;
  v16 = _Block_copy(aBlock);
  v17 = _Block_copy(v16);

  return v17;
}

+ (id)_initializeRules
{
  v6 = MEMORY[0x1E695E0F0];
  v662[70] = *MEMORY[0x1E69E9840];
  v661[0] = MEMORY[0x1E695E0F0];
  v661[1] = &unk_1F1D0F8B8;
  v661[2] = MEMORY[0x1E695E0F0];
  v591 = objc_msgSend__acceptRule(a1, a2, v2, v3, v4);
  v661[3] = v591;
  v661[4] = &unk_1F1D0F8D0;
  v590 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v661, 5, v8);
  v662[0] = v590;
  v660[0] = v6;
  v660[1] = &unk_1F1D0F8E8;
  v660[2] = v6;
  v589 = objc_msgSend__acceptRule(a1, v9, v10, v11, v12);
  v660[3] = v589;
  v660[4] = &unk_1F1D0F900;
  v588 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v660, 5, v14);
  v662[1] = v588;
  v659[0] = v6;
  v659[1] = &unk_1F1D0F918;
  v659[2] = v6;
  v587 = objc_msgSend__acceptRule(a1, v15, v16, v17, v18);
  v659[3] = v587;
  v659[4] = &unk_1F1D0F930;
  v586 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v659, 5, v20);
  v662[2] = v586;
  v658[0] = v6;
  v658[1] = &unk_1F1D0F948;
  v658[2] = v6;
  v585 = objc_msgSend__acceptRule(a1, v21, v22, v23, v24);
  v658[3] = v585;
  v658[4] = &unk_1F1D0F960;
  v584 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v658, 5, v26);
  v662[3] = v584;
  v657[0] = v6;
  v657[1] = &unk_1F1D0F978;
  v657[2] = v6;
  v583 = objc_msgSend__acceptRule(a1, v27, v28, v29, v30);
  v657[3] = v583;
  v657[4] = &unk_1F1D0F990;
  v582 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v657, 5, v32);
  v662[4] = v582;
  v656[0] = v6;
  v656[1] = &unk_1F1D0F9A8;
  v656[2] = v6;
  v581 = objc_msgSend__acceptRule(a1, v33, v34, v35, v36);
  v656[3] = v581;
  v656[4] = &unk_1F1D0F9C0;
  v580 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v656, 5, v38);
  v662[5] = v580;
  v655[0] = v6;
  v655[1] = &unk_1F1D0F9D8;
  v655[2] = v6;
  v579 = objc_msgSend__acceptRule(a1, v39, v40, v41, v42);
  v655[3] = v579;
  v655[4] = &unk_1F1D0F9F0;
  v578 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v43, v655, 5, v44);
  v662[6] = v578;
  v654[0] = v6;
  v654[1] = &unk_1F1D0FA08;
  v654[2] = v6;
  v577 = objc_msgSend__acceptRule(a1, v45, v46, v47, v48);
  v654[3] = v577;
  v654[4] = &unk_1F1D0FA20;
  v576 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v49, v654, 5, v50);
  v662[7] = v576;
  v653[0] = v6;
  v653[1] = &unk_1F1D0FA38;
  v653[2] = v6;
  v575 = objc_msgSend__acceptRule(a1, v51, v52, v53, v54);
  v653[3] = v575;
  v653[4] = &unk_1F1D0FA50;
  v574 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v55, v653, 5, v56);
  v662[8] = v574;
  v652[0] = v6;
  v652[1] = &unk_1F1D0FA68;
  v652[2] = &unk_1F1D0FA80;
  v573 = objc_msgSend__acceptRule(a1, v57, v58, v59, v60);
  v652[3] = v573;
  v652[4] = &unk_1F1D0FA98;
  v572 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, v652, 5, v62);
  v662[9] = v572;
  v651[0] = v6;
  v651[1] = &unk_1F1D0FAB0;
  v651[2] = &unk_1F1D0FAC8;
  v571 = objc_msgSend__acceptRule(a1, v63, v64, v65, v66);
  v651[3] = v571;
  v651[4] = &unk_1F1D0FAE0;
  v570 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v67, v651, 5, v68);
  v662[10] = v570;
  v650[0] = v6;
  v650[1] = &unk_1F1D0FAF8;
  v650[2] = &unk_1F1D0FB10;
  v569 = objc_msgSend__acceptRule(a1, v69, v70, v71, v72);
  v650[3] = v569;
  v650[4] = &unk_1F1D0FB28;
  v568 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v73, v650, 5, v74);
  v662[11] = v568;
  v649[0] = v6;
  v649[1] = &unk_1F1D0FB40;
  v649[2] = &unk_1F1D0FB58;
  v567 = objc_msgSend__acceptRule(a1, v75, v76, v77, v78);
  v649[3] = v567;
  v649[4] = &unk_1F1D0FB70;
  v566 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v79, v649, 5, v80);
  v662[12] = v566;
  v648[0] = v6;
  v648[1] = &unk_1F1D0FB88;
  v648[2] = &unk_1F1D0FBA0;
  v565 = objc_msgSend__acceptRule(a1, v81, v82, v83, v84);
  v648[3] = v565;
  v648[4] = &unk_1F1D0FBB8;
  v564 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, v648, 5, v86);
  v662[13] = v564;
  v647[0] = v6;
  v647[1] = &unk_1F1D0FBD0;
  v647[2] = v6;
  v563 = objc_msgSend__acceptRule(a1, v87, v88, v89, v90);
  v647[3] = v563;
  v647[4] = &unk_1F1D0FBE8;
  v562 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, v647, 5, v92);
  v662[14] = v562;
  v646[0] = v6;
  v646[1] = &unk_1F1D0FC00;
  v646[2] = &unk_1F1D0FC18;
  v561 = objc_msgSend__acceptRule(a1, v93, v94, v95, v96);
  v646[3] = v561;
  v646[4] = &unk_1F1D0FC30;
  v560 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v97, v646, 5, v98);
  v662[15] = v560;
  v645[0] = v6;
  v645[1] = &unk_1F1D0FC48;
  v645[2] = &unk_1F1D0FC60;
  v559 = objc_msgSend__rightRaisingContextRule(a1, v99, v100, v101, v102);
  v645[3] = v559;
  v645[4] = &unk_1F1D0FC78;
  v558 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v103, v645, 5, v104);
  v662[16] = v558;
  v644[0] = v6;
  v644[1] = &unk_1F1D0FC90;
  v644[2] = &unk_1F1D0FCA8;
  v557 = objc_msgSend__uberRightRaisingContextRule(a1, v105, v106, v107, v108);
  v644[3] = v557;
  v644[4] = &unk_1F1D0FCC0;
  v556 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v109, v644, 5, v110);
  v662[17] = v556;
  v643[0] = v6;
  v643[1] = &unk_1F1D0FCD8;
  v643[2] = &unk_1F1D0FCF0;
  v555 = objc_msgSend__uberUberRightRaisingContextRule(a1, v111, v112, v113, v114);
  v643[3] = v555;
  v643[4] = &unk_1F1D0FD08;
  v554 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v115, v643, 5, v116);
  v662[18] = v554;
  v642[0] = v6;
  v642[1] = &unk_1F1D0FD20;
  v642[2] = &unk_1F1D0FD38;
  v553 = objc_msgSend__uberUberUberRightRaisingContextRule(a1, v117, v118, v119, v120);
  v642[3] = v553;
  v642[4] = &unk_1F1D0FD50;
  v552 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v121, v642, 5, v122);
  v662[19] = v552;
  v641[0] = &unk_1F1D0FD68;
  v641[1] = &unk_1F1D0FD80;
  v641[2] = &unk_1F1D0FD98;
  v551 = objc_msgSend__leftRaisingContextRule(a1, v123, v124, v125, v126);
  v641[3] = v551;
  v641[4] = &unk_1F1D0FDB0;
  v550 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v127, v641, 5, v128);
  v662[20] = v550;
  v640[0] = &unk_1F1D0FDC8;
  v640[1] = &unk_1F1D0FDE0;
  v640[2] = &unk_1F1D0FDF8;
  v549 = objc_msgSend__uberLeftRaisingContextRule(a1, v129, v130, v131, v132);
  v640[3] = v549;
  v640[4] = &unk_1F1D0FE10;
  v548 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v133, v640, 5, v134);
  v662[21] = v548;
  v639[0] = v6;
  v639[1] = &unk_1F1D0FE28;
  v639[2] = v6;
  v547 = objc_msgSend__acceptRule(a1, v135, v136, v137, v138);
  v639[3] = v547;
  v639[4] = &unk_1F1D0FE40;
  v546 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v139, v639, 5, v140);
  v662[22] = v546;
  v638[0] = v6;
  v638[1] = &unk_1F1D0FE58;
  v638[2] = v6;
  v545 = objc_msgSend__acceptRule(a1, v141, v142, v143, v144);
  v638[3] = v545;
  v638[4] = &unk_1F1D0FE70;
  v544 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v145, v638, 5, v146);
  v662[23] = v544;
  v637[0] = v6;
  v637[1] = &unk_1F1D0FE88;
  v637[2] = v6;
  v543 = objc_msgSend__acceptRule(a1, v147, v148, v149, v150);
  v637[3] = v543;
  v637[4] = &unk_1F1D0FEA0;
  v542 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v151, v637, 5, v152);
  v662[24] = v542;
  v636[0] = v6;
  v636[1] = &unk_1F1D0FEB8;
  v636[2] = v6;
  v541 = objc_msgSend__acceptRule(a1, v153, v154, v155, v156);
  v636[3] = v541;
  v636[4] = &unk_1F1D0FED0;
  v540 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v157, v636, 5, v158);
  v662[25] = v540;
  v635[0] = v6;
  v635[1] = &unk_1F1D0FEE8;
  v635[2] = v6;
  v539 = objc_msgSend__acceptRule(a1, v159, v160, v161, v162);
  v635[3] = v539;
  v635[4] = &unk_1F1D0FF00;
  v538 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v163, v635, 5, v164);
  v662[26] = v538;
  v634[0] = v6;
  v634[1] = &unk_1F1D0FF18;
  v537 = objc_msgSend_null(MEMORY[0x1E695DFB0], v165, v166, v167, v168);
  v634[2] = v537;
  v536 = objc_msgSend__acceptRule(a1, v169, v170, v171, v172);
  v634[3] = v536;
  v634[4] = &unk_1F1D0FF30;
  v535 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v173, v634, 5, v174);
  v662[27] = v535;
  v633[0] = v6;
  v633[1] = &unk_1F1D0FF48;
  v534 = objc_msgSend_null(MEMORY[0x1E695DFB0], v175, v176, v177, v178);
  v633[2] = v534;
  v533 = objc_msgSend__acceptRule(a1, v179, v180, v181, v182);
  v633[3] = v533;
  v633[4] = &unk_1F1D0FF60;
  v532 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v183, v633, 5, v184);
  v662[28] = v532;
  v632[0] = v6;
  v632[1] = &unk_1F1D0FF78;
  v531 = objc_msgSend_null(MEMORY[0x1E695DFB0], v185, v186, v187, v188);
  v632[2] = v531;
  v530 = objc_msgSend__acceptRule(a1, v189, v190, v191, v192);
  v632[3] = v530;
  v632[4] = &unk_1F1D0FF90;
  v529 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v193, v632, 5, v194);
  v662[29] = v529;
  v631[0] = v6;
  v631[1] = &unk_1F1D0FFA8;
  v528 = objc_msgSend_null(MEMORY[0x1E695DFB0], v195, v196, v197, v198);
  v631[2] = v528;
  v527 = objc_msgSend__acceptRule(a1, v199, v200, v201, v202);
  v631[3] = v527;
  v631[4] = &unk_1F1D0FFC0;
  v526 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v203, v631, 5, v204);
  v662[30] = v526;
  v630[0] = v6;
  v630[1] = &unk_1F1D0FFD8;
  v630[2] = v6;
  v525 = objc_msgSend__acceptRule(a1, v205, v206, v207, v208);
  v630[3] = v525;
  v630[4] = &unk_1F1D0FFF0;
  v524 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v209, v630, 5, v210);
  v662[31] = v524;
  v629[0] = v6;
  v629[1] = &unk_1F1D10008;
  v629[2] = v6;
  v523 = objc_msgSend__acceptRule(a1, v211, v212, v213, v214);
  v629[3] = v523;
  v629[4] = &unk_1F1D10020;
  v522 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v215, v629, 5, v216);
  v662[32] = v522;
  v628[0] = v6;
  v628[1] = &unk_1F1D10038;
  v628[2] = v6;
  v521 = objc_msgSend__acceptRule(a1, v217, v218, v219, v220);
  v628[3] = v521;
  v628[4] = &unk_1F1D10050;
  v520 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v221, v628, 5, v222);
  v662[33] = v520;
  v627[0] = v6;
  v627[1] = &unk_1F1D10068;
  v627[2] = v6;
  v519 = objc_msgSend__acceptRule(a1, v223, v224, v225, v226);
  v627[3] = v519;
  v627[4] = &unk_1F1D10080;
  v518 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v227, v627, 5, v228);
  v662[34] = v518;
  v626[0] = v6;
  v626[1] = &unk_1F1D10098;
  v626[2] = v6;
  v517 = objc_msgSend__acceptRule(a1, v229, v230, v231, v232);
  v626[3] = v517;
  v626[4] = &unk_1F1D100B0;
  v516 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v233, v626, 5, v234);
  v662[35] = v516;
  v625[0] = v6;
  v625[1] = &unk_1F1D100C8;
  v625[2] = v6;
  v515 = objc_msgSend__acceptRule(a1, v235, v236, v237, v238);
  v625[3] = v515;
  v625[4] = &unk_1F1D100E0;
  v514 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v239, v625, 5, v240);
  v662[36] = v514;
  v624[0] = v6;
  v624[1] = &unk_1F1D100F8;
  v624[2] = v6;
  v513 = objc_msgSend__acceptRule(a1, v241, v242, v243, v244);
  v624[3] = v513;
  v624[4] = &unk_1F1D10110;
  v512 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v245, v624, 5, v246);
  v662[37] = v512;
  v623[0] = v6;
  v623[1] = &unk_1F1D10128;
  v623[2] = v6;
  v511 = objc_msgSend__acceptRule(a1, v247, v248, v249, v250);
  v623[3] = v511;
  v623[4] = &unk_1F1D10140;
  v510 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v251, v623, 5, v252);
  v662[38] = v510;
  v622[0] = v6;
  v622[1] = &unk_1F1D10158;
  v622[2] = v6;
  v509 = objc_msgSend__acceptRule(a1, v253, v254, v255, v256);
  v622[3] = v509;
  v622[4] = &unk_1F1D10170;
  v508 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v257, v622, 5, v258);
  v662[39] = v508;
  v621[0] = v6;
  v621[1] = &unk_1F1D10188;
  v621[2] = v6;
  v507 = objc_msgSend__acceptRule(a1, v259, v260, v261, v262);
  v621[3] = v507;
  v621[4] = &unk_1F1D101A0;
  v506 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v263, v621, 5, v264);
  v662[40] = v506;
  v620[0] = v6;
  v620[1] = &unk_1F1D101B8;
  v620[2] = v6;
  v505 = objc_msgSend__acceptRule(a1, v265, v266, v267, v268);
  v620[3] = v505;
  v620[4] = &unk_1F1D101D0;
  v504 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v269, v620, 5, v270);
  v662[41] = v504;
  v619[0] = v6;
  v619[1] = &unk_1F1D101E8;
  v619[2] = v6;
  v503 = objc_msgSend__acceptRule(a1, v271, v272, v273, v274);
  v619[3] = v503;
  v619[4] = &unk_1F1D10200;
  v502 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v275, v619, 5, v276);
  v662[42] = v502;
  v618[0] = v6;
  v618[1] = &unk_1F1D10218;
  v618[2] = v6;
  v501 = objc_msgSend__acceptRule(a1, v277, v278, v279, v280);
  v618[3] = v501;
  v618[4] = &unk_1F1D10230;
  v500 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v281, v618, 5, v282);
  v662[43] = v500;
  v617[0] = v6;
  v617[1] = &unk_1F1D10248;
  v617[2] = v6;
  v499 = objc_msgSend__acceptRule(a1, v283, v284, v285, v286);
  v617[3] = v499;
  v617[4] = &unk_1F1D10260;
  v498 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v287, v617, 5, v288);
  v662[44] = v498;
  v616[0] = v6;
  v616[1] = &unk_1F1D10278;
  v616[2] = v6;
  v497 = objc_msgSend__acceptRule(a1, v289, v290, v291, v292);
  v616[3] = v497;
  v616[4] = &unk_1F1D10290;
  v496 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v293, v616, 5, v294);
  v662[45] = v496;
  v615[0] = v6;
  v615[1] = &unk_1F1D102A8;
  v615[2] = v6;
  v495 = objc_msgSend__acceptRule(a1, v295, v296, v297, v298);
  v615[3] = v495;
  v615[4] = &unk_1F1D102C0;
  v494 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v299, v615, 5, v300);
  v662[46] = v494;
  v614[0] = v6;
  v614[1] = &unk_1F1D102D8;
  v614[2] = v6;
  v493 = objc_msgSend__acceptRule(a1, v301, v302, v303, v304);
  v614[3] = v493;
  v614[4] = &unk_1F1D102F0;
  v492 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v305, v614, 5, v306);
  v662[47] = v492;
  v613[0] = v6;
  v613[1] = &unk_1F1D10308;
  v613[2] = v6;
  v491 = objc_msgSend__acceptRule(a1, v307, v308, v309, v310);
  v613[3] = v491;
  v613[4] = &unk_1F1D10320;
  v490 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v311, v613, 5, v312);
  v662[48] = v490;
  v612[0] = v6;
  v612[1] = &unk_1F1D10338;
  v612[2] = v6;
  v489 = objc_msgSend__acceptRule(a1, v313, v314, v315, v316);
  v612[3] = v489;
  v612[4] = &unk_1F1D10350;
  v488 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v317, v612, 5, v318);
  v662[49] = v488;
  v611[0] = v6;
  v611[1] = &unk_1F1D10368;
  v611[2] = v6;
  v487 = objc_msgSend__acceptRule(a1, v319, v320, v321, v322);
  v611[3] = v487;
  v611[4] = &unk_1F1D10380;
  v486 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v323, v611, 5, v324);
  v662[50] = v486;
  v610[0] = v6;
  v610[1] = &unk_1F1D10398;
  v610[2] = v6;
  v485 = objc_msgSend__acceptRule(a1, v325, v326, v327, v328);
  v610[3] = v485;
  v610[4] = &unk_1F1D103B0;
  v484 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v329, v610, 5, v330);
  v662[51] = v484;
  v609[0] = v6;
  v609[1] = &unk_1F1D103C8;
  v609[2] = v6;
  v483 = objc_msgSend__acceptRule(a1, v331, v332, v333, v334);
  v609[3] = v483;
  v609[4] = &unk_1F1D103E0;
  v482 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v335, v609, 5, v336);
  v662[52] = v482;
  v608[0] = v6;
  v608[1] = &unk_1F1D103F8;
  v608[2] = v6;
  v481 = objc_msgSend__acceptRule(a1, v337, v338, v339, v340);
  v608[3] = v481;
  v608[4] = &unk_1F1D10410;
  v480 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v341, v608, 5, v342);
  v662[53] = v480;
  v607[0] = v6;
  v607[1] = &unk_1F1D10428;
  v607[2] = v6;
  v479 = objc_msgSend__acceptRule(a1, v343, v344, v345, v346);
  v607[3] = v479;
  v607[4] = &unk_1F1D10440;
  v478 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v347, v607, 5, v348);
  v662[54] = v478;
  v606[0] = v6;
  v606[1] = &unk_1F1D10458;
  v606[2] = v6;
  v477 = objc_msgSend__acceptRule(a1, v349, v350, v351, v352);
  v606[3] = v477;
  v606[4] = &unk_1F1D10470;
  v476 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v353, v606, 5, v354);
  v662[55] = v476;
  v605[0] = v6;
  v605[1] = &unk_1F1D10488;
  v605[2] = v6;
  v475 = objc_msgSend__acceptRule(a1, v355, v356, v357, v358);
  v605[3] = v475;
  v605[4] = &unk_1F1D104A0;
  v474 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v359, v605, 5, v360);
  v662[56] = v474;
  v604[0] = v6;
  v604[1] = &unk_1F1D104B8;
  v604[2] = v6;
  v473 = objc_msgSend__acceptRule(a1, v361, v362, v363, v364);
  v604[3] = v473;
  v604[4] = &unk_1F1D104D0;
  v472 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v365, v604, 5, v366);
  v662[57] = v472;
  v603[0] = v6;
  v603[1] = &unk_1F1D104E8;
  v603[2] = v6;
  v471 = objc_msgSend__acceptRule(a1, v367, v368, v369, v370);
  v603[3] = v471;
  v603[4] = &unk_1F1D10500;
  v470 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v371, v603, 5, v372);
  v662[58] = v470;
  v602[0] = v6;
  v602[1] = &unk_1F1D10518;
  v602[2] = v6;
  v469 = objc_msgSend__acceptRule(a1, v373, v374, v375, v376);
  v602[3] = v469;
  v602[4] = &unk_1F1D10530;
  v468 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v377, v602, 5, v378);
  v662[59] = v468;
  v601[0] = v6;
  v601[1] = &unk_1F1D10548;
  v601[2] = v6;
  v467 = objc_msgSend__acceptRule(a1, v379, v380, v381, v382);
  v601[3] = v467;
  v601[4] = &unk_1F1D10560;
  v466 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v383, v601, 5, v384);
  v662[60] = v466;
  v600[0] = v6;
  v600[1] = &unk_1F1D10578;
  v600[2] = v6;
  v465 = objc_msgSend__acceptRule(a1, v385, v386, v387, v388);
  v600[3] = v465;
  v600[4] = &unk_1F1D10590;
  v464 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v389, v600, 5, v390);
  v662[61] = v464;
  v599[0] = v6;
  v599[1] = &unk_1F1D105A8;
  v599[2] = v6;
  v463 = objc_msgSend__acceptRule(a1, v391, v392, v393, v394);
  v599[3] = v463;
  v599[4] = &unk_1F1D105C0;
  v462 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v395, v599, 5, v396);
  v662[62] = v462;
  v598[0] = v6;
  v598[1] = &unk_1F1D105D8;
  v598[2] = v6;
  v461 = objc_msgSend__acceptRule(a1, v397, v398, v399, v400);
  v598[3] = v461;
  v598[4] = &unk_1F1D105F0;
  v460 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v401, v598, 5, v402);
  v662[63] = v460;
  v597[0] = v6;
  v597[1] = &unk_1F1D10608;
  v597[2] = v6;
  v459 = objc_msgSend__acceptRule(a1, v403, v404, v405, v406);
  v597[3] = v459;
  v597[4] = &unk_1F1D10620;
  v458 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v407, v597, 5, v408);
  v662[64] = v458;
  v596[0] = v6;
  v596[1] = &unk_1F1D10638;
  v596[2] = v6;
  v457 = objc_msgSend__acceptRule(a1, v409, v410, v411, v412);
  v596[3] = v457;
  v596[4] = &unk_1F1D10650;
  v415 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v413, v596, 5, v414);
  v662[65] = v415;
  v595[0] = v6;
  v595[1] = &unk_1F1D10668;
  v595[2] = v6;
  v420 = objc_msgSend__acceptRule(a1, v416, v417, v418, v419);
  v595[3] = v420;
  v595[4] = &unk_1F1D10680;
  v423 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v421, v595, 5, v422);
  v662[66] = v423;
  v594[0] = v6;
  v594[1] = &unk_1F1D10698;
  v594[2] = v6;
  v428 = objc_msgSend__acceptRule(a1, v424, v425, v426, v427);
  v594[3] = v428;
  v594[4] = &unk_1F1D106B0;
  v431 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v429, v594, 5, v430);
  v662[67] = v431;
  v593[0] = v6;
  v593[1] = &unk_1F1D106C8;
  v593[2] = v6;
  v436 = objc_msgSend__acceptRule(a1, v432, v433, v434, v435);
  v593[3] = v436;
  v593[4] = &unk_1F1D106E0;
  v439 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v437, v593, 5, v438);
  v662[68] = v439;
  v592[0] = v6;
  v592[1] = &unk_1F1D106F8;
  v592[2] = v6;
  v444 = objc_msgSend__acceptRule(a1, v440, v441, v442, v443);
  v592[3] = v444;
  v592[4] = &unk_1F1D10710;
  v447 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v445, v592, 5, v446);
  v662[69] = v447;
  v456 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v448, v662, 70, v449);

  v453 = objc_msgSend_ax_mappedArrayUsingBlock_(v456, v450, &unk_1F1CF01B8, v451, v452);

  v454 = *MEMORY[0x1E69E9840];

  return v453;
}

+ (id)_phonoTranslation:(id)a3
{
  v206 = *MEMORY[0x1E69E9840];
  v196 = a3;
  v195 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7);
  v192 = a1;
  v189 = objc_msgSend__phonemeRules(a1, v8, v9, v10, v11);
  v199 = 0;
  while (objc_msgSend_count(v196, v12, v13, v14, v15, v189) > v199)
  {
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    obj = v189;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v201, v205, 16);
    if (!v17)
    {

      goto LABEL_43;
    }

    v22 = 0;
    v197 = v17;
    v198 = *v202;
    v200 = -1;
    do
    {
      for (i = 0; i != v197; ++i)
      {
        if (*v202 != v198)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v201 + 1) + 8 * i);
        v25 = objc_msgSend_left(v24, v18, v19, v20, v21);
        v30 = objc_msgSend_match(v24, v26, v27, v28, v29);
        v35 = objc_msgSend_right(v24, v31, v32, v33, v34);
        v40 = objc_msgSend_matchRule(v24, v36, v37, v38, v39);
        v45 = objc_msgSend_substitution(v24, v41, v42, v43, v44);
        objc_opt_class();
        ++v200;
        if (objc_opt_isKindOfClass())
        {
          if (v199 > 0)
          {
            goto LABEL_15;
          }
        }

        else if (objc_msgSend_count(v25, v46, v47, v48, v49) > v199)
        {
          goto LABEL_15;
        }

        v50 = objc_msgSend_count(v196, v46, v47, v48, v49);
        v59 = v50 - v199 - objc_msgSend_count(v30, v51, v52, v53, v54);
        if (v59 < 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (objc_msgSend_count(v35, v55, v56, v57, v58) > v59)
          {
LABEL_15:
            v60 = 1;
            goto LABEL_37;
          }
        }

        else if (v59)
        {
          goto LABEL_15;
        }

        v193 = objc_msgSend__phonoMatch_match_matchpos_count_(v192, v55, v196, v30, v199, v200);
        if (v193)
        {
          v65 = objc_msgSend_count(v25, v61, v62, v63, v64);
          v191 = objc_msgSend__phonoMatch_match_matchpos_count_(v192, v66, v196, v25, (v199 - v65), v200);
          if (v191)
          {
            v71 = objc_msgSend_count(v30, v67, v68, v69, v70);
            v73 = objc_msgSend__phonoMatch_match_matchpos_count_(v192, v72, v196, v35, (v199 + v71), v200);
            v190 = v73;
            if (v73 && ((v40)[2](v40, v191, v193, v73) & 1) != 0)
            {
              v77 = objc_msgSend_objectAtIndexedSubscript_(v196, v74, v199, v75, v76);
              v82 = objc_msgSend_startTime(v77, v78, v79, v80, v81);
              objc_msgSend_floatValue(v82, v83, v84, v85, v86);
              v88 = v87;

              v93 = objc_msgSend_count(v30, v89, v90, v91, v92);
              v97 = objc_msgSend_objectAtIndexedSubscript_(v196, v94, v199 + v93 - 1, v95, v96);
              v102 = objc_msgSend_endTime(v97, v98, v99, v100, v101);
              objc_msgSend_floatValue(v102, v103, v104, v105, v106);
              v108 = v107;

              v113 = objc_msgSend_count(v30, v109, v110, v111, v112);
              v122 = objc_msgSend_mutableCopy(v45, v114, v115, v116, v117);
              v123 = v108 - v88;
              v199 = (v199 + v113);
              v124 = v108 - v88;
              while (objc_msgSend_count(v122, v118, v119, v120, v121))
              {
                v129 = objc_msgSend_firstObject(v122, v125, v126, v127, v128);
                objc_msgSend_removeObjectAtIndex_(v122, v130, 0, v131, v132);
                if (objc_msgSend_count(v122, v133, v134, v135, v136))
                {
                  v141 = objc_msgSend_firstObject(v122, v137, v138, v139, v140);
                  objc_msgSend_floatValue(v141, v142, v143, v144, v145);
                  v147 = v146;

                  objc_msgSend_removeObjectAtIndex_(v122, v148, 0, v149, v150);
                }

                else
                {
                  v147 = 0.0;
                }

                if (objc_msgSend_count(v122, v137, v138, v139, v140))
                {
                  v151 = v123 * v147;
                }

                else
                {
                  v151 = v124;
                }

                v152 = [TTSApplebetMapperPhonemeInfo alloc];
                v157 = objc_msgSend_init(v152, v153, v154, v155, v156);

                *&v158 = v88;
                v163 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v159, v160, v161, v162, v158);
                objc_msgSend_setStartTime_(v157, v164, v163, v165, v166);

                v167 = v151 + 0.5;
                v88 = v88 + v167;
                *&v168 = v88;
                v173 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v169, v170, v171, v172, v168);
                objc_msgSend_setEndTime_(v157, v174, v173, v175, v176);

                objc_msgSend_setPhoneme_(v157, v177, v129, v178, v179);
                objc_msgSend_addObject_(v195, v180, v157, v181, v182);

                v124 = v124 - v167;
              }

              v60 = 0;
              v22 = 1;
            }

            else
            {
              v60 = 1;
            }
          }

          else
          {
            v60 = 1;
          }
        }

        else
        {
          v60 = 1;
        }

LABEL_37:
        if ((v60 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v201, v205, 16);
    }

    while (v197);
LABEL_40:

    if ((v22 & 1) == 0)
    {
LABEL_43:
      v183 = objc_msgSend_objectAtIndexedSubscript_(v196, v12, v199, v14, v15);
      objc_msgSend_addObject_(v195, v184, v183, v185, v186);

      v199 = (v199 + 1);
    }
  }

  v187 = *MEMORY[0x1E69E9840];

  return v195;
}

+ (id)convertLHToApplebet:(id)a3
{
  v129[1] = *MEMORY[0x1E69E9840];
  v120 = a3;
  v121 = objc_msgSend__phonemeArray_(a1, v5, v120, v6, v7);
  if (objc_msgSend_count(v121, v8, v9, v10, v11))
  {
    v15 = objc_msgSend__phonoTranslation_(a1, v12, v121, v13, v14);
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19);
    v25 = v20;
    if (v20 >= 1)
    {
      v119 = a2;
      v26 = 0;
      v122 = v20 & 0x7FFFFFFF;
      do
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v15, v21, v26, v23, v24);
        v123 = objc_msgSend_phoneme(v27, v28, v29, v30, v31);

        if (objc_msgSend_isEqualToString_(v123, v32, @"1", v33, v34) & 1) != 0 || (objc_msgSend_isEqualToString_(v123, v35, @"2", v37, v38))
        {
          v39 = v26 + 1;
          if (v26 + 1 >= v25)
          {
            LODWORD(v40) = v26 + 1;
          }

          else
          {
            v40 = v39;
            while (1)
            {
              v41 = objc_msgSend_objectAtIndexedSubscript_(v15, v35, v40, v37, v38);
              v46 = objc_msgSend_phoneme(v41, v42, v43, v44, v45);

              v50 = objc_msgSend__retrieveRegularExpression_(a1, v47, @"((AE)|(EY)|(AO)|(AX)|(IY)|(EH)|(IH)|(AY)|(IX)|(AA)|(UW)|(UH)|(UX)|(OW)|(AW)|(OY))", v48, v49);
              v55 = objc_msgSend_length(v46, v51, v52, v53, v54);
              v57 = objc_msgSend_firstMatchInString_options_range_(v50, v56, v46, 0, 0, v55);
              v62 = v57;
              if (v57)
              {
                if (objc_msgSend_range(v57, v58, v59, v60, v61) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }
              }

              if (++v40 >= v25)
              {
                goto LABEL_15;
              }
            }
          }

LABEL_15:
          v65 = objc_msgSend_array(MEMORY[0x1E695DF70], v35, v36, v37, v38);
          if (v26)
          {
            v66 = objc_msgSend_subarrayWithRange_(v15, v63, 0, v26, v64);
          }

          else
          {
            v66 = MEMORY[0x1E695E0F0];
          }

          v67 = (v40 + ~v26);
          if (v67 < 1)
          {
            v68 = MEMORY[0x1E695E0F0];
          }

          else
          {
            v68 = objc_msgSend_subarrayWithRange_(v15, v63, v26 + 1, v67, v64);
          }

          v69 = objc_msgSend_objectAtIndex_(v15, v63, v26, v67, v64);
          v129[0] = v69;
          v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v70, v129, 1, v71);

          v75 = objc_msgSend_subarrayWithRange_(v15, v73, v40, v25 - v40, v74);
          objc_msgSend_addObjectsFromArray_(v65, v76, v66, v77, v78);
          objc_msgSend_addObjectsFromArray_(v65, v79, v68, v80, v81);
          objc_msgSend_addObjectsFromArray_(v65, v82, v72, v83, v84);
          objc_msgSend_addObjectsFromArray_(v65, v85, v75, v86, v87);
          v92 = objc_msgSend_count(v15, v88, v89, v90, v91);
          if (v92 != objc_msgSend_count(v65, v93, v94, v95, v96))
          {
            v101 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v97, v98, v99, v100);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v101, v102, v119, a1, @"TTSLHPhonemeToApplebetPhonemeMapper.mm", 680, @"updated phonemes and xlatedPhonemesArray");
          }

          v26 = v39;
          v15 = v65;
        }

        else
        {
          ++v26;
        }
      }

      while (v26 != v122);
    }

    v103 = objc_msgSend_string(MEMORY[0x1E696AD60], v21, v22, v23, v24);
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v104 = v15;
    v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v124, v128, 16);
    if (v110)
    {
      v111 = *v125;
      do
      {
        for (i = 0; i != v110; ++i)
        {
          if (*v125 != v111)
          {
            objc_enumerationMutation(v104);
          }

          v113 = objc_msgSend_phoneme(*(*(&v124 + 1) + 8 * i), v106, v107, v108, v109);
          objc_msgSend_appendString_(v103, v114, v113, v115, v116);
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v106, &v124, v128, 16);
      }

      while (v110);
    }
  }

  else
  {
    v103 = v120;
  }

  v117 = *MEMORY[0x1E69E9840];

  return v103;
}

@end