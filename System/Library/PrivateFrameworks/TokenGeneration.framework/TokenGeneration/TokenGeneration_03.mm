uint64_t specialized static Promptkit_Wireformat_ChatPromptV1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(a1[1], a2[1]) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0) + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResultContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_ToolResultContent(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  v21 = specialized static Promptkit_Wireformat_ToolResultContentEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResult.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = (&v53 - v10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  v11 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v53 - v12;
  v14 = type metadata accessor for Promptkit_Wireformat_ToolResultContent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - v25;
  v27 = a1[1];
  v28 = a2[1];
  if (v27)
  {
    if (!v28 || (*a1 != *a2 || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v28)
  {
    goto LABEL_24;
  }

  v53 = v7;
  v55 = v13;
  v54 = type metadata accessor for Promptkit_Wireformat_ToolResult(0);
  v29 = *(v54 + 20);
  v30 = *(v23 + 48);
  v56 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v29, v26, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v31 = a2 + v29;
  v32 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &v26[v30], &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v30], 1, v14) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
      goto LABEL_15;
    }

LABEL_13:
    v34 = &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMd;
    v35 = &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSg_ADtMR;
    v36 = v26;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v34, v35);
    goto LABEL_24;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, v22, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if (v33(&v26[v30], 1, v14) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
    goto LABEL_13;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v26[v30], v18, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  v37 = specialized static Promptkit_Wireformat_ToolResultContent.== infix(_:_:)(v22, v18);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v18, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v22, type metadata accessor for Promptkit_Wireformat_ToolResultContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMd, &_s15TokenGeneration38Promptkit_Wireformat_ToolResultContentVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  v39 = v54;
  v38 = v55;
  v40 = *(v54 + 24);
  v41 = *(v58 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56 + v40, v55, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v42 = v32 + v40;
  v43 = v38;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v38 + v41, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v44 = v60;
  v45 = *(v59 + 48);
  if (v45(v38, 1, v60) != 1)
  {
    v48 = v57;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, v57, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v45(v38 + v41, 1, v44) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v48, type metadata accessor for Promptkit_Wireformat_Prompt);
      goto LABEL_21;
    }

    v50 = v53;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v43 + v41, v53, type metadata accessor for Promptkit_Wireformat_Prompt);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v48, *v50) & 1) == 0)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v50, type metadata accessor for Promptkit_Wireformat_Prompt);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v48, type metadata accessor for Promptkit_Wireformat_Prompt);
      v34 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
      v35 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
      goto LABEL_22;
    }

    v51 = *(v44 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v50, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v48, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
    if (v52)
    {
      goto LABEL_18;
    }

LABEL_24:
    v47 = 0;
    return v47 & 1;
  }

  if (v45(v38 + v41, 1, v44) != 1)
  {
LABEL_21:
    v34 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v35 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_22:
    v36 = v43;
    goto LABEL_23;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
LABEL_18:
  v46 = *(v39 + 28);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v47 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchemaString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2))
  {
    v9 = a1[6];
    v10 = a2[6];
    if (v9)
    {
      if (v10 && (a1[5] == a2[5] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        goto LABEL_23;
      }
    }

    else if (!v10)
    {
LABEL_23:
      v11 = *(type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0) + 32);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_PromptComponentCustomData.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *a1;
    v9 = *a1 == *a2 && v6 == v7;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = a1[2];
  v10 = a1[3];
  v13 = a2[2];
  v12 = a2[3];
  if (v10 >> 60 != 15)
  {
    if (v12 >> 60 == 15)
    {
      goto LABEL_14;
    }

    outlined copy of Data?(a1[2], a1[3]);
    outlined copy of Data?(v13, v12);
    v15 = specialized static Data.== infix(_:_:)(v11, v10, v13, v12);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v11, v10);
    if (v15)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v12 >> 60 != 15)
  {
LABEL_14:
    outlined copy of Data?(a1[2], a1[3]);
    outlined copy of Data?(v13, v12);
    outlined consume of Data?(v11, v10);
    outlined consume of Data?(v13, v12);
    return 0;
  }

  outlined copy of Data?(a1[2], a1[3]);
  outlined copy of Data?(v13, v12);
  outlined consume of Data?(v11, v10);
LABEL_17:
  v16 = *(a3(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Promptkit_Wireformat_ImageData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageFormat(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v39 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v39 - v16, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageFormat);
      goto LABEL_9;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    v31 = *v12;
    v32 = *v8;
    if (v31 == 2)
    {
      if (v32 == 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v35 = (v32 ^ v31) & 1;
      if (v32 != 2 && v35 == 0)
      {
LABEL_15:
        v33 = *(v4 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ImageFormat);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageFormat);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
        if ((v34 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_4;
      }
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ImageFormat);
    v27 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd;
    v28 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR;
    goto LABEL_10;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_9:
    v27 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMd;
    v28 = &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSg_ADtMR;
LABEL_10:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v27, v28);
    goto LABEL_11;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMd, &_s15TokenGeneration32Promptkit_Wireformat_ImageFormatVSgMR);
LABEL_4:
  v20 = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  v21 = *(v20 + 20);
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  if (v22 >> 60 == 15)
  {
    if (v25 >> 60 == 15)
    {
      outlined copy of Data?(v23, v22);
      outlined copy of Data?(v26, v25);
      outlined consume of Data?(v23, v22);
LABEL_25:
      v38 = *(v20 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v29 & 1;
    }

    goto LABEL_18;
  }

  if (v25 >> 60 == 15)
  {
LABEL_18:
    outlined copy of Data?(v23, v22);
    outlined copy of Data?(v26, v25);
    outlined consume of Data?(v23, v22);
    outlined consume of Data?(v26, v25);
    goto LABEL_11;
  }

  outlined copy of Data?(v23, v22);
  outlined copy of Data?(v26, v25);
  v37 = specialized static Data.== infix(_:_:)(v23, v22, v26, v25);
  outlined consume of Data?(v26, v25);
  outlined consume of Data?(v23, v22);
  if (v37)
  {
    goto LABEL_25;
  }

LABEL_11:
  v29 = 0;
  return v29 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolCallContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v29 - v18, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v32 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v19[v20], &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
LABEL_9:
      v27 = *(type metadata accessor for Promptkit_Wireformat_ToolCallContent(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v14, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v29, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v25 = *(v30 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, v6, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, v6 + v25, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v26 = specialized static Promptkit_Wireformat_JSONSchemaReference.== infix(_:_:)(v6, (v6 + v25), type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6 + v25, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolCall.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  v19 = type metadata accessor for Promptkit_Wireformat_ToolCall(0);
  v20 = a1;
  v21 = a2;
  v29[0] = v19;
  v29[1] = v20;
  v22 = *(v19 + 20);
  v23 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + v22, v16, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21 + v22, &v16[v23], &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
LABEL_17:
      v28 = *(v29[0] + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_13;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
LABEL_13:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
    goto LABEL_14;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v23], v8, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  v27 = specialized static Promptkit_Wireformat_ToolCallContent.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_14:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Promptkit_Wireformat_Schema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v31 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v31 - v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_7;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v24 = *v12;
    v25 = *v8;
    v26 = *v8 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v26 == 0xF000000000000007)
      {
        goto LABEL_15;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v8);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v24);
      v27 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v24, v25);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v25);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v24);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v26 != 0xF000000000000007)
    {
LABEL_15:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v22 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v23 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_16;
    }

    v28 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_7:
    v22 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v23 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_16:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v22, v23);
    goto LABEL_17;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_4:
  v20 = *(type metadata accessor for Promptkit_Wireformat_Schema(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static Promptkit_Wireformat_SpecialToken.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 16))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = a1[4];
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    if (a1[3] != *(a2 + 24) || v11 != v12)
    {
      v13 = a1[3];
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_21:
    v14 = *(type metadata accessor for Promptkit_Wireformat_SpecialToken(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageGenerationCount.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a2 + 5);
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      v3 = *(type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  else if ((*(a2 + 5) & 1) == 0)
  {
    v5 = *a2 | (*(a2 + 4) << 32);
    if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
    {
      if ((v5 & 0x100000000) != 0)
      {
        goto LABEL_3;
      }
    }

    else if ((v5 & 0x100000000) == 0)
    {
      *(a1 + 4);
      *(a2 + 4);
      if (*a1 == *a2)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_ImageGenerationParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ImageGenerationCount(0);
  v106 = *(v4 - 8);
  v107 = v4;
  v5 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v102 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = (&v101 - v9);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMR);
  v10 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v101 - v11;
  v12 = type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail(0);
  v112 = *(v12 - 8);
  v113 = v12;
  v13 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v109 = &v101 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMR);
  v18 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v101 - v19;
  v20 = type metadata accessor for Promptkit_Wireformat_ImageGenerationShape(0);
  v119 = *(v20 - 8);
  v120 = v20;
  v21 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v115 = &v101 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMR);
  v26 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v121 = &v101 - v27;
  v28 = type metadata accessor for Promptkit_Wireformat_ImageGenerationSize(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v101 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMR);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v101 - v40;
  v42 = *(v39 + 56);
  v117 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v101 - v40, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v118 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v41[v42], &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  v43 = *(v29 + 48);
  if (v43(v41, 1, v28) == 1)
  {
    if (v43(&v41[v42], 1, v28) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
      v45 = v120;
      v44 = v121;
      v46 = v119;
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, v36, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if (v43(&v41[v42], 1, v28) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v36, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
LABEL_21:
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSg_ADtMR;
LABEL_22:
    v75 = v41;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v75, v73, v74);
    goto LABEL_24;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v41[v42], v32, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  v78 = *v36;
  v79 = *v32;
  if (v78 == 5)
  {
    v80 = v79 == 5;
  }

  else
  {
    v80 = v78 == v79;
  }

  v45 = v120;
  v44 = v121;
  v46 = v119;
  if (!v80)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v32, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v36, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR;
    goto LABEL_22;
  }

  v82 = *(v28 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v32, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v36, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB4SizeVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v47 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v48 = v47[5];
  v49 = v117;
  v50 = *(v116 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v117 + v48, v44, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v51 = v118 + v48;
  v52 = v118;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v51, v44 + v50, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  v53 = *(v46 + 48);
  if (v53(v44, 1, v45) == 1)
  {
    if (v53(v44 + v50, 1, v45) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  v81 = v115;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, v115, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if (v53(v44 + v50, 1, v45) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
LABEL_30:
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSg_ADtMR;
    v75 = v44;
    goto LABEL_23;
  }

  v83 = v44 + v50;
  v84 = v110;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v83, v110, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  v85 = *v81;
  v86 = *v84;
  if (v85 == 4)
  {
    if (v86 != 4)
    {
LABEL_38:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v84, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
      v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd;
      v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR;
      v75 = v44;
      goto LABEL_23;
    }
  }

  else if (v85 != v86)
  {
    goto LABEL_38;
  }

  v88 = *(v45 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v88) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v84, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v81, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5ShapeVSgMR);
  if ((v88 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v54 = v47[6];
  v55 = *(v111 + 48);
  v56 = v114;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49 + v54, v114, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v57 = v52 + v54;
  v58 = v56;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57, v56 + v55, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  v59 = v113;
  v60 = *(v112 + 48);
  if (v60(v56, 1, v113) == 1)
  {
    if (v60(v56 + v55, 1, v59) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v56, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
      goto LABEL_10;
    }

    goto LABEL_41;
  }

  v87 = v109;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, v109, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if (v60(v58 + v55, 1, v59) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v87, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
LABEL_41:
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSg_ADtMR;
    v75 = v58;
    goto LABEL_23;
  }

  v89 = v58 + v55;
  v90 = v104;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v89, v104, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  v91 = *v87;
  v92 = *v90;
  if (v91 == 4)
  {
    if (v92 != 4)
    {
LABEL_47:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v90, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v87, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
      v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd;
      v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR;
      v75 = v58;
      goto LABEL_23;
    }
  }

  else if (v91 != v92)
  {
    goto LABEL_47;
  }

  v94 = *(v59 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  LOBYTE(v94) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v90, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v87, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v58, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB6DetailVSgMR);
  if ((v94 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v61 = v47[7];
  v62 = *(v105 + 48);
  v63 = v108;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49 + v61, v108, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v64 = v52 + v61;
  v65 = v63;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64, v63 + v62, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
  v66 = v107;
  v67 = *(v106 + 48);
  if (v67(v63, 1, v107) != 1)
  {
    v93 = v103;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, v103, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
    if (v67(v65 + v62, 1, v66) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v93, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      goto LABEL_50;
    }

    v95 = v65 + v62;
    v96 = v102;
    outlined init with take of Promptkit_Wireformat_PromptRequestV1(v95, v102, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    v97 = *(v96 + 5);
    if (*(v93 + 5))
    {
      if (*(v96 + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((*(v96 + 5) & 1) == 0)
    {
      v100 = *v96 | (*(v96 + 4) << 32);
      if (((*v93 | (*(v93 + 4) << 32)) & 0x100000000) != 0)
      {
        if ((v100 & 0x100000000) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if ((v100 & 0x100000000) != 0)
        {
          goto LABEL_59;
        }

        *(v93 + 4);
        *(v96 + 4);
        if (*v93 != *v96)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      v98 = *(v66 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      LOBYTE(v98) = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v96, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v93, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v65, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
      if ((v98 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    }

LABEL_59:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v96, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v93, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount);
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR;
    v75 = v65;
    goto LABEL_23;
  }

  if (v67(v63 + v62, 1, v66) != 1)
  {
LABEL_50:
    v73 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMd;
    v74 = &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSg_ADtMR;
    v75 = v65;
    goto LABEL_23;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMd, &_s15TokenGeneration026Promptkit_Wireformat_ImageB5CountVSgMR);
LABEL_13:
  v68 = v47[8];
  v69 = (v49 + v68);
  v70 = *(v49 + v68 + 8);
  v71 = (v52 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (v72 && (*v69 == *v71 && v70 == v72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_61;
    }
  }

  else if (!v72)
  {
LABEL_61:
    v99 = v47[9];
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v76 & 1;
  }

LABEL_24:
  v76 = 0;
  return v76 & 1;
}

uint64_t specialized static Promptkit_Wireformat_JSONSchema.== infix(_:_:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v8 == 0xF000000000000007)
    {
      return 0;
    }

    v9 = a6;
    a3(*a2);
    a3(v6);
    LOBYTE(a4) = a4(v6, v7);
    a5(v7);
    a5(v6);
    a6 = v9;
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v13 = *(a6(0) + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v8 == 0xF000000000000007)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaChoice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v18)
  {
    goto LABEL_24;
  }

  v33 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0);
  v34 = a2;
  v19 = *(v33 + 20);
  v20 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v19, v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34 + v19, &v16[v20], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      goto LABEL_14;
    }

    outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v20], v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v26 = *v12;
    v27 = *v8;
    v28 = *v8 & 0xF000000000000007;
    if ((~*v12 & 0xF000000000000007) != 0)
    {
      if (v28 == 0xF000000000000007)
      {
        goto LABEL_22;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v8);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v26);
      v29 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v26, v27);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v27);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v26);
      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v28 != 0xF000000000000007)
    {
LABEL_22:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v24 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
      v25 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
      goto LABEL_23;
    }

    v30 = *(v4 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v31)
    {
      goto LABEL_11;
    }

LABEL_24:
    v23 = 0;
    return v23 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_14:
    v24 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v25 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_23:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v24, v25);
    goto LABEL_24;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_11:
  v22 = *(v33 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaField.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v18)
  {
    goto LABEL_36;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_15;
    }

LABEL_36:
    v35 = 0;
    return v35 & 1;
  }

  if (!v20 || (a1[2] != a2[2] || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v40 = v8;
  v41 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0);
  v21 = v41[6];
  v22 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v21, v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v21, &v16[v22], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
LABEL_23:
    v27 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
    v28 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_35:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v27, v28);
    goto LABEL_36;
  }

  v29 = &v16[v22];
  v30 = v40;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v29, v40, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v31 = *v12;
  v32 = *v30;
  v33 = *v30 & 0xF000000000000007;
  if ((~*v12 & 0xF000000000000007) != 0)
  {
    if (v33 == 0xF000000000000007)
    {
      goto LABEL_34;
    }

    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v30);
    outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v31);
    v36 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v31, v32);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v32);
    outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v31);
    if ((v36 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v33 != 0xF000000000000007)
  {
LABEL_34:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v27 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
    v28 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
    goto LABEL_35;
  }

  v37 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v30, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v24 = v41[7];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_36;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_36;
  }

  v34 = v41[8];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v35 & 1;
}

uint64_t specialized static Promptkit_Wireformat_StringConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_StringConstraint(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  v21 = specialized static Promptkit_Wireformat_StringConstraintEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_GenerationSchemaString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraint(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18 + v20, v16, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19 + v20, &v16[v21], &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
LABEL_11:
      v26 = *(v27[0] + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v12, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_StringConstraint);
LABEL_7:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v21], v8, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  v25 = specialized static Promptkit_Wireformat_StringConstraint.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_StringConstraint);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMd, &_s15TokenGeneration37Promptkit_Wireformat_StringConstraintVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v28 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);
  v17 = *(v29 + 20);
  v18 = *(v13 + 56);
  v31 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v17, v16, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v17, &v16[v18], &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v11, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_8:
    v22 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMd;
    v23 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSg_ADtMR;
LABEL_9:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v22, v23);
    goto LABEL_10;
  }

  v25 = v30;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v16[v18], v30, type metadata accessor for Promptkit_Wireformat_Prompt);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v11, *v25) & 1) == 0)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_Prompt);
    v22 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd;
    v23 = &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR;
    goto LABEL_9;
  }

  v26 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v25, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v11, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(*v31, *a2) & 1) == 0)
  {
LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(v29 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedCompletionPrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMR);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v29 - v18, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v32 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v19[v20], &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
LABEL_9:
      v27 = *(type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v14, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v29, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  v25 = *(v30 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, v6, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, v6 + v25, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  v26 = specialized static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)(v6, (v6 + v25));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6 + v25, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumOSgMR);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_VariantEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  v21 = specialized static Promptkit_Wireformat_VariantEnum.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestV1.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v24 - v16, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v17[v18], &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v12, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
    goto LABEL_7;
  }

  outlined init with take of Promptkit_Wireformat_PromptRequestV1(&v17[v18], v8, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  v21 = specialized static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)(v12, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v8, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v12, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Promptkit_Wireformat_VersionedPromptRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMR);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v29 - v18, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v32 = a2;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v19[v20], &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
LABEL_9:
      v27 = *(type metadata accessor for Promptkit_Wireformat_VersionedPromptRequest(0) + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v14, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSg_ADtMR);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  outlined init with take of Promptkit_Wireformat_PromptRequestV1(v23, v29, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v25 = *(v30 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, v6, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, &v6[v25], type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v26 = specialized static Promptkit_Wireformat_PromptRequestV1.== infix(_:_:)(v6, &v6[v25]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v24, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(&v6[v25], type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v6, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(v14, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumOSgMR);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

unint64_t outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(result);
  }

  return result;
}

unint64_t outlined copy of Promptkit_Wireformat_GenerationSchemaEnum(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

unint64_t outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of Promptkit_Wireformat_GenerationSchemaEnum(result);
  }

  return result;
}

unint64_t outlined consume of Promptkit_Wireformat_GenerationSchemaEnum(unint64_t result)
{
  if ((result >> 61) <= 6)
  {
  }

  return result;
}

uint64_t outlined copy of Promptkit_Wireformat_JsonschemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined consume of Promptkit_Wireformat_JsonschemaEnum?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Promptkit_Wireformat_PromptRequestV1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_SelfAttention and conformance Promptkit_Wireformat_SelfAttention(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance Promptkit_Wireformat_PromptComponentPrivacy@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_PromptComponentPrivacy()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_PromptComponentPrivacy(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_PromptComponentPrivacy and conformance Promptkit_Wireformat_PromptComponentPrivacy();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_PromptComponentPrivacy()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Promptkit_Wireformat_ImageEmbeddingEncoding@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Promptkit_Wireformat_ImageEmbeddingEncoding(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Promptkit_Wireformat_ImageEmbeddingEncoding and conformance Promptkit_Wireformat_ImageEmbeddingEncoding();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMd, &_s15TokenGeneration50Promptkit_Wireformat_VersionedCompletionPromptEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v11 - v7, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v8[v9], type metadata accessor for Promptkit_Wireformat_VersionedCompletionPromptEnum);
  LOBYTE(a2) = static Promptkit_Wireformat_CompletionPromptV1.== infix(_:_:)(v8, &v8[v9]);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(&v8[v9], type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_CompletionPromptV1);
  return a2 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v11 - v7, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v8[v9], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
  LOBYTE(a2) = static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(v8, &v8[v9]);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(&v8[v9], type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
  return a2 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Promptkit_Wireformat_ImageFormatEnum()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Promptkit_Wireformat_ImageFormatEnum()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

uint64_t static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v78 - v9;
  v11 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v80 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v81 = (&v78 - v15);
  v78 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v16 = *(*(v78 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v78);
  v82 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = (&v78 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v78 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v79 = (&v78 - v24);
  v25 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v78 - v30);
  v32 = *(*(type metadata accessor for Promptkit_Wireformat_GenerationSchemaString(0) - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](a1);
  v35 = (&v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v78 - v37);
  v39 = v36 >> 61;
  if ((v36 >> 61) <= 3)
  {
    if (v39 <= 1)
    {
      if (!v39)
      {
        if (!(a2 >> 61))
        {
          v40 = swift_projectBox();
          v41 = swift_projectBox();
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v40, v38, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v41, v35, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          v42 = specialized static Promptkit_Wireformat_GenerationSchemaString.== infix(_:_:)(v38, v35);
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v35, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v38, type metadata accessor for Promptkit_Wireformat_GenerationSchemaString);
          return v42 & 1;
        }

        goto LABEL_59;
      }

      if (a2 >> 61 != 1)
      {
        goto LABEL_59;
      }

      v58 = swift_projectBox();
      v59 = swift_projectBox();
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v58, v31, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v59, v29, type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C11SchemaFieldV_Tt1g5(*v31, *v29))
      {
        v60 = *(v25 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v61 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject;
LABEL_51:
          v49 = v61;
          v74 = v29;
          goto LABEL_52;
        }
      }

      v71 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaObject;
      goto LABEL_56;
    }

    if (v39 == 2)
    {
      if (a2 >> 61 != 2)
      {
        goto LABEL_59;
      }

      v51 = swift_projectBox();
      v52 = swift_projectBox();
      v31 = v79;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v51, v79, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v52, v23, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
      v53 = *v31;
      v54 = *v23;
      v55 = *v23 & 0xF000000000000007;
      if ((~*v31 & 0xF000000000000007) != 0)
      {
        if (v55 == 0xF000000000000007)
        {
          goto LABEL_46;
        }

        outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v23);
        outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v53);
        v72 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v53, v54);
        outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v54);
        outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v53);
        if ((v72 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      else if (v55 != 0xF000000000000007)
      {
LABEL_46:
        v71 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v69 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v75 = v23;
LABEL_57:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v75, v71);
        v70 = v31;
        goto LABEL_58;
      }

      v73 = *(v78 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v61 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v49 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
        v74 = v23;
LABEL_52:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v74, v61);
        v50 = v31;
        goto LABEL_53;
      }

      goto LABEL_46;
    }

    if (a2 >> 61 != 3)
    {
      goto LABEL_59;
    }

    v63 = swift_projectBox();
    v64 = swift_projectBox();
    v31 = v83;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v63, v83, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v29 = v82;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v64, v82, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v65 = *v31;
    v66 = *v29;
    v67 = *v29 & 0xF000000000000007;
    if ((~*v31 & 0xF000000000000007) != 0)
    {
      if (v67 == 0xF000000000000007)
      {
        goto LABEL_55;
      }

      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(*v29);
      outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v65);
      v76 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v65, v66);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v66);
      outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v65);
      if ((v76 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (v67 != 0xF000000000000007)
    {
LABEL_55:
      v71 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
LABEL_56:
      v69 = v71;
      v75 = v29;
      goto LABEL_57;
    }

    v77 = *(v78 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v61 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  if (v39 > 5)
  {
    if (v39 == 6)
    {
      if (a2 >> 61 == 6)
      {
        v56 = swift_projectBox();
        v57 = swift_projectBox();
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v56, v10, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v57, v8, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        v42 = specialized static Promptkit_Wireformat_RecursiveSchema.== infix(_:_:)(v10, v8);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
        return v42 & 1;
      }

LABEL_59:
      v42 = 0;
      return v42 & 1;
    }

    v68 = 0xE000000000000000;
    if (v36 == 0xE000000000000000 || (v68 = 0xE000000000000008, v36 == 0xE000000000000008))
    {
      if (a2 != v68)
      {
        goto LABEL_59;
      }
    }

    else if (a2 != 0xE000000000000010)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  if (v39 == 4)
  {
    if (a2 >> 61 != 4)
    {
      goto LABEL_59;
    }

    v43 = swift_projectBox();
    v44 = swift_projectBox();
    v45 = v81;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v43, v81, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v46 = v44;
    v47 = v80;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v46, v80, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C12SchemaChoiceV_Tt1g5(*v45, *v47))
    {
      v48 = *(v11 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v49 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v47, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
        v50 = v45;
LABEL_53:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v50, v49);
        goto LABEL_54;
      }
    }

    v69 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf;
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v47, type metadata accessor for Promptkit_Wireformat_GenerationSchemaOneOf);
    v70 = v45;
LABEL_58:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v70, v69);
    goto LABEL_59;
  }

  if (a2 >> 61 != 5)
  {
    goto LABEL_59;
  }

  if (*((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
LABEL_54:
    v42 = 1;
    return v42 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t specialized static Promptkit_Wireformat_PromptRequestVersionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMd, &_s15TokenGeneration45Promptkit_Wireformat_PromptRequestVersionEnumO_ACtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v29 - v20;
  v22 = &v29 + *(v19 + 56) - v20;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v29 - v20, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v30, v22, type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum);
  v23 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v21, v16);
  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v22, &v16[v23]);
  v24 = *(v4 + 48);
  if (v24(v16, 1, v3) == 1)
  {
    if (v24(&v16[v23], 1, v3) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(v16, v11);
  if (v24(&v16[v23], 1, v3) == 1)
  {
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
LABEL_6:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSg_ADtMR);
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v16[v23], v7, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  v25 = static Promptkit_Wireformat_PromptRequestV1PromptVariant.== infix(_:_:)(v11, v7);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v7, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v11, type metadata accessor for Promptkit_Wireformat_PromptRequestV1PromptVariant);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v26 = *(type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = 1;
LABEL_11:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v22, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v21, type metadata accessor for Promptkit_Wireformat_PromptRequestV1);
  return v27;
}

BOOL specialized static Promptkit_Wireformat_VersionedChatPromptEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMd, &_s15TokenGeneration44Promptkit_Wireformat_VersionedChatPromptEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v13 - v7);
  v9 = (&v13 + *(v6 + 56) - v7);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v13 - v7, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, v9, type metadata accessor for Promptkit_Wireformat_VersionedChatPromptEnum);
  v11 = 0;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(*v8, *v9) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration33Promptkit_Wireformat_ChatPromptV1VTt1g5(v8[1], v9[1]) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVTt1g5(v8[2], v9[2]))
  {
    v10 = *(type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0) + 28);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v11 = 1;
    }
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
  return v11;
}

uint64_t specialized static Promptkit_Wireformat_ToolCallContentEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v19 - v7);
  v9 = (&v19 + *(v6 + 56) - v7);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v19 - v7, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, v9, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
  v10 = v8[1];
  v11 = v9[1];
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *v8 == *v9 && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v11)
  {
    goto LABEL_21;
  }

  v13 = v8[3];
  v14 = v9[3];
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v8[2] == v9[2] && v13 == v14;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v16 = *(type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v17 = 1;
LABEL_22:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
  return v17;
}

uint64_t specialized static Promptkit_Wireformat_ResponseFormatKindEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v31 - v22, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v23[v24], type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v23, v16, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v23[v24], v7, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v25 = specialized static Promptkit_Wireformat_ResponseFormatGrammarDetails.== infix(_:_:)(v16, v7);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v7, type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails);
      v26 = v16;
      v27 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails;
LABEL_9:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v26, v27);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v23, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
      return v25 & 1;
    }

    v28 = type metadata accessor for Promptkit_Wireformat_ResponseFormatGrammarDetails;
    v29 = v16;
  }

  else
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v23, v18, type metadata accessor for Promptkit_Wireformat_ResponseFormatKindEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v23[v24], v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v25 = specialized static Promptkit_Wireformat_ResponseFormatSchemaDetails.== infix(_:_:)(v18, v11);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v11, type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails);
      v26 = v18;
      v27 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Promptkit_Wireformat_ResponseFormatSchemaDetails;
    v29 = v18;
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, v28);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ResponseFormatKindEnumO_ACtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v39 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v39 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v39 - v27, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v40, &v28[v29], type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v28, v21, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v28[v29], v9, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
        v34 = static Promptkit_Wireformat_ImageGenerationParameters.== infix(_:_:)(v21, v9);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v9, type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters);
        v36 = v21;
        v37 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters;
LABEL_21:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v36, v37);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v28, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        return v34 & 1;
      }

      v31 = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters;
      v32 = v21;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v28, v23, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v28[v29], v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
        v34 = specialized static Promptkit_Wireformat_ToolDefinitionFunction.== infix(_:_:)(v23, v13);
        v35 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v13, type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction);
        v36 = v23;
        goto LABEL_20;
      }

      v31 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction;
      v32 = v23;
    }

LABEL_17:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v32, v31);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v28, v18, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = v39;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v28[v29], v39, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v33, type metadata accessor for Promptkit_Wireformat_FileGenerationParameters);
      v36 = v18;
LABEL_20:
      v37 = v35;
      goto LABEL_21;
    }

    v31 = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters;
    v32 = v18;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_18:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumO_ACtMR);
    v34 = 0;
    return v34 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_18;
  }

LABEL_12:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v28, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
  v34 = 1;
  return v34 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ChatMessageRoleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v55 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(0);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v59 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v54 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v54 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v54 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v54 - v36;
  v38 = *(v35 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v60, &v54 - v36, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v61, &v37[v38], type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v37, v30, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v37[v38], v13, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
        v41 = specialized static Promptkit_Wireformat_ChatMessageRolePromptUser.== infix(_:_:)(v30, v13);
        v42 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v13, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser);
        v43 = v30;
        goto LABEL_20;
      }

      v44 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser;
      v45 = v30;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v37, v32, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v37[v38], v17, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        v41 = specialized static Promptkit_Wireformat_ChatMessageRolePromptSystem.== infix(_:_:)(v32, v17);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v17, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem);
        v43 = v32;
        v51 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem;
        goto LABEL_21;
      }

      v44 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem;
      v45 = v32;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v37, v27, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = v56;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v37[v38], v56, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v46, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant);
      v43 = v27;
      goto LABEL_20;
    }

    v44 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant;
    v45 = v27;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v47 = v59;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v37, v59, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v44 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom;
      v45 = v47;
      goto LABEL_26;
    }

    v48 = v58;
    outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v37[v38], v58, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
    v49 = v47[1];
    v50 = v48[1];
    if (v49)
    {
      if (!v50 || (*v47 != *v48 || v49 != v50) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v50)
    {
LABEL_33:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v48, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v47, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      goto LABEL_27;
    }

    v53 = *(v55 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v48, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v47, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_33;
  }

  outlined init with copy of Promptkit_Wireformat_VariantEnum(v37, v24, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v44 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool;
    v45 = v24;
LABEL_26:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v45, v44);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ChatMessageRoleEnumO_ACtMR);
LABEL_27:
    v41 = 0;
    return v41 & 1;
  }

  v40 = v57;
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v37[v38], v57, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool;
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v40, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool);
  v43 = v24;
LABEL_20:
  v51 = v42;
LABEL_21:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v43, v51);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v37, type metadata accessor for Promptkit_Wireformat_ChatMessageRoleEnum);
  return v41 & 1;
}

uint64_t specialized static Promptkit_Wireformat_ToolResultContentEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumO_ACtMd, &_s15TokenGeneration42Promptkit_Wireformat_ToolResultContentEnumO_ACtMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - v14;
  v16 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v24 - v14, type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v15[v16], type metadata accessor for Promptkit_Wireformat_ToolResultContentEnum);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v15, v10, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v15[v16], v8, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  v17 = v10[1];
  v18 = v8[1];
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_ToolResultText);
    goto LABEL_12;
  }

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *v10 == *v8 && v17 == v18;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v4 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  if ((v21 & 1) == 0)
  {
LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v22 = 1;
LABEL_13:
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_ToolResultText);
  return v22;
}

uint64_t specialized static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  v147 = a2;
  v132 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull(0);
  v3 = *(*(v132 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v132);
  v145 = (&v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v142 = (&v130 - v6);
  v131 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference(0);
  v7 = *(*(v131 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v131);
  v143 = (&v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v144 = (&v130 - v10);
  v11 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v140 = (&v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v139 = (&v130 - v15);
  v16 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v138 = (&v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v137 = (&v130 - v20);
  v21 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v136 = (&v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v135 = (&v130 - v25);
  v26 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v134 = (&v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v133 = (&v130 - v30);
  v146 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant(0);
  v31 = *(*(v146 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v146);
  v141 = (&v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v130 - v34);
  v36 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v130 - v41);
  v43 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger(0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v47 = (&v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v49 = (&v130 - v48);
  v50 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean(0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v54 = (&v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v56 = (&v130 - v55);
  v57 = *(*(type metadata accessor for Promptkit_Wireformat_JSONSchemaString(0) - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](a1);
  v60 = (&v130 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = (&v130 - v62);
  v64 = v61 >> 60;
  if ((v61 >> 60) > 4)
  {
    if (v64 <= 7)
    {
      if (v64 == 5)
      {
        if (v147 >> 60 == 5)
        {
          v90 = swift_projectBox();
          v91 = swift_projectBox();
          v67 = v133;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v90, v133, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
          v92 = v91;
          v69 = v134;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v92, v134, type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf);
          v70 = specialized static Promptkit_Wireformat_JSONSchemaAnyOf.== infix(_:_:)(v67, v69);
          v71 = type metadata accessor for Promptkit_Wireformat_JSONSchemaAnyOf;
          goto LABEL_48;
        }
      }

      else if (v64 == 6)
      {
        if (v147 >> 60 == 6)
        {
          v65 = swift_projectBox();
          v66 = swift_projectBox();
          v67 = v135;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v65, v135, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
          v68 = v66;
          v69 = v136;
          outlined init with copy of Promptkit_Wireformat_VariantEnum(v68, v136, type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary);
          v70 = specialized static Promptkit_Wireformat_JSONSchemaDictionary.== infix(_:_:)(v67, v69);
          v71 = type metadata accessor for Promptkit_Wireformat_JSONSchemaDictionary;
LABEL_48:
          v84 = v71;
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v69, v71);
          v85 = v67;
          goto LABEL_49;
        }
      }

      else if (v147 >> 60 == 7)
      {
        v109 = swift_projectBox();
        v110 = swift_projectBox();
        v67 = v137;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v109, v137, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
        v111 = v110;
        v69 = v138;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v111, v138, type metadata accessor for Promptkit_Wireformat_JSONSchemaArray);
        v70 = specialized static Promptkit_Wireformat_JSONSchemaArray.== infix(_:_:)(v67, v69);
        v71 = type metadata accessor for Promptkit_Wireformat_JSONSchemaArray;
        goto LABEL_48;
      }

      goto LABEL_90;
    }

    if (v64 == 8)
    {
      if (v147 >> 60 == 8)
      {
        v93 = swift_projectBox();
        v94 = swift_projectBox();
        v67 = v139;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v93, v139, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
        v95 = v94;
        v69 = v140;
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v95, v140, type metadata accessor for Promptkit_Wireformat_JSONSchemaObject);
        v70 = specialized static Promptkit_Wireformat_JSONSchemaObject.== infix(_:_:)(v67, v69);
        v71 = type metadata accessor for Promptkit_Wireformat_JSONSchemaObject;
        goto LABEL_48;
      }

      goto LABEL_90;
    }

    if (v64 == 9)
    {
      if (v147 >> 60 != 9)
      {
        goto LABEL_90;
      }

      v76 = swift_projectBox();
      v77 = swift_projectBox();
      v78 = v144;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v76, v144, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v79 = v143;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v77, v143, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v80 = v78[1];
      v81 = v79[1];
      if (v80)
      {
        if (!v81 || (*v78 != *v79 || v80 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else if (v81)
      {
        goto LABEL_87;
      }

      v123 = v78[3];
      v124 = v79[3];
      if (v123)
      {
        if (!v124 || (v78[2] != v79[2] || v123 != v124) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else if (v124)
      {
        goto LABEL_87;
      }

      v128 = *(v131 + 24);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v126 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v79, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
        v108 = v78;
        goto LABEL_85;
      }

LABEL_87:
      v127 = type metadata accessor for Promptkit_Wireformat_JSONSchemaReference;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v79, type metadata accessor for Promptkit_Wireformat_JSONSchemaReference);
      v122 = v78;
      goto LABEL_88;
    }

    if (v147 >> 60 != 10)
    {
      goto LABEL_90;
    }

    v112 = swift_projectBox();
    v113 = swift_projectBox();
    v114 = v142;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v112, v142, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v115 = v145;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v113, v145, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
    v116 = v114[1];
    v117 = v115[1];
    if (v116)
    {
      if (v117 && (*v114 == *v115 && v116 == v117 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_56:
        v118 = *(v132 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        LOBYTE(v118) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v114, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
        if (v118)
        {
          v107 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull;
          v108 = v115;
          goto LABEL_86;
        }

        goto LABEL_77;
      }
    }

    else if (!v117)
    {
      goto LABEL_56;
    }

    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v114, type metadata accessor for Promptkit_Wireformat_JSONSchemaNull);
LABEL_77:
    v121 = type metadata accessor for Promptkit_Wireformat_JSONSchemaNull;
    v122 = v115;
    goto LABEL_89;
  }

  if (v64 <= 1)
  {
    if (!v64)
    {
      if (!(v147 >> 60))
      {
        v82 = swift_projectBox();
        v83 = swift_projectBox();
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v82, v63, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        outlined init with copy of Promptkit_Wireformat_VariantEnum(v83, v60, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        v70 = specialized static Promptkit_Wireformat_JSONSchemaString.== infix(_:_:)(v63, v60);
        v84 = type metadata accessor for Promptkit_Wireformat_JSONSchemaString;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v60, type metadata accessor for Promptkit_Wireformat_JSONSchemaString);
        v85 = v63;
LABEL_49:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v85, v84);
        return v70 & 1;
      }

      goto LABEL_90;
    }

    if (v147 >> 60 != 1)
    {
      goto LABEL_90;
    }

    v102 = swift_projectBox();
    v103 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v102, v56, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v103, v54, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
    v104 = v56[1];
    v105 = v54[1];
    if (v104)
    {
      if (v105 && (*v56 == *v54 && v104 == v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_44:
        v106 = *(v50 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        LOBYTE(v106) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v56, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
        if (v106)
        {
          v107 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean;
          v108 = v54;
LABEL_86:
          outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v108, v107);
          v70 = 1;
          return v70 & 1;
        }

        goto LABEL_67;
      }
    }

    else if (!v105)
    {
      goto LABEL_44;
    }

    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v56, type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean);
LABEL_67:
    v121 = type metadata accessor for Promptkit_Wireformat_JSONSchemaBoolean;
    v122 = v54;
LABEL_89:
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v122, v121);
    goto LABEL_90;
  }

  if (v64 == 2)
  {
    if (v147 >> 60 == 2)
    {
      v86 = swift_projectBox();
      v87 = swift_projectBox();
      v88 = v86;
      v67 = v49;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v88, v49, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
      v89 = v87;
      v69 = v47;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v89, v47, type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger);
      v70 = specialized static Promptkit_Wireformat_JSONSchemaInteger.== infix(_:_:)(v49, v47);
      v71 = type metadata accessor for Promptkit_Wireformat_JSONSchemaInteger;
      goto LABEL_48;
    }

LABEL_90:
    v70 = 0;
    return v70 & 1;
  }

  v72 = v64 == 3;
  v73 = v147 >> 60;
  if (!v72)
  {
    if (v73 != 4)
    {
      goto LABEL_90;
    }

    v96 = swift_projectBox();
    v97 = swift_projectBox();
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v96, v35, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v98 = v141;
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v97, v141, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v99 = v35[1];
    v100 = v98[1];
    if (v99)
    {
      v101 = v146;
      if (!v100 || (*v35 != *v98 || v99 != v100) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v101 = v146;
      if (v100)
      {
        goto LABEL_81;
      }
    }

    v119 = v35[3];
    v120 = v98[3];
    if (v119)
    {
      if (!v120 || (v35[2] != v98[2] || v119 != v120) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (v120)
    {
      goto LABEL_81;
    }

    v125 = *(v101 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v126 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v98, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
      v108 = v35;
LABEL_85:
      v107 = v126;
      goto LABEL_86;
    }

LABEL_81:
    v127 = type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant;
    outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v98, type metadata accessor for Promptkit_Wireformat_JSONSchemaConstant);
    v122 = v35;
LABEL_88:
    v121 = v127;
    goto LABEL_89;
  }

  if (v73 != 3)
  {
    goto LABEL_90;
  }

  v74 = swift_projectBox();
  v75 = swift_projectBox();
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v74, v42, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v75, v40, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  v70 = specialized static Promptkit_Wireformat_JSONSchemaNumber.== infix(_:_:)(v42, v40);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v40, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v42, type metadata accessor for Promptkit_Wireformat_JSONSchemaNumber);
  return v70 & 1;
}

BOOL specialized static Promptkit_Wireformat_StringConstraintEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumO_ACtMd, &_s15TokenGeneration41Promptkit_Wireformat_StringConstraintEnumO_ACtMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v20 - v14;
  v16 = *(v13 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v20 - v14, type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v15[v16], type metadata accessor for Promptkit_Wireformat_StringConstraintEnum);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v15, v10, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v15[v16], v8, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  v18 = 0;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*v10, *v8) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v10[1], v8[1]))
  {
    v17 = *(v4 + 24);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v18 = 1;
    }
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v8, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v10, type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith);
  return v18;
}

uint64_t specialized static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v187 = a1;
  v188 = a2;
  v156 = type metadata accessor for Promptkit_Wireformat_SelfAttention(0);
  v2 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v173 = (&v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(0);
  v4 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v172 = (&v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(0);
  v6 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v171 = (&v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for Promptkit_Wireformat_Prompts(0);
  v8 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v170 = (&v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Promptkit_Wireformat_ImageSurface(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v168 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Promptkit_Wireformat_ImageData(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v166 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Promptkit_Wireformat_ToolCalls(0);
  v19 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v167 = (&v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for Promptkit_Wireformat_ToolResults(0);
  v21 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v165 = (&v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Promptkit_Wireformat_CustomData(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v163 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Promptkit_Wireformat_BindableVariable(0);
  v26 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v164 = (&v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Promptkit_Wireformat_SpecialToken(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v162 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for Google_Protobuf_Timestamp();
  v183 = *(v185 - 8);
  v31 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v161 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  v33 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153);
  v160 = (&v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v186 = (&v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x1EEE9AC00](v37);
  v184 = (&v152 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v182 = (&v152 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v181 = (&v152 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v177 = (&v152 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v176 = (&v152 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v175 = (&v152 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v180 = (&v152 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v178 = (&v152 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v174 = (&v152 - v56);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v179 = (&v152 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = (&v152 - v60);
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v152 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = (&v152 - v66);
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = (&v152 - v69);
  v71 = MEMORY[0x1EEE9AC00](v68);
  v73 = (&v152 - v72);
  MEMORY[0x1EEE9AC00](v71);
  v75 = (&v152 - v74);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMR);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v76 - 8);
  v80 = &v152 - v79;
  v81 = &v152 + *(v78 + 56) - v79;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v187, &v152 - v79, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v82 = v188;
  v188 = v81;
  outlined init with copy of Promptkit_Wireformat_VariantEnum(v82, v81, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v73, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v119 = *v73;
      v118 = v73[1];
      v120 = v188;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_86;
      }

      v121 = *v120;
      v122 = v120[1];
      if (v119 == v121 && v118 == v122)
      {

        goto LABEL_114;
      }

      v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v143)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    case 2u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v70, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v111 = v188;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_86;
      }

      v112 = *v70 == *v111;
      goto LABEL_37;
    case 3u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v67, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v116 = v188;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_86;
      }

      v112 = *v67 == *v116;
LABEL_37:
      v96 = v112;
      goto LABEL_65;
    case 4u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v64, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v99 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v100 = v183;
        v101 = v161;
        v102 = v185;
        (*(v183 + 32))(v161, v99, v185);
        v96 = static Google_Protobuf_Timestamp.== infix(_:_:)();
        v103 = *(v100 + 8);
        v103(v101, v102);
        v103(v64, v102);
        goto LABEL_65;
      }

      (*(v183 + 8))(v64, v185);
      goto LABEL_86;
    case 5u:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v61, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v123 = v188;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v124 = v162;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v123, v162, type metadata accessor for Promptkit_Wireformat_SpecialToken);
        v96 = specialized static Promptkit_Wireformat_SpecialToken.== infix(_:_:)(v61, v124);
        v125 = type metadata accessor for Promptkit_Wireformat_SpecialToken;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v124, type metadata accessor for Promptkit_Wireformat_SpecialToken);
        v97 = v61;
        goto LABEL_63;
      }

      v84 = type metadata accessor for Promptkit_Wireformat_SpecialToken;
      v85 = v61;
      goto LABEL_85;
    case 6u:
      v86 = v179;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v179, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v131 = v188;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
        goto LABEL_84;
      }

      v88 = v164;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v131, v164, type metadata accessor for Promptkit_Wireformat_BindableVariable);
      v132 = v86[1];
      v133 = v88[1];
      if (v132)
      {
        if (!v133 || (*v86 != *v88 || v132 != v133) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      else if (v133)
      {
        goto LABEL_115;
      }

      v148 = *(v154 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v93 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
        goto LABEL_112;
      }

LABEL_115:
      v138 = type metadata accessor for Promptkit_Wireformat_BindableVariable;
      goto LABEL_116;
    case 7u:
      v86 = v174;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v174, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v117 = v188;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v105 = v163;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v117, v163, type metadata accessor for Promptkit_Wireformat_CustomData);
        v96 = specialized static Promptkit_Wireformat_CustomData.== infix(_:_:)(v86, v105);
        v106 = type metadata accessor for Promptkit_Wireformat_CustomData;
        goto LABEL_62;
      }

      v137 = type metadata accessor for Promptkit_Wireformat_CustomData;
      goto LABEL_84;
    case 8u:
      v86 = v178;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v178, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v135 = v188;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_ToolResults;
        goto LABEL_84;
      }

      v88 = v165;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v135, v165, type metadata accessor for Promptkit_Wireformat_ToolResults);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5(*v86, *v88))
      {
        v136 = *(v157 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v93 = type metadata accessor for Promptkit_Wireformat_ToolResults;
          goto LABEL_112;
        }
      }

      v138 = type metadata accessor for Promptkit_Wireformat_ToolResults;
      goto LABEL_116;
    case 9u:
      v86 = v180;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v180, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v107 = v188;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
        goto LABEL_84;
      }

      v108 = v167;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v107, v167, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ToolCallV_Tt1g5(*v86, *v108))
      {
        v109 = *(v158 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        LOBYTE(v109) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v108, type metadata accessor for Promptkit_Wireformat_ToolCalls);
        if (v109)
        {
          v110 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
          goto LABEL_52;
        }
      }

      else
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v108, type metadata accessor for Promptkit_Wireformat_ToolCalls);
      }

      v142 = type metadata accessor for Promptkit_Wireformat_ToolCalls;
      goto LABEL_98;
    case 0xAu:
      v86 = v175;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v175, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v134 = v188;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v105 = v166;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v134, v166, type metadata accessor for Promptkit_Wireformat_ImageData);
        v96 = specialized static Promptkit_Wireformat_ImageData.== infix(_:_:)(v86, v105);
        v106 = type metadata accessor for Promptkit_Wireformat_ImageData;
        goto LABEL_62;
      }

      v137 = type metadata accessor for Promptkit_Wireformat_ImageData;
      goto LABEL_84;
    case 0xBu:
      v86 = v176;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v176, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v94 = v188;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v95 = v168;
        outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v94, v168, type metadata accessor for Promptkit_Wireformat_ImageSurface);
        v96 = specialized static Promptkit_Wireformat_ImageSurface.== infix(_:_:)(v86, v95);
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v95, type metadata accessor for Promptkit_Wireformat_ImageSurface);
        v97 = v86;
        v98 = type metadata accessor for Promptkit_Wireformat_ImageSurface;
        goto LABEL_64;
      }

      v137 = type metadata accessor for Promptkit_Wireformat_ImageSurface;
      goto LABEL_84;
    case 0xCu:
      v86 = v177;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v177, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v104 = v188;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData;
        goto LABEL_84;
      }

      v105 = v169;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v104, v169, type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData);
      v96 = specialized static Promptkit_Wireformat_ImageEmbeddingData.== infix(_:_:)(v86, v105);
      v106 = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData;
LABEL_62:
      v125 = v106;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v105, v106);
      v97 = v86;
LABEL_63:
      v98 = v125;
LABEL_64:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v97, v98);
LABEL_65:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v80, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      return v96 & 1;
    case 0xDu:
      v86 = v181;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v181, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v126 = v188;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_Prompts;
        goto LABEL_84;
      }

      v127 = v170;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v126, v170, type metadata accessor for Promptkit_Wireformat_Prompts);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration27Promptkit_Wireformat_PromptV_Tt1g5(*v86, *v127))
      {
        v128 = *(v159 + 20);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        LOBYTE(v128) = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v127, type metadata accessor for Promptkit_Wireformat_Prompts);
        if (v128)
        {
          v110 = type metadata accessor for Promptkit_Wireformat_Prompts;
LABEL_52:
          v129 = v110;
          v130 = v86;
          goto LABEL_113;
        }
      }

      else
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v127, type metadata accessor for Promptkit_Wireformat_Prompts);
      }

      v142 = type metadata accessor for Promptkit_Wireformat_Prompts;
LABEL_98:
      v144 = v142;
      v145 = v86;
      goto LABEL_117;
    case 0xEu:
      v86 = v182;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v182, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v91 = v188;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
        goto LABEL_84;
      }

      v88 = v171;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v91, v171, type metadata accessor for Promptkit_Wireformat_PreprocessedImageData);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*v86, *v88) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(v86[1], v88[1]))
      {
        v92 = *(v152 + 24);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v93 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
          goto LABEL_112;
        }
      }

      v138 = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData;
      goto LABEL_116;
    case 0xFu:
      v86 = v184;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v184, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v113 = v188;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
        goto LABEL_84;
      }

      v88 = v172;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v113, v172, type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder);
      v114 = v86[1];
      v115 = v88[1];
      if (v114)
      {
        if (!v115 || (*v86 != *v88 || v114 != v115) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      else if (v115)
      {
        goto LABEL_106;
      }

      v147 = *(v155 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v93 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
        goto LABEL_112;
      }

LABEL_106:
      v138 = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder;
      goto LABEL_116;
    case 0x10u:
      v86 = v186;
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v186, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v87 = v188;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v137 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_84:
        v84 = v137;
        v85 = v86;
        goto LABEL_85;
      }

      v88 = v173;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v87, v173, type metadata accessor for Promptkit_Wireformat_SelfAttention);
      v89 = v86[1];
      v90 = v88[1];
      if (v89)
      {
        if (!v90 || (*v86 != *v88 || v89 != v90) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (v90)
      {
        goto LABEL_102;
      }

      v146 = *(v156 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v93 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_112:
        v149 = v93;
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v88, v93);
        v130 = v86;
        v129 = v149;
        goto LABEL_113;
      }

LABEL_102:
      v138 = type metadata accessor for Promptkit_Wireformat_SelfAttention;
LABEL_116:
      v150 = v138;
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v88, v138);
      v145 = v86;
      v144 = v150;
      goto LABEL_117;
    default:
      outlined init with copy of Promptkit_Wireformat_VariantEnum(v80, v75, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v83 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v84 = type metadata accessor for Promptkit_Wireformat_Prompt;
        v85 = v75;
LABEL_85:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v85, v84);
LABEL_86:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v80, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumO_ACtMR);
LABEL_119:
        v96 = 0;
        return v96 & 1;
      }

      v139 = v160;
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(v83, v160, type metadata accessor for Promptkit_Wireformat_Prompt);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(*v75, *v139) & 1) == 0)
      {
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v139, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_108:
        v144 = type metadata accessor for Promptkit_Wireformat_Prompt;
        v145 = v75;
LABEL_117:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v145, v144);
LABEL_118:
        outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v80, type metadata accessor for Promptkit_Wireformat_ValueEnum);
        goto LABEL_119;
      }

      v140 = *(v153 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage();
      v141 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v139, type metadata accessor for Promptkit_Wireformat_Prompt);
      if ((v141 & 1) == 0)
      {
        goto LABEL_108;
      }

      v129 = type metadata accessor for Promptkit_Wireformat_Prompt;
      v130 = v75;
LABEL_113:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v130, v129);
LABEL_114:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v80, type metadata accessor for Promptkit_Wireformat_ValueEnum);
      v96 = 1;
      return v96 & 1;
  }
}

uint64_t specialized static Promptkit_Wireformat_VariantEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Promptkit_Wireformat_VariantEnum(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a1, &v31 - v22, type metadata accessor for Promptkit_Wireformat_VariantEnum);
  outlined init with copy of Promptkit_Wireformat_VariantEnum(a2, &v23[v24], type metadata accessor for Promptkit_Wireformat_VariantEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v23, v16, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v23[v24], v7, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      v25 = specialized static Promptkit_Wireformat_VersionedChatPrompt.== infix(_:_:)(v16, v7);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v7, type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt);
      v26 = v16;
      v27 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt;
LABEL_9:
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v26, v27);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v23, type metadata accessor for Promptkit_Wireformat_VariantEnum);
      return v25 & 1;
    }

    v28 = type metadata accessor for Promptkit_Wireformat_VersionedChatPrompt;
    v29 = v16;
  }

  else
  {
    outlined init with copy of Promptkit_Wireformat_VariantEnum(v23, v18, type metadata accessor for Promptkit_Wireformat_VariantEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(&v23[v24], v11, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      v25 = specialized static Promptkit_Wireformat_VersionedCompletionPrompt.== infix(_:_:)(v18, v11);
      outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v11, type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt);
      v26 = v18;
      v27 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Promptkit_Wireformat_VersionedCompletionPrompt;
    v29 = v18;
  }

  outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(v29, v28);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v23, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMd, &_s15TokenGeneration32Promptkit_Wireformat_VariantEnumO_ACtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined destroy of Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Promptkit_Wireformat_VersionedChatPrompt(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Promptkit_Wireformat_VariantEnum(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage()
{
  result = lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage;
  if (!lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage)
  {
    type metadata accessor for UnknownStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_StringConstraintStartsWith(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ToolDefinitionTypeEnum()
{
  result = type metadata accessor for Promptkit_Wireformat_ToolDefinitionFunction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Promptkit_Wireformat_ImageGenerationParameters(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_FileGenerationParameters(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_24Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatMessagePromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_25Tm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_StringConstraintEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Promptkit_Wireformat_ChatMessageRoleEnum()
{
  result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptSystem(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptUser(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptAssistant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptTool(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Promptkit_Wireformat_ChatMessageRolePromptCustom(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_42Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedChatPromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ChatPromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_43Tm);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ToolCallContentEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_51Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ToolCallContentEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_52Tm);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ToolResultContentEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_60Tm);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ToolResultContentEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_ToolResultText(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_61Tm);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ValueEnum()
{
  result = type metadata accessor for Promptkit_Wireformat_Prompt(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Google_Protobuf_Timestamp();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Promptkit_Wireformat_SpecialToken(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Promptkit_Wireformat_BindableVariable(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Promptkit_Wireformat_CustomData(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Promptkit_Wireformat_ToolResults(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Promptkit_Wireformat_ToolCalls(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Promptkit_Wireformat_ImageData(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Promptkit_Wireformat_ImageSurface(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Promptkit_Wireformat_ImageEmbeddingData(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Promptkit_Wireformat_Prompts(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Promptkit_Wireformat_PreprocessedImageData(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Promptkit_Wireformat_AttachmentPlaceholder(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Promptkit_Wireformat_SelfAttention(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
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

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1AB8379EC);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_VersionedCompletionPromptEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_CompletionPromptV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1AB837960);
}

uint64_t type metadata completion function for Promptkit_Wireformat_ResponseFormatKindEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1AB8379E8);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_PromptRequestVersionEnum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Promptkit_Wireformat_PromptRequestV1(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1AB83795C);
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_PromptComponentPrivacy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_PromptComponentPrivacy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_CompletionPromptV1()
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_PromptComponentValue], type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_42Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_43Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ChatPromptV1()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_VersionedChatMessagePrompt], type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_ChatPromptV1], type metadata accessor for Promptkit_Wireformat_ChatPromptV1);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_PromptComponentValue], type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for UnknownStorage();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMd, &_s15TokenGeneration42Promptkit_Wireformat_ChatMessageRolePromptVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMd, &_s15TokenGeneration27Promptkit_Wireformat_PromptVSgMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = type metadata accessor for UnknownStorage();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ChatMessagePromptV1()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ChatMessageRolePrompt?, type metadata accessor for Promptkit_Wireformat_ChatMessageRolePrompt, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_PromptComponent()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_PromptComponentValue?, type metadata accessor for Promptkit_Wireformat_PromptComponentValue, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_PromptComponentPrivacy?, &type metadata for Promptkit_Wireformat_PromptComponentPrivacy, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageEmbeddingData()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageEmbeddingEncoding?, &type metadata for Promptkit_Wireformat_ImageEmbeddingEncoding, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_PreprocessedImageData()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [Int32], MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageData()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageFormat?, type metadata accessor for Promptkit_Wireformat_ImageFormat, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageSurface()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_SelfAttention(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for String?(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageEmbeddingEncoding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata completion function for Promptkit_Wireformat_PromptComponentCustomData()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_SpecialToken()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ToolResult()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ToolResultContent?, type metadata accessor for Promptkit_Wireformat_ToolResultContent, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Prompt?, type metadata accessor for Promptkit_Wireformat_Prompt, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ToolCall()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ToolCallContent?, type metadata accessor for Promptkit_Wireformat_ToolCallContent, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration021Promptkit_Wireformat_B10SchemaEnumO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_GenerationSchemaEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_GenerationSchemaEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Promptkit_Wireformat_GenerationSchemaEnum(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_78Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_79Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaString()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_StringConstraint?, type metadata accessor for Promptkit_Wireformat_StringConstraint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaField()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_GenerationSchema?, type metadata accessor for Promptkit_Wireformat_GenerationSchema, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_196Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_197Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_373Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(v11 - 8);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = *(v12 + 48);
      v15 = a1 + *(a3 + 20);

      return v14(v15, a2, v13);
    }

    else
    {
      v16 = type metadata accessor for UnknownStorage();
      v17 = *(*(v16 - 8) + 48);
      v18 = a1 + *(a3 + 24);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_374Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_GenerationSchemaChoice()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_GenerationSchema?, type metadata accessor for Promptkit_Wireformat_GenerationSchema, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaKindObject()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_RecursiveSchemaField], type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaKindAnyOf()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_RecursiveSchema], type metadata accessor for Promptkit_Wireformat_RecursiveSchema, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_RecursiveSchemaField()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_RecursiveSchema?, type metadata accessor for Promptkit_Wireformat_RecursiveSchema, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ToolCallFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for String?(319, a4, MEMORY[0x1E69E6158], a5);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_JsonschemaEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaInteger(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for String?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaString()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaObject()
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchemaType?, type metadata accessor for Promptkit_Wireformat_JSONSchemaType, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UnknownStorage();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaProperty()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaArray()
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaDictionary()
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_JSONSchema?, type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_598Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_599Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_JSONSchemaAnyOf()
{
  type metadata accessor for [String : Promptkit_Wireformat_PromptComponentValue](319, &lazy cache variable for type metadata for [String : Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_JSONSchema], type metadata accessor for Promptkit_Wireformat_JSONSchema, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ImageGenerationParameters()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationSize?, type metadata accessor for Promptkit_Wireformat_ImageGenerationSize, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationShape?, type metadata accessor for Promptkit_Wireformat_ImageGenerationShape, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationDetail?, type metadata accessor for Promptkit_Wireformat_ImageGenerationDetail, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_ImageGenerationCount?, type metadata accessor for Promptkit_Wireformat_ImageGenerationCount, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UnknownStorage();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationSizeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationSizeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_703Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_704Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t getEnumTag for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Promptkit_Wireformat_ImageGenerationCountEnum(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_418Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(v11 - 8);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = *(v12 + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }

    else
    {
      v16 = type metadata accessor for UnknownStorage();
      v17 = *(*(v16 - 8) + 48);
      v18 = a1 + *(a3 + 28);

      return v17(v18, a2, v16);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_419Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for UnknownStorage();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ToolDefinitionFunction(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_301Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_302Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Promptkit_Wireformat_ResponseFormatGrammarDetails()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Promptkit_Wireformat_ChatMessageRolePromptSystem()
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_ToolDefinition], type metadata accessor for Promptkit_Wireformat_ToolDefinition, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for [Promptkit_Wireformat_Modality], type metadata accessor for Promptkit_Wireformat_Modality, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, &lazy cache variable for type metadata for Promptkit_Wireformat_Voice?, type metadata accessor for Promptkit_Wireformat_Voice, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_96Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for Promptkit_Wireformat_VersionedPromptRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for Promptkit_Wireformat_PromptRequestVersionEnum?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_747Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_748Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for Promptkit_Wireformat_FileGenerationParameters()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownStorage();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationDetailEnum and conformance Promptkit_Wireformat_ImageGenerationDetailEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationShapeEnum and conformance Promptkit_Wireformat_ImageGenerationShapeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageGenerationSizeEnum and conformance Promptkit_Wireformat_ImageGenerationSizeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_JsonschemaTypeEnum and conformance Promptkit_Wireformat_JsonschemaTypeEnum);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum()
{
  result = lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum;
  if (!lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Promptkit_Wireformat_ImageFormatEnum and conformance Promptkit_Wireformat_ImageFormatEnum);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Promptkit_Wireformat_ImageEmbeddingEncoding] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Promptkit_Wireformat_PromptRequestV1PromptVariant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMd, &_s15TokenGeneration036Promptkit_Wireformat_PromptRequestV1E7VariantVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TemplateOverrideConverter.flattenedPromptSegments(_:)()
{
  v87 = type metadata accessor for Prompt();
  v0 = *(v87 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v87);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v59 - v5;
  v64 = type metadata accessor for BindableVariable();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.Component.Value();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for Prompt.Component();
  v15 = *(v83 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Prompt.components.getter();
  v81 = *(result + 16);
  if (!v81)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19 = 0;
  v80 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v78 = v15 + 8;
  v79 = v15 + 16;
  v77 = (v11 + 88);
  v76 = *MEMORY[0x1E69C6318];
  v72 = *MEMORY[0x1E69C6328];
  v68 = *MEMORY[0x1E69C6320];
  v62 = *MEMORY[0x1E69C62E0];
  v61 = (v11 + 8);
  v75 = (v11 + 96);
  v60 = (v7 + 32);
  v59 = (v7 + 8);
  v85 = v0 + 16;
  v86 = (v0 + 8);
  v71 = (v0 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  v67 = v0;
  v70 = v6;
  v73 = result;
  v74 = v15;
  v21 = result;
  v66 = v10;
  v65 = v14;
  while (1)
  {
    if (v19 >= *(v21 + 16))
    {
      goto LABEL_61;
    }

    v22 = *(v15 + 72);
    v84 = v19;
    v24 = v82;
    v23 = v83;
    (*(v15 + 16))(v82, v80 + v22 * v19, v83);
    Prompt.Component.value.getter();
    (*(v15 + 8))(v24, v23);
    v25 = (*v77)(v14, v10);
    if (v25 == v76)
    {
      (*v75)(v14, v10);
      (*v71)(v6, v14, v87);
      result = static TemplateOverrideConverter.flattenedPromptSegments(_:)(v6);
      v26 = *(result + 16);
      v27 = *(v20 + 2);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_62;
      }

      v29 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v28 > *(v20 + 3) >> 1)
      {
        if (v27 <= v28)
        {
          v30 = v27 + v26;
        }

        else
        {
          v30 = v27;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v30, 1, v20);
        v20 = result;
      }

      v15 = v74;
      if (*(v29 + 16))
      {
        if ((*(v20 + 3) >> 1) - *(v20 + 2) < v26)
        {
          goto LABEL_64;
        }

        swift_arrayInitWithCopy();

        v21 = v73;
        if (v26)
        {
          v31 = *(v20 + 2);
          v32 = __OFADD__(v31, v26);
          v33 = v31 + v26;
          if (v32)
          {
            goto LABEL_65;
          }

          *(v20 + 2) = v33;
        }
      }

      else
      {

        v21 = v73;
        if (v26)
        {
          goto LABEL_63;
        }
      }

      result = (*v86)(v6, v87);
      goto LABEL_5;
    }

    if (v25 == v72)
    {
      break;
    }

    if (v25 == v68)
    {
      (*v75)(v14, v10);
      v48 = *v14;
      v49 = v14[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      v51 = *(v20 + 2);
      v50 = *(v20 + 3);
      if (v51 >= v50 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v51 + 1;
      v52 = &v20[24 * v51];
      *(v52 + 4) = v48;
      *(v52 + 5) = v49;
      v52[48] = 0;
      v6 = v70;
    }

    else
    {
      if (v25 != v62)
      {
        result = (*v61)(v14, v10);
        goto LABEL_5;
      }

      (*v75)(v14, v10);
      (*v60)(v63, v14, v64);
      v53 = BindableVariable.name.getter();
      v55 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v57 = *(v20 + 2);
      v56 = *(v20 + 3);
      if (v57 >= v56 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v20);
      }

      result = (*v59)(v63, v64);
      *(v20 + 2) = v57 + 1;
      v58 = &v20[24 * v57];
      *(v58 + 4) = v53;
      *(v58 + 5) = v55;
      v58[48] = 1;
      v0 = v67;
    }

LABEL_4:
    v21 = v73;
    v15 = v74;
LABEL_5:
    v19 = v84 + 1;
    if (v84 + 1 == v81)
    {

      return v20;
    }
  }

  (*v75)(v14, v10);
  v34 = *v14;
  v35 = *(*v14 + 16);
  if (!v35)
  {

    goto LABEL_5;
  }

  v36 = *(v0 + 80);
  v69 = *v14;
  v37 = v34 + ((v36 + 32) & ~v36);
  v38 = *(v0 + 72);
  v39 = *(v0 + 16);
  while (1)
  {
    v40 = v87;
    v39(v4, v37, v87);
    v41 = static TemplateOverrideConverter.flattenedPromptSegments(_:)(v4);
    result = (*v86)(v4, v40);
    v42 = *(v41 + 16);
    v43 = *(v20 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v44 <= *(v20 + 3) >> 1)
    {
      if (*(v41 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v45 = v43 + v42;
      }

      else
      {
        v45 = v43;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v45, 1, v20);
      v20 = result;
      if (*(v41 + 16))
      {
LABEL_34:
        if ((*(v20 + 3) >> 1) - *(v20 + 2) < v42)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        if (v42)
        {
          v46 = *(v20 + 2);
          v32 = __OFADD__(v46, v42);
          v47 = v46 + v42;
          if (v32)
          {
            goto LABEL_60;
          }

          *(v20 + 2) = v47;
        }

        goto LABEL_24;
      }
    }

    if (v42)
    {
      goto LABEL_58;
    }

LABEL_24:
    v37 += v38;
    if (!--v35)
    {

      v0 = v67;
      v6 = v70;
      v10 = v66;
      v14 = v65;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, uint64_t a7)
{
  v11 = a4;
  inited = a3;
  v13 = *(a1 + 16);
  if (v13 <= a7)
  {
LABEL_6:
    if ((a4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v7 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = 7;
    }

    if (4 * v7 < a6 >> 14)
    {
      goto LABEL_17;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_14:
      v17 = v8 | (v7 << 16);
      v19 = *(a5 + 2);
      v18 = *(a5 + 3);
      if (v19 >= v18 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, a5);
      }

      *(a5 + 2) = v19 + 1;
      v20 = &a5[32 * v19];
      *(v20 + 4) = a6;
      *(v20 + 5) = v17;
      *(v20 + 6) = a7;
      *(v20 + 7) = v13;
LABEL_17:
      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v22 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(a1, a2, inited, v11, a5, 0, v21);

      return v22;
    }

LABEL_33:
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    goto LABEL_14;
  }

  if (a7 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = 0;
  v15 = (a1 + 24 * a7 + 48);
  v16 = *(a1 + 16);
  while (*v15 == 1)
  {
    --v14;
    v15 += 24;
    if (a7 == --v16)
    {
      goto LABEL_6;
    }
  }

  v24 = *(v15 - 2);
  v7 = *(v15 - 1);
  outlined copy of TemplateOverrideConverter.Segment();
  v25 = specialized static TemplateOverrideConverter.findAllOccurrences(of:in:startingIndex:)(v24, v7, inited, v11, a6);
  outlined consume of TemplateOverrideConverter.Segment();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = a7 - v14;
    v8 = v26 + 40;
    v41 = -v27;
    v13 = -1;
    v39 = v11;
    v40 = v26;
    while (v41 + v13 != -1)
    {
      if (++v13 >= *(v26 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v29 = inited;
      v30 = *(v8 - 8);
      v45 = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration25TemplateOverrideConverterO27ProposedBindingVariableSpanVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABA1D930;
      *(inited + 32) = a6;
      v11 = (inited + 32);
      *(inited + 40) = v30;
      *(inited + 48) = a7;
      v31 = v28;
      *(inited + 56) = v28;
      v32 = *(a5 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v34 = *(a5 + 3) >> 1, v7 = a5, v34 <= v32))
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32 + 1, 1, a5);
        v34 = *(v7 + 24) >> 1;
      }

      v35 = *(v7 + 16);
      if (v34 <= v35)
      {
        goto LABEL_31;
      }

      v8 += 16;
      v36 = *(inited + 48);
      v37 = v7 + 32 * v35;
      *(v37 + 32) = *v11;
      *(v37 + 48) = v36;

      ++*(v7 + 16);
      v28 = v31;
      inited = v29;
      v38 = static TemplateOverrideConverter.convertRichVariableBindings(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentTargetStringStartIndex:currentOriginalPromptSegmentIndex:)(a1, a2, v29, v39, v7, v45, v31 + 1);

      v26 = v40;
      if (v38)
      {

        return v38;
      }
    }
  }

  return 0;
}

uint64_t static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10 <= a6)
  {
    if (!v10)
    {
      return static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(a2, v7);
    }

    v20 = 0;
    v21 = *(a1 + 16);
    v115 = a1 + 48;
    v117 = a5 + 32;
    v110 = v21;
    v112 = *(a5 + 16);
    while (1)
    {
      v23 = (v117 + 32 * v20);
      if (v23[1] >> 14 < *v23 >> 14)
      {
        goto LABEL_103;
      }

      v24 = v23[2];
      v25 = v23[3];
      isUniquelyReferenced_nonNull_native = String.subscript.getter();
      if (v25 < v24)
      {
        break;
      }

      if (v21 < v24)
      {
        goto LABEL_105;
      }

      if (v24 < 0)
      {
        goto LABEL_106;
      }

      if (v21 < v25)
      {
        goto LABEL_107;
      }

      v121 = v27;
      v123 = isUniquelyReferenced_nonNull_native;
      v125 = v28;
      v127 = v29;
      v30 = MEMORY[0x1E69E7CC0];
      if (v24 == v25)
      {
        goto LABEL_38;
      }

      v31 = v24;
LABEL_22:
      v32 = (v115 + 24 * v31);
      v33 = v31;
      do
      {
        if (v31 < v24 || v33 >= v25)
        {
LABEL_99:
          __break(1u);
LABEL_100:
          v100 = isUniquelyReferenced_nonNull_native;

          outlined consume of TemplateOverrideConverter.Segment();
          return v100;
        }

        if (*v32 != 1)
        {
          goto LABEL_114;
        }

        if (*(v7 + 16))
        {
          v34 = *(v32 - 2);
          v35 = *(v32 - 1);

          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
          if (v37)
          {
            v38 = (*(a7 + 56) + 16 * v36);
            v39 = v38[1];
            v107 = *v38;

            outlined consume of TemplateOverrideConverter.Segment();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
              v30 = isUniquelyReferenced_nonNull_native;
            }

            v21 = v110;
            v41 = *(v30 + 16);
            v40 = *(v30 + 24);
            if (v41 >= v40 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v30);
              v30 = isUniquelyReferenced_nonNull_native;
            }

            v31 = v33 + 1;
            *(v30 + 16) = v41 + 1;
            v42 = v30 + 16 * v41;
            *(v42 + 32) = v107;
            *(v42 + 40) = v39;
            v63 = v25 - 1 == v33;
            v7 = a7;
            v10 = v112;
            if (v63)
            {
              goto LABEL_38;
            }

            goto LABEL_22;
          }

          isUniquelyReferenced_nonNull_native = outlined consume of TemplateOverrideConverter.Segment();
          v7 = a7;
        }

        ++v33;
        v32 += 24;
      }

      while (v25 != v33);
      v21 = v110;
      v10 = v112;
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;

      if ((v45 & 0x2000000000000000) != 0)
      {
        v46 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v46 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v125 == v43 && v127 == v45 && !(v123 >> 16) && v121 >> 16 == v46)
      {
      }

      else
      {
        v22 = _stringCompareInternal(_:_:_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      ++v20;
      v7 = a7;
      if (v20 == v10)
      {
        return static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(a2, v7);
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v11 = a6;
  if (a6 < 0)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v12 = (a5 + 32 * a6);
  v13 = v12[6];
  v14 = v12[7];
  if (v14 < v13)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v13 < 0)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v15 = *(a1 + 16);
  if (v15 < v13 || v15 < v14)
  {
    goto LABEL_112;
  }

  if (v13 == v14)
  {

    v18 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v17, a2, a3, a4, v8, v11 + 1, v7);

    return v18;
  }

  if (v12[5] >> 14 < v12[4] >> 14)
  {
LABEL_113:
    __break(1u);
    while (1)
    {
LABEL_114:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_115:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  v111 = a1 + 32;

  v47 = String.subscript.getter();
  v113 = v48;
  v116 = v49;
  v108 = v50;
  v109 = v47;
  v101 = v50 >> 16;
  v102 = v47 >> 16;
  v51 = a7;
  v105 = v8;
  v106 = v9;
  v103 = v14;
  v104 = v11;
  while (1)
  {
    if (v13 >= v14)
    {
      goto LABEL_108;
    }

    v53 = v111 + 24 * v13;
    if (*(v53 + 16) != 1)
    {
      goto LABEL_114;
    }

    v55 = *v53;
    v54 = *(v53 + 8);
    v56 = v51[2];

    if (!v56)
    {
      break;
    }

    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v54);
    v51 = a7;
    if (v58)
    {
      v59 = (*(a7 + 56) + 16 * v57);
      v60 = *v59;
      v61 = v59[1];
      v62 = (v61 & 0x2000000000000000) != 0 ? HIBYTE(v61) & 0xF : v60 & 0xFFFFFFFFFFFFLL;
      v63 = v60 == v113 && v61 == v116;
      v64 = v63 && v102 == 0;
      v65 = v64 && v62 == v101;
      if (v65 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v9, a2, a3, a4, v8, v11 + 1, a7);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_100;
        }
      }
    }

    if (!*(a7 + 16))
    {
      break;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v55, v54);
    v51 = a7;
    if ((v66 & 1) == 0)
    {
      break;
    }

    outlined consume of TemplateOverrideConverter.Segment();
LABEL_50:
    if (++v13 == v14)
    {

      return 0;
    }
  }

  v122 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  v67 = v51;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABA1D930;
  *(inited + 32) = v55;
  *(inited + 40) = v54;
  *(inited + 48) = MEMORY[0x1AC5A5B60](v109, v108, v113, v116);
  *(inited + 56) = v69;
  v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(inited + 32, &_sSS_SStMd, &_sSS_SStMR);

  v71 = swift_isUniquelyReferenced_nonNull_native();
  v130 = v67;
  v72 = v70 + 64;
  v73 = -1 << *(v70 + 32);
  if (-v73 < 64)
  {
    v74 = ~(-1 << -v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v70 + 64);
  v118 = -1 << *(v70 + 32);
  v76 = (63 - v73) >> 6;
  v124 = v70;

  v77 = 0;
  v78 = v67;
LABEL_79:
  if (v75)
  {
    v128 = v71;
    v81 = v77;
    goto LABEL_86;
  }

  v82 = v77;
  while (1)
  {
    v81 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
      goto LABEL_99;
    }

    if (v81 >= v76)
    {
      break;
    }

    v75 = *(v72 + 8 * v81);
    ++v82;
    if (v75)
    {
      v128 = v71;
LABEL_86:
      v83 = (v81 << 10) | (16 * __clz(__rbit64(v75)));
      v84 = (*(v124 + 48) + v83);
      v86 = *v84;
      v85 = v84[1];
      v87 = (*(v124 + 56) + v83);
      v88 = v87[1];
      v126 = *v87;

      v90 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
      v91 = v78[2];
      v92 = (v89 & 1) == 0;
      isUniquelyReferenced_nonNull_native = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v93 = v89;
      if (v78[3] >= isUniquelyReferenced_nonNull_native)
      {
        if ((v128 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(isUniquelyReferenced_nonNull_native, v128 & 1);
        isUniquelyReferenced_nonNull_native = specialized __RawDictionaryStorage.find<A>(_:)(v86, v85);
        if ((v93 & 1) != (v94 & 1))
        {
          goto LABEL_115;
        }

        v90 = isUniquelyReferenced_nonNull_native;
      }

      v75 &= v75 - 1;
      v78 = v130;
      if (v93)
      {

        v79 = (v130[7] + 16 * v90);
        v80 = v79[1];
        *v79 = v126;
        v79[1] = v88;

        goto LABEL_78;
      }

      v130[(v90 >> 6) + 8] |= 1 << v90;
      v95 = (v130[6] + 16 * v90);
      *v95 = v86;
      v95[1] = v85;
      v96 = (v130[7] + 16 * v90);
      *v96 = v126;
      v96[1] = v88;
      v97 = v130[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_102;
      }

      v130[2] = v99;
LABEL_78:
      v71 = 1;
      v77 = v81;
      goto LABEL_79;
    }
  }

  outlined consume of [String : String].Iterator._Variant();

  v11 = v104;
  v8 = v105;
  v9 = v106;
  v52 = static TemplateOverrideConverter.richVariableBindingsFilling(originalPromptSegments:originalRichVariableBindings:targetString:proposedBindingVariableSpans:currentProposedVariableSpanIndex:currentBoundVariableToReplacedString:)(v106, a2, a3, a4, v105, v104 + 1, v78);

  v51 = a7;
  v13 = v122;
  v14 = v103;
  if (!v52)
  {
    goto LABEL_50;
  }

  return v52;
}

uint64_t static TemplateOverrideConverter.finalFilledRichVariableBindings(originalRichVariableBindings:boundVariableToReplacedString:)(uint64_t a1, uint64_t a2)
{
  v148 = a2;
  v167 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v3 = *(v167 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content.Text();
  v6 = *(v164 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v9 = *(v173 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v165 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v144 = &v134 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v134 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v134 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v153 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v149 = (&v134 - v27);
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v29 = *(a1 + 64);
  v150 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v139 = (v30 + 63) >> 6;
  v151 = (v13 + 16);
  v158 = (v13 + 32);
  v170 = (v3 + 88);
  v171 = v9 + 16;
  v169 = *MEMORY[0x1E69DA8A8];
  v135 = v9;
  v33 = (v9 + 8);
  v34 = v28;
  v168 = v33;
  v161 = (v3 + 96);
  v162 = (v3 + 8);
  v159 = (v6 + 8);
  v160 = (v6 + 32);
  v147 = (v13 + 8);
  v136 = v13 + 40;
  v146 = a1;

  v35 = 0;
  *&v36 = 136315138;
  v140 = v36;
  v155 = v21;
  v134 = v12;
  v141 = v13;
  while (1)
  {
    v157 = v34;
    if (!v32)
    {
      break;
    }

    v38 = v35;
LABEL_15:
    v156 = (v32 - 1) & v32;
    v42 = __clz(__rbit64(v32)) | (v38 << 6);
    v43 = (*(v146 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = v152;
    (*(v13 + 16))(v152, *(v146 + 56) + *(v13 + 72) * v42, v12);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
    v48 = *(v47 + 48);
    v49 = v153;
    *v153 = v45;
    *(v49 + 1) = v44;
    v41 = v49;
    (*(v13 + 32))(&v49[v48], v46, v12);
    (*(*(v47 - 8) + 56))(v41, 0, 1, v47);

LABEL_16:
    v50 = v149;
    outlined init with take of (key: String, value: PromptTemplateInfo.RichVariableBinding)?(v41, v149);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {

      return v157;
    }

    v52 = *v50;
    v53 = v50[1];
    v54 = *v158;
    (*v158)(v21, v50 + *(v51 + 48), v12);
    v55 = v148;
    if (*(v148 + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53), (v57 & 1) != 0))
    {
      v143 = v52;
      v58 = (*(v55 + 56) + 16 * v56);
      v59 = v58[1];
      v145 = *v58;
      v142 = v59;

      v60 = PromptTemplateInfo.RichVariableBinding.components.getter();
      v61 = *(v60 + 16);
      if (v61)
      {
        v138 = v53;
        v62 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v137 = v60;
        v63 = v60 + v62;
        v172 = *(v135 + 72);
        v64 = *(v135 + 16);
        v65 = MEMORY[0x1E69E7CC0];
        v67 = v166;
        v66 = v167;
        v68 = v173;
        v69 = v165;
        v64(v165, v60 + v62, v173);
        while (1)
        {
          PromptTemplateInfo.RichVariableBinding.Component.content.getter();
          v70 = (*v170)(v67, v66);
          if (v70 == v169)
          {
            (*v161)(v67, v66);
            v72 = v163;
            v71 = v164;
            (*v160)(v163, v67, v164);
            v73 = PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter();
            v75 = v74;
            (*v159)(v72, v71);
            (*v168)(v69, v173);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
            }

            v77 = *(v65 + 2);
            v76 = *(v65 + 3);
            if (v77 >= v76 >> 1)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v65);
            }

            *(v65 + 2) = v77 + 1;
            v78 = &v65[16 * v77];
            *(v78 + 4) = v73;
            *(v78 + 5) = v75;
            v67 = v166;
            v66 = v167;
            v68 = v173;
            v69 = v165;
          }

          else
          {
            (*v168)(v69, v68);
            (*v162)(v67, v66);
          }

          v63 += v172;
          if (!--v61)
          {
            break;
          }

          v64(v69, v63, v68);
        }

        v12 = v134;
        v21 = v155;
        v53 = v138;
      }

      else
      {

        v65 = MEMORY[0x1E69E7CC0];
      }

      v174 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v104 = BidirectionalCollection<>.joined(separator:)();
      v106 = v105;

      v107 = v104 == v145;
      v13 = v141;
      v32 = v156;
      v108 = v142;
      if (v107 && v106 == v142)
      {

        goto LABEL_52;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v109)
      {
LABEL_52:

        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        __swift_project_value_buffer(v110, static Log.prompt);

        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v174 = v114;
          *v113 = v140;
          v115 = v143;
          *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v53, &v174);
          _os_log_impl(&dword_1AB828000, v111, v112, "TemplateOverrideConverter: Variable %s not modified.", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          v116 = v114;
          v21 = v155;
          MEMORY[0x1AC5A6CD0](v116, -1, -1);
          MEMORY[0x1AC5A6CD0](v113, -1, -1);

          v117 = v157;
        }

        else
        {

          v117 = v157;
          v115 = v143;
        }

        v118 = v152;
        (*v151)(v152, v21, v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v174 = v117;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, v115, v53, isUniquelyReferenced_nonNull_native);

        (*v147)(v21, v12);
        v34 = v174;
        v13 = v141;
      }

      else
      {
        if (one-time initialization token for prompt != -1)
        {
          swift_once();
        }

        v120 = type metadata accessor for Logger();
        __swift_project_value_buffer(v120, static Log.prompt);

        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v174 = v124;
          *v123 = v140;
          *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v53, &v174);
          _os_log_impl(&dword_1AB828000, v121, v122, "TemplateOverrideConverter: Replace variable %s's string components with modified string value. Attachments remain the same.", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v124);
          v125 = v124;
          v21 = v155;
          MEMORY[0x1AC5A6CD0](v125, -1, -1);
          v126 = v123;
          v108 = v142;
          MEMORY[0x1AC5A6CD0](v126, -1, -1);
        }

        v127 = v157;
        v128 = v152;
        static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)(v145, v108, v152);

        v129 = swift_isUniquelyReferenced_nonNull_native();
        v174 = v127;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v128, v143, v53, v129);

        (*v147)(v21, v12);
        v34 = v174;
      }
    }

    else
    {
      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Log.prompt);

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = v12;
        v83 = v13;
        v84 = v52;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v174 = v86;
        *v85 = v140;
        *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v53, &v174);
        _os_log_impl(&dword_1AB828000, v80, v81, "TemplateOverrideConverter: Replace variable %s's string components with an empty string as it was unfilled.", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x1AC5A6CD0](v86, -1, -1);
        v87 = v85;
        v52 = v84;
        v13 = v83;
        v12 = v82;
        MEMORY[0x1AC5A6CD0](v87, -1, -1);
      }

      v88 = v157;
      v89 = v144;
      static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)(0, 0xE000000000000000, v144);
      v54(v154, v89, v12);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v174 = v88;
      v91 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
      v93 = *(v88 + 16);
      v94 = (v92 & 1) == 0;
      v95 = __OFADD__(v93, v94);
      v96 = v93 + v94;
      if (v95)
      {
        goto LABEL_65;
      }

      v97 = v92;
      if (*(v88 + 24) >= v96)
      {
        if ((v90 & 1) == 0)
        {
          v130 = v13;
          v131 = v52;
          v132 = v91;
          specialized _NativeDictionary.copy()();
          v91 = v132;
          v52 = v131;
          v13 = v130;
        }

        v21 = v155;
        if ((v97 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_4:
        v37 = v91;

        v34 = v174;
        (*(v13 + 40))(v174[7] + *(v13 + 72) * v37, v154, v12);
        (*(v13 + 8))(v21, v12);
        v32 = v156;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, v90);
        v91 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
        if ((v97 & 1) != (v98 & 1))
        {
          goto LABEL_67;
        }

        v21 = v155;
        if (v97)
        {
          goto LABEL_4;
        }

LABEL_42:
        v99 = v52;
        v34 = v174;
        v174[(v91 >> 6) + 8] |= 1 << v91;
        v100 = (v34[6] + 16 * v91);
        *v100 = v99;
        v100[1] = v53;
        v54((v34[7] + *(v13 + 72) * v91), v154, v12);
        (*(v13 + 8))(v21, v12);
        v101 = v34[2];
        v95 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v95)
        {
          goto LABEL_66;
        }

        v34[2] = v102;
        v32 = v156;
      }
    }
  }

  if (v139 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v139;
  }

  v40 = v39 - 1;
  v41 = v153;
  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v139)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetMR);
      (*(*(v103 - 8) + 56))(v41, 1, 1, v103);
      v156 = 0;
      v35 = v40;
      goto LABEL_16;
    }

    v32 = *(v150 + 8 * v38);
    ++v35;
    if (v32)
    {
      v35 = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static TemplateOverrideConverter.replaceStringValuesInRichVariableBinding(richVariableBinding:targetString:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v59 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v46 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = v43 - v10;
  v11 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v61 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v47 = v43 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - v18;
  result = PromptTemplateInfo.RichVariableBinding.components.getter();
  v21 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v63 = v19;
    v43[1] = a1;
    v43[2] = a2;
    v45 = a3;
    v48 = 0;
    v51 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v55 = result + v51;
    v54 = (v6 + 88);
    v57 = *MEMORY[0x1E69DA8A8];
    v52 = (v12 + 8);
    v53 = (v6 + 8);
    v50 = (v12 + 32);
    v43[0] = v6 + 104;
    v44 = v22 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    v49 = v22;
    v56 = v12;
    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      v25 = v23;
      v26 = v21;
      v27 = *(v12 + 72);
      v62 = v24 + 1;
      v60 = v27;
      v28 = *(v12 + 16);
      v29 = v63;
      v28(v63, v55 + v27 * v24, v11);
      v30 = v11;
      v31 = v58;
      PromptTemplateInfo.RichVariableBinding.Component.content.getter();
      v32 = v59;
      v33 = (*v54)(v31, v59);
      (*v53)(v31, v32);
      if (v33 == v57)
      {
        v23 = v25;
        if (v48)
        {
          v11 = v30;
          result = (*v52)(v63, v30);
          v48 = 1;
          v12 = v56;
          v21 = v26;
          v38 = v62;
          if (v44 == v24)
          {
            goto LABEL_20;
          }
        }

        else
        {

          v39 = v46;
          PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)();
          (*v43[0])(v39, v57, v59);
          PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v11 = v30;
          v21 = v26;
          v38 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
          }

          v42 = v23[2];
          v41 = v23[3];
          v12 = v56;
          if (v42 >= v41 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v23);
          }

          (*v52)(v63, v11);
          v23[2] = v42 + 1;
          result = (*v50)(v23 + v51 + v42 * v60, v47, v11);
          v48 = 1;
          if (v44 == v24)
          {
            goto LABEL_20;
          }
        }

        v24 = v38;
      }

      else
      {
        v28(v61, v29, v30);
        v23 = v25;
        v11 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
        }

        v12 = v56;
        v21 = v26;
        v34 = v62;
        v35 = v60;
        v37 = v23[2];
        v36 = v23[3];
        if (v37 >= v36 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v23);
        }

        (*v52)();
        v23[2] = v37 + 1;
        result = (*v50)(v23 + v51 + v37 * v35, v61, v11);
        v24 = v34;
        if (v49 == v34)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return PromptTemplateInfo.RichVariableBinding.init(components:)();
  }

  return result;
}

uint64_t specialized static TemplateOverrideConverter.findAllOccurrences(of:in:startingIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v27 = a1;
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v26 - v11;
  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v29 = a3;
  v30 = a4;
  v14 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v26[0] = 4 * v13;
  if (4 * v13 < a5 >> 14)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v26[1] = v14 | (v13 << 16);
    v15 = type metadata accessor for Locale();
    v16 = MEMORY[0x1E69E7CC0];
    v17 = *(*(v15 - 8) + 56);
    while (1)
    {
      v33 = v29;
      v34 = v30;
      v31 = v27;
      v32 = v28;
      v17(v12, 1, 1, v15);
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.range<A>(of:options:range:locale:)();
      v20 = v19;
      v22 = v21;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v22)
      {
        return v16;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v18;
      *(v25 + 40) = v20;
      if (v26[0] < v20 >> 14)
      {
        __break(1u);
        goto LABEL_15;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: PromptTemplateInfo.RichVariableBinding)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMd, &_sSS3key_19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TemplateOverrideConverter.Segment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TemplateOverrideConverter.Segment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TemplateOverrideConverter.ProposedBindingVariableSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemplateOverrideConverter.ProposedBindingVariableSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError()
{
  result = lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError;
  if (!lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError;
  if (!lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TemplateOverrideConverterError and conformance TemplateOverrideConverterError);
  }

  return result;
}

uint64_t one-time initialization function for samplingParametersKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.samplingParametersKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.samplingParametersKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for draftCacheKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for grammarKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.grammarKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.grammarKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for partialGrammarKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.partialGrammarKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.partialGrammarKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for documentsKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for grammarIdentifierKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.grammarIdentifierKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.grammarIdentifierKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for schemaIdentifierKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.schemaIdentifierKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaIdentifierKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = *(a1 + 144);
  v38 = *(a1 + 160);
  v39 = v1;
  v3 = *(a1 + 176);
  v40 = *(a1 + 192);
  v4 = *(a1 + 112);
  v5 = *(a1 + 80);
  v34 = *(a1 + 96);
  v35 = v4;
  v6 = *(a1 + 112);
  v7 = *(a1 + 144);
  v36 = *(a1 + 128);
  v37 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 16);
  v30 = *(a1 + 32);
  v31 = v8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v11;
  v12 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v12;
  v25 = v38;
  v26 = v3;
  v27 = *(a1 + 192);
  v21 = v34;
  v22 = v6;
  v23 = v36;
  v24 = v2;
  v17 = v30;
  v18 = v10;
  v19 = v32;
  v20 = v5;
  v41 = *(a1 + 208);
  v28 = *(a1 + 208);
  v15 = v29[0];
  v16 = v9;
  outlined init with copy of SamplingParameters(v29, v42);
  SamplingParametersEnvelope.init(sealing:)(&v15, v42);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v13, static GenerativeConfigurationKey.samplingParametersKey);
  v25 = v42[10];
  v26 = v42[11];
  v27 = v42[12];
  v28 = v43;
  v21 = v42[6];
  v22 = v42[7];
  v23 = v42[8];
  v24 = v42[9];
  v17 = v42[2];
  v18 = v42[3];
  v19 = v42[4];
  v20 = v42[5];
  v15 = v42[0];
  v16 = v42[1];
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
  return outlined destroy of SamplingParametersEnvelope(v42);
}

unint64_t lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope()
{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope);
  }

  return result;
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMd, &_s16GenerativeModels12OverrideHintOy15TokenGeneration18SamplingParametersVGMR);
  OverrideHint.value.getter();
  v2[10] = v14;
  v2[11] = v15;
  v2[12] = v16;
  v3 = v17;
  v2[6] = v10;
  v2[7] = v11;
  v2[8] = v12;
  v2[9] = v13;
  v2[2] = v6;
  v2[3] = v7;
  v2[4] = v8;
  v2[5] = v9;
  v2[0] = v4;
  v2[1] = v5;
  SamplingParametersEnvelope.init(sealing:)(v2, v18);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.samplingParametersKey);
  v14 = v18[10];
  v15 = v18[11];
  v16 = v18[12];
  v17 = v19;
  v10 = v18[6];
  v11 = v18[7];
  v12 = v18[8];
  v13 = v18[9];
  v6 = v18[2];
  v7 = v18[3];
  v8 = v18[4];
  v9 = v18[5];
  v4 = v18[0];
  v5 = v18[1];
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
  return outlined destroy of SamplingParametersEnvelope(v18);
}

void GenerativeConfigurationProtocol.samplingParameters.getter(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v60 = a3;
  v57 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v55 = *(v57 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for BindableConfiguration();
  v124 = *(v12 - 8);
  v13 = *(v124 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v52 - v16;
  v17 = type metadata accessor for GenerativeConfigurationKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for samplingParametersKey != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, static GenerativeConfigurationKey.samplingParametersKey);
  v64 = v18;
  v65 = v17;
  (*(v18 + 16))(v21, v22, v17);
  v23 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v23);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  v24 = v124;
  if ((*(v124 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    v106 = v92;
    v107 = v93;
    v108 = v94;
    v102 = v88;
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v98 = v84;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v96 = v82;
    v97 = v83;
    v120 = v92;
    v121 = v93;
    v122 = v94;
    v116 = v88;
    v117 = v89;
    v118 = v90;
    v119 = v91;
    v112 = v84;
    v113 = v85;
    v114 = v86;
    v115 = v87;
    v109 = v95;
    v123 = v95;
    v110 = v82;
    v111 = v83;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(&v110) == 1)
    {
      (*(v64 + 8))(v21, v65);
      _s15TokenGeneration18SamplingParametersVSgWOi0_(&v68);
    }

    else
    {
      v78 = v120;
      v79 = v121;
      v80 = v122;
      v81 = v123;
      v74 = v116;
      v75 = v117;
      v76 = v118;
      v77 = v119;
      v70 = v112;
      v71 = v113;
      v72 = v114;
      v73 = v115;
      v68 = v110;
      v69 = v111;
      v39 = SamplingParametersEnvelope.unseal()(v66);
      (*(v64 + 8))(v21, v65, v39);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v96, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMd, &_s15TokenGeneration26SamplingParametersEnvelopeVSgMR);
      v78 = v66[10];
      v79 = v66[11];
      v80 = v66[12];
      v81 = v67;
      v74 = v66[6];
      v75 = v66[7];
      v76 = v66[8];
      v77 = v66[9];
      v70 = v66[2];
      v71 = v66[3];
      v72 = v66[4];
      v73 = v66[5];
      v68 = v66[0];
      v69 = v66[1];
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest(&v68);
    }

    v40 = v79;
    v32 = v60;
    *(v60 + 160) = v78;
    *(v32 + 176) = v40;
    *(v32 + 192) = v80;
    *(v32 + 208) = v81;
    v41 = v75;
    *(v32 + 96) = v74;
    *(v32 + 112) = v41;
    v42 = v77;
    *(v32 + 128) = v76;
    *(v32 + 144) = v42;
    v43 = v71;
    *(v32 + 32) = v70;
    *(v32 + 48) = v43;
    v44 = v73;
    *(v32 + 64) = v72;
    *(v32 + 80) = v44;
    v37 = v68;
    v38 = v69;
    goto LABEL_12;
  }

  (*(v24 + 32))(v63, v11, v12);
  v25 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v26 = BindableConfiguration.name.getter();
  if (!*(v25 + 16))
  {

    goto LABEL_14;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v25 + 56) + 32 * v28, &v82);

  if (swift_dynamicCast())
  {
    (*(v124 + 8))(v63, v12);
    (*(v64 + 8))(v21, v65);
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v102 = v116;
    v103 = v117;
    v104 = v118;
    v105 = v119;
    v98 = v112;
    v99 = v113;
    v100 = v114;
    v101 = v115;
    v96 = v110;
    v97 = v111;
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest(&v96);
    v31 = v107;
    v32 = v60;
    *(v60 + 160) = v106;
    *(v32 + 176) = v31;
    *(v32 + 192) = v108;
    *(v32 + 208) = v109;
    v33 = v103;
    *(v32 + 96) = v102;
    *(v32 + 112) = v33;
    v34 = v105;
    *(v32 + 128) = v104;
    *(v32 + 144) = v34;
    v35 = v99;
    *(v32 + 32) = v98;
    *(v32 + 48) = v35;
    v36 = v101;
    *(v32 + 64) = v100;
    *(v32 + 80) = v36;
    v37 = v96;
    v38 = v97;
LABEL_12:
    *v32 = v37;
    *(v32 + 16) = v38;
    return;
  }

LABEL_15:
  v46 = v63;
  v45 = v64;
  v62 = v21;
  v47 = v124;
  (*(v124 + 16))(v53, v63, v12);
  v48 = v54;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v49 = v55;
  v50 = v57;
  (*(v55 + 104))(v48, *MEMORY[0x1E69A0A08], v57);
  v51 = v56;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v49 + 8))(v48, v50);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v58 + 8))(v51, v59);
  swift_willThrow();
  (*(v47 + 8))(v46, v12);
  (*(v45 + 8))(v62, v65);
}

uint64_t _s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double _s15TokenGeneration18SamplingParametersVSgWOi0_(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t GenerativeConfigurationProtocol.draftCache(_:)()
{
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

{
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.draftCacheKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySaySSGGMd, &_s16GenerativeModels12OverrideHintOySaySSGGMR);
  OverrideHint.value.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.samplingParameters(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v6, a5);
  type metadata accessor for BindableConfiguration();
  v7 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v7);

  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.draftCache.getter(uint64_t a1)
{
  v47 = a1;
  v42 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v40 = *(v42 - 8);
  v1 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for BindableConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v15;
  v16 = type metadata accessor for GenerativeConfigurationKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for draftCacheKey != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, static GenerativeConfigurationKey.draftCacheKey);
  (*(v17 + 16))(v20, v21, v16);
  v45 = v16;
  v22 = v20;
  v23 = v17;
  v24 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v24);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    (*(v23 + 8))(v22, v45);
    return v48[0];
  }

  v37 = v23;
  (*(v11 + 32))(v46, v9, v10);
  v26 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v27 = BindableConfiguration.name.getter();
  if (!*(v26 + 16))
  {

    goto LABEL_10;
  }

  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v26 + 56) + 32 * v29, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v46, v10);
    (*(v37 + 8))(v22, v45);
    return v48[5];
  }

LABEL_11:
  v32 = v46;
  (*(v11 + 16))(v38, v46, v10);
  v33 = v39;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v34 = v40;
  v35 = v42;
  (*(v40 + 104))(v33, *MEMORY[0x1E69A0A08], v42);
  v36 = v41;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v34 + 8))(v33, v35);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v43 + 8))(v36, v44);
  swift_willThrow();
  (*(v11 + 8))(v32, v10);
  return (*(v37 + 8))(v22, v45);
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)()
{
  if (one-time initialization token for grammarKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.grammarKey);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for grammarKey, static GenerativeConfigurationKey.grammarKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for grammarKey, static GenerativeConfigurationKey.grammarKey);
}

uint64_t GenerativeConfigurationProtocol.grammarIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for grammarIdentifierKey, static GenerativeConfigurationKey.grammarIdentifierKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for grammarIdentifierKey, static GenerativeConfigurationKey.grammarIdentifierKey);
}

uint64_t GenerativeConfigurationProtocol.grammar.getter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41[1] = a5;
  v49 = a2;
  v52[5] = a1;
  v46 = type metadata accessor for GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v41 - v14;
  v16 = type metadata accessor for BindableConfiguration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v42 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v50 = v41 - v21;
  v22 = type metadata accessor for GenerativeConfigurationKey();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v22, a4);
  (*(v23 + 16))(v26, v27, v22);
  v28 = MEMORY[0x1E69C64F0];
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, MEMORY[0x1E69C64F0]);
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type BindableConfiguration and conformance BindableConfiguration, v28);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15, &_s9PromptKit21BindableConfigurationVSgMd, &_s9PromptKit21BindableConfigurationVSgMR);
    GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
    (*(v23 + 8))(v26, v22);
    return v52[0];
  }

  v30 = v17;
  (*(v17 + 32))(v50, v15, v16);
  v31 = GenerativeConfigurationProtocol.configurationBindings.getter();
  v32 = BindableConfiguration.name.getter();
  if (!*(v31 + 16))
  {

    goto LABEL_10;
  }

  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  outlined init with copy of Any(*(v31 + 56) + 32 * v34, v52);

  if (swift_dynamicCast())
  {
    (*(v17 + 8))(v50, v16);
    (*(v23 + 8))(v26, v22);
    return v51;
  }

LABEL_11:
  (*(v17 + 16))(v42, v50, v16);
  v37 = v43;
  GenerativeError.RuntimeError.ErrorType.ConfigurationErrorInfo.ErrorType.UnboundBindableConfigurationErrorInfo.init(bindableConfiguration:)();
  v38 = v44;
  v39 = v46;
  (*(v44 + 104))(v37, *MEMORY[0x1E69A0A08], v46);
  v40 = v45;
  static GenerativeError.RuntimeError.ErrorType.configurationError(type:)();
  (*(v38 + 8))(v37, v39);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v47 + 8))(v40, v48);
  swift_willThrow();
  (*(v30 + 8))(v50, v16);
  return (*(v23 + 8))(v26, v22);
}

uint64_t GenerativeConfigurationProtocol.schemaIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for schemaIdentifierKey, static GenerativeConfigurationKey.schemaIdentifierKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for schemaIdentifierKey, static GenerativeConfigurationKey.schemaIdentifierKey);
}

uint64_t GenerativeConfigurationProtocol.partialGrammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return GenerativeConfigurationProtocol.grammar(_:)(a1, a2, a3, &one-time initialization token for partialGrammarKey, static GenerativeConfigurationKey.partialGrammarKey);
}

{
  return GenerativeConfigurationProtocol.samplingParameters(_:)(a1, a2, a3, &one-time initialization token for partialGrammarKey, static GenerativeConfigurationKey.partialGrammarKey);
}

uint64_t GenerativeConfigurationProtocol.grammar(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v6, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySSGMd, &_s16GenerativeModels12OverrideHintOySSGMR);
  OverrideHint.value.getter();
  GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.schema(_:)()
{
  return MEMORY[0x1EEE0AD60]();
}

{
  return MEMORY[0x1EEE0AD68]();
}

uint64_t GenerativeConfigurationProtocol.documents(_:)()
{
  if (one-time initialization token for documentsKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier);
  return GenerativeConfigurationProtocol._setOverridableConfiguration<A>(_:value:)();
}

uint64_t GenerativeConfigurationProtocol.documents.getter()
{
  if (one-time initialization token for documentsKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.documentsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier);
  lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A], &lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  return v2;
}

uint64_t System.toolDefinitions(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for System();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = System.configurationStorage.modify();

  RunnableConfigurationStorage.toolDefinitions.setter();
  return v4(&v6, 0);
}

uint64_t User.schemaDefinition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15[-v8];
  v10 = type metadata accessor for User();
  (*(*(v10 - 8) + 16))(a2, v3, v10);
  v11 = type metadata accessor for Prompt.ResponseFormat();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = User.configurationStorage.modify();
  RunnableConfigurationStorage.schemaDefinition.setter();
  return v13(v15, 0);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(a2, MEMORY[0x1E69C6178]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for InferenceResponse.Moderation.Category();
  lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v3 = MEMORY[0x1AC5A6550](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  TokenGenerator.Dimension.rawValue.getter(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for InferenceResponse.Moderation.Category();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BindableConfiguration and conformance BindableConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x80000001ABA3F450;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0x6E756F436E727554;
            v12 = 0xE900000000000074;
          }

          else
          {
            v11 = 0x65736E6F70736552;
            v12 = 0xEC00000065707954;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0x654C74706D6F7250;
          v12 = 0xEC0000006874676ELL;
        }

        else if (v6 == 8)
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001ABA3F4D0;
        }

        else
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001ABA3F4F0;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x65736E6F70736552;
        }

        else
        {
          v7 = 0x6E756F436C6F6F54;
        }

        if (v6 == 3)
        {
          v8 = 0xEE0074616D726F46;
        }

        else
        {
          v8 = 0xE900000000000074;
        }

        if (v6 == 2)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001ABA3F480;
        }

        v9 = 0xD000000000000015;
        if (v6)
        {
          v9 = 0x64416D6F74737543;
          v10 = 0xED00007265747061;
        }

        else
        {
          v10 = v5;
        }

        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0xD000000000000014;
      if (v27 != 8)
      {
        v13 = 0xD000000000000013;
      }

      v14 = 0x80000001ABA3F4F0;
      if (v27 == 8)
      {
        v14 = 0x80000001ABA3F4D0;
      }

      if (v27 == 7)
      {
        v13 = 0x654C74706D6F7250;
        v14 = 0xEC0000006874676ELL;
      }

      v15 = 0x6E756F436E727554;
      if (v27 != 5)
      {
        v15 = 0x65736E6F70736552;
      }

      v16 = 0xEC00000065707954;
      if (v27 == 5)
      {
        v16 = 0xE900000000000074;
      }

      if (v27 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x65736E6F70736552;
      }

      else
      {
        v17 = 0x6E756F436C6F6F54;
      }

      if (v27 == 3)
      {
        v18 = 0xEE0074616D726F46;
      }

      else
      {
        v18 = 0xE900000000000074;
      }

      if (v27 == 2)
      {
        v17 = 0xD000000000000011;
        v18 = 0x80000001ABA3F480;
      }

      v19 = 0xD000000000000015;
      if (v27)
      {
        v19 = 0x64416D6F74737543;
        v20 = 0xED00007265747061;
      }

      else
      {
        v20 = v5;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

uint64_t TokenGenerator._tokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplateInfo();
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v9 = *(v8 + 64) + 15;
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for PromptVariant();
  v4[30] = v10;
  v11 = *(v10 - 8);
  v4[31] = v11;
  v12 = *(v11 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v14 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v4[35] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v16 = *(a2 - 8);
  v4[38] = v16;
  v17 = *(v16 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v18 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[41] = v18;
  v19 = *(v18 - 8);
  v4[42] = v19;
  v20 = *(v19 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}

{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplateInfo();
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v9 = *(v8 + 64) + 15;
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for PromptVariant();
  v4[30] = v10;
  v11 = *(v10 - 8);
  v4[31] = v11;
  v12 = *(v11 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v14 = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v4[35] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v16 = *(a2 - 8);
  v4[38] = v16;
  v17 = *(v16 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v18 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[41] = v18;
  v19 = *(v18 - 8);
  v4[42] = v19;
  v20 = *(v19 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._tokenCount<A>(configuration:), 0, 0);
}