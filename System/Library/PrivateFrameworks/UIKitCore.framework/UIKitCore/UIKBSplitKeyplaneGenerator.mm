@interface UIKBSplitKeyplaneGenerator
- (UIKBSplitKeyplaneGenerator)init;
- (id)finalizeSplitKeyplane;
- (id)generateRivenKeyplaneFromKeyplane:(id)a3 forKeyboard:(id)a4;
- (id)hintsForRow:(id)a3;
- (id)keysOrderedByPosition;
- (void)addKey:(id)a3 withShape:(id)a4 forRow:(id)a5 attribs:(id)a6 left:(BOOL)a7 force:(BOOL)a8 isDefaultWidth:(BOOL)a9;
- (void)addSliceStart:(CGRect)a3 end:(CGRect)a4 startToken:(id)a5 endToken:(id)a6 left:(BOOL)a7 normalization:(int)a8 isDefaultWidth:(BOOL)a9 row:(int)a10;
- (void)alignSpaceKeyEdges;
- (void)commitUncommittedSlices;
- (void)initializeGeneratorForKeyplane:(id)a3 name:(id)a4;
- (void)organizeKeyplaneIntoRows;
- (void)splitRow:(id)a3;
- (void)splitSpaceKey:(id)a3 leftSpace:(id)a4 left:(CGRect)a5 right:(CGRect)a6;
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
    v6 = [v5 preferencesActions];
    [v6 rivenSizeFactor:1.0];
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
    v3 = [(UIKBTree *)self->_sourceKeyplane keysOrderedByPosition];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addSliceStart:(CGRect)a3 end:(CGRect)a4 startToken:(id)a5 endToken:(id)a6 left:(BOOL)a7 normalization:(int)a8 isDefaultWidth:(BOOL)a9 row:(int)a10
{
  v10 = *&a10;
  v11 = *&a8;
  v12 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3.size.height;
  v19 = a3.size.width;
  v20 = a3.origin.y;
  v21 = a3.origin.x;
  v53 = a5;
  v23 = a6;
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

  if (v12)
  {
    v30 = 104;
  }

  else
  {
    v30 = 112;
  }

  if (v12)
  {
    v31 = &self->_leftSlice;
  }

  else
  {
    v31 = &self->_rightSlice;
  }

  v32 = *v31;
  v33 = [(UIKeyboardTransitionSlice *)v32 hasGeometry];
  if (v53)
  {
    v34 = v23 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (!v34 && !v33)
  {
    [(UIKeyboardTransitionSlice *)v32 setStartRect:v21, v20, v19, v18];
    [(UIKeyboardTransitionSlice *)v32 setEndRect:x, y, width, height];
    v33 = [(UIKeyboardTransitionSlice *)v32 hasGeometry];
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
  v40 = width;
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

  if (v33)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v35)
  {
    v45 = [UIKeyboardTransitionSlice sliceWithStart:v21 end:v52, v36, v37, v38, v39, v40, v41];
    [v53 setRowHint:v10];
    [v23 setRowHint:v10];
    [v45 setStartToken:v53];
    [v45 setEndToken:v23];
    [v45 setNormalization:v11];
    [v45 setDelayCrossfade:1];
    [(UIKeyboardSliceSet *)self->_sliceSet addSlice:v45];
    if (v11 != 2)
    {
      v46 = [v23 name];

      if (v46)
      {
        v47 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
        v48 = [v23 name];
        [v47 setObject:v45 forKey:v48];
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
    [(UIKeyboardTransitionSlice *)v32 addStartRect:v21 end:v52, v36, v37, v38, v39, v40, v41, *&v52];
  }

LABEL_30:
}

- (void)splitSpaceKey:(id)a3 leftSpace:(id)a4 left:(CGRect)a5 right:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.size.height;
  v11 = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v56 = a3;
  v16 = a4;
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
  [v56 paddedFrame];
  v20 = v19;
  v53 = v21;
  v23 = v22;
  v25 = v24;
  v26 = +[UIKeyboardImpl activeInstance];
  v27 = [v26 _inheritedRenderConfig];

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

    v34 = [UIKBCacheToken tokenTemplateForKey:v56 style:102 renderConfig:v27 size:v23, v25];
    v35 = [UIKBCacheToken tokenTemplateForKey:v56 style:106 renderConfig:v27 size:v11, v10];
    v36 = [(NSMutableArray *)self->_rows count];
    v48 = !IsNull;
    v37 = self;
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
    v30 = [v16 name];
    v31 = [UIKBCacheToken tokenTemplateForKey:v56 name:v30 style:102 renderConfig:v27 size:v23, v25];

    v32 = [v16 name];
    v33 = [UIKBCacheToken tokenTemplateForKey:v56 name:v32 style:106 renderConfig:v27 size:v11, v10];

    [(UIKBSplitKeyplaneGenerator *)self addSliceStart:v31 end:v33 startToken:1 endToken:1 left:0 normalization:[(NSMutableArray *)self->_rows count] isDefaultWidth:v20 row:v53, v29, v25, v13, v51, v11, v10];
    v34 = [UIKBCacheToken tokenTemplateForKey:v56 style:102 renderConfig:v27 size:v23, v25];

    v35 = [UIKBCacheToken tokenTemplateForKey:v56 style:106 renderConfig:v27 size:v54, v55];

    v36 = [(NSMutableArray *)self->_rows count];
    v37 = self;
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

  [(UIKBSplitKeyplaneGenerator *)v37 addSliceStart:v43 end:v47 startToken:v48 endToken:v49 left:0 normalization:v36 isDefaultWidth:v38 row:v39, v40, v42, v44, v41, v45, v46];
}

- (void)commitUncommittedSlices
{
  if ([(UIKeyboardTransitionSlice *)self->_leftSlice hasGeometry])
  {
    v3 = [(UIKeyboardSliceSet *)self->_sliceSet slices];
    v4 = [v3 containsObject:self->_leftSlice];

    if ((v4 & 1) == 0)
    {
      [(UIKeyboardSliceSet *)self->_sliceSet addSlice:self->_leftSlice];
      leftSlice = self->_leftSlice;
      self->_leftSlice = 0;
    }
  }

  if ([(UIKeyboardTransitionSlice *)self->_rightSlice hasGeometry])
  {
    v6 = [(UIKeyboardSliceSet *)self->_sliceSet slices];
    v7 = [v6 containsObject:self->_rightSlice];

    if ((v7 & 1) == 0)
    {
      [(UIKeyboardSliceSet *)self->_sliceSet addSlice:self->_rightSlice];
      rightSlice = self->_rightSlice;
      self->_rightSlice = 0;
    }
  }
}

- (void)addKey:(id)a3 withShape:(id)a4 forRow:(id)a5 attribs:(id)a6 left:(BOOL)a7 force:(BOOL)a8 isDefaultWidth:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a9;
  v60 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = [v60 interactionType];
  v20 = [v18 valueForKey:@"KBghost"];
  v21 = [v20 BOOLValue];

  if (v9 || !((v19 == 15) | v21 & 1))
  {
    if ([v60 renderKeyInKeyplane:self->_sourceKeyplane])
    {
      v22 = 0;
      v23 = 0;
LABEL_11:
      [v60 paddedFrame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      [v16 paddedFrame];
      -[UIKBSplitKeyplaneGenerator addSliceStart:end:startToken:endToken:left:normalization:isDefaultWidth:row:](self, "addSliceStart:end:startToken:endToken:left:normalization:isDefaultWidth:row:", v23, v22, v10, 0, v15, [v17 rowIndex] + 1, v40, v42, v44, v46, v47, v48, v49, v50);

      goto LABEL_12;
    }

    v24 = +[UIKeyboardImpl activeInstance];
    v25 = [v24 _inheritedRenderConfig];

    [v60 paddedFrame];
    v23 = [UIKBCacheToken tokenTemplateForKey:v60 style:102 renderConfig:v25 size:v26, v27];
    [v16 paddedFrame];
    v22 = [UIKBCacheToken tokenTemplateForKey:v60 style:106 renderConfig:v25 size:v28, v29];
    v30 = [(NSMutableArray *)self->_rows lastObject];
    if (v30 == v17 && v10)
    {
      v31 = [v60 displayType];

      if (!v31)
      {
LABEL_10:

        v15 = a9;
        goto LABEL_11;
      }

      [v60 name];
      v32 = v59 = v25;
      v30 = [UIKBTree mergeStringForKeyName:v32];

      v33 = [v60 name];
      v57 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v34 = [v57 objectForKeyedSubscript:@"MoreIntlNames"];
      [v34 setObject:v33 forKeyedSubscript:v30];

      v35 = [v60 shape];
      v58 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v36 = [v58 objectForKeyedSubscript:@"MoreIntlStarts"];
      [v36 setObject:v35 forKeyedSubscript:v30];

      v37 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v38 = [v37 objectForKeyedSubscript:@"MoreIntlEnds"];
      [v38 setObject:v16 forKeyedSubscript:v30];

      v25 = v59;
    }

    goto LABEL_10;
  }

LABEL_12:
  v51 = [v17 listOfType:0 left:v10];
  v52 = [v17 listOfType:1 left:v10];
  v53 = [v17 listOfType:2 left:v10];
  if (v60)
  {
    v54 = [v51 subtrees];
    [v54 addObject:v60];
  }

  v55 = [v52 subtrees];
  [v55 addObject:v16];

  v56 = [v53 subtrees];
  [v56 addObject:v18];
}

- (void)alignSpaceKeyEdges
{
  v106 = [(NSMutableArray *)self->_rows lastObject];
  v3 = [v106 listOfType:0 left:1];
  v4 = [v106 listOfType:0 left:0];
  v5 = [v106 listOfType:1 left:1];
  v105 = [v106 listOfType:1 left:0];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:15];
  v7 = [v3 subtreesWithProperty:@"KBinteractionType" value:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:15];
  v9 = [v4 subtreesWithProperty:@"KBinteractionType" value:v8];

  if (![v7 count] && !objc_msgSend(v9, "count"))
  {
    goto LABEL_38;
  }

  v101 = v7;
  v10 = [v7 lastObject];
  v104 = v5;
  if (v10)
  {
    v11 = [v3 subtrees];
    v12 = [v11 indexOfObject:v10];

    v13 = [v5 subtrees];
    v98 = v12;
    v14 = [v13 objectAtIndex:v12];
  }

  else
  {
    v14 = 0;
    v98 = 0;
  }

  v15 = [v9 lastObject];
  v103 = v14;
  v100 = v9;
  if (v15)
  {
    v16 = v15;
    v17 = [v4 subtrees];
    v18 = [v17 indexOfObject:v16];

    v19 = [v105 subtrees];
    v96 = v18;
    v20 = [v19 objectAtIndex:v18];

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
        v29 = v10;
      }

      else
      {
        v29 = v16;
      }

      if (v23 > v24)
      {
        v16 = v10;
      }

      v21 = 1;
      v10 = v29;
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
  v49 = [v104 subtrees];
  v50 = [UIKBShape alloc];
  v51 = v44;
  v52 = v42;
  v99 = v44;
  v53 = v44;
  v54 = v42;
  rect = v48;
  v55 = v46;
  v56 = [(UIKBShape *)v50 initWithGeometry:0 frame:v51 paddedFrame:v48, v46, v52, v53, v48, v46, v54];
  [v49 replaceObjectAtIndex:v98 withObject:v56];

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
  v66 = [v65 preferencesActions];
  [v66 rivenSizeFactor:3.0];
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
    v74 = [v105 subtrees];
    v75 = [[UIKBShape alloc] initWithGeometry:0 frame:v25 paddedFrame:v30, v28, v27, v25, v30, v28, v27];
    [v74 replaceObjectAtIndex:v96 withObject:v75];
  }

LABEL_27:
  sourceKeyplane = self->_sourceKeyplane;
  if (v10)
  {
    v77 = v10;
  }

  else
  {
    v77 = v16;
  }

  v78 = [v77 name];
  v79 = [(UIKBTree *)sourceKeyplane keysByKeyName:v78];

  v80 = v103;
  if ([v79 count])
  {
    v81 = [v79 lastObject];
    [(UIKBSplitKeyplaneGenerator *)self splitSpaceKey:v81 leftSpace:v10 left:v99 right:rect, v55, v54, v25, v30, v28, v27];
    if (v10)
    {
      v95 = v20;
      v97 = v4;
      v82 = [v10 name];
      v83 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v84 = [v83 objectForKeyedSubscript:@"MoreIntlNames"];
      [v84 setObject:v82 forKeyedSubscript:@"Space"];

      v85 = [v10 shape];
      v86 = [v85 copy];

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

      v87 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v88 = [v87 objectForKeyedSubscript:@"MoreIntlStarts"];
      [v88 setObject:v86 forKeyedSubscript:@"Space"];

      v89 = [v104 subtrees];
      v90 = [v89 objectAtIndexedSubscript:v98];
      v91 = [(UIKeyboardSliceSet *)self->_sliceSet controlKeys];
      v92 = [v91 objectForKeyedSubscript:@"MoreIntlEnds"];
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

- (void)splitRow:(id)a3
{
  rect_16 = a3;
  v4 = [rect_16 hints];
  if (v4)
  {
    v5 = self;
    v6 = v4;
    v7 = [v4 valueForKey:@"LeftMargin"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v6 valueForKey:@"RightMargin"];
    [v10 floatValue];
    v12 = v11;

    v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v14 = [v13 preferencesActions];
    [v14 rivenSizeFactor:v9];
    rect = v15;

    v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v17 = [v16 preferencesActions];
    [v17 rivenSizeFactor:v12];
    v128 = v18;

    v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v20 = [v19 preferencesActions];
    [v20 rivenSizeFactor:3.0];
    v22 = v21;

    v23 = MEMORY[0x1E695F058];
    v24 = [MEMORY[0x1E695DF90] dictionary];
    v122 = [v6 valueForKey:@"WidthFactors"];
    v25 = [v6 valueForKey:@"LeftCount"];
    v26 = [v25 intValue];

    v120 = v6;
    v27 = [v6 valueForKey:@"RightCount"];
    LODWORD(v6) = [v27 intValue];

    v119 = v6;
    v28 = [rect_16 keys];
    v29 = [v28 count];

    v125 = v6 + v26;
    if (v29 < v6 + v26)
    {
      v30 = [rect_16 keyAtIndex:(v26 - 1)];
      v31 = [v30 copy];
      v32 = MEMORY[0x1E695DF90];
      v33 = [v30 cache];
      v34 = [v32 dictionaryWithDictionary:v33];

      v35 = [MEMORY[0x1E696AD98] numberWithInt:3];
      [v34 setObject:v35 forKey:@"KBsplitMode"];

      [v31 setCache:v34];
      [v31 setSplitMode:3];
      v36 = [rect_16 keys];
      [v36 insertObject:v31 atIndex:v26];
    }

    v37 = *v23;
    y = v23[1];
    v39 = 0x1E70E9000uLL;
    v40 = v23[2];
    height = v23[3];
    v42 = (v26 - 1);
    v43 = v5;
    v127 = v22;
    v121 = v26;
    v123 = height;
    if (v26 < 1)
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
      v47 = v5;
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
        v65 = [[UIKBShape alloc] initWithGeometry:0 frame:x paddedFrame:y, width, height, x, y, width, height];
        v66 = [v48 cache];
        v67 = v66;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = v24;
        }

        v69 = v56 == 1.0;
        v22 = v127;
        v70 = v69;
        LOBYTE(v114) = v70;
        v71 = v53;
        v42 = v52;
        [(UIKBSplitKeyplaneGenerator *)v47 addKey:v48 withShape:v65 forRow:rect_16 attribs:v68 left:1 force:v71 isDefaultWidth:v114];

        *(&v72 + 1) = *(&rect + 1);
        *&v72 = *&rect + v127 + width;
        rect = v72;

        ++v45;
      }

      while (v26 != v45);
      v39 = 0x1E70E9000;
      v43 = v47;
    }

    if (v119 >= 1)
    {
      v117 = height;
      v118 = v42;
      v73 = v125;
      v124 = v26;
      v126 = v43;
      v74 = 1 - v119;
      v75 = (v119 + v26 - 1);
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
        v96 = [v77 cache];
        v97 = v96;
        if (v96)
        {
          v98 = v96;
        }

        else
        {
          v98 = v24;
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
      v26 = v121;
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

    v103 = [(NSMutableArray *)v43->_rows lastObject];

    if (v103 != rect_16)
    {
      v104 = MEMORY[0x1E695DF90];
      v105 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v104 dictionaryWithObjectsAndKeys:{v105, @"KBghost", 0}];
      v107 = v106 = v26;

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

    v4 = v120;
  }
}

- (id)hintsForRow:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 keys];
  v5 = [v4 objectAtIndex:0];

  v39 = v5;
  v6 = [v5 shape];
  v7 = [v6 originalShape];

  if (v7)
  {
    v8 = [v6 originalShape];

    v6 = v8;
  }

  v9 = MEMORY[0x1E696AEC0];
  [v6 frame];
  v11 = [v9 stringWithFormat:@"%d-", v10];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [v3 keys];
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v40 + 1) + 8 * v16) shape];
        v19 = [v18 originalShape];

        if (v19)
        {
          v20 = [v18 originalShape];

          v18 = v20;
        }

        [v18 frame];
        v11 = [v17 stringByAppendingFormat:@"%d:", v21];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v22 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];

  v23 = [(NSDictionary *)self->_splitLayoutHints valueForKey:v22];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [(NSDictionary *)self->_splitLayoutHints valueForKey:v23];
  }

  else
  {
    if (v23)
    {
      goto LABEL_20;
    }

    v24 = [MEMORY[0x1E695DF90] dictionary];
    v25 = [v3 keys];
    v26 = [v25 count] >> 1;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v26];
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v3 keys];
    v29 = [v27 stringWithFormat:@"%d", objc_msgSend(v28, "count") - v26];

    [v24 setObject:v23 forKeyedSubscript:@"LeftCount"];
    v38 = v29;
    [v24 setObject:v29 forKeyedSubscript:@"RightCount"];
    [v24 setObject:@"10" forKeyedSubscript:@"LeftMargin"];
    [v24 setObject:@"10" forKeyedSubscript:@"RightMargin"];
    v30 = [MEMORY[0x1E695DF70] array];
    v31 = [v3 keys];
    v32 = [v31 count];

    if (v32)
    {
      v33 = 0;
      do
      {
        [v30 addObject:@"1"];
        ++v33;
        v34 = [v3 keys];
        v35 = [v34 count];
      }

      while (v35 > v33);
    }

    [v24 setObject:v30 forKeyedSubscript:@"WidthFactors"];
  }

  v23 = v24;
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
  v6 = [(UIKBSplitKeyplaneGenerator *)self keysOrderedByPosition];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(v6);
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

    v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)initializeGeneratorForKeyplane:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 textInputTraits];
  self->_keyboardType = [v9 keyboardType];

  [v7 frame];
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

  v23 = [UIKeyboardSliceStore sliceSetIDForKeyplaneName:v6 type:self->_keyboardType orientation:v20];

  v21 = [[UIKeyboardSliceSet alloc] initWithSliceID:v23];
  sliceSet = self->_sliceSet;
  self->_sliceSet = v21;
}

- (id)finalizeSplitKeyplane
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 rivenSizeFactor:7.0];
  v6 = v5;

  rightSideWidestRow = self->_rightSideWidestRow;
  v8 = v6 + self->_leftSideWidestRow;
  height = self->_keyboardSize.height;
  v10 = self->_keyboardSize.width - rightSideWidestRow - v6;
  v11 = v6 + rightSideWidestRow;
  v60 = [UIKBTree treeOfType:2];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(UIKBTree *)self->_sourceKeyplane name];
  v14 = [v12 stringWithFormat:@"%@-split", v13];
  [v60 setName:v14];

  v58 = [UIKBTree treeOfType:3];
  [v58 setName:@"split-left"];
  v15 = [UIKBShape alloc];
  v16 = [UIKBGeometry geometryWithRect:0.0, 0.0, v8, height];
  v17 = [(UIKBShape *)v15 initWithGeometry:v16 frame:0.0 paddedFrame:0.0, v8, height, 0.0, 0.0, v8, height];
  [v58 setShape:v17];

  v57 = [UIKBTree treeOfType:3];
  [v57 setName:@"split-right"];
  v18 = [UIKBShape alloc];
  v19 = [UIKBGeometry geometryWithRect:v10, 0.0, v11, height];
  v20 = [(UIKBShape *)v18 initWithGeometry:v19 frame:v10 paddedFrame:0.0, v11, height, v10, 0.0, v11, height];
  [v57 setShape:v20];

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
  v32 = [v58 subtrees];
  [v32 addObject:v31];

  v33 = [v58 subtrees];
  [v33 addObject:v30];

  v34 = [v58 subtrees];
  [v34 addObject:v59];

  v35 = [v57 subtrees];
  [v35 addObject:v29];

  v36 = [v57 subtrees];
  [v36 addObject:v28];

  v37 = [v57 subtrees];
  [v37 addObject:v61];

  v38 = [MEMORY[0x1E695DF70] arrayWithObjects:{v58, v57, 0}];
  [v56 setSubtrees:v38];

  v39 = [(UIKBTree *)self->_sourceKeyplane properties];
  [v56 setProperties:v39];

  v40 = [v56 subtrees];
  v41 = [(UIKBTree *)self->_sourceKeyplane subtreeWithType:11];
  [v40 addObject:v41];

  v42 = [(UIKBTree *)self->_sourceKeyplane subtrees];
  v43 = [v42 objectAtIndex:0];
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

- (id)generateRivenKeyplaneFromKeyplane:(id)a3 forKeyboard:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_sourceKeyplane, a3);
    objc_storeStrong(&self->_sourceKeyboard, a4);
    v9 = [v7 name];
    v52 = v8;
    if ([v7 looksLikeShiftAlternate] && objc_msgSend(v7, "isShiftKeyplane"))
    {
      v10 = [v7 shiftAlternateKeyplaneName];
      v11 = [v8 subtreeWithName:v10];
      v12 = [v11 name];

      v9 = v12;
    }

    [(UIKBSplitKeyplaneGenerator *)self initializeGeneratorForKeyplane:v7 name:v9];
    [(UIKBSplitKeyplaneGenerator *)self organizeKeyplaneIntoRows];
    v13 = [(NSMutableArray *)self->_rows objectAtIndex:0];
    v14 = [v13 hints];
    v15 = [v14 valueForKey:@"RowPadding"];

    if (v15)
    {
      [v15 floatValue];
      v17 = v16;
    }

    else
    {
      v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v20 = [v19 preferencesActions];
      [v20 rivenSizeFactor:5.0];
      v17 = v21;
    }

    v53 = v7;
    if ([(NSMutableArray *)self->_rows count]<= 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = v17 + 1.0;
    }

    v23 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v24 = [v23 preferencesActions];
    [v24 rivenSizeFactor:9.0];
    v26 = v25;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = self->_rows;
    v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v50 = v15;
    v51 = v9;
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
          v32 = [v31 hints];
          v33 = [v32 valueForKey:@"KeySize"];

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
          v38 = [v37 preferencesActions];
          [v38 rivenSizeFactor:width];
          v40 = v39;

          v41 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v42 = [v41 preferencesActions];
          [v42 rivenSizeFactor:height];
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
    v47 = [v46 preferencesActions];
    [v47 rivenSizeFactor:3.0];
    self->_keyboardSize.height = v26 + v48;

    v18 = [(UIKBSplitKeyplaneGenerator *)self finalizeSplitKeyplane];

    v8 = v52;
    v7 = v53;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end