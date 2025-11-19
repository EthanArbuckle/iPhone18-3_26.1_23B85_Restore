@interface TSCH3DShaderAssignment
+ (id)assignmentWithAssignee:(id)a3 statement:(id)a4 dependees:(id)a5 program:(id)a6;
- (BOOL)isMetal;
- (BOOL)updateLinkageTypeAddVaryingToAdditions:(id)a3;
- (NSString)string;
- (TSCH3DShaderAssignment)initWithAssigneeLinkage:(id)a3 statement:(id)a4 dependees:(id)a5 program:(id)a6;
- (TSCH3DShaderType)dominantDependeeLinkageType;
- (id).cxx_construct;
- (id)expressionStringForType:(TSCH3DShaderType)a3;
- (id)forceLinkageForType:(TSCH3DShaderType)a3;
- (id)resolve;
- (id)resolveDependeesWithPreviousType:(TSCH3DShaderType)a3;
- (id)updateDependeesWithPreviousType:(TSCH3DShaderType)a3;
- (id)updateVaryingAssignmentForLinkage:(id)a3;
- (id)variableDeclaration;
- (id)varyingAssignmentForLinkage:(id)a3;
@end

@implementation TSCH3DShaderAssignment

+ (id)assignmentWithAssignee:(id)a3 statement:(id)a4 dependees:(id)a5 program:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 alloc];
  v19 = objc_msgSend_initWithAssigneeLinkage_statement_dependees_program_(v14, v15, v16, v17, v18, v10, v11, v12, v13);

  return v19;
}

- (TSCH3DShaderAssignment)initWithAssigneeLinkage:(id)a3 statement:(id)a4 dependees:(id)a5 program:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = TSCH3DShaderAssignment;
  v15 = [(TSCH3DShaderAssignment *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assignee, a3);
    v28[0] = objc_msgSend_declaredScope(v16->_assignee, v17, v18, v19, v20);
    v28[1] = v21;
    v25 = sub_2761AAAA4(v22, v23, v24, v28, 1);
    v26 = 1;
    if (v28[v25] == 2)
    {
      v26 = 2;
    }

    v16->_assigneeScope._value = v26;
    objc_storeStrong(&v16->_statement, a4);
    objc_storeStrong(&v16->_dependees, a5);
    objc_storeWeak(&v16->_program, v14);
    v16->_linkageType._value = 0;
  }

  return v16;
}

- (BOOL)isMetal
{
  WeakRetained = objc_loadWeakRetained(&self->_program);

  if (!WeakRetained)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DShaderAssignment isMetal]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 179, 0, "invalid nil value for '%{public}s'", "_program");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_loadWeakRetained(&self->_program);
  isMetal = objc_msgSend_isMetal(v23, v24, v25, v26, v27);

  return isMetal;
}

- (id)varyingAssignmentForLinkage:(id)a3
{
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_variable(v4, v5, v6, v7, v8);
  v63[0] = v9;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v11, v12, v13, v63, 1);
  WeakRetained = objc_loadWeakRetained(&self->_program);
  v20 = objc_msgSend_assignmentWithAssignee_statement_dependees_program_(TSCH3DShaderAssignment, v16, v17, v18, v19, v4, @"@@", v14, WeakRetained);

  objc_msgSend_setLinkageType_(v20, v21, v22, v23, v24, 1);
  objc_msgSend_setAssigneeScopeToType_(v20, v25, v26, v27, v28, 16);
  v33 = objc_msgSend_dependeeScopes(v20, v29, v30, v31, v32);
  if (objc_msgSend_hasBody_(v4, v34, v35, v36, v37, 1))
  {
    v62 = 1;
    sub_2761A2008(v33, &v62);
  }

  else
  {
    if ((objc_msgSend_isAttribute(v4, v38, v39, v40, v41) & 1) == 0)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "[TSCH3DShaderAssignment varyingAssignmentForLinkage:]");
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v54, v55, v56, v47, v52, 203, 0, "link must be body or attribute in order to pass by varying %@", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
    }

    v62 = 8;
    sub_2761A2008(v33, &v62);
  }

  return v20;
}

- (id)updateVaryingAssignmentForLinkage:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_varyingAssignmentForLinkage_(self, v5, v6, v7, v8, v4);
  objc_msgSend_addShader_scope_(v4, v10, v11, v12, v13, 1, 16);
  objc_msgSend_addShader_scope_(v4, v14, v15, v16, v17, 2, 16);
  objc_msgSend_addLinkage_(v4, v18, v19, v20, v21, 3);
  objc_msgSend_addDeclaredShader_scope_(v4, v22, v23, v24, v25, 1, 16);
  objc_msgSend_addDeclaredShader_scope_(v4, v26, v27, v28, v29, 2, 16);

  return v9;
}

- (id)updateDependeesWithPreviousType:(TSCH3DShaderType)a3
{
  value = a3._value;
  v277 = *MEMORY[0x277D85DE8];
  p_dependeeScopes = &self->_dependeeScopes;
  if (self->_dependeeScopes.__begin_ != self->_dependeeScopes.__end_)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 225, 0, "_dependeeScopes already updated with size %zu", self->_dependeeScopes.__end_ - self->_dependeeScopes.__begin_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (!LODWORD(self->_linkageType._value))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 226, 0, "linkage type shouldn't be none when updateing _dependees!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v266 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v3, v4, v5);
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  obj = self->_dependees;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v39, v40, v41, &v272, v276, 16);
  if (v42)
  {
    v267 = value & 0xFFFFFFFE;
    v43 = *v273;
    do
    {
      v44 = 0;
      do
      {
        if (*v273 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v272 + 1) + 8 * v44);
        WeakRetained = objc_loadWeakRetained(&self->_program);
        v51 = objc_msgSend_existingLinkageOfVariable_(WeakRetained, v47, v48, v49, v50, v45);

        v56 = objc_msgSend_variable(v51, v52, v53, v54, v55);
        v61 = objc_msgSend_name(v56, v57, v58, v59, v60);
        objc_msgSend_isEqualToString_(v61, v62, v63, v64, v65, 0);

        objc_msgSend_setIsUsed_(v51, v66, v67, v68, v69, 1);
        if (!v51)
        {
          v74 = MEMORY[0x277D81150];
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 233, 0, "variable doesn't have link %@", v45);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
        }

        if (objc_msgSend_notLinked(v51, v70, v71, v72, v73))
        {
          if ((objc_msgSend_isUniform(v51, v89, v90, v91, v92) & 1) == 0)
          {
            v97 = MEMORY[0x277D81150];
            v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
            v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v104, v105, v106, v107, v98, v103, 236, 0, "variable is not linked or uniform %@", v51);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109, v110, v111);
          }

          v270 = 4;
          sub_2761A2008(p_dependeeScopes, &v270);
          objc_msgSend_addLinkage_(v51, v112, v113, v114, v115, self->_linkageType._value);
          goto LABEL_56;
        }

        v116 = self->_linkageType._value;
        if (v116 == 1)
        {
          if ((objc_msgSend_hasVertex(v51, v89, v90, v91, v92) & 1) == 0)
          {
LABEL_23:
            v121 = MEMORY[0x277D81150];
            v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
            v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v128, v129, v130, v131, v122, v127, 286, 0, "must be _vertex type %@", v51);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v132, v133, v134, v135);
          }

          if (objc_msgSend_isUniform(v51, v89, v90, v91, v92))
          {
            goto LABEL_25;
          }

          if (objc_msgSend_hasBody_(v51, v136, v137, v138, v139, 1))
          {
            goto LABEL_27;
          }

          if ((objc_msgSend_hasAttribute(v51, v140, v141, v142, v143) & 1) == 0)
          {
            v164 = MEMORY[0x277D81150];
            v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, v161, v162, v163, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
            v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v171, v172, v173, v174, v165, v170, 292, 0, "require attribute scope %@", v51);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v175, v176, v177, v178);
          }

          v270 = 8;
          sub_2761A2008(p_dependeeScopes, &v270);
          goto LABEL_56;
        }

        if (v116 != 2)
        {
          goto LABEL_23;
        }

        if (objc_msgSend_hasFragment(v51, v89, v90, v91, v92))
        {
          if (v51 == self->_assignee && !v267)
          {
            goto LABEL_21;
          }

          if (objc_msgSend_isUniform(v51, v117, v118, v119, v120))
          {
LABEL_25:
            v270 = 4;
            sub_2761A2008(p_dependeeScopes, &v270);
            goto LABEL_56;
          }

          if (!objc_msgSend_hasBody_(v51, v179, v180, v181, v182, 2))
          {
            v270 = objc_msgSend_scope(v51, v207, v208, v209, v210);
            v271 = v215;
            if (*(&v270 + sub_2761AAAA4(v216, v217, v218, &v270, 2)))
            {
              if ((objc_msgSend_isVarying_(v51, v219, v220, v221, v222, 2) & 1) == 0)
              {
                v270 = objc_msgSend_scope(v51, v223, v224, v225, v226);
                v271 = v227;
                if (*(&v270 + sub_2761AAAA4(v228, v229, v230, &v270, 2)) != 24)
                {
                  v235 = MEMORY[0x277D81150];
                  v236 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v231, v232, v233, v234, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
                  v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v237, v238, v239, v240, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v235, v242, v243, v244, v245, v236, v241, 277, 0, "require varying only scope %@", v51);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v246, v247, v248, v249);
                }
              }
            }

            else
            {
              v259 = objc_msgSend_updateVaryingAssignmentForLinkage_(self, v219, v220, v221, v222, v51);
              objc_msgSend_addObject_(v266, v260, v261, v262, v263, v259);
            }

LABEL_21:
            v270 = 16;
            sub_2761A2008(p_dependeeScopes, &v270);
            goto LABEL_56;
          }

LABEL_27:
          v270 = 1;
          sub_2761A2008(p_dependeeScopes, &v270);
          goto LABEL_56;
        }

        if (objc_msgSend_canHaveFragment(v51, v117, v118, v119, v120))
        {
          objc_msgSend_addLinkage_(v51, v144, v145, v146, v147, 2);
          v270 = objc_msgSend_scope(v51, v148, v149, v150, v151);
          v271 = v152;
          v156 = sub_2761AAAA4(v153, v154, v155, &v270, 1);
          end = self->_dependeeScopes.__end_;
          cap = self->_dependeeScopes.__cap_;
          if (end >= cap)
          {
            v211 = end - p_dependeeScopes->__begin_;
            if ((v211 + 1) >> 61)
            {
              sub_276161760();
            }

            v212 = cap - p_dependeeScopes->__begin_;
            v213 = v212 >> 2;
            if (v212 >> 2 <= (v211 + 1))
            {
              v213 = v211 + 1;
            }

            if (v212 >= 0x7FFFFFFFFFFFFFF8)
            {
              v214 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v214 = v213;
            }

            if (v214)
            {
              sub_2761AAC20(p_dependeeScopes, v214);
            }

            v250 = (8 * v211);
            *v250 = *(&v270 + v156);
            v159 = (8 * v211 + 8);
            begin = self->_dependeeScopes.__begin_;
            v252 = (self->_dependeeScopes.__end_ - begin);
            v253 = (v250 - v252);
            memcpy((v250 - v252), begin, v252);
            v254 = self->_dependeeScopes.__begin_;
            self->_dependeeScopes.__begin_ = v253;
            self->_dependeeScopes.__end_ = v159;
            self->_dependeeScopes.__cap_ = 0;
            if (v254)
            {
              operator delete(v254);
            }
          }

          else
          {
            end->_value = *(&v270 + v156);
            v159 = end + 1;
          }

          self->_dependeeScopes.__end_ = v159;
        }

        else
        {
          if (objc_msgSend_isUniform(v51, v144, v145, v146, v147))
          {
            v187 = MEMORY[0x277D81150];
            v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v184, v185, v186, "[TSCH3DShaderAssignment updateDependeesWithPreviousType:]");
            v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, v190, v191, v192, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v187, v194, v195, v196, v197, v188, v193, 243, 0, "Cannot add varying scope to uniform %@", v51);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199, v200, v201);
          }

          v202 = objc_msgSend_updateVaryingAssignmentForLinkage_(self, v183, v184, v185, v186, v51);
          objc_msgSend_addObject_(v266, v203, v204, v205, v206, v202);

          v270 = 16;
          sub_2761A2008(p_dependeeScopes, &v270);
        }

LABEL_56:

        ++v44;
      }

      while (v42 != v44);
      v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v255, v256, v257, v258, &v272, v276, 16);
      v42 = v264;
    }

    while (v264);
  }

  return v266;
}

- (TSCH3DShaderType)dominantDependeeLinkageType
{
  v58 = *MEMORY[0x277D85DE8];
  if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    NSLog(&cfstr_P.isa, v4, self, v5, self->_dependees);
  }

  v56._value = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_dependees;
  v10._value = 0;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, v7, v8, v9, &v52, v57, 16);
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *v53;
  do
  {
    v13 = 0;
    do
    {
      if (*v53 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v52 + 1) + 8 * v13);
      WeakRetained = objc_loadWeakRetained(&self->_program);
      v20 = objc_msgSend_existingLinkageOfVariable_(WeakRetained, v16, v17, v18, v19, v14);

      if ((objc_msgSend_isLinked(v20, v21, v22, v23, v24) & 1) == 0 && (objc_msgSend_scopedInAll(v20, v25, v26, v27, v28) & 1) == 0)
      {

        return 0;
      }

      if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
      {
        v29 = objc_opt_class();
        v30 = NSStringFromSelector(a2);
        NSLog(&cfstr_PCheckingLink.isa, v29, self, v30, v20);
      }

      if (objc_msgSend_isFragmentLinkable(v20, v25, v26, v27, v28))
      {
        v56._value = 2;
        if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
        {
          v35 = objc_opt_class();
          v36 = NSStringFromSelector(a2);
          NSLog(&cfstr_PUpdatedToFrag.isa, v35, self, v36);
          v10._value = 2;
LABEL_19:

          goto LABEL_27;
        }

        v10._value = 2;
      }

      else if (!LODWORD(v10._value) && objc_msgSend_isVertexLinkable(v20, v31, v32, v33, v34))
      {
        v56._value = 1;
        if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
        {
          v37 = objc_opt_class();
          v36 = NSStringFromSelector(a2);
          NSLog(&cfstr_PUpdatedToVert.isa, v37, self, v36);
          v10._value = 1;
          goto LABEL_19;
        }

        v10._value = 1;
      }

LABEL_27:

      ++v13;
    }

    while (v11 != v13);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, v39, v40, v41, &v52, v57, 16);
    v11 = v42;
  }

  while (v42);
LABEL_33:

  if ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1)
  {
    v43 = objc_opt_class();
    obja = NSStringFromSelector(a2);
    v48 = sub_27619B234(&v56, v44, v45, v46, v47);
    NSLog(&cfstr_PGotDominantli.isa, v43, self, obja, v48);

    return v56;
  }

  return v10;
}

- (BOOL)updateLinkageTypeAddVaryingToAdditions:(id)a3
{
  v5 = a3;
  if (objc_msgSend_isSpecial(self->_assignee, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_shaderType(self->_assignee, v10, v11, v12, v13);
LABEL_5:
    self->_linkageType._value = v14;
    goto LABEL_6;
  }

  if (objc_msgSend_count(self->_dependees, v10, v11, v12, v13))
  {
    v14 = objc_msgSend_dominantDependeeLinkageType(self, v19, v20, v21, v22);
    goto LABEL_5;
  }

  v50 = objc_msgSend_variable(self->_assignee, v19, v20, v21, v22);
  self->_linkageType._value = objc_msgSend_initialLinkType(v50, v51, v52, v53, v54);

  LODWORD(v14) = self->_linkageType._value;
LABEL_6:
  v23 = v14;
  if (v14)
  {
    v57 = objc_msgSend_linked(self->_assignee, v15, v16, v17, v18);
    value = self->_linkageType._value;
    if (v57 == 1 && value == 2)
    {
      v29 = objc_msgSend_updateVaryingAssignmentForLinkage_(self, v24, v25, v26, v27, self->_assignee);
      objc_msgSend_addObject_(v5, v30, v31, v32, v33, v29);

      value = self->_linkageType._value;
    }

    if (objc_msgSend_updateLinkage_(self->_assignee, v24, v25, v26, v27, value) && ((byte_280A46430 & 1) != 0 || byte_280A44400 == 1 && byte_280A46431 == 1))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromSelector(a2);
      v40 = sub_27619B234(&v57, v36, v37, v38, v39);
      v56 = objc_msgSend_linked(self->_assignee, v41, v42, v43, v44);
      v49 = sub_27619B234(&v56, v45, v46, v47, v48);
      NSLog(&cfstr_PUpgradingAssi.isa, v34, self, v35, v40, v49, self->_assignee);
    }
  }

  return v23 != 0;
}

- (id)resolveDependeesWithPreviousType:(TSCH3DShaderType)a3
{
  v7 = objc_msgSend_updateDependeesWithPreviousType_(self, a2, v3, v4, v5, a3._value);
  objc_msgSend_addBodyScope_(self->_assignee, v8, v9, v10, v11, self->_linkageType._value);

  return v7;
}

- (id)forceLinkageForType:(TSCH3DShaderType)a3
{
  if (LODWORD(a3._value) == 3 || !LODWORD(a3._value))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCH3DShaderAssignment forceLinkageForType:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 354, 0, "Invalid parameter not satisfying: %{public}s", "!type.isNone() && !type.isAny()");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  objc_msgSend_addLinkage_(self->_assignee, a2, v3, v4, v5, a3._value);
  v28 = objc_msgSend_linked(self->_assignee, v23, v24, v25, v26);
  self->_linkageType = a3;

  return objc_msgSend_resolveDependeesWithPreviousType_(self, v27, v29, v30, v31, v28);
}

- (id)resolve
{
  v6 = objc_msgSend_variable(self->_assignee, a2, v2, v3, v4);
  v11 = objc_msgSend_name(v6, v7, v8, v9, v10);
  objc_msgSend_isEqualToString_(v11, v12, v13, v14, v15, 0);

  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17, v18, v19);
  v25 = objc_msgSend_linked(self->_assignee, v21, v22, v23, v24);
  if (LODWORD(self->_linkageType._value) || (v30 = v25, (objc_msgSend_updateLinkageTypeAddVaryingToAdditions_(self, v26, v27, v28, v29, v20) & 1) == 0))
  {
    v40 = 0;
  }

  else
  {
    v35 = objc_msgSend_resolveDependeesWithPreviousType_(self, v31, v32, v33, v34, v30);
    objc_msgSend_addObjectsFromArray_(v20, v36, v37, v38, v39, v35);

    v40 = v20;
  }

  return v40;
}

- (id)expressionStringForType:(TSCH3DShaderType)a3
{
  if (objc_msgSend_count(self->_dependees, a2, v3, v4, v5) != self->_dependeeScopes.__end_ - self->_dependeeScopes.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DShaderAssignment expressionStringForType:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
    v22 = objc_msgSend_count(self->_dependees, v18, v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v23, v24, v25, v26, v12, v17, 375, 0, "_dependees %lu and _dependeeScopes %zu differ in size", v22, self->_dependeeScopes.__end_ - self->_dependeeScopes.__begin_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v133 = objc_msgSend_mutableCopy(self->_statement, v7, v8, v9, v10);
  v31 = self->_dependeeScopes.__end_ - self->_dependeeScopes.__begin_;
  if (v31)
  {
    v32 = 0;
    v33 = 0;
    v34 = v31 >> 3;
    v130 = v34;
    if (v34 <= 1)
    {
      v34 = 1;
    }

    v131 = v34;
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_program);
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->_dependees, v36, v37, v38, v39, v33);
      v45 = objc_msgSend_existingLinkageOfVariable_(WeakRetained, v41, v42, v43, v44, v40);

      if (!v45)
      {
        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DShaderAssignment expressionStringForType:]");
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
        v61 = objc_msgSend_objectAtIndexedSubscript_(self->_dependees, v57, v58, v59, v60, v33);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v62, v63, v64, v65, v51, v56, 381, 0, "linkage missing for %@", v61);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      }

      v70 = objc_msgSend_nameForShader_scope_(v45, v46, v47, v48, v49, a3._value, self->_dependeeScopes.__begin_[v33]._value);
      value = self->_dependeeScopes.__begin_[v33]._value;
      if (!objc_msgSend_isMetal(self, v72, v73, v74, v75))
      {
        break;
      }

      if (value == 16)
      {
        v86 = @"dat.%@";
      }

      else
      {
        if (value != 4)
        {
          break;
        }

        v80 = objc_msgSend_variable(v45, v76, v77, v78, v79);
        isTexture = objc_msgSend_isTexture(v80, v81, v82, v83, v84);

        v86 = @"uniforms[0].%@";
        if (isTexture)
        {
          break;
        }
      }

      v87 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v76, v77, v78, v79, v86, v70);

      if (!v87)
      {
LABEL_17:
        v88 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "[TSCH3DShaderAssignment expressionStringForType:]");
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v91, v92, v93, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
        v99 = sub_2761A17CC(&self->_dependeeScopes.__begin_[v32], v95, v96, v97, v98);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v100, v101, v102, v103, v89, v94, 393, 0, "dependee doesn't have name in scope %@, %@", v99, v45);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
      }

LABEL_18:
      v109 = objc_msgSend_rangeOfString_(v133, v76, v77, v78, v79, @"@@");
      v113 = v108;
      if (v109 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v114 = MEMORY[0x277D81150];
        v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v110, v111, v112, "[TSCH3DShaderAssignment expressionStringForType:]");
        v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, v117, v118, v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderProgram.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v121, v122, v123, v124, v115, v120, 397, 0, "replacement token %lu not found number of dependees %lu, statement %@, current %@", v33, v130, self->_statement, v133);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127, v128);
      }

      objc_msgSend_replaceCharactersInRange_withString_(v133, v108, v110, v111, v112, v109, v113, v87);

      ++v33;
      ++v32;
      if (v131 == v33)
      {
        goto LABEL_21;
      }
    }

    v87 = v70;
    if (!v70)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_21:

  return v133;
}

- (id)variableDeclaration
{
  value = self->_linkageType._value;
  v7 = self->_assigneeScope._value;
  if (objc_msgSend_isMetal(self, a2, v2, v3, v4) && (v7 == 16 || (objc_msgSend_variable(self->_assignee, v8, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v12, v13, v14, v15, v16, qword_280A46750), v12, isEqual)))
  {
    v18 = @"dat.";
  }

  else
  {
    v18 = &stru_288528678;
  }

  assignee = self->_assignee;
  isMetal = objc_msgSend_isMetal(self, v8, v9, v10, v11);
  v25 = objc_msgSend_variableDeclarationInShader_scope_isMetal_(assignee, v21, v22, v23, v24, value, v7, isMetal);
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, @"%@%@", v18, v25);

  return v30;
}

- (NSString)string
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_variableDeclaration(self, a2, v2, v3, v4);
  v12 = objc_msgSend_expressionStringForType_(self, v8, v9, v10, v11, self->_linkageType._value);
  v17 = objc_msgSend_stringWithFormat_(v6, v13, v14, v15, v16, @"%@ = %@", v7, v12);;

  return v17;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end