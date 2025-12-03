@interface PAEnrollmentNode
+ (id)nodeWithSection:(unint64_t)section andType:(unint64_t)type comparing:(unint64_t)comparing with:(unint64_t)with;
+ (id)nodeWithSection:(unint64_t)section type:(unint64_t)type andConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NSArray)stimuli;
- (NSString)heading;
- (NSString)instructions;
- (NSString)tuningDescription;
- (id)description;
- (id)key;
- (id)progressDescription;
@end

@implementation PAEnrollmentNode

+ (id)nodeWithSection:(unint64_t)section type:(unint64_t)type andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = objc_alloc_init(PAEnrollmentNode);
  [(PAEnrollmentNode *)v8 setStimuli:MEMORY[0x277CBEBF8]];
  [(PAEnrollmentNode *)v8 setHeading:&stru_287029760];
  [(PAEnrollmentNode *)v8 setInstructions:&stru_287029760];
  [(PAEnrollmentNode *)v8 setSection:section];
  [(PAEnrollmentNode *)v8 setType:type];
  [(PAEnrollmentNode *)v8 setTotalSteps:6];
  [(PAEnrollmentNode *)v8 setConfiguration:configurationCopy];

  [(PAEnrollmentNode *)v8 setTuningDescription:&stru_287029760];

  return v8;
}

+ (id)nodeWithSection:(unint64_t)section andType:(unint64_t)type comparing:(unint64_t)comparing with:(unint64_t)with
{
  v10 = [PAConfiguration configurationFromType:comparing];
  v11 = [PAEnrollmentNode nodeWithSection:section type:type andConfiguration:v10];

  if (comparing != with)
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = [PAConfiguration configurationFromType:comparing];
    v14 = [PAEnrollmentNode nodeWithSection:section type:comparing andConfiguration:v13];
    [array hcSafeAddObject:v14];

    v15 = [PAConfiguration configurationFromType:with];
    v16 = [PAEnrollmentNode nodeWithSection:section type:with andConfiguration:v15];
    [array hcSafeAddObject:v16];

    [v11 setOptions:array];
  }

  v17 = paLocString(@"PersonalAudioOptionA");
  v18 = paLocString(@"PersonalAudioOptionB");
  if (section == 2)
  {
    v19 = @"PersonalAudioOptionNo";
    v20 = @"PersonalAudioOptionYes";
  }

  else
  {
    if (section != 6)
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
  options = [v11 options];
  firstObject = [options firstObject];

  options2 = [v11 options];
  lastObject = [options2 lastObject];

  if ([v11 section] != 2)
  {
    [firstObject setSelected:1];
  }

  [firstObject setName:v17];
  [lastObject setName:v18];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    section = [(PAEnrollmentNode *)self section];
    if (section != [v5 section])
    {
      goto LABEL_18;
    }

    type = [(PAEnrollmentNode *)self type];
    if (type != [v5 type])
    {
      goto LABEL_18;
    }

    index = [(PAEnrollmentNode *)self index];
    if (index != [v5 index])
    {
      goto LABEL_18;
    }

    totalSteps = [(PAEnrollmentNode *)self totalSteps];
    if (totalSteps != [v5 totalSteps])
    {
      goto LABEL_18;
    }

    heading = [(PAEnrollmentNode *)self heading];
    heading2 = [v5 heading];
    v12 = heading2;
    if ((heading != 0) == (heading2 == 0))
    {
      heading3 = [(PAEnrollmentNode *)self heading];
      heading4 = [v5 heading];
      v16 = [heading3 isEqualToString:heading4];

      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    instructions = [(PAEnrollmentNode *)self instructions];
    instructions2 = [v5 instructions];
    v19 = instructions2;
    if ((instructions != 0) == (instructions2 == 0))
    {
      instructions3 = [(PAEnrollmentNode *)self instructions];
      instructions4 = [v5 instructions];
      v22 = [instructions3 isEqualToString:instructions4];

      if (!v22)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    configuration = [(PAEnrollmentNode *)self configuration];
    configuration2 = [v5 configuration];
    v25 = configuration2;
    if ((configuration != 0) == (configuration2 == 0))
    {
      configuration3 = [(PAEnrollmentNode *)self configuration];
      configuration4 = [v5 configuration];
      v28 = [configuration3 isEqual:configuration4];

      if (!v28)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    options = [(PAEnrollmentNode *)self options];
    v30 = [options count];
    options2 = [v5 options];
    v32 = [options2 count];

    if (v30 == v32)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 1;
      options3 = [(PAEnrollmentNode *)self options];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __28__PAEnrollmentNode_isEqual___block_invoke;
      v35[3] = &unk_279A1D298;
      v36 = v5;
      v37 = &v38;
      [options3 enumerateObjectsUsingBlock:v35];

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

  index = [(PAEnrollmentNode *)self index];
  v5 = 0;
  if (index <= 2)
  {
    if (index == 1)
    {
      v3 = @"PersonalAudioSpeechTitle";
    }

    else
    {
      if (index != 2)
      {
        goto LABEL_20;
      }

      v3 = @"PersonalAudioSpeechTitle2";
    }

    goto LABEL_19;
  }

  if ((index - 3) < 3)
  {
    v3 = @"PersonalAudioMediaTitle";
    goto LABEL_19;
  }

  if (index == 7)
  {
    v5 = paLocString(@"PersonalAudioSetupComplete");
    v6 = +[PASettings sharedInstance];
    personalMediaConfiguration = [v6 personalMediaConfiguration];

    if (!personalMediaConfiguration)
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
  configuration = [(PAEnrollmentNode *)self configuration];
  level = [configuration level];

  configuration2 = [(PAEnrollmentNode *)self configuration];
  shape = [configuration2 shape];

  switch(shape)
  {
    case 3:
      v7 = level - 1;
      if ((level - 1) < 3)
      {
        v8 = off_279A1D338;
        goto LABEL_10;
      }

      goto LABEL_11;
    case 2:
      v7 = level - 1;
      if ((level - 1) < 3)
      {
        v8 = off_279A1D320;
        goto LABEL_10;
      }

LABEL_11:
      v10 = 0;
      goto LABEL_16;
    case 1:
      v7 = level - 1;
      if ((level - 1) < 3)
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
  if (shape == 12 && level == 12)
  {
    v9 = @"PersonalAudioResultAudiogram";
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

- (id)key
{
  options = [(PAEnrollmentNode *)self options];
  v4 = [options count];

  section = [(PAEnrollmentNode *)self section];
  v6 = section;
  if (v4 == 2)
  {
    options2 = [(PAEnrollmentNode *)self options];
    firstObject = [options2 firstObject];
    type = [firstObject type];
    options3 = [(PAEnrollmentNode *)self options];
    lastObject = [options3 lastObject];
    v12 = paKeyFromNodeParameters(v6, type, [lastObject type]);
  }

  else
  {
    v12 = paKeyFromNodeParameters(section, 0, 0);
  }

  return v12;
}

- (id)progressDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = paLocString(@"PersonalAudioStepTemplate");
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAEnrollmentNode index](self, "index")}];
  localizedFormat = [v5 localizedFormat];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PAEnrollmentNode totalSteps](self, "totalSteps")}];
  localizedFormat2 = [v7 localizedFormat];
  v9 = [v3 stringWithFormat:v4, localizedFormat, localizedFormat2];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PAEnrollmentNode;
  v4 = [(PAEnrollmentNode *)&v12 description];
  section = [(PAEnrollmentNode *)self section];
  type = [(PAEnrollmentNode *)self type];
  configuration = [(PAEnrollmentNode *)self configuration];
  level = [configuration level];
  configuration2 = [(PAEnrollmentNode *)self configuration];
  v10 = [v3 stringWithFormat:@"%@ - %lu, %lu [%lu, %lu]", v4, section, type, level, objc_msgSend(configuration2, "shape")];

  return v10;
}

@end