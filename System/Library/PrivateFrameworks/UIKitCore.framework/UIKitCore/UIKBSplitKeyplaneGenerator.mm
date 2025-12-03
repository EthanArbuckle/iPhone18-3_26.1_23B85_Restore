@interface UIKBSplitKeyplaneGenerator
- (UIKBSplitKeyplaneGenerator)init;
- (id)finalizeSplitKeyplane;
- (id)generateRivenKeyplaneFromKeyplane:(id)keyplane forKeyboard:(id)keyboard;
- (id)hintsForRow:(id)row;
- (id)keysOrderedByPosition;
- (void)addKey:(id)key withShape:(id)shape forRow:(id)row attribs:(id)attribs left:(BOOL)left force:(BOOL)force isDefaultWidth:(BOOL)width;
- (void)addSliceStart:(CGRect)start end:(CGRect)end startToken:(id)token endToken:(id)endToken left:(BOOL)left normalization:(int)normalization isDefaultWidth:(BOOL)width row:(int)self0;
- (void)alignSpaceKeyEdges;
- (void)commitUncommittedSlices;
- (void)initializeGeneratorForKeyplane:(id)keyplane name:(id)name;
- (void)organizeKeyplaneIntoRows;
- (void)splitRow:(id)row;
- (void)splitSpaceKey:(id)key leftSpace:(id)space left:(CGRect)left right:(CGRect)right;
@end

@implementation UIKBSplitKeyplaneGenerator

- (UIKBSplitKeyplaneGenerator)init
{
  v11.receiver = self;
  v11.super_class = UIKBSplitKeyplaneGenerator;
  v2 = [(UIKBSplitKeyplaneGenerator *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    rows = v2->_rows;
    v2->_rows = v3;

    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    [preferencesActions rivenSizeFactor:1.0];
    v8 = v7;

    v2->_splitKeySizeFactor.width = v8;
    v2->_splitKeySizeFactor.height = v8;
    v9 = v2;
  }

  return v2;
}

- (id)keysOrderedByPosition
{
  if (objc_opt_respondsToSelector())
  {
    keysOrderedByPosition = [(UIKBTree *)self->_sourceKeyplane keysOrderedByPosition];
  }

  else
  {
    keysOrderedByPosition = 0;
  }

  return keysOrderedByPosition;
}

- (void)addSliceStart:(CGRect)start end:(CGRect)end startToken:(id)token endToken:(id)endToken left:(BOOL)left normalization:(int)normalization isDefaultWidth:(BOOL)width row:(int)self0
{
  v10 = *&row;
  v11 = *&normalization;
  leftCopy = left;
  height = end.size.height;
  width = end.size.width;
  y = end.origin.y;
  x = end.origin.x;
  v18 = start.size.height;
  v19 = start.size.width;
  v20 = start.origin.y;
  v21 = start.origin.x;
  tokenCopy = token;
  endTokenCopy = endToken;
  p_leftSlice = &self->_leftSlice;
  if (!self->_leftSlice)
  {
    v25 = objc_alloc_init(UIKeyboardTransitionSlice);
    v26 = *p_leftSlice;
    *p_leftSlice = v25;
  }

  p_rightSlice = &self->_rightSlice;
  if (!self->_rightSlice)
  {
    v28 = objc_alloc_init(UIKeyboardTransitionSlice);
    v29 = *p_rightSlice;
    *p_rightSlice = v28;
  }

  if (leftCopy)
  {
    v30 = 104;
  }

  else
  {
    v30 = 112;
  }

  if (leftCopy)
  {
    v31 = &self->_leftSlice;
  }

  else
  {
    v31 = &self->_rightSlice;
  }

  v32 = *v31;
  hasGeometry = [(UIKeyboardTransitionSlice *)v32 hasGeometry];
  if (tokenCopy)
  {
    v34 = endTokenCopy == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (!v34 && !hasGeometry)
  {
    [(UIKeyboardTransitionSlice *)v32 setStartRect:v21, v20, v19, v18];
    [(UIKeyboardTransitionSlice *)v32 setEndRect:x, y, width, height];
    hasGeometry = [(UIKeyboardTransitionSlice *)v32 hasGeometry];
  }

  v55.origin.x = v21;
  v52 = v20;
  v55.origin.y = v20;
  v36 = v19;
  v55.size.width = v19;
  v37 = v18;
  v55.size.height = v18;
  v38 = x;
  v39 = y;
  widthCopy = width;
  v41 = height;
  MinY = CGRectGetMinY(v55);
  [(UIKeyboardTransitionSlice *)v32 startRect];
  if (MinY == CGRectGetMinY(v56))
  {
    v43 = v35;
  }

  else
  {
    v43 = 1;
  }

  if (hasGeometry)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v35)
  {
    v45 = [UIKeyboardTransitionSlice sliceWithStart:v21 end:v52, v36, v37, v38, v39, widthCopy, v41];
    [tokenCopy setRowHint:v10];
    [endTokenCopy setRowHint:v10];
    [v45 setStartToken:tokenCopy];
    [v45 setEndToken:endTokenCopy];
    [v45 setNormalization:v11];
    [v45 setDelayCrossfade:1];
    [(UIKeyboardSliceSet *)self->_sliceSet addSlice:v45];
    if (v11 != 2)
    {
      name = [endTokenCopy name];

      if (name)
      {
        controlKeys = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
        name2 = [endTokenCopy name];
        [controlKeys setObject:v45 forKey:name2];
      }
    }

    if (!v44)
    {
LABEL_28:
      if (v35)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if (!v44)
  {
    goto LABEL_28;
  }

  [(UIKeyboardSliceSet *)self->_sliceSet addSlice:v32, *&v52];
  v49 = objc_alloc_init(UIKeyboardTransitionSlice);
  v50 = *(&self->super.isa + v30);
  *(&self->super.isa + v30) = v49;

  v51 = *(&self->super.isa + v30);
  v32 = v51;
  if ((v35 & 1) == 0)
  {
LABEL_29:
    [(UIKeyboardTransitionSlice *)v32 addStartRect:v21 end:v52, v36, v37, v38, v39, widthCopy, v41, *&v52];
  }

LABEL_30:
}

- (void)splitSpaceKey:(id)key leftSpace:(id)space left:(CGRect)left right:(CGRect)right
{
  height = right.size.height;
  width = right.size.width;
  y = right.origin.y;
  x = right.origin.x;
  v10 = left.size.height;
  v11 = left.size.width;
  v12 = left.origin.y;
  v13 = left.origin.x;
  keyCopy = key;
  spaceCopy = space;
  v58.origin.x = v13;
  v51 = v12;
  v58.origin.y = v12;
  v58.size.width = v11;
  v58.size.height = v10;
  IsNull = CGRectIsNull(v58);
  v52 = x;
  v59.origin.x = x;
  v59.origin.y = y;
  v54 = width;
  v55 = height;
  v59.size.width = width;
  v59.size.height = height;
  v18 = CGRectIsNull(v59);
  [keyCopy paddedFrame];
  v20 = v19;
  v53 = v21;
  v23 = v22;
  v25 = v24;
  v26 = +[UIKeyboardImpl activeInstance];
  _inheritedRenderConfig = [v26 _inheritedRenderConfig];

  if (IsNull || v18)
  {
    if (IsNull)
    {
      v13 = v52;
      v50 = y;
    }

    else
    {
      v50 = v51;
    }

    if (IsNull)
    {
      v11 = v54;
      v10 = v55;
    }

    v34 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:102 renderConfig:_inheritedRenderConfig size:v23, v25];
    v35 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:106 renderConfig:_inheritedRenderConfig size:v11, v10];
    v36 = [(NSMutableArray *)self->_rows count];
    v48 = !IsNull;
    selfCopy2 = self;
    v38 = v20;
    v39 = v53;
    v40 = v23;
    v42 = v25;
    v44 = v13;
    v41 = v50;
    v45 = v11;
    v46 = v10;
    v43 = v34;
    v47 = v35;
    v49 = 0;
  }

  else
  {
    [(UIKBTree *)self->_sourceKeyplane frame];
    v29 = v28 * 0.5 - v20;
    name = [spaceCopy name];
    v31 = [UIKBCacheToken tokenTemplateForKey:keyCopy name:name style:102 renderConfig:_inheritedRenderConfig size:v23, v25];

    name2 = [spaceCopy name];
    v33 = [UIKBCacheToken tokenTemplateForKey:keyCopy name:name2 style:106 renderConfig:_inheritedRenderConfig size:v11, v10];

    [(UIKBSplitKeyplaneGenerator *)self addSliceStart:v31 end:v33 startToken:1 endToken:1 left:0 normalization:[(NSMutableArray *)self->_rows count] isDefaultWidth:v20 row:v53, v29, v25, v13, v51, v11, v10];
    v34 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:102 renderConfig:_inheritedRenderConfig size:v23, v25];

    v35 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:106 renderConfig:_inheritedRenderConfig size:v54, v55];

    v36 = [(NSMutableArray *)self->_rows count];
    selfCopy2 = self;
    v38 = v20 + v29;
    v39 = v53;
    v41 = y;
    v40 = v23 - v29;
    v42 = v25;
    v43 = v34;
    v44 = v52;
    v45 = v54;
    v46 = v55;
    v47 = v35;
    v48 = 0;
    v49 = 2;
  }

  [(UIKBSplitKeyplaneGenerator *)selfCopy2 addSliceStart:v43 end:v47 startToken:v48 endToken:v49 left:0 normalization:v36 isDefaultWidth:v38 row:v39, v40, v42, v44, v41, v45, v46];
}

- (void)commitUncommittedSlices
{
  if ([(UIKeyboardTransitionSlice *)self->_leftSlice hasGeometry])
  {
    slices = [(UIKeyboardSliceSet *)self->_sliceSet slices];
    v4 = [slices containsObject:self->_leftSlice];

    if ((v4 & 1) == 0)
    {
      [(UIKeyboardSliceSet *)self->_sliceSet addSlice:self->_leftSlice];
      leftSlice = self->_leftSlice;
      self->_leftSlice = 0;
    }
  }

  if ([(UIKeyboardTransitionSlice *)self->_rightSlice hasGeometry])
  {
    slices2 = [(UIKeyboardSliceSet *)self->_sliceSet slices];
    v7 = [slices2 containsObject:self->_rightSlice];

    if ((v7 & 1) == 0)
    {
      [(UIKeyboardSliceSet *)self->_sliceSet addSlice:self->_rightSlice];
      rightSlice = self->_rightSlice;
      self->_rightSlice = 0;
    }
  }
}

- (void)addKey:(id)key withShape:(id)shape forRow:(id)row attribs:(id)attribs left:(BOOL)left force:(BOOL)force isDefaultWidth:(BOOL)width
{
  forceCopy = force;
  leftCopy = left;
  widthCopy2 = width;
  keyCopy = key;
  shapeCopy = shape;
  rowCopy = row;
  attribsCopy = attribs;
  interactionType = [keyCopy interactionType];
  v20 = [attribsCopy valueForKey:@"KBghost"];
  bOOLValue = [v20 BOOLValue];

  if (forceCopy || !((interactionType == 15) | bOOLValue & 1))
  {
    if ([keyCopy renderKeyInKeyplane:self->_sourceKeyplane])
    {
      v22 = 0;
      v23 = 0;
LABEL_11:
      [keyCopy paddedFrame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      [shapeCopy paddedFrame];
      -[UIKBSplitKeyplaneGenerator addSliceStart:end:startToken:endToken:left:normalization:isDefaultWidth:row:](self, "addSliceStart:end:startToken:endToken:left:normalization:isDefaultWidth:row:", v23, v22, leftCopy, 0, widthCopy2, [rowCopy rowIndex] + 1, v40, v42, v44, v46, v47, v48, v49, v50);

      goto LABEL_12;
    }

    v24 = +[UIKeyboardImpl activeInstance];
    _inheritedRenderConfig = [v24 _inheritedRenderConfig];

    [keyCopy paddedFrame];
    v23 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:102 renderConfig:_inheritedRenderConfig size:v26, v27];
    [shapeCopy paddedFrame];
    v22 = [UIKBCacheToken tokenTemplateForKey:keyCopy style:106 renderConfig:_inheritedRenderConfig size:v28, v29];
    lastObject = [(NSMutableArray *)self->_rows lastObject];
    if (lastObject == rowCopy && leftCopy)
    {
      displayType = [keyCopy displayType];

      if (!displayType)
      {
LABEL_10:

        widthCopy2 = width;
        goto LABEL_11;
      }

      [keyCopy name];
      v32 = v59 = _inheritedRenderConfig;
      lastObject = [UIKBTree mergeStringForKeyName:v32];

      name = [keyCopy name];
      controlKeys = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v34 = [controlKeys objectForKeyedSubscript:@"MoreIntlNames"];
      [v34 setObject:name forKeyedSubscript:lastObject];

      shape = [keyCopy shape];
      controlKeys2 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v36 = [controlKeys2 objectForKeyedSubscript:@"MoreIntlStarts"];
      [v36 setObject:shape forKeyedSubscript:lastObject];

      controlKeys3 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v38 = [controlKeys3 objectForKeyedSubscript:@"MoreIntlEnds"];
      [v38 setObject:shapeCopy forKeyedSubscript:lastObject];

      _inheritedRenderConfig = v59;
    }

    goto LABEL_10;
  }

LABEL_12:
  v51 = [rowCopy listOfType:0 left:leftCopy];
  v52 = [rowCopy listOfType:1 left:leftCopy];
  v53 = [rowCopy listOfType:2 left:leftCopy];
  if (keyCopy)
  {
    subtrees = [v51 subtrees];
    [subtrees addObject:keyCopy];
  }

  subtrees2 = [v52 subtrees];
  [subtrees2 addObject:shapeCopy];

  subtrees3 = [v53 subtrees];
  [subtrees3 addObject:attribsCopy];
}

- (void)alignSpaceKeyEdges
{
  lastObject = [(NSMutableArray *)self->_rows lastObject];
  v3 = [lastObject listOfType:0 left:1];
  v4 = [lastObject listOfType:0 left:0];
  v5 = [lastObject listOfType:1 left:1];
  v105 = [lastObject listOfType:1 left:0];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:15];
  v7 = [v3 subtreesWithProperty:@"KBinteractionType" value:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:15];
  v9 = [v4 subtreesWithProperty:@"KBinteractionType" value:v8];

  if (![v7 count] && !objc_msgSend(v9, "count"))
  {
    goto LABEL_38;
  }

  v101 = v7;
  lastObject2 = [v7 lastObject];
  v104 = v5;
  if (lastObject2)
  {
    subtrees = [v3 subtrees];
    v12 = [subtrees indexOfObject:lastObject2];

    subtrees2 = [v5 subtrees];
    v98 = v12;
    v14 = [subtrees2 objectAtIndex:v12];
  }

  else
  {
    v14 = 0;
    v98 = 0;
  }

  lastObject3 = [v9 lastObject];
  v103 = v14;
  v100 = v9;
  if (lastObject3)
  {
    v16 = lastObject3;
    subtrees3 = [v4 subtrees];
    v18 = [subtrees3 indexOfObject:v16];

    subtrees4 = [v105 subtrees];
    v96 = v18;
    v20 = [subtrees4 objectAtIndex:v18];

    v21 = v20 != 0;
    if (v14 && v20)
    {
      [v14 frame];
      v23 = v22;
      [v20 frame];
      v25 = *MEMORY[0x1E695F050];
      v26 = *(MEMORY[0x1E695F050] + 8);
      v28 = *(MEMORY[0x1E695F050] + 16);
      v27 = *(MEMORY[0x1E695F050] + 24);
      if (v23 <= v24)
      {
        v29 = lastObject2;
      }

      else
      {
        v29 = v16;
      }

      if (v23 > v24)
      {
        v16 = lastObject2;
      }

      v21 = 1;
      lastObject2 = v29;
    }

    else
    {
      v25 = *MEMORY[0x1E695F050];
      v26 = *(MEMORY[0x1E695F050] + 8);
      v28 = *(MEMORY[0x1E695F050] + 16);
      v27 = *(MEMORY[0x1E695F050] + 24);
      if (!v14)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v25 = *MEMORY[0x1E695F050];
    v30 = *(MEMORY[0x1E695F050] + 8);
    v28 = *(MEMORY[0x1E695F050] + 16);
    v27 = *(MEMORY[0x1E695F050] + 24);
    if (!v14)
    {
      v20 = 0;
      v16 = 0;
      v99 = *MEMORY[0x1E695F050];
      rect = *(MEMORY[0x1E695F050] + 8);
      v55 = *(MEMORY[0x1E695F050] + 16);
      v54 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_27;
    }

    v26 = *(MEMORY[0x1E695F050] + 8);
    v16 = 0;
    v20 = 0;
    v96 = 0;
    v21 = 0;
  }

  v31 = v20;
  [v14 frame];
  v33 = v32;
  [v14 frame];
  v35 = v33 + v34 - self->_leftSideWidestRow;
  v36 = +[UIKeyboardPreferencesController sharedPreferencesController];
  [v36 preferencesActions];
  v38 = v37 = v14;
  [v38 rivenSizeFactor:3.0];
  v40 = v35 + v39;

  if (fabs(v40) <= 0.00000011920929)
  {
    v20 = v31;
LABEL_22:
    v99 = v25;
    v30 = v26;
    rect = v26;
    v55 = v28;
    v54 = v27;
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  [v37 frame];
  v42 = v41;
  v44 = v43 + 0.0;
  v46 = v45 - v40;
  v48 = v47 + 0.0;
  subtrees5 = [v104 subtrees];
  v50 = [UIKBShape alloc];
  v51 = v44;
  v52 = v42;
  v99 = v44;
  v53 = v44;
  v54 = v42;
  rect = v48;
  v55 = v46;
  v56 = [(UIKBShape *)v50 initWithGeometry:0 frame:v51 paddedFrame:v48, v46, v52, v53, v48, v46, v54];
  [subtrees5 replaceObjectAtIndex:v98 withObject:v56];

  v20 = v31;
  v30 = v26;
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_23:
  v57 = v30;
  v93 = v28;
  v58 = v27;
  v59 = v25;
  [(UIKBTree *)self->_sourceKeyplane frame];
  v61 = v60;
  rightSideWidestRow = self->_rightSideWidestRow;
  [v20 frame];
  v64 = rightSideWidestRow - (v61 - v63);
  v65 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v65 preferencesActions];
  [preferencesActions rivenSizeFactor:3.0];
  v68 = v67;

  if (vabdd_f64(v64, v68) <= 0.00000011920929)
  {
    v25 = v59;
    v27 = v58;
    v28 = v94;
    v30 = v57;
  }

  else
  {
    v69 = v64 - v68;
    [v20 frame];
    v27 = v70;
    v25 = v71 - v69;
    v28 = v69 + v72;
    v30 = v73 + 0.0;
    subtrees6 = [v105 subtrees];
    v75 = [[UIKBShape alloc] initWithGeometry:0 frame:v25 paddedFrame:v30, v28, v27, v25, v30, v28, v27];
    [subtrees6 replaceObjectAtIndex:v96 withObject:v75];
  }

LABEL_27:
  sourceKeyplane = self->_sourceKeyplane;
  if (lastObject2)
  {
    v77 = lastObject2;
  }

  else
  {
    v77 = v16;
  }

  name = [v77 name];
  v79 = [(UIKBTree *)sourceKeyplane keysByKeyName:name];

  v80 = v103;
  if ([v79 count])
  {
    lastObject4 = [v79 lastObject];
    [(UIKBSplitKeyplaneGenerator *)self splitSpaceKey:lastObject4 leftSpace:lastObject2 left:v99 right:rect, v55, v54, v25, v30, v28, v27];
    if (lastObject2)
    {
      v95 = v20;
      v97 = v4;
      name2 = [lastObject2 name];
      controlKeys = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v84 = [controlKeys objectForKeyedSubscript:@"MoreIntlNames"];
      [v84 setObject:name2 forKeyedSubscript:@"Space"];

      shape = [lastObject2 shape];
      v86 = [shape copy];

      v108.origin.x = v99;
      v108.origin.y = rect;
      v108.size.width = v55;
      v108.size.height = v54;
      if (!CGRectIsNull(v108))
      {
        v109.origin.x = v25;
        v109.origin.y = v30;
        v109.size.width = v28;
        v109.size.height = v27;
        if (!CGRectIsNull(v109))
        {
          [v86 scaleWidth:0.5];
        }
      }

      controlKeys2 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v88 = [controlKeys2 objectForKeyedSubscript:@"MoreIntlStarts"];
      [v88 setObject:v86 forKeyedSubscript:@"Space"];

      subtrees7 = [v104 subtrees];
      v90 = [subtrees7 objectAtIndexedSubscript:v98];
      controlKeys3 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v92 = [controlKeys3 objectForKeyedSubscript:@"MoreIntlEnds"];
      [v92 setObject:v90 forKeyedSubscript:@"Space"];

      v20 = v95;
      v4 = v97;
      v80 = v103;
    }
  }

  v5 = v104;
  v9 = v100;
  v7 = v101;
LABEL_38:
}

- (void)splitRow:(id)row
{
  rect_16 = row;
  hints = [rect_16 hints];
  if (hints)
  {
    selfCopy = self;
    v6 = hints;
    v7 = [hints valueForKey:@"LeftMargin"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v6 valueForKey:@"RightMargin"];
    [v10 floatValue];
    v12 = v11;

    v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v13 preferencesActions];
    [preferencesActions rivenSizeFactor:v9];
    rect = v15;

    v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v16 preferencesActions];
    [preferencesActions2 rivenSizeFactor:v12];
    v128 = v18;

    v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v19 preferencesActions];
    [preferencesActions3 rivenSizeFactor:3.0];
    v22 = v21;

    v23 = MEMORY[0x1E695F058];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v122 = [v6 valueForKey:@"WidthFactors"];
    v25 = [v6 valueForKey:@"LeftCount"];
    intValue = [v25 intValue];

    v120 = v6;
    v27 = [v6 valueForKey:@"RightCount"];
    LODWORD(v6) = [v27 intValue];

    v119 = v6;
    keys = [rect_16 keys];
    v29 = [keys count];

    v125 = v6 + intValue;
    if (v29 < v6 + intValue)
    {
      v30 = [rect_16 keyAtIndex:(intValue - 1)];
      v31 = [v30 copy];
      v32 = MEMORY[0x1E695DF90];
      cache = [v30 cache];
      v34 = [v32 dictionaryWithDictionary:cache];

      v35 = [MEMORY[0x1E696AD98] numberWithInt:3];
      [v34 setObject:v35 forKey:@"KBsplitMode"];

      [v31 setCache:v34];
      [v31 setSplitMode:3];
      keys2 = [rect_16 keys];
      [keys2 insertObject:v31 atIndex:intValue];
    }

    v37 = *v23;
    y = v23[1];
    v39 = 0x1E70E9000uLL;
    v40 = v23[2];
    height = v23[3];
    v42 = (intValue - 1);
    v43 = selfCopy;
    v127 = v22;
    v121 = intValue;
    v123 = height;
    if (intValue < 1)
    {
      v46 = 0;
      width = v23[2];
      v44 = v23[1];
      x = *v23;
    }

    else
    {
      v44 = v23[1];
      v45 = 0;
      v46 = 0;
      v47 = selfCopy;
      do
      {
        v48 = [rect_16 keyAtIndex:v45];
        v49 = [v48 interactionType] == 15;
        v50 = [v48 interactionType] == 15;
        v51 = v42 == v45 && v49;
        v46 |= v51;
        v52 = v42;
        v53 = v42 != v45 && v50;
        v54 = [v122 objectAtIndex:v45];
        [v54 floatValue];
        v56 = v55;
        v57 = v55;

        [rect_16 defaultKeySize];
        v59 = v58 * v57;
        [rect_16 defaultKeySize];
        v61 = v60;
        [rect_16 rowOffset];
        v132.origin.y = v62;
        *&v132.origin.x = rect;
        v132.size.width = v59;
        v132.size.height = v61;
        v133 = CGRectIntegral(v132);
        x = v133.origin.x;
        y = v133.origin.y;
        width = v133.size.width;
        height = v133.size.height;
        height = [[UIKBShape alloc] initWithGeometry:0 frame:x paddedFrame:y, width, height, x, y, width, height];
        cache2 = [v48 cache];
        v67 = cache2;
        if (cache2)
        {
          v68 = cache2;
        }

        else
        {
          v68 = dictionary;
        }

        v69 = v56 == 1.0;
        v22 = v127;
        v70 = v69;
        LOBYTE(v114) = v70;
        v71 = v53;
        v42 = v52;
        [(UIKBSplitKeyplaneGenerator *)v47 addKey:v48 withShape:height forRow:rect_16 attribs:v68 left:1 force:v71 isDefaultWidth:v114];

        *(&v72 + 1) = *(&rect + 1);
        *&v72 = *&rect + v127 + width;
        rect = v72;

        ++v45;
      }

      while (intValue != v45);
      v39 = 0x1E70E9000;
      v43 = v47;
    }

    if (v119 >= 1)
    {
      v117 = height;
      v118 = v42;
      v73 = v125;
      v124 = intValue;
      v126 = v43;
      v74 = 1 - v119;
      v75 = (v119 + intValue - 1);
      v76 = v39;
      do
      {
        --v73;
        v77 = [rect_16 keyAtIndex:v75];
        v78 = [v77 interactionType] == 15;
        v79 = [v77 interactionType] == 15;
        if (v74)
        {
          v80 = 0;
        }

        else
        {
          v80 = v78;
        }

        v46 |= v80;
        if (v74)
        {
          v81 = v79;
        }

        else
        {
          v81 = 0;
        }

        v82 = [v122 objectAtIndex:v73];
        [v82 floatValue];
        v84 = v83;
        v85 = v83;

        [rect_16 defaultKeySize];
        v87 = v86 * v85;
        [rect_16 defaultKeySize];
        v89 = v88;
        [rect_16 rowWidth];
        v91 = v90 - *&v128 - v87;
        [rect_16 rowOffset];
        v134.origin.y = v92;
        v134.origin.x = v91;
        v134.size.width = v87;
        v134.size.height = v89;
        v135 = CGRectIntegral(v134);
        v93 = v135.origin.x;
        v44 = v135.origin.y;
        v40 = v135.size.width;
        v94 = v135.size.height;
        v95 = [objc_alloc(*(v76 + 3712)) initWithGeometry:0 frame:v93 paddedFrame:{v44, v40, v94, v93, v44, v40, v94}];
        cache3 = [v77 cache];
        v97 = cache3;
        if (cache3)
        {
          v98 = cache3;
        }

        else
        {
          v98 = dictionary;
        }

        v69 = v84 == 1.0;
        v22 = v127;
        v99 = v69;
        LOBYTE(v114) = v99;
        [(UIKBSplitKeyplaneGenerator *)v126 addKey:v77 withShape:v95 forRow:rect_16 attribs:v98 left:0 force:v81 isDefaultWidth:v114];

        *(&v100 + 1) = *(&v128 + 1);
        *&v100 = *&v128 + v127 + v40;
        v128 = v100;

        ++v74;
        v75 = (v75 - 1);
      }

      while (v73 > v124);
      v123 = v94;
      v43 = v126;
      intValue = v121;
      v39 = v76;
      v42 = v118;
      v37 = v93;
      height = v117;
    }

    v101 = v122;
    *&v102.f64[0] = rect;
    if (v46)
    {
      [(UIKBSplitKeyplaneGenerator *)v43 commitUncommittedSlices];
      [(UIKBSplitKeyplaneGenerator *)v43 alignSpaceKeyEdges];
    }

    else
    {
      *&v102.f64[1] = v128;
      *&v43->_leftSideWidestRow = vbslq_s8(vcgtq_f64(v102, *&v43->_leftSideWidestRow), v102, *&v43->_leftSideWidestRow);
      [(UIKBSplitKeyplaneGenerator *)v43 commitUncommittedSlices];
    }

    lastObject = [(NSMutableArray *)v43->_rows lastObject];

    if (lastObject != rect_16)
    {
      v104 = MEMORY[0x1E695DF90];
      v105 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v104 dictionaryWithObjectsAndKeys:{v105, @"KBghost", 0}];
      v107 = v106 = intValue;

      v108 = [rect_16 keyAtIndex:v106];
      v109 = [rect_16 keyAtIndex:v42];
      v110 = [objc_alloc(*(v39 + 3712)) initWithGeometry:0 frame:v22 + width + x paddedFrame:{y, width, height, v22 + width + x, y, width, height}];
      v111 = [v108 copy];
      LOBYTE(v115) = 1;
      [(UIKBSplitKeyplaneGenerator *)v43 addKey:v111 withShape:v110 forRow:rect_16 attribs:v107 left:1 force:0 isDefaultWidth:v115];

      v112 = [objc_alloc(*(v39 + 3712)) initWithGeometry:0 frame:v37 - (v127 + v40) paddedFrame:{v44, v40, v123, v37 - (v127 + v40), v44, v40, v123}];
      v113 = [v109 copy];
      LOBYTE(v116) = 1;
      v101 = v122;
      [(UIKBSplitKeyplaneGenerator *)v43 addKey:v113 withShape:v112 forRow:rect_16 attribs:v107 left:0 force:0 isDefaultWidth:v116];
    }

    hints = v120;
  }
}

- (id)hintsForRow:(id)row
{
  v45 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  keys = [rowCopy keys];
  v5 = [keys objectAtIndex:0];

  v39 = v5;
  shape = [v5 shape];
  originalShape = [shape originalShape];

  if (originalShape)
  {
    originalShape2 = [shape originalShape];

    shape = originalShape2;
  }

  v9 = MEMORY[0x1E696AEC0];
  [shape frame];
  v11 = [v9 stringWithFormat:@"%d-", v10];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  keys2 = [rowCopy keys];
  v13 = [keys2 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(keys2);
        }

        shape2 = [*(*(&v40 + 1) + 8 * v16) shape];
        originalShape3 = [shape2 originalShape];

        if (originalShape3)
        {
          originalShape4 = [shape2 originalShape];

          shape2 = originalShape4;
        }

        [shape2 frame];
        v11 = [v17 stringByAppendingFormat:@"%d:", v21];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [keys2 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v22 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];

  v23 = [(NSDictionary *)self->_splitLayoutHints valueForKey:v22];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [(NSDictionary *)self->_splitLayoutHints valueForKey:v23];
  }

  else
  {
    if (v23)
    {
      goto LABEL_20;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    keys3 = [rowCopy keys];
    v26 = [keys3 count] >> 1;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v26];
    v27 = MEMORY[0x1E696AEC0];
    keys4 = [rowCopy keys];
    v29 = [v27 stringWithFormat:@"%d", objc_msgSend(keys4, "count") - v26];

    [dictionary setObject:v23 forKeyedSubscript:@"LeftCount"];
    v38 = v29;
    [dictionary setObject:v29 forKeyedSubscript:@"RightCount"];
    [dictionary setObject:@"10" forKeyedSubscript:@"LeftMargin"];
    [dictionary setObject:@"10" forKeyedSubscript:@"RightMargin"];
    array = [MEMORY[0x1E695DF70] array];
    keys5 = [rowCopy keys];
    v32 = [keys5 count];

    if (v32)
    {
      v33 = 0;
      do
      {
        [array addObject:@"1"];
        ++v33;
        keys6 = [rowCopy keys];
        v35 = [keys6 count];
      }

      while (v35 > v33);
    }

    [dictionary setObject:array forKeyedSubscript:@"WidthFactors"];
  }

  v23 = dictionary;
LABEL_20:

  return v23;
}

- (void)organizeKeyplaneIntoRows
{
  v28 = *MEMORY[0x1E69E9840];
  rows = self->_rows;
  if (rows)
  {
    [(NSMutableArray *)rows removeAllObjects];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v5 = self->_rows;
    self->_rows = v4;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  keysOrderedByPosition = [(UIKBSplitKeyplaneGenerator *)self keysOrderedByPosition];
  v7 = [keysOrderedByPosition countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {

    v10 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v24;
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = 2147483650.0;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(keysOrderedByPosition);
      }

      v18 = *(*(&v23 + 1) + 8 * i);
      [v18 frame];
      y = v29.origin.y;
      v30.origin.x = v12;
      v30.origin.y = v13;
      v30.size.width = v14;
      v30.size.height = v15;
      if (!CGRectEqualToRect(v29, v30))
      {
        if (v10)
        {
          if (vabdd_f64(v16, y) < 0.00000011920929)
          {
            [(UIKBSplitRow *)v10 addKey:v18];
            continue;
          }

          v20 = [(UIKBSplitKeyplaneGenerator *)self hintsForRow:v10];
          [(UIKBSplitRow *)v10 setHints:v20];

          [(NSMutableArray *)self->_rows addObject:v10];
          ++v9;
        }

        v21 = objc_alloc_init(UIKBSplitRow);

        [(UIKBSplitRow *)v21 setRowIndex:v9];
        [(UIKBSplitRow *)v21 addKey:v18];
        v16 = y;
        v10 = v21;
      }
    }

    v8 = [keysOrderedByPosition countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);

  if (v10 && ([(NSMutableArray *)self->_rows containsObject:v10]& 1) == 0)
  {
    v22 = [(UIKBSplitKeyplaneGenerator *)self hintsForRow:v10];
    [(UIKBSplitRow *)v10 setHints:v22];

    [(NSMutableArray *)self->_rows addObject:v10];
  }

LABEL_21:
}

- (void)initializeGeneratorForKeyplane:(id)keyplane name:(id)name
{
  nameCopy = name;
  keyplaneCopy = keyplane;
  v8 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v8 textInputTraits];
  self->_keyboardType = [textInputTraits keyboardType];

  [keyplaneCopy frame];
  v11 = v10;
  v13 = v12;

  self->_keyboardSize.width = v11;
  self->_keyboardSize.height = v13;
  v14 = initializeGeneratorForKeyplane_name__hints;
  if (!initializeGeneratorForKeyplane_name__hints)
  {
    v15 = +[UIRivenFactory _splitKeyboardLayoutHints];
    v16 = initializeGeneratorForKeyplane_name__hints;
    initializeGeneratorForKeyplane_name__hints = v15;

    v14 = initializeGeneratorForKeyplane_name__hints;
  }

  objc_storeStrong(&self->_splitLayoutHints, v14);
  self->_leftSideWidestRow = 0.0;
  self->_rightSideWidestRow = 0.0;
  if (self->_keyboardType == 1)
  {
    self->_keyboardType = 0;
  }

  [UIKeyboardImpl defaultSizeForInterfaceOrientation:1];
  v18 = v17;
  [(UIKBTree *)self->_sourceKeyboard frame];
  if (v19 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = 4;
  }

  v23 = [UIKeyboardSliceStore sliceSetIDForKeyplaneName:nameCopy type:self->_keyboardType orientation:v20];

  v21 = [[UIKeyboardSliceSet alloc] initWithSliceID:v23];
  sliceSet = self->_sliceSet;
  self->_sliceSet = v21;
}

- (id)finalizeSplitKeyplane
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  [preferencesActions rivenSizeFactor:7.0];
  v6 = v5;

  rightSideWidestRow = self->_rightSideWidestRow;
  v8 = v6 + self->_leftSideWidestRow;
  height = self->_keyboardSize.height;
  v10 = self->_keyboardSize.width - rightSideWidestRow - v6;
  v11 = v6 + rightSideWidestRow;
  v60 = [UIKBTree treeOfType:2];
  v12 = MEMORY[0x1E696AEC0];
  name = [(UIKBTree *)self->_sourceKeyplane name];
  v14 = [v12 stringWithFormat:@"%@-split", name];
  [v60 setName:v14];

  v58 = [UIKBTree treeOfType:3];
  [v58 setName:@"split-left"];
  v15 = [UIKBShape alloc];
  height = [UIKBGeometry geometryWithRect:0.0, 0.0, v8, height];
  height2 = [(UIKBShape *)v15 initWithGeometry:height frame:0.0 paddedFrame:0.0, v8, height, 0.0, 0.0, v8, height];
  [v58 setShape:height2];

  v57 = [UIKBTree treeOfType:3];
  [v57 setName:@"split-right"];
  v18 = [UIKBShape alloc];
  height3 = [UIKBGeometry geometryWithRect:v10, 0.0, v11, height];
  height4 = [(UIKBShape *)v18 initWithGeometry:height3 frame:v10 paddedFrame:0.0, v11, height, v10, 0.0, v11, height];
  [v57 setShape:height4];

  v21 = [UIKBTree treeOfType:4];
  v22 = [UIKBTree treeOfType:5];
  v23 = [UIKBTree treeOfType:6];
  v24 = [UIKBTree treeOfType:4];
  v25 = [UIKBTree treeOfType:5];
  v26 = [UIKBTree treeOfType:6];
  rows = self->_rows;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __51__UIKBSplitKeyplaneGenerator_finalizeSplitKeyplane__block_invoke;
  v62[3] = &unk_1E7118DC8;
  v63 = v21;
  v64 = v22;
  v65 = v23;
  v66 = v24;
  v67 = v25;
  v68 = v26;
  v56 = v60;
  v69 = v56;
  v61 = v26;
  v28 = v25;
  v29 = v24;
  v59 = v23;
  v30 = v22;
  v31 = v21;
  [(NSMutableArray *)rows enumerateObjectsUsingBlock:v62];
  subtrees = [v58 subtrees];
  [subtrees addObject:v31];

  subtrees2 = [v58 subtrees];
  [subtrees2 addObject:v30];

  subtrees3 = [v58 subtrees];
  [subtrees3 addObject:v59];

  subtrees4 = [v57 subtrees];
  [subtrees4 addObject:v29];

  subtrees5 = [v57 subtrees];
  [subtrees5 addObject:v28];

  subtrees6 = [v57 subtrees];
  [subtrees6 addObject:v61];

  v38 = [MEMORY[0x1E695DF70] arrayWithObjects:{v58, v57, 0}];
  [v56 setSubtrees:v38];

  properties = [(UIKBTree *)self->_sourceKeyplane properties];
  [v56 setProperties:properties];

  subtrees7 = [v56 subtrees];
  v41 = [(UIKBTree *)self->_sourceKeyplane subtreeWithType:11];
  [subtrees7 addObject:v41];

  subtrees8 = [(UIKBTree *)self->_sourceKeyplane subtrees];
  v43 = [subtrees8 objectAtIndex:0];
  [v43 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  if (+[UIDevice _hasHomeButton])
  {
    v52 = v51;
  }

  else
  {
    v52 = v51 + 20.0;
  }

  [(UIKeyboardSliceSet *)self->_sliceSet setStartRect:v45, v47, v49, v52];
  [(UIKeyboardSliceSet *)self->_sliceSet setEndRect:0.0, 0.0, self->_keyboardSize.width, self->_keyboardSize.height];
  [(UIKeyboardSliceSet *)self->_sliceSet setLeftWidth:v8];
  [(UIKeyboardSliceSet *)self->_sliceSet setRightWidth:v11];
  [UIKeyboardSliceStore archiveSet:self->_sliceSet];
  v53 = v69;
  v54 = v56;

  return v56;
}

void __51__UIKBSplitKeyplaneGenerator_finalizeSplitKeyplane__block_invoke(id *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 listOfType:0 left:1];
  v5 = [a1[4] subtrees];
  [v5 addObject:v4];

  v6 = [a1[5] subtrees];
  v7 = [v3 listOfType:1 left:1];
  [v6 addObject:v7];

  v8 = [a1[6] subtrees];
  v9 = [v3 listOfType:2 left:1];
  [v8 addObject:v9];

  v10 = [v3 listOfType:0 left:0];
  v11 = [a1[7] subtrees];
  [v11 addObject:v10];

  v12 = [a1[8] subtrees];
  v13 = [v3 listOfType:1 left:0];
  [v12 addObject:v13];

  v14 = [a1[9] subtrees];
  v15 = [v3 listOfType:2 left:0];
  [v14 addObject:v15];

  v16 = [v4 subtrees];
  v17 = [v10 subtrees];
  v18 = [v16 arrayByAddingObjectsFromArray:v17];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v25 + 1) + 8 * i);
        if ([v24 shouldCacheKey])
        {
          [a1[10] cacheKey:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }
}

- (id)generateRivenKeyplaneFromKeyplane:(id)keyplane forKeyboard:(id)keyboard
{
  v60 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  keyboardCopy = keyboard;
  if (keyplaneCopy)
  {
    objc_storeStrong(&self->_sourceKeyplane, keyplane);
    objc_storeStrong(&self->_sourceKeyboard, keyboard);
    name = [keyplaneCopy name];
    v52 = keyboardCopy;
    if ([keyplaneCopy looksLikeShiftAlternate] && objc_msgSend(keyplaneCopy, "isShiftKeyplane"))
    {
      shiftAlternateKeyplaneName = [keyplaneCopy shiftAlternateKeyplaneName];
      v11 = [keyboardCopy subtreeWithName:shiftAlternateKeyplaneName];
      name2 = [v11 name];

      name = name2;
    }

    [(UIKBSplitKeyplaneGenerator *)self initializeGeneratorForKeyplane:keyplaneCopy name:name];
    [(UIKBSplitKeyplaneGenerator *)self organizeKeyplaneIntoRows];
    v13 = [(NSMutableArray *)self->_rows objectAtIndex:0];
    hints = [v13 hints];
    v15 = [hints valueForKey:@"RowPadding"];

    if (v15)
    {
      [v15 floatValue];
      v17 = v16;
    }

    else
    {
      v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v19 preferencesActions];
      [preferencesActions rivenSizeFactor:5.0];
      v17 = v21;
    }

    v53 = keyplaneCopy;
    if ([(NSMutableArray *)self->_rows count]<= 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = v17 + 1.0;
    }

    v23 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v23 preferencesActions];
    [preferencesActions2 rivenSizeFactor:9.0];
    v26 = v25;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = self->_rows;
    v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v50 = v15;
    v51 = name;
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v55 + 1) + 8 * i);
          hints2 = [v31 hints];
          v33 = [hints2 valueForKey:@"KeySize"];

          if (v33)
          {
            v34 = CGSizeFromString(v33);
            width = v34.width;
            height = v34.height;
          }

          else
          {
            height = 46.0;
            width = 40.0;
          }

          v37 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions3 = [v37 preferencesActions];
          [preferencesActions3 rivenSizeFactor:width];
          v40 = v39;

          v41 = +[UIKeyboardPreferencesController sharedPreferencesController];
          preferencesActions4 = [v41 preferencesActions];
          [preferencesActions4 rivenSizeFactor:height];
          v44 = v43;

          [v31 setRowOffset:v26];
          [v31 setRowWidth:self->_keyboardSize.width];
          [v31 setDefaultKeySize:{v40, v44}];
          [(UIKBSplitKeyplaneGenerator *)self splitRow:v31];
          [v31 defaultKeySize];
          v26 = v26 + v22 + v45;
        }

        v28 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v28);
    }

    v46 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions5 = [v46 preferencesActions];
    [preferencesActions5 rivenSizeFactor:3.0];
    self->_keyboardSize.height = v26 + v48;

    finalizeSplitKeyplane = [(UIKBSplitKeyplaneGenerator *)self finalizeSplitKeyplane];

    keyboardCopy = v52;
    keyplaneCopy = v53;
  }

  else
  {
    finalizeSplitKeyplane = 0;
  }

  return finalizeSplitKeyplane;
}

@end