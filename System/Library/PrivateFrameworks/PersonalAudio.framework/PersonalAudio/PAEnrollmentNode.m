@interface PAEnrollmentNode
+ (id)nodeWithSection:(unint64_t)a3 andType:(unint64_t)a4 comparing:(unint64_t)a5 with:(unint64_t)a6;
+ (id)nodeWithSection:(unint64_t)a3 type:(unint64_t)a4 andConfiguration:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)stimuli;
- (NSString)heading;
- (NSString)instructions;
- (NSString)tuningDescription;
- (id)description;
- (id)key;
- (id)progressDescription;
@end

@implementation PAEnrollmentNode

+ (id)nodeWithSection:(unint64_t)a3 type:(unint64_t)a4 andConfiguration:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(PAEnrollmentNode);
  [(PAEnrollmentNode *)v8 setStimuli:MEMORY[0x277CBEBF8]];
  [(PAEnrollmentNode *)v8 setHeading:&stru_287029760];
  [(PAEnrollmentNode *)v8 setInstructions:&stru_287029760];
  [(PAEnrollmentNode *)v8 setSection:a3];
  [(PAEnrollmentNode *)v8 setType:a4];
  [(PAEnrollmentNode *)v8 setTotalSteps:6];
  [(PAEnrollmentNode *)v8 setConfiguration:v7];

  [(PAEnrollmentNode *)v8 setTuningDescription:&stru_287029760];

  return v8;
}

+ (id)nodeWithSection:(unint64_t)a3 andType:(unint64_t)a4 comparing:(unint64_t)a5 with:(unint64_t)a6
{
  v10 = [PAConfiguration configurationFromType:a5];
  v11 = [PAEnrollmentNode nodeWithSection:a3 type:a4 andConfiguration:v10];

  if (a5 != a6)
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [PAConfiguration configurationFromType:a5];
    v14 = [PAEnrollmentNode nodeWithSection:a3 type:a5 andConfiguration:v13];
    [v12 hcSafeAddObject:v14];

    v15 = [PAConfiguration configurationFromType:a6];
    v16 = [PAEnrollmentNode nodeWithSection:a3 type:a6 andConfiguration:v15];
    [v12 hcSafeAddObject:v16];

    [v11 setOptions:v12];
  }

  v17 = paLocString(@"PersonalAudioOptionA");
  v18 = paLocString(@"PersonalAudioOptionB");
  if (a3 == 2)
  {
    v19 = @"PersonalAudioOptionNo";
    v20 = @"PersonalAudioOptionYes";
  }

  else
  {
    if (a3 != 6)
    {
      goto LABEL_8;
    }

    v19 = @"PersonalAudioStandard";
    v20 = @"PersonalAudioCustom";
  }

  v21 = paLocString(v20);

  v22 = paLocString(v19);

  v18 = v22;
  v17 = v21;
LABEL_8:
  v23 = [v11 options];
  v24 = [v23 firstObject];

  v25 = [v11 options];
  v26 = [v25 lastObject];

  if ([v11 section] != 2)
  {
    [v24 setSelected:1];
  }

  [v24 setName:v17];
  [v26 setName:v18];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PAEnrollmentNode *)self section];
    if (v6 != [v5 section])
    {
      goto LABEL_18;
    }

    v7 = [(PAEnrollmentNode *)self type];
    if (v7 != [v5 type])
    {
      goto LABEL_18;
    }

    v8 = [(PAEnrollmentNode *)self index];
    if (v8 != [v5 index])
    {
      goto LABEL_18;
    }

    v9 = [(PAEnrollmentNode *)self totalSteps];
    if (v9 != [v5 totalSteps])
    {
      goto LABEL_18;
    }

    v10 = [(PAEnrollmentNode *)self heading];
    v11 = [v5 heading];
    v12 = v11;
    if ((v10 != 0) == (v11 == 0))
    {
      v14 = [(PAEnrollmentNode *)self heading];
      v15 = [v5 heading];
      v16 = [v14 isEqualToString:v15];

      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v17 = [(PAEnrollmentNode *)self instructions];
    v18 = [v5 instructions];
    v19 = v18;
    if ((v17 != 0) == (v18 == 0))
    {
      v20 = [(PAEnrollmentNode *)self instructions];
      v21 = [v5 instructions];
      v22 = [v20 isEqualToString:v21];

      if (!v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v23 = [(PAEnrollmentNode *)self configuration];
    v24 = [v5 configuration];
    v25 = v24;
    if ((v23 != 0) == (v24 == 0))
    {
      v26 = [(PAEnrollmentNode *)self configuration];
      v27 = [v5 configuration];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v29 = [(PAEnrollmentNode *)self options];
    v30 = [v29 count];
    v31 = [v5 options];
    v32 = [v31 count];

    if (v30 == v32)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 1;
      v33 = [(PAEnrollmentNode *)self options];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __28__PAEnrollmentNode_isEqual___block_invoke;
      v35[3] = &unk_279A1D298;
      v36 = v5;
      v37 = &v38;
      [v33 enumerateObjectsUsingBlock:v35];

      v13 = *(v39 + 24);
      _Block_object_dispose(&v38, 8);
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13 & 1;
}

void __28__PAEnrollmentNode_isEqual___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 options];
  v10 = [v9 objectAtIndex:a3];
  v11 = [v8 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (NSArray)stimuli
{
  v12 = *MEMORY[0x277D85DE8];
  section = self->_section;
  if (section == 6 || section == 4)
  {
    v4 = +[PAStimulus musicStimulus];
    v9 = v4;
    v5 = &v9;
LABEL_7:
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:{1, v9, v10, v11, v12}];

    goto LABEL_12;
  }

  if (section == 2)
  {
    if (self->_index == 2)
    {
      v4 = +[PAStimulus louderSinStimulus];
      v11 = v4;
      v5 = &v11;
    }

    else
    {
      v4 = +[PAStimulus sinStimulus];
      v10 = v4;
      v5 = &v10;
    }

    goto LABEL_7;
  }

  v6 = 0;
LABEL_12:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)instructions
{
  section = self->_section;
  v5 = &stru_287029760;
  if (section > 4)
  {
    switch(section)
    {
      case 5:
        v8 = @"PersonalAudioSetupTransparencyInstructions";
        break;
      case 7:
        v8 = @"PersonalAudioCompleteInstructionsOff";
        break;
      case 8:
        v8 = @"PersonalAudioCompleteInstructionsOffConfirmation";
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_18;
  }

  switch(section)
  {
    case 1:
      v8 = @"PersonalAudioSpeechIntoInstructions";
LABEL_18:
      v5 = paLocString(v8);
      break;
    case 3:
      v6 = self->_type - 3;
      if (v6 >= 7)
      {
        v8 = @"PersonalAudioMediaIntro";
        goto LABEL_18;
      }

      v7 = off_279A1D2B8;
      goto LABEL_15;
    case 4:
      v6 = self->_index - 3;
      if (v6 < 3)
      {
        v7 = off_279A1D2F0;
LABEL_15:
        v8 = v7[v6];
        goto LABEL_18;
      }

      break;
  }

LABEL_19:

  return v5;
}

- (NSString)heading
{
  if ([(PAEnrollmentNode *)self section]== 1)
  {
    v3 = @"PersonalAudioSpeechIntoTitle";
LABEL_19:
    v5 = paLocString(v3);
    goto LABEL_20;
  }

  if ([(PAEnrollmentNode *)self section]== 3)
  {
    v3 = @"PersonalAudioMusicHeading";
    goto LABEL_19;
  }

  if ([(PAEnrollmentNode *)self section]== 5)
  {
    v3 = @"PersonalAudioSetupTransparencyTitle";
    goto LABEL_19;
  }

  if ([(PAEnrollmentNode *)self section]== 8)
  {
    v3 = @"PersonalAudioCompleteTitleOffConfirmation";
    goto LABEL_19;
  }

  v4 = [(PAEnrollmentNode *)self index];
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v3 = @"PersonalAudioSpeechTitle";
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_20;
      }

      v3 = @"PersonalAudioSpeechTitle2";
    }

    goto LABEL_19;
  }

  if ((v4 - 3) < 3)
  {
    v3 = @"PersonalAudioMediaTitle";
    goto LABEL_19;
  }

  if (v4 == 7)
  {
    v5 = paLocString(@"PersonalAudioSetupComplete");
    v6 = +[PASettings sharedInstance];
    v7 = [v6 personalMediaConfiguration];

    if (!v7)
    {
      v8 = paLocString(@"PersonalAudioSetupCompleteOff");

      v5 = v8;
    }
  }

LABEL_20:

  return v5;
}

- (NSString)tuningDescription
{
  v3 = [(PAEnrollmentNode *)self configuration];
  v4 = [v3 level];

  v5 = [(PAEnrollmentNode *)self configuration];
  v6 = [v5 shape];

  switch(v6)
  {
    case 3:
      v7 = v4 - 1;
      if ((v4 - 1) < 3)
      {
        v8 = off_279A1D338;
        goto LABEL_10;
      }

      goto LABEL_11;
    case 2:
      v7 = v4 - 1;
      if ((v4 - 1) < 3)
      {
        v8 = off_279A1D320;
        goto LABEL_10;
      }

LABEL_11:
      v10 = 0;
      goto LABEL_16;
    case 1:
      v7 = v4 - 1;
      if ((v4 - 1) < 3)
      {
        v8 = off_279A1D308;
LABEL_10:
        v9 = v8[v7];
LABEL_15:
        v10 = paLocString(v9);
        goto LABEL_16;
      }

      goto LABEL_11;
  }

  v10 = 0;
  if (v6 == 12 && v4 == 12)
  {
    v9 = @"PersonalAudioResultAudiogram";
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

- (id)key
{
  v3 = [(PAEnrollmentNode *)self options];
  v4 = [v3 count];

  v5 = [(PAEnrollmentNode *)self section];
  v6 = v5;
  if (v4 == 2)
  {
    v7 = [(PAEnrollmentNode *)self options];
    v8 = [v7 firstObject];
    v9 = [v8 type];
    v10 = [(PAEnrollmentNode *)self options];
    v11 = [v10 lastObject];
    v12 = paKeyFromNodeParameters(v6, v9, [v11 type]);
  }

  else
  {
    v12 = paKeyFromNodeParameters(v5, 0, 0);
  }

  return v12;
}

- (id)progressDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = paLocString(@"PersonalAudioStepTemplate");
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAEnrollmentNode index](self, "index")}];
  v6 = [v5 localizedFormat];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAEnrollmentNode totalSteps](self, "totalSteps")}];
  v8 = [v7 localizedFormat];
  v9 = [v3 stringWithFormat:v4, v6, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PAEnrollmentNode;
  v4 = [(PAEnrollmentNode *)&v12 description];
  v5 = [(PAEnrollmentNode *)self section];
  v6 = [(PAEnrollmentNode *)self type];
  v7 = [(PAEnrollmentNode *)self configuration];
  v8 = [v7 level];
  v9 = [(PAEnrollmentNode *)self configuration];
  v10 = [v3 stringWithFormat:@"%@ - %lu, %lu [%lu, %lu]", v4, v5, v6, v8, objc_msgSend(v9, "shape")];

  return v10;
}

@end