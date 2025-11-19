@interface _UIVectorLabelLayer
+ (void)initialize;
- (BOOL)_isPathCompatible:(CGPath *)a3 with:(CGPath *)a4;
- (_UIVectorLabelLayer)init;
- (id)_findSimilarLayer:(id)a3 inLayers:(id)a4;
- (id)_layersForTextLayout:(id)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)_applyTextLayoutChangeFrom:(id)a3 to:(id)a4;
- (void)_cleanupUnusedLayers;
- (void)_transitionWithSetup:(id)a3 target:(id)a4;
- (void)didChangeValueForKey:(id)a3;
- (void)willChangeValueForKey:(id)a3;
@end

@implementation _UIVectorLabelLayer

+ (void)initialize
{
  v2 = NSStringFromSelector(sel_textLayout);
  v3 = _textLayoutKey;
  _textLayoutKey = v2;
}

- (_UIVectorLabelLayer)init
{
  v5.receiver = self;
  v5.super_class = _UIVectorLabelLayer;
  v2 = [(_UIVectorLabelLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIVectorLabelLayer *)v2 setMaxRenderedMoveDistance:5];
  }

  return v3;
}

- (void)willChangeValueForKey:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIVectorLabelLayer;
  v4 = a3;
  [(_UIVectorLabelLayer *)&v8 willChangeValueForKey:v4];
  v5 = [v4 isEqualToString:{_textLayoutKey, v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [(_UIVectorLabelLayer *)self textLayout];
    currentTextLayout = self->_currentTextLayout;
    self->_currentTextLayout = v6;
  }
}

- (void)didChangeValueForKey:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIVectorLabelLayer;
  v4 = a3;
  [(_UIVectorLabelLayer *)&v9 didChangeValueForKey:v4];
  v5 = [v4 isEqualToString:{_textLayoutKey, v9.receiver, v9.super_class}];

  if (v5)
  {
    currentTextLayout = self->_currentTextLayout;
    v7 = [(_UIVectorLabelLayer *)self textLayout];
    [(_UIVectorLabelLayer *)self _applyTextLayoutChangeFrom:currentTextLayout to:v7];

    v8 = self->_currentTextLayout;
    self->_currentTextLayout = 0;
  }
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v8 = [(_UIVectorLabelLayer *)self delegate];
    v9 = +[UIView _currentViewAnimationState];
    v10 = [v9 actionForLayer:v6 forKey:v7 forView:v8];

    if (v10 && +[UIView _isAnimationTracking])
    {
      v11 = +[UIView _currentViewAnimationState];
      [v11 _trackAnimation:v10 withAnimationKey:v7 forKeyPath:v7 inLayer:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_cleanupUnusedLayers
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(_UIVectorLabelLayer *)self sublayers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 _ui_layoutRun];
        if (v10)
        {
          v11 = v10;
          v12 = [(NSArray *)self->_currentLayers containsObject:v9];

          if (!v12)
          {
            [v9 removeFromSuperlayer];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_applyTextLayoutChangeFrom:(id)a3 to:(id)a4
{
  v141 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_UIVectorLabelLayer *)self _cleanupUnusedLayers];
  v101 = v7;
  v8 = [(_UIVectorLabelLayer *)self _layersForTextLayout:v7];
  [(NSArray *)self->_currentLayers makeObjectsPerformSelector:sel_removeAllAnimations];
  if ([v8 count])
  {
    if (![(NSArray *)self->_currentLayers count])
    {
      goto LABEL_48;
    }

    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [(NSArray *)self->_currentLayers objectAtIndexedSubscript:0];
    [v9 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = CFRetain([v9 path]);
    v20 = [v9 fillColor];
    if (-[_UIVectorLabelLayer _isPathCompatible:with:](self, "_isPathCompatible:with:", [v9 path], -[NSArray path](v10, "path")))
    {
      [v9 anchorPoint];
      [(NSArray *)v10 setAnchorPoint:?];
      [(NSArray *)v10 setFrame:v12, v14, v16, v18];
      [(NSArray *)v10 setPath:v19];
      [(NSArray *)v10 setFillColor:v20];
      [v8 replaceObjectAtIndex:0 withObject:v10];
    }

    else
    {
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke;
      v132[3] = &unk_1E712A088;
      v133 = v9;
      v134 = v10;
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_2;
      v124[3] = &unk_1E712A0B0;
      v126 = v12;
      v127 = v14;
      v128 = v16;
      v129 = v18;
      v130 = v19;
      v131 = v20;
      v125 = v134;
      [(_UIVectorLabelLayer *)self _transitionWithSetup:v132 target:v124];
    }

    CFRelease(v19);
    if ([(NSArray *)self->_currentLayers count]>= 2 && [(NSArray *)self->_currentLayers count]>= 2)
    {
      v98 = v9;
      v99 = v121;
      v49 = 1;
      do
      {
        v50 = [(NSArray *)self->_currentLayers objectAtIndexedSubscript:v49, v98, v99];
        v51 = [(_UIVectorLabelLayer *)self _findSimilarLayer:v50 inLayers:v8];
        v52 = v51;
        if (v51)
        {
          [v51 frame];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v121[0] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_3;
          v121[1] = &unk_1E712A0D8;
          v122 = v52;
          v123 = v50;
          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 3221225472;
          v114[2] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_4;
          v114[3] = &unk_1E712A100;
          v116 = v54;
          v117 = v56;
          v118 = v58;
          v119 = v60;
          v115 = v123;
          [(_UIVectorLabelLayer *)self _transitionWithSetup:v120 target:v114];
        }

        else
        {
          [v50 setOpacity:0.0];
          [v50 frame];
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;
          [v6 size];
          v70 = v69;
          v72 = v71;
          [v101 size];
          v75 = v73 / v70;
          if (v70 == 0.0)
          {
            v75 = 1.0;
          }

          v76 = v74 / v72;
          if (v72 == 0.0)
          {
            v76 = 1.0;
          }

          v77 = v74 - v72;
          if (v72 >= 0.01)
          {
            v78 = v72;
          }

          else
          {
            v78 = 0.01;
          }

          v79 = v64 + v77 * (v64 / v78);
          v80 = v73 - v70;
          if (v70 >= 0.01)
          {
            v81 = v70;
          }

          else
          {
            v81 = 0.01;
          }

          v82 = v62 + v80 * (v62 / v81);
          if (v75 < v76)
          {
            v76 = v75;
          }

          [v50 setFrame:{v82, v79, v66 * v76, v68 * v76}];
        }

        ++v49;
      }

      while (v49 < [(NSArray *)self->_currentLayers count]);
      v9 = v98;
    }
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v10 = self->_currentLayers;
    v21 = [(NSArray *)v10 countByEnumeratingWithState:&v135 objects:v140 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = v8;
      v24 = *v136;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v136 != v24)
          {
            objc_enumerationMutation(v10);
          }

          v26 = *(*(&v135 + 1) + 8 * i);
          [v26 setOpacity:0.0];
          [v26 frame];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          [v6 size];
          v36 = v35;
          v38 = v37;
          [v101 size];
          v41 = v39 / v36;
          if (v36 == 0.0)
          {
            v41 = 1.0;
          }

          v42 = v40 / v38;
          if (v38 == 0.0)
          {
            v42 = 1.0;
          }

          v43 = v40 - v38;
          if (v38 >= 0.01)
          {
            v44 = v38;
          }

          else
          {
            v44 = 0.01;
          }

          v45 = v30 + v43 * (v30 / v44);
          v46 = v39 - v36;
          if (v36 >= 0.01)
          {
            v47 = v36;
          }

          else
          {
            v47 = 0.01;
          }

          v48 = v28 + v46 * (v28 / v47);
          if (v41 < v42)
          {
            v42 = v41;
          }

          [v26 setFrame:{v48, v45, v32 * v42, v34 * v42}];
        }

        v22 = [(NSArray *)v10 countByEnumeratingWithState:&v135 objects:v140 count:16];
      }

      while (v22);
      v9 = v23;
      v8 = 0;
    }

    else
    {
      v9 = v8;
      v8 = 0;
    }
  }

LABEL_48:
  objc_storeStrong(&self->_currentLayers, v8);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v100 = v8;
  v83 = [v8 reverseObjectEnumerator];
  v84 = [v83 countByEnumeratingWithState:&v110 objects:v139 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v111;
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v111 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v110 + 1) + 8 * j);
        v89 = [v88 superlayer];

        if (!v6 || v89)
        {
          [v88 setDelegate:self];
          [(_UIVectorLabelLayer *)self insertSublayer:v88 atIndex:0];
        }

        else
        {
          [v88 frame];
          v91 = v90;
          v93 = v92;
          v95 = v94;
          v97 = v96;
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 3221225472;
          v103[2] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_5;
          v103[3] = &unk_1E712A128;
          v103[4] = v88;
          v106 = v90;
          v107 = v92;
          v108 = v94;
          v109 = v96;
          v104 = v101;
          v105 = v6;
          v102[0] = MEMORY[0x1E69E9820];
          v102[1] = 3221225472;
          v102[2] = __53___UIVectorLabelLayer__applyTextLayoutChangeFrom_to___block_invoke_6;
          v102[3] = &__block_descriptor_64_e17_v16__0__CALayer_8l;
          v102[4] = v91;
          v102[5] = v93;
          v102[6] = v95;
          v102[7] = v97;
          [(_UIVectorLabelLayer *)self _transitionWithSetup:v103 target:v102];
        }
      }

      v85 = [v83 countByEnumeratingWithState:&v110 objects:v139 count:16];
    }

    while (v85);
  }
}

- (void)_transitionWithSetup:(id)a3 target:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6979518] disableActions];
  v8 = 0;
  if (v9)
  {
    if ((v7 & 1) == 0)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
      v8 = v9[2]();
      [MEMORY[0x1E6979518] setDisableActions:0];
      if (v8)
      {
        [v8 setDelegate:self];
        [(_UIVectorLabelLayer *)self insertSublayer:v8 atIndex:0];
        if (v6)
        {
          v6[2](v6, v8);
        }
      }
    }
  }
}

- (BOOL)_isPathCompatible:(CGPath *)a3 with:(CGPath *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (CGPathEqualToPath(a3, a4))
    {
      return 1;
    }

    else
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46___UIVectorLabelLayer__isPathCompatible_with___block_invoke;
      block[3] = &unk_1E712A170;
      block[4] = &v14;
      CGPathApplyWithBlock(a3, block);
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46___UIVectorLabelLayer__isPathCompatible_with___block_invoke_2;
      v8[3] = &unk_1E712A170;
      v8[4] = &v9;
      CGPathApplyWithBlock(a4, v8);
      v4 = v15[3] == v10[3];
      _Block_object_dispose(&v9, 8);
      _Block_object_dispose(&v14, 8);
    }
  }

  return v4;
}

- (id)_findSimilarLayer:(id)a3 inLayers:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 _ui_layoutRun];
  v8 = v7;
  if (v7)
  {
    v50 = v5;
    [v7 stringRange];
    v10 = v9;
    [v8 usedRunRect];
    v12 = v11;
    v14 = v13;
    v15 = [v8 font];
    v53 = [v8 string];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v49 = v6;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v51 = v15;
      v52 = 0;
      v19 = v12 + v14 * 0.5;
      v20 = *v57;
      v21 = 1.79769313e308;
      v54 = v10;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v56 + 1) + 8 * i);
          v24 = [v23 _ui_layoutRun];
          [v24 stringRange];
          if (v25 == v10)
          {
            [v24 usedRunRect];
            v28 = v27 + v26 * 0.5;
            v29 = [v8 lineIndex];
            v30 = [v24 lineIndex];
            v31 = v29 - v30;
            if (v29 - v30 < 0)
            {
              v31 = v30 - v29;
            }

            v32 = v19 - v28;
            if (v19 - v28 < 0.0)
            {
              v32 = -(v19 - v28);
            }

            v33 = v31 >= 2 ? 1.79769313e308 : v32;
            if (v33 < v21)
            {
              v34 = v16;
              [v24 font];
              v36 = v35 = v15;
              [v35 pointSize];
              v37 = [v36 fontWithSize:?];

              [v35 lineHeight];
              v39 = v38;
              v40 = [v24 font];
              [v40 lineHeight];
              v42 = v41;

              if (v39 < v42)
              {
                v39 = v42;
              }

              if (v33 < v39 * -[_UIVectorLabelLayer maxRenderedMoveDistance](self, "maxRenderedMoveDistance") && [v37 isEqual:v35])
              {
                v43 = v8;
                v44 = [v24 string];
                v45 = [v44 isEqualToString:v53];

                if (v45)
                {
                  v46 = v23;

                  v8 = v43;
                  if (v33 == 0.0)
                  {

                    v52 = v46;
                    v15 = v51;
                    v16 = v34;
                    goto LABEL_33;
                  }

                  v21 = v33;
                  v52 = v46;
                }

                else
                {
                  v8 = v43;
                }

                v15 = v51;
              }

              else
              {
                v15 = v35;
              }

              v16 = v34;

              v10 = v54;
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v56 objects:v60 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v52 = 0;
    }

LABEL_33:

    v6 = v49;
    v5 = v50;
    v47 = v52;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)_layersForTextLayout:(id)a3
{
  v3 = a3;
  if ([v3 numberOfRuns])
  {
    v4 = [v3 parameters];
    v5 = [v4 traitCollection];
    v6 = [UIGraphicsImageRendererFormat formatForTraitCollection:v5];

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "numberOfRuns")}];
    [v3 lastLineBaseline];
    v9 = v8;
    [v3 size];
    v11 = v9 / v10;
    Mutable = CGPathCreateMutable();
    CFAutorelease(Mutable);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44___UIVectorLabelLayer__layersForTextLayout___block_invoke;
    v27[3] = &unk_1E712A1B8;
    v13 = v6;
    v28 = v13;
    v30 = 0;
    v31 = v11;
    v14 = v7;
    v29 = v14;
    v32 = Mutable;
    [v3 enumerateRunsUsingBlock:v27];
    if (!CGPathIsEmpty(Mutable))
    {
      v15 = objc_opt_new();
      [v15 setPath:Mutable];
      v16 = [v3 parameters];
      v17 = [v16 attributedText];
      v18 = [v17 length];

      if (v18 && ([v3 parameters], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "attributedText"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "attribute:atIndex:effectiveRange:", *off_1E70EC920, 0, 0), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v21))
      {
        v22 = 0;
        v23 = v21;
      }

      else
      {
        v23 = +[UIColor blackColor];
        v21 = 0;
        v22 = 1;
      }

      [v15 setFillColor:{objc_msgSend(v23, "CGColor")}];
      if (v22)
      {
      }

      [v15 setAnchorPoint:{0.0, v11}];
      [v3 usedBoundingRect];
      [v15 setFrame:?];
      [v14 insertObject:v15 atIndex:0];
    }

    v25 = v29;
    v24 = v14;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end