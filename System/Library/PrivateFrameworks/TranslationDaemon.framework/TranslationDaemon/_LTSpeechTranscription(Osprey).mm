@interface _LTSpeechTranscription(Osprey)
- (void)initWithRecognitionChoice:()Osprey inSausage:;
@end

@implementation _LTSpeechTranscription(Osprey)

- (void)initWithRecognitionChoice:()Osprey inSausage:
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v47.receiver = a1;
  v47.super_class = &off_28488F5C0;
  v8 = objc_msgSendSuper2(&v47, sel_init);
  v9 = v8;
  if (v8)
  {
    v40 = v8;
    v10 = [MEMORY[0x277CCAB68] string];
    v11 = [v6 alternative_index];
    if ([v11 count])
    {
      v12 = 0;
      v13 = 0.0;
      v14 = 1000.0;
      v41 = v7;
      v42 = v6;
      while (1)
      {
        v15 = [v7 positional_tok_phrase_alt];
        v16 = [v15 count];

        if (v12 >= v16)
        {
          break;
        }

        v17 = [v7 positional_tok_phrase_alt];
        v18 = [v17 objectAtIndexedSubscript:v12];

        v19 = [v6 alternative_index];
        v20 = [v19 objectAtIndexedSubscript:v12];
        v21 = [v20 unsignedIntegerValue];

        v22 = [v18 tok_phrases];
        v23 = [v22 objectAtIndexedSubscript:v21];
        v24 = [v23 tokens];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v44;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v44 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v43 + 1) + 8 * i);
              v31 = [v30 token_text];
              [v10 appendString:v31];

              if ([v30 add_space_after])
              {
                [v10 appendString:@" "];
              }

              v32 = [v30 confidence];
              if (v14 >= v32)
              {
                v14 = v32;
              }

              v33 = [v30 confidence];
              if (v13 < v33)
              {
                v13 = v33;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v27);
        }

        ++v12;
        v6 = v42;
        v11 = [v42 alternative_index];
        v7 = v41;
        if (v12 >= [v11 count])
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v13 = 0.0;
      v14 = 1000.0;
LABEL_21:
    }

    v9 = v40;
    [v40 setConfidence:{objc_msgSend(v6, "confidence")}];
    [v40 setMinConfidence:v14];
    [v40 setMaxConfidence:v13];
    [v40 setFormattedString:v10];
    [v40 minConfidence];
    v35 = v34;
    [v40 maxConfidence];
    if (v35 > v36)
    {
      [v40 confidence];
      [v40 setMinConfidence:?];
      [v40 confidence];
      [v40 setMaxConfidence:?];
    }

    v37 = v40;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

@end