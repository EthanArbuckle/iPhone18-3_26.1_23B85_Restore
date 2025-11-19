@interface CRBiDiTransform
+ (unint64_t)layoutDirectionForVisualString:(id)a3 visualDirectionality:(unint64_t)a4 logicalBaseDirection:(int)a5;
- (CRBiDiTransform)init;
- (id)transformVisualToLogical:(id)a3 visualDirectionality:(unint64_t)a4 logicalBaseDirectionality:(unint64_t)a5 baseDirectionalityPredictionMode:(unint64_t)a6 outTokenizedLogicalOrderIndexes:(id *)a7 outReorderingPermutation:(id *)a8 outMirroredVisualString:(id *)a9 outLogicalBaseDirection:(char *)a10;
- (void)dealloc;
@end

@implementation CRBiDiTransform

- (CRBiDiTransform)init
{
  v6.receiver = self;
  v6.super_class = CRBiDiTransform;
  v2 = [(CRBiDiTransform *)&v6 init];
  if (v2)
  {
    v3 = ubidi_open();
    v2->_icuBiDiTransform = v3;
    if (!v3)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  v4 = v2;
LABEL_6:

  return v4;
}

- (void)dealloc
{
  if (self->_icuBiDiTransform)
  {
    ubidi_close();
    self->_icuBiDiTransform = 0;
  }

  v3.receiver = self;
  v3.super_class = CRBiDiTransform;
  [(CRBiDiTransform *)&v3 dealloc];
}

- (id)transformVisualToLogical:(id)a3 visualDirectionality:(unint64_t)a4 logicalBaseDirectionality:(unint64_t)a5 baseDirectionalityPredictionMode:(unint64_t)a6 outTokenizedLogicalOrderIndexes:(id *)a7 outReorderingPermutation:(id *)a8 outMirroredVisualString:(id *)a9 outLogicalBaseDirection:(char *)a10
{
  v89 = a8;
  v104 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = v15;
  v91 = a9;
  v90 = a7;
  v88 = a4;
  if (a4 == 2)
  {
    v17 = [v15 _crStringByReversingComposedCharacterSequences];
    v18 = v16;
  }

  else
  {
    v17 = v15;
    v18 = [v17 _crStringByReversingComposedCharacterSequences];
  }

  v19 = v18;
  v20 = [v17 length];
  v93 = v85;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = v85 - v23;
  [v17 getCharacters:{v85 - v23, v22}];
  *&v24[2 * [v17 length]] = 0;
  [v17 length];
  v100 = 0;
  os_unfair_lock_lock(&self->_lock);
  v25 = 1;
  ubidi_setInverse();
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      goto LABEL_33;
    }

    if (a5 != 4)
    {
      if (a5 == 3)
      {
        v25 = -2;
        goto LABEL_33;
      }

LABEL_15:
      v26 = CROSLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v103 = a5;
        v27 = "BiDi Visual->Logical unsupported base direction: %ld";
        v28 = v26;
        v29 = 12;
LABEL_42:
        _os_log_impl(&dword_1B40D2000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (!a5)
  {
    ubidi_setReorderingMode();
    ubidi_setPara();
    if (v100 >= 1)
    {
      v26 = CROSLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v27 = "BiDi Visual->Logical transform failed in ubidi_setPara (base directionality prediction)";
LABEL_41:
        v28 = v26;
        v29 = 2;
        goto LABEL_42;
      }

LABEL_43:

      os_unfair_lock_unlock(&self->_lock);
      v42 = 0;
      goto LABEL_44;
    }

    ParaLevel = ubidi_getParaLevel();
    if ([v19 length])
    {
      LODWORD(v95) = ParaLevel;
      v87 = v16;
      v31 = 0;
      v32 = 0;
      ParaLevel = 0;
      do
      {
        v33 = [v19 characterAtIndex:v31];
        if ((v33 - 1611) >= 8u)
        {
          v34 = vcgt_u16(0x9002B000900030, vadd_s16(vdup_n_s16(v33), 0x19004B0F790F8B0));
          if ((vmaxv_u16(v34) & 1) != 0 || (v33 & 0xFF00) == 0x600)
          {
            ++ParaLevel;
          }

          else
          {
            v34.i16[0] = v33;
            v34.i16[1] = v33 & 0xFFDF;
            v35 = vdup_lane_s16(v34, 0);
            v35.i16[1] = v33 & 0xFFDF;
            v32 += vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v35, 0xFF08FF28FFBFFF40))) & 1;
          }
        }

        ++v31;
      }

      while ([v19 length] > v31);
      v36 = v32;
      v37 = ParaLevel;
      v16 = v87;
      LOBYTE(ParaLevel) = v95;
      if (!a6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v37 = 0.0;
      v36 = 0.0;
      if (!a6)
      {
LABEL_29:
        if ((ParaLevel & ((v36 / v37) < 0.5)) != 0)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        goto LABEL_33;
      }
    }

    if (a6 != 1)
    {
LABEL_32:
      v25 = -1;
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (a5 != 1)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_33:
  if (a10)
  {
    *a10 = v25;
  }

  ubidi_setReorderingMode();
  ubidi_setPara();
  if (v100 >= 1)
  {
    v26 = CROSLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "BiDi Visual->Logical transform failed in ubidi_setPara";
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v38 = [v19 length];
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v85 - v40;
  ubidi_getVisualMap();
  if (v100 >= 1)
  {
    v26 = CROSLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "BiDi Visual->Logical transform failed in ubidi_getVisualMap";
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v92 = [MEMORY[0x1E695DF70] array];
  v94 = [MEMORY[0x1E695DF70] array];
  v95 = [MEMORY[0x1E695DFA0] orderedSet];
  if ([v19 length])
  {
    v44 = 0;
    do
    {
      v45 = [v19 length] + ~*&v41[4 * v44];
      v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "length") + ~*&v41[4 * v44]}];
      [v94 addObject:v46];

      if ([v19 characterAtIndex:v45] == 32)
      {
        v47 = v95;
        v48 = [v95 copy];
        [v92 addObject:v48];

        [v47 removeAllObjects];
      }

      else
      {
        v49 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
        [v95 addObject:v49];
      }

      ++v44;
    }

    while ([v19 length] > v44);
  }

  if ([v95 count] || !objc_msgSend(v19, "length"))
  {
    v50 = [v95 mutableCopy];
    [v92 addObject:v50];
  }

  v51 = [MEMORY[0x1E696AD60] string];
  v52 = [MEMORY[0x1E696AB08] _crBiDiMirroredCharacterSet];
  if (![v19 length])
  {
LABEL_60:
    v86 = v52;
    [v51 appendString:v19];
LABEL_61:
    os_unfair_lock_unlock(&self->_lock);
    v54 = [MEMORY[0x1E696AD60] string];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v55 = v94;
    v56 = [v55 countByEnumeratingWithState:&v96 objects:v101 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v97;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v97 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [v51 substringWithRange:{objc_msgSend(*(*(&v96 + 1) + 8 * i), "unsignedIntegerValue"), 1}];
          [v54 appendString:v60];
        }

        v57 = [v55 countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v57);
    }

    if (v88 == 2)
    {
      v61 = v51;
    }

    else
    {
      v87 = v16;
      if ([v55 count])
      {
        v62 = 0;
        do
        {
          v63 = MEMORY[0x1E696AD98];
          v64 = [v55 count];
          v65 = [v55 objectAtIndexedSubscript:v62];
          v66 = [v63 numberWithUnsignedInteger:{v64 + ~objc_msgSend(v65, "unsignedIntegerValue")}];
          [v55 setObject:v66 atIndexedSubscript:v62];

          ++v62;
        }

        while (v62 < [v55 count]);
      }

      v61 = [v51 _crStringByReversingComposedCharacterSequences];
      v16 = v87;
    }

    v67 = v89;
    v52 = v86;
    if (v89)
    {
      v68 = v55;
      *v67 = v55;
    }

    v69 = v90;
    if (v90)
    {
      *v69 = [v92 copy];
    }

    v70 = v91;
    if (v91)
    {
      *v70 = [v61 copy];
    }

    v42 = [v54 copy];

    goto LABEL_89;
  }

  v53 = 0;
  while (![v52 characterIsMember:{objc_msgSend(v19, "characterAtIndex:", v53)}])
  {
    if (++v53 >= [v19 length])
    {
      goto LABEL_60;
    }
  }

  v71 = [v17 length];
  v85[1] = v85;
  *&v73 = MEMORY[0x1EEE9AC00](v71, v72).n128_u64[0];
  v75 = v85 - v74;
  v76 = [v19 length];
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = v85 - v78;
  ubidi_writeReordered();
  if (v100 >= 1)
  {
    v80 = CROSLogForCategory(0);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v81 = "BiDi Visual->Logical transform failed in ubidi_writeReordered";
LABEL_87:
      _os_log_impl(&dword_1B40D2000, v80, OS_LOG_TYPE_ERROR, v81, buf, 2u);
      goto LABEL_88;
    }

    goto LABEL_88;
  }

  ubidi_getLogicalMap();
  if (v100 <= 0)
  {
    v86 = v52;
    v87 = v16;
    if ([v19 length])
    {
      v82 = 0;
      v83 = v79 - 4;
      do
      {
        *buf = *&v75[2 * *&v83[4 * [v19 length]]];
        v84 = [MEMORY[0x1E696AEC0] stringWithCharacters:buf length:1];
        [v51 appendString:v84];

        ++v82;
        v83 -= 4;
      }

      while (v82 < [v19 length]);
    }

    v16 = v87;
    goto LABEL_61;
  }

  v80 = CROSLogForCategory(0);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v81 = "BiDi Visual->Logical transform failed in ubidi_getLogicalMap";
    goto LABEL_87;
  }

LABEL_88:

  os_unfair_lock_unlock(&self->_lock);
  v42 = 0;
LABEL_89:

LABEL_44:

  return v42;
}

+ (unint64_t)layoutDirectionForVisualString:(id)a3 visualDirectionality:(unint64_t)a4 logicalBaseDirection:(int)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    goto LABEL_9;
  }

  if (a5 != 255)
  {
    if (a5 == 1)
    {
LABEL_4:
      v9 = 2;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (a4 != 1)
  {
    if (a4 != 2)
    {
LABEL_10:
      v10 = CROSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 134217984;
        v14 = a5;
        _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "Unsupported base direction %lu for layout direction determination.", &v13, 0xCu);
      }

      v9 = 0;
      goto LABEL_18;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 _isNaturallyRTL])
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_18;
  }

  v11 = [v7 _crStringByReversingExtendedGraphemeClusters];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v11 _isNaturallyRTL])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_18:
  return v9;
}

@end