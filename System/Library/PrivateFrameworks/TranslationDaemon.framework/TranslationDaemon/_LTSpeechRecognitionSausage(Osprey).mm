@interface _LTSpeechRecognitionSausage(Osprey)
- (id)initWithOspreySausage:()Osprey choices:locale:;
@end

@implementation _LTSpeechRecognitionSausage(Osprey)

- (id)initWithOspreySausage:()Osprey choices:locale:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = &off_28488F108;
  v11 = objc_msgSendSuper2(&v32, sel_init);
  if (v11)
  {
    firstObject = [v9 firstObject];
    if (firstObject)
    {
      v29 = v9;
      array = [MEMORY[0x277CBEB18] array];
      alternative_index = [firstObject alternative_index];
      if ([alternative_index count])
      {
        v15 = 0;
        while (1)
        {
          positional_tok_phrase_alt = [v8 positional_tok_phrase_alt];
          v17 = [positional_tok_phrase_alt count];

          if (v15 >= v17)
          {
            break;
          }

          positional_tok_phrase_alt2 = [v8 positional_tok_phrase_alt];
          v19 = [positional_tok_phrase_alt2 objectAtIndexedSubscript:v15];

          tok_phrases = [v19 tok_phrases];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __76___LTSpeechRecognitionSausage_Osprey__initWithOspreySausage_choices_locale___block_invoke;
          v30[3] = &unk_2789B7BA8;
          v31 = v10;
          v21 = [tok_phrases _ltCompactMap:v30];

          alternative_index2 = [firstObject alternative_index];
          v23 = [alternative_index2 objectAtIndexedSubscript:v15];

          v24 = objc_alloc_init(MEMORY[0x277CE1B88]);
          [v24 setBestAlternativeIndex:{objc_msgSend(v23, "unsignedIntegerValue")}];
          [v24 setAlternatives:v21];
          [array addObject:v24];

          ++v15;
          alternative_index = [firstObject alternative_index];
          if (v15 >= [alternative_index count])
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
      }

      v25 = [array _ltCompactMap:&__block_literal_global_29];
      v26 = _LTOSLogSpeech();
      v9 = v29;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [_LTSpeechRecognitionSausage(Daemon) initWithRecognition:v26 wordConfidenceThreshold:v25];
      }

      [v11 setBins:array];
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