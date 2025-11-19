@interface _LTSpeechRecognitionSausage(Osprey)
- (id)initWithOspreySausage:()Osprey choices:locale:;
@end

@implementation _LTSpeechRecognitionSausage(Osprey)

- (id)initWithOspreySausage:()Osprey choices:locale:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = a1;
  v32.super_class = &off_28488F108;
  v11 = objc_msgSendSuper2(&v32, sel_init);
  if (v11)
  {
    v12 = [v9 firstObject];
    if (v12)
    {
      v29 = v9;
      v13 = [MEMORY[0x277CBEB18] array];
      v14 = [v12 alternative_index];
      if ([v14 count])
      {
        v15 = 0;
        while (1)
        {
          v16 = [v8 positional_tok_phrase_alt];
          v17 = [v16 count];

          if (v15 >= v17)
          {
            break;
          }

          v18 = [v8 positional_tok_phrase_alt];
          v19 = [v18 objectAtIndexedSubscript:v15];

          v20 = [v19 tok_phrases];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __76___LTSpeechRecognitionSausage_Osprey__initWithOspreySausage_choices_locale___block_invoke;
          v30[3] = &unk_2789B7BA8;
          v31 = v10;
          v21 = [v20 _ltCompactMap:v30];

          v22 = [v12 alternative_index];
          v23 = [v22 objectAtIndexedSubscript:v15];

          v24 = objc_alloc_init(MEMORY[0x277CE1B88]);
          [v24 setBestAlternativeIndex:{objc_msgSend(v23, "unsignedIntegerValue")}];
          [v24 setAlternatives:v21];
          [v13 addObject:v24];

          ++v15;
          v14 = [v12 alternative_index];
          if (v15 >= [v14 count])
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
      }

      v25 = [v13 _ltCompactMap:&__block_literal_global_29];
      v26 = _LTOSLogSpeech();
      v9 = v29;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [_LTSpeechRecognitionSausage(Daemon) initWithRecognition:v26 wordConfidenceThreshold:v25];
      }

      [v11 setBins:v13];
      v27 = v11;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end