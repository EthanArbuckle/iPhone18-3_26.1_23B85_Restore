@interface TSCEFunction_HYPERLINK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HYPERLINK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v8 = **arguments;
  v12 = v8;
  v225 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v232, 0, sizeof(v232));
  }

  sub_22114F414(&v233, &v232);
  v231 = 0;
  v14 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v231);
  v15 = v231;
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18, v19);
    goto LABEL_34;
  }

  v22 = objc_msgSend_length(v14, v16, v17, v18, v19);
  v223 = objc_msgSend_newArrayByScanningString_scanRange_(MEMORY[0x277D80FB0], v23, v14, 0, v22);
  if (objc_msgSend_count(v223, v24, v25, v26, v27) == 1)
  {
    v32 = objc_msgSend_objectAtIndexedSubscript_(v223, v28, 0, v30, v31);
    v36 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277D810C8], v34, v35);
    v41 = objc_msgSend_rangeValue(v36, v37, v38, v39, v40);
    v43 = v42;

    if (v41 || v43 != v22)
    {
    }

    else
    {
      v47 = objc_msgSend_objectForKeyedSubscript_(v32, v44, *MEMORY[0x277D810D0], v45, v46);

      if (v47)
      {
        v48 = v223;
        goto LABEL_17;
      }
    }
  }

  v49 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v28, v29, v30, v31);
  v53 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v14, v50, v49, v51, v52);

  v58 = objc_msgSend_length(v53, v54, v55, v56, v57);
  v60 = objc_msgSend_newArrayByScanningString_scanRange_(MEMORY[0x277D80FB0], v59, v53, 0, v58);

  if (objc_msgSend_count(v60, v61, v62, v63, v64) == 1)
  {
    v69 = objc_msgSend_objectAtIndexedSubscript_(v60, v65, 0, v67, v68);
    v73 = objc_msgSend_objectForKeyedSubscript_(v69, v70, *MEMORY[0x277D810C8], v71, v72);
    v78 = objc_msgSend_rangeValue(v73, v74, v75, v76, v77);
    v80 = v79;

    if (v78 || v80 != v58)
    {
    }

    else
    {
      v47 = objc_msgSend_objectForKeyedSubscript_(v69, v81, *MEMORY[0x277D810D0], v82, v83);

      if (v47)
      {
        v14 = v53;
        v48 = v60;
LABEL_17:
        sub_221077074(&v228);
        if (*(arguments + 1) - *arguments >= 9uLL)
        {
          v88 = *(*arguments + 8);
          if ((objc_msgSend_isTokenOrEmptyArg(v88, v89, v90, v91, v92) & 1) == 0)
          {
            if (v88)
            {
              objc_msgSend_formatWithContext_(v88, v93, context, v94, v95);
            }

            else
            {
              memset(&v232, 0, sizeof(v232));
            }

            sub_22114F414(&v233, &v232);
            v227 = 0;
            if (v88)
            {
              objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v88, v201, context, spec, 1, &v227);
              v125 = v227;
              tskFormat = v232._tskFormat;
            }

            else
            {
              tskFormat = 0;
              v125 = 0;
              *&v232._formatType = 0;
              *&v232._durationFormat = 0;
            }

            v232._tskFormat = 0;
            v203 = v228;
            v228 = tskFormat;

            v204 = *&v232._formatType;
            *&v232._formatType = 0;
            v205 = v229;
            v229 = v204;

            durationFormat = v232._durationFormat;
            if (v125)
            {
              v21 = objc_msgSend_raiseErrorOrConvert_(context, v206, v125, v208, v209);
              goto LABEL_32;
            }

            if (!sub_221078910(&v228, v206, v207, v208, v209))
            {
              v105 = objc_msgSend_functionName(spec, v210, v211, v212, v213);
              v222 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v214, v105, v215, v216);
              v21 = objc_msgSend_raiseErrorOrConvert_(context, v217, v222, v218, v219);
LABEL_31:

LABEL_32:
              goto LABEL_33;
            }
          }
        }

        v96 = objc_msgSend_calcEngine(context, v84, v85, v86, v87);
        v88 = objc_msgSend_documentRoot(v96, v97, v98, v99, v100);

        v105 = objc_msgSend_context(v88, v101, v102, v103, v104);
        v222 = objc_msgSend_stylesheet(v88, v106, v107, v108, v109);
        if (sub_221077388(&v228))
        {
          sub_221077078(&v228, v110, v111, v112, v113, &v232);
          v114 = v232._tskFormat;
          v232._tskFormat = 0;
          v115 = v228;
          v228 = v114;

          v116 = *&v232._formatType;
          *&v232._formatType = 0;
          v117 = v229;
          v229 = v116;

          durationFormat = v232._durationFormat;
        }

        else
        {
          v224 = v48;
          v220 = v47;
          v221 = v105;
          v126 = sub_2210772BC(&v228, v110, v111, v112, v113);
          v131 = objc_msgSend_calcEngine(context, v127, v128, v129, v130);
          v136 = objc_msgSend_containingTable(context, v132, v133, v134, v135);
          v140 = objc_msgSend_tableResolverForTableUID_(v131, v137, v136, v138, v139);

          if (v140)
          {
            v145 = objc_msgSend_containingCell(context, v141, v142, v143, v144);
            v149 = objc_msgSend_cellTextStyle_(v140, v146, v145, v147, v148);
          }

          else
          {
            v149 = 0;
          }

          v150 = objc_alloc(MEMORY[0x277D80F28]);
          v155 = objc_msgSend_theme(v88, v151, v152, v153, v154);
          v160 = objc_msgSend_defaultListStyle(v155, v156, v157, v158, v159);
          v162 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v150, v161, v221, v126, 5, v222, v149, v160, 0, 0);

          v163 = v228;
          v228 = 0;
          v164 = v162;

          v165 = v229;
          v229 = v164;

          *&durationFormat = 1;
          *(&durationFormat + 2) = 0;

          v48 = v224;
          v47 = v220;
          v105 = v221;
        }

        v166 = sub_2210771B0(&v228, v118, v119, v120, v121);
        v167 = objc_alloc(MEMORY[0x277D80E58]);
        v170 = objc_msgSend_initWithContext_url_(v167, v168, v105, v47, v169);
        v175 = objc_msgSend_length(v166, v171, v172, v173, v174);
        objc_msgSend_addSmartField_toRange_dolcContext_undoTransaction_(v166, v176, v170, 0, v175, 0, 0);
        v181 = objc_msgSend_theme(v88, v177, v178, v179, v180);
        v186 = objc_msgSend_hyperlinkStyle(v181, v182, v183, v184, v185);

        v191 = objc_msgSend_length(v166, v187, v188, v189, v190);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v166, v192, v186, 0, v191, 0);
        v21 = sub_2210789F4(&v228, v193, v194, v195, v196);
        sub_221256020(&v233, &v226);
        TSCEFormat::TSCEFormat(&v232, &v226);
        objc_msgSend_setFormat_(v21, v197, &v232, v198, v199);

        v125 = 0;
        goto LABEL_31;
      }
    }
  }

  v47 = objc_msgSend_invalidHyperlinkError(TSCEError, v65, v66, v67, v68);
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v122, v47, v123, v124);
  v125 = 0;
  v14 = v53;
  v48 = v60;
LABEL_33:

  v20 = v125;
LABEL_34:

  if (v233)
  {
    v234 = v233;
    operator delete(v233);
  }

  return v21;
}

@end