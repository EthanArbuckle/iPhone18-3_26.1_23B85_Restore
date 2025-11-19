@interface _LTSpeechRecognitionSausage(Daemon)
- (id)initWithRecognition:()Daemon wordConfidenceThreshold:;
@end

@implementation _LTSpeechRecognitionSausage(Daemon)

- (id)initWithRecognition:()Daemon wordConfidenceThreshold:
{
  v6 = a3;
  v26.receiver = a1;
  v26.super_class = &off_28488F108;
  v7 = objc_msgSendSuper2(&v26, sel_init);
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v6 interpretationIndices];
    v10 = [v9 firstObject];

    v11 = [v6 tokenSausage];
    v23 = v7;
    if ([v11 count])
    {
      v12 = 0;
      while (1)
      {
        v13 = [v10 count];

        if (v12 >= v13)
        {
          break;
        }

        v14 = [v6 tokenSausage];
        v15 = [v14 objectAtIndexedSubscript:v12];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __83___LTSpeechRecognitionSausage_Daemon__initWithRecognition_wordConfidenceThreshold___block_invoke;
        v25[3] = &__block_descriptor_40_e56____LTSpeechRecognitionTokensAlternative_16__0__NSArray_8l;
        v25[4] = a4;
        v16 = [v15 _ltCompactMap:v25];
        v17 = [v10 objectAtIndexedSubscript:v12];
        v18 = objc_alloc_init(MEMORY[0x277CE1B88]);
        [v18 setBestAlternativeIndex:{objc_msgSend(v17, "unsignedIntegerValue")}];
        [v18 setAlternatives:v16];
        [v8 addObject:v18];

        ++v12;
        v11 = [v6 tokenSausage];
        if (v12 >= [v11 count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
    }

    v19 = [v8 _ltCompactMap:{&__block_literal_global_28, v23}];
    v20 = _LTOSLogSpeech();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_LTSpeechRecognitionSausage(Daemon) initWithRecognition:v20 wordConfidenceThreshold:v19];
    }

    v7 = v24;
    [v24 setBins:v8];
    v21 = v24;
  }

  return v7;
}

- (void)initWithRecognition:()Daemon wordConfidenceThreshold:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 componentsJoinedByString:{@", "}];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Sausage confidences: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end