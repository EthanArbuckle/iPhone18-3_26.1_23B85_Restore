@interface AFClockTimer(SVXSpeechSynthesis)
- (id)svx_speakableDurationStringWithLanguageCode:()SVXSpeechSynthesis gender:;
@end

@implementation AFClockTimer(SVXSpeechSynthesis)

- (id)svx_speakableDurationStringWithLanguageCode:()SVXSpeechSynthesis gender:
{
  v6 = a3;
  [a1 duration];
  v8 = v7;
  v9 = v7 / 0x3C;
  v10 = (v7 / 60.0) % 0x3C;
  v11 = (v7 / 3600.0);
  v12 = [a1 _getBundleUtils];
  v13 = [v12 getSiriVOXFramework];
  v50 = v13;
  if (v11)
  {
    v14 = v13;
    v49 = v9;
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v17 = [v15 stringWithFormat:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_UNIT_HOUR_%@", v16];

    v18 = v14;
    v19 = v6;
    v20 = a4;
    v21 = [v12 getLocalizedStringWithBundle:v18 table:@"Clock" key:v17 languageCode:v6 gender:a4];
    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v11 = [v22 stringWithFormat:v21, v23];

    v9 = v49;
  }

  else
  {
    v20 = a4;
    v19 = v6;
  }

  v24 = v8 - 60 * v9;
  if (v10)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v27 = [v25 stringWithFormat:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_UNIT_MINUTE_%@", v26];

    v28 = [v12 getLocalizedStringWithBundle:v50 table:@"Clock" key:v27 languageCode:v19 gender:v20];
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v10 = [v29 stringWithFormat:v28, v30];
  }

  if (v24 || (v31 = v10 != 0, !(v11 | v10)))
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v37 = [v35 stringWithFormat:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_UNIT_SECOND_%@", v36];

    v38 = [v12 getLocalizedStringWithBundle:v50 table:@"Clock" key:v37 languageCode:v19 gender:v20];
    v39 = MEMORY[0x277CCACA8];
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v34 = [v39 stringWithFormat:v38, v40];

    v41 = v11 != 0;
    v31 = v10 != 0;
    if (!v10)
    {
      v41 = 0;
    }

    if (v41 && v34)
    {
      v32 = v50;
      v33 = v12;
      v42 = [v12 getLocalizedStringWithBundle:v50 table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_HOURS_MINUTES_SECONDS" languageCode:v19 gender:v20];
      v43 = MEMORY[0x277CCACA8];
      v48 = v34;
LABEL_19:
      v47 = v10;
LABEL_20:
      [v43 stringWithFormat:v42, v11, v47, v48];
      v44 = LABEL_21:;

      goto LABEL_22;
    }

    if (v41)
    {
      v32 = v50;
      v33 = v12;
      goto LABEL_18;
    }

    v32 = v50;
    v33 = v12;
    if (v11 && v34)
    {
      v42 = [v12 getLocalizedStringWithBundle:v50 table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_HOURS_SECONDS" languageCode:v19 gender:v20];
      v43 = MEMORY[0x277CCACA8];
      v47 = v34;
      goto LABEL_20;
    }

    if (v10 && v34)
    {
      v42 = [v12 getLocalizedStringWithBundle:v50 table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_MINUTES_SECONDS" languageCode:v19 gender:v20];
      [MEMORY[0x277CCACA8] stringWithFormat:v42, v10, v34, v48];
      goto LABEL_21;
    }

    if (v11)
    {
      goto LABEL_32;
    }

LABEL_34:
    if (v31)
    {
      v46 = v10;
    }

    else
    {
      v46 = v34;
      v34 = v46;
    }

    goto LABEL_37;
  }

  v32 = v50;
  v33 = v12;
  if (v11 && v10)
  {
    v34 = 0;
LABEL_18:
    v42 = [v33 getLocalizedStringWithBundle:v32 table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_DURATION_HOURS_MINUTES" languageCode:v19 gender:v20];
    v43 = MEMORY[0x277CCACA8];
    goto LABEL_19;
  }

  v34 = 0;
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_32:
  v46 = v11;
LABEL_37:
  v44 = v46;
LABEL_22:

  return v44;
}

@end