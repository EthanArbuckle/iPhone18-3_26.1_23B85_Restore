@interface MCKeyboardInput
- (BOOL)hasDrawInput;
- (BOOL)hasKindOf:(Class)of;
- (BOOL)hasRemainingComposingInput;
- (MCKeyboardInput)composingInput;
- (MCKeyboardInput)initWithSourceKeyboardState:(id)state;
- (NSArray)inputs;
- (NSMutableArray)mutableInputs;
- (id)_asInputStringWithCursorIndex:(unint64_t *)index remainingComposingInputIndex:(unint64_t *)inputIndex typeInputs:(id)inputs forSearch:(BOOL)search suffix:(id)suffix;
- (id)asCommittedText;
- (id)asMecabraGestures:(BOOL *)gestures;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescriptionWithLeadingString:(id)string;
- (unint64_t)asInlineTextCursorIndex;
- (unint64_t)asSearchTextCursorIndex;
- (unint64_t)totalDrawSamples;
- (void)_addNearbyKeys:(id)keys to:(void *)to likelihoodThreshold:(float)threshold;
- (void)composeNew:(id)new;
- (void)insertInput:(id)input atIndex:(unint64_t)index;
- (void)removeAllInputs;
- (void)removeComposingInput;
- (void)removeInputAtIndex:(unint64_t)index;
- (void)replaceComposingInputWith:(id)with;
- (void)replaceInputAtIndex:(unint64_t)index with:(id)with;
- (void)setComposingInput:(id)input;
@end

@implementation MCKeyboardInput

- (unint64_t)totalDrawSamples
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputs = [(MCKeyboardInput *)self inputs];
  v3 = [inputs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inputs2 = [v8 inputs];
          v5 += [inputs2 count];
        }
      }

      v4 = [inputs countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)hasKindOf:(Class)of
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inputs = [(MCKeyboardInput *)self inputs];
  v4 = [inputs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [inputs countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)insertInput:(id)input atIndex:(unint64_t)index
{
  inputCopy = input;
  inputs = [(MCKeyboardInput *)self inputs];
  v8 = [inputs count];

  if (v8 < index)
  {
    inputs2 = [(MCKeyboardInput *)self inputs];
    index = [inputs2 count];
  }

  mutableInputs = [(MCKeyboardInput *)self mutableInputs];
  [mutableInputs insertObject:inputCopy atIndex:index];

  composingInput = [(MCKeyboardInput *)self composingInput];
  if (composingInput)
  {
    v12 = composingInput;
    composingInputIndex = [(MCKeyboardInput *)self composingInputIndex];

    if (index <= composingInputIndex)
    {
      v14 = [(MCKeyboardInput *)self composingInputIndex]+ 1;

      [(MCKeyboardInput *)self setComposingInputIndex:v14];
    }
  }
}

- (void)replaceComposingInputWith:(id)with
{
  withCopy = with;
  composingInput = [(MCKeyboardInput *)self composingInput];

  if (composingInput)
  {
    [(MCKeyboardInput *)self replaceInputAtIndex:[(MCKeyboardInput *)self composingInputIndex] with:withCopy];
  }
}

- (void)replaceInputAtIndex:(unint64_t)index with:(id)with
{
  withCopy = with;
  inputs = [(MCKeyboardInput *)self inputs];
  v7 = [inputs count];

  if (v7 > index)
  {
    inputs2 = [(MCKeyboardInput *)self inputs];
    v9 = [inputs2 objectAtIndexedSubscript:index];
    composingInput = [(MCKeyboardInput *)self composingInput];

    [(MCKeyboardInput *)self removeInputAtIndex:index];
    [(MCKeyboardInput *)self insertInput:withCopy atIndex:index];
    if (v9 == composingInput)
    {
      [(MCKeyboardInput *)self setComposingInput:withCopy];
    }
  }
}

- (void)removeInputAtIndex:(unint64_t)index
{
  inputs = [(MCKeyboardInput *)self inputs];
  v6 = [inputs count];

  if (v6 > index)
  {
    inputs2 = [(MCKeyboardInput *)self inputs];
    v8 = [inputs2 objectAtIndexedSubscript:index];
    composingInput = [(MCKeyboardInput *)self composingInput];

    if (v8 == composingInput)
    {

      [(MCKeyboardInput *)self removeComposingInput];
    }

    else
    {
      mutableInputs = [(MCKeyboardInput *)self mutableInputs];
      [mutableInputs removeObjectAtIndex:index];

      if ([(MCKeyboardInput *)self composingInputIndex]> index)
      {
        v11 = [(MCKeyboardInput *)self composingInputIndex]- 1;

        [(MCKeyboardInput *)self setComposingInputIndex:v11];
      }
    }
  }
}

- (void)removeComposingInput
{
  composingInput = [(MCKeyboardInput *)self composingInput];

  if (composingInput)
  {
    mutableInputs = [(MCKeyboardInput *)self mutableInputs];
    [mutableInputs removeObjectAtIndex:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];

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
  mutableInputs = [(MCKeyboardInput *)self mutableInputs];
  [mutableInputs removeAllObjects];

  [(MCKeyboardInput *)self setComposingInput:0];
}

- (void)composeNew:(id)new
{
  newCopy = new;
  if ([(MCKeyboardInput *)self canComposeNew:?])
  {
    composingInputIndex = [(MCKeyboardInput *)self composingInputIndex];
    mutableInputs = [(MCKeyboardInput *)self mutableInputs];
    v6 = [mutableInputs count];

    if (composingInputIndex >= v6)
    {
      mutableInputs2 = [(MCKeyboardInput *)self mutableInputs];
      -[MCKeyboardInput setComposingInputIndex:](self, "setComposingInputIndex:", [mutableInputs2 count]);
    }

    else
    {
      [(MCKeyboardInput *)self setComposingInputIndex:[(MCKeyboardInput *)self composingInputIndex]+ 1];
    }

    mutableInputs3 = [(MCKeyboardInput *)self mutableInputs];
    [mutableInputs3 insertObject:newCopy atIndex:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];
  }
}

- (void)setComposingInput:(id)input
{
  inputCopy = input;
  if (inputCopy)
  {
    inputs = [(MCKeyboardInput *)self inputs];
    v5 = [inputs indexOfObjectIdenticalTo:inputCopy];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"|composingInput| is not an input of this input" userInfo:0];
      [v6 raise];

      goto LABEL_7;
    }

    selfCopy2 = self;
    v8 = v5;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MCKeyboardInput *)selfCopy2 setComposingInputIndex:v8];
LABEL_7:
}

- (MCKeyboardInput)composingInput
{
  composingInputIndex = [(MCKeyboardInput *)self composingInputIndex];
  inputs = [(MCKeyboardInput *)self inputs];
  if (composingInputIndex >= [inputs count])
  {
    v6 = 0;
  }

  else
  {
    inputs2 = [(MCKeyboardInput *)self inputs];
    v6 = [inputs2 objectAtIndexedSubscript:{-[MCKeyboardInput composingInputIndex](self, "composingInputIndex")}];
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

- (id)shortDescriptionWithLeadingString:(id)string
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  shortDescriptionExcludingSubInputs = [(MCKeyboardInput *)self shortDescriptionExcludingSubInputs];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [string appendFormat:@"%@: %@", v8, shortDescriptionExcludingSubInputs];

  if ([shortDescriptionExcludingSubInputs length])
  {
    [string appendString:@" "];
  }

  inputs = [(MCKeyboardInput *)self inputs];
  v10 = [inputs count];

  if (v10)
  {
    v26 = shortDescriptionExcludingSubInputs;
    objc_msgSend(string, "appendString:", @"(\n");
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
          [string appendString:stringCopy];
          composingInput = [(MCKeyboardInput *)self composingInput];

          if (v15 == composingInput)
          {
            [string appendString:@"*"];
          }

          stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", stringCopy, stringCopy];
          v18 = [v15 shortDescriptionWithLeadingString:stringCopy];
          [string appendString:v18];

          inputs2 = [(MCKeyboardInput *)self inputs];
          lastObject = [inputs2 lastObject];

          if (v15 != lastObject)
          {
            [string appendString:{@", "}];
          }

          [string appendString:@"\n"];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v21 = [stringCopy length];
    v22 = v21 - [@"    " length];
    if (v22 >= 1)
    {
      0x7FFFFFFF = [stringCopy substringToIndex:v22 & 0x7FFFFFFF];
      [string appendString:0x7FFFFFFF];
    }

    [string appendString:@""]);
    shortDescriptionExcludingSubInputs = v26;
  }

  v24 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (MCKeyboardInput)initWithSourceKeyboardState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = MCKeyboardInput;
  v6 = [(MCKeyboardInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_composingInputIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_sourceKeyboardState, state);
  }

  return v7;
}

- (BOOL)hasDrawInput
{
  v3 = objc_opt_class();

  return [(MCKeyboardInput *)self hasKindOf:v3];
}

- (id)_asInputStringWithCursorIndex:(unint64_t *)index remainingComposingInputIndex:(unint64_t *)inputIndex typeInputs:(id)inputs forSearch:(BOOL)search suffix:(id)suffix
{
  searchCopy = search;
  v144 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  suffixCopy = suffix;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || searchCopy && ([(MCKeyboardInput *)self useSubInputsAsSearchString]& 1) != 0)
  {
    v124 = inputsCopy;
    if ([(MCKeyboardInput *)self hasDrawInput])
    {
      inputIndexCopy = inputIndex;
      indexCopy = index;
      v118 = suffixCopy;
      string = [MEMORY[0x277CCAB68] string];
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      inputs = [(MCKeyboardInput *)self inputs];
      v15 = [inputs countByEnumeratingWithState:&v138 objects:v143 count:16];
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
            objc_enumerationMutation(inputs);
          }

          v20 = *(*(&v138 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;

            convertedInput = [v21 convertedInput];
            if (convertedInput)
            {
            }

            else
            {
              candidateText = [v21 candidateText];
              v25 = [candidateText rangeOfString:string];

              if (!v25)
              {
                [(__CFString *)string setString:&stru_283FDFAF8];
              }
            }

            candidateText2 = [v21 candidateText];
            v17 = v21;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            candidateText2 = [v20 committedText];
          }

          [(__CFString *)string appendString:candidateText2];
        }

        v16 = [inputs countByEnumeratingWithState:&v138 objects:v143 count:16];
        if (!v16)
        {
LABEL_42:

          if (inputIndexCopy)
          {
            *inputIndexCopy = [(__CFString *)string length];
          }

          remainingInputString = [v17 remainingInputString];

          inputsCopy = v124;
          suffixCopy = v118;
          if (remainingInputString)
          {
            remainingInputString2 = [v17 remainingInputString];
            [(__CFString *)string appendString:remainingInputString2];
          }

          if (indexCopy)
          {
            *indexCopy = [(__CFString *)string length];
          }

          remainingInputString3 = [v17 remainingInputString];
          v42 = remainingInputString3;
          v43 = &stru_283FDFAF8;
          if (remainingInputString3)
          {
            v43 = remainingInputString3;
          }

          v44 = v43;

          if (searchCopy)
          {
            v45 = v44;
          }

          else
          {
            v45 = string;
          }

          v32 = v45;

          goto LABEL_153;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      characters = [(MCKeyboardInput *)self characters];
      convertedInput2 = [characters copy];

      [inputsCopy composeNew:self];
      v31 = 0;
      if (convertedInput2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        convertedInput2 = [(MCKeyboardInput *)self convertedInput];
        v31 = [(__CFString *)convertedInput2 length];
        if (convertedInput2)
        {
LABEL_28:
          if (!index)
          {
LABEL_30:
            if (inputIndex)
            {
              *inputIndex = v31;
            }

            v32 = convertedInput2;
LABEL_129:

            goto LABEL_153;
          }

LABEL_29:
          *index = [(__CFString *)convertedInput2 length];
          goto LABEL_30;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = 0;
          convertedInput2 = &stru_283FDFAF8;
          if (!index)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }
      }
    }

    inputIndexCopy2 = inputIndex;
    indexCopy2 = index;
    v119 = suffixCopy;
    v47 = objc_opt_new();
    v48 = objc_opt_new();
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    selfCopy = self;
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
        v56 = [v52 _asInputStringWithCursorIndex:&v133 remainingComposingInputIndex:&v132 typeInputs:inputsCopy forSearch:searchCopy suffix:v48];
        [v47 appendString:v56];
        if ((v49 & 1) == 0)
        {
          v125 += v133;
          if (v125 > [v47 length])
          {
            v125 = [v47 length];
          }
        }

        composingInput = [(MCKeyboardInput *)selfCopy composingInput];
        v58 = v52 == composingInput;

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
            cursorIndex = [v60 cursorIndex];
            committedText = [v60 committedText];

            v66 = cursorIndex >= [committedText length];
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

        inputsCopy = v124;
        goto LABEL_115;
      }

      v127 = v49;
      v53 = v52;
      [v47 appendString:v48];
      [v48 deleteCharactersInRange:{0, objc_msgSend(v48, "length")}];
      convertedInput3 = [v53 convertedInput];
      if ([convertedInput3 length])
      {
        break;
      }

      candidateText3 = [v53 candidateText];
      if (![candidateText3 length])
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
          if (indexCopy2)
          {
            if ([(MCKeyboardInput *)selfCopy hasKindOf:objc_opt_class()])
            {
              v91 = [v90 length];
            }

            *indexCopy2 = v91;
          }

          if (inputIndexCopy2)
          {
            *inputIndexCopy2 = v50;
          }

          v32 = v90;

          suffixCopy = v119;
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
    convertedInput4 = [v53 convertedInput];
    v72 = [convertedInput4 length];
    candidateText4 = [v53 candidateText];
    convertedInput3 = candidateText4;
    if (v72)
    {
      if ([candidateText4 isEqualToString:v47])
      {
        [v53 candidateText];
      }

      else
      {
        [v53 convertedInput];
      }
      v74 = ;

      convertedInput3 = v74;
    }

    if ([convertedInput3 isEqualToString:@"☻"])
    {
      v75 = [v47 length];
      v76 = 0;
    }

    else
    {
      v76 = [v47 rangeOfString:convertedInput3 options:1 range:{v50, v70 - v50}];
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

      if (searchCopy)
      {
        v125 = v79;
        [v47 deleteCharactersInRange:{v76, v75}];
        if (v75)
        {
          inputsCopy = v124;
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
        candidateText5 = [v53 candidateText];
        v125 = [candidateText5 length] + v79;

        candidateText6 = [v53 candidateText];
        [v47 replaceCharactersInRange:v76 withString:{v75, candidateText6}];

        candidateText7 = [v53 candidateText];
        v50 += [candidateText7 length];
      }

      inputsCopy = v124;
    }

    else if (!searchCopy)
    {
      convertedInput5 = [v53 convertedInput];
      if ([convertedInput5 length])
      {
      }

      else
      {
        candidateText8 = [v53 candidateText];
        v81 = [v47 isEqualToString:candidateText8];

        if (v81)
        {
          v50 = [v47 length];
          goto LABEL_113;
        }
      }

      if (v50 >= [v47 length])
      {
        candidateText9 = [v53 candidateText];
        [v47 appendString:candidateText9];
      }

      else
      {
        remainingMecabraInputs = [v53 remainingMecabraInputs];

        if (!remainingMecabraInputs)
        {
          goto LABEL_113;
        }

        v83 = [v47 length] - v50;
        candidateText10 = [v53 candidateText];
        [v47 replaceCharactersInRange:v50 withString:{v83, candidateText10}];
      }

      candidateText3 = [v53 candidateText];
      v50 += [candidateText3 length];
LABEL_110:
    }

LABEL_113:

    goto LABEL_114;
  }

  selfCopy2 = self;
  text = [(MCKeyboardInput *)selfCopy2 text];
  uncommittedText = [(MCKeyboardInput *)selfCopy2 uncommittedText];
  if (inputIndex)
  {
    if (!searchCopy)
    {
      committedText2 = [(MCKeyboardInput *)selfCopy2 committedText];
      *inputIndex = [committedText2 length];

      if (!index)
      {
        goto LABEL_132;
      }

      goto LABEL_55;
    }

    *inputIndex = 0;
    if (!index)
    {
      goto LABEL_132;
    }
  }

  else
  {
    if (!index)
    {
      goto LABEL_132;
    }

    if (!searchCopy)
    {
      goto LABEL_55;
    }
  }

  uncommittedText2 = [(MCKeyboardInput *)selfCopy2 uncommittedText];
  v34 = [uncommittedText2 length];

  if (!v34)
  {
LABEL_55:
    *index = [(MCKeyboardInput *)selfCopy2 cursorIndex];
    goto LABEL_132;
  }

  cursorIndex2 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
  committedText3 = [(MCKeyboardInput *)selfCopy2 committedText];
  if (cursorIndex2 <= [committedText3 length])
  {
    *index = 0;
  }

  else
  {
    cursorIndex3 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
    committedText4 = [(MCKeyboardInput *)selfCopy2 committedText];
    *index = cursorIndex3 - [committedText4 length];
  }

LABEL_132:
  v92 = text;
  v93 = [(__CFString *)v92 substringWithRange:[(MCKeyboardInput *)selfCopy2 cursorIndex], [(__CFString *)v92 length]- [(MCKeyboardInput *)selfCopy2 cursorIndex]];
  cursorIndex4 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
  v131 = uncommittedText;
  if (!searchCopy)
  {
    v32 = v92;
    if (cursorIndex4 < [(__CFString *)v92 length])
    {
      [suffixCopy appendString:v93];
      v32 = [(__CFString *)v92 substringToIndex:[(MCKeyboardInput *)selfCopy2 cursorIndex]];
    }

    goto LABEL_148;
  }

  committedText5 = [(MCKeyboardInput *)selfCopy2 committedText];
  if (cursorIndex4 <= [committedText5 length])
  {
    v96 = [uncommittedText length];

    if (v96)
    {

      [suffixCopy appendString:uncommittedText];
      v32 = &stru_283FDFAF8;
      goto LABEL_148;
    }
  }

  else
  {
  }

  cursorIndex5 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
  committedText6 = [(MCKeyboardInput *)selfCopy2 committedText];
  if (cursorIndex5 <= [committedText6 length])
  {
  }

  else
  {
    v99 = [uncommittedText length];

    if (v99)
    {
      cursorIndex6 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
      committedText7 = [(MCKeyboardInput *)selfCopy2 committedText];
      v102 = cursorIndex6 - [committedText7 length];

      v32 = [uncommittedText substringWithRange:{0, v102}];

LABEL_147:
      [suffixCopy appendString:v93];
      goto LABEL_148;
    }
  }

  cursorIndex7 = [(MCKeyboardInput *)selfCopy2 cursorIndex];
  committedText8 = [(MCKeyboardInput *)selfCopy2 committedText];
  if (cursorIndex7 > [committedText8 length])
  {

    v32 = v92;
    goto LABEL_148;
  }

  v105 = [uncommittedText length];

  v32 = v92;
  if (!v105)
  {
    committedText9 = [(MCKeyboardInput *)selfCopy2 committedText];
    v32 = [committedText9 substringWithRange:{0, -[MCKeyboardInput cursorIndex](selfCopy2, "cursorIndex")}];

    goto LABEL_147;
  }

LABEL_148:
  v120 = suffixCopy;
  if (inputsCopy && [(__CFString *)v32 length])
  {
    v107 = 0;
    v108 = MEMORY[0x277CBEBF8];
    do
    {
      v109 = [MCTypeInput alloc];
      v110 = [(__CFString *)v32 substringWithRange:v107, 1];
      v111 = [(MCTypeInput *)v109 initWithCharacters:v110 nearbyKeys:v108];

      [inputsCopy composeNew:v111];
      ++v107;
    }

    while ([(__CFString *)v32 length]> v107);
  }

  suffixCopy = v120;
LABEL_153:

  v112 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_addNearbyKeys:(id)keys to:(void *)to likelihoodThreshold:(float)threshold
{
  v22 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v8 = keysCopy;
  if (to)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = keysCopy;
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
          if (v15 < threshold)
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

- (id)asMecabraGestures:(BOOL *)gestures
{
  v112 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  gesturesCopy = gestures;
  v95 = string;
  if ([(MCKeyboardInput *)self hasKindOf:objc_opt_class()])
  {
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0;
    inputs = [(MCKeyboardInput *)self inputs];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __54__MCKeyboardInput_ChineseJapanese__asMecabraGestures___block_invoke;
    v106[3] = &unk_278730CB0;
    v106[4] = self;
    v106[5] = &v107;
    v8 = [inputs indexOfObjectWithOptions:2 passingTest:v106];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      selfCopy = self;
      v98 = 0;
LABEL_23:
      _Block_object_dispose(&v107, 8);
      goto LABEL_24;
    }

    v11 = 0x27872D000uLL;
    v96 = objc_opt_new();
    inputs2 = [(MCKeyboardInput *)self inputs];
    v13 = [inputs2 objectAtIndexedSubscript:v8];

    if (*(v108 + 24) != 1)
    {
      goto LABEL_12;
    }

    remainingInputString = [v13 remainingInputString];

    if (remainingInputString)
    {
      remainingInputString2 = [v13 remainingInputString];
      if ([remainingInputString2 length])
      {
        v16 = 0;
        do
        {
          v105 = [remainingInputString2 characterAtIndex:{v16, gesturesCopy}];
          v17 = [MEMORY[0x277CCACA8] stringWithCharacters:&v105 length:1];
          v18 = [[MCTypeInput alloc] initWithCharacters:v17 nearbyKeys:0];
          [(MCKeyboardInput *)v96 composeNew:v18];

          ++v16;
        }

        while ([remainingInputString2 length] > v16);
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
      remainingMecabraInputs = [v13 remainingMecabraInputs];

      if (remainingMecabraInputs)
      {
        remainingInputString2 = [v13 remainingMecabraInputs];
        [array addObjectsFromArray:remainingInputString2];
        v98 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v98 = 0;
LABEL_17:
    inputs3 = [(MCKeyboardInput *)self inputs];
    v21 = [inputs3 count];

    selfCopy = v96;
    if (v21 > v8 + 1)
    {
      v22 = v8 + 1;
      v23 = v8 + 2;
      do
      {
        inputs4 = [(MCKeyboardInput *)self inputs];
        v25 = [inputs4 objectAtIndexedSubscript:v22];
        [(MCKeyboardInput *)v96 composeNew:v25];

        v22 = v23;
        inputs5 = [(MCKeyboardInput *)self inputs];
        v27 = [inputs5 count];
      }

      while (v27 > v23++);
    }

    if (![(MCKeyboardInput *)v96 hasKindOf:objc_opt_class()])
    {
      v29 = *(v11 + 1184);
      v30 = objc_opt_new();
      v31 = [(MCKeyboardInput *)v96 _asInputStringWithCursorIndex:0 remainingComposingInputIndex:0 typeInputs:v30 forSearch:1 suffix:0];

      selfCopy = v30;
    }

    goto LABEL_23;
  }

  selfCopy = objc_opt_new();
  v10 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:0 remainingComposingInputIndex:0 typeInputs:selfCopy forSearch:1 suffix:string];
  v98 = 0;
LABEL_24:
  v32 = s_interface_idiom_is_pad;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v97 = selfCopy;
  obj = [(MCKeyboardInput *)selfCopy inputs];
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
          inputs6 = [v47 inputs];
          v49 = [inputs6 count];

          if (v49)
          {
            v50 = 0;
            do
            {
              inputs7 = [v47 inputs];
              v52 = [inputs7 objectAtIndexedSubscript:v50];

              inputs8 = [v47 inputs];
              firstObject = [inputs8 firstObject];

              if (v52 != firstObject)
              {
                inputs9 = [v47 inputs];
                lastObject = [inputs9 lastObject];

                if (v52 == lastObject)
                {
                  [v47 isComplete];
                }
              }

              [v52 touchPoint];
              [v52 touchPoint];
              [v52 timestamp];
              [v52 isInflectionPoint];
              CPGesture = MecabraCreateCPGesture();
              nearbyKeys = [v52 nearbyKeys];
              *&v59 = v35;
              [(MCKeyboardInput *)self _addNearbyKeys:nearbyKeys to:CPGesture likelihoodThreshold:v59];

              [array addObject:CPGesture];
              CFRelease(CPGesture);

              ++v50;
              inputs10 = [v47 inputs];
              v61 = [inputs10 count];
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
          asSearchString = [v62 asSearchString];
          goto LABEL_65;
        }

        asSearchString = [v62 uncommittedText];
        inputs11 = [(MCKeyboardInput *)v97 inputs];
        lastObject2 = [inputs11 lastObject];
        v68 = lastObject2;
        if (v62 != lastObject2)
        {

          goto LABEL_60;
        }

        v69 = [asSearchString length];

        if (!v69)
        {
          [v62 committedText];
          asSearchString = inputs11 = asSearchString;
LABEL_60:
        }

        cursorIndex = [v62 cursorIndex];
        committedText = [v62 committedText];
        v72 = cursorIndex - [committedText length];
        v73 = v72;

        if (v72 >= 1 && (v72 & 0x7FFFFFFFu) <= [asSearchString length])
        {
          goto LABEL_67;
        }

        inputs12 = [(MCKeyboardInput *)v97 inputs];
        v75 = [inputs12 count];

        if (v75 == 1)
        {
LABEL_65:
          v73 = [asSearchString length];
        }

        if (v73 >= 1)
        {
LABEL_67:
          v76 = 0;
          do
          {
            [asSearchString characterAtIndex:v76];
            TypeGesture = MecabraCreateTypeGesture();
            [array addObject:TypeGesture];
            CFRelease(TypeGesture);
            ++v76;
          }

          while (v73 != v76);
        }

        text = [v62 text];
        cursorIndex2 = [v62 cursorIndex];
        if (cursorIndex2 < [text length])
        {
          v80 = [text substringWithRange:{objc_msgSend(v62, "cursorIndex"), objc_msgSend(text, "length") - objc_msgSend(v62, "cursorIndex")}];
          [v95 appendString:v80];
        }

        v36 = v99;
LABEL_72:

        goto LABEL_73;
      }

      v39 = v38;
      characters = [v39 characters];
      v41 = [characters length];

      if (v41)
      {
        asSearchString = [v39 sourceKeyboardState];
        if ([asSearchString userInterfaceIdiom] != 4 && (objc_msgSend(asSearchString, "userInterfaceIdiom") || (objc_msgSend(asSearchString, "isSplitKeyboard") & 1) != 0 || (objc_msgSend(asSearchString, "isFloatingKeyboard") & 1) != 0 || (objc_msgSend(asSearchString, "isHardwareKeyboard") & 1) != 0) || (objc_msgSend(v39, "nearbyKeys"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, !v44))
        {
          characters2 = [v39 characters];
          [characters2 characterAtIndex:0];
          TypeGestureWithTouchEvent = MecabraCreateTypeGesture();
        }

        else
        {
          if ([asSearchString userInterfaceIdiom] == 4)
          {
            v35 = -3.0;
          }

          characters2 = [v39 characters];
          [characters2 characterAtIndex:0];
          [v39 point];
          [v39 point];
          TypeGestureWithTouchEvent = MecabraCreateTypeGestureWithTouchEvent();
        }

        v63 = TypeGestureWithTouchEvent;

        nearbyKeys2 = [v39 nearbyKeys];
        *&v65 = v35;
        [(MCKeyboardInput *)self _addNearbyKeys:nearbyKeys2 to:v63 likelihoodThreshold:v65];

        [array addObject:v63];
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

  inputs13 = [(MCKeyboardInput *)self inputs];
  lastObject3 = [inputs13 lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_81;
  }

  inputs14 = [(MCKeyboardInput *)self inputs];
  lastObject4 = [inputs14 lastObject];
  if ([lastObject4 includeSuffixAsSearchString])
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
        [array addObject:v88];
        CFRelease(v88);
        ++v87;
      }

      while ([v86 length] > v87);
    }
  }

  else
  {
    inputs15 = [(MCKeyboardInput *)v97 inputs];
    v90 = [inputs15 count];

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

  return array;
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
    composingInput2 = [(MCKeyboardInput *)self _asInputStringWithCursorIndex:0 remainingComposingInputIndex:&v14 typeInputs:0 forSearch:0 suffix:0];
    v12 = v14;
    v11 = v12 < [composingInput2 length];
LABEL_11:

    return v11;
  }

  composingInput = [(MCKeyboardInput *)self composingInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composingInput2 = [(MCKeyboardInput *)self composingInput];
    convertedInput = [composingInput2 convertedInput];
    v7 = [convertedInput length];

    remainingMecabraInputs = [composingInput2 remainingMecabraInputs];
    v9 = remainingMecabraInputs;
    if (v7)
    {
      if (remainingMecabraInputs)
      {
        remainingMecabraInputs2 = [composingInput2 remainingMecabraInputs];
        v11 = [remainingMecabraInputs2 count] != 0;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = remainingMecabraInputs != 0;
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