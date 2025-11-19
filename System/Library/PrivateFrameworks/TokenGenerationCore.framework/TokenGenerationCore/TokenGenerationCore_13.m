BOOL closure #1 in Prompt.init(_:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for Prompt.Delimiter(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.Attachment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Prompt.PromptMarker(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v50 = a1;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(a1, &v47 - v25, type metadata accessor for Prompt.PromptMarker);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v26, v6, type metadata accessor for Prompt.Delimiter);
    v28 = *&v6[*(v3 + 20)];
    v29 = type metadata accessor for Prompt.Delimiter;
    v30 = v6;
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v26, v10, type metadata accessor for Prompt.Attachment);
    v28 = *&v10[*(v7 + 20)];
    v29 = type metadata accessor for Prompt.Attachment;
    v30 = v10;
  }

  outlined destroy of Prompt.Turn(v30, v29);
  v31 = v51;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v51, v23, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v23, v6, type metadata accessor for Prompt.Delimiter);
    v32 = *&v6[*(v52 + 20)];
    v33 = type metadata accessor for Prompt.Delimiter;
    v34 = v6;
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v23, v10, type metadata accessor for Prompt.Attachment);
    v32 = *&v10[*(v7 + 20)];
    v33 = type metadata accessor for Prompt.Attachment;
    v34 = v10;
  }

  outlined destroy of Prompt.Turn(v34, v33);
  if (v28 != v32)
  {
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v50, v20, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v20, v6, type metadata accessor for Prompt.Delimiter);
      v38 = v52;
      v37 = *&v6[*(v52 + 20)];
      outlined destroy of Prompt.Turn(v6, type metadata accessor for Prompt.Delimiter);
    }

    else
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v20, v10, type metadata accessor for Prompt.Attachment);
      v37 = *&v10[*(v7 + 20)];
      outlined destroy of Prompt.Turn(v10, type metadata accessor for Prompt.Attachment);
      v38 = v52;
    }

    v41 = v48;
    _s15TokenGeneration6PromptV4TurnVWOcTm_0(v31, v48, type metadata accessor for Prompt.PromptMarker);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v41, v6, type metadata accessor for Prompt.Delimiter);
      v40 = *(v38 + 20);
      goto LABEL_18;
    }

    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v41, v10, type metadata accessor for Prompt.Attachment);
    v45 = *(v7 + 20);
LABEL_21:
    v42 = *&v10[v45];
    v43 = type metadata accessor for Prompt.Attachment;
    v44 = v10;
    goto LABEL_22;
  }

  v35 = v47;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v50, v47, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v35, v6, type metadata accessor for Prompt.Delimiter);
    v36 = v52;
    v37 = *&v6[*(v52 + 24)];
    outlined destroy of Prompt.Turn(v6, type metadata accessor for Prompt.Delimiter);
  }

  else
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v35, v10, type metadata accessor for Prompt.Attachment);
    v37 = *&v10[*(v7 + 24)];
    outlined destroy of Prompt.Turn(v10, type metadata accessor for Prompt.Attachment);
    v36 = v52;
  }

  v39 = v49;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(v31, v49, type metadata accessor for Prompt.PromptMarker);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v39, v10, type metadata accessor for Prompt.Attachment);
    v45 = *(v7 + 24);
    goto LABEL_21;
  }

  _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(v39, v6, type metadata accessor for Prompt.Delimiter);
  v40 = *(v36 + 24);
LABEL_18:
  v42 = *&v6[v40];
  v43 = type metadata accessor for Prompt.Delimiter;
  v44 = v6;
LABEL_22:
  outlined destroy of Prompt.Turn(v44, v43);
  return v37 < v42;
}

uint64_t Prompt.Component.Value.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v91 = type metadata accessor for Prompt.ToolCall.Content();
  v95 = *(v91 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ToolCall();
  v92 = *(v5 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v89 = v80 - v14;
  v15 = type metadata accessor for Prompt.ImageFormat();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v80 - v20;
  v22 = type metadata accessor for Prompt.AttachmentContent(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v83 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v85 = v80 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v82 = v80 - v32;
  v33 = a1;
  _s15TokenGeneration6PromptV4TurnVWOcTm_0(a1, v25, type metadata accessor for Prompt.AttachmentContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v46 = v95;
    v89 = v5;
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of Prompt.Turn(v25, type metadata accessor for Prompt.AttachmentContent);
      v47 = type metadata accessor for Prompt.Component.Value();
      v44 = v85;
      (*(*(v47 - 8) + 56))(v85, 1, 1, v47);
      goto LABEL_19;
    }

    v48 = v8;
    v81 = a1;
    v44 = v85;
    if (EnumCaseMultiPayload != 3)
    {
      v64 = *v25;
      v65 = *(*v25 + 16);
      if (v65)
      {
        v96 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
        v66 = v96;
        LODWORD(v88) = *MEMORY[0x1E69C62B8];
        v86 = v92 + 32;
        v87 = (v46 + 104);
        v80[1] = v64;
        v67 = (v64 + 48);
        v68 = v48;
        v69 = v90;
        do
        {
          v94 = v66;
          v95 = v65;
          v70 = *(v67 - 1);
          v93 = *(v67 - 2);
          v71 = *v67;
          v72 = v67[1];
          v73 = v67[2];
          v74 = v67[3];
          v75 = v67[4];
          v76 = v67[5];

          outlined copy of Data?(v75, v76);

          Prompt.ToolCall.Function.init(name:arguments:)();
          (*v87)(v69, v88, v91);
          Prompt.ToolCall.init(id:content:)();

          v66 = v94;

          outlined consume of Data?(v75, v76);
          v96 = v66;
          v78 = *(v66 + 16);
          v77 = *(v66 + 24);
          if (v78 >= v77 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1);
            v66 = v96;
          }

          *(v66 + 16) = v78 + 1;
          (*(v92 + 32))(v66 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v78, v68, v89);
          v67 += 8;
          v65 = v95 - 1;
        }

        while (v95 != 1);
        outlined destroy of Prompt.Turn(v81, type metadata accessor for Prompt.AttachmentContent);

        v44 = v85;
      }

      else
      {

        outlined destroy of Prompt.Turn(v81, type metadata accessor for Prompt.AttachmentContent);
        v66 = MEMORY[0x1E69E7CC0];
      }

      *v44 = v66;
      v79 = *MEMORY[0x1E69C6340];
      v47 = type metadata accessor for Prompt.Component.Value();
      v57 = *(v47 - 8);
      (*(v57 + 104))(v44, v79, v47);
      goto LABEL_18;
    }

    v49 = *v25;
    v50 = v25[1];

    Prompt.PreprocessedImageData.init(data:shape:)();

    outlined destroy of Prompt.Turn(v81, type metadata accessor for Prompt.AttachmentContent);
    v45 = MEMORY[0x1E69C62F0];
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v25;
      v81 = a1;
      v36 = v25[1];
      v37 = v25[2];
      v38 = v25[3];
      v39 = v25[4];
      v40 = v93;
      v41 = v94;
      v42 = v25[5];
      if (v35)
      {
        v43 = MEMORY[0x1E69C62B0];
      }

      else
      {
        v43 = MEMORY[0x1E69C62A8];
      }

      (*(v93 + 104))(v12, *v43, v94);
      (*(v40 + 32))(v89, v12, v41);
      outlined copy of Data._Representation(v36, v37);

      v44 = v85;
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      outlined consume of Data._Representation(v36, v37);

      outlined destroy of Prompt.Turn(v81, type metadata accessor for Prompt.AttachmentContent);
      v45 = MEMORY[0x1E69C62E8];
    }

    else
    {
      v55 = *v25;
      v44 = v85;
      Prompt.ImageSurface.init(surface:)();
      outlined destroy of Prompt.Turn(a1, type metadata accessor for Prompt.AttachmentContent);
      v45 = MEMORY[0x1E69C62D0];
    }
  }

  else
  {
    v51 = v88;
    v52 = v25[1];
    v53 = v25[2];
    if (*v25)
    {
      v54 = MEMORY[0x1E69C6220];
    }

    else
    {
      v54 = MEMORY[0x1E69C6228];
    }

    (*(v88 + 104))(v18, *v54, v15);
    (*(v51 + 32))(v21, v18, v15);
    v44 = v85;
    Prompt.ImageData.init(format:data:)();
    outlined destroy of Prompt.Turn(v33, type metadata accessor for Prompt.AttachmentContent);
    v45 = MEMORY[0x1E69C6338];
  }

  v56 = *v45;
  v47 = type metadata accessor for Prompt.Component.Value();
  v57 = *(v47 - 8);
  (*(v57 + 104))(v44, v56, v47);
LABEL_18:
  (*(v57 + 56))(v44, 0, 1, v47);
LABEL_19:
  v59 = v83;
  v58 = v84;
  v60 = v82;
  outlined init with take of Prompt.Component.Value?(v44, v82);
  outlined init with take of Prompt.Component.Value?(v60, v59);
  type metadata accessor for Prompt.Component.Value();
  v61 = *(v47 - 8);
  if ((*(v61 + 48))(v59, 1, v47) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v59, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
    v62 = 1;
  }

  else
  {
    (*(v61 + 32))(v58, v59, v47);
    v62 = 0;
  }

  return (*(v61 + 56))(v58, v62, 1, v47);
}

void Prompt.Component.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v82 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v80 = *(v82 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - v7;
  v9 = type metadata accessor for Prompt.ImageFormat();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v85 = &v79 - v18;
  v19 = type metadata accessor for Prompt.Component.Value();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v79 - v30);
  v32 = *a1;
  v33 = *(a1 + 8);
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v37 = *(a1 + 32);
  v36 = *(a1 + 40);
  v38 = *(a1 + 48);
  if (v38)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39 | (v35 >> 60) & 3;
  if (v40 <= 1)
  {
    v58 = v84;
    if (!v40)
    {
      *v31 = v32;
      v31[1] = v33;
      (*(v20 + 104))(v31, *MEMORY[0x1E69C6320], v29);
      v59 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v59 - 8) + 56))(v85, 1, 1, v59);
      Prompt.Component.init(value:priority:privacy:)();
      return;
    }

    v72 = *(v84 + 104);
    v73 = MEMORY[0x1E69C6220];
    if ((v32 & 1) == 0)
    {
      v73 = MEMORY[0x1E69C6228];
    }

    v74 = v33;
    v75 = *v73;
    v79 = v32;
    v76 = v35;
    v77 = v28;
    v82 = v36;
    v83 = v37;
    v81 = v34;
    v72(v12, v75, v9, v29);
    (*(v58 + 32))(v15, v12, v9);
    outlined copy of Data._Representation(v74, v76 & 0xCFFFFFFFFFFFFFFFLL);
    Prompt.ImageData.init(format:data:)();
    (*(v20 + 104))(v26, *MEMORY[0x1E69C6338], v77);
    v78 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v78 - 8) + 56))(v85, 1, 1, v78);
    Prompt.Component.init(value:priority:privacy:)();
    v53 = v79;
    v54 = v74;
    v55 = v76;
    v56 = v81;
    v69 = v82;
    v57 = v83;
  }

  else if (v40 == 2)
  {
    v60 = v36;
    v61 = v37;
    v62 = v34;
    v63 = v35;
    v64 = v33;
    v65 = v32;
    v66 = v28;
    v67 = v32;
    Prompt.ImageSurface.init(surface:)();
    (*(v20 + 104))(v31, *MEMORY[0x1E69C62D0], v66);
    v68 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v68 - 8) + 56))(v85, 1, 1, v68);
    Prompt.Component.init(value:priority:privacy:)();
    v53 = v65;
    v54 = v64;
    v55 = v63;
    v56 = v62;
    v57 = v61;
    v69 = v60;
  }

  else
  {
    v83 = v37;
    v84 = v28;
    v41 = v33;
    v42 = v35;
    v81 = v34;
    v43 = v36;
    if (v40 == 3)
    {
      v44 = v80;
      v45 = *(v80 + 104);
      v46 = MEMORY[0x1E69C62B0];
      if ((v32 & 1) == 0)
      {
        v46 = MEMORY[0x1E69C62A8];
      }

      v47 = *v46;
      v79 = v32;
      v48 = v82;
      v45(v5, v47, v82, v29);
      (*(v44 + 32))(v8, v5, v48);
      v49 = v41;
      outlined copy of Data._Representation(v41, v42 & 0xCFFFFFFFFFFFFFFFLL);

      v50 = v81;
      v51 = v83;
      Prompt.ImageEmbeddingData.init(encoding:data:tokenCount:signature:)();
      (*(v20 + 104))(v23, *MEMORY[0x1E69C62E8], v84);
      v52 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v52 - 8) + 56))(v85, 1, 1, v52);
      Prompt.Component.init(value:priority:privacy:)();
      v53 = v79;
      v54 = v49;
      v55 = v42;
      v56 = v50;
      v57 = v51;
    }

    else
    {
      v70 = v32;

      Prompt.PreprocessedImageData.init(data:shape:)();
      (*(v20 + 104))(v31, *MEMORY[0x1E69C62F0], v84);
      v71 = type metadata accessor for Prompt.Component.Privacy();
      (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
      Prompt.Component.init(value:priority:privacy:)();
      v53 = v70;
      v54 = v41;
      v55 = v42;
      v56 = v81;
      v57 = v83;
    }

    v69 = v43;
  }

  outlined consume of Prompt.Turn.Segment(v53, v54, v55, v56, v57, v69, v38);
}

uint64_t Prompt.ToolResult.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[3];
  v3 = a1[4];
  if (*(v3 + 16) != 1)
  {
    v23 = a1[4];

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.prompt);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1A8E85000, v25, v26, "Unexpected toolResult with either empty or more than one segment. Skipping result", v27, 2u);
      MEMORY[0x1AC57DBF0](v27, -1, -1);
    }

    goto LABEL_31;
  }

  v6 = *(v3 + 32);
  v5 = *(v3 + 40);
  v8 = *(v3 + 48);
  v7 = *(v3 + 56);
  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | (v8 >> 60) & 3;
  if (v12 > 1)
  {
    if (v12 == 2 || v12 != 3)
    {
      v14 = *(v3 + 72);
      outlined copy of Prompt.Turn.Segment(*(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), v14, *(v3 + 80));

      if (one-time initialization token for prompt != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Log.prompt);
      outlined copy of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v14, v10);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      outlined consume of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v14, v10);
      if (!os_log_type_enabled(v16, v17))
      {

        v41 = v6;
        v42 = v5;
        v43 = v8;
        v44 = v7;
        v45 = v9;
        v46 = v14;
        goto LABEL_30;
      }

      log = v16;
      v18 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v18 = 136315138;
      outlined copy of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v14, v10);
      v19 = String.init<A>(describing:)();
      v53 = v14;
      v21 = v17;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v56);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1A8E85000, log, v21, "Unsupported toolResult type: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1AC57DBF0](v48, -1, -1);
      MEMORY[0x1AC57DBF0](v18, -1, -1);

      goto LABEL_27;
    }

LABEL_23:
    v32 = *(v3 + 72);
    outlined copy of Prompt.Turn.Segment(*(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), v32, *(v3 + 80));

    if (one-time initialization token for prompt != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.prompt);
    outlined copy of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v32, v10);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    outlined consume of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v32, v10);
    if (!os_log_type_enabled(v34, v35))
    {

      v41 = v6;
      v42 = v5;
      v43 = v8;
      v44 = v7;
      v45 = v9;
      v46 = v32;
      goto LABEL_30;
    }

    logb = v34;
    v49 = v35;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56 = v37;
    *v36 = 136315138;
    outlined copy of Prompt.Turn.Segment(v6, v5, v8, v7, v9, v32, v10);
    v38 = String.init<A>(describing:)();
    v53 = v32;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v56);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1A8E85000, logb, v49, "Unsupported toolResult type: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1AC57DBF0](v37, -1, -1);
    MEMORY[0x1AC57DBF0](v36, -1, -1);

LABEL_27:
    v41 = v6;
    v42 = v5;
    v43 = v8;
    v44 = v7;
    v45 = v9;
    v46 = v53;
LABEL_30:
    outlined consume of Prompt.Turn.Segment(v41, v42, v43, v44, v45, v46, v10);
LABEL_31:
    v47 = type metadata accessor for Prompt.ToolResult();
    return (*(*(v47 - 8) + 56))(a2, 1, 1, v47);
  }

  if (v12)
  {
    goto LABEL_23;
  }

  loga = *(v3 + 64);
  v54 = *(v3 + 72);
  v28 = *a1;

  static Prompt.ToolResult.text(id:value:)();
  outlined consume of Prompt.Turn.Segment(v6, v5, v8, v7, loga, v54, v10);

  v29 = type metadata accessor for Prompt.ToolResult();
  v30 = *(*(v29 - 8) + 56);

  return v30(a2, 0, 1, v29);
}

uint64_t _s15TokenGeneration6PromptV14ResponseFormatVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration6PromptV4TurnVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Prompt.Turn(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Prompt.Component.Value?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for Prompt.PromptMarker);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for Prompt.Attachment);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v224 = a5;
  v226 = a4;
  v238 = a3;
  v243 = a1;
  v255 = a6;
  v202 = type metadata accessor for Prompt.PreprocessedImageData();
  v249 = *(v202 - 8);
  v7 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v209 = &v182[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v211 = *(v205 - 8);
  v9 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v182[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v206 = type metadata accessor for Prompt.ImageEmbeddingData();
  v235 = *(v206 - 8);
  v11 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v203 = &v182[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v208 = type metadata accessor for Prompt.ImageSurface();
  v234 = *(v208 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v182[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v214 = type metadata accessor for Prompt.ImageData();
  v219 = *(v214 - 8);
  v15 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v182[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v230 = &v182[-v19];
  v244 = type metadata accessor for BindableVariable();
  v212 = *(v244 - 8);
  v20 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v244);
  v239 = &v182[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v223 = type metadata accessor for Prompt.Delimiter(0);
  v237 = *(v223 - 8);
  v22 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v257 = &v182[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v222 = &v182[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v233 = &v182[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v227 = &v182[-v30];
  v259 = type metadata accessor for Prompt.SpecialToken(0);
  v31 = *(*(v259 - 8) + 64);
  MEMORY[0x1EEE9AC00](v259);
  v215 = &v182[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v221 = &v182[-v34];
  v232 = type metadata accessor for SpecialToken();
  v217 = *(v232 - 8);
  v35 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v182[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v254 = type metadata accessor for Prompt.Component.Value();
  v210 = *(v254 - 8);
  v37 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v229 = &v182[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39);
  v258 = &v182[-v40];
  v241 = type metadata accessor for Prompt.Component();
  v256 = *(v241 - 8);
  v41 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v43 = &v182[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for Prompt();
  v225 = *(v44 - 1);
  v45 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v182[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v182[-v49];
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v182[-v52];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v54 = swift_allocObject();
  v228 = xmmword_1A8FC9400;
  *(v54 + 16) = xmmword_1A8FC9400;
  *(v54 + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(v54 + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();
  v269 = a2;

  specialized Array.append<A>(contentsOf:)(v54);
  v55 = v278;
  Prompt.transform(includeAttachments:customDataTransformers:)();
  if (v55)
  {
  }

  v236 = v47;
  v240 = 0;
  v242 = v43;
  v220 = a2;

  v57 = v225;
  (*(v225 + 32))(v53, v50, v44);
  v275 = 0;
  *&v276 = 0xE000000000000000;
  *(&v276 + 1) = MEMORY[0x1E69E7CC0];
  v277 = MEMORY[0x1E69E7CC0];
  v274 = 0;
  v58 = Prompt.components.getter();
  v59 = *(v58 + 16);
  swift_beginAccess();
  v252 = v59;
  if (!v59)
  {
    v72 = v255;
LABEL_67:
    (*(v225 + 8))(v53, v44);

    result = swift_beginAccess();
    v160 = v277;
    *v72 = v275;
    *(v72 + 8) = v276;
    *(v72 + 24) = v160;
    return result;
  }

  v60 = 0;
  v61 = v256;
  v251 = v256 + 16;
  v250 = (v210 + 88);
  v248 = (v210 + 96);
  v184 = (v249 + 8);
  v185 = (v249 + 32);
  v246 = (v256 + 8);
  v187 = (v211 + 88);
  v188 = (v235 + 32);
  v189 = (v235 + 8);
  LODWORD(v249) = *MEMORY[0x1E69C6320];
  v192 = (v234 + 8);
  v193 = (v234 + 32);
  v195 = (v219 + 32);
  LODWORD(v235) = *MEMORY[0x1E69C62E0];
  v196 = (v219 + 8);
  v199 = (v217 + 32);
  v218 = *MEMORY[0x1E69C62D8];
  v197 = (v217 + 8);
  v198 = *MEMORY[0x1E69C6338];
  v194 = *MEMORY[0x1E69C62D0];
  v62 = *MEMORY[0x1E69C62E8];
  v186 = *MEMORY[0x1E69C62F0];
  v190 = *MEMORY[0x1E69C62A8];
  v191 = v62;
  v183 = *MEMORY[0x1E69C62B0];
  v219 = v57 + 8;
  v216 = (v212 + 8);
  v217 = v212 + 32;
  LODWORD(v234) = 1;
  v63 = v241;
  v64 = v242;
  v247 = v44;
  v253 = v53;
  v245 = v58;
  while (1)
  {
    if (v60 >= *(v58 + 16))
    {
      goto LABEL_73;
    }

    v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v66 = *(v61 + 72);
    v278 = v60;
    v44 = *(v61 + 16);
    (v44)(v64, v58 + v65 + v66 * v60, v63);
    v67 = v258;
    v68 = v63;
    Prompt.Component.value.getter();
    v63 = v254;
    v69 = (*v250)(v67, v254);
    if (v69 == v249)
    {
      (*v248)(v67, v63);
      v71 = *v67;
      v70 = v67[1];
      swift_beginAccess();
      v269 = v71;
      *&v270 = v70;
      *(&v270 + 1) = MEMORY[0x1E69E7CC0];
      v271 = MEMORY[0x1E69E7CC0];

      specialized static Prompt.+= infix(_:_:)(&v275, &v269);

      v72 = v255;

      swift_endAccess();

      (*v246)(v64, v68);
      v44 = v247;
      v63 = v68;
      goto LABEL_55;
    }

    if (v69 == v235)
    {
      break;
    }

    v64 = v242;
    if (v69 == v218)
    {
      v81 = v258;
      (*v248)(v258, v63);
      (*v199)(v231, v81, v232);
      v82 = SpecialToken.identifier.getter();
      v84 = v83;
      v85 = SpecialToken.instance.getter();
      v87 = v86;
      v88 = v227;
      outlined init with copy of (String, Any)(v238, v227, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v89 = v259;
      v90 = *(v259 + 20);
      v91 = type metadata accessor for Locale();
      v92 = v221;
      (*(*(v91 - 8) + 56))(v221 + v90, 1, 1, v91);
      v200 = v84;
      v201 = v82;
      *v92 = v82;
      v92[1] = v84;
      v93 = (v92 + *(v89 + 24));
      *v93 = v85;
      v93[1] = v87;
      outlined assign with take of Locale?(v88, v92 + v90);
      *(v92 + *(v89 + 28)) = 0;
      v95 = v222;
      v94 = v223;
      if (v224)
      {
        if (one-time initialization token for promptModule != -1)
        {
          swift_once();
        }

        v96 = __swift_project_value_buffer(v89, static Prompt.SpecialToken.promptModule);
        if (v201 == *v96 && v200 == v96[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          specialized addCacheablePrefixTerminatorIfNotPresent #1 () in Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(&v274, &v275);
        }
      }

      swift_beginAccess();
      v269 = 0;
      *&v270 = 0xE000000000000000;
      MEMORY[0x1AC57C060](0);
      v97 = MEMORY[0x1E69E7CC0];
      v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
      *(&v270 + 1) = v98;
      v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v97);
      v271 = v99;
      v100 = v233;
      outlined init with copy of Prompt.Delimiter(v92, v233, type metadata accessor for Prompt.SpecialToken);
      result = String.count.getter();
      v101 = v98[2];
      v102 = *(v99 + 16);
      v103 = __OFADD__(v101, v102);
      v104 = v101 + v102;
      if (v103)
      {
        __break(1u);
        return result;
      }

      *&v100[*(v94 + 20)] = result;
      *&v100[*(v94 + 24)] = v104;
      outlined init with copy of Prompt.Delimiter(v100, v95, type metadata accessor for Prompt.Delimiter);
      v106 = v98[2];
      v105 = v98[3];
      if (v106 >= v105 >> 1)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105 > 1, v106 + 1, 1, v98);
      }

      v44 = v247;
      v107 = v232;
      v64 = v242;
      outlined destroy of Prompt.Delimiter(v233, type metadata accessor for Prompt.Delimiter);
      v98[2] = v106 + 1;
      outlined init with take of Prompt.Delimiter(v95, v98 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v106, type metadata accessor for Prompt.Delimiter);
      *(&v270 + 1) = v98;
      specialized static Prompt.+= infix(_:_:)(&v275, &v269);

      swift_endAccess();
      (*v197)(v231, v107);
      v63 = v241;
      (*v246)(v64, v241);
      outlined destroy of Prompt.Delimiter(v92, type metadata accessor for Prompt.SpecialToken);
LABEL_54:
      v72 = v255;
LABEL_55:
      v53 = v253;
      goto LABEL_56;
    }

    if (v69 == v198)
    {
      v108 = v258;
      (*v248)(v258, v63);
      v110 = v213;
      v109 = v214;
      (*v195)(v213, v108, v214);
      swift_beginAccess();
      v111 = v240;
      Prompt.appendRenderedImage(_:)(v110);
      v53 = v253;
      v240 = v111;
      if (v111)
      {
        swift_endAccess();

        (*v196)(v110, v109);
        (*v246)(v64, v241);
        (*v219)(v53, v247);
        goto LABEL_71;
      }

      swift_endAccess();
      (*v196)(v110, v109);
      v63 = v241;
      (*v246)(v64, v241);
      v44 = v247;
      v58 = v245;
      v72 = v255;
    }

    else
    {
      v53 = v253;
      if (v69 == v194)
      {
        v124 = v258;
        (*v248)(v258, v63);
        v126 = v207;
        v125 = v208;
        (*v193)(v207, v124, v208);
        v127 = Prompt.ImageSurface.surface.getter();
        swift_beginAccess();
        v269 = 0;
        *&v270 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v128 = MEMORY[0x1E69E7CC0];
        *(&v270 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v128);
        *&v263 = v127;
        v129.surface.super.isa = &v263;
        Prompt.StringInterpolation.appendInterpolation(imageSurface:)(v129);
        specialized static Prompt.+= infix(_:_:)(&v275, &v269);

        swift_endAccess();

        v72 = v255;
        (*v192)(v126, v125);
        v63 = v241;
        (*v246)(v64, v241);
        v44 = v247;
LABEL_56:
        v58 = v245;
        goto LABEL_57;
      }

      v138 = v209;
      v53 = v258;
      v58 = v245;
      if (v69 == v191)
      {
        (*v248)(v258, v63);
        v139 = v203;
        v140 = v206;
        v141 = (*v188)(v203, v53, v206);
        v142 = v204;
        MEMORY[0x1AC57B9D0](v141);
        v143 = (*v187)(v142, v205);
        if (v143 != v190 && v143 != v183)
        {

          v177 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
          swift_allocError();
          v179 = v178;
          v180 = v241;
          v181 = v242;
          (v44)(v178, v242, v241);
          (*(*(v177 - 8) + 104))(v179, *MEMORY[0x1E69C6230], v177);
          swift_willThrow();
          (*v189)(v139, v140);
          (*v246)(v181, v180);
          (*v219)(v253, v247);
          (*(v211 + 8))(v204, v205);
        }

        LODWORD(v201) = v143 != v190;
        v144 = v139;
        v145 = Prompt.ImageEmbeddingData.data.getter();
        v147 = v146;
        v148 = Prompt.ImageEmbeddingData.tokenCount.getter();
        v149 = Prompt.ImageEmbeddingData.signature.getter();
        v151 = v150;
        swift_beginAccess();
        v266 = 0;
        *&v267 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v152 = MEMORY[0x1E69E7CC0];
        *(&v267 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v152);
        LOBYTE(v269) = v201;
        *&v270 = v145;
        *(&v270 + 1) = v147;
        v271 = v148;
        v272 = v149;
        v273 = v151;
        Prompt.StringInterpolation.appendInterpolation(imageEmbedding:)(&v269);
        v270 = v267;
        v269 = v266;
        v271 = v268;
        specialized static Prompt.+= infix(_:_:)(&v275, &v269);

        swift_endAccess();
        v153 = v145;
        v72 = v255;
        outlined consume of Data._Representation(v153, v147);

        (*v189)(v144, v206);
        v154 = *v246;
        v64 = v242;
      }

      else
      {
        if (v69 != v186)
        {
          goto LABEL_74;
        }

        (*v248)(v258, v63);
        v155 = v53;
        v156 = v202;
        (*v185)(v138, v155, v202);
        v157 = Prompt.PreprocessedImageData.data.getter();
        v158 = Prompt.PreprocessedImageData.shape.getter();
        swift_beginAccess();
        v269 = 0;
        *&v270 = 0xE000000000000000;
        MEMORY[0x1AC57C060](0);
        v159 = MEMORY[0x1E69E7CC0];
        *(&v270 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
        v271 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v159);
        *&v263 = v157;
        *(&v263 + 1) = v158;
        Prompt.StringInterpolation.appendInterpolation(preprocessedImage:)(&v263);
        specialized static Prompt.+= infix(_:_:)(&v275, &v269);

        swift_endAccess();

        v72 = v255;

        (*v184)(v138, v156);
        v154 = *v246;
      }

      v63 = v241;
      v154(v64, v241);
      v44 = v247;
      v53 = v253;
    }

LABEL_57:
    v60 = v278 + 1;
    v61 = v256;
    if (v278 + 1 == v252)
    {
      goto LABEL_67;
    }
  }

  v73 = v258;
  (*v248)(v258, v63);
  v74 = v239;
  (*v217)(v239, v73, v244);
  v75 = BindableVariable.name.getter();
  v77 = v237;
  if (*(v243 + 16))
  {
    v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
    v80 = v79;

    if (v80)
    {
      outlined init with copy of GuidedGenerationTokenizer(*(v243 + 56) + 40 * v78, &v266);
      outlined init with take of PromptComponentValueConvertible(&v266, &v269);
      goto LABEL_29;
    }
  }

  else
  {
  }

  outlined init with copy of (String, Any)(v226, &v269, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
LABEL_29:
  outlined init with copy of (String, Any)(&v269, &v263, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  if (!*(&v264 + 1))
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](&v263, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v161 = type metadata accessor for Prompt.RenderError();
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
    swift_allocError();
    v163 = v162;
    v164 = v212 + 16;
    v165 = v162;
    v166 = v74;
    v167 = v74;
    v168 = v244;
    (*(v212 + 16))(v165, v166, v244);
    (*(*(v161 - 8) + 104))(v163, *MEMORY[0x1E69C6240], v161);
    swift_willThrow();
    outlined destroy of [Regex2BNF.CharacterPredicate](&v269, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*(v164 - 8))(v167, v168);
    (*v246)(v242, v241);
    (*v219)(v253, v247);
  }

  outlined init with take of PromptComponentValueConvertible(&v263, &v266);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
  *(swift_allocObject() + 16) = v228;
  __swift_project_boxed_opaque_existential_1(&v266, v268);
  dispatch thunk of PromptComponentValueConvertible.toValue()();
  v112 = type metadata accessor for Prompt.Component.Privacy();
  (*(*(v112 - 8) + 56))(v230, 1, 1, v112);
  Prompt.Component.init(value:priority:privacy:)();
  v44 = v236;
  Prompt.init(components:)();
  v265 = 0;
  v263 = 0u;
  v264 = 0u;
  v113 = v240;
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(&v261, v243, v220, v238, &v263, 0);
  v240 = v113;
  if (v113)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](&v263, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    v169 = *v219;
    v170 = v247;
    (*v219)(v44, v247);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v269, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*v216)(v74, v244);
    (*v246)(v242, v241);
    v169(v253, v170);
    __swift_destroy_boxed_opaque_existential_0(&v266);
LABEL_71:
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](&v263, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  v114 = v244;
  v115 = v257;
  if ((v274 & 1) == 0)
  {
    *&v263 = 0;
    *(&v263 + 1) = 0xE000000000000000;
    MEMORY[0x1AC57C060](0);
    v116 = MEMORY[0x1E69E7CC0];
    *&v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
    *(&v264 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v116);
    if (one-time initialization token for cacheablePrefixTerminator != -1)
    {
      swift_once();
    }

    v117 = __swift_project_value_buffer(v259, static Prompt.SpecialToken.cacheablePrefixTerminator);
    Prompt.StringInterpolation.appendInterpolation(token:)(v117);
    swift_beginAccess();
    specialized static Prompt.+= infix(_:_:)(&v275, &v263);
    swift_endAccess();

    v274 = 1;
  }

  v63 = v262;
  if ((v234 & 1) == 0)
  {
LABEL_53:
    v64 = v242;
    v263 = v261;
    *&v264 = v63;
    *(&v264 + 1) = *(&v262 + 1);
    swift_beginAccess();

    specialized static Prompt.+= infix(_:_:)(&v275, &v263);
    swift_endAccess();

    v44 = v247;
    (*v219)(v236, v247);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v269, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
    (*v216)(v239, v114);
    v137 = v241;
    (*v246)(v64, v241);

    v63 = v137;

    __swift_destroy_boxed_opaque_existential_0(&v266);
    LODWORD(v234) = 0;
    goto LABEL_54;
  }

  v53 = 0;
  v64 = *(v262 + 16);
  while (1)
  {
    if (v64 == v53)
    {
      v63 = v262;
      goto LABEL_52;
    }

    if (v53 >= *(v63 + 16))
    {
      break;
    }

    outlined init with copy of Prompt.Delimiter(v63 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v53, v115, type metadata accessor for Prompt.Delimiter);
    v118 = *v115;
    v119 = v115[1];
    if (one-time initialization token for promptModule != -1)
    {
      swift_once();
    }

    v120 = __swift_project_value_buffer(v259, static Prompt.SpecialToken.promptModule);
    v44 = *v120;
    v121 = *(v120 + 8);
    if (v118 == *v120 && v119 == v121)
    {
      outlined destroy of Prompt.Delimiter(v257, type metadata accessor for Prompt.Delimiter);
      v44 = v118;
LABEL_51:
      *&v263 = 0;
      *(&v263 + 1) = 0xE000000000000000;
      MEMORY[0x1AC57C060](0);
      v130 = MEMORY[0x1E69E7CC0];
      *&v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
      *(&v264 + 1) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v130);
      v131 = v227;
      outlined init with copy of (String, Any)(v238, v227, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v132 = v259;
      v133 = *(v259 + 20);
      v134 = type metadata accessor for Locale();
      v135 = v215;
      (*(*(v134 - 8) + 56))(&v215[v133], 1, 1, v134);
      *v135 = v44;
      v135[1] = v121;
      v136 = (v135 + *(v132 + 24));
      *v136 = 0;
      v136[1] = 0;

      outlined assign with take of Locale?(v131, v135 + v133);
      *(v135 + *(v132 + 28)) = 0;
      Prompt.StringInterpolation.appendInterpolation(token:)(v135);
      outlined destroy of Prompt.Delimiter(v135, type metadata accessor for Prompt.SpecialToken);
      v260[0] = v261;
      v260[1] = v262;

      specialized static Prompt.+= infix(_:_:)(&v263, v260);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v261 = v263;
      v262 = v264;
      v63 = v264;
LABEL_52:
      v114 = v244;
      goto LABEL_53;
    }

    v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v115 = v257;
    outlined destroy of Prompt.Delimiter(v257, type metadata accessor for Prompt.Delimiter);
    ++v53;
    if (v123)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:

  v171 = v63;
  v172 = type metadata accessor for Prompt.RenderError();
  lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
  swift_allocError();
  v173 = v53;
  v175 = v174;
  v176 = v241;
  (v44)(v174, v64, v241);
  (*(*(v172 - 8) + 104))(v175, *MEMORY[0x1E69C6230], v172);
  swift_willThrow();
  (*v246)(v64, v176);
  (*v219)(v253, v247);
  (*(v210 + 8))(v173, v171);
}

uint64_t PromptTemplateInfo.templateID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromptTemplateInfo.RichVariableBinding.Component.Content.Text.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text __swiftcall PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:)(TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text string)
{
  *v1 = string.string;
  *(v1 + 16) = 0;
  return string;
}

TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text __swiftcall PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:isSelfAttention:)(TokenGenerationCore::PromptTemplateInfo::RichVariableBinding::Component::Content::Text string, Swift::Bool isSelfAttention)
{
  *v2 = string.string;
  *(v2 + 16) = isSelfAttention;
  string.isSelfAttention = isSelfAttention;
  return string;
}

uint64_t static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.selfAttention(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t static PromptTemplateInfo.RichVariableBinding.Component.Content.Text.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t static PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t PromptTemplateInfo.init(templateID:variableBindings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  return PromptTemplateInfo.init(templateID:variableBindings:locale:)(a1, a2, a3, v11, a4);
}

uint64_t PromptTemplateInfo.init(templateID:variableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a2;
  v45 = a4;
  v42 = a5;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = result;
  v11 = 0;
  v49 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v47 = result + 64;
  v46 = xmmword_1A8FC9400;
  v48 = result;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v50 = (v17 - 1) & v17;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = *(v49 + 56);
      v24 = (*(v49 + 48) + 16 * v22);
      v25 = v24[1];
      v51 = *v24;
      v26 = (v23 + 16 * v22);
      v27 = *v26;
      v28 = v26[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentVGMR);
      v29 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v46;
      v33 = v32 + v31;
      *v33 = v27;
      *(v33 + 8) = v28;
      *(v33 + 16) = 0;
      type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
      result = swift_storeEnumTagMultiPayload();
      v10 = v48;
      *(v47 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v34 = (v10[6] + 16 * v22);
      *v34 = v51;
      v34[1] = v25;
      *(v10[7] + 8 * v22) = v32;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v10[2] = v37;

      v17 = v50;
      if (!v50)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {

        v38 = v45;
        v39 = v41;
        outlined init with copy of (String, Any)(v45, v41, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        PromptTemplateInfo.init(templateID:richVariableBindings:locale:)(v43, v44, v10, v39, v42);
        return outlined destroy of [Regex2BNF.CharacterPredicate](v38, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v50 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PromptTemplateInfo.init(templateID:richVariableBindings:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v18 = *(type metadata accessor for PromptTemplateInfo(0) + 28);
  v48 = a4;
  v49 = a5;
  outlined init with copy of (String, Any)(a4, a5 + v18, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v19 = static _DictionaryStorage.copy(original:)();
  v20 = v19;
  v21 = *(a3 + 64);
  v50 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v55 = v19 + 64;

  v27 = 0;
  v54 = a3;
  v51 = v25;
  v52 = v20;
  if (v24)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_10:
      v31 = v28 | (v27 << 6);
      v32 = *(a3 + 56);
      v33 = (*(a3 + 48) + 16 * v31);
      v34 = v33[1];
      v59 = *v33;
      v60 = 0;
      v35 = *(v32 + 8 * v31);
      v61 = 0xE000000000000000;
      v36 = *(v35 + 16);
      if (v36)
      {
        v58 = v24;
        v37 = v53;
        v38 = v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v39 = v34;
        v56 = v35;
        swift_bridgeObjectRetain_n();
        v57 = v39;

        v40 = *(v37 + 72);
        do
        {
          outlined init with copy of Prompt.Delimiter(v38, v17, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
          outlined init with copy of Prompt.Delimiter(v17, v13, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Prompt.Delimiter(v13, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
          }

          else
          {
            MEMORY[0x1AC57C120](*v13, v13[1]);
          }

          outlined destroy of Prompt.Delimiter(v17, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
          v38 += v40;
          --v36;
        }

        while (v36);
        swift_bridgeObjectRelease_n();
        v41 = v60;
        v42 = v61;
        a3 = v54;
        v25 = v51;
        v20 = v52;
        result = v57;
        v24 = v58;
      }

      else
      {

        v41 = 0;
        v42 = 0xE000000000000000;
      }

      *(v55 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v43 = (v20[6] + 16 * v31);
      *v43 = v59;
      v43[1] = result;
      v44 = (v20[7] + 16 * v31);
      *v44 = v41;
      v44[1] = v42;
      v45 = v20[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      v20[2] = v47;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v29 = v27;
    while (1)
    {
      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v27 >= v25)
      {

        result = outlined destroy of [Regex2BNF.CharacterPredicate](v48, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v49[3] = v20;
        return result;
      }

      v30 = *(v50 + 8 * v27);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PromptTemplateInfo.richInstructionsTemplateVariableBindings.getter()
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + 16);
  if (!*(v11 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000029, 0x80000001A8FDA600);
  if ((v13 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  if (!*(v14 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
  outlined init with copy of Prompt.Delimiter(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v10, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Prompt.Delimiter(v10, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *v10;
  v17 = v10[1];
  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;

  (*(v3 + 8))(v6, v2);
  if (v20 >> 60 == 15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = type metadata accessor for JSONDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMd, &_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMR);
  lazy protocol witness table accessor for type [TemplateVariableBinding] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data?(v18, v20);

  if (!v1)
  {
    return v25[1];
  }

  return result;
}

uint64_t static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:), 0, 0);
}

uint64_t static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:)()
{
  v1 = v0[8];
  (*(v0[7] + 16))(v1, v0[4], v0[6]);
  v2 = type metadata accessor for CatalogClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = CatalogClient.init()();
  type metadata accessor for _LoadedModelConfiguration();
  v6 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v1, v5);
  v0[9] = v6;
  v7 = v6;
  (*(v0[7] + 8))(v0[8], v0[6]);

  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  v9 = v0[5];
  v10 = v0[3];

  return ModelConfiguration.render(promptTemplate:)(v10, v9);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  else
  {
    v3 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[8];
  (*(v0[7] + 16))(v1, v0[4], v0[6]);
  v2 = type metadata accessor for CatalogClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = CatalogClient.init()();
  type metadata accessor for _LoadedModelConfiguration();
  v6 = static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(v1, v5);
  v0[9] = v6;
  v7 = v6;
  (*(v0[7] + 8))(v0[8], v0[6]);

  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  v9 = v0[5];
  v10 = v0[3];

  return ModelConfiguration.render(promptTemplate:)(v10, v9);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  else
  {
    v3 = static PromptTemplateHelper.fill(modelbundleIdentifier:promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t ModelConfiguration.render(promptTemplate:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for Prompt();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[6] = v7;
  v3[7] = v8;

  return MEMORY[0x1EEE6DFA0](ModelConfiguration.render(promptTemplate:), 0, 0);
}

uint64_t ModelConfiguration.render(promptTemplate:)()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      if (*(v2 + 16))
      {
        v3 = v0[3];
        v4 = *v3;
        v5 = v3[1];

        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
        if (v7)
        {
          v8 = v0[6];
          v9 = v0[3];
          v10 = (*(v2 + 56) + 16 * v6);
          v11 = *v10;
          v0[8] = v10[1];

          v12 = *(v9 + 16);
          v13 = *(type metadata accessor for PromptTemplateInfo(0) + 28);

          Prompt.init(template:)();
          v17 = v0[3];
          v18 = swift_task_alloc();
          v0[9] = v18;
          *v18 = v0;
          v18[1] = ModelConfiguration.render(promptTemplate:);
          v19 = v0[6];
          v20 = v0[2];

          return Prompt.render(richVariableBindings:locale:)(v20, v12, v17 + v13);
        }
      }
    }
  }

  lazy protocol witness table accessor for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError();
  swift_allocError();
  swift_willThrow();
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = ModelConfiguration.render(promptTemplate:);
  }

  else
  {
    v3 = ModelConfiguration.render(promptTemplate:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t ModelConfiguration.PrompteTemplateError.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ModelConfiguration.PrompteTemplateError.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelConfiguration.PrompteTemplateError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelConfiguration.PrompteTemplateError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ModelConfiguration.PrompteTemplateError@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ModelConfiguration.PrompteTemplateError, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t Prompt.render(richVariableBindings:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for SelfAttention();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Prompt.PreprocessedImageData();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = type metadata accessor for Prompt.ImageEmbeddingData();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = type metadata accessor for Prompt.Component.Value();
  v4[26] = v15;
  v16 = *(v15 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();
  v18 = type metadata accessor for Prompt.ImageData();
  v4[29] = v18;
  v19 = *(v18 - 8);
  v4[30] = v19;
  v20 = *(v19 + 64) + 15;
  v4[31] = swift_task_alloc();
  v21 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v4[32] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v23 = *(type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component(0) - 8);
  v4[34] = v23;
  v24 = *(v23 + 64) + 15;
  v4[35] = swift_task_alloc();
  v25 = type metadata accessor for Prompt.Component();
  v4[36] = v25;
  v26 = *(v25 - 8);
  v4[37] = v26;
  v27 = *(v26 + 64) + 15;
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Prompt.render(richVariableBindings:locale:), 0, 0);
}

uint64_t Prompt.render(richVariableBindings:locale:)()
{
  v1 = *(v0 + 296);
  v111 = *(v0 + 272);
  v106 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v92 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v104 = (v5 + 16);
  v105 = (v5 + 32);
  v103 = *MEMORY[0x1E69C62F0];
  v108 = (v3 + 104);
  v101 = (v4 + 32);
  v102 = (v5 + 8);
  v100 = (v4 + 16);
  v99 = *MEMORY[0x1E69C62E8];
  v98 = (v4 + 8);
  v97 = *MEMORY[0x1E69C62D0];
  v95 = (v2 + 16);
  v96 = (v2 + 32);
  v94 = *MEMORY[0x1E69C6338];
  v93 = (v2 + 8);
  v91 = *MEMORY[0x1E69C6320];
  v90 = (v6 + 8);
  v83 = v14;
  v84 = result + 64;
  v82 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v16 = (v13 - 1) & v13;
LABEL_10:
      v19 = v15 | (v10 << 6);
      v87 = v16;
      v20 = (*(v7 + 48) + 16 * v19);
      v88 = *v20;
      v89 = v19;
      v21 = *(*(v7 + 56) + 8 * v19);
      v22 = *(v21 + 16);
      if (v22)
      {
        break;
      }

      v65 = v20[1];

LABEL_31:
      *(v0 + 40) = type metadata accessor for Prompt();
      *(v0 + 48) = MEMORY[0x1E69C6398];
      __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      Prompt.init(components:)();

      *(v84 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
      v66 = (v9[6] + 16 * v89);
      *v66 = v88;
      v66[1] = v65;
      result = outlined init with take of PromptComponentValueConvertible((v0 + 16), v9[7] + 40 * v89);
      v67 = v9[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_39;
      }

      v9[2] = v69;
      v14 = v83;
      v13 = v87;
      if (!v87)
      {
        goto LABEL_5;
      }
    }

    v86 = v10;
    v113 = MEMORY[0x1E69E7CC0];
    v85 = v20[1];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = 0;
    v110 = v21 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v107 = v21;
    v109 = v22;
    while (v23 < *(v21 + 16))
    {
      v24 = *(v0 + 280);
      v26 = *(v0 + 256);
      v25 = *(v0 + 264);
      outlined init with copy of Prompt.Delimiter(v110 + *(v111 + 72) * v23, v24, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
      outlined init with copy of Prompt.Delimiter(v24, v25, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v50 = *(v0 + 304);
          v51 = *(v0 + 248);
          v53 = *(v0 + 224);
          v52 = *(v0 + 232);
          v55 = *(v0 + 200);
          v54 = *(v0 + 208);
          (*v96)(v51, *(v0 + 264), v52);
          (*v95)(v53, v51, v52);
          v56 = v54;
          v22 = v109;
          (*v108)(v53, v94, v56);
          v57 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
          v21 = v107;
          Prompt.Component.init(value:priority:privacy:)();
          (*v93)(v51, v52);
        }

        else
        {
          v36 = *(v106 + 8);
          v37 = *(v0 + 304);
          v38 = *(v0 + 224);
          if (*(v106 + 16))
          {
            v39 = *(v0 + 200);
            v40 = *(v0 + 144);
            v41 = *(v0 + 128);
            SelfAttention.init(_:)();
            lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type SelfAttention and conformance SelfAttention, MEMORY[0x1E69A14A0]);
            PromptComponentValueCustomDataConvertible.toValue()();
            (*v90)(v40, v41);
            v42 = type metadata accessor for Prompt.Component.Privacy();
            (*(*(v42 - 8) + 56))(v39, 1, 1, v42);
            v22 = v109;
          }

          else
          {
            v59 = *(v0 + 200);
            v58 = *(v0 + 208);
            *v38 = **(v0 + 264);
            *(v92 + 8) = v36;
            (*v108)(v38, v91, v58);
            v60 = type metadata accessor for Prompt.Component.Privacy();
            (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
          }

          Prompt.Component.init(value:priority:privacy:)();
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v43 = *(v0 + 304);
        v44 = *(v0 + 224);
        v46 = *(v0 + 200);
        v45 = *(v0 + 208);
        v47 = **(v0 + 264);
        Prompt.ImageSurface.init(surface:)();
        (*v108)(v44, v97, v45);
        v48 = type metadata accessor for Prompt.Component.Privacy();
        (*(*(v48 - 8) + 56))(v46, 1, 1, v48);
        Prompt.Component.init(value:priority:privacy:)();

        v22 = v109;
      }

      else
      {
        v28 = *(v0 + 304);
        v29 = *(v0 + 224);
        v31 = *(v0 + 200);
        v30 = *(v0 + 208);
        if (EnumCaseMultiPayload == 3)
        {
          v32 = *(v0 + 192);
          v33 = *(v0 + 176);
          (*v101)(v32, *(v0 + 264), v33);
          (*v100)(v29, v32, v33);
          (*v108)(v29, v99, v30);
          v34 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
          Prompt.Component.init(value:priority:privacy:)();
          v35 = v98;
        }

        else
        {
          v32 = *(v0 + 168);
          v33 = *(v0 + 152);
          (*v105)(v32, *(v0 + 264), v33);
          (*v104)(v29, v32, v33);
          (*v108)(v29, v103, v30);
          v49 = type metadata accessor for Prompt.Component.Privacy();
          (*(*(v49 - 8) + 56))(v31, 1, 1, v49);
          Prompt.Component.init(value:priority:privacy:)();
          v35 = v102;
        }

        (*v35)(v32, v33);
        v21 = v107;
        v22 = v109;
      }

      outlined destroy of Prompt.Delimiter(*(v0 + 280), type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component);
      v62 = *(v113 + 16);
      v61 = *(v113 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1);
      }

      v63 = *(v0 + 304);
      v64 = *(v0 + 288);
      ++v23;
      *(v113 + 16) = v62 + 1;
      result = (*(v1 + 32))(v113 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v62, v63, v64);
      if (v22 == v23)
      {
        v9 = v82;
        v65 = v85;
        v10 = v86;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        v70 = *(v0 + 112);
        v71 = *(v0 + 120);
        v72 = *(v0 + 96);
        *(v0 + 56) = 0u;
        *(v0 + 72) = 0u;
        *(v0 + 88) = 0;
        Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v9, MEMORY[0x1E69E7CC0], v70, v0 + 56, 1, v72);
        v73 = *(v0 + 304);
        v74 = *(v0 + 280);
        v75 = *(v0 + 264);
        v76 = *(v0 + 248);
        v77 = *(v0 + 224);
        v79 = *(v0 + 192);
        v78 = *(v0 + 200);
        v80 = *(v0 + 168);
        v112 = *(v0 + 144);
        outlined destroy of [Regex2BNF.CharacterPredicate](v0 + 56, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);

        v81 = *(v0 + 8);

        return v81();
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v16 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void Prompt.appendRenderedImage(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v36 - v4;
  v37 = type metadata accessor for Prompt.Component.Value();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.Component();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Prompt.ImageFormat();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC57BC10](v16);
  v19 = *(v14 + 88);
  v40 = v13;
  v20 = v19(v18, v13);
  v21 = *MEMORY[0x1E69C6228];
  if (v20 == *MEMORY[0x1E69C6228] || v20 == *MEMORY[0x1E69C6220])
  {
    v23 = v20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IOSurface, 0x1E696CDE8);
    v24 = Prompt.ImageData.data.getter();
    IOSurface.init(imageData:)(v24, v25);
    if (v26)
    {
      v43 = v26;
      specialized static Prompt.+= infix(_:_:)(v39, &v43);
    }

    else
    {
      v34 = Prompt.ImageData.data.getter();
      LOBYTE(v43) = v23 != v21;
      v44 = v34;
      v45 = v35;
      specialized static Prompt.+= infix(_:_:)(v39, &v43);
      outlined consume of Data._Representation(v44, v45);
    }
  }

  else
  {
    v27 = type metadata accessor for Prompt.ImageData();
    (*(*(v27 - 8) + 16))(v8, a1, v27);
    (*(v5 + 104))(v8, *MEMORY[0x1E69C6338], v37);
    v28 = type metadata accessor for Prompt.Component.Privacy();
    (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
    Prompt.Component.init(value:priority:privacy:)();
    v29 = type metadata accessor for Prompt.RenderError();
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
    swift_allocError();
    v31 = v30;
    v33 = v41;
    v32 = v42;
    (*(v41 + 16))(v30, v12, v42);
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69C6230], v29);
    swift_willThrow();
    (*(v33 + 8))(v12, v32);
    (*(v14 + 8))(v18, v40);
  }
}

uint64_t closure #1 in Prompt.SelfAttentionTransformer.render(value:)@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = type metadata accessor for SpecialToken();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for Prompt.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for Prompt();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v35 - v15;
  Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v16);
  SelfAttention.text.getter();
  v17 = type metadata accessor for Prompt.Component.Privacy();
  v18 = *(*(v17 - 8) + 56);
  v18(v7, 1, 1, v17);
  Prompt.StringInterpolation.appendInterpolation(_:priority:privacy:)();

  outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v19);
  if (one-time initialization token for promptModule != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Prompt.SpecialToken(0);
  v21 = __swift_project_value_buffer(v20, static Prompt.SpecialToken.promptModule);
  v23 = *v21;
  v22 = v21[1];

  v24 = v37;
  SpecialToken.init(identifier:)();
  v18(v7, 1, 1, v17);
  v25 = v39;
  Prompt.StringInterpolation.appendInterpolation<A>(_:priority:privacy:)();
  outlined destroy of [Regex2BNF.CharacterPredicate](v7, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  (*(v38 + 8))(v24, v25);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  Prompt.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v35;
  Prompt.init(stringInterpolation:)();
  v28 = MEMORY[0x1E69C6388];
  v29 = v36;
  static CustomPromptBuilder.buildExpression(_:)();
  v30 = *(v11 + 8);
  v30(v27, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v31 = *(v11 + 72);
  v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A8FC9400;
  (*(v11 + 16))(v33 + v32, v29, v10);
  MEMORY[0x1AC57B890](v33, v10, v28);

  return (v30)(v29, v10);
}

uint64_t Prompt.transformToPrepareForTokenGenerationPrompt(customDataTransformers:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 56) = &type metadata for Prompt.SelfAttentionTransformer;
  *(inited + 64) = lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer();

  specialized Array.append<A>(contentsOf:)(inited);
  Prompt.transform(includeAttachments:customDataTransformers:)();
}

unint64_t lazy protocol witness table accessor for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer()
{
  result = lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer;
  if (!lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.SelfAttentionTransformer and conformance Prompt.SelfAttentionTransformer);
  }

  return result;
}

uint64_t specialized addCacheablePrefixTerminatorIfNotPresent #1 () in Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(_BYTE *a1, void *a2)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    MEMORY[0x1AC57C060](0);
    v5 = MEMORY[0x1E69E7CC0];
    v8[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v8[3] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, v5);
    if (one-time initialization token for cacheablePrefixTerminator != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Prompt.SpecialToken(0);
    v7 = __swift_project_value_buffer(v6, static Prompt.SpecialToken.cacheablePrefixTerminator);
    Prompt.StringInterpolation.appendInterpolation(token:)(v7);
    swift_beginAccess();
    specialized static Prompt.+= infix(_:_:)(a2, v8);
    swift_endAccess();

    result = swift_beginAccess();
    *a1 = 1;
  }

  return result;
}

uint64_t specialized static PromptTemplateInfo.RichVariableBinding.Component.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for Prompt.PreprocessedImageData();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ImageEmbeddingData();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.ImageData();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v58 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v58 - v29;
  v32 = &v58 + *(v31 + 56) - v29;
  outlined init with copy of Prompt.Delimiter(v66, &v58 - v29, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  outlined init with copy of Prompt.Delimiter(v67, v32, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v11;
    v42 = v65;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of Prompt.Delimiter(v30, v23, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v42 + 32))(v41, v32, v8);
        v37 = static Prompt.ImageData.== infix(_:_:)();
        v52 = *(v42 + 8);
        v52(v41, v8);
        v52(v23, v8);
        goto LABEL_16;
      }

      (*(v42 + 8))(v23, v8);
      goto LABEL_22;
    }

    outlined init with copy of Prompt.Delimiter(v30, v26, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    v44 = *v26;
    v43 = *(v26 + 1);
    v45 = v26[16];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_22:
      outlined destroy of [Regex2BNF.CharacterPredicate](v30, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMd, &_s19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingV9ComponentV7ContentO_AItMR);
LABEL_23:
      v37 = 0;
      return v37 & 1;
    }

    v54 = v32[16];
    if (v44 == *v32 && v43 == *(v32 + 1))
    {

      if (v45 == v54)
      {
LABEL_31:
        outlined destroy of Prompt.Delimiter(v30, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
        v37 = 1;
        return v37 & 1;
      }
    }

    else
    {
      v56 = *(v32 + 1);
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) != 0 && ((v45 ^ v54) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    outlined destroy of Prompt.Delimiter(v30, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of Prompt.Delimiter(v30, v17, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v35 = v61;
        v34 = v62;
        v36 = v58;
        (*(v61 + 32))(v58, v32, v62);
        v37 = static Prompt.ImageEmbeddingData.== infix(_:_:)();
        v38 = *(v35 + 8);
        v38(v36, v34);
        v39 = v17;
        v40 = v34;
LABEL_13:
        v38(v39, v40);
        goto LABEL_16;
      }

      (*(v61 + 8))(v17, v62);
    }

    else
    {
      v48 = v60;
      outlined init with copy of Prompt.Delimiter(v30, v60, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v50 = v63;
        v49 = v64;
        v51 = v59;
        (*(v63 + 32))(v59, v32, v64);
        v37 = static Prompt.PreprocessedImageData.== infix(_:_:)();
        v38 = *(v50 + 8);
        v38(v51, v49);
        v39 = v48;
        v40 = v49;
        goto LABEL_13;
      }

      (*(v63 + 8))(v48, v64);
    }

    goto LABEL_22;
  }

  outlined init with copy of Prompt.Delimiter(v30, v20, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  v46 = *v20;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_22;
  }

  v47 = *v32;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v37 = static NSObject.== infix(_:_:)();

LABEL_16:
  outlined destroy of Prompt.Delimiter(v30, type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content);
  return v37 & 1;
}

uint64_t outlined destroy of Prompt.Delimiter(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Prompt.Delimiter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [TemplateVariableBinding] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMd, &_sSay29GenerativeFunctionsFoundation23TemplateVariableBindingVGMR);
    lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(&lazy protocol witness table cache variable for type TemplateVariableBinding and conformance TemplateVariableBinding, MEMORY[0x1E69A0CE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TemplateVariableBinding] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError()
{
  result = lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError;
  if (!lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError;
  if (!lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelConfiguration.PrompteTemplateError and conformance ModelConfiguration.PrompteTemplateError);
  }

  return result;
}

void type metadata completion function for PromptTemplateInfo()
{
  type metadata accessor for [String : PromptTemplateInfo.RichVariableBinding](319, &lazy cache variable for type metadata for [String : PromptTemplateInfo.RichVariableBinding]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : PromptTemplateInfo.RichVariableBinding](319, &lazy cache variable for type metadata for [String : String]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for PromptTemplateInfo.RichVariableBinding.Component()
{
  result = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PromptTemplateInfo.RichVariableBinding.Component.Content()
{
  result = type metadata accessor for Prompt.ImageData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Prompt.ImageEmbeddingData();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Prompt.PreprocessedImageData();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptTemplateInfo.RichVariableBinding.Component.Content.Text(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Prompt.RenderError and conformance Prompt.RenderError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double PromptVariant.tgPrompt.getter@<D0>(void *a1@<X8>)
{
  v25 = a1;
  v26 = type metadata accessor for CompletionPrompt();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChatMessagesPrompt();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PromptVariant();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CatalogClient();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = CatalogClient.init()();
  v31[3] = v14;
  v31[4] = &protocol witness table for CatalogClient;
  v31[0] = v17;
  outlined init with copy of PromptVariant(v27, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    v18 = v32;
    v19 = specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(v31);
    if (v18)
    {
      (*(v6 + 8))(v9, v5);
LABEL_6:
      __swift_destroy_boxed_opaque_existential_0(v31);
      return result;
    }

    static Prompt.transcript(turns:)(v19, &v28);

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v20 = v26;
    (*(v1 + 32))(v4, v13, v26);
    v21 = v32;
    specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)(v31, &v28);
    if (v21)
    {
      (*(v1 + 8))(v4, v20);
      goto LABEL_6;
    }

    (*(v1 + 8))(v4, v20);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  v23 = v30;
  v24 = v25;
  *v25 = v28;
  result = *&v29;
  *(v24 + 1) = v29;
  v24[3] = v23;
  return result;
}

uint64_t type metadata accessor for PromptVariant()
{
  result = type metadata singleton initialization cache for PromptVariant;
  if (!type metadata singleton initialization cache for PromptVariant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PromptVariant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptVariant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PromptVariant.init(_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit012ChatMessagesA0VSgMd, &_s9PromptKit012ChatMessagesA0VSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ChatMessagesPrompt();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  v23 = v18;
  v24 = v17;
  v25 = v20;
  v26 = v19;

  ChatMessagesPrompt.init(_:)(&v23, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s9PromptKit012ChatMessagesA0VSgMd, &_s9PromptKit012ChatMessagesA0VSgMR);
    v23 = v18;
    v24 = v17;
    v25 = v20;
    v26 = v19;
    Prompt.init(_:)(&v23, v7);
    CompletionPrompt.init(_:)();
  }

  else
  {

    v21 = *(v13 + 32);
    v21(v16, v11, v12);
    v21(a2, v16, v12);
  }

  type metadata accessor for PromptVariant();
  return swift_storeEnumTagMultiPayload();
}

uint64_t *specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(uint64_t a1)
{
  v54 = a1;
  v1 = type metadata accessor for Prompt();
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChatMessagesPrompt();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v45 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - v18;
  v20 = type metadata accessor for PromptTemplate();
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
  GenerativeConfigurationProtocol.promptContent.getter();
  v24 = GenerativeConfigurationProtocol.chatMessagesPromptBindings.getter();
  v25 = GenerativeConfigurationProtocol.variableBindings.getter();
  v26 = v60;
  v27 = Array<A>.bind(chatMessagesPromptBindings:)();

  if (!v26)
  {
    v24 = v15;
    v48 = v5;
    v49 = v23;
    v28 = v57;
    v29 = v58;
    v30 = v59;
    Array<A>.asPromptTemplate()(v27, v58);
    v60 = 0;
    v47 = v25;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    if ((*(*(v32 - 8) + 48))(v29, 1, v32) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v29, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    }

    else
    {

      v46 = *(v32 + 48);
      v33 = *(v28 + 48);
      v34 = *(v30 + 32);
      v34(v24, v29, v20);
      outlined init with take of Locale?(v29 + v46, v24 + v33);
      v35 = *(v28 + 48);
      v36 = v49;
      v34(v49, v24, v20);
      v37 = outlined init with take of Locale?(v24 + v35, v19);
      v24 = &v45;
      MEMORY[0x1EEE9AC00](v37);
      *(&v45 - 2) = v36;
      v38 = v52;
      v39 = v60;
      Prompt.init(_:)();
      v40 = v53;
      Prompt.parseAsChatMessagesPrompt(catalogClient:)(v54, v53);
      v60 = v39;
      if (v39)
      {

        (*(v56 + 8))(v38, v55);
        outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        (*(v59 + 8))(v36, v20);
        return v24;
      }

      (*(v56 + 8))(v38, v55);
      v41 = v50;
      ChatMessagesPrompt.locale(_:)();
      v24 = *(v51 + 8);
      v42 = v48;
      (v24)(v40, v48);
      v27 = ChatMessagesPrompt.chatMessages.getter();
      (v24)(v41, v42);
      outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v59 + 8))(v36, v20);
    }

    v43 = v60;
    v44 = specialized static PromptRendering.render(chatMessages:bindingVariables:)(v27, v47);
    if (!v43)
    {
      v24 = v44;

      return v24;
    }
  }

  return v24;
}

uint64_t specialized GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v21 = type metadata accessor for Prompt();
  v18 = *(v21 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompletionPrompt();
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8]);
  GenerativeConfigurationProtocol.promptContent.getter();
  v15 = GenerativeConfigurationProtocol.variableBindings.getter();
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v9, static GenerativeConfigurationKey.localeKey);
  type metadata accessor for Locale();
  v10 = MEMORY[0x1E6969770];
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(&lazy protocol witness table cache variable for type Locale and conformance Locale, v10);
  GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v11 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  outlined init with copy of GuidedGenerationTokenizer(v16, v12 + 16);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v15, v11, v5, v19, 1, v17);

  outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (*(v18 + 8))(v8, v21);
}

uint64_t type metadata completion function for PromptVariant()
{
  result = type metadata accessor for CompletionPrompt();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChatMessagesPrompt();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ChatMessagesPrompt and conformance ChatMessagesPrompt(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer()
{
  result = lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer;
  if (!lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV14ToolCallResultVG_AH4TurnVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = type metadata accessor for Prompt.Turn(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v25;
  for (i = (a3 + 64); ; i += 5)
  {
    v14 = *(i - 3);
    v15 = *(i - 2);
    v16 = *(i - 1);
    v17 = *i;
    v24[0] = *(i - 4);
    v24[1] = v14;
    v24[2] = v15;
    v24[3] = v16;
    v24[4] = v17;

    v22(v24);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v25 = v12;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
      v12 = v25;
    }

    *(v12 + 16) = v19 + 1;
    outlined init with take of Prompt.Turn(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)(uint64_t a1)
{
  v52 = a1;
  v1 = type metadata accessor for Prompt();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ChatMessagesPrompt();
  v50 = *(v48 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v44 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMd, &_s26GenerativeModelsFoundation14PromptTemplateV_0C06LocaleVSgtMR);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for PromptTemplate();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v22 = GenerativeConfigurationProtocol.chatMessagesPromptBindings.getter();
  v23 = GenerativeConfigurationProtocol.variableBindings.getter();
  v24 = v59;
  v25 = Array<A>.bind(chatMessagesPromptBindings:)();

  if (v24)
  {
  }

  else
  {
    v47 = v13;
    v27 = v56;
    v26 = v57;
    v59 = v21;
    v28 = v58;
    Array<A>.asPromptTemplate()(v25, v57);
    v46 = v23;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
    if ((*(*(v30 - 8) + 48))(v26, 1, v30) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetSgMR);
    }

    else
    {

      v31 = *(v30 + 48);
      v44 = *(v27 + 48);
      v45 = v31;
      v32 = *(v28 + 32);
      v33 = v47;
      v32(v47, v26, v18);
      outlined init with take of Locale?(v26 + v45, &v33[v44], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      v34 = *(v27 + 48);
      v35 = v59;
      v57 = v18;
      v32(v59, v33, v18);
      v36 = v17;
      v37 = outlined init with take of Locale?(&v33[v34], v17, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      MEMORY[0x1EEE9AC00](v37);
      *(&v44 - 2) = v35;
      v38 = v53;
      Prompt.init(_:)();
      v39 = v51;
      Prompt.parseAsChatMessagesPrompt(catalogClient:)(v52, v51);
      (*(v54 + 8))(v38, v55);
      v40 = v49;
      ChatMessagesPrompt.locale(_:)();
      v41 = *(v50 + 8);
      v42 = v39;
      v43 = v48;
      v41(v42, v48);
      v25 = ChatMessagesPrompt.chatMessages.getter();
      v41(v40, v43);
      outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      (*(v58 + 8))(v35, v57);
    }

    v22 = specialized static PromptRendering.render(chatMessages:bindingVariables:)(v25, v46);
  }

  return v22;
}

uint64_t GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Prompt();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v12 = GenerativeConfigurationProtocol.variableBindings.getter();
  GenerativeConfigurationProtocol<>.locale.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  *(v13 + 56) = &type metadata for Prompt.PromptTemplateTransformer;
  *(v13 + 64) = lazy protocol witness table accessor for type Prompt.PromptTemplateTransformer and conformance Prompt.PromptTemplateTransformer();
  v14 = swift_allocObject();
  *(v13 + 32) = v14;
  outlined init with copy of GuidedGenerationTokenizer(a1, v14 + 16);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  Prompt.renderToTokenGenerationPrompt(bindingVariables:customDataTransformers:locale:fallbackBindingVariable:isTopLevelRendering:)(v12, v13, v6, v18, 1, v17);

  outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_s9PromptKit0A25ComponentValueConvertible_pSgMd, &_s9PromptKit0A25ComponentValueConvertible_pSgMR);
  outlined destroy of [Regex2BNF.CharacterPredicate](v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (*(v8 + 8))(v11, v7);
}

uint64_t Array<A>.asPromptTemplate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for PromptTemplate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) == 1)
  {
    v14 = *(type metadata accessor for ChatMessagePrompt() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8]);
    result = ChatMessagePrompt.asCustomData<A>(type:)();
    if (v2)
    {
      return result;
    }

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
      v19 = *(v18 + 48);
      (*(v10 + 16))(a2, v13, v9);
      ChatMessagePrompt.locale.getter();
      (*(v10 + 8))(v13, v9);
      return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s26GenerativeModelsFoundation14PromptTemplateVSgMd, &_s26GenerativeModelsFoundation14PromptTemplateVSgMR);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMd, &_s26GenerativeModelsFoundation14PromptTemplateV06promptE0_0C06LocaleVSg6localetMR);
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t closure #1 in static PromptRendering.render(chatMessagesPromptContent:bindingChatMessagesPrompts:bindingVariables:catalogClient:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptTemplate();
  v16[3] = v8;
  v16[4] = lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type PromptTemplate and conformance PromptTemplate, MEMORY[0x1E69A14E8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  v10 = MEMORY[0x1E69C6388];
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x1AC57B890](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t closure #3 in static PromptRendering.getTurnsForMessage(for:with:binding:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - v6;
  v39 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = *a1;
  v16 = a1[1];
  v42 = &v34 - v13;
  v43 = v15;
  v17 = a1[3];
  v41 = a1[2];
  v18 = a1[4];
  v37 = v17;
  v38 = v18;
  ChatMessagePrompt.locale.getter();
  outlined init with copy of (String, Any)(v14, v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v19 = type metadata accessor for Prompt.ResponseFormat(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v7, 1, 1, v19);
  v21 = type metadata accessor for Prompt.Turn(0);
  v36 = v21[5];
  v20(&a2[v36], 1, 1, v19);
  v22 = v21[7];
  v35 = v22;
  v23 = type metadata accessor for Locale();
  (*(*(v23 - 8) + 56))(&a2[v22], 1, 1, v23);
  v24 = &a2[v21[11]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *a2 = 3;
  v25 = MEMORY[0x1E69E7CC0];
  *&a2[v21[8]] = MEMORY[0x1E69E7CC0];
  *&a2[v21[6]] = v25;
  *&a2[v21[10]] = v25;
  v26 = *v24;
  v27 = *(v24 + 1);
  v28 = *(v24 + 2);
  v34 = *(v24 + 3);
  v29 = *(v24 + 4);

  v30 = v37;

  v31 = v38;

  outlined consume of Prompt.ToolCallResult?(v26, v27);
  *v24 = v43;
  *(v24 + 1) = v16;
  v32 = v40;
  *(v24 + 2) = v41;
  *(v24 + 3) = v30;
  *(v24 + 4) = v31;
  a2[v21[9]] = 0;
  outlined assign with take of Prompt.ResponseFormat?(v32, &a2[v35], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined assign with take of Prompt.ResponseFormat?(v39, &a2[v36], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v42, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
}

uint64_t ChatMessagePrompt.toolDefinitions.getter()
{
  v0 = type metadata accessor for RunnableConfigurationStorage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChatMessagePrompt.configurationStorage.getter();
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v5, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  (*(v1 + 8))(v4, v0);
  return v7[1];
}

uint64_t ChatMessagePrompt.schemaDefinition.getter()
{
  v0 = type metadata accessor for RunnableConfigurationStorage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChatMessagePrompt.configurationStorage.getter();
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v5, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v545._rawValue = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v491 = &v483 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v496 = &v483 - v9;
  v494 = type metadata accessor for RunnableConfigurationStorage();
  v493 = *(v494 - 8);
  v10 = *(v493 + 64);
  MEMORY[0x1EEE9AC00](v494);
  v492 = &v483 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v495 = &v483 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v502 = &v483 - v16;
  v563 = type metadata accessor for Prompt.ToolCall.Content();
  v596 = *(v563 - 8);
  v17 = *(v596 + 64);
  MEMORY[0x1EEE9AC00](v563);
  v562 = &v483 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = type metadata accessor for Prompt.ToolCall.Function();
  v595 = *(v561 - 8);
  v19 = *(v595 + 64);
  MEMORY[0x1EEE9AC00](v561);
  v560 = &v483 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v573 = type metadata accessor for Prompt.ToolCall();
  v564 = *(v573 - 8);
  v21 = *(v564 + 64);
  MEMORY[0x1EEE9AC00](v573);
  v571 = &v483 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566 = type metadata accessor for Prompt.ToolResult();
  v546 = *(v566 - 8);
  v23 = *(v546 + 64);
  MEMORY[0x1EEE9AC00](v566);
  v565 = &v483 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = type metadata accessor for Prompt.ImageEmbeddingEncoding();
  v515 = *(v537 - 8);
  v25 = *(v515 + 64);
  MEMORY[0x1EEE9AC00](v537);
  v533 = &v483 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v497 = &v483 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v505 = &v483 - v30;
  v555 = type metadata accessor for Prompt.ImageEmbeddingData();
  v519 = *(v555 - 8);
  v31 = *(v519 + 64);
  MEMORY[0x1EEE9AC00](v555);
  v498 = &v483 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v587 = &v483 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v490 = &v483 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v517 = &v483 - v38;
  v539 = type metadata accessor for Prompt.PreprocessedImageData();
  v594 = *(v539 - 8);
  v39 = *(v594 + 64);
  MEMORY[0x1EEE9AC00](v539);
  v532 = &v483 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v516 = &v483 - v42;
  v541 = type metadata accessor for Prompt.ImageSurface();
  v592 = *(v541 - 8);
  v43 = v592[8];
  MEMORY[0x1EEE9AC00](v541);
  v598 = &v483 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v520 = &v483 - v46;
  v538 = type metadata accessor for Prompt.ImageFormat();
  *&v522 = *(v538 - 8);
  v47 = *(v522 + 64);
  MEMORY[0x1EEE9AC00](v538);
  v535 = &v483 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v506 = &v483 - v50;
  v542 = type metadata accessor for Prompt.ImageData();
  v513 = *(v542 - 8);
  v51 = *(v513 + 64);
  MEMORY[0x1EEE9AC00](v542);
  v534 = &v483 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v518 = &v483 - v54;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9PromptKit0B0V9ComponentV7elementtMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMR);
  v524 = *(v586 - 8);
  v55 = *(v524 + 64);
  MEMORY[0x1EEE9AC00](v586);
  v585 = &v483 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMR);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v584 = &v483 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v583 = (&v483 - v61);
  v553 = type metadata accessor for SpecialToken();
  v604 = *(v553 - 8);
  v62 = v604[8];
  MEMORY[0x1EEE9AC00](v553);
  v552 = &v483 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v570 = &v483 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v569 = &v483 - v68;
  v608 = type metadata accessor for Prompt.Component.Value();
  v530 = *(v608 - 8);
  v69 = *(v530 + 64);
  MEMORY[0x1EEE9AC00](v608);
  v607 = &v483 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v581 = &v483 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v590 = &v483 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v558 = &v483 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v567 = &v483 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v597 = &v483 - v80;
  v600 = type metadata accessor for BindableVariable();
  v525 = *(v600 - 1);
  v81 = *(v525 + 64);
  MEMORY[0x1EEE9AC00](v600);
  v599 = &v483 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = type metadata accessor for Prompt.Component();
  v603 = *(v593 - 8);
  v83 = *(v603 + 64);
  MEMORY[0x1EEE9AC00](v593);
  v606 = &v483 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v582 = &v483 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v591 = &v483 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v554 = &v483 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v601 = &v483 - v92;
  v572 = type metadata accessor for Prompt();
  v93 = *(v572 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v572);
  v501 = &v483 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v544 = &v483 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v500 = &v483 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v499 = &v483 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v483 - v103;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v483 - v106;
  MEMORY[0x1EEE9AC00](v108);
  v110 = (&v483 - v109);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v483 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v116._rawValue = &v483 - v115;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v483 - v118;
  v120 = *a1;
  v610 = MEMORY[0x1E69E7CC0];
  v521 = a2;
  ChatMessagePrompt.prompt.getter();
  v121 = v605;
  Prompt.transform(includeAttachments:)();
  if (v121)
  {
    (*(v93 + 8))(v116, v572);
    goto LABEL_3;
  }

  v550 = v113;
  v551 = v110;
  v486 = v107;
  v485 = v104;
  v487 = v120;
  v559 = 0;
  v126 = *(v93 + 8);
  v124 = v93 + 8;
  v125 = v126;
  v127 = v572;
  (v126)(v116._rawValue, v572);
  v128 = Prompt.components.getter();
  v557 = v124;
  v556 = v126;
  (v126)(v119, v127);
  v130 = v128;
  v131 = *(v128 + 16);
  if (v131)
  {
    v484 = 0;
    v132 = 0;
    v529 = *(v603 + 80);
    v575 = (v529 + 32) & ~v529;
    v580 = (v128 + v575);
    v133 = (v603 + 16);
    v134 = (v530 + 88);
    LODWORD(v579) = *MEMORY[0x1E69C62E0];
    v578 = (v530 + 8);
    LODWORD(v547) = *MEMORY[0x1E69C62D8];
    v568 = (v530 + 96);
    v523 = v604 + 4;
    v514 = "as an invalid content type";
    v543 = v604 + 1;
    v589 = (v603 + 8);
    v536 = v603 + 32;
    v540 = (v525 + 32);
    v548 = (v530 + 56);
    v531 = (v530 + 48);
    v528 = (v530 + 32);
    v527 = (v530 + 16);
    v549 = (v525 + 8);
    v574 = v131;
    v512 = (v131 - 1);
    v526 = xmmword_1A8FC9400;
    v135 = v593;
    v136 = v582;
    v137 = v590;
    v577 = (v603 + 16);
    v576 = (v530 + 88);
    v588 = v128;
LABEL_7:
    v138 = v132;
    do
    {
      if (v138 >= *(v130 + 16))
      {
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

      v604 = *(v603 + 72);
      v605 = v138;
      v140 = v601;
      v141 = v134;
      v602 = *(v603 + 16);
      v602(v601, &v580[v604 * v138], v135);
      v142 = v597;
      Prompt.Component.value.getter();
      v143 = v608;
      v144 = *v141;
      v145 = (*v141)(v142, v608);
      if (v145 == v579)
      {
        (*v568)(v142, v143);
        (*v540)(v599, v142, v600);
        v146 = BindableVariable.name.getter();
        rawValue = v545._rawValue;
        if (!*(v545._rawValue + 2))
        {

LABEL_216:

          v152 = v569;
          (*v548)(v569, 1, 1, v608);
LABEL_218:
          outlined destroy of [Regex2BNF.CharacterPredicate](v152, &_s9PromptKit0A0V9ComponentV5ValueOSgMd, &_s9PromptKit0A0V9ComponentV5ValueOSgMR);
          v381 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
          swift_allocError();
          v383 = v382;
          v384 = v525 + 16;
          v386 = v599;
          v385 = v600;
          (*(v525 + 16))(v382, v599, v600);
          (*(*(v381 - 8) + 104))(v383, *MEMORY[0x1E69C6240], v381);
          swift_willThrow();
          (*(v384 - 8))(v386, v385);
          (*v589)(v601, v593);
          goto LABEL_3;
        }

        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v146, v147);
        v151 = v150;

        if ((v151 & 1) == 0)
        {
          goto LABEL_216;
        }

        outlined init with copy of GuidedGenerationTokenizer(rawValue[7] + 40 * v149, v609);
        __swift_project_boxed_opaque_existential_1(v609, v609[3]);
        v152 = v569;
        dispatch thunk of PromptComponentValueConvertible.toValue()();
        v153 = v608;
        (*v548)(v152, 0, 1, v608);
        __swift_destroy_boxed_opaque_existential_0(v609);
        if ((*v531)(v152, 1, v153) == 1)
        {

          goto LABEL_218;
        }

        v154 = v567;
        (*v528)(v567, v152, v153);
        v155 = v554;
        v156 = v602;
        v602(v554, v140, v135);
        (*v527)(v558, v154, v153);
        Prompt.Component.value.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v157 = v575;
        v158 = swift_allocObject();
        *(v158 + 16) = v526;
        v156(v158 + v157, v155, v135);
        v159 = v551;
        Prompt.init(components:)();
        v160 = v550;
        v161 = v559;
        Prompt.transform(includeAttachments:)();
        v162 = v140;
        if (v161)
        {

          (v556)(v159, v572);
          v387 = *v589;
          (*v589)(v155, v135);
          (*v578)(v154, v608);
          (*v549)(v599, v600);
          v387(v162, v135);
          goto LABEL_3;
        }

        v559 = 0;
        v163 = v160;
        v164 = v572;
        v165 = v135;
        v166 = v155;
        v167 = v556;
        (v556)(v159, v572);
        v168 = v154;
        v169 = Prompt.components.getter();
        (v167)(v163, v164);
        specialized Array.append<A>(contentsOf:)(v169);
        v170 = *v589;
        v171 = v166;
        v135 = v165;
        v133 = v577;
        (*v589)(v171, v135);
        (*v578)(v168, v608);
        (*v549)(v599, v600);
        v170(v162, v135);
        v136 = v582;
        v125 = v564;
        v137 = v590;
      }

      else
      {
        v172 = v142;
        v173 = *v578;
        (*v578)(v172, v143);
        Prompt.Component.value.getter();
        v174 = v608;
        v175 = v144(v137, v608);
        if (v175 == v547)
        {
          (*v568)(v137, v174);
          v176 = v137;
          v177 = v553;
          (*v523)(v570, v176, v553);
          v178 = SpecialToken.identifier.getter();
          v180 = v179;
          v181 = v552;
          SpecialToken.init(identifier:overestimatedTokenCount:)();
          v182 = SpecialToken.identifier.getter();
          v184 = v183;
          v185 = *v543;
          (*v543)(v181, v177);
          if (v178 == v182 && v180 == v184)
          {

            v185(v570, v177);
            v135 = v593;
            v136 = v582;
            v140 = v601;
            v137 = v590;
            v133 = v577;
LABEL_28:
            (*v589)(v140, v135);
            v132 = v605 + 1;
            v484 = 1;
            v125 = v564;
            v139 = v595;
            v128 = v596;
            v124 = v594;
            v116._rawValue = v592;
            v130 = v588;
            v134 = v576;
            if (v512 == v605)
            {

              v484 = 1;
              goto LABEL_32;
            }

            goto LABEL_7;
          }

          v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v185(v570, v177);
          v135 = v593;
          v136 = v582;
          v140 = v601;
          v137 = v590;
          v133 = v577;
          if (v186)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v173(v137, v174);
          v133 = v577;
        }

        v602(v591, v140, v135);
        v187 = v610;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 2) + 1, 1, v187);
        }

        v189 = *(v187 + 2);
        v188 = *(v187 + 3);
        v125 = v564;
        if (v189 >= v188 >> 1)
        {
          v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v188 > 1, v189 + 1, 1, v187);
        }

        (*v589)(v140, v135);
        *(v187 + 2) = v189 + 1;
        (*v536)(&v187[v575 + v189 * v604], v591, v135);
        v610 = v187;
      }

      v138 = v605 + 1;
      v139 = v595;
      v128 = v596;
      v124 = v594;
      v116._rawValue = v592;
      v130 = v588;
      v134 = v576;
    }

    while (v574 != v605 + 1);

LABEL_32:
    v133 = v603;
  }

  else
  {

    v484 = 0;
    v135 = v593;
    v124 = v594;
    v136 = v582;
    v125 = v564;
    v133 = v603;
    v139 = v595;
    v128 = v596;
    v116._rawValue = v592;
  }

  v600 = (v133 + 2);
  v579 = (v524 + 56);
  LODWORD(v602) = *MEMORY[0x1E69C6338];
  v578 = (v524 + 48);
  v576 = (v133 + 4);
  v605 = (v530 + 88);
  LODWORD(v601) = *MEMORY[0x1E69C62D0];
  LODWORD(v599) = *MEMORY[0x1E69C62E8];
  LODWORD(v597) = *MEMORY[0x1E69C62F0];
  LODWORD(v570) = *MEMORY[0x1E69C62C8];
  LODWORD(v568) = *MEMORY[0x1E69C6340];
  v595 = v530 + 8;
  v577 = (v530 + 96);
  v551 = (v128 + 88);
  LODWORD(v550) = *MEMORY[0x1E69C62B8];
  *&v526 = v128 + 8;
  v525 = v128 + 96;
  v524 = v139 + 32;
  v523 = (v139 + 8);
  LODWORD(v596) = *MEMORY[0x1E69C6320];
  v504 = (v124 + 32);
  v503 = (v124 + 8);
  LODWORD(v540) = *MEMORY[0x1E69C62A8];
  v511 = (v116._rawValue + 32);
  v510 = (v116._rawValue + 8);
  v488 = *MEMORY[0x1E69C62B0];
  v514 = (v513 + 32);
  v512 = (v522 + 88);
  v513 += 8;
  LODWORD(v543) = *MEMORY[0x1E69C6228];
  v489 = *MEMORY[0x1E69C6220];
  v604 = (v133 + 1);
  v549 = (v125 + 16);
  v548 = (v125 + 8);
  v531 = (v546 + 16);
  v509 = (v519 + 32);
  v507 = (v515 + 88);
  v508 = (v519 + 8);
  v124 = *(v610 + 2);
  v530 = v546 + 8;
  v558 = v610;

  v536 = 0;
  v190 = 0;
  v483 = xmmword_1A8FD1F60;
  v522 = xmmword_1A8FD1F40;
  v125 = MEMORY[0x1E69E7CC0];
  v569 = MEMORY[0x1E69E7CC0];
  v547 = MEMORY[0x1E69E7CC0];
  v191 = v586;
  v192 = v585;
  v575 = v124;
LABEL_34:
  v580 = v125;
  if (v190 != v124)
  {
LABEL_35:
    if ((v190 & 0x8000000000000000) != 0)
    {
      goto LABEL_279;
    }

    if (v190 < *(v558 + 2))
    {
      v193 = (v190 + 1);
      v194 = &v558[((*(v133 + 80) + 32) & ~*(v133 + 80)) + v133[9] * v190];
      v195 = *(v191 + 48);
      *v192 = v190;
      (v133[2])(&v192[v195], v194, v135);
      v196 = v192;
      v197 = v584;
      outlined init with take of Locale?(v196, v584, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtMR);
      v198 = 0;
      v592 = v193;
      goto LABEL_39;
    }

    goto LABEL_280;
  }

  while (1)
  {
    v198 = 1;
    v592 = v124;
    v197 = v584;
LABEL_39:
    (*v579)(v197, v198, 1, v191);
    v199 = v583;
    outlined init with take of Locale?(v197, v583, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMd, &_sSi6offset_9PromptKit0B0V9ComponentV7elementtSgMR);
    if ((*v578)(v199, 1, v191) == 1)
    {
      v374 = v558;

      v128 = *(v374 + 2);
      v376 = v128 - v536;
      if (v128 <= v536)
      {
        goto LABEL_235;
      }

      v135 = v501;
      v130 = ChatMessagePrompt.prompt.getter();
      v129 = v536;
      if (v536 < 0)
      {
        goto LABEL_282;
      }

      v130 = v558;
      v377 = *(v558 + 2);
      v124 = v557;
      v116._rawValue = v572;
      if (v377 < v536 || v377 < v128)
      {
LABEL_283:
        __break(1u);
      }

      else if (v377 == v376)
      {

LABEL_213:
        Prompt.components.setter();
        v378 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v379 = Prompt.render(tokenTable:bindingVariables:)(v378, v545);
        v559 = v380;
        if (v380)
        {
          (v556)(v135, v116._rawValue);

          goto LABEL_3;
        }

        (v556)(v135, v116._rawValue);

        v388 = (v379._object >> 56) & 0xF;
        if ((v379._object & 0x2000000000000000) == 0)
        {
          v388 = v379._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v388)
        {
          v389 = v547;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v389 + 2) + 1, 1, v389);
            v389 = isUniquelyReferenced_nonNull_native;
          }

          v547 = v389;
          v124 = *(v389 + 2);
          v390 = *(v389 + 3);
          if (v124 >= v390 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v390 > 1), v124 + 1, 1, v547);
            v547 = isUniquelyReferenced_nonNull_native;
          }

          v391 = v547;
          *(v547 + 2) = v124 + 1;
          v392 = &v391[56 * v124];
          *(v392 + 2) = v379;
          *(v392 + 3) = 0u;
          *(v392 + 4) = 0u;
          v392[80] = 0;
          v135 = v502;
LABEL_236:
          if (*(v569 + 2))
          {
            if (*(v547 + 2))
            {
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
              goto LABEL_295;
            }

            v124 = v569;
            if (v487 != 1 || *(v125 + 2))
            {
              goto LABEL_294;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v410 = *(type metadata accessor for Prompt.Turn(0) - 8);
            v411 = *(v410 + 72);
            v412 = (*(v410 + 80) + 32) & ~*(v410 + 80);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_1A8FC9400;
            v413 = type metadata accessor for Locale();
            (*(*(v413 - 8) + 56))(v135, 1, 1, v413);
            static Prompt.Turn.toolCalls(_:locale:)(v124, v135, (v122 + v412));
            outlined destroy of [Regex2BNF.CharacterPredicate](v135, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

LABEL_241:

            return v122;
          }

          if (*(v125 + 2))
          {
            v124 = v547;
            if (v487 == 3 && !*(v547 + 2))
            {
              MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
              *(&v483 - 2) = v414;
              v122 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV14ToolCallResultVG_AH4TurnVs5NeverOTg5(partial apply for closure #3 in static PromptRendering.getTurnsForMessage(for:with:binding:), (&v483 - 2), v125);

              return v122;
            }

LABEL_295:
            __break(1u);
LABEL_296:
            swift_once();
LABEL_229:
            v393 = type metadata accessor for Logger();
            __swift_project_value_buffer(v393, static Log.generator);
            v116._rawValue = v498;
            (*(v519 + 16))(v498, v124, v555);
            v281 = Logger.logObject.getter();
            v394 = static os_log_type_t.error.getter();
            v395 = os_log_type_enabled(v281, v394);
            v284 = v537;
            if (v395)
            {
              v396 = swift_slowAlloc();
              v607 = v396;
              v397 = swift_slowAlloc();
              v609[0] = v397;
              *v396 = 136315138;
              MEMORY[0x1AC57B9D0]();
              v398 = String.init<A>(describing:)();
              v400 = v399;
              v608 = *v508;
              (v608)(v116._rawValue, v555);
              v401 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v398, v400, v609);
              v284 = v537;

              v402 = v607;
              *(v607 + 4) = v401;
              v403 = v402;
              _os_log_impl(&dword_1A8E85000, v281, v394, "Unsupported image embedding encoding: %s", v402, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v397);
              v404 = v397;
              v135 = v593;
              MEMORY[0x1AC57DBF0](v404, -1, -1);
              MEMORY[0x1AC57DBF0](v403, -1, -1);
            }

            else
            {
LABEL_232:

              v608 = *v508;
              (v608)(v116._rawValue, v555);
            }

            v405 = type metadata accessor for Prompt.RenderError();
            lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
            swift_allocError();
            v407 = v406;
            v408 = v606;
            (v133)(v406, v606, v135);
            (*(*(v405 - 8) + 104))(v407, *MEMORY[0x1E69C6230], v405);
            swift_willThrow();
            (v608)(v587, v555);
            (*(v515 + 8))(v533, v284);

            v409 = *v604;
            (*v604)(v408, v135);
            (*v530)(v565, v566);
            v409(v582, v135);

            goto LABEL_3;
          }

          if (v487 > 1)
          {
            if (v487 != 2)
            {
              type metadata accessor for GenerationError();
              lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
              swift_allocError();
              *v462 = 0xD00000000000002ALL;
              v462[1] = 0x80000001A8FDA630;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              goto LABEL_3;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v425 = type metadata accessor for Prompt.Turn(0);
            v426 = *(*(v425 - 1) + 72);
            v427 = (*(*(v425 - 1) + 80) + 32) & ~*(*(v425 - 1) + 80);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_1A8FC9400;
            v428 = v122 + v427;
            ChatMessagePrompt.locale.getter();
            v429 = v492;
            ChatMessagePrompt.configurationStorage.getter();
            if (one-time initialization token for schemaInjectDefinitionKey != -1)
            {
              swift_once();
            }

            v430 = type metadata accessor for GenerativeConfigurationKey();
            __swift_project_value_buffer(v430, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
            v431 = type metadata accessor for Prompt.ResponseFormat(0);
            v432 = v496;
            RunnableConfigurationStorage.value<A>(for:type:)();
            (*(v493 + 8))(v429, v494);
            outlined init with copy of (String, Any)(v135, v495, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined init with copy of (String, Any)(v432, v491, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            v608 = v425[5];
            (*(*(v431 - 8) + 56))(v428 + v608, 1, 1, v431);
            v433 = v425[7];
            v607 = v433;
            v434 = type metadata accessor for Locale();
            (*(*(v434 - 8) + 56))(&v433[v428], 1, 1, v434);
            v435 = (v428 + v425[11]);
            *(v435 + 4) = 0;
            *v435 = 0u;
            *(v435 + 1) = 0u;
            *v428 = 2;
            *(v428 + v425[8]) = v547;
            v436 = MEMORY[0x1E69E7CC0];
            *(v428 + v425[6]) = MEMORY[0x1E69E7CC0];
            *(v428 + v425[10]) = v436;
            v437 = *v435;
            v438 = *(v435 + 1);
            v439 = *(v435 + 2);
            v440 = *(v435 + 3);
            v441 = *(v435 + 4);

            outlined consume of Prompt.ToolCallResult?(v437, v438);
            *(v435 + 4) = 0;
            *v435 = 0u;
            *(v435 + 1) = 0u;
            *(v428 + v425[9]) = 0;
            outlined assign with take of Prompt.ResponseFormat?(v495, &v607[v428], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined assign with take of Prompt.ResponseFormat?(v491, v428 + v608, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v496, &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v502, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          else
          {
            if (v487)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
              v458 = *(type metadata accessor for Prompt.Turn(0) - 8);
              v459 = *(v458 + 72);
              v460 = (*(v458 + 80) + 32) & ~*(v458 + 80);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_1A8FC9400;
              v461 = v502;
              ChatMessagePrompt.locale.getter();
              static Prompt.Turn.response(segments:locale:)(v547, v461, (v122 + v460));
              outlined destroy of [Regex2BNF.CharacterPredicate](v461, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

LABEL_277:

              goto LABEL_241;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR);
            v415 = type metadata accessor for Prompt.Turn(0);
            v416 = *(*(v415 - 1) + 72);
            v417 = (*(*(v415 - 1) + 80) + 32) & ~*(*(v415 - 1) + 80);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_1A8FC9400;
            v418 = v122 + v417;
            v419 = v492;
            ChatMessagePrompt.configurationStorage.getter();
            if (v484)
            {
              v420 = v495;
              v421 = v494;
              v422 = v493;
              if (one-time initialization token for toolsInjectDefinitionsKey != -1)
              {
                swift_once();
              }

              v423 = type metadata accessor for GenerativeConfigurationKey();
              __swift_project_value_buffer(v423, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
              RunnableConfigurationStorage.value<A>(for:type:)();
              (*(v422 + 8))(v419, v421);
              v424 = v609[0];
              LODWORD(v608) = 1;
            }

            else
            {
              v420 = v495;
              v468 = v494;
              v469 = v493;
              if (one-time initialization token for toolsInjectDefinitionsKey != -1)
              {
                swift_once();
              }

              v470 = type metadata accessor for GenerativeConfigurationKey();
              __swift_project_value_buffer(v470, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
              RunnableConfigurationStorage.value<A>(for:type:)();
              (*(v469 + 8))(v419, v468);
              LODWORD(v608) = 0;
              v424 = v609[0];
            }

            if (v424)
            {
              v471 = v424;
            }

            else
            {
              v471 = MEMORY[0x1E69E7CC0];
            }

            v472 = v502;
            ChatMessagePrompt.locale.getter();
            outlined init with copy of (String, Any)(v472, v420, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v473 = type metadata accessor for Prompt.ResponseFormat(0);
            v474 = *(*(v473 - 8) + 56);
            v474(v496, 1, 1, v473);
            v607 = v415[5];
            v474(&v607[v418], 1, 1, v473);
            v475 = v415[7];
            v606 = v475;
            v476 = type metadata accessor for Locale();
            (*(*(v476 - 8) + 56))(&v475[v418], 1, 1, v476);
            v477 = (v418 + v415[11]);
            *(v477 + 4) = 0;
            *v477 = 0u;
            *(v477 + 1) = 0u;
            *v418 = 0;
            *(v418 + v415[8]) = v547;
            *(v418 + v415[6]) = v471;
            *(v418 + v415[10]) = MEMORY[0x1E69E7CC0];
            v478 = *v477;
            v479 = *(v477 + 1);
            v480 = *(v477 + 2);
            v481 = *(v477 + 3);
            v482 = *(v477 + 4);

            outlined consume of Prompt.ToolCallResult?(v478, v479);
            *(v477 + 4) = 0;
            *v477 = 0u;
            *(v477 + 1) = 0u;
            *(v418 + v415[9]) = v608;
            outlined assign with take of Prompt.ResponseFormat?(v495, &v606[v418], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            outlined assign with take of Prompt.ResponseFormat?(v496, &v607[v418], &_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
            outlined destroy of [Regex2BNF.CharacterPredicate](v502, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          goto LABEL_277;
        }

LABEL_235:
        v135 = v502;
        goto LABEL_236;
      }

      specialized _copyCollectionToContiguousArray<A>(_:)(v130, v130 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v129, (2 * v128) | 1);
      goto LABEL_213;
    }

    v124 = *v199;
    (*v576)(v136, v199 + *(v191 + 48), v135);
    v200 = v581;
    Prompt.Component.value.getter();
    v201 = v200;
    v202 = *v605;
    v203 = v200;
    v128 = v608;
    v204 = (*v605)(v203, v608);
    if (v204 == v602)
    {
      (*v577)(v201, v128);
      v224 = (*v514)(v518, v201, v542);
      v225 = v124 - v536;
      if (v124 > v536)
      {
        v226 = v486;
        ChatMessagePrompt.prompt.getter();
        if (v536 < 0)
        {
          __break(1u);
        }

        else
        {
          v227 = *(v558 + 2);
          if (v227 >= v536 && v227 >= v124)
          {
            if (v227 == v225)
            {
            }

            else
            {
              _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v225, 0);
              v359 = (*(v133 + 80) + 32) & ~*(v133 + 80);
              v226 = v486;
              v360 = v133[9];
              swift_arrayInitWithCopy();
            }

            Prompt.components.setter();
            v228 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v229 = Prompt.render(tokenTable:bindingVariables:)(v228, v545);
            v559 = v230;
            if (v230)
            {

              (v556)(v226, v572);
              (*v513)(v518, v542);
              goto LABEL_268;
            }

            (v556)(v226, v572);

            v231 = (v229._object >> 56) & 0xF;
            if ((v229._object & 0x2000000000000000) == 0)
            {
              v231 = v229._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            if (v231)
            {
              v224 = swift_isUniquelyReferenced_nonNull_native();
              v232 = v538;
              v233 = v506;
              if ((v224 & 1) == 0)
              {
                v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
                v547 = v224;
              }

              v235 = *(v547 + 2);
              v234 = *(v547 + 3);
              if (v235 >= v234 >> 1)
              {
                v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v234 > 1), v235 + 1, 1, v547);
                v547 = v224;
              }

              v236 = v547;
              *(v547 + 2) = v235 + 1;
              v237 = &v236[56 * v235];
              *(v237 + 2) = v229;
              *(v237 + 3) = 0u;
              *(v237 + 4) = 0u;
              v237[80] = 0;
            }

            else
            {

              v232 = v538;
              v233 = v506;
            }

            goto LABEL_162;
          }
        }

        __break(1u);
        goto LABEL_287;
      }

      v232 = v538;
      v233 = v506;
LABEL_162:
      MEMORY[0x1AC57BC10](v224);
      v325 = (*v512)(v233, v232);
      v326 = v325;
      if (v325 == v543 || v325 == v489)
      {
        v327 = Prompt.ImageData.data.getter();
        v329 = v328;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
        }

        v128 = *(v547 + 2);
        v330 = *(v547 + 3);
        if (v128 >= v330 >> 1)
        {
          v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v330 > 1), v128 + 1, 1, v547);
        }

        v331 = v326 != v543;
        v116._rawValue = (v329 | 0x1000000000000000);
        (*v513)(v518, v542);
        v332 = v593;
        v130 = (*v604)(v136, v593);
        v333 = v547;
        *(v547 + 2) = v128 + 1;
        v135 = v332;
        v334 = &v333[56 * v128];
        *(v334 + 4) = v331;
        *(v334 + 5) = v327;
        *(v334 + 6) = v116;
        *(v334 + 7) = 0;
        *(v334 + 8) = 0;
        *(v334 + 9) = 0;
        v334[80] = 0;
        v536 = v124;
        v125 = v580;
        goto LABEL_192;
      }

      goto LABEL_300;
    }

    if (v204 == v601)
    {
      (*v577)(v201, v128);
      (*v511)(v520, v201, v541);
      v238 = v124 - v536;
      if (v124 <= v536)
      {
        goto LABEL_171;
      }

      v239 = v485;
      ChatMessagePrompt.prompt.getter();
      if ((v536 & 0x8000000000000000) == 0)
      {
        v240 = *(v558 + 2);
        if (v240 >= v536 && v240 >= v124)
        {
          if (v240 == v238)
          {

LABEL_83:
            Prompt.components.setter();
            v116._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            v241 = Prompt.render(tokenTable:bindingVariables:)(v116, v545);
            v559 = v242;
            if (v242)
            {

              (v556)(v239, v572);
              (*v510)(v520, v541);
              goto LABEL_268;
            }

            (v556)(v239, v572);

            v243 = (v241._object >> 56) & 0xF;
            if ((v241._object & 0x2000000000000000) == 0)
            {
              v243 = v241._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
            }

            if (v243)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
              }

              v245 = *(v547 + 2);
              v244 = *(v547 + 3);
              v116._rawValue = (v245 + 1);
              if (v245 >= v244 >> 1)
              {
                v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v244 > 1), v245 + 1, 1, v547);
              }

              v246 = v547;
              *(v547 + 2) = v116;
              v247 = &v246[56 * v245];
              *(v247 + 2) = v241;
              *(v247 + 3) = 0u;
              *(v247 + 4) = 0u;
              v247[80] = 0;
            }

            else
            {
            }

            v133 = v603;
LABEL_171:
            v335 = Prompt.ImageSurface.surface.getter();
            v336 = v547;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v336 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v336 + 2) + 1, 1, v336);
            }

            v547 = v336;
            v128 = *(v336 + 2);
            v337 = *(v336 + 3);
            if (v128 >= v337 >> 1)
            {
              v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v337 > 1), v128 + 1, 1, v547);
            }

            (*v510)(v520);
            v130 = (*v604)(v136, v135);
            v338 = v547;
            *(v547 + 2) = v128 + 1;
            v339 = &v338[56 * v128];
            *(v339 + 4) = v335;
            *(v339 + 40) = v483;
            *(v339 + 8) = 0;
            *(v339 + 9) = 0;
            *(v339 + 7) = 0;
            v339[80] = 0;
            goto LABEL_191;
          }

          if (v238 < 1)
          {
LABEL_203:
            if (v124 == v536)
            {
              v135 = v593;
            }

            else
            {
              v373 = &v558[((*(v603 + 80) + 32) & ~*(v603 + 80)) + *(v603 + 72) * v536];
              v135 = v593;
              swift_arrayInitWithCopy();
            }

            v125 = v580;
            v136 = v582;
            v239 = v485;
            goto LABEL_83;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v361 = *(v603 + 72);
          v362 = (*(v603 + 80) + 32) & ~*(v603 + 80);
          v363 = swift_allocObject();
          v364 = _swift_stdlib_malloc_size(v363);
          if (v361)
          {
            if (v364 - v362 != 0x8000000000000000 || v361 != -1)
            {
              v363[2] = v238;
              v363[3] = 2 * ((v364 - v362) / v361);
              goto LABEL_203;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_299:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
LABEL_300:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

    if (v204 == v599)
    {
      (*v577)(v201, v128);
      v248 = v201;
      v249 = v517;
      (*v509)(v517, v248, v555);
      v250 = v124 - v536;
      if (v124 <= v536)
      {
        v252 = v537;
        v259 = v505;
        goto LABEL_177;
      }

      v251 = v500;
      ChatMessagePrompt.prompt.getter();
      v252 = v537;
      if ((v536 & 0x8000000000000000) == 0)
      {
        v253 = *(v558 + 2);
        if (v253 >= v536 && v253 >= v124)
        {
          if (v253 == v250)
          {
          }

          else
          {
            v365 = v558;
            v366 = v536;
            _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v250, 0);
            v367 = &v365[(*(v133 + 80) + 32) & ~*(v133 + 80)];
            v251 = v500;
            v368 = &v367[v133[9] * v366];
            swift_arrayInitWithCopy();
          }

          Prompt.components.setter();
          v254 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v255 = Prompt.render(tokenTable:bindingVariables:)(v254, v545);
          v559 = v256;
          if (v256)
          {

            (v556)(v251, v572);
            (*v508)(v517, v555);
            (*v604)(v582, v135);
            goto LABEL_3;
          }

          (v556)(v251, v572);

          v257 = (v255._object >> 56) & 0xF;
          if ((v255._object & 0x2000000000000000) == 0)
          {
            v257 = v255._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v257)
          {
            v258 = swift_isUniquelyReferenced_nonNull_native();
            v259 = v505;
            v260 = v519;
            if ((v258 & 1) == 0)
            {
              v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
            }

            v262 = *(v547 + 2);
            v261 = *(v547 + 3);
            if (v262 >= v261 >> 1)
            {
              v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v262 + 1, 1, v547);
            }

            v263 = v547;
            *(v547 + 2) = v262 + 1;
            v264 = &v263[56 * v262];
            *(v264 + 2) = v255;
            *(v264 + 3) = 0u;
            *(v264 + 4) = 0u;
            v264[80] = 0;
            v249 = v517;
            goto LABEL_178;
          }

          v259 = v505;
          v249 = v517;
LABEL_177:
          v260 = v519;
LABEL_178:
          MEMORY[0x1AC57B9D0]();
          v340 = (*v507)(v259, v252);
          v341 = v340;
          if (v340 == v540 || v340 == v488)
          {
            v594 = Prompt.ImageEmbeddingData.data.getter();
            v343 = v342;
            v591 = Prompt.ImageEmbeddingData.tokenCount.getter();
            v344 = Prompt.ImageEmbeddingData.signature.getter();
            v346 = v345;
            v347 = v547;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v347 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v347 + 2) + 1, 1, v347);
            }

            v128 = *(v347 + 2);
            v348 = *(v347 + 3);
            if (v128 >= v348 >> 1)
            {
              v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v348 > 1), v128 + 1, 1, v347);
            }

            else
            {
              v547 = v347;
            }

            v349 = v341 != v540;
            v116._rawValue = (v343 | 0x3000000000000000);
            (*v508)(v517, v555);
            v136 = v582;
            v135 = v593;
            v130 = (*v604)(v582, v593);
            v350 = v547;
            *(v547 + 2) = v128 + 1;
            v351 = &v350[56 * v128];
            v352 = v594;
            *(v351 + 4) = v349;
            *(v351 + 5) = v352;
            v353 = v591;
            *(v351 + 6) = v116;
            *(v351 + 7) = v353;
            *(v351 + 8) = v344;
            *(v351 + 9) = v346;
            v351[80] = 0;
            v536 = v124;
            v125 = v580;
            v191 = v586;
            v192 = v585;
            v133 = v603;
            goto LABEL_193;
          }

          if (one-time initialization token for generator != -1)
          {
            swift_once();
          }

          v442 = type metadata accessor for Logger();
          __swift_project_value_buffer(v442, static Log.generator);
          v443 = v490;
          v444 = v555;
          (*(v260 + 16))(v490, v249, v555);
          v445 = Logger.logObject.getter();
          v446 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v445, v446))
          {
            v447 = v443;
            v448 = swift_slowAlloc();
            v449 = swift_slowAlloc();
            v609[0] = v449;
            *v448 = 136315138;
            MEMORY[0x1AC57B9D0]();
            v450 = String.init<A>(describing:)();
            v452 = v451;
            v453 = v252;
            v454 = v447;
            v455 = v555;
            v608 = *v508;
            (v608)(v454, v555);
            v456 = v450;
            v444 = v455;
            v457 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v456, v452, v609);

            *(v448 + 4) = v457;
            _os_log_impl(&dword_1A8E85000, v445, v446, "Unsupported image embedding encoding: %s", v448, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v449);
            MEMORY[0x1AC57DBF0](v449, -1, -1);
            MEMORY[0x1AC57DBF0](v448, -1, -1);
          }

          else
          {

            v453 = v252;
            v608 = *v508;
            (v608)(v443, v444);
          }

          v463 = v593;
          v464 = type metadata accessor for Prompt.RenderError();
          lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(&lazy protocol witness table cache variable for type Prompt.RenderError and conformance Prompt.RenderError, MEMORY[0x1E69C6248]);
          swift_allocError();
          v466 = v465;
          v467 = v582;
          (*v600)(v465, v582, v463);
          (*(*(v464 - 8) + 104))(v466, *MEMORY[0x1E69C6230], v464);
          swift_willThrow();
          (v608)(v517, v444);
          (*v604)(v467, v463);
          (*(v515 + 8))(v505, v453);
          goto LABEL_3;
        }

LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
        goto LABEL_293;
      }

LABEL_289:
      __break(1u);
      goto LABEL_290;
    }

    if (v204 == v597)
    {
      break;
    }

    if (v204 == v570)
    {
      v567 = *v577;
      (v567)(v201, v128);
      v130 = *v201;
      v124 = v587;
      v529 = *(*v201 + 16);
      if (v529)
      {
        v276 = 0;
        v277 = v546;
        v528 = (v130 + ((*(v277 + 80) + 32) & ~*(v277 + 80)));
        v128 = v544;
        v527 = v130;
        while (v276 < *(v130 + 16))
        {
          v580 = v125;
          v278 = *(v277 + 72);
          v553 = v276;
          (*(v277 + 16))(v565, v528 + v278 * v276, v566);
          v552 = Prompt.ToolResult.id.getter();
          v554 = v279;
          Prompt.ToolResult.output.getter();
          v280 = Prompt.components.getter();
          (v556)(v128, v572);
          v281 = *(v280 + 16);
          if (v281)
          {
            v282 = 0;
            v574 = &v281[-1].isa + 7;
            v594 = MEMORY[0x1E69E7CC0];
            v283 = v606;
            while (2)
            {
              v284 = v282;
              while (1)
              {
                if (v284 >= *(v280 + 16))
                {
                  __break(1u);
                  goto LABEL_232;
                }

                v285 = v280 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + v133[9] * v284;
                v133 = v133[2];
                (v133)(v283, v285, v135);
                v116._rawValue = v607;
                Prompt.Component.value.getter();
                v286 = v608;
                v287 = v202(v116._rawValue, v608);
                if (v287 == v596)
                {
                  v289 = v607;
                  (v567)(v607, v286);
                  v116._rawValue = 0;
                  v589 = 0;
                  v588 = 0;
                  v290 = 0;
                  v291 = 0;
                  v292 = v289[1];
                  v591 = *v289;
                  v590 = v292;
                  goto LABEL_145;
                }

                v288 = v598;
                if (v287 == v602)
                {
                  v293 = v607;
                  (v567)(v607, v608);
                  v294 = v534;
                  v295 = v542;
                  v296 = (*v514)(v534, v293, v542);
                  v297 = v535;
                  MEMORY[0x1AC57BC10](v296);
                  v298 = (*v512)(v297, v538);
                  if (v298 != v543 && v298 != v489)
                  {
                    goto LABEL_299;
                  }

                  v591 = v298 != v543;
                  v590 = Prompt.ImageData.data.getter();
                  v300 = v299;
                  (*v513)(v294, v295);
                  v589 = 0;
                  v588 = 0;
                  v290 = 0;
                  v291 = 0;
                  v116._rawValue = (v300 | 0x1000000000000000);
                  goto LABEL_145;
                }

                if (v287 == v601)
                {
                  v301 = v607;
                  (v567)(v607, v608);
                  v302 = v301;
                  v303 = v541;
                  (*v511)(v288, v302, v541);
                  v591 = Prompt.ImageSurface.surface.getter();
                  (*v510)(v598, v303);
                  v590 = 0;
                  v589 = 0;
                  v588 = 0;
                  v290 = 0;
                  v291 = 0;
                  v116._rawValue = 0x2000000000000000;
                  goto LABEL_145;
                }

                if (v287 == v599)
                {
                  break;
                }

                if (v287 == v597)
                {
                  v311 = v607;
                  (v567)();
                  v312 = v311;
                  v313 = v532;
                  v314 = v539;
                  (*v504)(v532, v312, v539);
                  v591 = Prompt.PreprocessedImageData.data.getter();
                  v590 = Prompt.PreprocessedImageData.shape.getter();
                  (*v503)(v313, v314);
                  v116._rawValue = 0;
                  v589 = 0;
                  v588 = 0;
                  v290 = 0;
                  v291 = 1;
                  goto LABEL_145;
                }

                ++v284;
                (*v595)(v607, v608);
                v283 = v606;
                (*v604)(v606, v135);
                v133 = v603;
                if (v281 == v284)
                {
                  goto LABEL_152;
                }
              }

              v304 = v607;
              (v567)(v607, v608);
              v305 = (*v509)(v124, v304, v555);
              v306 = v533;
              MEMORY[0x1AC57B9D0](v305);
              v307 = (*v507)(v306, v537);
              if (v307 != v540 && v307 != v488)
              {
                if (one-time initialization token for generator != -1)
                {
                  goto LABEL_296;
                }

                goto LABEL_229;
              }

              v591 = v307 != v540;
              v590 = Prompt.ImageEmbeddingData.data.getter();
              v309 = v308;
              v589 = Prompt.ImageEmbeddingData.tokenCount.getter();
              v588 = Prompt.ImageEmbeddingData.signature.getter();
              v290 = v310;
              (*v508)(v587, v555);
              v291 = 0;
              v116._rawValue = (v309 | 0x3000000000000000);
LABEL_145:
              (*v604)(v606, v593);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v594 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v594 + 16) + 1, 1, v594);
              }

              v316 = *(v594 + 16);
              v315 = *(v594 + 24);
              if (v316 >= v315 >> 1)
              {
                v594 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v315 > 1), v316 + 1, 1, v594);
              }

              v282 = v284 + 1;
              v317 = v594;
              *(v594 + 16) = v316 + 1;
              v318 = v317 + 56 * v316;
              v319 = v590;
              *(v318 + 32) = v591;
              *(v318 + 40) = v319;
              v320 = v589;
              *(v318 + 48) = v116;
              *(v318 + 56) = v320;
              *(v318 + 64) = v588;
              *(v318 + 72) = v290;
              *(v318 + 80) = v291;
              v135 = v593;
              v124 = v587;
              v283 = v606;
              v133 = v603;
              if (v574 != v284)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v594 = MEMORY[0x1E69E7CC0];
          }

LABEL_152:

          v125 = v580;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v125 + 2) + 1, 1, v125);
          }

          v136 = v582;
          v322 = *(v125 + 2);
          v321 = *(v125 + 3);
          if (v322 >= v321 >> 1)
          {
            v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v321 > 1), v322 + 1, 1, v125);
          }

          v116._rawValue = (v553 + 1);
          (*v530)();
          v276 = v116._rawValue;
          *(v125 + 2) = v322 + 1;
          v323 = &v125[40 * v322];
          v324 = v554;
          *(v323 + 4) = v552;
          *(v323 + 5) = v324;
          *(v323 + 6) = 0;
          *(v323 + 7) = 0xE000000000000000;
          *(v323 + 8) = v594;
          v277 = v546;
          v128 = v544;
          v130 = v527;
          if (v116._rawValue == v529)
          {
            goto LABEL_157;
          }
        }

LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
        goto LABEL_283;
      }

LABEL_157:

      v130 = (*v604)(v136, v135);
LABEL_192:
      v191 = v586;
      v192 = v585;
LABEL_193:
      v124 = v575;
      v190 = v592;
      goto LABEL_34;
    }

    if (v204 == v568)
    {
      (*v577)(v201, v128);
      v205 = *v201;
      v128 = *(*v201 + 16);
      if (v128)
      {
        v206 = (*(v564 + 80) + 32) & ~*(v564 + 80);
        v589 = *v201;
        v116._rawValue = (v205 + v206);
        v594 = *(v564 + 72);
        v591 = *(v564 + 16);
        v207 = v573;
        do
        {
          v208 = v571;
          (v591)(v571, v116._rawValue, v207);
          v209 = v562;
          Prompt.ToolCall.content.getter();
          v210 = v563;
          v211 = (*v551)(v209, v563);
          if (v211 == v550)
          {
            (*v525)(v209, v210);
            (*v524)(v560, v209, v561);
            v590 = Prompt.ToolResult.id.getter();
            v213 = v212;
            v214 = Prompt.ToolCall.Function.name.getter();
            v216 = v215;
            v217 = Prompt.ToolCall.Function.arguments.getter();
            v219 = v218;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v569 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v569 + 2) + 1, 1, v569);
            }

            v221 = *(v569 + 2);
            v220 = *(v569 + 3);
            if (v221 >= v220 >> 1)
            {
              v569 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v220 > 1), v221 + 1, 1, v569);
            }

            (*v523)(v560, v561);
            (*v548)(v571, v573);
            v222 = v569;
            *(v569 + 2) = v221 + 1;
            v223 = &v222[64 * v221];
            *(v223 + 4) = v590;
            *(v223 + 5) = v213;
            *(v223 + 6) = v214;
            *(v223 + 7) = v216;
            *(v223 + 8) = v217;
            *(v223 + 9) = v219;
            *(v223 + 5) = v522;
            v135 = v593;
            v125 = v580;
            v136 = v582;
          }

          else
          {
            (*v548)(v208, v207);
            (*v526)(v209, v210);
          }

          v116._rawValue = v116._rawValue + v594;
          --v128;
          v207 = v573;
        }

        while (v128);

        v133 = v603;
      }

      else
      {
      }

      v130 = (*v604)(v136, v135);
    }

    else
    {
      (*v604)(v136, v135);
      v130 = (*v595)(v201, v128);
    }

    v191 = v586;
    v192 = v585;
    v124 = v575;
    v190 = v592;
    if (v592 != v575)
    {
      goto LABEL_35;
    }
  }

  (*v577)(v201, v128);
  (*v504)(v516, v201, v539);
  v265 = v124 - v536;
  if (v124 <= v536)
  {
    goto LABEL_186;
  }

  v266 = v499;
  ChatMessagePrompt.prompt.getter();
  if (v536 < 0)
  {
    goto LABEL_291;
  }

  v267 = *(v558 + 2);
  if (v267 < v536 || v267 < v124)
  {
    goto LABEL_292;
  }

  if (v267 == v265)
  {
  }

  else
  {
    v369 = v558;
    v370 = v536;
    _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9PromptKit0H0V9ComponentV_Tt1g5(v265, 0);
    v371 = &v369[(*(v133 + 80) + 32) & ~*(v133 + 80)];
    v266 = v499;
    v372 = &v371[v133[9] * v370];
    swift_arrayInitWithCopy();
  }

  Prompt.components.setter();
  v268 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v269 = Prompt.render(tokenTable:bindingVariables:)(v268, v545);
  v559 = v270;
  if (!v270)
  {
    (v556)(v266, v572);

    v271 = (v269._object >> 56) & 0xF;
    if ((v269._object & 0x2000000000000000) == 0)
    {
      v271 = v269._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v271)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
      }

      v273 = *(v547 + 2);
      v272 = *(v547 + 3);
      if (v273 >= v272 >> 1)
      {
        v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v272 > 1), v273 + 1, 1, v547);
      }

      v274 = v547;
      *(v547 + 2) = v273 + 1;
      v275 = &v274[56 * v273];
      *(v275 + 2) = v269;
      *(v275 + 3) = 0u;
      *(v275 + 4) = 0u;
      v275[80] = 0;
    }

    else
    {
    }

LABEL_186:
    v354 = Prompt.PreprocessedImageData.data.getter();
    v355 = Prompt.PreprocessedImageData.shape.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v547 + 2) + 1, 1, v547);
    }

    v128 = *(v547 + 2);
    v356 = *(v547 + 3);
    v116._rawValue = (v128 + 1);
    if (v128 >= v356 >> 1)
    {
      v547 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v356 > 1), v128 + 1, 1, v547);
    }

    (*v503)(v516);
    v130 = (*v604)(v136, v135);
    v357 = v547;
    *(v547 + 2) = v116;
    v358 = &v357[56 * v128];
    *(v358 + 4) = v354;
    *(v358 + 5) = v355;
    *(v358 + 3) = 0u;
    *(v358 + 4) = 0u;
    v358[80] = 1;
LABEL_191:
    v536 = v124;
    goto LABEL_192;
  }

  (v556)(v266, v572);
  (*v503)(v516, v539);
LABEL_268:
  (*v604)(v136, v135);
LABEL_3:
  v122 = v610;

  return v122;
}

uint64_t specialized static PromptRendering.render(chatMessages:bindingVariables:)(uint64_t a1, void *a2)
{
  v91 = a2;
  v93 = type metadata accessor for ChatMessageRole();
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChatMessagePrompt();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v89 = (v4 + 88);
  v90 = v15;
  v88 = *MEMORY[0x1E69C63F8];
  v83 = *MEMORY[0x1E69C63E0];
  v82 = *MEMORY[0x1E69C6400];
  v81 = *MEMORY[0x1E69C63D8];
  v87 = (v14 - 8);
  v80 = (v4 + 8);
  v85 = *(v14 + 56);
  v17 = MEMORY[0x1E69E7CC0];
  v84 = v7;
  v86 = v14;
  while (1)
  {
    v90(v12, v16, v7, v10);
    v18 = v92;
    ChatMessagePrompt.role.getter();
    v19 = (*v89)(v18, v93);
    if (v19 == v88)
    {
      break;
    }

    if (v19 == v83)
    {
      v95 = 2;
      result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v95, v12, v91);
      if (v2)
      {
        goto LABEL_88;
      }

      v33 = result;
      v34 = *(result + 16);
      v35 = v17[2];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v36 <= v17[3] >> 1)
      {
        if (!*(v33 + 16))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v64 = v35 + v34;
        }

        else
        {
          v64 = v35;
        }

        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v64, 1, v17);
        if (!*(v33 + 16))
        {
LABEL_56:

          if (v34)
          {
            goto LABEL_95;
          }

          goto LABEL_78;
        }
      }

      v38 = (v17[3] >> 1) - v17[2];
      result = type metadata accessor for Prompt.Turn(0);
      v39 = *(result - 8);
      if (v38 < v34)
      {
        goto LABEL_97;
      }

      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = *(v39 + 72);
      swift_arrayInitWithCopy();

      if (v34)
      {
        v42 = v17[2];
        v31 = __OFADD__(v42, v34);
        v32 = v42 + v34;
        if (v31)
        {
          goto LABEL_100;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (v19 == v82)
      {
        v96 = 1;
        result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v96, v12, v91);
        if (v2)
        {
          goto LABEL_88;
        }

        v43 = result;
        v44 = *(result + 16);
        v45 = v17[2];
        v46 = v45 + v44;
        if (__OFADD__(v45, v44))
        {
          goto LABEL_98;
        }

        v47 = swift_isUniquelyReferenced_nonNull_native();
        if ((v47 & 1) != 0 && v46 <= v17[3] >> 1)
        {
          if (!*(v43 + 16))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v45 <= v46)
          {
            v76 = v45 + v44;
          }

          else
          {
            v76 = v45;
          }

          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v76, 1, v17);
          if (!*(v43 + 16))
          {
LABEL_71:

            if (v44)
            {
              goto LABEL_99;
            }

            goto LABEL_78;
          }
        }

        v48 = (v17[3] >> 1) - v17[2];
        result = type metadata accessor for Prompt.Turn(0);
        v49 = *(result - 8);
        if (v48 < v44)
        {
          goto LABEL_101;
        }

        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = *(v49 + 72);
        swift_arrayInitWithCopy();

        if (v44)
        {
          v52 = v17[2];
          v31 = __OFADD__(v52, v44);
          v32 = v52 + v44;
          if (v31)
          {
            goto LABEL_106;
          }

          goto LABEL_51;
        }

        goto LABEL_78;
      }

      if (v19 != v81)
      {
        v98 = 2;
        result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v98, v12, v91);
        if (v2)
        {
          (*v87)(v12, v7);

          (*v80)(v92, v93);
          return v17;
        }

        v65 = result;
        v66 = *(result + 16);
        v67 = v17[2];
        v68 = v67 + v66;
        if (__OFADD__(v67, v66))
        {
          goto LABEL_102;
        }

        v69 = swift_isUniquelyReferenced_nonNull_native();
        if ((v69 & 1) != 0 && v68 <= v17[3] >> 1)
        {
          if (*(v65 + 16))
          {
            goto LABEL_63;
          }

LABEL_85:

          if (v66)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v67 <= v68)
          {
            v78 = v67 + v66;
          }

          else
          {
            v78 = v67;
          }

          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v78, 1, v17);
          if (!*(v65 + 16))
          {
            goto LABEL_85;
          }

LABEL_63:
          v70 = (v17[3] >> 1) - v17[2];
          result = type metadata accessor for Prompt.Turn(0);
          v71 = *(result - 8);
          if (v70 < v66)
          {
            goto LABEL_107;
          }

          v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
          v73 = *(v71 + 72);
          swift_arrayInitWithCopy();

          if (v66)
          {
            v74 = v17[2];
            v31 = __OFADD__(v74, v66);
            v75 = v74 + v66;
            if (v31)
            {
              goto LABEL_110;
            }

            v17[2] = v75;
          }
        }

        v7 = v84;
        (*v87)(v12, v84);
        (*v80)(v92, v93);
        goto LABEL_79;
      }

      v97 = 3;
      result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v97, v12, v91);
      if (v2)
      {
LABEL_88:
        (*v87)(v12, v7);

        return v17;
      }

      v54 = result;
      v55 = *(result + 16);
      v56 = v17[2];
      v57 = v56 + v55;
      if (__OFADD__(v56, v55))
      {
        goto LABEL_103;
      }

      v58 = swift_isUniquelyReferenced_nonNull_native();
      if ((v58 & 1) != 0 && v57 <= v17[3] >> 1)
      {
        if (!*(v54 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v56 <= v57)
        {
          v77 = v56 + v55;
        }

        else
        {
          v77 = v56;
        }

        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v77, 1, v17);
        if (!*(v54 + 16))
        {
LABEL_77:

          if (v55)
          {
            goto LABEL_104;
          }

          goto LABEL_78;
        }
      }

      v59 = (v17[3] >> 1) - v17[2];
      result = type metadata accessor for Prompt.Turn(0);
      v60 = *(result - 8);
      if (v59 < v55)
      {
        goto LABEL_108;
      }

      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v62 = *(v60 + 72);
      swift_arrayInitWithCopy();

      if (v55)
      {
        v63 = v17[2];
        v31 = __OFADD__(v63, v55);
        v32 = v63 + v55;
        if (v31)
        {
          goto LABEL_109;
        }

        goto LABEL_51;
      }
    }

LABEL_78:
    v7 = v84;
    (*v87)(v12, v84);
LABEL_79:
    v16 += v85;
    if (!--v13)
    {
      return v17;
    }
  }

  v94 = 0;
  result = specialized static PromptRendering.getTurnsForMessage(for:with:binding:)(&v94, v12, v91);
  if (v2)
  {
    goto LABEL_88;
  }

  v21 = result;
  v22 = *(result + 16);
  v23 = v17[2];
  v24 = v23 + v22;
  if (!__OFADD__(v23, v22))
  {
    v25 = swift_isUniquelyReferenced_nonNull_native();
    if ((v25 & 1) != 0 && v24 <= v17[3] >> 1)
    {
      if (!*(v21 + 16))
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v53 = v23 + v22;
      }

      else
      {
        v53 = v23;
      }

      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v53, 1, v17);
      if (!*(v21 + 16))
      {
LABEL_40:

        if (v22)
        {
          goto LABEL_92;
        }

        goto LABEL_78;
      }
    }

    v26 = (v17[3] >> 1) - v17[2];
    result = type metadata accessor for Prompt.Turn(0);
    v27 = *(result - 8);
    if (v26 < v22)
    {
      goto LABEL_93;
    }

    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = *(v27 + 72);
    swift_arrayInitWithCopy();

    if (v22)
    {
      v30 = v17[2];
      v31 = __OFADD__(v30, v22);
      v32 = v30 + v22;
      if (v31)
      {
        goto LABEL_96;
      }

LABEL_51:
      v17[2] = v32;
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
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
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PromptTemplate and conformance PromptTemplate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Prompt.Turn(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.Turn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v9 = Substring.subscript.getter();
      v11 = v10;
      v12 = Substring.index(after:)();
      v13 = String.Iterator.next()();
      if (!v13.value._object)
      {
        break;
      }

      if (v9 == v13.value._countAndFlagsBits && v13.value._object == v11)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v12 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + 8 * v2);
    v9 = *(result + 32 + 8 * v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySayypGSay29GenerativeFunctionsFoundation10JSONSchemaOGG_ypsAE_pTg506_syp29fg12Foundation10i5Oyps5C33_pIgnnrzo_yp_ACtypsAD_pIegnrzr_TRypAKypsAE_pIgnnrzo_Tf1cn_n(unint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, char *, char *), uint64_t a4)
{
  v48 = a4;
  v47 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  v6 = *(*(v45 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v45);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v40 - v12;
  v13 = *(a1 + 16);
  v46 = a2;
  v14 = *(a2 + 16);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(a2 + 16);
  }

  v52 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v17 = v52;
  v43 = v14;
  v44 = v13;
  v42 = a1;
  if (v15)
  {
    v18 = 0;
    v19 = a1 + 32;
    while (v13 != v18)
    {
      result = outlined init with copy of Any(v19, v50);
      if (v14 == v18)
      {
        goto LABEL_29;
      }

      v20 = v15;
      v21 = type metadata accessor for JSONSchema();
      v22 = *(v21 - 8);
      v23 = v46 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18;
      v24 = *(v45 + 48);
      outlined init with take of Any(v50, v9);
      (*(v22 + 16))(&v9[v24], v23, v21);
      v25 = v49;
      v47(v51, v9, &v9[v24]);
      if (v25)
      {

        outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
        return v17;
      }

      v49 = 0;
      outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v52 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v17 = v52;
      }

      ++v18;
      *(v17 + 16) = v27 + 1;
      result = outlined init with take of Any(v51, (v17 + 32 * v27 + 32));
      v19 += 32;
      v15 = v20;
      v14 = v43;
      v13 = v44;
      if (v20 == v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    if (v13 <= v14)
    {
      return v17;
    }

    v28 = v42 + 32 * v15 + 32;
    while (v15 < v13)
    {
      result = outlined init with copy of Any(v28, v51);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_31;
      }

      if (v14 == v15)
      {
        __swift_destroy_boxed_opaque_existential_0(v51);
        return v17;
      }

      if (v15 >= v14)
      {
        goto LABEL_32;
      }

      v42 = v15 + 1;
      v29 = type metadata accessor for JSONSchema();
      v30 = *(v29 - 8);
      v31 = v15;
      v32 = v46 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v15;
      v33 = v45;
      v34 = *(v45 + 48);
      v35 = v41;
      outlined init with take of Any(v51, v41);
      (*(v30 + 16))(&v35[v34], v32, v29);
      v36 = v40;
      outlined init with take of (Any, JSONSchema)(v35, v40);
      v37 = v49;
      v47(v51, v36, (v36 + *(v33 + 48)));
      if (v37)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);

        return v17;
      }

      v49 = 0;
      outlined destroy of [Regex2BNF.CharacterPredicate](v36, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v52 = v17;
      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v17 = v52;
      }

      *(v17 + 16) = v39 + 1;
      result = outlined init with take of Any(v51, (v17 + 32 * v39 + 32));
      v15 = v31 + 1;
      v28 += 32;
      v14 = v43;
      v13 = v44;
      if (v42 == v44)
      {
        return v17;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t PythonesqueJSONDumpsEncoder.encodeSchema(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34[1] = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONSchema();
  lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8]);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {
LABEL_7:
    v17 = swift_unexpectedError();
    __break(1u);
    goto LABEL_8;
  }

  v12 = v10;
  v13 = v11;
  v14 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36[0] = 0;
  v16 = [v14 JSONObjectWithData:isa options:4 error:v36];

  v17 = v36[0];
  if (!v16)
  {
LABEL_8:
    v32 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = swift_unexpectedError();
    __break(1u);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(v37, a1, a2, a3, v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v18 = _bridgeAnythingToObjectiveC<A>(_:)();
  v35 = 0;
  v19 = [v14 dataWithJSONObject:v18 options:10 error:&v35];
  swift_unknownObjectRelease();
  v20 = v35;
  if (v19)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    static String.Encoding.utf8.getter();
    v24 = String.init(data:encoding:)();
    if (v25)
    {
      v26 = specialized PythonesqueJSONDumpsEncoder.removeSentinels(from:)(v24, v25);
      v28 = v27;

      v29 = specialized PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:)(v26, v28);
      outlined consume of Data._Representation(v12, v13);
      outlined consume of Data._Representation(v21, v23);

      __swift_destroy_boxed_opaque_existential_0(v37);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v30 = *MEMORY[0x1E69E9840];
      return v29;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  v33 = v20;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v316 = a4;
  v306 = a3;
  v324 = a2;
  v281 = a5;
  v298 = type metadata accessor for JSONSchema.Array();
  v6 = *(v298 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v298);
  v297 = &v279 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = type metadata accessor for JSONSchema.Dictionary();
  v325 = *(v301 - 8);
  v9 = *(v325 + 8);
  MEMORY[0x1EEE9AC00](v301);
  v300 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for JSONSchema.Object();
  v11 = *(v304 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v304);
  v291 = &v279 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v295 = &v279 - v15;
  v305 = type metadata accessor for JSONSchema.AnyOf();
  v16 = *(v305 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v305);
  v20 = &v279 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v303 = &v279 - v21;
  v22 = type metadata accessor for JSONSchema();
  v310 = *(v22 - 8);
  v23 = *(v310 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v282 = &v279 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v290 = &v279 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v287 = &v279 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v296 = &v279 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v299 = &v279 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v294 = &v279 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v302 = &v279 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v279 - v39);
  MEMORY[0x1EEE9AC00](v38);
  v314 = &v279 - v41;
  outlined init with copy of Any(a1, &v335);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v42 = v332;
  }

  else
  {
    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v338 = v42;
  v43 = *(v42 + 16);
  v311 = v42;
  v280 = v20;
  if (v43 && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000), (v45 & 1) != 0) && (outlined init with copy of Any(*(v42 + 56) + 32 * v44, &v335), (swift_dynamicCast() & 1) != 0))
  {
    if (v337)
    {
      v46 = v337;
      goto LABEL_11;
    }
  }

  else
  {
    v337 = 0;
  }

  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_11:
  v317 = v46;
  v49 = *(v46 + 64);
  v48 = v46 + 64;
  v47 = v49;
  v50 = 1 << *(v48 - 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v53 = (v50 + 63) >> 6;
  v326 = (v310 + 16);
  v323 = (v310 + 88);
  LODWORD(v322) = *MEMORY[0x1E69A0A98];
  LODWORD(v320) = *MEMORY[0x1E69A0A88];
  LODWORD(v319) = *MEMORY[0x1E69A0AA0];
  v321 = (v310 + 8);
  LODWORD(v318) = *MEMORY[0x1E69A0AB0];
  v309 = (v310 + 96);
  v289 = (v11 + 16);
  v288 = (v11 + 8);
  v308 = (v310 + 32);
  v284 = (v6 + 16);
  v283 = (v6 + 8);
  v286 = (v325 + 16);
  v285 = (v325 + 8);
  v293 = (v16 + 16);
  v292 = (v16 + 8);

  v54 = 0;
  v325 = v22;
  if (!v52)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v58 = v54;
LABEL_28:
    v59 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v60 = v59 | (v58 << 6);
    v61 = (*(v317 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    outlined init with copy of Any(*(v317 + 56) + 32 * v60, &v330);
    *&v332 = v63;
    *(&v332 + 1) = v62;
    outlined init with take of Any(&v330, &v333);

    v22 = v325;
LABEL_29:
    v335 = v332;
    v336[0] = v333;
    v336[1] = v334;
    v64 = *(&v332 + 1);
    if (!*(&v332 + 1))
    {
      break;
    }

    v65 = v335;
    outlined init with take of Any(v336, &v332);
    v66 = *v326;
    (*v326)(v40, v324, v22);
    v67 = (*v323)(v40, v22);
    if (v67 == v322)
    {
      v312 = v58;
      (*v309)(v40, v22);
      v68 = *v40;
      v69 = swift_projectBox();
      (*v293)(v303, v69, v305);
      v70 = JSONSchema.AnyOf.definitions.getter();
      if (!v70)
      {
        goto LABEL_203;
      }

      v71 = v70;
      v313 = v68;
      if (!*(v70 + 16))
      {
        goto LABEL_198;
      }

      v72 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
      if ((v73 & 1) == 0)
      {
        goto LABEL_198;
      }

      v74 = v325;
      v66(v302, *(v71 + 56) + *(v310 + 72) * v72, v325);
      (*v292)(v303, v305);
      v75 = &v330 + 8;
      goto LABEL_52;
    }

    if (v67 == v320)
    {
      v312 = v58;
      (*v309)(v40, v22);
      v76 = *v40;
      v77 = swift_projectBox();
      v78 = (*v286)(v300, v77, v301);
      v79 = MEMORY[0x1AC57B260](v78);
      if (!v79)
      {
        goto LABEL_204;
      }

      v80 = v79;
      v313 = v76;
      if (!*(v79 + 16))
      {
        goto LABEL_199;
      }

      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
      if ((v82 & 1) == 0)
      {
        goto LABEL_199;
      }

      v74 = v325;
      v66(v299, *(v80 + 56) + *(v310 + 72) * v81, v325);
      (*v285)(v300, v301);
      v75 = &v328;
      goto LABEL_52;
    }

    if (v67 == v319)
    {
      v312 = v58;
      (*v309)(v40, v22);
      v83 = *v40;
      v84 = swift_projectBox();
      v85 = (*v284)(v297, v84, v298);
      v86 = MEMORY[0x1AC57B2F0](v85);
      if (!v86)
      {
        goto LABEL_205;
      }

      v87 = v86;
      v313 = v83;
      if (!*(v86 + 16))
      {
        goto LABEL_200;
      }

      v88 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
      if ((v89 & 1) == 0)
      {
        goto LABEL_200;
      }

      v74 = v325;
      v66(v296, *(v87 + 56) + *(v310 + 72) * v88, v325);
      (*v283)(v297, v298);
      v75 = v327 + 8;
      goto LABEL_52;
    }

    if (v67 == v318)
    {
      v312 = v58;
      (*v309)(v40, v22);
      v90 = *v40;
      v91 = swift_projectBox();
      (*v289)(v295, v91, v304);
      v92 = JSONSchema.Object.definitions.getter();
      if (!v92)
      {
        goto LABEL_206;
      }

      v93 = v92;
      v313 = v90;
      if (!*(v92 + 16))
      {
        goto LABEL_201;
      }

      v94 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
      if ((v95 & 1) == 0)
      {
        goto LABEL_201;
      }

      v74 = v325;
      v66(v294, *(v93 + 56) + *(v310 + 72) * v94, v325);
      (*v288)(v295, v304);
      v75 = &v326;
LABEL_52:
      v96 = *(v75 - 32);

      v58 = v314;
      (*v308)(v314, v96, v74);

      if (v337)
      {
        v97 = v315;
        PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(&v332, v58, v306, v316);
        v315 = v97;
        if (v97)
        {
          goto LABEL_175;
        }

        outlined init with take of Any(&v330, v327);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v337;
        v329 = v337;
        v337 = 0x8000000000000000;
        v100 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
        v102 = *(v99 + 16);
        v103 = (v101 & 1) == 0;
        v104 = __OFADD__(v102, v103);
        v105 = v102 + v103;
        if (v104)
        {
          goto LABEL_184;
        }

        v106 = v101;
        if (*(v99 + 24) >= v105)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_60;
          }

          v111 = v100;
          specialized _NativeDictionary.copy()();
          v100 = v111;
          if ((v106 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_61:
          v108 = v100;

          v109 = v329;
          v110 = (v329[7] + 32 * v108);
          __swift_destroy_boxed_opaque_existential_0(v110);
          outlined init with take of Any(v327, v110);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, isUniquelyReferenced_nonNull_native);
          v100 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v64);
          if ((v106 & 1) != (v107 & 1))
          {
            goto LABEL_208;
          }

LABEL_60:
          if (v106)
          {
            goto LABEL_61;
          }

LABEL_63:
          v109 = v329;
          v329[(v100 >> 6) + 8] |= 1 << v100;
          v112 = (v109[6] + 16 * v100);
          *v112 = v65;
          v112[1] = v64;
          outlined init with take of Any(v327, (v109[7] + 32 * v100));
          v113 = v109[2];
          v104 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v104)
          {
            goto LABEL_187;
          }

          v109[2] = v114;
        }

        v337 = v109;
      }

      if (v337)
      {
        *(&v331 + 1) = v307;
        *&v330 = v337;
        outlined init with take of Any(&v330, v327);

        v115 = v338;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v329 = v115;
        v117 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
        v119 = v115[2];
        v120 = (v118 & 1) == 0;
        v104 = __OFADD__(v119, v120);
        v121 = v119 + v120;
        if (v104)
        {
          goto LABEL_183;
        }

        v122 = v118;
        if (v115[3] >= v121)
        {
          if ((v116 & 1) == 0)
          {
            v134 = v117;
            specialized _NativeDictionary.copy()();
            v117 = v134;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, v116);
          v117 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
          if ((v122 & 1) != (v123 & 1))
          {
            goto LABEL_208;
          }
        }

        v22 = v325;
        v130 = v329;
        v311 = v329;
        if (v122)
        {
          v55 = (v329[7] + 32 * v117);
          __swift_destroy_boxed_opaque_existential_0(v55);
          outlined init with take of Any(v327, v55);
          (*v321)(v314, v22);
          __swift_destroy_boxed_opaque_existential_0(&v332);
        }

        else
        {
          v329[(v117 >> 6) + 8] |= 1 << v117;
          v131 = (v130[6] + 16 * v117);
          *v131 = 0x7366656424;
          v131[1] = 0xE500000000000000;
          outlined init with take of Any(v327, (v130[7] + 32 * v117));
          (*v321)(v314, v22);
          __swift_destroy_boxed_opaque_existential_0(&v332);
          v132 = v130[2];
          v104 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v104)
          {
            goto LABEL_186;
          }

          v130[2] = v133;
        }

        v338 = v130;
      }

      else
      {
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(0x7366656424, 0xE500000000000000);
        if (v125)
        {
          v126 = v124;
          v127 = v338;
          v128 = swift_isUniquelyReferenced_nonNull_native();
          v329 = v127;
          v22 = v325;
          if (!v128)
          {
            specialized _NativeDictionary.copy()();
            v127 = v329;
          }

          v129 = *(*(v127 + 48) + 16 * v126 + 8);

          outlined init with take of Any((*(v127 + 56) + 32 * v126), v327);
          specialized _NativeDictionary._delete(at:)(v126, v127);
          (*v321)(v314, v22);
          __swift_destroy_boxed_opaque_existential_0(&v332);
          v311 = v127;
          v338 = v127;
        }

        else
        {
          v22 = v325;
          (*v321)(v314, v325);
          __swift_destroy_boxed_opaque_existential_0(&v332);
          memset(v327, 0, sizeof(v327));
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v327, &_sypSgMd, &_sypSgMR);
      }

      v54 = v312;
      if (!v52)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v332);

      (*v321)(v40, v22);
      v54 = v58;
      if (!v52)
      {
LABEL_18:
        if (v53 <= v54 + 1)
        {
          v56 = v54 + 1;
        }

        else
        {
          v56 = v53;
        }

        v57 = v56 - 1;
        while (1)
        {
          v58 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v58 >= v53)
          {
            v52 = 0;
            v333 = 0u;
            v334 = 0u;
            v332 = 0u;
            v58 = v57;
            goto LABEL_29;
          }

          v52 = *(v48 + 8 * v58);
          ++v54;
          if (v52)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_175:

        (*v321)(v58, v325);
        __swift_destroy_boxed_opaque_existential_0(&v332);
        goto LABEL_87;
      }
    }
  }

  v135 = *v326;
  v136 = v287;
  (*v326)(v287, v324, v22);
  v137 = (*v323)(v136, v22);
  if (v137 == v322)
  {
    (*v309)(v136, v22);
    v138 = *v136;
    v139 = swift_projectBox();
    v140 = v280;
    (*v293)(v280, v139, v305);
    v141 = v311;
    v142 = v315;
    v143 = v316;
    if (!*(v311 + 16))
    {
      goto LABEL_192;
    }

    v144 = specialized __RawDictionaryStorage.find<A>(_:)(0x664F796E61, 0xE500000000000000);
    if ((v145 & 1) == 0)
    {
      goto LABEL_193;
    }

    outlined init with copy of Any(*(v141 + 56) + 32 * v144, &v332);
    outlined init with take of Any(&v332, &v335);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    v147 = swift_dynamicCast();
    v148 = v330;
    v149 = MEMORY[0x1AC57B2B0](v147);
    MEMORY[0x1EEE9AC00](v149);
    *(&v279 - 2) = v306;
    *(&v279 - 1) = v143;
    v150 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySayypGSay29GenerativeFunctionsFoundation10JSONSchemaOGG_ypsAE_pTg506_syp29fg12Foundation10i5Oyps5C33_pIgnnrzo_yp_ACtypsAD_pIegnrzr_TRypAKypsAE_pIgnnrzo_Tf1cn_n(v148, v149, partial apply for closure #1 in PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:), (&v279 - 4));
    if (v142)
    {
      (*v292)(v140, v305);

      goto LABEL_87;
    }

    v218 = v150;
    v315 = 0;

    *(&v336[0] + 1) = v146;
    *&v335 = v218;
    outlined init with take of Any(&v335, &v332);
    v219 = v338;
    v220 = swift_isUniquelyReferenced_nonNull_native();
    *&v330 = v219;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v332, 0x664F796E61, 0xE500000000000000, v220);
    (*v292)(v140, v305);

    v338 = v330;
LABEL_128:
    specialized Dictionary._Variant.removeValue(forKey:)(0x656C746974, 0xE500000000000000, &v335);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v335, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x726564726F2D78, 0xE700000000000000, &v335);
    outlined destroy of [Regex2BNF.CharacterPredicate](&v335, &_sypSgMd, &_sypSgMR);
    v223 = v338;
    swift_bridgeObjectRetain_n();
    v224 = 0;
    v225 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v226 = v225;
    v227 = 9;
    if (v224 > 9)
    {
      v227 = v224;
    }

    v228 = -v227;
    v229 = &outlined read-only object #0 of PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:) + 16 * v224++;
    v230 = (v229 + 40);
    while (1)
    {
      if (v228 + v224 == 1)
      {
        __break(1u);
        goto LABEL_180;
      }

      if (v223[2])
      {
        v232 = *(v230 - 1);
        v231 = *v230;

        specialized __RawDictionaryStorage.find<A>(_:)(v232, v231);
        if (v233)
        {
          v234 = swift_isUniquelyReferenced_nonNull_native();
          *&v335 = v226;
          if ((v234 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v226[2] + 1, 1);
            v226 = v335;
          }

          v236 = v226[2];
          v235 = v226[3];
          if (v236 >= v235 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v235 > 1), v236 + 1, 1);
            v226 = v335;
          }

          v226[2] = (v236 + 1);
          v237 = &v226[2 * v236];
          v237[4] = v232;
          v237[5] = v231;
          v225 = v226;
          if (v224 == 9)
          {
LABEL_144:

            swift_arrayDestroy();

            v325 = v225[2];
            if (!v325)
            {
LABEL_173:

              v274 = v281;
              v281[3] = v307;
              *v274 = v223;
            }

            v238 = 0;
            v324 = 0x80000001A8FDA710;
            v239 = (v225 + 5);
            v323 = v225;
            while (v238 < v225[2])
            {
              v241 = *(v239 - 1);
              v240 = *v239;
              v326 = v239;
              ++v238;

              isa = Int._bridgeToObjectiveC()().super.super.isa;
              v243 = [v316 stringForObjectValue_];

              if (!v243)
              {
                goto LABEL_197;
              }

              v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v246 = v245;

              *&v335 = 0;
              *(&v335 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(30);

              *&v335 = 0xD000000000000019;
              *(&v335 + 1) = v324;
              MEMORY[0x1AC57C120](v244, v246);

              MEMORY[0x1AC57C120](95, 0xE100000000000000);
              MEMORY[0x1AC57C120](v241, v240);
              v247 = v335;
              if (v223[2] && (v248 = specialized __RawDictionaryStorage.find<A>(_:)(v241, v240), (v249 & 1) != 0))
              {
                outlined init with copy of Any(v223[7] + 32 * v248, &v335);
                outlined init with take of Any(&v335, &v332);
                v250 = v338;
                v251 = swift_isUniquelyReferenced_nonNull_native();
                *&v330 = v250;
                v253 = specialized __RawDictionaryStorage.find<A>(_:)(v247, *(&v247 + 1));
                v254 = v250[2];
                v255 = (v252 & 1) == 0;
                v256 = v254 + v255;
                if (__OFADD__(v254, v255))
                {
                  goto LABEL_182;
                }

                v257 = v252;
                if (v250[3] >= v256)
                {
                  if ((v251 & 1) == 0)
                  {
                    specialized _NativeDictionary.copy()();
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v256, v251);
                  v258 = specialized __RawDictionaryStorage.find<A>(_:)(v247, *(&v247 + 1));
                  if ((v257 & 1) != (v259 & 1))
                  {
                    goto LABEL_208;
                  }

                  v253 = v258;
                }

                v225 = v323;
                if (v257)
                {

                  v223 = v330;
                  v266 = (*(v330 + 56) + 32 * v253);
                  __swift_destroy_boxed_opaque_existential_0(v266);
                  outlined init with take of Any(&v332, v266);
                }

                else
                {
                  v223 = v330;
                  *(v330 + 8 * (v253 >> 6) + 64) |= 1 << v253;
                  *(v223[6] + 16 * v253) = v247;
                  outlined init with take of Any(&v332, (v223[7] + 32 * v253));
                  v267 = v223[2];
                  v104 = __OFADD__(v267, 1);
                  v268 = v267 + 1;
                  if (v104)
                  {
                    goto LABEL_185;
                  }

                  v223[2] = v268;
                }

                v338 = v223;
                v264 = v326;
              }

              else
              {
                v260 = specialized __RawDictionaryStorage.find<A>(_:)(v247, *(&v247 + 1));
                v262 = v261;

                if (v262)
                {
                  v223 = v338;
                  v263 = swift_isUniquelyReferenced_nonNull_native();
                  *&v332 = v223;
                  v225 = v323;
                  v264 = v326;
                  if (!v263)
                  {
                    specialized _NativeDictionary.copy()();
                    v223 = v332;
                  }

                  v265 = *(v223[6] + 16 * v260 + 8);

                  outlined init with take of Any((v223[7] + 32 * v260), &v335);
                  specialized _NativeDictionary._delete(at:)(v260, v223);
                  v338 = v223;
                }

                else
                {
                  v335 = 0u;
                  v336[0] = 0u;
                  v225 = v323;
                  v264 = v326;
                }

                outlined destroy of [Regex2BNF.CharacterPredicate](&v335, &_sypSgMd, &_sypSgMR);
              }

              v269 = specialized __RawDictionaryStorage.find<A>(_:)(v241, v240);
              v271 = v270;

              if (v271)
              {
                v223 = v338;
                v272 = swift_isUniquelyReferenced_nonNull_native();
                *&v332 = v223;
                if (!v272)
                {
                  specialized _NativeDictionary.copy()();
                  v223 = v332;
                }

                v273 = *(v223[6] + 16 * v269 + 8);

                outlined init with take of Any((v223[7] + 32 * v269), &v335);
                specialized _NativeDictionary._delete(at:)(v269, v223);
                v338 = v223;
              }

              else
              {
                v335 = 0u;
                v336[0] = 0u;
              }

              outlined destroy of [Regex2BNF.CharacterPredicate](&v335, &_sypSgMd, &_sypSgMR);
              v239 = (v264 + 2);
              if (v325 == v238)
              {
                goto LABEL_173;
              }
            }

LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          goto LABEL_129;
        }
      }

      ++v224;
      v230 += 2;
      if (v224 == 10)
      {
        v225 = v226;
        goto LABEL_144;
      }
    }
  }

  v152 = v311;
  if (v137 != v318)
  {
    (*v321)(v136, v22);
    goto LABEL_128;
  }

  (*v309)(v136, v22);
  v153 = *v136;
  v154 = swift_projectBox();
  (*v289)(v291, v154, v304);
  v155 = v315;
  if (!*(v152 + 16))
  {
    goto LABEL_195;
  }

  v318 = v135;
  v313 = v153;
  v156 = specialized __RawDictionaryStorage.find<A>(_:)(0x69747265706F7270, 0xEA00000000007365);
  if ((v157 & 1) == 0)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:

    __break(1u);
LABEL_199:

    __break(1u);
LABEL_200:

    __break(1u);
LABEL_201:

    __break(1u);
LABEL_202:

    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  outlined init with copy of Any(*(v152 + 56) + 32 * v156, &v332);
  outlined init with take of Any(&v332, &v335);
  swift_dynamicCast();
  v158 = specialized PythonesqueJSONDumpsEncoder.keyOrder(for:)();
  v159 = *&v327[0] + 64;
  v160 = 1 << *(*&v327[0] + 32);
  v161 = -1;
  if (v160 < 64)
  {
    v161 = ~(-1 << v160);
  }

  v162 = v161 & *(*&v327[0] + 64);
  v163 = (v160 + 63) >> 6;
  v319 = 0x80000001A8FDA710;
  v320 = *&v327[0];

  v164 = 0;
  v317 = v158;
  v314 = v163;
  while (2)
  {
    if (!v162)
    {
      while (1)
      {
        v165 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          goto LABEL_181;
        }

        if (v165 >= v163)
        {
          break;
        }

        v162 = *(v159 + 8 * v165);
        ++v164;
        if (v162)
        {
          v164 = v165;
          goto LABEL_102;
        }
      }

      v315 = v155;

      *(&v336[0] + 1) = v307;
      *&v335 = *&v327[0];
      outlined init with take of Any(&v335, &v332);

      v221 = v338;
      v222 = swift_isUniquelyReferenced_nonNull_native();
      *&v330 = v221;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v332, 0x69747265706F7270, 0xEA00000000007365, v222);
      (*v288)(v291, v304);
      v338 = v330;

      goto LABEL_128;
    }

LABEL_102:
    v166 = (*(v320 + 48) + ((v164 << 10) | (16 * __clz(__rbit64(v162)))));
    v168 = *v166;
    v167 = v166[1];
    v169 = *(v158 + 16);

    if (!v169 || (v170 = specialized __RawDictionaryStorage.find<A>(_:)(v168, v167), (v171 & 1) == 0))
    {

      type metadata accessor for GenerationError();
      lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      v275 = v167;
      swift_allocError();
      v277 = v276;
      *&v335 = 0;
      *(&v335 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x1AC57C120](0xD000000000000026, 0x80000001A8FDA730);
      MEMORY[0x1AC57C120](v168, v275);

      MEMORY[0x1AC57C120](0xD000000000000034, 0x80000001A8FDA760);
      v278 = *(&v335 + 1);
      *v277 = v335;
      v277[1] = v278;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_178;
    }

    if (__OFADD__(*(*(v158 + 56) + 8 * v170), 1))
    {
      goto LABEL_188;
    }

    v324 = v168;
    v323 = v167;
    v172 = Int._bridgeToObjectiveC()().super.super.isa;
    v173 = [v316 stringForObjectValue_];

    if (!v173)
    {
      goto LABEL_207;
    }

    v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = v175;

    *&v335 = 0;
    *(&v335 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v335 = 0xD000000000000019;
    *(&v335 + 1) = v319;
    MEMORY[0x1AC57C120](v174, v176);

    MEMORY[0x1AC57C120](95, 0xE100000000000000);
    v177 = v324;
    v178 = v323;
    MEMORY[0x1AC57C120](v324, v323);
    v179 = *&v327[0];
    if (!*(*&v327[0] + 16))
    {
      goto LABEL_189;
    }

    v180 = v155;
    v322 = *(&v335 + 1);
    v181 = v335;
    v182 = specialized __RawDictionaryStorage.find<A>(_:)(v177, v178);
    if ((v183 & 1) == 0)
    {
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v184 = v159;
    v185 = outlined init with copy of Any(*(v179 + 56) + 32 * v182, &v335);
    v186 = MEMORY[0x1AC57B370](v185);
    if (!*(v186 + 16))
    {
      goto LABEL_202;
    }

    v187 = specialized __RawDictionaryStorage.find<A>(_:)(v324, v178);
    if ((v188 & 1) == 0)
    {
      goto LABEL_202;
    }

    v189 = v310;
    v190 = v282;
    v191 = v325;
    v318(v282, *(v186 + 56) + *(v310 + 72) * v187, v325);

    v192 = v290;
    (*(v189 + 32))(v290, v190, v191);
    PythonesqueJSONDumpsEncoder.addSentinelsAndDropNonPromptFields(json:schema:)(&v335, v192, v306, v316);
    if (!v180)
    {
      v315 = 0;
      outlined init with copy of Any(&v332, &v330);
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v194 = *&v327[0];
      v329 = *&v327[0];
      *&v327[0] = 0x8000000000000000;
      v195 = v181;
      v196 = v181;
      v197 = v322;
      v199 = specialized __RawDictionaryStorage.find<A>(_:)(v196, v322);
      v200 = *(v194 + 16);
      v201 = (v198 & 1) == 0;
      v202 = v200 + v201;
      if (__OFADD__(v200, v201))
      {
        goto LABEL_191;
      }

      v203 = v198;
      if (*(v194 + 24) >= v202)
      {
        if (v193)
        {
          v159 = v184;
          if ((v198 & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v159 = v184;
          if ((v203 & 1) == 0)
          {
            goto LABEL_120;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v202, v193);
        v204 = specialized __RawDictionaryStorage.find<A>(_:)(v195, v197);
        if ((v203 & 1) != (v205 & 1))
        {
          goto LABEL_208;
        }

        v199 = v204;
        v159 = v184;
        if ((v203 & 1) == 0)
        {
LABEL_120:
          v206 = v329;
          v329[(v199 >> 6) + 8] |= 1 << v199;
          v208 = (v206[6] + 16 * v199);
          *v208 = v195;
          v208[1] = v197;
          outlined init with take of Any(&v330, (v206[7] + 32 * v199));
          v209 = v206[2];
          v104 = __OFADD__(v209, 1);
          v210 = v209 + 1;
          if (v104)
          {
            goto LABEL_194;
          }

          v206[2] = v210;
          goto LABEL_122;
        }
      }

      v206 = v329;
      v207 = (v329[7] + 32 * v199);
      __swift_destroy_boxed_opaque_existential_0(v207);
      outlined init with take of Any(&v330, v207);
LABEL_122:
      *&v327[0] = v206;

      v211 = specialized __RawDictionaryStorage.find<A>(_:)(v324, v323);
      v212 = v325;
      if (v213)
      {
        v214 = v211;
        v215 = swift_isUniquelyReferenced_nonNull_native();
        v216 = *&v327[0];
        v329 = *&v327[0];
        v155 = v315;
        v158 = v317;
        if ((v215 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v216 = v329;
        }

        v217 = *(*(v216 + 48) + 16 * v214 + 8);

        outlined init with take of Any((*(v216 + 56) + 32 * v214), &v330);
        specialized _NativeDictionary._delete(at:)(v214, v216);
        *&v327[0] = v216;
      }

      else
      {
        v330 = 0u;
        v331 = 0u;
        v155 = v315;
        v158 = v317;
      }

      v162 &= v162 - 1;

      outlined destroy of [Regex2BNF.CharacterPredicate](&v330, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_0(&v332);
      (*v321)(v290, v212);
      __swift_destroy_boxed_opaque_existential_0(&v335);
      v163 = v314;
      continue;
    }

    break;
  }

  (*v321)(v290, v191);
  __swift_destroy_boxed_opaque_existential_0(&v335);
LABEL_178:
  (*v288)(v291, v304);

LABEL_87:
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x1AC57CB60](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + v3);
          v17 = (v15 + v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.init()()
{
  v0 = type metadata accessor for JSONEncoder.OutputFormatting();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1A8FC9400;
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  [objc_msgSend(objc_allocWithZone(MEMORY[0x1E696ADA0]) init)];
  return v6;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.keyOrder(for:)()
{
  v0 = JSONSchema.Object.order.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_17:

    return v5;
  }

  v3 = 0;
  v4 = (v0 + 40);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v8 = *(v4 - 1);
    v7 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v5[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v5[3] < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v10;
    specialized _NativeDictionary.copy()();
    v10 = v21;
    if (v16)
    {
LABEL_3:
      v6 = v10;

      *(v5[7] + 8 * v6) = v3;
      goto LABEL_4;
    }

LABEL_12:
    v5[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (v5[6] + 16 * v10);
    *v18 = v8;
    v18[1] = v7;
    *(v5[7] + 8 * v10) = v3;
    v19 = v5[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_20;
    }

    v5[2] = v20;
LABEL_4:
    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.removeSentinels(from:)(uint64_t a1, unint64_t a2)
{
  String.count.getter();
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  if (v4)
  {
    v6 = 4 * v4;
    v7 = v5 | (v4 << 16);
    while (1)
    {
      v8 = String.subscript.getter();
      v10 = specialized Sequence<>.starts<A>(with:)(0xD000000000000019, 0x80000001A8FDA710, v8, v9);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = String.index(_:offsetBy:limitedBy:)();
      v13 = (v12 & 1) != 0 ? v7 : v11;
      if (v6 <= v13 >> 14)
      {
        break;
      }

      String.subscript.getter();
      v14 = Character.isNumber.getter();

      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = String.index(after:)();
      v16 = v15 >> 14 < v6;
      if (v15 >> 14 >= v6)
      {
        goto LABEL_20;
      }

      String.subscript.getter();
      v17 = Character.isNumber.getter();

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = String.index(after:)();
      v16 = v18 >> 14 < v6;
      if (v18 >> 14 >= v6)
      {
        goto LABEL_20;
      }

      String.subscript.getter();
      v19 = Character.isNumber.getter();

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = String.index(after:)();
      v16 = v20 >> 14 < v6;
      if (v20 >> 14 >= v6)
      {
LABEL_20:
        v22 = 0;
      }

      else
      {
        String.subscript.getter();
        v21 = Character.isNumber.getter();

        if ((v21 & 1) == 0)
        {
          break;
        }

        v16 = v6 > String.index(after:)() >> 14;
        v22 = 1;
      }

      if (!v22 || !v16)
      {
        break;
      }

      if (String.subscript.getter() == 95 && v23 == 0xE100000000000000)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          break;
        }
      }

LABEL_28:
      if (v6 <= String.index(after:)() >> 14)
      {
        return 0;
      }
    }

    v25 = String.subscript.getter();
    MEMORY[0x1AC57C110](v25);

    goto LABEL_28;
  }

  return 0;
}

uint64_t specialized PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:)(uint64_t a1, unint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = a1;
  v25 = a2;
  v26 = 0;
  v27 = v2;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_9:
  while (2)
  {
    while (2)
    {
      v22 = v4;
      v7 = v4 & 0xC0;
      v8 = v3;
      while (1)
      {
        v9 = String.Iterator.next()();
        if (!v9.value._object)
        {

          v15 = *(v5 + 2);
          if (!v15)
          {
LABEL_34:

            return v28;
          }

          while (v15 <= *(v5 + 2))
          {
            v16 = v15 - 1;
            v17 = *&v5[8 * v15 + 24];
            String.index(_:offsetBy:)();
            String.insert(_:at:)();
            v15 = v16;
            if (!v16)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v3 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_36;
        }

        v23 = v9;
        MEMORY[0x1EEE9AC00](v9.value._countAndFlagsBits);
        v20 = &v23;
        v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v19, &outlined read-only object #0 of PythonesqueJSONDumpsEncoder.insertCanonicalSpaces(into:));
        swift_arrayDestroy();
        if ((v10 & 1) != 0 && v22 <= 0x3Fu)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v12 = *(v5 + 2);
          v11 = *(v5 + 3);
          if (v12 >= v11 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v5);
          }

          *(v5 + 2) = v12 + 1;
          *&v5[8 * v12 + 32] = v3;
        }

        if (v9.value._countAndFlagsBits == 34 && v9.value._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v6 = v22 & 1;
          if (v22 >> 6 != 1)
          {
            v6 = v22 & 1 | 0x40;
          }

          if (v22 >> 6)
          {
            v4 = v6;
          }

          else
          {
            v4 = ((v22 & 1) == 0) | 0x40;
          }

          goto LABEL_9;
        }

        if (v9.value._countAndFlagsBits == 92 && v9.value._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v8;
        if (v7 == 128)
        {
          v4 = v22 & 1 | 0x40;
          goto LABEL_9;
        }
      }

      v13 = v22;
      v14 = v22 >> 6;
      if (v14 == 1)
      {

        v4 = v13 & 1 | 0xFFFFFF80;
        continue;
      }

      break;
    }

    if (v14 == 2)
    {

      v4 = v13 & 1 | 0x40;
      continue;
    }

    break;
  }

LABEL_37:
  v21 = 0;
  v20 = 332;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with take of (Any, JSONSchema)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_syp_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type JSONSchema and conformance JSONSchema(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

_BYTE *ResponseFormatConvention.init(version:)@<X0>(_BYTE *result@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  if (*result)
  {
    *a2 = partial apply for closure #1 in ResponseFormatConvention.init(version:);
    a2[1] = 0;
  }

  else
  {
    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    *v2 = 0xD00000000000004ELL;
    v2[1] = 0x80000001A8FDA580;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t ResponseFormatConvention.render(format:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t specialized ResponseFormatV6.render(format:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecursiveSchema();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONSchema();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  v11 = *(*(v58 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v58);
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v57 - v14);
  v16 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v57 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v57 - v25);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v70 = 0;
  v71 = 0xE000000000000000;
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, &v57 - v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Prompt.ResponseFormat.Kind(v28, type metadata accessor for Prompt.ResponseFormat.Kind);
  if (EnumCaseMultiPayload == 1)
  {
    v30 = 0x72616D6D617267;
  }

  else
  {
    v30 = 0x6E6F736A206E69;
  }

  v69[0] = 0;
  v69[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v69[0] = 0xD000000000000012;
  v69[1] = 0x80000001A8FDA7A0;
  MEMORY[0x1AC57C120](v30, 0xE700000000000000);

  MEMORY[0x1AC57C120](46, 0xE100000000000000);
  MEMORY[0x1AC57C120](v69[0], v69[1]);

  strcpy(v69, "\nname: ");
  v69[1] = 0xE700000000000000;
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v26;
    v31 = v26[1];
    v33 = v26[3];
    v34 = v26[5];
  }

  else
  {
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v26, v15);
    v32 = *v15;
    v31 = v15[1];

    outlined destroy of Prompt.ResponseFormat.Kind(v15, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  MEMORY[0x1AC57C120](v32, v31);

  MEMORY[0x1AC57C120](v69[0], v69[1]);

  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v23, v15);
    v36 = v15[2];
    v37 = v15[3];

    outlined destroy of Prompt.ResponseFormat.Kind(v15, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    v39 = v72;
    if (!v37)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v35 = v23[1];
  v36 = v23[2];
  v37 = v23[3];
  v38 = v23[5];

  v39 = v72;
  if (v37)
  {
LABEL_11:
    v69[0] = 0;
    v69[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v69, "\ndescription: ");
    HIBYTE(v69[1]) = -18;
    MEMORY[0x1AC57C120](v36, v37);

    MEMORY[0x1AC57C120](v69[0], v69[1]);
  }

LABEL_12:
  outlined init with copy of Prompt.ResponseFormat.Kind(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v20[1];
    v42 = v20[3];
    v41 = v20[4];
    v43 = v20[5];
    strcpy(v69, "\ngrammar:\n");
    BYTE3(v69[1]) = 0;
    HIDWORD(v69[1]) = -369098752;

    MEMORY[0x1AC57C120](v41, v43);
    swift_bridgeObjectRelease_n();

    MEMORY[0x1AC57C120](v69[0], v69[1]);
  }

  else
  {
    v44 = v68;
    outlined init with take of Prompt.ResponseFormat.SchemaDetails(v20, v68);
    v45 = v44 + *(v58 + 24);
    v46 = v60;
    Schema.type.getter();
    v47 = v59;
    GenerationSchema.recursiveSchema()();
    (*(v64 + 8))(v46, v65);
    v48 = v63;
    RecursiveSchema.jsonSchema()();
    (*(v61 + 8))(v47, v62);
    v49 = specialized PythonesqueJSONDumpsEncoder.init()();
    v51 = v50;
    v52 = PythonesqueJSONDumpsEncoder.encodeSchema(_:)(v48, v49, v50);
    if (v39)
    {

      (*(v66 + 8))(v48, v67);
      outlined destroy of Prompt.ResponseFormat.Kind(v44, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
    }

    v55 = v53;
    v56 = v52;
    (*(v66 + 8))(v48, v67);

    strcpy(v69, "\nschema: ");
    WORD1(v69[1]) = 0;
    HIDWORD(v69[1]) = -385875968;
    MEMORY[0x1AC57C120](v56, v55);

    MEMORY[0x1AC57C120](v69[0], v69[1]);

    outlined destroy of Prompt.ResponseFormat.Kind(v44, type metadata accessor for Prompt.ResponseFormat.SchemaDetails);
  }

  return v70;
}

uint64_t outlined init with copy of Prompt.ResponseFormat.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.ResponseFormat.SchemaDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt.ResponseFormat.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StopSequenceMonitor.init(stopSequences:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v29 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_12:
      v18 = (*(v2 + 48) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];
      v21 = v20 & 0xFFFFFFFFFFFFLL;
      if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_19:
          result = specialized _NativeSet.extractSubset(using:count:)(v7, v5, v8, v2);
          goto LABEL_20;
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_19;
      }

      v17 = *(v2 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(v27, v5, v2, closure #1 in StopSequenceMonitor.init(stopSequences:));

  MEMORY[0x1AC57DBF0](v27, -1, -1);
  result = v28;
LABEL_20:
  v25 = MEMORY[0x1E69E7CC0];
  *a2 = result;
  a2[1] = v25;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL closure #1 in StopSequenceMonitor.init(stopSequences:)(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

Swift::tuple_tokens_OpaquePointer_didStopSequenceMatch_Bool __swiftcall StopSequenceMonitor.handleOutputToken(_:)(TokenGeneration::Token a1)
{
  v2 = *a1.text._countAndFlagsBits;
  v1 = *(a1.text._countAndFlagsBits + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v10 = StopSequenceMonitor.handleOutputTokens(_:)(inited);
  rawValue = v10.tokens._rawValue;
  object = v10.stopSequence.value._object;
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();

  v7 = rawValue;
  v8 = object != 0;
  result.tokens._rawValue = v7;
  result.didStopSequenceMatch = v8;
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return specialized _NativeSet.extractSubset(using:count:)(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized static StopSequenceMonitor.endsWithPrefix(_:stopSequence:)(uint64_t a1, unint64_t a2)
{
  v4 = String.count.getter();
  v5 = String.count.getter();

  if (v5 >= v4)
  {
    v40 = 0;
    v14 = a1;
    v16 = a2;
  }

  else
  {
    v6 = String.count.getter();
    v7 = specialized BidirectionalCollection.suffix(_:)(v6, a1, a2);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = MEMORY[0x1AC57C040](v7, v9, v11, v13);
    v16 = v15;

    v17 = String.count.getter();
    result = String.count.getter();
    if (__OFSUB__(v17, result))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v40 = v17 - result;
  }

  v19 = String.subscript.getter();
  v42 = v20;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v21 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v23 = String.Iterator.next()();
  object = v23.value._object;
  result = v23.value._countAndFlagsBits;
  if (!v23.value._object)
  {
LABEL_23:

    v39 = 0;
    goto LABEL_26;
  }

  v24 = 0;
  v41 = 4 * v21;
  while (1)
  {
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (result == v19 && object == v42)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = String.index(_:offsetBy:)();
    if (v41 < result >> 14)
    {
      goto LABEL_28;
    }

    v28 = String.subscript.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    Substring.distance(from:to:)();
    String.index(_:offsetBy:)();
    v35 = String.subscript.getter();
    if (v32 == v38 && v34 == v37 && v28 >> 16 == v35 >> 16 && v30 >> 16 == v36 >> 16)
    {
      break;
    }

    v25 = _stringCompareInternal(_:_:_:_:expecting:)();

    if (v25)
    {
      goto LABEL_24;
    }

LABEL_11:
    v26 = String.Iterator.next()();
    object = v26.value._object;
    result = v26.value._countAndFlagsBits;
    ++v24;
    if (!v26.value._object)
    {
      goto LABEL_23;
    }
  }

LABEL_24:

  if (__OFADD__(v24, v40))
  {
    goto LABEL_30;
  }

  v39 = String.index(_:offsetBy:)();
LABEL_26:

  return v39;
}

uint64_t outlined consume of StopSequenceMonitor.StopSequenceMatch(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t Token.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Token.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Token.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Token.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int Token.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Token and conformance Token()
{
  result = lazy protocol witness table cache variable for type Token and conformance Token;
  if (!lazy protocol witness table cache variable for type Token and conformance Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Token and conformance Token);
  }

  return result;
}

uint64_t static System.defaultInstructionsPrompt(appending:)()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.init(_:)();
  v5 = Prompt.components.getter();
  (*(v1 + 8))(v4, v0);
  v8 = v5;

  specialized Array.append<A>(contentsOf:)(v6);
  return Prompt.init(components:)();
}

size_t Prompt.parseAsChatMessagesPrompt(catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v146 = &v138 - v5;
  v175 = type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError(0);
  v6 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v138 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v138 - v11;
  v151 = type metadata accessor for System();
  v147 = *(v151 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for ChatMessagePrompt();
  v157 = *(v155 - 8);
  v14 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v180 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v138 - v17;
  v176 = type metadata accessor for Prompt.Component.Value();
  v148 = *(v176 - 8);
  v18 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v162 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v138 - v23;
  v166 = type metadata accessor for SpecialToken();
  v163 = *(v166 - 8);
  v24 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v154 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v138 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v153 = &v138 - v29;
  v183 = type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(0);
  v30 = *(*(v183 - 1) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v32 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v138 - v34;
  v36 = type metadata accessor for Prompt.Component();
  v152 = *(v36 - 8);
  v37 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Prompt();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v138 - v46;
  v48 = v185;
  result = Prompt.transformToPrepareForTokenGenerationPromptConsideringPromptTemplate(catalogClient:)(a1);
  v184 = v48;
  if (!v48)
  {
    v181 = v35;
    v170 = v32;
    v171 = v39;
    v141 = v36;
    v142 = v44;
    v140 = v41;
    v143 = v40;
    v169 = swift_allocBox();
    v51 = v50;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
    v53 = *(v52 - 8);
    v54 = *(v53 + 56);
    v182 = v52;
    v168 = v53 + 56;
    v167 = v54;
    (v54)(v51, 1, 3);
    v139 = v47;
    v55 = Prompt.components.getter();
    v56 = swift_allocObject();
    v172 = v56;
    v56[2] = MEMORY[0x1E69E7CC0];
    v149 = v56 + 2;
    v57 = *(v55 + 2);
    v183 = v51;
    if (v57)
    {
      swift_beginAccess();
      v58 = v152;
      v185 = v152 + 8;
      v178 = (v53 + 48);
      v179 = v152 + 16;
      v174 = (v148 + 88);
      v173 = *MEMORY[0x1E69C62D8];
      v165 = (v148 + 96);
      v164 = (v163 + 32);
      v163 += 8;
      v148 += 8;
      v147 += 8;
      v138 = v157 + 32;
      v59 = *(v55 + 2);
      v60 = v177;
      v61 = v141;
      v62 = v171;
      v63 = v166;
      while (1)
      {
        while (1)
        {
          if (!v59)
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v67 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v51 = *(v58 + 16);
          (v51)(v62, v55 + v67, v61);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > *(v55 + 3) >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v59, 1, v55);
          }

          v69 = v55 + v67;
          v70 = *(v58 + 8);
          v70(v69, v61);
          v71 = *(v58 + 72);
          if (v71 > 0 || v69 >= v69 + v71 + (*(v55 + 2) - 1) * v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --*(v55 + 2);
          v72 = v181;
          outlined init with copy of PromptTemplate.ResolvedModelBundleID(v183, v181, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
          v73 = (*v178)(v72, 3, v182);
          if (v73 > 1)
          {
            break;
          }

          if (!v73)
          {
            v74 = v162;
            if (one-time initialization token for turnEnd != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Prompt.SpecialToken(0);
            v76 = __swift_project_value_buffer(v75, static Prompt.SpecialToken.Chat.turnEnd);
            Prompt.Component.value.getter();
            v77 = v74;
            v78 = v74;
            v51 = v176;
            v79 = (*v174)(v77, v176);
            if (v79 == v173)
            {
              (*v165)(v78, v51);
              v80 = v154;
              (*v164)(v154, v78, v63);
              if (SpecialToken.identifier.getter() == *v76 && v81 == v76[1])
              {

                (*v163)(v80, v63);
                v51 = v170;
                v82 = v181;
                goto LABEL_48;
              }

              v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

              (*v163)(v80, v63);
              v51 = v170;
              v82 = v181;
              if (v101)
              {
LABEL_48:
                v70(v62, v61);
                v167(v51, 3, 3, v182);
                outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v51, v183);
LABEL_49:
                v102 = type metadata accessor for ChatMessageRole();
                (*(*(v102 - 8) + 8))(v82, v102);
                goto LABEL_7;
              }
            }

            else
            {
              (*v148)(v78, v51);
              v82 = v181;
            }

            v99 = v184;
            appendToLastChatMessage #1 (_:) in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v62, v172, v62);
            v184 = v99;
            if (v99)
            {
              v70(v62, v61);
              (*(v140 + 8))(v139, v143);

              v137 = type metadata accessor for ChatMessageRole();
              (*(*(v137 - 8) + 8))(v82, v137);
              goto LABEL_73;
            }

            v70(v62, v61);
            goto LABEL_49;
          }

          if (one-time initialization token for defaultInstructions != -1)
          {
            swift_once();
          }

          v90 = type metadata accessor for Prompt.SpecialToken(0);
          v91 = __swift_project_value_buffer(v90, static Prompt.SpecialToken.Chat.defaultInstructions);
          v92 = v160;
          Prompt.Component.value.getter();
          v93 = v176;
          v94 = (*v174)(v92, v176);
          if (v94 == v173)
          {
            (*v165)(v92, v93);
            v95 = v153;
            v96 = v92;
            v63 = v166;
            (*v164)(v153, v96, v166);
            if (SpecialToken.identifier.getter() == *v91 && v97 == v91[1])
            {

              (*v163)(v95, v63);
LABEL_51:
              v104 = v142;
              v105 = v184;
              Prompt.init(_:)();
              v106 = v150;
              MEMORY[0x1AC57BDF0](v104);
              System.toChatMessagePrompt()();
              (*v147)(v106, v151);
              v107 = v149;
              swift_beginAccess();
              v108 = *v107;
              v109 = swift_isUniquelyReferenced_nonNull_native();
              v184 = v105;
              if ((v109 & 1) == 0)
              {
                v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108[2] + 1, 1, v108);
              }

              v111 = v108[2];
              v110 = v108[3];
              if (v111 >= v110 >> 1)
              {
                v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110 > 1, v111 + 1, 1, v108);
              }

              v108[2] = v111 + 1;
              (*(v157 + 32))(v108 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v111, v158, v155);
              *v149 = v108;
              swift_endAccess();
              v70(v62, v61);
              v51 = v170;
              v167(v170, 2, 3, v182);
              v66 = v51;
LABEL_6:
              outlined assign with take of State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v66, v183);
              goto LABEL_7;
            }

            v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v163)(v95, v63);
            if (v103)
            {
              goto LABEL_51;
            }
          }

          else
          {
            (*v148)(v92, v93);
            v63 = v166;
          }

          v100 = v184;
          v51 = v156;
          _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(1, v62, v172, v169, v156);
          if (v100)
          {

            _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
            v184 = swift_allocError();
            v136 = v51;
            goto LABEL_72;
          }

          v184 = 0;
          v70(v62, v61);
LABEL_7:
          v35 = v180;
          v60 = v177;
          v59 = *(v55 + 2);
          if (!v59)
          {
            goto LABEL_57;
          }
        }

        if (v73 == 2)
        {
          if (one-time initialization token for turnEnd != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Prompt.SpecialToken(0);
          v84 = __swift_project_value_buffer(v83, static Prompt.SpecialToken.Chat.turnEnd);
          v85 = v161;
          Prompt.Component.value.getter();
          v86 = v176;
          v87 = (*v174)(v85, v176);
          if (v87 != v173)
          {
            (*v148)(v85, v86);
            v62 = v171;
LABEL_68:
            v134 = *(v175 + 20);
            v60 = v144;
            (v51)(&v144[v134], v62, v61);
            (*(v58 + 56))(&v60[v134], 0, 1, v61);
            *v60 = 1;
            _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
            swift_willThrowTypedImpl();

LABEL_69:
            v184 = swift_allocError();
            v136 = v60;
LABEL_72:
            outlined init with take of ModelBundle(v136, v135, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
            v70(v62, v61);
            (*(v140 + 8))(v139, v143);
            goto LABEL_73;
          }

          (*v165)(v85, v86);
          v88 = v159;
          (*v164)(v159);
          if (SpecialToken.identifier.getter() == *v84 && v89 == v84[1])
          {

            (*v163)(v88, v63);
            v65 = v170;
            v62 = v171;
          }

          else
          {
            v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v163)(v88, v63);
            v65 = v170;
            v62 = v171;
            if ((v64 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          v70(v62, v61);
          v167(v65, 3, 3, v182);
          v66 = v65;
          goto LABEL_6;
        }

        v98 = v184;
        _s9PromptKit0A0V19TokenGenerationCoreE019parseAsChatMessagesA013catalogClientAA0hiA0VAD012ModelCatalogK0_p_tKF016onTurnEndSpecialC0L_7isStartySb_tAcDE05ParseghiaT5ErrorVYKF(0, v62, v172, v169, v60);
        v184 = v98;
        if (v98)
        {

          _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
          goto LABEL_69;
        }

        v70(v62, v61);
        v35 = v180;
        v59 = *(v55 + 2);
        if (!v59)
        {
          goto LABEL_57;
        }
      }
    }

    v35 = v180;
    v61 = v141;
    v58 = v152;
LABEL_57:
    v112 = v183;
    swift_beginAccess();
    v59 = *MEMORY[0x1E69C6400];
    v113 = type metadata accessor for ChatMessageRole();
    v114 = v170;
    (*(*(v113 - 8) + 104))(v170, v59, v113);
    v167(v114, 0, 3, v182);
    LOBYTE(v112) = specialized static == infix(_:_:) in State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:)(v112, v114);
    swift_endAccess();
    outlined destroy of ModelBundle(v114, type metadata accessor for State #1 in Prompt.parseAsChatMessagesPrompt(catalogClient:));
    if (v112)
    {
      v51 = v149;
      swift_beginAccess();
      v115 = *v51;
      v116 = *(*v51 + 16);
      v63 = v140;
      if (!v116)
      {
        goto LABEL_77;
      }

      v117 = v157;
      v183 = ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v182 = *(v157 + 72);
      v118 = *(v157 + 16);
      v185 = v115;
      v119 = v35;
      v120 = v35;
      v121 = v155;
      v118(v119, &v183[v115 + v182 * (v116 - 1)], v155);
      v122 = v142;
      ChatMessagePrompt.prompt.getter();
      v181 = *(v117 + 8);
      v181(v120, v121);
      v123 = Prompt.components.getter();
      v124 = (v63 + 1);
      v125 = v122;
      v126 = v63[1];
      v126(v125, v143);
      swift_endAccess();
      v35 = *(v123 + 16);

      if (!v35)
      {
        v63 = v181;
        v59 = v182;
        v55 = v126;
        v51 = v183;
        swift_beginAccess();
        if (!*(v185 + 16))
        {
          goto LABEL_78;
        }

        v58 = v185;
        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v143;
        v180 = v124;
        if ((result & 1) == 0)
        {
LABEL_79:
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v58);
          v58 = result;
        }

        v127 = v59;
        v128 = *(v58 + 16);
        if (!v128)
        {
          __break(1u);
          return result;
        }

        v129 = v128 - 1;
        (v63)(&v51[v58 + (v128 - 1) * v127], v155);
        *(v58 + 16) = v129;
        v172[2] = v58;
        swift_endAccess();

        ChatMessagesPrompt.init(_:)();
        v55(v139, v35);
      }
    }

    else
    {

      v63 = v140;
    }

    v130 = v146;
    (*(v58 + 56))(v146, 1, 1, v61);
    _s26GenerativeModelsFoundation14PromptTemplateVAC0D3Kit0D35ComponentValueCustomDataConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Prompt.ParseAsChatMessagesPromptParseError and conformance Prompt.ParseAsChatMessagesPromptParseError, type metadata accessor for Prompt.ParseAsChatMessagesPromptParseError);
    v131 = v175;
    v132 = swift_allocError();
    *v133 = 3;
    outlined init with take of Prompt.Component?(v130, &v133[*(v131 + 20)]);
    v184 = v132;
    swift_willThrow();
    (v63[1])(v139, v143);
LABEL_73:
  }

  return result;
}