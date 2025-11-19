@interface TSCEFunction_ROMAN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ROMAN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  if (*(a5 + 1) - *a5 < 9uLL)
  {
    v17 = 0;
  }

  else
  {
    v10 = *(*a5 + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13, v14))
    {
      v17 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v154 = 0;
    v39 = objc_msgSend_deepType_outError_(v10, v15, a3, &v154, v16);
    v40 = v154;
    v42 = v40;
    if (v39 == 2)
    {
      v153 = v40;
      v43 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v10, v41, a3, a4, 1, &v153);
      v19 = v153;

      if (!v19)
      {
        if (v43)
        {
          v17 = 0;
        }

        else
        {
          v17 = 4;
        }

        goto LABEL_4;
      }

      v47 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v19, v45, v46);
      goto LABEL_13;
    }

    v152 = v40;
    v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v41, a3, a4, 1, &v152);
    v19 = v152;

    if (v19)
    {
      v38 = objc_msgSend_raiseErrorOrConvert_(a3, v55, v19, v57, v58);
LABEL_29:

      goto LABEL_30;
    }

    if (objc_msgSend_hasUnits(v54, v55, v56, v57, v58))
    {
      v64 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
      v67 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v65, v64, 2, v66);
      v38 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v67, v69, v70);

      goto LABEL_29;
    }

    v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v54, v60, v61, v62, v63);
    v150._decimal.w[1] = v74;
    if (TSUDecimal::isNegative(&v150))
    {

LABEL_103:
      v19 = objc_msgSend_functionName(a4, v8, v75, v76, v77);
      v10 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v100, 2, v19, 1, 0.0);
      v47 = objc_msgSend_raiseErrorOrConvert_(a3, v101, v10, v102, v103);
LABEL_13:
      v38 = v47;
LABEL_30:

      goto LABEL_279;
    }

    v17 = TSUDecimal::truncateWithRounding(&v150);

    if (v17 < 0)
    {
      goto LABEL_103;
    }
  }

LABEL_6:
  v151 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v8, a3, a4, 0, &v151);
  v19 = v151;
  v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v18, v20, v21, v22, v23);
  v150._decimal.w[1] = v24;
  TSUDecimal::truncateToDoubleWithRounding(&v150);
  v26 = v25;

  if (!v19)
  {
    if (v17 >= 5)
    {
      v32 = objc_msgSend_functionName(a4, v27, v28, v29, v30);
      v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v33, 2, v32, 1, 4.0);
      v38 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v34, v36, v37);

      v19 = v32;
      goto LABEL_279;
    }

    v48 = objc_msgSend_string(MEMORY[0x277CCACA8], v27, v28, v29, v30);
    v52 = v48;
    if (v17 <= 1)
    {
      if (v17)
      {
        if (v26 >= 1000.0)
        {
          do
          {
            v53 = objc_msgSend_stringByAppendingString_(v52, v49, @"M", v50, v51);

            v26 = v26 + -1000.0;
            v52 = v53;
          }

          while (v26 >= 1000.0);
        }

        else
        {
          v53 = v48;
        }

        if (v26 >= 950.0)
        {
          v80 = objc_msgSend_stringByAppendingString_(v53, v49, @"LM", v50, v51);
          v81 = -950.0;
        }

        else
        {
          if (v26 < 900.0)
          {
            goto LABEL_71;
          }

          v80 = objc_msgSend_stringByAppendingString_(v53, v49, @"CM", v50, v51);
          v81 = -900.0;
        }

        v26 = v26 + v81;
        v53 = v80;
LABEL_71:
        if (v26 >= 500.0)
        {
          v89 = objc_msgSend_stringByAppendingString_(v53, v49, @"D", v50, v51);

          v26 = v26 + -500.0;
          v53 = v89;
        }

        if (v26 >= 450.0)
        {
          v90 = objc_msgSend_stringByAppendingString_(v53, v49, @"LD", v50, v51);
          v92 = -450.0;
        }

        else
        {
          if (v26 < 400.0)
          {
            v90 = v53;
            goto LABEL_117;
          }

          v90 = objc_msgSend_stringByAppendingString_(v53, v49, @"CD", v50, v51);
          v92 = -400.0;
        }

        v26 = v26 + v92;
LABEL_117:
        if (v26 >= 100.0)
        {
          do
          {
            v107 = objc_msgSend_stringByAppendingString_(v90, v49, @"C", v50, v51);

            v26 = v26 + -100.0;
            v90 = v107;
          }

          while (v26 >= 100.0);
        }

        else
        {
          v107 = v90;
        }

        if (v26 >= 95.0)
        {
          v108 = objc_msgSend_stringByAppendingString_(v107, v49, @"VC", v50, v51);
          v109 = -95.0;
        }

        else
        {
          if (v26 < 90.0)
          {
            goto LABEL_125;
          }

          v108 = objc_msgSend_stringByAppendingString_(v107, v49, @"XC", v50, v51);
          v109 = -90.0;
        }

        v26 = v26 + v109;
        v107 = v108;
LABEL_125:
        if (v26 >= 50.0)
        {
          v110 = objc_msgSend_stringByAppendingString_(v107, v49, @"L", v50, v51);

          v26 = v26 + -50.0;
          v107 = v110;
        }

        if (v26 >= 45.0)
        {
          v111 = objc_msgSend_stringByAppendingString_(v107, v49, @"VL", v50, v51);
          v112 = -45.0;
        }

        else
        {
          if (v26 < 40.0)
          {
            v111 = v107;
            goto LABEL_134;
          }

          v111 = objc_msgSend_stringByAppendingString_(v107, v49, @"XL", v50, v51);
          v112 = -40.0;
        }

        v26 = v26 + v112;
LABEL_134:
        if (v26 >= 10.0)
        {
          do
          {
            v96 = objc_msgSend_stringByAppendingString_(v111, v49, @"X", v50, v51);

            v26 = v26 + -10.0;
            v111 = v96;
          }

          while (v26 >= 10.0);
        }

        else
        {
          v96 = v111;
        }

        if (v26 >= 9.0)
        {
          v113 = objc_msgSend_stringByAppendingString_(v96, v49, @"IX", v50, v51);

          v26 = v26 + -9.0;
          v96 = v113;
        }

        if (v26 >= 5.0)
        {
          v114 = objc_msgSend_stringByAppendingString_(v96, v49, @"V", v50, v51);

          v26 = v26 + -5.0;
          v96 = v114;
        }

        if (v26 >= 4.0)
        {
          v115 = objc_msgSend_stringByAppendingString_(v96, v49, @"IV", v50, v51);

          v26 = v26 + -4.0;
          v96 = v115;
        }

        if (v26 >= 1.0)
        {
          do
          {
            v19 = objc_msgSend_stringByAppendingString_(v96, v49, @"I", v50, v51);

            v26 = v26 + -1.0;
            v96 = v19;
          }

          while (v26 >= 1.0);
          goto LABEL_274;
        }

LABEL_273:
        v19 = v96;
        goto LABEL_274;
      }

      if (v26 >= 1000.0)
      {
        do
        {
          v72 = objc_msgSend_stringByAppendingString_(v52, v49, @"M", v50, v51);

          v26 = v26 + -1000.0;
          v52 = v72;
        }

        while (v26 >= 1000.0);
      }

      else
      {
        v72 = v48;
      }

      if (v26 >= 900.0)
      {
        v84 = objc_msgSend_stringByAppendingString_(v72, v49, @"CM", v50, v51);

        v26 = v26 + -900.0;
        v72 = v84;
      }

      if (v26 >= 500.0)
      {
        v85 = objc_msgSend_stringByAppendingString_(v72, v49, @"D", v50, v51);

        v26 = v26 + -500.0;
        v72 = v85;
      }

      if (v26 >= 400.0)
      {
        v86 = objc_msgSend_stringByAppendingString_(v72, v49, @"CD", v50, v51);

        v26 = v26 + -400.0;
      }

      else
      {
        v86 = v72;
      }

      if (v26 >= 100.0)
      {
        do
        {
          v91 = objc_msgSend_stringByAppendingString_(v86, v49, @"C", v50, v51);

          v26 = v26 + -100.0;
          v86 = v91;
        }

        while (v26 >= 100.0);
      }

      else
      {
        v91 = v86;
      }

      if (v26 >= 90.0)
      {
        v93 = objc_msgSend_stringByAppendingString_(v91, v49, @"XC", v50, v51);

        v26 = v26 + -90.0;
        v91 = v93;
      }

      if (v26 >= 50.0)
      {
        v94 = objc_msgSend_stringByAppendingString_(v91, v49, @"L", v50, v51);

        v26 = v26 + -50.0;
        v91 = v94;
      }

      if (v26 >= 40.0)
      {
        v95 = objc_msgSend_stringByAppendingString_(v91, v49, @"XL", v50, v51);

        v26 = v26 + -40.0;
      }

      else
      {
        v95 = v91;
      }

      if (v26 >= 10.0)
      {
        do
        {
          v96 = objc_msgSend_stringByAppendingString_(v95, v49, @"X", v50, v51);

          v26 = v26 + -10.0;
          v95 = v96;
        }

        while (v26 >= 10.0);
      }

      else
      {
        v96 = v95;
      }

      if (v26 >= 9.0)
      {
        v97 = objc_msgSend_stringByAppendingString_(v96, v49, @"IX", v50, v51);

        v26 = v26 + -9.0;
        v96 = v97;
      }

      if (v26 >= 5.0)
      {
        v98 = objc_msgSend_stringByAppendingString_(v96, v49, @"V", v50, v51);

        v26 = v26 + -5.0;
        v96 = v98;
      }

      if (v26 >= 4.0)
      {
        v99 = objc_msgSend_stringByAppendingString_(v96, v49, @"IV", v50, v51);

        v26 = v26 + -4.0;
        v96 = v99;
      }

      if (v26 < 1.0)
      {
        goto LABEL_273;
      }

      do
      {
        v19 = objc_msgSend_stringByAppendingString_(v96, v49, @"I", v50, v51);

        v26 = v26 + -1.0;
        v96 = v19;
      }

      while (v26 >= 1.0);
LABEL_274:
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v49, a3, v50, v51);
      }

      else
      {
        memset(&v150, 0, 32);
      }

      v31 = objc_msgSend_stringValue_format_(TSCEStringValue, v49, v19, &v150, v51);
      goto LABEL_278;
    }

    if (v17 != 2)
    {
      if (v17 == 3)
      {
        if (v26 >= 1000.0)
        {
          do
          {
            v59 = objc_msgSend_stringByAppendingString_(v52, v49, @"M", v50, v51);

            v26 = v26 + -1000.0;
            v52 = v59;
          }

          while (v26 >= 1000.0);
        }

        else
        {
          v59 = v48;
        }

        if (v26 >= 995.0)
        {
          v82 = objc_msgSend_stringByAppendingString_(v59, v49, @"VM", v50, v51);
          v83 = -995.0;
        }

        else if (v26 >= 990.0)
        {
          v82 = objc_msgSend_stringByAppendingString_(v59, v49, @"XM", v50, v51);
          v83 = -990.0;
        }

        else if (v26 >= 950.0)
        {
          v82 = objc_msgSend_stringByAppendingString_(v59, v49, @"LM", v50, v51);
          v83 = -950.0;
        }

        else
        {
          if (v26 < 900.0)
          {
            goto LABEL_149;
          }

          v82 = objc_msgSend_stringByAppendingString_(v59, v49, @"CM", v50, v51);
          v83 = -900.0;
        }

        v26 = v26 + v83;
        v59 = v82;
LABEL_149:
        if (v26 >= 500.0)
        {
          v116 = objc_msgSend_stringByAppendingString_(v59, v49, @"D", v50, v51);

          v26 = v26 + -500.0;
          v59 = v116;
        }

        if (v26 >= 495.0)
        {
          v117 = objc_msgSend_stringByAppendingString_(v59, v49, @"VD", v50, v51);
          v118 = -495.0;
        }

        else if (v26 >= 490.0)
        {
          v117 = objc_msgSend_stringByAppendingString_(v59, v49, @"XD", v50, v51);
          v118 = -490.0;
        }

        else if (v26 >= 450.0)
        {
          v117 = objc_msgSend_stringByAppendingString_(v59, v49, @"LD", v50, v51);
          v118 = -450.0;
        }

        else
        {
          if (v26 < 400.0)
          {
            v117 = v59;
            goto LABEL_208;
          }

          v117 = objc_msgSend_stringByAppendingString_(v59, v49, @"CD", v50, v51);
          v118 = -400.0;
        }

        v26 = v26 + v118;
LABEL_208:
        if (v26 >= 100.0)
        {
          do
          {
            v131 = objc_msgSend_stringByAppendingString_(v117, v49, @"C", v50, v51);

            v26 = v26 + -100.0;
            v117 = v131;
          }

          while (v26 >= 100.0);
        }

        else
        {
          v131 = v117;
        }

        if (v26 >= 99.0)
        {
          v132 = objc_msgSend_stringByAppendingString_(v131, v49, @"IC", v50, v51);
          v133 = -99.0;
        }

        else if (v26 >= 95.0)
        {
          v132 = objc_msgSend_stringByAppendingString_(v131, v49, @"VC", v50, v51);
          v133 = -95.0;
        }

        else
        {
          if (v26 < 90.0)
          {
            goto LABEL_218;
          }

          v132 = objc_msgSend_stringByAppendingString_(v131, v49, @"XC", v50, v51);
          v133 = -90.0;
        }

        v26 = v26 + v133;
        v131 = v132;
LABEL_218:
        if (v26 >= 50.0)
        {
          v134 = objc_msgSend_stringByAppendingString_(v131, v49, @"L", v50, v51);

          v26 = v26 + -50.0;
          v131 = v134;
        }

        if (v26 >= 49.0)
        {
          v135 = objc_msgSend_stringByAppendingString_(v131, v49, @"IL", v50, v51);
          v136 = -49.0;
        }

        else if (v26 >= 45.0)
        {
          v135 = objc_msgSend_stringByAppendingString_(v131, v49, @"VL", v50, v51);
          v136 = -45.0;
        }

        else
        {
          if (v26 < 40.0)
          {
            v135 = v131;
LABEL_228:
            if (v26 >= 10.0)
            {
              do
              {
                v96 = objc_msgSend_stringByAppendingString_(v135, v49, @"X", v50, v51);

                v26 = v26 + -10.0;
                v135 = v96;
              }

              while (v26 >= 10.0);
            }

            else
            {
              v96 = v135;
            }

            if (v26 >= 9.0)
            {
              v137 = objc_msgSend_stringByAppendingString_(v96, v49, @"IX", v50, v51);

              v26 = v26 + -9.0;
              v96 = v137;
            }

            if (v26 >= 5.0)
            {
              v138 = objc_msgSend_stringByAppendingString_(v96, v49, @"V", v50, v51);

              v26 = v26 + -5.0;
              v96 = v138;
            }

            if (v26 >= 4.0)
            {
              v139 = objc_msgSend_stringByAppendingString_(v96, v49, @"IV", v50, v51);

              v26 = v26 + -4.0;
              v96 = v139;
            }

            if (v26 < 1.0)
            {
              goto LABEL_273;
            }

            do
            {
              v19 = objc_msgSend_stringByAppendingString_(v96, v49, @"I", v50, v51);

              v26 = v26 + -1.0;
              v96 = v19;
            }

            while (v26 >= 1.0);
            goto LABEL_274;
          }

          v135 = objc_msgSend_stringByAppendingString_(v131, v49, @"XL", v50, v51);
          v136 = -40.0;
        }

        v26 = v26 + v136;
        goto LABEL_228;
      }

      if (v26 >= 1000.0)
      {
        do
        {
          v71 = objc_msgSend_stringByAppendingString_(v52, v49, @"M", v50, v51);

          v26 = v26 + -1000.0;
          v52 = v71;
        }

        while (v26 >= 1000.0);
      }

      else
      {
        v71 = v48;
      }

      if (v26 >= 999.0)
      {
        v78 = objc_msgSend_stringByAppendingString_(v71, v49, @"IM", v50, v51);
        v79 = -999.0;
      }

      else if (v26 >= 995.0)
      {
        v78 = objc_msgSend_stringByAppendingString_(v71, v49, @"VM", v50, v51);
        v79 = -995.0;
      }

      else if (v26 >= 990.0)
      {
        v78 = objc_msgSend_stringByAppendingString_(v71, v49, @"XM", v50, v51);
        v79 = -990.0;
      }

      else if (v26 >= 950.0)
      {
        v78 = objc_msgSend_stringByAppendingString_(v71, v49, @"LM", v50, v51);
        v79 = -950.0;
      }

      else
      {
        if (v26 < 900.0)
        {
          goto LABEL_195;
        }

        v78 = objc_msgSend_stringByAppendingString_(v71, v49, @"CM", v50, v51);
        v79 = -900.0;
      }

      v26 = v26 + v79;
      v71 = v78;
LABEL_195:
      if (v26 >= 500.0)
      {
        v128 = objc_msgSend_stringByAppendingString_(v71, v49, @"D", v50, v51);

        v26 = v26 + -500.0;
        v71 = v128;
      }

      if (v26 >= 499.0)
      {
        v129 = objc_msgSend_stringByAppendingString_(v71, v49, @"ID", v50, v51);
        v130 = -499.0;
      }

      else if (v26 >= 495.0)
      {
        v129 = objc_msgSend_stringByAppendingString_(v71, v49, @"VD", v50, v51);
        v130 = -495.0;
      }

      else if (v26 >= 490.0)
      {
        v129 = objc_msgSend_stringByAppendingString_(v71, v49, @"XD", v50, v51);
        v130 = -490.0;
      }

      else if (v26 >= 450.0)
      {
        v129 = objc_msgSend_stringByAppendingString_(v71, v49, @"LD", v50, v51);
        v130 = -450.0;
      }

      else
      {
        if (v26 < 400.0)
        {
          v129 = v71;
          goto LABEL_243;
        }

        v129 = objc_msgSend_stringByAppendingString_(v71, v49, @"CD", v50, v51);
        v130 = -400.0;
      }

      v26 = v26 + v130;
LABEL_243:
      if (v26 >= 100.0)
      {
        do
        {
          v140 = objc_msgSend_stringByAppendingString_(v129, v49, @"C", v50, v51);

          v26 = v26 + -100.0;
          v129 = v140;
        }

        while (v26 >= 100.0);
      }

      else
      {
        v140 = v129;
      }

      if (v26 >= 99.0)
      {
        v141 = objc_msgSend_stringByAppendingString_(v140, v49, @"IC", v50, v51);
        v142 = -99.0;
      }

      else if (v26 >= 95.0)
      {
        v141 = objc_msgSend_stringByAppendingString_(v140, v49, @"VC", v50, v51);
        v142 = -95.0;
      }

      else
      {
        if (v26 < 90.0)
        {
          goto LABEL_253;
        }

        v141 = objc_msgSend_stringByAppendingString_(v140, v49, @"XC", v50, v51);
        v142 = -90.0;
      }

      v26 = v26 + v142;
      v140 = v141;
LABEL_253:
      if (v26 >= 50.0)
      {
        v143 = objc_msgSend_stringByAppendingString_(v140, v49, @"L", v50, v51);

        v26 = v26 + -50.0;
        v140 = v143;
      }

      if (v26 >= 49.0)
      {
        v144 = objc_msgSend_stringByAppendingString_(v140, v49, @"IL", v50, v51);
        v145 = -49.0;
      }

      else if (v26 >= 45.0)
      {
        v144 = objc_msgSend_stringByAppendingString_(v140, v49, @"VL", v50, v51);
        v145 = -45.0;
      }

      else
      {
        if (v26 < 40.0)
        {
          v144 = v140;
LABEL_263:
          if (v26 >= 10.0)
          {
            do
            {
              v96 = objc_msgSend_stringByAppendingString_(v144, v49, @"X", v50, v51);

              v26 = v26 + -10.0;
              v144 = v96;
            }

            while (v26 >= 10.0);
          }

          else
          {
            v96 = v144;
          }

          if (v26 >= 9.0)
          {
            v146 = objc_msgSend_stringByAppendingString_(v96, v49, @"IX", v50, v51);

            v26 = v26 + -9.0;
            v96 = v146;
          }

          if (v26 >= 5.0)
          {
            v147 = objc_msgSend_stringByAppendingString_(v96, v49, @"V", v50, v51);

            v26 = v26 + -5.0;
            v96 = v147;
          }

          if (v26 >= 4.0)
          {
            v148 = objc_msgSend_stringByAppendingString_(v96, v49, @"IV", v50, v51);

            v26 = v26 + -4.0;
            v96 = v148;
          }

          if (v26 < 1.0)
          {
            goto LABEL_273;
          }

          do
          {
            v19 = objc_msgSend_stringByAppendingString_(v96, v49, @"I", v50, v51);

            v26 = v26 + -1.0;
            v96 = v19;
          }

          while (v26 >= 1.0);
          goto LABEL_274;
        }

        v144 = objc_msgSend_stringByAppendingString_(v140, v49, @"XL", v50, v51);
        v145 = -40.0;
      }

      v26 = v26 + v145;
      goto LABEL_263;
    }

    if (v26 >= 1000.0)
    {
      do
      {
        v73 = objc_msgSend_stringByAppendingString_(v52, v49, @"M", v50, v51);

        v26 = v26 + -1000.0;
        v52 = v73;
      }

      while (v26 >= 1000.0);
    }

    else
    {
      v73 = v48;
    }

    if (v26 >= 990.0)
    {
      v87 = objc_msgSend_stringByAppendingString_(v73, v49, @"XM", v50, v51);
      v88 = -990.0;
    }

    else if (v26 >= 950.0)
    {
      v87 = objc_msgSend_stringByAppendingString_(v73, v49, @"LM", v50, v51);
      v88 = -950.0;
    }

    else
    {
      if (v26 < 900.0)
      {
        goto LABEL_108;
      }

      v87 = objc_msgSend_stringByAppendingString_(v73, v49, @"CM", v50, v51);
      v88 = -900.0;
    }

    v26 = v26 + v88;
    v73 = v87;
LABEL_108:
    if (v26 >= 500.0)
    {
      v104 = objc_msgSend_stringByAppendingString_(v73, v49, @"D", v50, v51);

      v26 = v26 + -500.0;
      v73 = v104;
    }

    if (v26 >= 490.0)
    {
      v105 = objc_msgSend_stringByAppendingString_(v73, v49, @"XD", v50, v51);
      v106 = -490.0;
    }

    else if (v26 >= 450.0)
    {
      v105 = objc_msgSend_stringByAppendingString_(v73, v49, @"LD", v50, v51);
      v106 = -450.0;
    }

    else
    {
      if (v26 < 400.0)
      {
        v105 = v73;
        goto LABEL_160;
      }

      v105 = objc_msgSend_stringByAppendingString_(v73, v49, @"CD", v50, v51);
      v106 = -400.0;
    }

    v26 = v26 + v106;
LABEL_160:
    if (v26 >= 100.0)
    {
      do
      {
        v119 = objc_msgSend_stringByAppendingString_(v105, v49, @"C", v50, v51);

        v26 = v26 + -100.0;
        v105 = v119;
      }

      while (v26 >= 100.0);
    }

    else
    {
      v119 = v105;
    }

    if (v26 >= 99.0)
    {
      v120 = objc_msgSend_stringByAppendingString_(v119, v49, @"IC", v50, v51);
      v121 = -99.0;
    }

    else if (v26 >= 95.0)
    {
      v120 = objc_msgSend_stringByAppendingString_(v119, v49, @"VC", v50, v51);
      v121 = -95.0;
    }

    else
    {
      if (v26 < 90.0)
      {
        goto LABEL_170;
      }

      v120 = objc_msgSend_stringByAppendingString_(v119, v49, @"XC", v50, v51);
      v121 = -90.0;
    }

    v26 = v26 + v121;
    v119 = v120;
LABEL_170:
    if (v26 >= 50.0)
    {
      v122 = objc_msgSend_stringByAppendingString_(v119, v49, @"L", v50, v51);

      v26 = v26 + -50.0;
      v119 = v122;
    }

    if (v26 >= 49.0)
    {
      v123 = objc_msgSend_stringByAppendingString_(v119, v49, @"IL", v50, v51);
      v124 = -49.0;
    }

    else if (v26 >= 45.0)
    {
      v123 = objc_msgSend_stringByAppendingString_(v119, v49, @"VL", v50, v51);
      v124 = -45.0;
    }

    else
    {
      if (v26 < 40.0)
      {
        v123 = v119;
LABEL_181:
        if (v26 >= 10.0)
        {
          do
          {
            v96 = objc_msgSend_stringByAppendingString_(v123, v49, @"X", v50, v51);

            v26 = v26 + -10.0;
            v123 = v96;
          }

          while (v26 >= 10.0);
        }

        else
        {
          v96 = v123;
        }

        if (v26 >= 9.0)
        {
          v125 = objc_msgSend_stringByAppendingString_(v96, v49, @"IX", v50, v51);

          v26 = v26 + -9.0;
          v96 = v125;
        }

        if (v26 >= 5.0)
        {
          v126 = objc_msgSend_stringByAppendingString_(v96, v49, @"V", v50, v51);

          v26 = v26 + -5.0;
          v96 = v126;
        }

        if (v26 >= 4.0)
        {
          v127 = objc_msgSend_stringByAppendingString_(v96, v49, @"IV", v50, v51);

          v26 = v26 + -4.0;
          v96 = v127;
        }

        if (v26 < 1.0)
        {
          goto LABEL_273;
        }

        do
        {
          v19 = objc_msgSend_stringByAppendingString_(v96, v49, @"I", v50, v51);

          v26 = v26 + -1.0;
          v96 = v19;
        }

        while (v26 >= 1.0);
        goto LABEL_274;
      }

      v123 = objc_msgSend_stringByAppendingString_(v119, v49, @"XL", v50, v51);
      v124 = -40.0;
    }

    v26 = v26 + v124;
    goto LABEL_181;
  }

  v31 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v19, v29, v30);
LABEL_278:
  v38 = v31;
LABEL_279:

  return v38;
}

@end