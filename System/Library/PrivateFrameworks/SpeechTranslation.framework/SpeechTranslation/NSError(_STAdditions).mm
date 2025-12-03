@interface NSError(_STAdditions)
+ (__CFString)_descriptionForCode:()_STAdditions;
+ (id)st_errorForCode:()_STAdditions;
+ (void)st_populateError:()_STAdditions forCode:;
@end

@implementation NSError(_STAdditions)

+ (id)st_errorForCode:()_STAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA450];
  v4 = [self _descriptionForCode:?];
  v11[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SpeechTranslationErrorDomain" code:a3 userInfo:v5];
  v7 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(NSError(_STAdditions) *)v6 st_errorForCode:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)st_populateError:()_STAdditions forCode:
{
  v5 = [self st_errorForCode:a4];
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }
}

+ (__CFString)_descriptionForCode:()_STAdditions
{
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = @"_STSpeechTranslatorClientList already processing a stop, redundant operation.";
      }

      else if (a3 == 4)
      {
        v3 = @"_STSpeechTranslatorClientList is not yet started.";
      }

      else
      {
        v3 = @"_STSpeechTranslatorClientList is not currently paused.";
      }

      goto LABEL_23;
    }

    if (a3 == 1)
    {
      v3 = @"_STSpeechTranslatorClientList already invalidated, further actions are denied.";
      goto LABEL_23;
    }

    if (a3 == 2)
    {
      v3 = @"_STSpeechTranslatorClientList already started, redundant operation.";
      goto LABEL_23;
    }

LABEL_22:
    v3 = @"Internal error.";
    goto LABEL_23;
  }

  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v3 = @"STSpeechTranslatorClient already started, redundant operation.";
        goto LABEL_23;
      case 9:
        v4 = MEMORY[0x277CCACA8];
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        processName = [processInfo processName];
        processInfo2 = [MEMORY[0x277CCAC38] processInfo];
        v3 = [v4 stringWithFormat:@"Process: %@ with pid: %d is NOT permitted to host the SpeechTranslation server.", processName, objc_msgSend(processInfo2, "processIdentifier")];

        goto LABEL_23;
      case 10:
        v3 = @"XPC Server failed to generate valid internal state.";
        goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 == 6)
  {
    v3 = @"_STSpeechTranslatorClientList suffering an unexpected state transition from internal callbacks.";
  }

  else
  {
    v3 = @"STSpeechTranslatorClient already invalidated, further actions are denied.";
  }

LABEL_23:

  return v3;
}

+ (void)st_errorForCode:()_STAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B5BC000, a2, OS_LOG_TYPE_ERROR, "Generating error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end