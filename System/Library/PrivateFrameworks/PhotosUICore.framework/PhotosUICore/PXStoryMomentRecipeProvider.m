@interface PXStoryMomentRecipeProvider
- ($7B05257DCED3654557744F96476E9D8A)_nextEmptySpaceBreakTransitionForMotion:(SEL)a3;
- (BOOL)_isSongEnergetic;
- (PXStoryMomentRecipeProvider)init;
- (PXStoryMomentRecipeProvider)initWithConfiguration:(id)a3 colorGradeCategory:(id)a4 songPace:(int64_t)a5 randomNumberGenerator:(id)a6;
- (_NSRange)_rangeOfLength:(int64_t)a3 centeredOnIndex:(int64_t)a4 withinRange:(_NSRange)a5;
- (id)_nextBaseMomentRecipeWithPreviousClip:(id)a3;
- (id)_nextModuleRecipeWithModuleClipRange:(_NSRange)a3 clipCatalog:(id)a4;
- (id)_nextSingleAssetRecipeWithPreviousClip:(id)a3;
- (id)_recipeFromRecipeType:(unint64_t)a3 previousClip:(id)a4;
- (int64_t)_incomingTransitionKindForRecipe:(unint64_t)a3;
- (int64_t)_innerTransitionKindForRecipe:(unint64_t)a3;
- (int64_t)_motionStyleForRecipe:(unint64_t)a3;
- (void)provideDebugInfoForClip:(unint64_t)a3 usingBlock:(id)a4;
- (void)provideRecipeForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 usingBlock:(id)a5;
@end

@implementation PXStoryMomentRecipeProvider

- (void)provideDebugInfoForClip:(unint64_t)a3 usingBlock:(id)a4
{
  v12 = a4;
  clipDebugInfos = self->_clipDebugInfos;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [(NSMutableDictionary *)clipDebugInfos objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = self->_clipDebugInfos;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];
    v12[2](v12, v11);
  }
}

- (void)provideRecipeForMomentClipRange:(_NSRange)a3 withClipCatalog:(id)a4 usingBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v163[2] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v130 = a5;
  if (!length)
  {
    v124 = [MEMORY[0x1E696AAA8] currentHandler];
    [v124 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:460 description:{@"Invalid parameter not satisfying: %@", @"momentClipRange.length > 0"}];
  }

  v10 = [v9 clipAtIndex:location];
  v150 = a2;
  if (location)
  {
    v11 = [v9 clipAtIndex:location - 1];
  }

  else
  {
    v11 = 0;
  }

  v152 = location - 1 + length;
  v131 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v128 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v12 = objc_opt_new();
  v143 = location;
  if (length == 1 && ([v10 displayAssets], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v14 == 1))
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v16 = v15 = v11;
    addToPapertrail(v12, "@(momentClipRange.length)", v16, 476);

    v17 = MEMORY[0x1E696AD98];
    v18 = [v10 displayAssets];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    addToPapertrail(v12, "@(firstClip.displayAssets.count)", v19, 476);

    v11 = v15;
    v20 = [(PXStoryMomentRecipeProvider *)self _nextSingleAssetRecipeWithPreviousClip:v15];
    v142 = 0;
  }

  else
  {
    if (location)
    {
      v21 = [v9 clipAtIndex:location - 1];
      v22 = [v21 displayAssets];
      v23 = [v22 count] == 2;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v10 displayAssets];
    v25 = [v24 count];

    v142 = 0;
    if (v23 && v25 == 1)
    {
      v26 = [v10 displayAssets];
      [v26 objectAtIndexedSubscript:0];
      v27 = v11;
      v29 = v28 = v10;
      v142 = [PXStoryRecipeClipUtilities assetHasHighCurationScore:v29];

      v10 = v28;
      v11 = v27;

      location = v143;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithBool:location != 0];
    addToPapertrail(v12, "@(previousIsValid)", v30, 484);

    v31 = [MEMORY[0x1E696AD98] numberWithBool:v23];
    addToPapertrail(v12, "@(previousIs2Up)", v31, 484);

    v32 = [MEMORY[0x1E696AD98] numberWithBool:v25 == 1];
    addToPapertrail(v12, "@(firstIs1Up)", v32, 484);

    v33 = MEMORY[0x1E696AD98];
    v34 = [v10 displayAssets];
    v35 = [v34 objectAtIndexedSubscript:0];
    v36 = [v33 numberWithBool:{+[PXStoryRecipeClipUtilities assetHasHighCurationScore:](PXStoryRecipeClipUtilities, "assetHasHighCurationScore:", v35)}];
    addToPapertrail(v12, "@([PXStoryRecipeClipUtilities assetHasHighCurationScore:firstClip.displayAssets[0]])", v36, 484);

    if (v142)
    {
      [(PXStoryMomentRecipeProvider *)self _nextNUpRevealRecipeWithPreviousClip:v11];
    }

    else
    {
      [(PXStoryMomentRecipeProvider *)self _nextBaseMomentRecipeWithPreviousClip:v11];
    }
    v37 = ;
    v20 = v37;
    location = v143;
    if (v143 <= v152)
    {
      v38 = v37;
      v39 = v143;
      do
      {
        v40 = [v9 clipAtIndex:v39];
        [v40 moduleInfo];
        if ((v41 & 0x100) != 0)
        {
          v42 = [(PXStoryMomentRecipeState *)self->_state nextEmptySpaceStrategy];
          switch(v42)
          {
            case 1:
              [v128 addIndex:v39];
              break;
            case 2:
              v43 = [(PXStoryMomentRecipeProvider *)self _rangeOfLength:length / 3 + 1 centeredOnIndex:v39 withinRange:v143, length];
              [v131 addIndexesInRange:{v43, v44}];
              break;
            case 0:
              v125 = [MEMORY[0x1E696AAA8] currentHandler];
              [v125 handleFailureInMethod:v150 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:510 description:@"Undefined empty space strategy"];

              abort();
          }
        }

        ++v39;
      }

      while (v39 <= v152);
      v20 = v38;
    }
  }

  addToPapertrail(v12, "baseMomentRecipe", v20, 516);
  v129 = [v12 copy];
  if (location <= v152)
  {
    v126 = v11;
    v127 = v10;
    v45 = 0;
    v140 = v9;
    v141 = 0;
    v46 = location;
    v132 = v20;
    while (1)
    {
      v47 = v12;
      v12 = [v129 mutableCopy];

      v48 = MEMORY[0x1E696AD60];
      v49 = [v20 recipeType];
      v50 = @"??";
      if (v49 <= 8)
      {
        v50 = off_1E7732050[v49];
      }

      v51 = v50;
      v136 = [v48 stringWithFormat:@"Base recipe: %@\n", v51];

      v52 = [v9 numberOfClips];
      if (v46)
      {
        v53 = [v9 clipAtIndex:v46 - 1];
      }

      else
      {
        v53 = 0;
      }

      v54 = v46 + 1;
      v55 = [v9 clipAtIndex:v46];
      if (v46 + 1 >= v52)
      {
        v56 = 0;
      }

      else
      {
        v56 = [v9 clipAtIndex:v46 + 1];
      }

      v149 = v46;
      if (v46)
      {
        v57 = [v53 displayAssets];
        v148 = [v57 count] > 1;
      }

      else
      {
        v148 = 0;
      }

      v58 = [v55 displayAssets];
      v59 = [v58 count];

      v151 = v53;
      if (v54 >= v52)
      {
        v61 = 0;
      }

      else
      {
        v60 = [v56 displayAssets];
        v61 = [v60 count] > 1;
      }

      v62 = v56;
      v138 = v59;
      v134 = v59 > 1;
      v146 = v54;
      v63 = v54 < v52;
      v64 = [v55 moduleInfo];
      [v55 moduleInfo];
      v147 = v65;
      v135 = v64 != 0;
      v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v143];
      addToPapertrail(v12, "@(firstIndex)", v66, 544);

      v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v149];
      addToPapertrail(v12, "@(idx)", v67, 544);

      v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v152];
      addToPapertrail(v12, "@(lastIndex)", v68, 544);

      v69 = v64;
      v70 = [MEMORY[0x1E696AD98] numberWithBool:v149 != 0];
      addToPapertrail(v12, "@(previousIsValid)", v70, 545);

      v71 = [MEMORY[0x1E696AD98] numberWithBool:v63];
      addToPapertrail(v12, "@(nextIsValid)", v71, 545);

      addToPapertrail(v12, "previousClip", v151, 546);
      v145 = v55;
      addToPapertrail(v12, "currentClip", v55, 546);
      v139 = v62;
      addToPapertrail(v12, "nextClip", v62, 546);
      v72 = [MEMORY[0x1E696AD98] numberWithBool:v148];
      addToPapertrail(v12, "@(previousIsNUp)", v72, 547);

      v73 = [MEMORY[0x1E696AD98] numberWithBool:v134];
      addToPapertrail(v12, "@(currentIsNUp)", v73, 547);

      v74 = [MEMORY[0x1E696AD98] numberWithBool:v61];
      addToPapertrail(v12, "@(nextIsNUp)", v74, 547);

      v75 = [MEMORY[0x1E696AD98] numberWithBool:v142];
      addToPapertrail(v12, "@(useRevealRecipe)", v75, 547);

      v76 = @"??";
      v77 = v61;
      if (v64 <= 3)
      {
        v76 = off_1E7731FC0[v64];
      }

      v45 = v136;
      v78 = v76;
      addToPapertrail(v12, "PXStoryAutoEditModuleTypeName(moduleType)", v78, 548);

      v79 = v149 == v143 && v142;
      v80 = [MEMORY[0x1E696AD98] numberWithBool:v149 == v143];
      addToPapertrail(v12, "@(isFirstClipOfMoment)", v80, 548);

      v81 = [MEMORY[0x1E696AD98] numberWithBool:v147 & 1];
      addToPapertrail(v12, "@(isStartOfModule)", v81, 548);

      v82 = [MEMORY[0x1E696AD98] numberWithBool:v135 & ~v147];
      addToPapertrail(v12, "@(isMidModule)", v82, 548);

      v160 = 0u;
      v161 = 0u;
      v137 = v79;
      if (v79)
      {
        v133 = v69;
        v83 = v132;

        if (v132)
        {
          [(__CFString *)v83 incomingTransition];
          v160 = *buf;
          v161 = v159;
          [(__CFString *)v83 motion];
          v85 = *buf;
          v84 = *&buf[8];
          v86 = v159;
        }

        else
        {
          v86 = 0;
          v84 = 0;
          v85 = 0;
          v160 = 0u;
          v161 = 0u;
        }

        v92 = [(__CFString *)v83 recipeType];
        v93 = @"??";
        if (v92 <= 8)
        {
          v93 = off_1E7732050[v92];
        }

        v94 = v93;
        [v45 appendFormat:@"Transition and motion from base, first %@\n", v94];
      }

      else
      {
        if ((v147 & 1) == 0)
        {
          if (v69)
          {
            v90 = v61;
            v91 = v141;
            if (v141)
            {
              [(__CFString *)v141 innerTransition];
              v160 = *buf;
              v161 = v159;
              [(__CFString *)v141 motion];
              v85 = *buf;
              v84 = *&buf[8];
              v86 = v159;
            }

            else
            {
              v86 = 0;
              v84 = 0;
              v85 = 0;
              v160 = 0uLL;
              v161 = 0uLL;
            }

            v99 = [(__CFString *)v141 recipeType];
            v100 = @"??";
            if (v99 <= 8)
            {
              v100 = off_1E7732050[v99];
            }

            v83 = v100;
            [v45 appendFormat:@"Mid-module %@\n", v83];
            goto LABEL_85;
          }

          v133 = 0;
          if (v149 == v143)
          {
            if (v132)
            {
              [v132 incomingTransition];
              v160 = *buf;
              v161 = v159;
              [v132 motion];
              v85 = *buf;
              v84 = *&buf[8];
              v86 = v159;
            }

            else
            {
              v86 = 0;
              v84 = 0;
              v85 = 0;
              v160 = 0uLL;
              v161 = 0uLL;
            }

            v119 = [v132 recipeType];
            v120 = @"??";
            if (v119 <= 8)
            {
              v120 = off_1E7732050[v119];
            }

            v121 = v120;
            [v45 appendFormat:@"Transition and motion from base, first %@\n", v121];

            goto LABEL_126;
          }

          if (v132)
          {
            [v132 motion];
            v85 = *buf;
            v84 = *&buf[8];
            v86 = v159;
            if (![v128 containsIndex:v149])
            {
              [v132 innerTransition];
              goto LABEL_124;
            }

LABEL_122:
            *buf = v85;
            *&buf[8] = v84;
            *&v159 = v86;
            [(PXStoryMomentRecipeProvider *)self _nextEmptySpaceBreakTransitionForMotion:buf];
            v122 = v45;
            v123 = @"Transition to break up empty space, motion from base\n";
          }

          else
          {
            if ([v128 containsIndex:v149])
            {
              v85 = 0;
              v84 = 0;
              v86 = 0;
              goto LABEL_122;
            }

            v86 = 0;
            v84 = 0;
            v85 = 0;
            *buf = 0u;
            v159 = 0u;
LABEL_124:
            v160 = *buf;
            v161 = v159;
            v122 = v45;
            v123 = @"Transition and motion from base\n";
          }

          [v122 appendString:v123];
LABEL_126:
          v83 = v141;
          goto LABEL_78;
        }

        v87 = v146;
        if (v146 <= v152)
        {
          v87 = v146;
          while (1)
          {
            v88 = [v140 clipAtIndex:v87];
            [v88 moduleInfo];
            if ((v89 & 1) != 0 || [v88 moduleInfo] != v69)
            {
              break;
            }

            ++v87;

            if (v87 > v152)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_71:
        v133 = v69;
        v95 = v87 - v149;
        v96 = [MEMORY[0x1E696B098] valueWithRange:{v149, v87 - v149}];
        addToPapertrail(v12, "[NSValue valueWithRange:moduleClipRange]", v96, 570);

        v83 = [(PXStoryMomentRecipeProvider *)self _nextModuleRecipeWithModuleClipRange:v149 clipCatalog:v95, v140];

        if (v83)
        {
          [(__CFString *)v83 incomingTransition];
          v160 = *buf;
          v161 = v159;
          [(__CFString *)v83 motion];
          v85 = *buf;
          v84 = *&buf[8];
          v86 = v159;
        }

        else
        {
          v86 = 0;
          v84 = 0;
          v85 = 0;
          v160 = 0u;
          v161 = 0u;
        }

        v97 = [(__CFString *)v83 recipeType];
        v98 = @"??";
        if (v97 <= 8)
        {
          v98 = off_1E7732050[v97];
        }

        v94 = v98;
        [v45 appendFormat:@"Starting module %@\n", v94];
      }

LABEL_78:
      if (v147 & 1 | (v133 != 0))
      {
        v141 = v83;
        goto LABEL_86;
      }

      v90 = v61;
      v91 = 0;
LABEL_85:
      v141 = v91;

      v77 = v90;
LABEL_86:
      v101 = v148;
      if (v138 > 1)
      {
        v101 = v148 + 1;
      }

      v102 = v101 + v77;
      v103 = [MEMORY[0x1E696AD98] numberWithInteger:v102];
      addToPapertrail(v12, "@(numNUps)", v103, 603);

      if (v138 < 2)
      {
        if (v148 && !v137)
        {
          if (v85 == 1)
          {
            v106 = v84;
            if (!v84)
            {
              goto LABEL_104;
            }

LABEL_94:
            if (v106 != 4 && v106 != 1)
            {
              v107 = 514;
LABEL_110:
              *(&v161 + 1) = 0;
              *(&v161 + 2) = 0;
              v160 = 8uLL;
              LOWORD(v161) = v107;
              [v45 appendString:@"Overriding transition with wipe because of nearby N-up\n"];
              goto LABEL_111;
            }
          }

          else
          {
            if (!v151)
            {
              v155 = 0;
              v156 = 0;
              v107 = 258;
              v157 = 0;
              goto LABEL_110;
            }

            [v151 motionInfo];
            if (v155 == 1)
            {
              [v151 motionInfo];
              v106 = v154;
              if (!v154)
              {
LABEL_104:
                PXAssertGetLog();
              }

              goto LABEL_94;
            }
          }

          v107 = 258;
          goto LABEL_110;
        }
      }

      else
      {
        if (v102 == 1)
        {
          state = self->_state;
          v105 = [v145 displayAssets];
          v86 = -[PXStoryMomentRecipeState nextNUpPanRelativeMotionWithN:](state, "nextNUpPanRelativeMotionWithN:", [v105 count]);
        }

        else
        {
          v86 = 2;
        }

        [v45 appendString:@"Overriding motion for this N-up\n"];
        if (!v137)
        {
          v107 = 514;
          v84 = 2;
          v85 = 1;
          goto LABEL_110;
        }

        v84 = 2;
        v85 = 1;
      }

LABEL_111:
      if ([v131 containsIndex:v149])
      {
        v108 = 2;
      }

      else
      {
        v108 = 0;
      }

      *buf = v85;
      *&buf[8] = v84;
      *&v159 = v86;
      v109 = PXStoryAutoEditClipMotionInfoDescription(buf);
      addToPapertrail(v12, "PXStoryAutoEditClipMotionInfoDescription(motionInfo)", v109, 651);

      *buf = v160;
      v159 = v161;
      v110 = PXStoryAutoEditClipTransitionInfoDescription(buf);
      addToPapertrail(v12, "PXStoryAutoEditClipTransitionInfoDescription(transitionInfo)", v110, 651);

      *buf = v160;
      v159 = v161;
      v111 = PXStoryAutoEditClipTransitionInfoDescription(buf);
      *buf = v85;
      *&buf[8] = v84;
      *&v159 = v86;
      v112 = PXStoryAutoEditClipMotionInfoDescription(buf);
      [v45 appendFormat:@"Requested Incoming Transition: %@\nRequested Motion: %@\n", v111, v112];

      addToPapertrail(v12, "momentRecipeChoices", v45, 653);
      v162[0] = @"Moment Recipe Choices";
      v113 = [v45 copy];
      v162[1] = @"Papertrail";
      v163[0] = v113;
      v114 = [v12 copy];
      v163[1] = v114;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:2];

      clipDebugInfos = self->_clipDebugInfos;
      v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v149];
      [(NSMutableDictionary *)clipDebugInfos setObject:v115 forKeyedSubscript:v117];

      v118 = v130[2];
      v153[0] = v85;
      v153[1] = v84;
      v153[2] = v86;
      *buf = v160;
      v159 = v161;
      v118(v130, v153, buf, v108, v149);

      v46 = v146;
      v9 = v140;
      v20 = v132;
      if (v146 > v152)
      {

        v11 = v126;
        v10 = v127;
        break;
      }
    }
  }
}

- (_NSRange)_rangeOfLength:(int64_t)a3 centeredOnIndex:(int64_t)a4 withinRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (a4 < a5.location || a4 - a5.location >= a5.length)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"NSLocationInRange(centerIdx, range)"}];
  }

  v11 = location + length;
  v12 = a4 - a3 / 2;
  if (v12 <= location)
  {
    v13 = location;
  }

  else
  {
    v13 = a4 - a3 / 2;
  }

  if (v12 + a3 < v11)
  {
    v11 = v12 + a3;
  }

  v14 = v11 - v13;
  result.length = v14;
  result.location = v13;
  return result;
}

- ($7B05257DCED3654557744F96476E9D8A)_nextEmptySpaceBreakTransitionForMotion:(SEL)a3
{
  result = [(PXStoryMomentRecipeProvider *)self _isSongEnergetic];
  if (!result)
  {
    v9 = 2;
    goto LABEL_7;
  }

  v9 = 0;
  var0 = a4->var0;
  if (a4->var0 <= 1)
  {
    if (var0 < 2)
    {
      var1 = a4->var1;
      *&retstr->var0 = xmmword_1A5354C20;
      retstr->var2 = var1;
      return result;
    }

LABEL_7:
    retstr->var0 = v9;
    retstr->var1 = 0.0;
    retstr->var2.var0.var0 = 0;
    retstr->var2.var0.var1 = 0;
    return result;
  }

  if (var0 == 2)
  {
    v11 = a4->var1.var0.var0;
    v12 = 6;
    goto LABEL_11;
  }

  if (var0 != 3)
  {
    if (var0 == 4)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a3 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:399 description:@"Invalid motion style"];

      abort();
    }

    goto LABEL_7;
  }

  v11 = a4->var1.var0.var0;
  v12 = 7;
LABEL_11:
  retstr->var0 = v12;
  retstr->var1 = 0.0;
  retstr->var2.var0.var0 = v11;
  retstr->var2.var0.var1 = 0;
  return result;
}

- (id)_nextSingleAssetRecipeWithPreviousClip:(id)a3
{
  state = self->_state;
  v5 = a3;
  v6 = [(PXStoryMomentRecipeProvider *)self _recipeFromRecipeType:[(PXStoryMomentRecipeState *)state nextSingleAssetMomentRecipe] previousClip:v5];

  return v6;
}

- (id)_nextModuleRecipeWithModuleClipRange:(_NSRange)a3 clipCatalog:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(PXStoryMomentRecipeState *)self->_state _nextModuleRecipeWithModuleClipRange:location clipCatalog:length, v7];
  if (location)
  {
    location = [v7 clipAtIndex:location - 1];
  }

  v9 = [(PXStoryMomentRecipeProvider *)self _recipeFromRecipeType:v8 previousClip:location];

  return v9;
}

- (id)_nextBaseMomentRecipeWithPreviousClip:(id)a3
{
  state = self->_state;
  v5 = a3;
  v6 = [(PXStoryMomentRecipeProvider *)self _recipeFromRecipeType:[(PXStoryMomentRecipeState *)state nextBaseMomentRecipe] previousClip:v5];

  return v6;
}

- (id)_recipeFromRecipeType:(unint64_t)a3 previousClip:(id)a4
{
  v7 = a4;
  v8 = [(PXStoryMomentRecipeProvider *)self _incomingTransitionKindForRecipe:a3];
  v9 = [(PXStoryMomentRecipeProvider *)self _innerTransitionKindForRecipe:a3];
  v10 = [(PXStoryMomentRecipeProvider *)self _motionStyleForRecipe:a3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXStoryMomentRecipeProvider__recipeFromRecipeType_previousClip___block_invoke;
  aBlock[3] = &unk_1E7730B70;
  v11 = v7;
  v31 = v11;
  v32 = self;
  v12 = _Block_copy(aBlock);
  v13 = 0;
  v14 = 0;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v13 = 0;
        v16 = 0;
        v14 = 1;
        v15 = 1;
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (a3 == 7)
    {
LABEL_12:
      v17 = v12[2](v12);
LABEL_15:
      v15 = v17;
      v14 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v15 = 0;
    v16 = 0;
    if (a3 != 8)
    {
      goto LABEL_19;
    }

LABEL_17:
    v16 = [(PXStoryMomentRecipeState *)self->_state nextPanDirection];
    v14 = 0;
    v13 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      v17 = [(PXStoryMomentRecipeState *)self->_state nextScaleDirection];
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v13 = [(PXStoryMomentRecipeState *)self->_state nextRotateDirection];
    v14 = 0;
    v15 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_19;
  }

  v15 = 0;
  v16 = 0;
  if (!a3)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:319 description:@"Undefined moment recipe type"];

    abort();
  }

LABEL_19:
  v18 = 0;
  v19 = 0;
  v26 = v11;
  v20 = v12;
  if (v8 > 6)
  {
    if (v8 == 7)
    {
      v18 = v13 & 0xFFFFFFFFFFFF0000;
      v19 = v13;
    }

    else if (v8 == 8)
    {
      v18 = 0;
      v19 = v14;
    }
  }

  else if (v8 == 5)
  {
    v18 = v16 & 0xFFFFFFFFFFFF0000;
    v19 = v16;
  }

  else if (v8 == 6)
  {
    v18 = v15 & 0xFFFFFFFFFFFF0000;
    v19 = v15;
  }

  v21 = 0;
  v22 = 0;
  if (v9 > 6)
  {
    if (v9 == 7)
    {
      v21 = v13 & 0xFFFFFFFFFFFF0000;
      v22 = v13;
    }

    else if (v9 == 8)
    {
      v21 = 0;
      v22 = v14;
    }
  }

  else if (v9 == 5)
  {
    v21 = v16 & 0xFFFFFFFFFFFF0000;
    v22 = v16;
  }

  else if (v9 == 6)
  {
    v21 = v15 & 0xFFFFFFFFFFFF0000;
    v22 = v15;
  }

  if (v10 == 3)
  {
    v15 = v13;
  }

  else if (v10 != 2)
  {
    if (v10 == 1)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  v29[0] = v8;
  v29[1] = 0;
  v29[2] = v18 | v19;
  v29[3] = 0;
  v28[0] = v9;
  v28[1] = 0;
  v28[2] = v21 | v22;
  v28[3] = 0;
  v27[0] = v10;
  v27[1] = v15;
  v27[2] = 0;
  v23 = [[PXStoryAutoEditMomentRecipe alloc] initWithRecipeType:a3 incomingTransition:v29 innerTransition:v28 motion:v27];

  return v23;
}

void *__66__PXStoryMomentRecipeProvider__recipeFromRecipeType_previousClip___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return [*(*(a1 + 40) + 32) nextScaleDirection];
  }

  [v2 motionInfo];
  if (v5 != 2)
  {
    return [*(*(a1 + 40) + 32) nextScaleDirection];
  }

  result = *(a1 + 32);
  if (result)
  {
    [result motionInfo];
    return v4;
  }

  return result;
}

- (int64_t)_motionStyleForRecipe:(unint64_t)a3
{
  if (a3 >= 9)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:292 description:@"Unhandled case"];

    abort();
  }

  return qword_1A53817F0[a3];
}

- (int64_t)_innerTransitionKindForRecipe:(unint64_t)a3
{
  if (a3 == 6)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_incomingTransitionKindForRecipe:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        return 7;
      }

      else
      {
        return 5;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_20;
      }

      return 6;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        return 8;
      }
    }

    else
    {
      if (a3 == 6)
      {
        return a3;
      }

      if (a3 != 7 && a3 != 8)
      {
LABEL_20:
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:259 description:@"Unhandled case"];

        abort();
      }
    }

    if ([(PXStoryMomentRecipeProvider *)self _isSongEnergetic])
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return a3;
}

- (BOOL)_isSongEnergetic
{
  songPace = self->_songPace;
  if (songPace == 3)
  {
    LOBYTE(colorGradeCategory) = 1;
  }

  else if (songPace == 1)
  {
    LOBYTE(colorGradeCategory) = 0;
  }

  else
  {
    colorGradeCategory = self->_colorGradeCategory;
    if (colorGradeCategory)
    {
      PFStoryColorGradeCategoryGetArousal();
      LOBYTE(colorGradeCategory) = v4 > 0.5;
    }
  }

  return colorGradeCategory;
}

- (PXStoryMomentRecipeProvider)initWithConfiguration:(id)a3 colorGradeCategory:(id)a4 songPace:(int64_t)a5 randomNumberGenerator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PXStoryMomentRecipeProvider;
  v14 = [(PXStoryMomentRecipeProvider *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, a3);
    v15->_songPace = a5;
    objc_storeStrong(&v15->_colorGradeCategory, a4);
    v16 = [[PXStoryMomentRecipeState alloc] initWithRandomNumberGenerator:v13];
    state = v15->_state;
    v15->_state = v16;

    v18 = objc_opt_new();
    clipDebugInfos = v15->_clipDebugInfos;
    v15->_clipDebugInfos = v18;
  }

  return v15;
}

- (PXStoryMomentRecipeProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMomentRecipeProvider.m" lineNumber:193 description:{@"%s is not available as initializer", "-[PXStoryMomentRecipeProvider init]"}];

  abort();
}

@end