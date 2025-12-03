@interface _UIKBRTFingerDetection
- (BOOL)_linkTouchesInArray:(id)array withIndexes:(id)indexes opposingHandIndexes:(id)handIndexes unassignedIndexes:(id)unassignedIndexes thumb:(id)thumb;
- (CGPoint)touchLocationForFingerId:(unint64_t)id;
- (_UIKBRTFingerDetection)init;
- (_UIKBRTFingerDetection)initWithParentView:(id)view;
- (id)fingerIdsRelatedToTouchWithIdentifier:(id)identifier sinceTimestamp:(double)timestamp includeThumbs:(BOOL)thumbs;
- (id)touchIdentifiersForFingerId:(unint64_t)id;
- (unint64_t)fingerIdForTouchWithIdentifier:(id)identifier;
- (void)_updateFingerFeedback;
- (void)_updateFingerFeedback:(id)feedback;
- (void)_updateTouchInfoForFingerID:(unint64_t)d;
- (void)_updateTouchInfoFromOutsideInWithArray:(id)array indexes:(id)indexes newIdentityDict:(id)dict fakeIndex:(id)index;
- (void)addTouchLocation:(CGPoint)location withRadius:(double)radius withTouchTime:(double)time withIdentifier:(id)identifier;
- (void)dealloc;
- (void)moveTouchWithIdentifier:(id)identifier toLocation:(CGPoint)location withRadius:(double)radius atTouchTime:(double)time;
- (void)removeTouchWithIdentifier:(id)identifier touchCancelled:(BOOL)cancelled;
- (void)reset;
- (void)updateWithFCenter:(CGPoint)center jCenter:(CGPoint)jCenter keySize:(CGSize)size rowOffsets:(id)offsets homeRowOffsetIndex:(int)index;
@end

@implementation _UIKBRTFingerDetection

- (_UIKBRTFingerDetection)init
{
  v6.receiver = self;
  v6.super_class = _UIKBRTFingerDetection;
  v2 = [(_UIKBRTFingerDetection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    touches = v2->_touches;
    v2->_touches = v3;
  }

  return v2;
}

- (_UIKBRTFingerDetection)initWithParentView:(id)view
{
  result = [(_UIKBRTFingerDetection *)self init];
  if (result)
  {
    result->_feedbackParentView = view;
  }

  return result;
}

- (void)dealloc
{
  [(UIView *)self->_feedbackView removeFromSuperview];
  feedbackView = self->_feedbackView;
  self->_feedbackView = 0;

  v4.receiver = self;
  v4.super_class = _UIKBRTFingerDetection;
  [(_UIKBRTFingerDetection *)&v4 dealloc];
}

- (void)reset
{
  [(NSMutableDictionary *)self->_touches removeAllObjects];

  [(_UIKBRTFingerDetection *)self _updateTouchInfoForFingerID:0];
}

- (void)updateWithFCenter:(CGPoint)center jCenter:(CGPoint)jCenter keySize:(CGSize)size rowOffsets:(id)offsets homeRowOffsetIndex:(int)index
{
  v8.receiver = self;
  v8.super_class = _UIKBRTFingerDetection;
  [(_UIKBRTKeyboardTouchObserver *)&v8 updateWithFCenter:offsets jCenter:*&index keySize:center.x rowOffsets:center.y homeRowOffsetIndex:jCenter.x, jCenter.y, size.width, size.height];
  [(NSMutableDictionary *)self->_touches removeAllObjects];
  [(_UIKBRTFingerDetection *)self _updateTouchInfoForFingerID:0];
}

- (void)addTouchLocation:(CGPoint)location withRadius:(double)radius withTouchTime:(double)time withIdentifier:(id)identifier
{
  y = location.y;
  x = location.x;
  touches = self->_touches;
  identifierCopy = identifier;
  v14 = [(NSMutableDictionary *)touches objectForKey:identifierCopy];

  if (v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKBRTFingerDetection.m" lineNumber:224 description:@"Touch already in dictionary!"];
  }

  v16 = objc_alloc_init(_UIKBRTFingerInfo);
  [(_UIKBRTFingerInfo *)v16 setLocation:x, y];
  [(_UIKBRTFingerInfo *)v16 setRadius:radius];
  [(_UIKBRTFingerInfo *)v16 setLastSeenTimestamp:time];
  [(NSMutableDictionary *)self->_touches setObject:v16 forKey:identifierCopy];

  [(_UIKBRTFingerDetection *)self _updateTouchInfoForFingerID:0];
}

- (void)moveTouchWithIdentifier:(id)identifier toLocation:(CGPoint)location withRadius:(double)radius atTouchTime:(double)time
{
  y = location.y;
  x = location.x;
  v11 = [(NSMutableDictionary *)self->_touches objectForKey:identifier];
  if (v11)
  {
    v12 = v11;
    [v11 setLocation:{x, y}];
    [v12 setRadius:radius];
    [v12 setLastSeenTimestamp:time];
    -[_UIKBRTFingerDetection _updateTouchInfoForFingerID:](self, "_updateTouchInfoForFingerID:", [v12 identity]);
    v11 = v12;
  }
}

- (void)removeTouchWithIdentifier:(id)identifier touchCancelled:(BOOL)cancelled
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_touches objectForKey:?];
  v6 = v5;
  if (v5)
  {
    identity = [v5 identity];
    if ([(NSMutableDictionary *)self->_touches count]< 4)
    {
      goto LABEL_14;
    }

    if (identity != 9 && identity != 6)
    {
      goto LABEL_14;
    }

    v9 = objc_alloc_init(_UIKBRTFakeFingerInfo);
    [(_UIKBRTFingerInfo *)v9 setIdentity:identity];
    [(_UIKBRTFingerInfo *)v9 setUnknownSeen:0];
    [v6 radius];
    [(_UIKBRTFingerInfo *)v9 setRadius:?];
    [v6 location];
    [(_UIKBRTFingerInfo *)v9 setLocation:?];
    identity2 = [v6 identity];
    if (identity2 == 6)
    {
      v11 = &OBJC_IVAR____UIKBRTFingerDetection__fakeLeftIndex;
    }

    else
    {
      if (identity2 != 9)
      {
LABEL_13:

LABEL_14:
        [(NSMutableDictionary *)self->_touches removeObjectForKey:identifierCopy];
        [(_UIKBRTFingerDetection *)self _updateTouchInfoForFingerID:identity];
        goto LABEL_15;
      }

      v11 = &OBJC_IVAR____UIKBRTFingerDetection__fakeRightIndex;
    }

    objc_storeStrong((&self->super.super.isa + *v11), v9);
    goto LABEL_13;
  }

LABEL_15:
}

- (unint64_t)fingerIdForTouchWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_touches objectForKey:identifier];
  v4 = v3;
  if (v3)
  {
    identity = [v3 identity];
  }

  else
  {
    identity = 0;
  }

  return identity;
}

- (id)touchIdentifiersForFingerId:(unint64_t)id
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__142;
  v22 = __Block_byref_object_dispose__142;
  v23 = 0;
  if (id - 3 < 0xA)
  {
    touches = self->_touches;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54___UIKBRTFingerDetection_touchIdentifiersForFingerId___block_invoke;
    v17[3] = &unk_1E71188D8;
    v17[4] = &v18;
    v17[5] = id;
    [(NSMutableDictionary *)touches enumerateKeysAndObjectsUsingBlock:v17];
LABEL_4:
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_touches;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54___UIKBRTFingerDetection_touchIdentifiersForFingerId___block_invoke_2;
    v14[3] = &unk_1E7118900;
    idCopy = id;
    v8 = v6;
    v15 = v8;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v14];
    v9 = v19[5];
    v19[5] = v8;
    v10 = v8;

    v11 = v19[5];
    goto LABEL_5;
  }

  if (id < 3)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_5:
  v12 = v11;
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (CGPoint)touchLocationForFingerId:(unint64_t)id
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__142;
  v19 = __Block_byref_object_dispose__142;
  v20 = 0;
  if (id - 3 > 9)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  touches = self->_touches;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51___UIKBRTFingerDetection_touchLocationForFingerId___block_invoke;
  v14[3] = &unk_1E71188D8;
  v14[4] = &v15;
  v14[5] = id;
  [(NSMutableDictionary *)touches enumerateKeysAndObjectsUsingBlock:v14];
  v6 = v16[5];
  if (!v6)
  {
    if (id == 6)
    {
      v7 = &OBJC_IVAR____UIKBRTFingerDetection__fakeLeftIndex;
      goto LABEL_9;
    }

    if (id == 9)
    {
      v7 = &OBJC_IVAR____UIKBRTFingerDetection__fakeRightIndex;
LABEL_9:
      objc_storeStrong(v16 + 5, *(&self->super.super.isa + *v7));
      v6 = v16[5];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:
  [v6 location];
  v9 = v8;
  v11 = v10;
  _Block_object_dispose(&v15, 8);

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)fingerIdsRelatedToTouchWithIdentifier:(id)identifier sinceTimestamp:(double)timestamp includeThumbs:(BOOL)thumbs
{
  thumbsCopy = thumbs;
  v8 = [(NSMutableDictionary *)self->_touches objectForKey:identifier];
  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_24;
  }

  identity = [v8 identity];
  v11 = identity;
  v12 = 0;
  if (identity > 6)
  {
    if ((identity - 9) < 4)
    {
      goto LABEL_8;
    }

    if (identity == 8)
    {
      if (thumbsCopy)
      {
LABEL_9:
        v13 = &unk_1EFE2CE08;
        v14 = &unk_1EFE31F78;
        goto LABEL_10;
      }
    }

    else
    {
      if (identity != 7)
      {
        goto LABEL_23;
      }

      if (thumbsCopy)
      {
        goto LABEL_5;
      }
    }

    v12 = 0;
    goto LABEL_23;
  }

  if (identity <= 2)
  {
    if (!identity)
    {
      goto LABEL_24;
    }

    if (identity != 1)
    {
      if (identity != 2)
      {
        goto LABEL_23;
      }

LABEL_8:
      if (!thumbsCopy)
      {
        v12 = &unk_1EFE2CE08;
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

  if (!thumbsCopy)
  {
    v12 = &unk_1EFE2CDF0;
    goto LABEL_23;
  }

LABEL_5:
  v13 = &unk_1EFE2CDF0;
  v14 = &unk_1EFE31EE8;
LABEL_10:
  v12 = [v13 arrayByAddingObject:v14];
LABEL_23:
  allValues = [(NSMutableDictionary *)self->_touches allValues];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93___UIKBRTFingerDetection_fingerIdsRelatedToTouchWithIdentifier_sinceTimestamp_includeThumbs___block_invoke;
  v22[3] = &unk_1E7118928;
  v23 = v12;
  v24 = v11;
  timestampCopy = timestamp;
  v16 = v12;
  v17 = [allValues indexesOfObjectsPassingTest:v22];
  v18 = [allValues objectsAtIndexes:v17];

  v19 = MEMORY[0x1E695DFD8];
  v20 = [v18 valueForKey:@"identity"];
  v12 = [v19 setWithArray:v20];

LABEL_24:

  return v12;
}

- (BOOL)_linkTouchesInArray:(id)array withIndexes:(id)indexes opposingHandIndexes:(id)handIndexes unassignedIndexes:(id)unassignedIndexes thumb:(id)thumb
{
  arrayCopy = array;
  indexesCopy = indexes;
  handIndexesCopy = handIndexes;
  unassignedIndexesCopy = unassignedIndexes;
  thumbCopy = thumb;
  [(_UIKBRTKeyboardTouchObserver *)self keySize];
  v18 = v17;
  if ([indexesCopy count] >= 2)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    indexSet = [indexesCopy indexSet];
    v20 = [arrayCopy objectsAtIndexes:indexSet];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __102___UIKBRTFingerDetection__linkTouchesInArray_withIndexes_opposingHandIndexes_unassignedIndexes_thumb___block_invoke;
    v43[3] = &unk_1E7118950;
    v43[4] = &v45;
    v43[5] = v44;
    [v20 enumerateObjectsUsingBlock:v43];

    v21 = v46[3];
    v18 = v21 / ([indexesCopy count] - 1);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(&v45, 8);
  }

  if ([indexesCopy count])
  {
    v22 = [arrayCopy objectAtIndex:{objc_msgSend(indexesCopy, "beginningIndex")}];
    [v22 location];
    v24 = v23;
  }

  else if ([unassignedIndexesCopy reversed])
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.79769313e308;
  }

  v25 = [unassignedIndexesCopy count];
  if (v25 + [handIndexesCopy count])
  {
    v28 = [unassignedIndexesCopy count];
    if (v28 + [handIndexesCopy count])
    {
      v29 = 0;
      v30 = v18 * 0.5;
      while ([indexesCopy count] <= 3)
      {
        if ([unassignedIndexesCopy count])
        {
          v31 = [indexesCopy count];
          endingIndex = [unassignedIndexesCopy endingIndex];
          if (v31)
          {
            v33 = [arrayCopy objectAtIndex:endingIndex];
            [v33 location];
            v35 = v34;
            v36 = vabdd_f64(v24, v34);
            if ([indexesCopy count] == 3)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (vabdd_f64(v36, v18) > v30 * v37)
            {
              goto LABEL_34;
            }

            if ([indexesCopy count] != 1)
            {
              v38 = v36 + v18 * ([indexesCopy count] - 1);
              v36 = v38 / [indexesCopy count];
            }

            [indexesCopy addIndex:{objc_msgSend(unassignedIndexesCopy, "endingIndex")}];
            [unassignedIndexesCopy removeIndex:{objc_msgSend(unassignedIndexesCopy, "endingIndex")}];
            if (thumbCopy)
            {
LABEL_34:

              break;
            }

            v18 = v36;
          }

          else
          {
            [indexesCopy addIndex:endingIndex];
            [unassignedIndexesCopy removeIndex:{objc_msgSend(unassignedIndexesCopy, "endingIndex")}];
            v33 = [arrayCopy objectAtIndex:{objc_msgSend(indexesCopy, "beginningIndex")}];
            [v33 location];
            v35 = v39;
          }

          v24 = v35;
        }

        if ([unassignedIndexesCopy count] || !objc_msgSend(handIndexesCopy, "count"))
        {
          if (![unassignedIndexesCopy count])
          {
            break;
          }
        }

        else
        {
          [unassignedIndexesCopy addIndex:{objc_msgSend(handIndexesCopy, "endingIndex")}];
          [handIndexesCopy removeIndex:{objc_msgSend(handIndexesCopy, "endingIndex")}];
          ++v29;
          v30 = v30 * 0.75;
        }

        v40 = [unassignedIndexesCopy count];
        if (!(v40 + [handIndexesCopy count]))
        {
          break;
        }
      }
    }

    else
    {
      v29 = 0;
    }

    v26 = [unassignedIndexesCopy count] < v29;
    if ([unassignedIndexesCopy count] && v29)
    {
      v41 = v29 - 1;
      do
      {
        v42 = v41;
        [handIndexesCopy addIndex:{objc_msgSend(unassignedIndexesCopy, "beginningIndex")}];
        [unassignedIndexesCopy removeIndex:{objc_msgSend(unassignedIndexesCopy, "beginningIndex")}];
        if (![unassignedIndexesCopy count])
        {
          break;
        }

        v41 = v42 - 1;
      }

      while (v42);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_updateTouchInfoFromOutsideInWithArray:(id)array indexes:(id)indexes newIdentityDict:(id)dict fakeIndex:(id)index
{
  v129[5] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  indexesCopy = indexes;
  dictCopy = dict;
  indexCopy = index;
  reversed = [indexesCopy reversed];
  if (reversed)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (reversed)
  {
    v15 = 12;
  }

  else
  {
    v15 = 3;
  }

  v16 = 4;
  if (reversed)
  {
    v16 = 11;
  }

  v104 = v16;
  v105 = v15;
  v17 = 5;
  if (reversed)
  {
    v17 = 10;
  }

  v102 = v17;
  if (reversed)
  {
    v18 = 9;
  }

  else
  {
    v18 = 6;
  }

  if (reversed)
  {
    v19 = 8;
  }

  else
  {
    v19 = 7;
  }

  indexSet = [indexesCopy indexSet];
  v21 = [arrayCopy objectsAtIndexes:indexSet];

  v106 = v18;
  if ([indexesCopy reversed])
  {
    reverseObjectEnumerator = [v21 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v21 = allObjects;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v25 = [dictCopy objectForKey:v24];

  v26 = [dictCopy objectForKey:&unk_1EFE31F90];
  indexSet2 = [indexesCopy indexSet];
  [v26 removeIndexes:indexSet2];

  indexSet3 = [indexesCopy indexSet];
  v107 = v25;
  [v25 addIndexes:indexSet3];

  v108 = indexCopy;
  if ([indexesCopy count] >= 4)
  {
    v103 = arrayCopy;
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
    v129[0] = v29;
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v104];
    v129[1] = v30;
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
    v129[2] = v31;
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v106];
    v129[3] = v32;
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
    v129[4] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:5];

LABEL_64:
    arrayCopy = v103;
    goto LABEL_65;
  }

  if ([indexesCopy count] == 3)
  {
    v103 = arrayCopy;
    v35 = [v21 objectAtIndex:0];
    v30 = [v21 objectAtIndex:1];
    v31 = [v21 objectAtIndex:2];
    v101 = v35;
    if (indexCopy && ([indexCopy unknownSeen] & 1) == 0)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
      v128 = v32;
      v53 = &v128;
    }

    else
    {
      [v31 location];
      v37 = v36;
      [v35 location];
      v39 = vabdd_f64(v37, v38);
      [v30 radius];
      v41 = v40;
      [v31 radius];
      v43 = (v41 + v42) * 0.5;
      [v30 location];
      v45 = v44;
      [v35 location];
      v47 = v45 - v46;
      [v31 location];
      v49 = v48;
      [v35 location];
      v51 = v47 / (v49 - v50);
      if (v39 > v43 * 12.0)
      {
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
        v32 = v52;
        if (v51 > 0.5)
        {
          v126 = v52;
          v53 = &v126;
LABEL_56:
          v73 = v102;
          v68 = v106;
          goto LABEL_57;
        }

        v127 = v52;
        v53 = &v127;
        goto LABEL_41;
      }

      if (v51 < 0.35)
      {
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
        v125 = v32;
        v53 = &v125;
LABEL_41:
        v68 = v106;
        goto LABEL_42;
      }

      if (v51 > 0.65)
      {
        [v31 location];
        v75 = v74;
        [v30 location];
        if (v75 > v76)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
          v124 = v32;
          v53 = &v124;
          goto LABEL_56;
        }
      }

      [v31 location];
      v78 = v77;
      [v30 location];
      v80 = v78 - v79;
      [v30 radius];
      if (v80 > v81 * 5.0)
      {
        [v31 location];
        v83 = v82;
        [v30 location];
        v85 = v83 - v84;
        [v30 location];
        v87 = v86;
        [v35 location];
        if (v85 > (v87 - v88) * 1.5)
        {
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
          v123 = v32;
          v53 = &v123;
          goto LABEL_41;
        }
      }

      [v35 location];
      v90 = v89;
      [v30 location];
      if (v90 <= v91 || ([v35 location], v93 = v92, objc_msgSend(v31, "location"), v93 <= v94))
      {
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v104];
        v121 = v32;
        v53 = &v121;
        goto LABEL_56;
      }

      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
      v122 = v32;
      v53 = &v122;
    }

    v68 = v102;
LABEL_42:
    v73 = v104;
LABEL_57:
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v73];
    v53[1] = v95;
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v68];
    v53[2] = v96;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];

    v29 = v101;
    goto LABEL_64;
  }

  if ([indexesCopy count] == 2)
  {
    v103 = arrayCopy;
    v29 = [v21 objectAtIndex:0];
    v30 = [v21 objectAtIndex:1];
    [v30 radius];
    v55 = v54;
    [v29 radius];
    v57 = v55 + v56;
    [v30 location];
    v59 = v58;
    [v29 location];
    v61 = vabdd_f64(v59, v60) - v57;
    [v29 location];
    v63 = v62;
    [v30 location];
    if (v63 <= v64)
    {
      [v29 location];
      v70 = v69;
      [v30 location];
      v71 = v57 * 1.5;
      if (v70 >= v72)
      {
        if (v61 >= v71)
        {
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v104];
          v115 = v31;
          v66 = &v115;
        }

        else
        {
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
          v114 = v31;
          v66 = &v114;
        }
      }

      else if (v61 >= v71)
      {
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v104];
        v117 = v31;
        v66 = &v117;
      }

      else
      {
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
        v116 = v31;
        v66 = &v116;
      }
    }

    else
    {
      if (v61 < v57 * 2.5)
      {
        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
        v31 = v65;
        if (v61 >= v57 * 1.5)
        {
          v119 = v65;
          v66 = &v119;
          v67 = v102;
        }

        else
        {
          v118 = v65;
          v66 = &v118;
          v67 = v104;
        }

        [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67];
        goto LABEL_63;
      }

      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v105];
      v120 = v31;
      v66 = &v120;
    }

    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v106];
    v32 = LABEL_63:;
    v66[1] = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    goto LABEL_64;
  }

  v34 = 0;
LABEL_65:
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __99___UIKBRTFingerDetection__updateTouchInfoFromOutsideInWithArray_indexes_newIdentityDict_fakeIndex___block_invoke;
  v109[3] = &unk_1E7118978;
  v110 = v34;
  v111 = arrayCopy;
  v112 = dictCopy;
  v113 = v107;
  v97 = v107;
  v98 = dictCopy;
  v99 = arrayCopy;
  v100 = v34;
  [v21 enumerateObjectsUsingBlock:v109];
}

- (void)_updateTouchInfoForFingerID:(unint64_t)d
{
  if ([(NSMutableDictionary *)self->_touches count])
  {
    *&v235.origin.y = self;
    allValues = [(NSMutableDictionary *)self->_touches allValues];
    v6 = [allValues mutableCopy];

    [v6 sortUsingComparator:&__block_literal_global_411];
    v266 = 0;
    v267 = &v266;
    v268 = 0x2020000000;
    v269 = 0;
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_2;
    v265[3] = &unk_1E71189C0;
    v265[4] = &v266;
    [v6 enumerateObjectsUsingBlock:v265];
    v7 = v267[3];
    v8 = v7 / [v6 count];
    v267[3] = 0.0;
    v264[0] = MEMORY[0x1E69E9820];
    v264[1] = 3221225472;
    v264[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_3;
    v264[3] = &unk_1E71189E8;
    *&v264[5] = v8;
    v264[4] = &v266;
    [v6 enumerateObjectsUsingBlock:v264];
    v9 = v267[3];
    v10 = [v6 count];
    _Block_object_dispose(&v266, 8);
    v11 = objc_alloc_init(MEMORY[0x1E696AC90]);
    y = v235.origin.y;
    rowOffsets = [*&v235.origin.y rowOffsets];
    v14 = [rowOffsets count];
    v15 = v14 - [*&v235.origin.y homeRowOffsetIndex];

    if (v15 < 2)
    {
      if ([v6 count] < 4)
      {
        goto LABEL_10;
      }

      v263[4] = MEMORY[0x1E69E9820];
      v263[5] = 3221225472;
      v263[6] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_5;
      v263[7] = &__block_descriptor_48_e34_B32__0___UIKBRTFingerInfo_8Q16_B24l;
      *&v263[8] = v8;
      *&v263[9] = v9 / v10;
    }

    else
    {
      [*&v235.origin.y fCenter];
      v17 = v16;
      [*&v235.origin.y jCenter];
      v19 = (v17 + v18) * 0.5;
      [*&v235.origin.y keySize];
      v263[10] = MEMORY[0x1E69E9820];
      v263[11] = 3221225472;
      v263[12] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_4;
      v263[13] = &__block_descriptor_40_e34_B32__0___UIKBRTFingerInfo_8Q16_B24l;
      *&v263[14] = v19 + (v15 + -0.5) * v20;
    }

    v21 = [v6 indexesOfObjectsPassingTest:?];

    v11 = v21;
LABEL_10:
    if ([v11 count])
    {
      if ([v11 count] == 1)
      {
        firstIndex = [v11 firstIndex];
        [v6 objectAtIndex:firstIndex];
        v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v23 location];
        v25 = v24;
        if (firstIndex)
        {
          v26 = [v6 objectAtIndex:firstIndex - 1];
          [v26 location];
          v28 = v25 - v27;
        }

        else
        {
          v28 = 1.79769313e308;
        }

        v35 = firstIndex + 1;
        if (v35 >= [v6 count])
        {
          v38 = 1.79769313e308;
        }

        else
        {
          v36 = [v6 objectAtIndex:v35];
          [v36 location];
          v38 = v37 - v25;
        }

        if (v28 == v38)
        {
          [*&v235.origin.y fCenter];
          v28 = vabdd_f64(v25, v39);
          [*&v235.origin.y jCenter];
          v38 = vabdd_f64(v25, v40);
        }

        if (v28 >= v38)
        {
          v41 = 8;
        }

        else
        {
          v41 = 7;
        }

        if (v28 >= v38)
        {
          v29 = v23;
        }

        else
        {
          v29 = 0.0;
        }

        if (v28 >= v38)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = v23;
        }

        [*&v23 setIdentity:v41];
      }

      else
      {
        if ([v11 count] >= 3)
        {
          v266 = 0;
          v267 = &v266;
          v268 = 0x2020000000;
          v269 = 0x7FFFFFFFFFFFFFFFLL;
          v263[0] = 0;
          v263[1] = v263;
          v263[2] = 0x2020000000;
          v263[3] = 0x7FEFFFFFFFFFFFFFLL;
          v262[0] = 0;
          v262[1] = v262;
          v262[2] = 0x2020000000;
          v262[3] = 0x7FFFFFFFFFFFFFFFLL;
          v261[0] = 0;
          v261[1] = v261;
          v261[2] = 0x2020000000;
          v261[3] = 0x7FEFFFFFFFFFFFFFLL;
          [*&v235.origin.y fCenter];
          v32 = v31;
          [*&v235.origin.y jCenter];
          v254[0] = MEMORY[0x1E69E9820];
          v254[1] = 3221225472;
          v254[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_6;
          v254[3] = &unk_1E7118A50;
          v260 = (v32 + v33) * 0.5;
          v255 = v6;
          v256 = v263;
          v257 = v261;
          v258 = v262;
          v259 = &v266;
          [v11 enumerateRangesUsingBlock:v254];
          v253[0] = MEMORY[0x1E69E9820];
          v253[1] = 3221225472;
          v253[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_7;
          v253[3] = &unk_1E7118A78;
          v253[4] = &v266;
          v253[5] = v262;
          v34 = [v11 indexesPassingTest:v253];

          _Block_object_dispose(v261, 8);
          _Block_object_dispose(v262, 8);
          _Block_object_dispose(v263, 8);
          _Block_object_dispose(&v266, 8);
          v11 = v34;
          y = v235.origin.y;
        }

        [v6 objectAtIndex:{objc_msgSend(v11, "firstIndex")}];
        v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [v6 objectAtIndex:{objc_msgSend(v11, "lastIndex")}];
        v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v30 setIdentity:7];
        [*&v29 setIdentity:8];
      }

      [v6 removeObjectsAtIndexes:v11];
    }

    else
    {
      v29 = 0.0;
      v30 = 0.0;
    }

    if ([v6 count] == 8)
    {
      v251[0] = MEMORY[0x1E69E9820];
      v251[1] = 3221225472;
      v251[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_8;
      v251[3] = &unk_1E7118AA0;
      v252 = &unk_1EFE2CE20;
      [v6 enumerateObjectsUsingBlock:v251];
      v42 = *(*&y + 128);
      *(*&y + 128) = 0;

      v43 = *(*&y + 136);
      *(*&y + 136) = 0;

      v44 = v252;
LABEL_127:

      goto LABEL_128;
    }

    if (![v6 count])
    {
LABEL_128:
      if (v30 == 0.0 || v29 != 0.0)
      {
        if (v30 != 0.0 || v29 == 0.0)
        {
          goto LABEL_141;
        }

        *&v235.size.width = MEMORY[0x1E69E9820];
        *&v235.size.height = 3221225472;
        v236 = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_14;
        v237 = &unk_1E7118B40;
        v196 = &v238;
        v202 = *&v29;
        v238 = v202;
        v203 = [v6 indexOfObjectWithOptions:2 passingTest:&v235.size];
        if (v203 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v199 = [v6 objectAtIndex:v203];
          if (([v199 identity] - 3) <= 3)
          {
            v200 = v202;
            v201 = 7;
            goto LABEL_138;
          }

LABEL_139:
        }
      }

      else
      {
        v239[0] = MEMORY[0x1E69E9820];
        v239[1] = 3221225472;
        v239[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_13;
        v239[3] = &unk_1E7118B40;
        v196 = &v240;
        v197 = *&v30;
        v240 = v197;
        v198 = [v6 indexOfObjectPassingTest:v239];
        if (v198 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v199 = [v6 objectAtIndex:v198];
          if (([v199 identity] - 9) <= 3)
          {
            v200 = v197;
            v201 = 8;
LABEL_138:
            [v200 setIdentity:v201];
            goto LABEL_139;
          }

          goto LABEL_139;
        }
      }

LABEL_141:
      [*&y _updateFingerFeedback];

      return;
    }

    rect1_24 = d;
    v234 = v30;
    v44 = objc_alloc_init(_UIKBRTMutableOrderIndexSet);
    v45 = objc_alloc_init(_UIKBRTMutableOrderIndexSet);
    v233 = v11;
    if ([v11 count])
    {
      v246[0] = MEMORY[0x1E69E9820];
      v246[1] = 3221225472;
      v246[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_9;
      v246[3] = &unk_1E7118978;
      v46 = &v247;
      v247 = *&v30;
      v47 = &v248;
      v248 = v44;
      v249 = *&v29;
      v250 = v45;
      [v6 enumerateObjectsUsingBlock:v246];
    }

    else
    {
      [*&y fCenter];
      v49 = v48;
      [*&y keySize];
      v51 = v49 + v50 * 0.5;
      [*&y jCenter];
      v53 = v52;
      [*&y keySize];
      v55 = v53 - v54 * 0.5;
      v243[0] = MEMORY[0x1E69E9820];
      v243[1] = 3221225472;
      v243[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_10;
      v243[3] = &unk_1E7118AC8;
      *&v245[1] = v51;
      v46 = &v244;
      v244 = v44;
      *&v245[2] = v55;
      v47 = v245;
      v245[0] = v45;
      [v6 enumerateObjectsUsingBlock:v243];
    }

    if ([(_UIKBRTMutableOrderIndexSet *)v44 count]>= 5)
    {
      do
      {
        [(_UIKBRTMutableOrderIndexSet *)v44 removeIndex:[(_UIKBRTMutableOrderIndexSet *)v44 highestIndex]];
      }

      while ([(_UIKBRTMutableOrderIndexSet *)v44 count]> 4);
    }

    v235.origin.x = v29;
    if ([(_UIKBRTMutableOrderIndexSet *)v45 count]>= 5)
    {
      do
      {
        [(_UIKBRTMutableOrderIndexSet *)v45 removeIndex:[(_UIKBRTMutableOrderIndexSet *)v45 lowestIndex]];
      }

      while ([(_UIKBRTMutableOrderIndexSet *)v45 count]> 4);
    }

    v56 = -[_UIKBRTMutableOrderIndexSet initWithIndexesInRange:]([_UIKBRTMutableOrderIndexSet alloc], "initWithIndexesInRange:", 0, [v6 count]);
    indexSet = [(_UIKBRTMutableOrderIndexSet *)v44 indexSet];
    [(_UIKBRTMutableOrderIndexSet *)v56 removeIndexes:indexSet];

    indexSet2 = [(_UIKBRTMutableOrderIndexSet *)v45 indexSet];
    [(_UIKBRTMutableOrderIndexSet *)v56 removeIndexes:indexSet2];

    if (![(_UIKBRTMutableOrderIndexSet *)v56 count])
    {
      goto LABEL_83;
    }

    if ([(_UIKBRTMutableOrderIndexSet *)v44 count]&& [(_UIKBRTMutableOrderIndexSet *)v45 count])
    {
      v59 = [(_UIKBRTMutableOrderIndexSet *)v44 count];
      if (v59 <= [(_UIKBRTMutableOrderIndexSet *)v45 count])
      {
        v60 = [(_UIKBRTMutableOrderIndexSet *)v44 count];
        v61 = v44;
        v62 = v45;
        if (v60 == [(_UIKBRTMutableOrderIndexSet *)v45 count])
        {
LABEL_50:
          [*&y fCenter];
          v64 = v63;
          v65 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet lowestIndex](v61, "lowestIndex")}];
          [v65 location];
          v67 = v64 - v66;

          v68 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet highestIndex](v62, "highestIndex")}];
          [v68 location];
          v70 = v69;
          [*&y jCenter];
          v72 = v70 - v71;

          v73 = v67 > v72;
LABEL_55:
          v74 = 0;
          for (i = -1; i <= v74; ++i)
          {
            if (v73)
            {
              [(_UIKBRTMutableOrderIndexSet *)v44 setReversed:1];
              [(_UIKBRTMutableOrderIndexSet *)v56 setReversed:1];
              [(_UIKBRTMutableOrderIndexSet *)v45 setReversed:1];
              v76 = y;
              v77 = v6;
              v78 = v44;
              v79 = v45;
              v80 = v56;
              x = v30;
            }

            else
            {
              [(_UIKBRTMutableOrderIndexSet *)v44 setReversed:0];
              [(_UIKBRTMutableOrderIndexSet *)v56 setReversed:0];
              [(_UIKBRTMutableOrderIndexSet *)v45 setReversed:0];
              v76 = y;
              v77 = v6;
              v78 = v45;
              v79 = v44;
              v80 = v56;
              x = v235.origin.x;
            }

            v82 = [*&v76 _linkTouchesInArray:v77 withIndexes:v78 opposingHandIndexes:v79 unassignedIndexes:v80 thumb:*&x];
            if (![(_UIKBRTMutableOrderIndexSet *)v56 count])
            {
              break;
            }

            if (v82)
            {
              v74 = 1;
            }

            v73 ^= 1u;
          }

          [(_UIKBRTMutableOrderIndexSet *)v44 setReversed:0];
          [(_UIKBRTMutableOrderIndexSet *)v45 setReversed:0];
          [(_UIKBRTMutableOrderIndexSet *)v56 setReversed:0];
          if ([(_UIKBRTMutableOrderIndexSet *)v56 count]>= 2)
          {
            do
            {
              if ([(_UIKBRTMutableOrderIndexSet *)v44 count]>= 4 && [(_UIKBRTMutableOrderIndexSet *)v45 count]> 3)
              {
                break;
              }

              if ([(_UIKBRTMutableOrderIndexSet *)v44 count]<= 3)
              {
                [(_UIKBRTMutableOrderIndexSet *)v44 addIndex:[(_UIKBRTMutableOrderIndexSet *)v56 lowestIndex]];
                [(_UIKBRTMutableOrderIndexSet *)v56 removeIndex:[(_UIKBRTMutableOrderIndexSet *)v56 lowestIndex]];
              }

              if ([(_UIKBRTMutableOrderIndexSet *)v45 count]<= 3)
              {
                [(_UIKBRTMutableOrderIndexSet *)v45 addIndex:[(_UIKBRTMutableOrderIndexSet *)v56 highestIndex]];
                [(_UIKBRTMutableOrderIndexSet *)v56 removeIndex:[(_UIKBRTMutableOrderIndexSet *)v56 highestIndex]];
              }
            }

            while ([(_UIKBRTMutableOrderIndexSet *)v56 count]> 1);
          }

          if ([(_UIKBRTMutableOrderIndexSet *)v56 count]&& ([(_UIKBRTMutableOrderIndexSet *)v44 count]< 4 || [(_UIKBRTMutableOrderIndexSet *)v45 count]<= 3))
          {
            v83 = [(_UIKBRTMutableOrderIndexSet *)v44 count];
            if (v83 > [(_UIKBRTMutableOrderIndexSet *)v45 count]&& [(_UIKBRTMutableOrderIndexSet *)v44 count]< 4 || [(_UIKBRTMutableOrderIndexSet *)v45 count]== 4)
            {
              goto LABEL_77;
            }

            v85 = [(_UIKBRTMutableOrderIndexSet *)v45 count];
            if (v85 > [(_UIKBRTMutableOrderIndexSet *)v44 count]&& [(_UIKBRTMutableOrderIndexSet *)v45 count]< 4 || [(_UIKBRTMutableOrderIndexSet *)v44 count]== 4)
            {
              goto LABEL_81;
            }

            if ([(_UIKBRTMutableOrderIndexSet *)v44 count]&& [(_UIKBRTMutableOrderIndexSet *)v45 count])
            {
              v204 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet lowestIndex](v56, "lowestIndex")}];
              [v204 location];
              v206 = v205;
              v207 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet highestIndex](v44, "highestIndex")}];
              [v207 location];
              v209 = v206 - v208;

              v210 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet lowestIndex](v45, "lowestIndex")}];
              [v210 location];
              v212 = v211;
              v213 = [v6 objectAtIndex:{-[_UIKBRTMutableOrderIndexSet highestIndex](v56, "highestIndex")}];
              [v213 location];
              v215 = v212 - v214;

              if (v209 > v215)
              {
LABEL_77:
                [(_UIKBRTMutableOrderIndexSet *)v44 addIndex:[(_UIKBRTMutableOrderIndexSet *)v56 lowestIndex]];
                lowestIndex = [(_UIKBRTMutableOrderIndexSet *)v56 lowestIndex];
LABEL_82:
                [(_UIKBRTMutableOrderIndexSet *)v56 removeIndex:lowestIndex];
                goto LABEL_83;
              }

              if (v209 >= v215)
              {
                goto LABEL_83;
              }

LABEL_81:
              [(_UIKBRTMutableOrderIndexSet *)v45 addIndex:[(_UIKBRTMutableOrderIndexSet *)v56 highestIndex]];
              lowestIndex = [(_UIKBRTMutableOrderIndexSet *)v56 highestIndex];
              goto LABEL_82;
            }
          }

LABEL_83:
          v86 = objc_alloc_init(MEMORY[0x1E695DF90]);
          for (j = 0; j != 13; ++j)
          {
            v88 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:j];
            [v86 setObject:v88 forKey:v89];
          }

          v90 = [v86 objectForKey:&unk_1EFE31F90];
          [v90 addIndexesInRange:{0, objc_msgSend(v6, "count")}];

          [(_UIKBRTMutableOrderIndexSet *)v44 setReversed:0];
          y = v235.origin.y;
          [*&v235.origin.y _updateTouchInfoFromOutsideInWithArray:v6 indexes:v44 newIdentityDict:v86 fakeIndex:*(*&v235.origin.y + 128)];
          [(_UIKBRTMutableOrderIndexSet *)v45 setReversed:1];
          [*&y _updateTouchInfoFromOutsideInWithArray:v6 indexes:v45 newIdentityDict:v86 fakeIndex:*(*&y + 136)];
          v91 = [v86 objectForKey:&unk_1EFE31E88];
          rect1_16 = [v91 count];

          v92 = [v86 objectForKey:&unk_1EFE31F18];
          v93 = [v92 count];

          if (rect1_24 == 6)
          {
            v30 = v234;
            v29 = v235.origin.x;
            if ([(_UIKBRTMutableOrderIndexSet *)v44 count]>= 3)
            {
              [v86 removeObjectForKey:&unk_1EFE31E88];
              [v86 removeObjectForKey:&unk_1EFE31EA0];
              [v86 removeObjectForKey:&unk_1EFE31EB8];
              [v86 removeObjectForKey:&unk_1EFE31ED0];
              v94 = &unk_1EFE31E70;
              goto LABEL_91;
            }

LABEL_126:
            v241[0] = MEMORY[0x1E69E9820];
            v241[1] = 3221225472;
            v241[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_11;
            v241[3] = &unk_1E7118B18;
            v242 = v6;
            [v86 enumerateKeysAndObjectsUsingBlock:v241];

            v11 = v233;
            goto LABEL_127;
          }

          rect1_8 = v93;
          v30 = v234;
          v29 = v235.origin.x;
          if (rect1_24 == 9)
          {
            if ([(_UIKBRTMutableOrderIndexSet *)v45 count]>= 3)
            {
              [v86 removeObjectForKey:&unk_1EFE31F18];
              [v86 removeObjectForKey:&unk_1EFE31F30];
              [v86 removeObjectForKey:&unk_1EFE31F48];
              [v86 removeObjectForKey:&unk_1EFE31F60];
              v94 = &unk_1EFE31F00;
LABEL_91:
              [v86 removeObjectForKey:v94];
              goto LABEL_126;
            }

            goto LABEL_126;
          }

          if ([(_UIKBRTMutableOrderIndexSet *)v44 count]!= 3 || rect1_16)
          {
            v96 = *(*&v235.origin.y + 128);
            if (!v96)
            {
LABEL_102:
              if ([(_UIKBRTMutableOrderIndexSet *)v45 count]!= 3 || rect1_8)
              {
                v119 = *(*&v235.origin.y + 136);
                if (!v119)
                {
                  goto LABEL_112;
                }

                *(*&v235.origin.y + 136) = 0;
              }

              else
              {
                indexSet3 = [(_UIKBRTMutableOrderIndexSet *)v45 indexSet];
                v119 = [v6 objectsAtIndexes:indexSet3];

                v120 = [v119 objectAtIndex:0];
                rect1a = [v119 objectAtIndex:1];
                v224 = [v119 objectAtIndex:2];
                v121 = *(*&v235.origin.y + 136);
                if (!v121)
                {
                  v122 = objc_alloc_init(_UIKBRTFakeFingerInfo);
                  v123 = *(*&v235.origin.y + 136);
                  *(*&v235.origin.y + 136) = v122;

                  [*(*&v235.origin.y + 136) setIdentity:9];
                  [*(*&v235.origin.y + 136) setUnknownSeen:1];
                  v121 = *(*&v235.origin.y + 136);
                }

                if ([v121 unknownSeen])
                {
                  [v120 radius];
                  v125 = v124;
                  [rect1a radius];
                  [*(*&v235.origin.y + 136) setRadius:(v125 + v126) * 0.5];
                  [v120 location];
                  v128 = v127;
                  [v120 location];
                  v130 = v129;
                  [rect1a location];
                  v132 = (v130 - v131) * 4.0;
                  [rect1a location];
                  v134 = v133;
                  [v224 location];
                  v136 = v128 + (v132 + v134 - v135) / 5.0;
                  [v224 location];
                  v138 = v137 * 4.0;
                  [rect1a location];
                  v140 = v138 + v139;
                  [v120 location];
                  [*(*&v235.origin.y + 136) setLocation:{v136, (v140 + v141) / 6.0}];
                }
              }

LABEL_112:
              v142 = *(*&v235.origin.y + 128);
              if (v142)
              {
                v143 = *MEMORY[0x1E695F058];
                v144 = *(MEMORY[0x1E695F058] + 8);
                v145 = *(MEMORY[0x1E695F058] + 16);
                v146 = *(MEMORY[0x1E695F058] + 24);
                [v142 location];
                v148 = v147;
                [*(*&v235.origin.y + 128) radius];
                v150 = v148 - v149;
                [*(*&v235.origin.y + 128) location];
                v152 = v151;
                [*(*&v235.origin.y + 128) radius];
                v218 = v152 - v153;
                [*(*&v235.origin.y + 128) radius];
                v155 = v154 + v154;
                [*(*&v235.origin.y + 128) radius];
                v156 = *(*&v235.origin.y + 136);
                v158 = v157 + v157;
                v219 = v146;
                rect2 = v145;
                v222 = v144;
                v225 = v143;
                rect1b = v143;
                v29 = v235.origin.x;
                if (!v156)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                v156 = *(*&v235.origin.y + 136);
                v29 = v235.origin.x;
                if (!v156)
                {
                  goto LABEL_126;
                }

                v144 = *(MEMORY[0x1E695F058] + 8);
                v145 = *(MEMORY[0x1E695F058] + 16);
                v158 = *(MEMORY[0x1E695F058] + 24);
                v150 = *MEMORY[0x1E695F058];
                rect1b = *MEMORY[0x1E695F058];
                v218 = v144;
                v155 = v145;
                v146 = v158;
              }

              v159 = v158;
              [v156 location];
              v161 = v160;
              [*(*&v235.origin.y + 136) radius];
              v225 = v161 - v162;
              [*(*&v235.origin.y + 136) location];
              v164 = v163;
              [*(*&v235.origin.y + 136) radius];
              v222 = v164 - v165;
              [*(*&v235.origin.y + 136) radius];
              rect2 = v166 + v166;
              [*(*&v235.origin.y + 136) radius];
              v158 = v159;
              v219 = v167 + v167;
LABEL_118:
              v235.origin.x = rect1b;
              v168 = v144;
              v216 = v146;
              v217 = v145;
              if (rect1_16)
              {
                v169 = v158;
                v170 = [v86 objectForKey:&unk_1EFE31E88];
                v171 = [v6 objectAtIndex:{objc_msgSend(v170, "firstIndex")}];

                [v171 location];
                v173 = v172;
                [v171 radius];
                v235.origin.x = v173 - v174;
                [v171 location];
                v176 = v175;
                [v171 radius];
                v168 = v176 - v177;
                [v171 radius];
                v217 = v178 + v178;
                [v171 radius];
                v216 = v179 + v179;

                v158 = v169;
              }

              rect1_16a = v168;
              if (rect1_8)
              {
                v180 = v158;
                v181 = [v86 objectForKey:&unk_1EFE31F18];
                v182 = [v6 objectAtIndex:{objc_msgSend(v181, "firstIndex")}];

                [v182 location];
                v184 = v183;
                [v182 radius];
                rect1b = v184 - v185;
                [v182 location];
                v187 = v186;
                [v182 radius];
                v144 = v187 - v188;
                [v182 radius];
                v145 = v189 + v189;
                [v182 radius];
                v146 = v190 + v190;

                v158 = v180;
              }

              v191 = v150;
              v273.size.height = v219;
              v192 = v218;
              v193 = v155;
              v194 = v158;
              v273.origin.y = v222;
              v273.origin.x = v225;
              v273.size.width = rect2;
              if (CGRectIntersectsRect(*(&v158 - 3), v273) || (v271.origin.x = v150, v271.origin.y = v218, v271.size.width = v155, v271.size.height = v194, v274.origin.x = rect1b, v274.origin.y = v144, v274.size.width = v145, v274.size.height = v146, CGRectIntersectsRect(v271, v274)))
              {
                v195 = *(*&v235.origin.y + 128);
                *(*&v235.origin.y + 128) = 0;
              }

              else
              {
                v272.origin.x = v235.origin.x;
                v272.origin.y = rect1_16a;
                v272.size.height = v216;
                v272.size.width = v217;
                v275.origin.y = v222;
                v275.origin.x = v225;
                v275.size.height = v219;
                v275.size.width = rect2;
                if (!CGRectIntersectsRect(v272, v275))
                {
                  goto LABEL_126;
                }

                v195 = *(*&v235.origin.y + 136);
                *(*&v235.origin.y + 136) = 0;
              }

              goto LABEL_126;
            }

            *(*&v235.origin.y + 128) = 0;
          }

          else
          {
            indexSet4 = [(_UIKBRTMutableOrderIndexSet *)v44 indexSet];
            v96 = [v6 objectsAtIndexes:indexSet4];

            v221 = [v96 objectAtIndex:0];
            rect1 = [v96 objectAtIndex:1];
            v223 = [v96 objectAtIndex:2];
            v97 = *(*&v235.origin.y + 128);
            if (!v97)
            {
              v98 = objc_alloc_init(_UIKBRTFakeFingerInfo);
              v99 = *(*&v235.origin.y + 128);
              *(*&v235.origin.y + 128) = v98;

              [*(*&v235.origin.y + 128) setIdentity:6];
              [*(*&v235.origin.y + 128) setUnknownSeen:1];
              v97 = *(*&v235.origin.y + 128);
            }

            if ([v97 unknownSeen])
            {
              [rect1 radius];
              v101 = v100;
              [v223 radius];
              [*(*&v235.origin.y + 128) setRadius:(v101 + v102) * 0.5];
              [v223 location];
              v104 = v103;
              [v223 location];
              v106 = v105;
              [rect1 location];
              v108 = (v106 - v107) * 4.0;
              [rect1 location];
              v110 = v109;
              [v221 location];
              v112 = v104 + (v108 + v110 - v111) / 5.0;
              [v221 location];
              v114 = v113 * 4.0;
              [rect1 location];
              v116 = v114 + v115;
              [v223 location];
              [*(*&v235.origin.y + 128) setLocation:{v112, (v116 + v117) / 6.0}];
            }
          }

          goto LABEL_102;
        }

LABEL_54:
        v73 = 0;
        goto LABEL_55;
      }
    }

    else if (![(_UIKBRTMutableOrderIndexSet *)v44 count])
    {
      v61 = v56;
      v62 = v56;
      if (![(_UIKBRTMutableOrderIndexSet *)v45 count])
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    v73 = 1;
    goto LABEL_55;
  }

  [(_UIKBRTFingerDetection *)self _updateFingerFeedback];
}

- (void)_updateFingerFeedback
{
  v28 = *MEMORY[0x1E69E9840];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v3 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_4;
  }

  v15 = _UIInternalPreference__UIKBRT_FingerDetectionFeedback;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference__UIKBRT_FingerDetectionFeedback)
  {
    goto LABEL_4;
  }

  while (v3 >= v15)
  {
    _UIInternalPreferenceSync(v3, &_UIInternalPreference__UIKBRT_FingerDetectionFeedback, @"_UIKBRT_FingerDetectionFeedback", _UIInternalPreferenceUpdateBool);
    v15 = _UIInternalPreference__UIKBRT_FingerDetectionFeedback;
    if (v3 == _UIInternalPreference__UIKBRT_FingerDetectionFeedback)
    {
      goto LABEL_4;
    }
  }

  if (!byte_1EA95E544)
  {
LABEL_4:
    if (self->_feedbackView)
    {
      v4 = [(NSMapTable *)self->_fingerFeedbackViewMap objectForKey:self->_fakeLeftIndex];
      [(NSMapTable *)self->_fingerFeedbackViewMap removeObjectForKey:self->_fakeLeftIndex];
      [v4 removeFromSuperview];
      v5 = [(NSMapTable *)self->_fingerFeedbackViewMap objectForKey:self->_fakeRightIndex];

      [(NSMapTable *)self->_fingerFeedbackViewMap removeObjectForKey:self->_fakeRightIndex];
      [v5 removeFromSuperview];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      allValues = [(NSMutableDictionary *)self->_touches allValues];
      v7 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          v10 = 0;
          v11 = v5;
          do
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(allValues);
            }

            v12 = *(*(&v23 + 1) + 8 * v10);
            v5 = [(NSMapTable *)self->_fingerFeedbackViewMap objectForKey:v12];

            [(NSMapTable *)self->_fingerFeedbackViewMap removeObjectForKey:v12];
            [v5 removeFromSuperview];
            ++v10;
            v11 = v5;
          }

          while (v8 != v10);
          v8 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v8);
      }

      [(UIView *)self->_feedbackView removeFromSuperview];
      feedbackView = self->_feedbackView;
      self->_feedbackView = 0;

      fingerFeedbackViewMap = self->_fingerFeedbackViewMap;
      self->_fingerFeedbackViewMap = 0;
    }
  }

  else
  {
    if (!self->_feedbackView)
    {
      v16 = [_UIKBRTFingerDetectionView alloc];
      v17 = [(_UIKBRTFingerDetectionView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v18 = self->_feedbackView;
      self->_feedbackView = v17;

      [(UIView *)self->_feedbackParentView addSubview:self->_feedbackView];
      v19 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:0];
      v20 = self->_fingerFeedbackViewMap;
      self->_fingerFeedbackViewMap = v19;
    }

    [(UIView *)self->_feedbackParentView bounds];
    [(UIView *)self->_feedbackView setFrame:?];
    [(UIView *)self->_feedbackParentView bringSubviewToFront:self->_feedbackView];
    allValues2 = [(NSMutableDictionary *)self->_touches allValues];
    v22 = [allValues2 mutableCopy];

    if (self->_fakeLeftIndex)
    {
      [v22 addObject:?];
    }

    if (self->_fakeRightIndex)
    {
      [v22 addObject:?];
    }

    [(_UIKBRTFingerDetection *)self _updateFingerFeedback:v22];
  }
}

- (void)_updateFingerFeedback:(id)feedback
{
  v39 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  subviews = [(UIView *)self->_feedbackView subviews];
  v6 = [subviews mutableCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = feedbackCopy;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [(NSMapTable *)self->_fingerFeedbackViewMap objectForKey:v16];
        if (v17)
        {
          v18 = v17;
          [v6 removeObject:v17];
        }

        else
        {
          v18 = [[_UIKBRTFingerDetectionFingerFeedbackView alloc] initWithFrame:v11, v12, v13, v14];
          [(UIView *)self->_feedbackView addSubview:v18];
          [(NSMapTable *)self->_fingerFeedbackViewMap setObject:v18 forKey:v16];
        }

        -[_UIKBRTFingerDetectionFingerFeedbackView setUnknownSeen:](v18, "setUnknownSeen:", [v16 unknownSeen]);
        [v16 feedbackAlpha];
        [(UIView *)v18 setAlpha:?];
        [v16 location];
        v20 = v19;
        v22 = v21;
        [v16 radius];
        -[_UIKBRTFingerDetectionFingerFeedbackView centerOn:withRadius:andIdentifier:](v18, "centerOn:withRadius:andIdentifier:", [v16 identity], v20, v22, v23);
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v6;
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v29 + 1) + 8 * j) removeFromSuperview];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v26);
  }
}

@end