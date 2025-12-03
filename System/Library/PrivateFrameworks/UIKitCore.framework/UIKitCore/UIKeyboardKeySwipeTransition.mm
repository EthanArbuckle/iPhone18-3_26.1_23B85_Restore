@interface UIKeyboardKeySwipeTransition
- (CGRect)keyRectForFrame:(CGRect)frame normalizedSubRect:(CGRect)rect;
- (id)meshTransformForKeyplane:(id)keyplane forward:(BOOL)forward initial:(BOOL)initial;
- (void)_runOpacityAnimation;
- (void)_runTransformAnimation;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)commitTransitionRebuild;
- (void)gatherTransitionKeys;
- (void)rebuildWithStartKeyplane:(id)keyplane startView:(id)view endKeyplane:(id)endKeyplane endView:(id)endView;
- (void)removeAllAnimations;
- (void)runNonInteractivelyWithCompletion:(id)completion;
- (void)updateWithProgress:(double)progress;
@end

@implementation UIKeyboardKeySwipeTransition

- (void)rebuildWithStartKeyplane:(id)keyplane startView:(id)view endKeyplane:(id)endKeyplane endView:(id)endView
{
  v33 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  endKeyplaneCopy = endKeyplane;
  v31.receiver = self;
  v31.super_class = UIKeyboardKeySwipeTransition;
  [(UIKeyboardKeyplaneTransition *)&v31 rebuildWithStartKeyplane:keyplaneCopy startView:view endKeyplane:endKeyplaneCopy endView:endView];
  if (keyplaneCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    keys = [keyplaneCopy keys];
    v14 = [keys countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(keys);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          shape = [v18 shape];

          if (shape)
          {
            shape2 = [v18 shape];
            [array addObject:shape2];
          }
        }

        v15 = [keys countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v15);
    }

    [(UIKeyboardKeySwipeTransition *)self setStartGeometries:array];
    keysOrderedByPosition = [keyplaneCopy keysOrderedByPosition];
    [(UIKeyboardKeySwipeTransition *)self setStartKeysOrdered:keysOrderedByPosition];
  }

  if (endKeyplaneCopy)
  {
    keysOrderedByPosition2 = [endKeyplaneCopy keysOrderedByPosition];
    [(UIKeyboardKeySwipeTransition *)self setEndKeysOrdered:keysOrderedByPosition2];
  }

  start = self->super._start;
  if (start && self->super._end)
  {
    gestureKeyplaneName = [(UIKBTree *)start gestureKeyplaneName];

    if (gestureKeyplaneName)
    {
      name = [(UIKBTree *)self->super._end name];
      gestureKeyplaneName2 = [(UIKBTree *)self->super._start gestureKeyplaneName];
      -[UIKeyboardKeyplaneTransition setInitiallyAtEnd:](self, "setInitiallyAtEnd:", [name rangeOfString:gestureKeyplaneName2 options:1] == 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      [(UIKeyboardKeyplaneTransition *)self setInitiallyAtEnd:1];
    }
  }
}

- (void)commitTransitionRebuild
{
  [(UIKeyboardKeySwipeTransition *)self gatherTransitionKeys];
  initiallyAtEnd = [(UIKeyboardKeyplaneTransition *)self initiallyAtEnd];
  v4 = 0.0;
  if (initiallyAtEnd)
  {
    v4 = 1.0;
  }

  [(UIKeyboardKeySwipeTransition *)self setPreviousProgress:v4];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  keyPath = [stop keyPath];
  v6 = [keyPath isEqualToString:@"meshTransform"];

  if (v6)
  {
    completionBlock = [(UIKeyboardKeyplaneTransition *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(UIKeyboardKeyplaneTransition *)self completionBlock];
      completionBlock2[2]();

      [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:0];
    }

    [(UIKeyboardKeySwipeTransition *)self removeAllAnimations];
  }
}

- (void)runNonInteractivelyWithCompletion:(id)completion
{
  [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:completion];
  [(UIKeyboardKeySwipeTransition *)self _runTransformAnimation];

  [(UIKeyboardKeySwipeTransition *)self _runOpacityAnimation];
}

- (void)_runTransformAnimation
{
  v16[3] = *MEMORY[0x1E69E9840];
  initiallyAtEnd = [(UIKeyboardKeyplaneTransition *)self initiallyAtEnd];
  v4 = initiallyAtEnd;
  v5 = &OBJC_IVAR___UIKeyboardKeyplaneTransition__start;
  if (initiallyAtEnd)
  {
    v5 = &OBJC_IVAR___UIKeyboardKeyplaneTransition__end;
  }

  v6 = *v5;
  v7 = [(UIKeyboardKeySwipeTransition *)self meshTransformForKeyplane:*(&self->super.super.isa + v6) forward:!initiallyAtEnd initial:1];
  v8 = [(UIKeyboardKeySwipeTransition *)self meshTransformForKeyplane:*(&self->super.super.isa + v6) forward:!v4 initial:0];
  v9 = [MEMORY[0x1E6979390] animationWithKeyPath:@"meshTransform"];
  [(UIKeyboardKeySwipeTransition *)self nonInteractiveDuration];
  [v9 setDuration:?];
  [v9 setFillMode:*MEMORY[0x1E69797E0]];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v9 setTimingFunction:v10];

  [v9 setRemovedOnCompletion:0];
  [v9 setDelegate:self];
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  [v9 setValues:v11];

  [v9 setKeyTimes:&unk_1EFE2CE68];
  layer = [(UIView *)self->super._startView layer];
  [layer addAnimation:v9 forKey:@"transform interpolation"];

  [(UIView *)self->super._startView contentScaleFactor];
  v14 = v13;
  layer2 = [(UIView *)self->super._startView layer];
  [layer2 setRasterizationScale:v14];
}

- (void)_runOpacityAnimation
{
  v5 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [(UIKeyboardKeySwipeTransition *)self nonInteractiveDuration];
  [v5 setDuration:?];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v5 setTimingFunction:v3];

  [v5 setRemovedOnCompletion:0];
  [v5 setValues:&unk_1EFE2CE80];
  [v5 setKeyTimes:&unk_1EFE2CE98];
  layer = [(UIView *)self->super._startView layer];
  [layer addAnimation:v5 forKey:@"opacity interpolation"];
}

- (void)removeAllAnimations
{
  layer = [(UIView *)self->super._startView layer];
  [layer removeAnimationForKey:@"transform interpolation"];

  layer2 = [(UIView *)self->super._endView layer];
  [layer2 removeAnimationForKey:@"transform interpolation"];

  layer3 = [(UIView *)self->super._startView layer];
  [layer3 removeAnimationForKey:@"opacity interpolation"];

  layer4 = [(UIView *)self->super._endView layer];
  [layer4 removeAnimationForKey:@"opacity interpolation"];

  layer5 = [(UIView *)self->super._startView layer];
  [layer5 setMeshTransform:0];

  layer6 = [(UIView *)self->super._endView layer];
  [layer6 setMeshTransform:0];

  v9.receiver = self;
  v9.super_class = UIKeyboardKeySwipeTransition;
  [(UIKeyboardKeyplaneTransition *)&v9 removeAllAnimations];
}

- (void)updateWithProgress:(double)progress
{
  [(UIView *)self->super._startView setHidden:0];
  [(UIView *)self->super._endView setHidden:0];
  v5.receiver = self;
  v5.super_class = UIKeyboardKeySwipeTransition;
  [(UIKeyboardKeyplaneTransition *)&v5 updateWithProgress:progress];
  [(UIKeyboardKeySwipeTransition *)self setPreviousProgress:progress];
}

- (void)gatherTransitionKeys
{
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  keys = [(UIKBTree *)self->super._end keys];
  keyboard = [(UIKeyboardKeyplaneTransition *)self keyboard];

  if (keyboard)
  {
    keyboard = [(UIKBTree *)self->super._end gestureKeyplaneName];

    if (keyboard)
    {
      keyboard2 = [(UIKeyboardKeyplaneTransition *)self keyboard];
      gestureKeyplaneName = [(UIKBTree *)self->super._end gestureKeyplaneName];
      v9 = [keyboard2 subtreeWithName:gestureKeyplaneName];

      keyboard = [v9 keys];
    }
  }

  startKeysOrdered = [(UIKeyboardKeySwipeTransition *)self startKeysOrdered];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__UIKeyboardKeySwipeTransition_gatherTransitionKeys__block_invoke;
  v15[3] = &unk_1E7118DF0;
  v16 = keyboard;
  selfCopy = self;
  v18 = keys;
  v19 = array2;
  v20 = array;
  v11 = array;
  v12 = array2;
  v13 = keys;
  v14 = keyboard;
  [startKeysOrdered enumerateObjectsUsingBlock:v15];

  [(UIKeyboardKeySwipeTransition *)self setTransitionKeys:v11];
  [(UIKeyboardKeySwipeTransition *)self setKeyInfos:v12];
}

void __52__UIKeyboardKeySwipeTransition_gatherTransitionKeys__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v25 = a2;
  v5 = [v25 visible];
  v6 = v25;
  if (v5)
  {
    if (*(a1 + 32) && ([*(a1 + 40) endKeysOrdered], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 > a3))
    {
      v9 = [*(a1 + 40) endKeysOrdered];
      v10 = [v9 objectAtIndex:a3];

      v11 = [*(a1 + 48) indexOfObject:v10];
      if (v11 >= [*(a1 + 32) count])
      {
        v12 = 0;
      }

      else
      {
        v12 = [*(a1 + 32) objectAtIndex:v11];
      }

      v16 = [v10 displayType];
      v14 = v16 == 2;
      if (v16 == 2)
      {
        v13 = 0;
        v15 = 0;
      }

      else
      {
        if (v10)
        {
          v17 = v12 == 0;
        }

        else
        {
          v17 = 1;
        }

        v15 = !v17 && v10 != v12;
        v13 = [v10 displayType] == 23;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    v19 = [v25 displayTypeHint];
    v20 = [v25 displayType];
    if (v19 == 10)
    {
      v21 = v20 != 7;
      v22 = *(a1 + 56);
      if (v21 & ~v13)
      {
        if (v14)
        {
          v23 = &unk_1EFE32008;
        }

        else if (v15)
        {
          v23 = &unk_1EFE32020;
        }

        else
        {
          v23 = &unk_1EFE32038;
        }
      }

      else
      {
        v23 = &unk_1EFE31FF0;
      }

LABEL_35:
      [v22 addObject:v23];
      [*(a1 + 64) addObject:v25];
      v6 = v25;
      goto LABEL_36;
    }

    if (v20 && [v25 displayType] != 8)
    {
      v24 = [v25 displayType];
      v6 = v25;
      if (((v24 == 2) & v15) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v6 = v25;
      if (!v15)
      {
        goto LABEL_36;
      }
    }

    if ([v6 displayType] == 2)
    {
      v23 = &unk_1EFE32008;
    }

    else
    {
      v23 = &unk_1EFE32038;
    }

    v22 = *(a1 + 56);
    goto LABEL_35;
  }

LABEL_36:
}

- (CGRect)keyRectForFrame:(CGRect)frame normalizedSubRect:(CGRect)rect
{
  v4 = frame.origin.x + frame.size.width * rect.origin.x;
  v5 = frame.origin.y + frame.size.height * rect.origin.y;
  v6 = frame.size.width * rect.size.width;
  v7 = frame.size.height * rect.size.height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)meshTransformForKeyplane:(id)keyplane forward:(BOOL)forward initial:(BOOL)initial
{
  initialCopy = initial;
  forwardCopy = forward;
  v455 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  transitionKeys = [(UIKeyboardKeySwipeTransition *)self transitionKeys];
  [transitionKeys count];
  v8 = [transitionKeys count];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v390 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v442 = &v390 - v12;
  v14 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v430 = *(MEMORY[0x1E695F050] + 24);
  [keyplaneCopy frame];
  v17 = v16;
  v18 = 1.0 / v16;
  v448 = 1.0 / v19;
  startGeometries = [(UIKeyboardKeySwipeTransition *)self startGeometries];
  keyInfos = [(UIKeyboardKeySwipeTransition *)self keyInfos];
  selfCopy = self;
  keys = [(UIKBTree *)self->super._start keys];
  v450 = 0u;
  v451 = 0u;
  v452 = 0u;
  v453 = 0u;
  v20 = transitionKeys;
  v21 = [v20 countByEnumeratingWithState:&v450 objects:v454 count:16];
  v418 = v10;
  v449 = v18;
  if (v21)
  {
    v22 = v21;
    v390 = &v390;
    v391 = keyplaneCopy;
    v23 = 0.0;
    v24 = 0;
    v25 = *v451;
    v392 = v17 * v18;
    v396 = v18 * 0.0;
    v26 = -1;
    v411 = 0.115;
    v403 = 0x3FD1EB851EB851ECLL;
    v410 = 0.77;
    *&v402 = 0.44;
    v401 = 0.45;
    v400 = 0.13;
    v399 = 0.286;
    v27.i64[0] = 0x80000000800000;
    v27.i64[1] = 0x80000000800000;
    v429 = vnegq_f32(v27);
    v434 = -1;
    v406 = v20;
    v405 = v17;
    v404 = v25;
    while (1)
    {
      v28 = 0;
      v409 = v22;
      do
      {
        if (*v451 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v450 + 1) + 8 * v28);
        v30 = [keys indexOfObject:{v29, v390}];
        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [startGeometries objectAtIndex:v30];
          v32 = [v20 indexOfObject:v29];
          v33 = [keyInfos objectAtIndex:v32];
          integerValue = [v33 integerValue];

          v423 = v31;
          [v31 frame];
          v436 = v13;
          v428 = v15;
          v427 = v14;
          v34 = selfCopy;
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v43 = v411;
          v44 = v410;
          v45 = *&v402;
          [UIKeyboardKeySwipeTransition keyRectForFrame:selfCopy normalizedSubRect:"keyRectForFrame:normalizedSubRect:"];
          v425 = v46;
          v431 = v47;
          v435 = v48;
          v426 = v49;
          v50 = v38;
          [(UIKeyboardKeySwipeTransition *)v34 keyRectForFrame:v36 normalizedSubRect:v38, v40, v42, v43, v401, v44, v45];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v445 = v55;
          v58 = v57;
          v440 = v57;
          v446 = v42;
          [(UIKeyboardKeySwipeTransition *)v34 keyRectForFrame:v36 normalizedSubRect:v50, v40, v42, 0.25, v400, 0.5, v399];
          v437 = v59;
          v433 = v60;
          v438 = v61;
          v432 = v62;
          v457.origin.x = v427;
          v457.origin.y = v436;
          v457.size.width = v428;
          v457.size.height = v430;
          IsNull = CGRectIsNull(v457);
          v64 = v24 + 1;
          v65 = &v442[40 * v24];
          v458.origin.x = v52;
          v444 = v52;
          v458.origin.y = v54;
          v443 = v54;
          v458.size.width = v56;
          v458.size.height = v58;
          v420 = v449 * CGRectGetMinX(v458);
          v459.origin.x = v36;
          v447 = v36;
          v459.origin.y = v50;
          v459.size.width = v40;
          v441 = v40;
          v459.size.height = v42;
          MinY = CGRectGetMinY(v459);
          v67 = v448;
          MaxY = v448 * MinY;
          v460.origin.x = v52;
          v460.origin.y = v54;
          v460.size.width = v56;
          v460.size.height = v58;
          v68 = v449 * CGRectGetMinX(v460);
          v461.origin.x = v36;
          v461.origin.y = v50;
          v69 = v50;
          v461.size.width = v40;
          v70 = v446;
          v461.size.height = v446;
          v71 = CGRectGetMinY(v461);
          *v65 = v420;
          *(v65 + 1) = MaxY;
          *(v65 + 2) = v68;
          *(v65 + 3) = v67 * v71;
          *(v65 + 4) = 0x3FE0000000000000;
          v72 = v444;
          v462.origin.x = v444;
          v73 = v443;
          v462.origin.y = v443;
          v74 = v445;
          v462.size.width = v445;
          v75 = v440;
          v462.size.height = v440;
          v420 = v449 * CGRectGetMinX(v462);
          v76 = v447;
          v463.origin.x = v447;
          v463.origin.y = v69;
          v77 = v441;
          v463.size.width = v441;
          v463.size.height = v70;
          MaxY = CGRectGetMaxY(v463);
          v464.origin.x = v72;
          v464.origin.y = v73;
          v464.size.width = v74;
          v464.size.height = v75;
          MinX = CGRectGetMinX(v464);
          v465.origin.x = v76;
          v465.origin.y = v69;
          v465.size.width = v77;
          v465.size.height = v70;
          v79 = CGRectGetMaxY(v465);
          *(v65 + 5) = v420;
          v80 = v65 + 40;
          v81 = v448;
          v82 = v449 * MinX;
          *(v65 + 6) = v448 * MaxY;
          *(v65 + 7) = v82;
          v83 = v436;
          *(v65 + 8) = v81 * v79;
          *(v65 + 9) = 0x3FE0000000000000;
          v422 = v28;
          v439 = v69;
          if (IsNull || v83 != v69)
          {
            if (IsNull)
            {
              v88 = v23;
              v89 = v418;
            }

            else
            {
              v90 = *(v65 + 1);
              v91 = &v442[40 * v24 + 80];
              *v91 = *v65;
              *(v91 + 1) = v90;
              *(v91 + 4) = *(v65 + 4);
              v92 = *(v65 + 56);
              *(v65 + 120) = *v80;
              *(v65 + 136) = v92;
              *(v65 + 19) = *(v65 + 9);
              v93 = v427;
              v94 = v427;
              v95 = v83;
              v96 = v428;
              *&v92 = v428;
              v97 = v430;
              v98 = v430;
              v99 = CGRectGetMinY(*(&v83 - 1));
              v100 = v448;
              v101 = v448 * v99;
              v466.origin.x = v93;
              v466.origin.y = v95;
              v466.size.width = v96;
              v466.size.height = v97;
              v102 = CGRectGetMinY(v466);
              v103 = v392;
              *v65 = v392;
              *(v65 + 1) = v101;
              *(v65 + 2) = v103;
              *(v65 + 3) = v100 * v102;
              *(v65 + 4) = 0x3FE0000000000000;
              v467.origin.x = v93;
              v467.origin.y = v95;
              v467.size.width = v96;
              v467.size.height = v97;
              v104 = v100 * CGRectGetMaxY(v467);
              v468.origin.x = v93;
              v468.origin.y = v95;
              v468.size.width = v96;
              v468.size.height = v97;
              v105 = CGRectGetMaxY(v468);
              *v80 = v103;
              *(v65 + 6) = v104;
              *(v65 + 7) = v103;
              *(v65 + 8) = v100 * v105;
              *(v65 + 9) = 0x3FE0000000000000;
              v89 = v418;
              v106 = &v418[32 * *&v23];
              v106->i32[0] = v434;
              v106->i32[1] = v26;
              v106->i32[2] = v64;
              v106->i32[3] = v24;
              v106[1] = v429;
              *&v88 = *&v23 + 1;
              v64 = v24 + 3;
              v24 += 2;
            }

            v86 = v442;
            v107 = &v442[40 * v24];
            v108 = *(v107 + 1);
            *(v107 + 5) = *v107;
            *(v107 + 6) = v108;
            *(v107 + 14) = *(v107 + 4);
            LODWORD(v436) = v64 + 2;
            v109 = &v86[40 * v64];
            v110 = *(v109 + 1);
            *(v109 + 5) = *v109;
            *(v109 + 6) = v110;
            *(v109 + 14) = *(v109 + 4);
            v111 = v447;
            v112 = v447;
            v87 = v439;
            *&v110 = v439;
            v113 = v441;
            v114 = v441;
            v115 = v446;
            v116 = v446;
            v117 = CGRectGetMinY(*(&v110 - 8));
            v118 = v448;
            v119 = v448 * v117;
            v469.origin.x = v111;
            v469.origin.y = v87;
            v469.size.width = v113;
            v469.size.height = v115;
            v120 = CGRectGetMinY(v469);
            v121 = v396;
            *v107 = v396;
            *(v107 + 1) = v119;
            *(v107 + 2) = v121;
            *(v107 + 3) = v118 * v120;
            *(v107 + 4) = 0x3FE0000000000000;
            v470.origin.x = v111;
            v470.origin.y = v87;
            v470.size.width = v113;
            v470.size.height = v115;
            v122 = v118 * CGRectGetMaxY(v470);
            v471.origin.x = v111;
            v471.origin.y = v87;
            v15 = v113;
            v471.size.width = v113;
            v471.size.height = v115;
            v123 = CGRectGetMaxY(v471);
            *v109 = v121;
            *(v109 + 1) = v122;
            *(v109 + 2) = v121;
            *(v109 + 3) = v118 * v123;
            *(v109 + 4) = 0x3FE0000000000000;
            v124 = &v89[32 * *&v88];
            v124->i32[0] = v24;
            v124->i32[1] = v64;
            v124->i32[2] = LODWORD(v436);
            v124->i32[3] = v24 + 2;
            v124[1] = v429;
            *&v428 = v24 + 3;
            v24 += 2;
            v23 = v88;
            v84 = v89;
          }

          else
          {
            v84 = v418;
            v85 = &v418[32 * *&v23];
            v85->i32[0] = v434;
            v85->i32[1] = v26;
            *&v428 = v24 + 1;
            v85->i32[2] = v64;
            v85->i32[3] = v24;
            v85[1] = v429;
            v86 = v442;
            v87 = v69;
            v15 = v441;
          }

          v434 = v24 + 2;
          v26 = v24 + 3;
          v125 = v24 + 4;
          v126 = v444;
          v472.origin.x = v444;
          v127 = v443;
          v472.origin.y = v443;
          v128 = v445;
          v472.size.width = v445;
          v129 = v440;
          v472.size.height = v440;
          MaxX = CGRectGetMaxX(v472);
          v131 = v449;
          v436 = v449 * MaxX;
          v473.origin.x = v447;
          v473.origin.y = v87;
          v473.size.width = v15;
          v473.size.height = v446;
          v132 = CGRectGetMinY(v473);
          v133 = v87;
          v134 = v448;
          v430 = v448 * v132;
          v474.origin.x = v126;
          v474.origin.y = v127;
          v474.size.width = v128;
          v474.size.height = v129;
          v135 = v131 * CGRectGetMaxX(v474);
          v136 = v447;
          v475.origin.x = v447;
          v475.origin.y = v133;
          v475.size.width = v15;
          v137 = v446;
          v475.size.height = v446;
          v138 = CGRectGetMinY(v475);
          v139 = &v86[40 * v24];
          v140 = v430;
          *(v139 + 10) = v436;
          *(v139 + 11) = v140;
          *(v139 + 12) = v135;
          *(v139 + 13) = v134 * v138;
          *(v139 + 14) = 0x3FE0000000000000;
          v141 = v444;
          v476.origin.x = v444;
          v142 = v443;
          v476.origin.y = v443;
          v476.size.width = v128;
          v476.size.height = v129;
          v143 = CGRectGetMaxX(v476);
          v144 = v449;
          v436 = v449 * v143;
          v477.origin.x = v136;
          v145 = v439;
          v477.origin.y = v439;
          v477.size.width = v15;
          v477.size.height = v137;
          v430 = v134 * CGRectGetMaxY(v477);
          v478.origin.x = v141;
          v146 = v445;
          v478.origin.y = v142;
          v478.size.width = v445;
          v478.size.height = v129;
          v147 = v144 * CGRectGetMaxX(v478);
          v479.origin.x = v447;
          v479.origin.y = v145;
          v479.size.width = v15;
          v479.size.height = v137;
          v148 = CGRectGetMaxY(v479);
          v149 = v430;
          *(v139 + 15) = v436;
          *(v139 + 16) = v149;
          *(v139 + 17) = v147;
          *(v139 + 18) = v134 * v148;
          *(v139 + 19) = 0x3FE0000000000000;
          v150 = &v84[32 * *&v23 + 32];
          v13 = v145;
          if (integerValue == 3)
          {
            v427 = v23;
            v417 = &v84[32 * *&v23 + 32];
            integerValue = v24 + 3;
            v155 = selfCopy;
            v156 = v447;
            v157 = v145;
            v158 = v15;
            v159 = v15;
            v160 = v446;
            v161 = v411;
            v162 = v410;
            [(UIKeyboardKeySwipeTransition *)selfCopy keyRectForFrame:v447 normalizedSubRect:v157, v158, v446, v411, 0.325, v410, 0.35];
            v425 = v163;
            v431 = v164;
            v435 = v165;
            v426 = v166;
            [(UIKeyboardKeySwipeTransition *)v155 keyRectForFrame:v156 normalizedSubRect:v13, v159, v160, v161, 0.1, v162, 0.35];
            v437 = v167;
            v433 = v168;
            v438 = v169;
            v171 = v170;
            v151 = v449;
            v28 = v422;
          }

          else
          {
            v151 = v449;
            v28 = v422;
            if (integerValue == 2)
            {
              v427 = v23;
              v417 = &v84[32 * *&v23 + 32];
              integerValue = v24 + 3;
            }

            else
            {
              v152 = v446;
              if (!integerValue)
              {
                v153 = v434;
                v150->i32[0] = v24;
                v150->i32[1] = v153;
                v154 = LODWORD(v428);
                v150->i32[2] = v26;
                v150->i32[3] = v154;
                *&v23 += 2;
                v150[1] = v429;
                v14 = v447;
LABEL_30:

                v24 = v125;
                v430 = v152;
                v20 = v406;
                v17 = v405;
                v25 = v404;
                v22 = v409;
                goto LABEL_31;
              }

              v427 = v23;
              v417 = &v84[32 * *&v23 + 32];
              integerValue = v24 + 3;
              v426 = v129;
              v435 = v146;
              v431 = v443;
              v425 = v444;
            }

            v171 = v432;
          }

          v172 = v24 + 7;
          *&v430 = v24 + 9;
          *&v436 = v24 + 10;
          *&v420 = v24 + 4;
          v173 = v442;
          v174 = &v442[40 * v125];
          v175 = v437;
          v480.origin.x = v437;
          v176 = v433;
          v480.origin.y = v433;
          v177 = v438;
          v480.size.width = v438;
          v480.size.height = v171;
          v178 = v151 * CGRectGetMinX(v480);
          v481.origin.x = v175;
          v481.origin.y = v176;
          v481.size.width = v177;
          v481.size.height = v171;
          v179 = CGRectGetMinY(v481);
          v180 = v448;
          v181 = v448 * v179;
          v482.origin.x = v175;
          v482.origin.y = v176;
          v482.size.width = v177;
          v482.size.height = v171;
          v182 = v449 * CGRectGetMinX(v482);
          v483.origin.x = v175;
          v483.origin.y = v176;
          v483.size.width = v177;
          v483.size.height = v171;
          v183 = CGRectGetMinY(v483);
          *v174 = v178;
          *(v174 + 1) = v181;
          *(v174 + 2) = v182;
          *(v174 + 3) = v180 * v183;
          *(v174 + 4) = 0x3FE0000000000000;
          v413 = v24 + 5;
          v184 = &v173[40 * v24 + 200];
          v484.origin.x = v175;
          v484.origin.y = v176;
          v484.size.width = v177;
          v484.size.height = v171;
          v185 = v449 * CGRectGetMaxX(v484);
          v485.origin.x = v175;
          v485.origin.y = v176;
          v485.size.width = v177;
          v485.size.height = v171;
          v186 = v180 * CGRectGetMinY(v485);
          v486.origin.x = v175;
          v486.origin.y = v176;
          v486.size.width = v177;
          v486.size.height = v171;
          v187 = v449 * CGRectGetMaxX(v486);
          v487.origin.x = v175;
          v487.origin.y = v176;
          v487.size.width = v177;
          v487.size.height = v171;
          v188 = CGRectGetMinY(v487);
          *v184 = v185;
          *(v184 + 1) = v186;
          *(v184 + 2) = v187;
          *(v184 + 3) = v180 * v188;
          v189 = v449;
          *(v184 + 4) = 0x3FE0000000000000;
          v415 = v24 + 6;
          v190 = &v173[40 * v24 + 240];
          v488.origin.x = v175;
          v488.origin.y = v176;
          v488.size.width = v177;
          v488.size.height = v171;
          v191 = v189 * CGRectGetMinX(v488);
          *&MaxY = v24 + 11;
          v416 = v24 + 8;
          v414 = v24 + 7;
          v192 = v175;
          v193 = v176;
          v194 = v177;
          v195 = v171;
          if (forwardCopy)
          {
            v196 = v448 * CGRectGetMinY(*&v192);
            if (initialCopy)
            {
              v489.origin.x = v175;
              v489.origin.y = v176;
              v489.size.width = v177;
              v489.size.height = v171;
              v197 = v449 * CGRectGetMinX(v489);
              v490.origin.x = v175;
              v490.origin.y = v176;
              v490.size.width = v177;
              v490.size.height = v171;
              v198 = CGRectGetMinY(v490);
              v199 = v176;
              v200 = v175;
              v201 = v448;
              *v190 = v191;
              *(v190 + 1) = v196;
              *(v190 + 2) = v197;
              *(v190 + 3) = v201 * v198;
              *(v190 + 4) = 0x3FE0000000000000;
              v202 = v442;
              v203 = &v442[40 * v172];
              v491.origin.x = v200;
              v491.origin.y = v199;
              v491.size.width = v177;
              v491.size.height = v171;
              v204 = v449 * CGRectGetMaxX(v491);
              v492.origin.x = v200;
              v492.origin.y = v199;
              v492.size.width = v177;
              v492.size.height = v171;
              v205 = v201 * CGRectGetMinY(v492);
              v493.origin.x = v200;
              v493.origin.y = v199;
              v493.size.width = v177;
              v493.size.height = v171;
              v206 = v449 * CGRectGetMaxX(v493);
              v494.origin.x = v200;
              v494.origin.y = v199;
              v494.size.width = v177;
              v494.size.height = v171;
              v207 = CGRectGetMinY(v494);
              *v203 = v204;
              *(v203 + 1) = v205;
              *(v203 + 2) = v206;
              *(v203 + 3) = v201 * v207;
              *(v203 + 4) = 0x3FE0000000000000;
              v208 = v416;
              v209 = &v202[40 * v416];
              v495.origin.x = v200;
              v495.origin.y = v199;
              v495.size.width = v177;
              v495.size.height = v171;
              v210 = v449 * CGRectGetMinX(v495);
              v496.origin.x = v200;
              v496.origin.y = v199;
              v496.size.width = v177;
              v496.size.height = v171;
              v211 = v201 * CGRectGetMaxY(v496);
              v497.origin.x = v200;
              v497.origin.y = v199;
              v497.size.width = v177;
              v497.size.height = v171;
              v212 = v449 * CGRectGetMinX(v497);
              v498.origin.x = v200;
              v498.origin.y = v199;
              v498.size.width = v177;
              v498.size.height = v171;
              v213 = CGRectGetMaxY(v498);
              *v209 = v210;
              *(v209 + 1) = v211;
              *(v209 + 2) = v212;
              *(v209 + 3) = v201 * v213;
              *(v209 + 4) = 0x3FE0000000000000;
              v214 = &v202[40 * *&v430];
              v499.origin.x = v200;
              v499.origin.y = v199;
              v499.size.width = v177;
              v499.size.height = v171;
              v215 = v449 * CGRectGetMaxX(v499);
              v500.origin.x = v200;
              v500.origin.y = v199;
              v500.size.width = v177;
              v500.size.height = v171;
              v216 = v201 * CGRectGetMaxY(v500);
              v501.origin.x = v200;
              v501.origin.y = v199;
              v501.size.width = v177;
              v501.size.height = v171;
              v217 = v449 * CGRectGetMaxX(v501);
              v502.origin.x = v200;
              v502.origin.y = v199;
              v502.size.width = v177;
              v502.size.height = v171;
              v218 = CGRectGetMaxY(v502);
              *v214 = v215;
              *(v214 + 1) = v216;
              *(v214 + 2) = v217;
              *(v214 + 3) = v201 * v218;
              v219 = v449;
              *(v214 + 4) = 0x3FE0000000000000;
              v220 = &v202[40 * *&v436];
              v221 = v444;
              v503.origin.x = v444;
              v222 = v443;
              v503.origin.y = v443;
              v223 = v445;
              v503.size.width = v445;
              v224 = v440;
              v503.size.height = v440;
              v225 = v219 * CGRectGetMinX(v503);
              v504.origin.x = v221;
              v504.origin.y = v222;
              v504.size.width = v223;
              v504.size.height = v224;
              v226 = v201 * CGRectGetMinY(v504);
              v505.origin.x = v221;
              v505.origin.y = v222;
              v505.size.width = v223;
              v505.size.height = v224;
              v227 = v219 * CGRectGetMinX(v505);
              v506.origin.x = v221;
              v506.origin.y = v222;
              v506.size.width = v445;
              v506.size.height = v224;
              v228 = CGRectGetMinY(v506);
              *v220 = v225;
              *(v220 + 1) = v226;
              *(v220 + 2) = v227;
              *(v220 + 3) = v201 * v228;
              v229 = v445;
              *(v220 + 4) = 0x3FE0000000000000;
              v230 = MaxY;
              v507.origin.x = v221;
              v507.origin.y = v222;
              v507.size.width = v229;
              v507.size.height = v224;
              v231 = v219 * CGRectGetMaxX(v507);
              v508.origin.x = v221;
              v508.origin.y = v222;
              v508.size.width = v229;
              v508.size.height = v224;
              v232 = CGRectGetMinY(v508);
              v509.origin.x = v221;
              v509.origin.y = v222;
              v509.size.width = v229;
              v509.size.height = v224;
              v233 = CGRectGetMaxX(v509);
              v510.origin.x = v221;
              v510.origin.y = v222;
              v510.size.width = v229;
              v510.size.height = v224;
              v234 = CGRectGetMinY(v510);
              *&v202[40 * *&v230] = v231;
              v235 = v229;
            }

            else
            {
              v432 = v171;
              v270 = v425;
              v532.origin.x = v425;
              v271 = v431;
              v532.origin.y = v431;
              v438 = v177;
              v272 = v435;
              v532.size.width = v435;
              v273 = v426;
              v532.size.height = v426;
              v395 = v449 * CGRectGetMinX(v532);
              v533.origin.x = v270;
              v533.origin.y = v271;
              v533.size.width = v272;
              v533.size.height = v273;
              v274 = v448 * CGRectGetMinY(v533);
              *v190 = v191;
              *(v190 + 1) = v196;
              *(v190 + 2) = v395;
              *(v190 + 3) = v274;
              *(v190 + 4) = 0x3FE0000000000000;
              v275 = v442;
              v276 = &v442[40 * v172];
              v534.origin.x = v175;
              v534.origin.y = v176;
              v277 = v438;
              v534.size.width = v438;
              v278 = v432;
              v534.size.height = v432;
              v395 = v449 * CGRectGetMaxX(v534);
              v535.origin.x = v175;
              v437 = v175;
              v535.origin.y = v176;
              v535.size.width = v277;
              v535.size.height = v278;
              v279 = CGRectGetMinY(v535);
              v280 = v448;
              v394 = v448 * v279;
              v536.origin.x = v270;
              v536.origin.y = v271;
              v536.size.width = v272;
              v536.size.height = v273;
              v281 = v449 * CGRectGetMaxX(v536);
              v537.origin.x = v270;
              v537.origin.y = v271;
              v537.size.width = v272;
              v537.size.height = v273;
              v282 = CGRectGetMinY(v537);
              v283 = v394;
              *v276 = v395;
              *(v276 + 1) = v283;
              *(v276 + 2) = v281;
              *(v276 + 3) = v280 * v282;
              *(v276 + 4) = 0x3FE0000000000000;
              v208 = v416;
              v284 = &v275[40 * v416];
              v538.origin.x = v175;
              v538.origin.y = v176;
              v285 = v438;
              v538.size.width = v438;
              v286 = v432;
              v538.size.height = v432;
              v395 = v449 * CGRectGetMinX(v538);
              v539.origin.x = v175;
              v539.origin.y = v176;
              v287 = v176;
              v539.size.width = v285;
              v288 = v285;
              v539.size.height = v286;
              v289 = CGRectGetMaxY(v539);
              v290 = v448;
              v394 = v448 * v289;
              v540.origin.x = v270;
              v431 = v271;
              v540.origin.y = v271;
              v540.size.width = v272;
              v540.size.height = v273;
              v291 = v449 * CGRectGetMinX(v540);
              v541.origin.x = v270;
              v541.origin.y = v271;
              v541.size.width = v272;
              v541.size.height = v273;
              v292 = CGRectGetMaxY(v541);
              v293 = v394;
              *v284 = v395;
              *(v284 + 1) = v293;
              *(v284 + 2) = v291;
              *(v284 + 3) = v290 * v292;
              v294 = v449;
              *(v284 + 4) = 0x3FE0000000000000;
              v295 = &v275[40 * *&v430];
              v296 = v437;
              v542.origin.x = v437;
              v542.origin.y = v287;
              v542.size.width = v288;
              v297 = v432;
              v542.size.height = v432;
              v395 = v294 * CGRectGetMaxX(v542);
              v543.origin.x = v296;
              v543.origin.y = v287;
              v543.size.width = v288;
              v543.size.height = v297;
              v298 = CGRectGetMaxY(v543);
              v299 = v448;
              v300 = v448 * v298;
              v544.origin.x = v270;
              v301 = v431;
              v544.origin.y = v431;
              v544.size.width = v272;
              v544.size.height = v273;
              v302 = v294 * CGRectGetMaxX(v544);
              v545.origin.x = v270;
              v545.origin.y = v301;
              v545.size.width = v272;
              v545.size.height = v273;
              v303 = CGRectGetMaxY(v545);
              *v295 = v395;
              *(v295 + 1) = v300;
              *(v295 + 2) = v302;
              *(v295 + 3) = v299 * v303;
              *(v295 + 4) = 0x3FE0000000000000;
              v304 = &v275[40 * *&v436];
              v221 = v444;
              v546.origin.x = v444;
              v222 = v443;
              v546.origin.y = v443;
              v546.size.width = v445;
              v224 = v440;
              v546.size.height = v440;
              v305 = v294 * CGRectGetMinX(v546);
              v547.origin.x = v221;
              v547.origin.y = v222;
              v547.size.width = v445;
              v547.size.height = v224;
              v306 = v299 * CGRectGetMinY(v547);
              v548.origin.x = v221;
              v548.origin.y = v222;
              v548.size.width = v445;
              v548.size.height = v224;
              v307 = v294 * CGRectGetMinX(v548);
              v549.origin.x = v221;
              v549.origin.y = v222;
              v549.size.width = v445;
              v549.size.height = v224;
              v308 = CGRectGetMaxY(v549);
              *v304 = v305;
              *(v304 + 1) = v306;
              *(v304 + 2) = v307;
              *(v304 + 3) = v299 * v308;
              v235 = v445;
              *(v304 + 4) = 0x3FE0000000000000;
              v230 = MaxY;
              v550.origin.x = v221;
              v550.origin.y = v222;
              v550.size.width = v235;
              v550.size.height = v224;
              v309 = v294;
              v310 = v294 * CGRectGetMaxX(v550);
              v551.origin.x = v221;
              v551.origin.y = v222;
              v551.size.width = v235;
              v551.size.height = v224;
              v232 = CGRectGetMinY(v551);
              v552.origin.x = v221;
              v552.origin.y = v222;
              v552.size.width = v235;
              v552.size.height = v224;
              v233 = CGRectGetMaxX(v552);
              v553.origin.x = v221;
              v553.origin.y = v222;
              v553.size.width = v235;
              v553.size.height = v224;
              v234 = CGRectGetMaxY(v553);
              *&v275[40 * *&v230] = v310;
              v219 = v309;
            }
          }

          else
          {
            v236 = CGRectGetMaxY(*&v192);
            v237 = v448;
            v238 = v448 * v236;
            v511.origin.x = v175;
            v511.origin.y = v176;
            v511.size.width = v177;
            v511.size.height = v171;
            v239 = v189 * CGRectGetMinX(v511);
            v240 = &v442[40 * v172];
            v241 = &v442[40 * v24 + 320];
            v242 = v175;
            v243 = v176;
            v244 = v177;
            v245 = v171;
            if (initialCopy)
            {
              v246 = CGRectGetMaxY(*&v242);
              *v190 = v191;
              *(v190 + 1) = v238;
              *(v190 + 2) = v239;
              *(v190 + 3) = v237 * v246;
              *(v190 + 4) = 0x3FE0000000000000;
              v512.origin.x = v175;
              v512.origin.y = v176;
              v512.size.width = v177;
              v512.size.height = v171;
              v247 = CGRectGetMaxX(v512);
              v248 = v449;
              v395 = v449 * v247;
              v513.origin.x = v175;
              v513.origin.y = v176;
              v513.size.width = v177;
              v513.size.height = v171;
              v249 = v237 * CGRectGetMaxY(v513);
              v514.origin.x = v175;
              v514.origin.y = v176;
              v514.size.width = v177;
              v514.size.height = v171;
              v250 = v248 * CGRectGetMaxX(v514);
              v515.origin.x = v175;
              v515.origin.y = v176;
              v515.size.width = v177;
              v515.size.height = v171;
              v251 = CGRectGetMaxY(v515);
              *v240 = v395;
              *(v240 + 1) = v249;
              *(v240 + 2) = v250;
              *(v240 + 3) = v237 * v251;
              *(v240 + 4) = 0x3FE0000000000000;
              v252 = v237;
              v253 = v425;
              v516.origin.x = v425;
              v254 = v431;
              v516.origin.y = v431;
              v255 = v435;
              v516.size.width = v435;
              v256 = v426;
              v516.size.height = v426;
              v438 = v248 * CGRectGetMinX(v516);
              v517.origin.x = v253;
              v517.origin.y = v254;
              v517.size.width = v255;
              v517.size.height = v256;
              v257 = v252 * CGRectGetMinY(v517);
              v518.origin.x = v253;
              v518.origin.y = v254;
              v518.size.width = v255;
              v518.size.height = v256;
              v258 = v248 * CGRectGetMinX(v518);
              v519.origin.x = v253;
              v519.origin.y = v254;
              v519.size.width = v255;
              v519.size.height = v256;
              v259 = CGRectGetMinY(v519);
              *v241 = v438;
              *(v241 + 1) = v257;
              *(v241 + 2) = v258;
              *(v241 + 3) = v252 * v259;
              *(v241 + 4) = 0x3FE0000000000000;
              v260 = v442;
              v261 = &v442[40 * *&v430];
              v520.origin.x = v253;
              v520.origin.y = v254;
              v520.size.width = v255;
              v520.size.height = v256;
              v438 = v248 * CGRectGetMaxX(v520);
              v521.origin.x = v253;
              v521.origin.y = v254;
              v521.size.width = v255;
              v521.size.height = v256;
              v262 = v252 * CGRectGetMinY(v521);
              v522.origin.x = v253;
              v522.origin.y = v254;
              v522.size.width = v255;
              v522.size.height = v256;
              v263 = v248 * CGRectGetMaxX(v522);
              v523.origin.x = v253;
              v523.origin.y = v254;
              v523.size.width = v255;
              v523.size.height = v256;
              v264 = CGRectGetMinY(v523);
              *v261 = v438;
              *(v261 + 1) = v262;
              *(v261 + 2) = v263;
              *(v261 + 3) = v252 * v264;
              *(v261 + 4) = 0x3FE0000000000000;
              v265 = &v260[40 * *&v436];
              v524.origin.x = v253;
              v524.origin.y = v254;
              v524.size.width = v255;
              v524.size.height = v256;
              v438 = v248 * CGRectGetMinX(v524);
              v525.origin.x = v253;
              v525.origin.y = v254;
              v525.size.width = v255;
              v525.size.height = v256;
              v266 = v252 * CGRectGetMaxY(v525);
              v526.origin.x = v253;
              v526.origin.y = v254;
              v526.size.width = v255;
              v526.size.height = v256;
              v267 = v248 * CGRectGetMinX(v526);
              v527.origin.x = v253;
              v527.origin.y = v254;
              v527.size.width = v255;
              v527.size.height = v256;
              v268 = CGRectGetMaxY(v527);
              *v265 = v438;
              *(v265 + 1) = v266;
              *(v265 + 2) = v267;
              *(v265 + 3) = v252 * v268;
              v235 = v445;
              *(v265 + 4) = 0x3FE0000000000000;
              v230 = MaxY;
              v528.origin.x = v253;
              v528.origin.y = v254;
              v528.size.width = v255;
              v528.size.height = v256;
              v269 = v248 * CGRectGetMaxX(v528);
              v529.origin.x = v253;
              v529.origin.y = v254;
              v529.size.width = v255;
              v529.size.height = v256;
              v232 = CGRectGetMaxY(v529);
              v530.origin.x = v253;
              v530.origin.y = v254;
              v530.size.width = v255;
              v530.size.height = v256;
              v233 = CGRectGetMaxX(v530);
              v531.origin.x = v253;
              v531.origin.y = v254;
              v531.size.width = v255;
              v531.size.height = v256;
              v234 = CGRectGetMaxY(v531);
              *&v260[40 * *&v230] = v269;
              v219 = v449;
              v221 = v444;
              v222 = v443;
              v224 = v440;
              v208 = v416;
            }

            else
            {
              v311 = CGRectGetMinY(*&v242);
              *v190 = v191;
              *(v190 + 1) = v238;
              *(v190 + 2) = v239;
              *(v190 + 3) = v237 * v311;
              *(v190 + 4) = 0x3FE0000000000000;
              v554.origin.x = v175;
              v554.origin.y = v176;
              v554.size.width = v177;
              v554.size.height = v171;
              v312 = CGRectGetMaxX(v554);
              v313 = v449;
              v395 = v449 * v312;
              v555.origin.x = v175;
              v555.origin.y = v176;
              v555.size.width = v177;
              v555.size.height = v171;
              v314 = v237 * CGRectGetMaxY(v555);
              v556.origin.x = v175;
              v556.origin.y = v176;
              v556.size.width = v177;
              v556.size.height = v171;
              v315 = v313 * CGRectGetMaxX(v556);
              v557.origin.x = v175;
              v557.origin.y = v176;
              v557.size.width = v177;
              v557.size.height = v171;
              v316 = CGRectGetMinY(v557);
              *v240 = v395;
              *(v240 + 1) = v314;
              *(v240 + 2) = v315;
              *(v240 + 3) = v237 * v316;
              *(v240 + 4) = 0x3FE0000000000000;
              v317 = v171;
              v318 = v425;
              v558.origin.x = v425;
              v437 = v175;
              v433 = v176;
              v319 = v177;
              v320 = v431;
              v558.origin.y = v431;
              v321 = v237;
              v322 = v435;
              v558.size.width = v435;
              v323 = v426;
              v558.size.height = v426;
              v324 = CGRectGetMinX(v558);
              v325 = v449;
              v395 = v449 * v324;
              v559.origin.x = v318;
              v559.origin.y = v320;
              v559.size.width = v322;
              v559.size.height = v323;
              v394 = v321 * CGRectGetMinY(v559);
              v326 = v437;
              v560.origin.x = v437;
              v327 = v433;
              v560.origin.y = v433;
              v560.size.width = v319;
              v438 = v319;
              v560.size.height = v317;
              v393 = v325 * CGRectGetMinX(v560);
              v561.origin.x = v326;
              v561.origin.y = v327;
              v328 = v327;
              v561.size.width = v319;
              v329 = v317;
              v432 = v317;
              v561.size.height = v317;
              v330 = CGRectGetMinY(v561);
              v331 = v448;
              v332 = v394;
              *v241 = v395;
              *(v241 + 1) = v332;
              *(v241 + 2) = v393;
              *(v241 + 3) = v331 * v330;
              *(v241 + 4) = 0x3FE0000000000000;
              v333 = v442;
              v334 = &v442[40 * *&v430];
              v562.origin.x = v318;
              v562.origin.y = v320;
              v335 = v435;
              v562.size.width = v435;
              v562.size.height = v323;
              v336 = CGRectGetMaxX(v562);
              v337 = v449;
              v395 = v449 * v336;
              v563.origin.x = v318;
              v563.origin.y = v320;
              v563.size.width = v335;
              v563.size.height = v323;
              v394 = v331 * CGRectGetMinY(v563);
              v338 = v437;
              v564.origin.x = v437;
              v564.origin.y = v328;
              v339 = v438;
              v564.size.width = v438;
              v564.size.height = v329;
              v393 = v337 * CGRectGetMaxX(v564);
              v565.origin.x = v338;
              v565.origin.y = v328;
              v565.size.width = v339;
              v565.size.height = v329;
              v340 = CGRectGetMinY(v565);
              v341 = v448;
              v342 = v394;
              *v334 = v395;
              *(v334 + 1) = v342;
              *(v334 + 2) = v393;
              *(v334 + 3) = v341 * v340;
              *(v334 + 4) = 0x3FE0000000000000;
              v343 = &v333[40 * *&v436];
              v566.origin.x = v318;
              v566.origin.y = v320;
              v344 = v435;
              v566.size.width = v435;
              v566.size.height = v323;
              v395 = v337 * CGRectGetMinX(v566);
              v345 = v337;
              v567.origin.x = v318;
              v567.origin.y = v320;
              v567.size.width = v344;
              v567.size.height = v323;
              v394 = v341 * CGRectGetMaxY(v567);
              v346 = v437;
              v568.origin.x = v437;
              v347 = v433;
              v568.origin.y = v433;
              v348 = v438;
              v568.size.width = v438;
              v349 = v432;
              v568.size.height = v432;
              v393 = v345 * CGRectGetMinX(v568);
              v569.origin.x = v346;
              v569.origin.y = v347;
              v569.size.width = v348;
              v350 = v349;
              v569.size.height = v349;
              v351 = v448 * CGRectGetMaxY(v569);
              v352 = v394;
              *v343 = v395;
              *(v343 + 1) = v352;
              *(v343 + 2) = v393;
              *(v343 + 3) = v351;
              *(v343 + 4) = 0x3FE0000000000000;
              v230 = MaxY;
              v570.origin.x = v318;
              v570.origin.y = v320;
              v353 = v435;
              v570.size.width = v435;
              v570.size.height = v323;
              v395 = v345 * CGRectGetMaxX(v570);
              v571.origin.x = v318;
              v571.origin.y = v320;
              v571.size.width = v353;
              v571.size.height = v323;
              v232 = CGRectGetMaxY(v571);
              v572.origin.x = v346;
              v354 = v433;
              v572.origin.y = v433;
              v572.size.width = v348;
              v572.size.height = v350;
              v355 = v350;
              v233 = CGRectGetMaxX(v572);
              v573.origin.x = v346;
              v573.origin.y = v354;
              v573.size.width = v348;
              v573.size.height = v355;
              v234 = CGRectGetMaxY(v573);
              *&v333[40 * *&v230] = v395;
              v219 = v449;
              v221 = v444;
              v222 = v443;
              v224 = v440;
              v208 = v416;
              v235 = v445;
            }
          }

          v356 = v448;
          v357 = v442;
          v358 = &v442[40 * *&v230];
          *(v358 + 1) = v448 * v232;
          *(v358 + 2) = v219 * v233;
          *(v358 + 3) = v356 * v234;
          *(v358 + 4) = 0x3FE0000000000000;
          v359 = &v357[40 * v24 + 480];
          v574.origin.x = v221;
          v574.origin.y = v222;
          v574.size.width = v235;
          v574.size.height = v224;
          v438 = v219 * CGRectGetMinX(v574);
          v575.origin.x = v221;
          v575.origin.y = v222;
          v575.size.width = v235;
          v575.size.height = v224;
          v360 = v356 * CGRectGetMaxY(v575);
          v576.origin.x = v221;
          v576.origin.y = v222;
          v576.size.width = v235;
          v576.size.height = v224;
          v361 = v235;
          v362 = v219 * CGRectGetMinX(v576);
          v577.origin.x = v221;
          v577.origin.y = v222;
          v577.size.width = v361;
          v577.size.height = v224;
          v363 = CGRectGetMaxY(v577);
          *v359 = v438;
          *(v359 + 1) = v360;
          *(v359 + 2) = v362;
          *(v359 + 3) = v356 * v363;
          *(v359 + 4) = 0x3FE0000000000000;
          v364 = &v357[40 * v24 + 520];
          v578.origin.x = v221;
          v578.origin.y = v222;
          v578.size.width = v361;
          v578.size.height = v224;
          v438 = v219 * CGRectGetMaxX(v578);
          v579.origin.x = v221;
          v579.origin.y = v222;
          v579.size.width = v361;
          v579.size.height = v224;
          v365 = v356 * CGRectGetMaxY(v579);
          v580.origin.x = v221;
          v580.origin.y = v222;
          v580.size.width = v361;
          v580.size.height = v224;
          v366 = v219 * CGRectGetMaxX(v580);
          v581.origin.x = v221;
          v581.origin.y = v222;
          v581.size.width = v361;
          v581.size.height = v224;
          v367 = CGRectGetMaxY(v581);
          *v364 = v438;
          *(v364 + 1) = v365;
          *(v364 + 2) = v366;
          *(v364 + 3) = v356 * v367;
          *(v364 + 4) = 0x3FE0000000000000;
          v368 = v417;
          v369 = v434;
          v417->i32[0] = v24;
          v368->i32[1] = v369;
          v370 = v413;
          v371 = LODWORD(v420);
          v368->i32[2] = v413;
          v368->i32[3] = v371;
          v372 = v429;
          v368[1] = v429;
          v373 = v427;
          v374 = &v418[32 * *&v427];
          v374[4].i32[0] = v371;
          v374[4].i32[1] = v370;
          LODWORD(v368) = v414;
          v375 = v415;
          v374[4].i32[2] = v414;
          v374[4].i32[3] = v375;
          v374[5] = v372;
          v374[6].i32[0] = v375;
          v374[6].i32[1] = v368;
          LODWORD(v368) = LODWORD(v430);
          v374[6].i32[2] = LODWORD(v430);
          v374[6].i32[3] = v208;
          v374[7] = v372;
          v374[8].i32[0] = v208;
          v374[8].i32[1] = v368;
          LODWORD(v368) = LODWORD(v436);
          v374[8].i32[2] = LODWORD(v230);
          v374[8].i32[3] = v368;
          v374[9] = v372;
          v374[10].i32[0] = v368;
          v374[10].i32[1] = LODWORD(v230);
          v374[10].i32[2] = v24 + 13;
          v374[10].i32[3] = v24 + 12;
          v374[11] = v372;
          v374[12].i32[0] = LODWORD(v428);
          v374[12].i32[1] = v24 + 12;
          v374[12].i32[2] = v24 + 13;
          v26 = integerValue;
          v374[12].i32[3] = integerValue;
          *&v23 = *&v373 + 7;
          v125 = v24 + 14;
          v374[13] = v372;
          v14 = v447;
          v152 = v446;
          v13 = v439;
          v15 = v441;
          goto LABEL_30;
        }

LABEL_31:
        ++v28;
      }

      while (v22 != v28);
      v22 = [v20 countByEnumeratingWithState:&v450 objects:v454 count:16];
      if (!v22)
      {
        keyplaneCopy = v391;
        goto LABEL_35;
      }
    }
  }

  v23 = 0.0;
  v24 = 0;
  v26 = -1;
  v434 = 0xFFFFFFFFLL;
LABEL_35:

  v582.origin.x = v14;
  v582.origin.y = v13;
  v582.size.width = v15;
  v582.size.height = v430;
  if (CGRectIsNull(v582))
  {
    v376 = v418;
  }

  else
  {
    v377 = &v442[40 * v24];
    v378 = v17 * v449;
    v583.origin.x = v14;
    v583.origin.y = v13;
    v583.size.width = v15;
    v379 = v430;
    v583.size.height = v430;
    v380 = CGRectGetMinY(v583);
    v381 = v448;
    v382 = v448 * v380;
    v584.origin.x = v14;
    v584.origin.y = v13;
    v584.size.width = v15;
    v584.size.height = v379;
    v383 = CGRectGetMinY(v584);
    *v377 = v378;
    *(v377 + 1) = v382;
    *(v377 + 2) = v378;
    *(v377 + 3) = v381 * v383;
    *(v377 + 4) = 0x3FE0000000000000;
    v585.origin.x = v14;
    v585.origin.y = v13;
    v585.size.width = v15;
    v585.size.height = v379;
    v384 = v381 * CGRectGetMaxY(v585);
    v586.origin.x = v14;
    v586.origin.y = v13;
    v586.size.width = v15;
    v586.size.height = v379;
    v385 = CGRectGetMaxY(v586);
    *(v377 + 5) = v378;
    *(v377 + 6) = v384;
    *(v377 + 7) = v378;
    *(v377 + 8) = v381 * v385;
    *(v377 + 9) = 0x3FE0000000000000;
    v376 = v418;
    v386 = &v418[32 * *&v23];
    v386->i32[0] = v434;
    v386->i32[1] = v26;
    v386->i32[2] = v24 + 1;
    v386->i32[3] = v24;
    v387.i64[0] = 0x80000000800000;
    v387.i64[1] = 0x80000000800000;
    v386[1] = vnegq_f32(v387);
    ++*&v23;
    v24 += 2;
  }

  v388 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:v24 vertices:v442 faceCount:*&v23 faces:v376 depthNormalization:*MEMORY[0x1E6979700]];

  return v388;
}

@end