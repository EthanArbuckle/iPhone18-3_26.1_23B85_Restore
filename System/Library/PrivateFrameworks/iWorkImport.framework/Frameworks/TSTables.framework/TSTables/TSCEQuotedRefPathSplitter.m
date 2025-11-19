@interface TSCEQuotedRefPathSplitter
+ (BOOL)isLeftParen:(id)a3;
+ (BOOL)isRightParen:(id)a3;
+ (BOOL)isSingleQuote:(id)a3;
+ (id)refPathInterestingCharactersSet;
- (TSCEQuotedRefPathSplitter)initWithComponents:(id)a3 aggregateFunction:(id)a4;
- (TSCEQuotedRefPathSplitter)initWithReferenceString:(id)a3;
- (id)componentAtIndex:(unint64_t)a3;
- (void)addComponent:(id)a3;
- (void)splitRefPath:(id)a3;
@end

@implementation TSCEQuotedRefPathSplitter

+ (BOOL)isSingleQuote:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7) != 1 || (v11 = objc_msgSend_characterAtIndex_(v3, v8, 0, v9, v10), v12 = 1, (v11 - 8216) >= 2) && v11 != 39 && v11 != 65287)
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isLeftParen:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7) == 1)
  {
    v11 = objc_msgSend_characterAtIndex_(v3, v8, 0, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 == 40 || v11 == 65288;

  return v13;
}

+ (BOOL)isRightParen:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7) == 1)
  {
    v11 = objc_msgSend_characterAtIndex_(v3, v8, 0, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 == 41 || v11 == 65289;

  return v13;
}

+ (id)refPathInterestingCharactersSet
{
  if (qword_27CFB5570 != -1)
  {
    sub_2216F7BA8();
  }

  v3 = qword_27CFB5568;

  return v3;
}

- (TSCEQuotedRefPathSplitter)initWithReferenceString:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSCEQuotedRefPathSplitter;
  v5 = [(TSCEQuotedRefPathSplitter *)&v11 init];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_splitRefPath_(v5, v6, v4, v7, v8);
  }

  return v9;
}

- (TSCEQuotedRefPathSplitter)initWithComponents:(id)a3 aggregateFunction:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v73.receiver = self;
  v73.super_class = TSCEQuotedRefPathSplitter;
  v8 = [(TSCEQuotedRefPathSplitter *)&v73 init];
  if (v8)
  {
    v9 = objc_opt_new();
    quotedComponents = v8->_quotedComponents;
    v8->_quotedComponents = v9;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v11 = v6;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v69, v74, 16);
    if (v13)
    {
      v14 = *v70;
      do
      {
        v15 = 0;
        do
        {
          if (*v70 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v69 + 1) + 8 * v15);
          v17 = [TSCEQuotedRefPathSplitter alloc];
          v21 = objc_msgSend_initWithReferenceString_(v17, v18, v16, v19, v20);
          v28 = objc_msgSend_componentAtIndex_(v21, v22, 0, v23, v24);
          if (v28)
          {
            objc_msgSend_addObject_(v8->_quotedComponents, v25, v28, v26, v27);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v29, &v69, v74, 16);
      }

      while (v13);
    }

    if (objc_msgSend_length(v7, v30, v31, v32, v33) && objc_msgSend_count(v8->_quotedComponents, v34, v35, v36, v37))
    {
      v42 = objc_msgSend_lastObject(v8->_quotedComponents, v38, v39, v40, v41);
      if (objc_msgSend_hasPrefix_(v7, v43, @"("), v44, v45 && objc_msgSend_hasSuffix_(v7, v46, @""), v47, v48))
      {
        v49 = [TSCEQuotedRefPathWord alloc];
        v53 = objc_msgSend_initWithRawString_(v49, v50, v7, v51, v52);
        objc_msgSend_addRefPathWord_(v42, v54, v53, v55, v56);
      }

      else
      {
        v57 = [TSCEQuotedRefPathWord alloc];
        v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"(%@)", v59, v60, v7);
        v53 = objc_msgSend_initWithRawString_(v57, v62, v61, v63, v64);

        objc_msgSend_addRefPathWord_(v42, v65, v53, v66, v67);
      }
    }
  }

  return v8;
}

- (void)splitRefPath:(id)a3
{
  v8 = a3;
  v223 = self;
  quotedComponents = self->_quotedComponents;
  if (quotedComponents)
  {
    objc_msgSend_removeAllObjects(quotedComponents, v4, v5, v6, v7);
  }

  else
  {
    v14 = objc_opt_new();
    v15 = self->_quotedComponents;
    self->_quotedComponents = v14;
  }

  v16 = objc_msgSend_refPathInterestingCharactersSet(TSCEQuotedRefPathSplitter, v10, v11, v12, v13);
  v20 = objc_msgSend_rangeOfCharacterFromSet_(v8, v17, v16, v18, v19);

  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = objc_opt_new();
    objc_msgSend_addObject_(self->_quotedComponents, v26, v25, v27, v28);
    v29 = [TSCEQuotedRefPathWord alloc];
    v33 = objc_msgSend_initWithRawString_(v29, v30, v8, v31, v32);
    objc_msgSend_addRefPathWord_(v25, v34, v33, v35, v36);

    goto LABEL_101;
  }

  v226 = 0;
  v227 = &v226;
  v228 = 0x4812000000;
  v229 = sub_22141C9A0;
  v230 = sub_22141C9C4;
  v231 = &unk_22188E88F;
  memset(v232, 0, 24);
  v37 = objc_msgSend_length(v8, v21, v22, v23, v24);
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = sub_22141C9F0;
  v225[3] = &unk_278464D58;
  v225[4] = &v226;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v8, v38, 0, v37, 2, v225);
  v43 = v227;
  v45 = v227[7];
  v44 = v227[8];
  if (v45 >= v44)
  {
    v47 = v227[6];
    v48 = (v45 - v47) >> 3;
    if ((v48 + 1) >> 61)
    {
      sub_22107C148();
    }

    v49 = v44 - v47;
    v50 = v49 >> 2;
    if (v49 >> 2 <= (v48 + 1))
    {
      v50 = v48 + 1;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFF8)
    {
      v51 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v51 = v50;
    }

    v237 = v227 + 6;
    if (v51)
    {
      sub_22107C1F0((v227 + 6), v51);
    }

    v233 = 0;
    v234 = (8 * v48);
    v236 = 0;
    *v234 = 0;
    v235 = 8 * v48 + 8;
    sub_22107C098((v43 + 6), &v233);
    v46 = v43[7];
    sub_22107C26C(&v233);
  }

  else
  {
    *v45 = 0;
    v46 = v45 + 1;
    v43[7] = v46;
  }

  v43[7] = v46;
  v220 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v39, v40, v41, v42);
  v224 = objc_opt_new();
  v53 = v227[6];
  v52 = v227[7];
  if (v53 == v52)
  {
    v217 = 0;
    goto LABEL_100;
  }

  v219 = v8;
  v54 = 0;
  v221 = 0;
  v222 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 1;
  while (1)
  {
    v58 = *v53;
    if ((v56 & 1) == 0)
    {
      break;
    }

    v56 = 0;
LABEL_90:

    ++v53;
    ++v57;
    if (v53 == v52)
    {
      v216 = v54 ^ 1;
      goto LABEL_96;
    }
  }

  v59 = v227[6];
  if (v57 >= (v227[7] - v59) >> 3)
  {
    v60 = 0;
  }

  else
  {
    v60 = *(v59 + 8 * v57);
  }

  v65 = v60;
  if ((v55 & 1) == 0)
  {
    v66 = v224;
    v67 = v222;
    if (!objc_msgSend_length(v224, v61, v62, v63, v64))
    {
      if (sub_22141B810(TSCEQuotedRefPathSplitter, v58))
      {
        if (v221)
        {
          if (!v223->_forceSplitting)
          {
            v55 = 0;
            v56 = 0;
            LOBYTE(v221) = 1;
            goto LABEL_87;
          }

          objc_msgSend_appendString_(v224, v137, @"$$", v139, v140);
          v56 = 0;
          v55 = 0;
          LOBYTE(v221) = 0;
          if ((v54 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v56 = 0;
          v55 = 0;
          LOBYTE(v221) = 1;
          if ((v54 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        goto LABEL_87;
      }

      if (objc_msgSend_length(v58, v137, v138, v139, v140) == 1)
      {
        v185 = objc_msgSend_characterAtIndex_(v58, v68, 0, v70, v71);
        if (objc_msgSend_characterIsMember_(v220, v186, v185, v187, v188))
        {
LABEL_79:
          v56 = 0;
          v55 = 0;
          if (v54)
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }
      }
    }

    if (objc_msgSend_length(v58, v68, v69, v70, v71) == 1 && (v75 = objc_msgSend_characterAtIndex_(v58, v72, 0, v73, v74), objc_msgSend_characterIsMember_(v220, v76, v75, v77, v78)))
    {
      if (!v222)
      {
        v67 = objc_opt_new();
        objc_msgSend_addObject_(v223->_quotedComponents, v80, v67, v81, v82);
      }

      v222 = v67;
      if (!objc_msgSend_length(v224, v72, v79, v73, v74))
      {
        goto LABEL_79;
      }

      v86 = objc_msgSend_substringToIndex_(v224, v83, 1, v84, v85);
      if (!objc_msgSend_isLeftParen_(TSCEQuotedRefPathSplitter, v87, v86, v88, v89) || (objc_msgSend_rangeOfCharacterFromSet_(v224, v90, v220, v91, v92), v96))
      {

LABEL_36:
        v97 = [TSCEQuotedRefPathWord alloc];
        v101 = objc_msgSend_initWithRawString_(v97, v98, v224, v99, v100);
        objc_msgSend_setHasPreserveFlag_(v101, v102, v221 & 1, v103, v104);
        objc_msgSend_setWasQuoted_(v101, v105, 0, v106, v107);
        objc_msgSend_addRefPathWord_(v67, v108, v101, v109, v110);
        v111 = objc_opt_new();

        LOBYTE(v221) = 0;
LABEL_64:
        v55 = 0;
        v56 = 0;
        v133 = 0;
LABEL_65:
        v224 = v111;
        if ((v54 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      v208 = objc_msgSend_length(v224, 0, v93, v94, v95);
      v218 = objc_msgSend_substringFromIndex_(v224, v209, v208 - 1, v210, v211);
      isRightParen = objc_msgSend_isRightParen_(TSCEQuotedRefPathSplitter, v212, v218, v213, v214);

      if (isRightParen)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (objc_msgSend_isSingleQuote_(TSCEQuotedRefPathSplitter, v72, v58, v73, v74))
      {
        if (!objc_msgSend_length(v224, v112, v113, v114, v115))
        {
          v56 = 0;
LABEL_74:
          v55 = 1;
          if (v54)
          {
            goto LABEL_87;
          }

LABEL_80:
          v133 = 0;
LABEL_89:

          v54 = v133;
          goto LABEL_90;
        }

        if (!v222)
        {
          v67 = objc_opt_new();
          objc_msgSend_addObject_(v223->_quotedComponents, v116, v67, v117, v118);
        }

        v222 = v67;
        v119 = [TSCEQuotedRefPathWord alloc];
        v123 = objc_msgSend_initWithRawString_(v119, v120, v224, v121, v122);
        objc_msgSend_setHasPreserveFlag_(v123, v124, v221 & 1, v125, v126);
        objc_msgSend_setWasQuoted_(v123, v127, 0, v128, v129);
        objc_msgSend_addRefPathWord_(v67, v130, v123, v131, v132);
        v111 = objc_opt_new();

        LOBYTE(v221) = 0;
        v56 = 0;
        v133 = 0;
        v55 = 1;
        goto LABEL_65;
      }

      if (!v58 || sub_22141B890(TSCEQuotedRefPathSplitter, v58) && sub_22141B890(TSCEQuotedRefPathSplitter, v65))
      {
        if (!v222)
        {
          v67 = objc_opt_new();
          objc_msgSend_addObject_(v223->_quotedComponents, v141, v67, v142, v143);
        }

        v144 = objc_msgSend_numWords(v67, v112, v113, v114, v115);
        if (objc_msgSend_length(v224, v145, v146, v147, v148) || !v144)
        {
          v149 = [TSCEQuotedRefPathWord alloc];
          v153 = objc_msgSend_initWithRawString_(v149, v150, v224, v151, v152);
          objc_msgSend_setHasPreserveFlag_(v153, v154, v221 & 1, v155, v156);
          objc_msgSend_setWasQuoted_(v153, v157, 0, v158, v159);
          objc_msgSend_addRefPathWord_(v67, v160, v153, v161, v162);
          v163 = objc_opt_new();

          LOBYTE(v221) = 0;
          v66 = v163;
        }

        v224 = v66;
        if (v58)
        {
          v164 = objc_opt_new();

          objc_msgSend_addObject_(v223->_quotedComponents, v165, v164, v166, v167);
          v55 = 0;
          v56 = 1;
          v222 = v164;
          if (v54)
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v222 = v67;
        goto LABEL_79;
      }
    }

    objc_msgSend_appendString_(v224, v112, v58, v114, v115);
    goto LABEL_79;
  }

  if ((v221 & 0x100000000) != 0)
  {
LABEL_26:
    objc_msgSend_appendString_(v224, v61, v58, v63, v64);
    v56 = 0;
    BYTE4(v221) = 0;
    goto LABEL_74;
  }

  if (sub_22141B784(TSCEQuotedRefPathSplitter, v58, v65))
  {
    v56 = 0;
    BYTE4(v221) = 1;
    goto LABEL_74;
  }

  if (objc_msgSend_isSingleQuote_(TSCEQuotedRefPathSplitter, v134, v58, v135, v136))
  {
    if (!v222)
    {
      v222 = objc_opt_new();
      objc_msgSend_addObject_(v223->_quotedComponents, v168, v222, v169, v170);
    }

    v171 = [TSCEQuotedRefPathWord alloc];
    v175 = objc_msgSend_initWithRawString_(v171, v172, v224, v173, v174);
    objc_msgSend_setHasPreserveFlag_(v175, v176, v221 & 1, v177, v178);
    objc_msgSend_setWasQuoted_(v175, v179, 1, v180, v181);
    objc_msgSend_addRefPathWord_(v222, v182, v175, v183, v184);
    v111 = objc_opt_new();

    v221 = 0;
    goto LABEL_64;
  }

  if (v58)
  {
    goto LABEL_26;
  }

  if (v223->_forceSplitting)
  {
    if (!v222)
    {
      v222 = objc_opt_new();
      objc_msgSend_addObject_(v223->_quotedComponents, v189, v222, v190, v191);
    }

    v192 = [TSCEQuotedRefPathWord alloc];
    v196 = objc_msgSend_initWithRawString_(v192, v193, v224, v194, v195);
    objc_msgSend_setHasPreserveFlag_(v196, v197, v221 & 1, v198, v199);
    objc_msgSend_addRefPathWord_(v222, v200, v196, v201, v202);
    v203 = objc_opt_new();

    v221 = 0;
    v56 = 0;
    v55 = 1;
    v224 = v203;
  }

  else
  {
    BYTE4(v221) = 0;
    v56 = 0;
    v55 = 1;
  }

LABEL_87:
  if (v223->_forceSplitting)
  {
    v133 = 1;
    goto LABEL_89;
  }

  v216 = 0;
LABEL_96:
  v8 = v219;
  if (!v223->_forceSplitting && (v216 & 1) == 0)
  {
    objc_msgSend_removeAllObjects(v223->_quotedComponents, v204, v205, v206, v207);
  }

  v217 = v222;
LABEL_100:

  _Block_object_dispose(&v226, 8);
  v233 = v232;
  sub_22107C2C0(&v233);
LABEL_101:
}

- (void)addComponent:(id)a3
{
  v10 = a3;
  if (v10)
  {
    quotedComponents = self->_quotedComponents;
    if (!quotedComponents)
    {
      v8 = objc_opt_new();
      v9 = self->_quotedComponents;
      self->_quotedComponents = v8;

      quotedComponents = self->_quotedComponents;
    }

    objc_msgSend_addObject_(quotedComponents, v4, v10, v5, v6);
  }
}

- (id)componentAtIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_quotedComponents, a2, a3, v3, v4) <= a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(self->_quotedComponents, v7, a3, v8, v9);
  }

  return v10;
}

@end