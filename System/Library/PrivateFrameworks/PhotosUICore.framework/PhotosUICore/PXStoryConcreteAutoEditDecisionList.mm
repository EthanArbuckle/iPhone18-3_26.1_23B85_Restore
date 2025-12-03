@interface PXStoryConcreteAutoEditDecisionList
- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo;
- (NSString)decisionPapertrail;
- (NSString)diagnosticDescription;
- (PXStoryConcreteAutoEditDecisionList)init;
- (PXStoryConcreteAutoEditDecisionList)initWithColorGradeCategory:(id)category song:(id)song clipCatalog:(id)catalog constrainedOverallDurationInfo:(id *)info outroDuration:(id *)duration allowsNUp:(BOOL)up;
- (id)debugDescription;
- (id)description;
@end

@implementation PXStoryConcreteAutoEditDecisionList

- ($A35046FF140701A0BC97C4369CFAD28C)overallDurationInfo
{
  p_var1 = &self[1].var1;
  if (!self[1].var1.var0.var0)
  {
    selfCopy = self;
    v16 = 0;
    v17 = &v16;
    v18 = 0x6810000000;
    v20 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    v19 = &unk_1A561E057;
    v21 = v6;
    v22 = v20;
    v24 = v20;
    v23 = v6;
    v25 = v6;
    var0 = self->var1.var0.var0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PXStoryConcreteAutoEditDecisionList_overallDurationInfo__block_invoke;
    v15[3] = &unk_1E7743AD0;
    v15[4] = &v16;
    [var0 enumerateClipsUsingBlock:v15];
    v8 = *(v17 + 4);
    v9 = *(v17 + 5);
    v10 = v17[12];
    v12 = *(v17 + 2);
    v11 = *(v17 + 3);
    selfCopy[1].var1.var0.var0 = 1;
    selfCopy[2].var0 = v10;
    *&selfCopy[1].var1.var1.var3 = v8;
    *&selfCopy[1].var1.var2.var1 = v9;
    *&selfCopy[1].var1.var0.var1 = v12;
    *&selfCopy[1].var1.var1.var0 = v11;
    _Block_object_dispose(&v16, 8);
  }

  v13 = *&p_var1->var2.var0;
  *&retstr->var1.var1.var0 = *&p_var1->var1.var1;
  *&retstr->var1.var1.var3 = v13;
  *&retstr->var1.var2.var1 = *&p_var1->var2.var3;
  v14 = *&p_var1->var0.var3;
  *&retstr->var0 = *&p_var1->var0.var0;
  *&retstr->var1.var0.var1 = v14;
  return self;
}

double __58__PXStoryConcreteAutoEditDecisionList_overallDurationInfo__block_invoke(uint64_t a1, void *a2)
{
  v9 = 0u;
  memset(v10, 0, 56);
  if (a2)
  {
    [a2 durationInfo];
  }

  lhs = *(*(*(a1 + 32) + 8) + 32);
  *&rhs.value = v9;
  rhs.epoch = *v10;
  CMTimeAdd(&v8, &lhs, &rhs);
  *(*(*(a1 + 32) + 8) + 32) = v8;
  lhs = *(*(*(a1 + 32) + 8) + 56);
  rhs = *&v10[8];
  CMTimeAdd(&v5, &lhs, &rhs);
  *(*(*(a1 + 32) + 8) + 56) = v5;
  lhs = *(*(*(a1 + 32) + 8) + 80);
  rhs = *&v10[32];
  CMTimeAdd(&v4, &lhs, &rhs);
  result = *&v4.value;
  *(*(*(a1 + 32) + 8) + 80) = v4;
  return result;
}

- (NSString)decisionPapertrail
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__201091;
  v12 = __Block_byref_object_dispose__201092;
  v13 = objc_opt_new();
  [v9[5] appendFormat:@"%@ output\n=================\n", @"Papertrail"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PXStoryConcreteAutoEditDecisionList_decisionPapertrail__block_invoke;
  v5[3] = &unk_1E7743AA8;
  v6 = @"Papertrail";
  v7 = &v8;
  [(PXStoryConcreteAutoEditDecisionList *)self enumerateClipsUsingBlock:v5];
  v3 = [v9[5] copy];

  _Block_object_dispose(&v8, 8);

  return v3;
}

void __57__PXStoryConcreteAutoEditDecisionList_decisionPapertrail__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [a2 debugInfo];
  v6 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  [v5 appendFormat:@"\nClip %d:\n=====\n%@", a3, v6];
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Clip\tStyle\tN\tMin(s)\tPref(s)\tMax(s)\tAudio\tVolume\tJ-Cut\tL-Cut\tFadeIn\tFadeOut\tMotion\tSettings  \tTransition\tDuration\tSettings  \tModule    \tType \n"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXStoryConcreteAutoEditDecisionList_diagnosticDescription__block_invoke;
  v6[3] = &unk_1E7743A80;
  v4 = v3;
  v7 = v4;
  [(PXStoryConcreteAutoEditDecisionList *)self enumerateClipsUsingBlock:v6];

  return v4;
}

void __60__PXStoryConcreteAutoEditDecisionList_diagnosticDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v36 = *(a1 + 32);
  [v4 playbackStyle];
  v40 = PFDisplayAssetPlaybackStyleDescription();
  v39 = [v40 stringByPaddingToLength:5 withString:@" " startingAtIndex:0];
  v38 = [v4 displayAssets];
  v32 = [v38 count];
  if (v4)
  {
    [v4 durationInfo];
    *time = v81;
    *&time[16] = v82;
    Seconds = CMTimeGetSeconds(time);
    [v4 durationInfo];
    *time = *(v79 + 8);
    *&time[16] = *(&v79[1] + 1);
    v5 = CMTimeGetSeconds(time);
    [v4 durationInfo];
    *time = v76;
    *&time[16] = v77;
    v6 = CMTimeGetSeconds(time);
    [v4 audioInfo];
    v7 = v69;
    if (v69 > 3)
    {
      v8 = @"??";
      goto LABEL_6;
    }
  }

  else
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    memset(time, 0, 24);
    Seconds = CMTimeGetSeconds(time);
    v80 = 0;
    v78 = 0u;
    memset(v79, 0, sizeof(v79));
    *time = *(v79 + 8);
    *&time[16] = 0;
    v5 = CMTimeGetSeconds(time);
    v77 = 0;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    memset(time, 0, 24);
    v6 = CMTimeGetSeconds(time);
    v7 = 0;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0;
  }

  v8 = off_1E7740310[v7];
LABEL_6:
  v34 = v8;
  v9 = [(__CFString *)v34 stringByPaddingToLength:5 withString:@" " startingAtIndex:0];
  if (v4)
  {
    [v4 audioInfo];
    v10 = *&v66;
    [v4 audioInfo];
    v11 = *(&v62 + 1);
    [v4 audioInfo];
    v12 = v59;
    [v4 audioInfo];
    v13 = *(&v55 + 1);
    [v4 audioInfo];
    v14 = v52;
    [v4 motionInfo];
    v15 = v10;
  }

  else
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v14 = 0;
    v12 = 0;
    v15 = 0.0;
    v46 = 0;
    v47 = 0;
    v11 = 0;
    v13 = 0;
    v48 = 0;
  }

  v33 = PFStoryRecipeClipMotionStyleDescription();
  v16 = [v33 stringByPaddingToLength:6 withString:@" " startingAtIndex:0];
  if (v4)
  {
    [v4 motionInfo];
  }

  else
  {
    memset(time, 0, 24);
  }

  v31 = PXStoryAutoEditClipMotionSettingsDescription(time);
  v17 = [v31 stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  if (v4)
  {
    [v4 transitionInfo];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v30 = PFStoryRecipeClipTransitionKindDescription();
  v18 = [v30 stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  if (v4)
  {
    [v4 transitionInfo];
    v19 = *(&v42 + 1);
    [v4 transitionInfo];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    memset(time, 0, sizeof(time));
    v19 = 0;
  }

  v29 = PXStoryAutoEditClipTransitionSettingsDescription(time);
  v20 = [v29 stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  v21 = [v4 moduleInfo];
  if (v21 > 3)
  {
    v22 = @"??";
  }

  else
  {
    v22 = off_1E7731FC0[v21];
  }

  v23 = v22;
  v24 = [(__CFString *)v23 stringByPaddingToLength:10 withString:@" " startingAtIndex:0];
  [v4 moduleInfo];
  if (v25)
  {
    v26 = @"start";
  }

  else
  {
    [v4 moduleInfo];
    if ((v27 & 0x100) != 0)
    {
      v26 = @"break";
    }

    else
    {
      v26 = @"--";
    }
  }

  v28 = [(__CFString *)v26 stringByPaddingToLength:5 withString:@" " startingAtIndex:0];
  [v36 appendFormat:@"%4lu\t%@\t%lu\t%6.2f\t%7.2f\t%6.2f\t%@\t%6.2f\t%5.2f\t%5.2f\t%6.2f\t%7.2f\t%@\t%@\t%@\t%8.2f\t%@\t%@\t%@\n", a3, v39, v32, *&Seconds, *&v5, *&v6, v9, *&v15, v11, v12, v13, v14, v16, v17, v18, v19, v20, v24, v28];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  colorGradeCategory = [(PXStoryConcreteAutoEditDecisionList *)self colorGradeCategory];
  song = [(PXStoryConcreteAutoEditDecisionList *)self song];
  [(PXStoryConcreteAutoEditDecisionList *)self defaultDisplayAssetPresentationDuration];
  Seconds = CMTimeGetSeconds(&time);
  if ([(PXStoryConcreteAutoEditDecisionList *)self allowsNUp])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  numberOfClips = [(PXStoryConcreteAutoEditDecisionList *)self numberOfClips];
  v10 = [(PXStoryAutoEditClipCatalog *)self->_clipCatalog debugDescription];
  v11 = [v3 stringWithFormat:@"<%@:%p - colorGradeCategory: %@, song: %@, default asset duration: %f, allows N-up: %s, number of clips: %ld, clips: %@>", v4, self, colorGradeCategory, song, *&Seconds, v8, numberOfClips, v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  colorGradeCategory = [(PXStoryConcreteAutoEditDecisionList *)self colorGradeCategory];
  song = [(PXStoryConcreteAutoEditDecisionList *)self song];
  [(PXStoryConcreteAutoEditDecisionList *)self defaultDisplayAssetPresentationDuration];
  Seconds = CMTimeGetSeconds(&time);
  if ([(PXStoryConcreteAutoEditDecisionList *)self allowsNUp])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p - colorGradeCategory: %@, song: %@, default asset duration: %f, allows N-up: %s, number of clips: %ld>", v4, self, colorGradeCategory, song, *&Seconds, v8, -[PXStoryConcreteAutoEditDecisionList numberOfClips](self, "numberOfClips")];

  return v9;
}

- (PXStoryConcreteAutoEditDecisionList)initWithColorGradeCategory:(id)category song:(id)song clipCatalog:(id)catalog constrainedOverallDurationInfo:(id *)info outroDuration:(id *)duration allowsNUp:(BOOL)up
{
  categoryCopy = category;
  songCopy = song;
  catalogCopy = catalog;
  v26.receiver = self;
  v26.super_class = PXStoryConcreteAutoEditDecisionList;
  v18 = [(PXStoryConcreteAutoEditDecisionList *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_colorGradeCategory, category);
    objc_storeStrong(&v19->_song, song);
    objc_storeStrong(&v19->_clipCatalog, catalog);
    *&v19->_overallDurationInfo.kind = *&info->var0;
    v20 = *&info->var1.var0.var1;
    v21 = *&info->var1.var1.var0;
    v22 = *&info->var1.var1.var3;
    *&v19->_overallDurationInfo.specificDurationInfo.maximumDuration.timescale = *&info->var1.var2.var1;
    *&v19->_overallDurationInfo.specificDurationInfo.preferredDuration.epoch = v22;
    *&v19->_overallDurationInfo.specificDurationInfo.preferredDuration.value = v21;
    *&v19->_overallDurationInfo.specificDurationInfo.minimumDuration.timescale = v20;
    CMTimeMakeWithSeconds(&v25, 3.0, 600);
    v19->_defaultDisplayAssetPresentationDuration = v25;
    v19->_allowsNUp = up;
    v23 = *&duration->var0;
    v19->_outroDuration.epoch = duration->var3;
    *&v19->_outroDuration.value = v23;
  }

  return v19;
}

- (PXStoryConcreteAutoEditDecisionList)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteAutoEditDecisionList.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXStoryConcreteAutoEditDecisionList init]"}];

  abort();
}

@end