@interface VKAnalyticsSessionAccumulator
- (NSDictionary)coreAnalyticsDictionary;
- (NSMutableArray)ddEvents;
- (NSMutableArray)interactionEvents;
- (NSMutableArray)mrcEvents;
- (NSMutableArray)quickActionEvents;
- (NSMutableArray)subjectEvents;
- (NSMutableArray)textEvents;
- (NSMutableArray)vsEvents;
- (VKAnalyticsSessionAccumulator)initWithAnalysis:(id)a3 customIdentifier:(id)a4;
- (id)description;
- (void)addEvent:(id)a3;
- (void)calculateAverageSelectedLengthFromTextEvents;
- (void)calculateDidActivateRegex;
- (void)calculateDidHighlightAll;
- (void)close;
@end

@implementation VKAnalyticsSessionAccumulator

- (VKAnalyticsSessionAccumulator)initWithAnalysis:(id)a3 customIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = VKAnalyticsSessionAccumulator;
  v9 = [(VKAnalyticsSessionAccumulator *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analysis, a3);
    v11 = [MEMORY[0x1E695DF00] now];
    sessionOpenDate = v10->_sessionOpenDate;
    v10->_sessionOpenDate = v11;

    if (v8)
    {
      v13 = v8;
      bundleIdentifier = v10->_bundleIdentifier;
      v10->_bundleIdentifier = v13;
    }

    else
    {
      bundleIdentifier = [MEMORY[0x1E696AAE8] mainBundle];
      v15 = [bundleIdentifier bundleIdentifier];
      v16 = v10->_bundleIdentifier;
      v10->_bundleIdentifier = v15;
    }

    v10->_isPerformingAutomatedTest = +[VKCInternalSettings isPerformingAutomatedTest];
  }

  return v10;
}

- (void)addEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 type];
  if (v4 <= 4)
  {
    switch(v4)
    {
      case 2:
        v5 = [(VKAnalyticsSessionAccumulator *)self textEvents];
        v6 = [v8 textEvent];
        break;
      case 3:
        v5 = [(VKAnalyticsSessionAccumulator *)self ddEvents];
        v6 = [v8 ddEvent];
        break;
      case 4:
        v5 = [(VKAnalyticsSessionAccumulator *)self mrcEvents];
        v6 = [v8 mrcEvent];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (v4 > 6)
  {
    if (v4 == 7)
    {
      v5 = [(VKAnalyticsSessionAccumulator *)self subjectEvents];
      v6 = [v8 subjectEvent];
    }

    else
    {
      if (v4 != 8)
      {
        goto LABEL_18;
      }

      v5 = [(VKAnalyticsSessionAccumulator *)self interactionEvents];
      v6 = [v8 interactionEvent];
    }
  }

  else
  {
    if (v4 == 5)
    {
      v5 = [(VKAnalyticsSessionAccumulator *)self quickActionEvents];
      [v8 quickActionEvent];
    }

    else
    {
      v5 = [(VKAnalyticsSessionAccumulator *)self vsEvents];
      [v8 visualSearchEvent];
    }
    v6 = ;
  }

  v7 = v6;
  [v5 addObject:v6];

LABEL_18:
}

- (NSMutableArray)interactionEvents
{
  interactionEvents = self->_interactionEvents;
  if (!interactionEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_interactionEvents;
    self->_interactionEvents = v4;

    interactionEvents = self->_interactionEvents;
  }

  return interactionEvents;
}

- (NSMutableArray)textEvents
{
  textEvents = self->_textEvents;
  if (!textEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_textEvents;
    self->_textEvents = v4;

    textEvents = self->_textEvents;
  }

  return textEvents;
}

- (NSMutableArray)quickActionEvents
{
  quickActionEvents = self->_quickActionEvents;
  if (!quickActionEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_quickActionEvents;
    self->_quickActionEvents = v4;

    quickActionEvents = self->_quickActionEvents;
  }

  return quickActionEvents;
}

- (NSMutableArray)mrcEvents
{
  mrcEvents = self->_mrcEvents;
  if (!mrcEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_mrcEvents;
    self->_mrcEvents = v4;

    mrcEvents = self->_mrcEvents;
  }

  return mrcEvents;
}

- (NSMutableArray)ddEvents
{
  ddEvents = self->_ddEvents;
  if (!ddEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_ddEvents;
    self->_ddEvents = v4;

    ddEvents = self->_ddEvents;
  }

  return ddEvents;
}

- (NSMutableArray)vsEvents
{
  vsEvents = self->_vsEvents;
  if (!vsEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_vsEvents;
    self->_vsEvents = v4;

    vsEvents = self->_vsEvents;
  }

  return vsEvents;
}

- (NSMutableArray)subjectEvents
{
  subjectEvents = self->_subjectEvents;
  if (!subjectEvents)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_subjectEvents;
    self->_subjectEvents = v4;

    subjectEvents = self->_subjectEvents;
  }

  return subjectEvents;
}

- (void)close
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [(VKAnalyticsSessionAccumulator *)self sessionOpenDate];
  [v3 timeIntervalSinceDate:v4];
  [(VKAnalyticsSessionAccumulator *)self setSessionDuration:?];

  v5 = [(VKAnalyticsSessionAccumulator *)self analysis];
  v11 = [v5 imageAnalysisResult];

  [(VKAnalyticsSessionAccumulator *)self setNumberOfDDEvents:[(NSMutableArray *)self->_ddEvents count]];
  [(VKAnalyticsSessionAccumulator *)self setNumberOfVSEvents:[(NSMutableArray *)self->_vsEvents count]];
  [(VKAnalyticsSessionAccumulator *)self setNumberOfTextEvents:[(NSMutableArray *)self->_textEvents count]];
  [(VKAnalyticsSessionAccumulator *)self setNumberOfMRCEvents:[(NSMutableArray *)self->_mrcEvents count]];
  [(VKAnalyticsSessionAccumulator *)self setNumberOfQuickActionEvents:[(NSMutableArray *)self->_quickActionEvents count]];
  [(VKAnalyticsSessionAccumulator *)self setNumberOfSubjectEvents:[(NSMutableArray *)self->_subjectEvents count]];
  v6 = [v11 mrcDataDetectorElements];
  -[VKAnalyticsSessionAccumulator setNumberOfMRCElements:](self, "setNumberOfMRCElements:", [v6 count]);

  v7 = [v11 visualSearchResult];
  v8 = [v7 resultItems];
  -[VKAnalyticsSessionAccumulator setNumberOfVSElements:](self, "setNumberOfVSElements:", [v8 count]);

  v9 = [v11 dataDetectors];
  -[VKAnalyticsSessionAccumulator setNumberOfDDElements:](self, "setNumberOfDDElements:", [v9 count]);

  v10 = [v11 text];
  -[VKAnalyticsSessionAccumulator setTextLength:](self, "setTextLength:", [v10 length]);

  [(VKAnalyticsSessionAccumulator *)self calculateAverageSelectedLengthFromTextEvents];
  [(VKAnalyticsSessionAccumulator *)self calculateDidHighlightAll];
  [(VKAnalyticsSessionAccumulator *)self calculateDidActivateRegex];
}

- (void)calculateAverageSelectedLengthFromTextEvents
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(VKAnalyticsSessionAccumulator *)self textEvents];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__VKAnalyticsSessionAccumulator_calculateAverageSelectedLengthFromTextEvents__block_invoke;
  v6[3] = &unk_1E7BE5968;
  v6[4] = &v11;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  [(VKAnalyticsSessionAccumulator *)self setNumberOfSelectionChanges:v8[3]];
  v4 = v8[3];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v12[3] / v4);
  }

  [(VKAnalyticsSessionAccumulator *)self setAverageTextSelectionLength:v5];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void __77__VKAnalyticsSessionAccumulator_calculateAverageSelectedLengthFromTextEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 eventType])
  {
    *(*(*(a1 + 32) + 8) + 24) += [v3 selectionLength];
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (void)calculateDidHighlightAll
{
  v3 = [(VKAnalyticsSessionAccumulator *)self interactionEvents];
  -[VKAnalyticsSessionAccumulator setDidActivateHighlightAll:](self, "setDidActivateHighlightAll:", [v3 vk_containsObjectPassingTest:&__block_literal_global_14]);
}

- (void)calculateDidActivateRegex
{
  v3 = [(VKAnalyticsSessionAccumulator *)self interactionEvents];
  -[VKAnalyticsSessionAccumulator setDidActivateRegex:](self, "setDidActivateRegex:", [v3 vk_containsObjectPassingTest:&__block_literal_global_199]);
}

- (NSDictionary)coreAnalyticsDictionary
{
  v24[17] = *MEMORY[0x1E69E9840];
  v23[0] = @"numberOfTextEvents";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfTextEvents](self, "numberOfTextEvents")}];
  v24[0] = v22;
  v23[1] = @"numberOfMRCEvents";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfMRCEvents](self, "numberOfMRCEvents")}];
  v24[1] = v21;
  v23[2] = @"numberOfDDEvents";
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfDDEvents](self, "numberOfDDEvents")}];
  v24[2] = v20;
  v23[3] = @"numberOfVSEvents";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfVSEvents](self, "numberOfVSEvents")}];
  v24[3] = v19;
  v23[4] = @"numberOfQuickActionEvents";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfQuickActionEvents](self, "numberOfQuickActionEvents")}];
  v24[4] = v18;
  v23[5] = @"numberOfSubjectEvents";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfSubjectEvents](self, "numberOfSubjectEvents")}];
  v24[5] = v17;
  v23[6] = @"numberOfMRCElements";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfMRCElements](self, "numberOfMRCElements")}];
  v24[6] = v16;
  v23[7] = @"numberOfDDElements";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfDDElements](self, "numberOfDDElements")}];
  v24[7] = v15;
  v23[8] = @"numberOfVSElements";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfVSElements](self, "numberOfVSElements")}];
  v24[8] = v3;
  v23[9] = @"textLength";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator textLength](self, "textLength")}];
  v24[9] = v4;
  v23[10] = @"averageTextSelectionLength";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator averageTextSelectionLength](self, "averageTextSelectionLength")}];
  v24[10] = v5;
  v23[11] = @"numberOfSelectionChanges";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VKAnalyticsSessionAccumulator numberOfSelectionChanges](self, "numberOfSelectionChanges")}];
  v24[11] = v6;
  v23[12] = @"didActivateHighlightAll";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsSessionAccumulator didActivateHighlightAll](self, "didActivateHighlightAll")}];
  v24[12] = v7;
  v23[13] = @"didActivateRegexHighlight";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsSessionAccumulator didActivateRegex](self, "didActivateRegex")}];
  v24[13] = v8;
  v23[14] = @"sessionDuration";
  v9 = MEMORY[0x1E696AD98];
  [(VKAnalyticsSessionAccumulator *)self sessionDuration];
  v10 = [v9 numberWithDouble:?];
  v24[14] = v10;
  v23[15] = @"automatedTest";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsSessionAccumulator isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v24[15] = v11;
  v23[16] = @"bundleIdentifier";
  v12 = [(VKAnalyticsSessionAccumulator *)self bundleIdentifier];
  v24[16] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:17];

  return v13;
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v25.receiver = self;
  v25.super_class = VKAnalyticsSessionAccumulator;
  v23 = [(VKAnalyticsSessionAccumulator *)&v25 description];
  [(VKAnalyticsSessionAccumulator *)self sessionDuration];
  v4 = v3;
  v22 = [(VKAnalyticsSessionAccumulator *)self numberOfTextEvents];
  v21 = [(VKAnalyticsSessionAccumulator *)self numberOfMRCEvents];
  v20 = [(VKAnalyticsSessionAccumulator *)self numberOfDDEvents];
  v19 = [(VKAnalyticsSessionAccumulator *)self numberOfVSEvents];
  v18 = [(VKAnalyticsSessionAccumulator *)self numberOfQuickActionEvents];
  v17 = [(VKAnalyticsSessionAccumulator *)self numberOfSubjectEvents];
  v5 = [(VKAnalyticsSessionAccumulator *)self numberOfMRCElements];
  v6 = [(VKAnalyticsSessionAccumulator *)self numberOfDDElements];
  v7 = [(VKAnalyticsSessionAccumulator *)self numberOfVSElements];
  v8 = [(VKAnalyticsSessionAccumulator *)self textLength];
  v9 = [(VKAnalyticsSessionAccumulator *)self averageTextSelectionLength];
  v10 = [(VKAnalyticsSessionAccumulator *)self numberOfSelectionChanges];
  v11 = VKMUIStringForBool([(VKAnalyticsSessionAccumulator *)self didActivateHighlightAll]);
  v12 = VKMUIStringForBool([(VKAnalyticsSessionAccumulator *)self didActivateRegex]);
  v13 = VKMUIStringForBool([(VKAnalyticsSessionAccumulator *)self isPerformingAutomatedTest]);
  v14 = [(VKAnalyticsSessionAccumulator *)self bundleIdentifier];
  v15 = [v24 stringWithFormat:@"%@ \n sessionDuration: %f seconds\n numberOfTextEvents: %lu \n numberOfMRCEvents: %lu \n numberOfDDEvents: %lu \n numberOfVSEvents: %lu \n numberOfQuickActionEvents: %lu \n numberOfSubjectEvents: %lu \n numberOfMRCElements: %lu \n numberOfDDElements: %lu \n numberOfVSElements: %lu \n textLength: %lu \n averageTextSelectionLength: %lu \n numberOfSelectionChanges: %lu \n didActivateHighlightAll: %@ \n didActivateRegexHighlight: %@ \n automatedTest: %@ \n bundleIdentifier: %@ \n ", v23, v4, v22, v21, v20, v19, v18, v17, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14];

  return v15;
}

@end