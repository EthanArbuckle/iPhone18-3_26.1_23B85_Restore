@interface PAConfiguration
+ (PAConfiguration)configurationWithAudiogram:(id)a3;
+ (PAConfiguration)configurationWithLeftMediaLoss:(id)a3 rightMediaLoss:(id)a4 leftSpeechLoss:(id)a5 andRightSpeechLoss:(id)a6;
+ (PAConfiguration)configurationWithLevel:(unint64_t)a3 andShape:(unint64_t)a4;
+ (PAConfiguration)configurationWithMediaOffsets:(id)a3 andSpeechOffsets:(id)a4;
+ (PAConfiguration)configurationWithPreset:(id)a3 andAdjustments:(id)a4;
+ (PAConfiguration)configurationWithRawAdjustment:(unint64_t)a3;
+ (id)configurationFromAudiogramSample:(id)a3;
+ (id)configurationFromType:(unint64_t)a3;
+ (id)dataFromPreset:(id *)a3;
+ (id)paramDataWithValue:(float)a3 andOffset:(int)a4;
- ($0F930BAB90C9DC9B4982FDE0E97FE34F)transparencySettingsv4ForAddress:(id)a3;
- ($582E6112602F317AA177BE214B91E8F0)readSettingsFromPreset:(id)a3;
- ($D1907C19D6DE236B0F95485CBF7F2EE1)transparencySettingsForAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PAConfiguration)initWithCoder:(id)a3;
- (float)pureToneAverageForSpeech:(BOOL)a3;
- (id)lossArrayFromDictionary:(id)a3 forLeft:(BOOL)a4;
- (id)onBudsMediaSettingsForRoute:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAConfiguration

+ (PAConfiguration)configurationWithPreset:(id)a3 andAdjustments:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setPreset:v6];

  [v7 setPresetAdjustments:v5];

  return v7;
}

+ (id)configurationFromType:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 6)
  {
    if (a3 <= 8)
    {
      if (a3 != 7)
      {
        v4 = 2;
        goto LABEL_20;
      }

      v4 = 2;
    }

    else
    {
      if (a3 == 9)
      {
        v4 = 3;
        goto LABEL_22;
      }

      if (a3 != 10)
      {
        if (a3 != 11)
        {
          goto LABEL_26;
        }

        v4 = 3;
        goto LABEL_20;
      }

      v4 = 3;
    }

LABEL_24:
    v5 = 2;
    goto LABEL_25;
  }

  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
      {
        v4 = 2;
LABEL_22:
        v5 = 1;
        goto LABEL_25;
      }

      v4 = 1;
LABEL_20:
      v5 = 3;
LABEL_25:
      v3 = [PAConfiguration configurationWithLevel:v4 andShape:v5];
      goto LABEL_26;
    }

    v4 = 1;
    goto LABEL_24;
  }

  if (a3 - 1 < 2)
  {
    v3 = [PAConfiguration configurationWithRawAdjustment:?];
    goto LABEL_26;
  }

  if (a3 == 3)
  {
    v4 = 1;
    goto LABEL_22;
  }

LABEL_26:

  return v3;
}

+ (PAConfiguration)configurationWithLevel:(unint64_t)a3 andShape:(unint64_t)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = paBundle();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Presets_Level_%lu_Shape_%lu", a3, a4];
  v8 = [v6 pathForResource:v7 ofType:@"aupreset"];

  v9 = paBundle();
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Presets_SpeechMode_Level_%lu_Shape_%lu", a3, a4];
  v11 = [v9 pathForResource:v10 ofType:@"aupreset"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v11];
  if ([v13 count])
  {
    v18 = @"PAPresetAdjustmentSpeechModeKey";
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v14 = 0;
  }

  if ([v12 count])
  {
    v15 = [PAConfiguration configurationWithPreset:v12 andAdjustments:v14];
    [v15 setLevel:a3];
    [v15 setShape:a4];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (PAConfiguration)configurationWithRawAdjustment:(unint64_t)a3
{
  v4 = paBundle();
  v5 = [v4 pathForResource:@"Presets_0_dB_gain" ofType:@"aupreset"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v5];
  v7 = [PAConfiguration configurationWithPreset:v6 andAdjustments:0];
  [v7 setLevel:0];
  [v7 setShape:a3];

  return v7;
}

+ (PAConfiguration)configurationWithAudiogram:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 8)
  {
    v4 = [PAConfiguration configurationWithMediaOffsets:v3 andSpeechOffsets:v3];
  }

  else
  {
    v5 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Skipping audiogram %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (PAConfiguration)configurationWithMediaOffsets:(id)a3 andSpeechOffsets:(id)a4
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v121 = v6;
  if ([v6 count] == 8 && objc_msgSend(v7, "count") == 8)
  {
    v118 = a1;
    v114 = [PAConfiguration configurationWithLevel:1 andShape:1];
    v120 = [MEMORY[0x277CBEB38] dictionary];
    v8 = paBundle();
    v9 = [v8 pathForResource:@"PresetValues" ofType:@"plist"];

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
    v11 = [v10 objectForKey:@"level"];
    v12 = [&unk_28702BDF0 stringValue];
    v13 = [v11 objectForKey:v12];

    v14 = MEMORY[0x277CBEB38];
    v15 = [v13 objectForKey:@"shape"];
    [&unk_28702BDF0 stringValue];
    v16 = v119 = v7;
    v17 = [v15 objectForKey:v16];
    v18 = [v14 dictionaryWithDictionary:v17];

    v19 = paBundle();
    v20 = [v19 pathForResource:@"PresetValuesSpeech" ofType:@"plist"];

    v117 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v20];

    v116 = v21;
    v22 = [v21 objectForKey:@"level"];
    v23 = [&unk_28702BDF0 stringValue];
    v24 = [v22 objectForKey:v23];

    v25 = MEMORY[0x277CBEB38];
    v115 = v24;
    v26 = [v24 objectForKey:@"shape"];
    v27 = [&unk_28702BDF0 stringValue];
    v28 = [v26 objectForKey:v27];
    v29 = [v25 dictionaryWithDictionary:v28];

    v7 = v119;
    v30 = v114;
    v31 = [v114 settingsFromConfiguration:0];
    v32 = [v114 settingsFromConfiguration:1];
    v33 = [PAAudiogramUtilities offsetsSortedByFrequency:v121];
    v34 = [PAAudiogramUtilities offsetsSortedByFrequency:v119];
    if (v31)
    {
      v35 = [v33 objectAtIndexedSubscript:0];
      [v35 floatValue];
      v31[32] = v36;
      *v31 = v36;

      v37 = [v33 objectAtIndexedSubscript:1];
      [v37 floatValue];
      v31[33] = v38;
      v31[1] = v38;

      v39 = [v33 objectAtIndexedSubscript:2];
      [v39 floatValue];
      v31[34] = v40;
      v31[2] = v40;

      v41 = [v33 objectAtIndexedSubscript:3];
      [v41 floatValue];
      v31[35] = v42;
      v31[3] = v42;

      v43 = [v33 objectAtIndexedSubscript:4];
      [v43 floatValue];
      v31[36] = v44;
      v31[4] = v44;

      v45 = [v33 objectAtIndexedSubscript:5];
      [v45 floatValue];
      v31[37] = v46;
      v31[5] = v46;

      v47 = [v33 objectAtIndexedSubscript:6];
      [v47 floatValue];
      v31[38] = v48;
      v31[6] = v48;

      v49 = [v33 objectAtIndexedSubscript:7];
      [v49 floatValue];
      v31[39] = v50;
      v31[7] = v50;

      v31[31] = 0;
      v51 = [v33 objectAtIndexedSubscript:0];
      [v18 setObject:v51 forKey:@"leftLoss250_dBHL"];

      v52 = [v33 objectAtIndexedSubscript:1];
      [v18 setObject:v52 forKey:@"leftLoss500_dBHL"];

      v53 = [v33 objectAtIndexedSubscript:2];
      [v18 setObject:v53 forKey:@"leftLoss1000_dBHL"];

      v54 = [v33 objectAtIndexedSubscript:3];
      [v18 setObject:v54 forKey:@"leftLoss2000_dBHL"];

      v55 = [v33 objectAtIndexedSubscript:4];
      [v18 setObject:v55 forKey:@"leftLoss3000_dBHL"];

      v56 = [v33 objectAtIndexedSubscript:5];
      [v18 setObject:v56 forKey:@"leftLoss4000_dBHL"];

      v57 = [v33 objectAtIndexedSubscript:6];
      [v18 setObject:v57 forKey:@"leftLoss6000_dBHL"];

      v58 = [v33 objectAtIndexedSubscript:7];
      [v18 setObject:v58 forKey:@"leftLoss10000_dBHL"];

      v59 = [v33 objectAtIndexedSubscript:0];
      [v18 setObject:v59 forKey:@"rightLoss250_dBHL"];

      v60 = [v33 objectAtIndexedSubscript:1];
      [v18 setObject:v60 forKey:@"rightLoss500_dBHL"];

      v61 = [v33 objectAtIndexedSubscript:2];
      [v18 setObject:v61 forKey:@"rightLoss1000_dBHL"];

      v62 = [v33 objectAtIndexedSubscript:3];
      [v18 setObject:v62 forKey:@"rightLoss2000_dBHL"];

      v63 = [v33 objectAtIndexedSubscript:4];
      [v18 setObject:v63 forKey:@"rightLoss3000_dBHL"];

      v64 = [v33 objectAtIndexedSubscript:5];
      [v18 setObject:v64 forKey:@"rightLoss4000_dBHL"];

      v65 = [v33 objectAtIndexedSubscript:6];
      [v18 setObject:v65 forKey:@"rightLoss6000_dBHL"];

      v66 = [v33 objectAtIndexedSubscript:7];
      [v18 setObject:v66 forKey:@"rightLoss10000_dBHL"];

      [v120 setObject:v18 forKey:@"PAConfigPresetMediaKey"];
      v67 = MEMORY[0x277CBEB38];
      v68 = [v114 preset];
      v69 = [v67 dictionaryWithDictionary:v68];

      v70 = [v118 dataFromPreset:v31];
      [v69 setValue:v70 forKey:@"data"];

      v30 = v114;
      [v114 setPreset:v69];
      free(v31);
    }

    if (v32)
    {
      v71 = [v34 objectAtIndexedSubscript:0];
      [v71 floatValue];
      v32[32] = v72;
      *v32 = v72;

      v73 = [v34 objectAtIndexedSubscript:1];
      [v73 floatValue];
      v32[33] = v74;
      v32[1] = v74;

      v75 = [v34 objectAtIndexedSubscript:2];
      [v75 floatValue];
      v32[34] = v76;
      v32[2] = v76;

      v77 = [v34 objectAtIndexedSubscript:3];
      [v77 floatValue];
      v32[35] = v78;
      v32[3] = v78;

      v79 = [v34 objectAtIndexedSubscript:4];
      [v79 floatValue];
      v32[36] = v80;
      v32[4] = v80;

      v81 = [v34 objectAtIndexedSubscript:5];
      [v81 floatValue];
      v32[37] = v82;
      v32[5] = v82;

      v83 = [v34 objectAtIndexedSubscript:6];
      [v83 floatValue];
      v32[38] = v84;
      v32[6] = v84;

      v85 = [v34 objectAtIndexedSubscript:7];
      [v85 floatValue];
      v32[39] = v86;
      v32[7] = v86;

      v32[31] = 0;
      v87 = [v34 objectAtIndexedSubscript:0];
      [v29 setObject:v87 forKey:@"leftLoss250_dBHL"];

      v88 = [v34 objectAtIndexedSubscript:1];
      [v29 setObject:v88 forKey:@"leftLoss500_dBHL"];

      v89 = [v34 objectAtIndexedSubscript:2];
      [v29 setObject:v89 forKey:@"leftLoss1000_dBHL"];

      v90 = [v34 objectAtIndexedSubscript:3];
      [v29 setObject:v90 forKey:@"leftLoss2000_dBHL"];

      v91 = [v34 objectAtIndexedSubscript:4];
      [v29 setObject:v91 forKey:@"leftLoss3000_dBHL"];

      v92 = [v34 objectAtIndexedSubscript:5];
      [v29 setObject:v92 forKey:@"leftLoss4000_dBHL"];

      v93 = [v34 objectAtIndexedSubscript:6];
      [v29 setObject:v93 forKey:@"leftLoss6000_dBHL"];

      v94 = [v34 objectAtIndexedSubscript:7];
      [v29 setObject:v94 forKey:@"leftLoss10000_dBHL"];

      v95 = [v34 objectAtIndexedSubscript:0];
      [v29 setObject:v95 forKey:@"rightLoss250_dBHL"];

      v96 = [v34 objectAtIndexedSubscript:1];
      [v29 setObject:v96 forKey:@"rightLoss500_dBHL"];

      v97 = [v34 objectAtIndexedSubscript:2];
      [v29 setObject:v97 forKey:@"rightLoss1000_dBHL"];

      v98 = [v34 objectAtIndexedSubscript:3];
      [v29 setObject:v98 forKey:@"rightLoss2000_dBHL"];

      v99 = [v34 objectAtIndexedSubscript:4];
      [v29 setObject:v99 forKey:@"rightLoss3000_dBHL"];

      v100 = [v34 objectAtIndexedSubscript:5];
      [v29 setObject:v100 forKey:@"rightLoss4000_dBHL"];

      v101 = [v34 objectAtIndexedSubscript:6];
      [v29 setObject:v101 forKey:@"rightLoss6000_dBHL"];

      v102 = [v34 objectAtIndexedSubscript:7];
      [v29 setObject:v102 forKey:@"rightLoss10000_dBHL"];

      [v120 setObject:v29 forKey:@"PAConfigPresetSpeechKey"];
      v103 = MEMORY[0x277CBEB38];
      [v30 presetAdjustments];
      v104 = v18;
      v106 = v105 = v30;
      v107 = [v106 valueForKey:@"PAPresetAdjustmentSpeechModeKey"];
      v108 = [v103 dictionaryWithDictionary:v107];

      v109 = [v118 dataFromPreset:v32];
      [v108 setValue:v109 forKey:@"data"];

      v7 = v119;
      v110 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v108 forKey:@"PAPresetAdjustmentSpeechModeKey"];
      [v105 setPresetAdjustments:v110];

      v30 = v105;
      v18 = v104;
      free(v32);
    }

    [v30 setAudiogramSettings:v120];
    [v30 setShape:12];
    [v30 setLevel:12];
  }

  else
  {
    v111 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v123 = v6;
      v124 = 2112;
      v125 = v7;
      _os_log_impl(&dword_25E445000, v111, OS_LOG_TYPE_DEFAULT, "Skipping offsets %@ - %@", buf, 0x16u);
    }

    v30 = 0;
  }

  v112 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (PAConfiguration)configurationWithLeftMediaLoss:(id)a3 rightMediaLoss:(id)a4 leftSpeechLoss:(id)a5 andRightSpeechLoss:(id)a6
{
  v192 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count] < 8 || objc_msgSend(v11, "count") < 8 || objc_msgSend(v12, "count") < 8 || objc_msgSend(v13, "count") < 8)
  {
    v14 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      *v186 = [v10 count];
      *&v186[8] = 2048;
      v187 = [v11 count];
      v188 = 2048;
      v189 = [v12 count];
      v190 = 2048;
      v191 = [v13 count];
      _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Missing coefficients [%lu, %lu, %lu, %lu]", buf, 0x2Au);
    }

    v15 = 0;
    goto LABEL_8;
  }

  v175 = a1;
  v176 = v11;
  v177 = v13;
  v178 = v12;
  v181 = 0;
  v18 = 1;
  v19 = 0x279A1C000uLL;
  v180 = v10;
  do
  {
    for (i = 1; i != 4; ++i)
    {
      v21 = [*(v19 + 3648) configurationWithLevel:v18 andShape:i];
      v22 = [v21 settingsFromConfiguration:0];

      if (!v22)
      {
        continue;
      }

      v23 = [v10 objectAtIndexedSubscript:0];
      [v23 floatValue];
      if (v24 != *v22)
      {
        goto LABEL_29;
      }

      v25 = [v10 objectAtIndexedSubscript:1];
      [v25 floatValue];
      if (v26 != v22[1])
      {
        goto LABEL_28;
      }

      v27 = [v10 objectAtIndexedSubscript:2];
      [v27 floatValue];
      if (v28 != v22[2])
      {
        goto LABEL_27;
      }

      v29 = [v10 objectAtIndexedSubscript:3];
      [v29 floatValue];
      if (v30 != v22[3])
      {

LABEL_27:
LABEL_28:

        goto LABEL_29;
      }

      v31 = [v10 objectAtIndexedSubscript:4];
      [v31 floatValue];
      if (v32 != v22[4])
      {

        goto LABEL_36;
      }

      [v10 objectAtIndexedSubscript:5];
      v34 = v33 = v10;
      [v34 floatValue];
      if (v35 != v22[5])
      {
        goto LABEL_35;
      }

      v183 = [v33 objectAtIndexedSubscript:6];
      [v183 floatValue];
      if (v36 != v22[6])
      {

LABEL_35:
        v10 = v33;
LABEL_36:
        v19 = 0x279A1C000;
        goto LABEL_29;
      }

      v37 = [v33 objectAtIndexedSubscript:7];
      [v37 floatValue];
      v39 = v38;
      v40 = v22[7];

      if (v39 != v40)
      {
        v10 = v180;
        v19 = 0x279A1C000;
        goto LABEL_30;
      }

      v41 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v186 = v18;
        *&v186[4] = 1024;
        *&v186[6] = i;
        _os_log_impl(&dword_25E445000, v41, OS_LOG_TYPE_DEFAULT, "Loss matches preset [%d, %d]", buf, 0xEu);
      }

      v19 = 0x279A1C000uLL;
      [PAConfiguration configurationWithLevel:v18 andShape:i];
      v10 = v180;
      v181 = v23 = v181;
LABEL_29:

LABEL_30:
      free(v22);
    }

    ++v18;
  }

  while (v18 != 4);
  v11 = v176;
  v13 = v177;
  v12 = v178;
  v15 = v181;
  if (!v181)
  {
    v182 = [*(v19 + 3648) configurationWithLevel:1 andShape:2];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v42 = paBundle();
    v43 = [v42 pathForResource:@"PresetValues" ofType:@"plist"];

    v44 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v43];
    v45 = [v44 objectForKey:@"level"];
    v46 = [&unk_28702BDF0 stringValue];
    v47 = [v45 objectForKey:v46];

    v48 = MEMORY[0x277CBEB38];
    [v47 objectForKey:@"shape"];
    v50 = v49 = v10;
    v51 = [&unk_28702BDF0 stringValue];
    v52 = [v50 objectForKey:v51];
    v173 = [v48 dictionaryWithDictionary:v52];

    v11 = v176;
    v10 = v49;
    v53 = paBundle();
    v54 = [v53 pathForResource:@"PresetValuesSpeech" ofType:@"plist"];

    v184 = v54;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v54];

    v179 = v55;
    v56 = [v55 objectForKey:@"level"];
    v57 = [&unk_28702BDF0 stringValue];
    v58 = [v56 objectForKey:v57];

    v59 = MEMORY[0x277CBEB38];
    v174 = v58;
    v60 = [v58 objectForKey:@"shape"];
    v61 = [&unk_28702BDF0 stringValue];
    v62 = [v60 objectForKey:v61];
    v63 = [v59 dictionaryWithDictionary:v62];

    v64 = v173;
    v15 = v182;

    v65 = [v182 settingsFromConfiguration:0];
    v66 = [v182 settingsFromConfiguration:1];
    if (v65)
    {
      v67 = [v10 objectAtIndexedSubscript:0];
      [v67 floatValue];
      *v65 = v68;

      v69 = [v10 objectAtIndexedSubscript:1];
      [v69 floatValue];
      v65[1] = v70;

      v71 = [v10 objectAtIndexedSubscript:2];
      [v71 floatValue];
      v65[2] = v72;

      v73 = [v10 objectAtIndexedSubscript:3];
      [v73 floatValue];
      v65[3] = v74;

      v75 = [v10 objectAtIndexedSubscript:4];
      [v75 floatValue];
      v65[4] = v76;

      v77 = [v10 objectAtIndexedSubscript:5];
      [v77 floatValue];
      v65[5] = v78;

      v79 = [v10 objectAtIndexedSubscript:6];
      [v79 floatValue];
      v65[6] = v80;

      v81 = [v10 objectAtIndexedSubscript:7];
      [v81 floatValue];
      v65[7] = v82;

      v83 = [v176 objectAtIndexedSubscript:0];
      [v83 floatValue];
      v65[32] = v84;

      v85 = [v176 objectAtIndexedSubscript:1];
      [v85 floatValue];
      v65[33] = v86;

      v87 = [v176 objectAtIndexedSubscript:2];
      [v87 floatValue];
      v65[34] = v88;

      v89 = [v176 objectAtIndexedSubscript:3];
      [v89 floatValue];
      v65[35] = v90;

      v91 = [v176 objectAtIndexedSubscript:4];
      [v91 floatValue];
      v65[36] = v92;

      v93 = [v176 objectAtIndexedSubscript:5];
      [v93 floatValue];
      v65[37] = v94;

      v95 = [v176 objectAtIndexedSubscript:6];
      [v95 floatValue];
      v65[38] = v96;

      v97 = [v176 objectAtIndexedSubscript:7];
      [v97 floatValue];
      v65[39] = v98;

      v99 = [v10 objectAtIndexedSubscript:0];
      [v173 setObject:v99 forKey:@"leftLoss250_dBHL"];

      v100 = [v10 objectAtIndexedSubscript:1];
      [v173 setObject:v100 forKey:@"leftLoss500_dBHL"];

      v101 = [v10 objectAtIndexedSubscript:2];
      [v173 setObject:v101 forKey:@"leftLoss1000_dBHL"];

      v102 = [v10 objectAtIndexedSubscript:3];
      [v173 setObject:v102 forKey:@"leftLoss2000_dBHL"];

      v103 = [v10 objectAtIndexedSubscript:4];
      [v173 setObject:v103 forKey:@"leftLoss3000_dBHL"];

      v104 = [v10 objectAtIndexedSubscript:5];
      [v173 setObject:v104 forKey:@"leftLoss4000_dBHL"];

      v105 = [v10 objectAtIndexedSubscript:6];
      [v173 setObject:v105 forKey:@"leftLoss6000_dBHL"];

      v106 = [v10 objectAtIndexedSubscript:7];
      [v173 setObject:v106 forKey:@"leftLoss10000_dBHL"];

      v107 = [v176 objectAtIndexedSubscript:0];
      [v173 setObject:v107 forKey:@"rightLoss250_dBHL"];

      v108 = [v176 objectAtIndexedSubscript:1];
      [v173 setObject:v108 forKey:@"rightLoss500_dBHL"];

      v109 = [v176 objectAtIndexedSubscript:2];
      [v173 setObject:v109 forKey:@"rightLoss1000_dBHL"];

      v110 = [v176 objectAtIndexedSubscript:3];
      [v173 setObject:v110 forKey:@"rightLoss2000_dBHL"];

      v111 = [v176 objectAtIndexedSubscript:4];
      [v173 setObject:v111 forKey:@"rightLoss3000_dBHL"];

      v112 = [v176 objectAtIndexedSubscript:5];
      [v173 setObject:v112 forKey:@"rightLoss4000_dBHL"];

      v113 = [v176 objectAtIndexedSubscript:6];
      [v173 setObject:v113 forKey:@"rightLoss6000_dBHL"];

      v114 = [v176 objectAtIndexedSubscript:7];
      [v173 setObject:v114 forKey:@"rightLoss10000_dBHL"];

      [v14 setObject:v173 forKey:@"PAConfigPresetMediaKey"];
      [v14 setObject:v10 forKey:@"PAConfigLeftMediaKey"];
      [v14 setObject:v176 forKey:@"PAConfigRightMediaKey"];
      v115 = MEMORY[0x277CBEB38];
      v116 = [v182 preset];
      v117 = [v115 dictionaryWithDictionary:v116];

      v118 = [v175 dataFromPreset:v65];
      [v117 setValue:v118 forKey:@"data"];

      [v182 setPreset:v117];
      free(v65);
    }

    if (v66)
    {
      v119 = [v178 objectAtIndexedSubscript:0];
      [v119 floatValue];
      *v66 = v120;

      v121 = [v178 objectAtIndexedSubscript:1];
      [v121 floatValue];
      v66[1] = v122;

      v123 = [v178 objectAtIndexedSubscript:2];
      [v123 floatValue];
      v66[2] = v124;

      v125 = [v178 objectAtIndexedSubscript:3];
      [v125 floatValue];
      v66[3] = v126;

      v127 = [v178 objectAtIndexedSubscript:4];
      [v127 floatValue];
      v66[4] = v128;

      v129 = [v178 objectAtIndexedSubscript:5];
      [v129 floatValue];
      v66[5] = v130;

      v131 = [v178 objectAtIndexedSubscript:6];
      [v131 floatValue];
      v66[6] = v132;

      v133 = [v178 objectAtIndexedSubscript:7];
      [v133 floatValue];
      v66[7] = v134;

      v135 = [v177 objectAtIndexedSubscript:0];
      [v135 floatValue];
      v66[32] = v136;

      v137 = [v177 objectAtIndexedSubscript:1];
      [v137 floatValue];
      v66[33] = v138;

      v139 = [v177 objectAtIndexedSubscript:2];
      [v139 floatValue];
      v66[34] = v140;

      v141 = [v177 objectAtIndexedSubscript:3];
      [v141 floatValue];
      v66[35] = v142;

      v143 = [v177 objectAtIndexedSubscript:4];
      [v143 floatValue];
      v66[36] = v144;

      v145 = [v177 objectAtIndexedSubscript:5];
      [v145 floatValue];
      v66[37] = v146;

      v147 = [v177 objectAtIndexedSubscript:6];
      [v147 floatValue];
      v66[38] = v148;

      v149 = [v177 objectAtIndexedSubscript:7];
      [v149 floatValue];
      v66[39] = v150;

      v151 = [v178 objectAtIndexedSubscript:0];
      [v63 setObject:v151 forKey:@"leftLoss250_dBHL"];

      v152 = [v178 objectAtIndexedSubscript:1];
      [v63 setObject:v152 forKey:@"leftLoss500_dBHL"];

      v153 = [v178 objectAtIndexedSubscript:2];
      [v63 setObject:v153 forKey:@"leftLoss1000_dBHL"];

      v154 = [v178 objectAtIndexedSubscript:3];
      [v63 setObject:v154 forKey:@"leftLoss2000_dBHL"];

      v155 = [v178 objectAtIndexedSubscript:4];
      [v63 setObject:v155 forKey:@"leftLoss3000_dBHL"];

      v156 = [v178 objectAtIndexedSubscript:5];
      [v63 setObject:v156 forKey:@"leftLoss4000_dBHL"];

      v157 = [v178 objectAtIndexedSubscript:6];
      [v63 setObject:v157 forKey:@"leftLoss6000_dBHL"];

      v158 = [v178 objectAtIndexedSubscript:7];
      [v63 setObject:v158 forKey:@"leftLoss10000_dBHL"];

      v159 = [v177 objectAtIndexedSubscript:0];
      [v63 setObject:v159 forKey:@"rightLoss250_dBHL"];

      v160 = [v177 objectAtIndexedSubscript:1];
      [v63 setObject:v160 forKey:@"rightLoss500_dBHL"];

      v161 = [v177 objectAtIndexedSubscript:2];
      [v63 setObject:v161 forKey:@"rightLoss1000_dBHL"];

      v162 = [v177 objectAtIndexedSubscript:3];
      [v63 setObject:v162 forKey:@"rightLoss2000_dBHL"];

      v163 = [v177 objectAtIndexedSubscript:4];
      [v63 setObject:v163 forKey:@"rightLoss3000_dBHL"];

      v164 = [v177 objectAtIndexedSubscript:5];
      [v63 setObject:v164 forKey:@"rightLoss4000_dBHL"];

      v165 = [v177 objectAtIndexedSubscript:6];
      [v63 setObject:v165 forKey:@"rightLoss6000_dBHL"];

      v166 = [v177 objectAtIndexedSubscript:7];
      [v63 setObject:v166 forKey:@"rightLoss10000_dBHL"];

      [v14 setObject:v63 forKey:@"PAConfigPresetSpeechKey"];
      [v14 setObject:v178 forKey:@"PAConfigLeftSpeechKey"];
      [v14 setObject:v177 forKey:@"PAConfigRightSpeechKey"];
      v167 = MEMORY[0x277CBEB38];
      v168 = [v182 presetAdjustments];
      v169 = [v168 valueForKey:@"PAPresetAdjustmentSpeechModeKey"];
      v170 = [v167 dictionaryWithDictionary:v169];

      v64 = v173;
      v171 = [v175 dataFromPreset:v66];
      [v170 setValue:v171 forKey:@"data"];

      v15 = v182;
      v172 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v170 forKey:@"PAPresetAdjustmentSpeechModeKey"];
      [v182 setPresetAdjustments:v172];

      free(v66);
    }

    [v15 setAudiogramSettings:{v14, v173}];
    [v15 setShape:12];
    [v15 setLevel:12];

    v13 = v177;
    v12 = v178;
LABEL_8:
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)configurationFromAudiogramSample:(id)a3
{
  v3 = [PAAudiogramUtilities normalizedOffsetsFromAudiogram:a3];
  v4 = [PAConfiguration configurationWithAudiogram:v3];

  return v4;
}

+ (id)paramDataWithValue:(float)a3 andOffset:(int)a4
{
  v6[0] = bswap32(a4 >> 2);
  v6[1] = bswap32(LODWORD(a3));
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:8];

  return v4;
}

+ (id)dataFromPreset:(id *)a3
{
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = v5;
  *&v7 = a3->var0;
  if (a3->var0 == a3->var32 && (*&v7 = a3->var1, *&v7 == a3->var33) && (*&v7 = a3->var2, *&v7 == a3->var34) && (*&v7 = a3->var3, *&v7 == a3->var35) && (*&v7 = a3->var4, *&v7 == a3->var36) && (*&v7 = a3->var5, *&v7 == a3->var37) && (*&v7 = a3->var6, *&v7 == a3->var38))
  {
    *&v7 = a3->var7;
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  v90 = 0;
  v91 = 671088640;
  [v5 appendBytes:&v90 length:{12, v7}];
  *&v9 = a3->var0;
  v10 = [a1 paramDataWithValue:0 andOffset:v9];
  [v6 appendData:v10];

  *&v11 = a3->var1;
  v12 = [a1 paramDataWithValue:4 andOffset:v11];
  [v6 appendData:v12];

  *&v13 = a3->var2;
  v14 = [a1 paramDataWithValue:8 andOffset:v13];
  [v6 appendData:v14];

  *&v15 = a3->var3;
  v16 = [a1 paramDataWithValue:12 andOffset:v15];
  [v6 appendData:v16];

  *&v17 = a3->var4;
  v18 = [a1 paramDataWithValue:16 andOffset:v17];
  [v6 appendData:v18];

  *&v19 = a3->var5;
  v20 = [a1 paramDataWithValue:20 andOffset:v19];
  [v6 appendData:v20];

  *&v21 = a3->var6;
  v22 = [a1 paramDataWithValue:24 andOffset:v21];
  [v6 appendData:v22];

  *&v23 = a3->var7;
  v24 = [a1 paramDataWithValue:28 andOffset:v23];
  [v6 appendData:v24];

  *&v25 = a3->var8;
  v26 = [a1 paramDataWithValue:32 andOffset:v25];
  [v6 appendData:v26];

  *&v27 = a3->var9;
  v28 = [a1 paramDataWithValue:36 andOffset:v27];
  [v6 appendData:v28];

  *&v29 = a3->var10;
  v30 = [a1 paramDataWithValue:40 andOffset:v29];
  [v6 appendData:v30];

  *&v31 = a3->var11;
  v32 = [a1 paramDataWithValue:44 andOffset:v31];
  [v6 appendData:v32];

  *&v33 = a3->var12;
  v34 = [a1 paramDataWithValue:48 andOffset:v33];
  [v6 appendData:v34];

  *&v35 = a3->var13;
  v36 = [a1 paramDataWithValue:52 andOffset:v35];
  [v6 appendData:v36];

  *&v37 = a3->var14;
  v38 = [a1 paramDataWithValue:56 andOffset:v37];
  [v6 appendData:v38];

  *&v39 = a3->var15;
  v40 = [a1 paramDataWithValue:60 andOffset:v39];
  [v6 appendData:v40];

  *&v41 = a3->var16;
  v42 = [a1 paramDataWithValue:64 andOffset:v41];
  [v6 appendData:v42];

  *&v43 = a3->var17;
  v44 = [a1 paramDataWithValue:68 andOffset:v43];
  [v6 appendData:v44];

  *&v45 = a3->var18;
  v46 = [a1 paramDataWithValue:72 andOffset:v45];
  [v6 appendData:v46];

  *&v47 = a3->var19;
  v48 = [a1 paramDataWithValue:76 andOffset:v47];
  [v6 appendData:v48];

  *&v49 = a3->var20;
  v50 = [a1 paramDataWithValue:80 andOffset:v49];
  [v6 appendData:v50];

  *&v51 = a3->var21;
  v52 = [a1 paramDataWithValue:84 andOffset:v51];
  [v6 appendData:v52];

  *&v53 = a3->var22;
  v54 = [a1 paramDataWithValue:88 andOffset:v53];
  [v6 appendData:v54];

  *&v55 = a3->var23;
  v56 = [a1 paramDataWithValue:92 andOffset:v55];
  [v6 appendData:v56];

  *&v57 = a3->var24;
  v58 = [a1 paramDataWithValue:96 andOffset:v57];
  [v6 appendData:v58];

  *&v59 = a3->var25;
  v60 = [a1 paramDataWithValue:100 andOffset:v59];
  [v6 appendData:v60];

  *&v61 = a3->var26;
  v62 = [a1 paramDataWithValue:104 andOffset:v61];
  [v6 appendData:v62];

  *&v63 = a3->var27;
  v64 = [a1 paramDataWithValue:108 andOffset:v63];
  [v6 appendData:v64];

  *&v65 = a3->var28;
  v66 = [a1 paramDataWithValue:112 andOffset:v65];
  [v6 appendData:v66];

  *&v67 = a3->var29;
  v68 = [a1 paramDataWithValue:116 andOffset:v67];
  [v6 appendData:v68];

  *&v69 = a3->var30;
  v70 = [a1 paramDataWithValue:120 andOffset:v69];
  [v6 appendData:v70];

  *&v71 = v8;
  v72 = [a1 paramDataWithValue:124 andOffset:v71];
  [v6 appendData:v72];

  *&v73 = a3->var32;
  v74 = [a1 paramDataWithValue:128 andOffset:v73];
  [v6 appendData:v74];

  *&v75 = a3->var33;
  v76 = [a1 paramDataWithValue:132 andOffset:v75];
  [v6 appendData:v76];

  *&v77 = a3->var34;
  v78 = [a1 paramDataWithValue:136 andOffset:v77];
  [v6 appendData:v78];

  *&v79 = a3->var35;
  v80 = [a1 paramDataWithValue:140 andOffset:v79];
  [v6 appendData:v80];

  *&v81 = a3->var36;
  v82 = [a1 paramDataWithValue:144 andOffset:v81];
  [v6 appendData:v82];

  *&v83 = a3->var37;
  v84 = [a1 paramDataWithValue:148 andOffset:v83];
  [v6 appendData:v84];

  *&v85 = a3->var38;
  v86 = [a1 paramDataWithValue:152 andOffset:v85];
  [v6 appendData:v86];

  *&v87 = a3->var39;
  v88 = [a1 paramDataWithValue:156 andOffset:v87];
  [v6 appendData:v88];

  return v6;
}

- (PAConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PAConfiguration;
  v5 = [(PAConfiguration *)&v25 init];
  if (v5)
  {
    -[PAConfiguration setLevel:](v5, "setLevel:", [v4 decodeIntegerForKey:@"PAConfigPresetLevelKey"]);
    -[PAConfiguration setShape:](v5, "setShape:", [v4 decodeIntegerForKey:@"PAConfigPresetShapeKey"]);
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v24 = 0;
    v13 = [v4 decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetKey" error:&v24];
    v14 = v24;
    [(PAConfiguration *)v5 setPreset:v13];

    if (v14 && [v14 code] != 4865)
    {
      v15 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PAConfiguration initWithCoder:];
      }
    }

    v23 = 0;
    v16 = [v4 decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetAdjustmentsKey" error:&v23];
    v17 = v23;
    [(PAConfiguration *)v5 setPresetAdjustments:v16];

    if (v17 && [v17 code] != 4865)
    {
      v18 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PAConfiguration initWithCoder:];
      }
    }

    if ([v4 containsValueForKey:@"PAConfigPresetAudiogramKey"])
    {

      v22 = 0;
      v19 = [v4 decodeTopLevelObjectOfClasses:v12 forKey:@"PAConfigPresetAudiogramKey" error:&v22];
      v17 = v22;
      [(PAConfiguration *)v5 setAudiogramSettings:v19];

      if (v17)
      {
        v20 = HCLogAudioAccommodations();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PAConfiguration initWithCoder:];
        }
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:self->_level forKey:@"PAConfigPresetLevelKey"];
  [v9 encodeInteger:self->_shape forKey:@"PAConfigPresetShapeKey"];
  v4 = [(PAConfiguration *)self preset];
  [v9 encodeObject:v4 forKey:@"PAConfigPresetKey"];

  v5 = [(PAConfiguration *)self presetAdjustments];
  [v9 encodeObject:v5 forKey:@"PAConfigPresetAdjustmentsKey"];

  v6 = [(PAConfiguration *)self audiogramSettings];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(PAConfiguration *)self audiogramSettings];
    [v9 encodeObject:v8 forKey:@"PAConfigPresetAudiogramKey"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PAConfiguration *)self preset];
    v7 = [v5 preset];
    if ([v6 isEqualToDictionary:v7])
    {
      v8 = [(PAConfiguration *)self presetAdjustments];
      v9 = [v5 presetAdjustments];
      v10 = [v8 isEqualToDictionary:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($582E6112602F317AA177BE214B91E8F0)readSettingsFromPreset:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 valueForKey:@"data"];
  if ([v3 length])
  {
    v4 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
    v5 = [MEMORY[0x277CBEB28] dataWithLength:160];
    v18 = 0;
    v17 = 0;
    [v3 getBytes:&v17 range:{0, 12}];
    v6 = bswap32(v18);
    if (v6 >= 1)
    {
      v7 = 20;
      do
      {
        *buf = 0;
        if (v7 <= [v3 length])
        {
          [v3 getBytes:buf range:{v7 - 8, 8}];
          v8 = bswap32(*buf);
          v16 = bswap32(*&buf[4]);
          if (v8 <= 0x28)
          {
            [v5 replaceBytesInRange:4 * v8 withBytes:{4, &v16}];
          }
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    if ([v5 length] != 160)
    {
      v9 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(PAConfiguration *)v5 readSettingsFromPreset:v9];
      }
    }

    [v5 getBytes:v4 length:{objc_msgSend(v5, "length")}];
    v10 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      var0 = v4->var0;
      var32 = v4->var32;
      *buf = 134218240;
      *&buf[4] = var0;
      v20 = 2048;
      v21 = var32;
      _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Preset settings (first band) {%lf, %lf}", buf, 0x16u);
    }

    v13 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PAConfiguration readSettingsFromPreset:v4];
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- ($0F930BAB90C9DC9B4982FDE0E97FE34F)transparencySettingsv4ForAddress:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PAConfiguration *)self settingsFromConfiguration:0];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
    v8 = vdupq_n_s64(0x4054000000000000uLL);
    *(v7 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(*v6), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6->f32), v8), 0));
    *(v7 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[2]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[2].f32), v8), 0));
    *(v7 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[16]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[16].f32), v8), 0));
    *(v7 + 68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[18]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[18].f32), v8), 0));
    v9 = +[PASettings sharedInstance];
    [v9 transparencyToneForAddress:v4];
    v11 = v10 * 2.0 + -1.0;

    v12 = +[PASettings sharedInstance];
    [v12 transparencyBalanceForAddress:v4];
    v14 = v13 * 2.0 + -1.0;

    v15 = +[PASettings sharedInstance];
    [v15 transparencyAmplificationForAddress:v4];
    v17 = v16 * 2.0 + -1.0;

    if (v14 <= 0.0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = v17 - v18;
    v20 = fmax(v14, 0.0) + v17;
    v21 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v66 = 134218752;
      v67 = v11;
      v68 = 2048;
      v69 = v19;
      v70 = 2048;
      v71 = v20;
      v72 = 2048;
      v73 = v14;
      _os_log_impl(&dword_25E445000, v21, OS_LOG_TYPE_DEFAULT, "Sending tone: %lf, leftGain: %lf, rightGain: %lf balance %lf", &v66, 0x2Au);
    }

    v22 = +[PASettings sharedInstance];
    v23 = [v22 transparencyBeamformingForAddress:v4];
    *(v7 + 23) = v23;
    *(v7 + 11) = v23;

    v24 = +[PASettings sharedInstance];
    [v24 transparencyNoiseSupressorForAddress:v4];
    *&v25 = v25;
    *(v7 + 24) = LODWORD(v25);
    *(v7 + 12) = LODWORD(v25);

    v26 = fmax(fmin(v11, 1.0), -1.0);
    v27 = fmax(fmin(v19, 2.0), -1.0);
    *(v7 + 9) = v27;
    *(v7 + 10) = v26;
    v28 = fmax(fmin(v20, 2.0), -1.0);
    *(v7 + 21) = v28;
    *(v7 + 22) = v26;
    v29 = +[PASettings sharedInstance];
    if ([v29 personalMediaEnabled])
    {
      v30 = +[PASettings sharedInstance];
      *v7 = [v30 transparencyCustomizedForAddress:v4];
    }

    else
    {
      *v7 = 0;
    }

    v31 = +[PASettings sharedInstance];
    [v31 transparencyOwnVoiceForAddress:v4];
    *&v32 = v32;
    *(v7 + 25) = LODWORD(v32);

    v33 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *v7;
      v35 = *(v7 + 1);
      v36 = *(v7 + 13);
      v66 = 134218496;
      v67 = v34;
      v68 = 2048;
      v69 = v35;
      v70 = 2048;
      v71 = v36;
      _os_log_impl(&dword_25E445000, v33, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, first band: {%lf, %lf}", &v66, 0x20u);
    }

    v37 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *v7;
      v39 = *(v7 + 25);
      v40 = *(v7 + 1);
      v41 = *(v7 + 2);
      v42 = *(v7 + 3);
      v43 = *(v7 + 4);
      v44 = *(v7 + 5);
      v45 = *(v7 + 6);
      v46 = *(v7 + 7);
      v47 = *(v7 + 8);
      v48 = *(v7 + 9);
      v49 = *(v7 + 10);
      v50 = *(v7 + 11);
      v51 = *(v7 + 12);
      v52 = *(v7 + 13);
      v53 = *(v7 + 14);
      v54 = *(v7 + 15);
      v55 = *(v7 + 16);
      v56 = *(v7 + 17);
      v57 = *(v7 + 18);
      v58 = *(v7 + 19);
      v59 = *(v7 + 20);
      v60 = *(v7 + 21);
      v61 = *(v7 + 22);
      v62 = *(v7 + 23);
      v63 = *(v7 + 24);
      v66 = 134224384;
      v67 = v38;
      v68 = 2048;
      v69 = v39;
      v70 = 2048;
      v71 = v40;
      v72 = 2048;
      v73 = v41;
      v74 = 2048;
      v75 = v42;
      v76 = 2048;
      v77 = v43;
      v78 = 2048;
      v79 = v44;
      v80 = 2048;
      v81 = v45;
      v82 = 2048;
      v83 = v46;
      v84 = 2048;
      v85 = v47;
      v86 = 2048;
      v87 = v48;
      v88 = 2048;
      v89 = v49;
      v90 = 2048;
      v91 = v50;
      v92 = 2048;
      v93 = v51;
      v94 = 2048;
      v95 = v52;
      v96 = 2048;
      v97 = v53;
      v98 = 2048;
      v99 = v54;
      v100 = 2048;
      v101 = v55;
      v102 = 2048;
      v103 = v56;
      v104 = 2048;
      v105 = v57;
      v106 = 2048;
      v107 = v58;
      v108 = 2048;
      v109 = v59;
      v110 = 2048;
      v111 = v60;
      v112 = 2048;
      v113 = v61;
      v114 = 2048;
      v115 = v62;
      v116 = 2048;
      v117 = v63;
      _os_log_impl(&dword_25E445000, v37, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, %lf, %lf, left: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}, right: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v66, 0x106u);
    }

    free(v6);
  }

  else
  {
    v7 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v7;
}

- ($D1907C19D6DE236B0F95485CBF7F2EE1)transparencySettingsForAddress:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PAConfiguration *)self settingsFromConfiguration:0];
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x64uLL, 0x100004093FC706DuLL);
    v8 = vdupq_n_s64(0x4054000000000000uLL);
    *(v7 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(*v6), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6->f32), v8), 0));
    *(v7 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[2]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[2].f32), v8), 0));
    *(v7 + 52) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[16]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[16].f32), v8), 0));
    *(v7 + 68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmaxnmq_f64(vminnmq_f64(vcvtq_f64_f32(v6[18]), v8), 0)), vmaxnmq_f64(vminnmq_f64(vcvt_hight_f64_f32(*v6[18].f32), v8), 0));
    v9 = +[PASettings sharedInstance];
    [v9 transparencyToneForAddress:v4];
    v11 = v10 * 2.0 + -1.0;

    v12 = +[PASettings sharedInstance];
    [v12 transparencyBalanceForAddress:v4];
    v14 = v13 * 2.0 + -1.0;

    v15 = +[PASettings sharedInstance];
    [v15 transparencyAmplificationForAddress:v4];
    v17 = v16 * 2.0 + -1.0;

    if (v14 <= 0.0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = v17 - v18;
    v20 = fmax(v14, 0.0) + v17;
    v21 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v63 = 134218752;
      v64 = v11;
      v65 = 2048;
      v66 = v19;
      v67 = 2048;
      v68 = v20;
      v69 = 2048;
      v70 = v14;
      _os_log_impl(&dword_25E445000, v21, OS_LOG_TYPE_DEFAULT, "Sending tone: %lf, leftGain: %lf, rightGain: %lf balance %lf", &v63, 0x2Au);
    }

    v22 = +[PASettings sharedInstance];
    v23 = [v22 transparencyBeamformingForAddress:v4];
    *(v7 + 23) = v23;
    *(v7 + 11) = v23;

    v24 = +[PASettings sharedInstance];
    [v24 transparencyNoiseSupressorForAddress:v4];
    *&v25 = v25;
    *(v7 + 24) = LODWORD(v25);
    *(v7 + 12) = LODWORD(v25);

    v26 = fmax(fmin(v11, 1.0), -1.0);
    v27 = fmax(fmin(v19, 2.0), -1.0);
    *(v7 + 9) = v27;
    *(v7 + 10) = v26;
    v28 = fmax(fmin(v20, 2.0), -1.0);
    *(v7 + 21) = v28;
    *(v7 + 22) = v26;
    v29 = +[PASettings sharedInstance];
    if ([v29 personalMediaEnabled])
    {
      v30 = +[PASettings sharedInstance];
      *v7 = [v30 transparencyCustomizedForAddress:v4];
    }

    else
    {
      *v7 = 0;
    }

    v31 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *v7;
      v33 = *(v7 + 1);
      v34 = *(v7 + 13);
      v63 = 134218496;
      v64 = v32;
      v65 = 2048;
      v66 = v33;
      v67 = 2048;
      v68 = v34;
      _os_log_impl(&dword_25E445000, v31, OS_LOG_TYPE_DEFAULT, "Sending enabled %lf, first band: {%lf, %lf}", &v63, 0x20u);
    }

    v35 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v38 = *v7;
      v39 = *(v7 + 1);
      v40 = *(v7 + 2);
      v41 = *(v7 + 3);
      v42 = *(v7 + 4);
      v43 = *(v7 + 5);
      v44 = *(v7 + 6);
      v45 = *(v7 + 7);
      v46 = *(v7 + 8);
      v47 = *(v7 + 9);
      v48 = *(v7 + 10);
      v49 = *(v7 + 11);
      v50 = *(v7 + 12);
      v51 = *(v7 + 13);
      v52 = *(v7 + 14);
      v53 = *(v7 + 15);
      v54 = *(v7 + 16);
      v55 = *(v7 + 17);
      v56 = *(v7 + 18);
      v57 = *(v7 + 19);
      v58 = *(v7 + 20);
      v59 = *(v7 + 21);
      v60 = *(v7 + 22);
      v61 = *(v7 + 23);
      v62 = *(v7 + 24);
      v63 = 134224128;
      v64 = v38;
      v65 = 2048;
      v66 = v39;
      v67 = 2048;
      v68 = v40;
      v69 = 2048;
      v70 = v41;
      v71 = 2048;
      v72 = v42;
      v73 = 2048;
      v74 = v43;
      v75 = 2048;
      v76 = v44;
      v77 = 2048;
      v78 = v45;
      v79 = 2048;
      v80 = v46;
      v81 = 2048;
      v82 = v47;
      v83 = 2048;
      v84 = v48;
      v85 = 2048;
      v86 = v49;
      v87 = 2048;
      v88 = v50;
      v89 = 2048;
      v90 = v51;
      v91 = 2048;
      v92 = v52;
      v93 = 2048;
      v94 = v53;
      v95 = 2048;
      v96 = v54;
      v97 = 2048;
      v98 = v55;
      v99 = 2048;
      v100 = v56;
      v101 = 2048;
      v102 = v57;
      v103 = 2048;
      v104 = v58;
      v105 = 2048;
      v106 = v59;
      v107 = 2048;
      v108 = v60;
      v109 = 2048;
      v110 = v61;
      v111 = 2048;
      v112 = v62;
      _os_log_debug_impl(&dword_25E445000, v35, OS_LOG_TYPE_DEBUG, "Sending enabled %lf, left: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}, right: {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v63, 0xFCu);
    }

    free(v6);
  }

  else
  {
    v7 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)lossArrayFromDictionary:(id)a3 forLeft:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = [v5 array];
  if (v4)
  {
    v8 = @"leftLoss250_dBHL";
  }

  else
  {
    v8 = @"rightLoss250_dBHL";
  }

  if (v4)
  {
    v9 = @"leftLoss500_dBHL";
  }

  else
  {
    v9 = @"rightLoss500_dBHL";
  }

  if (v4)
  {
    v10 = @"leftLoss1000_dBHL";
  }

  else
  {
    v10 = @"rightLoss1000_dBHL";
  }

  if (v4)
  {
    v11 = @"leftLoss2000_dBHL";
  }

  else
  {
    v11 = @"rightLoss2000_dBHL";
  }

  if (v4)
  {
    v12 = @"leftLoss3000_dBHL";
  }

  else
  {
    v12 = @"rightLoss3000_dBHL";
  }

  if (v4)
  {
    v13 = @"leftLoss4000_dBHL";
  }

  else
  {
    v13 = @"rightLoss4000_dBHL";
  }

  if (v4)
  {
    v14 = @"leftLoss6000_dBHL";
  }

  else
  {
    v14 = @"rightLoss6000_dBHL";
  }

  if (v4)
  {
    v15 = @"leftLoss10000_dBHL";
  }

  else
  {
    v15 = @"rightLoss10000_dBHL";
  }

  v16 = [v6 objectForKey:v8];
  [v7 hcSafeAddObject:v16];

  v17 = [v6 objectForKey:v9];
  [v7 hcSafeAddObject:v17];

  v18 = [v6 objectForKey:v10];
  [v7 hcSafeAddObject:v18];

  v19 = [v6 objectForKey:v11];
  [v7 hcSafeAddObject:v19];

  v20 = [v6 objectForKey:v12];
  [v7 hcSafeAddObject:v20];

  v21 = [v6 objectForKey:v13];
  [v7 hcSafeAddObject:v21];

  v22 = [v6 objectForKey:v14];
  [v7 hcSafeAddObject:v22];

  v23 = [v6 objectForKey:v15];

  [v7 hcSafeAddObject:v23];
  if ([v7 count] == 8)
  {
    v24 = v7;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (id)onBudsMediaSettingsForRoute:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(getHMDeviceConfigurationsClass());
  v6 = +[PASettings sharedInstance];
  v36 = v4;
  v7 = [v6 personalMediaEnabledForRouteUID:v4];

  if (v7)
  {
    v8 = +[PASettings sharedInstance];
    v9 = [v8 personalAudioAccommodationTypes];
  }

  else
  {
    v9 = 0;
  }

  v10 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = +[PASettings sharedInstance];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "currentEnrollmentProgress")}];
    v14 = +[PASettings sharedInstance];
    v15 = [v14 personalMediaEnabledByRouteUID];
    v16 = +[PASettings sharedInstance];
    v17 = [v16 accommodationTypesByRouteUID];
    *buf = 138413058;
    v38 = v36;
    v39 = 2112;
    v40 = v13;
    v41 = 2112;
    v42 = v15;
    v43 = 2112;
    v44 = v17;
    _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Checking state %@ - %@ - %@ - %@", buf, 0x2Au);
  }

  v18 = +[PASettings sharedInstance];
  if ([v18 currentEnrollmentProgress] == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  [v5 setEnrollPMEVoice:v19];

  if ((v9 & 2) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v5 setEnablePMEVoice:v20];
  if ((v9 & 4) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  [v5 setEnablePMEMedia:v21];
  v22 = [(PAConfiguration *)self presetDictionaryForSpeech:1];
  v23 = [(PAConfiguration *)self presetDictionaryForSpeech:0];
  v24 = [(PAConfiguration *)self lossArrayFromDictionary:v23 forLeft:1];
  [v5 setMediaLossArrayLeft:v24];

  v25 = [(PAConfiguration *)self lossArrayFromDictionary:v23 forLeft:0];
  [v5 setMediaLossArrayRight:v25];

  v26 = [(PAConfiguration *)self lossArrayFromDictionary:v22 forLeft:1];
  [v5 setVoiceLossArrayLeft:v26];

  v27 = [(PAConfiguration *)self lossArrayFromDictionary:v22 forLeft:0];
  [v5 setVoiceLossArrayRight:v27];

  v28 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_25E445000, v28, OS_LOG_TYPE_DEFAULT, "Media config for route %@", buf, 0xCu);
  }

  v29 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v5 mediaLossArrayLeft];
    v31 = [v5 mediaLossArrayRight];
    v32 = [v5 voiceLossArrayLeft];
    v33 = [v5 voiceLossArrayRight];
    *buf = 138413058;
    v38 = v30;
    v39 = 2112;
    v40 = v31;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v33;
    _os_log_impl(&dword_25E445000, v29, OS_LOG_TYPE_DEFAULT, "Sending configuration [%@, %@], [%@, %@]", buf, 0x2Au);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v5;
}

- (float)pureToneAverageForSpeech:(BOOL)a3
{
  v3 = a3;
  v50 = *MEMORY[0x277D85DE8];
  if (self->_level == 12)
  {
    v5 = [(PAConfiguration *)self audiogramSettings];
    v6 = v5;
    if (v3)
    {
      v7 = @"PAConfigPresetSpeechKey";
    }

    else
    {
      v7 = @"PAConfigPresetMediaKey";
    }

    v8 = [v5 objectForKey:v7];
  }

  else
  {
    v9 = @"PresetValues";
    if (a3)
    {
      v9 = @"PresetValuesSpeech";
    }

    v10 = v9;
    v11 = paBundle();
    v6 = [v11 pathForResource:v10 ofType:@"plist"];

    v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v13 = [v12 objectForKey:@"level"];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration level](self, "level")}];
    v15 = [v14 stringValue];
    v16 = [v13 objectForKey:v15];

    v17 = [v16 objectForKey:@"shape"];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAConfiguration shape](self, "shape")}];
    v19 = [v18 stringValue];
    v8 = [v17 objectForKey:v19];
  }

  v20 = 0.0;
  if ([v8 count] == 40)
  {
    v21 = [v8 objectForKey:@"leftLoss500_dBHL"];
    [v21 floatValue];
    v23 = v22;
    v24 = [v8 objectForKey:@"leftLoss1000_dBHL"];
    [v24 floatValue];
    v26 = v23 + v25;
    v27 = [v8 objectForKey:@"leftLoss2000_dBHL"];
    [v27 floatValue];
    v29 = v26 + v28;
    v30 = [v8 objectForKey:@"leftLoss4000_dBHL"];
    [v30 floatValue];
    v32 = (v29 + v31) * 0.25;

    v33 = [v8 objectForKey:@"rightLoss500_dBHL"];
    [v33 floatValue];
    v35 = v34;
    v36 = [v8 objectForKey:@"rightLoss1000_dBHL"];
    [v36 floatValue];
    v38 = v35 + v37;
    v39 = [v8 objectForKey:@"rightLoss2000_dBHL"];
    [v39 floatValue];
    v41 = v38 + v40;
    v42 = [v8 objectForKey:@"rightLoss4000_dBHL"];
    [v42 floatValue];
    v20 = (v41 + v43) * 0.25;

    if (v32 < v20)
    {
      v20 = v32;
    }
  }

  v44 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v47[0] = 67109376;
    v47[1] = v3;
    v48 = 2048;
    v49 = v20;
    _os_log_impl(&dword_25E445000, v44, OS_LOG_TYPE_DEFAULT, "PTA %d = %lf", v47, 0x12u);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)initWithCoder:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25E445000, v0, v1, "Error decoding preset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25E445000, v0, v1, "Error decoding preset adjustments: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25E445000, v0, v1, "Error decoding audiogram preset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)settingsFromConfiguration:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E445000, v0, OS_LOG_TYPE_DEBUG, "Preset values %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)readSettingsFromPreset:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_25E445000, a2, OS_LOG_TYPE_FAULT, "PAPresetSettings translated data wrong length %lu", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)readSettingsFromPreset:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v121 = *MEMORY[0x277D85DE8];
  v61 = 134227968;
  v1 = *(a1 + 4);
  v62 = OUTLINED_FUNCTION_0(*a1);
  v64 = v2;
  LODWORD(v2) = *(v3 + 12);
  v66 = OUTLINED_FUNCTION_0(*(v3 + 8));
  v68 = v4;
  LODWORD(v4) = *(v5 + 20);
  v70 = OUTLINED_FUNCTION_0(*(v5 + 16));
  v72 = v6;
  LODWORD(v6) = *(v7 + 28);
  v74 = OUTLINED_FUNCTION_0(*(v7 + 24));
  v76 = v8;
  LODWORD(v8) = *(v9 + 36);
  v78 = OUTLINED_FUNCTION_0(*(v9 + 32));
  v80 = v10;
  LODWORD(v10) = *(v11 + 44);
  v82 = OUTLINED_FUNCTION_0(*(v11 + 40));
  v84 = v12;
  LODWORD(v12) = *(v13 + 52);
  v86 = OUTLINED_FUNCTION_0(*(v13 + 48));
  *(v14 + 134) = v15;
  LODWORD(v15) = *(v16 + 60);
  v89 = OUTLINED_FUNCTION_0(*(v16 + 56));
  *(v17 + 154) = v18;
  LODWORD(v18) = *(v19 + 68);
  v20 = OUTLINED_FUNCTION_0(*(v19 + 64));
  *(v21 + 164) = v20;
  *(v21 + 174) = v22;
  LODWORD(v22) = *(v23 + 76);
  v94 = OUTLINED_FUNCTION_0(*(v23 + 72));
  *(v24 + 194) = v25;
  LODWORD(v25) = *(v26 + 84);
  v27 = OUTLINED_FUNCTION_0(*(v26 + 80));
  *(v28 + 204) = v27;
  *(v28 + 214) = v29;
  LODWORD(v29) = *(v30 + 92);
  v99 = OUTLINED_FUNCTION_0(*(v30 + 88));
  *(v31 + 234) = v32;
  LODWORD(v32) = *(v33 + 100);
  v34 = OUTLINED_FUNCTION_0(*(v33 + 96));
  *(v35 + 244) = v34;
  *(v35 + 254) = v36;
  LODWORD(v36) = *(v37 + 108);
  v104 = OUTLINED_FUNCTION_0(*(v37 + 104));
  *v38 = v39;
  LODWORD(v39) = *(v40 + 116);
  v41 = OUTLINED_FUNCTION_0(*(v40 + 112));
  *(v42 + 10) = v41;
  *(v42 + 20) = v43;
  LODWORD(v43) = *(v44 + 124);
  v109 = OUTLINED_FUNCTION_0(*(v44 + 120));
  *(v45 + 40) = v46;
  LODWORD(v46) = *(v47 + 132);
  v48 = OUTLINED_FUNCTION_0(*(v47 + 128));
  *(v49 + 50) = v48;
  *(v49 + 60) = v50;
  LODWORD(v50) = *(v51 + 140);
  v114 = OUTLINED_FUNCTION_0(*(v51 + 136));
  *(v52 + 80) = v53;
  LODWORD(v53) = *(v54 + 148);
  v55 = OUTLINED_FUNCTION_0(*(v54 + 144));
  *(v56 + 90) = v55;
  *(v56 + 100) = v57;
  LODWORD(v57) = *(v58 + 156);
  v119 = *(v58 + 152);
  *(v56 + 120) = *&v57;
  v63 = 2048;
  v65 = 2048;
  v67 = 2048;
  v69 = 2048;
  v71 = 2048;
  v73 = 2048;
  v75 = 2048;
  v77 = 2048;
  v79 = 2048;
  v81 = 2048;
  v83 = 2048;
  v85 = 2048;
  v87 = 2048;
  v88 = 2048;
  v90 = 2048;
  v91 = 2048;
  v92 = 2048;
  v93 = 2048;
  v95 = 2048;
  v96 = 2048;
  v97 = 2048;
  v98 = 2048;
  v100 = 2048;
  v101 = 2048;
  v102 = 2048;
  v103 = 2048;
  v105 = 2048;
  v106 = 2048;
  v107 = 2048;
  v108 = 2048;
  v110 = 2048;
  v111 = 2048;
  v112 = 2048;
  v113 = 2048;
  v115 = 2048;
  v116 = 2048;
  v117 = 2048;
  v118 = 2048;
  v120 = 2048;
  _os_log_debug_impl(&dword_25E445000, v59, OS_LOG_TYPE_DEBUG, "Preset settings {%lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf, %lf}", &v61, 0x192u);
  v60 = *MEMORY[0x277D85DE8];
}

@end