@interface CUKeychainItem(RPIdentity)
- (uint64_t)updateWithRPIdentity:()RPIdentity revisionUpdate:error:;
@end

@implementation CUKeychainItem(RPIdentity)

- (uint64_t)updateWithRPIdentity:()RPIdentity revisionUpdate:error:
{
  v7 = a3;
  metadata = [self metadata];
  selfCopy = self;
  secrets = [self secrets];
  CFArrayGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  accessGroups = [v7 accessGroups];
  v12 = v10;
  v13 = v12;
  v261 = v12;
  v242 = a5;
  if (accessGroups == v12)
  {

    goto LABEL_6;
  }

  if ((v12 == 0) != (accessGroups != 0))
  {
    v14 = [accessGroups isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v17 = [metadata mutableCopy];
  v18 = v17;
  if (v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v15 setObject:accessGroups forKeyedSubscript:@"accessGroups"];
  v16 = 0x80000;
LABEL_12:
  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  accountAltDSID = [v7 accountAltDSID];
  v262 = v19;
  v260 = accountAltDSID;
  if (![accountAltDSID length])
  {
    goto LABEL_25;
  }

  v21 = accountAltDSID;
  v22 = v19;
  v23 = v22;
  if (v21 == v22)
  {

    goto LABEL_25;
  }

  if ((v22 == 0) != (v21 != 0))
  {
    v24 = [v21 isEqual:v22];

    if (v24)
    {
      goto LABEL_25;
    }

    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    v25 = [metadata mutableCopy];
    v26 = v25;
    if (v25)
    {
      v15 = v25;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_24:
  [v15 setObject:v21 forKeyedSubscript:@"accountAltDSID"];
  v16 = v16 | 0x2000000;
LABEL_25:
  CFStringGetTypeID();
  v27 = CFDictionaryGetTypedValue();
  accountID = [v7 accountID];
  v258 = accountID;
  v259 = v27;
  if (![accountID length])
  {
    goto LABEL_38;
  }

  v29 = accountID;
  v30 = v27;
  v31 = v30;
  if (v29 == v30)
  {

    goto LABEL_38;
  }

  if ((v30 == 0) != (v29 != 0))
  {
    v32 = [v29 isEqual:v30];

    if (v32)
    {
      goto LABEL_38;
    }

    if (v15)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (!v15)
  {
LABEL_33:
    v33 = [metadata mutableCopy];
    v34 = v33;
    if (v33)
    {
      v15 = v33;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_37:
  [v15 setObject:v29 forKeyedSubscript:@"accountID"];
  v16 = v16 | 0x2000;
LABEL_38:
  CFStringGetTypeID();
  v35 = CFDictionaryGetTypedValue();
  contactID = [v7 contactID];
  v256 = contactID;
  v257 = v35;
  if (![contactID length])
  {
    goto LABEL_51;
  }

  v37 = contactID;
  v38 = v35;
  v39 = v38;
  if (v37 == v38)
  {

    goto LABEL_51;
  }

  if ((v38 == 0) != (v37 != 0))
  {
    v40 = [v37 isEqual:v38];

    if (v40)
    {
      goto LABEL_51;
    }

    if (v15)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (!v15)
  {
LABEL_46:
    v41 = [metadata mutableCopy];
    v42 = v41;
    if (v41)
    {
      v15 = v41;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_50:
  [v15 setObject:v37 forKeyedSubscript:@"contactID"];
  v16 = v16 | 0x8000;
LABEL_51:
  dateAcknowledged = [v7 dateAcknowledged];
  CFDateGetTypeID();
  v44 = CFDictionaryGetTypedValue();
  v45 = dateAcknowledged;
  v46 = v44;
  v47 = v45;
  v254 = v46;
  if (v45 == v46)
  {

    goto LABEL_63;
  }

  if ((v45 != 0) != (v46 == 0))
  {
    v48 = v46;
    v49 = [v45 isEqual:v46];

    if (v49)
    {
      goto LABEL_63;
    }

    if (v15)
    {
      goto LABEL_62;
    }

    goto LABEL_58;
  }

  if (!v15)
  {
LABEL_58:
    v50 = [metadata mutableCopy];
    v51 = v50;
    if (v50)
    {
      v15 = v50;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

LABEL_62:
  [v15 setObject:v47 forKeyedSubscript:@"dateAck"];
  v16 = v16 | 2;
LABEL_63:
  dateAdded = [v7 dateAdded];
  v263 = dateAdded;
  v255 = v47;
  if (!dateAdded)
  {
    goto LABEL_77;
  }

  v53 = dateAdded;
  CFDateGetTypeID();
  v54 = CFDictionaryGetTypedValue();
  v55 = v53;
  v56 = v54;
  v57 = v56;
  if (v55 == v56)
  {
  }

  else
  {
    if (!v56)
    {

      if (!v15)
      {
LABEL_71:
        v59 = [metadata mutableCopy];
        v60 = v59;
        if (v59)
        {
          v15 = v59;
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }
      }

LABEL_75:
      [v15 setObject:v55 forKeyedSubscript:@"dateAdded"];
      v16 = v16 | 2;
      goto LABEL_76;
    }

    v58 = [v55 isEqual:v56];

    if ((v58 & 1) == 0)
    {
      if (!v15)
      {
        goto LABEL_71;
      }

      goto LABEL_75;
    }
  }

LABEL_76:

LABEL_77:
  dateRemoved = [v7 dateRemoved];
  CFDateGetTypeID();
  v62 = CFDictionaryGetTypedValue();
  v63 = dateRemoved;
  v64 = v62;
  v65 = v64;
  v252 = v64;
  v253 = v63;
  if (v63 == v64)
  {

    if (v63)
    {
      goto LABEL_81;
    }

LABEL_83:
    v264 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v264 addObject:@"dateRemoved"];
    goto LABEL_94;
  }

  if ((v63 != 0) != (v64 == 0))
  {
    v66 = [v63 isEqual:v64];

    if (v66)
    {
      if (v63)
      {
LABEL_81:
        v264 = 0;
        goto LABEL_94;
      }

      goto LABEL_83;
    }
  }

  else
  {
  }

  if (v63)
  {
    if (!v15)
    {
      v67 = [metadata mutableCopy];
      v68 = v67;
      if (v67)
      {
        v15 = v67;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }
    }

    [v15 setObject:v63 forKeyedSubscript:@"dateRemoved"];
    v264 = 0;
  }

  else
  {
    v264 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v264 addObject:@"dateRemoved"];
  }

  v16 = v16 | 2;
LABEL_94:
  dateRequested = [v7 dateRequested];
  CFDateGetTypeID();
  v70 = CFDictionaryGetTypedValue();
  v71 = dateRequested;
  v72 = v70;
  v251 = v72;
  if (v71 == v72)
  {

    if (v71)
    {
      goto LABEL_115;
    }

    goto LABEL_100;
  }

  if ((v71 != 0) != (v72 == 0))
  {
    v73 = v72;
    v74 = [v71 isEqual:v72];

    if (v74)
    {
      if (v71)
      {
        goto LABEL_115;
      }

LABEL_100:
      v75 = v264;
      if (!v264)
      {
        v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v264 = v75;
      [v75 addObject:@"dateReq"];
      goto LABEL_115;
    }
  }

  else
  {
  }

  if (v71)
  {
    if (!v15)
    {
      v76 = [metadata mutableCopy];
      v77 = v76;
      if (v76)
      {
        v15 = v76;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }
    }

    [v15 setObject:v71 forKeyedSubscript:@"dateReq"];
  }

  else
  {
    v78 = v264;
    if (!v264)
    {
      v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v264 = v78;
    [v78 addObject:@"dateReq"];
  }

  v16 = v16 | 2;
LABEL_115:
  deviceIRKData = [v7 deviceIRKData];
  v250 = deviceIRKData;
  if ([deviceIRKData length] != 16)
  {
    v266 = 0;
    goto LABEL_129;
  }

  CFDataGetTypeID();
  v80 = CFDictionaryGetTypedValue();
  v81 = deviceIRKData;
  v82 = v80;
  v83 = v82;
  if (v81 != v82)
  {
    v244 = v7;
    v84 = v15;
    v85 = v71;
    v86 = accessGroups;
    if ((v81 != 0) != (v82 == 0))
    {
      v87 = [v81 isEqual:v82];

      if (v87)
      {
        v266 = 0;
LABEL_127:
        accessGroups = v86;
        v71 = v85;
        v15 = v84;
        v7 = v244;
        goto LABEL_128;
      }
    }

    else
    {
    }

    v88 = secrets;
    v89 = [secrets mutableCopy];
    v90 = v89;
    if (v89)
    {
      v91 = v89;
    }

    else
    {
      v91 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v266 = v91;
    [v91 setObject:v81 forKeyedSubscript:@"dIRK"];
    v16 = v16 | 4;
    secrets = v88;
    goto LABEL_127;
  }

  v266 = 0;
LABEL_128:

LABEL_129:
  edPKData = [v7 edPKData];
  v249 = edPKData;
  if ([edPKData length] == 32)
  {
    CFDataGetTypeID();
    v93 = CFDictionaryGetTypedValue();
    v94 = edPKData;
    v95 = v93;
    v96 = v95;
    if (v94 != v95)
    {
      if ((v94 != 0) != (v95 == 0))
      {
        v97 = [v94 isEqual:v95];

        if (v97)
        {
          goto LABEL_142;
        }
      }

      else
      {
      }

      v98 = v266;
      if (!v266)
      {
        v245 = v7;
        v99 = metadata;
        v100 = v15;
        v101 = v16;
        v16 = v71;
        v102 = accessGroups;
        v103 = secrets;
        v104 = [secrets mutableCopy];
        v105 = v104;
        if (v104)
        {
          v106 = v104;
        }

        else
        {
          v106 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v98 = v106;
        secrets = v103;
        accessGroups = v102;
        v71 = v16;
        LODWORD(v16) = v101;
        v15 = v100;
        metadata = v99;
        v7 = v245;
      }

      v266 = v98;
      [v98 setObject:v94 forKeyedSubscript:@"edPK"];
      v16 = v16 | 8;
      goto LABEL_142;
    }

LABEL_142:
  }

  edSKData = [v7 edSKData];
  v248 = edSKData;
  if ([edSKData length] == 32 || !edSKData && +[RPIdentity _sepBackedIdentityEnabled](RPIdentity, "_sepBackedIdentityEnabled"))
  {
    CFDataGetTypeID();
    v108 = CFDictionaryGetTypedValue();
    v109 = edSKData;
    v110 = v108;
    v111 = v110;
    if (v109 != v110)
    {
      if ((v109 != 0) != (v110 == 0))
      {
        v112 = [v109 isEqual:v110];

        if (v112)
        {
          goto LABEL_159;
        }
      }

      else
      {
      }

      v113 = v266;
      if (!v266)
      {
        v246 = v7;
        v114 = metadata;
        v115 = v15;
        v116 = v16;
        v16 = v71;
        v117 = accessGroups;
        v118 = secrets;
        v119 = [secrets mutableCopy];
        v120 = v119;
        if (v119)
        {
          v121 = v119;
        }

        else
        {
          v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v113 = v121;
        secrets = v118;
        accessGroups = v117;
        v71 = v16;
        LODWORD(v16) = v116;
        v15 = v115;
        metadata = v114;
        v7 = v246;
      }

      v266 = v113;
      [v113 setObject:v109 forKeyedSubscript:@"edSK"];
      v16 = v16 | 0x10;
      goto LABEL_159;
    }

LABEL_159:
  }

  Int64 = CFDictionaryGetInt64();
  featureFlags = [v7 featureFlags];
  if (!featureFlags || (v124 = featureFlags, featureFlags == Int64))
  {
    v125 = v263;
  }

  else
  {
    v125 = v263;
    if (!v15)
    {
      v126 = [metadata mutableCopy];
      v127 = v126;
      if (v126)
      {
        v15 = v126;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v125 = v263;
    }

    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v124];
    [v15 setObject:v128 forKeyedSubscript:@"ff"];

    v16 = v16 | 0x400;
  }

  identifier = [v7 identifier];
  v247 = identifier;
  if (identifier)
  {
    v130 = identifier;
    identifier2 = [selfCopy identifier];
    v132 = v130;
    v133 = identifier2;
    v134 = v133;
    if (v132 == v133)
    {

      goto LABEL_180;
    }

    if (v133)
    {
      v135 = [v132 isEqual:v133];

      if (v135)
      {
LABEL_180:
        idsDeviceID = [v7 idsDeviceID];
        v241 = idsDeviceID;
        if (!idsDeviceID)
        {
          goto LABEL_197;
        }

        v138 = idsDeviceID;
        v139 = v132;
        if (v138 != v139)
        {
          v140 = [v138 isEqual:v139];

          if (v140)
          {
            goto LABEL_197;
          }

          CFStringGetTypeID();
          v141 = CFDictionaryGetTypedValue();
          v139 = v138;
          v142 = v141;
          v138 = v142;
          if (v139 != v142)
          {
            if (v142)
            {
              v143 = [v139 isEqual:v142];

              if (v143)
              {
                goto LABEL_196;
              }
            }

            else
            {
            }

            if (!v15)
            {
              v144 = [metadata mutableCopy];
              v145 = v144;
              if (v144)
              {
                v15 = v144;
              }

              else
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }
            }

            [v15 setObject:v139 forKeyedSubscript:@"idsDeviceID"];
            v16 = v16 | 0x40;
            goto LABEL_196;
          }
        }

LABEL_196:
LABEL_197:
        CFStringGetTypeID();
        v146 = CFDictionaryGetTypedValue();
        mediaRemoteID = [v7 mediaRemoteID];
        v239 = mediaRemoteID;
        v240 = v146;
        if (![mediaRemoteID length])
        {
          goto LABEL_210;
        }

        v148 = mediaRemoteID;
        v149 = v146;
        v150 = v149;
        if (v148 == v149)
        {

          goto LABEL_210;
        }

        if ((v149 == 0) != (v148 != 0))
        {
          v151 = [v148 isEqual:v149];

          if (v151)
          {
            goto LABEL_210;
          }

          if (v15)
          {
            goto LABEL_209;
          }
        }

        else
        {

          if (v15)
          {
LABEL_209:
            [v15 setObject:v148 forKeyedSubscript:@"mediaRemoteID"];
            v16 = v16 | 0x10000;
LABEL_210:
            CFStringGetTypeID();
            v154 = CFDictionaryGetTypedValue();
            mediaRouteID = [v7 mediaRouteID];
            v237 = mediaRouteID;
            v238 = v154;
            if (![mediaRouteID length])
            {
              goto LABEL_223;
            }

            v156 = mediaRouteID;
            v157 = v154;
            v158 = v157;
            if (v156 == v157)
            {

              goto LABEL_223;
            }

            if ((v157 == 0) != (v156 != 0))
            {
              v159 = [v156 isEqual:v157];

              if (v159)
              {
                goto LABEL_223;
              }

              if (v15)
              {
                goto LABEL_222;
              }
            }

            else
            {

              if (v15)
              {
LABEL_222:
                [v15 setObject:v156 forKeyedSubscript:@"mediaRouteID"];
                v16 = v16 | 0x20000;
LABEL_223:
                CFStringGetTypeID();
                v162 = CFDictionaryGetTypedValue();
                model = [v7 model];
                v235 = model;
                v236 = v162;
                if (![model length])
                {
                  goto LABEL_236;
                }

                v164 = model;
                v165 = v162;
                v166 = v165;
                if (v164 == v165)
                {

                  goto LABEL_236;
                }

                if ((v165 == 0) != (v164 != 0))
                {
                  v167 = [v164 isEqual:v165];

                  if (v167)
                  {
                    goto LABEL_236;
                  }

                  if (v15)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {

                  if (v15)
                  {
LABEL_235:
                    [v15 setObject:v164 forKeyedSubscript:@"model"];
                    v16 = v16 | 0x80;
LABEL_236:
                    name = [selfCopy name];
                    name2 = [v7 name];
                    v233 = name2;
                    v234 = name;
                    if (![name2 length])
                    {
                      goto LABEL_244;
                    }

                    v172 = name2;
                    v173 = name;
                    v174 = v173;
                    if (v172 == v173)
                    {

                      goto LABEL_244;
                    }

                    if ((v173 == 0) != (v172 != 0))
                    {
                      v175 = [v172 isEqual:v173];

                      if (v175)
                      {
LABEL_244:
                        CFStringGetTypeID();
                        v176 = CFDictionaryGetTypedValue();
                        sendersKnownAlias = [v7 sendersKnownAlias];
                        v231 = sendersKnownAlias;
                        v232 = v176;
                        if (![sendersKnownAlias length])
                        {
                          goto LABEL_257;
                        }

                        v178 = sendersKnownAlias;
                        v179 = v176;
                        v180 = v179;
                        if (v178 == v179)
                        {

                          goto LABEL_257;
                        }

                        if ((v179 == 0) != (v178 != 0))
                        {
                          v181 = [v178 isEqual:v179];

                          if (v181)
                          {
                            goto LABEL_257;
                          }

                          if (v15)
                          {
                            goto LABEL_256;
                          }
                        }

                        else
                        {

                          if (v15)
                          {
LABEL_256:
                            [v15 setObject:v178 forKeyedSubscript:@"ska"];
                            v16 = v16 | 0x40000;
LABEL_257:
                            objc_opt_class();
                            v184 = NSDictionaryGetNSArrayOfClass();
                            allUsedSendersKnownAliases = [v7 allUsedSendersKnownAliases];
                            v186 = v184;
                            v187 = v186;
                            if (allUsedSendersKnownAliases == v186)
                            {
                            }

                            else
                            {
                              if ((v186 == 0) == (allUsedSendersKnownAliases != 0))
                              {

                                if (!v15)
                                {
LABEL_264:
                                  v189 = [metadata mutableCopy];
                                  v190 = v189;
                                  if (v189)
                                  {
                                    v15 = v189;
                                  }

                                  else
                                  {
                                    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }
                                }

LABEL_268:
                                [v15 setObject:allUsedSendersKnownAliases forKeyedSubscript:@"allUsedSKAs"];
                                v16 = v16 | 0x1000000;
                                goto LABEL_269;
                              }

                              v188 = [allUsedSendersKnownAliases isEqual:v186];

                              if ((v188 & 1) == 0)
                              {
                                if (!v15)
                                {
                                  goto LABEL_264;
                                }

                                goto LABEL_268;
                              }
                            }

LABEL_269:
                            v191 = [v7 type] - 1;
                            v136 = v262;
                            if (v191 >= 0xF || ((0x48FFu >> v191) & 1) == 0)
                            {
                              if (v242)
                              {
                                [v7 type];
                                *v242 = RPErrorF();
                              }

                              v16 = 1;
                              goto LABEL_332;
                            }

                            v229 = accessGroups;
                            v243 = secrets;
                            v192 = off_1E7C947F0[v191];
                            type = [selfCopy type];
                            v194 = type;
                            if (v192 == type)
                            {
                            }

                            else if (!type || (v195 = [(__CFString *)v192 isEqual:type], v194, v194, (v195 & 1) == 0))
                            {
                              [selfCopy setType:v192];
                              v16 = v16 | 0x200;
                            }

                            v196 = CFDictionaryGetInt64();
                            userAdded = [v7 userAdded];
                            secrets = v243;
                            if (((userAdded ^ (v196 == 0)) & 1) == 0)
                            {
                              v198 = userAdded;
                              if (!v15)
                              {
                                v199 = [metadata mutableCopy];
                                v200 = v199;
                                if (v199)
                                {
                                  v15 = v199;
                                }

                                else
                                {
                                  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                }

                                secrets = v243;
                              }

                              v201 = [MEMORY[0x1E696AD98] numberWithBool:v198];
                              [v15 setObject:v201 forKeyedSubscript:@"userAdded"];

                              v16 = v16 | 0x4000;
                            }

                            btIRKData = [v7 btIRKData];
                            v228 = btIRKData;
                            if ([btIRKData length] != 16)
                            {
LABEL_300:
                              btAddress = [v7 btAddress];
                              v227 = btAddress;
                              if ([btAddress length] != 7)
                              {
                                goto LABEL_314;
                              }

                              CFDataGetTypeID();
                              v212 = CFDictionaryGetTypedValue();
                              v213 = btAddress;
                              v214 = v212;
                              v215 = v214;
                              if (v213 != v214)
                              {
                                if ((v213 != 0) != (v214 == 0))
                                {
                                  v216 = [v213 isEqual:v214];

                                  if (v216)
                                  {
                                    goto LABEL_313;
                                  }
                                }

                                else
                                {
                                }

                                v217 = v266;
                                if (!v266)
                                {
                                  v218 = [v243 mutableCopy];
                                  v268 = v218;
                                  if (v218)
                                  {
                                    v219 = v218;
                                  }

                                  else
                                  {
                                    v219 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }

                                  v217 = v219;
                                }

                                v266 = v217;
                                [v217 setObject:v213 forKeyedSubscript:@"bAdd"];
                                v16 = v16 | 0x800000;
                                goto LABEL_313;
                              }

LABEL_313:
                              secrets = v243;
LABEL_314:
                              if (a4 && v16)
                              {
                                [v7 setRevisionID:{objc_msgSend(v7, "revisionID") + 1}];
                              }

                              Int64Ranged = CFDictionaryGetInt64Ranged();
                              revisionID = [v7 revisionID];
                              if (revisionID == Int64Ranged)
                              {
                                accessGroups = v229;
                              }

                              else
                              {
                                v222 = revisionID;
                                accessGroups = v229;
                                if (!v15)
                                {
                                  v223 = [metadata mutableCopy];
                                  v224 = v223;
                                  if (v223)
                                  {
                                    v15 = v223;
                                  }

                                  else
                                  {
                                    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  }

                                  secrets = v243;
                                }

                                v225 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v222];
                                [v15 setObject:v225 forKeyedSubscript:@"revisionID"];
                              }

                              v136 = v262;
                              if (v15)
                              {
                                [selfCopy setMetadata:v15];
                              }

                              if (v264)
                              {
                                [selfCopy setRemovedMetadata:?];
                              }

                              if (v266)
                              {
                                [selfCopy setSecrets:?];
                              }

LABEL_332:
                              v125 = v263;
                              goto LABEL_333;
                            }

                            CFDataGetTypeID();
                            v203 = CFDictionaryGetTypedValue();
                            v204 = btIRKData;
                            v205 = v203;
                            v206 = v205;
                            if (v204 != v205)
                            {
                              if ((v204 != 0) != (v205 == 0))
                              {
                                v207 = [v204 isEqual:v205];

                                if (v207)
                                {
                                  goto LABEL_299;
                                }
                              }

                              else
                              {
                              }

                              v208 = v266;
                              if (!v266)
                              {
                                v209 = [v243 mutableCopy];
                                v267 = v209;
                                if (v209)
                                {
                                  v210 = v209;
                                }

                                else
                                {
                                  v210 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                }

                                v208 = v210;
                              }

                              v266 = v208;
                              [v208 setObject:v204 forKeyedSubscript:@"bIRK"];
                              v16 = v16 | 0x400000;
                              goto LABEL_299;
                            }

LABEL_299:
                            secrets = v243;
                            goto LABEL_300;
                          }
                        }

                        v182 = [metadata mutableCopy];
                        v183 = v182;
                        if (v182)
                        {
                          v15 = v182;
                        }

                        else
                        {
                          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        }

                        goto LABEL_256;
                      }
                    }

                    else
                    {
                    }

                    [selfCopy setName:v172];
                    v16 = v16 | 0x100;
                    goto LABEL_244;
                  }
                }

                v168 = [metadata mutableCopy];
                v169 = v168;
                if (v168)
                {
                  v15 = v168;
                }

                else
                {
                  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                }

                goto LABEL_235;
              }
            }

            v160 = [metadata mutableCopy];
            v161 = v160;
            if (v160)
            {
              v15 = v160;
            }

            else
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            goto LABEL_222;
          }
        }

        v152 = [metadata mutableCopy];
        v153 = v152;
        if (v152)
        {
          v15 = v152;
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        goto LABEL_209;
      }
    }

    else
    {
    }

    [selfCopy setIdentifier:v132];
    v16 = v16 | 0x20;
    goto LABEL_180;
  }

  if (v242)
  {
    *v242 = RPErrorF();
  }

  v16 = 1;
  v136 = v262;
LABEL_333:

  return v16;
}

@end