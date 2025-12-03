@interface CRBiDiTransform
+ (unint64_t)layoutDirectionForVisualString:(id)string visualDirectionality:(unint64_t)directionality logicalBaseDirection:(int)direction;
- (CRBiDiTransform)init;
- (id)transformVisualToLogical:(id)logical visualDirectionality:(unint64_t)directionality logicalBaseDirectionality:(unint64_t)baseDirectionality baseDirectionalityPredictionMode:(unint64_t)mode outTokenizedLogicalOrderIndexes:(id *)indexes outReorderingPermutation:(id *)permutation outMirroredVisualString:(id *)string outLogicalBaseDirection:(char *)self0;
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

- (id)transformVisualToLogical:(id)logical visualDirectionality:(unint64_t)directionality logicalBaseDirectionality:(unint64_t)baseDirectionality baseDirectionalityPredictionMode:(unint64_t)mode outTokenizedLogicalOrderIndexes:(id *)indexes outReorderingPermutation:(id *)permutation outMirroredVisualString:(id *)string outLogicalBaseDirection:(char *)self0
{
  permutationCopy = permutation;
  v104 = *MEMORY[0x1E69E9840];
  logicalCopy = logical;
  v16 = logicalCopy;
  stringCopy = string;
  indexesCopy = indexes;
  directionalityCopy = directionality;
  if (directionality == 2)
  {
    _crStringByReversingComposedCharacterSequences = [logicalCopy _crStringByReversingComposedCharacterSequences];
    v17_crStringByReversingComposedCharacterSequences = v16;
  }

  else
  {
    _crStringByReversingComposedCharacterSequences = logicalCopy;
    v17_crStringByReversingComposedCharacterSequences = [_crStringByReversingComposedCharacterSequences _crStringByReversingComposedCharacterSequences];
  }

  v19 = v17_crStringByReversingComposedCharacterSequences;
  v20 = [_crStringByReversingComposedCharacterSequences length];
  v93 = v85;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = v85 - v23;
  [_crStringByReversingComposedCharacterSequences getCharacters:{v85 - v23, v22}];
  *&v24[2 * [_crStringByReversingComposedCharacterSequences length]] = 0;
  [_crStringByReversingComposedCharacterSequences length];
  v100 = 0;
  os_unfair_lock_lock(&self->_lock);
  v25 = 1;
  ubidi_setInverse();
  if (baseDirectionality > 1)
  {
    if (baseDirectionality == 2)
    {
      goto LABEL_33;
    }

    if (baseDirectionality != 4)
    {
      if (baseDirectionality == 3)
      {
        v25 = -2;
        goto LABEL_33;
      }

LABEL_15:
      v26 = CROSLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        baseDirectionalityCopy = baseDirectionality;
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

  if (!baseDirectionality)
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
      LODWORD(orderedSet) = ParaLevel;
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
      LOBYTE(ParaLevel) = orderedSet;
      if (!mode)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v37 = 0.0;
      v36 = 0.0;
      if (!mode)
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

    if (mode != 1)
    {
LABEL_32:
      v25 = -1;
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (baseDirectionality != 1)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_33:
  if (direction)
  {
    *direction = v25;
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

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if ([v19 length])
  {
    v44 = 0;
    do
    {
      v45 = [v19 length] + ~*&v41[4 * v44];
      v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "length") + ~*&v41[4 * v44]}];
      [array2 addObject:v46];

      if ([v19 characterAtIndex:v45] == 32)
      {
        v47 = orderedSet;
        v48 = [orderedSet copy];
        [array addObject:v48];

        [v47 removeAllObjects];
      }

      else
      {
        v49 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
        [orderedSet addObject:v49];
      }

      ++v44;
    }

    while ([v19 length] > v44);
  }

  if ([orderedSet count] || !objc_msgSend(v19, "length"))
  {
    v50 = [orderedSet mutableCopy];
    [array addObject:v50];
  }

  string = [MEMORY[0x1E696AD60] string];
  _crBiDiMirroredCharacterSet = [MEMORY[0x1E696AB08] _crBiDiMirroredCharacterSet];
  if (![v19 length])
  {
LABEL_60:
    v86 = _crBiDiMirroredCharacterSet;
    [string appendString:v19];
LABEL_61:
    os_unfair_lock_unlock(&self->_lock);
    string2 = [MEMORY[0x1E696AD60] string];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v55 = array2;
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

          v60 = [string substringWithRange:{objc_msgSend(*(*(&v96 + 1) + 8 * i), "unsignedIntegerValue"), 1}];
          [string2 appendString:v60];
        }

        v57 = [v55 countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v57);
    }

    if (directionalityCopy == 2)
    {
      _crStringByReversingComposedCharacterSequences2 = string;
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

      _crStringByReversingComposedCharacterSequences2 = [string _crStringByReversingComposedCharacterSequences];
      v16 = v87;
    }

    v67 = permutationCopy;
    _crBiDiMirroredCharacterSet = v86;
    if (permutationCopy)
    {
      v68 = v55;
      *v67 = v55;
    }

    v69 = indexesCopy;
    if (indexesCopy)
    {
      *v69 = [array copy];
    }

    v70 = stringCopy;
    if (stringCopy)
    {
      *v70 = [_crStringByReversingComposedCharacterSequences2 copy];
    }

    v42 = [string2 copy];

    goto LABEL_89;
  }

  v53 = 0;
  while (![_crBiDiMirroredCharacterSet characterIsMember:{objc_msgSend(v19, "characterAtIndex:", v53)}])
  {
    if (++v53 >= [v19 length])
    {
      goto LABEL_60;
    }
  }

  v71 = [_crStringByReversingComposedCharacterSequences length];
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
    v86 = _crBiDiMirroredCharacterSet;
    v87 = v16;
    if ([v19 length])
    {
      v82 = 0;
      v83 = v79 - 4;
      do
      {
        *buf = *&v75[2 * *&v83[4 * [v19 length]]];
        v84 = [MEMORY[0x1E696AEC0] stringWithCharacters:buf length:1];
        [string appendString:v84];

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

+ (unint64_t)layoutDirectionForVisualString:(id)string visualDirectionality:(unint64_t)directionality logicalBaseDirection:(int)direction
{
  v15 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v8 = stringCopy;
  if (!direction)
  {
    goto LABEL_9;
  }

  if (direction != 255)
  {
    if (direction == 1)
    {
LABEL_4:
      v9 = 2;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (directionality != 1)
  {
    if (directionality != 2)
    {
LABEL_10:
      v10 = CROSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 134217984;
        directionCopy = direction;
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

  _crStringByReversingExtendedGraphemeClusters = [stringCopy _crStringByReversingExtendedGraphemeClusters];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([_crStringByReversingExtendedGraphemeClusters _isNaturallyRTL])
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