uint64_t _ResultHandlerAddressBookCallback(void *a1, void *a2, const void *a3, ABMultiValueIdentifier a4, ABPropertyID a5, int a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a7;
  v16 = v15;
  v152 = 0;
  if (a3)
  {
    v17 = [v15 nameToMatch];

    if (v17)
    {
      v18 = [v16 nameToMatch];
      a6 = [v13 matchingNameType:v18 fromTypes:objc_msgSend(v13 forPerson:{"nameTypes") & 0xFFFFFFFFFFFFFFF7, a3}];
    }

    if (a6 != -1 && ([v16 requiredNameMatchType] == -1 || objc_msgSend(v16, "requiredNameMatchType") == a6))
    {
      v19 = ABRecordCopyValue(a3, a5);
      if (v19)
      {
        v20 = v19;
        IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v19, a4);
        if (IndexForIdentifier == -1 || (v22 = IndexForIdentifier, (v23 = ABMultiValueCopyValueAtIndex(v20, IndexForIdentifier)) == 0))
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
LABEL_60:
          CFRelease(v20);

          goto LABEL_61;
        }

        v24 = v23;
        if (CFStringGetLength(v23) < 1)
        {
          goto LABEL_21;
        }

        v133 = a5;
        if (([v16 allowFirstFT] & 1) == 0)
        {
          v25 = IMCleanupPhoneNumber();
          [MEMORY[0x29EDC5530] sharedInstance];
          v26 = v130 = v22;
          [MEMORY[0x29EDC5538] facetimeService];
          v27 = v14;
          v29 = v28 = v24;
          v125 = v20;
          v30 = [v26 statusForID:v25 onService:v29];

          v24 = v28;
          v14 = v27;
          a5 = v133;

          v22 = v130;
          v31 = v30 == 1;
          v20 = v125;
          if (!v31)
          {
LABEL_21:
            v38 = v24;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v137 = 0;
            v139 = 0;
            v36 = 0;
            v34 = 0;
LABEL_59:
            CFRelease(v38);

            v37 = v137;
            v35 = v139;
            goto LABEL_60;
          }
        }

        v32 = [v16 contactInfo];
        v33 = MEMORY[0x29EDBE250];
        if (v32)
        {
          [v16 setResultStatus:1];
          v124 = *v33;
          if (*v33 == a5 && ![v16 matchedLabelType] || *MEMORY[0x29EDBE1D0] == a5 && objc_msgSend(v16, "matchedLabelType") == 1)
          {
            [v16 setMatchedLabelType:2];
          }
        }

        else
        {
          [v16 setResultStatus:2];
          v124 = *v33;
          [v16 setMatchedLabelType:*v33 == a5];
          [v16 setResultPerson:a3];
          CFRetain(a3);
          [v16 setContactInfo:CFRetain(v24)];
        }

        if (a6 == 3)
        {
          [v16 setNicknameMatchCount:{objc_msgSend(v16, "nicknameMatchCount") + 1}];
        }

        v152 = [v13 indexOfMainNameOfType:2];
        v138 = [v13 personNameCount];
        v43 = [v13 nameTypes];
        if (v152 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v134 = 0;
          v135 = 0;
          v139 = 0;
          v36 = 0;
          v44 = 0;
          v128 = 0;
          v129 = 0;
          v132 = 0;
LABEL_37:
          v137 = v44;
          v55 = ABMultiValueCopyLabelAtIndex(v20, v22);
          if (v55)
          {
            v56 = v55;
            v57 = v24;
            v58 = VoiceDialCopySpokenLocalizedLabel(v55);
            if (v58)
            {
              v59 = v58;
              if (v124 == v133)
              {
                v60 = [v16 unlocalizedPhoneLabels];

                if (!v60)
                {
                  v61 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                  [v16 setUnlocalizedPhoneLabels:v61];
                }

                if (CFStringGetLength(v59))
                {
                  v62 = [v16 localizedPhoneLabels];

                  if (!v62)
                  {
                    v63 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                    [v16 setLocalizedPhoneLabels:v63];
                  }

                  v64 = [v16 localizedPhoneLabels];
                  [v64 addObject:v59];
                }

                v65 = [v16 unlocalizedPhoneLabels];
                [v65 addObject:v56];
              }

              if (*MEMORY[0x29EDBE1D0] == v133)
              {
                v66 = [v16 unlocalizedEmailLabels];

                if (!v66)
                {
                  v67 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                  [v16 setUnlocalizedEmailLabels:v67];
                }

                if (CFStringGetLength(v59))
                {
                  v68 = [v16 localizedEmailLabels];

                  if (!v68)
                  {
                    v69 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                    [v16 setLocalizedEmailLabels:v69];
                  }

                  v70 = [v16 localizedEmailLabels];
                  [v70 addObject:v59];
                }

                v71 = [v16 unlocalizedEmailLabels];
                [v71 addObject:v56];
              }

              CFRelease(v59);
            }

            CFRelease(v56);
            v38 = v57;
          }

          else
          {
            v38 = v24;
          }

          v34 = v134;
          v39 = v135;
          v40 = v132;
          v42 = v128;
          v41 = v129;
          goto LABEL_59;
        }

        v45 = v43;
        v131 = v22;
        v150 = 0;
        v151 = 0;
        v46 = [v13 getNth:0 name:&v151 phoneticName:&v150 ofType:2 nameIndex:&v152 forPerson:a3];
        v47 = v151;
        v139 = v150;
        v134 = v47;
        if (!v46 || ![v47 length])
        {
          v36 = 0;
          v44 = 0;
          v128 = 0;
          v129 = 0;
          v132 = 0;
          v135 = 0;
          goto LABEL_36;
        }

        v48 = [v16 compositeNames];

        if (!v48)
        {
          v49 = objc_alloc_init(MEMORY[0x29EDB8E20]);
          [v16 setCompositeNames:v49];

          v50 = objc_alloc_init(MEMORY[0x29EDB8E20]);
          [v16 setTopLevelNonNickNames:v50];

          v51 = objc_alloc_init(MEMORY[0x29EDB8E20]);
          [v16 setSpokenCompositeNames:v51];

          v52 = objc_alloc_init(MEMORY[0x29EDB8E00]);
          [v16 setPhoneticNamesByName:v52];
        }

        v53 = [v13 matchingNameType:v14 fromTypes:3 forPerson:a3];
        if (v53 != -1 && ((v54 = v53, [v16 lastNameMatchType] == -1) || objc_msgSend(v16, "lastNameMatchType") == v54))
        {
          [v16 setLastNameMatchType:v54];
        }

        else
        {
          [v16 setAllNamesMatchedType:0];
        }

        v120 = v24;
        v73 = [v16 compositeNames];
        [v73 addObject:v47];

        v74 = [v16 spokenCompositeNames];
        if ([v139 length])
        {
          v75 = v139;
        }

        else
        {
          v75 = v47;
        }

        [v74 addObject:v75];

        if (v139 && v47 && [v139 caseInsensitiveCompare:v47])
        {
          v76 = [v16 phoneticNamesByName];
          [v76 setObject:v139 forKey:v47];
        }

        v126 = v20;
        v77 = [v13 indexOfMainNameOfType:0];
        v78 = [v13 indexOfMainNameOfType:1];
        v127 = v77;
        v123 = v78;
        if (v77 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v79 = 0;
          v80 = 0;
          v128 = 0;
          v132 = 0;
        }

        else
        {
          v148 = 0;
          v149 = 0;
          v81 = [v13 getName:&v149 phoneticName:&v148 atIndex:v77 forPerson:a3];
          v79 = v149;
          v80 = v148;
          if (v81 && [v79 length])
          {
            if (v45)
            {
              v82 = [v16 lastNamesByFirstNames];
              v83 = [v82 objectForKey:v79];

              v132 = v83;
              if (!v83)
              {
                v84 = [v16 lastNamesByFirstNames];

                if (!v84)
                {
                  v85 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                  [v16 setLastNamesByFirstNames:v85];
                }

                v86 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                v87 = [v16 lastNamesByFirstNames];
                v132 = v86;
                [v87 setObject:v86 forKey:v79];
              }
            }

            else
            {
              v132 = 0;
            }

            v88 = [v16 topLevelNonNickNames];
            [v88 addObject:v79];

            if (v80 && v79 && [v80 caseInsensitiveCompare:v79])
            {
              v89 = [v16 phoneticNamesByName];
              [v89 setObject:v80 forKey:v79];
            }

            v79 = v79;
            v128 = v79;
            v78 = v123;
          }

          else
          {
            v128 = 0;
            v132 = 0;
          }
        }

        if (v78 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v129 = 0;
          v135 = 0;
          v90 = v80;
        }

        else
        {
          v136 = v45;
          v146 = v80;
          v147 = v79;
          v91 = [v13 getName:&v147 phoneticName:&v146 atIndex:v78 forPerson:a3];
          v92 = v147;

          v90 = v146;
          if (v91)
          {
            v93 = v132;
            v79 = v92;
            if ([v92 length])
            {
              if ((v136 & 2) != 0)
              {
                v114 = [v16 firstNamesByLastNames];
                v94 = [v114 objectForKey:v92];

                if (!v94)
                {
                  v115 = [v16 firstNamesByLastNames];

                  if (!v115)
                  {
                    v116 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                    [v16 setFirstNamesByLastNames:v116];
                  }

                  v94 = objc_alloc_init(MEMORY[0x29EDB8E20]);
                  v117 = [v16 firstNamesByLastNames];
                  [v117 setObject:v94 forKey:v79];
                }
              }

              else
              {
                v94 = 0;
              }

              v135 = v94;
              v118 = [v16 topLevelNonNickNames];
              [v118 addObject:v79];

              if (v90 && v79 && [v90 caseInsensitiveCompare:v79])
              {
                v119 = [v16 phoneticNamesByName];
                [v119 setObject:v90 forKey:v79];
              }

              v79 = v79;
              v129 = v79;
            }

            else
            {
              v129 = 0;
              v135 = 0;
            }

            goto LABEL_94;
          }

          v129 = 0;
          v135 = 0;
          v79 = v92;
        }

        v93 = v132;
LABEL_94:
        if (v138)
        {
          v95 = 0;
          while (1)
          {
            if (v95 == v152)
            {
              v96 = [v16 topLevelNonNickNames];
              v36 = v134;
              [v96 addObject:v134];

              [v93 addObject:v134];
              v44 = v90;
            }

            else
            {
              if (v127 == v95 || v123 == v95 || (v97 = [v13 typeOfNameAtIndex:v95], v97 == 3))
              {
                v36 = v79;
                v44 = v90;
                goto LABEL_103;
              }

              v121 = v97;
              v145 = v79;
              v144 = v90;
              v122 = [v13 getName:&v145 phoneticName:&v144 atIndex:v95 forPerson:a3];
              v36 = v145;

              v44 = v144;
              if (!v122 || ![v36 length])
              {
                goto LABEL_103;
              }

              v98 = [v16 topLevelNonNickNames];
              [v98 addObject:v36];

              if (v44 && v36 && [v44 caseInsensitiveCompare:v36])
              {
                v99 = [v16 phoneticNamesByName];
                [v99 setObject:v44 forKey:v36];
              }

              if (v121)
              {
                [v93 addObject:v36];
                v79 = v36;
                if (v121 == 1)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                v79 = v36;
              }
            }

            [v135 addObject:v36];
            v36 = v79;
LABEL_103:
            ++v95;
            v90 = v44;
            v79 = v36;
            if (v138 == v95)
            {
              goto LABEL_116;
            }
          }
        }

        v36 = v79;
        v44 = v90;
LABEL_116:
        if (v135)
        {
          if (v128)
          {
            [v135 addObject:?];
          }

          else
          {
            v100 = [v13 countOfNamesOfType:?];
            if (v100)
            {
              v101 = v100;
              for (i = 0; i != v101; ++i)
              {
                v103 = v44;
                v104 = v36;
                v142 = v103;
                v143 = v36;
                v105 = [v13 getNth:i name:&v143 phoneticName:&v142 ofType:0 nameIndex:0 forPerson:a3];
                v36 = v143;

                v44 = v142;
                if (v105)
                {
                  if ([v36 length])
                  {
                    [v135 addObject:v36];
                    if (v44)
                    {
                      if (v36 && [v44 caseInsensitiveCompare:v36])
                      {
                        v106 = [v16 phoneticNamesByName];
                        [v106 setObject:v44 forKey:v36];
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (v132)
        {
          v20 = v126;
          v24 = v120;
          v22 = v131;
          if (v129)
          {
            [v132 addObject:?];
            goto LABEL_37;
          }

          v107 = [v13 countOfNamesOfType:1];
          if (!v107)
          {
            v129 = 0;
            goto LABEL_37;
          }

          v108 = v107;
          for (j = 0; j != v108; ++j)
          {
            v110 = v44;
            v111 = v36;
            v140 = v110;
            v141 = v36;
            v112 = [v13 getNth:j name:&v141 phoneticName:&v140 ofType:1 nameIndex:0 forPerson:a3];
            v36 = v141;

            v44 = v140;
            if (v112)
            {
              if ([v36 length])
              {
                [v132 addObject:v36];
                if (v44)
                {
                  if (v36 && [v44 caseInsensitiveCompare:v36])
                  {
                    v113 = [v16 phoneticNamesByName];
                    [v113 setObject:v44 forKey:v36];
                  }
                }
              }
            }
          }

          v129 = 0;
        }

        else
        {
          v132 = 0;
        }

        v20 = v126;
        v24 = v120;
LABEL_36:
        v22 = v131;
        goto LABEL_37;
      }
    }
  }

LABEL_61:

  return 1;
}

id _CommaSeparatedStringFromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 mutableCopy];
    [v4 sortUsingSelector:sel_caseInsensitiveCompare_];
    v5 = objc_alloc_init(MEMORY[0x29EDBA050]);
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7)
      {
        if (v3 == 1)
        {
          v8 = @"MULTIPLE_ITEM_SEPARATOR_WORD";
        }

        else
        {
          v8 = @"MULTIPLE_ITEM_SEPARATOR_CHAR";
        }

        v9 = VoiceDialSpokenLocalizedString(v8);
        [v5 appendString:v9];

        [v4 objectAtIndex:v7];
        v6 = v10 = v6;
      }

      else
      {
        v10 = [v4 objectAtIndex:0];
        v11 = [v10 capitalizedString];

        v6 = v11;
      }

      [v5 appendString:v6];
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v12 = v5;

  return v5;
}

id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

uint64_t __PHDefaultLog_block_invoke()
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.mobilephone", "Default");

  return MEMORY[0x2A1C71028]();
}

id PHOversizedLog()
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v1 = PHOversizedLog_PHOversizedLog;

  return v1;
}

uint64_t __PHOversizedLog_block_invoke()
{
  PHOversizedLog_PHOversizedLog = os_log_create("com.apple.calls.mobilephone", "Oversized");

  return MEMORY[0x2A1C71028]();
}

id PHOversizedLogQueue()
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v1 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v1;
}

void __PHOversizedLogQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v0 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v2);
  v1 = PHOversizedLogQueue_PHOversizedLogQueue;
  PHOversizedLogQueue_PHOversizedLogQueue = v0;
}

void DigitDialPhoneNumberFromResult(void *a1, void *a2, void *a3)
{
  v68 = a1;
  v5 = [v68 elementCount];
  v6 = v5;
  v65 = a3;
  if (a3 && v5 >= 1)
  {
    v7 = VoiceDialBundle();
    v8 = VSRecognitionModelCopyLanguageResourceURL();

    if (v8)
    {
      v64 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfURL:v8];
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v63 = 0;
  v64 = 0;
  v67 = 0;
  v69 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v59 = 0;
  v61 = 0;
  v14 = 0;
  if (v5 >= 1)
  {
LABEL_8:
    v57 = v8;
    v58 = a2;
    v14 = 0;
    v59 = 0;
    v61 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v63 = 0;
    v10 = 0;
    v9 = 0;
    v69 = 0;
    v15 = 0;
    v67 = 0;
    v16 = &v72;
    if (!v65)
    {
      v16 = 0;
    }

    v55 = v16;
    v56 = v6 - 1;
    while (1)
    {
      v17 = v6;
      v18 = v9;

      v76 = v9;
      v77[0] = v69;
      v19 = [v68 getElementClassIdentifier:v77 value:&v76 atIndex:v15];
      v20 = v77[0];

      v9 = v76;
      v69 = v20;
      if (v19)
      {
        if ([v20 isEqualToString:@"plus"])
        {
          VoiceDialSpokenLocalizedString(@"SPOKEN_PLUS_AT_BEGINNING_OF_PHONE_NUMBER");

LABEL_19:
          v12 = _SpokenValueFromElementValue(v64, v9);
          goto LABEL_20;
        }

        if ([v20 isEqualToString:@"digit"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"nonzero-digit") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"teens") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"one-digit"))
        {
          goto LABEL_19;
        }

        if ([v20 isEqualToString:@"tens"])
        {
          if (v15 >= v56)
          {
            v12 = 0;
          }

          else
          {
            v74 = v11;
            v75 = v63;
            v54 = v15 + 1;
            v28 = [v68 getElementClassIdentifier:&v75 value:&v74 atIndex:?];
            v29 = v75;

            v30 = v74;
            if (v28)
            {
              if ([(__CFString *)v29 isEqualToString:@"digit"]&& ([(__CFString *)v29 isEqualToString:@"0"]& 1) == 0)
              {

                v29 = @"nonzero-digit";
              }

              v63 = v29;
              if ([(__CFString *)v29 isEqualToString:@"nonzero-digit"])
              {
                v66 = v30;
                v10 = [(__CFString *)v9 stringByAppendingString:v30];
                v31 = MEMORY[0x29EDBA0F8];
                v32 = [(__CFString *)v9 length];
                if (v32)
                {
                  [(__CFString *)v9 substringToIndex:1];
                  v52 = v33 = v64;
                  v34 = _SpokenValueFromElementValue(v64, v52);
                  v51 = v34;
                  v35 = v53;
                }

                else
                {
                  v33 = v64;
                  v34 = _SpokenValueFromElementValue(v64, @"0");
                  v35 = v34;
                }

                v36 = _SpokenValueFromElementValue(v33, v66);
                v13 = [v31 stringWithFormat:@"%@ 0 %@", v34, v36];

                v37 = v35;
                v38 = v35;
                if (v32)
                {

                  v37 = v52;
                }

                v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", objc_msgSend(v66, "intValue") + -[__CFString intValue](v9, "intValue")];

                v39 = [v14 count];
                v21 = v39;
                v53 = v38;
                if (v10)
                {
                  if (v39)
                  {
                    v40 = 0;
                    v42 = v59;
                    v41 = v61;
                    do
                    {
                      v62 = v41;
                      v43 = [v14 objectAtIndex:v40];
                      v44 = [v43 mutableCopy];

                      v60 = v44;
                      [v14 addObject:v44];
                      v45 = [v67 objectAtIndex:v40];
                      v41 = [v45 mutableCopy];

                      if (v41)
                      {
                        [v67 addObject:v41];
                      }

                      ++v40;
                      v46 = v60;
                      v42 = v60;
                    }

                    while (v21 != v40);
                  }

                  else
                  {
                    v46 = v59;
                    v41 = v61;
                  }

                  v59 = v46;
                  v61 = v41;
                  v73 = v14;
                  if (v65)
                  {
                    v72 = v67;
                  }

                  _AppendValueToPhoneNumbersInRange(&v73, v55, v10, v13, v21, v21);
                  v47 = v73;

                  v6 = v17;
                  if (v65)
                  {
                    v48 = v72;

                    v12 = 0;
                    v71 = v47;
                    v14 = v47;
                    v67 = v48;
                    v25 = v65;
                    v23 = v54;
LABEL_22:
                    v70 = v67;
                    v24 = &v70;
                  }

                  else
                  {
                    v24 = 0;
                    v12 = 0;
                    v71 = v47;
                    v14 = v47;
                    v25 = 0;
                    v23 = v54;
                  }

LABEL_23:
                  v26 = v14;
                  _AppendValueToPhoneNumbersInRange(&v71, v24, v22, v12, 0, v21);
                  v14 = v71;

                  if (v25)
                  {
                    v27 = v70;

                    v67 = v27;
                  }

                  v15 = v23;
                  v9 = v22;
                  v11 = v66;
                  goto LABEL_26;
                }

                v12 = 0;
                v23 = v54;
LABEL_21:
                v10 = 0;
                v24 = 0;
                v71 = v14;
                v25 = v65;
                if (v65)
                {
                  goto LABEL_22;
                }

                goto LABEL_23;
              }

              v12 = 0;
            }

            else
            {
              v12 = 0;
              v63 = v29;
            }

            v11 = v30;
          }

LABEL_20:
          v21 = [v14 count];
          v13 = 0;
          v66 = v11;
          v22 = v9;
          v23 = v15;
          goto LABEL_21;
        }

        if ([v20 isEqualToString:@"hundred"])
        {
          v12 = _SpokenValueFromElementValue(v64, v9);

          v9 = @"00";
          goto LABEL_20;
        }

        if ([v20 isEqualToString:@"thousand"])
        {
          v12 = _SpokenValueFromElementValue(v64, v9);

          v9 = @"000";
          goto LABEL_20;
        }

        v10 = 0;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v10 = 0;
        v12 = 0;
        v13 = 0;
      }

LABEL_26:
      if (++v15 >= v6)
      {
        v8 = v57;
        a2 = v58;
        break;
      }
    }
  }

  if (a2)
  {
    v49 = v14;
    *a2 = v14;
  }

  if (v65)
  {
    v50 = v67;
    *v65 = v67;
  }
}

id _SpokenValueFromElementValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:v3];
  if (!v4)
  {
    v4 = v3;
  }

  return v4;
}

void _AppendValueToPhoneNumbersInRange(id *a1, id *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a3;
  v11 = a4;
  if (a6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if (!*a1)
    {
      *a1 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    }

    v12 = objc_alloc_init(MEMORY[0x29EDBA050]);
    [*a1 addObject:v12];
    if (a2)
    {
      if (!*a2)
      {
        *a2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      }

      v13 = objc_alloc_init(MEMORY[0x29EDBA050]);
      [*a2 addObject:v13];
    }

    else
    {
      v13 = 0;
    }

    a5 = [*a1 count] - 1;
    a6 = 1;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v20;
  }

  v15 = -a6;
  v16 = a5 + a6 - 1;
  do
  {
    v17 = v12;
    v12 = [*a1 objectAtIndex:v16];

    [v12 appendString:v20];
    if (a2)
    {
      v18 = [*a2 objectAtIndex:v16];

      [v18 appendString:v14];
      [v18 appendString:@" "];
      v13 = v18;
    }

    --v16;
  }

  while (!__CFADD__(v15++, 1));
}

void _CreateNameDataSourceMap()
{
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v0 = [v3 pathForResource:@"VoiceDialNameDataSources" ofType:@"plist"];
  if (v0)
  {
    v1 = [MEMORY[0x29EDB8DC0] dictionaryWithContentsOfFile:v0];
    v2 = __nameSourceMap;
    __nameSourceMap = v1;
  }
}

CFStringRef VoiceDialMaidenNameDataSourceCreateMaidenNameFromLastName(const __CFString *a1)
{
  v76 = *MEMORY[0x29EDCA608];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *buffer = 0u;
  v56 = 0u;
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    v28 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_71;
  }

  v3 = Length;
  v53 = Length - 1;
  theString = a1;
  v66 = 0;
  v67 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v64 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v68 = 0;
  v69 = 0;
  v65 = CStringPtr;
  v11 = 1;
  v12 = 64;
  do
  {
    if (v9 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v9;
    }

    v14 = v67;
    if (v67 <= v9)
    {
      goto LABEL_20;
    }

    if (v64)
    {
      v15 = &v64[v66];
LABEL_11:
      v16 = v15[v9];
      goto LABEL_14;
    }

    if (!v65)
    {
      v18 = v68;
      if (v69 <= v9 || v68 > v9)
      {
        v20 = -v13;
        v21 = v13 + v6;
        v22 = v12 - v13;
        v23 = v9 + v20;
        v24 = v23 + 64;
        if (v23 + 64 >= v67)
        {
          v24 = v67;
        }

        v68 = v23;
        v69 = v24;
        if (v67 >= v22)
        {
          v14 = v22;
        }

        v77.location = v23 + v66;
        v77.length = v14 + v21;
        CFStringGetCharacters(theString, v77, buffer);
        v18 = v68;
      }

      v15 = &buffer[-v18];
      goto LABEL_11;
    }

    v16 = v65[v66 + v9];
LABEL_14:
    if (v16 == 32)
    {
      if (!v11)
      {
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x29EDBA048]);
        }

        [v8 addIndex:v9 - 1];
      }

      v17 = 0;
      v11 = 1;
      goto LABEL_26;
    }

LABEL_20:
    if (v11 == 1)
    {
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x29EDBA048]);
      }

      [v7 addIndex:v9];
      v11 = 0;
      ++v10;
    }

    else
    {
      v11 = 0;
    }

    v17 = 1;
LABEL_26:
    ++v9;
    --v6;
    ++v12;
  }

  while (v3 != v9);
  if (v17)
  {
    [v8 addIndex:v53];
  }

  if (v10 < 2)
  {
LABEL_43:
    v28 = 0;
  }

  else
  {
    v25 = [v7 firstIndex];
    v27 = v25;
    if (v10 == 2)
    {
      if (_IsNamePrefixString(a1, v25) != -1)
      {
        goto LABEL_43;
      }

      v46 = [v8 indexGreaterThanOrEqualToIndex:v27];
      v45 = *MEMORY[0x29EDB8ED8];
LABEL_70:
      v79.length = v46 - v27 + 1;
      v79.location = v27;
      v28 = CFStringCreateWithSubstring(v45, a1, v79);
    }

    else
    {
      v29 = MEMORY[0x29EDB8ED8];
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_68;
      }

      alloc = *MEMORY[0x29EDB8ED8];
      v54 = 0;
      *&v26 = 138412802;
      v49 = v26;
      v30 = v25;
      range = v25;
      range_8 = v8;
      do
      {
        v31 = [v8 indexGreaterThanOrEqualToIndex:{v30, v49}];
        IsNamePrefixString = _IsNamePrefixString(a1, v30);
        ++v54;
        if (IsNamePrefixString == -1)
        {
          v28 = 0;
        }

        else
        {
          if (v30 == v27)
          {
            v31 = [v8 indexGreaterThanOrEqualToIndex:{objc_msgSend(v7, "indexGreaterThanIndex:", IsNamePrefixString - 1)}];
            v33 = v31 - v27;
            v34.location = v27;
          }

          else
          {
            v35 = CFStringGetLength(a1);
            v36 = PHDefaultLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v49;
              v71 = a1;
              v72 = 2048;
              v73 = v30;
              v74 = 2048;
              v75 = v35;
              _os_log_impl(&dword_295FD5000, v36, OS_LOG_TYPE_DEFAULT, "_IsNameJoinerString name: %@ searchIndex: %lld wordLen: %lld", buf, 0x20u);
            }

            v37 = 0;
            v38 = -1;
            do
            {
              v39 = __SingleNameJoiners[v37];
              v40 = CFStringGetLength(v39);
              v41 = v40 + v30;
              if (v40 + v30 <= v35)
              {
                v78.length = v40;
                v78.location = v30;
                v43 = CFStringCompareWithOptions(a1, v39, v78, 1uLL);
                v42 = v43 != kCFCompareEqualTo;
                if (v43 == kCFCompareEqualTo)
                {
                  v38 = v41;
                }
              }

              else
              {
                v42 = 1;
              }

              if (v37 > 1)
              {
                break;
              }

              ++v37;
            }

            while (v42);
            if (v38 == -1 || (v10 - v54) < 2)
            {
              v8 = range_8;
              v31 = [range_8 indexLessThanIndex:v30];
              v27 = range;
              v33 = v31 - range;
              v34.location = range;
            }

            else
            {
              v8 = range_8;
              v33 = [range_8 indexGreaterThanOrEqualToIndex:{objc_msgSend(v7, "indexGreaterThanIndex:", v38 - 1)}];
              v34.location = 0;
              v31 = v33;
              v27 = range;
            }
          }

          v34.length = v33 + 1;
          v28 = CFStringCreateWithSubstring(alloc, a1, v34);
        }

        v44 = [v7 indexGreaterThanIndex:v31];
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v30 = v44;
      }

      while (!v28);
      v29 = MEMORY[0x29EDB8ED8];
      if (!v28)
      {
LABEL_68:
        v45 = *v29;
        v46 = [v8 indexGreaterThanOrEqualToIndex:v27];
        goto LABEL_70;
      }
    }
  }

LABEL_71:

  v47 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t _IsNamePrefixString(const __CFString *a1, CFIndex a2)
{
  v20 = *MEMORY[0x29EDCA608];
  Length = CFStringGetLength(a1);
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = Length;
    _os_log_impl(&dword_295FD5000, v5, OS_LOG_TYPE_DEFAULT, "_IsNamePrefixString name: %@ searchIndex: %lld wordLen: %lld", &v14, 0x20u);
  }

  v6 = 0;
  v7 = -1;
  while (1)
  {
    v8 = __SingleNamePrefixes[v6];
    v9 = CFStringGetLength(v8);
    v10 = v9 + a2;
    if (v9 + a2 <= Length)
    {
      v21.length = v9;
      v21.location = a2;
      if (CFStringCompareWithOptions(a1, v8, v21, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v6++ >= 4)
    {
      goto LABEL_9;
    }
  }

  v7 = v10;
LABEL_9:
  v12 = *MEMORY[0x29EDCA608];
  return v7;
}

void VoiceDialCopyNameLabelAndTypeFromRecognitionResult(void *a1, void *a2, void *a3, void *a4, id *a5)
{
  v9 = a1;
  v10 = v9;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (v9)
  {
    v23 = [v9 elementCount];
    if (v23 >= 1)
    {
      v11 = 0;
      v12 = 0;
      for (i = 0; i != v23; ++i)
      {
        v14 = v12;
        v15 = v11;
        if ((!a2 || *a2) && (!a3 || *a3))
        {
          if (a4)
          {
            if (!a5 && *a4)
            {
              break;
            }
          }

          else if (!a5)
          {
            break;
          }
        }

        v24 = v11;
        v25 = v12;
        [v10 getElementClassIdentifier:&v25 value:&v24 atIndex:i];
        v12 = v25;

        v11 = v24;
        if (v11 && v12)
        {
          if (a2)
          {
            if (!*a2)
            {
              v16 = [v12 isEqualToString:@"name"];
              v17 = v11;
              v18 = a2;
              if (v16)
              {
                goto LABEL_34;
              }
            }
          }

          if (a3 && !*a3 && [v12 isEqualToString:@"label"])
          {
            v19 = v11;
            *a3 = v11;
          }

          if (a4)
          {
            if (!*a4)
            {
              v20 = [v12 isEqualToString:@"labeltype-phone"];
              v17 = v12;
              v18 = a4;
              if ((v20 & 1) != 0 || (v21 = [v12 isEqualToString:@"labeltype-email"], v17 = v12, v18 = a4, v21))
              {
LABEL_34:
                *v18 = v17;
              }
            }
          }
        }

        if (a5 && v11)
        {
          if (*a5)
          {
            [*a5 appendString:@" "];
            v22 = *a5;
          }

          else
          {
            v22 = objc_alloc_init(MEMORY[0x29EDBA050]);
            *a5 = v22;
          }

          [v22 appendString:v11];
        }
      }
    }
  }
}

void VoiceDialCopyNamesLabelAndTypeFromRecognitionResults(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = v7;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = a2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v24;
    while (1)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v15);

        v22 = 0;
        if (a3)
        {
          if (*a3)
          {
            v17 = 0;
          }

          else
          {
            v17 = a3;
          }

          if (!a4)
          {
LABEL_19:
            v18 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          v17 = 0;
          if (!a4)
          {
            goto LABEL_19;
          }
        }

        if (*a4)
        {
          v18 = 0;
        }

        else
        {
          v18 = a4;
        }

LABEL_20:
        VoiceDialCopyNameLabelAndTypeFromRecognitionResult(v13, &v22, v17, v18, 0);
        v12 = v22;
        if (v12)
        {
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          }

          [v11 addObject:{v12, v21}];
        }

        ++v15;
        v16 = v13;
      }

      while (v10 != v15);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v10)
      {

        a2 = v21;
        if (v21)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }
  }

  v11 = 0;
  v12 = 0;
  if (a2)
  {
LABEL_27:
    v19 = v11;
    *a2 = v11;
  }

LABEL_28:

  v20 = *MEMORY[0x29EDCA608];
}

void VoiceDialSendNameAndExtendedLabelMatches(const void *a1, void *a2, int a3, int a4, void *a5, void *a6, void *a7, uint64_t (*a8)(id, __CFString *, const void *, uint64_t, void, void, uint64_t), uint64_t a9)
{
  v61 = a2;
  v62 = a5;
  v15 = a6;
  v16 = a7;
  v58 = v15;
  v17 = [v15 length];
  if (v16)
  {
    v52 = [v16 isEqualToString:@"labeltype-phone"];
    v51 = [v16 isEqualToString:@"labeltype-email"];
    if (!a1)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v51 = 1;
    v52 = 1;
    if (!a1)
    {
      goto LABEL_55;
    }
  }

  if (!v62)
  {
    goto LABEL_55;
  }

  v18 = ABAddressBookCopyPeopleWithName(a1, v62);
  v19 = v18;
  v47 = v16;
  if (v18)
  {
    Count = CFArrayGetCount(v18);
  }

  else
  {
    Count = 0;
  }

  v21 = [v61 nameTypes];
  v22 = v21 | 3;
  if (!a3)
  {
    v22 = v21;
  }

  v23 = 8;
  if (!a4)
  {
    v23 = 0;
  }

  v54 = v23;
  if (Count >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v53 = v22 & 0xFFFFFFFFFFFFFFF7;
    property = *MEMORY[0x29EDBE250];
    v56 = *MEMORY[0x29EDBE1D0];
    v49 = Count;
    v50 = v19;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v24);
      v60 = [v61 matchingNameType:v62 fromTypes:v53 | v54 forPerson:ValueAtIndex];
      if (v60 == -1)
      {
        v31 = 1;
        goto LABEL_51;
      }

      if (v52)
      {
        v26 = ABRecordCopyValue(ValueAtIndex, property);
      }

      if (v51)
      {
        v25 = ABRecordCopyValue(ValueAtIndex, v56);
      }

      v55 = v24;
      if (v26)
      {
        v28 = ABMultiValueGetCount(v26);
        if (v28 >= 1)
        {
          v29 = v28;
          v30 = 0;
          v31 = 1;
          while (v17)
          {
            v32 = ABMultiValueCopyLabelAtIndex(v26, v30);
            if (v32)
            {
              v33 = v32;
              v34 = VoiceDialCopySpokenLocalizedLabel(v32);
              if (v34)
              {
                v35 = v34;
                v36 = [v58 caseInsensitiveCompare:v34];
                CFRelease(v35);
                CFRelease(v33);
                if (!v36)
                {
                  break;
                }
              }

              else
              {
                CFRelease(v33);
              }
            }

LABEL_30:
            if (v29 == ++v30)
            {
              goto LABEL_36;
            }
          }

          IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v26, v30);
          if (IdentifierAtIndex != -1)
          {
            v31 = a8(v61, v62, ValueAtIndex, IdentifierAtIndex, property, v60, a9);
          }

          goto LABEL_30;
        }

        v31 = 1;
LABEL_36:
        CFRelease(v26);
        if (!v25)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v31 = 1;
        if (!v25)
        {
          goto LABEL_48;
        }
      }

      if (v31)
      {
        v38 = ABMultiValueGetCount(v25);
        if (v38 >= 1)
        {
          v39 = v38;
          v40 = 0;
          while (v17)
          {
            v41 = ABMultiValueCopyLabelAtIndex(v25, v40);
            if (v41)
            {
              v42 = v41;
              v43 = VoiceDialCopySpokenLocalizedLabel(v41);
              if (v43)
              {
                v44 = v43;
                v45 = [v58 caseInsensitiveCompare:v43];
                CFRelease(v44);
                CFRelease(v42);
                if (!v45)
                {
                  break;
                }
              }

              else
              {
                CFRelease(v42);
              }
            }

LABEL_47:
            if (v39 == ++v40)
            {
              goto LABEL_48;
            }
          }

          v46 = ABMultiValueGetIdentifierAtIndex(v25, v40);
          if (v46 != -1)
          {
            v31 = a8(v61, v62, ValueAtIndex, v46, v56, v60, a9);
          }

          goto LABEL_47;
        }

LABEL_49:
        Count = v49;
        v19 = v50;
        v24 = v55;
        CFRelease(v25);
        goto LABEL_51;
      }

LABEL_48:
      if (v25)
      {
        goto LABEL_49;
      }

      Count = v49;
      v19 = v50;
      v24 = v55;
LABEL_51:
      ++v24;
    }

    while (v24 < Count && v31 == 1);
  }

  v16 = v48;
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_55:
}

void *VoiceDialCopySpokenLocalizedLabel(void *key)
{
  if (!key)
  {
    return 0;
  }

  if (!__VoiceDialLocalizedLabels || (Value = CFDictionaryGetValue(__VoiceDialLocalizedLabels, key)) == 0)
  {
    Value = key;
  }

  CFRetain(Value);
  return Value;
}

id VoiceDialCopyMostLikelyNumberWithPersonAndLabel(uint64_t a1, uint64_t a2)
{
  result = 0;
  v34 = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    v5 = [MEMORY[0x29EDB8B98] contactFromPerson:? keysToFetch:?];
    v6 = [MEMORY[0x29EDB8BB8] sharedInstance];
    v25 = v5;
    v7 = [v6 entriesForContact:v5];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v9)
    {
      v26 = 0;
      goto LABEL_18;
    }

    v10 = v9;
    v26 = 0;
    v27 = a2;
    v11 = *v30;
    v12 = *MEMORY[0x29EDB8B38];
    v13 = *MEMORY[0x29EDB8B30];
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 contactProperty];
        v17 = [v15 actionType];
        if (([v17 isEqual:v12] & 1) == 0)
        {
          goto LABEL_13;
        }

        v18 = [v15 bundleIdentifier];
        if (([v18 isEqual:v13] & 1) == 0)
        {

LABEL_13:
          goto LABEL_14;
        }

        [v16 label];
        v19 = v12;
        v20 = v11;
        v21 = v13;
        v23 = v22 = v8;
        v28 = [v23 caseInsensitiveCompare:v27];

        v8 = v22;
        v13 = v21;
        v11 = v20;
        v12 = v19;

        if (!v28)
        {
          v26 = stringValueForContactProperty(v16);
        }

LABEL_14:
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v10)
      {
LABEL_18:

        result = v26;
        break;
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

id stringValueForContactProperty(void *a1)
{
  v1 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 stringValue];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void *VoiceDialGetMostLikelyFacetimeContactWithPersonAndLabel(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v3 = [MEMORY[0x29EDB8B98] contactFromPerson:a1 keysToFetch:MEMORY[0x29EDB8E90]];
    v4 = [MEMORY[0x29EDB8BB8] sharedInstance];
    v38 = v3;
    v5 = [v4 entriesForContact:v3];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    v41 = a2;
    if (v6)
    {
      v7 = v6;
      v8 = *v48;
      v9 = *MEMORY[0x29EDB8B70];
      v10 = *MEMORY[0x29EDB8B28];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = [v12 contactProperty];
        v14 = [v12 actionType];
        if (![v14 isEqual:v9])
        {
          goto LABEL_13;
        }

        v15 = [v12 bundleIdentifier];
        if (![v15 isEqual:v10])
        {
          break;
        }

        if (!a2)
        {

LABEL_17:
          v18 = stringValueForContactProperty(v13);
          if (v18)
          {
            v35 = v18;
LABEL_39:
            v34 = v38;

            goto LABEL_40;
          }

          goto LABEL_14;
        }

        v16 = [v13 label];
        v17 = [v16 caseInsensitiveCompare:v41];

        a2 = v41;
        if (!v17)
        {
          goto LABEL_17;
        }

LABEL_14:

        if (v7 == ++v11)
        {
          v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          v7 = v19;
          if (v19)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

LABEL_13:
      goto LABEL_14;
    }

LABEL_20:

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v40 = obj;
    v20 = [v40 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      v23 = 0x29EDC5000uLL;
      v24 = 0x29EDC5000uLL;
      while (2)
      {
        v25 = 0;
        v39 = v21;
        do
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v40);
          }

          v13 = [*(*(&v43 + 1) + 8 * v25) contactProperty];
          v35 = stringValueForContactProperty(v13);
          v26 = IMCleanupPhoneNumber();
          v27 = [*(v23 + 1328) sharedInstance];
          v28 = [*(v24 + 1336) facetimeService];
          if ([v27 statusForID:v26 onService:v28] == 1)
          {
            if (v41)
            {
              [v13 label];
              v29 = v23;
              v31 = v30 = v22;
              v32 = [v31 caseInsensitiveCompare:v41];

              v22 = v30;
              v23 = v29;
              v24 = 0x29EDC5000;

              if (v32)
              {
                v33 = 1;
              }

              else
              {
                v33 = v35 == 0;
              }

              v21 = v39;
              if (!v33)
              {
LABEL_38:

                goto LABEL_39;
              }
            }

            else
            {

              v21 = v39;
              if (v35)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
          }

          ++v25;
        }

        while (v21 != v25);
        v21 = [v40 countByEnumeratingWithState:&v43 objects:v51 count:16];
        v35 = 0;
        v34 = v38;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v35 = 0;
      v34 = v38;
    }

LABEL_40:
  }

  else
  {
    v35 = 0;
  }

  v36 = *MEMORY[0x29EDCA608];
  return v35;
}

BOOL VoiceDialPersonIsCompany(const void *a1)
{
  v1 = ABRecordCopyValue(a1, *MEMORY[0x29EDBE1F8]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFNumberCompare(v1, *MEMORY[0x29EDBE1F0], 0) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

void VoiceDialAppendCompositeNamePropertyValue(CFMutableStringRef *a1, ABRecordRef record, ABPropertyID property, ABPropertyID a4, ABPropertyID a5, char a6, _BYTE *a7, const __CFString *cf, int a9)
{
  v9 = cf;
  if ((a6 & 1) == 0 && *MEMORY[0x29EDBE228] == property)
  {
    return;
  }

  if (property == a9)
  {
    if (!cf)
    {
      return;
    }

    CFRetain(cf);
  }

  else
  {
    v9 = ABRecordCopyValue(record, property);
    if (!v9)
    {
      return;
    }
  }

  if (CFStringGetLength(v9) >= 1)
  {
    if ((a6 & 2) == 0)
    {
LABEL_10:
      v16 = v9;
LABEL_18:
      if (*a1)
      {
        CFStringAppend(*a1, @" ");
        Mutable = *a1;
      }

      else
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
        *a1 = Mutable;
      }

      CFStringAppend(Mutable, v16);
      goto LABEL_22;
    }

    v17 = ABRecordCopyValue(record, a4);
    if (v17)
    {
      v16 = v17;
      if (CFStringGetLength(v17))
      {
        goto LABEL_17;
      }

      CFRelease(v16);
    }

    v18 = ABRecordCopyValue(record, a5);
    if (!v18)
    {
      goto LABEL_10;
    }

    v16 = v18;
    if (!CFStringGetLength(v18))
    {
      CFRelease(v16);
      goto LABEL_10;
    }

LABEL_17:
    CFRelease(v9);
    *a7 = 1;
    goto LABEL_18;
  }

  v16 = v9;
LABEL_22:

  CFRelease(v16);
}

CFMutableStringRef VoiceDialPersonCopyCompositeNameWithSubstitution(ABRecordRef record, const __CFString *a2, int a3, char a4)
{
  v35 = 0;
  v34 = 0;
  v8 = MEMORY[0x29EDBE228];
  if ((a4 & 8) != 0)
  {
    v9 = ABRecordCopyValue(record, *MEMORY[0x29EDBE228]);
    v10 = v9;
    if (!v9)
    {
      return v10;
    }

    Length = CFStringGetLength(v9);
    CFRelease(v10);
    if (!Length)
    {
      return 0;
    }
  }

  if (VoiceDialPersonIsCompany(record))
  {
    v12 = ABRecordCopyValue(record, *MEMORY[0x29EDBE238]);
    v35 = v12;
    if (v12)
    {
      v10 = v12;
      if (CFStringGetLength(v12))
      {
        v13 = 1;
        goto LABEL_37;
      }

      CFRelease(v10);
      v35 = 0;
    }
  }

  CompositeNameFormatForRecord = ABPersonGetCompositeNameFormatForRecord(0);
  v15 = *MEMORY[0x29EDBE200];
  v16 = *MEMORY[0x29EDBE218];
  if (CompositeNameFormatForRecord)
  {
    v17 = *MEMORY[0x29EDBE218];
  }

  else
  {
    v17 = *MEMORY[0x29EDBE200];
  }

  v18 = *MEMORY[0x29EDBE1D8];
  if (CompositeNameFormatForRecord)
  {
    v19 = *MEMORY[0x29EDBE1D8];
  }

  else
  {
    v19 = *MEMORY[0x29EDBE218];
  }

  if (CompositeNameFormatForRecord)
  {
    v20 = *MEMORY[0x29EDBE200];
  }

  else
  {
    v20 = *MEMORY[0x29EDBE1D8];
  }

  v21 = *MEMORY[0x29EDBE208];
  v22 = *MEMORY[0x29EDBE220];
  if (CompositeNameFormatForRecord)
  {
    v23 = *MEMORY[0x29EDBE220];
  }

  else
  {
    v23 = *MEMORY[0x29EDBE208];
  }

  v24 = *MEMORY[0x29EDBE1E0];
  if (CompositeNameFormatForRecord)
  {
    v25 = *MEMORY[0x29EDBE1E0];
  }

  else
  {
    v25 = *MEMORY[0x29EDBE220];
  }

  if (CompositeNameFormatForRecord)
  {
    v26 = *MEMORY[0x29EDBE208];
  }

  else
  {
    v26 = *MEMORY[0x29EDBE1E0];
  }

  v27 = *MEMORY[0x29EDBE210];
  v28 = *v8;
  if (CompositeNameFormatForRecord)
  {
    v29 = *v8;
  }

  else
  {
    v29 = *MEMORY[0x29EDBE210];
  }

  v30 = *MEMORY[0x29EDBE1E8];
  if (CompositeNameFormatForRecord)
  {
    v31 = *MEMORY[0x29EDBE1E8];
  }

  else
  {
    v31 = v28;
  }

  if (CompositeNameFormatForRecord)
  {
    v32 = *MEMORY[0x29EDBE210];
  }

  else
  {
    v32 = *MEMORY[0x29EDBE1E8];
  }

  VoiceDialAppendCompositeNamePropertyValue(&v35, record, v32, v26, v20, a4, &v34, a2, a3);
  VoiceDialAppendCompositeNamePropertyValue(&v35, record, v31, v25, v19, a4, &v34, a2, a3);
  VoiceDialAppendCompositeNamePropertyValue(&v35, record, v29, v23, v17, a4, &v34, a2, a3);
  v10 = v35;
  v13 = v34 == 0;
LABEL_37:
  if ((a4 & 4) != 0 && v13 && v10)
  {
    CFRelease(v10);
    return 0;
  }

  return v10;
}

__CFString *VoiceDialCopyErrorActionForResult(void *a1)
{
  v1 = MEMORY[0x29EDBE2A8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v3 airplaneMode];

  v5 = [v2 valueOfFirstElementWithClassIdentifier:@"facetime"];

  v6 = [v2 recognitionAction];

  v7 = [v6 sensitiveActionsEnabled];
  if (v7)
  {
    v8 = @"AIRPLANE_MODE_ON";
  }

  else
  {
    v8 = @"SENSITIVE_ACTIONS_OFF";
  }

  if (!v7 || (v4 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    if (([MEMORY[0x29EDC6F70] isFaceTimeVideoAvailable] & 1) == 0)
    {
      v8 = @"FACETIME_NOT_ENABLED";
LABEL_13:
      v11 = objc_alloc(MEMORY[0x29EDC82E8]);
      v12 = VoiceDialSpokenLocalizedString(v8);
      v10 = [v11 initWithSpokenFeedbackString:v12 willTerminate:1];

      goto LABEL_15;
    }
  }

  else
  {
    Status = CTRegistrationGetStatus();
    v10 = Status;
    if (!Status)
    {
      goto LABEL_15;
    }

    if (CFStringCompare(Status, *MEMORY[0x29EDB9510], 0) && CFStringCompare(v10, *MEMORY[0x29EDB9518], 0))
    {
      v8 = @"NOT_REGISTERED";
      goto LABEL_13;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

id VoiceDialSpokenLocalizedString(void *a1)
{
  v1 = a1;
  v2 = VoiceDialSpokenLocalizedStringIfAvailable(v1);
  if (!v2)
  {
    v3 = VoiceDialBundle();
    v2 = [v3 localizedStringForKey:v1 value:&stru_2A1D19580 table:@"Feedback"];
  }

  return v2;
}

id VoiceDialBundle()
{
  v0 = VoiceDialBundle___vdBundle;
  if (!VoiceDialBundle___vdBundle)
  {
    v1 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v2 = VoiceDialBundle___vdBundle;
    VoiceDialBundle___vdBundle = v1;

    v0 = VoiceDialBundle___vdBundle;
  }

  return v0;
}

id VoiceDialSpokenLocalizedStringIfAvailable(void *a1)
{
  v1 = a1;
  v2 = VSPreferencesCopySpokenLanguageIdentifier();
  pthread_mutex_lock(&VoiceDialSpokenLocalizedStringIfAvailable___locStringCacheLock);
  if (VoiceDialSpokenLocalizedStringIfAvailable___locStringCache)
  {
    v3 = [VoiceDialSpokenLocalizedStringIfAvailable___locStringCachedLanguageID isEqualToString:v2];
    v4 = VoiceDialSpokenLocalizedStringIfAvailable___locStringCache;
    if (v3)
    {
      v5 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  VoiceDialSpokenLocalizedStringIfAvailable___locStringCache = 0;

  if (VoiceDialSpokenLocalizedStringIfAvailable___locStringCachedLanguageID)
  {
    CFRelease(VoiceDialSpokenLocalizedStringIfAvailable___locStringCachedLanguageID);
  }

  VoiceDialSpokenLocalizedStringIfAvailable___locStringCachedLanguageID = 0;
  if (v2)
  {
    v6 = VoiceDialBundle();
    v5 = VSRecognitionModelCopyResourceURL();

    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfURL:v5];
      v8 = VoiceDialSpokenLocalizedStringIfAvailable___locStringCache;
      VoiceDialSpokenLocalizedStringIfAvailable___locStringCache = v7;
    }

    VoiceDialSpokenLocalizedStringIfAvailable___locStringCachedLanguageID = v2;
    CFRetain(v2);
  }

  else
  {
    v5 = 0;
  }

  v4 = VoiceDialSpokenLocalizedStringIfAvailable___locStringCache;
  if (!VoiceDialSpokenLocalizedStringIfAvailable___locStringCache)
  {
    v9 = objc_alloc_init(MEMORY[0x29EDB8DC0]);
    v10 = VoiceDialSpokenLocalizedStringIfAvailable___locStringCache;
    VoiceDialSpokenLocalizedStringIfAvailable___locStringCache = v9;

    v4 = VoiceDialSpokenLocalizedStringIfAvailable___locStringCache;
  }

LABEL_14:
  v11 = [v4 objectForKey:v1];
  pthread_mutex_unlock(&VoiceDialSpokenLocalizedStringIfAvailable___locStringCacheLock);
  if (v2)
  {
    CFRelease(v2);
  }

  return v11;
}

void VoiceDialConfigureSpokenLocalizedLabel(int a1)
{
  if (!a1)
  {
    if (!__VoiceDialLocalizedLabels)
    {
      v9 = 0;
      v1 = 0;
      goto LABEL_19;
    }

    CFRelease(__VoiceDialLocalizedLabels);
    v6 = 0;
    v1 = 0;
    __VoiceDialLocalizedLabels = 0;
    goto LABEL_18;
  }

  v1 = MEMORY[0x29C2553B0]();
  if (![v1 count])
  {
    v9 = 0;
    v5 = 0;
    v3 = __VoiceDialLocalizedLabels;
    if (!__VoiceDialLocalizedLabels)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(v3);
    __VoiceDialLocalizedLabels = 0;
    v7 = __VoiceDialLocalizedLabelLanguageCode;
    __VoiceDialLocalizedLabelLanguageCode = 0;

    v5 = __VoiceDialLocalizedLabels;
    goto LABEL_15;
  }

  v2 = [v1 objectAtIndex:0];
  v3 = __VoiceDialLocalizedLabels;
  if (__VoiceDialLocalizedLabels)
  {
    if (v2)
    {
      v9 = v2;
      v4 = [__VoiceDialLocalizedLabelLanguageCode isEqualToString:?];
      v3 = __VoiceDialLocalizedLabels;
      v5 = __VoiceDialLocalizedLabels;
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_14;
  }

  v9 = v2;
  v5 = 0;
LABEL_15:
  if (v1 && !v5)
  {
    __VoiceDialLocalizedLabels = ABAddressBookCopyLocalizedStringsForLanguageArray();
    v6 = v9;
LABEL_18:
    v9 = v6;
    v8 = __VoiceDialLocalizedLabelLanguageCode;
    __VoiceDialLocalizedLabelLanguageCode = v6;
  }

LABEL_19:
}

id VoiceDialNumberToDialForNumber(void *a1)
{
  v1 = a1;
  v2 = VoiceDialNumberToDialForNumber___InternationalAssistFunction;
  if (VoiceDialNumberToDialForNumber___InternationalAssistFunction || ((v3 = VoiceDialTelephonyUtilitiesFrameworkHandle()) == 0 ? (v2 = VoiceDialNumberToDialForNumber___InternationalAssistFunction) : (v2 = dlsym(v3, "TUNumberToDial"), VoiceDialNumberToDialForNumber___InternationalAssistFunction = v2), v4 = v1, v2))
  {
    v4 = (v2)(v1, 0, 0, 0, 0);
  }

  return v4;
}

uint64_t VoiceDialTelephonyUtilitiesFrameworkHandle()
{
  result = VoiceDialTelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle;
  if (!VoiceDialTelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle)
  {
    v1 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities"];
    VoiceDialTelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle = dlopen([v1 fileSystemRepresentation], 2);

    return VoiceDialTelephonyUtilitiesFrameworkHandle___TelephonyUtilitiesHandle;
  }

  return result;
}

void sub_295FDE570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_295FDF09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_295FDF4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _ResultValidationAddressBookCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a7)
  {
    *a7 = 1;
  }

  return 0;
}

uint64_t _ResultDisambiguationAddressBookCallback(void *a1, void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a1;
  v11 = a2;
  v12 = a7;
  v13 = ABRecordCopyValue(a3, [v12 previousNameProperty]);
  if (!v13 || ([v12 previousName], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "caseInsensitiveCompare:", v14), v14, v15))
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  v34 = v11;
  v18 = [v10 personNameCount];
  if (v18)
  {
    v19 = v18;
    v35 = 0;
    v17 = 0;
    v16 = 0;
    v20 = 0;
    while (1)
    {
      if ([v10 typeOfNameAtIndex:v20] == 2)
      {
        v36 = v16;
        v21 = [v10 getName:&v36 phoneticName:0 atIndex:v20 forPerson:a3];
        v22 = v36;

        if (!v21)
        {
          goto LABEL_12;
        }

        v23 = [v12 matchedName];
        v24 = [v22 caseInsensitiveCompare:v23];

        if (!v24)
        {
          v16 = v22;
          goto LABEL_21;
        }

        if (!v22)
        {
          v16 = 0;
          goto LABEL_14;
        }

        v25 = [v22 length];
        if (v25 > v35)
        {
          v26 = v25;
          v16 = v22;

          v17 = v16;
          v35 = v26;
        }

        else
        {
LABEL_12:
          v16 = v22;
        }
      }

LABEL_14:
      if (++v20 >= v19)
      {
        goto LABEL_17;
      }
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_17:
  v27 = [v12 matchedName];
  v28 = [v27 caseInsensitiveCompare:v13];

  if (v28)
  {
    v11 = v34;
    if (v17)
    {
      v29 = [*objc_msgSend(v12 "result")];
      v30 = [v12 result];
      v31 = *v30;
      *v30 = v29;
    }
  }

  else
  {
LABEL_21:
    v11 = v34;
  }

  [v12 setResultFound:1];
LABEL_23:
  v32 = [v12 resultFound];

  return v32 ^ 1u;
}