@interface TSCEFunction_INTERSECT_RANGES
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INTERSECT_RANGES

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v197 = 0;
  v198 = 0;
  v199 = 0;
  v196.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v196._tableUID._lower = 0;
  v196._tableUID._upper = 0;
  v7 = *(arguments + 1) - *arguments;
  v8 = v7 >> 3;
  if (!(v7 >> 3))
  {
    v15 = objc_msgSend_functionName(spec, a2, context, spec, arguments);
    v18 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v16, v15, 0, v17);
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20, v21);

    goto LABEL_6;
  }

  if (v8 >= 1)
  {
    v188 = v7 >> 3;
    v10 = **arguments;
    v14 = v10;
    if (v10)
    {
      objc_msgSend_formatWithContext_(v10, v11, context, v12, v13);
    }

    else
    {
      memset(&v195, 0, sizeof(v195));
    }

    sub_22114F414(&v197, &v195);
    v194 = 0;
    v29 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v14, v28, context, spec, 0, &v194);
    v34 = v194;
    if (v34)
    {
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v30, v34, v32, v33);
LABEL_55:

      goto LABEL_58;
    }

    if (v29)
    {
      objc_msgSend_rangeRef(v29, v30, v31, v32, v33);
    }

    else
    {
      memset(&v195, 0, sizeof(v195));
    }

    v196 = v195;
    v189 = objc_msgSend_preserveFlags(v29, v30, v31, v32, v33);
    v107 = objc_msgSend_calcEngine(context, v103, v104, v105, v106);
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v107, v108, &v196, v109, v110);

    if ((IsWithinTable & 1) == 0)
    {
      v116 = objc_msgSend_invalidReferenceError(TSCEError, v112, v113, v114, v115);
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v117, v116, v118, v119);

      goto LABEL_55;
    }

    LODWORD(v8) = v7 >> 3;
    if (v188 == 1)
    {
      v23 = 0;
      goto LABEL_8;
    }

    v186 = (v7 >> 3) & 0x7FFFFFFF;
    v24 = 1;
    v185 = vdupq_n_s64(0x7FFF00000000uLL);
    v23 = 1;
    while (1)
    {
      v121 = *(*arguments + 8 * v24);
      v125 = v121;
      v187 = v121;
      if (v121)
      {
        objc_msgSend_formatWithContext_(v121, v122, context, v123, v124);
      }

      else
      {
        memset(&v195, 0, sizeof(v195));
      }

      sub_22114F414(&v197, &v195);
      v193 = 0;
      v127 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v125, v126, context, spec, v24, &v193);
      v132 = v193;
      if (v132)
      {
        v22 = objc_msgSend_raiseErrorOrConvert_(context, v128, v132, v130, v131);

        goto LABEL_58;
      }

      if (v127)
      {
        objc_msgSend_rangeRef(v127, v128, v129, v130, v131);
      }

      else
      {
        memset(&v195, 0, sizeof(v195));
      }

      v133 = objc_msgSend_calcEngine(context, v128, v129, v130, v131, *&v185);
      v137 = objc_msgSend_rangeIsWithinTable_(v133, v134, &v195, v135, v136);

      if ((v137 & 1) == 0)
      {
        v181 = objc_msgSend_invalidReferenceError(TSCEError, v138, v139, v140, v141);
        v22 = objc_msgSend_raiseErrorOrConvert_(context, v182, v181, v183, v184);

        goto LABEL_58;
      }

      if (*&v195._durationFormat != v196._tableUID._lower || *&v195._numberFormat.decimalPlaces != v196._tableUID._upper)
      {
        v196.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_180:

        LODWORD(v8) = v188;
        goto LABEL_9;
      }

      v142 = objc_msgSend_preserveFlags(v127, v138, v139, v140, v141);
      LODWORD(v144) = v196.range._topLeft.row;
      LODWORD(v143) = v196.range._bottomRight.row;
      v145 = *&v196.range._topLeft & 0xFFFF00000000;
      v146 = *&v196.range._bottomRight & 0xFFFF00000000;
      if (v196.range._topLeft.row == 0x7FFFFFFFLL && v145 != 0x7FFF00000000 && v146 != 0x7FFF00000000)
      {
        break;
      }

      v156 = v145 == 0x7FFF00000000 && v146 == 0x7FFF00000000 && v196.range._topLeft.row != 0x7FFFFFFFLL;
      v152 = v196.range._bottomRight.row != 0x7FFFFFFFLL;
      tskFormat = v195._tskFormat;
      v148 = *&v195._formatType;
      if (v156 && v196.range._bottomRight.row != 0x7FFFFFFFLL && (v157.i64[0] = 0xFFFFFFFFLL, v157.i64[1] = 0xFFFFFFFFLL, v158.i64[0] = 0xFFFF00000000, v158.i64[1] = 0xFFFF00000000, v158.i32[0] = vuzp1_s16(vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*&v195._tskFormat, v158), v185))), v195._tskFormat).u32[0], v158.i32[1] = vuzp1_s16(*&v195, vmovn_s64(vceqq_s64(vandq_s8(*&v195, v157), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1], (vminv_u16(*v158.i8) & 1) != 0))
      {
        v189 = v142 & 5 | v189 & 0xA;
        if (v196.range._topLeft.row == 0x7FFFFFFFLL)
        {
LABEL_97:
          v152 = 0;
          v149 = 0;
LABEL_98:
          v159 = tskFormat;
          goto LABEL_99;
        }
      }

      else
      {
        v189 &= v142;
        if (!v156)
        {
          goto LABEL_97;
        }
      }

      v149 = 0;
      v159 = v195._tskFormat;
LABEL_99:
      v160 = v159 & 0xFFFF00000000;
      v161 = v148 & 0xFFFF00000000;
      v162 = v159;
      if (v159 != 0x7FFFFFFFLL && v160 == 0x7FFF00000000 && v161 == 0x7FFF00000000)
      {
        v163 = 0;
        v164 = v148 != 0x7FFFFFFF;
        if (v152)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v164 = 0;
        if (v159 != 0x7FFFFFFFLL || v160 == 0x7FFF00000000)
        {
          v163 = 0;
          if (v152)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v163 = 0;
          if (v161 != 0x7FFF00000000)
          {
            v164 = 0;
            v163 = v148 == 0x7FFFFFFF;
          }

          if (v152)
          {
LABEL_112:
            v145 = 0;
            v146 = 0x3E700000000;
            if (!v164)
            {
              goto LABEL_113;
            }

            goto LABEL_106;
          }
        }
      }

      if (v149)
      {
        LODWORD(v144) = 0;
        LODWORD(v143) = 999999;
      }

      if (!v164)
      {
LABEL_113:
        if (v163)
        {
          LODWORD(v159) = 0;
          LODWORD(v148) = 999999;
        }

        v162 = v159;
        goto LABEL_116;
      }

LABEL_106:
      v160 = 0;
      v161 = 0x3E700000000;
LABEL_116:
      v165 = 0x7FFF00000000;
      if (v144 > v148)
      {
        goto LABEL_151;
      }

      v166 = 0x7FFF7FFFFFFFLL;
      v167 = 0x7FFFFFFFLL;
      if (v159 <= v143)
      {
        v168 = HIDWORD(v145);
        if (HIDWORD(v145) > HIDWORD(v161))
        {
          goto LABEL_152;
        }

        v169 = HIDWORD(v146);
        v170 = HIDWORD(v160);
        v167 = 0x7FFFFFFFLL;
        if (HIDWORD(v160) <= HIDWORD(v146))
        {
          if (v144 == 0x7FFFFFFFLL)
          {
LABEL_151:
            v166 = 0x7FFF7FFFFFFFLL;
LABEL_152:
            v167 = 0x7FFFFFFFLL;
            goto LABEL_153;
          }

          v166 = 0x7FFF7FFFFFFFLL;
          v167 = 0x7FFFFFFFLL;
          if (v145 != 0x7FFF00000000)
          {
            if (v143 == 0x7FFFFFFFLL)
            {
              goto LABEL_152;
            }

            v167 = 0x7FFFFFFFLL;
            if (v146 != 0x7FFF00000000)
            {
              if (v169 < v168)
              {
                goto LABEL_152;
              }

              v167 = 0x7FFFFFFFLL;
              if (v144 <= v143)
              {
                if (v162 == 0x7FFFFFFF)
                {
                  goto LABEL_152;
                }

                v167 = 0x7FFFFFFFLL;
                if (v160 != 0x7FFF00000000)
                {
                  if (v148 == 0x7FFFFFFFLL)
                  {
                    goto LABEL_152;
                  }

                  v167 = 0x7FFFFFFFLL;
                  if (v161 != 0x7FFF00000000)
                  {
                    v171 = HIDWORD(v161);
                    if (v170 > HIDWORD(v161))
                    {
                      goto LABEL_152;
                    }

                    v167 = 0x7FFFFFFFLL;
                    if (v159 <= v148)
                    {
                      if (v168 <= v170)
                      {
                        v172 = HIDWORD(v160);
                      }

                      else
                      {
                        v172 = HIDWORD(v145);
                      }

                      if (v144 <= v159)
                      {
                        v144 = v159;
                      }

                      else
                      {
                        v144 = v144;
                      }

                      v173 = v172 << 32;
                      if (v169 < v171)
                      {
                        v171 = v169;
                      }

                      if (v143 >= v148)
                      {
                        v143 = v148;
                      }

                      else
                      {
                        v143 = v143;
                      }

                      v174 = v171 << 32;
                      if (v152 && v164)
                      {
                        v174 = 0x7FFF00000000;
                        v165 = 0x7FFF00000000;
                      }

                      else
                      {
                        v165 = v173;
                      }

                      if (v149 && v163)
                      {
                        v143 = 0x7FFFFFFFLL;
                      }

                      v166 = (v174 | v143);
                      if (v149 && v163)
                      {
                        v167 = 0x7FFFFFFFLL;
                      }

                      else
                      {
                        v167 = v144;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_153:
      v175 = v167 | v165;
      v196.range._topLeft = (v167 | v165);
      v196.range._bottomRight = v166;
      v176 = HIDWORD(v165);
      v177 = HIDWORD(*&v166);
      v178 = v165 & 0xFFFF00000000;
      if ((v165 & 0xFFFF00000000) == 0x7FFF00000000 || v167 == 0x7FFFFFFF)
      {
        v179 = *&v166 & 0xFFFF00000000;
      }

      else
      {
        v179 = *&v166 & 0xFFFF00000000;
        if (v166.row != 0x7FFFFFFF && v179 != 0x7FFF00000000 && v176 <= v177 && v175 <= v166.row)
        {
          goto LABEL_175;
        }
      }

      if (v167 != 0x7FFFFFFF && v178 == 0x7FFF00000000 && v179 == 0x7FFF00000000)
      {
        if (v166.row == 0x7FFFFFFF || v175 > v166.row)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v167 != 0x7FFFFFFF || v178 == 0x7FFF00000000 || v179 == 0x7FFF00000000)
        {
          goto LABEL_180;
        }

        if (v176 > v177 || v166.row != 0x7FFFFFFF)
        {
          goto LABEL_180;
        }
      }

LABEL_175:

      v23 = ++v24 < v186;
      if (v186 == v24)
      {
        LODWORD(v8) = v188;
        LODWORD(v24) = v188;
        goto LABEL_9;
      }
    }

    tskFormat = v195._tskFormat;
    v148 = *&v195._formatType;
    v149 = v196.range._bottomRight.row == 0x7FFFFFFFLL;
    if (v196.range._bottomRight.row == 0x7FFFFFFFLL && (v150.i64[0] = 0xFFFFFFFFLL, v150.i64[1] = 0xFFFFFFFFLL, v151.i64[0] = 0xFFFF00000000, v151.i64[1] = 0xFFFF00000000, v151.i32[0] = vuzp1_s16(vmovn_s64(vceqq_s64(vandq_s8(*&v195._tskFormat, v151), v185)), v195._tskFormat).u32[0], v151.i32[1] = vuzp1_s16(*&v195, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*&v195, v150), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1], (vminv_u16(*v151.i8) & 1) != 0))
    {
      v152 = 0;
      v153 = v142 & 0xA | v189 & 5;
    }

    else
    {
      v152 = 0;
      v153 = v142 & v189;
    }

    v189 = v153;
    goto LABEL_98;
  }

  v23 = 0;
  LOBYTE(v189) = 0;
LABEL_8:
  LODWORD(v24) = 1;
LABEL_9:
  v25 = *&v196.range._topLeft & 0xFFFF00000000;
  if (v196.range._topLeft.row == 0x7FFFFFFFLL || v25 == 0x7FFF00000000)
  {
    v27 = *&v196.range._bottomRight & 0xFFFF00000000;
  }

  else
  {
    v27 = *&v196.range._bottomRight & 0xFFFF00000000;
    if (v196.range._bottomRight.row != 0x7FFFFFFF && v27 != 0x7FFF00000000 && v196.range._topLeft.column <= v196.range._bottomRight.column && v196.range._topLeft.row <= v196.range._bottomRight.row)
    {
      goto LABEL_36;
    }
  }

  if (v196.range._topLeft.row == 0x7FFFFFFFLL || v25 != 0x7FFF00000000 || v27 != 0x7FFF00000000)
  {
    if (v196.range._topLeft.row != 0x7FFFFFFFLL || v25 == 0x7FFF00000000 || v27 == 0x7FFF00000000 || v196.range._bottomRight.row != 0x7FFFFFFF || v196.range._topLeft.column > v196.range._bottomRight.column)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (v196.range._bottomRight.row != 0x7FFFFFFF && v196.range._topLeft.row <= v196.range._bottomRight.row)
  {
LABEL_36:
    if (TSCERangeRef::isValid(&v196))
    {
      v38 = [TSCEReferenceValue alloc];
      LOBYTE(v195._tskFormat) = v189;
      v22 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v38, v39, context, &v196, &v195);
      objc_msgSend_setIsOutputOfAFunction_(v22, v40, 1, v41, v42);
      sub_221256020(&v197, &v190);
      TSCEFormat::TSCEFormat(&v195, &v190);
      objc_msgSend_setFormat_(v22, v43, &v195, v44, v45);
      goto LABEL_58;
    }

    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "+[TSCEFunction_INTERSECT_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", v36, v37);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v73, v74);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v76, v71, v75, 1697, 0, "Bad reference should have been detected earlier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79, v80);
    v15 = objc_msgSend_invalidReferenceError(TSCEError, v81, v82, v83, v84);
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v85, v15, v86, v87);
LABEL_6:

    goto LABEL_58;
  }

LABEL_38:
  v46 = v8;
  if (!v23)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSCEFunction_INTERSECT_RANGES evaluateForArgsWithContext:functionSpec:arguments:]", spec, arguments);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 1680, 0, "Should have detected bad reference during loop");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  memset(&v195, 0, 24);
  v58 = v46 - 1;
  if (v46 < 1)
  {
    v69 = 0;
    v68 = 0;
LABEL_49:
    memset(v191, 0, sizeof(v191));
    sub_221478AC0(v191, v68, v69, (v69 - v68) >> 3);
    v92 = objc_msgSend_containingTable(context, v88, v89, v90, v91);
    v97 = objc_msgSend_calcEngine(context, v93, v94, v95, v96);
    v99 = objc_msgSend_invalidIntersectionError_hostTableUID_calcEngine_(TSCEError, v98, v191, v92, v97);
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v100, v99, v101, v102);

    v200[0] = v191;
    sub_22107C2C0(v200);
  }

  else
  {
    v59 = 0;
    if (v24 < v58)
    {
      v58 = v24;
    }

    v60 = v58 + 1;
    while (1)
    {
      v61 = *(*arguments + 8 * v59);
      v192 = 0;
      v63 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v61, v62, context, spec, v59, &v192);
      v67 = v192;
      v200[0] = v63;
      if (v67)
      {
        break;
      }

      sub_22146EC88(&v195, v200);

      if (v60 == ++v59)
      {
        v68 = v195._tskFormat;
        v69 = *&v195._formatType;
        goto LABEL_49;
      }
    }

    v22 = objc_msgSend_raiseErrorOrConvert_(context, v64, v67, v65, v66);
  }

  v200[0] = &v195;
  sub_22107C2C0(v200);
LABEL_58:
  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  return v22;
}

@end