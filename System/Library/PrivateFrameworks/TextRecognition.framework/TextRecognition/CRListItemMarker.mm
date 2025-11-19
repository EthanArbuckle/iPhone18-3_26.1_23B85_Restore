@interface CRListItemMarker
+ (id)_detectPredefinedListMarker:(id)a3 fromSet:(id)a4 markerType:(int64_t)a5;
+ (id)bulletsSet;
+ (id)decorativeDecimalsSet;
+ (id)endOfMarkerSet;
+ (id)extendedMarkersSet;
+ (id)hyphensSet;
+ (id)listItemMarkerForText:(id)a3 requiresAdjacentText:(BOOL)a4;
+ (id)nonMarkerNumericConstructSeparatorSet;
+ (id)startOfMarkerSet;
- (BOOL)_canCompositeDecimalBeSucceededByCompositeDecimal:(id)a3;
- (BOOL)canBeSucceededByMarker:(id)a3;
- (CRListItemMarker)initWithType:(int64_t)a3 stringValue:(id)a4 range:(_NSRange)a5 itemizingComponentRange:(_NSRange)a6;
- (_NSRange)itemizingComponentRange;
- (_NSRange)range;
- (id)_valuesFromCompositeDecimal;
- (int64_t)_valueFromDecimal;
- (int64_t)_valueFromDecorativeDecimal;
- (int64_t)_valueFromLowercaseLatin;
- (int64_t)_valueFromUppercaseLatin;
- (int64_t)integerValue;
@end

@implementation CRListItemMarker

- (CRListItemMarker)initWithType:(int64_t)a3 stringValue:(id)a4 range:(_NSRange)a5 itemizingComponentRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v8 = a5.length;
  v9 = a5.location;
  v13 = a4;
  v14 = [(CRListItemMarker *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_stringValue, a4);
    v15->_range.length = v8;
    v15->_itemizingComponentRange.location = location;
    v15->_itemizingComponentRange.length = length;
    v15->_type = a3;
    v15->_range.location = v9;
  }

  return v15;
}

- (BOOL)canBeSucceededByMarker:(id)a3
{
  v4 = a3;
  v5 = v4;
  type = self->_type;
  if (!type)
  {
    if (![v4 type])
    {
LABEL_7:
      v7 = 1;
      goto LABEL_19;
    }

    type = self->_type;
  }

  if ((type - 1) <= 1)
  {
    if ([v5 type] == 1 || objc_msgSend(v5, "type") == 2)
    {
      goto LABEL_7;
    }

    type = self->_type;
  }

  if (type == [v5 type])
  {
    if (self->_type == 7 && [v5 type] == 7)
    {
      v7 = [(CRListItemMarker *)self _canCompositeDecimalBeSucceededByCompositeDecimal:v5];
    }

    else
    {
      v8 = [(CRListItemMarker *)self integerValue];
      v9 = [v5 integerValue];
      v10 = v9 == v8 + 1;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      v7 = v8 != 0x7FFFFFFFFFFFFFFFLL && v10;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_19:

  return v7;
}

- (int64_t)integerValue
{
  type = self->_type;
  if (type > 4)
  {
    if (type != 5)
    {
      if (type == 6)
      {
        return [(CRListItemMarker *)self _valueFromDecorativeDecimal];
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return [(CRListItemMarker *)self _valueFromDecimal];
  }

  else
  {
    if (type != 3)
    {
      if (type == 4)
      {
        return [(CRListItemMarker *)self _valueFromUppercaseLatin];
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return [(CRListItemMarker *)self _valueFromLowercaseLatin];
  }
}

+ (id)listItemMarkerForText:(id)a3 requiresAdjacentText:(BOOL)a4
{
  v111 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 bulletsSet];
  v8 = [a1 _detectPredefinedListMarker:v6 fromSet:v7 markerType:1];

  if (v8)
  {
    goto LABEL_119;
  }

  v9 = [a1 hyphensSet];
  v8 = [a1 _detectPredefinedListMarker:v6 fromSet:v9 markerType:2];

  if (v8)
  {
    goto LABEL_119;
  }

  v10 = [a1 decorativeDecimalsSet];
  v8 = [a1 _detectPredefinedListMarker:v6 fromSet:v10 markerType:6];

  if (v8)
  {
    goto LABEL_119;
  }

  v11 = [a1 extendedMarkersSet];
  v8 = [a1 _detectPredefinedListMarker:v6 fromSet:v11 markerType:0];

  if (v8)
  {
    goto LABEL_119;
  }

  v12 = 0x1E696A000uLL;
  v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v14 = [v6 componentsSeparatedByCharactersInSet:v13];
  v15 = [v14 mutableCopy];

  [v15 removeObject:&stru_1F2BB4348];
  v16 = [v15 firstObject];
  v97 = v15;
  if (![v16 length])
  {
    v102 = 0;
    v105 = 0;
    goto LABEL_47;
  }

  v95 = a4;
  v98 = 0;
  v101 = 0;
  v105 = 0;
  v102 = 0;
  v17 = 0;
  v18 = 0x8000000000000001;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 1;
  v21 = 1;
  while (1)
  {
    v22 = [v16 characterAtIndex:v17];
    if ((v22 - 58) >= 0xFFFFFFF6 && (v102 & 1) == 0)
    {
      if (v20 + 1 == v21)
      {
        v23 = v20 + 1;
      }

      else
      {
        v23 = v20;
      }

      v24 = v101;
      if (v23 > 1)
      {
        v24 = 7;
      }

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 1;
      }

      else
      {
        v25 = v17 + v18 + 1;
      }

      v98 = v25;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v17;
      }

      else
      {
        v20 = v23;
        v26 = v19;
      }

      v102 = 0;
      v27 = v105;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = 1;
      }

      v105 = v27;
      v28 = 5;
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v24;
      }

      v101 = v28;
      goto LABEL_41;
    }

    v26 = v19;
    if (!(((v22 - 1642) < 0xFFFFFFF6) | v105 & 1))
    {
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = 1;
      }

      else
      {
        v29 = v18 + v17 + 1;
      }

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v17;
      }

      v30 = v102;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = 1;
      }

      v102 = v30;
      v105 = 0;
      v31 = v101;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = 5;
      }

      v98 = v29;
      v101 = v31;
      goto LABEL_41;
    }

    if (v22 != 46 || (v105 & 1) == 0)
    {
      break;
    }

    ++v21;
    v105 = 1;
LABEL_41:
    ++v17;
    v19 = v26;
    v18 = -v26;
    if (v17 >= [v16 length])
    {
      goto LABEL_42;
    }
  }

  if (((v105 | v102) & 1) == 0 && v17 <= 2)
  {
    v102 = 0;
    v105 = 0;
    goto LABEL_41;
  }

LABEL_42:
  if (v20 > 3)
  {
    v8 = 0;
    v32 = v97;
    goto LABEL_118;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v93 = 0;
    v12 = 0x1E696A000;
    v36 = v98;
    goto LABEL_56;
  }

  v12 = 0x1E696A000uLL;
  a4 = v95;
LABEL_47:
  v33 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v34 = [v16 rangeOfCharacterFromSet:v33];
  v36 = v35;

  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_48:
    v8 = 0;
    goto LABEL_49;
  }

  v37 = [v16 characterAtIndex:v34];
  if ((v37 - 65) < 0x1A)
  {
    v95 = a4;
    v93 = 1;
    v38 = 4;
    goto LABEL_55;
  }

  v32 = v97;
  if ((v37 - 97) > 0x19)
  {
    goto LABEL_117;
  }

  v95 = a4;
  v93 = 1;
  v38 = 3;
LABEL_55:
  v101 = v38;
  v19 = v34;
LABEL_56:
  v39 = v19;
  if (v19)
  {
    v40 = 0;
    do
    {
      v41 = [v16 characterAtIndex:v40];
      v42 = [a1 startOfMarkerSet];
      LOBYTE(v41) = [v42 characterIsMember:v41];

      if ((v41 & 1) == 0)
      {
        goto LABEL_48;
      }

      ++v40;
      v19 = v39;
    }

    while (v39 != v40);
  }

  v43 = v19 + v36;
  if (v43 >= [v16 length])
  {
    v32 = v97;
    if ([v97 count] < 2)
    {
      v50 = 0;
      a1 = 0;
      v49 = 1;
    }

    else
    {
      v51 = [v97 objectAtIndexedSubscript:1];
      v52 = [v51 characterAtIndex:0];

      v53 = [a1 endOfMarkerSet];
      v54 = v52;
      v32 = v97;
      LODWORD(a1) = [v53 characterIsMember:v54];

      if (a1)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      v50 = a1;
      if (a1)
      {
        v43 += 2;
      }

      a1 = a1;
    }

LABEL_77:
    if (!v95 && ((v93 | v105 | v102) & v50 & 1) != 0)
    {
      v55 = [CRListItemMarker alloc];
      v56 = [v6 substringWithRange:{0, v43}];
      v8 = [(CRListItemMarker *)v55 initWithType:v101 stringValue:v56 range:0 itemizingComponentRange:v43, v39, v36];

LABEL_49:
      v32 = v97;
      goto LABEL_118;
    }

    v94 = [v16 length];
    if (v43 < [v16 length])
    {
      v103 = v49;
      v57 = [v32 objectAtIndexedSubscript:v49 - 1];
      v58 = [v57 characterAtIndex:v43];

      if (vmaxv_u16(vcgt_u16(0x6000502BB00060, vadd_s16(vdup_n_s16(v58), 0xCFC028505400CED0))))
      {
        goto LABEL_91;
      }

      goto LABEL_82;
    }

    if ([v32 count] > v49)
    {
      v99 = a1;
      v91 = v50;
      v61 = v43;
      [v32 objectAtIndexedSubscript:v49];
      v63 = v62 = v49;
      v64 = v32;
      v65 = [v63 length];

      if (v65 >= 2)
      {
        v103 = v62;
        v66 = [v64 objectAtIndexedSubscript:v62];
        v58 = [v66 characterAtIndex:v99];

        v32 = v64;
        v43 = v61;
        v50 = v91;
        if (vmaxv_u16(vcgt_u16(0x6000502BB00060, vadd_s16(vdup_n_s16(v58), 0xCFC028505400CED0))))
        {
          goto LABEL_91;
        }

LABEL_82:
        if ((v58 - 12448) >= 0x60u && (v58 & 0xFF00) != 0x1100 && (v58 & 0xFFE0) != 0xA960 && ((v58 - 19968) >> 9) >= 0x29u && ((v58 - 13312) >> 6) >= 0x67u)
        {
          v59 = [*(v12 + 2824) uppercaseLetterCharacterSet];
          v60 = [v59 characterIsMember:v58];

          v49 = v103;
          goto LABEL_103;
        }

LABEL_91:
        if (v36 >= 7 && v101 != 7)
        {
          goto LABEL_117;
        }

        v96 = v43;
        if (v103 - 1 >= [v32 count])
        {
          goto LABEL_117;
        }

        v100 = v36;
        v67 = 0;
        v68 = 0;
        v69 = v103 - 1;
        while (1)
        {
          if (v67)
          {
            v70 = [v32 objectAtIndexedSubscript:v69];
            v71 = [v70 length];
          }

          else
          {
            v70 = [v32 objectAtIndexedSubscript:v103 - 1];
            v71 = [v70 length] - v43;
          }

          v68 += v71;
          if (v68 > 2)
          {
            goto LABEL_130;
          }

          ++v69;
          v32 = v97;
          v8 = 0;
          --v67;
          if (v69 >= [v97 count])
          {
            goto LABEL_118;
          }
        }
      }

      v32 = v64;
      v43 = v61;
      v50 = v91;
      v49 = v62;
    }

    v60 = 0;
LABEL_103:
    if ([v32 count] < 2 || v36 >= 7 && v101 != 7 || objc_msgSend(v32, "count") < 2)
    {
      goto LABEL_117;
    }

    v89 = v60;
    v104 = v49;
    v92 = v50;
    v96 = v43;
    v100 = v36;
    v90 = v16;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v72 = v32;
    v73 = [v72 countByEnumeratingWithState:&v106 objects:v110 count:16];
    if (!v73)
    {
LABEL_116:

      v8 = 0;
      v16 = v90;
      goto LABEL_49;
    }

    v74 = v73;
    v75 = *v107;
LABEL_109:
    v76 = 0;
    while (1)
    {
      if (*v107 != v75)
      {
        objc_enumerationMutation(v72);
      }

      v77 = *(*(&v106 + 1) + 8 * v76);
      v78 = [v72 firstObject];

      if (v77 != v78)
      {
        v79 = [*(v12 + 2824) letterCharacterSet];
        v80 = [v77 _crContainsCharactersInSet:v79];

        if (v80)
        {
          break;
        }
      }

      if (v74 == ++v76)
      {
        v74 = [v72 countByEnumeratingWithState:&v106 objects:v110 count:16];
        if (v74)
        {
          goto LABEL_109;
        }

        goto LABEL_116;
      }
    }

    v82 = [v72 objectAtIndexedSubscript:v104 - 1];
    if ([v82 length] < 3)
    {

      v16 = v90;
      if ((v105 & 1) == 0)
      {
        if (!v92)
        {
          goto LABEL_48;
        }

        goto LABEL_130;
      }
    }

    else
    {
      v83 = [v72 objectAtIndexedSubscript:v104 - 1];
      v84 = [v83 length];

      v16 = v90;
      if ((v105 & 1) == 0)
      {
        if (((v84 < 4) & v92) == 0)
        {
          goto LABEL_48;
        }

LABEL_130:
        v85 = [*(v12 + 2824) whitespaceCharacterSet];
        v86 = [v6 _crCountConsecutiveCharactersAtIndex:v96 fromSet:v85];

        v87 = [CRListItemMarker alloc];
        v88 = [v6 substringWithRange:{0, v96}];
        v8 = [(CRListItemMarker *)v87 initWithType:v101 stringValue:v88 range:0 itemizingComponentRange:v86 + v96, v39, v100];

        goto LABEL_49;
      }
    }

    if (!(v92 & 1 | v89 & (v96 == v94)))
    {
      goto LABEL_48;
    }

    goto LABEL_130;
  }

  v44 = [v16 characterAtIndex:v43];
  v45 = [a1 endOfMarkerSet];
  v46 = [v45 characterIsMember:v44];

  if (!v46)
  {
    v50 = 0;
    a1 = 0;
    v49 = 1;
LABEL_76:
    v32 = v97;
    goto LABEL_77;
  }

  v47 = [a1 nonMarkerNumericConstructSeparatorSet];
  if (![v47 characterIsMember:v44])
  {

    a1 = 0;
    ++v43;
    v49 = 1;
    v50 = 1;
    goto LABEL_76;
  }

  ++v43;
  v48 = [v16 length];

  v32 = v97;
  if (v43 >= v48 || [v16 characterAtIndex:v43] - 58 < 0xFFFFFFF6)
  {
    a1 = 0;
    v49 = 1;
    v50 = 1;
    goto LABEL_77;
  }

LABEL_117:
  v8 = 0;
LABEL_118:

LABEL_119:

  return v8;
}

+ (id)_detectPredefinedListMarker:(id)a3 fromSet:(id)a4 markerType:(int64_t)a5
{
  v7 = a3;
  if ([v7 rangeOfCharacterFromSet:a4])
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v12 = [v7 _crCountConsecutiveCharactersAtIndex:v10 fromSet:v11];

    if (a5 == 6)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = [CRListItemMarker alloc];
    v15 = [v7 substringWithRange:{0, v10}];
    v9 = [(CRListItemMarker *)v14 initWithType:a5 stringValue:v15 range:0 itemizingComponentRange:v12 + v10, v13, a5 == 6];
  }

  return v9;
}

+ (id)decorativeDecimalsSet
{
  if (qword_1ED9600C0 != -1)
  {
    dispatch_once(&qword_1ED9600C0, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_22;

  return v3;
}

void __41__CRListItemMarker_decorativeDecimalsSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳❶❷❸❹❺❻❼❽❾❿➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏➐➑➒➓"];
  v1 = _MergedGlobals_22;
  _MergedGlobals_22 = v0;
}

+ (id)bulletsSet
{
  if (qword_1ED9600D0 != -1)
  {
    dispatch_once(&qword_1ED9600D0, &__block_literal_global_7);
  }

  v3 = qword_1ED9600C8;

  return v3;
}

void __30__CRListItemMarker_bulletsSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"●∙•◦°⋅〇◎·・。※"];
  v1 = qword_1ED9600C8;
  qword_1ED9600C8 = v0;
}

+ (id)hyphensSet
{
  if (qword_1ED9600E0 != -1)
  {
    dispatch_once(&qword_1ED9600E0, &__block_literal_global_12);
  }

  v3 = qword_1ED9600D8;

  return v3;
}

void __30__CRListItemMarker_hyphensSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-–－—"];
  v1 = qword_1ED9600D8;
  qword_1ED9600D8 = v0;
}

+ (id)extendedMarkersSet
{
  if (qword_1ED9600F0 != -1)
  {
    dispatch_once(&qword_1ED9600F0, &__block_literal_global_17);
  }

  v3 = qword_1ED9600E8;

  return v3;
}

void __38__CRListItemMarker_extendedMarkersSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*»›>▶"];
  v1 = qword_1ED9600E8;
  qword_1ED9600E8 = v0;
}

+ (id)startOfMarkerSet
{
  if (qword_1ED960100 != -1)
  {
    dispatch_once(&qword_1ED960100, &__block_literal_global_22);
  }

  v3 = qword_1ED9600F8;

  return v3;
}

void __36__CRListItemMarker_startOfMarkerSet__block_invoke()
{
  v0 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"#([");
  v1 = qword_1ED9600F8;
  qword_1ED9600F8 = v0;
}

+ (id)endOfMarkerSet
{
  if (qword_1ED960110 != -1)
  {
    dispatch_once(&qword_1ED960110, &__block_literal_global_27);
  }

  v3 = qword_1ED960108;

  return v3;
}

void __34__CRListItemMarker_endOfMarkerSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".:]|．。-、"]);;
  v1 = qword_1ED960108;
  qword_1ED960108 = v0;
}

+ (id)nonMarkerNumericConstructSeparatorSet
{
  if (qword_1ED960120 != -1)
  {
    dispatch_once(&qword_1ED960120, &__block_literal_global_32_0);
  }

  v3 = qword_1ED960118;

  return v3;
}

void __57__CRListItemMarker_nonMarkerNumericConstructSeparatorSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@":-~〜～"];;
  v1 = qword_1ED960118;
  qword_1ED960118 = v0;
}

- (BOOL)_canCompositeDecimalBeSucceededByCompositeDecimal:(id)a3
{
  v4 = a3;
  v5 = [(CRListItemMarker *)self _valuesFromCompositeDecimal];
  v6 = [v4 _valuesFromCompositeDecimal];
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_18;
  }

  v9 = [v5 count];
  if (v9 != [v7 count] || !objc_msgSend(v5, "count"))
  {
    v8 = 0;
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = [v5 objectAtIndexedSubscript:v10];
    v13 = [v12 integerValue];

    v14 = [v7 objectAtIndexedSubscript:v10];
    v15 = [v14 integerValue];

    if (v15 != v13 + 1)
    {
      if (v11)
      {
        v11 = 1;
        if (v15 > 1)
        {
          v17 = 0;
          v16 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v11 = 0;
        v16 = 0;
        v17 = 0;
        if (v15 != v13)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_13;
    }

    v16 = 1;
    if (v11)
    {
      break;
    }

    v11 = 1;
LABEL_13:
    if (++v10 >= [v5 count])
    {
      v17 = 1;
      v16 = v11;
      goto LABEL_17;
    }
  }

  v17 = 0;
LABEL_17:
  v8 = v16 & v17;
LABEL_18:

  return v8;
}

- (id)_valuesFromCompositeDecimal
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_type == 7)
  {
    v2 = [(NSString *)self->_stringValue substringWithRange:self->_itemizingComponentRange.location, self->_itemizingComponentRange.length];
    v3 = [v2 componentsSeparatedByString:@"."];

    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 length])
          {
            v11 = [v10 integerValue];
            v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_valueFromDecorativeDecimal
{
  type = self->_type;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (type == 6)
  {
    location = self->_itemizingComponentRange.location;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_stringValue substringWithRange:location, self->_itemizingComponentRange.length];
      v7 = [v6 characterAtIndex:0];

      if ((v7 - 9312) > 0x13)
      {
        if ((v7 - 10102) > 9)
        {
          if ((v7 - 10112) > 9)
          {
            if ((v7 - 10122) > 9)
            {
              return 0x7FFFFFFFFFFFFFFFLL;
            }

            v8 = -10121;
          }

          else
          {
            v8 = -10111;
          }
        }

        else
        {
          v8 = -10101;
        }
      }

      else
      {
        v8 = -9311;
      }

      return (v7 + v8);
    }
  }

  return result;
}

- (int64_t)_valueFromDecimal
{
  if (self->_type != 5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  location = self->_itemizingComponentRange.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(NSString *)self->_stringValue substringWithRange:location, self->_itemizingComponentRange.length];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)_valueFromLowercaseLatin
{
  type = self->_type;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (type == 3)
  {
    location = self->_itemizingComponentRange.location;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_stringValue substringWithRange:location, self->_itemizingComponentRange.length];
      v7 = [v6 characterAtIndex:0];

      return v7 - 97;
    }
  }

  return result;
}

- (int64_t)_valueFromUppercaseLatin
{
  type = self->_type;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (type == 4)
  {
    location = self->_itemizingComponentRange.location;
    if (location != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSString *)self->_stringValue substringWithRange:location, self->_itemizingComponentRange.length];
      v7 = [v6 characterAtIndex:0];

      return v7 - 65;
    }
  }

  return result;
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)itemizingComponentRange
{
  objc_copyStruct(v4, &self->_itemizingComponentRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end