@interface MCKeyboardInput
- (BOOL)hasDrawInput;
- (BOOL)hasKindOf:(Class)a3;
- (BOOL)hasRemainingComposingInput;
- (MCKeyboardInput)composingInput;
- (MCKeyboardInput)initWithSourceKeyboardState:(id)a3;
- (NSArray)inputs;
- (NSMutableArray)mutableInputs;
- (id)_asInputStringWithCursorIndex:(unint64_t *)a3 remainingComposingInputIndex:(unint64_t *)a4 typeInputs:(id)a5 forSearch:(BOOL)a6 suffix:(id)a7;
- (id)asCommittedText;
- (id)asMecabraGestures:(BOOL *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortDescriptionWithLeadingString:(id)a3;
- (unint64_t)asInlineTextCursorIndex;
- (unint64_t)asSearchTextCursorIndex;
- (unint64_t)totalDrawSamples;
- (void)_addNearbyKeys:(id)a3 to:(void *)a4 likelihoodThreshold:(float)a5;
- (void)composeNew:(id)a3;
- (void)insertInput:(id)a3 atIndex:(unint64_t)a4;
- (void)removeAllInputs;
- (void)removeComposingInput;
- (void)removeInputAtIndex:(unint64_t)a3;
- (void)replaceComposingInputWith:(id)a3;
- (void)replaceInputAtIndex:(unint64_t)a3 with:(id)a4;
- (void)setComposingInput:(id)a3;
@end

@implementation MCKeyboardInput

- (unint64_t)totalDrawSamples
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(MCKeyboardInput *)self inputs];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 inputs];
          v5 += [v9 count];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hasKindOf:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MCKeyboardInput *)self inputs];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)insertInput:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MCKeyboardInput *)self inputs];
  v8 = [v7 count];

  if (v8 < a4)
  {
    v9 = [(MCKeyboardInput *)self inputs];
    a4 = [v9 count];
  }

  v10 = [(MCKeyboardInput *)self mutableInputs];
  [v10 insertObject:v6 atIndex:a4];

  v11 = [(MCKeyboardInput *)self composingInput];
  if (v11)
  {
    v12 = v11;
    v13 = [(MCKeyboardInput *)self composingInputIndex];

    if (a4 <= v13)
    {
      v14 = [(MCKeyboardInput *)self composingInputIndex]+ 1;

      [(MCKeyboardInput *)self setComposingInputIndex:v14];
    }
  }
}

- (void)replaceComposingInputWith:(id)a3
{
  v5 = a3;
  v4 = [(MCKeyboardInput *)self composingInput];

  if (v4)
  {
    [(MCKeyboardInput *)self replaceInputAtIndex:[(MCKeyboardInput *)self composingInputIndex] with:v5];
  }
}

- (void)replaceInputAtIndex:(unint64_t)a3 with:(id)a4
{
  v11 = a4;
  v6 = [(MCKeyboardInput *)self inputs];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(MCKeyboardInput *)self inputs];
    v9 = [v8 objectAtIndexedSubscript:a3];
    v10 = [(MCKeyboardInput *)self composingInput];

    [(MCKeyboardInput *)self removeInputAtIndex:a3];
    [(MCKeyboardInput *)self insertInput:v11 atIndex:a3];
    if (v9 == v10)
    {
      [(MCKeyboardInput *)self setComposingInput:v11];
    }
  }
}

- (void)removeInputAtIndex:(unint64_t)a3
{
  v5 = [(MCKeyboardInput *)self inputs];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(MCKeyboardInput *)self inputs];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [(MCKeyboardInput *)self composingInput];

    if (v8 == v9)
    {

      [(MCKeyboardInput *)self removeComposingInput];
    }

    else
    {
      v10 = [(MCKeyboardInput *)self mutableInputs];
      [v10 removeObjectAtIndex:a3];

      if ([(MCKeyboardInput *)self composingInputIndex]> a3)
      {
        v11 = [(MCKeyboardInput *)self composingInputIndex]- 1;

        [(MCKeyboardInput *)self setComposingInputIndex:v11];
      }
    }
  }
}

- (void)removeComposingInput
{
  v3 = [(MCKeyboardInput *)self composingInput];

  if (v3)
  {
    v4 = [(MCKeyboardInput *)self mutableInputs];
    [v4 removeObjectAtIndex:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];

    if ([(MCKeyboardInput *)self composingInputIndex])
    {
      v5 = [(MCKeyboardInput *)self composingInputIndex]- 1;

      [(MCKeyboardInput *)self setComposingInputIndex:v5];
    }

    else
    {

      [(MCKeyboardInput *)self setComposingInput:0];
    }
  }
}

- (void)removeAllInputs
{
  v3 = [(MCKeyboardInput *)self mutableInputs];
  [v3 removeAllObjects];

  [(MCKeyboardInput *)self setComposingInput:0];
}

- (void)composeNew:(id)a3
{
  v9 = a3;
  if ([(MCKeyboardInput *)self canComposeNew:?])
  {
    v4 = [(MCKeyboardInput *)self composingInputIndex];
    v5 = [(MCKeyboardInput *)self mutableInputs];
    v6 = [v5 count];

    if (v4 >= v6)
    {
      v7 = [(MCKeyboardInput *)self mutableInputs];
      -[MCKeyboardInput setComposingInputIndex:](self, "setComposingInputIndex:", [v7 count]);
    }

    else
    {
      [(MCKeyboardInput *)self setComposingInputIndex:[(MCKeyboardInput *)self composingInputIndex]+ 1];
    }

    v8 = [(MCKeyboardInput *)self mutableInputs];
    [v8 insertObject:v9 atIndex:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];
  }
}

- (void)setComposingInput:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(MCKeyboardInput *)self inputs];
    v5 = [v4 indexOfObjectIdenticalTo:v9];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"|composingInput| is not an input of this input" userInfo:0];
      [v6 raise];

      goto LABEL_7;
    }

    v7 = self;
    v8 = v5;
  }

  else
  {
    v7 = self;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MCKeyboardInput *)v7 setComposingInputIndex:v8];
LABEL_7:
}

- (MCKeyboardInput)composingInput
{
  v3 = [(MCKeyboardInput *)self composingInputIndex];
  v4 = [(MCKeyboardInput *)self inputs];
  if (v3 >= [v4 count])
  {
    v6 = 0;
  }

  else
  {
    v5 = [(MCKeyboardInput *)self inputs];
    v6 = [v5 objectAtIndexedSubscript:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];
  }

  return v6;
}

- (NSArray)inputs
{
  if (self->_mutableInputs)
  {
    return self->_mutableInputs;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (NSMutableArray)mutableInputs
{
  mutableInputs = self->_mutableInputs;
  if (!mutableInputs)
  {
    v4 = objc_opt_new();
    v5 = self->_mutableInputs;
    self->_mutableInputs = v4;

    mutableInputs = self->_mutableInputs;
  }

  return mutableInputs;
}

- (id)shortDescriptionWithLeadingString:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [(MCKeyboardInput *)self shortDescriptionExcludingSubInputs];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 appendFormat:@"%@: %@", v8, v6];

  if ([v6 length])
  {
    [v5 appendString:@" "];
  }

  v9 = [(MCKeyboardInput *)self inputs];
  v10 = [v9 count];

  if (v10)
  {
    v26 = v6;
    objc_msgSend(v5, "appendString:", @"(\n");
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(MCKeyboardInput *)self inputs];
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          [v5 appendString:v4];
          v16 = [(MCKeyboardInput *)self composingInput];

          if (v15 == v16)
          {
            [v5 appendString:@"*"];
          }

          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v4, v4];
          v18 = [v15 shortDescriptionWithLeadingString:v17];
          [v5 appendString:v18];

          v19 = [(MCKeyboardInput *)self inputs];
          v20 = [v19 lastObject];

          if (v15 != v20)
          {
            [v5 appendString:{@", "}];
          }

          [v5 appendString:@"\n"];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v21 = [v4 length];
    v22 = v21 - [@"    " length];
    if (v22 >= 1)
    {
      v23 = [v4 substringToIndex:v22 & 0x7FFFFFFF];
      [v5 appendString:v23];
    }

    [v5 appendString:@""]);
    v6 = v26;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    if (self->_mutableInputs)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_mutableInputs copyItems:1];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    *(v4 + 16) = self->_composingInputIndex;
    objc_storeStrong((v4 + 24), self->_sourceKeyboardState);
  }

  return v4;
}

- (MCKeyboardInput)initWithSourceKeyboardState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCKeyboardInput;
  v6 = [(MCKeyboardInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_composingInputIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_sourceKeyboardState, a3);
  }

  return v7;
}

- (BOOL)hasDrawInput
{
  v3 = objc_opt_class();

  return [(MCKeyboardInput *)self hasKindOf:v3];
}

- (id)_asInputStringWithCursorIndex:(unint64_t *)a3 remainingComposingInputIndex:(unint64_t *)a4 typeInputs:(id)a5 forSearch:(BOOL)a6 suffix:(id)a7
{
  v126 = a6;
  v144 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v126 && ([(MCKeyboardInput *)self useSubInputsAsSearchString]& 1) != 0)
  {
    v124 = v11;
    if ([(MCKeyboardInput *)self hasDrawInput])
    {
      v114 = a4;
      v116 = a3;
      v118 = v12;
      v13 = [MEMORY[0x277CCAB68] string];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v14 = [(MCKeyboardInput *)self inputs];
      v15 = [v14 countByEnumeratingWithState:&v138 objects:v143 count:16];
      if (!v15)
      {
        v17 = 0;
        goto LABEL_42;
      }

      v16 = v15;
      v17 = 0;
      v18 = *v139;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v139 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v138 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;

            v22 = [v21 convertedInput];
            if (v22)
            {
            }

            else
            {
              v24 = [v21 candidateText];
              v25 = [v24 rangeOfString:v13];

              if (!v25)
              {
                [(__CFString *)v13 setString:&stru_283FDFAF8];
              }
            }

            v23 = [v21 candidateText];
            v17 = v21;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v23 = [v20 committedText];
          }

          [(__CFString *)v13 appendString:v23];
        }

        v16 = [v14 countByEnumeratingWithState:&v138 objects:v143 count:16];
        if (!v16)
        {
LABEL_42:

          if (v114)
          {
            *v114 = [(__CFString *)v13 length];
          }

          v39 = [v17 remainingInputString];

          v11 = v124;
          v12 = v118;
          if (v39)
          {
            v40 = [v17 remainingInputString];
            [(__CFString *)v13 appendString:v40];
          }

          if (v116)
          {
            *v116 = [(__CFString *)v13 length];
          }

          v41 = [v17 remainingInputString];
          v42 = v41;
          v43 = &stru_283FDFAF8;
          if (v41)
          {
            v43 = v41;
          }

          v44 = v43;

          if (v126)
          {
            v45 = v44;
          }

          else
          {
            v45 = v13;
          }

          v32 = v45;

          goto LABEL_153;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(MCKeyboardInput *)self characters];
      v30 = [v29 copy];

      [v11 composeNew:self];
      v31 = 0;
      if (v30)
      {
        goto LABEL_28;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [(MCKeyboardInput *)self convertedInput];
        v31 = [(__CFString *)v30 length];
        if (v30)
        {
LABEL_28:
          if (!a3)
          {
LABEL_30:
            if (a4)
            {
              *a4 = v31;
            }

            v32 = v30;
LABEL_129:

            goto LABEL_153;
          }

LABEL_29:
          *a3 = [(__CFString *)v30 length];
          goto LABEL_30;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = 0;
          v30 = &stru_283FDFAF8;
          if (!a3)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }
    }

    v115 = a4;
    v117 = a3;
    v119 = v12;
    v47 = objc_opt_new();
    v48 = objc_opt_new();
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v122 = self;
    obj = [(MCKeyboardInput *)self inputs];
    v130 = [obj countByEnumeratingWithState:&v134 objects:v142 count:16];
    if (!v130)
    {
      v50 = 0;
      v125 = 0;
      goto LABEL_119;
    }

    v49 = 0;
    v128 = 0;
    v50 = 0;
    v125 = 0;
    v129 = *v135;
    v121 = v47;
LABEL_61:
    v51 = 0;
    while (1)
    {
      if (*v135 != v129)
      {
        objc_enumerationMutation(obj);
      }

      v52 = *(*(&v134 + 1) + 8 * v51);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v132 = 0;
        v133 = 0;
        v56 = [v52 _asInputStringWithCursorIndex:&v133 remainingComposingInputIndex:&v132 typeInputs:v11 forSearch:v126 suffix:v48];
        [v47 appendString:v56];
        if ((v49 & 1) == 0)
        {
          v125 += v133;
          if (v125 > [v47 length])
          {
            v125 = [v47 length];
          }
        }

        v57 = [(MCKeyboardInput *)v122 composingInput];
        v58 = v52 == v57;

        if (v128)
        {
          v59 = [v56 length];
          v128 = 1;
        }

        else
        {
          v59 = v132;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = v52;
            v61 = v50;
            v62 = v48;
            v63 = v49;
            v64 = [v60 cursorIndex];
            v65 = [v60 committedText];

            v66 = v64 >= [v65 length];
            v49 = v63;
            v48 = v62;
            v50 = v61;
            v47 = v121;
            v67 = !v66;
            v128 = v67;
          }

          else
          {
            v128 = 0;
          }
        }

        v49 |= v58;
        v50 += v59;

        v11 = v124;
        goto LABEL_115;
      }

      v127 = v49;
      v53 = v52;
      [v47 appendString:v48];
      [v48 deleteCharactersInRange:{0, objc_msgSend(v48, "length")}];
      v54 = [v53 convertedInput];
      if ([v54 length])
      {
        break;
      }

      v68 = [v53 candidateText];
      if (![v68 length])
      {
        goto LABEL_110;
      }

      v69 = [v47 length];

      if (v50 <= v69)
      {
        goto LABEL_80;
      }

LABEL_114:

      v49 = v127;
LABEL_115:
      if (++v51 == v130)
      {
        v130 = [obj countByEnumeratingWithState:&v134 objects:v142 count:16];
        if (!v130)
        {
LABEL_119:

          [v119 appendString:v48];
          if ([v48 length])
          {
            v89 = [v47 stringByAppendingString:v48];
          }

          else
          {
            v89 = v47;
          }

          v90 = v89;
          v91 = v125;
          if (v117)
          {
            if ([(MCKeyboardInput *)v122 hasKindOf:objc_opt_class()])
            {
              v91 = [v90 length];
            }

            *v117 = v91;
          }

          if (v115)
          {
            *v115 = v50;
          }

          v32 = v90;

          v12 = v119;
          goto LABEL_129;
        }

        goto LABEL_61;
      }
    }

    v55 = [v47 length];

    if (v50 > v55)
    {
      goto LABEL_114;
    }

LABEL_80:
    v70 = [v47 length];
    v71 = [v53 convertedInput];
    v72 = [v71 length];
    v73 = [v53 candidateText];
    v54 = v73;
    if (v72)
    {
      if ([v73 isEqualToString:v47])
      {
        [v53 candidateText];
      }

      else
      {
        [v53 convertedInput];
      }
      v74 = ;

      v54 = v74;
    }

    if ([v54 isEqualToString:@"☻"])
    {
      v75 = [v47 length];
      v76 = 0;
    }

    else
    {
      v76 = [v47 rangeOfString:v54 options:1 range:{v50, v70 - v50}];
      v75 = v77;
    }

    if (v76 == v50 && v75 <= [v47 length] - v50)
    {
      if (v125 >= v75)
      {
        v79 = v125 - v75;
      }

      else
      {
        v79 = 0;
      }

      if (v126)
      {
        v125 = v79;
        [v47 deleteCharactersInRange:{v76, v75}];
        if (v75)
        {
          v11 = v124;
          do
          {
            [v124 removeInputAtIndex:0];
            --v75;
          }

          while (v75);
          goto LABEL_113;
        }
      }

      else
      {
        v86 = [v53 candidateText];
        v125 = [v86 length] + v79;

        v87 = [v53 candidateText];
        [v47 replaceCharactersInRange:v76 withString:{v75, v87}];

        v88 = [v53 candidateText];
        v50 += [v88 length];
      }

      v11 = v124;
    }

    else if (!v126)
    {
      v78 = [v53 convertedInput];
      if ([v78 length])
      {
      }

      else
      {
        v80 = [v53 candidateText];
        v81 = [v47 isEqualToString:v80];

        if (v81)
        {
          v50 = [v47 length];
          goto LABEL_113;
        }
      }

      if (v50 >= [v47 length])
      {
        v85 = [v53 candidateText];
        [v47 appendString:v85];
      }

      else
      {
        v82 = [v53 remainingMecabraInputs];

        if (!v82)
        {
          goto LABEL_113;
        }

        v83 = [v47 length] - v50;
        v84 = [v53 candidateText];
        [v47 replaceCharactersInRange:v50 withString:{v83, v84}];
      }

      v68 = [v53 candidateText];
      v50 += [v68 length];
LABEL_110:
    }

LABEL_113:

    goto LABEL_114;
  }

  v26 = self;
  v27 = [(MCKeyboardInput *)v26 text];
  v28 = [(MCKeyboardInput *)v26 uncommittedText];
  if (a4)
  {
    if (!v126)
    {
      v46 = [(MCKeyboardInput *)v26 committedText];
      *a4 = [v46 length];

      if (!a3)
      {
        goto LABEL_132;
      }

      goto LABEL_55;
    }

    *a4 = 0;
    if (!a3)
    {
      goto LABEL_132;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_132;
    }

    if (!v126)
    {
      goto LABEL_55;
    }
  }

  v33 = [(MCKeyboardInput *)v26 uncommittedText];
  v34 = [v33 length];

  if (!v34)
  {
LABEL_55:
    *a3 = [(MCKeyboardInput *)v26 cursorIndex];
    goto LABEL_132;
  }

  v35 = [(MCKeyboardInput *)v26 cursorIndex];
  v36 = [(MCKeyboardInput *)v26 committedText];
  if (v35 <= [v36 length])
  {
    *a3 = 0;
  }

  else
  {
    v37 = [(MCKeyboardInput *)v26 cursorIndex];
    v38 = [(MCKeyboardInput *)v26 committedText];
    *a3 = v37 - [v38 length];
  }

LABEL_132:
  v92 = v27;
  v93 = [(__CFString *)v92 substringWithRange:[(MCKeyboardInput *)v26 cursorIndex], [(__CFString *)v92 length]- [(MCKeyboardInput *)v26 cursorIndex]];
  v94 = [(MCKeyboardInput *)v26 cursorIndex];
  v131 = v28;
  if (!v126)
  {
    v32 = v92;
    if (v94 < [(__CFString *)v92 length])
    {
      [v12 appendString:v93];
      v32 = [(__CFString *)v92 substringToIndex:[(MCKeyboardInput *)v26 cursorIndex]];
    }

    goto LABEL_148;
  }

  v95 = [(MCKeyboardInput *)v26 committedText];
  if (v94 <= [v95 length])
  {
    v96 = [v28 length];

    if (v96)
    {

      [v12 appendString:v28];
      v32 = &stru_283FDFAF8;
      goto LABEL_148;
    }
  }

  else
  {
  }

  v97 = [(MCKeyboardInput *)v26 cursorIndex];
  v98 = [(MCKeyboardInput *)v26 committedText];
  if (v97 <= [v98 length])
  {
  }

  else
  {
    v99 = [v28 length];

    if (v99)
    {
      v100 = [(MCKeyboardInput *)v26 cursorIndex];
      v101 = [(MCKeyboardInput *)v26 committedText];
      v102 = v100 - [v101 length];

      v32 = [v28 substringWithRange:{0, v102}];

LABEL_147:
      [v12 appendString:v93];
      goto LABEL_148;
    }
  }

  v103 = [(MCKeyboardInput *)v26 cursorIndex];
  v104 = [(MCKeyboardInput *)v26 committedText];
  if (v103 > [v104 length])
  {

    v32 = v92;
    goto LABEL_148;
  }

  v105 = [v28 length];

  v32 = v92;
  if (!v105)
  {
    v106 = [(MCKeyboardInput *)v26 committedText];
    v32 = [v106 substringWithRange:{0, -[MCKeyboardInput cursorIndex](v26, "cursorIndex")}];

    goto LABEL_147;
  }

LABEL_148:
  v120 = v12;
  if (v11 && [(__CFString *)v32 length])
  {
    v107 = 0;
    v108 = MEMORY[0x277CBEBF8];
    do
    {
      v109 = [MCTypeInput alloc];
      v110 = [(__CFString *)v32 substringWithRange:v107, 1];
      v111 = [(MCTypeInput *)v109 initWithCharacters:v110 nearbyKeys:v108];

      [v11 composeNew:v111];
      ++v107;
    }

    while ([(__CFString *)v32 length]> v107);
  }

  v12 = v120;
LABEL_153:

  v112 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_addNearbyKeys:(id)a3 to:(void *)a4 likelihoodThreshold:(float)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          [v14 logLikelihood];
          if (v15 < a5)
          {

            goto LABEL_14;
          }

          if ([v14 character])
          {
            [v14 character];
            [v14 logLikelihood];
            MecabraGestureAddKeyAndLoglikelihoodPair();
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)asMecabraGestures:(BOOL *)a3
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAB68] string];
  v93 = a3;
  v95 = v6;
  if ([(MCKeyboardInput *)self hasKindOf:objc_opt_class()])
  {
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0;
    v7 = [(MCKeyboardInput *)self inputs];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __54__MCKeyboardInput_ChineseJapanese__asMecabraGestures___block_invoke;
    v106[3] = &unk_278730CB0;
    v106[4] = self;
    v106[5] = &v107;
    v8 = [v7 indexOfObjectWithOptions:2 passingTest:v106];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = self;
      v98 = 0;
LABEL_23:
      _Block_object_dispose(&v107, 8);
      goto LABEL_24;
    }

    v11 = 0x27872D000uLL;
    v96 = objc_opt_new();
    v12 = [(MCKeyboardInput *)self inputs];
    v13 = [v12 objectAtIndexedSubscript:v8];

    if (*(v108 + 24) != 1)
    {
      goto LABEL_12;
    }

    v14 = [v13 remainingInputString];

    if (v14)
    {
      v15 = [v13 remainingInputString];
      if ([v15 length])
      {
        v16 = 0;
        do
        {
          v105 = [v15 characterAtIndex:{v16, v93}];
          v17 = [MEMORY[0x277CCACA8] stringWithCharacters:&v105 length:1];
          v18 = [[MCTypeInput alloc] initWithCharacters:v17 nearbyKeys:0];
          [(MCKeyboardInput *)v96 composeNew:v18];

          ++v16;
        }

        while ([v15 length] > v16);
        v98 = 0;
        v11 = 0x27872D000;
      }

      else
      {
        v98 = 0;
      }

      goto LABEL_16;
    }

    if ((v108[3] & 1) == 0)
    {
LABEL_12:
      v19 = [v13 remainingMecabraInputs];

      if (v19)
      {
        v15 = [v13 remainingMecabraInputs];
        [v5 addObjectsFromArray:v15];
        v98 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v98 = 0;
LABEL_17:
    v20 = [(MCKeyboardInput *)self inputs];
    v21 = [v20 count];

    v9 = v96;
    if (v21 > v8 + 1)
    {
      v22 = v8 + 1;
      v23 = v8 + 2;
      do
      {
        v24 = [(MCKeyboardInput *)self inputs];
        v25 = [v24 objectAtIndexedSubscript:v22];
        [(MCKeyboardInput *)v96 composeNew:v25];

        v22 = v23;
        v26 = [(MCKeyboardInput *)self inputs];
        v27 = [v26 count];
      }

      while (v27 > v23++);
    }

    if (![(MCKeyboardInput *)v96 hasKindOf:objc_opt_class()])
    {
      v29 = *(v11 + 1184);
      v30 = objc_opt_new();
      v31 = [(MCKeyboardInput *)v96 _asInputStringWithCursorIndex:0 remainingComposingInputIndex:0 typeInputs:v30 forSearch:1 suffix:0];

      v9 = v30;
    }

    goto LABEL_23;
  }

  v9 = objc_opt_new();
  v10 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:0 remainingComposingInputIndex:0 typeInputs:v9 forSearch:1 suffix:v6];
  v98 = 0;
LABEL_24:
  v32 = s_interface_idiom_is_pad;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v97 = v9;
  obj = [(MCKeyboardInput *)v9 inputs];
  v33 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (!v33)
  {
    goto LABEL_78;
  }

  v34 = v33;
  if (v32)
  {
    v35 = -3.0;
  }

  else
  {
    v35 = -2.0;
  }

  v36 = *v102;
  v99 = *v102;
  do
  {
    v37 = 0;
    do
    {
      if (*v102 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v101 + 1) + 8 * v37);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v38;
          v48 = [v47 inputs];
          v49 = [v48 count];

          if (v49)
          {
            v50 = 0;
            do
            {
              v51 = [v47 inputs];
              v52 = [v51 objectAtIndexedSubscript:v50];

              v53 = [v47 inputs];
              v54 = [v53 firstObject];

              if (v52 != v54)
              {
                v55 = [v47 inputs];
                v56 = [v55 lastObject];

                if (v52 == v56)
                {
                  [v47 isComplete];
                }
              }

              [v52 touchPoint];
              [v52 touchPoint];
              [v52 timestamp];
              [v52 isInflectionPoint];
              CPGesture = MecabraCreateCPGesture();
              v58 = [v52 nearbyKeys];
              *&v59 = v35;
              [(MCKeyboardInput *)self _addNearbyKeys:v58 to:CPGesture likelihoodThreshold:v59];

              [v5 addObject:CPGesture];
              CFRelease(CPGesture);

              ++v50;
              v60 = [v47 inputs];
              v61 = [v60 count];
            }

            while (v61 > v50);
            v98 = 1;
            v36 = v99;
          }

          goto LABEL_73;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_74;
        }

        v62 = v38;
        if ([v62 useSubInputsAsSearchString])
        {
          v42 = [v62 asSearchString];
          goto LABEL_65;
        }

        v42 = [v62 uncommittedText];
        v66 = [(MCKeyboardInput *)v97 inputs];
        v67 = [v66 lastObject];
        v68 = v67;
        if (v62 != v67)
        {

          goto LABEL_60;
        }

        v69 = [v42 length];

        if (!v69)
        {
          [v62 committedText];
          v42 = v66 = v42;
LABEL_60:
        }

        v70 = [v62 cursorIndex];
        v71 = [v62 committedText];
        v72 = v70 - [v71 length];
        v73 = v72;

        if (v72 >= 1 && (v72 & 0x7FFFFFFFu) <= [v42 length])
        {
          goto LABEL_67;
        }

        v74 = [(MCKeyboardInput *)v97 inputs];
        v75 = [v74 count];

        if (v75 == 1)
        {
LABEL_65:
          v73 = [v42 length];
        }

        if (v73 >= 1)
        {
LABEL_67:
          v76 = 0;
          do
          {
            [v42 characterAtIndex:v76];
            TypeGesture = MecabraCreateTypeGesture();
            [v5 addObject:TypeGesture];
            CFRelease(TypeGesture);
            ++v76;
          }

          while (v73 != v76);
        }

        v78 = [v62 text];
        v79 = [v62 cursorIndex];
        if (v79 < [v78 length])
        {
          v80 = [v78 substringWithRange:{objc_msgSend(v62, "cursorIndex"), objc_msgSend(v78, "length") - objc_msgSend(v62, "cursorIndex")}];
          [v95 appendString:v80];
        }

        v36 = v99;
LABEL_72:

        goto LABEL_73;
      }

      v39 = v38;
      v40 = [v39 characters];
      v41 = [v40 length];

      if (v41)
      {
        v42 = [v39 sourceKeyboardState];
        if ([v42 userInterfaceIdiom] != 4 && (objc_msgSend(v42, "userInterfaceIdiom") || (objc_msgSend(v42, "isSplitKeyboard") & 1) != 0 || (objc_msgSend(v42, "isFloatingKeyboard") & 1) != 0 || (objc_msgSend(v42, "isHardwareKeyboard") & 1) != 0) || (objc_msgSend(v39, "nearbyKeys"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, !v44))
        {
          v45 = [v39 characters];
          [v45 characterAtIndex:0];
          TypeGestureWithTouchEvent = MecabraCreateTypeGesture();
        }

        else
        {
          if ([v42 userInterfaceIdiom] == 4)
          {
            v35 = -3.0;
          }

          v45 = [v39 characters];
          [v45 characterAtIndex:0];
          [v39 point];
          [v39 point];
          TypeGestureWithTouchEvent = MecabraCreateTypeGestureWithTouchEvent();
        }

        v63 = TypeGestureWithTouchEvent;

        v64 = [v39 nearbyKeys];
        *&v65 = v35;
        [(MCKeyboardInput *)self _addNearbyKeys:v64 to:v63 likelihoodThreshold:v65];

        [v5 addObject:v63];
        CFRelease(v63);
        goto LABEL_72;
      }

LABEL_73:

LABEL_74:
      ++v37;
    }

    while (v37 != v34);
    v81 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
    v34 = v81;
  }

  while (v81);
LABEL_78:

  v82 = [(MCKeyboardInput *)self inputs];
  v83 = [v82 lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_81;
  }

  v84 = [(MCKeyboardInput *)self inputs];
  v85 = [v84 lastObject];
  if ([v85 includeSuffixAsSearchString])
  {

LABEL_81:
    v86 = v95;
LABEL_82:
    if ([v86 length])
    {
      v87 = 0;
      do
      {
        [v86 characterAtIndex:v87];
        v88 = MecabraCreateTypeGesture();
        [v5 addObject:v88];
        CFRelease(v88);
        ++v87;
      }

      while ([v86 length] > v87);
    }
  }

  else
  {
    v89 = [(MCKeyboardInput *)v97 inputs];
    v90 = [v89 count];

    v86 = v95;
    if (!v90)
    {
      goto LABEL_82;
    }
  }

  if (v94)
  {
    *v94 = v98 & 1;
  }

  v91 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __54__MCKeyboardInput_ChineseJapanese__asMecabraGestures___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 32) inputs], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lastObject"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8 == v6))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = 0;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
    *a4 = 1;
  }

  return v9;
}

- (BOOL)hasRemainingComposingInput
{
  if (![(MCKeyboardInput *)self hasDrawInput])
  {
    v14 = 0;
    v5 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:0 remainingComposingInputIndex:&v14 typeInputs:0 forSearch:0 suffix:0];
    v12 = v14;
    v11 = v12 < [v5 length];
LABEL_11:

    return v11;
  }

  v3 = [(MCKeyboardInput *)self composingInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MCKeyboardInput *)self composingInput];
    v6 = [v5 convertedInput];
    v7 = [v6 length];

    v8 = [v5 remainingMecabraInputs];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
        v10 = [v5 remainingMecabraInputs];
        v11 = [v10 count] != 0;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = v8 != 0;
    }

    goto LABEL_11;
  }

  return 1;
}

- (unint64_t)asSearchTextCursorIndex
{
  v4 = 0;
  v2 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:&v4 remainingComposingInputIndex:0 typeInputs:0 forSearch:1 suffix:0];
  return v4;
}

- (unint64_t)asInlineTextCursorIndex
{
  v4 = 0;
  v2 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:&v4 remainingComposingInputIndex:0 typeInputs:0 forSearch:0 suffix:0];
  return v4;
}

- (id)asCommittedText
{
  v5 = 0;
  v2 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:0 remainingComposingInputIndex:&v5 typeInputs:0 forSearch:0 suffix:0];
  v3 = [v2 substringToIndex:v5];

  return v3;
}

@end