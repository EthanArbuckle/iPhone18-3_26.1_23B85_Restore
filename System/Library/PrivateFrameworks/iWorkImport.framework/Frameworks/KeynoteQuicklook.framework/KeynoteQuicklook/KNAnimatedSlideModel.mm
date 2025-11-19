@interface KNAnimatedSlideModel
- (BOOL)info:(id)a3 isVisibleDuringEvent:(int64_t)a4;
- (BOOL)isFirstBuildEventAutomatic;
- (BOOL)p_isEmphasisBuild:(id)a3;
- (BOOL)p_isInfoInvalidWithImplicitAmbientAnimations:(id)a3;
- (BOOL)p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent:(id)a3;
- (Class)p_effectClassForEffect:(id)a3 animationType:(int64_t)a4 hasParentBuild:(BOOL)a5;
- (Class)p_rendererClassForBuildChunk:(id)a3 parentBuild:(id)a4 effectClass:(Class *)a5;
- (Class)p_rendererClassForEffect:(id)a3 animationType:(int64_t)a4 drawable:(id)a5 parentBuild:(id)a6 effectClass:(Class *)a7;
- (KNAnimatedSlideModel)initWithBuildChunks:(id)a3 infos:(id)a4 session:(id)a5 animatedSlideView:(id)a6;
- (KNPlaybackSession)session;
- (double)durationForEventIndexes:(id)a3;
- (double)initialDelayForEventIndex:(unint64_t)a3;
- (double)maxScaleFactorForDrawable:(id)a3;
- (id)actionEffectForDrawable:(id)a3 atBeginningOfEvent:(int64_t)a4;
- (id)animatedBuildForInfo:(id)a3 aroundEvent:(int64_t)a4 isAtEndOfBuild:(BOOL *)a5;
- (id)animatedBuildForInfo:(id)a3 atEvent:(int64_t)a4;
- (id)buildChunksForEventRange:(_NSRange)a3;
- (id)eventsAtIndex:(unint64_t)a3;
- (id)finalActionEffectForDrawable:(id)a3;
- (id)firstAnimatedBuildForInfo:(id)a3;
- (id)lastAnimatedBuildForInfo:(id)a3;
- (id)nextAnimatedBuildForInfo:(id)a3 afterBuild:(id)a4;
- (id)nextRendererAfterRenderer:(id)a3;
- (id)p_animatedBuildForInfo:(id)a3 event:(int64_t)a4 buildIn:(BOOL)a5;
- (id)p_animatedBuildsForInfo:(id)a3 animationType:(int64_t)a4 duringEvent:(int64_t)a5 time:(double)a6;
- (id)p_applyThemeCurvesToBuildAttributes:(id)a3;
- (id)p_createBuildAnimationRecords:(id)a3 info:(id)a4 event:(int64_t)a5 start:(double)a6 eventStart:(double)a7 animateAtEndOfPreviousBuild:(BOOL)a8 previousAnimatedBuild:(id)a9 parentBuild:(id)a10;
- (id)p_getCurrentDocumentRoot;
- (id)p_newImplicitAmbientBuildRendererWithDrawable:(id)a3 stageIndex:(int64_t)a4 buildChunk:(id)a5 startTime:(double)a6 eventStartTime:(double)a7 event:(int64_t)a8 animateAtEndOfPreviousBuild:(BOOL)a9;
- (id)p_newTransition;
- (id)p_previousAnimatedBuildOfType:(int64_t)a3 forInfo:(id)a4 priorToBuild:(id)a5;
- (id)previousAnimatedBuildForInfo:(id)a3 priorToBuild:(id)a4;
- (id)previousRendererBeforeRenderer:(id)a3;
- (id)rendererForAnimatedBuild:(id)a3;
- (id)sortRenderers:(id)a3;
- (id)visibleInfosDuringEvent:(int64_t)a3;
- (int64_t)p_lastEventNumberForInfo:(id)a3 animationType:(int64_t)a4 defaultResult:(int64_t)a5;
- (void)dealloc;
- (void)enumerateAnimatedBuildsAndTimeRangesAtIndex:(unint64_t)a3 ignoreInitialDelay:(BOOL)a4 usingBlock:(id)a5;
- (void)p_addAmbientBuildRenderer:(id)a3;
- (void)p_convertToBuildEvents:(id)a3;
- (void)p_insertInitialAmbientAnimations;
- (void)p_setRenderer:(id)a3 forAnimatedBuild:(id)a4;
- (void)p_sortAnimatedBuilds;
- (void)p_updatePreviousAndFinalAttributes;
- (void)p_updateVisibilityOnAnimatedBuild:(id)a3;
@end

@implementation KNAnimatedSlideModel

- (KNAnimatedSlideModel)initWithBuildChunks:(id)a3 infos:(id)a4 session:(id)a5 animatedSlideView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = KNAnimatedSlideModel;
  v16 = [(KNAnimatedSlideModel *)&v35 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(v11, v14, v15);
    infos = v16->_infos;
    v16->_infos = v17;

    objc_storeWeak(&v16->_ASV, v13);
    objc_storeWeak(&v16->_session, v12);
    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v22 = objc_msgSend_count(v10, v20, v21);
    v24 = objc_msgSend_initWithCapacity_(v19, v23, v22);
    animatedBuilds = v16->_animatedBuilds;
    v16->_animatedBuilds = v24;

    objc_msgSend_p_checkIfSlideIsMetalCapableWithBuildChunks_(v16, v26, v10);
    objc_msgSend_p_convertToBuildEvents_(v16, v27, v10);
    objc_msgSend_p_insertInitialAmbientAnimations(v16, v28, v29);
    if (v12 && v13)
    {
      v32 = objc_msgSend_p_newTransition(v16, v30, v31);
      transitionRenderer = v16->_transitionRenderer;
      v16->_transitionRenderer = v32;
    }

    if (KNAnimationEngineCat_init_token != -1)
    {
      sub_275E5B4E4();
    }
  }

  return v16;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNAnimatedSlideModel;
  [(KNAnimatedSlideModel *)&v2 dealloc];
}

- (id)eventsAtIndex:(unint64_t)a3
{
  if (objc_msgSend_buildEventCount(self, a2, a3) && objc_msgSend_buildEventCount(self, v5, v6) > a3)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v7, a3);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)enumerateAnimatedBuildsAndTimeRangesAtIndex:(unint64_t)a3 ignoreInitialDelay:(BOOL)a4 usingBlock:(id)a5
{
  v5 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (v9)
  {
    v10 = 0.0;
    if (v5)
    {
      objc_msgSend_initialDelayForEventIndex_(self, v8, a3);
      v10 = -v11;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = objc_msgSend_eventsAtIndex_(self, v8, a3);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v39, v43, 16);
    if (v15)
    {
      v16 = *v40;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        if (objc_msgSend_animateAtEndOfPreviousBuild(v18, v13, v14))
        {
          break;
        }

        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        v31 = 0;
        v32 = &v31;
        v33 = 0x2050000000;
        v34 = 0;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v23 = sub_275D9C2F0;
        v24 = &unk_27A698920;
        v25 = self;
        v26 = v18;
        v19 = v9;
        v30 = v10;
        v27 = v19;
        v28 = &v35;
        v29 = &v31;
        v32[3] = v22;
        v23(v22, v18, 0.0);
        v20 = *(v36 + 24);

        _Block_object_dispose(&v31, 8);
        _Block_object_dispose(&v35, 8);
        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v39, v43, 16);
          if (v15)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)info:(id)a3 isVisibleDuringEvent:(int64_t)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    v12 = v9;
    if (v9)
    {
      isEmpty = objc_msgSend_isEmpty(v9, v10, v11);
      if ((objc_msgSend_displaysInstructionalText(v12, v14, v15) & 1) == 0)
      {
        if (!isEmpty)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (!objc_msgSend_displaysInstructionalText(0, v10, v11))
      {
        goto LABEL_21;
      }

      isEmpty = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_session);
    if (WeakRetained)
    {
      v19 = objc_loadWeakRetained(&self->_session);
      shouldShowInstructionalText = objc_msgSend_shouldShowInstructionalText(v19, v20, v21);
    }

    else
    {
      shouldShowInstructionalText = 0;
    }

    if (!isEmpty || (shouldShowInstructionalText & 1) != 0)
    {
      goto LABEL_21;
    }

LABEL_14:
    v25 = objc_msgSend_fill(v12, v16, v17);
    if (!v25 || (objc_msgSend_fill(v12, v23, v24), WeakRetained = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isClear(WeakRetained, v26, v27) & 1) != 0))
    {
      v28 = objc_msgSend_stroke(v12, v23, v24);
      if (!v28)
      {
        if (v25)
        {
        }

        goto LABEL_41;
      }

      v31 = v28;
      v32 = objc_msgSend_stroke(v12, v29, v30);
      isNullStroke = objc_msgSend_isNullStroke(v32, v33, v34);

      if (v25)
      {
      }

      if (isNullStroke)
      {
LABEL_41:
        isVisibleAtBeginning = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
    }

LABEL_21:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:
      objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v36, v8);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v44 = v59 = 0u;
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v56, v60, 16);
      if (v46)
      {
        v49 = v46;
        v50 = *v57;
        isVisibleAtBeginning = 1;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v57 != v50)
            {
              objc_enumerationMutation(v44);
            }

            v52 = *(*(&v56 + 1) + 8 * i);
            if (objc_msgSend_eventIndex(v52, v47, v48, v56) >= a4)
            {
              if (objc_msgSend_eventIndex(v52, v53, v54) >= a4)
              {
                isVisibleAtBeginning = objc_msgSend_isVisibleAtBeginning(v52, v47, v48);
                goto LABEL_38;
              }
            }

            else
            {
              isVisibleAtBeginning = objc_msgSend_isVisibleAtEnd(v52, v53, v54);
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v47, &v56, v60, 16);
          if (v49)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        isVisibleAtBeginning = 1;
      }

LABEL_38:

      goto LABEL_42;
    }

    v37 = objc_loadWeakRetained(&self->_session);
    if (objc_msgSend_isPrintingCanvas(v37, v38, v39))
    {

      goto LABEL_25;
    }

    v40 = objc_loadWeakRetained(&self->_session);
    isExportingToPDF = objc_msgSend_isExportingToPDF(v40, v41, v42);

    if (isExportingToPDF)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  isVisibleAtBeginning = 1;
LABEL_43:

  return isVisibleAtBeginning & 1;
}

- (id)visibleInfosDuringEvent:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_infos(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_info_isVisibleDuringEvent_(self, v11, v15, a3))
        {
          objc_msgSend_addObject_(v5, v11, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v17, v21, 16);
    }

    while (v12);
  }

  return v5;
}

- (int64_t)p_lastEventNumberForInfo:(id)a3 animationType:(int64_t)a4 defaultResult:(int64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, a2, a3);
  v10 = v7;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = objc_msgSend_reverseObjectEnumerator(v7, v8, v9, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v21, v25, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if (objc_msgSend_buildType(v19, v14, v15) == a4)
          {
            a5 = objc_msgSend_eventIndex(v19, v14, v15);
            goto LABEL_12;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v21, v25, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return a5;
}

- (id)buildChunksForEventRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v35 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB58];
  v7 = objc_msgSend_count(self->_animatedBuilds, a2, a3.location);
  v29 = objc_msgSend_setWithCapacity_(v6, v8, v7);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = self->_animatedBuilds;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = objc_msgSend_eventIndex(v17, v12, v13);
        if (v18 >= location && v18 - location < length)
        {
          v20 = objc_msgSend_rendererForAnimatedBuild_(self, v12, v17);
          v23 = objc_msgSend_buildStage(v20, v21, v22);
          v26 = objc_msgSend_buildStage(v20, v24, v25);

          if (v26)
          {
            objc_msgSend_addObject_(v29, v27, v23);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v30, v34, 16);
    }

    while (v14);
  }

  return v29;
}

- (double)durationForEventIndexes:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = objc_msgSend_animatedBuilds(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v33, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v30;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = objc_msgSend_eventIndex(v18, v10, v11);
        if (objc_msgSend_containsIndex_(v4, v20, v19))
        {
          objc_msgSend_eventStartTime(v18, v10, v11);
          v24 = v23;
          if (v13)
          {
            if (v23 < v16)
            {
              v16 = v23;
            }

            objc_msgSend_eventEndTime(v18, v21, v22);
            if (v25 >= v15)
            {
              v15 = v25;
            }

            v13 = 1;
          }

          else
          {
            objc_msgSend_eventEndTime(v18, v21, v22);
            v15 = v26;
            v13 = 1;
            v16 = v24;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v29, v33, 16);
    }

    while (v12);

    if (v13)
    {
      v27 = v15 - v16;
    }

    else
    {
      v27 = 0.0;
    }
  }

  else
  {

    v27 = 0.0;
  }

  return v27;
}

- (double)initialDelayForEventIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = objc_msgSend_eventsAtIndex_(self, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v17, v21, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v18;
    v10 = INFINITY;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (objc_msgSend_animateAtEndOfPreviousBuild(v12, v6, v7))
      {
        break;
      }

      objc_msgSend_startTime(v12, v13, v14);
      v10 = fmin(v15, v10);
      if (v8 == ++v11)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v17, v21, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = INFINITY;
  }

  result = 0.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return v10;
  }

  return result;
}

- (id)firstAnimatedBuildForInfo:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, a2, a3);
  v6 = objc_msgSend_firstObject(v3, v4, v5);
  v9 = objc_msgSend_parentBuild(v6, v7, v8);

  return v9;
}

- (id)lastAnimatedBuildForInfo:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, a2, a3);
  v6 = objc_msgSend_lastObject(v3, v4, v5);
  v9 = objc_msgSend_parentBuild(v6, v7, v8);

  return v9;
}

- (id)animatedBuildForInfo:(id)a3 aroundEvent:(int64_t)a4 isAtEndOfBuild:(BOOL *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  v12 = objc_msgSend_animatedBuildForInfo_atEvent_(self, v8, v9, a4);
  if (!v12)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v10, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v45, 16);
    v17 = 0;
    if (v12)
    {
      v18 = *v42;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v41 + 1) + 8 * i);
          if (objc_msgSend_eventIndex(v20, v15, v16) >= a4)
          {
            if (objc_msgSend_eventIndex(v20, v21, v22) > a4)
            {
              v12 = v20;
              goto LABEL_22;
            }
          }

          else
          {
            if (!v17)
            {
              v17 = v20;
              continue;
            }

            v23 = objc_msgSend_eventIndex(v20, v21, v22);
            if (v23 == objc_msgSend_eventIndex(v17, v24, v25))
            {
              objc_msgSend_eventEndTime(v20, v26, v27);
              v29 = v28;
              objc_msgSend_eventEndTime(v17, v30, v31);
              if (v29 < v32)
              {
                continue;
              }

              v33 = objc_msgSend_parentBuild(v20, v15, v16);
            }

            else
            {
              v34 = objc_msgSend_eventIndex(v20, v26, v27);
              if (v34 <= objc_msgSend_eventIndex(v17, v35, v36))
              {
                continue;
              }

              v33 = v20;
            }

            v37 = v33;

            v17 = v37;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v41, v45, 16);
      }

      while (v12);
    }

LABEL_22:

    if (!v12)
    {
      v38 = v17;
      v12 = v38;
      if (a5)
      {
        if (v38)
        {
          *a5 = 1;
        }
      }
    }
  }

  v39 = objc_msgSend_parentBuild(v12, v10, v11);

  return v39;
}

- (id)animatedBuildForInfo:(id)a3 atEvent:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_buildEventCount(self, v7, v8) && objc_msgSend_buildEventCount(self, v9, v10) > a4)
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v11, a4);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v31 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v29;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_msgSend_rendererForAnimatedBuild_(self, v15, v19, v28);
          v23 = objc_msgSend_info(v20, v21, v22);

          if (v23 == v6)
          {
            v26 = objc_msgSend_parentBuild(v19, v24, v25);

            goto LABEL_14;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
LABEL_14:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)previousAnimatedBuildForInfo:(id)a3 priorToBuild:(id)a4
{
  v6 = a4;
  v8 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v7, a3);
  v11 = v8;
  if (v8 && (v12 = objc_msgSend_indexOfObject_(v8, v9, v6)) != 0)
  {
    v13 = v12;
    v14 = objc_msgSend_objectAtIndexedSubscript_(v11, v9, v12 - 1);
    if (v14)
    {
      v15 = v13 - 2;
      while (objc_msgSend_isRelatedTo_(v6, v9, v14))
      {
        if (v15 == -1)
        {

          goto LABEL_10;
        }

        v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v9, v15);

        --v15;
        v14 = v16;
        if (!v16)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  v17 = objc_msgSend_parentBuild(v14, v9, v10);

  return v17;
}

- (id)p_previousAnimatedBuildOfType:(int64_t)a3 forInfo:(id)a4 priorToBuild:(id)a5
{
  v8 = a5;
  v10 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v9, a4);
  v12 = v10;
  if (v10 && (v13 = objc_msgSend_indexOfObject_(v10, v11, v8), v13 <= 0x7FFFFFFFFFFFFFFELL))
  {
    v15 = v13;
    while (1)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v14, v15);
      if (objc_msgSend_buildType(v16, v17, v18) == a3)
      {
        break;
      }

      if (v15-- <= 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

- (id)previousRendererBeforeRenderer:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_info(v4, v5, v6);
  v10 = objc_msgSend_animatedBuild(v4, v8, v9);

  v12 = objc_msgSend_previousAnimatedBuildForInfo_priorToBuild_(self, v11, v7, v10);

  if (v12)
  {
    v14 = objc_msgSend_rendererForAnimatedBuild_(self, v13, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)nextAnimatedBuildForInfo:(id)a3 afterBuild:(id)a4
{
  v6 = a4;
  v8 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v7, a3);
  v11 = v8;
  if (v8)
  {
    v12 = 0;
    v15 = objc_msgSend_indexOfObject_(v8, v9, v6) + 1;
    while (v15 < objc_msgSend_count(v11, v13, v14))
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v11, v13, v15);

      ++v15;
      v12 = v16;
      if ((objc_msgSend_isRelatedTo_(v6, v17, v16) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v16 = v12;
LABEL_8:
    objc_msgSend_parentBuild(v16, v13, v14);
  }

  else
  {
    v16 = 0;
    objc_msgSend_parentBuild(0, v9, v10);
  }
  v18 = ;

  return v18;
}

- (id)nextRendererAfterRenderer:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_info(v4, v5, v6);
  v11 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v8, v7);
  if (v11 && (objc_msgSend_animatedBuild(v4, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_indexOfObject_(v11, v13, v12), v12, v14 + 1 < objc_msgSend_count(v11, v15, v16)))
  {
    v18 = objc_msgSend_objectAtIndexedSubscript_(v11, v17, v14 + 1);
    v21 = objc_msgSend_parentBuild(v18, v19, v20);
    v23 = objc_msgSend_rendererForAnimatedBuild_(self, v22, v21);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)sortRenderers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_animatedBuilds;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if ((objc_msgSend_isChildBuild(v19, v14, v15, v24) & 1) == 0)
        {
          v20 = objc_msgSend_rendererForAnimatedBuild_(self, v14, v19);
          if (objc_msgSend_containsObject_(v4, v21, v20))
          {
            objc_msgSend_addObject_(v10, v22, v20);
          }
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
    }

    while (v16);
  }

  return v10;
}

- (id)actionEffectForDrawable:(id)a3 atBeginningOfEvent:(int64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  objc_msgSend_objectForKey_(v7->_infoToArrayOfAnimatedBuildsMap, v8, v6);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v9 = v27 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v13)
  {
    v14 = 0;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_isActionBuild(v17, v11, v12, v26))
        {
          if (objc_msgSend_eventIndex(v17, v11, v12) == a4)
          {
            v21 = objc_msgSend_previousAttributes(v17, v18, v19);
            goto LABEL_14;
          }

          if (objc_msgSend_eventIndex(v17, v18, v19) < a4)
          {
            v20 = v17;

            v14 = v20;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v26, v30, 16);
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_14:

    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = v14 == 0;
    }

    if (!v24)
    {
      v21 = objc_msgSend_finalAttributes(v14, v22, v23);
    }
  }

  else
  {

    v14 = 0;
    v21 = 0;
  }

  objc_sync_exit(v7);

  return v21;
}

- (id)finalActionEffectForDrawable:(id)a3
{
  if (a3)
  {
    buildEvents = self->_buildEvents;
    v5 = a3;
    v8 = objc_msgSend_count(buildEvents, v6, v7);
    v10 = objc_msgSend_actionEffectForDrawable_atBeginningOfEvent_(self, v9, v5, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)maxScaleFactorForDrawable:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, a2, a3);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v23, v27, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v24;
    v10 = *MEMORY[0x277D80110];
    v11 = 1.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (objc_msgSend_isActionBuild(v13, v6, v7))
        {
          v14 = objc_msgSend_finalAttributes(v13, v6, v7);
          objc_opt_class();
          v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v10);
          v17 = TSUCheckedDynamicCast();
          objc_msgSend_floatValue(v17, v18, v19);
          v21 = v20;

          if (v11 < v21)
          {
            v11 = v21;
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v23, v27, 16);
    }

    while (v8);
  }

  else
  {
    v11 = 1.0;
  }

  return v11;
}

- (BOOL)isFirstBuildEventAutomatic
{
  v4 = objc_msgSend_buildEventCount(self, a2, v2);
  if (v4)
  {
    v6 = objc_msgSend_eventsAtIndex_(self, v5, 0);
    v9 = objc_msgSend_firstObject(v6, v7, v8);

    LOBYTE(v6) = objc_msgSend_automatic(v9, v10, v11);
    LOBYTE(v4) = v6;
  }

  return v4;
}

- (id)p_animatedBuildForInfo:(id)a3 event:(int64_t)a4 buildIn:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = 1;
  if (!v5)
  {
    v10 = 2;
  }

  v29 = v10;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v8, a4);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v34, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v31;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = objc_msgSend_rendererForAnimatedBuild_(self, v14, v18);
        v22 = objc_msgSend_info(v19, v20, v21);
        v25 = v22;
        if (v22 == v9)
        {
          v26 = objc_msgSend_buildType(v18, v23, v24);

          if (v26 == v29)
          {
            v27 = v18;

            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v30, v34, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (void)p_sortAnimatedBuilds
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_infoToArrayOfAnimatedBuildsMap;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v6, *(*(&v12 + 1) + 8 * v9), v12);
        objc_msgSend_sortUsingComparator_(v10, v11, &unk_2884D5010);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v7);
  }
}

- (void)p_updatePreviousAndFinalAttributes
{
  v109 = *MEMORY[0x277D85DE8];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = self->_infoToArrayOfAnimatedBuildsMap;
  v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v101, v108, 16);
  if (v84)
  {
    v83 = *v102;
    do
    {
      v4 = 0;
      do
      {
        if (*v102 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v5 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v3, *(*(&v101 + 1) + 8 * v4));
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v6 = v5;
        v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v97, v107, 16);
        v85 = v4;
        v10 = 0;
        if (v88)
        {
          v87 = *v98;
          do
          {
            for (i = 0; i != v88; ++i)
            {
              if (*v98 != v87)
              {
                objc_enumerationMutation(v6);
              }

              v12 = *(*(&v97 + 1) + 8 * i);
              if (objc_msgSend_isActionBuild(v12, v8, v9))
              {
                WeakRetained = objc_loadWeakRetained(&self->_session);
                v17 = objc_msgSend_registry(WeakRetained, v15, v16);
                v20 = objc_msgSend_effectIdentifier(v12, v18, v19);
                v23 = objc_msgSend_buildType(v12, v21, v22);
                v25 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v17, v24, v20, v23);

                v28 = objc_msgSend_animationClass(v25, v26, v27);
                v31 = objc_msgSend_attributes(v12, v29, v30);
                v34 = objc_msgSend_attributes(v31, v32, v33);
                v36 = objc_msgSend_applyActionEffect_toAttributes_(v28, v35, v34, v10);

                v10 = v36;
              }

              objc_msgSend_setFinalAttributes_(v12, v13, v10);
              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v37 = v6;
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v93, v106, 16);
              if (v39)
              {
                v42 = v39;
                v43 = *v94;
LABEL_15:
                v44 = 0;
                while (1)
                {
                  if (*v94 != v43)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v45 = *(*(&v93 + 1) + 8 * v44);
                  if (v45 == v12)
                  {
                    break;
                  }

                  v46 = objc_msgSend_eventIndex(*(*(&v93 + 1) + 8 * v44), v40, v41);
                  if (v46 == objc_msgSend_eventIndex(v12, v47, v48))
                  {
                    objc_msgSend_eventEndTime(v45, v40, v41);
                    v50 = v49;
                    objc_msgSend_eventEndTime(v12, v51, v52);
                    if (v50 == v53)
                    {
                      objc_msgSend_setFinalAttributes_(v45, v40, v10);
                    }
                  }

                  if (v42 == ++v44)
                  {
                    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v93, v106, 16);
                    if (v42)
                    {
                      goto LABEL_15;
                    }

                    break;
                  }
                }
              }
            }

            v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v8, &v97, v107, 16);
          }

          while (v88);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v54 = v6;
        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v89, v105, 16);
        if (v56)
        {
          v59 = v56;
          v60 = *v90;
          do
          {
            for (j = 0; j != v59; ++j)
            {
              if (*v90 != v60)
              {
                objc_enumerationMutation(v54);
              }

              v62 = *(*(&v89 + 1) + 8 * j);
              objc_msgSend_eventStartTime(v62, v57, v58);
              if (v64 != 0.0 || objc_msgSend_eventIndex(v62, v57, v63))
              {
                v65 = objc_msgSend_indexOfObject_(v54, v57, v62);
                if (v65 - 1 >= 0)
                {
                  v66 = v65;
                  while (1)
                  {
                    v67 = objc_msgSend_objectAtIndexedSubscript_(v54, v57, --v66);
                    v70 = objc_msgSend_eventIndex(v67, v68, v69);
                    if (v70 < objc_msgSend_eventIndex(v62, v71, v72))
                    {
                      break;
                    }

                    objc_msgSend_eventEndTime(v67, v73, v74);
                    v76 = v75;
                    objc_msgSend_eventStartTime(v62, v77, v78);
                    if (v76 <= v79)
                    {
                      break;
                    }

                    if (v66 <= 0)
                    {
                      goto LABEL_40;
                    }
                  }

                  v80 = objc_msgSend_finalAttributes(v67, v73, v74);
                  objc_msgSend_setPreviousAttributes_(v62, v81, v80);
                }
              }

LABEL_40:
              ;
            }

            v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v89, v105, 16);
          }

          while (v59);
        }

        v4 = v85 + 1;
      }

      while (v85 + 1 != v84);
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v101, v108, 16);
    }

    while (v84);
  }
}

- (void)p_updateVisibilityOnAnimatedBuild:(id)a3
{
  v133 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = objc_msgSend_rendererForAnimatedBuild_(self, v6, v5);
  v10 = objc_msgSend_info(v7, v8, v9);
  v13 = objc_msgSend_buildStage(v7, v11, v12);
  v16 = objc_msgSend_build(v13, v14, v15);

  objc_opt_class();
  v17 = TSUDynamicCast();
  v20 = v17;
  if (!v17)
  {
    if (!objc_msgSend_displaysInstructionalText(0, v18, v19))
    {
      goto LABEL_16;
    }

    isEmpty = 0;
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_session);
    shouldShowInstructionalText = objc_msgSend_shouldShowInstructionalText(WeakRetained, v27, v28);

    if (!isEmpty || (shouldShowInstructionalText & 1) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  isEmpty = objc_msgSend_isEmpty(v17, v18, v19);
  if (objc_msgSend_displaysInstructionalText(v20, v22, v23))
  {
    goto LABEL_7;
  }

  if (!isEmpty)
  {
    goto LABEL_16;
  }

LABEL_9:
  v31 = objc_msgSend_fill(v20, v24, v25);
  if (!v31 || (objc_msgSend_fill(v20, v29, v30), shouldShowInstructionalText = objc_claimAutoreleasedReturnValue(), (objc_msgSend_isClear(shouldShowInstructionalText, v32, v33) & 1) != 0))
  {
    v34 = objc_msgSend_stroke(v20, v29, v30);
    if (!v34)
    {
      if (v31)
      {
      }

      goto LABEL_17;
    }

    v36 = v34;
    v126 = v16;
    v37 = objc_msgSend_stroke(v20, v24, v35);
    isNullStroke = objc_msgSend_isNullStroke(v37, v38, v39);

    if (v31)
    {
    }

    v16 = v126;
    if (isNullStroke)
    {
LABEL_17:
      objc_msgSend_setIsVisibleAtEnd_(v5, v24, 0);
      objc_msgSend_setIsVisibleAtBeginning_(v5, v42, 0);
LABEL_20:
      objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v43, v10);
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_16:
  if (objc_msgSend_isDriftBuild(v5, v24, v25))
  {
    goto LABEL_17;
  }

  if (objc_msgSend_isImplicitlyVisibleAtBeginning(v5, v24, v41))
  {
LABEL_19:
    objc_msgSend_setIsVisibleAtEnd_(v5, v44, 1);
    objc_msgSend_setIsVisibleAtBeginning_(v5, v46, 1);
    goto LABEL_20;
  }

  if (!objc_msgSend_isMagicChartBuild(v5, v44, v45))
  {
    if (objc_msgSend_isBuildIn(v5, v64, v65))
    {
      v93 = objc_msgSend_stageIndex(v5, v91, v92) > 0;
      objc_msgSend_setIsVisibleAtBeginning_(v5, v94, v93);
      objc_msgSend_setIsVisibleAtEnd_(v5, v95, 1);
      v98 = v16;
      v99 = objc_msgSend_stageIndex(v5, v96, v97);
      v102 = v99 == objc_msgSend_chunkCount(v98, v100, v101) - 1;
      v16 = v98;
    }

    else
    {
      if (!objc_msgSend_isBuildOut(v5, v91, v92))
      {
        goto LABEL_19;
      }

      v104 = v16;
      objc_msgSend_setIsVisibleAtBeginning_(v5, v44, 1);
      objc_msgSend_setIsLastStage_(v5, v105, 0);
      v108 = objc_msgSend_requiresStagesBuildingInReverse(v10, v106, v107);
      v111 = objc_msgSend_stageIndex(v5, v109, v110);
      if (!v108)
      {
        objc_msgSend_setIsVisibleAtEnd_(v5, v112, v111 > 0);
        v123 = objc_msgSend_stageIndex(v5, v121, v122) == 0;
        objc_msgSend_setIsLastStage_(v5, v124, v123);
        v16 = v104;
        goto LABEL_20;
      }

      v114 = v111 < objc_msgSend_chunkCount(v104, v112, v113) - 1;
      objc_msgSend_setIsVisibleAtEnd_(v5, v115, v114);
      v118 = objc_msgSend_stageIndex(v5, v116, v117);
      v102 = v118 == objc_msgSend_chunkCount(v104, v119, v120) - 1;
      v16 = v104;
    }

    if (v102)
    {
      objc_msgSend_setIsLastStage_(v5, v103, 1);
    }

    else
    {
      objc_msgSend_setIsLastStage_(v5, v103, 0);
    }

    goto LABEL_20;
  }

  objc_opt_class();
  TSUCheckedDynamicCast();
  v66 = v10;
  v68 = v67 = v16;
  v71 = objc_msgSend_deliveryStyle(v5, v69, v70);
  isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle = objc_msgSend_isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle_(v68, v72, v71);
  objc_msgSend_setIsVisibleAtBeginning_(v5, v74, isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle);
  objc_msgSend_setIsVisibleAtEnd_(v5, v75, 1);

  v16 = v67;
  v10 = v66;
  objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v76, v66);
  v49 = LABEL_21:;
  if (v49)
  {
    if (((objc_msgSend_isBuildIn(v5, v47, v48) & 1) != 0 || objc_msgSend_isBuildOut(v5, v50, v51)) && !objc_msgSend_stageIndex(v5, v50, v51))
    {
      v125 = v7;
      v127 = v16;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v77 = objc_msgSend_reverseObjectEnumerator(v49, v50, v51);
      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v128, v132, 16);
      if (v79)
      {
        v82 = v79;
        v83 = *v129;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v129 != v83)
            {
              objc_enumerationMutation(v77);
            }

            v85 = *(*(&v128 + 1) + 8 * i);
            if ((objc_msgSend_isActionBuild(v85, v80, v81) & 1) != 0 || objc_msgSend_isContentBuild(v85, v80, v81))
            {
              if (objc_msgSend_isImplicitlyVisibleAtBeginning(v5, v80, v81))
              {
                v88 = 1;
                objc_msgSend_setIsVisibleAtEnd_(v85, v86, 1);
              }

              else
              {
                v88 = objc_msgSend_isBuildIn(v5, v86, v87) ^ 1;
                objc_msgSend_setIsVisibleAtEnd_(v85, v90, v88);
              }

              objc_msgSend_setIsVisibleAtBeginning_(v85, v89, v88);
            }

            else if (v85 != v5)
            {
              goto LABEL_45;
            }
          }

          v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v80, &v128, v132, 16);
        }

        while (v82);
      }

LABEL_45:

      v7 = v125;
      v16 = v127;
    }

    else if ((objc_msgSend_isActionBuild(v5, v50, v51) & 1) != 0 || objc_msgSend_isContentBuild(v5, v52, v53))
    {
      v54 = objc_msgSend_indexOfObject_(v49, v52, v5);
      if (v54)
      {
        objc_msgSend_objectAtIndexedSubscript_(v49, v55, v54 - 1);
        v56 = v10;
        v58 = v57 = v16;
        isVisibleAtEnd = objc_msgSend_isVisibleAtEnd(v58, v59, v60);
        objc_msgSend_setIsVisibleAtEnd_(v5, v62, isVisibleAtEnd);
        objc_msgSend_setIsVisibleAtBeginning_(v5, v63, isVisibleAtEnd);

        v16 = v57;
        v10 = v56;
      }
    }
  }
}

- (BOOL)p_isInfoInvalidWithImplicitAmbientAnimations:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUClassAndProtocolCast();

  if (v4)
  {
    v7 = objc_msgSend_canAddImplicitAmbientAnimations(v4, v5, v6, &unk_288532838) ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)p_animatedBuildsForInfo:(id)a3 animationType:(int64_t)a4 duringEvent:(int64_t)a5 time:(double)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v12 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v11, v10);
  v14 = v12;
  if (v12 && (v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, (v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v26, v30, 16)) != 0))
  {
    v18 = v15;
    v19 = 0;
    v20 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_buildType(v22, v16, v17) == a4 && objc_msgSend_eventIndex(v22, v16, v17) == a5)
        {
          objc_msgSend_eventStartTime(v22, v16, v17);
          if (v23 <= a6)
          {
            objc_msgSend_eventEndTime(v22, v16, v17);
            if (v24 > a6)
            {
              if (!v19)
              {
                v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
              }

              objc_msgSend_addObject_(v19, v16, v22);
            }
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v26, v30, 16);
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)p_isEmphasisBuild:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_build(v4, v5, v6);
  v10 = objc_msgSend_effect(v7, v8, v9);

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v14 = objc_msgSend_registry(WeakRetained, v12, v13);
  v17 = objc_msgSend_build(v4, v15, v16);

  v20 = objc_msgSend_animationType(v17, v18, v19);
  v22 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v14, v21, v10, v20);

  v25 = objc_msgSend_animationClass(v22, v23, v24);
  if (objc_opt_respondsToSelector())
  {
    isEmphasisBuildAnimation = objc_msgSend_isEmphasisBuildAnimation(v25, v26, v27);
  }

  else
  {
    isEmphasisBuildAnimation = 0;
  }

  return isEmphasisBuildAnimation;
}

- (void)p_convertToBuildEvents:(id)a3
{
  v298 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_buildEvents)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNAnimatedSlideModel p_convertToBuildEvents:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 820, 0, "expected nil value for '%{public}s'", "_buildEvents");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_count(v5, v14, v15);
  v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
  buildEvents = self->_buildEvents;
  self->_buildEvents = v18;

  v22 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v20, v21);
  infoToArrayOfAnimatedBuildsMap = self->_infoToArrayOfAnimatedBuildsMap;
  self->_infoToArrayOfAnimatedBuildsMap = v22;

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v267 = objc_msgSend_playMode(WeakRetained, v25, v26);

  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  obj = v5;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v291, v297, 16);
  if (!v28)
  {
    v276 = 0;
    v277 = 0;
    v32 = 0;
    v274 = 0;
    goto LABEL_113;
  }

  v31 = v28;
  v271 = 0;
  v276 = 0;
  v277 = 0;
  v32 = 0;
  v274 = 0;
  v282 = 0;
  v280 = *v292;
  v33 = 0.0;
  v34 = 1;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  do
  {
    v39 = 0;
    v272 = v31;
    do
    {
      if (*v292 != v280)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v291 + 1) + 8 * v39);
      v41 = objc_msgSend_build(v40, v29, v30);
      v44 = objc_msgSend_drawable(v41, v42, v43);
      isInfoInvalidWithImplicitAmbientAnimations = objc_msgSend_p_isInfoInvalidWithImplicitAmbientAnimations_(self, v45, v44);

      if (isInfoInvalidWithImplicitAmbientAnimations)
      {
        goto LABEL_99;
      }

      v47 = objc_msgSend_build(v40, v29, v30);
      v50 = objc_msgSend_attributes(v47, v48, v49);
      v52 = objc_msgSend_valueForAttributeKey_(v50, v51, @"KNBuildAttributesStartOffset");
      v55 = objc_msgSend_integerValue(v52, v53, v54);

      v58 = objc_msgSend_build(v40, v56, v57);
      v61 = objc_msgSend_attributes(v58, v59, v60);
      v63 = objc_msgSend_valueForAttributeKey_(v61, v62, @"KNBuildAttributesEndOffset");
      v66 = objc_msgSend_integerValue(v63, v64, v65);

      if (v55 | v66)
      {
        if (objc_msgSend_indexInBuild(v40, v29, v30) < v55 || (v67 = objc_msgSend_indexInBuild(v40, v29, v30), objc_msgSend_build(v40, v68, v69), v70 = objc_claimAutoreleasedReturnValue(), v73 = v32, v74 = objc_msgSend_chunkCount(v70, v71, v72) - v66, v70, v75 = v67 >= v74, v32 = v73, v75))
        {
          v31 = v272;
          goto LABEL_99;
        }
      }

      isAutomatic = objc_msgSend_isAutomatic(v40, v29, v30);
      v79 = objc_msgSend_build(v40, v77, v78);
      v281 = objc_msgSend_drawable(v79, v80, v81);

      if (((v34 | isAutomatic) & 1) == 0)
      {
        if (v267 == 1)
        {
          v92 = objc_loadWeakRetained(&self->_session);
          objc_msgSend_autoplayBuildDelay(v92, v93, v94);
          v35 = v95;
        }

        else
        {
          objc_msgSend_delay(v40, v82, v83);
          v35 = v102;
        }

        ++v282;

        v100 = 0;
        v271 = 0;
        v101 = 0;
        v32 = 0;
        v96 = v277;
        v37 = v35;
        goto LABEL_90;
      }

      if ((isAutomatic & 1) == 0)
      {
        if (v267 == 1)
        {
          v96 = objc_loadWeakRetained(&self->_session);
          objc_msgSend_autoplayBuildDelay(v96, v97, v98);
          v35 = v99;
          v100 = 0;
          v101 = v277;
          v37 = v99;
          goto LABEL_90;
        }

        v100 = 0;
        v35 = v36;
        v37 = v38;
        v103 = v277;
        goto LABEL_91;
      }

      objc_msgSend_delay(v40, v82, v83);
      v85 = v84;
      v88 = objc_msgSend_referent(v40, v86, v87);
      if (v88 == 1)
      {
        goto LABEL_27;
      }

      if (!v88)
      {
        objc_msgSend_duration(v32, v89, v90);
        if (v85 >= v91)
        {
          objc_msgSend_duration(v32, v89, v90);
          v85 = v85 - v104;
LABEL_27:
          if (!v32)
          {
            v263 = 1;
            v37 = v85;
            goto LABEL_37;
          }

          v105 = objc_msgSend_parentBuild(v32, v89, v90);
          v108 = objc_msgSend_build(v276, v106, v107);
          v111 = objc_msgSend_drawable(v108, v109, v110);
          v114 = v111;
          if (v281 == v111 || v32 == v105)
          {
          }

          else
          {
            objc_msgSend_eventEndTime(v105, v112, v113);
            v116 = v115;
            objc_msgSend_eventEndTime(v32, v117, v118);
            v120 = v119;

            if (v116 > v120)
            {
              objc_msgSend_eventEndTime(v105, v121, v122);
              v124 = v123;
              objc_msgSend_eventEndTime(v32, v125, v126);
              v130 = v124 - v129;
              if (v85 < v130)
              {
                objc_msgSend_endTime(v32, v127, v128);
                v263 = 0;
                v37 = v85 + v228;
              }

              else
              {
                v131 = v105;

                v37 = v85 - v130;
                v263 = 1;
                v271 = 1;
                v277 = v131;
              }

              goto LABEL_36;
            }
          }

          v132 = v105;

          v263 = 1;
          v271 = 1;
          v277 = v132;
          v37 = v85;
LABEL_36:

          goto LABEL_37;
        }
      }

      v263 = 0;
      v37 = v37 + v85;
      v33 = v35;
LABEL_37:
      v133 = objc_msgSend_build(v40, v89, v90);
      v269 = objc_msgSend_animationType(v133, v134, v135);

      v138 = objc_msgSend_build(v40, v136, v137);
      v268 = objc_msgSend_animationType(v138, v139, v140);

      v143 = objc_msgSend_build(v40, v141, v142);
      v146 = objc_msgSend_animationType(v143, v144, v145);

      if (v146 == 4)
      {
        isEmphasisBuild = objc_msgSend_p_isEmphasisBuild_(self, v147, v40);
      }

      else
      {
        isEmphasisBuild = 0;
      }

      v35 = v85 + v33;
      v96 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v147, v281);
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v290 = 0u;
      v275 = objc_msgSend_reverseObjectEnumerator(v96, v148, v149);
      v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v150, &v287, v296, 16);
      if (!v279)
      {
        v101 = v277;
        goto LABEL_86;
      }

      v265 = v96;
      v266 = v146;
      v264 = v32;
      v278 = *v288;
      v153 = v35 - v37;
LABEL_42:
      v154 = 0;
      while (1)
      {
        v155 = self;
        if (*v288 != v278)
        {
          objc_enumerationMutation(v275);
        }

        v156 = *(*(&v287 + 1) + 8 * v154);
        if (v282 != objc_msgSend_eventIndex(v156, v151, v152))
        {
          v101 = v277;
          goto LABEL_73;
        }

        v159 = objc_msgSend_effectIdentifier(v156, v157, v158);
        v162 = objc_msgSend_build(v40, v160, v161);
        v165 = objc_msgSend_animationInfo(v162, v163, v164);
        v168 = objc_msgSend_effectIdentifier(v165, v166, v167);
        isEqualToString = objc_msgSend_isEqualToString_(v159, v169, v168);

        self = v155;
        if (objc_msgSend_isActionBuild(v156, v171, v172))
        {
          if (!objc_msgSend_isActionBuild(v156, v151, v152))
          {
            goto LABEL_61;
          }

          if (v269 == 2)
          {
            v173 = 1;
          }

          else
          {
            v173 = isEqualToString;
          }

          if (v268 == 1)
          {
            v173 = 1;
          }

          if (((v173 | isEmphasisBuild) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        objc_msgSend_eventEndTime(v156, v151, v152);
        v175 = v174;
        v178 = objc_msgSend_parentBuild(v156, v176, v177);
        v101 = v178;
        if (v175 >= v35)
        {
          break;
        }

        objc_msgSend_eventEndTime(v178, v179, v180);
        v184 = v183 < v153 || v183 == v153;
        if (!v184 && vabdd_f64(v183, v153) >= 0.0001)
        {
          v185 = objc_msgSend_parentBuild(v156, v181, v182);
          objc_msgSend_eventEndTime(v185, v186, v187);
          if (v188 < v35)
          {
            v189 = v188;

            if (v189 != v35 && vabdd_f64(v189, v35) >= 0.00999999978)
            {
              v101 = objc_msgSend_parentBuild(v156, v151, v152);

              objc_msgSend_eventEndTime(v101, v229, v230);
              v37 = v35 - v231;
              v271 = 1;
LABEL_73:
              v32 = v264;
              goto LABEL_85;
            }

            goto LABEL_61;
          }
        }

LABEL_61:
        if (v279 == ++v154)
        {
          v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v275, v151, &v287, v296, 16);
          v279 = v190;
          if (!v190)
          {
            v101 = v277;
            goto LABEL_73;
          }

          goto LABEL_42;
        }
      }

      if (v269 == 2)
      {
        v193 = 1;
      }

      else
      {
        v193 = isEmphasisBuild;
      }

      if ((v193 & 1) != 0 || v268 == 1)
      {
        v197 = objc_msgSend_parentBuild(v156, v191, v192);
        objc_msgSend_eventEndTime(v197, v198, v199);
        v35 = v200;
      }

      else
      {
        objc_msgSend_eventEndTime(v156, v191, v192);
        v35 = v196;
      }

      v32 = v264;
      if (((v266 == 4) & isEqualToString) != 1 || (objc_msgSend_parentBuild(v156, v194, v195), v201 = objc_claimAutoreleasedReturnValue(), v201, v201 == v156))
      {
        v37 = 0.0;
      }

      v271 = 1;
LABEL_85:
      v96 = v265;
      v146 = v266;
LABEL_86:

      if (self->_isMetalSlide && v146 == 4 && (isEmphasisBuild & 1) == 0)
      {
        v217 = objc_msgSend_p_animatedBuildsForInfo_animationType_duringEvent_time_(self, v202, v281, 4, v282, v35);
        v220 = v217;
        if (v217)
        {
          v221 = objc_msgSend_firstObject(v217, v218, v219);
          v100 = objc_msgSend_parentBuild(v221, v222, v223);
          if (v263)
          {
            v226 = v35;
            if (v32)
            {
              objc_msgSend_endTime(v32, v224, v225);
              v226 = v37 + v227;
            }

            v271 = 0;
            v101 = 0;
            v37 = v226;
          }
        }

        else
        {
          v100 = 0;
        }
      }

      else
      {
        v100 = 0;
      }

LABEL_90:

      v103 = v101;
LABEL_91:
      v277 = v103;
      v203 = objc_msgSend_p_createBuildAnimationRecords_info_event_start_eventStart_animateAtEndOfPreviousBuild_previousAnimatedBuild_parentBuild_(self, v82, v40, v281, v282, v271 & 1, v37, v35);
      v207 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v204, v281);
      if (!v207)
      {
        v207 = objc_msgSend_array(MEMORY[0x277CBEB18], v205, v206);
        objc_msgSend_setObject_forKey_(self->_infoToArrayOfAnimatedBuildsMap, v208, v207, v281);
      }

      objc_msgSend_addObject_(v207, v205, v203);
      objc_msgSend_p_updateVisibilityOnAnimatedBuild_(self, v209, v203);
      v210 = v203;

      v211 = v40;
      if (self->_isMetalSlide)
      {
        objc_msgSend_eventEndTime(v210, v212, v213);
        v33 = v214;
      }

      else
      {
        objc_msgSend_duration(v211, v212, v213);
        v33 = v35 + v215;
      }

      v32 = v210;
      v31 = v272;
      v216 = v274;
      if (v282 > v274)
      {
        v216 = v282;
      }

      v274 = v216;

      v34 = 0;
      v276 = v211;
      v36 = v35;
      v38 = v37;
LABEL_99:
      ++v39;
    }

    while (v39 != v31);
    v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v291, v297, 16);
    v31 = v232;
  }

  while (v232);
LABEL_113:
  v233 = v32;

  objc_msgSend_p_sortAnimatedBuilds(self, v234, v235);
  objc_msgSend_p_updatePreviousAndFinalAttributes(self, v236, v237);
  if (objc_msgSend_count(self->_animatedBuilds, v238, v239) && (v274 & 0x8000000000000000) == 0)
  {
    v241 = v274 + 1;
    do
    {
      v242 = self->_buildEvents;
      v243 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v240, 1);
      objc_msgSend_addObject_(v242, v244, v243);

      --v241;
    }

    while (v241);
  }

  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v245 = self->_animatedBuilds;
  v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v245, v246, &v283, v295, 16);
  if (v247)
  {
    v250 = v247;
    v251 = *v284;
    do
    {
      for (i = 0; i != v250; ++i)
      {
        if (*v284 != v251)
        {
          objc_enumerationMutation(v245);
        }

        v253 = *(*(&v283 + 1) + 8 * i);
        v254 = self->_buildEvents;
        v255 = objc_msgSend_eventIndex(v253, v248, v249);
        v257 = objc_msgSend_objectAtIndexedSubscript_(v254, v256, v255);
        v260 = objc_msgSend_count(v257, v258, v259);
        objc_msgSend_setIndexInEvent_(v253, v261, v260);
        objc_msgSend_addObject_(v257, v262, v253);
      }

      v250 = objc_msgSend_countByEnumeratingWithState_objects_count_(v245, v248, &v283, v295, 16);
    }

    while (v250);
  }
}

- (id)p_newImplicitAmbientBuildRendererWithDrawable:(id)a3 stageIndex:(int64_t)a4 buildChunk:(id)a5 startTime:(double)a6 eventStartTime:(double)a7 event:(int64_t)a8 animateAtEndOfPreviousBuild:(BOOL)a9
{
  v16 = a5;
  v17 = a3;
  v18 = [KNAnimatedBuild alloc];
  v21 = objc_msgSend_build(v16, v19, v20);
  v24 = objc_msgSend_animationInfo(v21, v22, v23);
  v27 = objc_msgSend_effectIdentifier(v24, v25, v26);
  HIBYTE(v37) = a9;
  LOBYTE(v37) = 1;
  started = objc_msgSend_initWithBuildType_effectIdentifier_attributes_pluginClass_deliveryStyle_deliveryOption_eventIndex_stageIndex_startTime_eventStartTime_duration_direction_automatic_animateAtEndOfPreviousBuild_parentBuild_(v18, v28, 1, v27, 0, 0, 0, 1, a6, a7, 0.0, a8, a4, 0, v37, 0);

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v31 = objc_loadWeakRetained(&self->_ASV);
  v33 = objc_msgSend_newImplicitAmbientBuildRendererWithAnimatedBuild_buildChunk_session_animatedSlideView_(v17, v32, started, v16, WeakRetained, v31);

  objc_msgSend_p_setRenderer_forAnimatedBuild_(self, v34, v33, started);
  objc_msgSend_p_addAmbientBuildRenderer_(self, v35, v33);

  return v33;
}

- (id)rendererForAnimatedBuild:(id)a3
{
  if (a3)
  {
    v4 = objc_msgSend_objectForKey_(self->_animatedBuildToRendererMap, a2, a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)p_setRenderer:(id)a3 forAnimatedBuild:(id)a4
{
  v12 = a3;
  v8 = a4;
  animatedBuildToRendererMap = self->_animatedBuildToRendererMap;
  if (!animatedBuildToRendererMap)
  {
    v10 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
    v11 = self->_animatedBuildToRendererMap;
    self->_animatedBuildToRendererMap = v10;

    animatedBuildToRendererMap = self->_animatedBuildToRendererMap;
  }

  objc_msgSend_setObject_forKey_(animatedBuildToRendererMap, v6, v12, v8);
}

- (Class)p_effectClassForEffect:(id)a3 animationType:(int64_t)a4 hasParentBuild:(BOOL)a5
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v11 = objc_msgSend_registry(WeakRetained, v9, v10);
  v13 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(v11, v12, v7, a4);

  v16 = objc_msgSend_animationClass(v13, v14, v15);

  return v16;
}

- (Class)p_rendererClassForBuildChunk:(id)a3 parentBuild:(id)a4 effectClass:(Class *)a5
{
  v8 = a4;
  v11 = objc_msgSend_build(a3, v9, v10);
  v14 = objc_msgSend_effect(v11, v12, v13);
  v17 = objc_msgSend_animationType(v11, v15, v16);
  v20 = objc_msgSend_drawable(v11, v18, v19);
  v22 = objc_msgSend_p_rendererClassForEffect_animationType_drawable_parentBuild_effectClass_(self, v21, v14, v17, v20, v8, a5);

  return v22;
}

- (Class)p_rendererClassForEffect:(id)a3 animationType:(int64_t)a4 drawable:(id)a5 parentBuild:(id)a6 effectClass:(Class *)a7
{
  v11 = a3;
  v12 = objc_opt_class();
  hasParentBuild = objc_msgSend_p_effectClassForEffect_animationType_hasParentBuild_(self, v13, v11, a4, a6 != 0);

  *a7 = hasParentBuild;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v18 = objc_msgSend_animationContext(WeakRetained, v16, v17);
    v20 = objc_msgSend_rendererTypeForAnimationContext_(hasParentBuild, v19, v18);

    v22 = objc_msgSend_conformsToProtocol_(hasParentBuild, v21, &unk_288512818);
    v23 = 4;
    if (v22)
    {
      v23 = 1;
    }

    if (v20 == 4)
    {
      v24 = v23;
    }

    else
    {
      v24 = v20;
    }

    v25 = objc_loadWeakRetained(&self->_session);
    shouldPreferCARenderer = objc_msgSend_shouldPreferCARenderer(v25, v26, v27);

    if ((shouldPreferCARenderer & v22) != 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = v24;
    }

    if (v30 == 4)
    {
      v36 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[KNAnimatedSlideModel p_rendererClassForEffect:animationType:drawable:parentBuild:effectClass:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v38, v32, v34, 1218, 0, "Not expecting metal or motion blur wrapper renderer type for builds");
    }

    else
    {
      if (v30 == 1)
      {
        v12 = objc_opt_class();
        goto LABEL_17;
      }

      if (v30)
      {
        goto LABEL_17;
      }

      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[KNAnimatedSlideModel p_rendererClassForEffect:animationType:drawable:parentBuild:effectClass:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 1209, 0, "Invalid renderer type!");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  }

LABEL_17:

  return v12;
}

- (id)p_createBuildAnimationRecords:(id)a3 info:(id)a4 event:(int64_t)a5 start:(double)a6 eventStart:(double)a7 animateAtEndOfPreviousBuild:(BOOL)a8 previousAnimatedBuild:(id)a9 parentBuild:(id)a10
{
  v155 = a8;
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v20 = a10;
  v23 = objc_msgSend_build(v17, v21, v22);
  v26 = objc_msgSend_animationType(v23, v24, v25);

  v29 = objc_msgSend_indexInBuild(v17, v27, v28);
  if ((objc_msgSend_requiresStagesBuildingInReverse(v18, v30, v31) & 1) == 0 && v26 == 2)
  {
    v34 = objc_msgSend_build(v17, v32, v33);
    v37 = objc_msgSend_chunkCount(v34, v35, v36);
    v29 = v37 + ~objc_msgSend_indexInBuild(v17, v38, v39);
  }

  v157 = v29;
  if ((objc_msgSend_isAutomatic(v17, v32, v33) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v45 = objc_msgSend_playMode(WeakRetained, v43, v44) != 1;

    if (v45 && v29 != 0)
    {
      a7 = 0.0;
      a6 = 0.0;
    }
  }

  hasParentBuild = 0;
  v152 = v20;
  if (v20)
  {
    v46 = objc_msgSend_build(v17, v40, v41);
    v49 = objc_msgSend_effect(v46, v47, v48);

    v52 = objc_msgSend_build(v17, v50, v51);
    v55 = objc_msgSend_animationType(v52, v53, v54);
    hasParentBuild = objc_msgSend_p_effectClassForEffect_animationType_hasParentBuild_(self, v56, v49, v55, 1);

    v147 = 0;
  }

  else
  {
    v147 = objc_msgSend_p_rendererClassForBuildChunk_parentBuild_effectClass_(self, v40, v17, 0, &hasParentBuild);
  }

  v59 = objc_msgSend_build(v17, v57, v58);
  v62 = objc_msgSend_attributes(v59, v60, v61);
  v64 = objc_msgSend_p_applyThemeCurvesToBuildAttributes_(self, v63, v62);
  v67 = objc_msgSend_copy(v64, v65, v66);

  objc_msgSend_duration(v17, v68, v69);
  v71 = v70;
  v72 = hasParentBuild;
  v73 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v72, v74, v73))
  {
    v79 = objc_msgSend_customTextDelivery(v59, v75, v76) == 2 || objc_msgSend_customTextDelivery(v59, v77, v78) == 3;
  }

  else
  {
    v79 = 0;
  }

  v158 = a5;
  v159 = v67;
  v156 = v18;
  v146 = v26;
  if (self->_isMetalSlide)
  {
    v80 = hasParentBuild;
    v81 = objc_opt_class();
    if (!(v79 | ((objc_msgSend_isSubclassOfClass_(v80, v82, v81) & 1) == 0)) || (v83 = hasParentBuild, v84 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v83, v85, v84) & 1) != 0) || v71 < 0.001)
    {
      v86 = objc_loadWeakRetained(&self->_session);
      if (objc_msgSend_isPreview(v86, v87, v88))
      {
        v71 = 0.5;
      }

      else
      {
        v71 = 0.001;
      }
    }
  }

  v148 = self;
  v151 = [KNAnimatedBuild alloc];
  v150 = objc_msgSend_animationType(v59, v89, v90);
  v93 = objc_msgSend_build(v17, v91, v92);
  v96 = objc_msgSend_animationInfo(v93, v94, v95);
  v99 = objc_msgSend_effectIdentifier(v96, v97, v98);
  v149 = hasParentBuild;
  v102 = objc_msgSend_deliveryStyle(v59, v100, v101);
  v154 = v19;
  if (objc_msgSend_supportsCustomTextDelivery(v59, v103, v104))
  {
    v107 = objc_msgSend_customTextDelivery(v59, v105, v106);
  }

  else
  {
    v107 = 0;
  }

  v108 = objc_msgSend_direction(v59, v105, v106);
  HIBYTE(v145) = v155;
  LOBYTE(v145) = objc_msgSend_isAutomatic(v17, v109, v110);
  v144 = v108;
  v111 = v67;
  started = objc_msgSend_initWithBuildType_effectIdentifier_attributes_pluginClass_deliveryStyle_deliveryOption_eventIndex_stageIndex_startTime_eventStartTime_duration_direction_automatic_animateAtEndOfPreviousBuild_parentBuild_(v151, v112, v150, v99, v67, v149, v102, v107, a6, a7, v71, a5, v157, v144, v145, v152);

  if (!v152)
  {
    v153 = v59;
    v114 = [v147 alloc];
    v115 = objc_loadWeakRetained(&v148->_ASV);
    v117 = objc_msgSend_initWithAnimatedBuild_info_buildStage_animatedSlideView_(v114, v116, started, v156, v17, v115);

    objc_msgSend_p_setRenderer_forAnimatedBuild_(v148, v118, v117, started);
    if (v155)
    {
      v121 = objc_msgSend_parentBuild(v154, v119, v120);
      v123 = objc_msgSend_rendererForAnimatedBuild_(v148, v122, v121);

      objc_msgSend_addBuildToStartAtEnd_(v123, v124, started);
    }

    objc_msgSend_addObject_(v148->_animatedBuilds, v119, started);
    v125 = objc_loadWeakRetained(&v148->_session);
    isMetalEnabled = objc_msgSend_isMetalEnabled(v125, v126, v127);

    if (isMetalEnabled)
    {
      goto LABEL_37;
    }

    objc_opt_class();
    v129 = TSUClassAndProtocolCast();
    if (v129 && v146 == 1)
    {
      v130 = objc_loadWeakRetained(&v148->_session);
      if (objc_msgSend_playMode(v130, v131, v132, &unk_288532838) == 2)
      {
LABEL_35:

        goto LABEL_36;
      }

      v133 = objc_loadWeakRetained(&v148->_session);
      v136 = objc_msgSend_playMode(v133, v134, v135);

      if (v136 != 5)
      {
        v130 = objc_msgSend_p_newImplicitAmbientBuildRendererWithDrawable_stageIndex_buildChunk_startTime_eventStartTime_event_animateAtEndOfPreviousBuild_(v148, v137, v129, v157, v17, v158, 1, 0.0, 0.0);
        objc_msgSend_setBuildInRenderer_(v130, v138, v117);
        v141 = objc_msgSend_animatedBuild(v130, v139, v140);
        objc_msgSend_addBuildToStartAtEnd_(v117, v142, v141);

        goto LABEL_35;
      }
    }

LABEL_36:

LABEL_37:
    v59 = v153;
    v111 = v159;
  }

  return started;
}

- (void)p_addAmbientBuildRenderer:(id)a3
{
  v4 = a3;
  ambientBuildRenderers = self->_ambientBuildRenderers;
  v10 = v4;
  if (!ambientBuildRenderers)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = objc_msgSend_initWithCapacity_(v6, v7, 1);
    v9 = self->_ambientBuildRenderers;
    self->_ambientBuildRenderers = v8;

    v4 = v10;
    ambientBuildRenderers = self->_ambientBuildRenderers;
  }

  objc_msgSend_addObject_(ambientBuildRenderers, v4, v4);
}

- (void)p_insertInitialAmbientAnimations
{
  v136 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v4 = self->_infos;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v128, v135, 16);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = *v129;
    v110 = *v129;
    do
    {
      v12 = 0;
      v111 = v8;
      do
      {
        if (*v129 != v11)
        {
          objc_enumerationMutation(v4);
        }

        if ((objc_msgSend_p_isInfoInvalidWithImplicitAmbientAnimations_(self, v7, *(*(&v128 + 1) + 8 * v12), v107) & 1) == 0)
        {
          objc_opt_class();
          v107 = &unk_288532838;
          v14 = TSUClassAndProtocolCast();
          if (v14 && objc_msgSend_p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent_(self, v13, v14, &unk_288532838))
          {
            WeakRetained = objc_loadWeakRetained(&self->_session);
            isMetalEnabled = objc_msgSend_isMetalEnabled(WeakRetained, v16, v17);

            v113 = v10;
            if (isMetalEnabled)
            {
              v21 = objc_msgSend_implicitAmbientAnimationEffectIdentifier(v14, v19, v20);
              v127 = 0;
              v109 = v21;
              v23 = v10;
              v24 = objc_msgSend_p_rendererClassForEffect_animationType_drawable_parentBuild_effectClass_(self, v22, v21, 1, v14, 0, &v127);
              v25 = [KNAnimatedBuild alloc];
              BYTE1(v108) = v23 != 0;
              LOBYTE(v108) = 1;
              started = objc_msgSend_initWithBuildType_effectIdentifier_attributes_pluginClass_deliveryStyle_deliveryOption_eventIndex_stageIndex_startTime_eventStartTime_duration_direction_automatic_animateAtEndOfPreviousBuild_parentBuild_(v25, v26, 1, v21, 0, v127, 0, 1, 0.0, 0.0, 0.0, 0, 0, 0, v108, 0);
              v28 = [v24 alloc];
              v29 = v4;
              v30 = v9;
              v31 = v3;
              v32 = objc_loadWeakRetained(&self->_ASV);
              v34 = objc_msgSend_initWithAnimatedBuild_info_buildStage_animatedSlideView_(v28, v33, started, v14, 0, v32);

              v3 = v31;
              v9 = v30;
              v4 = v29;
            }

            else
            {
              v36 = [KNAnimatedBuild alloc];
              BYTE1(v108) = v10 != 0;
              LOBYTE(v108) = 1;
              started = objc_msgSend_initWithBuildType_effectIdentifier_attributes_pluginClass_deliveryStyle_deliveryOption_eventIndex_stageIndex_startTime_eventStartTime_duration_direction_automatic_animateAtEndOfPreviousBuild_parentBuild_(v36, v37, 1, @"InitialAmbientAnimationStart", 0, 0, 0, 1, 0.0, 0.0, 0.0, 0, 0, 0, v108, 0);
              v38 = objc_loadWeakRetained(&self->_session);
              v39 = objc_loadWeakRetained(&self->_ASV);
              v34 = objc_msgSend_newImplicitAmbientBuildRendererWithAnimatedBuild_buildChunk_session_animatedSlideView_(v14, v40, started, 0, v38, v39);

              objc_msgSend_p_addAmbientBuildRenderer_(self, v41, v34);
            }

            objc_msgSend_p_setRenderer_forAnimatedBuild_(self, v35, v34, started);
            objc_msgSend_setIsInitialAmbientBuild_(started, v42, 1);
            objc_msgSend_addObject_(self->_animatedBuilds, v43, started);
            objc_msgSend_addObject_(v3, v44, started);
            v48 = objc_msgSend_objectForKey_(self->_infoToArrayOfAnimatedBuildsMap, v45, v14);
            if (!v48)
            {
              v48 = objc_msgSend_array(MEMORY[0x277CBEB18], v46, v47);
              objc_msgSend_setObject_forKey_(self->_infoToArrayOfAnimatedBuildsMap, v49, v48, v14);
            }

            objc_msgSend_insertObject_atIndex_(v48, v46, started, 0);
            objc_msgSend_p_updateVisibilityOnAnimatedBuild_(self, v50, started);
            if (v9 && v113)
            {
              objc_msgSend_addBuildToStartAtEnd_(v9, v51, started);
            }

            v10 = v113 + 1;
            v11 = v110;
            v8 = v111;
          }

          else
          {
            v34 = v9;
          }

          v9 = v34;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v128, v135, 16);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (objc_msgSend_count(v3, v52, v53))
  {
    v112 = v9;
    v114 = v3;
    if (objc_msgSend_count(self->_buildEvents, v54, v55) && (objc_msgSend_objectAtIndexedSubscript_(self->_animatedBuilds, v56, 0), v57 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend_automatic(v57, v58, v59), v57, v60))
    {
      v63 = objc_msgSend_lastObject(v114, v61, v62);
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v65 = objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v64, 0);
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v123, v134, 16);
      if (v67)
      {
        v70 = v67;
        v71 = *v124;
LABEL_29:
        v72 = 0;
        while (1)
        {
          if (*v124 != v71)
          {
            objc_enumerationMutation(v65);
          }

          v73 = *(*(&v123 + 1) + 8 * v72);
          if (objc_msgSend_animateAtEndOfPreviousBuild(v73, v68, v69, v107))
          {
            break;
          }

          v75 = objc_msgSend_rendererForAnimatedBuild_(self, v74, v63);
          objc_msgSend_addBuildToStartAtEnd_(v75, v76, v73);

          objc_msgSend_setAnimateAtEndOfPreviousBuild_(v73, v77, 1);
          if (v70 == ++v72)
          {
            v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v123, v134, 16);
            if (v70)
            {
              goto LABEL_29;
            }

            break;
          }
        }
      }

      v79 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v78, v114);
      v81 = objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v80, 0);
      objc_msgSend_addObjectsFromArray_(v79, v82, v81);

      objc_msgSend_setObject_atIndexedSubscript_(self->_buildEvents, v83, v79, 0);
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v85 = self->_buildEvents;
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v119, v133, 16);
      if (v87)
      {
        v88 = v87;
        v89 = *v120;
        do
        {
          for (i = 0; i != v88; ++i)
          {
            if (*v120 != v89)
            {
              objc_enumerationMutation(v85);
            }

            v91 = *(*(&v119 + 1) + 8 * i);
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v92 = v91;
            v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v115, v132, 16);
            if (v94)
            {
              v97 = v94;
              v98 = *v116;
              do
              {
                for (j = 0; j != v97; ++j)
                {
                  if (*v116 != v98)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v100 = *(*(&v115 + 1) + 8 * j);
                  v101 = objc_msgSend_eventIndex(v100, v95, v96, v107);
                  objc_msgSend_setEventIndex_(v100, v102, v101 + 1);
                }

                v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v95, &v115, v132, 16);
              }

              while (v97);
            }
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v103, &v119, v133, 16);
        }

        while (v88);
      }

      objc_msgSend_insertObject_atIndex_(self->_buildEvents, v104, v114, 0);
      self->_numberOfAddedEvents = 1;
    }

    v105 = objc_msgSend_objectAtIndexedSubscript_(self->_buildEvents, v84, 0, v107);
    objc_msgSend_enumerateObjectsUsingBlock_(v105, v106, &unk_2884D5030);

    v9 = v112;
    v3 = v114;
  }
}

- (BOOL)p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_inEventForInfo_(self, v5, v4);
  v8 = objc_msgSend_outEventForInfo_(self, v7, v4);
  v9 = v6 != -3;
  if (v8 == -2)
  {
    v9 = 0;
  }

  if (v6 <= v8)
  {
    v9 = 0;
  }

  v10 = v6 == -3 || v9;

  return v10;
}

- (id)p_getCurrentDocumentRoot
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v6 = objc_msgSend_currentSlideNode(WeakRetained, v4, v5);
  v9 = objc_msgSend_context(v6, v7, v8);
  v12 = objc_msgSend_documentObject(v9, v10, v11);
  v13 = TSUDynamicCast();

  if (!v13)
  {
    v14 = objc_opt_class();
    objc_opt_class();
    infos = self->_infos;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_275DA104C;
    v34[3] = &unk_27A698980;
    v34[4] = v14;
    v17 = objc_msgSend_tsu_firstObjectPassingTest_(infos, v16, v34);
    v18 = TSUDynamicCast();

    objc_opt_class();
    v21 = objc_msgSend_context(v18, v19, v20);
    v24 = objc_msgSend_documentObject(v21, v22, v23);
    v13 = TSUDynamicCast();

    if (!v13)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNAnimatedSlideModel p_getCurrentDocumentRoot]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 1500, 0, "invalid nil value for '%{public}s'", "documentRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
      v13 = 0;
    }
  }

  return v13;
}

- (id)p_applyThemeCurvesToBuildAttributes:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_p_getCurrentDocumentRoot(self, v5, v6);
  objc_opt_class();
  v10 = objc_msgSend_theme(v7, v8, v9);
  v11 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_attributesAdjustedForTheme_(v4, v12, v11);

  return v13;
}

- (id)p_newTransition
{
  v3 = [KNTransitionRenderer alloc];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v6 = objc_loadWeakRetained(&self->_ASV);
  v8 = objc_msgSend_initWithEffectClass_direction_duration_session_attributes_animatedSlideView_(v3, v7, v4, 0, WeakRetained, MEMORY[0x277CBEC10], v6, 0.001);

  return v8;
}

- (KNPlaybackSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end