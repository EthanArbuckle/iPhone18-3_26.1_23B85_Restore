@interface LNValue(Serialization)
+ (id)valueFromSerializedRepresentation:()Serialization valueType:variableProvider:parameter:bundleIdentifier:;
- (id)wfSerializedRepresentation;
@end

@implementation LNValue(Serialization)

- (id)wfSerializedRepresentation
{
  v2 = WFSerializedIdentifierFromLinkValue(a1);
  v3 = [a1 value];
  v4 = WFSerializedRepresentationFromLinkValue(v3);

  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v5 if_setObjectIfNonNil:v2 forKey:@"identifier"];
  [v5 if_setObjectIfNonNil:v4 forKey:@"value"];
  v6 = [a1 displayRepresentation];
  v7 = [v6 title];
  v8 = [v7 serializedRepresentation];

  [v5 if_setObjectIfNonNil:v8 forKey:@"title"];
  v9 = [a1 displayRepresentation];
  v10 = [v9 title];
  v11 = [v10 serializedRepresentation];

  [v5 if_setObjectIfNonNil:v11 forKey:@"subtitle"];
  v12 = [a1 displayRepresentation];
  v13 = [v12 image];

  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 serializedRepresentation];
    if (v14)
    {
      [v5 if_setObjectIfNonNil:v14 forKey:@"symbol"];
    }
  }

  else
  {

    v15 = [a1 displayRepresentation];
    v16 = [v15 image];

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v13 = [v18 serializedRepresentation];

    if (v13)
    {
      [v5 if_setObjectIfNonNil:v13 forKey:@"image"];
    }
  }

  return v5;
}

+ (id)valueFromSerializedRepresentation:()Serialization valueType:variableProvider:parameter:bundleIdentifier:
{
  v218 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v204 = a7;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v16 objectForKeyedSubscript:@"value"];
  if (!v17)
  {
    v17 = v11;
  }

  v18 = [v16 objectForKeyedSubscript:@"title"];
  if (!v18 || (v19 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithSerializedRepresentation:v18 variableProvider:v13 parameter:v14]) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v12 wf_titleWithCustomIntentSerializedRepresentation:v11];
    }

    else
    {
      v20 = v11;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithKey:v20 table:0 bundleURL:0];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  v197 = v11;
  v21 = v16;
  v22 = [v16 objectForKeyedSubscript:@"subtitle"];
  if (v22)
  {
    v23 = v22;
    v203 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithSerializedRepresentation:v22 variableProvider:v13 parameter:v14];
  }

  else
  {
    v23 = 0;
    v203 = 0;
  }

  v24 = [v21 objectForKeyedSubscript:@"image"];
  v25 = [v21 objectForKeyedSubscript:@"symbol"];
  v193 = v25;
  v194 = v24;
  if (v25)
  {
    v26 = 0x1E69ACA10;
    v24 = v25;
  }

  else
  {
    if (!v24)
    {
      v202 = 0;
      if (v19)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v26 = 0x1E69AC870;
  }

  v202 = [objc_alloc(*v26) initWithSerializedRepresentation:v24 variableProvider:v13 parameter:v14];
  if (v19)
  {
LABEL_25:
    v201 = [objc_alloc(MEMORY[0x1E69AC7A0]) initWithTitle:v19 subtitle:v203 image:v202];
    goto LABEL_28;
  }

LABEL_27:
  v201 = 0;
LABEL_28:
  objc_opt_class();
  v195 = v19;
  v196 = v18;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v27 = [v12 memberValueType];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = v27;

    v12 = v31;
LABEL_41:

LABEL_42:
    v192 = v17;
    v40 = v17;
    v12 = v12;
    v198 = v13;
    v41 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [v12 typeIdentifier];
      v37 = v23;
      if (v42 <= 8)
      {
        v38 = v21;
        if (v42 >= 9)
        {
          goto LABEL_143;
        }

        v43 = v40;
        goto LABEL_46;
      }

      if (v42 <= 10)
      {
        v38 = v21;
        if (v42 != 9)
        {
          v64 = v41;
          v65 = v37;
          v66 = v64;
          v67 = [[WFLocationValue alloc] initWithSerializedRepresentation:v40 variableProvider:v198 parameter:v64];
          v68 = v67;
          if (v67)
          {
            [(WFLocationValue *)v67 placemark];
          }

          else
          {
            WFCLPlacemarkFromSerializedIntentPlacemark(v40);
          }
          v199 = ;

          v37 = v65;
LABEL_126:
          v41 = v66;
          goto LABEL_143;
        }

        v92 = v23;
        v186 = v14;
        v93 = v13;
        v94 = v40;
        v95 = v198;
        v176 = v41;
        v96 = v94;
        if (v96 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v174 = v95;
          v181 = v41;
          v97 = objc_alloc_init(MEMORY[0x1E695DF10]);
          v98 = [v96 objectForKeyedSubscript:@"era"];
          [v97 if_setValueIfNonNil:v98 forKey:@"era"];

          v99 = [v96 objectForKeyedSubscript:@"year"];
          [v97 if_setValueIfNonNil:v99 forKey:@"year"];

          v100 = [v96 objectForKeyedSubscript:@"month"];
          [v97 if_setValueIfNonNil:v100 forKey:@"month"];

          v101 = [v96 objectForKeyedSubscript:@"day"];
          [v97 if_setValueIfNonNil:v101 forKey:@"day"];

          v102 = [v96 objectForKeyedSubscript:@"hour"];
          [v97 if_setValueIfNonNil:v102 forKey:@"hour"];

          v103 = [v96 objectForKeyedSubscript:@"minute"];
          [v97 if_setValueIfNonNil:v103 forKey:@"minute"];

          v104 = [v96 objectForKeyedSubscript:@"second"];
          [v97 if_setValueIfNonNil:v104 forKey:@"second"];

          v105 = [v96 objectForKeyedSubscript:@"nanosecond"];
          [v97 if_setValueIfNonNil:v105 forKey:@"nanosecond"];

          v106 = [v96 objectForKeyedSubscript:@"weekday"];
          [v97 if_setValueIfNonNil:v106 forKey:@"weekday"];

          v107 = [v96 objectForKeyedSubscript:@"weekdayOrdinal"];
          [v97 if_setValueIfNonNil:v107 forKey:@"weekdayOrdinal"];

          v108 = [v96 objectForKeyedSubscript:@"quarter"];
          [v97 if_setValueIfNonNil:v108 forKey:@"quarter"];

          v109 = [v96 objectForKeyedSubscript:@"weekOfMonth"];
          [v97 if_setValueIfNonNil:v109 forKey:@"weekOfMonth"];

          v110 = [v96 objectForKeyedSubscript:@"weekOfYear"];
          [v97 if_setValueIfNonNil:v110 forKey:@"weekOfYear"];

          v111 = [v96 objectForKeyedSubscript:@"yearForWeekOfYear"];
          [v97 if_setValueIfNonNil:v111 forKey:@"yearForWeekOfYear"];

          v112 = [v96 objectForKeyedSubscript:@"calendar"];
          if (v112)
          {
            v113 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v112];
            [v97 if_setValueIfNonNil:v113 forKey:@"calendar"];
          }

          v199 = v97;
          v114 = [v96 objectForKeyedSubscript:{@"timeZone", v174, v176}];
          if (v114)
          {
            [MEMORY[0x1E695DFE8] timeZoneWithName:v114];
            v116 = v115 = v40;
            [v199 if_setValueIfNonNil:v116 forKey:@"timeZone"];

            v40 = v115;
          }

          v37 = v92;
          v41 = v181;
          v95 = v175;
        }

        else
        {
          v199 = 0;
          v37 = v92;
        }

        v13 = v93;
        v14 = v186;
LABEL_143:

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v184 = v13;
          v134 = v12;
          v135 = v198;
          v136 = v135;
          v191 = v37;
          v182 = v40;
          v137 = v38;
          if (v135)
          {
            if ([v135 conformsToProtocol:&unk_1F4A9F4F8])
            {
              v138 = v136;
            }

            else
            {
              v138 = 0;
            }
          }

          else
          {
            v138 = 0;
          }

          v144 = v138;

          v145 = v41;
          v187 = v14;
          if (v145)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v146 = v145;
            }

            else
            {
              v146 = 0;
            }
          }

          else
          {
            v146 = 0;
          }

          v147 = v146;

          v148 = [v147 parameterMetadata];
          v149 = [v148 typeSpecificMetadata];
          v150 = [v149 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

          v151 = [v150 identifier];
          v152 = [v134 identifier];
          v153 = [v151 isEqualToString:v152];

          if ((v153 & 1) == 0)
          {
            v154 = [v147 parameterMetadata];
            v155 = [v154 typeSpecificMetadata];
            v156 = [v155 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkReferencedEntityMetadata"];

            if (v156)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v157 = v156;
              }

              else
              {
                v157 = 0;
              }
            }

            else
            {
              v157 = 0;
            }

            v160 = v157;

            v205[0] = MEMORY[0x1E69E9820];
            v205[1] = 3221225472;
            v205[2] = __114__LNValue_Serialization__valueFromSerializedRepresentation_valueType_variableProvider_parameter_bundleIdentifier___block_invoke_2;
            v205[3] = &unk_1E837E018;
            v206 = v134;
            v161 = [v160 if_firstObjectPassingTest:v205];

            v150 = v161;
          }

          if (!v150)
          {
            v162 = [v134 identifier];
            v150 = [v144 entityMetadataForIdentifier:v162];
          }

          v12 = v134;
          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v163 = [v12 bundleIdentifier];
              v164 = v204;
              v165 = v12;
              v204 = v163;
            }

            else
            {
              v165 = 0;
              v164 = v12;
            }
          }

          else
          {
            v164 = 0;
            v165 = 0;
          }

          if (!v150 && v204)
          {
            v166 = [MEMORY[0x1E69E0970] sharedProvider];
            v167 = [v12 identifier];
            v150 = [v166 entityWithIdentifier:v167 fromBundleIdentifier:v204];
          }

          if (v150)
          {
            v168 = [MEMORY[0x1E69AC7D0] valueFromSerializedRepresentation:v182 metadata:v150 variableProvider:v136 parameter:v145 bundleIdentifier:v204];
            if (v168)
            {
              v32 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v168 valueType:v12 displayRepresentation:v201];
            }

            else
            {
              v32 = 0;
            }

            v13 = v184;
          }

          else
          {
            v32 = 0;
            v13 = v184;
          }

          v39 = v197;
          v14 = v187;
          v37 = v191;
          v29 = v192;
          v38 = v137;
          goto LABEL_200;
        }

        v139 = v41;
        objc_opt_class();
        v39 = v197;
        if (objc_opt_isKindOfClass())
        {
          v140 = v37;
          v141 = [v38 objectForKeyedSubscript:@"identifier"];
          if (v141)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v192;
LABEL_169:
              v32 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v141 valueType:v12 displayRepresentation:v201];

              goto LABEL_199;
            }
          }

          v158 = v40;
          v29 = v192;
          if (v158)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v141 = v158;

              goto LABEL_169;
            }
          }

LABEL_198:

          v32 = 0;
          goto LABEL_199;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v140 = v37;
          v142 = [MEMORY[0x1E69AC748] valueFromSerializedRepresentation:v40 variableProvider:v198 parameter:v139];
          if (v142)
          {
            v143 = v142;
            v32 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v142 valueType:v12 displayRepresentation:v201];

            v29 = v192;
LABEL_199:
            v37 = v140;
            goto LABEL_200;
          }

          v158 = getWFAppIntentsLogObject();
          v29 = v192;
          if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_198;
          }

          *buf = 136315138;
          v213 = "+[LNValue(Serialization) valueFromSerializedRepresentation:valueType:variableProvider:parameter:bundleIdentifier:]";
          v169 = "%s Serialized codable value is nil";
          v170 = v158;
          v171 = 12;
        }

        else
        {
          v159 = v199;
          if (!v199)
          {
            v32 = 0;
            v29 = v192;
            goto LABEL_201;
          }

          v29 = v192;
          if ([v12 objectIsMemberOfType:v199])
          {
            v32 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v199 valueType:v12 displayRepresentation:v201];
            goto LABEL_201;
          }

          v140 = v37;
          v158 = getWFAppIntentsLogObject();
          if (!os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_198;
          }

          *buf = 136315650;
          v213 = "+[LNValue(Serialization) valueFromSerializedRepresentation:valueType:variableProvider:parameter:bundleIdentifier:]";
          v214 = 2112;
          v215 = v38;
          v216 = 2112;
          v217 = v12;
          v169 = "%s Serialized value %@ does not match value type %@";
          v170 = v158;
          v171 = 32;
        }

        _os_log_impl(&dword_1CA256000, v170, OS_LOG_TYPE_ERROR, v169, buf, v171);
        goto LABEL_198;
      }

      v38 = v21;
      if (v42 == 11)
      {
        v78 = v41;
        v79 = v37;
        v80 = v40;
        if (v80)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v81 = MEMORY[0x1E695DFF8];
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (v42 != 12)
        {
          goto LABEL_143;
        }

        v78 = v41;
        v79 = v37;
        v80 = v40;
        if (v80)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v81 = MEMORY[0x1E696AAB0];
LABEL_101:
            v117 = [[v81 alloc] initWithString:v80];
LABEL_113:
            v199 = v117;
            goto LABEL_114;
          }
        }
      }

      v199 = 0;
LABEL_114:

      v37 = v79;
      v41 = v78;
      goto LABEL_143;
    }

    objc_opt_class();
    v37 = v23;
    if (objc_opt_isKindOfClass())
    {
      v44 = [v12 typeIdentifier];
      v38 = v21;
      if (v44 > 11)
      {
        if (v44 != 14)
        {
          if (v44 == 13)
          {
            v185 = v14;
            v82 = v40;
            v83 = v40;
            v84 = v41;
            v85 = v83;
            v180 = v198;
            v86 = v84;
            v87 = v84;
            v88 = v85;
            if (v88 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v190 = v37;
              v89 = [v88 objectForKeyedSubscript:@"type"];
              v183 = v13;
              if (v89)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v90 = v89;
                }

                else
                {
                  v90 = 0;
                }
              }

              else
              {
                v90 = 0;
              }

              v127 = v90;

              v200 = [v127 integerValue];
              v128 = [v88 objectForKeyedSubscript:@"name"];
              if (v128)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v129 = v128;
                }

                else
                {
                  v129 = 0;
                }
              }

              else
              {
                v129 = 0;
              }

              v130 = v129;

              v131 = [v88 objectForKeyedSubscript:@"identificationHint"];
              if (v131)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v132 = v131;
                }

                else
                {
                  v132 = 0;
                }
              }

              else
              {
                v132 = 0;
              }

              v133 = v132;

              v199 = [objc_alloc(MEMORY[0x1E696E938]) initWithType:v200 name:v130 identificationHint:v133 icon:0];
              v13 = v183;
              v37 = v190;
            }

            else
            {
              v199 = 0;
            }

            v41 = v86;

            v14 = v185;
            v40 = v82;
          }

          else
          {
            v199 = 0;
            if (v44 == 12)
            {
              v188 = v23;
              v45 = v198;
              v46 = v41;
              v47 = v45;
              v177 = v46;
              v48 = v46;
              v49 = v40;
              v50 = v48;
              v51 = v49;
              v52 = v49;
              v53 = [[WFFileValue alloc] initWithSerializedRepresentation:v52 variableProvider:v47 parameter:v50];

              v54 = v47;
              v55 = v14;
              if (v54)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v56 = v54;
                }

                else
                {
                  v56 = 0;
                }
              }

              else
              {
                v56 = 0;
              }

              v119 = v56;

              v120 = [v119 workflow];

              v121 = [v120 workflowID];
              v122 = [(WFFileValue *)v53 resolveURLWithWorkflowID:v121 error:0];

              if (v122)
              {
                v123 = MEMORY[0x1E696E840];
                v124 = [(WFFileValue *)v53 filename];
                v199 = [v123 fileWithFileURL:v122 filename:v124 typeIdentifier:0];
              }

              else
              {
                v199 = 0;
              }

              v14 = v55;

              v40 = v51;
              v37 = v188;
              v41 = v177;
            }
          }

          goto LABEL_143;
        }

        v43 = WFINCurrencyAmountFromSerialization(v40, v198, v41);
LABEL_46:
        v199 = v43;
        goto LABEL_143;
      }

      if (!v44)
      {
        v78 = v41;
        v79 = v37;
        v80 = v40;
        if (v80)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v91 = v80;
          }

          else
          {
            v91 = 0;
          }
        }

        else
        {
          v91 = 0;
        }

        v117 = v91;
        goto LABEL_113;
      }

      v199 = 0;
      if (v44 != 3)
      {
        goto LABEL_143;
      }

      v71 = MEMORY[0x1E6996D10];
      v179 = v41;
      v72 = v41;
      v73 = v40;
      v74 = v198;
      v189 = v23;
      v75 = v73;
      v76 = [[v71 alloc] initWithSerializedRepresentation:v75 variableProvider:v74 parameter:v72];

      v40 = v73;
      v23 = v189;
      v38 = v21;
      v77 = [v76 contact];
      v199 = [v77 INPersonRepresentation];

      v41 = v179;
LABEL_71:

      v37 = v23;
      goto LABEL_143;
    }

    objc_opt_class();
    v38 = v21;
    if (objc_opt_isKindOfClass())
    {
      if ([v12 builtInType] == 2)
      {
        v57 = v23;
        v58 = MEMORY[0x1E69AC920];
        v178 = v41;
        v59 = v41;
        v60 = v40;
        v61 = v198;
        v62 = v14;
        v63 = v60;
        v199 = [[v58 alloc] initWithSerializedRepresentation:v63 variableProvider:v61 parameter:v59];

        v41 = v178;
        v40 = v60;

        v14 = v62;
        v37 = v57;
        v38 = v21;
        goto LABEL_143;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = v40;
        v66 = v41;
        if (v69)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          v70 = 0;
        }

        v118 = v70;

        v199 = WFDeserializeNSMeasurement();

        v37 = v23;
        goto LABEL_126;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v12 typeIdentifier])
        {
          goto LABEL_143;
        }

        v43 = WFLNStringSearchCriteriaFromSerialization(v40, v198, v41);
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76 = [MEMORY[0x1E69AC748] valueFromSerializedRepresentation:v40 variableProvider:v198 parameter:v41];
        if (v76)
        {
          v199 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v76 valueType:v12];
        }

        else
        {
          v125 = v41;
          v126 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v213 = "LNValueFromSerializedValueRepresentation";
            _os_log_impl(&dword_1CA256000, v126, OS_LOG_TYPE_ERROR, "%s Serialized codable value is nil", buf, 0xCu);
          }

          v199 = 0;
          v41 = v125;
        }

        goto LABEL_71;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v12 typeIdentifier])
        {
          goto LABEL_143;
        }

        v43 = [MEMORY[0x1E69AC9A8] recurrenceRuleBridgeWithSerializedRepresentation:v40];
        goto LABEL_46;
      }
    }

    v199 = 0;
    goto LABEL_143;
  }

  v28 = v17;
  v29 = v17;
  if (v28)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = v30;

  v207[0] = MEMORY[0x1E69E9820];
  v207[1] = 3221225472;
  v207[2] = __114__LNValue_Serialization__valueFromSerializedRepresentation_valueType_variableProvider_parameter_bundleIdentifier___block_invoke;
  v207[3] = &unk_1E837DFF0;
  v199 = v27;
  v208 = v199;
  v33 = v13;
  v209 = v13;
  v34 = v14;
  v210 = v14;
  v35 = v204;
  v211 = v35;
  v36 = [v32 if_compactMap:v207];

  if (v36)
  {
    v32 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v36 valueType:v12 displayRepresentation:v201];
  }

  if (!v36)
  {
    v13 = v33;
    v14 = v34;
    v17 = v29;
    goto LABEL_41;
  }

  v204 = v35;
  v13 = v33;
  v14 = v34;
  v37 = v23;
  v38 = v21;
  v39 = v197;
LABEL_200:
  v159 = v199;
LABEL_201:

  v172 = *MEMORY[0x1E69E9840];

  return v32;
}

@end