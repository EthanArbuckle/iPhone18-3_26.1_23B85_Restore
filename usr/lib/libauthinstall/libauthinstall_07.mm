uint64_t _AMAuthInstallBundleCopyOverrideBuildIdentity(uint64_t a1, const __CFArray *a2, const __CFURL *a3, const __CFURL *a4, const __CFDictionary *a5, const __CFURL *a6)
{
  v184 = 0;
  v185 = 0;
  v183 = 0;
  v11 = 1;
  if (!a1 || (v12 = a2) == 0 || !a3)
  {
    OUTLINED_FUNCTION_13_1();
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_13_1();
  if (v20)
  {
    v21 = v16;
    v22 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v22, 0, **(a1 + 128));
    if (!MutableCopy)
    {
      ValueForKeyPathInDict = 0;
      v7 = 0;
      goto LABEL_142;
    }

    theDict = CFDictionaryGetValue(a5, @"Manifest");
    if (!theDict)
    {
      OUTLINED_FUNCTION_1_9();
      v7 = 0;
      Value = 0;
      goto LABEL_144;
    }

    if (v21)
    {
      Value = CFDictionaryGetValue(v21, @"Manifest");
      if (!Value)
      {
        OUTLINED_FUNCTION_1_9();
        v7 = 0;
LABEL_144:
        OUTLINED_FUNCTION_10_2();
        v11 = 8;
        goto LABEL_120;
      }
    }

    else
    {
      Value = 0;
    }

    v23 = CFGetAllocator(a1);
    v7 = CFDictionaryCreateMutableCopy(v23, 0, theDict);
    if (!v7)
    {
LABEL_14:
      OUTLINED_FUNCTION_1_9();
LABEL_142:
      Value = 0;
      OUTLINED_FUNCTION_10_2();
      v11 = 2;
      goto LABEL_120;
    }

    v166 = a5;
    if (v21)
    {
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_30();
      v27 = CFDictionaryCreateMutableCopy(v24, v25, v26);
      if (!v27)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = 0;
    }

    v164 = a3;
    v165 = v21;
    v169 = v27;
    v175 = v7;
    v170 = MutableCopy;
    v180 = v12;
    if (CFArrayGetCount(v12) < 1)
    {
LABEL_90:
      v7 = v175;
      if (CFDictionaryGetCount(MutableCopy) < 1)
      {
        goto LABEL_117;
      }

      v187[0] = 0;
      Count = CFDictionaryGetCount(MutableCopy);
      ValueForKeyPathInDict = (8 * Count);
      keysa = malloc(8 * Count);
      if (keysa)
      {
        PathComponent = malloc(ValueForKeyPathInDict);
        if (PathComponent)
        {
          CFDictionaryGetKeysAndValues(MutableCopy, keysa, &PathComponent->isa);
          v174 = PathComponent;
          if (Count < 1)
          {
            MutableCopy = 0;
            OUTLINED_FUNCTION_35();
            v11 = 0;
            goto LABEL_116;
          }

          v139 = a1;
          v140 = 0;
          v141 = *MEMORY[0x29EDB8ED8];
          v142 = *MEMORY[0x29EDB8EF8];
          theDicta = *MEMORY[0x29EDB8F00];
          v143 = MEMORY[0x29EDB9020];
          while (1)
          {
            ValueForKeyPathInDict = keysa[v140];
            v144 = *(&PathComponent->isa + v140);
            v186 = 0;
            v188.length = CFArrayGetCount(v180);
            v188.location = 0;
            if (CFArrayContainsValue(v180, v188, ValueForKeyPathInDict))
            {
              OUTLINED_FUNCTION_29();
              v187[0] = CFDictionaryCreateMutable(v145, v146, v147, v143);
              if (!v187[0])
              {
                MutableCopy = 0;
LABEL_130:
                PathComponent = 0;
LABEL_131:
                v182 = 0;
                v11 = 2;
                goto LABEL_133;
              }

              if (CFStringCompare(ValueForKeyPathInDict, @"BasebandFirmware", 0))
              {
                CFDictionaryAddValue(v187[0], @"Trusted", v142);
              }

              v148 = v139[2];
              if (*(v148 + 20))
              {
                v149 = theDicta;
              }

              else
              {
                v149 = v142;
              }

              if (*(v148 + 88))
              {
                v150 = theDicta;
              }

              else
              {
                v150 = v142;
              }

              CFDictionaryAddValue(v187[0], @"EPRO", v149);
              CFDictionaryAddValue(v187[0], @"ESEC", v150);
              OUTLINED_FUNCTION_29();
              MutableCopy = CFDictionaryCreateMutable(v151, v152, v153, v143);
              if (!MutableCopy)
              {
                goto LABEL_130;
              }

              PathComponent = CFURLCopyLastPathComponent(v144);
              if (!PathComponent)
              {
                v182 = 0;
                v11 = 3;
LABEL_133:
                v7 = v175;
                ValueForKeyPathInDict = v182;
LABEL_116:
                SafeRelease(v187[0]);
                SafeRelease(MutableCopy);
                SafeRelease(PathComponent);
                SafeFree(keysa);
                SafeFree(v174);
                SafeRelease(ValueForKeyPathInDict);
                if (!v11)
                {
LABEL_117:
                  CFDictionarySetValue(v166, @"Manifest", v7);
                  Value = v169;
                  if (v165)
                  {
                    CFDictionarySetValue(v165, @"Manifest", v169);
                  }

                  OUTLINED_FUNCTION_8_3();
                  OUTLINED_FUNCTION_3_5();
                  v11 = 0;
                  v15 = v170;
                  goto LABEL_120;
                }

                OUTLINED_FUNCTION_8_3();
                OUTLINED_FUNCTION_3_5();
LABEL_136:
                Value = v169;
                goto LABEL_120;
              }

              v154 = v139;
              v155 = CFGetAllocator(v139);
              v156 = CFURLCreateCopyAppendingPathComponent(v155, a4, PathComponent, 0);
              if (!v156)
              {
                goto LABEL_131;
              }

              v157 = ValueForKeyPathInDict;
              ValueForKeyPathInDict = v144;
              v182 = v156;
              SoftLink = AMAuthInstallSupportFileURLExists(v156, &v186);
              if (SoftLink || !v186 && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v182, v144), SoftLink) || (CFDictionaryAddValue(MutableCopy, @"Path", PathComponent), CFDictionaryAddValue(v187[0], @"Info", MutableCopy), SoftLink = _AMAuthInstallBundleApplyMeasurements(v154, v157, v144, 0, v187), SoftLink))
              {
                v11 = SoftLink;
                goto LABEL_133;
              }

              CFDictionarySetValue(v175, v157, v187[0]);
              SafeRelease(PathComponent);
              SafeRelease(MutableCopy);
              SafeRelease(v187[0]);
              SafeRelease(v182);
              v187[0] = 0;
              PathComponent = v174;
              v139 = v154;
              v143 = MEMORY[0x29EDB9020];
            }

            if (Count == ++v140)
            {
              MutableCopy = 0;
              OUTLINED_FUNCTION_35();
              v11 = 0;
              v7 = v175;
              goto LABEL_116;
            }
          }
        }

        MutableCopy = 0;
      }

      else
      {
        MutableCopy = 0;
        PathComponent = 0;
      }

      v174 = 0;
      ValueForKeyPathInDict = 0;
      v11 = 2;
      goto LABEL_116;
    }

    v28 = 0;
    keys = *MEMORY[0x29EDB8EF8];
    v176 = *MEMORY[0x29EDB8F00];
    v173 = Value;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v28);
      if (!ValueAtIndex)
      {
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_10_2();
        v11 = 1;
        goto LABEL_135;
      }

      v30 = ValueAtIndex;
      if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
      {
        v31 = keys;
      }

      else
      {
        v31 = v176;
      }

      v32 = CFBooleanGetValue(v31);
      v33 = CFGetAllocator(a1);
      if (Value && v32)
      {
        v39 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v33, v30);
        v40 = CFGetAllocator(a1);
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v40, Value, v39, v41, v42, v43, v44, v45);
        if (ValueForKeyPathInDict)
        {
          goto LABEL_27;
        }
      }

      else
      {
        ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v33, theDict, v30, v34, v35, v36, v37, v38);
        v39 = 0;
        if (ValueForKeyPathInDict)
        {
LABEL_27:
          v46 = CFStringCompare(v30, @"BasebandFirmware", 0);
          CFGetAllocator(a1);
          OUTLINED_FUNCTION_44();
          v50 = CFDictionaryCreateMutableCopy(v47, v48, v49);
          v184 = v50;
          if (!v50)
          {
            OUTLINED_FUNCTION_1_9();
            OUTLINED_FUNCTION_10_2();
            v11 = 2;
            goto LABEL_135;
          }

          v51 = _AMAuthInstallBundleSetObjectPropertyOverrides(a1, v30, v50);
          if (v51)
          {
            v11 = v51;
            AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to set %@ property overrides", v52, v53, v54, v55, v56, v30);
            OUTLINED_FUNCTION_1_9();
            goto LABEL_125;
          }

          v181 = v39;
          v57 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v57, ValueForKeyPathInDict, @"%@.%@", v58, v59, v60, v61, v62, @"Info");
          v64 = CFDictionaryGetValue(MutableCopy, v30);
          if (v64)
          {
            ValueForKeyPathInDict = CFDictionaryGetValue(v184, @"Info");
            if (!ValueForKeyPathInDict)
            {
              MutableCopy = 0;
              OUTLINED_FUNCTION_3_5();
              v11 = 7;
              goto LABEL_134;
            }

            CFGetAllocator(a1);
            OUTLINED_FUNCTION_44();
            MutableCopy = CFDictionaryCreateMutableCopy(v65, v66, v67);
            if (!MutableCopy)
            {
              ValueForKeyPathInDict = 0;
              OUTLINED_FUNCTION_3_5();
              v11 = 2;
              goto LABEL_134;
            }

            v68 = CFURLCopyLastPathComponent(v64);
            ValueForKeyPathInDict = v68;
            if (!v68)
            {
              OUTLINED_FUNCTION_3_5();
              v11 = 3;
              goto LABEL_134;
            }

            if (ValueForKeyWithFormat)
            {
              v69 = CFGetAllocator(a1);
              v70 = AMAuthInstallSupportCopyStringReplacingLastComponent(v69, ValueForKeyWithFormat, @"/", ValueForKeyPathInDict, &v185);
              if (v70)
              {
                v11 = v70;
                OUTLINED_FUNCTION_3_5();
LABEL_134:
                v15 = v170;
                goto LABEL_135;
              }
            }

            else
            {
              v185 = CFRetain(v68);
            }

            SafeRelease(ValueForKeyPathInDict);
            CFDictionarySetValue(MutableCopy, @"Path", v185);
            SafeRelease(v185);
            CFDictionarySetValue(v184, @"Info", MutableCopy);
            SafeRelease(MutableCopy);
            if (v46)
            {
              v71 = CFGetAllocator(a1);
              Mutable = CFDataCreateMutable(v71, 0);
              CFDictionarySetValue(v184, @"Digest", Mutable);
              CFRelease(Mutable);
            }

            v185 = 0;
            MutableCopy = v170;
            CFDictionaryRemoveValue(v170, v30);
          }

          v73 = *(a1 + 128);
          if (v73 && *(v73 + 8))
          {
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = CFDictionaryGetValue(*(*(a1 + 128) + 8), @"RecoveryOSOS");
              if (ValueForKeyPathInDict)
              {
                v74 = CFGetAllocator(a1);
                v80 = AMAuthInstallSupportGetValueForKeyWithFormat(v74, ValueForKeyPathInDict, @"%@.%@.%@", v75, v76, v77, v78, v79, @"Manifest");
                goto LABEL_47;
              }
            }

            else
            {
              v81 = CFGetAllocator(a1);
              v80 = AMAuthInstallSupportGetValueForKeyWithFormat(v81, *(*(a1 + 128) + 8), @"%@.%@.%@", v82, v83, v84, v85, v86, @"Manifest");
LABEL_47:
              ValueForKeyPathInDict = v80;
            }
          }

          else
          {
            ValueForKeyPathInDict = 0;
          }

          if (CFBooleanGetValue(v31))
          {
            v87 = @"RecoveryOSOS";
          }

          else
          {
            v87 = @"OS";
          }

          v88 = CFStringCompare(v87, v30, 0);
          if (ValueForKeyPathInDict)
          {
            v96 = 0;
            if (v64)
            {
              goto LABEL_62;
            }

LABEL_61:
            if (v96)
            {
              goto LABEL_62;
            }

LABEL_82:
            AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "Inserting %@ to Manifest to personalize later", v91, v92, v93, v94, v95, v30);
            if (CFBooleanGetValue(v31))
            {
              ValueForKeyPathInDict = v181;
              CFDictionarySetValue(v169, v181, v184);
              v12 = v180;
              Value = v173;
            }

            else
            {
              CFDictionarySetValue(v175, v30, v184);
              v12 = v180;
              Value = v173;
              ValueForKeyPathInDict = v181;
            }

            SafeRelease(v184);
            v184 = 0;
            SafeRelease(ValueForKeyPathInDict);
            goto LABEL_86;
          }

          if (*(a1 + 434))
          {
            v97 = 1;
          }

          else
          {
            v97 = (v64 | v88) == 0;
          }

          v96 = !v97;
          if (!v64)
          {
            goto LABEL_61;
          }

LABEL_62:
          if (v64)
          {
            IsImg4 = AMAuthInstallApIsImg4(a1, v89, v90, v91, v92, v93, v94, v95);
            if (v46 == kCFCompareEqualTo || IsImg4)
            {
              goto LABEL_75;
            }

            LOBYTE(v187[0]) = 0;
            if (_AMAuthInstallBundleImageHasBuildString(v30))
            {
              v99 = CFGetAllocator(a1);
              v100 = AMAuthInstallApImg3CopyBuildString(v99, v64, &v183);
              if (v100)
              {
                v11 = v100;
                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to copy image build string %@", v101, v102, v103, v104, v105, v30);
                goto LABEL_140;
              }

              CFDictionarySetValue(v184, @"BuildString", v183);
              SafeRelease(v183);
              v183 = 0;
            }

            v106 = CFGetAllocator(a1);
            IsFinalized = AMAuthInstallApImg3IsFinalized(v106, v64, v187);
            if (IsFinalized)
            {
              v11 = IsFinalized;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to check %@ alignment", v108, v109, v110, v111, v112, v30);
LABEL_140:
              v115 = 0;
              v113 = 0;
              goto LABEL_149;
            }

            if (LOBYTE(v187[0]))
            {
              goto LABEL_75;
            }

            v113 = CFURLCopyLastPathComponent(v64);
            if (!v113)
            {
              v115 = 0;
LABEL_146:
              v11 = 2;
LABEL_149:
              OUTLINED_FUNCTION_8_3();
              Value = v169;
              v15 = v170;
              v7 = v175;
              v18 = v115;
              v19 = v113;
              break;
            }

            v114 = CFGetAllocator(a1);
            v115 = CFURLCreateCopyAppendingPathComponent(v114, a4, v113, 0);
            if (!v115)
            {
              goto LABEL_146;
            }

            v116 = CFGetAllocator(a1);
            v117 = AMAuthInstallApImg3Finalize(v116, v64, v115);
            if (v117)
            {
              v11 = v117;
              AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentity", "failed to finalize image3 override", v118, v119, v120, v121, v122, v163);
              goto LABEL_149;
            }

            ValueForKeyPathInDict = CFRetain(v115);
            v123 = CFDictionaryGetValue(v184, @"Info");
            if (!v123)
            {
              v11 = 8;
              goto LABEL_149;
            }

            CFDictionarySetValue(v123, @"Path", v113);
            v124 = **(a1 + 128);
            OUTLINED_FUNCTION_27();
            CFDictionarySetValue(v125, v126, v127);
            SafeRelease(v113);
            SafeRelease(v115);
            if (!ValueForKeyPathInDict)
            {
LABEL_75:
              v128 = CFRetain(v64);
              goto LABEL_81;
            }
          }

          else
          {
            if (!ValueForKeyWithFormat)
            {
              goto LABEL_82;
            }

            v129 = CFBooleanGetValue(v31);
            v130 = CFGetAllocator(a1);
            if (v129)
            {
              v131 = a6;
            }

            else
            {
              v131 = v164;
            }

            v128 = CFURLCreateCopyAppendingPathComponent(v130, v131, ValueForKeyWithFormat, 0);
LABEL_81:
            ValueForKeyPathInDict = v128;
            if (!v128)
            {
              goto LABEL_82;
            }
          }

          OUTLINED_FUNCTION_27();
          v137 = _AMAuthInstallBundleApplyMeasurements(v132, v133, v134, v135, v136);
          if (v137)
          {
            v11 = v137;
            ValueForKeyPathInDict = 0;
            MutableCopy = 0;
LABEL_125:
            OUTLINED_FUNCTION_10_2();
LABEL_135:
            v7 = v175;
            goto LABEL_136;
          }

          CFRelease(ValueForKeyPathInDict);
          goto LABEL_82;
        }
      }

LABEL_86:
      if (++v28 >= CFArrayGetCount(v12))
      {
        goto LABEL_90;
      }
    }
  }

LABEL_120:
  v159 = v17;
  v160 = v18;
  v161 = v19;
  SafeRelease(v15);
  SafeRelease(ValueForKeyPathInDict);
  SafeRelease(v185);
  SafeRelease(v184);
  SafeRelease(MutableCopy);
  SafeRelease(v159);
  SafeRelease(v7);
  SafeRelease(v160);
  SafeRelease(v161);
  SafeRelease(v183);
  SafeRelease(Value);
  return v11;
}

CFIndex _AMAuthInstallBundleCreateServerRequestDictionary(uint64_t a1, const __CFArray *a2, CFDictionaryRef theDict, const __CFDictionary *a4, const void *a5, const __CFDictionary *a6, void *a7, void *a8)
{
  Mutable = 0;
  v201[0] = 0;
  v199 = 0;
  v200 = 0;
  Code = 1;
  if (!a4 || !a1 || !theDict)
  {
    v13 = 0;
    MutableCopy = 0;
    goto LABEL_127;
  }

  v13 = 0;
  MutableCopy = 0;
  if (a7)
  {
    Value = CFDictionaryGetValue(theDict, @"Manifest");
    if (!Value)
    {
LABEL_8:
      Mutable = 0;
      v13 = 0;
      MutableCopy = 0;
      Code = 7;
      goto LABEL_127;
    }

    v19 = Value;
    if (a6)
    {
      v196 = CFDictionaryGetValue(a6, @"Manifest");
      if (!v196)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v196 = 0;
    }

    MutableCopy = CFDictionaryGetValue(a4, @"Personalized");
    if (!MutableCopy)
    {
      Mutable = 0;
      v13 = 0;
LABEL_133:
      Code = 8;
      goto LABEL_127;
    }

    v13 = CFDictionaryGetValue(a4, @"Manifest");
    if (v13)
    {
      v20 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v184 = v13;
        if (!a6)
        {
          v180 = a7;
          v181 = a8;
          v179 = 0;
          theDicta = 0;
          v13 = 0;
LABEL_22:
          if (AMAuthInstallApIsImg4(a1, v21, v22, v23, v24, v25, v26, v27))
          {
            v29 = @"amai/apimg4ticket.der";
          }

          else
          {
            v29 = @"amai/apticket.der";
          }

          CFArrayGetCount(MutableCopy);
          v30 = OUTLINED_FUNCTION_23();
          theArray = MutableCopy;
          v192 = v13;
          v186 = theDict;
          if (CFArrayContainsValue(v30, v202, v29))
          {
            v31 = 0;
          }

          else
          {
            v31 = *(*(a1 + 16) + 24) || *(a1 + 433);
          }

          v203.length = CFArrayGetCount(MutableCopy);
          v203.location = 0;
          CFArrayContainsValue(MutableCopy, v203, v29);
          *(*(a1 + 16) + 24);
          *(a1 + 433);
          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v32, v33, v34, v35, v36, v29);
          v189 = v31;
          *(a1 + 32) = !v31;
          v37 = a2;
          v183 = a6;
          if (a2)
          {
            Count = CFArrayGetCount(a2);
            if (Count >= 1)
            {
              v178 = !v31;
              v185 = 0;
              MutableCopy = 0;
              v38 = 0;
              v39 = *MEMORY[0x29EDB8EF8];
              v187 = v19;
              v188 = *MEMORY[0x29EDB8F00];
              v193 = *MEMORY[0x29EDB8EF8];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v37, v38);
                v195 = CFStringCompare(ValueAtIndex, @"BasebandFirmware", 0);
                v41 = v39;
                if (ValueAtIndex)
                {
                  if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
                  {
                    v41 = v39;
                  }

                  else
                  {
                    v41 = v188;
                  }
                }

                if (CFBooleanGetValue(v41))
                {
                  v42 = CFGetAllocator(a1);
                  v43 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v42, ValueAtIndex);
                  v44 = CFDictionaryGetValue(v196, v43);
                  if (v44)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v44 = CFDictionaryGetValue(v19, ValueAtIndex);
                  v43 = 0;
                  if (v44)
                  {
LABEL_39:
                    v45 = CFDictionaryGetValue(v44, @"Info");
                    if (!v45)
                    {
                      v37 = a2;
                      goto LABEL_93;
                    }

                    v46 = v45;
                    v198 = 0;
                    SafeRelease(MutableCopy);
                    v47 = CFGetAllocator(a1);
                    MutableCopy = CFDictionaryCreateMutableCopy(v47, 0, v44);
                    if (!MutableCopy)
                    {
                      Code = 2;
                      goto LABEL_123;
                    }

                    v48 = AMAuthInstallBundleProcessRulesWithEntryDict(a1, MutableCopy);
                    if (v48)
                    {
                      Code = v48;
                      v176 = "failed to process image rules";
LABEL_136:
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", v176, v49, v50, v51, v52, v53, v177);
                      goto LABEL_123;
                    }

                    v54 = CFDictionaryGetValue(v46, @"Personalize");
                    v19 = v187;
                    if (v54 && !CFBooleanGetValue(v54))
                    {
                      if (!CFBooleanGetValue(v41))
                      {
                        v89 = CFDictionaryGetValue(v184, ValueAtIndex);
                        v90 = v189 ^ 1;
                        if (v89)
                        {
                          v90 = 1;
                        }

                        if (v90)
                        {
                          v95 = OUTLINED_FUNCTION_25();
                          v101 = "skipping %@ entry";
                        }

                        else
                        {
                          CFGetAllocator(a1);
                          OUTLINED_FUNCTION_45();
                          v94 = CFDataCreate(v91, v92, v93);
                          CFDictionaryAddValue(MutableCopy, @"Digest", v94);
                          CFDictionarySetValue(Mutable, ValueAtIndex, MutableCopy);
                          CFRelease(v94);
                          v95 = OUTLINED_FUNCTION_25();
                          v101 = "personalizing %@";
                        }

                        AMAuthInstallLog(v95, "_AMAuthInstallBundleCreateServerRequestDictionary", v101, v96, v97, v98, v99, v100, v177);
                        v37 = a2;
                        goto LABEL_94;
                      }

                      v55 = CFDictionaryGetValue(theDicta, v43);
                      v61 = v189 ^ 1;
                      if (v55)
                      {
                        v61 = 1;
                      }

                      v62 = "skipping %@ entry";
                      if ((v61 & 1) == 0)
                      {
                        CFGetAllocator(a1);
                        OUTLINED_FUNCTION_45();
                        v66 = CFDataCreate(v63, v64, v65);
                        CFDictionaryAddValue(MutableCopy, @"Digest", v66);
                        v67 = OUTLINED_FUNCTION_36();
                        CFDictionarySetValue(v67, v68, MutableCopy);
                        CFRelease(v66);
                        v62 = "personalizing %@";
                      }

                      AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", v62, v56, v57, v58, v59, v60, v43);
                    }

                    if (v195)
                    {
                      if (CFDictionaryContainsKey(MutableCopy, @"PartialDigest"))
                      {
                        v74 = CFDictionaryGetValue(v46, @"Path");
                        v198 = v74;
                        SafeRetain(v74);
                        if (!v74)
                        {
                          goto LABEL_61;
                        }

                        goto LABEL_53;
                      }

                      if (v189)
                      {
                        v74 = 0;
LABEL_61:
                        v37 = a2;
LABEL_82:
                        SafeRelease(v74);
                        if (CFDictionaryGetValue(MutableCopy, @"Digest"))
                        {
                          AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "personalizing %@ Digest = %@", v105, v106, v107, v108, v109, ValueAtIndex);
                        }

                        v19 = v187;
                        if (v195 == kCFCompareEqualTo)
                        {
                          v110 = CFBooleanGetValue(v41);
                          Code = 1;
                          if (!a5 || v110 == 1)
                          {
                            goto LABEL_123;
                          }

                          v111 = AMAuthInstallBundleCopyFullPathForBuildIdentityKey(a1, a5, @"BasebandFirmware", v44, &v200);
                          if (v111)
                          {
                            Code = v111;
                            v176 = "failed to find baseband firmware path";
                            goto LABEL_136;
                          }

                          v19 = v187;
                          v185 = v200;
                          if (!v200)
                          {
                            Code = 14;
                            v176 = "failed to create bbfwURL";
                            goto LABEL_136;
                          }
                        }

                        if (CFBooleanGetValue(v41))
                        {
                          v112 = OUTLINED_FUNCTION_36();
                        }

                        else
                        {
                          v112 = Mutable;
                          v113 = ValueAtIndex;
                        }

                        CFDictionarySetValue(v112, v113, MutableCopy);
LABEL_93:
                        SafeRelease(v43);
                        goto LABEL_94;
                      }

                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "not personalizing %@", v69, v70, v71, v72, v73, ValueAtIndex);
                      v37 = a2;
LABEL_81:
                      v19 = v187;
                      goto LABEL_94;
                    }

                    v102 = AMAuthInstallBundleCopyNextBasebandComponentName(a1, &v198);
                    if (v102)
                    {
                      Code = v102;
LABEL_123:
                      v13 = v192;
                      goto LABEL_127;
                    }

                    v74 = v198;
                    if (!v198)
                    {
                      goto LABEL_61;
                    }

LABEL_53:
                    v37 = a2;
                    if (CFBooleanGetValue(v41))
                    {
                      if (!CFDictionaryContainsKey(theDicta, v43))
                      {
                        v80.length = CFArrayGetCount(v179);
                        v81 = v179;
LABEL_76:
                        v80.location = 0;
                        v103 = CFArrayContainsValue(v81, v80, v74);
                        v104 = v178;
                        if (v195 == kCFCompareEqualTo)
                        {
                          v104 = 1;
                        }

                        if (!v103 || (v104 & 1) == 0)
                        {
                          goto LABEL_82;
                        }

LABEL_80:
                        AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ has been previously personalized; skipping it", v75, v76, v77, v78, v79, ValueAtIndex);
                        SafeRelease(v74);
                        goto LABEL_81;
                      }
                    }

                    else if (!CFDictionaryContainsKey(v184, ValueAtIndex))
                    {
                      v80.length = CFArrayGetCount(theArray);
                      v81 = theArray;
                      goto LABEL_76;
                    }

                    v88 = v178;
                    if (v195 == kCFCompareEqualTo)
                    {
                      v88 = 1;
                    }

                    if (v88 != 1)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }
                }

                v82 = OUTLINED_FUNCTION_25();
                AMAuthInstallLog(v82, "_AMAuthInstallBundleCreateServerRequestDictionary", "entry %@ not part of manifest, skipping", v83, v84, v85, v86, v87, v177);
LABEL_94:
                v39 = v193;
                if (Count == ++v38)
                {
                  goto LABEL_99;
                }
              }
            }
          }

          v185 = 0;
          MutableCopy = 0;
LABEL_99:
          v13 = v192;
          if (v192 && CFDictionaryGetCount(v192))
          {
            _AMAuthInstallBundlePopulateManifestProperties(a1, v183, v192, v114, v115, v116, v117, v118);
            v123 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(a1, v192, v189, 1, v119, v120, v121, v122);
            if (v123)
            {
              goto LABEL_134;
            }

            v124 = *(a1 + 440);
            v125 = OUTLINED_FUNCTION_16_0();
            if (!v126(v125))
            {
              goto LABEL_126;
            }

            v132 = CFGetAllocator(a1);
            Code = 2;
            DeepCopy = CFPropertyListCreateDeepCopy(v132, v192, 2uLL);
            *v181 = DeepCopy;
            if (!DeepCopy)
            {
              goto LABEL_127;
            }
          }

          v134 = CFDictionaryGetCount(Mutable);
          _AMAuthInstallBundlePopulateManifestProperties(a1, v186, Mutable, v135, v136, v137, v138, v139);
          v140 = OUTLINED_FUNCTION_16_0();
          v123 = AMAuthInstallApServerRequestAddRequiredTags(v140, v141, v189, v142, v143, v144, v145, v146);
          if (!v123)
          {
            v123 = AMAuthInstallBasebandSupportsServerSigning(a1, v201);
            if (!v123)
            {
              if (v201[0])
              {
                if (AMAuthInstallBasebandPersonalizationEnabled(a1))
                {
                  if (v185)
                  {
                    v147 = OUTLINED_FUNCTION_16_0();
                    v154 = AMAuthInstallBasebandServerRequestAddRequiredTags(v147, v148, v185, v149, v150, v151, v152, v153);
                    if (v154)
                    {
                      Code = v154;
                      AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "%s: missing required baseband parameters", v155, v156, v157, v158, v159, "_AMAuthInstallBundleCreateServerRequestDictionary");
                      goto LABEL_127;
                    }
                  }
                }
              }

              if ((v160 = *(a1 + 48)) == 0 || !*(v160 + 160) || (LOBYTE(v198) = 1, AMAuthInstallVinylIsLegacyChipId(a1, &v198)) || v198 || !CFDictionaryGetValue(Mutable, @"eUICC,Gold") && !CFDictionaryGetValue(Mutable, @"eUICC,Main") || (v161 = OUTLINED_FUNCTION_16_0(), v123 = AMAuthInstallVinylServerRequestAddRequiredTags(v161, v162, 0), !v123))
              {
                v163 = CFDictionaryGetCount(Mutable);
                v164 = *(a1 + 440);
                v165 = OUTLINED_FUNCTION_16_0();
                if (v166(v165))
                {
                  v167 = CFDictionaryGetCount(Mutable);
                  if (v134 || v167 != v163)
                  {
                    v173 = CFGetAllocator(a1);
                    v174 = CFPropertyListCreateDeepCopy(v173, Mutable, 2uLL);
                    *v180 = v174;
                    Code = 2 * (v174 == 0);
                  }

                  else
                  {
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionary", "nothing to be done", v168, v169, v170, v171, v172, v177);
                    Code = 0;
                  }

                  goto LABEL_127;
                }

LABEL_126:
                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionary", "failed to add updater tags %@", v127, v128, v129, v130, v131, v199);
                Code = CFErrorGetCode(v199);
                goto LABEL_127;
              }
            }
          }

LABEL_134:
          Code = v123;
          goto LABEL_127;
        }

        v28 = CFGetAllocator(a1);
        v13 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v13)
        {
          if (CFDictionaryGetValue(a4, @"RecoveryOS"))
          {
            v179 = CFDictionaryGetValue(a4, @"Personalized");
            if (v179)
            {
              theDicta = CFDictionaryGetValue(a4, @"Manifest");
              if (theDicta)
              {
                v180 = a7;
                v181 = a8;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_132;
        }
      }

      else
      {
        v13 = 0;
      }

      MutableCopy = 0;
      Code = 2;
      goto LABEL_127;
    }

    Mutable = 0;
LABEL_132:
    MutableCopy = 0;
    goto LABEL_133;
  }

LABEL_127:
  SafeRelease(v200);
  SafeRelease(Mutable);
  SafeRelease(v13);
  SafeRelease(MutableCopy);
  SafeRelease(v199);
  return Code;
}

uint64_t AMAuthInstallBundlePersonalizePartialRecoveryOS(uint64_t a1, const void **a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v335 = 0;
  v336 = 0;
  v333 = 0;
  v334 = 0;
  if (!*(a1 + 16))
  {
    AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "bundle personalization requires AP parameters (even with AP personalization disabled)", a4, a5, a6, a7, a8, v305);
    MutableCopy = 0;
    OUTLINED_FUNCTION_6_5();
    v13 = 0;
    v16 = 0;
    Code = 1;
    goto LABEL_201;
  }

  MutableCopy = 0;
  Code = 1;
  if (!a2)
  {
    v16 = OUTLINED_FUNCTION_15_1();
    goto LABEL_201;
  }

  v16 = OUTLINED_FUNCTION_15_1();
  if (v17)
  {
    v20 = v19;
    v312 = v18;
    DeepCopy = a1;
    v21 = v17;
    _AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(a1);
    v9 = a2;
    _AMAuthInstallBundleCreateDebugDirectory(a1, a2);
    v22 = CFGetAllocator(a1);
    v13 = CFURLCreateCopyAppendingPathComponent(v22, a2, @"RecoveryOS", 1u);
    url = v21;
    v23 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v21, a4, &v336);
    if (v23)
    {
      Code = v23;
      MutableCopy = 0;
      OUTLINED_FUNCTION_6_5();
      v16 = 0;
      goto LABEL_201;
    }

    if (!v336)
    {
      MutableCopy = 0;
      OUTLINED_FUNCTION_6_5();
      v16 = 0;
      Code = 14;
      goto LABEL_201;
    }

    v9 = a1;
    v24 = CFGetAllocator(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v24, 0, v336);
    SafeRelease(v336);
    v336 = 0;
    if (MutableCopy)
    {
      _AMAuthInstallBundleCreateDebugDirectory(a1, v13);
      v25 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v25, 0, MEMORY[0x29EDB9000]);
      if (Mutable)
      {
        v27 = Mutable;
        v28 = CFGetAllocator(a1);
        if (v20)
        {
          OUTLINED_FUNCTION_29();
          v32 = CFArrayCreateMutableCopy(v29, v30, v31);
        }

        else
        {
          v32 = CFArrayCreateMutable(v28, 0, MEMORY[0x29EDB9000]);
        }

        DeepCopy = v32;
        if (v32)
        {
          CFArrayAppendValue(v27, @"RecoveryOSOS");
          CFArrayAppendValue(v27, @"RecoveryOSKernelCache");
          CFArrayAppendValue(v27, @"RecoveryOSDeviceTree");
          CFArrayAppendValue(v27, @"RecoveryOSiBEC");
          CFArrayAppendValue(v27, @"RecoveryOSAppleLogo");
          CFArrayAppendValue(v27, @"RecoveryOSStaticTrustCache");
          v315 = DeepCopy;
          v33 = _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v27, DeepCopy);
          if (v33)
          {
            Code = v33;
          }

          else
          {
            IfNecessary = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a2, &v334);
            if (IfNecessary)
            {
              Code = IfNecessary;
              LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, IfNecessary);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to generate a receipt: %@", v288, v289, v290, v291, v292, LocalizedStatusString);
            }

            else
            {
              v35 = AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, v13, &v333);
              if (!v35)
              {
                CFDictionarySetValue(v334, @"RecoveryOS", v333);
                v339 = 0;
                v340[0] = 0;
                v338 = 0;
                v36 = CFGetAllocator(a1);
                v317 = MutableCopy;
                v323 = v27;
                v329 = CFDictionaryCreateMutableCopy(v36, 0, **(a1 + 128));
                v313 = v13;
                if (!v329)
                {
                  goto LABEL_213;
                }

                v37 = a1;
                v38 = CFDictionaryGetValue(MutableCopy, @"Manifest");
                if (!v38)
                {
                  OUTLINED_FUNCTION_8_3();
                  v12 = 0;
                  v146 = 0;
                  v11 = 0;
                  Code = 8;
                  goto LABEL_90;
                }

                CFGetAllocator(a1);
                OUTLINED_FUNCTION_29();
                v42 = CFDictionaryCreateMutableCopy(v39, v40, v41);
                if (!v42)
                {
LABEL_213:
                  OUTLINED_FUNCTION_8_3();
                  v12 = 0;
                  v146 = 0;
                  v11 = 0;
                  v38 = 0;
                  Code = 2;
                  goto LABEL_90;
                }

                theDict = v42;
                if (CFArrayGetCount(v27) < 1)
                {
LABEL_89:
                  MutableCopy = v317;
                  v146 = theDict;
                  CFDictionarySetValue(v317, @"Manifest", theDict);
                  OUTLINED_FUNCTION_8_3();
                  OUTLINED_FUNCTION_4_5();
                  Code = 0;
                  v13 = v313;
                  goto LABEL_90;
                }

                v43 = 0;
                ValueForKeyPathInDict = 0;
                v327 = *MEMORY[0x29EDB8EF8];
                v325 = *MEMORY[0x29EDB8F00];
                v321 = v38;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v27, v43);
                  if (!ValueAtIndex)
                  {
                    OUTLINED_FUNCTION_8_3();
                    OUTLINED_FUNCTION_4_5();
                    Code = 1;
                    goto LABEL_244;
                  }

                  v46 = ValueAtIndex;
                  v47 = CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1 ? v327 : v325;
                  if (!CFBooleanGetValue(v47))
                  {
                    break;
                  }

                  v48 = CFGetAllocator(v37);
                  v11 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v48, v46);
                  v49 = CFGetAllocator(v37);
                  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v49, v38, v11, v50, v51, v52, v53, v54);
                  if (ValueForKeyPathInDict)
                  {
                    goto LABEL_28;
                  }

LABEL_85:
                  if (++v43 >= CFArrayGetCount(v27))
                  {
                    goto LABEL_89;
                  }
                }

                v11 = 0;
                if (!ValueForKeyPathInDict)
                {
                  goto LABEL_85;
                }

LABEL_28:
                v12 = CFStringCompare(v46, @"BasebandFirmware", 0);
                v55 = CFGetAllocator(v37);
                v339 = CFDictionaryCreateMutableCopy(v55, 0, ValueForKeyPathInDict);
                if (!v339)
                {
                  OUTLINED_FUNCTION_8_3();
                  goto LABEL_208;
                }

                v56 = OUTLINED_FUNCTION_18_0();
                v59 = _AMAuthInstallBundleSetObjectPropertyOverrides(v56, v57, v58);
                if (v59)
                {
                  Code = v59;
                  AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to set %@ property overrides", v60, v61, v62, v63, v64, v46);
                  OUTLINED_FUNCTION_8_3();
                  goto LABEL_210;
                }

                v65 = CFGetAllocator(v37);
                v331 = ValueForKeyPathInDict;
                ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v65, ValueForKeyPathInDict, @"%@.%@", v66, v67, v68, v69, v70, @"Info");
                v72 = OUTLINED_FUNCTION_36();
                v38 = CFDictionaryGetValue(v72, v73);
                if (!v38)
                {
                  goto LABEL_41;
                }

                DeepCopy = CFDictionaryGetValue(v339, @"Info");
                if (!DeepCopy)
                {
                  v27 = 0;
                  OUTLINED_FUNCTION_4_5();
                  Code = 7;
                  goto LABEL_244;
                }

                CFGetAllocator(v37);
                OUTLINED_FUNCTION_44();
                v27 = CFDictionaryCreateMutableCopy(v74, v75, v76);
                if (v27)
                {
                  PathComponent = CFURLCopyLastPathComponent(v38);
                  DeepCopy = PathComponent;
                  if (!PathComponent)
                  {
                    OUTLINED_FUNCTION_4_5();
                    Code = 3;
                    goto LABEL_244;
                  }

                  if (ValueForKeyWithFormat)
                  {
                    v78 = CFGetAllocator(v37);
                    Component = AMAuthInstallSupportCopyStringReplacingLastComponent(v78, ValueForKeyWithFormat, @"/", DeepCopy, v340);
                    if (Component)
                    {
                      Code = Component;
LABEL_210:
                      v12 = 0;
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v340[0] = CFRetain(PathComponent);
                  }

                  SafeRelease(DeepCopy);
                  CFDictionarySetValue(v27, @"Path", v340[0]);
                  SafeRelease(v340[0]);
                  CFDictionarySetValue(v339, @"Info", v27);
                  SafeRelease(v27);
                  v37 = a1;
                  if (v12)
                  {
                    v80 = CFGetAllocator(a1);
                    v81 = CFDataCreateMutable(v80, 0);
                    CFDictionarySetValue(v339, @"Digest", v81);
                    CFRelease(v81);
                  }

                  v340[0] = 0;
                  v82 = OUTLINED_FUNCTION_36();
                  CFDictionaryRemoveValue(v82, v83);
                  v27 = v323;
LABEL_41:
                  v84 = *(v37 + 128);
                  if (v84 && *(v84 + 8))
                  {
                    if (CFBooleanGetValue(v47))
                    {
                      DeepCopy = CFDictionaryGetValue(*(*(v37 + 128) + 8), @"RecoveryOSOS");
                      if (DeepCopy)
                      {
                        v85 = CFGetAllocator(v37);
                        v91 = AMAuthInstallSupportGetValueForKeyWithFormat(v85, DeepCopy, @"%@.%@.%@", v86, v87, v88, v89, v90, @"Manifest");
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      v92 = CFGetAllocator(v37);
                      v91 = AMAuthInstallSupportGetValueForKeyWithFormat(v92, *(*(v37 + 128) + 8), @"%@.%@.%@", v93, v94, v95, v96, v97, @"Manifest");
LABEL_48:
                      DeepCopy = v91;
                    }
                  }

                  else
                  {
                    DeepCopy = 0;
                  }

                  if (CFBooleanGetValue(v47))
                  {
                    v98 = @"RecoveryOSOS";
                  }

                  else
                  {
                    v98 = @"OS";
                  }

                  v99 = CFStringCompare(v98, v46, 0);
                  if (DeepCopy)
                  {
                    v107 = 0;
                    if (v38)
                    {
                      goto LABEL_63;
                    }

LABEL_62:
                    if (v107)
                    {
                      goto LABEL_63;
                    }

LABEL_82:
                    AMAuthInstallLog(6, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "Inserting %@ to Manifest to personalize later", v102, v103, v104, v105, v106, v46);
                    if (CFBooleanGetValue(v47))
                    {
                      CFDictionarySetValue(theDict, v11, v339);
                    }

                    SafeRelease(v339);
                    v339 = 0;
                    SafeRelease(v11);
                    v38 = v321;
                    ValueForKeyPathInDict = v331;
                    goto LABEL_85;
                  }

                  if (*(v37 + 434))
                  {
                    v108 = 1;
                  }

                  else
                  {
                    v108 = (v38 | v99) == 0;
                  }

                  v107 = !v108;
                  if (!v38)
                  {
                    goto LABEL_62;
                  }

LABEL_63:
                  if (v38)
                  {
                    IsImg4 = AMAuthInstallApIsImg4(v37, v100, v101, v102, v103, v104, v105, v106);
                    if (v12 && !IsImg4)
                    {
                      v337 = 0;
                      if (!_AMAuthInstallBundleImageHasBuildString(v46))
                      {
                        goto LABEL_69;
                      }

                      v110 = CFGetAllocator(v37);
                      v111 = AMAuthInstallApImg3CopyBuildString(v110, v38, &v338);
                      if (v111)
                      {
                        Code = v111;
                        AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to copy image build string %@", v112, v113, v114, v115, v116, v46);
                      }

                      else
                      {
                        CFDictionarySetValue(v339, @"BuildString", v338);
                        SafeRelease(v338);
                        v338 = 0;
                        v37 = a1;
LABEL_69:
                        v117 = CFGetAllocator(v37);
                        IsFinalized = AMAuthInstallApImg3IsFinalized(v117, v38, &v337);
                        if (!IsFinalized)
                        {
                          if (v337)
                          {
                            v37 = a1;
                            goto LABEL_80;
                          }

                          v126 = CFURLCopyLastPathComponent(v38);
                          DeepCopy = a1;
                          if (v126)
                          {
                            v127 = v126;
                            v128 = CFGetAllocator(a1);
                            value = v127;
                            v129 = CFURLCreateCopyAppendingPathComponent(v128, a2, v127, 0);
                            if (v129)
                            {
                              v130 = v129;
                              CFGetAllocator(a1);
                              OUTLINED_FUNCTION_42();
                              v134 = AMAuthInstallApImg3Finalize(v131, v132, v133);
                              if (v134)
                              {
                                Code = v134;
                                v11 = v130;
                                AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to finalize image3 override", v135, v136, v137, v138, v139, v305);
                                v12 = 0;
                              }

                              else
                              {
                                v12 = CFRetain(v130);
                                v140 = CFDictionaryGetValue(v339, @"Info");
                                if (v140)
                                {
                                  DeepCopy = v127;
                                  CFDictionarySetValue(v140, @"Path", v127);
                                  v37 = a1;
                                  CFDictionarySetValue(**(a1 + 128), v46, v12);
                                  SafeRelease(value);
                                  SafeRelease(v130);
                                  if (!v12)
                                  {
                                    goto LABEL_80;
                                  }

LABEL_87:
                                  v141 = OUTLINED_FUNCTION_18_0();
                                  v145 = _AMAuthInstallBundleApplyMeasurements(v141, v142, v12, v143, v144);
                                  if (v145)
                                  {
                                    Code = v145;
                                    OUTLINED_FUNCTION_8_3();
LABEL_211:
                                    v11 = 0;
                                    v38 = 0;
                                    goto LABEL_244;
                                  }

                                  CFRelease(v12);
                                  v37 = a1;
                                  goto LABEL_82;
                                }

                                v11 = v130;
                                Code = 8;
                              }
                            }

                            else
                            {
                              v12 = 0;
                              v11 = 0;
                              Code = 2;
                            }

                            v38 = value;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_4_5();
                            Code = 2;
                          }

LABEL_243:
                          OUTLINED_FUNCTION_8_3();
                          goto LABEL_244;
                        }

                        Code = IsFinalized;
                        AMAuthInstallLog(3, "_AMAuthInstallBundleCopyOverrideBuildIdentityRecoveryOS", "failed to check %@ alignment", v119, v120, v121, v122, v123, v46);
                      }

                      OUTLINED_FUNCTION_4_5();
                      goto LABEL_243;
                    }

LABEL_80:
                    v125 = CFRetain(v38);
                  }

                  else
                  {
                    if (!ValueForKeyWithFormat || !CFBooleanGetValue(v47))
                    {
                      goto LABEL_82;
                    }

                    v124 = CFGetAllocator(v37);
                    v125 = CFURLCreateCopyAppendingPathComponent(v124, url, ValueForKeyWithFormat, 0);
                  }

                  v12 = v125;
                  if (!v125)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_87;
                }

                DeepCopy = 0;
LABEL_208:
                OUTLINED_FUNCTION_4_5();
                Code = 2;
LABEL_244:
                v13 = v313;
                MutableCopy = v317;
                v146 = theDict;
LABEL_90:
                SafeRelease(v329);
                SafeRelease(DeepCopy);
                SafeRelease(v340[0]);
                SafeRelease(v339);
                SafeRelease(v27);
                SafeRelease(v12);
                SafeRelease(v11);
                SafeRelease(v38);
                SafeRelease(v338);
                SafeRelease(v146);
                if (Code)
                {
                  AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to create build identity with overrides", v147, v148, v149, v150, v151, v305);
                  v10 = MutableCopy;
                  OUTLINED_FUNCTION_9_3();
                  v9 = 0;
                  goto LABEL_199;
                }

                DeepCopy = v334;
                v340[0] = 0;
                if (!v334)
                {
                  MutableCopy = 0;
                  v159 = 0;
                  v160 = 0;
                  Code = 1;
                  v152 = v323;
                  goto LABEL_184;
                }

                v152 = v323;
                v330 = CFDictionaryGetValue(MutableCopy, @"Manifest");
                if (!v330)
                {
                  OUTLINED_FUNCTION_9_3();
                  v159 = 0;
                  v160 = 0;
                  Code = 7;
                  goto LABEL_184;
                }

                v153 = CFDictionaryGetValue(DeepCopy, @"Personalized");
                if (v153 && (v154 = v153, (v155 = CFDictionaryGetValue(DeepCopy, @"Manifest")) != 0))
                {
                  v156 = v155;
                  v157 = a1;
                  v158 = CFGetAllocator(a1);
                  v159 = CFDictionaryCreateMutable(v158, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (!v159)
                  {
                    OUTLINED_FUNCTION_9_3();
                    v160 = 0;
                    Code = 2;
                    goto LABEL_184;
                  }

                  if (CFDictionaryGetValue(DeepCopy, @"RecoveryOS"))
                  {
                    v160 = CFDictionaryGetValue(DeepCopy, @"Personalized");
                    if (!v160)
                    {
                      OUTLINED_FUNCTION_9_3();
                      goto LABEL_218;
                    }

                    key = CFDictionaryGetValue(DeepCopy, @"Manifest");
                    if (key)
                    {
                      v311 = DeepCopy;
                      if (AMAuthInstallApIsImg4(a1, v161, v162, v163, v164, v165, v166, v167))
                      {
                        v168 = @"amai/apimg4ticket.der";
                      }

                      else
                      {
                        v168 = @"amai/apticket.der";
                      }

                      CFArrayGetCount(v154);
                      v169 = OUTLINED_FUNCTION_23();
                      MutableCopy = "False";
                      v326 = v159;
                      if (CFArrayContainsValue(v169, v341, v168))
                      {
                        v170 = 0;
                      }

                      else
                      {
                        v170 = *(*(a1 + 16) + 24) || *(a1 + 433);
                      }

                      CFArrayGetCount(v154);
                      v171 = OUTLINED_FUNCTION_23();
                      CFArrayContainsValue(v171, v342, v168);
                      *(*(a1 + 16) + 24);
                      *(a1 + 433);
                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "ticketPath %@ , withApTicket is %s,  (!%s &&(%s || %s))", v172, v173, v174, v175, v176, v168);
                      v322 = v170;
                      DeepCopy = !v170;
                      *(a1 + 32) = !v170;
                      Count = CFArrayGetCount(v323);
                      if (Count >= 1)
                      {
                        v309 = !v170;
                        v307 = v156;
                        theArray = v160;
                        v306 = v154;
                        v160 = 0;
                        v177 = 0;
                        MutableCopy = 0;
                        v178 = *MEMORY[0x29EDB8EF8];
                        v328 = *MEMORY[0x29EDB8F00];
                        while (1)
                        {
                          DeepCopy = CFArrayGetValueAtIndex(v152, MutableCopy);
                          v179 = CFStringCompare(DeepCopy, @"BasebandFirmware", 0);
                          v180 = v178;
                          if (DeepCopy)
                          {
                            if (CFStringFind(DeepCopy, @"RecoveryOS", 0).location == -1)
                            {
                              v180 = v178;
                            }

                            else
                            {
                              v180 = v328;
                            }
                          }

                          if (CFBooleanGetValue(v180))
                          {
                            v186 = CFGetAllocator(v157);
                            v187 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v186, DeepCopy);
                            v177 = CFDictionaryGetValue(v330, v187);
                            if (v177)
                            {
                              goto LABEL_116;
                            }
                          }

                          else
                          {
                            v187 = 0;
                            if (v177)
                            {
LABEL_116:
                              v188 = CFDictionaryGetValue(v177, @"Info");
                              if (!v188)
                              {
                                v152 = v323;
                                goto LABEL_160;
                              }

                              v189 = v188;
                              v339 = 0;
                              SafeRelease(v160);
                              v190 = CFGetAllocator(v157);
                              v160 = CFDictionaryCreateMutableCopy(v190, 0, v177);
                              if (!v160)
                              {
                                Code = 2;
LABEL_164:
                                v152 = v323;
                                goto LABEL_165;
                              }

                              v191 = AMAuthInstallBundleProcessRulesWithEntryDict(v157, v160);
                              if (v191)
                              {
                                Code = v191;
                                AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "failed to process image rules", v192, v193, v194, v195, v196, v305);
                                goto LABEL_164;
                              }

                              v197 = CFDictionaryGetValue(v189, @"Personalize");
                              v157 = a1;
                              if (v197 && !CFBooleanGetValue(v197))
                              {
                                if (CFBooleanGetValue(v180))
                                {
                                  v203 = CFDictionaryGetValue(key, v187);
                                  v209 = v322 ^ 1;
                                  if (v203)
                                  {
                                    v209 = 1;
                                  }

                                  v210 = "skipping %@ entry";
                                  if ((v209 & 1) == 0)
                                  {
                                    CFGetAllocator(a1);
                                    OUTLINED_FUNCTION_45();
                                    v214 = CFDataCreate(v211, v212, v213);
                                    CFDictionaryAddValue(v160, @"Digest", v214);
                                    OUTLINED_FUNCTION_42();
                                    CFDictionarySetValue(v215, v216, v217);
                                    v218 = v214;
                                    v157 = a1;
                                    CFRelease(v218);
                                    v210 = "personalizing %@";
                                  }

                                  AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", v210, v204, v205, v206, v207, v208, v187);
                                  goto LABEL_127;
                                }

                                AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "skipping %@ entry", v198, v199, v200, v201, v202, DeepCopy);
LABEL_154:
                                v152 = v323;
                                goto LABEL_161;
                              }

LABEL_127:
                              if (v179)
                              {
                                if (!CFDictionaryContainsKey(v160, @"PartialDigest"))
                                {
                                  if (v322)
                                  {
                                    v224 = 0;
LABEL_155:
                                    SafeRelease(v224);
                                    if (CFDictionaryGetValue(v160, @"Digest"))
                                    {
                                      AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "personalizing %@ Digest = %@", v236, v237, v238, v239, v240, DeepCopy);
                                    }

                                    v152 = v323;
                                    if (v179 == kCFCompareEqualTo)
                                    {
                                      Code = 1;
LABEL_165:
                                      OUTLINED_FUNCTION_9_3();
                                      v13 = v313;
                                      v159 = v326;
LABEL_184:
                                      SafeRelease(v159);
                                      SafeRelease(v160);
                                      SafeRelease(v340[0]);
                                      if (Code)
                                      {
                                        goto LABEL_247;
                                      }

                                      if (MutableCopy)
                                      {
                                        if (!DeepCopy || (PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse(a1, DeepCopy, &v335), !PersonalizedResponse))
                                        {
                                          v274 = CFDictionaryGetValue(v334, @"Updaters");
                                          if (!v274)
                                          {
                                            v9 = 0;
                                            goto LABEL_196;
                                          }

                                          v275 = v274;
                                          v276 = CFDictionaryGetCount(v274);
                                          v9 = malloc(8 * v276);
                                          if (v9)
                                          {
                                            CFDictionaryGetKeysAndValues(v275, v9, 0);
                                            if (v276 >= 1)
                                            {
                                              v277 = v9;
                                              do
                                              {
                                                v278 = *v277++;
                                                v279 = CFDictionaryGetValue(v275, v278);
                                                CFDictionaryRemoveValue(v279, @"RequestTags");
                                                --v276;
                                              }

                                              while (v276);
                                            }

                                            v280 = AMAuthInstallBundleWriteReceipt(a1, a2, v334, *MEMORY[0x29EDB8EF8]);
                                            if (v280)
                                            {
                                              Code = v280;
                                              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "AMAuthInstallBundleWriteReceipt returned %d", v281, v282, v283, v284, v285, v280);
                                            }

                                            else
                                            {
                                              v152 = v323;
LABEL_196:
                                              Code = _AMAuthInstallBundlePopulatePersonalizedBundle(a1, url, v13, a4, v317, v335, v334, v152, v312, v315, *MEMORY[0x29EDB8F00]);
                                              if (Code)
                                              {
                                                v299 = AMAuthInstallGetLocalizedStatusString(a1, Code);
                                                AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to personalize recovery OS bundle", v300, v301, v302, v303, v304, v299);
                                              }
                                            }
                                          }

                                          else
                                          {
                                            Code = 2;
                                          }

                                          v10 = v317;
LABEL_199:
                                          v16 = v323;
LABEL_200:
                                          v11 = v315;
                                          goto LABEL_201;
                                        }

                                        Code = PersonalizedResponse;
                                        AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to create ap ticket for recovery OS", v269, v270, v271, v272, v273, v305);
LABEL_247:
                                        v9 = 0;
                                      }

                                      else
                                      {
                                        v9 = 0;
                                        Code = 0;
                                      }

                                      v16 = v152;
                                      v10 = v317;
                                      goto LABEL_200;
                                    }

                                    if (CFBooleanGetValue(v180))
                                    {
                                      OUTLINED_FUNCTION_42();
                                      CFDictionarySetValue(v241, v242, v243);
                                    }

LABEL_160:
                                    SafeRelease(v187);
                                    goto LABEL_161;
                                  }

                                  AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "not personalizing %@", v219, v220, v221, v222, v223, DeepCopy);
                                  goto LABEL_154;
                                }

                                v224 = CFDictionaryGetValue(v189, @"Path");
                                v339 = v224;
                                SafeRetain(v224);
                                if (!v224)
                                {
                                  goto LABEL_155;
                                }
                              }

                              else
                              {
                                BasebandComponentName = AMAuthInstallBundleCopyNextBasebandComponentName(v157, &v339);
                                if (BasebandComponentName)
                                {
                                  Code = BasebandComponentName;
                                  goto LABEL_164;
                                }

                                v224 = v339;
                                v157 = a1;
                                if (!v339)
                                {
                                  goto LABEL_155;
                                }
                              }

                              if (CFBooleanGetValue(v180))
                              {
                                if (!CFDictionaryContainsKey(key, v187))
                                {
                                  v230.length = CFArrayGetCount(theArray);
                                  v231 = theArray;
LABEL_149:
                                  v230.location = 0;
                                  v234 = CFArrayContainsValue(v231, v230, v224);
                                  v235 = v309;
                                  if (v179 == kCFCompareEqualTo)
                                  {
                                    v235 = 1;
                                  }

                                  if (!v234 || (v235 & 1) == 0)
                                  {
                                    goto LABEL_155;
                                  }

LABEL_153:
                                  AMAuthInstallLog(7, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "entry %@ has been previously personalized; skipping it", v225, v226, v227, v228, v229, DeepCopy);
                                  SafeRelease(v224);
                                  goto LABEL_154;
                                }
                              }

                              else if (!CFDictionaryContainsKey(v307, DeepCopy))
                              {
                                v230.length = CFArrayGetCount(v306);
                                v231 = v306;
                                goto LABEL_149;
                              }

                              v232 = v309;
                              if (v179 == kCFCompareEqualTo)
                              {
                                v232 = 1;
                              }

                              if (v232 != 1)
                              {
                                goto LABEL_155;
                              }

                              goto LABEL_153;
                            }
                          }

                          AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "entry %@ not part of manifest, skipping", v181, v182, v183, v184, v185, DeepCopy);
LABEL_161:
                          MutableCopy = (MutableCopy + 1);
                          if (Count == MutableCopy)
                          {
                            goto LABEL_167;
                          }
                        }
                      }

                      v160 = 0;
LABEL_167:
                      v159 = v326;
                      if (CFDictionaryGetCount(v326))
                      {
                        _AMAuthInstallBundlePopulateManifestProperties(v157, v317, v326, v244, v245, v246, v247, v248);
                        v253 = AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(v157, v326, v322, 1, v249, v250, v251, v252);
                        v13 = v313;
                        if (v253)
                        {
                          Code = v253;
                        }

                        else
                        {
                          DeepCopy = v157;
                          if ((v157[55])(v157, v326, v311, v340))
                          {
                            v259 = CFGetAllocator(v157);
                            Code = 2;
                            DeepCopy = CFPropertyListCreateDeepCopy(v259, v326, 2uLL);
                            if (!DeepCopy)
                            {
                              MutableCopy = 0;
                              goto LABEL_184;
                            }

                            goto LABEL_173;
                          }

                          AMAuthInstallLog(3, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "failed to add updater tags %@", v254, v255, v256, v257, v258, v340[0]);
                          Code = CFErrorGetCode(v340[0]);
                        }

                        OUTLINED_FUNCTION_9_3();
                        goto LABEL_184;
                      }

                      DeepCopy = 0;
                      v13 = v313;
LABEL_173:
                      if (CFDictionaryGetCount(v326))
                      {
                        v265 = AMAuthInstallApServerRequestAddRequiredTags(a1, v326, v322, v260, v261, v262, v263, v264);
                        if (v265)
                        {
                          Code = v265;
                          MutableCopy = 0;
                        }

                        else
                        {
                          v266 = CFGetAllocator(a1);
                          v267 = CFPropertyListCreateDeepCopy(v266, v326, 2uLL);
                          if (v267)
                          {
                            MutableCopy = v267;
                          }

                          else
                          {
                            MutableCopy = 0;
                          }

                          if (v267)
                          {
                            Code = 0;
                          }

                          else
                          {
                            Code = 2;
                          }
                        }
                      }

                      else
                      {
                        AMAuthInstallLog(6, "_AMAuthInstallBundleCreateServerRequestDictionaryForRecoveryOS", "nothing to be done", v260, v261, v262, v263, v264, v305);
                        MutableCopy = 0;
                        Code = 0;
                      }

                      goto LABEL_184;
                    }
                  }

                  OUTLINED_FUNCTION_9_3();
                }

                else
                {
                  OUTLINED_FUNCTION_9_3();
                  v159 = 0;
                }

                v160 = 0;
LABEL_218:
                Code = 8;
                goto LABEL_184;
              }

              Code = v35;
              v293 = AMAuthInstallGetLocalizedStatusString(a1, v35);
              AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizePartialRecoveryOS", "failed to generate a recovery OS receipt: %@", v294, v295, v296, v297, v298, v293);
            }
          }

          v10 = MutableCopy;
          OUTLINED_FUNCTION_9_3();
          v9 = 0;
          goto LABEL_200;
        }

        v16 = v27;
        v10 = MutableCopy;
        MutableCopy = 0;
      }

      else
      {
        v10 = MutableCopy;
        OUTLINED_FUNCTION_9_3();
      }

      v11 = 0;
      v9 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v16 = 0;
    }

    Code = 2;
  }

LABEL_201:
  SafeRelease(v16);
  SafeRelease(v11);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v334);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(0);
  SafeFree(v9);
  SafeRelease(v13);
  SafeRelease(v10);
  SafeRelease(DeepCopy);
  SafeRelease(v333);
  SafeRelease(v335);
  return Code;
}

CFTypeRef AMAuthInstallBundleCreatePreManifest(void *a1, const void *a2, const __CFURL *a3, CFStringRef theString1)
{
  theDict = 0;
  v30 = 0;
  v27 = 0;
  theArray = 0;
  if (!a1 || !a1[2])
  {
    OUTLINED_FUNCTION_38();
LABEL_25:
    AMSupportCreateErrorInternal();
    MutableCopy = 0;
    goto LABEL_29;
  }

  Mutable = a3;
  if (AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, theString1, &theDict))
  {
    OUTLINED_FUNCTION_37();
    goto LABEL_25;
  }

  if (!theDict)
  {
    OUTLINED_FUNCTION_38();
    goto LABEL_25;
  }

  v9 = CFGetAllocator(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, theDict);
  if (!MutableCopy)
  {
LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v5 = AMAuthInstallApPersonalizationEnabled(a1);
  if (_AMAuthInstallGeneratePersonalizationEntries(a1, a2, theString1, 0, 0, &theArray))
  {
    OUTLINED_FUNCTION_37();
LABEL_28:
    AMSupportCreateErrorInternal();
    goto LABEL_29;
  }

  if (!theArray)
  {
    OUTLINED_FUNCTION_38();
    goto LABEL_28;
  }

  v11 = CFGetAllocator(a1);
  v12 = CFArrayCreateMutableCopy(v11, 0, theArray);
  if (!v12)
  {
LABEL_30:
    OUTLINED_FUNCTION_12_2();
    goto LABEL_21;
  }

  if (v5 && _AMRAuthInstallBundleModifyFirmwareEntries(a1, MutableCopy, v12, 0))
  {
    goto LABEL_31;
  }

  v13 = a1[16];
  if (v13)
  {
    if (*v13)
    {
      Count = CFDictionaryGetCount(*v13);
      if (!Mutable && Count >= 1)
      {
        OUTLINED_FUNCTION_38();
        goto LABEL_33;
      }
    }
  }

  if (Mutable && _AMAuthInstallBundleCopyOverrideBuildIdentity(a1, v12, a2, Mutable, MutableCopy, 0))
  {
LABEL_31:
    OUTLINED_FUNCTION_37();
LABEL_33:
    AMSupportCreateErrorInternal();
    goto LABEL_30;
  }

  v15 = CFGetAllocator(a1);
  v16 = MEMORY[0x29EDB9010];
  v17 = MEMORY[0x29EDB9020];
  Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_45();
  v5 = CFDictionaryCreate(v18, v19, v20, 0, v16, v17);
  CFDictionarySetValue(Mutable, @"Personalized", v5);
  CFDictionarySetValue(Mutable, @"Manifest", v5);
  if (!_AMAuthInstallBundleCreateServerRequestDictionary(a1, v12, MutableCopy, Mutable, a2, 0, &v27, 0) && v27 && AMAuthInstallApImg4LocalCreatePreManifest(a1, v27, &v30, v21, v22, v23, v24, v25))
  {
    OUTLINED_FUNCTION_37();
    AMSupportCreateErrorInternal();
  }

LABEL_21:
  SafeRelease(theDict);
  SafeRelease(MutableCopy);
  SafeRelease(theArray);
  SafeRelease(v12);
  SafeRelease(v27);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v5);
  return v30;
}

uint64_t _AMAuthInstallGeneratePersonalizationEntries(void *cf, const void *a2, const __CFString *a3, const void *a4, const __CFString *a5, __CFArray **a6)
{
  cfa = 0;
  result = 1;
  if (cf && a2 && a6)
  {
    v13 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      return 2;
    }

    v15 = Mutable;
    ShouldPersonalizeOS = _AMAuthInstallBundleShouldPersonalizeOS(cf, a2, a3);
    if (a4)
    {
      v17 = _AMAuthInstallBundleShouldPersonalizeOS(cf, a4, a5);
    }

    else
    {
      v17 = 0;
    }

    if (cf[6])
    {
      v18 = AMAuthInstallBasebandPersonalizationEnabled(cf);
      v19 = v18 != 0;
      if (!AMAuthInstallApPersonalizationEnabled(cf))
      {
        if (v18)
        {
          AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "personalizing baseband only", v20, v21, v22, v23, v24, v33);
          v25 = @"BasebandFirmware";
LABEL_25:
          CFArrayAppendValue(v15, v25);
LABEL_27:
          result = 0;
          *a6 = v15;
          return result;
        }

LABEL_26:
        AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "nothing to personalize", v20, v21, v22, v23, v24, v33);
        goto LABEL_27;
      }
    }

    else
    {
      if (!AMAuthInstallApPersonalizationEnabled(cf))
      {
        goto LABEL_26;
      }

      v19 = 0;
    }

    CFArrayAppendValue(v15, @"RestoreLogo");
    CFArrayAppendValue(v15, @"RestoreDeviceTree");
    CFArrayAppendValue(v15, @"RestoreKernelCache");
    CFArrayAppendValue(v15, @"RestoreRamDisk");
    CFArrayAppendValue(v15, @"OSRamdisk");
    CFArrayAppendValue(v15, @"iBEC");
    CFArrayAppendValue(v15, @"iBSS");
    CFArrayAppendValue(v15, @"KernelCache");
    CFArrayAppendValue(v15, @"ftap");
    CFArrayAppendValue(v15, @"rfta");
    CFArrayAppendValue(v15, @"ftsp");
    CFArrayAppendValue(v15, @"rfts");
    CFArrayAppendValue(v15, @"Ap,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"x86,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"BaseSystemVolume");
    CFArrayAppendValue(v15, @"x86,BaseSystemVolume");
    CFArrayAppendValue(v15, @"SystemVolume");
    CFArrayAppendValue(v15, @"x86,SystemVolume");
    CFArrayAppendValue(v15, @"Ap,BaseSystemTrustCache");
    if (AMAuthInstallApIsImg4(cf, v26, v27, v28, v29, v30, v31, v32))
    {
      CFArrayAppendValue(v15, @"Diags");
      CFArrayAppendValue(v15, @"CFELoader");
      CFArrayAppendValue(v15, @"RBM");
      CFArrayAppendValue(v15, @"PHLEET");
      CFArrayAppendValue(v15, @"PERTOS");
      CFArrayAppendValue(v15, @"PEHammer");
      CFArrayAppendValue(v15, @"Alamo");
    }

    if (v19)
    {
      CFArrayAppendValue(v15, @"BasebandFirmware");
      if (*(cf[6] + 160))
      {
        v34 = 1;
        if (!AMAuthInstallVinylIsLegacyChipId(cf, &v34) && !v34)
        {
          CFArrayAppendValue(v15, @"eUICC,Main");
          CFArrayAppendValue(v15, @"eUICC,Gold");
        }
      }
    }

    if (ShouldPersonalizeOS)
    {
      CFArrayAppendValue(v15, @"OS");
    }

    if (!v17)
    {
      goto LABEL_27;
    }

    CFArrayAppendValue(v15, @"RecoveryOSOS");
    CFArrayAppendValue(v15, @"RecoveryOSAppleLogo");
    CFArrayAppendValue(v15, @"RecoveryOSDeviceTree");
    CFArrayAppendValue(v15, @"RecoveryOSKernelCache");
    CFArrayAppendValue(v15, @"RecoveryOSRamDisk");
    CFArrayAppendValue(v15, @"RecoveryOSiBEC");
    CFArrayAppendValue(v15, @"RecoveryOSiBSS");
    CFArrayAppendValue(v15, @"RecoveryOSStaticTrustCache");
    CFArrayAppendValue(v15, @"RecoveryOSiBootData");
    CFArrayAppendValue(v15, @"RecoveryOSDiags");
    CFArrayAppendValue(v15, @"RecoveryOSAp,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"RecoveryOSSystemVolume");
    CFArrayAppendValue(v15, @"RecoveryOSBaseSystemVolume");
    v25 = @"RecoveryOSAp,BaseSystemTrustCache";
    goto LABEL_25;
  }

  return result;
}

uint64_t AMAuthInstallBundlePersonalizeWithRecoveryOS(void *a1, const void *a2, int a3, const __CFString *a4, const void *a5, const __CFString *a6)
{
  v47 = 0;
  if (a1)
  {
    v13 = _AMAuthInstallGeneratePersonalizationEntries(a1, a2, a4, a5, a6, &v47);
    if (v13)
    {
      v41 = v13;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeWithRecoveryOS", "failed to generate personalization entries", v14, v15, v16, v17, v18, v46);
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
      v19 = OUTLINED_FUNCTION_43();
      ShouldPersonalizeOS = _AMAuthInstallBundleShouldPersonalizeOS(v19, v20, a4);
      if (a5)
      {
        OUTLINED_FUNCTION_27();
        _AMAuthInstallBundleShouldPersonalizeOS(v22, v23, v24);
      }

      v25 = CFGetAllocator(a1);
      v26 = MEMORY[0x29EDB9000];
      Mutable = CFArrayCreateMutable(v25, 0, MEMORY[0x29EDB9000]);
      v27 = CFGetAllocator(a1);
      v7 = CFArrayCreateMutable(v27, 0, v26);
      if (a1[6])
      {
        AMAuthInstallBasebandPersonalizationEnabled(a1);
      }

      if (AMAuthInstallApPersonalizationEnabled(a1))
      {
        CFArrayAppendValue(Mutable, @"OS");
        if (!AMAuthInstallApIsImg4(a1, v28, v29, v30, v31, v32, v33, v34))
        {
          CFArrayAppendValue(Mutable, @"Diags");
        }

        v35 = 1;
        v36 = @"Restore.plist";
        v37 = @"BuildManifest.plist";
      }

      else
      {
        CFArrayAppendValue(Mutable, @"RestoreRamDisk");
        CFArrayAppendValue(Mutable, @"OSRamdisk");
        CFArrayAppendValue(Mutable, @"KernelCache");
        if (!ShouldPersonalizeOS)
        {
          CFArrayAppendValue(Mutable, @"OS");
        }

        CFArrayAppendValue(v7, @"BuildManifest.plist");
        CFArrayAppendValue(v7, @"Restore.plist");
        v35 = 0;
        v36 = @"Firmware/all_flash";
        v37 = @"Firmware/dfu";
      }

      CFArrayAppendValue(v7, v37);
      CFArrayAppendValue(v7, v36);
      CFArrayAppendValue(v7, @"Firmware/device_map.txt");
      CFArrayAppendValue(v7, @"Firmware/device_map.plist");
      CFArrayAppendValue(v7, @"Firmware/SE");
      if (a5)
      {
        OUTLINED_FUNCTION_27();
        if (!AMAuthInstallBundleShouldPersonalizeOSImage(v38, v39, v40))
        {
          CFArrayAppendValue(Mutable, @"RecoveryOSOS");
        }
      }

      v41 = 2;
      if (Mutable && v7)
      {
        v42 = OUTLINED_FUNCTION_43();
        v41 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(v42, v43, a3, a4, a5, a6, v44, Mutable, v7, v35);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_1();
    v41 = 1;
  }

  SafeRelease(v47);
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(0);
  return v41;
}

uint64_t AMAuthInstallBundlePersonalizeRecoveryOS(void *a1, const void *a2, const void **a3, const __CFString *a4)
{
  Mutable = 0;
  v5 = 1;
  if (a1)
  {
    v7 = 0;
    if (a2)
    {
      _AMAuthInstallBundleShouldPersonalizeOS(a1, a2, a4);
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_46();
      Mutable = CFArrayCreateMutable(v11, v12, v13);
      CFGetAllocator(a1);
      OUTLINED_FUNCTION_46();
      v7 = CFArrayCreateMutable(v14, v15, v16);
      if (AMAuthInstallApPersonalizationEnabled(a1))
      {
        CFArrayAppendValue(Mutable, @"OS");
        if (!AMAuthInstallApIsImg4(a1, v17, v18, v19, v20, v21, v22, v23))
        {
          CFArrayAppendValue(Mutable, @"Diags");
        }

        v24 = @"Restore.plist";
        v25 = @"BuildManifest.plist";
      }

      else
      {
        CFArrayAppendValue(Mutable, @"RestoreRamDisk");
        CFArrayAppendValue(Mutable, @"OSRamdisk");
        CFArrayAppendValue(Mutable, @"KernelCache");
        CFArrayAppendValue(Mutable, @"OS");
        CFArrayAppendValue(v7, @"BuildManifest.plist");
        CFArrayAppendValue(v7, @"Restore.plist");
        v24 = @"Firmware/all_flash";
        v25 = @"Firmware/dfu";
      }

      CFArrayAppendValue(v7, v25);
      CFArrayAppendValue(v7, v24);
      CFArrayAppendValue(v7, @"Firmware/device_map.txt");
      CFArrayAppendValue(v7, @"Firmware/device_map.plist");
      CFArrayAppendValue(v7, @"Firmware/SE");
      if (!AMAuthInstallBundleShouldPersonalizeOSImage(a1, a2, a4))
      {
        CFArrayAppendValue(Mutable, @"RecoveryOSOS");
      }

      v5 = 2;
      if (Mutable && v7)
      {
        v5 = AMAuthInstallBundlePersonalizePartialRecoveryOS(a1, a3, a2, a4, Mutable, v7, 0, v26);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(0);
  return v5;
}

uint64_t AMAuthInstallBundlePersonalizeRestoreLocalPolicy(const void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v8 = CFGetAllocator(a1);
  cf = 0;
  v22 = 0;
  theDict = 0;
  v20 = 0;
  v18 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/LocalPolicy.restore.img4", 0, &v20);
  if (ServerRequest || (ServerRequest = _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(a1, a2, a3, &v22), ServerRequest) || (ServerRequest = AMAuthInstallRestoreLocalPolicyCreateServerRequest(a1, v22, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v18), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v18, &cf), ServerRequest))
  {
    v16 = ServerRequest;
  }

  else
  {
    v10 = AMAuthInstallSupportWriteDataToFileURL(v8, cf, v20, 1);
    if (v10)
    {
      v16 = v10;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRestoreLocalPolicy", "failed to write local policy to %@", v11, v12, v13, v14, v15, v20);
    }

    else
    {
      v16 = 0;
      if (a4)
      {
        *a4 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v18);
  SafeRelease(theDict);
  SafeRelease(v20);
  SafeRelease(cf);
  SafeRelease(v22);
  SafeRelease(0);
  return v16;
}

uint64_t AMAuthInstallBundlePersonalizeRecoveryOSLocalPolicy(void *a1, const void *a2, const void *a3, const void *a4, const __CFUUID *a5, CFTypeRef *a6)
{
  v12 = CFGetAllocator(a1);
  cf = 0;
  v26 = 0;
  theDict = 0;
  v24 = 0;
  v22 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v12, a2, @"amai/LocalPolicy.recoveryOS.img4", 0, &v24);
  if (ServerRequest || (ServerRequest = _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(a1, a2, a3, &v26), ServerRequest) || (ServerRequest = AMAuthInstallRecoveryOSLocalPolicyCreateServerRequest(a1, v26, a4, a5, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v22), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v22, &cf), ServerRequest))
  {
    v20 = ServerRequest;
  }

  else
  {
    v14 = AMAuthInstallSupportWriteDataToFileURL(v12, cf, v24, 0);
    if (v14)
    {
      v20 = v14;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRecoveryOSLocalPolicy", "failed to write local policy to %@", v15, v16, v17, v18, v19, v24);
    }

    else
    {
      v20 = 0;
      if (a6)
      {
        *a6 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v22);
  SafeRelease(theDict);
  SafeRelease(v24);
  SafeRelease(cf);
  SafeRelease(v26);
  return v20;
}

uint64_t AMAuthInstallBundlePersonalizeBasebandFirmware(const void *a1, const void *a2, int a3, const __CFString *a4)
{
  v8 = CFGetAllocator(a1);
  v16 = _CFArrayCreateWithObjects(v8, v9, v10, v11, v12, v13, v14, v15, @"BasebandFirmware");
  if (!v16)
  {
    v26 = 0;
    goto LABEL_6;
  }

  v17 = CFGetAllocator(a1);
  v25 = _CFArrayCreateWithObjects(v17, v18, v19, v20, v21, v22, v23, v24, @"Restore.plist");
  v26 = v25;
  if (!v25)
  {
LABEL_6:
    v27 = 2;
    goto LABEL_4;
  }

  v27 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(a1, a2, a3, a4, 0, 0, v16, 0, v25, 0);
LABEL_4:
  SafeRelease(v16);
  SafeRelease(0);
  SafeRelease(v26);
  return v27;
}

CFTypeRef _CreateRelativePathForManifestEntry(const void *a1, uint64_t a2, const __CFURL *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v29 = 0;
  if (a1)
  {
    if (a3)
    {
      v6 = a5;
      if (a5)
      {
        if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &v29))
        {
          AMAuthInstallLog(3, "_CreateRelativePathForManifestEntry", "failed to create receipt dict", v9, v10, v11, v12, v13, v28);
        }

        else
        {
          v14 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v14, v29, @"%@.%@.%@.%@", v15, v16, v17, v18, v19, @"Manifest");
          if (ValueForKeyWithFormat || (v21 = CFGetAllocator(a1), (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v21, a4, @"%@.%@.%@", v22, v23, v24, v25, v26, v6)) != 0))
          {
            v5 = CFRetain(ValueForKeyWithFormat);
            goto LABEL_8;
          }
        }

        v5 = 0;
      }
    }
  }

LABEL_8:
  SafeRelease(v29);
  return v5;
}

uint64_t AMAuthInstallBundleSetEntryEnabled(uint64_t a1, const void *a2, int a3)
{
  result = 1;
  if (a1 && a2)
  {
    Mutable = *(a1 + 528);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (*(a1 + 528) = Mutable) != 0))
    {
      _CFDictionarySetBoolean(Mutable, a2, a3);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v10 = a3;
    if (a3)
    {
      AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntry", "overriding entry: %@", a4, a5, a6, a7, a8, a2);
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntry", "override path: %@", v11, v12, v13, v14, v15, v10);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_27();
      CFDictionarySetValue(v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideBuildManifest(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = CFGetAllocator(a1);
    AMAuthInstallSupportCreateDictionaryFromFileURL(v4, a1[16] + 16, a2);
  }

  return 1;
}

uint64_t AMAuthInstallBundleOverrideRecoveryOSBuildManifest(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = CFGetAllocator(a1);
    AMAuthInstallSupportCreateDictionaryFromFileURL(v4, a1[16] + 24, a2);
  }

  return 1;
}

uint64_t AMAuthInstallBundleOverrideBuildManifestEntries(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1[16] + 16));
  if (!a2)
  {
    AMAuthInstallLog(6, "AMAuthInstallBundleOverrideBuildManifestEntries", "clearing build identity overrides", v4, v5, v6, v7, v8, v18);
    v16 = 0;
    goto LABEL_6;
  }

  v9 = CFGetAllocator(a1);
  Copy = CFDictionaryCreateCopy(v9, a2);
  if (Copy)
  {
    v16 = Copy;
    AMAuthInstallLog(8, "AMAuthInstallBundleOverrideBuildManifestEntries", "overriding build identity entries: %@", v11, v12, v13, v14, v15, a2);
LABEL_6:
    result = 0;
    *(a1[16] + 16) = v16;
    return result;
  }

  return 2;
}

uint64_t AMAuthInstallBundleOverrideEntries(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    return 1;
  }

  v8 = a2;
  if (a2)
  {
    CFGetAllocator(cf);
    OUTLINED_FUNCTION_46();
    MutableCopy = CFDictionaryCreateMutableCopy(v10, v11, v12);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntries", "overriding entries: %@", v14, v15, v16, v17, v18, v8);
      v20 = OUTLINED_FUNCTION_33();
      SafeRelease(v20);
      result = 0;
      **(cf + 16) = v19;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntries", "clearing overrides", a4, a5, a6, a7, a8, v23);
    v22 = OUTLINED_FUNCTION_33();
    CFDictionaryRemoveAllValues(v22);
    return 0;
  }

  return result;
}

uint64_t _AMAuthInstallBundleApplyMeasurements(void *a1, CFStringRef theString1, void *a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  v78 = theString1;
  if (!a1)
  {
    OUTLINED_FUNCTION_12_2();
    Code = 1;
    goto LABEL_39;
  }

  ValueForKeyWithFormat = 0;
  Code = 1;
  if (!theString1 || (v9 = a3) == 0)
  {
    v6 = 0;
    goto LABEL_39;
  }

  v6 = 0;
  if (!a5)
  {
    goto LABEL_39;
  }

  if (CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo)
  {
    v34 = OUTLINED_FUNCTION_24();
    Value = CFDictionaryGetValue(v34, @"VinylFirmware");
    if (Value)
    {
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", v35, v36, v37, v38, v39, @"VinylFirmware");
    }

    Measurements = AMAuthInstallBasebandCreateMeasurements(a1, v9, Value, &theDict);
    if (Measurements)
    {
      Code = Measurements;
      goto LABEL_38;
    }

    v44 = a1[6];
    if (v44 && *(v44 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v44 + 8), v42, v43, v28, v29, v30, v31, v32);
      v46 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v46 = kAMAuthInstallTagBbPsi2PartialDigest;
      }

      v47 = *v46;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v48 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v48 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(theDict, v47);
      v49 = *v48;
      CFDictionaryRemoveValue(theDict, v49);
      CFDictionaryRemoveValue(*a5, v47);
      CFDictionaryRemoveValue(*a5, v49);
    }

    a4 = 0;
    goto LABEL_25;
  }

  if (CFStringCompare(theString1, @"eUICC,Main", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"eUICC,Gold", 0) == kCFCompareEqualTo)
  {
    v20 = OUTLINED_FUNCTION_24();
    v21 = CFDictionaryGetValue(v20, @"VinylFirmware");
    if (v21)
    {
      v27 = v21;
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", v22, v23, v24, v25, v26, @"VinylFirmware");
      v9 = v27;
    }

    Code = AMAuthInstallVinylCreateMeasurements(a1, v9, &theDict, &v78);
    a4 = 0;
    OUTLINED_FUNCTION_12_2();
    if (v33)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v13 = CFGetAllocator(a1);
  v6 = @"Info";
  ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v13, a4, @"%@.%@", v14, v15, v16, v17, v18, @"Info");
  if (AMAuthInstallApImg4ValidImage(v9))
  {
    v55 = *(a1[2] + 128);
    goto LABEL_49;
  }

  v56 = CFGetAllocator(a1);
  v62 = AMAuthInstallSupportGetValueForKeyWithFormat(v56, a4, @"%@.%@", v57, v58, v59, v60, v61, @"Info");
  if (!v62 || (v6 = v62, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    v55 = 256;
    goto LABEL_49;
  }

  v64 = *(a1[2] + 112);
  if (CFStringCompare(v6, @"sha1", 0))
  {
    if (CFStringCompare(v6, @"sha2-256", 0))
    {
      if (CFStringCompare(v6, @"sha2-384", 0))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "digest type in the build manifest is not supported", v65, v66, v67, v68, v69, v76);
        OUTLINED_FUNCTION_12_2();
        Code = 7;
        goto LABEL_39;
      }

      v55 = 384;
    }

    else
    {
      v55 = 256;
    }
  }

  else
  {
    v55 = 1;
  }

  if (v64)
  {
LABEL_49:
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(a1, v9, ValueForKeyWithFormat, v55, 0, 0, &theDict);
    if (MeasurementsWithTag)
    {
      Code = MeasurementsWithTag;
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@", v28, v29, v30, v31, v32, theString1);
      goto LABEL_38;
    }

LABEL_25:
    v50 = theDict;
    if (!theDict)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed find measurementsDict for entry %@", v28, v29, v30, v31, v32, v78);
      OUTLINED_FUNCTION_12_2();
      Code = 8;
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v50 = AMAuthInstallApMeasureBinary(v9, 0x100000, v55);
  theDict = v50;
  if (!v50)
  {
    Code = CFErrorGetCode(0);
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@ with error: %@", v71, v72, v73, v74, v75, theString1);
    OUTLINED_FUNCTION_12_2();
    goto LABEL_39;
  }

LABEL_26:
  Count = CFDictionaryGetCount(v50);
  if (Count < 1)
  {
    Code = 0;
LABEL_38:
    OUTLINED_FUNCTION_12_2();
    goto LABEL_39;
  }

  v52 = Count;
  ValueForKeyWithFormat = calloc(8uLL, Count);
  v6 = calloc(8uLL, v52);
  CFDictionaryGetKeysAndValues(theDict, &ValueForKeyWithFormat->isa, &v6->isa);
  for (i = 0; i != v52; ++i)
  {
    if (!a4 || CFDictionaryContainsKey(a4, *(&ValueForKeyWithFormat->isa + i)) || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"MemoryMap", 0) == kCFCompareEqualTo || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"RawDataDigest", 0) == kCFCompareEqualTo)
    {
      CFDictionarySetValue(*a5, *(&ValueForKeyWithFormat->isa + i), *(&v6->isa + i));
    }
  }

  Code = 0;
LABEL_39:
  SafeRelease(theDict);
  SafeFree(ValueForKeyWithFormat);
  SafeFree(v6);
  SafeRelease(0);
  return Code;
}

CFIndex _AMAuthInstallBundleSetObjectPropertyOverrides(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v16 = a3;
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = *(a1 + 424);
        if (result)
        {
          result = CFDictionaryGetValue(result, @"ObjectRequestEntries");
          if (result)
          {
            result = CFDictionaryGetValue(result, a2);
            if (result)
            {
              v7 = OUTLINED_FUNCTION_39();
              v8 = CFGetAllocator(v7);
              result = AMAuthInstallSupportApplyDictionaryOverrides(v8, v3, &v16, 0);
              if (result)
              {
                v15 = a2;
                v14 = result;
                AMAuthInstallLog(3, "_AMAuthInstallBundleSetObjectPropertyOverrides", "failed to set override object properties for %@", v9, v10, v11, v12, v13, v15);
                return v14;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleAllowLinks(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 432) = a2 == 0;
  return result;
}

uint64_t AMAuthInstallBundlePreferBuildManifest(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 434) = a2;
  return result;
}

uint64_t AMAuthInstallBundleSkipInstallation(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 435) = a2;
  return result;
}

uint64_t AMAuthInstallBundleInstallFile(_BYTE *a1, const __CFURL *a2, CFURLRef url)
{
  SoftLink = 1;
  if (a2 && a1 && url)
  {
    if (a1[432])
    {
      v18 = 0;
      v7 = AMAuthInstallSupportFileURLExists(url, &v18);
      if (v7)
      {
        SoftLink = v7;
        v16 = "AMAuthInstallSupportFileURLExists failed.";
      }

      else
      {
        if (v18 != 1)
        {
          return 0;
        }

        v13 = CFGetAllocator(a1);
        v14 = AMAuthInstallSupportCopyFile(v13, url, a2);
        if (!v14)
        {
          return 0;
        }

        SoftLink = v14;
        v16 = "AMAuthInstallSupportCopyFile failed.";
      }
    }

    else
    {
      SoftLink = AMAuthInstallPlatformCreateSoftLink(a2, url);
      if (!SoftLink)
      {
        return SoftLink;
      }

      v16 = "AMAuthInstallPlatformCreateSoftLink failed.";
    }

    AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", v16, v8, v9, v10, v11, v12, v17);
  }

  return SoftLink;
}

uint64_t AMAuthInstallBundleRequestTicketWithoutNonce(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 433) = a2;
  return result;
}

uint64_t _AMAuthInstallBundleGetValueForReservedKey(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3 && a2 && *(a1 + 16))
  {
    v6 = OUTLINED_FUNCTION_31(1, @"ApRawProductionMode");
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_31(v6, @"ApRawSecurityMode");
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_31(v7, @"ApInRomDFU");
        if (v8)
        {
          v9 = OUTLINED_FUNCTION_31(v8, @"ApCurrentSecurityMode");
          if (v9)
          {
            v10 = OUTLINED_FUNCTION_31(v9, @"ApCurrentProductionMode");
            if (v10)
            {
              v11 = OUTLINED_FUNCTION_31(v10, @"ApRequiresImage4");
              if (v11)
              {
                if (OUTLINED_FUNCTION_31(v11, @"ApDemotionPolicyOverride"))
                {
                  return 8;
                }

                v22 = *(*(a1 + 16) + 104);
                goto LABEL_22;
              }

              IsImg4 = AMAuthInstallApIsImg4(a1, v12, v13, v14, v15, v16, v17, v18);
              v21 = MEMORY[0x29EDB8F00];
              if (!IsImg4)
              {
                v21 = MEMORY[0x29EDB8EF8];
              }

LABEL_21:
              v22 = *v21;
LABEL_22:
              result = 0;
              *a3 = v22;
              return result;
            }

            v19 = MEMORY[0x29EDB8F00];
            v20 = *(*(a1 + 16) + 97);
          }

          else
          {
            v19 = MEMORY[0x29EDB8F00];
            v20 = *(*(a1 + 16) + 98);
          }
        }

        else
        {
          v19 = MEMORY[0x29EDB8F00];
          v20 = *(*(a1 + 16) + 96);
        }
      }

      else
      {
        v19 = MEMORY[0x29EDB8F00];
        v20 = *(*(a1 + 16) + 88);
      }
    }

    else
    {
      v19 = MEMORY[0x29EDB8F00];
      v20 = *(*(a1 + 16) + 20);
    }

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x29EDB8EF8];
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForCondition(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t *a4)
{
  cf = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    if (_AMAuthInstallBundleGetValueForReservedKey(a1, a2, &cf))
    {
      DefaultResult = _AMAuthInstallBundleGetDefaultResult(a3);
LABEL_16:
      result = 0;
      *a4 = DefaultResult;
      return result;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFBooleanGetTypeID())
    {
      v10 = MEMORY[0x29EDB8F00];
      if (cf != a3)
      {
        v10 = MEMORY[0x29EDB8EF8];
      }
    }

    else
    {
      v11 = CFGetTypeID(cf);
      if (v11 != CFStringGetTypeID())
      {
        DefaultResult = 0;
        goto LABEL_16;
      }

      if (CFStringCompare(cf, a3, 0))
      {
        v10 = MEMORY[0x29EDB8EF8];
      }

      else
      {
        v10 = MEMORY[0x29EDB8F00];
      }
    }

    DefaultResult = *v10;
    goto LABEL_16;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForAction(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t *a4)
{
  v9 = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    v7 = cf;
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID() && !_AMAuthInstallBundleGetValueForReservedKey(a1, v7, &v9))
    {
      v7 = v9;
    }

    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t _AMAuthInstallBundleCheckCondition(uint64_t a1, CFDictionaryRef theDict, char *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v7 = malloc(8 * Count);
      if (v7)
      {
        CFDictionaryGetKeysAndValues(theDict, v3, v7);
        if (Count < 1)
        {
          v11 = 1;
LABEL_12:
          v4 = 0;
          if (Count)
          {
            v14 = v11;
          }

          else
          {
            v14 = 1;
          }

          *a3 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          while (1)
          {
            v12 = v3[v10];
            v13 = v7[v10];
            BOOLean = 0;
            if (_AMAuthInstallBundleGetValueForCondition(a1, v12, v13, &BOOLean))
            {
              break;
            }

            v11 &= CFBooleanGetValue(BOOLean);
            if (Count == ++v10)
            {
              goto LABEL_12;
            }
          }

          v4 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_16:
  SafeFree(v3);
  SafeFree(v7);
  return v4;
}

uint64_t _AMAuthInstallBundleApplyActions(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v6 = malloc(8 * Count);
      if (v6)
      {
        v9 = OUTLINED_FUNCTION_14_1();
        CFDictionaryGetKeysAndValues(v9, v10, v6);
        if (Count < 1)
        {
LABEL_10:
          v4 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = v3[v11];
            v13 = v6[v11];
            value = 0;
            if (_AMAuthInstallBundleGetValueForAction(a1, v12, v13, &value))
            {
              break;
            }

            CFDictionarySetValue(a3, v12, value);
            if (Count == ++v11)
            {
              goto LABEL_10;
            }
          }

          v4 = 1;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 2;
  }

LABEL_11:
  SafeFree(v3);
  SafeFree(v6);
  return v4;
}

uint64_t AMAuthInstallBundleProcessRulesWithEntryDict(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Info");
    if (Value)
    {
      result = CFDictionaryGetValue(Value, @"RestoreRequestRules");
      if (result)
      {

        return AMAuthInstallBundleProcessRules(a1, result, theDict);
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleProcessRules(uint64_t a1, const __CFArray *a2, __CFDictionary *a3)
{
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v7 = OUTLINED_FUNCTION_39();
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      v11 = "failed to check conditions";
      while (1)
      {
        v25 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
        if (!ValueAtIndex)
        {
          return 7;
        }

        v13 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Conditions");
        if (Value)
        {
          v16 = _AMAuthInstallBundleCheckCondition(v3, Value, &v25);
          if (v16)
          {
            v4 = v16;
            goto LABEL_19;
          }
        }

        if (v25)
        {
          v15 = CFDictionaryGetValue(v13, @"Actions");
          if (v15)
          {
            v22 = _AMAuthInstallBundleApplyActions(v3, v15, a3);
            if (v22)
            {
              break;
            }
          }
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      v4 = v22;
      v11 = "failed to apply actions";
LABEL_19:
      AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", v11, v17, v18, v19, v20, v21, v24);
    }
  }

  return v4;
}

uint64_t AMAuthInstallBundleFDRSupported(void *a1, const void *a2, const __CFString *a3, char *a4)
{
  v22 = 0;
  if (a1)
  {
    v5 = 1;
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v7 = a1[16];
          if (v7)
          {
            v8 = *(v7 + 32);
            if (!v8)
            {
              v20 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v22);
              if (v20)
              {
                v5 = v20;
                goto LABEL_15;
              }

              v8 = *(a1[16] + 32);
            }

            Value = CFDictionaryGetValue(v8, @"Info");
            if (Value && (v10 = CFDictionaryGetValue(Value, @"FDRSupport")) != 0)
            {
              v11 = v10;
              v12 = CFGetTypeID(v10);
              if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11))
              {
                AMAuthInstallLog(6, "AMAuthInstallBundleFDRSupported", "FDR is supported for this device", v13, v14, v15, v16, v17, v21);
                v18 = 1;
              }

              else
              {
                v18 = 0;
              }

              v5 = 0;
              *a4 = v18;
            }

            else
            {
              v5 = 8;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_15:
  SafeRelease(v22);
  return v5;
}

uint64_t AMAuthInstallBundleFDRBasebandSupported(void *a1, const void *a2, const __CFString *a3, char *a4)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (!a1)
  {
    v5 = 1;
    goto LABEL_14;
  }

  v5 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v7 = a1[16];
        if (v7)
        {
          v8 = *(v7 + 32);
          if (!v8)
          {
            v10 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v14);
            if (v10)
            {
              goto LABEL_19;
            }

            v8 = *(a1[16] + 32);
            if (!v8)
            {
              v5 = 14;
              goto LABEL_14;
            }
          }

          Value = CFDictionaryGetValue(v8, @"BbChipID");
          if (!Value)
          {
            v11 = 0;
            goto LABEL_12;
          }

          if (!_CFStringToUInt32(Value, &v13))
          {
            v5 = 3;
            goto LABEL_14;
          }

          v10 = AMAuthInstallBasebandSupportsFDR(v13, &v15);
          if (!v10)
          {
            v11 = v15;
LABEL_12:
            v5 = 0;
            *a4 = v11;
            goto LABEL_14;
          }

LABEL_19:
          v5 = v10;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v14);
  return v5;
}

uint64_t AMAuthInstallGetFirstVariantInBundle(void *cf, const void *a2)
{
  v2 = @"ApBoardID";
  v49 = @"ApChipID";
  key = @"ApSecurityDomain";
  if (!cf)
  {
    v4 = 1;
    goto LABEL_10;
  }

  v4 = 1;
  if (a2)
  {
    v6 = cf[2];
    if (v6)
    {
      v8 = *(v6 + 8);
      v7 = *(v6 + 12);
      v48 = *(v6 + 16);
      v9 = *(v6 + 160);
      if (!v9)
      {
        goto LABEL_8;
      }

      v10 = *MEMORY[0x29EDB8ED8];
      v46 = v9;
      v11 = OUTLINED_FUNCTION_47();
      v49 = CFStringCreateWithFormat(v11, v12, v13);
      if (v49)
      {
        OUTLINED_FUNCTION_41();
        v47 = v19;
        v20 = OUTLINED_FUNCTION_47();
        v2 = CFStringCreateWithFormat(v20, v21, v22);
        if (v2)
        {
          OUTLINED_FUNCTION_41();
          v45 = v28;
          v29 = OUTLINED_FUNCTION_47();
          key = CFStringCreateWithFormat(v29, v30, v31);
          if (key)
          {
LABEL_8:
            v37 = CFGetAllocator(cf);
            v38 = AMAuthInstallBundleCopyPublishedVariantsArray(v37, a2);
            if (v38)
            {
              v4 = v38;
              AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "AMAuthInstallBundleCopyPublishedVariantsArray failed", v39, v40, v41, v42, v43, v45);
            }

            else
            {
              AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "AMAuthInstallBundleCopyPublishedVariantsArray returned NULL", v39, v40, v41, v42, v43, v45);
              v4 = 7;
            }

            goto LABEL_10;
          }

          AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed secdomKey allocation", v32, v33, v34, v35, v36, v45);
          key = 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed boardKey allocation", v23, v24, v25, v26, v27, v47);
        }
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallGetFirstVariantInBundle", "failed chipKey allocation", v14, v15, v16, v17, v18, v46);
        v49 = 0;
      }

      v4 = 99;
    }
  }

LABEL_10:
  SafeRelease(0);
  SafeRelease(v2);
  SafeRelease(v49);
  SafeRelease(key);
  return v4;
}

CFIndex AMAuthInstallBundleGetBuildIdentityVersionData(void *a1, const void *a2, const __CFString *a3, CFDataRef *a4)
{
  v4 = 0;
  v76 = *MEMORY[0x29EDCA608];
  error = 0;
  cf = 0;
  *values = xmmword_29EE9AC50;
  v75 = @"BuildTrain";
  Code = 1;
  if (a1 && a2 && a3)
  {
    v9 = 0;
    Mutable = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    v4 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 3, MEMORY[0x29EDB9000]);
    if (v4)
    {
      v12 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
      if (!v12)
      {
        v18 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (Mutable)
        {
          if (CFArrayGetCount(v4) >= 1)
          {
            v24 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v24);
              if (!ValueAtIndex)
              {
                AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "failed getting the field key %d.", v26, v27, v28, v29, v30, v24);
                v9 = 0;
                goto LABEL_29;
              }

              v31 = ValueAtIndex;
              v32 = CFGetAllocator(a1);
              v71 = v31;
              v9 = CFStringCreateWithFormat(v32, 0, @"Info.%@");
              if (!v9)
              {
                AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "failed creating the field key %@ Path.", v33, v34, v35, v36, v37, v31);
                goto LABEL_29;
              }

              v38 = CFGetAllocator(a1);
              ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v38, cf, v9, v39, v40, v41, v42, v43);
              if (!ValueForKeyPathInDict)
              {
                break;
              }

              CFDictionaryAddValue(Mutable, v31, ValueForKeyPathInDict);
              CFRelease(v9);
              if (++v24 >= CFArrayGetCount(v4))
              {
                goto LABEL_14;
              }
            }

            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed to get field key path %@ from the buildIdentity", v45, v46, v47, v48, v49, v31);
            goto LABEL_31;
          }

LABEL_14:
          v50 = CFGetAllocator(a1);
          v56 = AMAuthInstallSupportGetValueForKeyPathInDict(v50, cf, @"ProductMarketingVersion", v51, v52, v53, v54, v55);
          if (!v56)
          {
            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed to get kAMAuthInstallBuildIdentityProductMarketingVersion path from the buildIdentity", v57, v58, v59, v60, v61, v71);
            v9 = 0;
LABEL_31:
            Code = 4;
            goto LABEL_18;
          }

          CFDictionaryAddValue(Mutable, @"ProductVersion", v56);
          v62 = CFGetAllocator(a1);
          v63 = CFPropertyListCreateData(v62, Mutable, kCFPropertyListXMLFormat_v1_0, 0, &error);
          *a4 = v63;
          if (!v63)
          {
            Code = CFErrorGetCode(error);
            AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed transformatting the property List to CFData obj %@", v66, v67, v68, v69, v70, error);
            goto LABEL_17;
          }
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "Failed creating dictionary for the version data.", v19, v20, v21, v22, v23, v71);
        }

        Code = 0;
LABEL_17:
        v9 = 0;
        goto LABEL_18;
      }

      Code = v12;
      AMAuthInstallLog(3, "AMAuthInstallBundleGetBuildIdentityVersionData", "AMAuthInstallBundleCopyBuildIdentityForVariant failed.", v13, v14, v15, v16, v17, v71);
      v9 = 0;
      Mutable = 0;
    }

    else
    {
      v9 = 0;
      Mutable = 0;
LABEL_29:
      Code = 2;
    }
  }

  else
  {
    v9 = 0;
    Mutable = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v64 = *MEMORY[0x29EDCA608];
  return Code;
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA256(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 32);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 32);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA256(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA384(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 48);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 48);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA384(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t _AMAuthInstallFusingProgramCreateRequest(const __CFAllocator *a1, const __CFURL *a2, CFDataRef XMLData, const __CFDictionary *cf, CFTypeRef *a5)
{
  if (cf)
  {
    v9 = cf;
    CFRetain(cf);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_10();
    v9 = CFDictionaryCreate(v10, v11, 0, v12, v13, v14);
    if (!v9)
    {
      v20 = 0;
LABEL_13:
      XMLData = 0;
      goto LABEL_14;
    }
  }

  if (!XMLData)
  {
    v20 = 0;
    Request = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_9;
  }

  v15 = OUTLINED_FUNCTION_1_10();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"Action", XMLData);
  CFDictionarySetValue(v20, @"Parameters", v9);
  XMLData = CFPropertyListCreateXMLData(a1, v20);
  if (!XMLData)
  {
LABEL_14:
    Request = 0;
    v25 = 0;
    v26 = 2;
    goto LABEL_9;
  }

  Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, *MEMORY[0x29EDB8528]);
  if (Request)
  {
    Length = CFDataGetLength(XMLData);
    v22 = OUTLINED_FUNCTION_1_10();
    v25 = CFStringCreateWithFormat(v22, v23, v24, Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v25);
    CFHTTPMessageSetBody(Request, XMLData);
    v26 = 0;
    *a5 = CFRetain(Request);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

LABEL_9:
  SafeRelease(v20);
  SafeRelease(XMLData);
  SafeRelease(Request);
  SafeRelease(v9);
  SafeRelease(v25);
  SafeRelease(0);
  return v26;
}

uint64_t _AMAuthInstallFusingProgramCopyResponseParameters(const __CFAllocator *a1, const __CFData *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  errorString = 0;
  v10 = CFPropertyListCreateFromXMLData(a1, a2, 0, &errorString);
  v16 = v10;
  if (errorString)
  {
    v17 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "CFPropertyListCreateFromXMLData() error: %@", v11, v12, v13, v14, v15, errorString);
    cf = 0;
    URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot();
    AMAuthInstallSupportCopyURLWithAppendedComponent(a1, URLForTempDirectoryRoot, @"badresponse.bin", 0, &cf);
    AMAuthInstallSupportWriteDataToFileURL(a1, a2, cf, 1);
    SafeRelease(cf);
    CFRelease(errorString);
    errorString = 0;
  }

  else if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"Status");
    if (Value)
    {
      v20 = Value;
      v21 = CFDictionaryGetValue(v16, @"Message");
      v22 = CFDictionaryGetValue(v16, @"Data");
      if (CFNumberGetValue(v20, kCFNumberIntType, a3))
      {
        *a4 = SafeRetain(v21);
        v17 = 0;
        *a5 = SafeRetain(v22);
      }

      else
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 17;
    }
  }

  else
  {
    Length = CFDataGetLength(a2);
    v17 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "can't parse response (%u bytes of apparent garbage)", v25, v26, v27, v28, v29, Length);
  }

  SafeRelease(v16);
  SafeRelease(errorString);
  return v17;
}

uint64_t AMAuthInstallFusingProgramRequestInternal(const __CFAllocator *a1, const __CFURL *a2, const void *a3, CFTypeRef *a4, const __CFDictionary *a5)
{
  v5 = 0;
  v66 = 0;
  valuePtr = 0;
  v64 = 0;
  v65 = 0;
  v6 = 1;
  errorString = 0;
  if (!a2 || !a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ProfileSpecifier", a3);
      v16 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"GetFusingProgram", v10, &v66);
      if (v16)
      {
        v6 = v16;
        v5 = 0;
        v11 = 0;
        v9 = v66;
        goto LABEL_32;
      }

      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "requesting fusing program from %@", v17, v18, v19, v20, v21, a2);
      Value = CFDictionaryGetValue(a3, @"ChipID");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "Chiup ID: %u", v23, v24, v25, v26, v27, valuePtr);
      v28 = OUTLINED_FUNCTION_1_10();
      v11 = CFDataCreateMutable(v28, v29);
      v9 = v66;
      if (v11)
      {
        v35 = AMAuthInstallHttpMessageSendSync(v66, v11, a5, v30, v31, v32, v33, v34);
        if (valuePtr == 938209 || valuePtr == 1327329 || valuePtr == 1515745 || valuePtr == 1700065 || valuePtr == 2044129 || valuePtr == 2814177 || valuePtr == 2089185)
        {
          v42 = CFPropertyListCreateFromXMLData(a1, v11, 0, &errorString);
          v64 = v42;
          if (errorString)
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "Failed to get fusing response data from CFPropertyListCreateFromXMLData() error: %@", v57, v58, v59, v60, v61, errorString);
            v5 = 0;
            goto LABEL_44;
          }

          v43 = v42;
          v5 = 0;
        }

        else
        {
          v56 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v11, &valuePtr + 4, &v65, &v64);
          if (v56)
          {
            v6 = v56;
            v5 = v65;
            goto LABEL_32;
          }

          if (HIDWORD(valuePtr))
          {
            v5 = v65;
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server error: %@ (%d)", v57, v58, v59, v60, v61, v65);
            v6 = 99;
            goto LABEL_32;
          }

          v43 = v64;
          v5 = v65;
        }

        AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "httpStatus=%u, status=%d, message=%@", v57, v58, v59, v60, v61, v35);
        if (v43)
        {
          v49 = CFGetTypeID(v43);
          if (v49 == CFDictionaryGetTypeID())
          {
            AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "data=%@", v50, v51, v52, v53, v54, v43);
            v6 = 0;
            *a4 = CFRetain(v43);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "fusing program type mismatch", v50, v51, v52, v53, v54, v62);
            v6 = 17;
          }

          goto LABEL_32;
        }

        AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server failed to provide a fusing program", v44, v45, v46, v47, v48, v62);
LABEL_44:
        v6 = 14;
        goto LABEL_32;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v11 = 0;
    }

    v6 = 2;
  }

LABEL_32:
  SafeRelease(v10);
  SafeRelease(v9);
  SafeRelease(v11);
  SafeRelease(v5);
  SafeRelease(v64);
  return v6;
}

uint64_t AMAuthInstallFusingProgramAck(const __CFAllocator *a1, const __CFURL *a2, const void *a3, int a4)
{
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (!Mutable)
  {
    v31 = 0;
    v32 = 0;
    v23 = 0;
    v22 = 0;
LABEL_12:
    v30 = 2;
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, @"FusingProgram", a3);
  v10 = MEMORY[0x29EDB8F00];
  if (!a4)
  {
    v10 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(v9, @"Consumed", *v10);
  v11 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"AckFusingProgram", v9, &v36);
  if (v11)
  {
    v30 = v11;
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v23 = v36;
    goto LABEL_8;
  }

  AMAuthInstallLog(6, "AMAuthInstallFusingProgramAck", "acknowledging fusing program from %@", v12, v13, v14, v15, v16, a2);
  v22 = CFDataCreateMutable(a1, 0);
  v23 = v36;
  if (!v22)
  {
    v31 = 0;
    v32 = 0;
    goto LABEL_12;
  }

  v24 = AMAuthInstallHttpMessageSendSync(v36, v22, 0, v17, v18, v19, v20, v21);
  v30 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v22, &v37, &v35, &v34);
  v31 = v34;
  v32 = v35;
  if (!v30)
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramAck", "httpStatus=%u, status=%d, message=%@, data=%@", v25, v26, v27, v28, v29, v24);
  }

LABEL_8:
  SafeRelease(v9);
  SafeRelease(v23);
  SafeRelease(v22);
  SafeRelease(v32);
  SafeRelease(v31);
  return v30;
}

CFTypeRef AMAuthInstallFusingCreateProfileName(__CFString *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  v38 = *MEMORY[0x29EDCA608];
  v36.location = 0;
  v36.length = 0;
  *values = xmmword_29EE9AC68;
  if (!cf)
  {
    v24 = 0;
LABEL_58:
    v27 = 0;
    goto LABEL_59;
  }

  if (!cf[5].info)
  {
    v35 = "no fusing profile specified";
LABEL_56:
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", v35, a4, a5, a6, a7, a8, v36.location);
    v24 = 0;
LABEL_57:
    v8 = 0;
    goto LABEL_58;
  }

  data = cf->data;
  if (!data)
  {
    v35 = "ap parameters are not set";
    goto LABEL_56;
  }

  v10 = *(cf[1].data + 1);
  if (v10 != 241889 && v10 != 520417 && v10 != 938209 && v10 != 1327329 && v10 != 1515745 && v10 != 1700065 && v10 != 2044129 && v10 != 2089185 && v10 != 2814177 && v10 != 8343777 && v10 != 9781473 && v10 != 9572577)
  {
    goto LABEL_48;
  }

  if (!*(data + 15))
  {
    AMAuthInstallLog(4, "AMAuthInstallFusingCreateProfileName", "hardware model is not set, fusing profile name will not be updated.", a4, a5, a6, a7, a8, v36.location);
LABEL_48:
    v24 = 0;
    v27 = 0;
    goto LABEL_49;
  }

  v22 = CFGetAllocator(cf);
  MutableCopy = CFStringCreateMutableCopy(v22, 0, *(v8->data + 15));
  v24 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_57;
  }

  CFStringLowercase(MutableCopy, 0);
  v25 = CFGetAllocator(v8);
  v26 = CFArrayCreate(v25, values, 2, MEMORY[0x29EDB9000]);
  v27 = v26;
  if (!v26)
  {
    v8 = 0;
    goto LABEL_59;
  }

  if (CFArrayGetCount(v26) >= 1)
  {
    v28 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v27, v28);
      v39.length = CFStringGetLength(v24);
      v39.location = 0;
      if (CFStringFindWithOptions(v24, ValueAtIndex, v39, 4uLL, &v36))
      {
        break;
      }

      if (++v28 >= CFArrayGetCount(v27))
      {
        goto LABEL_49;
      }
    }

    CFStringDelete(v24, v36);
    v33 = CFGetAllocator(v8);
    v34 = CFStringCreateMutableCopy(v33, 0, v8[5].info);
    v8 = v34;
    if (v34)
    {
      CFStringAppend(v34, @"-");
      CFStringAppend(v8, v24);
      v30 = CFRetain(v8);
      goto LABEL_50;
    }

LABEL_59:
    v30 = 0;
    goto LABEL_50;
  }

LABEL_49:
  v30 = CFRetain(v8[5].info);
  v8 = 0;
LABEL_50:
  SafeRelease(v24);
  SafeRelease(v8);
  SafeRelease(v27);
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t AMAuthInstallFusingProgramRequest(void *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  v48 = 0;
  if (!cf)
  {
    goto LABEL_40;
  }

  if (!*(cf + 20))
  {
    v46 = "no fusing server specified";
LABEL_39:
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", v46, a4, a5, a6, a7, a8, v47);
LABEL_40:
    OUTLINED_FUNCTION_0_4();
    ProfileName = 0;
    v21 = 1;
    goto LABEL_36;
  }

  if (!*(cf + 21))
  {
    v46 = "no fusing profile specified";
    goto LABEL_39;
  }

  v13 = *(cf + 6);
  v14 = *v13;
  LODWORD(valuePtr) = v13[1];
  HIDWORD(valuePtr) = v14;
  v48 = v13[24];
  ProfileName = AMAuthInstallFusingCreateProfileName(cf, a2, a3, a4, a5, a6, a7, a8);
  if (!ProfileName)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "failed to create fusing profile name", v15, v16, v17, v18, v19, v47);
    OUTLINED_FUNCTION_0_4();
LABEL_48:
    v21 = 99;
    goto LABEL_36;
  }

  if (*(cf + 22))
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequest", "fusing program already exists", v15, v16, v17, v18, v19, v47);
    v21 = 0;
    OUTLINED_FUNCTION_0_4();
    ProfileName = 0;
    goto LABEL_36;
  }

  v22 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_43;
  }

  v23 = CFGetAllocator(cf);
  v9 = CFNumberCreate(v23, kCFNumberSInt32Type, &valuePtr + 4);
  if (!v9)
  {
LABEL_43:
    v10 = 0;
    goto LABEL_44;
  }

  v24 = CFGetAllocator(cf);
  v10 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
LABEL_44:
    v11 = 0;
    goto LABEL_45;
  }

  v25 = CFGetAllocator(cf);
  v11 = CFNumberCreate(v25, kCFNumberSInt32Type, &v48);
  if (!v11)
  {
LABEL_45:
    ProfileName = 0;
    v21 = 2;
    goto LABEL_36;
  }

  CFDictionarySetValue(Mutable, @"VendorID", v9);
  CFDictionarySetValue(Mutable, @"ChipID", v10);
  CFDictionarySetValue(Mutable, @"ProfileName", ProfileName);
  CFDictionarySetValue(Mutable, @"FusingStatus", v11);
  if (valuePtr != 938209 && valuePtr != 1327329 && valuePtr != 1515745 && valuePtr != 1700065 && valuePtr != 2044129 && valuePtr != 2814177 && valuePtr != 2089185)
  {
    ProfileName = 0;
    goto LABEL_34;
  }

  if (!*(cf + 24))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to get fusing server root CA!", v26, v27, v28, v29, v30, v47);
    ProfileName = 0;
    goto LABEL_48;
  }

  v37 = CFGetAllocator(cf);
  v38 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ProfileName = v38;
  if (!v38)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to create option Dictionary for SSL connection!", v39, v40, v41, v42, v43, v47);
    goto LABEL_48;
  }

  CFDictionarySetValue(v38, *MEMORY[0x29EDC91E8], *(cf + 24));
LABEL_34:
  v44 = CFGetAllocator(cf);
  v21 = AMAuthInstallFusingProgramRequestInternal(v44, *(cf + 20), Mutable, cf + 22, ProfileName);
  if (!v21)
  {
    AMAuthInstallDebugWriteObject(cf, *(cf + 22), @"fusingprogram", 2);
  }

LABEL_36:
  SafeRelease(Mutable);
  SafeRelease(v9);
  SafeRelease(v10);
  SafeRelease(v11);
  SafeRelease(ProfileName);
  return v21;
}

uint64_t AMAuthInstallHttpCreatePostBody(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = 1;
  if (!a2)
  {
    OUTLINED_FUNCTION_1_11();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_11();
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    Mutable = CFStringCreateMutable(v10, 0);
    if (Mutable)
    {
      Count = CFDictionaryGetCount(v13);
      v4 = malloc(8 * Count);
      v16 = malloc(8 * Count);
      v5 = v16;
      if (v4)
      {
        if (v16)
        {
          CFDictionaryGetKeysAndValues(v13, v4, v16);
          if (Count >= 1)
          {
            v27 = 0;
            while (1)
            {
              v28 = v4[v27];
              if (!v28)
              {
                v47 = "invalid requestDictKeysBuffer array";
                goto LABEL_20;
              }

              if (!v5[v27])
              {
                break;
              }

              CFStringAppend(Mutable, v28);
              CFStringAppend(Mutable, @"=");
              CFStringAppend(Mutable, v5[v27]);
              if (v27 < Count - 1)
              {
                CFStringAppend(Mutable, @"&");
              }

              if (Count == ++v27)
              {
                goto LABEL_13;
              }
            }

            v47 = "invalid requestDictValuesBuffer array";
LABEL_20:
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", v47, v22, v23, v24, v25, v26, v49);
            v7 = 0;
            v6 = 0;
            v8 = 14;
            goto LABEL_17;
          }

LABEL_13:
          AMAuthInstallLog(8, "AMAuthInstallHttpCreatePostBody", "postString=%@", v22, v23, v24, v25, v26, Mutable);
          Length = CFStringGetLength(Mutable);
          v6 = malloc(Length + 1);
          if (v6)
          {
            if (!CFStringGetCString(Mutable, v6, Length + 1, 0x8000100u))
            {
              v8 = 3;
              AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "conversion of postString to c-string failed", v35, v36, v37, v38, v39, v50);
              v7 = 0;
              goto LABEL_17;
            }

            v40 = CFDataCreate(v14, v6, Length);
            v7 = v40;
            if (v40)
            {
              v8 = 0;
              *a3 = CFRetain(v40);
              goto LABEL_17;
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "postData allocation failed", v41, v42, v43, v44, v45, v50);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "tmpStringBuffer allocation failure", v30, v31, v32, v33, v34, v50);
            v7 = 0;
          }

LABEL_30:
          v8 = 2;
          goto LABEL_17;
        }

        v48 = "requestDictValuesBuffer allocation failed";
      }

      else
      {
        v48 = "requestDictKeysBuffer allocation failed";
      }

      AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", v48, v17, v18, v19, v20, v21, v49);
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_30;
  }

LABEL_17:
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeFree(v4);
  SafeFree(v5);
  SafeFree(v6);
  return v8;
}

uint64_t AMAuthInstallHttpSetUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFStringRef theString, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  v8 = 1;
  if (a2 && a3 && theString)
  {
    v11 = AMAuthInstallHttpUriEscapeString(a1, theString, &value, theString, a5, a6, a7, a8);
    if (v11)
    {
      v8 = v11;
      v18 = "AMAuthInstallHttpUriEscapeString failed";
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(a2, a3, value);
        v8 = 0;
        goto LABEL_7;
      }

      v18 = "escapedValue is NULL";
      v8 = 3;
    }

    AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", v18, v12, v13, v14, v15, v16, v19);
  }

LABEL_7:
  SafeRelease(value);
  return v8;
}

uint64_t AMAuthInstallHttpCreatePostRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, CFTypeRef *a4)
{
  Request = 0;
  theData = 0;
  v5 = 1;
  if (a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      PostBody = AMAuthInstallHttpCreatePostBody(a1, a3, &theData);
      if (PostBody)
      {
        v5 = PostBody;
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostRequest", "AMAuthInstallHttpCreatePostBody failed", v11, v12, v13, v14, v15, v18);
        Request = 0;
        v7 = 0;
      }

      else if (theData)
      {
        Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, *MEMORY[0x29EDB8528]);
        if (Request)
        {
          Length = CFDataGetLength(theData);
          v7 = CFStringCreateWithFormat(a1, 0, @"%ld", Length);
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v7);
          CFHTTPMessageSetBody(Request, theData);
          v5 = 0;
          *a4 = CFRetain(Request);
        }

        else
        {
          v7 = 0;
          v5 = 0;
        }
      }

      else
      {
        Request = 0;
        v7 = 0;
        v5 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(theData);
  SafeRelease(Request);
  SafeRelease(v7);
  SafeRelease(0);
  return v5;
}

uint64_t AMAuthInstallHttpSetBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDataRef theData, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theString = 0;
  v8 = 1;
  if (a2 && a3 && theData)
  {
    v12 = AMAuthInstallSupportBase64Encode(a1, theData, &theString, theData, a5, a6, a7, a8);
    if (v12)
    {
      v8 = v12;
      v19 = "Base64Encode failed";
    }

    else
    {
      v13 = theString;
      if (theString)
      {
        v8 = AMAuthInstallHttpSetUriEscapedValue(a1, a2, a3, theString, v14, v15, v16, v17);
        goto LABEL_7;
      }

      v19 = "encodedValue is NULL";
      v8 = 3;
    }

    AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", v19, v13, v14, v15, v16, v17, v20);
  }

LABEL_7:
  SafeRelease(theString);
  return v8;
}

uint64_t AMAuthInstallRestoreLocalPolicyCreateServerRequest(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  theDict = 0;
  if (_AMAuthInstallLocalPolicyCreateServerRequestBase(a1, a2, &theDict) || (v5 = *(*(a1 + 16) + 24)) == 0)
  {
    v6 = 1;
  }

  else
  {
    CFDictionarySetValue(theDict, @"ApNonce", v5);
    CFDictionarySetValue(theDict, @"Ap,LocalBoot", *MEMORY[0x29EDB8EF8]);
    v6 = 0;
    if (a3)
    {
      *a3 = CFRetain(theDict);
    }
  }

  SafeRelease(theDict);
  return v6;
}

uint64_t _AMAuthInstallLocalPolicyCreateServerRequestBase(uint64_t **a1, const void *a2, CFTypeRef *a3)
{
  if (a1 && (v6 = CFGetAllocator(a1), a1[2]))
  {
    v14 = v6;
    IsImg4 = AMAuthInstallApIsImg4(a1, v7, v8, v9, v10, v11, v12, v13);
    v16 = 0;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    if (a2 && IsImg4)
    {
      if (CFDataGetLength(a2) == 48)
      {
        v16 = OUTLINED_FUNCTION_0_5();
        v18 = CFDataCreate(v14, kLocalPolicyDigestSHA384, 48);
        CFDictionarySetValue(v16, @"Digest", v18);
        v20 = *MEMORY[0x29EDB8F00];
        CFDictionarySetValue(v16, @"Trusted", *MEMORY[0x29EDB8F00]);
        v19 = OUTLINED_FUNCTION_0_5();
        CFDictionarySetValue(v19, @"@ApImg4Ticket", v20);
        _CFDictionarySetInteger32(v19, @"ApChipID", *(a1[2] + 2));
        _CFDictionarySetInteger32(v19, @"ApBoardID", *(a1[2] + 3));
        _CFDictionarySetInteger64(v19, @"ApECID", *a1[2]);
        _CFDictionarySetBoolean(v19, @"ApProductionMode", *(a1[2] + 20));
        _CFDictionarySetInteger32(v19, @"ApSecurityDomain", *(a1[2] + 4));
        _CFDictionarySetBoolean(v19, @"ApSecurityMode", *(a1[2] + 88));
        CFDictionarySetValue(v19, @"Ap,LocalPolicy", v16);
        CFDictionarySetValue(v19, @"Ap,NextStageIM4MHash", a2);
        v17 = 0;
        if (a3)
        {
          *a3 = CFRetain(v19);
        }
      }

      else
      {
        v16 = 0;
        v18 = 0;
        v19 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 1;
  }

  SafeRelease(v19);
  SafeRelease(v18);
  SafeRelease(v16);
  return v17;
}

uint64_t AMAuthInstallRecoveryOSLocalPolicyCreateServerRequest(void *cf, const void *a2, const void *a3, const __CFUUID *a4, CFTypeRef *a5)
{
  if (cf)
  {
    v10 = CFGetAllocator(cf);
  }

  else
  {
    v10 = 0;
  }

  *&bytes.byte8 = 0;
  theDict = 0;
  *&bytes.byte0 = 0;
  ServerRequestBase = _AMAuthInstallLocalPolicyCreateServerRequestBase(cf, a2, &theDict);
  v12 = 0;
  v13 = 1;
  if (!ServerRequestBase)
  {
    if (a3)
    {
      if (a4)
      {
        bytes = CFUUIDGetUUIDBytes(a4);
        v12 = CFDataCreate(v10, &bytes.byte0, 16);
        CFDictionarySetValue(theDict, @"Ap,RecoveryOSPolicyNonceHash", a3);
        CFDictionarySetValue(theDict, @"Ap,VolumeUUID", v12);
        CFDictionarySetValue(theDict, @"Ap,LocalBoot", *MEMORY[0x29EDB8F00]);
        v13 = 0;
        if (a5)
        {
          *a5 = CFRetain(theDict);
        }
      }
    }
  }

  SafeRelease(v12);
  SafeRelease(theDict);
  return v13;
}

uint64_t AMAuthInstallLocalPolicyStitchTicketData(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = CFGetAllocator(a1);
  if (!a2)
  {
LABEL_9:
    v15 = 0;
    v16 = 1;
    goto LABEL_10;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a2, @"ApImg4Ticket");
  if (!Value)
  {
LABEL_8:
    a2 = 0;
    goto LABEL_9;
  }

  v8 = Value;
  a2 = CFDataCreate(v6, kLocalPolicyIM4P, 22);
  if (a2)
  {
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v6, a2, v8);
    v15 = StitchTicket;
    if (StitchTicket)
    {
      v16 = 0;
      if (a3)
      {
        *a3 = CFRetain(StitchTicket);
      }
    }

    else
    {
      v16 = 3;
      AMAuthInstallLog(3, "AMAuthInstallLocalPolicyStitchTicketData", "failed to stitch local policy object", v10, v11, v12, v13, v14, v18);
    }
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

LABEL_10:
  SafeRelease(v15);
  SafeRelease(a2);
  return v16;
}

void _DefaultLogHandler_cold_2()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_29849C000, v0, OS_LOG_TYPE_DEBUG, "%s", v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void _DefaultLogHandler_cold_3()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_29849C000, v0, OS_LOG_TYPE_DEBUG, "%{public}s", v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void _DefaultLogHandler_cold_4()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_29849C000, v0, OS_LOG_TYPE_ERROR, "%{public}s", v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

void _DefaultLogHandler_cold_5()
{
  v3 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(&dword_29849C000, v0, OS_LOG_TYPE_FAULT, "%{public}s", v2, 0xCu);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigest(CFNumberRef a1, __CFDictionary *a2, const __CFData *a3, CFDataRef theData, const void *a5, unsigned int a6, int a7, const void *a8, const void *a9)
{
  v13 = a3;
  v56 = *MEMORY[0x29EDCA608];
  memset(v55, 0, sizeof(v55));
  v16 = a3 + a6;
  v17 = *(v16 + 2);
  valuePtr = *(v16 + 1);
  Length = CFDataGetLength(theData);
  OUTLINED_FUNCTION_4_6(Length, v19, "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v20, v21, v22, v23, v24, Length);
  OUTLINED_FUNCTION_4_6(v25, v26, "version=0x%x, personalizationOffset=0x%x", v27, v28, v29, v30, v31, valuePtr);
  *bytes = a7 - v17;
  v54 = v17 + 80;
  *&v55[20] = v17 + a6;
  OUTLINED_FUNCTION_4_6(v32, v33, "reservationLength=0x%x, codeBytesHashed=0x%x (%s), downloadBytesHashed=0x%x (%s)", v34, v35, v36, v37, v38, a7 - v17);
  v39 = CFDataGetLength(theData);
  OUTLINED_FUNCTION_4_6(v39, v40, "personalization area=0x%x", v41, v42, v43, v44, v45, v39 - (a6 + a7));
  if ((((v17 + 80) | (v17 + a6)) & 0x3F) == 0)
  {
    image3SHA1Partial(a5, v17 + 80, v55);
    image3SHA1Partial(v13, *&v55[20], &v55[24]);
    v47 = CFGetAllocator(a1);
    v13 = CFDataCreate(v47, bytes, 52);
    if (v13)
    {
      v48 = CFGetAllocator(a1);
      a1 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
      if (a1)
      {
        CFDictionarySetValue(a2, a8, a1);
        CFDictionarySetValue(a2, a9, v13);
        v46 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      a1 = 0;
    }

    v46 = 2;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_4();
  v46 = 10;
LABEL_6:
  SafeRelease(a1);
  SafeRelease(v13);
  v49 = *MEMORY[0x29EDCA608];
  return v46;
}

uint64_t AMAuthInstallMonetMeasureEBootLoader(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  v48 = *MEMORY[0x29EDCA608];
  *bytes = 0;
  v46 = 0uLL;
  v47 = 0;
  valuePtr = 0;
  if (CFDataGetLength(theData) >= 0x28)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v11 = BytePtr;
    *(a1[6] + 4);
    if (!BytePtr)
    {
      v37 = 0;
      goto LABEL_6;
    }

    if (*(BytePtr + 4) <= CFDataGetLength(theData))
    {
      theDict = a3;
      Length = CFDataGetLength(theData);
      v13 = *(v11 + 5);
      v14 = (Length - *(v11 + 4));
      valuePtr = *(v11 + v14 + 4);
      v15 = *(v11 + v14 + 8);
      v16 = CFDataGetLength(theData);
      OUTLINED_FUNCTION_4_6(v16, v17, "%@: fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v18, v19, v20, v21, v22, a5);
      OUTLINED_FUNCTION_4_6(v23, v24, "%@: version=0x%x, personalizationOffset=0x%x", v25, v26, v27, v28, v29, a4);
      *bytes = v13 - v15;
      *&bytes[4] = v15 + v14;
      OUTLINED_FUNCTION_4_6(v30, v31, "%@: reservationLength=0x%x, codeBytesHashed=0x%x (%s)", v32, v33, v34, v35, v36, a5);
      if (((v15 + v14) & 0x3F) == 0)
      {
        image3SHA1Partial(v11, v15 + v14, &v46);
        v39 = CFGetAllocator(a1);
        v11 = CFDataCreate(v39, bytes, 28);
        if (v11)
        {
          v40 = CFGetAllocator(a1);
          v37 = CFNumberCreate(v40, kCFNumberSInt32Type, &valuePtr);
          if (v37)
          {
            CFDictionarySetValue(theDict, a4, v37);
            CFDictionarySetValue(theDict, a5, v11);
            v38 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v37 = 0;
        }

        v38 = 2;
        goto LABEL_10;
      }
    }
  }

  v37 = 0;
  v11 = 0;
LABEL_6:
  v38 = 10;
LABEL_10:
  SafeRelease(v37);
  SafeRelease(v11);
  v41 = *MEMORY[0x29EDCA608];
  return v38;
}

uint64_t AMAuthInstallMonetMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_43;
  }

  v6 = 0;
  v7 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          OUTLINED_FUNCTION_6_6(v9);
          if (v13)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_2_8();
          v13 = v13 || v12 == 938209;
          if (v13 || v12 == 1327329 || v12 == 1515745 || v12 == 1700065 || v12 == 2044129 || v12 == 2089185 || v12 == 2814177)
          {
            v20 = CFGetAllocator(v11);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA384(v20, a2, &value);
            goto LABEL_40;
          }

          OUTLINED_FUNCTION_11_0();
          v24 = v22 || v23 == 9781473;
          if (v24 || v23 == 9572577)
          {
LABEL_39:
            v26 = CFGetAllocator(v10);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA256(v26, a2, &value);
          }

          else
          {
            v28 = CFGetAllocator(v10);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData(v28, a2, &value);
          }

LABEL_40:
          v6 = value;
          if (DigestForData_SHA384)
          {
            v7 = DigestForData_SHA384;
          }

          else if (value)
          {
            CFDictionarySetValue(a3, a4, value);
            v7 = 0;
            v6 = value;
          }

          else
          {
            v7 = 2;
          }
        }
      }
    }
  }

LABEL_43:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallMonetMeasureElf(uint64_t *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  if (CFDataGetLength(theData) > 0x33 && (BytePtr = CFDataGetBytePtr(theData), *BytePtr == 1179403647))
  {
    v16 = *(BytePtr + 22);
    if (*(BytePtr + 22))
    {
      v17 = 0;
      v18 = 0;
      v19 = &BytePtr[*(BytePtr + 7)];
      do
      {
        if (*(v19 + 3) > v18 && (*(v19 + 6) & 0x7000000) != 0x5000000)
        {
          v18 = *(v19 + 3);
          v17 = v19;
        }

        v19 += 32;
        --v16;
      }

      while (v16);
      if (v17)
      {
        v20 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v20, 0);
        if (Mutable)
        {
          v22 = CFGetAllocator(a1);
          v23 = CFDataCreateMutable(v22, 0);
          if (v23)
          {
            OUTLINED_FUNCTION_6_6(a1[6]);
            if (!v25)
            {
              OUTLINED_FUNCTION_2_8();
              v25 = v25 || v24 == 938209;
              if (v25 || v24 == 1327329 || v24 == 1515745 || v24 == 1700065 || v24 == 2044129 || v24 == 2089185 || v24 == 2814177)
              {
                CFDataSetLength(Mutable, 48);
                CFDataGetBytePtr(theData);
                OUTLINED_FUNCTION_3_6();
                v32 = OUTLINED_FUNCTION_8_4();
                CC_SHA384(v32, v33, v34);
                CFDataSetLength(v23, 48);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v23);
                v35 = OUTLINED_FUNCTION_7_5();
                CC_SHA384(v35, v36, v37);
LABEL_48:
                CFDictionarySetValue(a3, a5, v23);
                CFDictionarySetValue(a3, a4, Mutable);
                v39 = 0;
                goto LABEL_49;
              }

              OUTLINED_FUNCTION_11_0();
              if (v40)
              {
                v42 = 1;
              }

              else
              {
                v42 = v41 == 9781473;
              }

              if (!v42 && v41 != 9572577)
              {
                CFDataSetLength(Mutable, 20);
                CFDataGetBytePtr(theData);
                OUTLINED_FUNCTION_3_6();
                v51 = OUTLINED_FUNCTION_8_4();
                CC_SHA1(v51, v52, v53);
                CFDataSetLength(v23, 20);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v23);
                v54 = OUTLINED_FUNCTION_7_5();
                CC_SHA1(v54, v55, v56);
                goto LABEL_48;
              }
            }

            CFDataSetLength(Mutable, 32);
            CFDataGetBytePtr(theData);
            OUTLINED_FUNCTION_3_6();
            v44 = OUTLINED_FUNCTION_8_4();
            CC_SHA256(v44, v45, v46);
            CFDataSetLength(v23, 32);
            CFDataGetBytePtr(theData);
            CFDataGetLength(theData);
            CFDataGetMutableBytePtr(v23);
            v47 = OUTLINED_FUNCTION_7_5();
            CC_SHA256(v47, v48, v49);
            goto LABEL_48;
          }
        }

        else
        {
          v23 = 0;
        }

        v39 = 2;
        goto LABEL_49;
      }
    }

    v38 = "file lacks a hash section";
  }

  else
  {
    v38 = "invalid file format";
  }

  AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", v38, v10, v11, v12, v13, v14, v57);
  Mutable = 0;
  v23 = 0;
  v39 = 10;
LABEL_49:
  SafeRelease(v23);
  SafeRelease(Mutable);
  return v39;
}

uint64_t AMAuthInstallMonetMeasureBootSbl(uint64_t *a1, CFDataRef theData, __CFDictionary *a3, uint64_t a4, const void *a5)
{
  BytePtr = CFDataGetBytePtr(theData);
  v11 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v14, v15, v16, v17, v18, 0);
LABEL_3:
    v24 = "_FindSbl1HeaderInFileData";
    v25 = "this file lacks sufficient magic";
    goto LABEL_4;
  }

  v27 = 0;
  v28 = 0;
  v29 = Length >> 2;
  v30 = v11 - 4;
  do
  {
    if (*(v30 + 1) == 1943474228)
    {
      ++v27;
      v28 = v30;
      if (*(v30 + 2) != 2097890138)
      {
        OUTLINED_FUNCTION_4_6(Length, v13, "found SBL header", v14, v15, v16, v17, v18, v38);
        OUTLINED_FUNCTION_4_6(v31, v32, "foundMagic=%d", v33, v34, v35, v36, v37, v27);
        v28 = v30;
        goto LABEL_13;
      }
    }

    v30 += 4;
    --v29;
  }

  while (v29);
  AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v14, v15, v16, v17, v18, v27);
  if (!v28)
  {
    goto LABEL_3;
  }

LABEL_13:
  if (CFDataGetLength(theData) < 0x50 || *(v28 + 7) > CFDataGetLength(theData))
  {
    return 10;
  }

  v21 = *(v28 + 5);
  if (v28 + 80 != &BytePtr[v21])
  {
    v24 = "AMAuthInstallMonetMeasureBootSbl";
    v25 = "junk following sbl1 header";
LABEL_4:
    AMAuthInstallLog(3, v24, v25, v19, v20, v21, v22, v23, v39);
    return 10;
  }

  return AMAuthInstallMonetSetVersionAndPartialDigestForSBL(a1, a3, BytePtr, theData, v28, v21, *(v28 + 8), a4, a5);
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigestForSBL(uint64_t *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int a6, int a7, uint64_t a8, const void *a9)
{
  v76 = *MEMORY[0x29EDCA608];
  v73 = 0;
  v75 = 0;
  v74 = 0uLL;
  v72 = 0;
  *bytes = 0u;
  v71 = 0u;
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v14 = *(a1[6] + 4);
  OUTLINED_FUNCTION_2_8();
  v19 = v19 || v18 == 938209;
  if (v19 || v18 == 1327329 || v18 == 1515745 || v18 == 1700065 || v18 == 2044129 || v18 == 2089185 || v18 == 2814177)
  {
    v65 = 128;
  }

  else
  {
    v65 = 64;
  }

  v26 = 0;
  valuePtr = 0;
  v27 = 1;
  if (!a2 || !v15 || !v16 || !a5 || !v17)
  {
    v28 = 0;
    goto LABEL_70;
  }

  v28 = 0;
  if (a9)
  {
    key = v17;
    v29 = v15 + a6;
    v30 = *(v29 + 8);
    valuePtr = *(v29 + 4);
    Length = CFDataGetLength(v16);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v32, v33, v34, v35, v36, Length);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "version=0x%x, personalizationOffset=0x%x", v37, v38, v39, v40, v41, valuePtr);
    LODWORD(v73) = a7 - v30;
    HIDWORD(v73) = v30 + 80;
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "reservationLength=0x%x, codeBytesHashed=0x%x (%s) byte_multiple=%d", v42, v43, v44, v45, v46, a7 - v30);
    if (((v30 + 80) & (v65 - 1)) != 0)
    {
      v26 = 0;
      v28 = 0;
      v27 = 10;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_6_6(a1[6]);
    if (v19)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_2_8();
    if (v19 || v47 == 938209 || v47 == 1327329 || v47 == 1515745 || v47 == 1700065 || v47 == 2044129 || v47 == 2089185 || v47 == 2814177)
    {
      *bytes = a7 - v30;
      *&bytes[4] = v30 + 80;
      _SHA384Partial(a5, 0, v68 + 8);
      v55 = CFGetAllocator(a1);
      v56 = v68;
      v57 = 72;
      goto LABEL_67;
    }

    OUTLINED_FUNCTION_11_0();
    v60 = v58 || v59 == 9781473;
    if (v60 || v59 == 9572577)
    {
LABEL_66:
      *bytes = a7 - v30;
      *&bytes[4] = v30 + 80;
      _SHA256Partial(a5, v30 + 80, &bytes[8]);
      v55 = CFGetAllocator(a1);
      v56 = bytes;
      v57 = 40;
    }

    else
    {
      image3SHA1Partial(a5, v30 + 80, &v74);
      v55 = CFGetAllocator(a1);
      v56 = &v73;
      v57 = 28;
    }

LABEL_67:
    v28 = CFDataCreate(v55, v56, v57);
    if (v28)
    {
      v62 = CFGetAllocator(a1);
      v26 = CFNumberCreate(v62, kCFNumberSInt32Type, &valuePtr);
      if (v26)
      {
        CFDictionarySetValue(a2, key, v26);
        CFDictionarySetValue(a2, a9, v28);
        v27 = 0;
        goto LABEL_70;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 2;
  }

LABEL_70:
  SafeRelease(v26);
  SafeRelease(v28);
  v63 = *MEMORY[0x29EDCA608];
  return v27;
}

uint64_t AMAuthInstallMonetStitchCopyIfPersonalized(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return OUTLINED_FUNCTION_1_12(v3);
}

uint64_t AMAuthInstallMonetMeasurePartitionTable(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  memset(&v13, 0, sizeof(v13));
  v5 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v5, 20);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v13);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v13, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    CC_SHA1_Final(MutableBytePtr, &v13);
    CFDictionarySetValue(a3, @"PartitionTable-Digest", v7);
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  SafeRelease(v7);
  return v11;
}

uint64_t AMAuthInstallMonetStitchPartitionTable(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return OUTLINED_FUNCTION_1_12(v3);
}

uint64_t AMAuthInstallBasebandSetDevelopmentFusingProgram(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(*(a1 + 176));
      AMAuthInstallLog(5, "AMAuthInstallBasebandSetDevelopmentFusingProgram", "Setting custom fusing program. Server will not be contacted to request fusing program.", v5, v6, v7, v8, v9, v11);
      v10 = CFRetain(a2);
      result = 0;
      *(a1 + 176) = v10;
      *(a1 + 184) = 256;
    }
  }

  return result;
}

uint64_t AMAuthInstallMonetFuseIfNecessary(uint64_t a1, void *a2, __CFDictionary *a3)
{
  v4 = a1;
  v72 = 0;
  error = 0;
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (!*(a1 + 48))
  {
LABEL_25:
    OUTLINED_FUNCTION_9_4();
LABEL_26:
    v32 = 0;
    v49 = 1;
    goto LABEL_36;
  }

  v3 = a2;
  IsFused = AMAuthInstallBasebandIsFused(a1, &v72);
  if (IsFused)
  {
LABEL_37:
    v49 = IsFused;
    goto LABEL_35;
  }

  if (v72 && *(v4[6] + 96) != 2)
  {
    if (v4[22])
    {
      v19 = CFGetAllocator(v4);
      v32 = OUTLINED_FUNCTION_10_3(v19, v20, v21, v22, v23, v24, v25, v26, v65, v68, v69, 0);
      if (v32)
      {
        CFDictionarySetValue(a3, @"fusingprogram.plist", v32);
LABEL_22:
        v49 = 0;
LABEL_23:
        OUTLINED_FUNCTION_9_4();
        goto LABEL_36;
      }

      v64 = "failed to convert fusing program to xml";
LABEL_41:
      v49 = 3;
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", v64, v27, v28, v29, v30, v31, v66);
      goto LABEL_23;
    }

    v49 = 0;
LABEL_35:
    OUTLINED_FUNCTION_9_4();
    v32 = 0;
    goto LABEL_36;
  }

  if (v4[53])
  {
    v12 = CFGetAllocator(v4);
    v68 = @"BbFactoryDebugEnable";
    ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v12, v4[53], @"%@.%@", v13, v14, v15, v16, v17, @"BbRequestEntries");
    if (!ValueForKeyWithFormat)
    {
      goto LABEL_24;
    }
  }

  else
  {
    ValueForKeyWithFormat = *MEMORY[0x29EDB8EF8];
    if (!*MEMORY[0x29EDB8EF8])
    {
LABEL_24:
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "baseband fusing is being attempted but the Factory Debug entitlement was not requested. Please enable Factory Debug to fuse.", v7, v8, v9, v10, v11, v65);
      goto LABEL_25;
    }
  }

  if (!CFBooleanGetValue(ValueForKeyWithFormat))
  {
    goto LABEL_24;
  }

  if (!*(v4 + 185))
  {
    if (*(v4 + 184))
    {
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "fusing program request prohibited", v7, v8, v9, v10, v11, v65);
      goto LABEL_46;
    }

    IsFused = AMAuthInstallFusingProgramRequest(v4, v33, v34, v7, v8, v9, v10, v11);
    if (IsFused)
    {
      goto LABEL_37;
    }
  }

  if (!v4[22])
  {
LABEL_46:
    OUTLINED_FUNCTION_9_4();
    v32 = 0;
    v49 = 14;
    goto LABEL_36;
  }

  v35 = CFGetAllocator(v4);
  v32 = OUTLINED_FUNCTION_10_3(v35, v36, v37, v38, v39, v40, v41, v42, v65, v68, v69, 0);
  if (!v32)
  {
    v66 = error;
    v64 = "failed to convert fusing program to xml %@";
    goto LABEL_41;
  }

  CFDictionarySetValue(a3, @"fusingprogram.plist", v32);
  SafeRelease(error);
  v48 = v4[6];
  if (*(v48 + 24) && *(v48 + 16))
  {
    AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and booted; will provide fusing program and fully personalized stack", v43, v44, v45, v46, v47, v67);
    goto LABEL_22;
  }

  v50 = CFGetAllocator(v4);
  DictionaryFromURL = BbfwCreateDictionaryFromURL(v50, v3, &theDict);
  if (DictionaryFromURL)
  {
    v49 = DictionaryFromURL;
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v3 = malloc(8 * Count);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  v4 = malloc(8 * Count);
  if (!v4)
  {
LABEL_44:
    v49 = 2;
    goto LABEL_36;
  }

  CFDictionaryGetKeysAndValues(theDict, v3, v4);
  if (Count >= 1)
  {
    v58 = v3;
    v59 = v4;
    do
    {
      v61 = *v58++;
      v60 = v61;
      v62 = *v59++;
      CFDictionarySetValue(a3, v60, v62);
      --Count;
    }

    while (Count);
  }

  AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and unbootable; will provide fusing program and unpersonalized stack", v53, v54, v55, v56, v57, v67);
  v49 = 0;
LABEL_36:
  SafeRelease(v32);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(error);
  return v49;
}

uint64_t AMAuthInstallMonetCopyNextComponentName(uint64_t a1)
{
  v6 = 0;
  if (!a1 || !*(a1 + 48))
  {
    return 1;
  }

  result = AMAuthInstallBasebandIsFused(a1, &v6);
  if (!result)
  {
    if (v6)
    {
      v3 = @"boot.bbfw";
    }

    else
    {
      v3 = @"preflash.bbfw";
    }

    if (*(*(a1 + 48) + 24))
    {
      v4 = @"stack.bbfw";
    }

    else
    {
      v4 = v3;
    }

    v5 = CFRetain(v4);
    return OUTLINED_FUNCTION_1_12(v5);
  }

  return result;
}

uint64_t AMAuthInstallMonetCreateReversedMEID(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  Length = CFDataGetLength(theData);
  v7 = 0;
  v8 = 1;
  if (theData && Length == 7)
  {
    v9 = 0;
    v10 = 6;
    do
    {
      bytes[v10--] = CFDataGetBytePtr(theData)[v9++];
    }

    while (v9 != 7);
    v11 = CFDataCreate(a1, bytes, 7);
    v7 = v11;
    if (v11)
    {
      v8 = 0;
      *a3 = CFRetain(v11);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallBasebandMAV25MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (v7)
    {
      v14 = OUTLINED_FUNCTION_1_6(v7, v8, @"acdb.mbn");
      if (!v14)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV25MeasureFirmware", "missing acdb or failed to measure image", v16, v17, v18, v19, v20, v34);
      }

      v21 = OUTLINED_FUNCTION_1_6(v14, v15, @"restorexbl_sc.elf");
      if (v21 && (v23 = OUTLINED_FUNCTION_1_6(v21, v22, @"Info.plist"), v23) && (v25 = OUTLINED_FUNCTION_1_6(v23, v24, @"xbl_sc.elf"), v25) && (v27 = OUTLINED_FUNCTION_1_6(v25, v26, @"multi_image.mbn"), v27) && (v29 = OUTLINED_FUNCTION_1_6(v27, v28, @"signed_firmware_soc_view.elf"), v29) && (v31 = OUTLINED_FUNCTION_1_6(v29, v30, @"Info.plist"), v31))
      {
        OUTLINED_FUNCTION_1_6(v31, v32, @"bbcfg.mbn");
        AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, a1, @"pt.mbn", AMAuthInstallMonetMeasurePT, v3, a3);
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25MeasureFirmware", "failed to open bbfw archive for reading", v9, v10, v11, v12, v13, v34);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV25StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"aop_devcfg.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"aop.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"apdp.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"apps.mbn");
      v17 = OUTLINED_FUNCTION_1_7(v16, @"bbcfg.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"cpucp.elf");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"devcfg.mbn");
      OUTLINED_FUNCTION_1_7(v19, @"hyp.mbn");
      v20 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v20, @"mdmddr.mbn");
      v21 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v22 = OUTLINED_FUNCTION_1_7(v21, @"multi_image_qti.mbn");
      v23 = OUTLINED_FUNCTION_1_7(v22, @"qdsp6sw.mbn");
      v24 = OUTLINED_FUNCTION_1_7(v23, @"qdsp6sw_dtbs.elf");
      OUTLINED_FUNCTION_1_7(v24, @"qupv3fw.elf");
      v25 = OUTLINED_FUNCTION_2(a1, @"restorexbl_sc.elf", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_1_7(v25, @"sec.elf");
      v26 = OUTLINED_FUNCTION_2(a1, @"sequencer_ram.elf", AMAuthInstallBasebandStitchCopyFile);
      OUTLINED_FUNCTION_1_7(v26, @"shrm.elf");
      v27 = OUTLINED_FUNCTION_2(a1, @"signed_firmware_soc_view.elf", AMAuthInstallMonetStitchTme);
      v28 = OUTLINED_FUNCTION_1_7(v27, @"tz.mbn");
      v29 = OUTLINED_FUNCTION_1_7(v28, @"uefi.elf");
      OUTLINED_FUNCTION_1_7(v29, @"xbl_cfg.elf");
      v30 = OUTLINED_FUNCTION_2(a1, @"xbl_sc.elf", AMAuthInstallMonetStitchSbl1);
      v31 = OUTLINED_FUNCTION_1_7(v30, @"xbl_support.elf");
      OUTLINED_FUNCTION_1_7(v31, @"pt.mbn");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v33);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallProvisioningCopyResponse(const __CFAllocator *a1, CFDataRef theData, const __CFNumber *NumberFromString, CFTypeRef *a4)
{
  v169 = *MEMORY[0x29EDCA608];
  theDataa = 0;
  v167 = 0u;
  memset(v168, 0, sizeof(v168));
  *buffer = 0u;
  v166 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = CFStringCreateWithBytes(a1, BytePtr, Length, 0x8000100u, 0);
  v16 = v10;
  if (!v10)
  {
    v24 = 0;
    OUTLINED_FUNCTION_6_7();
    Mutable = 0;
    v154 = 3;
    goto LABEL_52;
  }

  AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Response:%@", v11, v12, v13, v14, v15, v10);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v24 = 0;
    goto LABEL_65;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v16, @"&");
  v24 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    v157 = "responseParts is NULL";
    goto LABEL_62;
  }

  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (!Count)
  {
    v157 = "arrayCount is 0";
    goto LABEL_62;
  }

  v26 = Count;
  theDict = Mutable;
  alloc = a1;
  v159 = a4;
  valuePtr = NumberFromString;
  v161 = v16;
  if (Count >= 1)
  {
    a1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v24, a1);
      location = CFStringFind(ValueAtIndex, @"=", 0).location;
      if (location == -1)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "could not split parameter: %@", v29, v30, v31, v32, v33, ValueAtIndex);
      }

      else
      {
        v34 = location;
        v35 = CFStringGetLength(ValueAtIndex);
        NumberFromString = alloc;
        v171.location = 0;
        v171.length = v34;
        v36 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v171);
        v172.location = v34 + 1;
        v172.length = v35 + ~v34;
        v37 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v172);
        v43 = v37;
        if (v36 && v37)
        {
          CFDictionarySetValue(theDict, v36, v37);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to create key(%@) or value (%@)", v38, v39, v40, v41, v42, v36);
        }

        SafeRelease(v36);
        SafeRelease(v43);
      }

      a1 = (a1 + 1);
    }

    while (v26 != a1);
  }

  Mutable = theDict;
  Value = CFDictionaryGetValue(theDict, @"MEID");
  if (Value)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "MEID:%@", v45, v46, v47, v48, v49, Value);
  }

  v50 = CFDictionaryGetValue(theDict, @"IMEI");
  if (v50)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI:%@", v51, v52, v53, v54, v55, v50);
  }

  v56 = CFDictionaryGetValue(theDict, @"IMEI2");
  if (v56)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI2:%@", v57, v58, v59, v60, v61, v56);
  }

  v62 = CFDictionaryGetValue(theDict, @"EID");
  v16 = v161;
  if (v62)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "EID:%@", v63, v64, v65, v66, v67, v62);
  }

  v68 = CFDictionaryGetValue(theDict, @"WIFI_MAC");
  if (v68)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC:%@", v69, v70, v71, v72, v73, v68);
  }

  v74 = CFDictionaryGetValue(theDict, @"BT_MAC");
  if (v74)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC:%@", v75, v76, v77, v78, v79, v74);
  }

  v80 = CFDictionaryGetValue(theDict, @"USB_ETHER_MAC");
  if (v80)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "USB_ETHER_MAC:%@", v81, v82, v83, v84, v85, v80);
  }

  v86 = CFDictionaryGetValue(theDict, @"WIFI_MAC2");
  if (v86)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC2:%@", v87, v88, v89, v90, v91, v86);
  }

  v92 = CFDictionaryGetValue(theDict, @"BT_MAC2");
  if (v92)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC2:%@", v93, v94, v95, v96, v97, v92);
  }

  v98 = CFDictionaryGetValue(theDict, @"ETH_MAC");
  if (v98)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETH_MAC:%@", v99, v100, v101, v102, v103, v98);
  }

  v104 = CFDictionaryGetValue(theDict, @"ETHER_MAC2");
  if (v104)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC2:%@", v105, v106, v107, v108, v109, v104);
  }

  v110 = CFDictionaryGetValue(theDict, @"T_MAC");
  if (v110)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "T_MAC:%@", v111, v112, v113, v114, v115, v110);
  }

  v116 = CFDictionaryGetValue(theDict, @"ETHER_MAC3");
  if (v116)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC3:%@", v117, v118, v119, v120, v121, v116);
  }

  v122 = CFDictionaryGetValue(theDict, @"B64_SECDATA");
  if (v122)
  {
    v128 = AMAuthInstallSupportBase64Decode(*MEMORY[0x29EDB8ED8], v122, &theDataa, v123, v124, v125, v126, v127);
    if (v128)
    {
      v154 = v128;
      v157 = "AMAuthInstallSupportBase64Decode failed";
LABEL_63:
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", v157, v19, v20, v21, v22, v23, v158);
      OUTLINED_FUNCTION_6_7();
      goto LABEL_52;
    }

    if (theDataa)
    {
      if (CFDataGetLength(theDataa) > 0x4B)
      {
        v170.location = 0;
        v170.length = 76;
        CFDataGetBytes(theDataa, v170, buffer);
        if (!v168[6])
        {
          goto LABEL_49;
        }

        v129 = CFDataGetBytePtr(theDataa);
        v130 = CFDataCreate(alloc, v129 + 76, v168[6]);
        if (v130)
        {
          v136 = v130;
          CFDictionarySetValue(theDict, @"MANIFESTDATA", v130);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Found secure manifest in response: '%@'", v137, v138, v139, v140, v141, v136);
          CFRelease(v136);
          goto LABEL_49;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "tempData is NULL", v131, v132, v133, v134, v135, v158);
LABEL_65:
        OUTLINED_FUNCTION_6_7();
        v154 = 2;
        goto LABEL_52;
      }

      v157 = "decodedData is too small";
    }

    else
    {
      v157 = "decodedData is NULL";
    }

LABEL_62:
    v154 = 3;
    goto LABEL_63;
  }

  AMAuthInstallLog(6, "AMAuthInstallProvisioningCopyResponse", "B64_SECDATA not found in response", v123, v124, v125, v126, v127, v158);
LABEL_49:
  v142 = CFDictionaryGetValue(theDict, @"STATUS");
  if (v142)
  {
    v148 = v142;
    a1 = CFNumberFormatterCreate(alloc, 0, kCFNumberFormatterNoStyle);
    NumberFromString = CFNumberFormatterCreateNumberFromString(alloc, a1, v148, 0, 1uLL);
    if (CFNumberGetValue(NumberFromString, kCFNumberSInt32Type, valuePtr))
    {
      v154 = 0;
      *v159 = CFRetain(theDict);
    }

    else
    {
      v154 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to convert statusNumber", v149, v150, v151, v152, v153, v158);
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "statusString is NULL", v143, v144, v145, v146, v147, v158);
    OUTLINED_FUNCTION_6_7();
    v154 = 17;
  }

LABEL_52:
  SafeRelease(v16);
  SafeRelease(Mutable);
  SafeRelease(theDataa);
  SafeRelease(0);
  SafeRelease(v24);
  SafeRelease(NumberFromString);
  SafeRelease(a1);
  v155 = *MEMORY[0x29EDCA608];
  return v154;
}

uint64_t AMAuthInstallProvisioningPopulateRequestDict(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v7 = 0;
  theData = 0;
  ReversedMEIDFromString = 1;
  if (!a2 || !a1)
  {
    OUTLINED_FUNCTION_5_5();
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_5_5();
  if (v12)
  {
    if (*(a1 + 320))
    {
      v13 = v11;
      v14 = CFGetAllocator(a1);
      v19 = AMAuthInstallHttpSetUriEscapedValue(v14, v13, @"COMMAND_CODE", a3, v15, v16, v17, v18);
      if (v19)
      {
        goto LABEL_131;
      }

      if (CFStringCompare(a3, @"100", 0) == kCFCompareEqualTo)
      {
        CFDictionaryRemoveValue(*(a1 + 320), @"PINECRESTID");
      }

      v25 = CFGetAllocator(a1);
      v19 = AMAuthInstallHttpSetUriEscapedValue(v25, v13, @"TICKET_VERSION", @"2", v26, v27, v28, v29);
      if (v19)
      {
LABEL_131:
        ReversedMEIDFromString = v19;
        v363 = "setting COMMAND_CODE failed";
      }

      else
      {
        v30 = *(a1 + 48);
        v31 = MEMORY[0x29EDB8ED8];
        if (!v30)
        {
          v7 = 0;
LABEL_45:
          if (!*(a1 + 96) || (v118 = CFGetAllocator(a1), v123 = AMAuthInstallHttpSetUriEscapedValue(v118, v13, @"CLIENT_ID", *(a1 + 96), v119, v120, v121, v122), !v123))
          {
            Count = CFDictionaryGetCount(*(a1 + 320));
            v3 = malloc(8 * Count);
            v125 = malloc(8 * Count);
            v4 = v125;
            v5 = 0;
            ReversedMEIDFromString = 2;
            if (!v3 || !v125)
            {
              Mutable = 0;
              goto LABEL_125;
            }

            CFDictionaryGetKeysAndValues(*(a1 + 320), v3, v125);
            if (Count >= 1)
            {
              v131 = 0;
              while (v3[v131])
              {
                v132 = v4[v131];
                if (!v132)
                {
                  v362 = "invalid provisioningInfoValuesBuffer array";
                  goto LABEL_128;
                }

                v133 = CFGetTypeID(v132);
                CFDataGetTypeID();
                v134 = OUTLINED_FUNCTION_4_7();
                v139 = v3[v131];
                v140 = v4[v131];
                if (v133 == ReversedMEIDFromString)
                {
                  v141 = AMAuthInstallHttpSetBase64EncodedValue(v134, v13, v139, v140, v135, v136, v137, v138);
                }

                else
                {
                  v141 = AMAuthInstallHttpSetUriEscapedValue(v134, v13, v139, v140, v135, v136, v137, v138);
                }

                ReversedMEIDFromString = v141;
                if (v141)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting %@ failed", v126, v127, v128, v129, v130, v3[v131]);
                  v5 = 0;
                  Mutable = 0;
                  goto LABEL_125;
                }

                if (Count == ++v131)
                {
                  goto LABEL_58;
                }
              }

              v362 = "invalid provisioningInfoKeysBuffer array";
LABEL_128:
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v362, v126, v127, v128, v129, v130, v365);
              v5 = 0;
              Mutable = 0;
              ReversedMEIDFromString = 99;
              goto LABEL_125;
            }

LABEL_58:
            v142 = *v31;
            Mutable = CFArrayCreateMutable(v142, 0, MEMORY[0x29EDB9000]);
            CFArrayAppendValue(Mutable, @"1.2.0");
            LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
            if (CFStringGetLength(LibraryVersionString))
            {
              v144 = LibraryVersionString;
            }

            else
            {
              v144 = @"libauthinstall-???";
            }

            CFArrayAppendValue(Mutable, v144);
            v5 = CFStringCreateByCombiningStrings(v142, Mutable, @"-");
            v145 = CFGetAllocator(a1);
            v150 = AMAuthInstallHttpSetUriEscapedValue(v145, v13, @"VERSION", v5, v146, v147, v148, v149);
            if (v150)
            {
              ReversedMEIDFromString = v150;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting VERSION (%@) failed", v151, v152, v153, v154, v155, v5);
              goto LABEL_125;
            }

            v156 = *(a1 + 312);
            if (!v156)
            {
              goto LABEL_120;
            }

            Value = CFDictionaryGetValue(v156, @"MEID");
            if (Value)
            {
              if (OUTLINED_FUNCTION_1_13(Value, v158, v159, v160, v161, v162, v163, v164, v365, v367, cf) || !cf)
              {
                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid, adding original string to response", v165, v166, v167, v168, v169, v365);
                SafeRelease(cf);
                v178 = CFGetAllocator(a1);
                OUTLINED_FUNCTION_3_7(v178, v179, @"MEID", v180, v181, v182, v183, v184);
              }

              else
              {
                v170 = CFGetAllocator(a1);
                AMAuthInstallHttpSetBase64EncodedValue(v170, v13, @"B64_MEID", cf, v171, v172, v173, v174);
                CFRelease(cf);
                v175 = *(a1 + 48);
                if (v175)
                {
                  v176 = *(v175 + 32) != 0;
LABEL_73:
                  v185 = CFDictionaryGetValue(*(a1 + 312), @"IMEI");
                  if (v185)
                  {
                    if (OUTLINED_FUNCTION_1_13(v185, v186, v187, v188, v189, v190, v191, v192, v365, v367, cf) || !cf)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei, adding original string to response", v193, v194, v195, v196, v197, v365);
                      SafeRelease(cf);
                      v204 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v204, v205, @"IMEI", v206, v207, v208, v209, v210);
                    }

                    else
                    {
                      v198 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v198, v13, @"B64_IMEI", cf, v199, v200, v201, v202);
                      CFRelease(cf);
                      v203 = *(a1 + 48);
                      if (v203)
                      {
                        if (*(v203 + 40))
                        {
                          v176 = v176 | 0x100;
                        }

                        else
                        {
                          v176 = v176;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI");
                    CFDictionaryRemoveValue(v13, @"IMEI");
                  }

                  v211 = CFDictionaryGetValue(*(a1 + 312), @"IMEI2");
                  if (v211)
                  {
                    if (OUTLINED_FUNCTION_1_13(v211, v212, v213, v214, v215, v216, v217, v218, v365, v367, cf) || !cfa)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2, adding original string to response", v219, v220, v221, v222, v223, v366);
                      SafeRelease(cfa);
                      v230 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v230, v231, @"IMEI2", v232, v233, v234, v235, v236);
                    }

                    else
                    {
                      v224 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v224, v13, @"B64_IMEI2", cfa, v225, v226, v227, v228);
                      CFRelease(cfa);
                      v229 = *(a1 + 48);
                      if (v229)
                      {
                        if (*(v229 + 48))
                        {
                          v176 = v176 | 0x200;
                        }

                        else
                        {
                          v176 = v176;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI2");
                    CFDictionaryRemoveValue(v13, @"IMEI2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC"))
                  {
                    v237 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v237, v238, @"WIFI_MAC", v239, v240, v241, v242, v243);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC"))
                  {
                    v244 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v244, v245, @"BT_MAC", v246, v247, v248, v249, v250);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"USB_ETHER_MAC"))
                  {
                    v251 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v251, v252, @"USB_ETHER_MAC", v253, v254, v255, v256, v257);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC2"))
                  {
                    v258 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v258, v259, @"WIFI_MAC2", v260, v261, v262, v263, v264);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC2"))
                  {
                    v265 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v265, v266, @"BT_MAC2", v267, v268, v269, v270, v271);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETH_MAC"))
                  {
                    v272 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v272, v273, @"ETH_MAC", v274, v275, v276, v277, v278);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC2"))
                  {
                    v279 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v279, v280, @"ETHER_MAC2", v281, v282, v283, v284, v285);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"T_MAC"))
                  {
                    v286 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v286, v287, @"T_MAC", v288, v289, v290, v291, v292);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC3"))
                  {
                    v293 = OUTLINED_FUNCTION_4_7();
                    OUTLINED_FUNCTION_3_7(v293, v294, @"ETHER_MAC3", v295, v296, v297, v298, v299);
                  }

                  v300 = CFDictionaryGetValue(*(a1 + 312), @"PAICHUSUO");
                  if (v300)
                  {
                    AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO:%@", v301, v302, v303, v304, v305, v300);
                    v306 = CFDictionaryGetValue(*(a1 + 312), @"SN");
                    if (v306)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO SN:%@", v307, v308, v309, v310, v311, v306);
                      v312 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v312, v313, @"SN", v314, v315, v316, v317, v318);
                    }

                    v319 = CFDictionaryGetValue(*(a1 + 312), @"RGN");
                    if (v319)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO RGN:%@", v320, v321, v322, v323, v324, v319);
                      v325 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v325, v326, @"RGN", v327, v328, v329, v330, v331);
                    }

                    v332 = CFDictionaryGetValue(*(a1 + 312), @"MPN");
                    if (v332)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MPN:%@", v333, v334, v335, v336, v337, v332);
                      v338 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v338, v339, @"MPN", v340, v341, v342, v343, v344);
                    }

                    v345 = CFDictionaryGetValue(*(a1 + 312), @"MLB");
                    if (v345)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MLB:%@", v346, v347, v348, v349, v350, v345);
                      v351 = CFGetAllocator(a1);
                      OUTLINED_FUNCTION_3_7(v351, v352, @"MLB", v353, v354, v355, v356, v357);
                    }
                  }

                  v358 = CFGetAllocator(a1);
                  v359 = CFStringCreateWithFormat(v358, 0, @"0x%X", v176);
                  if (!v359)
                  {
                    ReversedMEIDFromString = 2;
                    goto LABEL_125;
                  }

                  v360 = v359;
                  CFDictionarySetValue(v13, @"STATUS1", v359);
                  CFRelease(v360);
LABEL_120:
                  ReversedMEIDFromString = 0;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              CFDictionaryRemoveValue(v13, @"B64_MEID");
              CFDictionaryRemoveValue(v13, @"MEID");
            }

            v176 = 0;
            goto LABEL_73;
          }

          ReversedMEIDFromString = v123;
          v364 = "setting CLIENT_ID failed";
          goto LABEL_142;
        }

        if (*(v30 + 16) && (v32 = CFGetAllocator(a1), v37 = AMAuthInstallHttpSetBase64EncodedValue(v32, v13, @"B64_BB_SNUM", *(*(a1 + 48) + 16), v33, v34, v35, v36), v37))
        {
          ReversedMEIDFromString = v37;
          v363 = "setting B64_BB_SNUM failed";
        }

        else
        {
          if (*(a1 + 312))
          {
            goto LABEL_18;
          }

          if (*(*(a1 + 48) + 72))
          {
            v38 = CFGetAllocator(a1);
            v43 = AMAuthInstallHttpSetBase64EncodedValue(v38, v13, @"B64_SESS_KEY", *(*(a1 + 48) + 72), v39, v40, v41, v42);
            if (v43)
            {
              ReversedMEIDFromString = v43;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SESS_KEY failed, '%@'", v20, v21, v22, v23, v24, *(*(a1 + 48) + 72));
              goto LABEL_133;
            }
          }

          KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &theData, v20, v21, v22, v23, v24);
          if (KeyHash)
          {
            ReversedMEIDFromString = KeyHash;
            v363 = "AMAuthInstallBasebandGetKeyHash failed";
          }

          else
          {
            if (!theData || (v45 = CFGetAllocator(a1), v50 = AMAuthInstallHttpSetBase64EncodedValue(v45, v13, @"B64_SKEY_HASH", theData, v46, v47, v48, v49), !v50))
            {
LABEL_18:
              v51 = CFGetAllocator(a1);
              v7 = CFDataCreate(v51, (*(a1 + 48) + 4), 4);
              if (v7)
              {
                v57 = CFGetAllocator(a1);
                v62 = AMAuthInstallHttpSetBase64EncodedValue(v57, v13, @"B64_BB_CHIPID", v7, v58, v59, v60, v61);
                if (v62)
                {
                  ReversedMEIDFromString = v62;
                  v364 = "setting B64_BB_CHIPID failed";
                }

                else
                {
                  v63 = *(a1 + 48);
                  if (v63[8])
                  {
                    v64 = CFGetAllocator(a1);
                    AMAuthInstallHttpSetUriEscapedValue(v64, v13, @"ICCID", *(*(a1 + 48) + 64), v65, v66, v67, v68);
                    v63 = *(a1 + 48);
                  }

                  if (v63[13])
                  {
                    v69 = CFGetAllocator(a1);
                    v74 = AMAuthInstallHttpSetUriEscapedValue(v69, v13, @"BB_CARRIERID", *(*(a1 + 48) + 104), v70, v71, v72, v73);
                    if (v74)
                    {
                      ReversedMEIDFromString = v74;
                      v364 = "setting BB_CARRIERID failed";
                      goto LABEL_142;
                    }

                    v63 = *(a1 + 48);
                  }

                  if (!v63[14])
                  {
                    goto LABEL_28;
                  }

                  v75 = CFGetAllocator(a1);
                  v80 = AMAuthInstallHttpSetBase64EncodedValue(v75, v13, @"MANIFESTDATA", *(*(a1 + 48) + 112), v76, v77, v78, v79);
                  if (!v80)
                  {
                    v63 = *(a1 + 48);
LABEL_28:
                    if (v63[4])
                    {
                      v81 = OUTLINED_FUNCTION_2_9();
                      ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v81, v82, v83);
                      if (ReversedMEIDFromString || !cf)
                      {
                        v177 = "failed to reverse meid";
                        goto LABEL_123;
                      }

                      v89 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v89, v13, @"B64_MEID", cf, v90, v91, v92, v93);
                      CFRelease(cf);
                      v63 = *(a1 + 48);
                    }

                    if (v63[5])
                    {
                      v94 = OUTLINED_FUNCTION_2_9();
                      ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v94, v95, v96);
                      if (ReversedMEIDFromString || !cf)
                      {
                        v177 = "failed to reverse imei";
                        goto LABEL_123;
                      }

                      v97 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v97, v13, @"B64_IMEI", cf, v98, v99, v100, v101);
                      CFRelease(cf);
                      v63 = *(a1 + 48);
                    }

                    if (!v63[6])
                    {
LABEL_40:
                      if (!v63[7])
                      {
                        goto LABEL_45;
                      }

                      v110 = OUTLINED_FUNCTION_2_9();
                      ReversedMEIDFromString = AMAuthInstallSupportCopyDataFromHexString(v110, v111, v112);
                      if (!ReversedMEIDFromString && cf)
                      {
                        v113 = CFGetAllocator(a1);
                        AMAuthInstallHttpSetBase64EncodedValue(v113, v13, @"B64_EID", cf, v114, v115, v116, v117);
                        CFRelease(cf);
                        goto LABEL_45;
                      }

                      v177 = "failed to create euiccEID data";
                      goto LABEL_123;
                    }

                    v102 = OUTLINED_FUNCTION_2_9();
                    ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v102, v103, v104);
                    if (!ReversedMEIDFromString && cf)
                    {
                      v105 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v105, v13, @"B64_IMEI2", cf, v106, v107, v108, v109);
                      CFRelease(cf);
                      v63 = *(a1 + 48);
                      goto LABEL_40;
                    }

                    v177 = "failed to reverse imei2";
LABEL_123:
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v177, v84, v85, v86, v87, v88, v365);
                    SafeRelease(cf);
LABEL_124:
                    v5 = 0;
                    Mutable = 0;
                    v3 = 0;
                    v4 = 0;
                    goto LABEL_125;
                  }

                  ReversedMEIDFromString = v80;
                  v364 = "setting MANIFESTDATA failed";
                }
              }

              else
              {
                v364 = "chipID failed to convert to data";
                ReversedMEIDFromString = 3;
              }

LABEL_142:
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v364, v52, v53, v54, v55, v56, v365);
              goto LABEL_124;
            }

            ReversedMEIDFromString = v50;
            v363 = "setting B64_SKEY_HASH failed";
          }
        }
      }

      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v363, v20, v21, v22, v23, v24, v365);
    }

LABEL_133:
    v7 = 0;
    goto LABEL_124;
  }

LABEL_125:
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(Mutable);
  return ReversedMEIDFromString;
}

uint64_t AMAuthInstallProvisioningServerSendSyncRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  *v35 = 0;
  v32 = 0;
  v33 = 0;
  v8 = 1;
  if (a3 && a4)
  {
    if (!a2)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "provisioning server url is NULL", a4, a5, a6, a7, a8, v30);
      goto LABEL_11;
    }

    PostRequest = AMAuthInstallHttpCreatePostRequest(a1, a2, a3, v35);
    if (!PostRequest)
    {
      PostRequest = AMAuthInstallHttpMessageSendSyncNew(a1, v35[0], &theData, &v32 + 4, 0, 15.0);
      if (!PostRequest)
      {
        if (!theData)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "no response data (httpStatus=%u)", v12, v13, v14, v15, v16, SBYTE4(v32));
          goto LABEL_17;
        }

        PostRequest = AMAuthInstallProvisioningCopyResponse(a1, theData, &v32, &v33);
        if (!PostRequest)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningServerSendSyncRequest", "httpStatus=%u, status=%d", v17, v18, v19, v20, v21, SBYTE4(v32));
          if (v32)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server error: %d", v22, v23, v24, v25, v26, v32);
            v8 = 24;
            goto LABEL_11;
          }

          v27 = v33;
          if (v33)
          {
            AMAuthInstallLog(6, "AMAuthInstallProvisioningServerSendSyncRequest", "data=%@", v22, v23, v24, v25, v26, v33);
            v28 = CFRetain(v27);
            v8 = 0;
            *a4 = v28;
            goto LABEL_11;
          }

          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server failed to provide response data", v22, v23, v24, v25, v26, v31);
LABEL_17:
          v8 = 17;
          goto LABEL_11;
        }
      }
    }

    v8 = PostRequest;
  }

LABEL_11:
  SafeRelease(0);
  SafeRelease(*v35);
  SafeRelease(theData);
  SafeRelease(v33);
  return v8;
}

uint64_t AMAuthInstallProvisioningSendAck(uint64_t cf, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  if (!cf)
  {
    Mutable = 0;
    v12 = 1;
    goto LABEL_13;
  }

  if (*(cf + 312))
  {
    v10 = @"200";
  }

  else
  {
    if (*(cf + 304) == 8)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "Provisioning failed, ack already sent.", a4, a5, a6, a7, a8, v36);
      Mutable = 0;
      v12 = 19;
      goto LABEL_13;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningSendAck", "No provisioning info to ack, sending ping.", a4, a5, a6, a7, a8, v36);
    v10 = @"1";
  }

  v13 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v14 = AMAuthInstallProvisioningPopulateRequestDict(cf, Mutable, v10);
    if (v14)
    {
      v12 = v14;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningPopulateRequestDict failed status=%d", v15, v16, v17, v18, v19, v14);
    }

    else
    {
      v20 = CFGetAllocator(cf);
      Value = a2;
      v21 = CFStringCreateWithFormat(v20, 0, @"0x%X");
      CFDictionarySetValue(Mutable, @"STATUS", v21);
      CFRelease(v21);
      v22 = CFGetAllocator(cf);
      v27 = AMAuthInstallProvisioningServerSendSyncRequest(v22, *(cf + 296), Mutable, &theDict, v23, v24, v25, v26);
      if (v27)
      {
        v12 = v27;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningServerSendSyncRequest failed status=%d", v28, v29, v30, v31, v32, v27);
      }

      else
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"STATUS");
          v33 = "Server returned STATUS=%@";
          v34 = 6;
        }

        else
        {
          v33 = "responseDict is NULL";
          v34 = 3;
        }

        AMAuthInstallLog(v34, "AMAuthInstallProvisioningSendAck", v33, v28, v29, v30, v31, v32, Value);
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 2;
  }

LABEL_13:
  SafeRelease(Mutable);
  SafeRelease(theDict);
  return v12;
}

uint64_t AMAuthInstallProvisioningSendRequest(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      v4 = 2;
      goto LABEL_9;
    }

    v9 = AMAuthInstallProvisioningPopulateRequestDict(a1, Mutable, a2);
    if (v9)
    {
      v4 = v9;
      v22 = "AMAuthInstallProvisioningPopulateRequestDict failed";
    }

    else
    {
      v15 = CFGetAllocator(a1);
      v20 = AMAuthInstallProvisioningServerSendSyncRequest(v15, *(a1 + 296), Mutable, a3, v16, v17, v18, v19);
      if (!v20)
      {
        if (*a3)
        {
          SafeRelease(*(a1 + 312));
          v4 = 0;
          *(a1 + 312) = CFRetain(*a3);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "*outResponseDict is NULL", v10, v11, v12, v13, v14, v23);
          v4 = 0;
        }

        goto LABEL_9;
      }

      v4 = v20;
      v22 = "AMAuthInstallProvisioningServerSendSyncRequest failed";
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", v22, v10, v11, v12, v13, v14, v23);
  }

LABEL_9:
  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestInfoPlist(void *a1, CFDataRef *a2)
{
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    v4 = 1;
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 1;
  if (a2 && a1[6])
  {
    v6 = a1[39];
    if (v6)
    {
      v7 = CFRetain(v6);
      theDict = v7;
      v4 = 99;
      if (v7)
      {
LABEL_6:
        Value = CFDictionaryGetValue(v7, @"MEID");
        v14 = CFDictionaryGetValue(theDict, @"IMEI");
        if (!(Value | v14))
        {
          v3 = 0;
          v4 = 17;
          v17 = "both imei and meid are NULL, provisioning failed.";
          goto LABEL_28;
        }

        v15 = v14;
        if (*(a1[6] + 48))
        {
          v16 = CFDictionaryGetValue(theDict, @"IMEI2");
          if (!v16)
          {
            v3 = 0;
            v4 = 17;
            v17 = "imei2 is NULL. provisioning failed.";
LABEL_28:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", v17, v8, v9, v10, v11, v12, v23);
            goto LABEL_20;
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v3 = Mutable;
        if (Mutable)
        {
          if (Value)
          {
            CFDictionarySetValue(Mutable, @"MEID", Value);
          }

          if (v15)
          {
            CFDictionarySetValue(v3, @"IMEI", v15);
          }

          if (v16)
          {
            CFDictionarySetValue(v3, @"IMEI2", v16);
          }

          v20 = CFGetAllocator(a1);
          XMLData = CFPropertyListCreateXMLData(v20, v3);
          *a2 = XMLData;
          if (!XMLData)
          {
            v4 = 3;
            v17 = "CFPropertyListCreateXMLData failed.";
            goto LABEL_28;
          }

          v4 = 0;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v4 = AMAuthInstallProvisioningSendRequest(a1, @"100", &theDict);
      if (v4)
      {
        v3 = 0;
        v17 = "AMAuthInstallProvisioningSendRequest failed";
        goto LABEL_28;
      }

      v7 = theDict;
      if (theDict)
      {
        goto LABEL_6;
      }
    }

    v3 = 0;
    v17 = "responseDict is NULL";
    goto LABEL_28;
  }

LABEL_20:
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestManifest(uint64_t a1, void *a2)
{
  v14 = 0;
  v2 = 1;
  if (a1 && a2)
  {
    if (*(a1 + 312))
    {
      v4 = CFRetain(*(a1 + 312));
      v14 = v4;
      v2 = 99;
      if (v4)
      {
LABEL_5:
        Value = CFDictionaryGetValue(v4, @"MANIFESTDATA");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
          v2 = 0;
          goto LABEL_7;
        }

        v12 = "*manifestData is NULL";
LABEL_12:
        AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", v12, v5, v6, v7, v8, v9, v13);
        goto LABEL_7;
      }
    }

    else
    {
      v2 = AMAuthInstallProvisioningSendRequest(a1, @"100", &v14);
      if (v2)
      {
        v12 = "AMAuthInstallProvisioningSendRequest failed";
        goto LABEL_12;
      }

      v4 = v14;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v12 = "responseDict is NULL";
    goto LABEL_12;
  }

LABEL_7:
  SafeRelease(v14);
  return v2;
}

uint64_t AMAuthInstallProvisioningProvisionIfNecessary(uint64_t a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  v88 = 0;
  v86 = 0;
  if (!a1)
  {
    v63 = 1;
    goto LABEL_76;
  }

  v10 = 1;
  if (!a2)
  {
    goto LABEL_73;
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_73;
  }

  v12 = *(a1 + 304);
  if (v12 > 0xB)
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Unexpected provisioning state = %d", a4, a5, a6, a7, a8, *(a1 + 304));
    v10 = 99;
    goto LABEL_73;
  }

  v13 = 1 << v12;
  if ((v13 & 0xF81) != 0)
  {
LABEL_72:
    v10 = 0;
    goto LABEL_73;
  }

  if ((v13 & 0x26) == 0)
  {
    if (*(v11 + 72))
    {
      v39 = *(v11 + 4);
      if (v39 != 94)
      {
        v40 = v39 == 104 || v39 == 241889;
        v41 = v40 || v39 == 520417;
        v42 = v41 || v39 == 938209;
        v43 = v42 || v39 == 1327329;
        v44 = v43 || v39 == 1515745;
        v45 = v44 || v39 == 1700065;
        v46 = v45 || v39 == 2044129;
        v47 = v46 || v39 == 2089185;
        v48 = v47 || v39 == 2814177;
        v49 = v48 || v39 == 8343777;
        v50 = v49 || v39 == 9572577;
        v51 = v50 || v39 == 9781473;
        if (!v51 && !*(a1 + 328) && (*(v11 + 32) || *(v11 + 40) || *(v11 + 48)))
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Performing local re-lock", a4, a5, a6, a7, a8, v83);
          v77 = AMAuthInstallBasebandLocalProvisionDevice(a1, &v86);
          if (v77)
          {
            v10 = v77;
            OUTLINED_FUNCTION_7_6();
            v81 = "AMAuthInstallMonetLocalProvisionDevice failed";
            goto LABEL_106;
          }

          if (v86)
          {
            *(a1 + 304) = 6;
LABEL_96:
            CFDictionaryRemoveAllValues(a2);
            CFDictionarySetValue(a2, @"provisioning/manifest.bin", v86);
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_7_6();
LABEL_120:
          AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "manifestData is NULL", v22, v23, v24, v25, v26, v83);
          v10 = 14;
          goto LABEL_73;
        }
      }

      if (*(v11 + 96) == 3)
      {
        AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Requesting manifest from server (%@)", a4, a5, a6, a7, a8, *(a1 + 296));
        v78 = AMAuthInstallProvisioningRequestManifest(a1, &v86);
        *(a1 + 304) = 4;
        if (v78)
        {
          v10 = v78;
          v81 = "AMAuthInstallProvisioningRequestManifest failed";
          goto LABEL_106;
        }

        if (v86)
        {
          goto LABEL_96;
        }

        goto LABEL_120;
      }

      v52 = "Cannot provision unfused boards";
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      v52 = "encryptedSessionKey is NULL";
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", v52, a4, a5, a6, a7, a8, v83);
    v10 = 19;
    goto LABEL_73;
  }

  v14 = *(v11 + 88);
  if (v14 && CFBooleanGetValue(v14) == 1)
  {
    if (*(a1 + 328) || *(a1 + 329))
    {
      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Force provisioning is enabled; provisioning anyway.", v16, v17, v18, v19, v20, v83);
    }

    else
    {
      v80 = AMAuthInstallProvisioningSendAck(a1, 0, v15, v16, v17, v18, v19, v20);
      if (v80 != 24)
      {
        v10 = v80;
        if (!v80)
        {
          *(a1 + 304) = 7;
          v81 = "Existing provisioning manifest found. Not attempting to provision.";
          v82 = 5;
LABEL_107:
          AMAuthInstallLog(v82, "AMAuthInstallProvisioningProvisionIfNecessary", v81, v22, v23, v24, v25, v26, v83);
          goto LABEL_73;
        }

        v81 = "Provisioning server failed to respond, cannot provision.";
LABEL_106:
        v82 = 3;
        goto LABEL_107;
      }

      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "provisioning ack failed, enabling force provisioning.", v22, v23, v24, v25, v26, v83);
      *(a1 + 328) = 1;
    }
  }

  v21 = *(*(a1 + 48) + 80);
  if (!v21)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    if (!Mutable)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "emptyData is NULL", v54, v55, v56, v57, v58, v83);
      v10 = 2;
      goto LABEL_73;
    }

    v59 = Mutable;
    CFDictionarySetValue(a2, @"provisioning/", Mutable);
    CFRelease(v59);
    v60 = "Baseband not reporting manifest status, not attempting to provision yet.";
    goto LABEL_70;
  }

  if (CFBooleanGetValue(v21) != 1)
  {
    v61 = *(a1 + 48);
    if (v61[4] || v61[5] || v61[6])
    {
      if (!*(a1 + 328))
      {
        *(a1 + 304) = 7;
        v60 = "Device already has MEID and/or IMEI and/or IMEI2. Bringup provisioning complete. Not attempting to provision.";
        goto LABEL_70;
      }

      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Device already has MEID and/or IMEI and/or IMEI2. Force provisioning is enabled requesting new values.", v22, v23, v24, v25, v26, v83);
    }

    v79 = AMAuthInstallProvisioningRequestInfoPlist(a1, &v88);
    *(a1 + 304) = 5;
    if (v79)
    {
      v10 = v79;
      v81 = "AMAuthInstallProvisioningRequestInfoPlist failed";
      goto LABEL_106;
    }

    if (!v88)
    {
      v60 = "info.plist is NULL";
      v62 = 3;
      goto LABEL_71;
    }

    CFDictionarySetValue(a2, @"provisioning/info.plist", v88);
    v60 = "Bringup baseband found, doing single stage provisioning";
LABEL_70:
    v62 = 5;
LABEL_71:
    AMAuthInstallLog(v62, "AMAuthInstallProvisioningProvisionIfNecessary", v60, v22, v23, v24, v25, v26, v83);
    goto LABEL_72;
  }

  v85 = 0;
  v27 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
  if (!v27)
  {
    if (!*(a1 + 328))
    {
      v65 = *(a1 + 48);
      if (v65[4] || v65[5] || v65[6])
      {
        AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Local re-locking enabled. Forcing use of P1 provisioning key.", v28, v29, v30, v31, v32, v83);
        v10 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
LABEL_84:
        v38 = value;
LABEL_85:
        if (v38)
        {
          CFDictionarySetValue(a2, @"provisioning/puk.pem", v38);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Mature baseband found, doing two stage provisioning", v72, v73, v74, v75, v76, v83);
          v10 = 0;
          *(a1 + 304) = 2;
          goto LABEL_73;
        }

        goto LABEL_111;
      }
    }

    if (_AMAuthInstallSupportsECProvision(a1))
    {
      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "ECDH Server based provisioning enabled. Creating empty puk.pem file for BBUpdater", v33, v34, v35, v36, v37, v83);
      *bytes = -272716322;
      v38 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 4);
      v10 = 0;
      value = v38;
      goto LABEL_85;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "LEGACY Server based provisioning enabled. Reading provisioning key from settings.", v33, v34, v35, v36, v37, v83);
    KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &v85, v66, v67, v68, v69, v70);
    if (KeyHash)
    {
      v10 = KeyHash;
    }

    else if (v85)
    {
      v10 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
      if (!v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_111:
    OUTLINED_FUNCTION_7_6();
    goto LABEL_106;
  }

  v10 = v27;
LABEL_73:
  if (*(a1 + 304) == 8)
  {
    v63 = 19;
  }

  else
  {
    v63 = v10;
  }

LABEL_76:
  SafeRelease(0);
  SafeRelease(v88);
  SafeRelease(value);
  SafeRelease(v86);
  return v63;
}

uint64_t AMAuthInstallProvisioningEnable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 304) = a2 != 0;
  return result;
}

uint64_t AMAuthInstallProvisioningAPOnlyEnable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  if (a2)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 304) = v4;
  return result;
}

uint64_t AMAuthInstallProvisioningSetServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(*(a1 + 296));
      *(a1 + 296) = CFRetain(a2);
      AMAuthInstallLog(5, "AMAuthInstallProvisioningSetServerURL", "provisioning server: %@", v5, v6, v7, v8, v9, a2);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningGetProvisionedInfo(uint64_t a1, CFTypeRef *a2)
{
  v2 = 1;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = *(a1 + 312);
  if (v5)
  {
    v2 = 0;
    *a2 = v5;
    return v2;
  }

  if ((*(a1 + 304) | 8) != 9)
  {
    v2 = 0;
LABEL_7:
    *a2 = 0;
    return v2;
  }

  Value = CFDictionaryGetValue(*(a1 + 320), @"WIFI_MAC");
  v8 = CFDictionaryGetValue(*(a1 + 320), @"BT_MAC");
  v9 = CFDictionaryGetValue(*(a1 + 320), @"USB_ETHER_MAC");
  if (Value)
  {
    v15 = 0;
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v16 = *(a1 + 330) == 0;
    goto LABEL_14;
  }

  v15 = *(a1 + 332) == 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  v16 = 0;
LABEL_14:
  v17 = v16 || v15;
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a1 + 331) == 0;
  }

  v19 = v17 | v18;
  if (*(a1 + 328) || v19)
  {
    if (v19)
    {
      v29 = "YES";
    }

    else
    {
      v29 = "NO";
    }

    v39 = v29;
    v30 = "Forcing reprovisioning.  macAddressMissing=%s";
    v31 = 6;
  }

  else
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningGetProvisionedInfo", "AP: already fully provisioned, sending ACK", v10, v11, v12, v13, v14, v38);
    v26 = AMAuthInstallProvisioningSendAck(a1, 0, v20, v21, v22, v23, v24, v25);
    v2 = v26;
    if (!v26)
    {
      v27 = "AP: ACK successful. Not attempting to provision.";
      v28 = 5;
      goto LABEL_30;
    }

    if (v26 != 24)
    {
      v27 = "AP: provisioning server failed to respond, cannot provision.";
      v28 = 3;
LABEL_30:
      AMAuthInstallLog(v28, "AMAuthInstallProvisioningGetProvisionedInfo", v27, v10, v11, v12, v13, v14, v39);
      goto LABEL_7;
    }

    v30 = "AP: provisioning ack failed, sending provisioning request.";
    v31 = 5;
  }

  AMAuthInstallLog(v31, "AMAuthInstallProvisioningGetProvisionedInfo", v30, v10, v11, v12, v13, v14, v39);
  v32 = AMAuthInstallProvisioningSendRequest(a1, @"100", a2);
  if (v32)
  {
    v2 = v32;
    AMAuthInstallLog(3, "AMAuthInstallProvisioningGetProvisionedInfo", "AMAuthInstallProvisioningSendRequest failed", v33, v34, v35, v36, v37, v40);
  }

  else if (*a2)
  {
    return 0;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningGetProvisionedInfo", "*outInfo is NULL", v33, v34, v35, v36, v37, v40);
    return 14;
  }

  return v2;
}

uint64_t AMAuthInstallProvisioningSetInfo(CFTypeRef *a1, const __CFDictionary *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      SafeRelease(a1[40]);
      v5 = CFGetAllocator(a1);
      a1[40] = CFDictionaryCreateMutableCopy(v5, 0, a2);
      AMAuthInstallLog(5, "AMAuthInstallProvisioningSetInfo", "provisioning info: %@", v6, v7, v8, v9, v10, a2);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningSetItem(uint64_t a1, void *key, const void *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3)
  {
    v5 = key;
    if (key)
    {
      v6 = *(a1 + 320);
      if (v6)
      {
        CFDictionarySetValue(v6, key, a3);
        AMAuthInstallLog(5, "AMAuthInstallProvisioningSetItem", "adding %@ to provisioning info", v7, v8, v9, v10, v11, v5);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningForceServer(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 328) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningForceLocal(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 329) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingBMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 330) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingEMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 331) = a2;
  return result;
}

uint64_t AMAuthInstallProvisioningAllowMissingWMac(uint64_t a1, char a2)
{
  if (!a1)
  {
    return AMAuthInstallBasebandICE3SupportsServerSigning();
  }

  result = 0;
  *(a1 + 332) = a2;
  return result;
}

uint64_t AMAuthInstallRembrandtMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  if (!a1)
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v13 = *(a1 + 48);
        if (v13)
        {
          if ((*(v13 + 4) - 94) <= 0xA)
          {
            OUTLINED_FUNCTION_0_7();
            if (!v16)
            {
              v17 = CFGetAllocator(v14);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA256(v17, a2, &value);
              goto LABEL_11;
            }

            if ((v15 & 0x401) != 0)
            {
              v19 = CFGetAllocator(v14);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA384(v19, a2, &value);
LABEL_11:
              v11 = DigestForData_SHA256;
              v10 = value;
              if (!DigestForData_SHA256)
              {
                if (value)
                {
                  CFDictionarySetValue(a3, a4, value);
                  v11 = 0;
                  v10 = value;
                }

                else
                {
                  v11 = 2;
                }
              }

              goto LABEL_14;
            }
          }

          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootImage", "Unknown chipid", a4, a5, a6, a7, a8, v21);
          v10 = 0;
          v11 = 99;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v10);
  return v11;
}

uint64_t AMAuthInstallRembrandtMeasureElf(void *a1, const __CFData *a2, __CFDictionary *a3, const void *a4, void *a5)
{
  memset(&c, 0, sizeof(c));
  bzero(&v47, 0xD0uLL);
  if (CFDataGetLength(a2) <= 0x33 || (BytePtr = CFDataGetBytePtr(a2), *BytePtr != 1179403647))
  {
    v44 = "invalid file format";
LABEL_16:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", v44, v10, v11, v12, v13, v14, v45);
    Mutable = 0;
    v31 = 0;
    v42 = 10;
    goto LABEL_13;
  }

  v16 = BytePtr;
  v17 = &BytePtr[*(BytePtr + 7)];
  if ((v17[6] & 0x7000000) == 0x4000000)
  {
    v44 = "file lacks a hash section";
    goto LABEL_16;
  }

  v18 = CFDataGetBytePtr(a2);
  v19 = v17[1];
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallRembrandtMeasureElf", "hash section", &v18[v19], v17[4], v20, v21, v22);
  v23 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v23, 0);
  if (!Mutable)
  {
    v31 = 0;
    goto LABEL_18;
  }

  key = a5;
  v25 = CFGetAllocator(a1);
  v31 = CFDataCreateMutable(v25, 0);
  if (!v31)
  {
LABEL_18:
    v42 = 2;
    goto LABEL_13;
  }

  if ((*(a1[6] + 4) - 94) > 0xA)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_7();
  if (v33)
  {
    if ((v32 & 0x401) != 0)
    {
      CFDataSetLength(Mutable, 48);
      CC_SHA384_Init(&v47);
      CC_SHA384_Update(&v47, v16, v16[20]);
      CC_SHA384_Update(&v47, v17, v16[21] * v16[22]);
      CC_SHA384_Update(&v47, &v18[v19], v17[4]);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      CC_SHA384_Final(MutableBytePtr, &v47);
      CFDataSetLength(v31, 48);
      v39 = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      v41 = CFDataGetMutableBytePtr(v31);
      CC_SHA384(v39, Length, v41);
      goto LABEL_12;
    }

LABEL_11:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "Unknown chipid", v26, v27, v28, v29, v30, v45);
    goto LABEL_12;
  }

  CFDataSetLength(Mutable, 32);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v16, v16[20]);
  CC_SHA256_Update(&c, v17, v16[21] * v16[22]);
  CC_SHA256_Update(&c, &v18[v19], v17[4]);
  v34 = CFDataGetMutableBytePtr(Mutable);
  CC_SHA256_Final(v34, &c);
  CFDataSetLength(v31, 32);
  v35 = CFDataGetBytePtr(a2);
  v36 = CFDataGetLength(a2);
  v37 = CFDataGetMutableBytePtr(v31);
  CC_SHA256(v35, v36, v37);
LABEL_12:
  CFDictionarySetValue(a3, key, v31);
  CFDictionarySetValue(a3, a4, Mutable);
  v42 = 0;
LABEL_13:
  SafeRelease(v31);
  SafeRelease(Mutable);
  return v42;
}

uint64_t AMAuthInstallRembrandtMeasureBootPSI(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const __CFString *a5)
{
  v5 = 0;
  v63 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  v62 = 0;
  bytes = 0u;
  v61 = 0u;
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v6 = 1;
  if (!a1 || !theData)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v9 = 0;
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v14 = BytePtr[4];
    v15 = BytePtr[5];
    v17 = BytePtr[9];
    v16 = BytePtr[10];
    Length = CFDataGetLength(theData);
    v24 = *(a1[6] + 4);
    if (v24 == 96)
    {
      if (Length <= v15)
      {
        AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v15);
LABEL_44:
        v6 = 0;
        v5 = 0;
        v9 = 0;
        goto LABEL_36;
      }
    }

    else if (Length <= v17)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk2_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v17);
      goto LABEL_44;
    }

    if (Length <= v16)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "signature_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v16);
      goto LABEL_44;
    }

    if (Length != v14)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "size %d != sizeToMeasure %lld", v19, v20, v21, v22, v23, v14);
      goto LABEL_44;
    }

    v25 = v24 == 104 || v24 == 94;
    if (v25)
    {
      v26 = 36;
    }

    else
    {
      v26 = 52;
    }

    if (v25)
    {
      v27 = 127;
    }

    else
    {
      v27 = 63;
    }

    if (v25)
    {
      v28 = -92;
    }

    else
    {
      v28 = -76;
    }

    if ((v24 - 94) <= 0xA)
    {
      v29 = v16 + v28 - ((v16 + v26) & v27);
      OUTLINED_FUNCTION_0_7();
      if (!v25)
      {
        goto LABEL_32;
      }

      if ((v30 & 0x401) != 0)
      {
        if (CFStringCompare(@"PSI2-PartialDigest", a5, 0) && CFStringCompare(@"RestorePSI2-PartialDigest", a5, 0))
        {
          AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA384 to hash %@", v31, v32, v33, v34, v35, a4);
          v36 = CFDataGetBytePtr(theData);
          bzero(&c, 0xD0uLL);
          CC_SHA384_Init(&c);
          CC_SHA384_Update(&c, v36, v29);
          for (i = 0; i != 64; i += 16)
          {
            *&v58[i / 4 + 2] = vrev64q_s8(*&c.hash[i / 8]);
          }

          v58[0] = v16 - v29;
          v58[1] = v29;
          v38 = CFGetAllocator(a1);
          p_bytes = v58;
          v40 = 72;
LABEL_33:
          v9 = CFDataCreate(v38, p_bytes, v40);
          if (v9)
          {
            CFDictionarySetValue(a3, a5, v9);
            valuePtr = *(CFDataGetBytePtr(theData) + 1024);
            AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "%@: version=0x%x", v47, v48, v49, v50, v51, a4);
            v52 = CFGetAllocator(a1);
            v5 = CFNumberCreate(v52, kCFNumberSInt32Type, &valuePtr);
            if (v5)
            {
              CFDictionarySetValue(a3, a4, v5);
              v6 = 0;
              goto LABEL_36;
            }

LABEL_39:
            v6 = 2;
            goto LABEL_36;
          }

LABEL_38:
          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "%s CFDataCreate failed", v42, v43, v44, v45, v46, "AMAuthInstallRembrandtMeasureBootPSI");
          v5 = 0;
          v9 = 0;
          goto LABEL_39;
        }

        AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA256 to hash %@", v31, v32, v33, v34, v35, a4);
LABEL_32:
        v41 = CFDataGetBytePtr(theData);
        _SHA256Partial(v41, v29, (&bytes + 8));
        LODWORD(bytes) = v16 - v29;
        DWORD1(bytes) = v29;
        v38 = CFGetAllocator(a1);
        p_bytes = &bytes;
        v40 = 40;
        goto LABEL_33;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "Unknown chipid", v19, v20, v21, v22, v23, v55);
    goto LABEL_38;
  }

LABEL_36:
  SafeRelease(v9);
  SafeRelease(v5);
  v53 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AMAuthInstallRembrandtLocalCreateSigningResponse(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  valuePtr = 0;
  v81 = 0;
  value = 0;
  v79 = 0;
  v80 = 0;
  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "Failed to allocate responseDict", v12, v13, v14, v15, v16, v75);
    OUTLINED_FUNCTION_2_10();
LABEL_61:
    v29 = 2;
    goto LABEL_48;
  }

  v18 = AMAuthInstallRembrandtLocalRegisterKeys(a1, v10, v11, v12, v13, v14, v15, v16);
  if (v18)
  {
    v29 = v18;
    OUTLINED_FUNCTION_2_10();
    goto LABEL_48;
  }

  v19 = CFDictionaryGetValue(a2, @"BbSNUM");
  if (!v19 || (v3 = v19, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing SNUM";
    goto LABEL_36;
  }

  v25 = CFDictionaryGetValue(a2, @"BbChipID");
  if (!v25 || (v3 = v25, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing chipid";
    goto LABEL_36;
  }

  if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
  {
    v60 = "failed to read chipid";
LABEL_36:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", v60, v20, v21, v22, v23, v24, v75);
    OUTLINED_FUNCTION_2_10();
LABEL_37:
    v29 = 1;
    goto LABEL_48;
  }

  v26 = CFDictionaryGetValue(a2, @"BbGoldCertId");
  if (!v26 || (v3 = v26, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing certid";
    goto LABEL_36;
  }

  v27 = CFDictionaryGetValue(a2, @"BasebandFirmware");
  if (!v27 || (v5 = v27, v3 = CFDictionaryGetTypeID(), v3 != CFGetTypeID(v5)))
  {
    v60 = "bad or missing baseband firmware dict";
    goto LABEL_36;
  }

  v28 = CFGetAllocator(a1);
  v29 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v28, a2, 2uLL);
  v3 = DeepCopy;
  if (!DeepCopy)
  {
    v5 = 0;
    TypeID = 0;
    goto LABEL_48;
  }

  v31 = CFDictionaryGetValue(DeepCopy, @"BasebandFirmware");
  v32 = CFGetAllocator(a1);
  TypeID = CFDictionaryCreateMutable(v32, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!TypeID)
  {
    v5 = 0;
    goto LABEL_61;
  }

  theDict = v31;
  CFDictionarySetValue(Mutable, @"BasebandFirmware", TypeID);
  v33 = CFDictionaryGetValue(v5, @"PSI-PartialDigest");
  if (v33)
  {
    v34 = CFDataGetTypeID();
    if (v34 != CFGetTypeID(v33))
    {
      goto LABEL_53;
    }

    PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v33, &value);
    if (PSIStitchData)
    {
LABEL_56:
      v29 = PSIStitchData;
      v5 = 0;
      goto LABEL_48;
    }

    CFDictionarySetValue(TypeID, @"PSI-Blob", value);
  }

  v36 = CFDictionaryGetValue(v5, @"RestorePSI-PartialDigest");
  if (!v36)
  {
    goto LABEL_22;
  }

  v37 = v36;
  v38 = CFDataGetTypeID();
  if (v38 != CFGetTypeID(v37))
  {
LABEL_53:
    v5 = 0;
    goto LABEL_37;
  }

  PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v37, &v81);
  if (PSIStitchData)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI-Blob", v81);
LABEL_22:
  v39 = CFDictionaryGetValue(v5, @"PSI2-PartialDigest");
  if (v33)
  {
    v40 = CFDataGetTypeID();
    if (v40 != CFGetTypeID(v33))
    {
      goto LABEL_53;
    }
  }

  if (v39)
  {
    PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v39, &v80);
    if (PSIStitchData)
    {
      goto LABEL_56;
    }

    CFDictionarySetValue(TypeID, @"PSI2-Blob", v80);
  }

  v41 = CFDictionaryGetValue(v5, @"RestorePSI2-PartialDigest");
  if (!v41)
  {
    goto LABEL_29;
  }

  v42 = v41;
  v43 = CFDataGetTypeID();
  if (v43 != CFGetTypeID(v42))
  {
    goto LABEL_53;
  }

  PSIStitchData = _AMAuthInstallRembrandtLocalCreatePSIStitchData(a1, v42, &v79);
  if (PSIStitchData)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI2-Blob", v79);
LABEL_29:
  v5 = 0;
  OUTLINED_FUNCTION_1_14();
  if (!(!v45 & v44))
  {
    OUTLINED_FUNCTION_0_7();
    if (!v45)
    {
      v47 = value;
      memset(&c, 0, 104);
      v48 = CFGetAllocator(a1);
      v49 = CFDataCreateMutable(v48, 32);
      v50 = v49;
      if (v49)
      {
        v76 = TypeID;
        v51 = Mutable;
        v52 = v3;
        v53 = a3;
        CFDataSetLength(v49, 32);
        BytePtr = CFDataGetBytePtr(v33);
        v55 = *(BytePtr + 1);
        CC_SHA256_Init(&c);
        for (i = 8; i != 40; i += 4)
        {
          *(c.count + i) = bswap32(*&BytePtr[i]);
        }

        c.count[0] = v55;
        v57 = CFDataGetBytePtr(v47);
        Length = CFDataGetLength(v47);
        CC_SHA256_Update(&c, v57, Length);
        MutableBytePtr = CFDataGetMutableBytePtr(v50);
        CC_SHA256_Final(MutableBytePtr, &c);
        v5 = CFRetain(v50);
        v29 = 0;
        a3 = v53;
        v3 = v52;
        Mutable = v51;
        TypeID = v76;
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if ((v46 & 0x401) != 0)
    {
      v61 = value;
      bzero(&c, 0xD0uLL);
      v62 = CFGetAllocator(a1);
      v63 = CFDataCreateMutable(v62, 48);
      v50 = v63;
      if (v63)
      {
        v77 = a3;
        CFDataSetLength(v63, 48);
        v64 = CFDataGetBytePtr(v33);
        v65 = (v64 + 8);
        v66 = *(v64 + 1);
        CC_SHA384_Init(&c);
        for (j = 2; j != 10; ++j)
        {
          v68 = *v65++;
          c.count[j] = bswap64(v68);
        }

        c.count[0] = v66;
        c.count[1] = 0;
        v69 = CFDataGetBytePtr(v61);
        v70 = CFDataGetLength(v61);
        CC_SHA384_Update(&c, v69, v70);
        v71 = CFDataGetMutableBytePtr(v50);
        CC_SHA384_Final(v71, &c);
        v5 = CFRetain(v50);
        v29 = 0;
        a3 = v77;
LABEL_43:
        SafeRelease(v50);
        CFDictionarySetValue(theDict, @"PSI-DownloadDigest", v5);
        if (!v50)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }

LABEL_62:
      v5 = 0;
      v29 = 2;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (CFDictionaryContainsKey(a2, @"@BBTicket"))
  {
    v72 = *(a1[6] + 4);
    v73 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
    if (v73)
    {
      v29 = v73;
      goto LABEL_48;
    }

    CFDictionarySetValue(Mutable, @"BBTicket", 0);
  }

  *a3 = CFRetain(Mutable);
  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request-bb-local", 2);
  AMAuthInstallDebugWriteObject(a1, Mutable, @"tss-response-bb-local", 2);
  v29 = 0;
LABEL_48:
  SafeRelease(TypeID);
  SafeRelease(value);
  SafeRelease(v81);
  SafeRelease(v80);
  SafeRelease(v79);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(Mutable);
  SafeRelease(v5);
  SafeRelease(0);
  return v29;
}

uint64_t _AMAuthInstallRembrandtLocalCreatePSIStitchData(void *a1, const __CFData *a2, CFTypeRef *a3)
{
  v135 = *MEMORY[0x29EDCA608];
  memset(&c, 0, sizeof(c));
  bzero(&v131, 0xD0uLL);
  v130 = 0;
  v129 = 0;
  OUTLINED_FUNCTION_1_14();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_0_7();
    if (!v12)
    {
      v14 = 256;
      goto LABEL_6;
    }

    if ((v13 & 0x401) != 0)
    {
      v14 = 104;
LABEL_6:
      v129 = v14;
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v6, v7, v8, v9, v10, v127);
  if (!a1[6])
  {
    v28 = "amai->bbParameters is NULL";
    goto LABEL_52;
  }

  v14 = 0;
  if (!a3)
  {
LABEL_14:
    v28 = "outPsiStitchDataData is NULL";
LABEL_52:
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", v28, v6, v7, v8, v9, v10, v127);
    v23 = 0;
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_53;
  }

LABEL_7:
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is NULL", v16, v17, v18, v19, v20, v127);
    v23 = 0;
    goto LABEL_55;
  }

  theData = 0;
  v22 = *(a1[6] + 4) - 94;
  if (v22 < 0xB && ((0x685u >> v22) & 1) != 0)
  {
    DigestForKey = AMAuthInstallRembrandtLocalCreateDigestForKey(a1, off_29EE9AED0[v22], &theData, v16, v17, v18, v19, v20);
    if (DigestForKey)
    {
      v25 = DigestForKey;
      v23 = 0;
      MutableCopy = 0;
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v31 = OUTLINED_FUNCTION_3_8();
    CFDataAppendBytes(v31, BytePtr, v32);
    bytes[0] = xmmword_298560157;
    bytes[1] = algn_298560167;
    CFDataAppendBytes(Mutable, bytes, 32);
    OUTLINED_FUNCTION_1_14();
    if (!(!v12 & v11))
    {
      OUTLINED_FUNCTION_0_7();
      if (!v12)
      {
        v39 = CFDataGetBytePtr(a2);
        v40 = v39;
        v41 = 0;
LABEL_21:
        v42 = *v39;
LABEL_22:
        v43 = v42;
        Length = CFDataGetLength(Mutable);
        if (CFDataGetLength(Mutable) + 12 > v42)
        {
          CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "masteredReservationLength %d < CFDataGetLength(stitchData) %lld + snumLength %d", v110, v111, v112, v113, v114, v42);
          v23 = 0;
          goto LABEL_59;
        }

        v45 = v42 - Length - 12;
        if (v43 - Length == 12)
        {
          v23 = 0;
          goto LABEL_27;
        }

        v46 = malloc(v43 - Length - 12);
        v23 = v46;
        if (v46)
        {
          memset(v46, 255, v45);
          CFDataAppendBytes(Mutable, v23, v45);
LABEL_27:
          v52 = CFDataGetBytePtr(*(a1[6] + 16));
          CFDataGetLength(*(a1[6] + 16));
          v53 = OUTLINED_FUNCTION_3_8();
          CFDataAppendBytes(v53, v52, v54);
          v55 = CFDataGetLength(*(a1[6] + 16));
          v61 = a1[6];
          if (v55 != 12)
          {
            v115 = CFDataGetLength(*(v61 + 16));
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(amai->bbParameters->snum) %lld != snumLength %d", v116, v117, v118, v119, v120, v115);
            goto LABEL_59;
          }

          if ((*(v61 + 4) - 94) > 0xA)
          {
            goto LABEL_39;
          }

          OUTLINED_FUNCTION_0_7();
          if (!v12)
          {
            v63 = *(v40 + 1);
            CC_SHA256_Init(&c);
            for (i = 2; i != 10; ++i)
            {
              c.count[i] = bswap32(*&v40[i * 4]);
            }

            c.count[0] = v63;
            c.count[1] = 0;
            v65 = CFDataGetBytePtr(Mutable);
            v66 = CFDataGetLength(Mutable);
            CC_SHA256_Update(&c, v65, v66);
            CC_SHA256_Final(md, &c);
            AMAuthInstallBasebandRembrandtLocalProvisionDevice();
            if (CFDataGetLength(v130) != v14)
            {
              v72 = CFDataGetLength(v130);
              AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(signatureData) %lld != signatureLength %d", v73, v74, v75, v76, v77, v72);
LABEL_59:
              MutableCopy = 0;
              goto LABEL_53;
            }

            goto LABEL_40;
          }

          if ((v62 & 0x401) != 0)
          {
            v78 = (v41 + 8);
            v79 = *(v41 + 1);
            CC_SHA384_Init(&v131);
            for (j = 2; j != 10; ++j)
            {
              v81 = *v78++;
              v131.count[j] = bswap64(v81);
            }

            v131.count[0] = v79;
            v131.count[1] = 0;
            v82 = CFDataGetBytePtr(Mutable);
            v83 = CFDataGetLength(Mutable);
            CC_SHA384_Update(&v131, v82, v83);
            LOBYTE(v82) = *CFDataGetBytePtr(Mutable);
            CFDataGetLength(Mutable);
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "STITCH ptr 0x%x STITCH data 0x%x", v84, v85, v86, v87, v88, v82);
            CC_SHA384_Final(md, &v131);
            AMAuthInstallBasebandRembrandtLocalProvisionDevice();
          }

          else
          {
LABEL_39:
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v56, v57, v58, v59, v60, v127);
          }

LABEL_40:
          if (!v130)
          {
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai is NULL", v67, v68, v69, v70, v71, v127);
            goto LABEL_59;
          }

          v89 = 0;
          MutableCopy = 0;
          switch(*(a1[6] + 4))
          {
            case '^':
            case 'h':
              v90 = CFDataGetBytePtr(v130);
              CFDataGetLength(v130);
              v91 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v91, v90, v92);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate_ice18_EC, 463);
              CFDataAppendBytes(Mutable, kRootGoldCertificate_ice18_EC, 450);
              LODWORD(v90) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 5231);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              memset(&MutableBytePtr[v90], 255, 0x146FuLL);
              v94 = CFDataGetLength(v130);
              MutableCopy = 0;
              v95 = 6144;
              goto LABEL_44;
              v100 = CFGetAllocator(a1);
              MutableCopy = CFDataCreateMutableCopy(v100, 0, v130);
              v101 = CFDataGetMutableBytePtr(MutableCopy);
              v102 = CFDataGetLength(MutableCopy);
              if ((v102 & 0xFFFFFFFE) != 0)
              {
                v103 = v102 >> 1;
                v104 = v102 - 1;
                v105 = v101;
                do
                {
                  v106 = v101[v104];
                  v101[v104] = *v105;
                  *v105++ = v106;
                  --v104;
                  --v103;
                }

                while (v103);
              }

              v107 = CFDataGetBytePtr(MutableCopy);
              CFDataGetLength(MutableCopy);
              v108 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v108, v107, v109);
              CFDataAppendBytes(Mutable, kRootGoldCertificate, 540);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate, 796);
              v89 = v43 + CFDataGetLength(MutableCopy) + 1336;
              break;
            case 'e':
            case 'g':
              v96 = CFDataGetBytePtr(v130);
              CFDataGetLength(v130);
              v97 = OUTLINED_FUNCTION_3_8();
              CFDataAppendBytes(v97, v96, v98);
              CFDataAppendBytes(Mutable, kGoldLeafCertificate_x509, 818);
              CFDataAppendBytes(Mutable, kRootGoldCertificate_x509, 828);
              LODWORD(v96) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 4490);
              v99 = CFDataGetMutableBytePtr(Mutable);
              memset(&v99[v96], 255, 0x118AuLL);
              v94 = CFDataGetLength(v130);
              MutableCopy = 0;
              v95 = 6136;
LABEL_44:
              v89 = v43 + v95 + v94;
              break;
            default:
              break;
          }

          if (v89 == CFDataGetLength(Mutable))
          {
            v25 = 0;
            *a3 = CFRetain(Mutable);
            goto LABEL_11;
          }

          v121 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is %lld, expected size is %d", v122, v123, v124, v125, v126, v121);
LABEL_53:
          v25 = 1;
          goto LABEL_11;
        }

        AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "paddingBytes is NULL", v47, v48, v49, v50, v51, v127);
LABEL_55:
        MutableCopy = 0;
        v25 = 2;
        goto LABEL_11;
      }

      if ((v38 & 0x401) != 0)
      {
        v39 = CFDataGetBytePtr(a2);
        v41 = v39;
        v40 = 0;
        goto LABEL_21;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v33, v34, v35, v36, v37, v127);
    v42 = 0;
    v40 = 0;
    v41 = 0;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v16, v17, v18, v19, v20, v127);
  v23 = 0;
  MutableCopy = 0;
  v25 = 99;
LABEL_11:
  SafeRelease(Mutable);
  SafeRelease(v130);
  SafeRelease(MutableCopy);
  SafeFree(v23);
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

uint64_t AMAuthInstallRembrandtLocalCreateDigestForKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  if (a1 && a2 && a3)
  {
    if ((*(*(a1 + 48) + 4) - 94) <= 0xA)
    {
      OUTLINED_FUNCTION_0_7();
      if (!v11)
      {

        return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
      }

      if ((v10 & 0x401) != 0)
      {

        return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateDigestForKey", "Unknown chipid", a4, a5, a6, a7, a8, v8);
    return 99;
  }

  return v9;
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v146 = 0;
  cf = 0;
  v145 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v16);
  }

  v17 = (a1 + 120);
  v18 = *(a1 + 120);
  v19 = MEMORY[0x29EDB8ED8];
  v20 = v18;
  if (!v18)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.", v11, v12, v13, v14, v15, v139);
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.", v11, v12, v13, v14, v15, v139);
    v20 = *v17;
    if (!*v17)
    {
      v26 = *(a1 + 104);
      v27 = CFGetAllocator(a1);
      v28 = v26(a1, v27, a1 + 120, &v145);
      if (v28)
      {
        v9 = v28;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v29, v30, v31, v32, v33, v145);
        Data = 0;
        goto LABEL_13;
      }

      v20 = *v17;
      if (!*v17)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.", v29, v30, v31, v32, v33, v139);
        Data = 0;
        v35 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(*v19, v20, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", v21, v22, v23, v24, v25, cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v17);
  if (!v18)
  {
    SafeRelease(*v17);
    *v17 = 0;
  }

LABEL_15:
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_21;
  }

  if (*(v36 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, _ApplyTagPrefix, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v36 = *(a1 + 16);
      if (!v36)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure", v37, v38, v39, v40, v41, v139);
    Data = 0;
    v9 = 0;
LABEL_13:
    v35 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v42 = *(v36 + 152);
  if (v42)
  {
    CFDictionaryApplyFunction(v42, _ApplyOverrideTags, theDict);
  }

LABEL_21:
  v43 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v43, @"@HostPlatformInfo", SimplePlatformInfoString);
  v45 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v45, @"@VersionInfo", LibraryVersionString);
  v47 = *(a1 + 16);
  if (!v47 || !*(v47 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", *MEMORY[0x29EDB8F00]);
  }

  v48 = *(a1 + 96);
  if (v48)
  {
    CFDictionarySetValue(theDict, @"@UUID", v48);
  }

  v49 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v49)
  {
    v9 = v49;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v50, v51, v52, v53, v54, v49);
LABEL_28:
    Data = 0;
    v35 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_2A1EE9D10, *(a1 + 72));
  v35 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v35 + 24) = CFRetain(theDict);
  *(v35 + 16) = *(a1 + 80);
  *(v35 + 80) = *(a1 + 488);
  *(v35 + 88) = *(a1 + 512);
  if (*(v35 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8EE0], 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v19, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  *(v35 + 32) = Mutable;
  v72 = *(a1 + 16);
  if (v72 && !*(v72 + 160))
  {
    _CFDictionarySetInteger64Str(Mutable, @"x-intnt-apchipid", *(v72 + 8));
    v73 = *(v35 + 32);
    v74 = *(*(a1 + 16) + 64);
    context = 0;
    if (v73 && v74 && CFNumberGetValue(v74, kCFNumberSInt64Type, &context))
    {
      _CFDictionarySetInteger64Str(v73, @"x-intnt-certcepo", context);
    }

    _CFDictionarySetInteger64Str(*(v35 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v75 = *(v35 + 32);
    if (v75)
    {
      v76 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v75, @"x-intnt-apsecuritymode", v76);
      v75 = *(v35 + 32);
      if (v75)
      {
        if (*(*(a1 + 16) + 20))
        {
          v77 = @"yes";
        }

        else
        {
          v77 = @"no";
        }

        CFDictionarySetValue(v75, @"x-intnt-approductionmode", v77);
        v75 = *(v35 + 32);
      }
    }

    _CFDictionarySetInteger64Str(v75, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    _CFDictionarySetInteger64Str(*(v35 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v78 = *(v35 + 32);
      if (v78)
      {
        CFDictionarySetValue(v78, @"x-intnt-authuserid", @"yes");
      }
    }

    v79 = *(*(a1 + 16) + 72);
    if (v79)
    {
      CFDictionarySetValue(*(v35 + 32), @"x-intnt-usbserialstr", v79);
    }

    v80 = *v19;
    v81 = *(*(a1 + 128) + 32);
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v35 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v83 = tss_submit(v35, v65, v66, v67, v68, v69, v70, v71);
  v89 = v83;
  if (!v83)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v83 <= 0x2710)
  {
    v90 = *(v35 + 72);
    if (v90)
    {
      v9 = v83 + 3100;
      LODWORD(context) = v83 + 3100;
      if (v83 < 0x384)
      {
        v91 = CFGetAllocator(a1);
        v97 = CFNumberCreate(v91, kCFNumberIntType, &context);
        if (v97)
        {
          CFDictionarySetValue(*(a1 + 352), v97, v90);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", v98, v99, v100, v101, v102, context);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", v92, v93, v94, v95, v96, context);
        }

        SafeRelease(v97);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v84, v85, v86, v87, v88, v83 + 28);
    }
  }

  SafeRelease(0);
  if (v89 > 9999)
  {
    if ((v89 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_2985610B0[v89 - 10000];
    }
  }

  else
  {
    v9 = (v89 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", v104, v105, v106, v107, v108, LocalizedStatusString);
LABEL_77:
  v109 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v109, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v110 = CFGetAllocator(a1);
    v116 = AMAuthInstallSupportBase64Encode(v110, Data, &v146, v111, v112, v113, v114, v115);
    if (v89)
    {
      if (!v116)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v117, v118, v119, v120, v121, v146);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>", v122, v123, v124, v125, v126, v140);
      }
    }

    else
    {
      if (!v116)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v117, v118, v119, v120, v121, v146);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>", v127, v128, v129, v130, v131, v141);
      }

      Value = CFDictionaryGetValue(*(v35 + 40), @"@ServerVersion");
      v138 = @"unavailable";
      if (Value)
      {
        LOBYTE(v138) = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v133, v134, v135, v136, v137, v138);
      AMAuthInstallDebugWriteObject(a1, *(v35 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v35 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v146);
  SafeRelease(0);
  if (v35)
  {
    tss_close_session(v35, v55, v56, v57, v58, v59, v60, v61);
  }

  return v9;
}

uint64_t AMAuthInstallRequestAbbreviatedSendSync(uint64_t **cf, const void *a2, CFTypeRef *a3)
{
  if (cf)
  {
    v4 = 0;
    v5 = 1;
    if (a3 && a2 && cf[2])
    {
      v8 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v4 = Mutable;
      if (Mutable)
      {
        _CFDictionarySetInteger64(Mutable, @"ApECID", *cf[2]);
        _CFDictionarySetInteger32(v4, @"ApChipID", *(cf[2] + 2));
        _CFDictionarySetInteger32(v4, @"ApBoardID", *(cf[2] + 3));
        _CFDictionarySetBoolean(v4, @"ApProductionMode", *(cf[2] + 20));
        _CFDictionarySetInteger32(v4, @"ApSecurityDomain", *(cf[2] + 4));
        CFDictionarySetValue(v4, @"UniqueBuildID", a2);
        v5 = AMAuthInstallRequestSendSyncWithHeader(cf, v4, 0, a3);
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  SafeRelease(v4);
  return v5;
}

uint64_t AMAuthInstallSsoEnable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (_acmobileshim_lib)
  {
    result = 0;
    *(a1 + 104) = _AMAuthInstallSsoCreateServiceTicket;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSsoEnable", "ACMobile dylib not loaded", a4, a5, a6, a7, a8, v8);
    return 99;
  }

  return result;
}

uint64_t AMAuthInstallSsoDisable(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t AMAuthInstallSsoSetStealthMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

uint64_t AMAuthInstallSsoSetCredentials(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 104))
    {
      if (_AMAuthInstallSsoCopyTicketWithCredentials)
      {
        v20 = 0;
        v10 = _AMAuthInstallSsoCopyTicketWithCredentials(a2, a3, a1 + 120, &v20);
        if (v10)
        {
          v8 = v10;
          AMAuthInstallLog(3, "AMAuthInstallSsoSetCredentials", "failed to create sso data", v11, v12, v13, v14, v15, v19);
        }

        else if (*(a1 + 120))
        {
          return 0;
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallSsoSetCredentials", "SSO invalid username and password.", v11, v12, v13, v14, v15, v19);
          return 22;
        }

        return v8;
      }

      v16 = "_AMAuthInstallSsoCopyTicketWithCredentials is NULL.";
      v17 = 3;
    }

    else
    {
      v16 = "SSO disabled.";
      v17 = 5;
    }

    AMAuthInstallLog(v17, "AMAuthInstallSsoSetCredentials", v16, a4, a5, a6, a7, a8, v19);
    return 20;
  }

  return v8;
}

uint64_t _AMAuthInstallSsoCopyCredentialsFromKeychain(void *a1, CFStringRef *a2)
{
  result = 0;
  if (!a1)
  {
    v6 = 0;
    v9 = 0;
LABEL_25:
    v40 = 1;
    goto LABEL_20;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v7 = *MEMORY[0x29EDBBC30];
  v8 = *MEMORY[0x29EDBBC40];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
  v9 = CFDataCreateWithBytesNoCopy(v4, "APPLECONNECT.APPLE.COM", 22, *MEMORY[0x29EDB8EE8]);
  if (!v9)
  {
LABEL_23:
    v40 = 2;
    goto LABEL_20;
  }

  CFDictionarySetValue(v6, *MEMORY[0x29EDBBBD0], v9);
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBC10], @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBC88], *MEMORY[0x29EDBBC98]);
  v10 = *MEMORY[0x29EDB8F00];
  CFDictionarySetValue(v6, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v11 = SecItemCopyMatching(v6, &result);
  if (v11 == -25300)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Credentials not found", v12, v13, v14, v15, v16, v48);
    v40 = 8;
    goto LABEL_20;
  }

  if (v11)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "unexpected error: %d", v12, v13, v14, v15, v16, v11);
    v40 = 14;
    goto LABEL_20;
  }

  if (!result)
  {
    SafeRelease(0);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Username not found", v43, v44, v45, v46, v47, v48);
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(result, *MEMORY[0x29EDBBBA0]);
  *a1 = Value;
  CFRetain(Value);
  SafeRelease(0);
  if (!a2)
  {
    goto LABEL_19;
  }

  v50 = 0;
  if (result)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, result);
    v24 = MutableCopy;
    if (MutableCopy)
    {
      v25 = *MEMORY[0x29EDBBCB0];
      CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDBBCB0], v10);
      CFDictionarySetValue(v24, v7, v8);
      v26 = SecItemCopyMatching(v24, &v50);
      if (v26 == -25300)
      {
        AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "password not found in keychain response", v27, v28, v29, v30, v31, v48);
        v41 = 0;
        v40 = 8;
      }

      else if (v26)
      {
        AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "unexpected error: %d", v27, v28, v29, v30, v31, v26);
        v41 = 0;
        v40 = 14;
      }

      else
      {
        CFDictionaryRemoveValue(v24, v25);
        BytePtr = CFDataGetBytePtr(v50);
        Length = CFDataGetLength(v50);
        v34 = CFStringCreateWithBytes(v4, BytePtr, Length, 0x8000100u, 0);
        *a2 = v34;
        if (v34)
        {
          v40 = 0;
          v41 = 1;
        }

        else
        {
          v40 = 3;
          AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "Failed to convert password", v35, v36, v37, v38, v39, v48);
          v41 = 0;
        }
      }
    }

    else
    {
      v41 = 0;
      v40 = 2;
    }
  }

  else
  {
    v41 = 0;
    v24 = 0;
    v40 = 1;
  }

  SafeRelease(v50);
  SafeRelease(v24);
  if ((v41 & 1) == 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Password not found", v18, v19, v20, v21, v22, v48);
  }

  else
  {
LABEL_19:
    AMAuthInstallLog(6, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Found Credentials for username=%@ ", v18, v19, v20, v21, v22, *a1);
    v40 = 0;
  }

LABEL_20:
  SafeRelease(v6);
  SafeRelease(result);
  SafeRelease(v9);
  return v40;
}

uint64_t _AMAuthInstallSsoSaveCredentialsInKeychain(const void *a1)
{
  result = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (!Mutable)
  {
    MutableCopy = 0;
    v7 = 0;
LABEL_11:
    v10 = 0;
    v24 = 2;
    goto LABEL_8;
  }

  v5 = *MEMORY[0x29EDBBC30];
  v6 = *MEMORY[0x29EDBBC40];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
  v7 = CFDataCreateWithBytesNoCopy(v2, "APPLECONNECT.APPLE.COM", 22, *MEMORY[0x29EDB8EE8]);
  if (!v7)
  {
    MutableCopy = 0;
    goto LABEL_11;
  }

  v8 = *MEMORY[0x29EDBBBD0];
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBBD0], v7);
  v9 = *MEMORY[0x29EDBBC10];
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBC10], @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBC88], *MEMORY[0x29EDBBC98]);
  CFDictionarySetValue(v4, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v10 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(v10, *MEMORY[0x29EDBBBA0], a1);
  CFDictionarySetValue(v10, v9, @"com.apple.MobileSoftwareUpdate");
  if (!SecItemCopyMatching(v4, &result))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, result);
    CFDictionarySetValue(MutableCopy, v5, v6);
    v18 = SecItemUpdate(MutableCopy, v10);
    if (!v18)
    {
      goto LABEL_7;
    }

    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemUpdate ret=%d", v19, v20, v21, v22, v23, v18);
LABEL_14:
    v24 = 14;
    goto LABEL_8;
  }

  CFDictionarySetValue(v10, v5, v6);
  CFDictionarySetValue(v10, v8, v7);
  v11 = SecItemAdd(v10, 0);
  if (v11)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemAdd ret=%d", v12, v13, v14, v15, v16, v11);
    MutableCopy = 0;
    goto LABEL_14;
  }

  MutableCopy = 0;
LABEL_7:
  v24 = 0;
LABEL_8:
  SafeRelease(result);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v4);
  SafeRelease(0);
  SafeRelease(v7);
  SafeRelease(v10);
  return v24;
}

uint64_t AMAuthInstallSsoInitialize_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoSUSSOInit", "copyPersonalizationSSOToken symbol not found", a4, a5, a6, a7, a8, v9);
  result = dlclose(_susso_lib);
  _susso_lib = 0;
  return result;
}

uint64_t AMAuthInstallSsoInitialize_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoACMobileInit", "ACMobileShimGetTicket symbol not found", a4, a5, a6, a7, a8, v9);
  result = dlclose(_acmobileshim_lib);
  _acmobileshim_lib = 0;
  return result;
}

uint64_t _CFDictionaryGetBoolean(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v16 = "dict is NULL";
LABEL_13:
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", v16, a4, a5, a6, a7, a8, v17);
    return a3;
  }

  if (!a2)
  {
    v16 = "key is NULL";
    goto LABEL_13;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    v16 = "dict is not CFDictionary";
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v13 = Value;
  v14 = CFBooleanGetTypeID();
  if (v14 != CFGetTypeID(v13))
  {
    v16 = "dict value is not CFBoolean";
    goto LABEL_13;
  }

  return CFBooleanGetValue(v13);
}

const char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = _CopyHexStringFromData_kAsciiHexChars[v9 >> 4];
        result[(v8 + 1)] = _CopyHexStringFromData_kAsciiHexChars[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportGetUInt32(const __CFNumber *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 1;
  }

  valuePtr = 0;
  v15 = 0;
  Type = CFNumberGetType(a1);
  if (Type == kCFNumberSInt64Type)
  {
    if (CFNumberGetValue(a1, kCFNumberSInt64Type, &v15))
    {
      v10 = v15;
      goto LABEL_8;
    }

    v14 = "AMAuthInstallSupportGetUInt32";
    v12 = "%s: failed to convert 64-bit value";
LABEL_10:
    v11 = 3;
    AMAuthInstallLog(3, "AMAuthInstallSupportGetUInt32", v12, v5, v6, v7, v8, v9, v14);
    return v11;
  }

  if (Type != kCFNumberSInt32Type)
  {
    LOBYTE(v14) = Type;
    v12 = "Incoming CFNumberRef is of unexpected type %d";
    goto LABEL_10;
  }

  if (!CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
  {
    v14 = "AMAuthInstallSupportGetUInt32";
    v12 = "%s: failed to convert 32-bit value";
    goto LABEL_10;
  }

  v10 = valuePtr;
LABEL_8:
  v11 = 0;
  *a2 = v10;
  return v11;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t _AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL(const __CFAllocator *a1, uint64_t a2, CFTypeRef cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v6 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 0);
    if (v6)
    {
      v4 = v6;
      AMAuthInstallLog(3, "_AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.", v7, v8, v9, v10, v11, v14);
    }

    else
    {
      if (a4)
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL();
      }

      else
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromFileURL();
      }

      v4 = DataFromMappedFileURL;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyDataFromHexString(int a1, CFStringRef theString, uint64_t *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = 1;
  if (theString)
  {
    if (a3)
    {
      v3 = 3;
      if (CFStringGetCString(theString, buffer, 512, 0x8000100u))
      {
        v5 = AMSupportCopyDataFromAsciiEncodedHex();
        *a3 = v5;
        if (v5)
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, uint64_t a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v11 = AMAuthInstallSupportRemoveFile(cf);
    if (v11)
    {
LABEL_8:
      v4 = v11;
      goto LABEL_9;
    }

LABEL_7:
    v11 = AMSupportPlatformWriteDataToFileURL();
    goto LABEL_8;
  }

  v5 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v5)
  {
    goto LABEL_7;
  }

  v4 = v5;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.", v6, v7, v8, v9, v10, v13);
LABEL_9:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

CFIndex AMAuthInstallSupportApplyDictionaryOverrides(int a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, const __CFString *a4)
{
  Count = 1;
  if (theDict && a3 && *a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = malloc(8 * Count);
    v9 = malloc(8 * Count);
    v10 = v9;
    if (v8 && v9)
    {
      CFDictionaryGetKeysAndValues(theDict, v8, v9);
      if (Count < 1)
      {
        Count = 0;
        goto LABEL_17;
      }

      v16 = "invalid overridesKey";
      v17 = v8;
      v18 = v10;
      while (1)
      {
        v19 = *v17;
        if (!*v17)
        {
LABEL_22:
          AMAuthInstallLog(3, "AMAuthInstallSupportApplyDictionaryOverrides", v16, v11, v12, v13, v14, v15, v22);
          Count = 99;
          goto LABEL_17;
        }

        v20 = *v18;
        if (!*v18)
        {
          v16 = "invalid overridesValue";
          goto LABEL_22;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (CFStringFind(*v17, a4, 0).location != -1)
        {
          break;
        }

LABEL_14:
        ++v18;
        ++v17;
        if (!--Count)
        {
          goto LABEL_17;
        }
      }

      v19 = *v17;
      v20 = *v18;
LABEL_13:
      CFDictionarySetValue(*a3, v19, v20);
      goto LABEL_14;
    }

    Count = 2;
    if (v8)
    {
LABEL_17:
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }
  }

  return Count;
}

CFTypeRef AMAuthInstallSupportCopySetValueForKeyPathInDict(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v48 = "dict is NULL";
LABEL_27:
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", v48, a4, a5, a6, a7, a8, v49);
    return 0;
  }

  if (!a3)
  {
    v48 = "keyPath is NULL";
    goto LABEL_27;
  }

  v9 = a4;
  if (!a4)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "value is NULL", 0, a5, a6, a7, a8, v49);
    return v9;
  }

  location = CFStringFind(a3, @".", 0).location;
  if (location == -1)
  {
    Count = CFDictionaryGetCount(a2);
    MutableCopy = CFDictionaryCreateMutableCopy(a1, Count, a2);
    if (MutableCopy)
    {
      v36 = MutableCopy;
      CFDictionarySetValue(MutableCopy, a3, v9);
      v9 = CFRetain(v36);
      v37 = v36;
LABEL_20:
      CFRelease(v37);
      return v9;
    }

    return 0;
  }

  v13 = location;
  v14 = location + 1;
  v50.length = CFStringGetLength(a3) - (location + 1);
  v50.location = v14;
  v15 = CFStringCreateWithSubstring(a1, a3, v50);
  if (!v15)
  {
    v48 = "failed to create key substring";
    goto LABEL_27;
  }

  v16 = v15;
  v51.location = 0;
  v51.length = v13;
  v17 = CFStringCreateWithSubstring(a1, a3, v51);
  if (!v17)
  {
    AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "failed to create current substring", v18, v19, v20, v21, v22, v49);
    CFRelease(v16);
    return 0;
  }

  v23 = v17;
  Value = CFDictionaryGetValue(a2, v17);
  if (Value)
  {
    v25 = Value;
    v26 = CFGetTypeID(Value);
    if (v26 != CFDictionaryGetTypeID())
    {
      AMAuthInstallLog(3, "AMAuthInstallSupportCopySetValueForKeyPathInDict", "item %@ not a dictionary", v27, v28, v29, v30, v31, v23);
      v9 = 0;
      Mutable = 0;
LABEL_10:
      v33 = 0;
      goto LABEL_16;
    }

    v46 = OUTLINED_FUNCTION_1_15();
    Mutable = CFDictionaryCreateMutableCopy(v46, v47, v25);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_1_15();
    Mutable = CFDictionaryCreateMutable(v38, v39, v40, v41);
    if (!Mutable)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v33 = AMAuthInstallSupportCopySetValueForKeyPathInDict(a1, Mutable, v16, v9);
  v42 = OUTLINED_FUNCTION_1_15();
  v44 = CFDictionaryCreateMutableCopy(v42, v43, a2);
  v9 = v44;
  if (v44)
  {
    CFDictionarySetValue(v44, v23, v33);
  }

LABEL_16:
  CFRelease(v16);
  CFRelease(v23);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    v37 = v33;
    goto LABEL_20;
  }

  return v9;
}

uint64_t AMAuthInstallSupportCopyFile(uint64_t a1, const void *a2, const __CFURL *a3)
{
  cf = 0;
  v3 = 1;
  if (!a2 || !a3)
  {
    return v3;
  }

  DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(a3);
  if (DirectoryForURL)
  {
    v3 = DirectoryForURL;
    v15 = "AMAuthInstallSupportMakeDirectory failed.";
  }

  else
  {
    v12 = *MEMORY[0x29EDB8ED8];
    DataFromCopiedOrMappedFileURL = _AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL(*MEMORY[0x29EDB8ED8], &cf, a2, 1);
    if (DataFromCopiedOrMappedFileURL)
    {
      v3 = DataFromCopiedOrMappedFileURL;
      v15 = "AMAuthInstallSupportCreateDataFromFileURL failed.";
    }

    else
    {
      v3 = AMAuthInstallSupportWriteDataToFileURL(v12, cf, a3, 1);
      if (!v3)
      {
        goto LABEL_6;
      }

      v15 = "AMAuthInstallSupportWriteDataToFileURL failed.";
    }
  }

  AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", v15, v7, v8, v9, v10, v11, v16);
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t AMAuthInstallSupportCopyStringReplacingLastComponent(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3, const void *a4, CFTypeRef *a5)
{
  v5 = 1;
  if (a2 && a4 && a5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, a3);
    if (!ArrayBySeparatingStrings)
    {
      return 3;
    }

    v11 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
    if (!MutableCopy)
    {
      v5 = 3;
      v16 = v11;
LABEL_9:
      CFRelease(v16);
      return v5;
    }

    v13 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    CFArraySetValueAtIndex(v13, Count - 1, a4);
    v15 = CFStringCreateByCombiningStrings(a1, v13, a3);
    v16 = v15;
    if (v15)
    {
      v5 = 0;
      *a5 = CFRetain(v15);
    }

    else
    {
      v5 = 3;
    }

    CFRelease(v11);
    CFRelease(v13);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t AMAuthInstallSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    v4 = 2;
    goto LABEL_22;
  }

  v26 = a1;
  v27 = a4;
  v28 = v11;
  if (Count < 1)
  {
LABEL_20:
    v4 = 0;
    *v27 = CFRetain(MutableCopy);
    goto LABEL_21;
  }

  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = *v15;
    v18 = *v16;
    v19 = CFDictionaryGetValue(a2, *v15);
    if (v18)
    {
      v20 = v19;
      v21 = CFGetTypeID(v18);
      if (v21 == CFDictionaryGetTypeID() && v20 != 0)
      {
        v23 = CFGetTypeID(v20);
        if (v23 == CFDictionaryGetTypeID())
        {
          break;
        }
      }
    }

    CFDictionarySetValue(MutableCopy, v17, v18);
LABEL_16:
    ++v16;
    ++v15;
    if (!--Count)
    {
      goto LABEL_20;
    }
  }

  value = 0;
  v24 = AMAuthInstallSupportCreateMergedDictionary(v26, v20, v18, &value);
  if (!v24)
  {
    CFDictionarySetValue(MutableCopy, v17, value);
    CFRelease(value);
    goto LABEL_16;
  }

  v4 = v24;
LABEL_21:
  v11 = v28;
LABEL_22:
  free(v11);
  free(v13);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreatePrependedFilePath(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, void *a4)
{
  v4 = 1;
  if (!a1 || !a2 || !theString || !a4)
  {
    return v4;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  if (ValueAtIndex)
  {
    v18 = ValueAtIndex;
    v11 = OUTLINED_FUNCTION_1_15();
    v14 = CFStringCreateWithFormat(v11, v12, v13, a2, v18);
    v15 = v14;
    if (v14)
    {
      if (Count > 1)
      {
        CFArraySetValueAtIndex(ArrayBySeparatingStrings, Count - 1, v14);
        v16 = CFStringCreateByCombiningStrings(a1, ArrayBySeparatingStrings, @"/");
      }

      else
      {
        v16 = CFRetain(v14);
      }

      v4 = 0;
      *a4 = v16;
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v4 = 2;
  if (ArrayBySeparatingStrings)
  {
LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_12:
  if (v15)
  {
    CFRelease(v15);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreateStringRemovingPrepend(CFAllocatorRef alloc, const __CFString *a2, const __CFString *a3, void *a4)
{
  result = 1;
  if (a2 && a4)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, a2, a3);
    if (ArrayBySeparatingStrings)
    {
      v10 = ArrayBySeparatingStrings;
      if (CFArrayGetCount(ArrayBySeparatingStrings) > 1)
      {
        CFArrayRemoveValueAtIndex(v10, 0);
        v11 = CFStringCreateByCombiningStrings(alloc, v10, a3);
      }

      else
      {
        v11 = CFRetain(a2);
      }

      *a4 = v11;
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyTagAndFileURL(const __CFAllocator *a1, CFURLRef anURL, CFTypeRef *a3, CFTypeRef *a4)
{
  if (!anURL)
  {
    return 2;
  }

  v8 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  if (CFStringFind(v8, @"=", 0).location != -1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v9, @"=");
    if (!ArrayBySeparatingStrings)
    {
      v18 = 2;
      goto LABEL_15;
    }

    v11 = ArrayBySeparatingStrings;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (ValueAtIndex && (v13 = ValueAtIndex, (v14 = CFArrayGetValueAtIndex(v11, 1)) != 0))
    {
      v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v14, kCFURLPOSIXPathStyle, 0);
      if (v15)
      {
        v16 = v15;
        if (!a3)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v17 = 2;
    }

    else
    {
      v17 = 8;
    }

    CFRelease(v9);
    v16 = 0;
LABEL_13:
    CFRelease(v11);
    v18 = v17;
    goto LABEL_14;
  }

  v16 = CFRetain(anURL);
  v13 = 0;
  v11 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = CFRetain(v13);
  }

LABEL_10:
  if (a4)
  {
    *a4 = CFRetain(v16);
  }

  CFRelease(v9);
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = v16;
  if (v16)
  {
LABEL_15:
    CFRelease(v9);
  }

  return v18;
}

__CFDictionary *AMAuthInstallUpdaterCreateResponse(CFTypeRef *a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  LocalResponse = 0;
  if (!a1)
  {
LABEL_27:
    AMSupportCreateErrorInternal();
    return LocalResponse;
  }

  if (!theDict)
  {
    Value = 0;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(theDict, @"UpdaterName");
  v7 = CFDictionaryGetValue(theDict, @"LocalSign");
  if (v7)
  {
    v8 = CFBooleanGetValue(v7);
    if (!Value)
    {
LABEL_18:
      if (!a3 || !CFDictionaryGetCount(a3))
      {
        goto LABEL_27;
      }

      AMAuthInstallSetDebugFlags(a1, 2);
      v17 = CFDictionaryGetValue(theDict, @"PersonalizedBundle");
      if (v17)
      {
        _AMAuthInstallBundleCreateDebugDirectory(a1, v17);
      }

      if (AMAuthInstallRequestSendSyncWithHeader(a1, a3, Value[3], &LocalResponse))
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v8 = 0;
    if (!Value)
    {
      goto LABEL_18;
    }
  }

  v9 = AMAuthInstallUpdater(a1, Value, 0);
  if (!v9)
  {
    return LocalResponse;
  }

  Value = v9;
  v15 = v9[2];
  if (v15 && !CFDictionaryGetCount(v15))
  {
    v8 = 1;
  }

  if (*(Value + 64))
  {
    v16 = @"true";
  }

  else
  {
    v16 = @"false";
  }

  AMAuthInstallLog(5, "AMAuthInstallUpdaterCreateResponse", "Updater local signing support: %@", v10, v11, v12, v13, v14, v16);
  if (!(*(Value + 64) | v8))
  {
    goto LABEL_18;
  }

  LocalResponse = AMAuthInstallUpdaterCreateLocalResponse(a1, Value, a3);
  if (!LocalResponse)
  {
    return LocalResponse;
  }

LABEL_25:
  v18 = Value[2];
  if (v18)
  {
    CFRelease(v18);
    Value[2] = 0;
  }

  return LocalResponse;
}

uint64_t AMAuthInstallUpdaterWriteManifest(uint64_t a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4)
{
  if (!a1 || (v5 = *(a1 + 40)) == 0 || !a2 || !a3 || !a4)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    return 1;
  }

  v10 = Count;
  v11 = 0;
  v19 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v11);
    Value = CFDictionaryGetValue(a4, ValueAtIndex);
    if (Value)
    {
      break;
    }

    AMSupportLogInternal();
LABEL_17:
    if (v10 == ++v11)
    {
      return 1;
    }
  }

  v14 = Value;
  result = _AMAuthInstallUpdaterCopyResponseURL(a3, a2, ValueAtIndex, *(a1 + 48));
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = CFGetTypeID(v14);
  if (v17 == CFDataGetTypeID())
  {
    CFGetAllocator(a1);
    if (AMSupportWriteDataToFileURL())
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  cf = 0;
  MEMORY[0x29C28AE50](v19, v16, @"plist", &cf);
  if (!cf)
  {
    goto LABEL_20;
  }

  AMSupportLogInternal();
  CFGetAllocator(a1);
  v18 = AMSupportWriteDictionarytoFileURL();
  CFRelease(cf);
  if (!v18)
  {
LABEL_16:
    CFRelease(v16);
    goto LABEL_17;
  }

LABEL_19:
  AMSupportCreateErrorInternal();
LABEL_20:
  CFRelease(v16);
  return 0;
}

BOOL AMAuthInstallVinylCheckVinylFwLdrVerLegacy(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3.location = 0;
  v3.length = 2;
  CFDataGetBytes(a1, v3, buffer);
  return (buffer[1] | ((buffer[0] & 0x7F) << 8)) < 0x301u;
}

uint64_t AMAuthInstallVinylIsLegacyChipId(CFTypeRef cf, BOOL *a2)
{
  if (cf && (v3 = *(cf + 6)) != 0 && *(v3 + 160))
  {
    v5 = CFGetAllocator(cf);
    v6 = CFNumberCreate(v5, kCFNumberSInt8Type, &kAMAuthInstallVinylLegacyChipIdCutoff);
    if (v6)
    {
      v7 = CFNumberCompare(*(*(cf + 6) + 160), v6, 0);
      v8 = 0;
      *a2 = v7 == kCFCompareLessThan;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  SafeRelease(v6);
  return v8;
}

uint64_t AMAuthInstallVinylCreateMeasurements(CFTypeRef cf, const void *a2, CFDictionaryRef *a3, const void **a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v38 = 0;
  if (!cf)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 1;
  if (a3 && a2 && *(cf + 6))
  {
    IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v38);
    if (IsLegacyChipId)
    {
      v6 = IsLegacyChipId;
      v5 = 0;
      goto LABEL_26;
    }

    v11 = *a3;
    v12 = CFGetAllocator(cf);
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, *a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    }

    v5 = MutableCopy;
    if (!MutableCopy)
    {
      v6 = 2;
      goto LABEL_26;
    }

    if (v38)
    {
      Measurements = AMAuthInstallBasebandVinylCreateMeasurements(cf, a2, MutableCopy);
      if (!Measurements)
      {
        goto LABEL_22;
      }

      v6 = Measurements;
      goto LABEL_26;
    }

    theData = 0;
    v15 = __dst;
    memcpy(__dst, off_29EE9B7B0, sizeof(__dst));
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (!_AMAuthInstallVinylCreateIm4p(cf, a2, (v15 + 16), &theData) && theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        AMAuthInstallLogDumpMemory(7, "_AMAuthInstallVinylCreateMeasurementsInternal", "eUICC IM4P", BytePtr, Length, v20, v21, v22);
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateMeasurementsInternal", "failed to compute digest", v23, v24, v25, v26, v27, v37);
LABEL_21:
          SafeRelease(theData);
LABEL_22:
          Value = v5;
          if (a4 && (Value = CFDictionaryGetValue(v5, *a4)) == 0)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            *a3 = CFRetain(Value);
          }

          break;
        }

        SafeRelease(theData);
        theData = 0;
        v28 = CFGetAllocator(cf);
        v29 = CFDataCreate(v28, bytes, 32);
        if (!v29)
        {
          goto LABEL_21;
        }

        v30 = v29;
        v31 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v31, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          goto LABEL_21;
        }

        v33 = Mutable;
        CFDictionarySetValue(Mutable, *(v15 + 1), v30);
        CFDictionarySetValue(v5, *v15, v33);
        SafeRelease(v30);
        SafeRelease(v33);
      }

      v16 = 0;
      v15 = &__dst[80];
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_26:
  SafeRelease(0);
  SafeRelease(v5);
  v35 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AMAuthInstallVinylServerRequestAddRequiredTags(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  if (!v4 || !v4[15] || !v4[20] || !v4[16] || !v4[17] || !v4[18])
  {
    return 1;
  }

  result = 1;
  if (theDict && v4[19])
  {
    Value = CFDictionaryGetValue(theDict, @"eUICC,Gold");
    v9 = CFDictionaryGetValue(theDict, @"eUICC,Main");
    if (Value | v9)
    {
      v15 = v9;
      CFDictionarySetValue(theDict, @"eUICC,EID", *(*(a1 + 48) + 120));
      CFDictionarySetValue(theDict, @"eUICC,ChipID", *(*(a1 + 48) + 160));
      if (Value)
      {
        CFDictionarySetValue(Value, @"Nonce", *(*(a1 + 48) + 136));
      }

      if (v15)
      {
        CFDictionarySetValue(v15, @"Nonce", *(*(a1 + 48) + 128));
      }

      CFDictionarySetValue(theDict, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
      CFDictionarySetValue(theDict, @"eUICC,RootKeyIdentifier", *(*(a1 + 48) + 152));
      if (a3)
      {
        v16 = CFDictionaryGetValue(a3, @"UniqueBuildID");
        if (v16)
        {
          CFDictionarySetValue(theDict, @"UniqueBuildID", v16);
        }
      }

      v17 = *(a1 + 16);
      if (v17)
      {
        _CFDictionarySetBoolean(theDict, @"eUICC,ApProductionMode", *(v17 + 20));
      }

      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallVinylServerRequestAddRequiredTags", "Neither main nor gold vinyl fw found!", v10, v11, v12, v13, v14, v18);
      return 8;
    }
  }

  return result;
}

uint64_t AMAuthInstallVinylPersonalizeFirmware(void *cf, const void *a2, const void *a3, CFDictionaryRef *a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131 = *MEMORY[0x29EDCA608];
  v113 = 0;
  v112 = 0;
  if (!cf || (v9 = cf[6]) == 0)
  {
    v21 = 1;
    goto LABEL_67;
  }

  if (!*(v9 + 160))
  {
    AMAuthInstallLog(3, "AMAuthInstallVinylPersonalizeFirmware", "No eUICC ChipID specified. Not personalizing VinylFirmware at this time.", a4, a5, a6, a7, a8, v104);
    v21 = 0;
    goto LABEL_67;
  }

  IsLegacyChipId = AMAuthInstallVinylCreateMeasurements(cf, a2, &v113, 0);
  if (IsLegacyChipId || (IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v112), IsLegacyChipId))
  {
    v21 = IsLegacyChipId;
    goto LABEL_67;
  }

  v20 = v113;
  if (v112)
  {
    v21 = 1;
    if (!a4 || !v113)
    {
      goto LABEL_21;
    }

    if (!*a4)
    {
      v21 = 14;
      goto LABEL_21;
    }

    if (!a3)
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "No dstURL provided. Running in restore environment?", v15, v16, v17, v18, v19, v104);
      v21 = 0;
      goto LABEL_21;
    }

    v22 = BbfwWriterCreate(a3);
    if (v22)
    {
      v28 = v22;
      v29 = BbfwReaderOpen(a2);
      if (v29)
      {
        v30 = v29;
        Value = CFDictionaryGetValue(*a4, @"EuiccMainTicket");
        if (Value)
        {
          v32 = Value;
          TypeID = CFDataGetTypeID();
          if (TypeID != CFGetTypeID(v32))
          {
            goto LABEL_79;
          }

          if (BbfwWriterAddFile(v28, @"vinyl/update/main/ticket.der", v32))
          {
            goto LABEL_80;
          }
        }

        v34 = CFDictionaryGetValue(*a4, @"EuiccGoldTicket");
        if (!v34)
        {
LABEL_19:
          v21 = 0;
LABEL_20:
          BbfwWriterFinalize(v28);
          BbfwReaderClose(v30);
LABEL_21:
          SafeRelease(0);
          SafeRelease(0);
          v37 = 0;
          goto LABEL_66;
        }

        v35 = v34;
        v36 = CFDataGetTypeID();
        if (v36 == CFGetTypeID(v35))
        {
          if (!BbfwWriterAddFile(v28, @"vinyl/update/gold/ticket.der", v35))
          {
            goto LABEL_19;
          }

LABEL_80:
          v21 = 4;
          goto LABEL_20;
        }

LABEL_79:
        v21 = 17;
        goto LABEL_20;
      }

      BbfwWriterFinalize(v28);
    }

    else
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "failed to create output file", v23, v24, v25, v26, v27, v104);
    }

    v21 = 4;
    goto LABEL_21;
  }

  cfa = a3;
  StitchTicket = 0;
  v114[0] = 0;
  v115[0] = @"euig";
  v115[1] = @"update/gold/profile.bin";
  v115[2] = @"update/gold/info.plist";
  v116 = 0u;
  v117 = 0u;
  v118 = 0;
  v119 = @"vinyl/update/gold/ticket.der";
  v121 = 0;
  v122 = 0;
  v120 = @"EuiccGoldTicket";
  v123[0] = @"euim";
  v123[1] = @"update/main/profile.bin";
  v123[2] = @"update/main/info.plist";
  v124 = 0u;
  v125 = 0u;
  v126 = 0;
  v127 = @"vinyl/update/main/ticket.der";
  v129 = 0;
  v130 = 0;
  v21 = 1;
  v128 = @"EuiccMainTicket";
  if (!a4 || !a2)
  {
    v39 = 0;
    goto LABEL_92;
  }

  v39 = 0;
  if (!v113)
  {
LABEL_92:
    SafeRelease(StitchTicket);
    Mutable = v39;
    goto LABEL_65;
  }

  if (*a4 && CFDictionaryGetValue(*a4, @"eUICC,Ticket"))
  {
    v40 = *a4;
  }

  else
  {
    AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Vinyl server signing is enabled...", v15, v16, v17, v18, v19, v104);
    v97 = AMAuthInstallVinylServerRequestAddRequiredTags(cf, v20, a5);
    if (v97)
    {
      v21 = v97;
      if (v97 == 8)
      {
        AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Nothing to sign, skipping..", v98, v99, v100, v101, v102, v106);
        v21 = 0;
      }

      goto LABEL_78;
    }

    v103 = AMAuthInstallRequestSendSync(cf, v20, v114);
    if (v103)
    {
      v21 = v103;
      goto LABEL_78;
    }

    v40 = v114[0];
    if (!v114[0])
    {
      v21 = 14;
LABEL_78:
      SafeRelease(0);
      Mutable = 0;
      goto LABEL_65;
    }
  }

  v41 = CFDictionaryGetValue(v40, @"eUICC,Ticket");
  v42 = v41;
  if (!v41)
  {
    v21 = 17;
    goto LABEL_78;
  }

  v43 = CFGetTypeID(v41);
  if (v43 != CFDataGetTypeID())
  {
    StitchTicket = 0;
    v39 = 0;
    v21 = 17;
    goto LABEL_92;
  }

  v105 = a4;
  BytePtr = CFDataGetBytePtr(v42);
  v107 = v42;
  Length = CFDataGetLength(v42);
  AMAuthInstallLogDumpMemory(8, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "EUICC,Ticket:", BytePtr, Length, v46, v47, v48);
  v111 = 0;
  Mutable = 0;
  v50 = 0;
  StitchTicket = 0;
  v51 = v115;
  v52 = 1;
  do
  {
    v53 = v52;
    v54 = cf[6];
    v51[4] = *(v54 + 152);
    v51[5] = *(v54 + 168);
    OUTLINED_FUNCTION_1_16();
    v56 = BbfwReaderStart(a2, v55, v51);
    if (v56 || (OUTLINED_FUNCTION_0_9(), v56 = BbfwReaderStart(a2, v62, v51), v56))
    {
      v21 = v56;
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to read zip file", v57, v58, v59, v60, v61, v105);
      goto LABEL_63;
    }

    v51[4] = 0;
    v51[5] = 0;
    if (!v51[3])
    {
      goto LABEL_34;
    }

    Im4p = _AMAuthInstallVinylCreateIm4p(cf, a2, v51, v51 + 10);
    if (Im4p)
    {
      v21 = Im4p;
      goto LABEL_63;
    }

    SafeRelease(StitchTicket);
    v64 = CFGetAllocator(cf);
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v64, v51[10], v107);
    if (!StitchTicket)
    {
      v21 = 3;
      goto LABEL_63;
    }

    v109 = v50;
    v110 = Mutable;
    v65 = v51[3];
    memset(&v114[1] + 4, 0, 12);
    v66 = CFGetAllocator(cf);
    v67 = CFDataGetLength(StitchTicket);
    v68 = CFDataGetLength(v65);
    MutableCopy = CFDataCreateMutableCopy(v66, v68 + v67, StitchTicket);
    if (!MutableCopy)
    {
      v79 = 0;
      goto LABEL_54;
    }

    v70 = CFDataGetBytePtr(v65);
    v71 = CFDataGetLength(v65);
    CFDataAppendBytes(MutableCopy, v70, v71);
    if (!DEREncoderCreate())
    {
      goto LABEL_52;
    }

    CFDataGetBytePtr(MutableCopy);
    CFDataGetLength(MutableCopy);
    DEREncoderAddData();
    if (DEREncoderCreateEncodedBuffer())
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylStitchImg4Vad", "failed to encode img4/vad sequence", v72, v73, v74, v75, v76, v105);
      goto LABEL_42;
    }

    v77 = CFGetAllocator(cf);
    v78 = CFDataCreate(v77, v114[2], HIDWORD(v114[1]));
    v51[11] = v78;
    if (!v78)
    {
LABEL_52:
      v79 = 0;
LABEL_54:
      v21 = 2;
      goto LABEL_43;
    }

LABEL_42:
    v21 = 0;
    v79 = 1;
LABEL_43:
    DEREncoderDestroy();
    SafeFree(v114[2]);
    SafeRelease(MutableCopy);
    if (!v79)
    {
      v50 = v109;
      Mutable = v110;
      goto LABEL_63;
    }

    v50 = v109;
    Mutable = v110;
    v80 = v111;
    if (v111)
    {
      v81 = cfa;
    }

    else
    {
      v81 = cfa;
      if (cfa)
      {
        v50 = BbfwWriterCreate(cfa);
        if (!v50)
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to create output file", v82, v83, v84, v85, v86, v105);
          v21 = 4;
          v39 = v110;
          goto LABEL_92;
        }
      }

      v87 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v87, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v80 = 0;
    }

    v111 = v80 + 1;
    CFDictionaryAddValue(Mutable, v51[9], v51[11]);
    if (v81 && BbfwWriterAddFile(v50, v51[8], v51[11]))
    {
      v21 = 4;
      goto LABEL_63;
    }

LABEL_34:
    v52 = 0;
    v51 = v123;
  }

  while ((v53 & 1) != 0);
  if (!v111)
  {
    v88 = CFDataGetBytePtr(*(cf[6] + 152));
    v89 = CFDataGetLength(*(cf[6] + 152));
    AMAuthInstallLogDumpMemory(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Error finding profile matching certId", v88, v89, v90, v91, v92);
  }

  if (Mutable)
  {
    SafeRelease(*v105);
    v93 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v93, Mutable);
    *v105 = Copy;
    if (Copy)
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_63:
  SafeRelease(StitchTicket);
  if (v50)
  {
    BbfwWriterFinalize(v50);
  }

LABEL_65:
  SafeRelease(v116);
  SafeRelease(v121);
  SafeRelease(v122);
  SafeRelease(v124);
  SafeRelease(v129);
  SafeRelease(v130);
  SafeRelease(v114[0]);
  v37 = Mutable;
LABEL_66:
  SafeRelease(v37);
LABEL_67:
  SafeRelease(v113);
  v95 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t _AMAuthInstallVinylCreateIm4p(const void *a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  values[2] = *MEMORY[0x29EDCA608];
  memset(&buffer[5], 0, 12);
  bytesDeallocator = AMAuthInstallSupportCopyAllocator();
  Payload = 1;
  if (!a1 || !a2 || !a3)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_6();
  if (a4)
  {
    v11 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      OUTLINED_FUNCTION_3_9();
      v56 = 0;
      OUTLINED_FUNCTION_12_2();
      goto LABEL_44;
    }

    v13 = CFGetAllocator(a1);
    v14 = CFArrayCreateMutable(v13, 0, MEMORY[0x29EDB9000]);
    v15 = v14;
    v56 = Mutable;
    if (!v14)
    {
      v55 = 0;
      OUTLINED_FUNCTION_12_2();
      goto LABEL_44;
    }

    values[0] = Mutable;
    values[1] = v14;
    v16 = CFGetAllocator(a1);
    Payload = 2;
    v17 = CFArrayCreate(v16, values, 2, MEMORY[0x29EDB9000]);
    *(a3 + 48) = v17;
    v55 = v15;
    if (v17)
    {
      OUTLINED_FUNCTION_1_16();
      v19 = BbfwReaderStart(a2, v18, a3);
      if (!v19)
      {
        if (!*(a3 + 56))
        {
          v52 = "Failed to build vinyl info.plist dictionary";
          v53 = 3;
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_0_9();
        v19 = BbfwReaderStart(a2, v25, a3);
        if (!v19)
        {
          Count = CFArrayGetCount(Mutable);
          if (Count <= 0)
          {
            v54 = *a3;
            v52 = "No sources found for %@";
          }

          else
          {
            v4 = Count;
            if (Count == CFArrayGetCount(v15))
            {
              v6 = malloc(8 * v4);
              v5 = malloc(8 * v4);
              v62.location = 0;
              v62.length = v4;
              CFArrayGetValues(Mutable, v62, v6);
              v63.location = 0;
              v63.length = v4;
              CFArrayGetValues(v15, v63, v5);
              DEREncoderCreate();
              DEREncoderCreate();
              v27 = 0;
              while (1)
              {
                DEREncoderCreate();
                CFDataGetBytePtr(v6[v27]);
                CFDataGetLength(v6[v27]);
                if (OUTLINED_FUNCTION_4_8())
                {
                  break;
                }

                CFDataGetBytePtr(v5[v27]);
                CFDataGetLength(v5[v27]);
                if (OUTLINED_FUNCTION_4_8())
                {
                  v51 = "failed to add VAD";
                  goto LABEL_30;
                }

                if (DEREncoderAddSequenceFromEncoder())
                {
                  v51 = "failed to add certId-VAD sequence";
                  goto LABEL_30;
                }

                DEREncoderDestroy();
                if (v4 == ++v27)
                {
                  if (DEREncoderAddSequenceFromEncoder())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to add top-level sequence", v33, v34, v35, v36, v37, v54);
                    goto LABEL_26;
                  }

                  DEREncoderDestroy();
                  if (DEREncoderCreateEncodedBuffer())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to encode DER buffer", v38, v39, v40, v41, v42, v54);
                    OUTLINED_FUNCTION_3_9();
                    goto LABEL_26;
                  }

                  v43 = CFGetAllocator(a1);
                  v4 = CFDataCreateWithBytesNoCopy(v43, *&buffer[9], *&buffer[5], bytesDeallocator);
                  if (v4)
                  {
                    if (CFStringGetCString(*a3, buffer, 5, 0x8000100u) && CFStringGetCString(@"1.0", v59, 5, 0x8000100u))
                    {
                      Payload = AMAuthInstallApImg4CreatePayload(buffer, v59, v4, 0, 0, a4);
                      if (Payload)
                      {
                        AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to create im4p", v44, v45, v46, v47, v48, v54);
                      }

                      OUTLINED_FUNCTION_3_9();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3_9();
                      Payload = 3;
                    }

                    goto LABEL_26;
                  }

                  OUTLINED_FUNCTION_3_9();
LABEL_44:
                  Payload = 2;
                  goto LABEL_26;
                }
              }

              v51 = "failed to add certId";
LABEL_30:
              Payload = 3;
              AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", v51, v28, v29, v30, v31, v32, v54);
              goto LABEL_26;
            }

            v52 = "Count of certID != hashVad";
          }

          v53 = 4;
LABEL_40:
          AMAuthInstallLog(v53, "_AMAuthInstallVinylCreateIm4p", v52, v20, v21, v22, v23, v24, v54);
          OUTLINED_FUNCTION_3_9();
          OUTLINED_FUNCTION_12_2();
          Payload = 0;
          goto LABEL_26;
        }
      }

      Payload = v19;
      AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to read zip file", v20, v21, v22, v23, v24, v54);
    }

    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_12_2();
  }

LABEL_26:
  SafeFree(v6);
  SafeFree(v5);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v56);
  SafeRelease(v55);
  SafeRelease(*(a3 + 48));
  SafeRelease(*(a3 + 56));
  SafeRelease(v4);
  SafeRelease(bytesDeallocator);
  v49 = *MEMORY[0x29EDCA608];
  return Payload;
}

uint64_t __AMAuthInstallVinylFwReaderCallback(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v3 = 0;
  PathComponent = 0;
  v52 = *MEMORY[0x29EDCA608];
  cf1 = 0;
  theData = 0;
  if (!a1 || !theString)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  v8 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || (ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), AMAuthInstallSupportCopyDataFromHexString(0, ValueAtIndex, &cf1)))
  {
    PathComponent = 0;
LABEL_44:
    MutableCopy = 0;
    goto LABEL_45;
  }

  v13 = *(a1 + 8);
  if (!v13 || !CFStringHasSuffix(theString, v13))
  {
    PathComponent = 0;
    OUTLINED_FUNCTION_12_2();
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  PathComponent = _AMAuthInstallVinylGetPathComponent(theString);
  if (!PathComponent)
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(*(a1 + 56), PathComponent);
  if (!Value)
  {
    goto LABEL_44;
  }

  v17 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v17;
  if (!v17)
  {
    goto LABEL_45;
  }

  if (CFArrayGetCount(v17) >= 1 && (v18 = CFArrayGetValueAtIndex(MutableCopy, 0)) != 0)
  {
    v9 = CFStringCreateArrayBySeparatingStrings(0, v18, @".");
    if (CFArrayGetCount(v9) == 2)
    {
      v19 = CFArrayGetValueAtIndex(v9, 0);
      IntValue = CFStringGetIntValue(v19);
      v21 = CFArrayGetValueAtIndex(v9, 1);
      v22 = ((CFStringGetIntValue(v21) | (IntValue << 8)) & 0x7FFFu) > 0x300;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v9 = 0;
  }

  SafeRelease(v9);
  v23 = *(a1 + 32);
  if (!v23)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_35;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (v22)
  {
    goto LABEL_30;
  }

  if (CFArrayGetCount(MutableCopy) < 1)
  {
    goto LABEL_30;
  }

  v24 = CFArrayGetValueAtIndex(MutableCopy, 0);
  if (!v24 || (MutableCopy = CFStringCreateArrayBySeparatingStrings(0, v24, @"."), CFArrayGetCount(MutableCopy) != 2) || (v25 = CFDataGetBytePtr(v9)) == 0 || (v26 = v25, v27 = *v25, v28 = CFArrayGetValueAtIndex(MutableCopy, 0), CFStringGetIntValue(v28) != v27) || (v9 = v26[1], v29 = CFArrayGetValueAtIndex(MutableCopy, 1), CFStringGetIntValue(v29) != v9))
  {
LABEL_30:
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, *(a1 + 32));
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(*(a1 + 40));
      Length = CFDataGetLength(*(a1 + 40));
      CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
      CFDataGetBytePtr(MutableCopy);
      CFDataGetLength(MutableCopy);
      if (!AMSupportDigestSha256())
      {
        SafeRelease(0);
        v9 = CFDataCreate(0, bytes, 32);
        v30 = CFEqual(cf1, v9);
        goto LABEL_33;
      }

      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest", v33, v34, v35, v36, v37, v48);
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  v23 = *(a1 + 32);
LABEL_28:
  CFEqual(cf1, v23);
  OUTLINED_FUNCTION_12_2();
LABEL_33:
  if (v30 && BbfwReaderFindAndCopyFileData(a3, theString, (a1 + 24)))
  {
    goto LABEL_49;
  }

LABEL_35:
  v43 = *(a1 + 48);
  if (!v43)
  {
    goto LABEL_9;
  }

  v44 = CFArrayGetValueAtIndex(v43, 0);
  v45 = CFArrayGetValueAtIndex(*(a1 + 48), 1);
  v3 = 0;
  if (v44)
  {
    v46 = v45;
    if (v45)
    {
      if (!cf1)
      {
        goto LABEL_46;
      }

      CFArrayAppendValue(v44, cf1);
      if (!BbfwReaderFindAndCopyFileData(a3, theString, &theData))
      {
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (!AMSupportDigestSha256())
        {
          SafeRelease(v9);
          v9 = CFDataCreate(0, bytes, 32);
          if (v9)
          {
            CFArrayAppendValue(v46, v9);
            goto LABEL_9;
          }

LABEL_46:
          v3 = 0;
          goto LABEL_10;
        }

        v47 = "failed to compute digest";
LABEL_52:
        AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", v47, v38, v39, v40, v41, v42, v48);
        goto LABEL_46;
      }

LABEL_49:
      v47 = "failed to find and/or copy data";
      goto LABEL_52;
    }
  }

LABEL_10:
  SafeRelease(theData);
  SafeRelease(cf1);
  SafeRelease(v9);
  SafeRelease(v8);
  SafeRelease(MutableCopy);
  SafeRelease(PathComponent);
  v14 = *MEMORY[0x29EDCA608];
  return v3;
}

CFStringRef _AMAuthInstallVinylGetPathComponent(CFStringRef filePath)
{
  if (!filePath)
  {
    Copy = 0;
    v2 = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_5;
  }

  v1 = *MEMORY[0x29EDB8ED8];
  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v2)
  {
    Copy = 0;
    goto LABEL_8;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v1, v2);
  v4 = PathComponent;
  if (PathComponent)
  {
    v5 = CFURLGetString(PathComponent);
    Copy = CFStringCreateCopy(v1, v5);
  }

  else
  {
    Copy = 0;
  }

LABEL_5:
  SafeRelease(v2);
  SafeRelease(v4);
  return Copy;
}

uint64_t AMAuthInstallBasebandMAV22StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = OUTLINED_FUNCTION_1_7(v12, @"aop.mbn");
      v14 = OUTLINED_FUNCTION_1_7(v13, @"apdp.mbn");
      v15 = OUTLINED_FUNCTION_1_7(v14, @"apps.mbn");
      v16 = OUTLINED_FUNCTION_1_7(v15, @"bbcfg.mbn");
      v17 = OUTLINED_FUNCTION_1_7(v16, @"devcfg.mbn");
      v18 = OUTLINED_FUNCTION_1_7(v17, @"hyp.mbn");
      v19 = OUTLINED_FUNCTION_1_7(v18, @"qdsp6sw.mbn");
      OUTLINED_FUNCTION_1_7(v19, @"sec.elf");
      OUTLINED_FUNCTION_2(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      OUTLINED_FUNCTION_2(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = OUTLINED_FUNCTION_2(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = OUTLINED_FUNCTION_1_7(v20, @"multi_image_qti.mbn");
      OUTLINED_FUNCTION_1_7(v21, @"tz.mbn");
      v22 = OUTLINED_FUNCTION_2(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v23 = OUTLINED_FUNCTION_1_7(v22, @"xbl_cfg.elf");
      v24 = OUTLINED_FUNCTION_1_7(v23, @"uefi.elf");
      OUTLINED_FUNCTION_1_7(v24, @"xbl_support.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV22StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v26);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

void *BbfwReaderOpen(CFTypeRef cf)
{
  v26 = *MEMORY[0x29EDCA608];
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(*MEMORY[0x29EDB8ED8], cf, &url, 0))
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "%s: failed to get new URL", v3, v4, v5, v6, v7, "BbfwReaderOpen");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_1_17(0, v1, v2, v3, v4, v5, v6, v7, v21, v23, url, v25[0]))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = amai_unzOpen(v25);
  if (!v13)
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "failed to open bbfw archive for reading", v8, v9, v10, v11, v12, v22);
    AMAuthInstallLog(7, "BbfwReaderOpen", "Bbfw url: %@", v14, v15, v16, v17, v18, url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  v19 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t BbfwReaderClose(uint64_t a1)
{
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t BbfwReaderFindFile(uint64_t a1, CFStringRef theString)
{
  v6 = *MEMORY[0x29EDCA608];
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    result = 4 * (amai_unzLocateFile(a1, buffer, 0) != 0);
  }

  else
  {
    result = 99;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BbfwReaderFindAndCopyFileData(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v4 = a2;
  cf = 0;
  File = BbfwReaderFindFile(a1, a2);
  if (File)
  {
    v7 = File;
    AMAuthInstallGetLocalizedStatusString(0, File);
    AMAuthInstallLog(7, "BbfwReaderFindAndCopyFileData", "failed to find bbfw item %@: %@", v8, v9, v10, v11, v12, v4);
    v13 = 0;
  }

  else
  {
    v15 = BbfwReaderCopyFileData(a1, &cf);
    if (v15)
    {
      v7 = v15;
      AMAuthInstallGetLocalizedStatusString(0, v15);
      AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: %@", v21, v22, v23, v24, v25, v4);
      v13 = cf;
    }

    else
    {
      v13 = cf;
      if (cf)
      {
        v7 = 0;
        *a3 = CFRetain(cf);
      }

      else
      {
        AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: fileData is NULL", v16, v17, v18, v19, v20, v4);
        v7 = 0;
      }
    }
  }

  SafeRelease(v13);
  return v7;
}

uint64_t BbfwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(v12, 0x88uLL);
  v4 = AMAuthInstallSupportCopyAllocator();
  if (OUTLINED_FUNCTION_0_10(a1, v12, v14))
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = malloc(__size);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (amai_unzOpenCurrentFile(a1))
  {
    goto LABEL_10;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_8;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
LABEL_10:
    v8 = 0;
    v9 = 15;
    goto LABEL_8;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v5, __size, v4);
  v8 = v7;
  if (!v7)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_8;
  }

  v5 = 0;
  v9 = 0;
  *a2 = CFRetain(v7);
LABEL_8:
  SafeRelease(v8);
  SafeRelease(v4);
  SafeFree(v5);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t BbfwReaderStart(const void *a1, uint64_t (*a2)(uint64_t, CFStringRef, void *), uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = BbfwReaderOpen(a1);
  if (!v5)
  {
    AMAuthInstallLog(3, "BbfwReaderStart", "failed to open bbfw archive for reading", v6, v7, v8, v9, v10, v19[0]);
    v16 = 4;
    goto LABEL_10;
  }

  v11 = v5;
  bzero(v19, 0x88uLL);
  v12 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    if (OUTLINED_FUNCTION_0_10(v11, v19, cStr))
    {
      v16 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v11))
    {
LABEL_8:
      v16 = 0;
      goto LABEL_9;
    }
  }

  v13 = CFStringCreateWithCString(v12, cStr, 0x8000100u);
  if (v13)
  {
    v14 = v13;
    v15 = a2(a3, v13, v11);
    CFRelease(v14);
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = 3;
LABEL_9:
  amai_unzClose(v11);
LABEL_10:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t BbfwCreateDictionaryFromURL(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v6 = BbfwReaderStart(a2, _CreateDictCallback, Mutable);
    if (!v6)
    {
      *a3 = CFRetain(Mutable);
    }
  }

  else
  {
    v6 = 2;
  }

  SafeRelease(Mutable);
  return v6;
}

BOOL _CreateDictCallback(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  v6 = value;
  if (!v5)
  {
    CFDictionarySetValue(a1, a2, value);
  }

  SafeRelease(v6);
  return v5 == 0;
}

void *BbfwWriterCreate(CFTypeRef cf)
{
  v26 = *MEMORY[0x29EDCA608];
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(*MEMORY[0x29EDB8ED8], cf, &url, 1))
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "%s: failed to get new URL", v3, v4, v5, v6, v7, "BbfwWriterCreate");
    goto LABEL_5;
  }

  if (!OUTLINED_FUNCTION_1_17(0, v1, v2, v3, v4, v5, v6, v7, v21, v23, url, v25))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = amai_zipOpen();
  if (!v13)
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "failed to open bbfw archive for writing", v8, v9, v10, v11, v12, v22);
    AMAuthInstallLog(7, "BbfwWriterCreate", "Bbfw url: %@", v14, v15, v16, v17, v18, url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  v19 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t AMAuthInstallSsoSetAppleConnectInfo(void *a1, const __CFString *cf, const void *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFStringGetTypeID();
      Mutable = 0;
      if (a3)
      {
        if (v8 == TypeID)
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CFDataGetTypeID())
          {
            v11 = CFGetAllocator(a1);
            Mutable = CFDataCreateMutable(v11, 0);
            if (Mutable)
            {
              Length = CFStringGetLength(cf);
              CFDataSetLength(Mutable, Length + 1);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              v14 = CFDataGetLength(Mutable);
              if (CFStringGetCString(cf, MutableBytePtr, v14, 0x8000100u))
              {
                BytePtr = CFDataGetBytePtr(a3);
                v16 = CFDataGetLength(a3);
                CFDataAppendBytes(Mutable, BytePtr, v16);
                v4 = AMAuthInstallSsoSetToken(a1, Mutable);
              }

              else
              {
                v4 = 3;
              }
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            Mutable = 0;
          }
        }
      }
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallSsoSetToken(void *a1, CFTypeRef cf)
{
  result = 1;
  if (a1 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = a1[15];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = CFGetAllocator(a1);
      Copy = CFDataCreateCopy(v7, cf);
      result = 0;
      a1[15] = Copy;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const void *ACFURestoreHost::copyDataFromFileDictionary(ACFULogging *key, CFDictionaryRef theDict, int a3)
{
  if (!key)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: key value not provided\n", v9, v10, v11, v12, v13, "ACFURestoreHost");
    return 0;
  }

  if (!theDict)
  {
    v14 = ACFULogging::getLogInstance(key);
    ACFULogging::handleMessage(v14, 2u, "%s::%s: firmware file dictionary not provided\n", v15, v16, v17, v18, v19, "ACFURestoreHost");
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, key);
  v5 = Value;
  if (a3)
  {
    if (Value)
    {
      AMSupportSafeRetain();
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDB8ED8];
    AMSupportCreateDataFromFileURL();
    return 0;
  }

  return v5;
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_19(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_19();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1 && a2)
  {
    bzero(v12, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v12);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          result = 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6 || (OUTLINED_FUNCTION_1_19(), result = DERImg4DecodePayloadCompression(v5, v11), !result))
          {
            result = 0;
          }
        }
      }
    }

    else
    {
      v7 = v12[1];
      *a2 = v12[0];
      *(a2 + 16) = v7;
      v8 = v12[3];
      *(a2 + 32) = v12[2];
      *(a2 + 48) = v8;
      v9 = v12[5];
      *(a2 + 64) = v12[4];
      *(a2 + 80) = v9;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_13();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t eUICCFwReaderClose(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: entering: %s\n", v3, v4, v5, v6, v7, "eUICCFwReader");
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t eUICCFwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_0_10(a1, &v11, v13))
  {
    goto LABEL_9;
  }

  v4 = malloc(__size);
  if (!v4)
  {
LABEL_10:
    result = 2;
    goto LABEL_8;
  }

  v5 = v4;
  if (amai_unzOpenCurrentFile(a1))
  {
    goto LABEL_9;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    result = 4;
    goto LABEL_8;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
LABEL_9:
    result = 15;
    goto LABEL_8;
  }

  v7 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v5, __size, *MEMORY[0x29EDB8EE0]);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  *a2 = CFRetain(v7);
  CFRelease(v8);
  result = 0;
LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t eUICCFwReaderStart(ACFULogging *a1, uint64_t (*a2)(uint64_t, CFStringRef, ACFULogging *), uint64_t a3)
{
  v35 = *MEMORY[0x29EDCA608];
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: entering: %s\n", v7, v8, v9, v10, v11, "eUICCFwReader");
  v12 = eUICCFwReaderOpen(a1);
  if (!v12)
  {
    v27 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v27, 2u, "%s::%s: failed to open bbfw archive for reading\n", v28, v29, v30, v31, v32, "eUICCFwReader");
    v17 = 4;
    goto LABEL_9;
  }

  v13 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    if (OUTLINED_FUNCTION_0_10(v12, v33, cStr))
    {
      v17 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v12))
    {
LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  v14 = CFStringCreateWithCString(v13, cStr, 0x8000100u);
  if (v14)
  {
    v15 = v14;
    v16 = a2(a3, v14, v12);
    CFRelease(v15);
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v17 = 3;
LABEL_9:
  v18 = eUICCFwReaderClose(v12);
  v19 = ACFULogging::getLogInstance(v18);
  ACFULogging::handleMessage(v19, 4u, "%s::%s: leaving: %s\n", v20, v21, v22, v23, v24, "eUICCFwReader");
  v25 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t VinylFirmware::setAuthPayload(VinylFirmware *this, const __CFData *a2)
{
  v3 = *(this + 23);
  if (!v3)
  {
    v6 = 99;
    v7 = "%s::%s: failed to open libauthinstall dylib\n";
    goto LABEL_11;
  }

  v5 = dlsym(v3, "AMAuthInstallApImg4CreateStitchTicket");
  v3 = dlerror();
  v6 = 99;
  v7 = "%s::%s: failed to initialize LAI lib create function\n";
  if (v3 || !v5)
  {
    goto LABEL_11;
  }

  v8 = (v5)(0, *(this + 17), a2);
  if (!v8)
  {
    return 3;
  }

  v3 = VinylFirmware::stitchImg4Vad(v8, v8, *(this + 19), this + 20);
  v6 = v3;
  if (v3 || !*(this + 20))
  {
    v7 = "%s::%s: failed stiching img4 and vad\n";
LABEL_11:
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2u, v7, v11, v12, v13, v14, v15, "VinylFirmware");
    return v6;
  }

  return 0;
}

uint64_t VinylFirmware::stitchImg4Vad(VinylFirmware *this, CFDataRef theData, const __CFData *a3, const __CFData **a4)
{
  v4 = 1;
  if (theData && a3)
  {
    MutableCopy = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    Length = CFDataGetLength(theData);
    v10 = CFDataGetLength(a3);
    MutableCopy = CFDataCreateMutableCopy(0, v10 + Length, theData);
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(a3);
      v12 = CFDataGetLength(a3);
      CFDataAppendBytes(MutableCopy, BytePtr, v12);
      if (DEREncoderCreate())
      {
        CFDataGetBytePtr(MutableCopy);
        CFDataGetLength(MutableCopy);
        EncodedBuffer = DEREncoderAddData();
        if (EncodedBuffer || (EncodedBuffer = DEREncoderCreateEncodedBuffer(), EncodedBuffer))
        {
          LogInstance = ACFULogging::getLogInstance(EncodedBuffer);
          ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to encode img4/vad sequence\n", v17, v18, v19, v20, v21, "VinylFirmware");
          goto LABEL_9;
        }

        v14 = CFDataCreate(0, 0, 0);
        *a4 = v14;
        if (v14)
        {
LABEL_9:
          v4 = 0;
          goto LABEL_10;
        }
      }
    }

    v4 = 2;
  }

  else
  {
    MutableCopy = 0;
  }

LABEL_10:
  DEREncoderDestroy();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderInfoPlistCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  data = 0;
  if (!a2 || !theString || !a4)
  {
    return v4;
  }

  v8 = a2[2];
  if (!v8)
  {
    return 1;
  }

  HasSuffix = CFStringHasSuffix(theString, v8);
  if (!HasSuffix)
  {
    return 1;
  }

  error = 0;
  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (PathComponent)
  {
    v11 = eUICCFwReaderFindAndCopyFileData(a4, theString, &data);
    if (!v11)
    {
      v12 = *MEMORY[0x29EDB8ED8];
      v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], data, 0, 0, &error);
      if (v13 && ((Mutable = a2[7]) != 0 || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]), (a2[7] = Mutable) != 0)))
      {
        CFDictionaryAddValue(Mutable, PathComponent, v13);
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_12;
    }

    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to find and/or copy data\n", v17, v18, v19, v20, v21, "VinylFirmware");
  }

  v4 = 0;
  v13 = 0;
LABEL_12:
  if (data)
  {
    CFRelease(data);
    data = 0;
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v4;
}

uint64_t VinylFirmware::fwReaderCallback(VinylFirmware *this, void *a2, CFStringRef theString, ACFULogging *a4)
{
  v4 = 0;
  MutableCopy = 0;
  v70 = *MEMORY[0x29EDCA608];
  cf1 = 0;
  theData = 0;
  if (!a2 || !theString)
  {
    PathComponent = 0;
    ArrayBySeparatingStrings = 0;
    goto LABEL_60;
  }

  PathComponent = 0;
  ArrayBySeparatingStrings = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_39;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (!ArrayBySeparatingStrings)
  {
LABEL_54:
    MutableCopy = 0;
    PathComponent = 0;
    goto LABEL_57;
  }

  v13 = *(this + 23);
  if (!v13)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to open libauthinstall dylib\n", v38, v39, v40, v41, v42, "VinylFirmware");
    goto LABEL_54;
  }

  v14 = dlsym(v13, "AMAuthInstallSupportCopyDataFromHexString");
  v15 = dlerror();
  if (v15 || !v14)
  {
    v43 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v43, 2u, "%s::%s: failed to initialize LAI lib create function\n", v44, v45, v46, v47, v48, "VinylFirmware");
    goto LABEL_54;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
  v17 = v14(0, ValueAtIndex, &cf1);
  v4 = 0;
  MutableCopy = 0;
  if (!cf1 || v17)
  {
    PathComponent = 0;
LABEL_60:
    v10 = 0;
    goto LABEL_39;
  }

  v18 = *(a2 + 1);
  if (!v18 || (HasSuffix = CFStringHasSuffix(theString, v18), !HasSuffix))
  {
    MutableCopy = 0;
    PathComponent = 0;
    v10 = 0;
LABEL_38:
    v4 = 1;
    goto LABEL_39;
  }

  PathComponent = VinylFirmware::getPathComponent(HasSuffix, theString);
  if (!PathComponent || (Value = CFDictionaryGetValue(*(a2 + 7), PathComponent)) == 0)
  {
    MutableCopy = 0;
    goto LABEL_57;
  }

  v21 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v21;
  if (!v21)
  {
    goto LABEL_57;
  }

  v22 = VinylFirmware::checkVinylFwLdrVerLegacy(v21, v21);
  v23 = *(a2 + 4);
  if (!v23)
  {
    MutableCopy = 0;
    v10 = 0;
    goto LABEL_28;
  }

  v24 = *(a2 + 5);
  if (!v24 || v22 && (v25 = VinylFirmware::fwLdrVerEqual(v22, MutableCopy, v24), v23 = *(a2 + 4), v25))
  {
    MutableCopy = 0;
    v10 = 0;
    if (!CFEqual(cf1, v23))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v23);
  if (!MutableCopy)
  {
LABEL_57:
    v10 = 0;
    goto LABEL_58;
  }

  BytePtr = CFDataGetBytePtr(*(a2 + 5));
  Length = CFDataGetLength(*(a2 + 5));
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v28 = AMSupportDigestSha256();
  if (v28)
  {
    v61 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v61, 2u, "%s::%s: failed to compute digest\n", v62, v63, v64, v65, v66, "VinylFirmware");
    goto LABEL_57;
  }

  v10 = CFDataCreate(0, bytes, 32);
  if (!v10)
  {
    goto LABEL_58;
  }

  if (CFEqual(cf1, v10))
  {
LABEL_27:
    v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, a2 + 3);
    if (v29)
    {
LABEL_61:
      v49 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v49, 2u, "%s::%s: failed to find and/or copy data\n", v50, v51, v52, v53, v54, "VinylFirmware");
      goto LABEL_58;
    }
  }

LABEL_28:
  v30 = *(a2 + 6);
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = CFArrayGetValueAtIndex(v30, 0);
  v32 = CFArrayGetValueAtIndex(*(a2 + 6), 1);
  v4 = 0;
  if (v31)
  {
    v33 = v32;
    if (v32)
    {
      if (cf1)
      {
        CFArrayAppendValue(v31, cf1);
        v29 = eUICCFwReaderFindAndCopyFileData(a4, theString, &theData);
        if (!v29)
        {
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          v34 = AMSupportDigestSha256();
          if (v34)
          {
            v55 = ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage(v55, 2u, "%s::%s: failed to compute digest\n", v56, v57, v58, v59, v60, "VinylFirmware");
            goto LABEL_38;
          }

          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFDataCreate(0, bytes, 32);
          if (v10)
          {
            CFArrayAppendValue(v33, v10);
            goto LABEL_38;
          }

          goto LABEL_58;
        }

        goto LABEL_61;
      }

LABEL_58:
      v4 = 0;
    }
  }

LABEL_39:
  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (cf1)
  {
    CFRelease(cf1);
    cf1 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  v35 = *MEMORY[0x29EDCA608];
  return v4;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}