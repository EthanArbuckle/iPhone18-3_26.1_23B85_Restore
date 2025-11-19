void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceApplication:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 *a29, uint64_t a30, uint64_t *a31, uint64_t a32, char *a33, uint64_t a34)
{
  OUTLINED_FUNCTION_164();
  v35 = v34;
  v64 = v36;
  v65 = v37;
  v39 = v38;
  v62 = v40;
  v63 = v41;
  v61 = v42;
  v44 = v43;

  v45 = *v39;
  v46 = *v35;
  v47 = *a23;
  v48 = a23[1];
  v66 = a29[1];
  v67 = *a29;
  v68 = *a31;
  v49 = *a33;
  v50 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v70[0] = *a23;
    v70[1] = v48;
    memcpy(v71, a23 + 2, sizeof(v71));
    v73[0] = v47;
    v73[1] = v48;
    memcpy(v74, a23 + 2, sizeof(v74));
    sub_1C8E9562C(v73, v69);
    v35 = 0;
    sub_1C8E83E20(v70, __src);
    memcpy((v44 + 192), __src, 0x61uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12_26();
    *(v44 + 192) = v51;
    *(v44 + 200) = v52;
    *(v44 + 208) = v50;
    *(v44 + 216) = 0xD000000000000013;
    *(v44 + 224) = v53;
    *(v44 + 232) = xmmword_1C9092170;
    *(v44 + 248) = 1;
    *(v44 + 256) = xmmword_1C9092180;
    *(v44 + 272) = 0;
    *(v44 + 280) = 0;
    *(v44 + 288) = 1;
  }

  *v44 = v61;
  *(v44 + 8) = v62;
  *(v44 + 16) = v63;
  *(v44 + 24) = v64;
  *(v44 + 32) = v45;
  *(v44 + 40) = v65;
  *(v44 + 48) = v50;
  *(v44 + 56) = v46;
  *(v44 + 64) = a21;
  *(v44 + 72) = a22;
  *(v44 + 80) = v47;
  *(v44 + 88) = v48;
  memcpy((v44 + 96), a23 + 2, 0x60uLL);
  *(v44 + 296) = 0u;
  *(v44 + 312) = 0u;
  *(v44 + 328) = 0u;
  *(v44 + 344) = 0u;
  *(v44 + 360) = 0u;
  *(v44 + 376) = 0u;
  *(v44 + 392) = 0;
  *(v44 + 400) = v50;
  *(v44 + 408) = a24;
  *(v44 + 416) = a25;
  *&v54 = OUTLINED_FUNCTION_56_7();
  *(v44 + 424) = v54;
  *(v44 + 440) = v54;
  *(v44 + 456) = v54;
  *(v44 + 472) = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_192_5();
  sub_1C8D63FCC();
  *(v44 + *(v35 + 17)) = a27;
  *(v44 + *(v35 + 18)) = a28;
  OUTLINED_FUNCTION_165_6((v44 + *(v35 + 19)), v67, v66);
  *(v44 + v57) = a30;
  *(v44 + *(v35 + 21)) = v68;
  *(v44 + *(v35 + 23)) = a32;
  *(v44 + *(v35 + 22)) = v49;
  v58 = (v44 + *(v35 + 24));
  *v58 = 0;
  v58[1] = 0;
  *(v44 + *(v35 + 25)) = 0;
  *(v44 + *(v35 + 27)) = a34;
  v59 = OUTLINED_FUNCTION_181();
  sub_1C8D16D78(v59, v60, &qword_1C90839E0);
  *(v44 + *(v35 + 26)) = v50;
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8E83E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = *(a1 + 8);
  v16 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v19 = *(a1 + 96);
  v14 = *(a1 + 104);
  v10 = objc_allocWithZone(MEMORY[0x1E69635D0]);

  OUTLINED_FUNCTION_288();
  v11 = sub_1C9042D34();
  if (v2)
  {

    v12 = 1;
  }

  else
  {

    v12 = 3;
  }

  *a2 = v18;
  *(a2 + 8) = v5;
  *(a2 + 16) = v14;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v16;
  *(a2 + 48) = v7;
  *(a2 + 56) = v12;
  *(a2 + 64) = v17;
  *(a2 + 72) = v8;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = v19;
  return result;
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:sampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t *a32, uint64_t a33, char *a34)
{
  OUTLINED_FUNCTION_164();
  v36 = v35;
  v71 = v37;
  v39 = v38;
  v69 = v40;
  v70 = v41;
  v67 = v42;
  v68 = v43;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_73();

  v50 = *v39;
  v51 = *v36;
  memcpy(v73, a23, 0x61uLL);
  v52 = *a32;
  v53 = *a34;
  sub_1C8D63FCC();
  *v45 = v67;
  *(v45 + 8) = v68;
  *(v45 + 16) = v69;
  *(v45 + 24) = v70;
  *(v45 + 32) = v50;
  v54 = OUTLINED_FUNCTION_255_1(v71);
  memcpy(v54, v73, 0x61uLL);
  memcpy((v45 + 296), a24, 0x61uLL);
  v55 = MEMORY[0x1E69E7CC0];
  *(v45 + 400) = MEMORY[0x1E69E7CC0];
  *(v45 + 408) = a25;
  *(v45 + 416) = a26;
  *&v56 = OUTLINED_FUNCTION_56_7();
  *(v45 + 424) = v56;
  *(v45 + 440) = v56;
  *(v45 + 456) = v56;
  *(v45 + 472) = v56;
  OUTLINED_FUNCTION_212_3(v57);
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_23_20(*(a34 + 17));
  OUTLINED_FUNCTION_165_6(v58, *a30, a30[1]);
  *(v45 + v59) = v60;
  *(v45 + *(a34 + 21)) = v52;
  *(v45 + *(a34 + 23)) = a33;
  *(v45 + *(a34 + 22)) = v53;
  OUTLINED_FUNCTION_19_22();
  *(v45 + v61) = 0;
  *(v45 + *(a34 + 26)) = v55;
  OUTLINED_FUNCTION_254_1(*(a34 + 27));
  memcpy(v72, v73, sizeof(v72));
  sub_1C8CC1340(v73, &v74);
  sub_1C8CC139C();
  v62 = OUTLINED_FUNCTION_325();
  sub_1C8D16D78(v62, v63, &qword_1C90839E0);
  sub_1C8D16D78(v34, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v64, v65, v66);
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:descriptionSummary:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:visibilityFlags:backingLinkActionIdentifiers:overriddenSampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t *a32, uint64_t a33, char *a34, uint64_t *a35, uint64_t a36)
{
  OUTLINED_FUNCTION_164();
  v70 = v36;
  v71 = v37;
  v39 = v38;
  v68 = v40;
  v69 = v41;
  v66 = v42;
  v67 = v43;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_73();

  v50 = *v39;
  v51 = *v71;
  memcpy(v73, a23, 0x61uLL);
  v52 = *a32;
  v53 = *a34;
  v72 = *a35;
  OUTLINED_FUNCTION_219();
  sub_1C8D63FCC();
  *v45 = v66;
  *(v45 + 8) = v67;
  *(v45 + 16) = v68;
  *(v45 + 24) = v69;
  *(v45 + 32) = v50;
  v54 = OUTLINED_FUNCTION_255_1(v70);
  memcpy(v54, v73, 0x61uLL);
  memcpy((v45 + 296), a24, 0x61uLL);
  *(v45 + 400) = MEMORY[0x1E69E7CC0];
  *(v45 + 408) = a25;
  *(v45 + 416) = a26;
  *&v55 = OUTLINED_FUNCTION_56_7();
  *(v45 + 424) = v55;
  *(v45 + 440) = v55;
  *(v45 + 456) = v55;
  *(v45 + 472) = v55;
  OUTLINED_FUNCTION_212_3(v56);
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_23_20(*(a35 + 17));
  OUTLINED_FUNCTION_165_6(v57, *a30, a30[1]);
  *(v45 + v58) = v59;
  *(v45 + *(a35 + 21)) = v52;
  OUTLINED_FUNCTION_254_1(*(a35 + 23));
  *(v45 + *(a35 + 22)) = v53;
  OUTLINED_FUNCTION_19_22();
  *(v45 + v60) = v72;
  *(v45 + *(a35 + 26)) = a36;
  OUTLINED_FUNCTION_235_2();
  sub_1C8CC1340(v73, &v74);
  sub_1C8CC139C();
  sub_1C8D16D78(a27, &qword_1EC3144B8, &qword_1C90839E0);
  v61 = OUTLINED_FUNCTION_127();
  sub_1C8D16D78(v61, v62, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v63, v64, v65);
  OUTLINED_FUNCTION_163();
}

void ToolDefinition.fetchSampleInvocations()()
{
  if (qword_1EDA631E8 != -1)
  {
    OUTLINED_FUNCTION_111_2();
    swift_once();
  }

  ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)();
}

uint64_t ToolDefinition.implements(_:)(__int128 *a1)
{
  v24 = *a1;
  v25 = a1[1];
  v23 = *(a1 + 32);
  result = type metadata accessor for ToolDefinition(0);
  v3 = 0;
  v4 = *(v1 + *(result + 92));
  v26 = v4;
  v27 = *(v4 + 16);
  for (i = (v4 + 32); ; i += 4)
  {
    if (v27 == v3)
    {
      return v27 != v3;
    }

    if (v3 >= *(v26 + 16))
    {
      break;
    }

    v6 = *i;
    v7 = i[1];
    v8 = i[2];
    *(v45 + 9) = *(i + 41);
    v44[1] = v7;
    v45[0] = v8;
    v44[0] = v6;
    v9 = i[1];
    v41 = *i;
    v42 = v9;
    v43[0] = i[2];
    *(v43 + 9) = *(i + 41);
    SystemToolProtocol.identifier.getter(v37);
    v10 = v38;
    v11 = v39;
    v12 = v40;
    v32 = v37[0];
    v33 = v37[1];
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v30 = v25;
    v29 = v24;
    v31 = v23;
    sub_1C8D0717C(v44, v28);
    SystemToolProtocol.Identifier.rawValue.getter();
    v14 = v13;
    v16 = v15;
    v17 = OUTLINED_FUNCTION_288();
    sub_1C8D3ED20(v17, v18, v10, v11, v12);
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v14 == v20 && v16 == v19)
    {
      sub_1C8D071D8(v44);

      return v27 != v3;
    }

    v22 = sub_1C9064C2C();
    sub_1C8D071D8(v44);

    if (v22)
    {
      return v27 != v3;
    }

    ++v3;
  }

  __break(1u);
  return result;
}

uint64_t static ContainerDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v25 = *(v3 + 64);
  v33 = *(v3 + 72);
  v27 = *(v3 + 80);
  v31 = *(v3 + 96);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v34 = *(v2 + 56);
  v35 = *(v3 + 56);
  v24 = *(v2 + 64);
  v32 = *(v2 + 72);
  v26 = *(v2 + 80);
  v29 = *(v2 + 88);
  v30 = *(v3 + 88);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v28 = *(v2 + 96);
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_288();
  sub_1C8CEB10C(v15, v16);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  if (v5 != v9 || v6 != v11)
  {
    OUTLINED_FUNCTION_94();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    if (v7 == v12 && v8 == v13)
    {
      if (v35 != v34)
      {
        return 0;
      }

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_222_3();
    sub_1C9064C2C();
    result = OUTLINED_FUNCTION_274();
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v13)
    {
      return result;
    }
  }

  if (v35 == v34)
  {
LABEL_24:
    if (v33)
    {
      if (v32)
      {
        v22 = v25 == v24 && v33 == v32;
        if (v22 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else if (!v32)
    {
LABEL_31:
      v37[0] = v27;
      v37[1] = v30;
      v36[0] = v26;
      v36[1] = v29;

      v23 = static AppDefinition.Device.== infix(_:_:)(v37, v36);

      return v23 & (v31 == v28);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C8E847D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657079546C6F6F74 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C90CBFC0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x795474757074756FLL && a2 == 0xEA00000000006570;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C90CB5C0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C90CBFE0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F43656372756F73 && a2 == 0xEF72656E6961746ELL;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001C90CA2A0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001C90CA2C0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x63496D6F74737563 && a2 == 0xEA00000000006E6FLL;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x654B686372616573 && a2 == 0xEE007364726F7779;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001C90CC000 == a2;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000014 && 0x80000001C90C9860 == a2;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x72506D6574737973 && a2 == 0xEF736C6F636F746FLL;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000014 && 0x80000001C90C98C0 == a2;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x696C696269736976 && a2 == 0xEF7367616C467974;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001CLL && 0x80000001C90CC020 == a2;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0xD00000000000001BLL && 0x80000001C90CC040 == a2)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_1C9064C2C();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8E84EE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x657079546C6F6F74;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    case 4:
    case 6:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x795474757074756FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6F43656372756F73;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0x7470697263736564;
      break;
    case 12:
      result = 0x63496D6F74737563;
      break;
    case 13:
      result = 0x69726F6765746163;
      break;
    case 14:
      result = 0x654B686372616573;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x6D65726975716572;
      break;
    case 17:
      result = 0x7367616C66;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x72506D6574737973;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0x696C696269736976;
      break;
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E851B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E847D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E851E0(uint64_t a1)
{
  v2 = sub_1C8E95664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8521C(uint64_t a1)
{
  v2 = sub_1C8E95664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC0, &qword_1C90921B8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_217(v13, v14);
  sub_1C8E95664();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064E1C();
  v15 = *v2;
  v16 = v2[1];
  LOBYTE(v49[0]) = 0;
  OUTLINED_FUNCTION_59_10();
  sub_1C9064B2C();
  if (!v1)
  {
    v17 = v2[2];
    v18 = v2[3];
    LOBYTE(v49[0]) = 1;
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B2C();
    LOBYTE(v49[0]) = *(v2 + 32);
    v48[0] = 2;
    sub_1C8D2225C();
    OUTLINED_FUNCTION_53_9();
    sub_1C9064B8C();
    v49[0] = v2[5];
    v48[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E956B8();
    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();
    v49[0] = v2[6];
    v48[0] = 4;
    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();
    v49[0] = v2[7];
    v48[0] = 5;
    v19 = sub_1C8CA6D90();

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_59_10();
    sub_1C9064B8C();

    if (!v19)
    {
      v20 = v2[8];
      v21 = v2[9];
      OUTLINED_FUNCTION_270();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064ADC();
      memcpy(v49, v2 + 10, sizeof(v49));
      memcpy(v48, v2 + 10, sizeof(v48));
      sub_1C8D63FCC();
      sub_1C8E9573C();
      OUTLINED_FUNCTION_53_9();
      sub_1C9064B0C();
      memcpy(v47, v48, sizeof(v47));
      sub_1C8D16D78(v47, &qword_1EC317F98, &qword_1C9092190);
      memcpy(v46, v2 + 24, 0x61uLL);
      memcpy(v45, v2 + 24, sizeof(v45));
      sub_1C8CC1340(v46, v44);
      sub_1C8E95790();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      memcpy(v43, v45, 0x61uLL);
      sub_1C8CC15FC(v43);
      memcpy(v44, v2 + 37, 0x61uLL);
      memcpy(v42, v2 + 37, sizeof(v42));
      sub_1C8D63FCC();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B0C();
      memcpy(v41, v42, 0x61uLL);
      sub_1C8D16D78(v41, &qword_1EC312EF8, &unk_1C90839D0);
      v40 = v2[50];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EF0, &qword_1C906A028);
      sub_1C8E957E4();
      OUTLINED_FUNCTION_30_19();
      sub_1C9064B8C();
      memcpy(v39, v2 + 51, sizeof(v39));
      memcpy(v38, v2 + 51, sizeof(v38));
      sub_1C8DFBD54(v39, v37);
      sub_1C8E95868();
      OUTLINED_FUNCTION_53_9();
      sub_1C9064B8C();
      memcpy(v37, v38, sizeof(v37));
      sub_1C8E87298(v37);
      v25 = type metadata accessor for ToolDefinition(0);
      v26 = v25[16];
      type metadata accessor for ToolIcon(0);
      OUTLINED_FUNCTION_113_3();
      sub_1C8E95E78(v27, v28);
      OUTLINED_FUNCTION_30_19();
      sub_1C9064B0C();
      OUTLINED_FUNCTION_143_2(v25[17]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC8, &qword_1C90921D0);
      sub_1C8E958BC();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v25[18]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      v29 = (v2 + v25[19]);
      v33 = *v29;
      v34 = v29[1];
      v35 = v29[2];
      v36 = v29[3];
      sub_1C8DFBDB0(*v29, v34);
      sub_1C8E95994();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B0C();
      sub_1C8D16E14(v33, v34);
      OUTLINED_FUNCTION_143_2(v25[20]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
      sub_1C8E959E8();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v25[21]);
      sub_1C8D222B0();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      LOBYTE(v33) = *(v2 + v25[22]);
      sub_1C8D223C0();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v25[23]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD8, &unk_1C90921E0);
      sub_1C8E95A6C();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B8C();
      v30 = (v2 + v25[24]);
      v31 = *v30;
      v32 = v30[1];
      OUTLINED_FUNCTION_59_10();
      sub_1C9064ADC();
      OUTLINED_FUNCTION_143_2(v25[25]);
      sub_1C8D22304();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v25[26]);
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_59_10();
      sub_1C9064B8C();
      OUTLINED_FUNCTION_143_2(v25[27]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
      sub_1C8E95AF0();
      OUTLINED_FUNCTION_20_21();
      sub_1C9064B0C();
    }
  }

  v22 = *(v7 + 8);
  v23 = OUTLINED_FUNCTION_278();
  v24(v23);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void ToolDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  v4 = type metadata accessor for ToolIcon(0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_110();
  v15 = *v0;
  v16 = v0[1];
  sub_1C9063FBC();
  v17 = v0[2];
  v18 = v0[3];
  sub_1C9063FBC();
  sub_1C8D305AC(v3, *(v0 + 32));
  sub_1C8D03800(v3, v0[5]);
  sub_1C8D03800(v3, v0[6]);
  v55[0] = v0[7];
  TypeInstance.hash(into:)();
  if (v0[9])
  {
    v19 = v0[8];
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_182_1();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  memcpy(v55, v0 + 10, 0x70uLL);
  if (v55[1])
  {
    v49 = v1;
    v20 = v55[11];
    v48 = LOBYTE(v55[12]);
    v21 = v55[13];
    OUTLINED_FUNCTION_419();

    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    sub_1C9063FBC();
    if (v20)
    {
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
    }

    else
    {
      MEMORY[0x1CCA82810](0);
    }

    MEMORY[0x1CCA82810](v48);
    sub_1C8CC1590(v3, v21);
    sub_1C8D16D78(v55, &qword_1EC317F98, &qword_1C9092190);
    v1 = v49;
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  memcpy(v53, v0 + 24, 0x61uLL);
  ContainerDefinition.hash(into:)(v3);
  v22 = v0[37];
  v23 = v0[38];
  memcpy(v54, v0 + 39, sizeof(v54));
  if (v23)
  {
    memcpy(&v50[2], v0 + 39, 0x51uLL);
    v50[0] = v22;
    v50[1] = v23;
    OUTLINED_FUNCTION_419();
    v51[0] = v22;
    v51[1] = v23;
    memcpy(v52, v54, sizeof(v52));
    sub_1C8CC1340(v51, v53);
    ContainerDefinition.hash(into:)(v3);
    memcpy(v53, v50, 0x61uLL);
    sub_1C8CC15FC(v53);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  v24 = v0[50];
  sub_1C8D048FC();
  memcpy(v53, v0 + 51, 0x50uLL);
  ToolDescription.hash(into:)();
  v25 = type metadata accessor for ToolDefinition(0);
  v26 = v25[16];
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_308();
  }

  else
  {
    sub_1C8E872C8(v1, v10);
    OUTLINED_FUNCTION_419();
    ToolIcon.hash(into:)();
    OUTLINED_FUNCTION_8_31();
    sub_1C8E961D0(v10, v27);
  }

  v28 = OUTLINED_FUNCTION_221_2(v25[17]);
  sub_1C8D0771C(v28);
  v29 = OUTLINED_FUNCTION_221_2(v25[18]);
  sub_1C8CC1590(v29, v30);
  v31 = (v0 + v25[19]);
  if (v31[1])
  {
    v32 = *v31;
    v33 = v31[2];
    v34 = v31[3];
    OUTLINED_FUNCTION_419();

    sub_1C9063FBC();
    if (v34)
    {
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_182_1();
      sub_1C9063FBC();
    }

    else
    {
      OUTLINED_FUNCTION_308();
    }

    v35 = OUTLINED_FUNCTION_146_0();
    sub_1C8D16E14(v35, v36);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  v37 = OUTLINED_FUNCTION_221_2(v25[20]);
  sub_1C8D02E34(v37, v38);
  MEMORY[0x1CCA82810](*(v0 + v25[21]));
  v39 = *(v0 + v25[22]);
  sub_1C8D303FC();
  v40 = OUTLINED_FUNCTION_221_2(v25[23]);
  sub_1C8D04B78(v40, v41);
  v42 = (v0 + v25[24]);
  if (v42[1])
  {
    v43 = *v42;
    OUTLINED_FUNCTION_419();
    OUTLINED_FUNCTION_182_1();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  MEMORY[0x1CCA82810](*(v0 + v25[25]));
  v44 = OUTLINED_FUNCTION_221_2(v25[26]);
  sub_1C8CC1590(v44, v45);
  if (*(v0 + v25[27]))
  {
    OUTLINED_FUNCTION_419();
    v46 = OUTLINED_FUNCTION_249();
    sub_1C8D03494(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_163();
}

void ToolDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FE0, &qword_1C90921F0);
  OUTLINED_FUNCTION_11(v67);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_72();
  v68 = type metadata accessor for ToolDefinition(0);
  v12 = OUTLINED_FUNCTION_13_1(v68);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v69 = v16 - v15;
  v17 = v4[3];
  v18 = v4[4];
  v19 = OUTLINED_FUNCTION_276();
  OUTLINED_FUNCTION_217(v19, v20);
  sub_1C8E95664();
  OUTLINED_FUNCTION_200();
  sub_1C9064DEC();
  if (v0)
  {
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_6_31();
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v18)
    {
      v21 = *(v69 + 48);

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v17)
    {
LABEL_18:
      if (v4)
      {
        memcpy(v75, (v69 + 80), 0x70uLL);
        sub_1C8D16D78(v75, &qword_1EC317F98, &qword_1C9092190);
        if ((v60 & 1) == 0)
        {
LABEL_20:
          v22 = v68;
          if (v61)
          {
LABEL_21:
            memcpy(v75, (v69 + 296), 0x61uLL);
            sub_1C8D16D78(v75, &qword_1EC312EF8, &unk_1C90839D0);
            if ((v62 & 1) == 0)
            {
LABEL_22:
              if (v63)
              {
LABEL_23:
                memcpy(v75, (v69 + 408), 0x50uLL);
                sub_1C8E87298(v75);
                if ((v64 & 1) == 0)
                {
LABEL_24:
                  if (v65)
                  {
LABEL_25:
                    v27 = *(v69 + v22[17]);

                    if ((v66 & 1) == 0)
                    {
LABEL_26:
                      if (v1)
                      {
LABEL_27:
                        v28 = (v69 + v22[19]);
                        v29 = v28[2];
                        v30 = v28[3];
                        sub_1C8D16E14(*v28, v28[1]);
                        if ((v67 & 1) == 0)
                        {
                          goto LABEL_28;
                        }

                        goto LABEL_15;
                      }

LABEL_14:
                      if (!v67)
                      {
                        goto LABEL_28;
                      }

LABEL_15:
                      v25 = *(v69 + v22[20]);

                      goto LABEL_28;
                    }

LABEL_13:
                    v24 = *(v69 + v22[18]);

                    if (v1)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_14;
                  }

LABEL_12:
                  if (!v66)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_13;
                }

LABEL_11:
                sub_1C8D16D78(v69 + v22[16], &qword_1EC3144B8, &qword_1C90839E0);
                if (v65)
                {
                  goto LABEL_25;
                }

                goto LABEL_12;
              }

LABEL_10:
              if (!v64)
              {
                goto LABEL_24;
              }

              goto LABEL_11;
            }

LABEL_9:
            v23 = *(v69 + 400);

            if (v63)
            {
              goto LABEL_23;
            }

            goto LABEL_10;
          }

LABEL_8:
          if (!v62)
          {
            goto LABEL_22;
          }

          goto LABEL_9;
        }
      }

      else if (!v60)
      {
        goto LABEL_20;
      }

      memcpy(v75, (v69 + 192), 0x61uLL);
      sub_1C8CC15FC(v75);
      v22 = v68;
      if (v61)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v26 = *(v69 + 56);

    goto LABEL_18;
  }

  *v69 = sub_1C9064A0C();
  *(v69 + 8) = v31;
  LOBYTE(v75[0]) = 1;
  *(v69 + 16) = sub_1C9064A0C();
  *(v69 + 24) = v32;
  sub_1C8D21EE0();
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  *(v69 + 32) = v75[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A68, &unk_1C90921C0);
  sub_1C8E95C74();
  OUTLINED_FUNCTION_189_5();
  sub_1C9064A6C();
  *(v69 + 40) = v75[0];
  OUTLINED_FUNCTION_189_5();
  sub_1C9064A6C();
  *(v69 + 48) = v75[0];
  v74[0] = 5;
  sub_1C8CAC450();
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  *(v69 + 56) = v75[0];
  LOBYTE(v75[0]) = 6;
  *(v69 + 64) = sub_1C90649AC();
  *(v69 + 72) = v33;
  OUTLINED_FUNCTION_269();
  sub_1C8E95CF8();
  OUTLINED_FUNCTION_82_4();
  sub_1C90649EC();
  OUTLINED_FUNCTION_226_4();
  memcpy(v34, v35, v36);
  sub_1C8E95D4C();
  OUTLINED_FUNCTION_82_4();
  sub_1C9064A6C();
  memcpy((v69 + 192), v74, 0x61uLL);
  OUTLINED_FUNCTION_82_4();
  sub_1C90649EC();
  memcpy((v69 + 296), v73, 0x61uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EF0, &qword_1C906A028);
  sub_1C8E95DA0();
  sub_1C9064A6C();
  *(v69 + 400) = v72[0];
  sub_1C8E95E24();
  sub_1C9064A6C();
  memcpy((v69 + 408), v72, 0x50uLL);
  type metadata accessor for ToolIcon(0);
  LOBYTE(v70) = 12;
  OUTLINED_FUNCTION_113_3();
  sub_1C8E95E78(v37, v38);
  sub_1C90649EC();
  sub_1C8D80354(v2, v69 + v68[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FC8, &qword_1C90921D0);
  sub_1C8E95EC0();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v41 + *(v39 + 68)) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
  OUTLINED_FUNCTION_172_1();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v44 + *(v42 + 72)) = v43;
  sub_1C8E95F98();
  OUTLINED_FUNCTION_38_15();
  sub_1C90649EC();
  v45 = (v69 + v68[19]);
  *v45 = v70;
  v45[1] = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD0, &qword_1C90921D8);
  sub_1C8E95FEC();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v48 + *(v46 + 80)) = v47;
  sub_1C8D21F34();
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v51 + *(v49 + 84)) = v50;
  sub_1C8D22084();
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  *(v69 + v68[22]) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FD8, &unk_1C90921E0);
  sub_1C8E96070();
  OUTLINED_FUNCTION_21_18();
  sub_1C9064A6C();
  *(v69 + v68[23]) = v70;
  LOBYTE(v70) = 20;
  v52 = sub_1C90649AC();
  v53 = (v69 + v68[24]);
  *v53 = v52;
  v53[1] = v54;
  sub_1C8D21F88();
  OUTLINED_FUNCTION_38_15();
  sub_1C9064A6C();
  *(v69 + v68[25]) = v70;
  OUTLINED_FUNCTION_172_1();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_225_3();
  *(v57 + *(v55 + 104)) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
  sub_1C8E960F4();
  OUTLINED_FUNCTION_21_18();
  sub_1C90649EC();
  v58 = OUTLINED_FUNCTION_103_3();
  v59(v58);
  *(v69 + v68[27]) = v70;
  sub_1C8E96178();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1C8E961D0(v69, type metadata accessor for ToolDefinition);
LABEL_28:
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E86D20@<X0>(uint64_t *a1@<X8>)
{
  result = ToolDefinition.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ToolCategory.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  if (v1 == *v2 && *(v3 + 8) == v2[1])
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_281_1();
  }
}

uint64_t sub_1C8E86DBC(uint64_t a1)
{
  v2 = sub_1C8E96228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E86DF8(uint64_t a1)
{
  v2 = sub_1C8E96228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolCategory.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FE8, &qword_1C90921F8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E96228();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064E1C();
  sub_1C9064B2C();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C9063FBC();
}

uint64_t ToolCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ToolCategory.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FF0, &qword_1C9092200);
  OUTLINED_FUNCTION_11(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E96228();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_106_0();
  sub_1C9064DEC();
  if (!v0)
  {
    v12 = sub_1C9064A0C();
    v14 = v13;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDeprecationDefinition.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    sub_1C906478C();

    MEMORY[0x1CCA81A90](0x63616C7065722820, 0xEE00207962206465);
    MEMORY[0x1CCA81A90](v4, v3);
    OUTLINED_FUNCTION_340();
  }

  else
  {
    v5 = v0[1];
  }

  return v1;
}

uint64_t static ToolDeprecationDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v5)
    {
      if (v6)
      {
        if (v4 == v7 && v5 == v6)
        {
          return 1;
        }

        OUTLINED_FUNCTION_95_0();
        if (OUTLINED_FUNCTION_335_0())
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C8E872C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E8735C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C90CC060 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90CC080 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C8E87434(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C8E87474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8735C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8749C(uint64_t a1)
{
  v2 = sub_1C8E9627C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E874D8(uint64_t a1)
{
  v2 = sub_1C8E9627C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolDeprecationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317FF8, &qword_1C9092208);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8E9627C();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064ADC();
  }

  v14 = OUTLINED_FUNCTION_30();
  v15(v14, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolDeprecationDefinition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C9063FBC();
  if (!v4)
  {
    return sub_1C9064D9C();
  }

  sub_1C9064D9C();
  OUTLINED_FUNCTION_93();

  return sub_1C9063FBC();
}

uint64_t ToolDeprecationDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_298();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    OUTLINED_FUNCTION_158_5();
  }

  return sub_1C9064DBC();
}

void ToolDeprecationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318008, &qword_1C9092210);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E9627C();
  OUTLINED_FUNCTION_208();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_3_3();
    v11 = sub_1C90649AC();
    v13 = v12;
    v14 = *(v7 + 8);
    v17 = v11;
    v15 = OUTLINED_FUNCTION_203();
    v16(v15);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v17;
    v2[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E878AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v4)
  {
    sub_1C9063FBC();
  }

  return sub_1C9064DBC();
}

uint64_t static ToolSymbolIconStyle.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if ((v3 & 0x80000000) != 0 || (sub_1C8E5AC04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = BYTE1(v2);
  v3 = BYTE1(v3);
LABEL_7:

  return sub_1C8E5AC04(v2, v3);
}

uint64_t sub_1C8E879E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xED00007465737341;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C616E7265747865 && a2 == 0xED00007465737341)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8E87AFC(char a1)
{
  if (!a1)
  {
    return 0x776F6C666B726F77;
  }

  if (a1 == 1)
  {
    return 0x6C6F626D7973;
  }

  return 0x6C616E7265747865;
}

uint64_t sub_1C8E87B58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E87C28(char a1)
{
  if (a1)
  {
    return 0x5255656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C8E87C5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E87D20(char a1)
{
  if (a1)
  {
    return 0x656C797473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C8E87D4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E87DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E879E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87DEC(uint64_t a1)
{
  v2 = sub_1C8E962D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E87E28(uint64_t a1)
{
  v2 = sub_1C8E962D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E87E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E87B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87E94(uint64_t a1)
{
  v2 = sub_1C8E96324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E87ED0(uint64_t a1)
{
  v2 = sub_1C8E96324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E87F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E87C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E87F3C(uint64_t a1)
{
  v2 = sub_1C8E96378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E87F78(uint64_t a1)
{
  v2 = sub_1C8E96378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E87FB4(uint64_t a1)
{
  v2 = sub_1C8E96420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E87FF0(uint64_t a1)
{
  v2 = sub_1C8E96420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolIcon.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318010, &qword_1C9092218);
  OUTLINED_FUNCTION_11(v5);
  v63 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_10(v10, v59);
  v64 = sub_1C9061EBC();
  v11 = OUTLINED_FUNCTION_11(v64);
  v62 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v61 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318018, &qword_1C9092220);
  OUTLINED_FUNCTION_11(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_73();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318020, &qword_1C9092228);
  OUTLINED_FUNCTION_11(v21);
  v60 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_233();
  v26 = type metadata accessor for ToolIcon(0);
  v27 = OUTLINED_FUNCTION_13_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v32 = (v31 - v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318028, &qword_1C9092230);
  v65 = OUTLINED_FUNCTION_11(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_72();
  v37 = *(v4 + 24);
  v38 = *(v4 + 32);
  v39 = OUTLINED_FUNCTION_276();
  OUTLINED_FUNCTION_217(v39, v40);
  sub_1C8E962D0();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_7_31();
  sub_1C8E96178();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = *v32;
  v43 = v32[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *(v32 + 8);
      sub_1C8E96378();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_177_5();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_276_1();

      if (!v42)
      {
        sub_1C8E963CC();
        OUTLINED_FUNCTION_59_10();
        sub_1C9064B8C();
      }

      v45 = OUTLINED_FUNCTION_41_12();
      v46(v45);
      OUTLINED_FUNCTION_59_8();
      v48 = v1;
      v49 = v65;
    }

    else
    {
      v50 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      (*(v62 + 32))(v61, v50, v64);
      OUTLINED_FUNCTION_119_1();
      sub_1C8E96324();
      OUTLINED_FUNCTION_82_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_177_5();
      sub_1C9064B2C();
      OUTLINED_FUNCTION_276_1();

      if (v0)
      {
        v51 = *(v63 + 8);
        v52 = OUTLINED_FUNCTION_146_4();
        v53(v52);
        (*(v62 + 8))(v61, v64);
        OUTLINED_FUNCTION_59_8();
        v48 = v1;
        v49 = v65;
      }

      else
      {
        OUTLINED_FUNCTION_26_14();
        sub_1C8E95E78(v54, v55);
        sub_1C9064B8C();
        v56 = *(v63 + 8);
        v57 = OUTLINED_FUNCTION_146_4();
        v58(v57);
        (*(v62 + 8))(v61, v64);
        v48 = OUTLINED_FUNCTION_30();
      }
    }
  }

  else
  {
    sub_1C8E96420();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_177_5();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_276_1();

    (*(v60 + 8))(v2, v21);
    OUTLINED_FUNCTION_59_8();
    v48 = OUTLINED_FUNCTION_93();
  }

  v47(v48, v49);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolIcon.hash(into:)()
{
  v0 = sub_1C9061EBC();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = type metadata accessor for ToolIcon(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = (v14 - v13);
  OUTLINED_FUNCTION_7_31();
  sub_1C8E96178();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v15;
  v17 = v15[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
      (*(v3 + 32))(v8, v15 + *(v20 + 48), v0);
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_248_2();

      OUTLINED_FUNCTION_26_14();
      sub_1C8E95E78(v21, v22);
      sub_1C9063E7C();
      return (*(v3 + 8))(v8, v0);
    }

    v19 = *(v15 + 8);
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_248_2();

    if (v19 < 0)
    {
      MEMORY[0x1CCA82810](1);
    }

    else
    {
      MEMORY[0x1CCA82810](0);
      ToolSymbolIconColor.rawValue.getter();
      OUTLINED_FUNCTION_62_5();
    }

    ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_62_5();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_248_2();
  }
}

uint64_t sub_1C8E887F8(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void ToolIcon.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10)
{
  OUTLINED_FUNCTION_196();
  v135 = v11;
  v14 = v13;
  v130 = v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318038, &qword_1C9092238);
  OUTLINED_FUNCTION_11(v126);
  v131 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v129 = v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318040, &qword_1C9092240);
  OUTLINED_FUNCTION_11(v125);
  v122 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_42_10(v25, v116);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318048, &qword_1C9092248);
  v27 = OUTLINED_FUNCTION_11(v26);
  v123 = v28;
  v124 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v127 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318050, &unk_1C9092250);
  v34 = OUTLINED_FUNCTION_11(v33);
  v132 = v35;
  v133 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_142();
  v39 = type metadata accessor for ToolIcon(0);
  v40 = OUTLINED_FUNCTION_13_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  v45 = (v43 - v44);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v116 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v116 - v51;
  v54 = v14[3];
  v53 = v14[4];
  v134 = v14;
  v55 = OUTLINED_FUNCTION_181_1();
  OUTLINED_FUNCTION_217(v55, v56);
  sub_1C8E962D0();
  OUTLINED_FUNCTION_266_2();
  v57 = v135;
  sub_1C9064DEC();
  if (!v57)
  {
    v117 = v12;
    v118 = v49;
    v119 = v45;
    v120 = v52;
    v135 = v39;
    v58 = v133;
    v59 = v10;
    v60 = sub_1C9064A9C();
    sub_1C8CB8914(v60, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v61)
    {
      OUTLINED_FUNCTION_119_0();
      v121 = v10;
      OUTLINED_FUNCTION_282_1();
      if (v68 == v69)
      {
        __break(1u);
        return;
      }

      v70 = *(v67 + v66);
      v71 = OUTLINED_FUNCTION_93_3(v62, v63, v64, v65, v66);
      sub_1C8CB891C(v71);
      v73 = v72;
      v75 = v74;
      swift_unknownObjectRelease();
      if (v73 == v75 >> 1)
      {
        if (v70)
        {
          if (v70 == 1)
          {
            sub_1C8E96378();
            OUTLINED_FUNCTION_82_4();
            sub_1C906498C();
            v86 = sub_1C9064A0C();
            v88 = v87;
            sub_1C8E96474();
            OUTLINED_FUNCTION_162_5();
            sub_1C9064A6C();
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_263_2();
            v105(v104);
            v106 = OUTLINED_FUNCTION_72_3();
            v107(v106);
            v108 = v117;
            *v117 = v86;
            *(v108 + 8) = v88;
            *(v108 + 16) = a10;
            OUTLINED_FUNCTION_95_0();
            swift_storeEnumTagMultiPayload();
            sub_1C8E872C8(v108, v120);
            v109 = v134;
LABEL_16:
            v114 = OUTLINED_FUNCTION_181();
            sub_1C8E872C8(v114, v115);
            v83 = v109;
            goto LABEL_12;
          }

          OUTLINED_FUNCTION_119_1();
          sub_1C8E96324();
          OUTLINED_FUNCTION_82_4();
          sub_1C906498C();
          v97 = sub_1C9064A0C();
          v99 = v98;
          v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
          v127 = v99;
          v128 = v100;
          v101 = v119;
          *v119 = v97;
          v101[1] = v99;
          sub_1C9061EBC();
          OUTLINED_FUNCTION_26_14();
          sub_1C8E95E78(v102, v103);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_206_3();
          v111(v110);
          v112 = OUTLINED_FUNCTION_72_3();
          v113(v112);
          OUTLINED_FUNCTION_117();
          swift_storeEnumTagMultiPayload();
          v96 = v101;
        }

        else
        {
          v136 = 0;
          sub_1C8E96420();
          OUTLINED_FUNCTION_82_4();
          sub_1C906498C();
          v84 = sub_1C9064A0C();
          v85 = v132;
          v89 = v84;
          v91 = v90;
          swift_unknownObjectRelease();
          v92 = *(v123 + 8);
          v93 = OUTLINED_FUNCTION_146_0();
          v94(v93);
          (*(v85 + 8))(v121, v58);
          v95 = v118;
          *v118 = v89;
          v95[1] = v91;
          swift_storeEnumTagMultiPayload();
          v96 = v95;
        }

        sub_1C8E872C8(v96, v120);
        v109 = v134;
        goto LABEL_16;
      }

      v59 = v121;
    }

    v76 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v78 = v135;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v80 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v76);
    (*(v81 + 104))(v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_107_5();
    v82(v59, v58);
  }

  v83 = v134;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v83);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E89020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746E6974 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E890EC(char a1)
{
  if (a1)
  {
    return 0x6465746E6974;
  }

  else
  {
    return 0x6C6F6369746C756DLL;
  }
}

uint64_t sub_1C8E89124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E891FC(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_1C8E89230(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E892EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E8936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E89394(uint64_t a1)
{
  v2 = sub_1C8E964C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E893D0(uint64_t a1)
{
  v2 = sub_1C8E964C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E89414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8943C(uint64_t a1)
{
  v2 = sub_1C8E965C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E89478(uint64_t a1)
{
  v2 = sub_1C8E965C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E894B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E89230(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E894E4(uint64_t a1)
{
  v2 = sub_1C8E9651C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E89520(uint64_t a1)
{
  v2 = sub_1C8E9651C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolSymbolIconStyle.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318058, &qword_1C9092260);
  v31 = OUTLINED_FUNCTION_11(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_86();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318060, &qword_1C9092268);
  OUTLINED_FUNCTION_11(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_233();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318068, &qword_1C9092270);
  OUTLINED_FUNCTION_11(v32);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38();
  v19 = *v0;
  v20 = *(v5 + 24);
  v21 = *(v5 + 32);
  v22 = OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_217(v22, v23);
  sub_1C8E964C8();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  if (v19 < 0)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E9651C();
    sub_1C9064ACC();
    sub_1C8E96570();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_107_5();
    v26(v3, v31);
    v27 = *(v15 + 8);
    v28 = OUTLINED_FUNCTION_177_5();
    v30(v28, v29);
  }

  else
  {
    sub_1C8E965C4();
    sub_1C9064ACC();
    sub_1C8E96570();
    sub_1C9064B8C();
    if (!v1)
    {
      sub_1C9064B8C();
    }

    OUTLINED_FUNCTION_119_6();
    v24 = OUTLINED_FUNCTION_77_3();
    v25(v24);
    (*(v15 + 8))(v2, v32);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ToolSymbolIconStyle.hash(into:)()
{
  if (*v0 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_62_5();
  }

  ToolSymbolIconColor.rawValue.getter();
  OUTLINED_FUNCTION_62_5();
}

uint64_t ToolSymbolIconStyle.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  if (v1 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    ToolSymbolIconColor.rawValue.getter();
    OUTLINED_FUNCTION_233_3();
  }

  ToolSymbolIconColor.rawValue.getter();
  OUTLINED_FUNCTION_233_3();

  return sub_1C9064DBC();
}

void ToolSymbolIconStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, unsigned __int8 a11, char a12, unsigned __int8 a13, char a14, unsigned __int8 a15)
{
  OUTLINED_FUNCTION_196();
  v19 = v18;
  v71 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318070, &qword_1C9092278);
  v70 = OUTLINED_FUNCTION_11(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_142();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318078, &qword_1C9092280);
  OUTLINED_FUNCTION_11(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_38();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318080, &qword_1C9092288);
  OUTLINED_FUNCTION_11(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_73();
  v33 = v19[3];
  v34 = v19[4];
  v35 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_217(v35, v36);
  sub_1C8E964C8();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v16)
  {
    v37 = sub_1C9064A9C();
    sub_1C8CB8914(v37, 0);
    OUTLINED_FUNCTION_228_3();
    if (v38)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_282_1();
    if (v45 == v46)
    {
      __break(1u);
      return;
    }

    v69 = *(v44 + v43);
    v47 = OUTLINED_FUNCTION_93_3(v39, v40, v41, v42, v43);
    sub_1C8CB891C(v47);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    if (v49 != v51 >> 1)
    {
LABEL_8:
      v53 = sub_1C90647DC();
      OUTLINED_FUNCTION_6_3();
      v55 = v54;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
      OUTLINED_FUNCTION_241_3(&type metadata for ToolSymbolIconStyle);
      OUTLINED_FUNCTION_411();
      v57 = *MEMORY[0x1E69E6AF8];
      OUTLINED_FUNCTION_10_0(v53);
      (*(v58 + 104))(v55);
      swift_willThrow();
      swift_unknownObjectRelease();
      v59 = OUTLINED_FUNCTION_41_12();
      v60(v59);
    }

    else
    {
      if (v69)
      {
        OUTLINED_FUNCTION_275();
        sub_1C8E9651C();
        v52 = v15;
        OUTLINED_FUNCTION_44_11();
        sub_1C906498C();
        v61 = v71;
        sub_1C8E96618();
        sub_1C9064A6C();
        OUTLINED_FUNCTION_276_1();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_107_5();
        v62(v52, v70);
        v63 = OUTLINED_FUNCTION_62_7();
        v64(v63);
        v65 = a15 | 0x8000;
      }

      else
      {
        sub_1C8E965C4();
        OUTLINED_FUNCTION_44_11();
        sub_1C906498C();
        sub_1C8E96618();
        OUTLINED_FUNCTION_82_4();
        sub_1C9064A6C();
        sub_1C9064A6C();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_119_6();
        v66(v17, v25);
        v67 = OUTLINED_FUNCTION_41_12();
        v68(v67);
        v65 = a13 | (a11 << 8);
        v61 = v71;
      }

      *v61 = v65;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E89ED0()
{
  v1 = *v0;
  sub_1C9064D7C();
  if (v1 < 0)
  {
    MEMORY[0x1CCA82810](1);
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    ToolSymbolIconColor.rawValue.getter();
    sub_1C9063FBC();
  }

  ToolSymbolIconColor.rawValue.getter();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

ToolKit::ToolSymbolIconColor_optional __swiftcall ToolSymbolIconColor.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  v2 = sub_1C9064C6C();

  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C8E8A038@<X0>(unint64_t *a1@<X8>)
{
  result = ToolSymbolIconColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ParameterDefinition.ParameterFlags.all.setter(void *a1)
{
  swift_beginAccess();
  off_1EDA60998 = a1;
}

uint64_t (*static ParameterDefinition.ParameterFlags.all.modify())()
{
  OUTLINED_FUNCTION_95_0();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_1C8E8A218@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EDA60998;
}

uint64_t sub_1C8E8A268(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EDA60998 = v1;
}

uint64_t ParameterDefinition.ParameterFlags.description.getter()
{
  v2 = *v1;
  if ((*v1 & 1) == 0)
  {
    v0 = MEMORY[0x1E69E7CC0];
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_173_5();
  OUTLINED_FUNCTION_260_0(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_9_1(v4);
    sub_1C8D00CA4();
    v0 = v17;
  }

  OUTLINED_FUNCTION_223_2();
  *(v6 + 32) = 0x6E6564646968;
  *(v6 + 40) = 0xE600000000000000;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v0 = v18;
    }

    OUTLINED_FUNCTION_207_3();
    if (v5)
    {
      OUTLINED_FUNCTION_9_1(v7);
      sub_1C8D00CA4();
      v0 = v19;
    }

    OUTLINED_FUNCTION_223_2();
    *(v8 + 32) = 0x69736568746E7973;
    *(v8 + 40) = 0xEB0000000064657ALL;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_16_2();
      v0 = v20;
    }

    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v10 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_9_1(v9);
      sub_1C8D00CA4();
      v0 = v21;
    }

    OUTLINED_FUNCTION_97_5();
    *(v0 + 16) = v10 + 1;
    v11 = v0 + 16 * v10;
    *(v11 + 32) = 0xD000000000000012;
    *(v11 + 40) = v12;
  }

  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v13, v14, &qword_1C9066990);
  OUTLINED_FUNCTION_70_3();
  sub_1C9063E9C();
  OUTLINED_FUNCTION_29_12();
  v15 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v15);

  OUTLINED_FUNCTION_340();
  return 40;
}

ToolKit::ParameterDefinition::ToolMetadata __swiftcall ParameterDefinition.ToolMetadata.init(sourceContainerId:backingLinkActionIdentifiers:)(Swift::String sourceContainerId, Swift::OpaquePointer backingLinkActionIdentifiers)
{
  *v2 = sourceContainerId;
  *(v2 + 16) = backingLinkActionIdentifiers;
  result.sourceContainerId = sourceContainerId;
  result.backingLinkActionIdentifiers = backingLinkActionIdentifiers;
  return result;
}

void static ParameterDefinition.ToolMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v5 = v2[2];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (v6 || (sub_1C9064C2C() & 1) != 0)
  {
    v7 = OUTLINED_FUNCTION_94();

    sub_1C8CEB10C(v7, v8);
  }
}

uint64_t sub_1C8E8A5C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C90CC020 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C8E8A698(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C8E8A6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8A5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8A700(uint64_t a1)
{
  v2 = sub_1C8E9666C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8A73C(uint64_t a1)
{
  v2 = sub_1C8E9666C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDefinition.ToolMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318088, &qword_1C9092290);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = v0[1];
  v13 = v0[2];
  v10 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E9666C();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_205();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v11 = OUTLINED_FUNCTION_30();
  v12(v11, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.ToolMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  v1 = *(v0 + 16);
  sub_1C9063FBC();
  v2 = OUTLINED_FUNCTION_94();

  return sub_1C8CC1590(v2, v3);
}

uint64_t ParameterDefinition.ToolMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_158_5();
  sub_1C8CC1590(v5, v3);
  return sub_1C9064DBC();
}

void ParameterDefinition.ToolMetadata.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318090, &qword_1C9092298);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E9666C();
  OUTLINED_FUNCTION_208();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
    sub_1C9064A6C();
    v9 = OUTLINED_FUNCTION_10_2();
    v10(v9);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v11;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t static ParameterDefinition.BooleanMetadata.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (sub_1C9064C2C(), result = OUTLINED_FUNCTION_274(), (v10 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94();

      return sub_1C9064C2C();
    }
  }

  return result;
}

uint64_t sub_1C8E8AC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972745365757274 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72745365736C6166 && a2 == 0xEB00000000676E69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E8ACF4(char a1)
{
  if (a1)
  {
    return 0x72745365736C6166;
  }

  else
  {
    return 0x6972745365757274;
  }
}

uint64_t sub_1C8E8AD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8AC20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8AD68(uint64_t a1)
{
  v2 = sub_1C8E966C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8ADA4(uint64_t a1)
{
  v2 = sub_1C8E966C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDefinition.BooleanMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318098, &qword_1C90922A0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  v8 = *v0;
  v9 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8E966C0();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v14 = OUTLINED_FUNCTION_30();
  v15(v14, v4);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.BooleanMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1C9063FBC();
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t ParameterDefinition.BooleanMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_158_5();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ParameterDefinition.BooleanMetadata.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180A8, &qword_1C90922A8);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E966C0();
  OUTLINED_FUNCTION_208();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_3_3();
    v11 = sub_1C9064A0C();
    v13 = v12;
    v14 = *(v7 + 8);
    v17 = v11;
    v15 = OUTLINED_FUNCTION_203();
    v16(v15);
    *v2 = v4;
    v2[1] = v3;
    v2[2] = v17;
    v2[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8B124()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t ParameterDefinition.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t ParameterDefinition.BOOLeanMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C8D16DD0(v2, v3);
}

void ParameterDefinition.fetchSampleInvocations(cacheResults:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = sub_1C9063D3C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v39 - v14;
  if (v0[16])
  {

LABEL_16:
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_198();
    return;
  }

  if (!v0[14])
  {
    v31 = *MEMORY[0x1E69E10E8];
    sub_1C906371C();
    v32 = sub_1C9063D1C();
    v33 = sub_1C906444C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C8C9B000, v32, v33, "Not fetching sample invocations due to missing tool metadata", v34, 2u);
      MEMORY[0x1CCA833A0](v34, -1, -1);
    }

    (*(v7 + 8))(v12, v4);
    goto LABEL_16;
  }

  v39[1] = v1;
  v16 = v0[15];
  v17 = *(v16 + 16);
  if (!v17)
  {
    v35 = *MEMORY[0x1E69E10E8];
    sub_1C906371C();
    v36 = sub_1C9063D1C();
    v37 = sub_1C906443C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C8C9B000, v36, v37, "Skipping fetching sample invocations since this is not an app intent", v38, 2u);
      MEMORY[0x1CCA833A0](v38, -1, -1);
    }

    (*(v7 + 8))(v15, v4);
    goto LABEL_16;
  }

  v18 = *v0;
  v19 = v0[1];
  v20 = v0[13];
  v21 = [objc_opt_self() sharedProvider];
  OUTLINED_FUNCTION_181_1();
  v22 = sub_1C9063EBC();
  v23 = [v21 examplePhrasesForBundleIdentifier:v22 useCache:v3 & 1];

  sub_1C8D72FC8();
  v24 = sub_1C906419C();

  v25 = 0;
  for (i = (v16 + 40); ; i += 2)
  {
    if (v17 == v25)
    {

      goto LABEL_16;
    }

    if (v25 >= *(v16 + 16))
    {
      break;
    }

    ++v25;
    v28 = *(i - 1);
    v27 = *i;

    static SampleInvocationDefinition.definitions(from:typeName:parameterKey:)(v24, v28, v27, v18, v19);
    v30 = v29;

    sub_1C8CAEAFC(v30);
  }

  __break(1u);
}

uint64_t ParameterDefinition.parentToolMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1C8DFBCB0(v2, v3);
}

double ParameterDefinition.init(key:name:description:flags:valueType:relationships:parentToolMetadata:overriddenSampleInvocations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a7;
  v13 = *a8;
  v14 = *(a11 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v12;
  *(a9 + 56) = v13;
  *(a9 + 64) = a10;
  *(a9 + 104) = *a11;
  *(a9 + 120) = v14;
  *(a9 + 128) = a12;
  result = 0.0;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  return result;
}

double ParameterDefinition.init(key:name:description:flags:valueType:relationships:sampleInvocations:)@<D0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t *a8@<X6>, uint64_t *a9@<X7>, uint64_t a10)
{
  v10 = *a8;
  v11 = *a9;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = v10;
  a1[7] = v11;
  a1[8] = a10;
  return OUTLINED_FUNCTION_129_4(a1);
}

double ParameterDefinition.init(key:name:description:valueType:relationships:sampleInvocations:)@<D0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t *a8@<X6>, uint64_t a9@<X7>)
{
  v9 = *a8;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = 0;
  a1[7] = v9;
  a1[8] = a9;
  return OUTLINED_FUNCTION_129_4(a1);
}

uint64_t static ParameterDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v114 = v3[7];
  v115 = v3[6];
  v113 = v3[8];
  v106 = v3[9];
  v105 = v3[10];
  v107 = v3[11];
  v108 = v3[12];
  v101 = v3[13];
  v97 = v3[16];
  v98 = v3[15];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v112 = v2[8];
  v104 = v2[9];
  v110 = v3[14];
  v111 = v2[10];
  v103 = v2[11];
  v14 = v1 == *v2 && v3[1] == v2[1];
  v102 = v2[12];
  v109 = v2[14];
  v99 = v2[13];
  v100 = v2[15];
  v96 = v2[16];
  if (!v14 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v5 != v9)
  {
    OUTLINED_FUNCTION_192_5();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  if (!v7)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    return 0;
  }

  if (v6 != v10 || v7 != v11)
  {
    OUTLINED_FUNCTION_206_0();
    sub_1C9064C2C();
    result = OUTLINED_FUNCTION_274();
    if ((v18 & 1) == 0)
    {
      return result;
    }

LABEL_20:
    if (v115 != v13)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v115 != v13)
  {
    return 0;
  }

LABEL_23:
  v117 = v12;
  v118 = v114;

  static TypeInstance.== infix(_:_:)(&v118, &v117);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB188();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  if (!v105)
  {
    sub_1C8D16DD0(v106, 0);
    v34 = v101;
    v23 = v109;
    v22 = v110;
    v35 = v99;
    if (!v111)
    {
      sub_1C8D16DD0(v104, 0);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_192_5();
    sub_1C8D16DD0(v36, v37);
    goto LABEL_41;
  }

  v23 = v109;
  v22 = v110;
  if (!v111)
  {
    sub_1C8D16DD0(v106, v105);
    OUTLINED_FUNCTION_192_5();
    sub_1C8D16DD0(v38, v39);
    v40 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v40, v41);

LABEL_41:
    v42 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16E14(v42, v43);
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_192_5();
LABEL_42:
    sub_1C8D16E14(v44, v45);
    return 0;
  }

  if (v106 != v104 || v105 != v111)
  {
    OUTLINED_FUNCTION_325();
    if ((sub_1C9064C2C() & 1) == 0)
    {
      v71 = OUTLINED_FUNCTION_13_21();
      sub_1C8D16DD0(v71, v72);
      v73 = OUTLINED_FUNCTION_117();
      sub_1C8D16DD0(v73, v74);
      v75 = OUTLINED_FUNCTION_13_21();
      sub_1C8D16DD0(v75, v76);
      v77 = OUTLINED_FUNCTION_117();
      sub_1C8D16E14(v77, v78);

      v44 = OUTLINED_FUNCTION_13_21();
      goto LABEL_42;
    }
  }

  if (v107 == v103 && v108 == v102)
  {
    v46 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v46, v47);
    sub_1C8D16DD0(v104, v111);
    v48 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16DD0(v48, v49);
    v50 = OUTLINED_FUNCTION_117();
    sub_1C8D16E14(v50, v51);

    v34 = v101;
    v35 = v99;
LABEL_45:
    v52 = OUTLINED_FUNCTION_13_21();
    sub_1C8D16E14(v52, v53);
    goto LABEL_46;
  }

  v116 = OUTLINED_FUNCTION_335_0();
  v26 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16DD0(v26, v27);
  sub_1C8D16DD0(v104, v111);
  v28 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16DD0(v28, v29);
  v30 = OUTLINED_FUNCTION_117();
  sub_1C8D16E14(v30, v31);

  v32 = OUTLINED_FUNCTION_13_21();
  sub_1C8D16E14(v32, v33);
  v34 = v101;
  v35 = v99;
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  if (v22)
  {
    if (v23)
    {
      v54 = v34 == v35 && v22 == v23;
      if (v54 || (OUTLINED_FUNCTION_249(), (sub_1C9064C2C() & 1) != 0))
      {
        v55 = OUTLINED_FUNCTION_276();
        sub_1C8CEB10C(v55, v56);
        v58 = v57;
        v59 = OUTLINED_FUNCTION_36_13();
        sub_1C8DFBCB0(v59, v60);
        v61 = OUTLINED_FUNCTION_46_9();
        sub_1C8DFBCB0(v61, v62);
        v63 = OUTLINED_FUNCTION_36_13();
        sub_1C8DFBCB0(v63, v64);
        v65 = OUTLINED_FUNCTION_46_9();
        sub_1C8E56464(v65, v66);

        v67 = OUTLINED_FUNCTION_36_13();
        sub_1C8E56464(v67, v68);
        if ((v58 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_64;
      }

      v88 = OUTLINED_FUNCTION_36_13();
      sub_1C8DFBCB0(v88, v89);
      v90 = OUTLINED_FUNCTION_46_9();
      sub_1C8DFBCB0(v90, v91);
      v92 = OUTLINED_FUNCTION_36_13();
      sub_1C8DFBCB0(v92, v93);
      v94 = OUTLINED_FUNCTION_46_9();
      sub_1C8E56464(v94, v95);

      v85 = OUTLINED_FUNCTION_36_13();
LABEL_60:
      sub_1C8E56464(v85, v86);
      return 0;
    }

    v79 = OUTLINED_FUNCTION_36_13();
    sub_1C8DFBCB0(v79, v80);
    sub_1C8DFBCB0(v35, 0);
    v81 = OUTLINED_FUNCTION_36_13();
    sub_1C8DFBCB0(v81, v82);

LABEL_59:
    v83 = OUTLINED_FUNCTION_36_13();
    sub_1C8E56464(v83, v84);
    v85 = OUTLINED_FUNCTION_46_9();
    goto LABEL_60;
  }

  sub_1C8DFBCB0(v34, 0);
  if (v23)
  {
    v69 = OUTLINED_FUNCTION_46_9();
    sub_1C8DFBCB0(v69, v70);
    goto LABEL_59;
  }

  sub_1C8DFBCB0(v35, 0);
  sub_1C8E56464(v34, 0);
LABEL_64:
  if (v97)
  {
    if (!v96)
    {
      return 0;
    }

    sub_1C8CEB4A0(v97, v96);
    return (v87 & 1) != 0;
  }

  return !v96;
}

uint64_t sub_1C8E8BBC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4D6E61656C6F6F62 && a2 == 0xEF61746164617465;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C90CC0A0 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x80000001C90CC040 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8E8BEA4(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x7367616C66;
      break;
    case 4:
      result = 0x70795465756C6176;
      break;
    case 5:
      result = 0x6E6F6974616C6572;
      break;
    case 6:
      result = 0x4D6E61656C6F6F62;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E8BFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8BBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8BFF0(uint64_t a1)
{
  v2 = sub_1C8E96714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8C02C(uint64_t a1)
{
  v2 = sub_1C8E96714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B0, &qword_1C90922B0);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v12 = *v0;
  v11 = v0[1];
  v34 = v0[3];
  v35 = v0[2];
  v32 = v0[5];
  v33 = v0[4];
  v30 = v0[7];
  v31 = v0[6];
  v25 = v0[9];
  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[12];
  v29 = v0[8];
  v22 = v0[13];
  v23 = v0[14];
  v24 = v0[15];
  v21 = v0[16];
  v13 = *(v4 + 24);
  v14 = *(v4 + 32);
  v15 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_217(v15, v16);
  sub_1C8E96714();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_107();
  sub_1C9064B2C();
  if (!v1)
  {
    sub_1C9064B2C();
    sub_1C9064ADC();
    sub_1C8D26A34();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_231_2();
    sub_1C8CA6D90();

    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8E96768();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_270();
    sub_1C8D16DD0(v17, v18);
    sub_1C8E967EC();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
    sub_1C8D16E14(v25, v26);
    OUTLINED_FUNCTION_269();
    sub_1C8DFBCB0(v19, v20);
    sub_1C8E96840();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
    sub_1C8E56464(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E95AF0();
    OUTLINED_FUNCTION_65_8();
    sub_1C9064B0C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[10];
  v13 = v1[9];
  v14 = v1[12];
  v15 = v1[11];
  v16 = v1[13];
  v18 = v1[8];
  v19 = v1[14];
  v9 = v1[16];
  v17 = v1[15];
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v5)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  MEMORY[0x1CCA82810](v6);
  TypeInstance.hash(into:)();
  sub_1C8D03608();
  if (v8)
  {
    OUTLINED_FUNCTION_284();
    sub_1C9063FBC();
    sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  if (!v19)
  {
    OUTLINED_FUNCTION_283();
    if (v9)
    {
      goto LABEL_9;
    }

    return OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_284();
  sub_1C9063FBC();
  sub_1C8CC1590(v0, v17);
  if (!v9)
  {
    return OUTLINED_FUNCTION_283();
  }

LABEL_9:
  OUTLINED_FUNCTION_284();
  v10 = OUTLINED_FUNCTION_145();

  return sub_1C8D03494(v10, v11);
}

uint64_t ParameterDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ParameterDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void ParameterDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180C8, &qword_1C90922C0);
  OUTLINED_FUNCTION_11(v43);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_110();
  v18 = v12[3];
  v19 = v12[4];
  v20 = OUTLINED_FUNCTION_203();
  OUTLINED_FUNCTION_217(v20, v21);
  sub_1C8E96714();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    OUTLINED_FUNCTION_104_4();
    v31 = sub_1C9064A0C();
    v42 = v22;
    OUTLINED_FUNCTION_104_4();
    v23 = sub_1C9064A0C();
    v41 = v24;
    LOBYTE(v45) = 2;
    OUTLINED_FUNCTION_104_4();
    v30 = sub_1C90649AC();
    v40 = v25;
    sub_1C8D26910();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C9064A6C();
    v29 = v45;
    sub_1C8CAC450();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C9064A6C();
    v28 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8E96894();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C9064A6C();
    v39 = v45;
    sub_1C8E96918();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C90649EC();
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    LOBYTE(v44[0]) = 7;
    sub_1C8E9696C();
    OUTLINED_FUNCTION_227_2();
    OUTLINED_FUNCTION_104_4();
    sub_1C90649EC();
    v33 = v46;
    v34 = v45;
    v32 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316A70, &qword_1C9087680);
    v62 = 8;
    sub_1C8E960F4();
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_104_4();
    sub_1C90649EC();
    v26 = OUTLINED_FUNCTION_94_5();
    v27(v26);
    v44[0] = v31;
    v44[1] = v42;
    v44[2] = v23;
    v44[3] = v41;
    v44[4] = v30;
    v44[5] = v40;
    v44[6] = v29;
    v44[7] = v28;
    v44[8] = v39;
    v44[9] = v35;
    v44[10] = v36;
    v44[11] = v37;
    v44[12] = v38;
    v44[13] = v34;
    v44[14] = v33;
    v44[15] = v32;
    v44[16] = a10;
    memcpy(v14, v44, 0x88uLL);
    sub_1C8D07294(v44, &v45);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v45 = v31;
    v46 = v42;
    v47 = v23;
    v48 = v41;
    v49 = v30;
    v50 = v40;
    v51 = v29;
    v52 = v28;
    v53 = v39;
    v54 = v35;
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v58 = v34;
    v59 = v33;
    v60 = v32;
    v61 = a10;
    sub_1C8D072F0(&v45);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8CAF8()
{
  sub_1C9064D7C();
  ParameterDefinition.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ParameterRelationshipDefinition.relation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_1C8D07154(v2, v3);
}

uint64_t static ParameterRelationshipDefinition.Relation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3 >> 5)
  {
    case 1u:
      if ((v5 & 0xE0) == 0x20)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    case 2u:
      if ((v5 & 0xE0) != 0x40)
      {
        goto LABEL_28;
      }

      goto LABEL_9;
    case 3u:
      if ((v5 & 0xE0) != 0x60)
      {
        goto LABEL_28;
      }

LABEL_9:
      OUTLINED_FUNCTION_128_3();
      sub_1C8D2A4D8();
      v7 = v6;
      sub_1C8D07168(v2, v3);
      sub_1C8D07168(v4, v5);
      if (v7)
      {
        v8 = v5 ^ v3 ^ 1;
      }

      else
      {
        v8 = 0;
      }

      return v8 & 1;
    case 4u:
      if ((v5 & 0xE0) != 0x80)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    case 5u:
      if ((v5 & 0xE0) == 0xA0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    case 6u:
      v12 = v5 & 0xE0;
      if (!(v2 | v3 ^ 0xC0))
      {
        v13 = v12 == 192 && v4 == 0;
        if (v13 && v5 == 192)
        {
          sub_1C8D07168(*a1, v3);
          sub_1C8D07168(0, 0xC0u);
          v8 = 1;
          return v8 & 1;
        }

        goto LABEL_28;
      }

      v14 = v12 == 192 && v4 == 1;
      if (!v14 || v5 != 192)
      {
LABEL_28:
        v15 = OUTLINED_FUNCTION_128_3();
        sub_1C8D07168(v15, v3);
        sub_1C8D07168(v4, v5);
        v8 = 0;
        return v8 & 1;
      }

      sub_1C8D07168(*a1, v3);
      v8 = 1;
      sub_1C8D07168(1, 0xC0u);
      return v8 & 1;
    default:
      if (v5 >= 0x20)
      {
        goto LABEL_28;
      }

LABEL_15:
      OUTLINED_FUNCTION_128_3();
      sub_1C8D2A4D8();
      v10 = v9;
      sub_1C8D07168(v2, v3);
      sub_1C8D07168(v4, v5);
      return v10 & 1;
  }
}

uint64_t sub_1C8E8CD58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F537369 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F4E7369 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C61757165 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61757145746F6ELL && a2 == 0xE900000000000073;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x43746F4E73656F64 && a2 == 0xEE006E6961746E6FLL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E8CFDC(char a1)
{
  result = 0x656D6F537369;
  switch(a1)
  {
    case 1:
      result = 0x656E6F4E7369;
      break;
    case 2:
      result = 0x736C61757165;
      break;
    case 3:
      result = 0x6C61757145746F6ELL;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0x6E6168547373656CLL;
      break;
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x43746F4E73656F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E8D0C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x6C61757145726FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E8D178(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E8D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8CD58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8D210(uint64_t a1)
{
  v2 = sub_1C8E969C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D24C(uint64_t a1)
{
  v2 = sub_1C8E969C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D288(uint64_t a1)
{
  v2 = sub_1C8E96AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D2C4(uint64_t a1)
{
  v2 = sub_1C8E96AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D300(uint64_t a1)
{
  v2 = sub_1C8E96A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D33C(uint64_t a1)
{
  v2 = sub_1C8E96A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D378(uint64_t a1)
{
  v2 = sub_1C8E96C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D3B4(uint64_t a1)
{
  v2 = sub_1C8E96C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D3F0(uint64_t a1)
{
  v2 = sub_1C8E96B94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D42C(uint64_t a1)
{
  v2 = sub_1C8E96B94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D468(uint64_t a1)
{
  v2 = sub_1C8E96C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D4A4(uint64_t a1)
{
  v2 = sub_1C8E96C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D4E0(uint64_t a1)
{
  v2 = sub_1C8E96CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D51C(uint64_t a1)
{
  v2 = sub_1C8E96CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D558(uint64_t a1)
{
  v2 = sub_1C8E96B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D594(uint64_t a1)
{
  v2 = sub_1C8E96B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8D5D0(uint64_t a1)
{
  v2 = sub_1C8E96BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8D60C(uint64_t a1)
{
  v2 = sub_1C8E96BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterRelationshipDefinition.Relation.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180D8, &qword_1C90922C8);
  v8 = OUTLINED_FUNCTION_11(v7);
  v97 = v9;
  v98 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_10(v13, v79);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180E0, &qword_1C90922D0);
  OUTLINED_FUNCTION_11(v95);
  v93 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v91 = v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180E8, &qword_1C90922D8);
  OUTLINED_FUNCTION_11(v94);
  v92 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v90 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180F0, &qword_1C90922E0);
  v25 = OUTLINED_FUNCTION_11(v24);
  v88 = v26;
  v89 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v87 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3180F8, &qword_1C90922E8);
  v32 = OUTLINED_FUNCTION_11(v31);
  v85 = v33;
  v86 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v84 = v37;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318100, &qword_1C90922F0);
  OUTLINED_FUNCTION_11(v83);
  v82 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_73();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318108, &qword_1C90922F8);
  OUTLINED_FUNCTION_11(v81);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_38();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318110, &qword_1C9092300);
  OUTLINED_FUNCTION_11(v45);
  v80 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_86();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318118, &unk_1C9092308);
  OUTLINED_FUNCTION_11(v101);
  v100 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_142();
  v99 = *v4;
  v54 = *(v4 + 8);
  v55 = *(v6 + 24);
  v56 = *(v6 + 32);
  v57 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_217(v57, v58);
  sub_1C8E969C0();
  OUTLINED_FUNCTION_266_2();
  sub_1C9064E1C();
  switch(v54 >> 5)
  {
    case 1u:
      sub_1C8E96BE8();
      v63 = v84;
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      v64 = v86;
      OUTLINED_FUNCTION_169_4();
      v65 = v85;
      goto LABEL_13;
    case 2u:
      sub_1C8E96B94();
      v66 = v87;
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      v64 = v89;
      OUTLINED_FUNCTION_280_1();
      if (!v2)
      {
        OUTLINED_FUNCTION_194_4();
      }

      v67 = v88;
      goto LABEL_10;
    case 3u:
      sub_1C8E96B40();
      v66 = v90;
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      v64 = v94;
      OUTLINED_FUNCTION_280_1();
      if (!v2)
      {
        OUTLINED_FUNCTION_194_4();
      }

      v67 = v92;
LABEL_10:
      v62 = *(v67 + 8);
      v60 = v66;
      goto LABEL_14;
    case 4u:
      sub_1C8E96AEC();
      v63 = v91;
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      v64 = v95;
      OUTLINED_FUNCTION_169_4();
      v65 = v93;
      goto LABEL_13;
    case 5u:
      sub_1C8E96A14();
      v63 = v96;
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      v64 = v98;
      OUTLINED_FUNCTION_169_4();
      v65 = v97;
LABEL_13:
      v62 = *(v65 + 8);
      v60 = v63;
LABEL_14:
      v61 = v64;
      goto LABEL_15;
    case 6u:
      v69 = (v100 + 8);
      if (v99 | v54 ^ 0xC0)
      {
        sub_1C8E96C90();
        sub_1C9064ACC();
        v77 = OUTLINED_FUNCTION_47_3();
        v78(v77, v81);
        v76 = *v69;
        v74 = v0;
        v75 = v101;
      }

      else
      {
        sub_1C8E96CE4();
        sub_1C9064ACC();
        v70 = *(v80 + 8);
        v71 = OUTLINED_FUNCTION_107();
        v72(v71);
        v73 = *v69;
        v74 = OUTLINED_FUNCTION_95_0();
      }

      v76(v74, v75);
      goto LABEL_16;
    default:
      sub_1C8E96C3C();
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_179_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
      sub_1C8E96A68();
      OUTLINED_FUNCTION_190_7();
      sub_1C9064B8C();
      v59 = *(v82 + 8);
      v60 = OUTLINED_FUNCTION_127();
LABEL_15:
      v62(v60, v61);
      OUTLINED_FUNCTION_107_5();
      v68(v3, v55);
LABEL_16:
      OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t ParameterRelationshipDefinition.Relation.hash(into:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  switch(v3 >> 5)
  {
    case 1u:
      v5 = 3;
      goto LABEL_9;
    case 2u:
      v6 = 4;
      goto LABEL_6;
    case 3u:
      v6 = 5;
LABEL_6:
      MEMORY[0x1CCA82810](v6);
      sub_1C8D3977C(a1, v2);
      return sub_1C9064D9C();
    case 4u:
      v5 = 6;
      goto LABEL_9;
    case 5u:
      v5 = 7;
      goto LABEL_9;
    case 6u:
      return MEMORY[0x1CCA82810]((v2 | v3 ^ 0xC0) != 0);
    default:
      v5 = 2;
LABEL_9:
      MEMORY[0x1CCA82810](v5);

      return sub_1C8D3977C(a1, v2);
  }
}

uint64_t ParameterRelationshipDefinition.Relation.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  OUTLINED_FUNCTION_298();
  ParameterRelationshipDefinition.Relation.hash(into:)(v3);
  return sub_1C9064DBC();
}

void ParameterRelationshipDefinition.Relation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v132 = v25;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318140, &qword_1C9092318);
  OUTLINED_FUNCTION_11(v131);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318148, &qword_1C9092320);
  OUTLINED_FUNCTION_11(v130);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_42_10(v32, v121);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318150, &qword_1C9092328);
  OUTLINED_FUNCTION_11(v129);
  v125 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318158, &qword_1C9092330);
  OUTLINED_FUNCTION_11(v128);
  v124 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v133 = v41;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318160, &qword_1C9092338);
  OUTLINED_FUNCTION_11(v127);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_39_0(v45, v122);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318168, &qword_1C9092340);
  OUTLINED_FUNCTION_11(v126);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318170, &qword_1C9092348);
  OUTLINED_FUNCTION_11(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_15_0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318178, &qword_1C9092350);
  OUTLINED_FUNCTION_11(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_86();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318180, &qword_1C9092358);
  OUTLINED_FUNCTION_11(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_142();
  v61 = v24[4];
  v134 = v24;
  OUTLINED_FUNCTION_217(v24, v24[3]);
  sub_1C8E969C0();
  OUTLINED_FUNCTION_266_2();
  sub_1C9064DEC();
  if (!v20)
  {
    v123 = v53;
    v62 = v133;
    v63 = sub_1C9064A9C();
    sub_1C8CB8914(v63, 0);
    if (v65 != v64 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v68 == v69)
      {
        __break(1u);
        return;
      }

      v70 = *(v67 + v66);
      sub_1C8CB891C(v66 + 1);
      v72 = v71;
      v74 = v73;
      swift_unknownObjectRelease();
      if (v72 == v74 >> 1)
      {
        switch(v70)
        {
          case 1:
            sub_1C8E96C90();
            OUTLINED_FUNCTION_27_14();
            swift_unknownObjectRelease();
            v90 = OUTLINED_FUNCTION_30();
            v91(v90);
            OUTLINED_FUNCTION_59_8();
            v92 = OUTLINED_FUNCTION_181_1();
            v93(v92);
            v79 = -64;
            v62 = 1;
            break;
          case 2:
            LOBYTE(a10) = 2;
            sub_1C8E96C3C();
            OUTLINED_FUNCTION_27_14();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2();
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v100 = OUTLINED_FUNCTION_125_1();
            v101(v100);
            v102 = OUTLINED_FUNCTION_14_29();
            v103(v102);
            v79 = 0;
            v62 = a10;
            break;
          case 3:
            LOBYTE(a10) = 3;
            sub_1C8E96BE8();
            OUTLINED_FUNCTION_27_14();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2();
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_125_1();
            v105(v104);
            v106 = OUTLINED_FUNCTION_14_29();
            v107(v106);
            v62 = a10;
            v79 = 32;
            break;
          case 4:
            sub_1C8E96B94();
            OUTLINED_FUNCTION_27_14();
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_73_4();
            OUTLINED_FUNCTION_278_2();
            OUTLINED_FUNCTION_175_4();
            OUTLINED_FUNCTION_45_2();
            swift_unknownObjectRelease();
            v94 = *(v124 + 8);
            v95 = OUTLINED_FUNCTION_246();
            v96(v95);
            v97 = OUTLINED_FUNCTION_14_29();
            v98(v97);
            v99 = 64;
            goto LABEL_18;
          case 5:
            sub_1C8E96B40();
            OUTLINED_FUNCTION_27_14();
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_73_4();
            OUTLINED_FUNCTION_278_2();
            OUTLINED_FUNCTION_175_4();
            OUTLINED_FUNCTION_45_2();
            swift_unknownObjectRelease();
            v116 = *(v125 + 8);
            v117 = OUTLINED_FUNCTION_246();
            v118(v117);
            v119 = OUTLINED_FUNCTION_14_29();
            v120(v119);
            v99 = 96;
LABEL_18:
            v79 = v99 & 0xFE | v89 & 1;
            break;
          case 6:
            LOBYTE(a10) = 6;
            sub_1C8E96AEC();
            OUTLINED_FUNCTION_27_14();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2();
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v112 = OUTLINED_FUNCTION_125_1();
            v113(v112);
            v114 = OUTLINED_FUNCTION_14_29();
            v115(v114);
            v62 = a10;
            v79 = 0x80;
            break;
          case 7:
            LOBYTE(a10) = 7;
            sub_1C8E96A14();
            OUTLINED_FUNCTION_27_14();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A10, &qword_1C9068DF0);
            sub_1C8E96D38();
            OUTLINED_FUNCTION_131_2();
            OUTLINED_FUNCTION_121_4();
            OUTLINED_FUNCTION_288_2();
            OUTLINED_FUNCTION_257_1();
            swift_unknownObjectRelease();
            v108 = OUTLINED_FUNCTION_125_1();
            v109(v108);
            v110 = OUTLINED_FUNCTION_14_29();
            v111(v110);
            v62 = a10;
            v79 = -96;
            break;
          default:
            sub_1C8E96CE4();
            OUTLINED_FUNCTION_27_14();
            swift_unknownObjectRelease();
            v75 = OUTLINED_FUNCTION_30();
            v76(v75, v123);
            OUTLINED_FUNCTION_59_8();
            v77 = OUTLINED_FUNCTION_181_1();
            v78(v77);
            v62 = 0;
            v79 = -64;
            break;
        }

        v88 = v134;
        *v132 = v62;
        *(v132 + 8) = v79;
        goto LABEL_10;
      }
    }

    v80 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v82 = &type metadata for ParameterRelationshipDefinition.Relation;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v84 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v80);
    (*(v85 + 104))(v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = OUTLINED_FUNCTION_40_14();
    v87(v86);
  }

  v88 = v134;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v88);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8EAF0()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1C9064D7C();
  ParameterRelationshipDefinition.Relation.hash(into:)(v3);
  return sub_1C9064DBC();
}

uint64_t ParameterRelationshipDefinition.init(key:relation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t static ParameterRelationshipDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v8 || (v9 = 0, (sub_1C9064C2C() & 1) != 0))
  {
    v13 = v4;
    v14 = v5;
    v11 = v6;
    v12 = v7;
    sub_1C8D07154(v4, v5);
    sub_1C8D07154(v6, v7);
    v9 = static ParameterRelationshipDefinition.Relation.== infix(_:_:)(&v13, &v11);
    sub_1C8D07168(v6, v7);
    sub_1C8D07168(v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1C8E8EC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E8ED10(char a1)
{
  if (a1)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C8E8ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E8EC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E8ED70(uint64_t a1)
{
  v2 = sub_1C8E96DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8EDAC(uint64_t a1)
{
  v2 = sub_1C8E96DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ParameterRelationshipDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318188, &qword_1C9092360);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  v10 = *v0;
  v11 = v0[1];
  v18 = v0[2];
  v19 = *(v0 + 24);
  v12 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8E96DBC();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_67_8();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_223_0();
    sub_1C8D07154(v13, v14);
    sub_1C8E96E10();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    sub_1C8D07168(v18, v19);
  }

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_93();
  v17(v16);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ParameterRelationshipDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_261_0();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C9063FBC();
  return ParameterRelationshipDefinition.Relation.hash(into:)(v0);
}

uint64_t ParameterRelationshipDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1C9064D7C();
  sub_1C9063FBC();
  ParameterRelationshipDefinition.Relation.hash(into:)(v6);
  return sub_1C9064DBC();
}

void ParameterRelationshipDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318190, &qword_1C9092368);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8E96DBC();
  OUTLINED_FUNCTION_208();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1C9064A0C();
    OUTLINED_FUNCTION_265_1();
    OUTLINED_FUNCTION_223_0();
    sub_1C8E96E64();
    OUTLINED_FUNCTION_98_4();
    sub_1C9064A6C();
    v9 = OUTLINED_FUNCTION_10_2();
    v10(v9);
    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v11;
    *(v2 + 24) = v12;

    sub_1C8D07154(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v0);

    sub_1C8D07168(v11, v12);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8F1B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1C9064D7C();
  sub_1C9063FBC();
  ParameterRelationshipDefinition.Relation.hash(into:)(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E8F268(uint64_t a1)
{
  v2 = sub_1C8E96EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8F2A4(uint64_t a1)
{
  v2 = sub_1C8E96EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8F2E0(uint64_t a1)
{
  v2 = sub_1C8E96F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8F31C(uint64_t a1)
{
  v2 = sub_1C8E96F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8F358(uint64_t a1)
{
  v2 = sub_1C8E96F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8F394(uint64_t a1)
{
  v2 = sub_1C8E96F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8F3D0(uint64_t a1)
{
  v2 = sub_1C8E96FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8F40C(uint64_t a1)
{
  v2 = sub_1C8E96FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppDefinition.Origin.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318198, &qword_1C9092370);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181A0, &qword_1C9092378);
  OUTLINED_FUNCTION_11(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_0(v10, v31);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181A8, &qword_1C9092380);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181B0, &qword_1C9092388);
  OUTLINED_FUNCTION_11(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_0();
  v21 = *v0;
  v23 = *(v1 + 24);
  v22 = *(v1 + 32);
  v24 = OUTLINED_FUNCTION_146_4();
  OUTLINED_FUNCTION_217(v24, v25);
  sub_1C8E96EB8();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v21)
  {
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E96F60();
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E96F0C();
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E96FB4();
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v26 = OUTLINED_FUNCTION_30();
  v27(v26);
  v28 = *(v17 + 8);
  v29 = OUTLINED_FUNCTION_146_0();
  v30(v29);
  OUTLINED_FUNCTION_198();
}

void AppDefinition.Origin.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v56 = v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181C0, &qword_1C9092390);
  OUTLINED_FUNCTION_11(v58);
  v57 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181C8, &qword_1C9092398);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181D0, &qword_1C90923A0);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181D8, &qword_1C90923A8);
  OUTLINED_FUNCTION_11(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_73();
  v24 = v5[3];
  v23 = v5[4];
  v25 = OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_217(v25, v26);
  sub_1C8E96EB8();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v1)
  {
    v27 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v27, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v28)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v37 = *(v34 + v33);
      v38 = OUTLINED_FUNCTION_93_3(v29, v30, v31, v32, v33);
      sub_1C8CB891C(v38);
      OUTLINED_FUNCTION_272_0();
      v40 = v39;
      swift_unknownObjectRelease();
      if (v23 == v40 >> 1)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E96F60();
            OUTLINED_FUNCTION_74();
            OUTLINED_FUNCTION_253_2();
            swift_unknownObjectRelease();
            v48 = OUTLINED_FUNCTION_47_3();
            v49(v48);
            v50 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E96F0C();
            OUTLINED_FUNCTION_44_11();
            sub_1C906498C();
            OUTLINED_FUNCTION_252_2();
            swift_unknownObjectRelease();
            (*(v57 + 8))(v15, v2);
            v50 = OUTLINED_FUNCTION_86_4();
          }

          v51(v50);
        }

        else
        {
          sub_1C8E96FB4();
          OUTLINED_FUNCTION_74();
          swift_unknownObjectRelease();
          v52 = OUTLINED_FUNCTION_30();
          v53(v52);
          v54 = OUTLINED_FUNCTION_41();
          v55(v54);
          v0 = v56;
        }

        *v0 = v37;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v41 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v43 = &type metadata for AppDefinition.Origin;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v45 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_119_6();
    v47(v3, v19);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E8FC58(uint64_t a1)
{
  v2 = sub_1C8E97008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8FC94(uint64_t a1)
{
  v2 = sub_1C8E97008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8FCD0(uint64_t a1)
{
  v2 = sub_1C8E970B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8FD0C(uint64_t a1)
{
  v2 = sub_1C8E970B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E8FD4C(uint64_t a1)
{
  v2 = sub_1C8E9705C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E8FD88(uint64_t a1)
{
  v2 = sub_1C8E9705C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppDefinition.Device.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181E0, &qword_1C90923B0);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181E8, &qword_1C90923B8);
  v7 = OUTLINED_FUNCTION_11(v6);
  v32 = v8;
  v33 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_39_0(v12, v30);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3181F0, &qword_1C90923C0);
  OUTLINED_FUNCTION_11(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_0();
  v19 = v0[1];
  v34 = *v0;
  v21 = *(v1 + 24);
  v20 = *(v1 + 32);
  v22 = OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_217(v22, v23);
  sub_1C8E97008();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v19)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E9705C();
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_243_2();
    OUTLINED_FUNCTION_59_8();
    v24 = OUTLINED_FUNCTION_278();
    v25(v24);
    v26 = *(v15 + 8);
  }

  else
  {
    sub_1C8E970B0();
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    (*(v32 + 8))(v31, v33);
    v29 = *(v15 + 8);
  }

  v27 = OUTLINED_FUNCTION_146_0();
  v28(v27);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void AppDefinition.Device.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  v58 = v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318200, &qword_1C90923C8);
  OUTLINED_FUNCTION_11(v60);
  v59 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318208, &qword_1C90923D0);
  OUTLINED_FUNCTION_11(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318210, &qword_1C90923D8);
  OUTLINED_FUNCTION_11(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_38();
  v25 = v10[3];
  v24 = v10[4];
  v26 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_217(v26, v27);
  sub_1C8E97008();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (!v61)
  {
    v28 = OUTLINED_FUNCTION_216_2();
    sub_1C8CB8914(v28, 0);
    if (v30 != v29 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = OUTLINED_FUNCTION_187_6(v31, v32);
      sub_1C8CB891C(v35);
      OUTLINED_FUNCTION_272_0();
      v37 = v36;
      swift_unknownObjectRelease();
      if (v24 == v37 >> 1)
      {
        if (a10)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8E9705C();
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          OUTLINED_FUNCTION_205();
          v50 = sub_1C9064A0C();
          v52 = v51;
          swift_unknownObjectRelease();
          v53 = *(v59 + 8);
          v54 = OUTLINED_FUNCTION_93();
          v55(v54);
          v56 = OUTLINED_FUNCTION_66_8();
          v57(v56);
        }

        else
        {
          sub_1C8E970B0();
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_107_5();
          v47();
          v48 = OUTLINED_FUNCTION_62_7();
          v49(v48);
          v50 = 0;
          v52 = 0;
        }

        v46 = v10;
        *v58 = v50;
        v58[1] = v52;
        goto LABEL_10;
      }
    }

    v38 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    OUTLINED_FUNCTION_241_3(&type metadata for AppDefinition.Device);
    OUTLINED_FUNCTION_411();
    v42 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v38);
    (*(v43 + 104))(v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_41_12();
    v45(v44);
  }

  v46 = v10;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.name.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AppDefinition.bundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_94();
}

uint64_t AppDefinition.bundleId.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_94();
}

uint64_t AppDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AppDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AppDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t AppDefinition.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

__n128 AppDefinition.init(id:name:bundleId:bundleVersion:teamId:device:origin:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11, __n128 *a12, unsigned __int8 *a13)
{
  v13 = *a13;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u64[1] = a11;
  result = *a12;
  a9[5] = *a12;
  a9[6].n128_u8[0] = v13;
  a9[6].n128_u64[1] = MEMORY[0x1E69E7CC0];
  return result;
}

void static AppDefinition.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_81_4(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v32 = *(v3 + 56);
  v33 = *(v3 + 48);
  v30 = *(v3 + 72);
  v31 = *(v3 + 64);
  v27 = *(v3 + 88);
  v21 = *(v3 + 104);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v29 = *(v2 + 64);
  v28 = *(v2 + 72);
  v24 = *(v2 + 80);
  v25 = *(v3 + 80);
  v26 = *(v2 + 88);
  v22 = *(v2 + 96);
  v23 = *(v3 + 96);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v20 = *(v2 + 104);
  if (v14 || (sub_1C9064C2C() & 1) != 0)
  {
    v15 = v4 == v8 && v6 == v9;
    if (v15 || (OUTLINED_FUNCTION_124(), OUTLINED_FUNCTION_366(), (sub_1C9064C2C() & 1) != 0))
    {
      v16 = v5 == v11 && v7 == v10;
      if (v16 || (OUTLINED_FUNCTION_276(), (sub_1C9064C2C() & 1) != 0))
      {
        v17 = v33 == v12 && v32 == v13;
        if (v17 || (OUTLINED_FUNCTION_335_0() & 1) != 0)
        {
          v18 = v31 == v29 && v30 == v28;
          if (v18 || (sub_1C9064C2C() & 1) != 0)
          {
            v35[0] = v25;
            v35[1] = v27;
            v34[0] = v24;
            v34[1] = v26;

            v19 = static AppDefinition.Device.== infix(_:_:)(v35, v34);

            if ((v19 & 1) != 0 && v23 == v22)
            {

              sub_1C8CEB10C(v21, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E909A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64496D616574 && a2 == 0xE600000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E90C10(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6556656C646E7562;
      break;
    case 4:
      result = 0x64496D616574;
      break;
    case 5:
      result = 0x656369766564;
      break;
    case 6:
      result = 0x6E696769726FLL;
      break;
    case 7:
      result = 0x736D796E6F6E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E90CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E909A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E90D10(uint64_t a1)
{
  v2 = sub_1C8E97104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E90D4C(uint64_t a1)
{
  v2 = sub_1C8E97104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318218, &qword_1C90923E0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38();
  v9 = *v0;
  v8 = v0[1];
  OUTLINED_FUNCTION_250_1();
  v21 = v0[7];
  v22 = v0[6];
  v19 = v0[9];
  v20 = v0[8];
  v17 = v0[10];
  v18 = v0[11];
  v23 = *(v0 + 96);
  v16 = v0[13];
  v10 = *(v3 + 24);
  v11 = *(v3 + 32);
  v12 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8E97104();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_278();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_163_5(1);
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_163_5(2);
    OUTLINED_FUNCTION_292();
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_163_5(3);
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_163_5(4);
    OUTLINED_FUNCTION_282_2();
    sub_1C8E97158();

    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();

    OUTLINED_FUNCTION_270();
    sub_1C8E971AC();
    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_269();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
    OUTLINED_FUNCTION_213_3();
    sub_1C9064B8C();
  }

  v14 = OUTLINED_FUNCTION_210_3();
  v15(v14);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = v1[11];
  v14 = v1[10];
  v15 = v1[9];
  v16 = *(v1 + 96);
  v17 = v1[13];
  sub_1C9063FBC();
  OUTLINED_FUNCTION_127();
  sub_1C9063FBC();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_278();
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v12)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](v16);

  return sub_1C8CC1590(a1, v17);
}

uint64_t AppDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v12 = v0[9];
  v13 = v0[8];
  v9 = v0[11];
  v11 = v0[10];
  v14 = *(v0 + 96);
  v15 = v0[13];
  sub_1C9064D7C();
  OUTLINED_FUNCTION_120_4();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  sub_1C9063FBC();
  if (v9)
  {
    MEMORY[0x1CCA82810](1);
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  MEMORY[0x1CCA82810](v14);
  sub_1C8CC1590(v16, v15);
  return sub_1C9064DBC();
}

void AppDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318220, &qword_1C90923E8);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v19 = v12[3];
  v20 = v12[4];
  v21 = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_217(v21, v22);
  sub_1C8E97104();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_141_6();
    v23 = sub_1C9064A0C();
    v25 = v24;
    v39 = OUTLINED_FUNCTION_84_3(1);
    v42 = v26;
    v38 = OUTLINED_FUNCTION_84_3(2);
    v41 = v27;
    v36 = OUTLINED_FUNCTION_84_3(3);
    v40 = v28;
    v29 = OUTLINED_FUNCTION_84_3(4);
    v37 = v30;
    v35 = v29;
    sub_1C8E97200();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_141_6();
    sub_1C9064A6C();
    v33 = v44;
    v34 = v45;
    sub_1C8E97254();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_141_6();
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    v58 = 7;
    OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_141_6();
    sub_1C9064A6C();
    v31 = OUTLINED_FUNCTION_47_11();
    v32(v31);
    v43[0] = v23;
    v43[1] = v25;
    v43[2] = v39;
    v43[3] = v42;
    v43[4] = v38;
    v43[5] = v41;
    v43[6] = v36;
    v43[7] = v40;
    v43[8] = v35;
    v43[9] = v37;
    v43[10] = v44;
    v43[11] = v45;
    LOBYTE(v43[12]) = 0;
    v43[13] = a10;
    memcpy(v14, v43, 0x70uLL);
    sub_1C8E9562C(v43, &v44);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v44 = v23;
    v45 = v25;
    v46 = v39;
    v47 = v42;
    v48 = v38;
    v49 = v41;
    v50 = v36;
    v51 = v40;
    v52 = v35;
    v53 = v37;
    v54 = v33;
    v55 = v34;
    v56 = 0;
    v57 = a10;
    sub_1C8E8732C(&v44);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E9173C()
{
  sub_1C9064D7C();
  AppDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t ContainerDefinition.Origin.description.getter()
{
  v1 = 0x7261507473726966;
  if (*v0 != 1)
  {
    v1 = 0x7261506472696874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1C8E91810()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == OUTLINED_FUNCTION_42() && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7261507473726966 && v0 == 0xEA00000000007974;
    if (v5 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x7261506472696874 && v0 == 0xEA00000000007974)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_110_4();
      sub_1C9064C2C();
      OUTLINED_FUNCTION_45_2();

      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8E91910(uint64_t a1)
{
  v2 = sub_1C8E972A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E9194C(uint64_t a1)
{
  v2 = sub_1C8E972A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E91988(uint64_t a1)
{
  v2 = sub_1C8E97350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E919C4(uint64_t a1)
{
  v2 = sub_1C8E97350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E91A00(uint64_t a1)
{
  v2 = sub_1C8E972FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E91A3C(uint64_t a1)
{
  v2 = sub_1C8E972FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E91A78(uint64_t a1)
{
  v2 = sub_1C8E973A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E91AB4(uint64_t a1)
{
  v2 = sub_1C8E973A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerDefinition.Origin.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318228, &qword_1C90923F0);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318230, &qword_1C90923F8);
  OUTLINED_FUNCTION_11(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_0(v10, v31);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318238, &qword_1C9092400);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318240, &qword_1C9092408);
  OUTLINED_FUNCTION_11(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_0();
  v21 = *v0;
  v23 = *(v1 + 24);
  v22 = *(v1 + 32);
  v24 = OUTLINED_FUNCTION_146_4();
  OUTLINED_FUNCTION_217(v24, v25);
  sub_1C8E972A8();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v21)
  {
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_223_0();
      sub_1C8E97350();
    }

    else
    {
      OUTLINED_FUNCTION_119_1();
      sub_1C8E972FC();
    }

    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  else
  {
    sub_1C8E973A4();
    OUTLINED_FUNCTION_35_0();
    sub_1C9064ACC();
  }

  v26 = OUTLINED_FUNCTION_30();
  v27(v26);
  v28 = *(v17 + 8);
  v29 = OUTLINED_FUNCTION_146_0();
  v30(v29);
  OUTLINED_FUNCTION_198();
}

void ContainerDefinition.Origin.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v56 = v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318250, &qword_1C9092410);
  OUTLINED_FUNCTION_11(v58);
  v57 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318258, &qword_1C9092418);
  OUTLINED_FUNCTION_11(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318260, &qword_1C9092420);
  OUTLINED_FUNCTION_11(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_86();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318268, &qword_1C9092428);
  OUTLINED_FUNCTION_11(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_73();
  v24 = v5[3];
  v23 = v5[4];
  v25 = OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_217(v25, v26);
  sub_1C8E972A8();
  OUTLINED_FUNCTION_115_0();
  sub_1C9064DEC();
  if (!v1)
  {
    v27 = OUTLINED_FUNCTION_139_2();
    sub_1C8CB8914(v27, 0);
    OUTLINED_FUNCTION_228_3();
    if (!v28)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v37 = *(v34 + v33);
      v38 = OUTLINED_FUNCTION_93_3(v29, v30, v31, v32, v33);
      sub_1C8CB891C(v38);
      OUTLINED_FUNCTION_272_0();
      v40 = v39;
      swift_unknownObjectRelease();
      if (v23 == v40 >> 1)
      {
        if (v37)
        {
          if (v37 == 1)
          {
            OUTLINED_FUNCTION_223_0();
            sub_1C8E97350();
            OUTLINED_FUNCTION_74();
            OUTLINED_FUNCTION_253_2();
            swift_unknownObjectRelease();
            v48 = OUTLINED_FUNCTION_47_3();
            v49(v48);
            v50 = OUTLINED_FUNCTION_87_5();
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            sub_1C8E972FC();
            OUTLINED_FUNCTION_44_11();
            sub_1C906498C();
            OUTLINED_FUNCTION_252_2();
            swift_unknownObjectRelease();
            (*(v57 + 8))(v15, v2);
            v50 = OUTLINED_FUNCTION_86_4();
          }

          v51(v50);
        }

        else
        {
          sub_1C8E973A4();
          OUTLINED_FUNCTION_74();
          swift_unknownObjectRelease();
          v52 = OUTLINED_FUNCTION_30();
          v53(v52);
          v54 = OUTLINED_FUNCTION_41();
          v55(v54);
          v0 = v56;
        }

        *v0 = v37;
        __swift_destroy_boxed_opaque_existential_1(0);
        goto LABEL_12;
      }
    }

    v41 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v43 = &type metadata for ContainerDefinition.Origin;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v45 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_119_6();
    v47(v3, v19);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_12:
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.Device.idsIdentifier.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v2 = IDSCopyLocalDeviceUniqueID();
    if (!v2)
    {
      sub_1C8E973F8();
      OUTLINED_FUNCTION_6_3();
      swift_willThrow();
      return OUTLINED_FUNCTION_181();
    }

    v3 = v2;
    sub_1C9063EEC();
  }

  return OUTLINED_FUNCTION_181();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_281_1();
  }
}

uint64_t sub_1C8E923B4()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == OUTLINED_FUNCTION_209_1() && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_110_4(), (sub_1C9064C2C() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x65746F6D6572 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E9245C(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_110_4();
    sub_1C9064C2C();
    OUTLINED_FUNCTION_45_2();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E924C4(uint64_t a1)
{
  v2 = sub_1C8E9744C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E92500(uint64_t a1)
{
  v2 = sub_1C8E9744C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E9253C(uint64_t a1)
{
  v2 = sub_1C8E974F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E92578(uint64_t a1)
{
  v2 = sub_1C8E974F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E925B4(uint64_t a1)
{
  v2 = sub_1C8E974A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E925F0(uint64_t a1)
{
  v2 = sub_1C8E974A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerDefinition.Device.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318278, &qword_1C9092430);
  OUTLINED_FUNCTION_11(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_73();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318280, &qword_1C9092438);
  v7 = OUTLINED_FUNCTION_11(v6);
  v32 = v8;
  v33 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_39_0(v12, v30);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318288, &qword_1C9092440);
  OUTLINED_FUNCTION_11(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15_0();
  v19 = v0[1];
  v34 = *v0;
  v21 = *(v1 + 24);
  v20 = *(v1 + 32);
  v22 = OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_217(v22, v23);
  sub_1C8E9744C();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v19)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8E974A0();
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_243_2();
    OUTLINED_FUNCTION_59_8();
    v24 = OUTLINED_FUNCTION_278();
    v25(v24);
    v26 = *(v15 + 8);
  }

  else
  {
    sub_1C8E974F4();
    OUTLINED_FUNCTION_34();
    sub_1C9064ACC();
    (*(v32 + 8))(v31, v33);
    v29 = *(v15 + 8);
  }

  v27 = OUTLINED_FUNCTION_146_0();
  v28(v27);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO4hash4intoys6HasherVz_tF_0()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCA82810](0);
  }

  v1 = *v0;
  MEMORY[0x1CCA82810](1);
  OUTLINED_FUNCTION_249();

  return sub_1C9063FBC();
}

uint64_t _s7ToolKit13AppDefinitionV6DeviceO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_298();
  if (v2)
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_158_5();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

void ContainerDefinition.Device.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  v58 = v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318298, &qword_1C9092448);
  OUTLINED_FUNCTION_11(v60);
  v59 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_73();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182A0, &qword_1C9092450);
  OUTLINED_FUNCTION_11(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182A8, &qword_1C9092458);
  OUTLINED_FUNCTION_11(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_38();
  v25 = v10[3];
  v24 = v10[4];
  v26 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_217(v26, v27);
  sub_1C8E9744C();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (!v61)
  {
    v28 = OUTLINED_FUNCTION_216_2();
    sub_1C8CB8914(v28, 0);
    if (v30 != v29 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = OUTLINED_FUNCTION_187_6(v31, v32);
      sub_1C8CB891C(v35);
      OUTLINED_FUNCTION_272_0();
      v37 = v36;
      swift_unknownObjectRelease();
      if (v24 == v37 >> 1)
      {
        if (a10)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8E974A0();
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          OUTLINED_FUNCTION_205();
          v50 = sub_1C9064A0C();
          v52 = v51;
          swift_unknownObjectRelease();
          v53 = *(v59 + 8);
          v54 = OUTLINED_FUNCTION_93();
          v55(v54);
          v56 = OUTLINED_FUNCTION_66_8();
          v57(v56);
        }

        else
        {
          sub_1C8E974F4();
          OUTLINED_FUNCTION_162_5();
          OUTLINED_FUNCTION_59_10();
          sub_1C906498C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_107_5();
          v47();
          v48 = OUTLINED_FUNCTION_62_7();
          v49(v48);
          v50 = 0;
          v52 = 0;
        }

        v46 = v10;
        *v58 = v50;
        v58[1] = v52;
        goto LABEL_10;
      }
    }

    v38 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    OUTLINED_FUNCTION_241_3(&type metadata for ContainerDefinition.Device);
    OUTLINED_FUNCTION_411();
    v42 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v38);
    (*(v43 + 104))(v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = OUTLINED_FUNCTION_41_12();
    v45(v44);
  }

  v46 = v10;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E92DA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C9064D7C();
  if (v2)
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_158_5();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

uint64_t ContainerDefinition.ContainerType.description.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6F69736E65747865;
      break;
    case 4:
      result = 0x726F77656D617266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E92ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7368801 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6D656164 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69736E65747865 && a2 == 0xE90000000000006ELL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x726F77656D617266 && a2 == 0xE90000000000006BLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E9307C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6F69736E65747865;
      break;
    case 4:
      result = 0x726F77656D617266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E93118(uint64_t a1)
{
  v2 = sub_1C8E97698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E93154(uint64_t a1)
{
  v2 = sub_1C8E97698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E93198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E92ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E931C0(uint64_t a1)
{
  v2 = sub_1C8E97548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E931FC(uint64_t a1)
{
  v2 = sub_1C8E97548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E93238(uint64_t a1)
{
  v2 = sub_1C8E97644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E93274(uint64_t a1)
{
  v2 = sub_1C8E97644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E932B0(uint64_t a1)
{
  v2 = sub_1C8E975F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E932EC(uint64_t a1)
{
  v2 = sub_1C8E975F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E93328(uint64_t a1)
{
  v2 = sub_1C8E9759C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E93364(uint64_t a1)
{
  v2 = sub_1C8E9759C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8E933A0(uint64_t a1)
{
  v2 = sub_1C8E976EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E933DC(uint64_t a1)
{
  v2 = sub_1C8E976EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerDefinition.ContainerType.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_251_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182B0, &qword_1C9092460);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182B8, &qword_1C9092468);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_39_0(v12, v39);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182C0, &qword_1C9092470);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42_10(v17, v40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182C8, &qword_1C9092478);
  OUTLINED_FUNCTION_11(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182D0, &qword_1C9092480);
  v23 = OUTLINED_FUNCTION_11(v22);
  v41 = v24;
  v42 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_110();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182D8, &qword_1C9092488);
  OUTLINED_FUNCTION_11(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_233();
  v34 = *v0;
  v35 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8E97548();
  sub_1C9064E1C();
  switch(v34)
  {
    case 1:
      sub_1C8E97698();
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 2:
      sub_1C8E97644();
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 3:
      sub_1C8E975F0();
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_231_2();
      sub_1C8E9759C();
      OUTLINED_FUNCTION_35_0();
      sub_1C9064ACC();
LABEL_7:
      v36 = OUTLINED_FUNCTION_30();
      v38(v36, v37);
      break;
    default:
      sub_1C8E976EC();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      (*(v41 + 8))(v3, v42);
      break;
  }

  (*(v30 + 8))(v1, v28);
  OUTLINED_FUNCTION_198();
}

uint64_t _s7ToolKit13AppDefinitionV6OriginO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

void ContainerDefinition.ContainerType.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_219_0();
  v62 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3182F8, &qword_1C9092490);
  v60 = OUTLINED_FUNCTION_11(v3);
  v61 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318300, &qword_1C9092498);
  OUTLINED_FUNCTION_11(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318308, &qword_1C90924A0);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318310, &qword_1C90924A8);
  OUTLINED_FUNCTION_11(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_233();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318318, &qword_1C90924B0);
  OUTLINED_FUNCTION_11(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_72();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318320, &qword_1C90924B8);
  OUTLINED_FUNCTION_11(v25);
  v63 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_142();
  v30 = v1[4];
  OUTLINED_FUNCTION_217(v1, v1[3]);
  sub_1C8E97548();
  OUTLINED_FUNCTION_266_2();
  sub_1C9064DEC();
  if (!v65)
  {
    v31 = v0;
    v32 = sub_1C9064A9C();
    sub_1C8CB8914(v32, 0);
    OUTLINED_FUNCTION_228_3();
    if (v33)
    {
      v34 = v63;
    }

    else
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      v59 = *(v42 + v41);
      v43 = OUTLINED_FUNCTION_93_3(v37, v38, v39, v40, v41);
      sub_1C8CB891C(v43);
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      if (v45 == v47 >> 1)
      {
        switch(v59)
        {
          case 1:
            sub_1C8E97698();
            OUTLINED_FUNCTION_7_28();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            sub_1C8E97644();
            OUTLINED_FUNCTION_7_28();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            sub_1C8E975F0();
            OUTLINED_FUNCTION_7_28();
            swift_unknownObjectRelease();
LABEL_18:
            v48 = OUTLINED_FUNCTION_47_3();
            goto LABEL_19;
          case 4:
            OUTLINED_FUNCTION_231_2();
            sub_1C8E9759C();
            sub_1C906498C();
            swift_unknownObjectRelease();
            (*(v61 + 8))(v64, v60);
            goto LABEL_20;
          default:
            sub_1C8E976EC();
            OUTLINED_FUNCTION_7_28();
            swift_unknownObjectRelease();
            v48 = OUTLINED_FUNCTION_47_3();
            v50 = v21;
LABEL_19:
            v49(v48, v50);
LABEL_20:
            v57 = OUTLINED_FUNCTION_210_3();
            v58(v57);
            *v62 = v59;
            __swift_destroy_boxed_opaque_existential_1(v1);
            break;
        }

        goto LABEL_13;
      }

      v34 = v63;
      v31 = v0;
    }

    v51 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v53 = &type metadata for ContainerDefinition.ContainerType;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v55 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v51);
    (*(v56 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v31, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
LABEL_13:
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.name.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContainerDefinition.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContainerDefinition.containerId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

uint64_t ContainerDefinition.containerId.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContainerDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_94();
}

uint64_t ContainerDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContainerDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_127_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ContainerDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

__n128 ContainerDefinition.init(name:containerId:bundleVersion:containerType:teamId:device:origin:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 *a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, __n128 *a11, unsigned __int8 *a12)
{
  v12 = *a7;
  v13 = *a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[2].n128_u64[0] = a4;
  a9[2].n128_u64[1] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = v12;
  a9[4].n128_u64[0] = a8;
  a9[4].n128_u64[1] = a10;
  result = *a11;
  a9[5] = *a11;
  a9[6].n128_u8[0] = v13;
  a9[1].n128_u64[0] = MEMORY[0x1E69E7CC0];
  a9[1].n128_u64[1] = a3;
  return result;
}

uint64_t ContainerDefinition.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 56);
  v87 = v0[9];
  v85 = v0[8];
  v86 = v0[10];
  v88 = v0[11];
  v90 = v0[2];
  v8 = *(v0 + 96);
  strcpy(v94, "name: ");
  v94[1] = 0xE700000000000000;
  MEMORY[0x1CCA81A90](v1, v2);
  OUTLINED_FUNCTION_152_4();
  v9 = v94[0];
  OUTLINED_FUNCTION_173_5();
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = v10;
  if (v12 >= v11 >> 1)
  {
    OUTLINED_FUNCTION_9_1(v11);
    sub_1C8D00CA4();
    v13 = v77;
  }

  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = v9;
  *(v14 + 40) = 0xE700000000000000;
  v15 = v13;
  OUTLINED_FUNCTION_197_4();
  sub_1C906478C();

  strcpy(v94, "containerId: ");
  HIBYTE(v94[1]) = -18;
  v16 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v16);
  OUTLINED_FUNCTION_152_4();
  v17 = v94[0];
  v18 = v94[1];
  OUTLINED_FUNCTION_199_5();
  if (v20)
  {
    OUTLINED_FUNCTION_9_1(v19);
    sub_1C8D00CA4();
    v15 = v78;
  }

  *(v15 + 16) = v94;
  v21 = v15 + 16 * v3;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  if (v6)
  {
    OUTLINED_FUNCTION_197_4();
    sub_1C906478C();

    OUTLINED_FUNCTION_97_5();
    v94[0] = 0xD000000000000010;
    v94[1] = v22;
    v23 = OUTLINED_FUNCTION_325();
    MEMORY[0x1CCA81A90](v23);
    OUTLINED_FUNCTION_152_4();
    v24 = v94[0];
    v25 = v94[1];
    OUTLINED_FUNCTION_198_3();
    if (v20)
    {
      OUTLINED_FUNCTION_55_7();
      v15 = v26;
    }
  }

  else
  {
    v3 += 2;
    if (v3 > *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_55_7();
      v15 = v83;
    }

    v25 = 0x80000001C90CBF30;
    v24 = 0xD000000000000012;
  }

  v27 = 0x6E776F6E6B6E75;
  *(v15 + 16) = v3;
  v28 = v15 + 16 * v94;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  OUTLINED_FUNCTION_197_4();
  sub_1C906478C();

  OUTLINED_FUNCTION_97_5();
  v94[0] = 0xD000000000000010;
  v94[1] = v29;
  v30 = 0xE700000000000000;
  v31 = 0x6E776F6E6B6E75;
  switch(v7)
  {
    case 1:
      v30 = 0xE300000000000000;
      v31 = 7368801;
      break;
    case 2:
      v30 = 0xE600000000000000;
      v31 = 0x6E6F6D656164;
      break;
    case 3:
      v30 = 0xE90000000000006ELL;
      v31 = 0x6F69736E65747865;
      break;
    case 4:
      v30 = 0xE90000000000006BLL;
      v31 = 0x726F77656D617266;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA81A90](v31, v30);

  v32 = v94[0];
  v33 = v94[1];
  v35 = *(v15 + 16);
  v34 = *(v15 + 24);
  if (v35 >= v34 >> 1)
  {
    OUTLINED_FUNCTION_9_1(v34);
    sub_1C8D00CA4();
    v15 = v79;
  }

  *(v15 + 16) = v35 + 1;
  v36 = v15 + 16 * v35;
  *(v36 + 32) = v32;
  *(v36 + 40) = v33;
  strcpy(v94, "origin: .");
  WORD1(v94[1]) = 0;
  HIDWORD(v94[1]) = -385875968;
  if (v8)
  {
    if (v8 == 1)
    {
      v37 = 0x507473726966;
    }

    else
    {
      v37 = 0x506472696874;
    }

    v27 = v37 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    v38 = 0xEA00000000007974;
  }

  else
  {
    v38 = 0xE700000000000000;
  }

  MEMORY[0x1CCA81A90](v27, v38);

  v39 = v94[0];
  v40 = v94[1];
  OUTLINED_FUNCTION_199_5();
  if (v20)
  {
    OUTLINED_FUNCTION_9_1(v41);
    sub_1C8D00CA4();
    v15 = v80;
  }

  *(v15 + 16) = v94;
  v42 = v15 + 16 * v38;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  if (v87)
  {
    strcpy(v94, "teamId: ");
    WORD1(v94[1]) = 0;
    HIDWORD(v94[1]) = -385875968;
    MEMORY[0x1CCA81A90](v85);
    OUTLINED_FUNCTION_152_4();
    v43 = v94[0];
    v44 = v94[1];
    OUTLINED_FUNCTION_198_3();
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v38 += 2;
    v44 = 0xEB000000006C696ELL;
    v43 = 0x203A64496D616574;
    if (v38 <= *(v15 + 24) >> 1)
    {
      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_55_7();
  v15 = v50;
LABEL_29:
  *(v15 + 16) = v38;
  v45 = v15 + 16 * v94;
  *(v45 + 32) = v43;
  *(v45 + 40) = v44;
  strcpy(v94, "device: ");
  BYTE1(v94[1]) = 0;
  WORD1(v94[1]) = 0;
  HIDWORD(v94[1]) = -402653184;
  if (v88)
  {
    OUTLINED_FUNCTION_164_4();
    v91 = v46;
    v93 = v47;
    MEMORY[0x1CCA81A90](v86);
    OUTLINED_FUNCTION_340();
    v48 = v91;
    v49 = v93;
  }

  else
  {
    v49 = 0xE500000000000000;
    v48 = OUTLINED_FUNCTION_209_1();
  }

  MEMORY[0x1CCA81A90](v48, v49);

  v51 = v94[0];
  v52 = v94[1];
  OUTLINED_FUNCTION_199_5();
  if (v20)
  {
    OUTLINED_FUNCTION_9_1(v53);
    sub_1C8D00CA4();
    v15 = v81;
  }

  *(v15 + 16) = v94;
  v54 = v15 + 16 * v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  v55 = *(v90 + 16);
  if (v55)
  {
    v89 = v15;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v56 = v92;
    v57 = (v90 + 40);
    do
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      v94[0] = 34;
      v94[1] = 0xE100000000000000;

      MEMORY[0x1CCA81A90](v58, v59);
      OUTLINED_FUNCTION_152_4();

      v60 = v94[0];
      v61 = v94[1];
      v62 = *(v92 + 16);
      if (v62 >= *(v92 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      *(v92 + 16) = v62 + 1;
      v63 = v92 + 16 * v62;
      *(v63 + 32) = v60;
      *(v63 + 40) = v61;
      v57 += 2;
      --v55;
    }

    while (v55);
    v94[0] = v92;
    v64 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    OUTLINED_FUNCTION_156();
    sub_1C8D28184(v66, v67, &qword_1C9066990);
    sub_1C9063E9C();

    strcpy(v94, "synonyms: [");
    HIDWORD(v94[1]) = -352321536;
    v68 = OUTLINED_FUNCTION_288();
    MEMORY[0x1CCA81A90](v68);

    MEMORY[0x1CCA81A90](93, 0xE100000000000000);
    v70 = v94[0];
    v69 = v94[1];
    v15 = v89;
    OUTLINED_FUNCTION_198_3();
    if (v20)
    {
      OUTLINED_FUNCTION_55_7();
      v15 = v82;
    }
  }

  else
  {
    v69 = 0xEC0000005D5B203ALL;
    v56 = v49 + 2;
    if (v56 > *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_55_7();
      v15 = v84;
    }

    v70 = 0x736D796E6F6E7973;
  }

  *(v15 + 16) = v56;
  v71 = v15 + 16 * v94;
  *(v71 + 32) = v70;
  *(v71 + 40) = v69;
  OUTLINED_FUNCTION_97_5();
  v94[0] = 0xD000000000000014;
  v94[1] = v72;
  OUTLINED_FUNCTION_289_1();
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v73, v74, &qword_1C9066990);
  sub_1C9063E9C();

  v75 = OUTLINED_FUNCTION_249();
  MEMORY[0x1CCA81A90](v75);

  OUTLINED_FUNCTION_340();
  return v94[0];
}

uint64_t sub_1C8E948B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736D796E6F6E7973 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656E6961746E6F63 && a2 == 0xED00006570795472;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64496D616574 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C9064C2C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8E94B34(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x736D796E6F6E7973;
      break;
    case 2:
    case 4:
      result = 0x656E6961746E6F63;
      break;
    case 3:
      result = 0x6556656C646E7562;
      break;
    case 5:
      result = 0x64496D616574;
      break;
    case 6:
      result = 0x656369766564;
      break;
    case 7:
      result = 0x6E696769726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8E94C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E948B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E94C44(uint64_t a1)
{
  v2 = sub_1C8E97740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8E94C80(uint64_t a1)
{
  v2 = sub_1C8E97740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318328, &qword_1C90924C0);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_72();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_250_1();
  v26 = *(v0 + 56);
  v24 = v0[9];
  v25 = v0[6];
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[8];
  v20 = *(v0 + 96);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_217(v14, v15);
  sub_1C8E97740();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_325();
  sub_1C9064B2C();
  if (!v1)
  {
    OUTLINED_FUNCTION_275();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
    OUTLINED_FUNCTION_21_2(&qword_1EDA6B530);
    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_163_5(2);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064B2C();
    OUTLINED_FUNCTION_163_5(3);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_231_2();
    sub_1C8E97794();
    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_163_5(5);
    OUTLINED_FUNCTION_49_10();
    sub_1C9064ADC();
    OUTLINED_FUNCTION_270();
    v16 = sub_1C8DC823C();

    OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();

    if (!v16)
    {
      OUTLINED_FUNCTION_269();
      sub_1C8E977E8();
      OUTLINED_FUNCTION_117_3();
      OUTLINED_FUNCTION_205();
      sub_1C9064B8C();
    }
  }

  v17 = *(v6 + 8);
  v18 = OUTLINED_FUNCTION_287();
  v19(v18);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ContainerDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

void ContainerDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318330, &qword_1C90924C8);
  OUTLINED_FUNCTION_11(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15_0();
  v25 = v16[3];
  v26 = v16[4];
  v27 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_217(v27, v28);
  sub_1C8E97740();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v13)
  {
    OUTLINED_FUNCTION_178_2();
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v14)
    {

      if (v21)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (v21)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  LOBYTE(v51) = 0;
  OUTLINED_FUNCTION_69_6();
  v29 = sub_1C9064A0C();
  v49 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_22_1(&unk_1EDA6B520);
  sub_1C9064A6C();
  v47 = v51;
  OUTLINED_FUNCTION_69_6();
  v46 = sub_1C9064A0C();
  v48 = v31;
  OUTLINED_FUNCTION_69_6();
  v32 = sub_1C90649AC();
  v34 = v33;
  v45 = v32;
  sub_1C8E9783C();
  OUTLINED_FUNCTION_98_4();
  sub_1C9064A6C();
  v44 = v18;
  LOBYTE(v51) = 5;
  OUTLINED_FUNCTION_69_6();
  v35 = sub_1C90649AC();
  v37 = v36;
  v43 = v35;
  sub_1C8DC8080();
  OUTLINED_FUNCTION_98_4();
  sub_1C9064A6C();
  v41 = v29;
  v38 = v52;
  v42 = v51;
  sub_1C8E97890();
  OUTLINED_FUNCTION_98_4();
  sub_1C9064A6C();
  v39 = OUTLINED_FUNCTION_43_13();
  v40(v39);
  v50[0] = v41;
  v50[1] = v49;
  v50[2] = v47;
  v50[3] = v46;
  v50[4] = v48;
  v50[5] = v45;
  v50[6] = v34;
  LOBYTE(v50[7]) = 3;
  v50[8] = v43;
  v50[9] = v37;
  v50[10] = v51;
  v50[11] = v52;
  LOBYTE(v50[12]) = a13;
  memcpy(v44, v50, 0x61uLL);
  sub_1C8CC1340(v50, &v51);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v51 = v41;
  v52 = v49;
  v53 = v47;
  v54 = v46;
  v55 = v48;
  v56 = v45;
  v57 = v34;
  v58 = 3;
  v59 = v43;
  v60 = v37;
  v61 = v42;
  v62 = v38;
  v63 = a13;
  sub_1C8CC15FC(&v51);
LABEL_9:
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E954EC()
{
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v1);
  return sub_1C9064DBC();
}

unint64_t sub_1C8E95560()
{
  result = qword_1EDA6B360;
  if (!qword_1EDA6B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B360);
  }

  return result;
}

unint64_t sub_1C8E95664()
{
  result = qword_1EDA6B378;
  if (!qword_1EDA6B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B378);
  }

  return result;
}

unint64_t sub_1C8E956B8()
{
  result = qword_1EDA62DB8;
  if (!qword_1EDA62DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E283A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DB8);
  }

  return result;
}

unint64_t sub_1C8E9573C()
{
  result = qword_1EDA63858;
  if (!qword_1EDA63858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63858);
  }

  return result;
}

unint64_t sub_1C8E95790()
{
  result = qword_1EDA63340;
  if (!qword_1EDA63340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63340);
  }

  return result;
}

unint64_t sub_1C8E957E4()
{
  result = qword_1EDA62DC8;
  if (!qword_1EDA62DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312EF0, &qword_1C906A028);
    sub_1C8E95790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DC8);
  }

  return result;
}

unint64_t sub_1C8E95868()
{
  result = qword_1EDA664A8;
  if (!qword_1EDA664A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664A8);
  }

  return result;
}

unint64_t sub_1C8E958BC()
{
  result = qword_1EDA62E58;
  if (!qword_1EDA62E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FC8, &qword_1C90921D0);
    sub_1C8E95940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E58);
  }

  return result;
}

unint64_t sub_1C8E95940()
{
  result = qword_1EDA661E8;
  if (!qword_1EDA661E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661E8);
  }

  return result;
}

unint64_t sub_1C8E95994()
{
  result = qword_1EDA66258;
  if (!qword_1EDA66258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66258);
  }

  return result;
}

unint64_t sub_1C8E959E8()
{
  result = qword_1EDA66790;
  if (!qword_1EDA66790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8D22030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66790);
  }

  return result;
}

unint64_t sub_1C8E95A6C()
{
  result = qword_1EDA667D8;
  if (!qword_1EDA667D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD8, &unk_1C90921E0);
    sub_1C8D544D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667D8);
  }

  return result;
}

unint64_t sub_1C8E95AF0()
{
  result = qword_1EDA66750;
  if (!qword_1EDA66750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E28464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66750);
  }

  return result;
}

uint64_t sub_1C8E95BBC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C906492C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C90647BC();
  *v1 = result;
  return result;
}

unint64_t sub_1C8E95C74()
{
  result = qword_1EDA62DB0;
  if (!qword_1EDA62DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A68, &unk_1C90921C0);
    sub_1C8E28CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DB0);
  }

  return result;
}

unint64_t sub_1C8E95CF8()
{
  result = qword_1EDA63850;
  if (!qword_1EDA63850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63850);
  }

  return result;
}

unint64_t sub_1C8E95D4C()
{
  result = qword_1EDA63338;
  if (!qword_1EDA63338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63338);
  }

  return result;
}

unint64_t sub_1C8E95DA0()
{
  result = qword_1EDA62DC0;
  if (!qword_1EDA62DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312EF0, &qword_1C906A028);
    sub_1C8E95D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62DC0);
  }

  return result;
}

unint64_t sub_1C8E95E24()
{
  result = qword_1EDA664A0;
  if (!qword_1EDA664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA664A0);
  }

  return result;
}

uint64_t sub_1C8E95E78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8E95EC0()
{
  result = qword_1EDA62E50;
  if (!qword_1EDA62E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FC8, &qword_1C90921D0);
    sub_1C8E95F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E50);
  }

  return result;
}

unint64_t sub_1C8E95F44()
{
  result = qword_1EDA661E0;
  if (!qword_1EDA661E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA661E0);
  }

  return result;
}

unint64_t sub_1C8E95F98()
{
  result = qword_1EDA66250;
  if (!qword_1EDA66250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66250);
  }

  return result;
}

unint64_t sub_1C8E95FEC()
{
  result = qword_1EDA66788;
  if (!qword_1EDA66788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD0, &qword_1C90921D8);
    sub_1C8D21FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66788);
  }

  return result;
}

unint64_t sub_1C8E96070()
{
  result = qword_1EDA667D0;
  if (!qword_1EDA667D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317FD8, &unk_1C90921E0);
    sub_1C8D54480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA667D0);
  }

  return result;
}

unint64_t sub_1C8E960F4()
{
  result = qword_1EDA66748;
  if (!qword_1EDA66748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    sub_1C8E28D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66748);
  }

  return result;
}

uint64_t sub_1C8E96178()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8E961D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8E96228()
{
  result = qword_1EDA68D60;
  if (!qword_1EDA68D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA68D60);
  }

  return result;
}

unint64_t sub_1C8E9627C()
{
  result = qword_1EC318000;
  if (!qword_1EC318000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318000);
  }

  return result;
}

unint64_t sub_1C8E962D0()
{
  result = qword_1EDA66230;
  if (!qword_1EDA66230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66230);
  }

  return result;
}

unint64_t sub_1C8E96324()
{
  result = qword_1EC318030;
  if (!qword_1EC318030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318030);
  }

  return result;
}

unint64_t sub_1C8E96378()
{
  result = qword_1EDA66218;
  if (!qword_1EDA66218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66218);
  }

  return result;
}

unint64_t sub_1C8E963CC()
{
  result = qword_1EDA62660;
  if (!qword_1EDA62660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62660);
  }

  return result;
}

unint64_t sub_1C8E96420()
{
  result = qword_1EDA66200;
  if (!qword_1EDA66200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66200);
  }

  return result;
}

unint64_t sub_1C8E96474()
{
  result = qword_1EDA62658;
  if (!qword_1EDA62658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62658);
  }

  return result;
}

unint64_t sub_1C8E964C8()
{
  result = qword_1EDA66340;
  if (!qword_1EDA66340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66340);
  }

  return result;
}

unint64_t sub_1C8E9651C()
{
  result = qword_1EDA66328;
  if (!qword_1EDA66328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66328);
  }

  return result;
}

unint64_t sub_1C8E96570()
{
  result = qword_1EDA62670;
  if (!qword_1EDA62670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62670);
  }

  return result;
}

unint64_t sub_1C8E965C4()
{
  result = qword_1EDA66310;
  if (!qword_1EDA66310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66310);
  }

  return result;
}

unint64_t sub_1C8E96618()
{
  result = qword_1EDA62668;
  if (!qword_1EDA62668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62668);
  }

  return result;
}

unint64_t sub_1C8E9666C()
{
  result = qword_1EDA697B0;
  if (!qword_1EDA697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697B0);
  }

  return result;
}

unint64_t sub_1C8E966C0()
{
  result = qword_1EC3180A0;
  if (!qword_1EC3180A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180A0);
  }

  return result;
}

unint64_t sub_1C8E96714()
{
  result = qword_1EDA69798;
  if (!qword_1EDA69798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69798);
  }

  return result;
}

unint64_t sub_1C8E96768()
{
  result = qword_1EDA69468;
  if (!qword_1EDA69468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8D268BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69468);
  }

  return result;
}

unint64_t sub_1C8E967EC()
{
  result = qword_1EC3180C0;
  if (!qword_1EC3180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180C0);
  }

  return result;
}

unint64_t sub_1C8E96840()
{
  result = qword_1EDA63330;
  if (!qword_1EDA63330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63330);
  }

  return result;
}

unint64_t sub_1C8E96894()
{
  result = qword_1EDA69460;
  if (!qword_1EDA69460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3180B8, &qword_1C90922B8);
    sub_1C8D26868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69460);
  }

  return result;
}

unint64_t sub_1C8E96918()
{
  result = qword_1EC3180D0;
  if (!qword_1EC3180D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3180D0);
  }

  return result;
}

unint64_t sub_1C8E9696C()
{
  result = qword_1EDA63328;
  if (!qword_1EDA63328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63328);
  }

  return result;
}

unint64_t sub_1C8E969C0()
{
  result = qword_1EDA6B5D0;
  if (!qword_1EDA6B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5D0);
  }

  return result;
}

unint64_t sub_1C8E96A14()
{
  result = qword_1EC318120;
  if (!qword_1EC318120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318120);
  }

  return result;
}

unint64_t sub_1C8E96A68()
{
  result = qword_1EDA66728;
  if (!qword_1EDA66728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312A10, &qword_1C9068DF0);
    sub_1C8D381AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66728);
  }

  return result;
}

unint64_t sub_1C8E96AEC()
{
  result = qword_1EDA694F0;
  if (!qword_1EDA694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694F0);
  }

  return result;
}

unint64_t sub_1C8E96B40()
{
  result = qword_1EC318128;
  if (!qword_1EC318128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318128);
  }

  return result;
}

unint64_t sub_1C8E96B94()
{
  result = qword_1EC318130;
  if (!qword_1EC318130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318130);
  }

  return result;
}

unint64_t sub_1C8E96BE8()
{
  result = qword_1EDA694E8;
  if (!qword_1EDA694E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694E8);
  }

  return result;
}

unint64_t sub_1C8E96C3C()
{
  result = qword_1EDA6B5B8;
  if (!qword_1EDA6B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5B8);
  }

  return result;
}

unint64_t sub_1C8E96C90()
{
  result = qword_1EC318138;
  if (!qword_1EC318138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318138);
  }

  return result;
}

unint64_t sub_1C8E96CE4()
{
  result = qword_1EDA694F8;
  if (!qword_1EDA694F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694F8);
  }

  return result;
}

unint64_t sub_1C8E96D38()
{
  result = qword_1EDA66720;
  if (!qword_1EDA66720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312A10, &qword_1C9068DF0);
    sub_1C8D39E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66720);
  }

  return result;
}

unint64_t sub_1C8E96DBC()
{
  result = qword_1EDA6B5E8;
  if (!qword_1EDA6B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B5E8);
  }

  return result;
}

unint64_t sub_1C8E96E10()
{
  result = qword_1EDA66820;
  if (!qword_1EDA66820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66820);
  }

  return result;
}

unint64_t sub_1C8E96E64()
{
  result = qword_1EDA66818;
  if (!qword_1EDA66818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66818);
  }

  return result;
}

unint64_t sub_1C8E96EB8()
{
  result = qword_1EDA69FB8;
  if (!qword_1EDA69FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FB8);
  }

  return result;
}

unint64_t sub_1C8E96F0C()
{
  result = qword_1EC3181B8;
  if (!qword_1EC3181B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3181B8);
  }

  return result;
}

unint64_t sub_1C8E96F60()
{
  result = qword_1EDA63870;
  if (!qword_1EDA63870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63870);
  }

  return result;
}

unint64_t sub_1C8E96FB4()
{
  result = qword_1EDA69FA0;
  if (!qword_1EDA69FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FA0);
  }

  return result;
}

unint64_t sub_1C8E97008()
{
  result = qword_1EDA69FF8;
  if (!qword_1EDA69FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FF8);
  }

  return result;
}

unint64_t sub_1C8E9705C()
{
  result = qword_1EC3181F8;
  if (!qword_1EC3181F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3181F8);
  }

  return result;
}

unint64_t sub_1C8E970B0()
{
  result = qword_1EDA69FE0;
  if (!qword_1EDA69FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69FE0);
  }

  return result;
}

unint64_t sub_1C8E97104()
{
  result = qword_1EDA6A010;
  if (!qword_1EDA6A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A010);
  }

  return result;
}

unint64_t sub_1C8E97158()
{
  result = qword_1EDA63880;
  if (!qword_1EDA63880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63880);
  }

  return result;
}

unint64_t sub_1C8E971AC()
{
  result = qword_1EDA63868;
  if (!qword_1EDA63868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63868);
  }

  return result;
}

unint64_t sub_1C8E97200()
{
  result = qword_1EDA63878;
  if (!qword_1EDA63878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63878);
  }

  return result;
}

unint64_t sub_1C8E97254()
{
  result = qword_1EDA63860;
  if (!qword_1EDA63860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63860);
  }

  return result;
}

unint64_t sub_1C8E972A8()
{
  result = qword_1EDA69800;
  if (!qword_1EDA69800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69800);
  }

  return result;
}

unint64_t sub_1C8E972FC()
{
  result = qword_1EC318248;
  if (!qword_1EC318248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318248);
  }

  return result;
}

unint64_t sub_1C8E97350()
{
  result = qword_1EDA63358;
  if (!qword_1EDA63358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63358);
  }

  return result;
}

unint64_t sub_1C8E973A4()
{
  result = qword_1EDA697E8;
  if (!qword_1EDA697E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA697E8);
  }

  return result;
}

unint64_t sub_1C8E973F8()
{
  result = qword_1EC318270;
  if (!qword_1EC318270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318270);
  }

  return result;
}

unint64_t sub_1C8E9744C()
{
  result = qword_1EDA69840;
  if (!qword_1EDA69840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69840);
  }

  return result;
}

unint64_t sub_1C8E974A0()
{
  result = qword_1EC318290;
  if (!qword_1EC318290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318290);
  }

  return result;
}

unint64_t sub_1C8E974F4()
{
  result = qword_1EDA69828;
  if (!qword_1EDA69828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69828);
  }

  return result;
}

unint64_t sub_1C8E97548()
{
  result = qword_1EDA698C0;
  if (!qword_1EDA698C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA698C0);
  }

  return result;
}

unint64_t sub_1C8E9759C()
{
  result = qword_1EC3182E0;
  if (!qword_1EC3182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182E0);
  }

  return result;
}

unint64_t sub_1C8E975F0()
{
  result = qword_1EDA66978;
  if (!qword_1EDA66978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66978);
  }

  return result;
}

unint64_t sub_1C8E97644()
{
  result = qword_1EC3182E8;
  if (!qword_1EC3182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182E8);
  }

  return result;
}

unint64_t sub_1C8E97698()
{
  result = qword_1EDA63380;
  if (!qword_1EDA63380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63380);
  }

  return result;
}

unint64_t sub_1C8E976EC()
{
  result = qword_1EC3182F0;
  if (!qword_1EC3182F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3182F0);
  }

  return result;
}

unint64_t sub_1C8E97740()
{
  result = qword_1EDA69858;
  if (!qword_1EDA69858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69858);
  }

  return result;
}

unint64_t sub_1C8E97794()
{
  result = qword_1EDA63378;
  if (!qword_1EDA63378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63378);
  }

  return result;
}

unint64_t sub_1C8E977E8()
{
  result = qword_1EDA63350;
  if (!qword_1EDA63350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63350);
  }

  return result;
}

unint64_t sub_1C8E9783C()
{
  result = qword_1EDA63370;
  if (!qword_1EDA63370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63370);
  }

  return result;
}

unint64_t sub_1C8E97890()
{
  result = qword_1EDA63348;
  if (!qword_1EDA63348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63348);
  }

  return result;
}

unint64_t sub_1C8E978E8()
{
  result = qword_1EC318338;
  if (!qword_1EC318338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318338);
  }

  return result;
}

unint64_t sub_1C8E97940()
{
  result = qword_1EC318340;
  if (!qword_1EC318340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318340);
  }

  return result;
}

unint64_t sub_1C8E97998()
{
  result = qword_1EDA6D028;
  if (!qword_1EDA6D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D028);
  }

  return result;
}

unint64_t sub_1C8E979F0()
{
  result = qword_1EDA62450;
  if (!qword_1EDA62450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62450);
  }

  return result;
}

unint64_t sub_1C8E97A44()
{
  result = qword_1EDA6B280;
  if (!qword_1EDA6B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B280);
  }

  return result;
}

unint64_t sub_1C8E97A9C()
{
  result = qword_1EDA6B270;
  if (!qword_1EDA6B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B270);
  }

  return result;
}

unint64_t sub_1C8E97AF4()
{
  result = qword_1EDA6B338;
  if (!qword_1EDA6B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B338);
  }

  return result;
}

unint64_t sub_1C8E97B4C()
{
  result = qword_1EC318348;
  if (!qword_1EC318348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318348);
  }

  return result;
}

unint64_t sub_1C8E97BA0()
{
  result = qword_1EDA627E0;
  if (!qword_1EDA627E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA627E0);
  }

  return result;
}

unint64_t sub_1C8E97C3C()
{
  result = qword_1EDA627D8;
  if (!qword_1EDA627D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA627D8);
  }

  return result;
}

unint64_t sub_1C8E97C94()
{
  result = qword_1EC318360;
  if (!qword_1EC318360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318360);
  }

  return result;
}

unint64_t sub_1C8E97D34()
{
  result = qword_1EC318368;
  if (!qword_1EC318368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318368);
  }

  return result;
}

unint64_t sub_1C8E97D8C()
{
  result = qword_1EC318370;
  if (!qword_1EC318370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC318370);
  }

  return result;
}