@interface PVMotionEffectTranscriptionComponent
+ (id)motionEffectPropertyKeyToPublishedParameterNameMap;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration_NoLock:(SEL)a3;
- (BOOL)disableWordFadeOutForPreview;
- (BOOL)isSingleWordTranscription;
- (BOOL)isTranscription;
- (BOOL)shouldDisableWordFadeOut_NoLock:(const void *)a3;
- (BOOL)transcriptionHitTest:(CGPoint)a3 time:(id *)a4;
- (void)clearTranscription;
- (void)computeLoopMarkerBasedOnTranscription_NoLock:(const void *)a3;
- (void)disableWordFadeOutIfNecessary_NoLock:(const void *)a3;
- (void)effect:(id)a3 updateProperties:(id)a4 allProperties:(id)a5;
- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5;
- (void)motionEffect:(id)a3 didLoad:(const void *)a4;
- (void)resetToDefaultTranscriptionForLocaleID:(id)a3;
- (void)setTranscriptionText:(id)a3;
- (void)setupTranscriptionParameters_NoLock:(id)a3 documentInfo:(const void *)a4;
@end

@implementation PVMotionEffectTranscriptionComponent

- (void)setupTranscriptionParameters_NoLock:(id)a3 documentInfo:(const void *)a4
{
  v6 = a3;
  v7 = [(PVMotionEffectComponent *)self motionEffect];
  [v7 assertDocumentIsLocked];

  v8 = [(PVMotionEffectComponent *)self motionEffect];
  [v8 assertDocumentStatusIsLoadedOrReady];

  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v9 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
    v10 = [v6 objectForKeyedSubscript:@"Transcription"];

    if (v10)
    {
      v34.value = 0;
      PCString::set(&v34, @"IsRecording");
      v11 = *a4;
      v12 = [(PVMotionEffectComponent *)self motionEffect];
      OZXSetPublishedCheckBox(v11, &v34, [v12 isRecording]);

      PCString::~PCString(&v34);
      v13 = [v6 objectForKeyedSubscript:@"Transcription"];
      objc_opt_class();
      LOBYTE(v11) = objc_opt_isKindOfClass();

      if (v11)
      {
        v14 = [v6 objectForKeyedSubscript:@"Transcription"];
        v15 = [v14 objectForKeyedSubscript:@"TranscriptionArray"];

        v16 = [v14 objectForKeyedSubscript:@"TranscriptionFormattedString"];
        memset(&v34, 0, sizeof(v34));
        v17 = [v14 objectForKeyedSubscript:@"TranscriptionTime"];
        v18 = v17;
        if (v17)
        {
          [v17 CMTimeValue];
        }

        else
        {
          memset(&v34, 0, sizeof(v34));
        }

        v19 = [v14 objectForKeyedSubscript:@"TranscriptionIsFinal"];
        v20 = [v19 BOOLValue];

        OZXSetTranscription(*a4, v15, v16, &v34, v20);
        if ([(PVMotionEffectTranscriptionComponent *)self isSingleWordTranscription])
        {
          v21 = [v9 objectForKeyedSubscript:@"TranscriptionWordFadeOut"];
          v33.var0 = 0;
          PCString::set(&v33, v21);

          OZXSetPublishedCheckBox(*a4, &v33, v20);
          PCString::~PCString(&v33);
        }
      }

      PCString::PCString(&v34, "TranscriptionLineShift");
      OZXAdjustTranscriptionLineSpacingForCurrentFont(*a4, &v34);
      v32 = 0;
      OZXIsUsingSubstituteFont(*a4, &v32);
      v33.var0 = 0;
      PCString::set(&v33, @"EnableDynamicLineSpacing");
      OZXSetPublishedCheckBox(*a4, &v33, v32);
      PCString::~PCString(&v33);
      PCString::~PCString(&v34);
    }

    v22 = [v6 objectForKeyedSubscript:@"RenderStartOffset"];
    v23 = v22;
    if (v22)
    {
      memset(&v34, 0, sizeof(v34));
      [v22 CMTimeValue];
      OZXSetTranscriptionMediaOffset(*a4, &v34);
    }

    [(PVMotionEffectTranscriptionComponent *)self disableWordFadeOutIfNecessary_NoLock:a4];
    v24 = [v6 objectForKeyedSubscript:@"TranscriptionLocale"];

    if (v24)
    {
      v25 = [v6 objectForKeyedSubscript:@"TranscriptionLocale"];
      OZXSetTranscriptionLocale(*a4, v25);
      v26 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v25];
      v27 = [(PVMotionEffectComponent *)self motionEffect];
      v28 = [v27 textComponent];
      [v28 setIsRightToLeft_NoLock:v26 == 2 documentInfo:a4];
    }

    v29 = [v6 objectForKeyedSubscript:@"LiveTitleFontName"];

    if (v29)
    {
      v30 = [v6 objectForKeyedSubscript:@"LiveTitleFontName"];
      v31 = [v9 objectForKeyedSubscript:@"LiveTitleFontName"];
      v34.value = 0;
      PCString::set(&v34, v31);

      OZXSetPublishedTextFont(*a4, &v34, v30);
      PCString::~PCString(&v34);
    }
  }
}

- (BOOL)isTranscription
{
  isTranscription = self->_isTranscription;
  if (!isTranscription)
  {
    v4 = [(PVMotionEffectComponent *)self motionEffect];
    v5 = [v4 contentRegistryPropertyForKey:@"effectType"];

    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isEqualToString:", @"LiveTitle"}];
      v7 = self->_isTranscription;
      self->_isTranscription = v6;
    }

    else
    {
      v8 = [(PVMotionEffectComponent *)self motionEffect];
      v7 = [v8 effectID];

      if ([v7 isEqualToString:@"6561CB61-577E-403C-A533-81E23A1B9308"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"A0F0CBC6-16F5-4973-B45D-7F15B90F17F8") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"4D82B147-6A27-42E2-AA56-C7CBA653D5B8") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"5645A248-34A3-4654-8CEB-AEE59C6F7BCB") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"58D36D1B-D0F8-4709-BD10-4DCF2CEC9FC3") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"3485E1D8-0A05-4EAF-859B-8930899EC5A8") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"15A33011-A4E4-44E8-9127-1766525161F3") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"A6409851-8835-43BC-BC4B-39B8AC431632") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"AB4E2A80-1B3B-4492-8E66-F655E123B106") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"7CDB9627-80F6-4024-8AE9-C14AE68A42F0") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"DCB06633-5C51-422E-9A10-2C63DF1C8054") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"F8663D3B-D1D6-4DEC-BA5B-016CFD5D1E41") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"7C600E39-6465-4495-8AA4-66935176CAA2") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"CA33687A-1B4E-4519-8CB1-69A4E2E8D74A") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"ED3EDF36-B5A1-42B4-9CAB-78CDB10494CD") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"D2542CC4-A256-493C-9546-81E17145A4A1"))
      {
        v9 = 1;
      }

      else
      {
        v9 = [v7 isEqualToString:@"A4C8F76A-3336-4296-9C54-CA3ACC13ED61"];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v11 = self->_isTranscription;
      self->_isTranscription = v10;
    }

    isTranscription = self->_isTranscription;
  }

  return [(NSNumber *)isTranscription BOOLValue];
}

- (BOOL)isSingleWordTranscription
{
  isSingleWordTranscription = self->_isSingleWordTranscription;
  if (!isSingleWordTranscription)
  {
    v4 = [(PVMotionEffectComponent *)self motionEffect];
    v5 = [v4 contentRegistryPropertyForKey:@"isSingleWordTranscription"];

    if (v5)
    {
      v6 = v5;
      v7 = self->_isSingleWordTranscription;
      self->_isSingleWordTranscription = v6;
    }

    else
    {
      v8 = [(PVMotionEffectComponent *)self motionEffect];
      v7 = [v8 effectID];

      if ([v7 isEqualToString:@"4D82B147-6A27-42E2-AA56-C7CBA653D5B8"])
      {
        v9 = 1;
      }

      else
      {
        v9 = [v7 isEqualToString:@"5645A248-34A3-4654-8CEB-AEE59C6F7BCB"];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v11 = self->_isSingleWordTranscription;
      self->_isSingleWordTranscription = v10;
    }

    isSingleWordTranscription = self->_isSingleWordTranscription;
  }

  return [(NSNumber *)isSingleWordTranscription BOOLValue];
}

- (BOOL)disableWordFadeOutForPreview
{
  disableWordFadeOutForPreview = self->_disableWordFadeOutForPreview;
  if (!disableWordFadeOutForPreview)
  {
    v4 = [(PVMotionEffectComponent *)self motionEffect];
    v5 = [v4 contentRegistryPropertyForKey:@"disableWordFadeOutForPreview"];

    if (v5)
    {
      v6 = v5;
      v7 = self->_disableWordFadeOutForPreview;
      self->_disableWordFadeOutForPreview = v6;
    }

    else
    {
      v8 = [(PVMotionEffectComponent *)self motionEffect];
      v7 = [v8 effectID];

      v9 = [v7 isEqualToString:@"15A33011-A4E4-44E8-9127-1766525161F3"];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      v11 = self->_disableWordFadeOutForPreview;
      self->_disableWordFadeOutForPreview = v10;
    }

    disableWordFadeOutForPreview = self->_disableWordFadeOutForPreview;
  }

  return [(NSNumber *)disableWordFadeOutForPreview BOOLValue];
}

- (void)clearTranscription
{
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v3 = [(PVMotionEffectComponent *)self motionEffect];
    [v3 runEnsuringDocumentReadyAndLockingDocument:&__block_literal_global_12];
  }
}

- (void)resetToDefaultTranscriptionForLocaleID:(id)a3
{
  v4 = a3;
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v5 = [(PVMotionEffectComponent *)self motionEffect];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = *"";
    v6[2] = __79__PVMotionEffectTranscriptionComponent_resetToDefaultTranscriptionForLocaleID___block_invoke;
    v6[3] = &unk_279AA58C0;
    v7 = v4;
    v8 = self;
    [v5 runEnsuringDocumentReadyAndLockingDocument:v6];
  }
}

void __79__PVMotionEffectTranscriptionComponent_resetToDefaultTranscriptionForLocaleID___block_invoke(uint64_t a1, uint64_t *a2)
{
  OZXSetTranscriptionLocale(*a2, *(a1 + 32));
  OZXResetToDefaultTranscription(*a2);
  v4 = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:*(a1 + 32)];
  v6 = [*(a1 + 40) motionEffect];
  v5 = [v6 textComponent];
  [v5 setIsRightToLeft_NoLock:v4 == 2 documentInfo:a2];
}

- (void)setTranscriptionText:(id)a3
{
  v4 = a3;
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v5 = [(PVMotionEffectComponent *)self motionEffect];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = *"";
    v6[2] = __61__PVMotionEffectTranscriptionComponent_setTranscriptionText___block_invoke;
    v6[3] = &unk_279AA5170;
    v7 = v4;
    [v5 runEnsuringDocumentReadyAndLockingDocument:v6];
  }
}

- (BOOL)transcriptionHitTest:(CGPoint)a3 time:(id *)a4
{
  y = a3.y;
  x = a3.x;
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 11;
    v8 = [(PVMotionEffectComponent *)self motionEffect];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = *"";
    v11[2] = __66__PVMotionEffectTranscriptionComponent_transcriptionHitTest_time___block_invoke;
    v11[3] = &unk_279AA6190;
    v12 = *&a4->var0;
    var3 = a4->var3;
    v11[4] = self;
    v11[5] = v14;
    *&v11[7] = x;
    *&v11[8] = y;
    v11[6] = &v16;
    [v8 runEnsuringDocumentReadyAndLockingDocument:v11];

    v9 = *(v17 + 24);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __66__PVMotionEffectTranscriptionComponent_transcriptionHitTest_time___block_invoke(uint64_t a1, void **a2)
{
  v4 = [*(a1 + 32) motionEffect];
  v5 = [v4 timelineComponent];
  v6 = [v5 isForceRenderAtPosterFrameEnabled];

  memset(&v13, 0, sizeof(v13));
  v7 = [*(a1 + 32) motionEffect];
  v8 = [v7 timelineComponent];
  v9 = v8;
  v11 = *(a1 + 72);
  v12 = *(a1 + 88);
  if (v8)
  {
    [v8 timelineTimeFromComponentTime_NoLock:&v11 forcePosterFrame:v6 documentInfo:a2];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  result = OZXTranscriptionHitTest(*a2, *(a1 + 56), &v13, (*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)computeLoopMarkerBasedOnTranscription_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoaded];

  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    if (OZXSetLoopMarkerFromTranscription(*a3))
    {
      NSLog(&cfstr_SCouldNotSetLo.isa, "[PVMotionEffectTranscriptionComponent computeLoopMarkerBasedOnTranscription_NoLock:]");
    }
  }
}

- (void)disableWordFadeOutIfNecessary_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoadedOrReady];

  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v7 = +[PVMotionEffect motionEffectPropertyKeyToPublishedParameterNameMap];
    v8 = [(PVMotionEffectTranscriptionComponent *)self shouldDisableWordFadeOut_NoLock:a3];
    v9 = [v7 objectForKeyedSubscript:@"TranscriptionWordFadeOut"];
    v12.var0 = 0;
    PCString::set(&v12, v9);

    OZXDisableElementWithPublishedParam(*a3, &v12, v8);
    v10 = *a3;
    v11 = [(PVMotionEffectComponent *)self motionEffect];
    OZXTranscriptionSetShouldDisableFadeOut(v10, [v11 shouldDisableFadeOut]);

    PCString::~PCString(&v12);
  }
}

- (BOOL)shouldDisableWordFadeOut_NoLock:(const void *)a3
{
  v5 = [(PVMotionEffectComponent *)self motionEffect];
  [v5 assertDocumentIsLocked];

  v6 = [(PVMotionEffectComponent *)self motionEffect];
  [v6 assertDocumentStatusIsLoadedOrReady];

  if (![(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    return 0;
  }

  v7 = [(PVMotionEffectComponent *)self motionEffect];
  v8 = [v7 shouldDisableFadeOut];

  if (!v8)
  {
    return 0;
  }

  if (![(PVMotionEffectTranscriptionComponent *)self disableWordFadeOutForPreview])
  {
    return 1;
  }

  v10 = 0;
  OZXTranscriptionGetLineCount(*a3, &v10);
  return v10 < 3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = &unk_260C3B1FE;
  v15 = *MEMORY[0x277CC08F0];
  v16 = *(MEMORY[0x277CC08F0] + 16);
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v5 = [(PVMotionEffectComponent *)self motionEffect];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = *"";
    v8[2] = __61__PVMotionEffectTranscriptionComponent_transcriptionDuration__block_invoke;
    v8[3] = &unk_279AA5B80;
    v8[4] = self;
    v8[5] = &v9;
    [v5 runEnsuringDocumentReadyAndLockingDocument:v8];
  }

  v6 = v10;
  *&retstr->var0 = *(v10 + 3);
  retstr->var3 = v6[8];
  _Block_object_dispose(&v9, 8);
  return result;
}

double __61__PVMotionEffectTranscriptionComponent_transcriptionDuration__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 transcriptionDuration_NoLock:a2];
  }

  else
  {
    v6 = 0uLL;
    v7 = 0;
  }

  v4 = *(*(a1 + 40) + 8);
  result = *&v6;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)transcriptionDuration_NoLock:(SEL)a3
{
  *retstr = **&MEMORY[0x277CC08F0];
  result = [(PVMotionEffectTranscriptionComponent *)self isTranscription];
  if (result)
  {
    v7 = *a4;

    OZXGetTranscriptionDuration(v7, retstr);
  }

  return result;
}

- (void)effect:(id)a3 updateProperties:(id)a4 allProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PVMotionEffectTranscriptionComponent;
  [(PVMotionEffectComponent *)&v14 effect:v8 updateProperties:v9 allProperties:v10];
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    v11 = [(PVMotionEffectComponent *)self motionEffect];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = *"";
    v12[2] = __78__PVMotionEffectTranscriptionComponent_effect_updateProperties_allProperties___block_invoke;
    v12[3] = &unk_279AA58C0;
    v12[4] = self;
    v13 = v9;
    [v11 runWithDocument_NoLock:v12];
  }
}

- (void)motionEffect:(id)a3 didLoad:(const void *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PVMotionEffectTranscriptionComponent;
  [(PVMotionEffectComponent *)&v13 motionEffect:v6 didLoad:a4];
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    OZXSetDuration(*a4, MEMORY[0x277CC0888]);
    [(PVMotionEffectTranscriptionComponent *)self computeLoopMarkerBasedOnTranscription_NoLock:a4];
    v11 = 0uLL;
    v12 = 0;
    [(PVMotionEffectTranscriptionComponent *)self transcriptionDuration_NoLock:a4];
    v7 = [(PVMotionEffectComponent *)self motionEffect];
    v8 = [v7 timelineComponent];
    v9 = v11;
    v10 = v12;
    [v8 setLoopTimeOverride_NoLock:&v9];
  }
}

- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10.receiver = self;
  v10.super_class = PVMotionEffectTranscriptionComponent;
  [(PVMotionEffectComponent *)&v10 motionEffect:v8 didBecomeReady:a4 properties:v9];
  if ([(PVMotionEffectTranscriptionComponent *)self isTranscription])
  {
    [(PVMotionEffectTranscriptionComponent *)self setupTranscriptionParameters_NoLock:v9 documentInfo:a4];
  }
}

+ (id)motionEffectPropertyKeyToPublishedParameterNameMap
{
  v9[2] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___PVMotionEffectTranscriptionComponent;
  v2 = objc_msgSendSuper2(&v7, sel_motionEffectPropertyKeyToPublishedParameterNameMap);
  v3 = [v2 mutableCopy];

  v8[0] = @"TranscriptionWordFadeOut";
  v8[1] = @"LiveTitleFontName";
  v9[0] = @"WordFadeOut";
  v9[1] = @"Font";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  if ([v3 count])
  {
    [v3 addEntriesFromDictionary:v4];
    v5 = v3;

    v4 = v5;
  }

  return v4;
}

@end