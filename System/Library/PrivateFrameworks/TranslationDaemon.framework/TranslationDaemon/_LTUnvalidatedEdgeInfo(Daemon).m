@interface _LTUnvalidatedEdgeInfo(Daemon)
+ (id)unvalidatedEdgeWithEMTAlternative:()Daemon;
+ (id)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:;
@end

@implementation _LTUnvalidatedEdgeInfo(Daemon)

+ (id)unvalidatedEdgeWithEMTAlternative:()Daemon
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 alternativeDescription];
    v6 = [v5 alternativeType];
    if (v6 == 1)
    {
      v10 = [v5 meaningDescription];
      v7 = v10;
      if (v10)
      {
        v11 = [v10 definition];
        if ([v11 length])
        {
          v8 = [a1 meaningEdgeInfoWithTargetPhraseIndex:objc_msgSend(v4 targetLinkIndex:"translationPhraseIndex") meaningDescription:{objc_msgSend(v4, "selectionSpanIndex"), v11}];
        }

        else
        {
          v14 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
          }

          v8 = 0;
        }

        goto LABEL_22;
      }

      v13 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
      }
    }

    else
    {
      if (v6)
      {
        v8 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v7 = [v5 genderDescription];
      if (v7)
      {
        v8 = [a1 genderEdgeInfoWithTargetPhraseIndex:objc_msgSend(v4 targetLinkIndex:"translationPhraseIndex") gender:objc_msgSend(v4 defaultGender:{"selectionSpanIndex"), objc_msgSend(v7, "gender") != 0, objc_msgSend(v7, "defaultGender") != 0}];
LABEL_22:

        goto LABEL_23;
      }

      v12 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
      }
    }

    v8 = 0;
    goto LABEL_22;
  }

  v9 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithEMTAlternative:];
  }

  v8 = 0;
LABEL_24:

  return v8;
}

+ (id)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 alternative_description_index];
  if ([v7 count] > v8)
  {
    v9 = [v7 objectAtIndexedSubscript:v8];
    v10 = [v9 alternative_type];
    if (v10)
    {
      if (v10 != 1)
      {
        v14 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v11 = [v9 meaning_description];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 definition];
        if ([v13 length])
        {
          v14 = [a1 meaningEdgeInfoWithTargetPhraseIndex:objc_msgSend(v6 targetLinkIndex:"translation_phrase_index") meaningDescription:{objc_msgSend(v6, "selection_span_index"), v13}];
        }

        else
        {
          v18 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
          }

          v14 = 0;
        }

        goto LABEL_22;
      }

      v16 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
      }
    }

    else
    {
      v12 = [v9 gender_description];
      if (v12)
      {
        v14 = [a1 genderEdgeInfoWithTargetPhraseIndex:objc_msgSend(v6 targetLinkIndex:"translation_phrase_index") gender:objc_msgSend(v6 defaultGender:{"selection_span_index"), objc_msgSend(v12, "gender") != 0, objc_msgSend(v12, "default_gender") != 0}];
LABEL_22:

        goto LABEL_23;
      }

      v17 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[_LTUnvalidatedEdgeInfo(Daemon) unvalidatedEdgeWithFTAlternative:descriptions:];
      }
    }

    v14 = 0;
    goto LABEL_22;
  }

  v15 = _LTOSLogDisambiguation();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [(_LTUnvalidatedEdgeInfo(Daemon) *)v15 unvalidatedEdgeWithFTAlternative:v7 descriptions:v8];
  }

  v14 = 0;
LABEL_24:

  return v14;
}

+ (void)unvalidatedEdgeWithFTAlternative:()Daemon descriptions:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = a3;
  v9 = 2048;
  v10 = [a2 count];
  _os_log_fault_impl(&dword_232E53000, v5, OS_LOG_TYPE_FAULT, "Can't create unvalidated edge info from FTAlternative because description index %zu doesn't exist; descriptions has %zu items", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end