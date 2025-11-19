@interface CACVoiceOverShortDescriptionGenerator
+ (id)sharedInstance;
- (id)_items:(id)a3 byKeyGeneratedUsingBlock:(id)a4;
- (id)_lowerPitchForString:(id)a3;
- (id)shortDescriptionsForItems:(id)a3 style:(int64_t)a4;
- (void)_addToItemShortDescriptionPairs:(id)a3 foritems:(id)a4 keyGenerationBlocks:(id)a5 shortDescriptionGenerationBlocks:(id)a6 lastResortShortDescriptionGenerationBlock:(id)a7;
@end

@implementation CACVoiceOverShortDescriptionGenerator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CACVoiceOverShortDescriptionGenerator sharedInstance];
  }

  v3 = sharedInstance_Generator;

  return v3;
}

uint64_t __55__CACVoiceOverShortDescriptionGenerator_sharedInstance__block_invoke()
{
  sharedInstance_Generator = objc_alloc_init(CACVoiceOverShortDescriptionGenerator);

  return MEMORY[0x2821F96F8]();
}

- (id)_items:(id)a3 byKeyGeneratedUsingBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if (v14)
        {
          v15 = [v7 objectForKeyedSubscript:{v14, v17}];
          if (!v15)
          {
            v15 = [MEMORY[0x277CBEB18] array];
            [v7 setObject:v15 forKeyedSubscript:v14];
          }

          [v15 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_addToItemShortDescriptionPairs:(id)a3 foritems:(id)a4 keyGenerationBlocks:(id)a5 shortDescriptionGenerationBlocks:(id)a6 lastResortShortDescriptionGenerationBlock:(id)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v42 = a6;
  v15 = a7;
  v16 = [v14 firstObject];
  v39 = self;
  v37 = v13;
  v17 = [(CACVoiceOverShortDescriptionGenerator *)self _items:v13 byKeyGeneratedUsingBlock:v16];

  v18 = v14;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = v17;
  v44 = [v19 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v44)
  {
    v43 = *v52;
    v41 = v19;
    v38 = v14;
    do
    {
      v20 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v19);
        }

        v21 = [v19 objectForKeyedSubscript:*(*(&v51 + 1) + 8 * v20)];
        if ([v21 count] == 1)
        {
          v22 = objc_alloc_init(CACVoiceOverItemShortDescriptionPair);
          v23 = [v21 firstObject];
          [(CACVoiceOverItemShortDescriptionPair *)v22 setItem:v23];
          v24 = [v42 firstObject];
          (v24)[2](v24, v23);
          v45 = v21;
          v25 = v18;
          v27 = v26 = v20;
          [(CACVoiceOverItemShortDescriptionPair *)v22 setShortDescription:v27];

          v20 = v26;
          v18 = v25;
          v21 = v45;
          [v12 addObject:v22];

          v19 = v41;
          goto LABEL_8;
        }

        if ([v21 count] >= 2)
        {
          if ([v18 count] < 2)
          {
            v28 = CACLogAccessibility();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v57 = v21;
              _os_log_impl(&dword_26B354000, v28, OS_LOG_TYPE_DEFAULT, "Unable to provide unique short descriptions for elements: %{private}@", buf, 0xCu);
            }

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v22 = v21;
            v29 = [(CACVoiceOverItemShortDescriptionPair *)v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v29)
            {
              v30 = v29;
              v46 = v21;
              v40 = v20;
              v31 = *v48;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v48 != v31)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v33 = *(*(&v47 + 1) + 8 * i);
                  v34 = objc_alloc_init(CACVoiceOverItemShortDescriptionPair);
                  [(CACVoiceOverItemShortDescriptionPair *)v34 setItem:v33];
                  v35 = v15[2](v15, v33);
                  [(CACVoiceOverItemShortDescriptionPair *)v34 setShortDescription:v35];

                  [v12 addObject:v34];
                }

                v30 = [(CACVoiceOverItemShortDescriptionPair *)v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v30);
              v18 = v38;
              v20 = v40;
              v19 = v41;
              v21 = v46;
            }
          }

          else
          {
            v22 = [v18 subarrayWithRange:{1, objc_msgSend(v18, "count") - 1}];
            v23 = [v42 subarrayWithRange:{1, objc_msgSend(v42, "count") - 1}];
            [(CACVoiceOverShortDescriptionGenerator *)v39 _addToItemShortDescriptionPairs:v12 foritems:v21 keyGenerationBlocks:v22 shortDescriptionGenerationBlocks:v23 lastResortShortDescriptionGenerationBlock:v15];
LABEL_8:
          }
        }

        ++v20;
      }

      while (v20 != v44);
      v36 = [v19 countByEnumeratingWithState:&v51 objects:v58 count:16];
      v44 = v36;
    }

    while (v36);
  }
}

- (id)_lowerPitchForString:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CE6B98];
    v4 = a3;
    v5 = [[v3 alloc] initWithString:v4];

    [v5 setAttribute:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6C50]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)shortDescriptionsForItems:(id)a3 style:(int64_t)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v70;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v69 + 1) + 8 * i);
        if ([v13 conformsToProtocol:&unk_287C09818])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v10);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke;
  aBlock[3] = &__block_descriptor_40_e45___NSString_16__0___CACVoiceOverDescribable__8l;
  aBlock[4] = a4;
  v14 = _Block_copy(aBlock);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_2;
  v65[3] = &unk_279CEC218;
  v66 = v14;
  v67 = a4;
  v65[4] = self;
  v45 = v14;
  v15 = _Block_copy(v65);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_4;
  v61[3] = &unk_279CEC260;
  v64 = a4;
  v61[4] = self;
  v62 = &__block_literal_global_327;
  v16 = v15;
  v63 = v16;
  v46 = _Block_copy(v61);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_6;
  v58[3] = &unk_279CEC288;
  v17 = v16;
  v58[4] = self;
  v59 = v17;
  v60 = &__block_literal_global_329;
  v41 = _Block_copy(v58);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_8;
  v55[3] = &unk_279CEC288;
  v18 = v17;
  v55[4] = self;
  v56 = v18;
  v35 = self;
  v43 = a4;
  v57 = &__block_literal_global_331;
  v39 = _Block_copy(v55);
  v19 = [MEMORY[0x277CE6BA0] systemWideElement];
  v20 = [v19 systemApplication];
  v21 = [v20 applicationOrientation];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_9;
  v54[3] = &__block_descriptor_40_e45___NSString_16__0___CACVoiceOverDescribable__8l;
  v54[4] = v21;
  v22 = _Block_copy(v54);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_10;
  v51[3] = &unk_279CEC288;
  v51[4] = self;
  v52 = v18;
  v53 = v22;
  v42 = v22;
  v23 = v18;
  v38 = _Block_copy(v51);
  v44 = [MEMORY[0x277CBEB18] array];
  v37 = _Block_copy(v45);
  v74[0] = v37;
  v74[1] = &__block_literal_global_327;
  v74[2] = &__block_literal_global_329;
  v74[3] = &__block_literal_global_331;
  v36 = _Block_copy(v42);
  v74[4] = v36;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
  v40 = v23;
  v25 = _Block_copy(v23);
  v73[0] = v25;
  v26 = _Block_copy(v46);
  v73[1] = v26;
  v27 = _Block_copy(v41);
  v73[2] = v27;
  v28 = _Block_copy(v39);
  v73[3] = v28;
  v29 = _Block_copy(v38);
  v73[4] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
  [(CACVoiceOverShortDescriptionGenerator *)v35 _addToItemShortDescriptionPairs:v44 foritems:v7 keyGenerationBlocks:v24 shortDescriptionGenerationBlocks:v30 lastResortShortDescriptionGenerationBlock:v23];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_11;
  v48[3] = &unk_279CEC2B0;
  v49 = v7;
  v50 = v43;
  v31 = v7;
  v32 = [v44 sortedArrayUsingComparator:v48];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_12;
  v47[3] = &__block_descriptor_40_e46__16__0__CACVoiceOverItemShortDescriptionPair_8l;
  v47[4] = v43;
  v33 = [v32 ax_flatMappedArrayUsingBlock:v47];

  return v33;
}

void *__73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  if (v5 == 1)
  {
    a1 = [v3 recognitionLabel];
  }

  else if (!v5)
  {
    v6 = [v3 unfilteredRecognitionLabel];
    a1 = CACNonNilStringWithinLengthLimit(v6, 10, 0x32uLL);
  }

  return a1;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = a1[6];
  if (v6 == 1)
  {
    v2 = (*(a1[5] + 16))();
  }

  else if (!v6)
  {
    v7 = [v4 numberedLabel];
    v8 = a1[4];
    v9 = (*(a1[5] + 16))();
    v11 = [v8 _lowerPitchForString:v9];
    v2 = __AXStringForVariables();
  }

  return v2;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 fullLabel];
  v3 = CACNonNilStringWithinLengthLimit(v2, 10, 0x32uLL);

  return v3;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_4(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = a1[7];
  if (v6 == 1)
  {
    v7 = (*(a1[6] + 16))();
  }

  else
  {
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = [v4 numberedLabel];
  }

  v8 = v7;
  v9 = a1[4];
  v10 = (*(a1[5] + 16))();
  v12 = [v9 _lowerPitchForString:v10];
  v2 = __AXStringForVariables();

LABEL_6:

  return v2;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 valueLabel];
  v3 = CACNonNilStringWithinLengthLimit(v2, 10, 0x32uLL);

  return v3;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_6(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3, v5);
  v7 = a1[4];
  v8 = (*(a1[6] + 16))();

  v11 = [v7 _lowerPitchForString:v8];
  v9 = __AXStringForVariables();

  return v9;
}

__CFString *__73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 traits];
  v3 = v2;
  if ((*MEMORY[0x277CE6CF8] & v2) != 0)
  {
    v4 = @"Trait.BackButton";
LABEL_7:
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v5 localizedStringForKey:v4 value:&stru_287BD8610 table:0];
    v6 = __AXStringForVariables();

    goto LABEL_8;
  }

  if ((*MEMORY[0x277CE6D68] & v2) != 0)
  {
    v4 = @"Trait.KeyboardKey";
    goto LABEL_7;
  }

  if ((*MEMORY[0x277CE6D00] & v2) != 0)
  {
    v4 = @"Trait.Button";
    goto LABEL_7;
  }

  v6 = &stru_287BD8610;
LABEL_8:
  if ((*MEMORY[0x277CE6D58] & v3) != 0)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v7 localizedStringForKey:@"Trait.Image" value:&stru_287BD8610 table:0];
    v8 = __AXStringForVariables();

    v6 = v8;
  }

  if ((*MEMORY[0x277CE6DC0] & v3) != 0)
  {
    v9 = @"Trait.SearchField";
  }

  else
  {
    if ((*MEMORY[0x277CE6E08] & v3) == 0)
    {
      goto LABEL_15;
    }

    v9 = @"Trait.TextEntry";
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v10 localizedStringForKey:v9 value:&stru_287BD8610 table:0];
  v11 = __AXStringForVariables();

  v6 = v11;
LABEL_15:
  if ((*MEMORY[0x277CE6CB8] & v3) != 0)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v12 localizedStringForKey:@"Trait.Adjustable" value:&stru_287BD8610 table:0];
    v13 = __AXStringForVariables();

    v6 = v13;
  }

  if ((*MEMORY[0x277CE6D50] & v3) != 0)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v14 localizedStringForKey:@"Trait.Header" value:&stru_287BD8610 table:0];
    v15 = __AXStringForVariables();

    v6 = v15;
  }

  if ((*MEMORY[0x277CE6D78] & v3) != 0)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v16 localizedStringForKey:@"Trait.Link" value:&stru_287BD8610 table:0];
    v17 = __AXStringForVariables();

    v6 = v17;
  }

  return v6;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_8(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3, v5);
  v7 = a1[4];
  v8 = (*(a1[6] + 16))();

  v11 = [v7 _lowerPitchForString:v8];
  v9 = __AXStringForVariables();

  return v9;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 frame];
  AXDeviceGetMainScreenBounds();
  AX_CGRectToOrientation();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  AX_CGRectToOrientation();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v28 = v16;
  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = v9;
  v29 = CGRectGetWidth(v31) / 3.0;
  v32.origin.x = v3;
  v32.origin.y = v5;
  v32.size.width = v7;
  v32.size.height = v9;
  Width = CGRectGetWidth(v32);
  v33.origin.x = v3;
  v33.origin.y = v5;
  v33.size.width = v7;
  v33.size.height = v9;
  v27 = CGRectGetHeight(v33) / 3.0;
  v34.origin.x = v3;
  v34.origin.y = v5;
  v34.size.width = v7;
  v34.size.height = v9;
  Height = CGRectGetHeight(v34);
  v18 = (Height + Height) / 3.0;
  v35.origin.x = v11;
  v35.origin.y = v13;
  v35.size.width = v15;
  v35.size.height = v28;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v15;
  v36.size.height = v28;
  MidY = CGRectGetMidY(v36);
  if (MidX >= v29)
  {
    if (MidX >= (Width + Width) / 3.0)
    {
      if (MidY < v27)
      {
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = v21;
        v23 = @"Frame.TopRight";
        goto LABEL_19;
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (MidY >= v18)
      {
        v23 = @"Frame.BottomRight";
      }

      else
      {
        v23 = @"Frame.MiddleRight";
      }
    }

    else
    {
      if (MidY < v27)
      {
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = v21;
        v23 = @"Frame.TopCenter";
        goto LABEL_19;
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (MidY >= v18)
      {
        v23 = @"Frame.BottomCenter";
      }

      else
      {
        v23 = @"Frame.MiddleCenter";
      }
    }
  }

  else
  {
    if (MidY < v27)
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = v21;
      v23 = @"Frame.TopLeft";
      goto LABEL_19;
    }

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (MidY >= v18)
    {
      v23 = @"Frame.BottomLeft";
    }

    else
    {
      v23 = @"Frame.MiddleLeft";
    }
  }

  v21 = v22;
LABEL_19:
  v24 = [v21 localizedStringForKey:v23 value:&stru_287BD8610 table:{0, *&Width}];

  return v24;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_10(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3, v5);
  v7 = a1[4];
  v8 = (*(a1[6] + 16))();

  v11 = [v7 _lowerPitchForString:v8];
  v9 = __AXStringForVariables();

  return v9;
}

uint64_t __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 == 1)
  {
    v16 = *(a1 + 32);
    v17 = [v5 item];
    v18 = [v16 indexOfObject:v17];

    v19 = *(a1 + 32);
    v20 = [v6 item];
    v21 = [v19 indexOfObject:v20];

    v14 = v18 == v21;
    v15 = -1;
    if (v18 >= v21)
    {
      v15 = 1;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_11;
    }

    v8 = [v5 item];
    v9 = [v8 numberedLabel];
    v10 = [v9 integerValue];

    v11 = [v6 item];
    v12 = [v11 numberedLabel];
    v13 = [v12 integerValue];

    v14 = v10 == v13;
    v15 = -1;
    if (v10 >= v13)
    {
      v15 = 1;
    }
  }

  if (v14)
  {
    a1 = 0;
  }

  else
  {
    a1 = v15;
  }

LABEL_11:

  return a1;
}

id __73__CACVoiceOverShortDescriptionGenerator_shortDescriptionsForItems_style___block_invoke_12(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1 && ([v3 item], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "recognitionLabel"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, !v7))
  {
    v10 = CACLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 item];
      v12 = 138477827;
      v13 = v11;
      _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "No name found for %{private}@, so not describing it", &v12, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v4 shortDescription];
  }

  return v8;
}

@end