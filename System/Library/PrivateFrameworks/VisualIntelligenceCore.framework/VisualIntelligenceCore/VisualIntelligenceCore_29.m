void sub_1D8A1B924()
{
  v1 = *(v0 + 384);
  v2 = *v1;
  *(v0 + 1016) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 1024) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_12:
    v18 = *(v0 + 360);
    v19 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A13924(v1 + *(v19 + 20), v18, type metadata accessor for DetectionRequest);
    *(v18 + *(type metadata accessor for DetectionResult(0) + 20)) = v4;

    v20 = *(v0 + 8);
LABEL_16:

    v20();
    return;
  }

  v5 = 0;
  v6 = *(v0 + 992);
  *(v0 + 1032) = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_signposter;
  *(v0 + 1040) = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_preparationSignpostName;
  *(v0 + 1048) = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType;
  *(v0 + 1056) = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_tokenGenerator;
  *(v0 + 1064) = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_inferenceSignpostName;
  *(v0 + 228) = *(v6 + 80);
  v7 = MEMORY[0x1E69C9B80];
  *(v0 + 1320) = *MEMORY[0x1E69C9B78];
  *(v0 + 1324) = *v7;
  *(v0 + 1328) = *MEMORY[0x1E69C9B60];
  *(v0 + 1332) = *MEMORY[0x1E69E93E8];
  *(v0 + 1336) = *MEMORY[0x1E69C9BF8];
  *(v0 + 1340) = *MEMORY[0x1E69C9C00];
  while (1)
  {
    *(v0 + 1080) = v4;
    *(v0 + 1072) = v5;
    v8 = *(v0 + 1016);
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v9 = *(v0 + 1008);
    sub_1D8A13924(v8 + ((*(v0 + 228) + 32) & ~*(v0 + 228)) + *(*(v0 + 992) + 72) * v5, v9, type metadata accessor for DetectionRequest);
    v10 = *v9;
    v11 = (v0 + 1324);
    if (v10 == 9)
    {
      goto LABEL_7;
    }

    if (v10 == 10)
    {
      v11 = (v0 + 1320);
LABEL_7:
      (*(*(v0 + 960) + 104))(*(v0 + 936), *v11, *(v0 + 952));
      v12 = 0;
      goto LABEL_9;
    }

    v12 = 1;
LABEL_9:
    v13 = *(v0 + 960);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    (*(v13 + 56))(v16, v12, 1, v14);
    sub_1D881F6FC(v16, v15, &qword_1ECA67460);
    if ((*(v13 + 48))(v15, 1, v14) != 1)
    {
      break;
    }

    v17 = *(v0 + 944);
    sub_1D8A226E8(*(v0 + 1008), type metadata accessor for DetectionRequest);
    sub_1D87A14E4(v17, &qword_1ECA67460);
    v5 = *(v0 + 1072) + 1;
    if (v5 == *(v0 + 1024))
    {
      v1 = *(v0 + 384);
      goto LABEL_12;
    }
  }

  v21 = *(v0 + 368);
  (*(*(v0 + 960) + 32))(*(v0 + 976), *(v0 + 944), *(v0 + 952));
  IOSurface = CVPixelBufferGetIOSurface(v21);
  *(v0 + 1088) = IOSurface;
  v23 = *(v0 + 976);
  if (!IOSurface)
  {
    v29 = *(v0 + 1008);
    v30 = *(v0 + 960);
    v31 = *(v0 + 952);

    sub_1D88C53E4();
    swift_allocError();
    *v32 = xmmword_1D8B282F0;
    *(v32 + 16) = 3;
    swift_willThrow();
    (*(v30 + 8))(v23, v31);
    sub_1D8A226E8(v29, type metadata accessor for DetectionRequest);

    v20 = *(v0 + 8);
    goto LABEL_16;
  }

  v24 = *(v0 + 1328);
  v25 = *(v0 + 896);
  v26 = *(v0 + 880);
  v27 = *(*(v0 + 888) + 104);
  v28 = IOSurface;
  v27(v25, v24, v26);
  sub_1D8B14290();
  v33 = *(v0 + 928);
  v34 = *(v0 + 920);
  v35 = *(v0 + 912);
  v36 = *(v0 + 904);
  v37 = *(v0 + 408) + *(v0 + 1040);
  (*(*(v0 + 888) + 8))(*(v0 + 896), *(v0 + 880));
  (*(v35 + 32))(v33, v34, v36);
  *(v0 + 1344) = *(type metadata accessor for LoggingSignposter(0) + 20);
  v38 = *v37;
  v39 = *(v37 + 16);
  sub_1D8B15150();
  sub_1D8B15100();
  v40 = sub_1D8B15150();
  v41 = sub_1D8B16370();
  v42 = sub_1D8B16460();
  if (v42)
  {
    if ((v39 & 1) == 0)
    {
      if (v38)
      {
        v43 = v38;
        goto LABEL_26;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (v38 >> 32)
    {
      goto LABEL_32;
    }

    v43 = (v0 + 352);
    if ((v38 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_34;
    }

    if (v38 >> 16 > 0x10)
    {
      goto LABEL_33;
    }

LABEL_26:
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v40, v41, v45, v43, "", v44, 2u);
    MEMORY[0x1DA721330](v44, -1, -1);
  }

  v46 = *(v0 + 1008);
  v47 = *(v0 + 984);
  v48 = *(v0 + 840);
  v49 = *(v0 + 832);
  v50 = *(v0 + 808);
  v51 = *(v0 + 800);

  v52 = *(v50 + 16);
  *(v0 + 1096) = v52;
  *(v0 + 1104) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v49, v48, v51);
  *(v0 + 1112) = sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 1120) = sub_1D8B15190();
  v53 = *(v50 + 8);
  *(v0 + 1128) = v53;
  *(v0 + 1136) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53(v48, v51);
  sub_1D8B14220();
  v54 = *(v46 + *(v47 + 24));
  v55 = sub_1D8A15BA0();
  *(v0 + 1144) = v55;
  v56 = swift_task_alloc();
  *(v0 + 1152) = v56;
  *v56 = v0;
  v56[1] = sub_1D8A1C464;
  v57 = *(v0 + 792);

  sub_1D8A18914(v57, v54, v55);
}

uint64_t sub_1D8A1C464(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[145] = a1;
  v4[146] = a2;
  v4[147] = v2;

  if (v2)
  {
    v5 = v4[99];
    v6 = v4[98];
    v7 = v4[97];
    v8 = v4[51];
    (*(v6 + 8))(v5, v7);

    v9 = sub_1D8A21904;
    v10 = v8;
  }

  else
  {
    v11 = v4[51];
    (*(v4[98] + 8))(v4[99], v4[97]);

    v9 = sub_1D8A1C60C;
    v10 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1D8A1C60C()
{
  v111 = v0;
  if (qword_1EE0E4420 != -1)
  {
LABEL_53:
    swift_once();
  }

  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = sub_1D8B151E0();
  *(v0 + 1184) = __swift_project_value_buffer(v3, qword_1EE0E4428);
  sub_1D8A13924(v1, v2, type metadata accessor for DetectionRequest);

  v4 = sub_1D8B151C0();
  v5 = sub_1D8B161F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1168);
    v7 = *(v0 + 1160);
    v8 = *(v0 + 1000);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v109 = v10;
    *v9 = 136315395;
    v110 = *v8;
    v11 = CVDetection.DetectionType.description.getter();
    v13 = v12;
    sub_1D8A226E8(v8, type metadata accessor for DetectionRequest);
    v14 = sub_1D89AC714(v11, v13, &v109);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2085;
    *(v9 + 14) = sub_1D89AC714(v7, v6, &v109);
    _os_log_impl(&dword_1D8783000, v4, v5, "Running AFM+ (%s) inference with prompt %{sensitive}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 1000);

    sub_1D8A226E8(v15, type metadata accessor for DetectionRequest);
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  *(v0 + 1192) = qword_1EE0E54C8;
  if (sub_1D8B0AAA4())
  {
    sub_1D8A13924(*(v0 + 1008) + *(*(v0 + 984) + 20), *(v0 + 736), type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v16 = *(v0 + 712);
      v17 = *(v0 + 704);
      v18 = *(v0 + 696);
      (*(*(v0 + 752) + 32))(*(v0 + 768), *(v0 + 736), *(v0 + 744));
      sub_1D8B159B0();
      v19 = sub_1D8B15980();
      v21 = v20;
      *(v0 + 1200) = v19;
      *(v0 + 1208) = v20;
      (*(v17 + 8))(v16, v18);
      if (v21 >> 60 != 15)
      {
        v52 = *(v0 + 1048);
        v53 = *(v0 + 408);
        v54 = *(v0 + 392);
        v108 = *(v0 + 400);
        *(v0 + 288) = 0;
        *(v0 + 296) = 0xE000000000000000;
        sub_1D8B16720();
        LOBYTE(v109) = *(v53 + v52);
        v55 = CVDetection.DetectionType.description.getter();
        v57 = v56;

        *(v0 + 272) = v55;
        *(v0 + 280) = v57;
        MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
        sub_1D8A226A0(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
        v58 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v58);

        MEMORY[0x1DA71EFA0](0x6F7250747865742DLL, 0xEB0000000074706DLL);
        v59 = *(v0 + 272);
        v60 = *(v0 + 280);
        v61 = CameraSourceFrame.timestamp.getter(v54, v108);
        *(v0 + 184) = v19;
        *(v0 + 192) = v21;
        *(v0 + 200) = 7633012;
        *(v0 + 208) = 0xE300000000000000;
        *(v0 + 224) = 2;
        *(v0 + 160) = v59;
        *(v0 + 168) = v60;
        *(v0 + 176) = v61;
        sub_1D87A1544(v19, v21);
        if (qword_1ECA62268 != -1)
        {
          swift_once();
        }

        v24 = qword_1ECA675B0;
        *(v0 + 1216) = qword_1ECA675B0;
        v23 = sub_1D8A1D6A8;
        goto LABEL_14;
      }

      (*(*(v0 + 752) + 8))(*(v0 + 768), *(v0 + 744));
    }

    else
    {
      sub_1D8A226E8(*(v0 + 736), type metadata accessor for DetectionRequest.Originator);
    }
  }

  v22 = *(*(v0 + 408) + *(v0 + 1056));
  *(v0 + 1224) = v22;
  if (v22)
  {

    sub_1D8B142B0();
    v23 = sub_1D8A1E358;
    v24 = 0;
LABEL_14:
    v25 = 0;

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }

  v26 = sub_1D8B151C0();
  v27 = sub_1D8B16210();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1D8783000, v26, v27, "Token generator is unavailable.", v28, 2u);
    MEMORY[0x1DA721330](v28, -1, -1);
  }

  v29 = *(v0 + 1088);
  v30 = *(v0 + 976);
  v31 = *(v0 + 960);
  v32 = *(v0 + 952);
  v105 = *(v0 + 928);
  v106 = *(v0 + 1008);
  v33 = *(v0 + 912);
  v34 = *(v0 + 904);
  v35 = *(v0 + 408);

  sub_1D8A21F54(v35);

  (*(v31 + 8))(v30, v32);
  (*(v33 + 8))(v105, v34);
  sub_1D8A226E8(v106, type metadata accessor for DetectionRequest);
  v36 = *(v0 + 1080);
  v37 = *(v0 + 1072) + 1;
  if (v37 == *(v0 + 1024))
  {
LABEL_29:
    v48 = *(v0 + 384);
    v49 = *(v0 + 360);
    v50 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A13924(v48 + *(v50 + 20), v49, type metadata accessor for DetectionRequest);
    *(v49 + *(type metadata accessor for DetectionResult(0) + 20)) = v36;

    v51 = *(v0 + 8);
LABEL_38:

    return v51();
  }

  v107 = *(v0 + 1176);
  while (1)
  {
    *(v0 + 1080) = v36;
    *(v0 + 1072) = v37;
    v38 = *(v0 + 1016);
    if (v37 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_53;
    }

    v39 = *(v0 + 1008);
    sub_1D8A13924(v38 + ((*(v0 + 228) + 32) & ~*(v0 + 228)) + *(*(v0 + 992) + 72) * v37, v39, type metadata accessor for DetectionRequest);
    v40 = *v39;
    v41 = (v0 + 1324);
    if (v40 == 9)
    {
      goto LABEL_25;
    }

    if (v40 == 10)
    {
      v41 = (v0 + 1320);
LABEL_25:
      (*(*(v0 + 960) + 104))(*(v0 + 936), *v41, *(v0 + 952));
      v42 = 0;
      goto LABEL_27;
    }

    v42 = 1;
LABEL_27:
    v43 = *(v0 + 960);
    v44 = *(v0 + 952);
    v45 = *(v0 + 944);
    v46 = *(v0 + 936);
    (*(v43 + 56))(v46, v42, 1, v44);
    sub_1D881F6FC(v46, v45, &qword_1ECA67460);
    if ((*(v43 + 48))(v45, 1, v44) != 1)
    {
      break;
    }

    v47 = *(v0 + 944);
    sub_1D8A226E8(*(v0 + 1008), type metadata accessor for DetectionRequest);
    sub_1D87A14E4(v47, &qword_1ECA67460);
    v37 = *(v0 + 1072) + 1;
    if (v37 == *(v0 + 1024))
    {
      goto LABEL_29;
    }
  }

  v62 = *(v0 + 368);
  (*(*(v0 + 960) + 32))(*(v0 + 976), *(v0 + 944), *(v0 + 952));
  IOSurface = CVPixelBufferGetIOSurface(v62);
  *(v0 + 1088) = IOSurface;
  if (!IOSurface)
  {
    v69 = *(v0 + 1008);
    v76 = *(v0 + 976);
    v77 = *(v0 + 960);
    v78 = *(v0 + 952);

    sub_1D88C53E4();
    swift_allocError();
    *v79 = xmmword_1D8B282F0;
    *(v79 + 16) = 3;
    swift_willThrow();
    (*(v77 + 8))(v76, v78);
    goto LABEL_37;
  }

  v64 = *(v0 + 1328);
  v65 = *(v0 + 896);
  v66 = *(v0 + 880);
  v67 = *(*(v0 + 888) + 104);
  v68 = IOSurface;
  v67(v65, v64, v66);
  sub_1D8B14290();
  if (v107)
  {
    v69 = *(v0 + 1008);
    v70 = *(v0 + 976);
    v71 = *(v0 + 960);
    v72 = *(v0 + 952);
    v73 = *(v0 + 896);
    v74 = *(v0 + 888);
    v75 = *(v0 + 880);

    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v70, v72);

LABEL_37:
    sub_1D8A226E8(v69, type metadata accessor for DetectionRequest);

    v51 = *(v0 + 8);
    goto LABEL_38;
  }

  v81 = *(v0 + 928);
  v82 = *(v0 + 920);
  v83 = *(v0 + 912);
  v84 = *(v0 + 904);
  v85 = *(v0 + 408) + *(v0 + 1040);
  (*(*(v0 + 888) + 8))(*(v0 + 896), *(v0 + 880));
  (*(v83 + 32))(v81, v82, v84);
  *(v0 + 1344) = *(type metadata accessor for LoggingSignposter(0) + 20);
  v86 = *v85;
  v87 = *(v85 + 16);
  sub_1D8B15150();
  sub_1D8B15100();
  v88 = sub_1D8B15150();
  v89 = sub_1D8B16370();
  v23 = sub_1D8B16460();
  if ((v23 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v87)
  {
    goto LABEL_45;
  }

  if (v86)
  {
LABEL_48:
    v91 = swift_slowAlloc();
    *v91 = 0;
    v92 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v88, v89, v92, v86, "", v91, 2u);
    MEMORY[0x1DA721330](v91, -1, -1);
LABEL_49:
    v93 = *(v0 + 1008);
    v94 = *(v0 + 984);
    v95 = *(v0 + 840);
    v96 = *(v0 + 832);
    v97 = *(v0 + 808);
    v98 = *(v0 + 800);

    v99 = *(v97 + 16);
    *(v0 + 1096) = v99;
    *(v0 + 1104) = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v99(v96, v95, v98);
    *(v0 + 1112) = sub_1D8B151A0();
    swift_allocObject();
    *(v0 + 1120) = sub_1D8B15190();
    v100 = *(v97 + 8);
    *(v0 + 1128) = v100;
    *(v0 + 1136) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100(v95, v98);
    sub_1D8B14220();
    v101 = *(v93 + *(v94 + 24));
    v102 = sub_1D8A15BA0();
    *(v0 + 1144) = v102;
    v103 = swift_task_alloc();
    *(v0 + 1152) = v103;
    *v103 = v0;
    v103[1] = sub_1D8A1C464;
    v104 = *(v0 + 792);

    return sub_1D8A18914(v104, v101, v102);
  }

  __break(1u);
LABEL_45:
  if (v86 >> 32)
  {
    __break(1u);
    goto LABEL_55;
  }

  if ((v86 & 0xFFFFF800) != 0xD800)
  {
    v90 = v86 >> 16 > 0x10;
    v86 = (v0 + 352);
    if (!v90)
    {
      goto LABEL_48;
    }

LABEL_55:
    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1D8A1D6A8()
{
  v1 = *(v0 + 408);
  sub_1D8A3B1F4(v0 + 160, 7169633, 0xE300000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D8A1D724, v1, 0);
}

uint64_t sub_1D8A1D724()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  sub_1D87C12A4(*(v0 + 1200), *(v0 + 1208));
  sub_1D87DC9A0(v0 + 160);
  (*(v2 + 8))(v1, v3);
  v4 = *(*(v0 + 408) + *(v0 + 1056));
  *(v0 + 1224) = v4;
  if (v4)
  {

    sub_1D8B142B0();
    v5 = sub_1D8A1E358;
    v6 = 0;
    v7 = 0;

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16210();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8783000, v8, v9, "Token generator is unavailable.", v10, 2u);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  v11 = *(v0 + 1088);
  v12 = *(v0 + 976);
  v13 = *(v0 + 960);
  v14 = *(v0 + 952);
  v77 = *(v0 + 928);
  v78 = *(v0 + 1008);
  v15 = *(v0 + 912);
  v16 = *(v0 + 904);
  v17 = *(v0 + 408);

  sub_1D8A21F54(v17);

  (*(v13 + 8))(v12, v14);
  (*(v15 + 8))(v77, v16);
  v5 = sub_1D8A226E8(v78, type metadata accessor for DetectionRequest);
  v18 = *(v0 + 1080);
  v19 = *(v0 + 1072) + 1;
  if (v19 == *(v0 + 1024))
  {
LABEL_17:
    v30 = *(v0 + 384);
    v31 = *(v0 + 360);
    v32 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A13924(v30 + *(v32 + 20), v31, type metadata accessor for DetectionRequest);
    *(v31 + *(type metadata accessor for DetectionResult(0) + 20)) = v18;

    v33 = *(v0 + 8);
LABEL_23:

    return v33();
  }

  v79 = *(v0 + 1176);
  while (1)
  {
    *(v0 + 1080) = v18;
    *(v0 + 1072) = v19;
    v20 = *(v0 + 1016);
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v21 = *(v0 + 1008);
    sub_1D8A13924(v20 + ((*(v0 + 228) + 32) & ~*(v0 + 228)) + *(*(v0 + 992) + 72) * v19, v21, type metadata accessor for DetectionRequest);
    v22 = *v21;
    v23 = (v0 + 1324);
    if (v22 == 9)
    {
      goto LABEL_13;
    }

    if (v22 == 10)
    {
      v23 = (v0 + 1320);
LABEL_13:
      (*(*(v0 + 960) + 104))(*(v0 + 936), *v23, *(v0 + 952));
      v24 = 0;
      goto LABEL_15;
    }

    v24 = 1;
LABEL_15:
    v25 = *(v0 + 960);
    v26 = *(v0 + 952);
    v27 = *(v0 + 944);
    v28 = *(v0 + 936);
    (*(v25 + 56))(v28, v24, 1, v26);
    sub_1D881F6FC(v28, v27, &qword_1ECA67460);
    if ((*(v25 + 48))(v27, 1, v26) != 1)
    {
      break;
    }

    v29 = *(v0 + 944);
    sub_1D8A226E8(*(v0 + 1008), type metadata accessor for DetectionRequest);
    v5 = sub_1D87A14E4(v29, &qword_1ECA67460);
    v19 = *(v0 + 1072) + 1;
    if (v19 == *(v0 + 1024))
    {
      goto LABEL_17;
    }
  }

  v34 = *(v0 + 368);
  (*(*(v0 + 960) + 32))(*(v0 + 976), *(v0 + 944), *(v0 + 952));
  IOSurface = CVPixelBufferGetIOSurface(v34);
  *(v0 + 1088) = IOSurface;
  if (!IOSurface)
  {
    v41 = *(v0 + 1008);
    v48 = *(v0 + 976);
    v49 = *(v0 + 960);
    v50 = *(v0 + 952);

    sub_1D88C53E4();
    swift_allocError();
    *v51 = xmmword_1D8B282F0;
    *(v51 + 16) = 3;
    swift_willThrow();
    (*(v49 + 8))(v48, v50);
    goto LABEL_22;
  }

  v36 = *(v0 + 1328);
  v37 = *(v0 + 896);
  v38 = *(v0 + 880);
  v39 = *(*(v0 + 888) + 104);
  v40 = IOSurface;
  v39(v37, v36, v38);
  sub_1D8B14290();
  if (v79)
  {
    v41 = *(v0 + 1008);
    v42 = *(v0 + 976);
    v43 = *(v0 + 960);
    v44 = *(v0 + 952);
    v45 = *(v0 + 896);
    v46 = *(v0 + 888);
    v47 = *(v0 + 880);

    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);

LABEL_22:
    sub_1D8A226E8(v41, type metadata accessor for DetectionRequest);

    v33 = *(v0 + 8);
    goto LABEL_23;
  }

  v53 = *(v0 + 928);
  v54 = *(v0 + 920);
  v55 = *(v0 + 912);
  v56 = *(v0 + 904);
  v57 = *(v0 + 408) + *(v0 + 1040);
  (*(*(v0 + 888) + 8))(*(v0 + 896), *(v0 + 880));
  (*(v55 + 32))(v53, v54, v56);
  *(v0 + 1344) = *(type metadata accessor for LoggingSignposter(0) + 20);
  v58 = *v57;
  v59 = *(v57 + 16);
  sub_1D8B15150();
  sub_1D8B15100();
  v60 = sub_1D8B15150();
  v61 = sub_1D8B16370();
  v5 = sub_1D8B16460();
  if (v5)
  {
    if (v59)
    {
      goto LABEL_30;
    }

    if (!v58)
    {
      __break(1u);
LABEL_30:
      if (!(v58 >> 32))
      {
        if ((v58 & 0xFFFFF800) != 0xD800)
        {
          v62 = v58 >> 16 > 0x10;
          v58 = (v0 + 352);
          if (!v62)
          {
            goto LABEL_33;
          }

LABEL_39:
          __break(1u);
        }

        __break(1u);
        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_33:
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v60, v61, v64, v58, "", v63, 2u);
    MEMORY[0x1DA721330](v63, -1, -1);
  }

  v65 = *(v0 + 1008);
  v66 = *(v0 + 984);
  v67 = *(v0 + 840);
  v68 = *(v0 + 832);
  v69 = *(v0 + 808);
  v70 = *(v0 + 800);

  v71 = *(v69 + 16);
  *(v0 + 1096) = v71;
  *(v0 + 1104) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v68, v67, v70);
  *(v0 + 1112) = sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 1120) = sub_1D8B15190();
  v72 = *(v69 + 8);
  *(v0 + 1128) = v72;
  *(v0 + 1136) = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72(v67, v70);
  sub_1D8B14220();
  v73 = *(v65 + *(v66 + 24));
  v74 = sub_1D8A15BA0();
  *(v0 + 1144) = v74;
  v75 = swift_task_alloc();
  *(v0 + 1152) = v75;
  *v75 = v0;
  v75[1] = sub_1D8A1C464;
  v76 = *(v0 + 792);

  return sub_1D8A18914(v76, v73, v74);
}

uint64_t sub_1D8A1E358()
{
  v28 = *(v0 + 1160);
  v30 = *(v0 + 1168);
  v1 = *(v0 + 928);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v33 = *(v0 + 1176);
  v6 = *(v0 + 1088);
  sub_1D8B15670();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB80;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67498);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D8B1AB90;
  (*(v3 + 16))(v9 + v8, v2, v4);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA674A0);
  v10 = sub_1D8A240D8();
  *(inited + 48) = v9;
  *(inited + 80) = v10;
  *(inited + 88) = 1802723700;
  v11 = MEMORY[0x1E69C6560];
  *(inited + 128) = MEMORY[0x1E69E6158];
  *(inited + 136) = v11;
  *(inited + 96) = 0xE400000000000000;
  *(inited + 104) = v28;
  *(inited + 112) = v30;
  sub_1D893F1D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B08);
  swift_arrayDestroy();
  sub_1D8B14200();
  v12 = swift_task_alloc();
  *(v12 + 16) = v5;
  *(v12 + 24) = v1;
  sub_1D8B15640();
  if (v33)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));

    *(v0 + 1264) = v33;
    v13 = *(v0 + 408);
    sub_1D87A14E4(*(v0 + 656), &qword_1ECA67478);

    return MEMORY[0x1EEE6DFA0](sub_1D8A1EE5C, v13, 0);
  }

  else
  {
    v32 = *(v0 + 1224);
    v27 = *(v0 + 600);
    v14 = *(v0 + 592);
    v15 = *(v0 + 584);
    v16 = *(v0 + 576);
    v17 = *(v0 + 568);
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    v29 = *(v0 + 544);
    v31 = *(v0 + 536);

    sub_1D8A226A0(&qword_1EE0E3A48, MEMORY[0x1E69C61B8]);
    sub_1D8B156C0();
    v20 = *(v17 + 8);
    v20(v16, v18);
    sub_1D8B156E0();

    v20(v15, v18);
    sub_1D8B14210();
    sub_1D8B156B0();
    (*(v29 + 8))(v19, v31);
    v20(v14, v18);
    *(v0 + 304) = v32;
    sub_1D8B13F40();
    sub_1D8B156D0();
    v20(v27, v18);
    v21 = swift_task_alloc();
    *(v0 + 1232) = v21;
    v22 = sub_1D8A226A0(&qword_1EE0E9848, MEMORY[0x1E69DA470]);
    *v21 = v0;
    v21[1] = sub_1D8A1E80C;
    v23 = *(v0 + 648);
    v24 = *(v0 + 632);
    v25 = *(v0 + 608);

    return MEMORY[0x1EEE0A378](v23, v24, v25, v22);
  }
}

uint64_t sub_1D8A1E80C()
{
  v2 = *v1;
  *(*v1 + 1240) = v0;

  (*(v2[77] + 8))(v2[78], v2[76]);
  if (v0)
  {
    v3 = sub_1D8A1EDB0;
  }

  else
  {
    v3 = sub_1D8A1E974;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8A1E974()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[51];
  MEMORY[0x1DA71D620]();
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  sub_1D87A14E4(v4, &qword_1ECA67478);

  return MEMORY[0x1EEE6DFA0](sub_1D8A1EA5C, v8, 0);
}

uint64_t sub_1D8A1EA5C()
{
  v31 = *(v0 + 1320);
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v30 = *(v0 + 952);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 848);
  v7 = *(v0 + 688);
  v8 = *(v0 + 408);

  sub_1D87A14E4(v7, &qword_1ECA67480);
  (*(v5 + 32))(v3, v4, v6);
  sub_1D8A21F54(v8);

  (*(v2 + 104))(v1, v31, v30);
  v9 = sub_1D8B142A0();
  v10 = *(v2 + 8);
  *(v0 + 1248) = v10;
  *(v0 + 1256) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v30);
  if (v9)
  {
    type metadata accessor for SaliencyPixelSmuggler();
    sub_1D888DB40();
  }

  v11 = *(v0 + 408) + *(v0 + 1064);
  v12 = *v11;
  *(v0 + 1272) = *v11;
  v13 = *(v11 + 16);
  *(v0 + 225) = v13;
  sub_1D8B15150();
  sub_1D8B15100();
  v14 = sub_1D8B15150();
  v15 = sub_1D8B16370();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v13)
  {
LABEL_7:
    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 344);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = sub_1D8B15110();
  _os_signpost_emit_with_name_impl(&dword_1D8783000, v14, v15, v18, v12, "", v17, 2u);
  MEMORY[0x1DA721330](v17, -1, -1);
LABEL_12:
  v32 = *(v0 + 1128);
  v19 = v14;
  v20 = *(v0 + 1096);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);
  v23 = *(v0 + 800);
  v25 = *(v0 + 392);
  v24 = *(v0 + 400);

  v20(v21, v22, v23);
  swift_allocObject();
  *(v0 + 1280) = sub_1D8B15190();
  v32(v22, v23);
  v26 = CameraSourceFrame.timestamp.getter(v25, v24);
  v27 = swift_task_alloc();
  *(v0 + 1288) = v27;
  *v27 = v0;
  v27[1] = sub_1D8A1F1A4;
  v28 = *(v0 + 1008);
  v29 = *(v0 + 872);

  return sub_1D8A162EC(v0 + 312, v29, v28, v26);
}

uint64_t sub_1D8A1EDB0()
{
  (*(v0[84] + 8))(v0[85], v0[83]);
  v0[158] = v0[155];
  v1 = v0[51];
  sub_1D87A14E4(v0[82], &qword_1ECA67478);

  return MEMORY[0x1EEE6DFA0](sub_1D8A1EE5C, v1, 0);
}

uint64_t sub_1D8A1EE5C()
{
  v1 = v0[136];
  v2 = v0[122];
  v3 = v0[120];
  v4 = v0[119];
  v11 = v0[116];
  v12 = v0[126];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[86];
  v8 = v0[51];

  sub_1D87A14E4(v7, &qword_1ECA67480);
  sub_1D8A21F54(v8);

  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v11, v6);
  sub_1D8A226E8(v12, type metadata accessor for DetectionRequest);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D8A1F1A4()
{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);

    v4 = sub_1D8A21C20;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 408);
    v4 = sub_1D8A1F2CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D8A1F2CC()
{
  v150 = v0;
  v1 = *(v0 + 312);
  *(v0 + 1304) = v1;
  v2 = sub_1D8B15150();
  sub_1D8B15180();
  v3 = sub_1D8B16360();
  result = sub_1D8B16460();
  if (result)
  {
    v5 = *(v0 + 1272);
    if ((*(v0 + 225) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 1332);
        v7 = *(v0 + 528);
        v8 = *(v0 + 520);
        v9 = *(v0 + 512);

        sub_1D8B151B0();

        if ((*(v8 + 88))(v7, v9) == v6)
        {
          v10 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
          v10 = "";
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_1D8B15110();
        _os_signpost_emit_with_name_impl(&dword_1D8783000, v2, v3, v12, v5, v10, v11, 2u);
        MEMORY[0x1DA721330](v11, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 336);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_13:
  v13 = *(v0 + 1192);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 816);
  v16 = *(v0 + 800);

  v14(v15, v16);
  if (*(v13 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno))
  {
    sub_1D8A13924(*(v0 + 1008) + *(*(v0 + 984) + 20), *(v0 + 728), type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v17 = *(v0 + 392);
      v18 = *(v0 + 400);
      (*(*(v0 + 752) + 32))(*(v0 + 760), *(v0 + 728), *(v0 + 744));
      *(v0 + 328) = v1;
      v19 = CameraSourceFrame.timestamp.getter(v17, v18);
      v20 = swift_task_alloc();
      *(v0 + 1312) = v20;
      *v20 = v0;
      v20[1] = sub_1D8A206BC;
      v21 = *(v0 + 760);

      return sub_1D8A1A7FC((v0 + 328), v21, v19);
    }

    sub_1D8A226E8(*(v0 + 728), type metadata accessor for DetectionRequest.Originator);
  }

  v22 = *(v0 + 496);
  v23 = *(v0 + 504);
  v149[0] = *(v0 + 1304);
  CVDetection.detection.getter((v0 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
  v24 = type metadata accessor for AFMResult(0);
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  (*(v26 + 56))(v23, v25 ^ 1u, 1, v24);
  sub_1D87A0E38(v23, v22, &qword_1ECA643C0);
  if ((*(v26 + 48))(v22, 1, v24) == 1)
  {
    v27 = *(v0 + 488);
    v28 = *(v0 + 456);
    v29 = *(v0 + 464);
    sub_1D87A14E4(*(v0 + 496), &qword_1ECA643C0);
    (*(v29 + 56))(v27, 1, 1, v28);
    sub_1D87A14E4(v27, &qword_1ECA67468);
  }

  else
  {
    v57 = *(v0 + 1336);
    v59 = *(v0 + 488);
    v58 = *(v0 + 496);
    v61 = *(v0 + 472);
    v60 = *(v0 + 480);
    v62 = *(v0 + 456);
    v63 = *(v0 + 464);
    (*(v63 + 16))(v61, v58 + *(v24 + 40), v62);
    sub_1D8A226E8(v58, type metadata accessor for AFMResult);
    (*(v63 + 32))(v59, v61, v62);
    (*(v63 + 56))(v59, 0, 1, v62);
    sub_1D881F6FC(v59, v60, &qword_1ECA67468);
    v64 = (*(v63 + 88))(v60, v62);
    if (v64 == v57)
    {
      v65 = *(v0 + 480);
      (*(*(v0 + 464) + 96))(v65, *(v0 + 456));
      v66 = *v65;

      v67 = sub_1D8B151C0();
      v68 = sub_1D8B161F0();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v149[0] = v70;
        *v69 = 136642819;
        *(v0 + 320) = v66;
        sub_1D8B14310();
        sub_1D8A226A0(&qword_1ECA674A8, MEMORY[0x1E69C9B90]);
        v71 = sub_1D8B16B50();
        v73 = sub_1D89AC714(v71, v72, v149);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_1D8783000, v67, v68, "AFM+ (STX) inference result: %{sensitive}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x1DA721330](v70, -1, -1);
        MEMORY[0x1DA721330](v69, -1, -1);
      }

      else
      {
      }
    }

    else if (v64 == *(v0 + 1340))
    {
      v88 = *(v0 + 480);
      v90 = *(v0 + 440);
      v89 = *(v0 + 448);
      v91 = *(v0 + 416);
      v92 = *(v0 + 424);
      (*(*(v0 + 464) + 96))(v88, *(v0 + 456));
      (*(v92 + 32))(v89, v88, v91);
      v93 = *(v92 + 16);
      v93(v90, v89, v91);
      v94 = sub_1D8B151C0();
      v95 = sub_1D8B161F0();
      v96 = os_log_type_enabled(v94, v95);
      v98 = *(v0 + 440);
      v97 = *(v0 + 448);
      if (v96)
      {
        v99 = *(v0 + 432);
        v144 = *(v0 + 424);
        v146 = v95;
        v100 = *(v0 + 416);
        v148 = *(v0 + 448);
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v149[0] = v102;
        *v101 = 136315138;
        v93(v99, v98, v100);
        v103 = sub_1D8B159E0();
        v105 = v104;
        v106 = *(v144 + 8);
        v106(v98, v100);
        v107 = sub_1D89AC714(v103, v105, v149);

        *(v101 + 4) = v107;
        _os_log_impl(&dword_1D8783000, v94, v146, "AFM+ (VICC) inference result: %s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x1DA721330](v102, -1, -1);
        MEMORY[0x1DA721330](v101, -1, -1);

        v106(v148, v100);
      }

      else
      {
        v113 = *(v0 + 416);
        v112 = *(v0 + 424);

        v114 = *(v112 + 8);
        v114(v98, v113);
        v114(v97, v113);
      }
    }

    else
    {
      (*(*(v0 + 464) + 8))(*(v0 + 480), *(v0 + 456));
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v0 + 1080);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_64:
    v31 = sub_1D87C7F54(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v147 = sub_1D87C7F54((v32 > 1), v33 + 1, 1, v31);
  }

  else
  {
    v147 = v31;
  }

  v34 = *(v0 + 1248);
  v35 = *(v0 + 1088);
  v36 = *(v0 + 976);
  v37 = *(v0 + 952);
  v140 = *(v0 + 928);
  v141 = *(v0 + 1304);
  v38 = *(v0 + 912);
  v139 = *(v0 + 904);
  v39 = *(v0 + 872);
  v40 = *(v0 + 856);
  v41 = *(v0 + 848);
  v142 = *(v0 + 504);
  v143 = *(v0 + 1008);

  (*(v40 + 8))(v39, v41);
  v34(v36, v37);
  *(v147 + 2) = v33 + 1;
  *&v147[8 * v33 + 32] = v141;
  (*(v38 + 8))(v140, v139);
  sub_1D8A226E8(v143, type metadata accessor for DetectionRequest);
  sub_1D87A14E4(v142, &qword_1ECA643C0);
  v42 = *(v0 + 1072) + 1;
  if (v42 == *(v0 + 1024))
  {
LABEL_34:
    v53 = *(v0 + 384);
    v54 = *(v0 + 360);
    v55 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A13924(v53 + *(v55 + 20), v54, type metadata accessor for DetectionRequest);
    *(v54 + *(type metadata accessor for DetectionResult(0) + 20)) = v147;

    v56 = *(v0 + 8);
LABEL_48:

    return v56();
  }

  v145 = *(v0 + 1296);
  while (1)
  {
    *(v0 + 1080) = v147;
    *(v0 + 1072) = v42;
    v43 = *(v0 + 1016);
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v44 = *(v0 + 1008);
    sub_1D8A13924(v43 + ((*(v0 + 228) + 32) & ~*(v0 + 228)) + *(*(v0 + 992) + 72) * v42, v44, type metadata accessor for DetectionRequest);
    v45 = *v44;
    v46 = (v0 + 1324);
    if (v45 == 9)
    {
      goto LABEL_30;
    }

    if (v45 == 10)
    {
      v46 = (v0 + 1320);
LABEL_30:
      (*(*(v0 + 960) + 104))(*(v0 + 936), *v46, *(v0 + 952));
      v47 = 0;
      goto LABEL_32;
    }

    v47 = 1;
LABEL_32:
    v48 = *(v0 + 960);
    v49 = *(v0 + 952);
    v50 = *(v0 + 944);
    v51 = *(v0 + 936);
    (*(v48 + 56))(v51, v47, 1, v49);
    sub_1D881F6FC(v51, v50, &qword_1ECA67460);
    if ((*(v48 + 48))(v50, 1, v49) != 1)
    {
      break;
    }

    v52 = *(v0 + 944);
    sub_1D8A226E8(*(v0 + 1008), type metadata accessor for DetectionRequest);
    sub_1D87A14E4(v52, &qword_1ECA67460);
    v42 = *(v0 + 1072) + 1;
    if (v42 == *(v0 + 1024))
    {
      goto LABEL_34;
    }
  }

  v74 = *(v0 + 368);
  (*(*(v0 + 960) + 32))(*(v0 + 976), *(v0 + 944), *(v0 + 952));
  IOSurface = CVPixelBufferGetIOSurface(v74);
  *(v0 + 1088) = IOSurface;
  if (!IOSurface)
  {
    v81 = *(v0 + 1008);
    v108 = *(v0 + 976);
    v109 = *(v0 + 960);
    v110 = *(v0 + 952);

    sub_1D88C53E4();
    swift_allocError();
    *v111 = xmmword_1D8B282F0;
    *(v111 + 16) = 3;
    swift_willThrow();
    (*(v109 + 8))(v108, v110);
    goto LABEL_47;
  }

  v76 = *(v0 + 1328);
  v77 = *(v0 + 896);
  v78 = *(v0 + 880);
  v79 = *(*(v0 + 888) + 104);
  v80 = IOSurface;
  v79(v77, v76, v78);
  sub_1D8B14290();
  if (v145)
  {
    v81 = *(v0 + 1008);
    v82 = *(v0 + 976);
    v83 = *(v0 + 960);
    v84 = *(v0 + 952);
    v85 = *(v0 + 896);
    v86 = *(v0 + 888);
    v87 = *(v0 + 880);

    (*(v86 + 8))(v85, v87);
    (*(v83 + 8))(v82, v84);

LABEL_47:
    sub_1D8A226E8(v81, type metadata accessor for DetectionRequest);

    v56 = *(v0 + 8);
    goto LABEL_48;
  }

  v115 = *(v0 + 928);
  v116 = *(v0 + 920);
  v117 = *(v0 + 912);
  v118 = *(v0 + 904);
  v119 = *(v0 + 408) + *(v0 + 1040);
  (*(*(v0 + 888) + 8))(*(v0 + 896), *(v0 + 880));
  (*(v117 + 32))(v115, v116, v118);
  *(v0 + 1344) = *(type metadata accessor for LoggingSignposter(0) + 20);
  v120 = *v119;
  v121 = *(v119 + 16);
  sub_1D8B15150();
  sub_1D8B15100();
  v122 = sub_1D8B15150();
  v123 = sub_1D8B16370();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
    goto LABEL_60;
  }

  if (v121)
  {
    goto LABEL_56;
  }

  if (v120)
  {
LABEL_59:
    v125 = swift_slowAlloc();
    *v125 = 0;
    v126 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v122, v123, v126, v120, "", v125, 2u);
    MEMORY[0x1DA721330](v125, -1, -1);
LABEL_60:
    v127 = *(v0 + 1008);
    v128 = *(v0 + 984);
    v129 = *(v0 + 840);
    v130 = *(v0 + 832);
    v131 = *(v0 + 808);
    v132 = *(v0 + 800);

    v133 = *(v131 + 16);
    *(v0 + 1096) = v133;
    *(v0 + 1104) = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v133(v130, v129, v132);
    *(v0 + 1112) = sub_1D8B151A0();
    swift_allocObject();
    *(v0 + 1120) = sub_1D8B15190();
    v134 = *(v131 + 8);
    *(v0 + 1128) = v134;
    *(v0 + 1136) = (v131 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v134(v129, v132);
    sub_1D8B14220();
    v135 = *(v127 + *(v128 + 24));
    v136 = sub_1D8A15BA0();
    *(v0 + 1144) = v136;
    v137 = swift_task_alloc();
    *(v0 + 1152) = v137;
    *v137 = v0;
    v137[1] = sub_1D8A1C464;
    v138 = *(v0 + 792);

    return sub_1D8A18914(v138, v135, v136);
  }

  __break(1u);
LABEL_56:
  if (v120 >> 32)
  {
    goto LABEL_69;
  }

  if ((v120 & 0xFFFFF800) != 0xD800)
  {
    v124 = v120 >> 16 > 0x10;
    v120 = (v0 + 352);
    if (v124)
    {
      goto LABEL_70;
    }

    goto LABEL_59;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_1D8A206BC()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1D8A207CC, v1, 0);
}

uint64_t sub_1D8A207CC()
{
  v130 = v0;
  (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v129[0] = *(v0 + 1304);
  CVDetection.detection.getter((v0 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
  v3 = type metadata accessor for AFMResult(0);
  v4 = swift_dynamicCast();
  v5 = *(v3 - 8);
  (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
  sub_1D87A0E38(v2, v1, &qword_1ECA643C0);
  if ((*(v5 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 488);
    v7 = *(v0 + 456);
    v8 = *(v0 + 464);
    sub_1D87A14E4(*(v0 + 496), &qword_1ECA643C0);
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_1D87A14E4(v6, &qword_1ECA67468);
  }

  else
  {
    v36 = *(v0 + 1336);
    v38 = *(v0 + 488);
    v37 = *(v0 + 496);
    v40 = *(v0 + 472);
    v39 = *(v0 + 480);
    v41 = *(v0 + 456);
    v42 = *(v0 + 464);
    (*(v42 + 16))(v40, v37 + *(v3 + 40), v41);
    sub_1D8A226E8(v37, type metadata accessor for AFMResult);
    (*(v42 + 32))(v38, v40, v41);
    (*(v42 + 56))(v38, 0, 1, v41);
    sub_1D881F6FC(v38, v39, &qword_1ECA67468);
    v43 = (*(v42 + 88))(v39, v41);
    if (v43 == v36)
    {
      v44 = *(v0 + 480);
      (*(*(v0 + 464) + 96))(v44, *(v0 + 456));
      v45 = *v44;

      v46 = sub_1D8B151C0();
      v47 = sub_1D8B161F0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v129[0] = v49;
        *v48 = 136642819;
        *(v0 + 320) = v45;
        sub_1D8B14310();
        sub_1D8A226A0(&qword_1ECA674A8, MEMORY[0x1E69C9B90]);
        v50 = sub_1D8B16B50();
        v52 = sub_1D89AC714(v50, v51, v129);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1D8783000, v46, v47, "AFM+ (STX) inference result: %{sensitive}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1DA721330](v49, -1, -1);
        MEMORY[0x1DA721330](v48, -1, -1);
      }

      else
      {
      }
    }

    else if (v43 == *(v0 + 1340))
    {
      v67 = *(v0 + 480);
      v69 = *(v0 + 440);
      v68 = *(v0 + 448);
      v70 = *(v0 + 416);
      v71 = *(v0 + 424);
      (*(*(v0 + 464) + 96))(v67, *(v0 + 456));
      (*(v71 + 32))(v68, v67, v70);
      v72 = *(v71 + 16);
      v72(v69, v68, v70);
      v73 = sub_1D8B151C0();
      v74 = sub_1D8B161F0();
      v75 = os_log_type_enabled(v73, v74);
      v77 = *(v0 + 440);
      v76 = *(v0 + 448);
      if (v75)
      {
        v78 = *(v0 + 432);
        v124 = *(v0 + 424);
        v126 = v74;
        v79 = *(v0 + 416);
        v128 = *(v0 + 448);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v129[0] = v81;
        *v80 = 136315138;
        v72(v78, v77, v79);
        v82 = sub_1D8B159E0();
        v84 = v83;
        v85 = *(v124 + 8);
        v85(v77, v79);
        v86 = sub_1D89AC714(v82, v84, v129);

        *(v80 + 4) = v86;
        _os_log_impl(&dword_1D8783000, v73, v126, "AFM+ (VICC) inference result: %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1DA721330](v81, -1, -1);
        MEMORY[0x1DA721330](v80, -1, -1);

        v85(v128, v79);
      }

      else
      {
        v93 = *(v0 + 416);
        v92 = *(v0 + 424);

        v94 = *(v92 + 8);
        v94(v77, v93);
        v94(v76, v93);
      }
    }

    else
    {
      (*(*(v0 + 464) + 8))(*(v0 + 480), *(v0 + 456));
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1080);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_46:
    v10 = sub_1D87C7F54(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v127 = sub_1D87C7F54((v11 > 1), v12 + 1, 1, v10);
  }

  else
  {
    v127 = v10;
  }

  v13 = *(v0 + 1248);
  v14 = *(v0 + 1088);
  v15 = *(v0 + 976);
  v16 = *(v0 + 952);
  v120 = *(v0 + 928);
  v121 = *(v0 + 1304);
  v17 = *(v0 + 912);
  v119 = *(v0 + 904);
  v18 = *(v0 + 872);
  v19 = *(v0 + 856);
  v20 = *(v0 + 848);
  v122 = *(v0 + 504);
  v123 = *(v0 + 1008);

  (*(v19 + 8))(v18, v20);
  v13(v15, v16);
  *(v127 + 2) = v12 + 1;
  *&v127[8 * v12 + 32] = v121;
  (*(v17 + 8))(v120, v119);
  sub_1D8A226E8(v123, type metadata accessor for DetectionRequest);
  sub_1D87A14E4(v122, &qword_1ECA643C0);
  v21 = *(v0 + 1072) + 1;
  if (v21 == *(v0 + 1024))
  {
LABEL_16:
    v32 = *(v0 + 384);
    v33 = *(v0 + 360);
    v34 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A13924(v32 + *(v34 + 20), v33, type metadata accessor for DetectionRequest);
    *(v33 + *(type metadata accessor for DetectionResult(0) + 20)) = v127;

    v35 = *(v0 + 8);
LABEL_30:

    return v35();
  }

  v125 = *(v0 + 1296);
  while (1)
  {
    *(v0 + 1080) = v127;
    *(v0 + 1072) = v21;
    v22 = *(v0 + 1016);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v23 = *(v0 + 1008);
    sub_1D8A13924(v22 + ((*(v0 + 228) + 32) & ~*(v0 + 228)) + *(*(v0 + 992) + 72) * v21, v23, type metadata accessor for DetectionRequest);
    v24 = *v23;
    v25 = (v0 + 1324);
    if (v24 == 9)
    {
      goto LABEL_12;
    }

    if (v24 == 10)
    {
      v25 = (v0 + 1320);
LABEL_12:
      (*(*(v0 + 960) + 104))(*(v0 + 936), *v25, *(v0 + 952));
      v26 = 0;
      goto LABEL_14;
    }

    v26 = 1;
LABEL_14:
    v27 = *(v0 + 960);
    v28 = *(v0 + 952);
    v29 = *(v0 + 944);
    v30 = *(v0 + 936);
    (*(v27 + 56))(v30, v26, 1, v28);
    sub_1D881F6FC(v30, v29, &qword_1ECA67460);
    if ((*(v27 + 48))(v29, 1, v28) != 1)
    {
      break;
    }

    v31 = *(v0 + 944);
    sub_1D8A226E8(*(v0 + 1008), type metadata accessor for DetectionRequest);
    sub_1D87A14E4(v31, &qword_1ECA67460);
    v21 = *(v0 + 1072) + 1;
    if (v21 == *(v0 + 1024))
    {
      goto LABEL_16;
    }
  }

  v53 = *(v0 + 368);
  (*(*(v0 + 960) + 32))(*(v0 + 976), *(v0 + 944), *(v0 + 952));
  IOSurface = CVPixelBufferGetIOSurface(v53);
  *(v0 + 1088) = IOSurface;
  if (!IOSurface)
  {
    v60 = *(v0 + 1008);
    v87 = *(v0 + 976);
    v88 = *(v0 + 960);
    v89 = *(v0 + 952);

    sub_1D88C53E4();
    swift_allocError();
    *v90 = xmmword_1D8B282F0;
    *(v90 + 16) = 3;
    swift_willThrow();
    (*(v88 + 8))(v87, v89);
    goto LABEL_29;
  }

  v55 = *(v0 + 1328);
  v56 = *(v0 + 896);
  v57 = *(v0 + 880);
  v58 = *(*(v0 + 888) + 104);
  v59 = IOSurface;
  v58(v56, v55, v57);
  sub_1D8B14290();
  if (v125)
  {
    v60 = *(v0 + 1008);
    v61 = *(v0 + 976);
    v62 = *(v0 + 960);
    v63 = *(v0 + 952);
    v64 = *(v0 + 896);
    v65 = *(v0 + 888);
    v66 = *(v0 + 880);

    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);

LABEL_29:
    sub_1D8A226E8(v60, type metadata accessor for DetectionRequest);

    v35 = *(v0 + 8);
    goto LABEL_30;
  }

  v95 = *(v0 + 928);
  v96 = *(v0 + 920);
  v97 = *(v0 + 912);
  v98 = *(v0 + 904);
  v99 = *(v0 + 408) + *(v0 + 1040);
  (*(*(v0 + 888) + 8))(*(v0 + 896), *(v0 + 880));
  (*(v97 + 32))(v95, v96, v98);
  *(v0 + 1344) = *(type metadata accessor for LoggingSignposter(0) + 20);
  v100 = *v99;
  v101 = *(v99 + 16);
  sub_1D8B15150();
  sub_1D8B15100();
  v102 = sub_1D8B15150();
  v103 = sub_1D8B16370();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v101)
  {
    goto LABEL_38;
  }

  if (v100)
  {
LABEL_41:
    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v102, v103, v106, v100, "", v105, 2u);
    MEMORY[0x1DA721330](v105, -1, -1);
LABEL_42:
    v107 = *(v0 + 1008);
    v108 = *(v0 + 984);
    v109 = *(v0 + 840);
    v110 = *(v0 + 832);
    v111 = *(v0 + 808);
    v112 = *(v0 + 800);

    v113 = *(v111 + 16);
    *(v0 + 1096) = v113;
    *(v0 + 1104) = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v113(v110, v109, v112);
    *(v0 + 1112) = sub_1D8B151A0();
    swift_allocObject();
    *(v0 + 1120) = sub_1D8B15190();
    v114 = *(v111 + 8);
    *(v0 + 1128) = v114;
    *(v0 + 1136) = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114(v109, v112);
    sub_1D8B14220();
    v115 = *(v107 + *(v108 + 24));
    v116 = sub_1D8A15BA0();
    *(v0 + 1144) = v116;
    v117 = swift_task_alloc();
    *(v0 + 1152) = v117;
    *v117 = v0;
    v117[1] = sub_1D8A1C464;
    v118 = *(v0 + 792);

    return sub_1D8A18914(v118, v115, v116);
  }

  __break(1u);
LABEL_38:
  if (v100 >> 32)
  {
    __break(1u);
    goto LABEL_49;
  }

  if ((v100 & 0xFFFFF800) != 0xD800)
  {
    v104 = v100 >> 16 > 0x10;
    v100 = (v0 + 352);
    if (!v104)
    {
      goto LABEL_41;
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A21904()
{
  v1 = v0[136];
  v2 = v0[126];
  v3 = v0[122];
  v4 = v0[120];
  v5 = v0[119];
  v6 = v0[116];
  v7 = v0[114];
  v8 = v0[113];
  sub_1D8A21F54(v0[51]);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  sub_1D8A226E8(v2, type metadata accessor for DetectionRequest);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D8A21C20()
{
  v12 = v0[156];
  v1 = v0[136];
  v13 = v0[126];
  v2 = v0[122];
  v3 = v0[119];
  v4 = v0[116];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[109];
  v8 = v0[107];
  v9 = v0[106];

  (*(v8 + 8))(v7, v9);
  v12(v2, v3);
  (*(v5 + 8))(v4, v6);
  sub_1D8A226E8(v13, type metadata accessor for DetectionRequest);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D8A21F54(uint64_t a1)
{
  v2 = sub_1D8B15170();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D8B15130();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LoggingSignposter(0);
  v9 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_preparationSignpostName);
  v10 = *(a1 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_preparationSignpostName + 16);
  v11 = sub_1D8B15150();
  sub_1D8B15180();
  v18 = sub_1D8B16360();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1D8B151B0();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1DA721330](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D8A22214()
{
  sub_1D8A226E8(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_signposter, type metadata accessor for LoggingSignposter);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 sub_1D8A22278@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8A18200(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8A222F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8A23E00();
}

uint64_t sub_1D8A22394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A1B06C(a1, a2, a3, a4, v15, v16, a7, a8);
}

unint64_t *sub_1D8A22474(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D8A22D14(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore9AFMResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AFMResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = (a1 + *(v4 + 24));
  v7 = v6[3];
  v19[2] = v6[2];
  v19[3] = v7;
  v8 = v6[1];
  v19[0] = *v6;
  v19[1] = v8;
  v9 = (a2 + *(v4 + 24));
  v10 = v9[1];
  v18[0] = *v9;
  v18[1] = v10;
  v11 = v9[3];
  v18[2] = v9[2];
  v18[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v19, v18))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || (MEMORY[0x1DA71DA70](a1 + v5[10], a2 + v5[10]) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[11];

  return _s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(a1 + v16, a2 + v16);
}

unint64_t sub_1D8A2264C()
{
  result = qword_1ECA67418;
  if (!qword_1ECA67418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67418);
  }

  return result;
}

uint64_t sub_1D8A226A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8A226E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A22790(void *a1)
{
  a1[1] = sub_1D8A226A0(&qword_1EE0E3F90, type metadata accessor for AFMResult);
  a1[2] = sub_1D8A226A0(qword_1EE0E3FA8, type metadata accessor for AFMResult);
  a1[3] = sub_1D8A226A0(&qword_1EE0E3FA0, type metadata accessor for AFMResult);
  result = sub_1D8A226A0(&qword_1EE0E3F88, type metadata accessor for AFMResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A22864(void *a1)
{
  a1[1] = sub_1D8A226A0(&qword_1EE0E3F90, type metadata accessor for AFMResult);
  a1[2] = sub_1D8A226A0(qword_1EE0E3FA8, type metadata accessor for AFMResult);
  result = sub_1D8A226A0(&qword_1EE0E3FA0, type metadata accessor for AFMResult);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8A229C8()
{
  v0 = sub_1D8B145A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D8A22A48()
{
  result = sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    result = sub_1D8B145A0();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DetectionRequest.Originator(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8A22B40()
{
  result = type metadata accessor for LoggingSignposter(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8A22C10()
{
  result = qword_1ECA67448;
  if (!qword_1ECA67448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67448);
  }

  return result;
}

unint64_t sub_1D8A22C68()
{
  result = qword_1ECA67450;
  if (!qword_1ECA67450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67450);
  }

  return result;
}

unint64_t sub_1D8A22CC0()
{
  result = qword_1ECA67458;
  if (!qword_1ECA67458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67458);
  }

  return result;
}

uint64_t sub_1D8A22D14(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v26 = a4;
  v22 = a1;
  v5 = type metadata accessor for DetectionRequest(0);
  v25 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v23 = 0;
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType;
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D8A13924(*(a3 + 48) + *(v25 + 72) * v17, v8, type metadata accessor for DetectionRequest);
    v18 = *v8;
    v19 = *(v26 + v24);
    result = sub_1D8A226E8(v8, type metadata accessor for DetectionRequest);
    if (v18 == v19)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1D88BE398(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A22F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DetectionRequest(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v36 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v13 = 0;
    v14 = a1;
    v16 = *(a1 + 56);
    a1 += 56;
    v15 = v16;
    v17 = 1 << *(a1 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v10 = v18 & v15;
    v33 = 0;
    v34 = OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType;
    v11 = (v17 + 63) >> 6;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v22 = v19 | (v13 << 6);
      sub_1D8A13924(*(v14 + 48) + *(v35 + 72) * v22, v8, type metadata accessor for DetectionRequest);
      v23 = *v8;
      v3 = *(v36 + v34);
      sub_1D8A226E8(v8, type metadata accessor for DetectionRequest);
      if (v23 == v3)
      {
        *&v32[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1D88BE398(v32, v30, v33, v14);

          return v25;
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_16;
      }

      v21 = *(a1 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v36;

  v25 = sub_1D8A22474(v27, v10, a1, v28);

  MEMORY[0x1DA721330](v27, -1, -1);

  return v25;
}

uint64_t sub_1D8A23250(unsigned __int8 *a1)
{
  v2 = sub_1D8B13F60();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B14260();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D8B14250();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA643C8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67460);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v23 = sub_1D8B142C0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v63 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v62 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - v29;
  v31 = *a1;
  if (v31 == 10)
  {
    v32 = MEMORY[0x1E69C9B78];
    goto LABEL_5;
  }

  if (v31 == 9)
  {
    v32 = MEMORY[0x1E69C9B80];
LABEL_5:
    (*(v24 + 104))(v20, *v32, v23);
    (*(v24 + 56))(v20, 0, 1, v23);
    goto LABEL_7;
  }

  (*(v24 + 56))(v20, 1, 1, v23);
LABEL_7:
  sub_1D881F6FC(v20, v22, &qword_1ECA67460);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D87A14E4(v22, &qword_1ECA67460);
    if (qword_1EE0E4420 != -1)
    {
      swift_once();
    }

    v33 = sub_1D8B151E0();
    __swift_project_value_buffer(v33, qword_1EE0E4428);
    v34 = sub_1D8B151C0();
    v35 = sub_1D8B16210();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v72 = v37;
      *v36 = 136315138;
      v71 = v31;
      v38 = CVDetection.DetectionType.description.getter();
      v40 = sub_1D89AC714(v38, v39, &v72);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1D8783000, v34, v35, "Detection type %s not supported for token generation.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1DA721330](v37, -1, -1);
      MEMORY[0x1DA721330](v36, -1, -1);
    }

    return 0;
  }

  v42 = v30;
  (*(v24 + 32))(v30, v22, v23);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C9B60], v70);
  sub_1D8B14290();
  v43 = v67;
  (*(v6 + 8))(v8, v70);
  v44 = v68;
  (*(v43 + 56))(v15, 0, 1, v68);
  v45 = v69;
  sub_1D881F6FC(v15, v69, &qword_1ECA643C8);
  sub_1D87A0E38(v45, v12, &qword_1ECA643C8);
  if ((*(v43 + 48))(v12, 1, v44) == 1)
  {
    sub_1D87A14E4(v12, &qword_1ECA643C8);
    if (qword_1EE0E4420 != -1)
    {
      swift_once();
    }

    v46 = sub_1D8B151E0();
    __swift_project_value_buffer(v46, qword_1EE0E4428);
    v47 = *(v24 + 16);
    v48 = v64;
    v47(v64, v30, v23);
    v49 = sub_1D8B151C0();
    v50 = sub_1D8B16210();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v70 = v42;
      v68 = v52;
      v72 = v52;
      *v51 = 136315138;
      v47(v63, v48, v23);
      v53 = sub_1D8B159E0();
      v55 = v54;
      v56 = *(v24 + 8);
      v56(v48, v23);
      v57 = sub_1D89AC714(v53, v55, &v72);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1D8783000, v49, v50, "Failed to retrieve TGProcessor for %s.", v51, 0xCu);
      v58 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1DA721330](v58, -1, -1);
      MEMORY[0x1DA721330](v51, -1, -1);

      sub_1D87A14E4(v45, &qword_1ECA643C8);
      v56(v70, v23);
    }

    else
    {

      v61 = *(v24 + 8);
      v61(v48, v23);
      sub_1D87A14E4(v45, &qword_1ECA643C8);
      v61(v42, v23);
    }

    return 0;
  }

  v59 = v65;
  (*(v43 + 32))(v65, v12, v44);
  sub_1D8B14230();
  sub_1D8B13F40();
  swift_allocObject();
  v60 = sub_1D8B13F20();
  (*(v43 + 8))(v59, v44);
  sub_1D87A14E4(v45, &qword_1ECA643C8);
  (*(v24 + 8))(v30, v23);
  return v60;
}

uint64_t sub_1D8A23B5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEA0000000000726FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8A23E00()
{
  *(v1 + 72) = v0;
  type metadata accessor for LoggingSignposter(0);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A23E90, v0, 0);
}

uint64_t sub_1D8A23E90()
{
  v15 = v0;
  v1 = v0[10];
  sub_1D8A13924(v0[9] + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_signposter, v1, type metadata accessor for LoggingSignposter);
  type metadata accessor for LoggingSignposter.AutoInterval();
  inited = swift_initStackObject();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.AFMProcessor.prepare", 34, 2u, 1, 0, (inited + 16));
  sub_1D8A226E8(v1, type metadata accessor for LoggingSignposter);
  if (qword_1EE0E4420 != -1)
  {
    swift_once();
  }

  v3 = sub_1D8B151E0();
  __swift_project_value_buffer(v3, qword_1EE0E4428);

  v4 = sub_1D8B151C0();
  v5 = sub_1D8B161F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_1D8A6D510(*(v6 + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_enabledDetectionType));
    v11 = sub_1D89AC714(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D8783000, v4, v5, "Prewarming %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA721330](v8, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  if (*(v0[9] + OBJC_IVAR____TtC22VisualIntelligenceCore12AFMProcessor_tokenGenerator))
  {
    sub_1D8B13F30();
  }

  v12 = v0[1];

  return v12();
}

unint64_t sub_1D8A240D8()
{
  result = qword_1EE0E3940;
  if (!qword_1EE0E3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA674A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3940);
  }

  return result;
}

uint64_t sub_1D8A24170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA721330);
  }

  return result;
}

__n128 StreamingBarcodeDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:detectedCodeContainer:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, double a9@<D1>)
{
  v16 = *a5;
  v17 = *a6;
  v18 = sub_1D8B13240();
  (*(*(v18 - 8) + 32))(a7, a1, v18);
  v19 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  *(a7 + v19[5]) = a8;
  v20 = a7 + v19[6];
  v21 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v21;
  result = *(a2 + 32);
  v23 = *(a2 + 48);
  *(v20 + 32) = result;
  *(v20 + 48) = v23;
  v24 = (a7 + v19[7]);
  *v24 = a3;
  v24[1] = a4;
  *(a7 + v19[8]) = v16;
  *(a7 + v19[9]) = a9;
  *(a7 + v19[10]) = v17;
  return result;
}

uint64_t StreamingBarcodeDetectorResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 StreamingBarcodeDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t StreamingBarcodeDetectorResult.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 28));

  return v1;
}

double StreamingBarcodeDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t StreamingBarcodeDetectorResult.BCSDetectedCodeContainer.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

uint64_t StreamingBarcodeDetectorResult.BCSDetectedCodeContainer.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x1DA720210](0);
  }

  MEMORY[0x1DA720210](1);
  return sub_1D8B16410();
}

uint64_t StreamingBarcodeDetectorResult.BCSDetectedCodeContainer.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A245A4()
{
  v1 = *v0;
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A24608()
{
  if (!*v0)
  {
    return MEMORY[0x1DA720210](0);
  }

  MEMORY[0x1DA720210](1);
  return sub_1D8B16410();
}

uint64_t sub_1D8A24660()
{
  v1 = *v0;
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A246C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  return result;
}

id StreamingBarcodeDetectorResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v8 = v7[5];
  v9 = *(v2 + v8);
  v10 = (v2 + v7[7]);
  v11 = *(v2 + v7[8]);
  v12 = *(v2 + v7[10]);
  *(a2 + v8) = v9;
  v14 = *v10;
  v13 = v10[1];
  v15 = (a2 + v7[6]);
  v16 = *(a1 + 64);
  v15[2] = *(a1 + 48);
  v15[3] = v16;
  v17 = *(a1 + 32);
  *v15 = *(a1 + 16);
  v15[1] = v17;
  v18 = (a2 + v7[7]);
  *v18 = v14;
  v18[1] = v13;
  *(a2 + v7[8]) = v11;
  *(a2 + v7[9]) = v5;
  *(a2 + v7[10]) = v12;

  return sub_1D88B7ED4(v12);
}

id StreamingBarcodeDetectorResult.modifyWithRotation(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v7 = v6[6];
  v8 = *(v2 + v6[5]);
  v9 = *(v2 + v7 + 16);
  v23 = *(v2 + v7);
  v24 = v9;
  v10 = *(v2 + v7 + 48);
  v25 = *(v2 + v7 + 32);
  v26 = v10;
  v21 = *(v2 + v6[8]);
  v22 = v4;
  sub_1D8A5A9D8(&v22, &v21, v27);
  v11 = (v2 + v6[7]);
  v12 = *(v2 + v6[9]);
  v13 = *(v2 + v6[10]);
  *(a2 + v6[5]) = v8;
  v15 = *v11;
  v14 = v11[1];
  v16 = (a2 + v6[6]);
  v17 = v27[1];
  *v16 = v27[0];
  v16[1] = v17;
  v18 = v27[3];
  v16[2] = v27[2];
  v16[3] = v18;
  v19 = (a2 + v6[7]);
  *v19 = v15;
  v19[1] = v14;
  *(a2 + v6[8]) = v4;
  *(a2 + v6[9]) = v12;
  *(a2 + v6[10]) = v13;

  return sub_1D88B7ED4(v13);
}

void sub_1D8A24920(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v80 = a5;
  v77 = sub_1D8B13240();
  v9 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CVCoordinator(0);
  [a1 topLeft];
  v13 = v12;
  v15 = 1.0 - v14;
  [a1 topRight];
  v17 = v16;
  v19 = 1.0 - v18;
  [a1 bottomLeft];
  v21 = v20;
  v23 = 1.0 - v22;
  [a1 bottomRight];
  v81[0] = v13;
  v81[1] = v15;
  v81[2] = v17;
  v81[3] = v19;
  v81[4] = v21;
  v81[5] = v23;
  v81[6] = v24;
  v81[7] = 1.0 - v25;
  Corners.bounds.getter();
  sub_1D8A30194(a2, a4, &v82, v26, v27, v28, v29);
  v30 = [a1 payloadStringValue];
  if (v30)
  {
    v31 = v30;
    v76 = sub_1D8B15970();
    v79 = v32;
  }

  else
  {
    v79 = 0xE500000000000000;
    v76 = 0x7974706D65;
  }

  v78 = [objc_opt_self() detectedCodeWithBarcodeObservation_];
  v33 = [a1 symbology];
  v34 = sub_1D8B15970();
  v36 = v35;
  if (v34 == sub_1D8B15970() && v36 == v37)
  {

LABEL_9:
    v39 = type metadata accessor for StreamingBarcodeDetectorResult(0);
    v40 = swift_allocBox();
    v42 = v41;
    v43 = [a1 uuid];
    sub_1D8B13210();

    [a1 confidence];
    v45 = v44;
    CameraSourceFrame.rotationAngle.getter(a4, v81);
    v46 = v81[0];
    v47 = CameraSourceFrame.timestamp.getter(a3, a4);
    (*(v9 + 32))(v42, v11, v77);
    *(v42 + v39[5]) = v45;
    v48 = (v42 + v39[6]);
    v49 = v85;
    v50 = v84;
    v51 = v83;
    *v48 = v82;
    v48[1] = v51;
    v48[2] = v50;
    v48[3] = v49;
    v52 = (v42 + v39[7]);
    v53 = v79;
    *v52 = v76;
    v52[1] = v53;
    *(v42 + v39[8]) = v46;
    *(v42 + v39[9]) = v47;
    *(v42 + v39[10]) = v78;
    v54 = v40 | 0x7000000000000000;
    goto LABEL_10;
  }

  v38 = sub_1D8B16BA0();

  if (v38)
  {

    goto LABEL_9;
  }

  v55 = sub_1D8B15970();
  v57 = v56;
  if (v55 == sub_1D8B15970() && v57 == v58)
  {
  }

  else
  {
    v59 = sub_1D8B16BA0();

    if ((v59 & 1) == 0)
    {

      v54 = 0xF000000000000007;
      goto LABEL_10;
    }
  }

  v60 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v75 = swift_allocBox();
  v62 = v61;
  v63 = [a1 uuid];
  sub_1D8B13210();

  [a1 confidence];
  v65 = v64;
  CameraSourceFrame.rotationAngle.getter(a4, v81);
  v66 = v81[0];
  v67 = CameraSourceFrame.timestamp.getter(a3, a4);
  (*(v9 + 32))(v62, v11, v77);
  *(v62 + v60[5]) = v65;
  v68 = (v62 + v60[6]);
  v69 = v85;
  v70 = v84;
  v71 = v83;
  *v68 = v82;
  v68[1] = v71;
  v68[2] = v70;
  v68[3] = v69;
  v72 = (v62 + v60[7]);
  v73 = v79;
  *v72 = v76;
  v72[1] = v73;
  *(v62 + v60[8]) = v66;
  *(v62 + v60[9]) = v67;
  *(v62 + v60[10]) = v78;
  v54 = v75 | 0x6000000000000000;
LABEL_10:
  *v80 = v54;
}

unint64_t sub_1D8A24EC4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D617473656D6974;
  if (v1 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x7372656E726F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A24FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A285FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A24FD0(uint64_t a1)
{
  v2 = sub_1D8A2789C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A2500C(uint64_t a1)
{
  v2 = sub_1D8A2789C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamingBarcodeDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2789C();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A27944(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for StreamingBarcodeDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + v9[8]);
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[10]);
    v15 = 6;
    sub_1D88B7ED4(v16);
    sub_1D8A278F0();
    sub_1D8B16A80();
    sub_1D8905FA4(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StreamingBarcodeDetectorResult.hash(into:)()
{
  sub_1D8B13240();
  sub_1D8A27944(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v1 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  sub_1D8B16D60();
  v2 = (v0 + v1[6]);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  sub_1D8818B80(*v2, v2[1]);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8B15A60();
  v9 = *(v0 + v1[8]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1DA720250](*&v9);
  v10 = *(v0 + v1[9]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA720250](*&v10);
  v11 = *(v0 + v1[10]);
  if (v11 == 1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();
  if (!v11)
  {
    return MEMORY[0x1DA720210](0);
  }

  MEMORY[0x1DA720210](1);
  return sub_1D8B16410();
}

uint64_t StreamingBarcodeDetectorResult.hashValue.getter()
{
  sub_1D8B16D20();
  StreamingBarcodeDetectorResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t StreamingBarcodeDetectorResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D8B13240();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67520);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A2789C();
  v30 = v8;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v26;
  LOBYTE(v32) = 0;
  sub_1D8A27944(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
  v13 = v27;
  sub_1D8B16A10();
  (*(v12 + 32))(v11, v13, v4);
  LOBYTE(v32) = 1;
  sub_1D8B169F0();
  *&v11[v9[5]] = v14;
  v37 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v15 = v28;
  v16 = &v11[v9[6]];
  v17 = v33;
  *v16 = v32;
  *(v16 + 1) = v17;
  v18 = v35;
  *(v16 + 2) = v34;
  *(v16 + 3) = v18;
  LOBYTE(v31) = 3;
  v19 = sub_1D8B169C0();
  v20 = &v11[v9[7]];
  *v20 = v19;
  v20[1] = v21;
  v36 = 4;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v11[v9[8]] = v31;
  LOBYTE(v31) = 5;
  sub_1D8B169E0();
  *&v11[v9[9]] = v22;
  v36 = 6;
  sub_1D8A2798C();
  sub_1D8B169B0();
  (*(v15 + 8))(v30, v29);
  *&v11[v9[10]] = v31;
  sub_1D8A29680(v11, v25, type metadata accessor for StreamingBarcodeDetectorResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A279E0(v11, type metadata accessor for StreamingBarcodeDetectorResult);
}

id sub_1D8A25A18@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = sub_1D8B13240();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v12 = *(v3 + v9);
  v11 = *(v3 + v9 + 8);
  v13 = *(v3 + v10);
  *(a3 + a2[5]) = *(v3 + a2[5]);
  v15 = a2[9];
  v14 = a2[10];
  v16 = *(v3 + v14);
  v17 = (a3 + v8);
  *v17 = v20;
  v17[1] = v21;
  v17[2] = v22;
  v17[3] = v23;
  v18 = (a3 + v9);
  *v18 = v12;
  v18[1] = v11;
  *(a3 + v10) = v13;
  *(a3 + v15) = v6;
  *(a3 + v14) = v16;

  return sub_1D88B7ED4(v16);
}

uint64_t sub_1D8A25B10()
{
  sub_1D8B16D20();
  StreamingBarcodeDetectorResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A25B54()
{
  sub_1D8B16D20();
  StreamingBarcodeDetectorResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t BarcodeProcessor.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  BarcodeProcessor.init(configuration:)(a1);
  return v2;
}

uint64_t BarcodeProcessor.init(configuration:)(uint64_t *a1)
{
  v3 = sub_1D8B151E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v22 = *a1;
  v21 = *(a1 + 8);
  v10 = a1[2];
  v11 = *(a1 + 24);
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_logger;
  if (qword_1EE0E4370 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EE0E4378);
  v14 = *(v4 + 16);
  v14(v1 + v12, v13, v3);
  v15 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_signposter;
  if (qword_1EE0E4558 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_1EE0E4560);
  v14(v9, v16, v3);
  v14(v1 + v15, v9, v3);
  v14(v7, v9, v3);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v4 + 8))(v9, v3);
  v17 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_sequenceHandler;
  *(v1 + v17) = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_enabledDetectionTypes) = &unk_1F54269D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649B0);
  atomic_fetch_add((swift_initStaticObject() + 16), 1uLL);
  v18 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_configuration;
  *v18 = v22;
  *(v18 + 8) = v21;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;
  return v1;
}

uint64_t BarcodeProcessor.deinit()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649B0);
  if (atomic_fetch_add((swift_initStaticObject() + 16), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v1 = [objc_opt_self() globalSession];
    [v1 releaseCachedResources];
  }

  v2 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_logger;
  v3 = sub_1D8B151E0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1D8A279E0(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_signposter, type metadata accessor for LoggingSignposter);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BarcodeProcessor.__deallocating_deinit()
{
  BarcodeProcessor.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8A26008()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_1D8A28294(v9, v1);

  v11 = v10[2];
  if (!v11)
  {

    v12 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return 0;
  }

  v12 = sub_1D87F3A18(v10[2], 0);
  v13 = sub_1D881788C(&v19, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v11, v10);
  result = sub_1D888A84C();
  if (v13 != v11)
  {
    __break(1u);
    return result;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D8A305B4(v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1D8A299A4(v4);
    return 0;
  }

  sub_1D8A12450(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
  v15 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D8B1AB90;
  v18 = (v17 + v16);
  sub_1D8A29680(v8, v18 + v15[7], type metadata accessor for DetectionRequest);
  *v18 = v12;
  sub_1D8A279E0(v8, type metadata accessor for DetectionRequest);
  return v17;
}

uint64_t sub_1D8A262EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A2638C, v8, 0);
}

uint64_t sub_1D8A2638C()
{
  v44 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_1D8A26854(v0[7], v0[5], v0[9], v0[10]);
  v4 = sub_1D8A28988();
  v5 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8B23DF0;
  *(v6 + 32) = v4;
  sub_1D881F764(0, &qword_1EE0E3690);
  v7 = v4;
  v8 = sub_1D8B15CD0();

  v0[2] = 0;
  LODWORD(v3) = [v5 performRequests:v8 onCVPixelBuffer:v2 orientation:v3 error:v0 + 2];

  v9 = v0[2];
  if (v3)
  {
    v10 = qword_1EE0E54C0;
    v11 = v9;
    if (v10 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      if (sub_1D8B0AAA4())
      {
        v12 = [v7 results];

        if (v12)
        {
          v13 = v0[5];
          sub_1D881F764(0, &unk_1ECA68AF0);
          v38 = *(v0 + 9);
          v14 = sub_1D8B15CF0();

          v15 = swift_task_alloc();
          *(v15 + 16) = v38;
          *(v15 + 32) = v13;
          sub_1D8965BE8(sub_1D8A296E8, v15, v14);
        }
      }

      else
      {
      }

      v17 = v0[10];
      v19 = v0[8];
      v18 = v0[9];
      v20 = v0[5];
      v21 = v0[11] + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_configuration;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      LOBYTE(v21) = *(v21 + 24);
      v39 = v22;
      v40 = v23;
      v41 = v24;
      v42 = v21;

      v25 = sub_1D8A28B1C(v7, v20, v19, &v39, v18, v17);

      v28 = *(v25 + 2);
      if (!v28)
      {
        break;
      }

      v29 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (v29 < *(v25 + 2))
      {
        v39 = *&v25[8 * v29 + 32];

        v31 = sub_1D8A29008(&v39);
        v32 = v39;
        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D87F43E0(0, *(v30 + 16) + 1, 1);
          }

          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1D87F43E0((v33 > 1), v34 + 1, 1);
          }

          *(v30 + 16) = v34 + 1;
          *(v30 + 8 * v34 + 32) = v32;
        }

        else
        {
        }

        if (v28 == ++v29)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_26:
      swift_once();
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v35 = v0[6];
    v36 = v0[3];

    v37 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8A29680(v35 + *(v37 + 20), v36, type metadata accessor for DetectionRequest);
    *(v36 + *(type metadata accessor for DetectionResult(0) + 20)) = v30;
    v26 = v0[1];
  }

  else
  {
    v16 = v9;

    sub_1D8B12EB0();
    swift_willThrow();

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_1D8A26854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v10 = *(a1 + 64);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  if (v10 != 2)
  {
    sub_1D88C5438(v9, v11);
    sub_1D88C5438(v11, v12);
    if ((v14 & 1) == 0)
    {
      return v13;
    }
  }

  CameraSourceFrame.rotationAngle.getter(a4, &v8);
  return Angle.cgOrientation.getter();
}

void sub_1D8A268EC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v38 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = v7;
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = objc_opt_self();
  v41 = 0;
  v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v41];
  v18 = v41;
  if (v17)
  {
    v19 = sub_1D8B13050();
    v35 = v20;
    v36 = v19;

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1D8B16720();

    v41 = 0xD000000000000020;
    v42 = 0x80000001D8B477D0;
    v21 = [v15 uuid];
    sub_1D8B13210();

    sub_1D8A27944(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v22 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v22);

    (*(v12 + 8))(v14, v11);
    v23 = v41;
    v24 = v42;
    v25 = sub_1D8B15EA0();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = v39;
    (*(v6 + 16))(v39, v38, a3);
    v27 = (*(v6 + 80) + 64) & ~*(v6 + 80);
    v28 = (v37 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v40;
    *(v29 + 4) = a3;
    *(v29 + 5) = v30;
    *(v29 + 6) = v23;
    *(v29 + 7) = v24;
    (*(v6 + 32))(&v29[v27], v26, a3);
    v31 = &v29[v28];
    v32 = v35;
    *v31 = v36;
    v31[1] = v32;
    sub_1D8891CA0(0, 0, v10, &unk_1D8B339E8, v29);
  }

  else
  {
    v33 = v18;
    v34 = sub_1D8B12EB0();

    swift_willThrow();
  }
}

uint64_t sub_1D8A26CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v10;
  v8[17] = v11;
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8A26D28, 0, 0);
}

uint64_t sub_1D8A26D28()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 88);
  v7 = qword_1ECA675B0;
  *(v0 + 144) = qword_1ECA675B0;
  v8 = CameraSourceFrame.timestamp.getter(v1, v2);
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0x7473696C70;
  *(v0 + 64) = 0xE500000000000000;
  *(v0 + 80) = 2;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v8;
  sub_1D87A1544(v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D8A26E28, v7, 0);
}

uint64_t sub_1D8A26E28()
{
  sub_1D8A3B1F4(v0 + 16, 0x7463616669747261, 0xE900000000000073);
  sub_1D87DC9A0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A26EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for BundleClassification.ClassificationType(0);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A26F44, 0, 0);
}

uint64_t sub_1D8A26F44()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 56) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A26FDC, v1, 0);
}

uint64_t sub_1D8A26FDC()
{
  sub_1D8A3B1F4(*(v0 + 16), 0x7463616669747261, 0xE900000000000073);

  return MEMORY[0x1EEE6DFA0](sub_1D8A27060, 0, 0);
}

uint64_t sub_1D8A27060()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *v1 = xmmword_1D8B190C0;
  *(v1 + 16) = 0xE700000000000000;
  *(v1 + 24) = 0x7974706D65;
  *(v1 + 32) = 0xE500000000000000;
  *(v1 + 40) = 0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A270F8, v2, 0);
}

uint64_t sub_1D8A270F8()
{
  v10 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v9[0] = v2[4];
  *(v9 + 9) = *(v2 + 73);
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v8, v5, v6);

  sub_1D8A279E0(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A271D8, 0, 0);
}

uint64_t sub_1D8A271D8()
{
  v5 = v0;
  v1 = v0[7];
  CVDetection.detectionType.getter(&v4);
  v0[8] = sub_1D8A6D510(v4);
  v0[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D8A27264, v1, 0);
}

uint64_t sub_1D8A27264()
{
  sub_1D8A3B7D0(v0[8], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8A272F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8846D18(*a1, *(*v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_enabledDetectionTypes));
  v5 = 2;
  if (result)
  {
    v10 = 0;
    v11 = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = 2;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    result = sub_1D88C5438(&v10, v19);
    v6 = v19[0];
    v7 = v19[1];
    v8 = v19[2];
    v9 = v19[3];
    v5 = v20;
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
  return result;
}

uint64_t sub_1D8A273C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8A28CC0();
}

uint64_t sub_1D8A27468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A262EC(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t *sub_1D8A27560(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D8A28064(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore30StreamingBarcodeDetectorResultV24BCSDetectedCodeContainerO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1D881F764(0, &qword_1EE0E36A0);
      v4 = v3;
      v5 = v2;
      v6 = sub_1D8B16400();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t _s22VisualIntelligenceCore30StreamingBarcodeDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = (a1 + *(v4 + 24));
  v7 = v6[3];
  v24[2] = v6[2];
  v24[3] = v7;
  v8 = v6[1];
  v24[0] = *v6;
  v24[1] = v8;
  v9 = (a2 + *(v4 + 24));
  v10 = v9[1];
  v23[0] = *v9;
  v23[1] = v10;
  v11 = v9[3];
  v23[2] = v9[2];
  v23[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v24, v23))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]))
  {
    return 0;
  }

  v16 = v5[10];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 1)
  {
    if (v18 != 1)
    {
      if (v17)
      {
        if (v18)
        {
          sub_1D881F764(0, &qword_1EE0E36A0);
          sub_1D88B7ED4(v17);
          sub_1D88B7ED4(v18);
          sub_1D88B7ED4(v17);
          sub_1D88B7ED4(v18);
          v22 = sub_1D8B16400();
          sub_1D8905FA4(v18);

          if (v22)
          {
            v20 = 1;
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        sub_1D88B7ED4(0);
      }

      else if (!v18)
      {
        v19 = 0;
        goto LABEL_12;
      }

      sub_1D88B7ED4(v17);
      sub_1D88B7ED4(v18);
      sub_1D88B7ED4(v17);

LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }

LABEL_15:
    sub_1D88B7ED4(v17);
    sub_1D88B7ED4(v18);
    sub_1D8905FA4(v17);
    v17 = v18;
    goto LABEL_16;
  }

  if (v18 != 1)
  {
    goto LABEL_15;
  }

  v19 = 1;
  v17 = 1;
LABEL_12:
  sub_1D88B7ED4(v19);
  sub_1D88B7ED4(v19);
  v20 = 1;
LABEL_17:
  sub_1D8905FA4(v17);
  return v20;
}

unint64_t sub_1D8A2789C()
{
  result = qword_1ECA67510;
  if (!qword_1ECA67510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67510);
  }

  return result;
}

unint64_t sub_1D8A278F0()
{
  result = qword_1ECA67518;
  if (!qword_1ECA67518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67518);
  }

  return result;
}

uint64_t sub_1D8A27944(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8A2798C()
{
  result = qword_1ECA67528;
  if (!qword_1ECA67528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67528);
  }

  return result;
}

uint64_t sub_1D8A279E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A27A44()
{
  result = qword_1ECA67538;
  if (!qword_1ECA67538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67538);
  }

  return result;
}

uint64_t sub_1D8A27A98(void *a1)
{
  a1[1] = sub_1D8A27944(&qword_1ECA67540, type metadata accessor for StreamingBarcodeDetectorResult);
  a1[2] = sub_1D8A27944(&qword_1ECA67548, type metadata accessor for StreamingBarcodeDetectorResult);
  a1[3] = sub_1D8A27944(&qword_1ECA67550, type metadata accessor for StreamingBarcodeDetectorResult);
  result = sub_1D8A27944(&qword_1ECA67558, type metadata accessor for StreamingBarcodeDetectorResult);
  a1[4] = result;
  return result;
}

void sub_1D8A27C24()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A27CDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A27CDC()
{
  if (!qword_1EE0E4788[0])
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0E4788);
    }
  }
}

uint64_t sub_1D8A27D2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A27D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D8A27E08()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D8A27F60()
{
  result = qword_1ECA67568;
  if (!qword_1ECA67568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67568);
  }

  return result;
}

unint64_t sub_1D8A27FB8()
{
  result = qword_1ECA67570;
  if (!qword_1ECA67570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67570);
  }

  return result;
}

unint64_t sub_1D8A28010()
{
  result = qword_1ECA67578;
  if (!qword_1ECA67578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67578);
  }

  return result;
}

uint64_t sub_1D8A28064(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v28 = a4;
  v26 = a1;
  v5 = type metadata accessor for DetectionRequest(0);
  v27 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_enabledDetectionTypes;
  v15 = (v11 + 63) >> 6;
LABEL_5:
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v10 << 6);
    sub_1D8A29680(*(a3 + 48) + *(v27 + 72) * v19, v8, type metadata accessor for DetectionRequest);
    v20 = *(v28 + v14);
    v21 = *(v20 + 16);
    v22 = (v20 + 32);
    do
    {
      if (!v21)
      {
        result = sub_1D8A279E0(v8, type metadata accessor for DetectionRequest);
        goto LABEL_5;
      }

      v23 = *v22++;
      --v21;
    }

    while (v23 != *v8);
    result = sub_1D8A279E0(v8, type metadata accessor for DetectionRequest);
    *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_18:

      return sub_1D88BE398(v26, v25, v9, a3);
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_18;
    }

    v18 = *(a3 + 56 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A28294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DetectionRequest(0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v38 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v34 = v10;
    v35 = v3;
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v12);
    v13 = v33 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v14 = 0;
    v15 = a1;
    v17 = *(a1 + 56);
    a1 += 56;
    v16 = v17;
    v18 = 1 << *(a1 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v36 = OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_enabledDetectionTypes;
    v10 = (v18 + 63) >> 6;
LABEL_6:
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_13:
      v3 = v21 | (v14 << 6);
      sub_1D8A29680(*(v15 + 48) + *(v37 + 72) * v3, v8, type metadata accessor for DetectionRequest);
      v24 = *(v38 + v36);
      v25 = *(v24 + 16);
      v26 = (v24 + 32);
      do
      {
        if (!v25)
        {
          sub_1D8A279E0(v8, type metadata accessor for DetectionRequest);
          goto LABEL_6;
        }

        v27 = *v26++;
        --v25;
      }

      while (v27 != *v8);
      sub_1D8A279E0(v8, type metadata accessor for DetectionRequest);
      *&v13[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
LABEL_19:
        v29 = sub_1D88BE398(v13, v34, v11, v15);

        return v29;
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_19;
      }

      v23 = *(a1 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = v38;

  v29 = sub_1D8A27560(v31, v10, a1, v32);

  MEMORY[0x1DA721330](v31, -1, -1);

  return v29;
}

uint64_t sub_1D8A285FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B477B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8A28858(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 28);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (a1 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (v7 || (result = sub_1D8B16BA0(), (result & 1) != 0))
  {
    Corners.bounds.getter();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    Corners.bounds.getter();
    v25.origin.x = v17;
    v25.origin.y = v18;
    v20 = v19;
    v22 = v21;
    v23.origin.x = v10;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    v25.size.width = v20;
    v25.size.height = v22;
    v24 = CGRectIntersection(v23, v25);
    return CGRectIsNull(v24);
  }

  return result;
}

uint64_t sub_1D8A28988()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E69844A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D8B1AB80;
  v2 = *MEMORY[0x1E69848A0];
  v3 = *MEMORY[0x1E69848C0];
  *(v1 + 32) = *MEMORY[0x1E69848A0];
  *(v1 + 40) = v3;
  type metadata accessor for VNBarcodeSymbology(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1D8B15CD0();

  [v0 setSymbologies_];

  [v0 setCoalesceCompositeSymbologies_];
  v10[0] = 0;
  if ([v0 setRevision:3737841666 error:v10])
  {
    v7 = v10[0];
    return v0;
  }

  else
  {
    v9 = v10[0];
    sub_1D8B12EB0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

char *sub_1D8A28B1C(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 description];
  v12 = sub_1D8B15970();
  v14 = v13;

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  v17 = a1;
  v18 = [v16 results];
  if (!v18)
  {

LABEL_5:
    sub_1D88C53E4();
    swift_allocError();
    *v22 = v12;
    *(v22 + 8) = v14;
    *(v22 + 16) = 1;
    swift_willThrow();
    return a3;
  }

  v19 = v18;

  sub_1D881F764(0, &qword_1EE0E3700);
  v20 = sub_1D8B15CF0();

  MEMORY[0x1EEE9AC00](v21);
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a2;
  v24[5] = a3;
  a3 = sub_1D8865524(sub_1D8A29970, v24, v20);

  return a3;
}

uint64_t sub_1D8A28CC0()
{
  *(v1 + 80) = v0;
  type metadata accessor for LoggingSignposter(0);
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A28D7C, v0, 0);
}

uint64_t sub_1D8A28D7C()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_1D8A29680(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_signposter, v2, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.BarcodeProcessor.prepare", 38, 2u, 1, 0, v0 + 4);
  sub_1D8A279E0(v2, type metadata accessor for LoggingSignposter);
  v3 = sub_1D8A28988();
  v4 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16BarcodeProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D8B23DF0;
  *(v5 + 32) = v3;
  sub_1D881F764(0, &qword_1EE0E3690);
  v6 = v3;
  v7 = sub_1D8B15CD0();

  v0[9] = 0;
  v8 = [v4 prepareForPerformingRequests:v7 error:v0 + 9];

  v9 = v0[9];
  if (v8)
  {
    v10 = v9;

    v11 = v0[7];
    v12 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v11);
    (*(v12 + 8))(v11, v12);
  }

  else
  {
    v14 = v9;
    sub_1D8B12EB0();

    swift_willThrow();
    v15 = v0[7];
    v16 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v15);
    (*(v16 + 8))(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 4));

  v13 = v0[1];

  return v13();
}

BOOL sub_1D8A29008(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v52 - v3;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1D893F30C(&unk_1F5428AE8);
  *&v53 = v8;
  CVDetection.detection.getter(&v64);
  v10 = *(&v65 + 1);
  v11 = v66;
  __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
  v12 = (*(v11 + 56))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  *&v64 = v8;
  CVDetection.detectionType.getter(&v53);
  v13 = 1.0;
  if (*(v9 + 16))
  {
    v14 = sub_1D881F7DC(v53);
    if (v15)
    {
      v13 = *(*(v9 + 56) + 4 * v14);
    }
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 && v13 >= v12)
  {
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v53 = 0xD000000000000022;
    *(&v53 + 1) = 0x80000001D8B47800;
    *&v64 = v8;
    CVDetection.detectionType.getter(&v58);
    v16 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v16);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    *&v58 = v8;
    CVDetection.detection.getter(&v64);
    v17 = *(&v65 + 1);
    v18 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    (*(v18 + 48))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    sub_1D8A27944(&qword_1EE0E9890, MEMORY[0x1E69695A8]);
    v19 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v19);

    (*(v5 + 8))(v7, v4);
    v20 = v53;
    *&v64 = v8;
    CVDetection.detectionType.getter(&v58);
    *&v53 = CVDetection.DetectionType.description.getter();
    *(&v53 + 1) = v21;
    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D8B1AB90;
    *&v58 = v8;
    CVDetection.detection.getter(&v64);
    v23 = *(&v65 + 1);
    v24 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    v25 = (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v26 = MEMORY[0x1E69E64A8];
    *(v22 + 56) = MEMORY[0x1E69E6448];
    *(v22 + 64) = v26;
    *(v22 + 32) = v25;
    v27 = sub_1D8B159A0();
    MEMORY[0x1DA71EFA0](v27);

    v28 = v53;
    *&v53 = v8;
    CVDetection.detection.getter(&v64);
    v29 = *(&v65 + 1);
    v30 = v66;
    __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
    v31 = (*(v30 + 88))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v61 = &type metadata for CVDetection;
    v62 = sub_1D8A29858();
    v60 = v8;
    v63 = 3;
    v58 = v20;
    v59 = v31;
    v69 = v8;
    CVDetection.detection.getter(&v53);
    v32 = *(&v54 + 1);
    v33 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    v34 = *(v33 + 64);

    v34(&v64, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(&v53);
    Corners.bounds.getter();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 1.0, 0.8);
    LOBYTE(v53) = 1;
    *&v64 = v36;
    *(&v64 + 1) = v38;
    *&v65 = v40;
    *(&v65 + 1) = v42;
    *&v66 = 0x3F689374BC6A7EFALL;
    *(&v66 + 1) = GenericRGB;
    v67 = v28;
    memset(v68, 0, 24);
    BYTE8(v68[1]) = 1;
    v44 = sub_1D8B15EA0();
    v45 = v52;
    (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
    sub_1D88C4BD0(&v58, &v53);
    v46 = swift_allocObject();
    v47 = v56;
    *(v46 + 64) = v55;
    *(v46 + 80) = v47;
    v48 = v54;
    *(v46 + 32) = v53;
    *(v46 + 48) = v48;
    *(v46 + 177) = *(v68 + 9);
    *(v46 + 168) = v68[0];
    v49 = v66;
    *(v46 + 152) = v67;
    *(v46 + 136) = v49;
    v50 = v65;
    *(v46 + 104) = v64;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 96) = v57;
    *(v46 + 120) = v50;
    *(v46 + 200) = v8;

    sub_1D88E0F34(&v64, &v53);
    sub_1D8891CA0(0, 0, v45, &unk_1D8B33A00, v46);

    sub_1D88E0F90(&v64);
    sub_1D87DC9A0(&v58);
  }

  return v13 < v12;
}

uint64_t sub_1D8A29680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A29708(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D8A26CF4(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

unint64_t sub_1D8A29858()
{
  result = qword_1ECA67870;
  if (!qword_1ECA67870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67870);
  }

  return result;
}

uint64_t sub_1D8A298AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8A26EAC(a1, v4, v5, (v1 + 4), (v1 + 13), v6);
}

uint64_t sub_1D8A299A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8A29A0C()
{
  v1 = v0;
  v2 = sub_1D8B13F10();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B151E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_logger;
  if (qword_1EE0E4558 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1EE0E4560);
  v14 = *(v6 + 16);
  v14(v1 + v12, v13, v5);
  v15 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_signposter;
  v14(v11, v13, v5);
  v14(v15, v11, v5);
  v14(v9, v11, v5);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v6 + 8))(v11, v5);
  sub_1D8B13F00();
  sub_1D8B13EA0();
  v16 = [objc_opt_self() preferredLanguages];
  sub_1D8B15CF0();

  sub_1D8B13ED0();
  sub_1D8B13EE0();
  sub_1D8B13EC0();
  sub_1D8B13EF0();
  v17 = OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_configuration;
  v19 = v25;
  v18 = v26;
  v20 = *(v25 + 16);
  v20(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_configuration, v4, v26);
  sub_1D8B13E90();
  v27[3] = v18;
  v27[4] = sub_1D8A2DC2C(&qword_1EE0E9850, MEMORY[0x1E69D9C70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v20(boxed_opaque_existential_1, (v1 + v17), v18);
  v22 = sub_1D8B13E70();
  (*(v19 + 8))(v4, v18);
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_imageReader) = v22;
  return v1;
}

uint64_t sub_1D8A29DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[122] = v8;
  v9[121] = a8;
  v9[120] = a7;
  v9[119] = a6;
  v9[118] = a4;
  v9[117] = a3;
  v9[116] = a2;
  v9[115] = a1;
  v9[123] = type metadata accessor for AFMResult(0);
  v9[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  v9[125] = swift_task_alloc();
  v10 = type metadata accessor for TextDetectorResult(0);
  v9[126] = v10;
  v9[127] = *(v10 - 8);
  v9[128] = swift_task_alloc();
  v9[129] = swift_task_alloc();
  v11 = type metadata accessor for DetectionRequest(0);
  v9[130] = v11;
  v9[131] = *(v11 - 8);
  v9[132] = swift_task_alloc();
  v12 = sub_1D8B13F10();
  v9[133] = v12;
  v9[134] = *(v12 - 8);
  v9[135] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A29FA8, v8, 0);
}

uint64_t sub_1D8A29FA8()
{
  v49 = v0;
  v1 = sub_1D8B161A0();
  *(v0 + 1088) = v1;
  v42 = v1;
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 936);
  *(v0 + 912) = **(v0 + 944);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  *(v0 + 888) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590);
  v6 = sub_1D881CF20(&unk_1EE0E39C0, &qword_1ECA67590);
  v7 = sub_1D8A31004(v4, v0 + 856, v5, v3, v6, v2);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 1048);
    v10 = *(v0 + 1040);
    v47[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4CC0(0, v8, 0);
    v11 = v47[0];
    v12 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v13 = *(v9 + 72);
    do
    {
      v14 = *(v0 + 1056);
      sub_1D8A2DAB0(v12, v14, type metadata accessor for DetectionRequest);
      v15 = (v14 + *(v10 + 28));
      v43 = v15[1];
      v44 = *v15;
      sub_1D8A2DB18(v14, type metadata accessor for DetectionRequest);
      v47[0] = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D87F4CC0((v16 > 1), v17 + 1, 1);
        v11 = v47[0];
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 32 * v17;
      *(v18 + 32) = v44;
      *(v18 + 48) = v43;
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1096) = v11;
  v19 = *(v0 + 968);
  v20 = *(v0 + 960);
  v21 = *(*(v0 + 1072) + 16);
  v21(*(v0 + 1080), *(v0 + 976) + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_configuration, *(v0 + 1064));
  (*(v19 + 40))(v47, v20, v19);
  if ((v48 & 1) == 0)
  {
    sub_1D8B13EB0();
  }

  v22 = *(v0 + 928);
  *(v0 + 1104) = OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_logger;
  v23 = v22;

  v24 = sub_1D8B151C0();
  v25 = sub_1D8B161F0();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 928);
  if (v26)
  {
    v28 = swift_slowAlloc();
    v45 = v21;
    v29 = swift_slowAlloc();
    v47[0] = v29;
    *v28 = 136315394;
    type metadata accessor for CGRect(0);
    v31 = MEMORY[0x1DA71F1E0](v11, v30);
    v33 = sub_1D89AC714(v31, v32, v47);

    *(v28 + 4) = v33;
    *(v28 + 12) = 1024;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v27);

    *(v28 + 14) = PixelFormatType;
    _os_log_impl(&dword_1D8783000, v24, v25, "OCR running on %s (input pixel format %u)", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v35 = v29;
    v21 = v45;
    MEMORY[0x1DA721330](v35, -1, -1);
    MEMORY[0x1DA721330](v28, -1, -1);
  }

  else
  {
  }

  v36 = *(v0 + 1080);
  v37 = *(v0 + 1064);
  *(v0 + 760) = sub_1D881F764(0, &qword_1EE0E36B8);
  *(v0 + 768) = MEMORY[0x1E69D9C80];
  *(v0 + 736) = v42;
  *(v0 + 800) = v37;
  *(v0 + 808) = sub_1D8A2DC2C(&qword_1EE0E9850, MEMORY[0x1E69D9C70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 776));
  v21(boxed_opaque_existential_1, v36, v37);
  v46 = (*MEMORY[0x1E69D9C50] + MEMORY[0x1E69D9C50]);

  v39 = v42;
  v40 = swift_task_alloc();
  *(v0 + 1112) = v40;
  *v40 = v0;
  v40[1] = sub_1D8A2A51C;

  return v46(v0 + 736, v11, v0 + 776, 0, 0, 0);
}

uint64_t sub_1D8A2A51C(uint64_t a1)
{
  v3 = *v2;
  v3[140] = a1;
  v3[141] = v1;

  if (v1)
  {
    v4 = v3[122];
    swift_bridgeObjectRelease_n();
    v5 = sub_1D8A2C25C;
  }

  else
  {
    v4 = v3[122];

    sub_1D87A14E4((v3 + 97), &qword_1ECA67598);
    __swift_destroy_boxed_opaque_existential_1((v3 + 92));
    v5 = sub_1D8A2A670;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D8A2A670()
{
  v1 = sub_1D8A2C358();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_1D8B16610();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v122 = MEMORY[0x1E69E7CC0];
      sub_1D87F4CE0(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
LABEL_78:
        swift_once();
        goto LABEL_57;
      }

      v4 = 0;
      v5 = v122;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1DA71FC20](v4, v2);
        }

        else
        {
          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v9 = *(v122 + 16);
        v8 = *(v122 + 24);
        v10 = *(v0 + 1120);
        if (v9 >= v8 >> 1)
        {
          sub_1D87F4CE0((v8 > 1), v9 + 1, 1);
          v10 = *(v0 + 1120);
        }

        ++v4;
        *(v122 + 16) = v9 + 1;
        v11 = v122 + 16 * v9;
        *(v11 + 32) = v7;
        *(v11 + 40) = v10;
      }

      while (v3 != v4);

      goto LABEL_14;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_14:
  *(v0 + 1136) = v5;
  v12 = sub_1D8A9872C(v5, *(v0 + 936), *(v0 + 952), *(v0 + 960), *(v0 + 968));
  *(v0 + 1144) = v12;

  v13 = sub_1D8B151C0();
  v14 = sub_1D8B161F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_1D8783000, v13, v14, "OCR completed (%ld blocks detected)", v15, 0xCu);
    MEMORY[0x1DA721330](v15, -1, -1);
  }

  else
  {
  }

  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    if ((sub_1D8B0AAA4() & 1) == 0)
    {
      v49 = *(v0 + 1120);
      v50 = *(v0 + 1088);
      (*(*(v0 + 1072) + 8))(*(v0 + 1080), *(v0 + 1064));

      v51 = *(v0 + 1144);
      v52 = *(v0 + 944);
      v53 = *(v0 + 920);
      v54 = type metadata accessor for CVProcessorTaskDescriptor(0);
      sub_1D8A2DAB0(v52 + *(v54 + 20), v53, type metadata accessor for DetectionRequest);
      *(v53 + *(type metadata accessor for DetectionResult(0) + 20)) = v51;

      v55 = *(v0 + 8);

      return v55();
    }

    v114 = sub_1D8A56908();
    *(v0 + 1152) = v114;
    v16 = MEMORY[0x1E69E7CC0];
    v119 = *(v12 + 16);
    if (!v119)
    {
      break;
    }

    v17 = 0;
    v18 = *(v0 + 1016);
    while (v17 < *(v12 + 16))
    {
      v19 = v16;
      v20 = *(v12 + 32 + 8 * v17++);
      switch(v20 >> 60)
      {
        case 1uLL:
          v36 = type metadata accessor for GroundedParseDetectorResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v36;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_36;
        case 2uLL:
          v31 = type metadata accessor for MetaDetectionResult();
          v22 = swift_projectBox();
          *(v0 + 840) = v31;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for MetaDetectionResult;
          goto LABEL_36;
        case 3uLL:
        case 8uLL:
          v21 = type metadata accessor for ObjectDetectorResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v21;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_36;
        case 4uLL:
          v37 = type metadata accessor for ParseDetectorResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v37;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for ParseDetectorResult;
          goto LABEL_36;
        case 5uLL:
          v38 = *(v0 + 1008);
          v39 = swift_projectBox();
          *(v0 + 840) = v38;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v40 = type metadata accessor for TextDetectorResult;
          v41 = v39;
          goto LABEL_37;
        case 6uLL:
        case 7uLL:
          v25 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v25;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_36;
        case 9uLL:
        case 0xAuLL:
          v26 = *(v0 + 992);
          v27 = *(v0 + 984);
          v28 = swift_projectBox();
          sub_1D8A2DAB0(v28, v26, type metadata accessor for AFMResult);
          *(v0 + 840) = v27;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          sub_1D8A2DA48(v26, v29, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v30 = type metadata accessor for SyntheticDetectionResult();
          v22 = swift_projectBox();
          *(v0 + 840) = v30;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_36;
        case 0xCuLL:
          v32 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v32;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_36;
        case 0xDuLL:
          v42 = type metadata accessor for GroundedParseClassificationsResult(0);
          v22 = swift_projectBox();
          *(v0 + 840) = v42;
          *(v0 + 848) = sub_1D8A2DC2C(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          v24 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_36:
          v40 = v24;
          v41 = v22;
LABEL_37:
          sub_1D8A2DAB0(v41, boxed_opaque_existential_1, v40);
          break;
        default:
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v34 = swift_projectBox();
          *(v0 + 840) = v33;
          *(v0 + 848) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
          v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 816));
          sub_1D894733C(v34, v35);
          break;
      }

      v43 = *(v0 + 1008);
      v44 = *(v0 + 1000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
      v45 = swift_dynamicCast();
      (*(v18 + 56))(v44, v45 ^ 1u, 1, v43);
      if ((*(v18 + 48))(v44, 1, v43) == 1)
      {
        sub_1D87A14E4(*(v0 + 1000), &qword_1ECA64820);
        v16 = v19;
      }

      else
      {
        sub_1D8A2DA48(*(v0 + 1000), *(v0 + 1032), type metadata accessor for TextDetectorResult);
        v16 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D87C7EE0(0, v19[2] + 1, 1, v19);
        }

        v47 = v16[2];
        v46 = v16[3];
        if (v47 >= v46 >> 1)
        {
          v16 = sub_1D87C7EE0(v46 > 1, v47 + 1, 1, v16);
        }

        v48 = *(v0 + 1032);
        v16[2] = v47 + 1;
        sub_1D8A2DA48(v48, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v47, type metadata accessor for TextDetectorResult);
      }

      if (v119 == v17)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

LABEL_47:
  v57 = v16[2];
  if (v57)
  {
    v58 = *(v0 + 1016);
    v113 = *(v0 + 1008);
    v123 = MEMORY[0x1E69E7CC0];
    sub_1D87F4C1C(0, v57, 0);
    v59 = v123;
    v60 = v16 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v112 = *(v58 + 72);
    for (i = v57 - 1; ; --i)
    {
      v62 = *(v0 + 1024);
      sub_1D8A2DAB0(v60, v62, type metadata accessor for TextDetectorResult);
      v63 = (v62 + *(v113 + 24));
      v115 = v63[1];
      v116 = v63[2];
      v117 = *v63;
      v120 = v63[3];
      *(v0 + 896) = 0;
      *(v0 + 904) = 0xE000000000000000;
      v64 = v114;
      MEMORY[0x1DA71EFA0](0x203A52434FLL, 0xE500000000000000);
      sub_1D8B16030();
      v65 = *(v0 + 896);
      v66 = *(v0 + 904);
      sub_1D8A2DB18(v62, type metadata accessor for TextDetectorResult);
      v68 = *(v123 + 16);
      v67 = *(v123 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1D87F4C1C((v67 > 1), v68 + 1, 1);
      }

      v69 = vbslq_s8(vcgtq_f64(v117, v115), v115, v117);
      v70 = vbslq_s8(vcgtq_f64(v69, v116), v116, v69);
      v71 = vbslq_s8(vcgtq_f64(v70, v120), v120, v70);
      v72 = vbslq_s8(vcgeq_f64(v115, v117), v115, v117);
      v73 = vbslq_s8(vcgeq_f64(v116, v72), v116, v72);
      *(v123 + 16) = v68 + 1;
      v74 = v123 + 96 * v68;
      *(v74 + 32) = v71;
      *(v74 + 48) = vsubq_f64(vbslq_s8(vcgeq_f64(v120, v73), v120, v73), v71);
      *(v74 + 64) = 0x3F689374BC6A7EFALL;
      *(v74 + 72) = v64;
      *(v74 + 80) = v65;
      *(v74 + 88) = v66;
      *(v74 + 104) = 0;
      *(v74 + 112) = 0;
      *(v74 + 96) = 0;
      *(v74 + 120) = 1;
      if (!i)
      {
        break;
      }

      v60 += v112;
    }
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1160) = v59;
  v75 = *(v59 + 16);
  *(v0 + 1168) = v75;
  if (!v75)
  {

    v84 = *(v0 + 1096);
    v85 = sub_1D8A56908();
    *(v0 + 1192) = v85;
    v86 = *(v84 + 16);
    if (v86)
    {
      v87 = v85;
      v88 = *(v0 + 1096);
      v124 = MEMORY[0x1E69E7CC0];
      sub_1D87F4C1C(0, v86, 0);
      v89 = v124;
      v90 = *(v124 + 16);
      v91 = 96 * v90 + 120;
      v92 = (v88 + 48);
      do
      {
        v93 = v90;
        v118 = *v92;
        v121 = *(v92 - 1);
        ++v90;
        v94 = *(v124 + 24);
        v95 = v87;
        if (v93 >= v94 >> 1)
        {
          v97 = v95;
          sub_1D87F4C1C((v94 > 1), v90, 1);
          v95 = v97;
        }

        *(v124 + 16) = v90;
        v96 = (v124 + v91);
        *(v96 - 88) = v121;
        *(v96 - 72) = v118;
        *(v96 - 7) = 0x3F689374BC6A7EFALL;
        *(v96 - 6) = v95;
        *(v96 - 40) = xmmword_1D8B33A20;
        *(v96 - 2) = 0;
        *(v96 - 1) = 0;
        *(v96 - 3) = 0;
        v91 += 96;
        v92 += 2;
        *v96 = 1;
        --v86;
      }

      while (v86);
    }

    else
    {
      v89 = MEMORY[0x1E69E7CC0];
      v90 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v90)
      {

        if (qword_1ECA62268 != -1)
        {
          swift_once();
        }

        v105 = *(v0 + 1096);
        v106 = *(v0 + 968);
        v107 = *(v0 + 960);
        v108 = qword_1ECA675B0;
        *(v0 + 1232) = qword_1ECA675B0;
        v109 = CameraSourceFrame.timestamp.getter(v107, v106);
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675A0);
        *(v0 + 1240) = v110;
        *(v0 + 640) = v110;
        v111 = sub_1D8A2DB78();
        *(v0 + 1248) = v111;
        *(v0 + 648) = v111;
        *(v0 + 616) = v105;
        *(v0 + 656) = 3;
        *(v0 + 592) = 0xD000000000000010;
        *(v0 + 600) = 0x80000001D8B47940;
        *(v0 + 608) = v109;
        v104 = sub_1D8A2BD3C;
        v80 = v108;
        goto LABEL_69;
      }
    }

    *(v0 + 1208) = v90;
    *(v0 + 1200) = v89;
    *(v0 + 1216) = 0;
    v98 = v89[3];
    *(v0 + 304) = v89[2];
    *(v0 + 320) = v98;
    v99 = v89[4];
    v100 = v89[5];
    v101 = v89[6];
    *(v0 + 377) = *(v89 + 105);
    *(v0 + 352) = v100;
    *(v0 + 368) = v101;
    *(v0 + 336) = v99;
    sub_1D88E0F34(v0 + 304, v0 + 400);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v80 = qword_1ECA675B0;
    *(v0 + 1224) = qword_1ECA675B0;
    v102 = *(v0 + 352);
    *(v0 + 528) = *(v0 + 336);
    *(v0 + 544) = v102;
    *(v0 + 560) = *(v0 + 368);
    *(v0 + 569) = *(v0 + 377);
    v103 = *(v0 + 320);
    *(v0 + 496) = *(v0 + 304);
    *(v0 + 512) = v103;
    v83 = sub_1D8A2BAB4;
    goto LABEL_68;
  }

  *(v0 + 1176) = 0;
  v76 = *(v59 + 48);
  *(v0 + 16) = *(v59 + 32);
  *(v0 + 32) = v76;
  v77 = *(v59 + 64);
  v78 = *(v59 + 80);
  v79 = *(v59 + 96);
  *(v0 + 89) = *(v59 + 105);
  *(v0 + 64) = v78;
  *(v0 + 80) = v79;
  *(v0 + 48) = v77;
  sub_1D88E0F34(v0 + 16, v0 + 112);
  if (qword_1ECA62268 != -1)
  {
    goto LABEL_78;
  }

LABEL_57:
  v80 = qword_1ECA675B0;
  *(v0 + 1184) = qword_1ECA675B0;
  v81 = *(v0 + 64);
  *(v0 + 240) = *(v0 + 48);
  *(v0 + 256) = v81;
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 281) = *(v0 + 89);
  v82 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 16);
  *(v0 + 224) = v82;
  v83 = sub_1D8A2B658;
LABEL_68:
  v104 = v83;
LABEL_69:

  return MEMORY[0x1EEE6DFA0](v104, v80, 0);
}

uint64_t sub_1D8A2B658()
{
  v1 = *(v0 + 976);
  sub_1D8A3B420((v0 + 208), 7496559, 0xE300000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D8A2B6D4, v1, 0);
}

uint64_t sub_1D8A2B6D4()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1176) + 1;
  sub_1D88E0F90(v0 + 16);
  if (v2 != v1)
  {
    v17 = *(v0 + 1176);
    *(v0 + 1176) = v17 + 1;
    v18 = (*(v0 + 1160) + 96 * v17);
    v19 = v18[9];
    *(v0 + 16) = v18[8];
    *(v0 + 32) = v19;
    v21 = v18[11];
    v20 = v18[12];
    v22 = v18[10];
    *(v0 + 89) = *(v18 + 201);
    *(v0 + 64) = v21;
    *(v0 + 80) = v20;
    *(v0 + 48) = v22;
    sub_1D88E0F34(v0 + 16, v0 + 112);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v23 = qword_1ECA675B0;
    *(v0 + 1184) = qword_1ECA675B0;
    v24 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v24;
    *(v0 + 272) = *(v0 + 80);
    *(v0 + 281) = *(v0 + 89);
    v25 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v25;
    v26 = sub_1D8A2B658;
    goto LABEL_15;
  }

  v3 = *(v0 + 1096);
  v4 = sub_1D8A56908();
  *(v0 + 1192) = v4;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = *(v0 + 1096);
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D87F4C1C(0, v5, 0);
    v8 = v44;
    v9 = *(v44 + 16);
    v10 = 96 * v9 + 120;
    v11 = (v7 + 48);
    do
    {
      v12 = v9;
      v42 = *v11;
      v43 = *(v11 - 1);
      v45 = v8;
      ++v9;
      v13 = *(v8 + 24);
      v14 = v6;
      if (v12 >= v13 >> 1)
      {
        v16 = v14;
        sub_1D87F4C1C((v13 > 1), v9, 1);
        v14 = v16;
        v8 = v45;
      }

      *(v8 + 16) = v9;
      v15 = (v8 + v10);
      *(v15 - 88) = v43;
      *(v15 - 72) = v42;
      *(v15 - 7) = 0x3F689374BC6A7EFALL;
      *(v15 - 6) = v14;
      *(v15 - 40) = xmmword_1D8B33A20;
      *(v15 - 2) = 0;
      *(v15 - 1) = 0;
      *(v15 - 3) = 0;
      v10 += 96;
      v11 += 2;
      *v15 = 1;
      --v5;
    }

    while (v5);
    goto LABEL_12;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v9)
  {
LABEL_12:
    *(v0 + 1208) = v9;
    *(v0 + 1200) = v8;
    *(v0 + 1216) = 0;
    v27 = *(v8 + 48);
    *(v0 + 304) = *(v8 + 32);
    *(v0 + 320) = v27;
    v28 = *(v8 + 64);
    v29 = *(v8 + 80);
    v30 = *(v8 + 96);
    *(v0 + 377) = *(v8 + 105);
    *(v0 + 352) = v29;
    *(v0 + 368) = v30;
    *(v0 + 336) = v28;
    sub_1D88E0F34(v0 + 304, v0 + 400);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v23 = qword_1ECA675B0;
    *(v0 + 1224) = qword_1ECA675B0;
    v31 = *(v0 + 352);
    *(v0 + 528) = *(v0 + 336);
    *(v0 + 544) = v31;
    *(v0 + 560) = *(v0 + 368);
    *(v0 + 569) = *(v0 + 377);
    v32 = *(v0 + 320);
    *(v0 + 496) = *(v0 + 304);
    *(v0 + 512) = v32;
    v26 = sub_1D8A2BAB4;
LABEL_15:
    v33 = v26;
    goto LABEL_16;
  }

  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 1096);
  v35 = *(v0 + 968);
  v36 = *(v0 + 960);
  v37 = qword_1ECA675B0;
  *(v0 + 1232) = qword_1ECA675B0;
  v38 = CameraSourceFrame.timestamp.getter(v36, v35);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675A0);
  *(v0 + 1240) = v39;
  *(v0 + 640) = v39;
  v40 = sub_1D8A2DB78();
  *(v0 + 1248) = v40;
  *(v0 + 648) = v40;
  *(v0 + 616) = v34;
  *(v0 + 656) = 3;
  *(v0 + 592) = 0xD000000000000010;
  *(v0 + 600) = 0x80000001D8B47940;
  *(v0 + 608) = v38;
  v33 = sub_1D8A2BD3C;
  v23 = v37;
LABEL_16:

  return MEMORY[0x1EEE6DFA0](v33, v23, 0);
}

uint64_t sub_1D8A2BAB4()
{
  v1 = *(v0 + 976);
  sub_1D8A3B420((v0 + 496), 0x757165722D72636FLL, 0xEB00000000747365);

  return MEMORY[0x1EEE6DFA0](sub_1D8A2BB40, v1, 0);
}

uint64_t sub_1D8A2BB40()
{
  v1 = (v0 + 304);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1216) + 1;
  sub_1D88E0F90(v0 + 304);
  if (v3 == v2)
  {

    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1096);
    v5 = *(v0 + 968);
    v6 = *(v0 + 960);
    v7 = qword_1ECA675B0;
    *(v0 + 1232) = qword_1ECA675B0;
    v8 = CameraSourceFrame.timestamp.getter(v6, v5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675A0);
    *(v0 + 1240) = v9;
    *(v0 + 640) = v9;
    v10 = sub_1D8A2DB78();
    *(v0 + 1248) = v10;
    *(v0 + 648) = v10;
    *(v0 + 616) = v4;
    *(v0 + 656) = 3;
    *(v0 + 592) = 0xD000000000000010;
    *(v0 + 600) = 0x80000001D8B47940;
    *(v0 + 608) = v8;
    v11 = sub_1D8A2BD3C;
    v12 = v7;
  }

  else
  {
    v13 = *(v0 + 1216);
    *(v0 + 1216) = v13 + 1;
    v14 = (*(v0 + 1200) + 96 * v13);
    v15 = v14[9];
    *v1 = v14[8];
    *(v0 + 320) = v15;
    v17 = v14[11];
    v16 = v14[12];
    v18 = v14[10];
    *(v0 + 377) = *(v14 + 201);
    *(v0 + 352) = v17;
    *(v0 + 368) = v16;
    *(v0 + 336) = v18;
    sub_1D88E0F34(v0 + 304, v0 + 400);
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECA675B0;
    *(v0 + 1224) = qword_1ECA675B0;
    v19 = *(v0 + 352);
    *(v0 + 528) = *(v0 + 336);
    *(v0 + 544) = v19;
    *(v0 + 560) = *(v0 + 368);
    *(v0 + 569) = *(v0 + 377);
    v20 = *(v0 + 320);
    *(v0 + 496) = *v1;
    *(v0 + 512) = v20;
    v11 = sub_1D8A2BAB4;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_1D8A2BD3C()
{
  v1 = *(v0 + 976);
  sub_1D8A3B1F4(v0 + 592, 0x757165722D72636FLL, 0xEB00000000747365);
  sub_1D87DC9A0(v0 + 592);

  return MEMORY[0x1EEE6DFA0](sub_1D8A2BDD0, v1, 0);
}

uint64_t sub_1D8A2BDD0()
{
  v1 = *(v0 + 1136);
  v2 = CameraSourceFrame.timestamp.getter(*(v0 + 960), *(v0 + 968));
  v3 = *(v1 + 16);
  v4 = *(v0 + 1136);
  if (v3)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D87F4CC0(0, v3, 0);
    v5 = v45;
    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      v8 = *(v6 - 1);
      v9 = v7;
      v10 = [v8 boundingQuad];
      if (!v10)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69D9DD8]) initWithNormalizedBoundingBox:0.0 size:{0.0, 0.0, 0.0, 1.0, 1.0}];
      }

      v11 = v10;
      [v10 topLeft];
      v43 = v12;
      v40 = v13;
      [v11 topRight];
      v42 = v14;
      v37 = v15;
      [v11 bottomLeft];
      v41 = v16;
      v38 = v17;
      [v11 bottomRight];
      v39 = v18;
      v36 = v19;

      *&v44 = v5;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D87F4CC0((v20 > 1), v21 + 1, 1);
      }

      v23.f64[0] = v42;
      v22.f64[0] = v43;
      v23.f64[1] = v37;
      v24.f64[0] = v41;
      v22.f64[1] = v40;
      v25 = vbslq_s8(vcgtq_f64(v22, v23), v23, v22);
      v24.f64[1] = v38;
      v26 = vbslq_s8(vcgtq_f64(v25, v24), v24, v25);
      v27.f64[0] = v39;
      *&v27.f64[1] = v36;
      v28 = vbslq_s8(vcgtq_f64(v26, v27), v27, v26);
      v29 = vbslq_s8(vcgeq_f64(v23, v22), v23, v22);
      v30 = vbslq_s8(vcgeq_f64(v24, v29), v24, v29);
      *(v5 + 16) = v21 + 1;
      v31 = (v5 + 32 * v21);
      v31[2] = v28;
      v31[3] = vsubq_f64(vbslq_s8(vcgeq_f64(v27, v30), v27, v30), v28);
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v32 = *(v0 + 1248);
  v33 = *(v0 + 1240);
  v34 = *(v0 + 1232);
  strcpy((v0 + 664), "ocr-outblocks");
  *(v0 + 678) = -4864;
  *(v0 + 680) = v2;
  *(v0 + 688) = v5;
  *(v0 + 696) = v44;
  *(v0 + 712) = v33;
  *(v0 + 720) = v32;
  *(v0 + 728) = 3;

  return MEMORY[0x1EEE6DFA0](sub_1D8A2C088, v34, 0);
}

uint64_t sub_1D8A2C088()
{
  v1 = *(v0 + 976);
  sub_1D8A3B1F4(v0 + 664, 7496559, 0xE300000000000000);
  sub_1D87DC9A0(v0 + 664);

  return MEMORY[0x1EEE6DFA0](sub_1D8A2C10C, v1, 0);
}

uint64_t sub_1D8A2C10C()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1064);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 1144);
  v8 = *(v0 + 944);
  v9 = *(v0 + 920);
  v10 = type metadata accessor for CVProcessorTaskDescriptor(0);
  sub_1D8A2DAB0(v8 + *(v10 + 20), v9, type metadata accessor for DetectionRequest);
  *(v9 + *(type metadata accessor for DetectionResult(0) + 20)) = v7;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D8A2C25C()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1064);

  (*(v2 + 8))(v1, v3);
  sub_1D87A14E4(v0 + 776, &qword_1ECA67598);
  __swift_destroy_boxed_opaque_existential_1(v0 + 736);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1D8A2C358()
{
  v1 = [v0 contentsWithTypes_];
  sub_1D881F764(0, &qword_1EE0E3770);
  v2 = sub_1D8B15CF0();

  if (v2 >> 62)
  {
    goto LABEL_69;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFF8;

  sub_1D8B16BD0();
  sub_1D881F764(0, &qword_1EE0E36E0);
  if (!swift_dynamicCastMetatype())
  {
LABEL_54:
    v46 = *(v3 + 16);
    if (v46)
    {
      v47 = v3 + 32;
      do
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v47 += 8;
        --v46;
      }

      while (v46);
    }
  }

  while (1)
  {
    v4 = objc_opt_self();
    sub_1D881F764(0, &qword_1EE0E36E0);
    v5 = sub_1D8B15CD0();

    v6 = [v4 groupedParagraphBlocksFromParagraphs_];

    sub_1D881F764(0, &unk_1EE0E3708);
    v7 = sub_1D8B15CF0();

    v8 = v7 >> 62 ? sub_1D8B16610() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
      break;
    }

    v10 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v56 = v7 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v52 = v7;
    while (1)
    {
      if (v56)
      {
        v12 = MEMORY[0x1DA71FC20](v10, v7);
      }

      else
      {
        if (v10 >= *(v54 + 16))
        {
          goto LABEL_63;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = swift_allocObject();
      v16 = v9;
      *(v15 + 16) = v9;
      v17 = (v15 + 16);
      aBlock[4] = sub_1D8A2DA28;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8A2D074;
      aBlock[3] = &block_descriptor_10;
      v18 = _Block_copy(aBlock);

      [v13 enumerateContentsWithTypes:4 usingBlock:v18];

      _Block_release(v18);
      swift_beginAccess();
      v19 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D87C9C00(0, v11[2] + 1, 1, v11);
      }

      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        v11 = sub_1D87C9C00((v20 > 1), v21 + 1, 1, v11);
      }

      v11[2] = v21 + 1;
      v11[v21 + 4] = v19;
      ++v10;
      v9 = v16;
      v7 = v52;
      if (v14 == v8)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    sub_1D881F764(0, &qword_1EE0E36E0);

    sub_1D8B168D0();
    swift_bridgeObjectRelease_n();
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v22 = v11[2];
  if (v22)
  {
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    v53 = v11 + 4;
    v49 = v11[2];
    v50 = v11;
    while (1)
    {
      if (v23 >= v11[2])
      {
        goto LABEL_64;
      }

      v25 = v53[v23];
      v26 = v25 >> 62;
      v27 = v25 >> 62 ? sub_1D8B16610() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v24 >> 62;
      if (v24 >> 62)
      {
        v45 = sub_1D8B16610();
        v3 = v45 + v27;
        if (__OFADD__(v45, v27))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
        v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v3 = v29 + v27;
        if (__OFADD__(v29, v27))
        {
          goto LABEL_53;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v28)
      {
        goto LABEL_34;
      }

LABEL_35:
      v55 = sub_1D8B16750();
      v30 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
      v57 = v27;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v26)
      {
        v34 = v30;
        v35 = sub_1D8B16610();
        v30 = v34;
        v33 = v35;
        if (!v35)
        {
LABEL_22:

          if (v57 > 0)
          {
            goto LABEL_65;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_22;
        }
      }

      if (((v32 >> 1) - v31) < v57)
      {
        goto LABEL_66;
      }

      v36 = v30 + 8 * v31 + 32;
      v51 = v30;
      if (v26)
      {
        if (v33 < 1)
        {
          goto LABEL_68;
        }

        sub_1D881CF20(&qword_1ECA67588, &qword_1ECA63260);
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63260);
          v39 = sub_1D8A72A80(aBlock, i, v25);
          v41 = *v40;
          (v39)(aBlock, 0);
          *(v36 + 8 * i) = v41;
        }

        v22 = v49;
        v11 = v50;
        v37 = v57;
      }

      else
      {
        v37 = v57;
        swift_arrayInitWithCopy();
      }

      if (v37 > 0)
      {
        v42 = *(v51 + 16);
        v43 = __OFADD__(v42, v37);
        v44 = v42 + v37;
        if (v43)
        {
          goto LABEL_67;
        }

        *(v51 + 16) = v44;
      }

LABEL_23:
      ++v23;
      v24 = v55;
      if (v23 == v22)
      {
        goto LABEL_60;
      }
    }

    if (!v28)
    {
      v30 = v24 & 0xFFFFFFFFFFFFFF8;
      v55 = v24;
      if (v3 <= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_34:
    sub_1D8B16610();
    goto LABEL_35;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_60:

  return v24;
}

uint64_t sub_1D8A2CA50()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D8A2DB18(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_signposter, type metadata accessor for LoggingSignposter);
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_configuration;
  v4 = sub_1D8B13F10();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for CoreRecognitionProcessor()
{
  result = qword_1EE0E9498;
  if (!qword_1EE0E9498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A2CB90()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v2 <= 0x3F)
    {
      result = sub_1D8B13F10();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

_BYTE *sub_1D8A2CCAC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v3 = 2;
  if (*result == 5)
  {
    strcpy(v8, "ARGB");
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    v12 = 2;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    result = sub_1D88C5438(v8, v16);
    v4 = v16[0];
    v5 = v16[1];
    v6 = v16[2];
    v7 = v16[3];
    v3 = v17;
  }

  else
  {
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1D8A2CD58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8A2D690();
}

uint64_t sub_1D8A2CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A29DA0(a1, a2, a3, a4, v16, a6, a7, a8);
}

void sub_1D8A2CEE4(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v12 = a1;
  v7 = [v6 children];
  if (v7)
  {
    v8 = v7;
    sub_1D881F764(0, &qword_1EE0E3770);
    v9 = sub_1D8B15CF0();

    if (!(v9 >> 62))
    {
LABEL_4:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  v10 = sub_1D8B16610();
LABEL_5:

  if (v10)
  {
    swift_beginAccess();
    v11 = v12;
    MEMORY[0x1DA71F1A0]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D8B15D20();
    }

    sub_1D8B15D70();
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1D8A2D074(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D8A2D0E8(uint64_t a1)
{
  v42[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = v36 - v3;
  v39 = type metadata accessor for DetectionRequest(0);
  v41 = *(v39 - 8);
  v4 = MEMORY[0x1EEE9AC00](v39);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v36 - v6;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_2:
    v36[1] = v36;
    v37 = v10;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    while (1)
    {
      if (!v17)
      {
        v20 = v14;
        while (1)
        {
          v14 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_19;
          }

          if (v14 >= v18)
          {
            goto LABEL_16;
          }

          v21 = *(a1 + 56 + 8 * v14);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v17 = (v21 - 1) & v21;
            goto LABEL_12;
          }
        }
      }

      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v14 << 6);
      sub_1D8A2DAB0(*(a1 + 48) + *(v41 + 72) * v22, v7, type metadata accessor for DetectionRequest);
      v10 = *v7;
      sub_1D8A2DB18(v7, type metadata accessor for DetectionRequest);
      if (v10 == 5)
      {
        *&v13[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v11++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    a1 = sub_1D88BE398(v13, v37, v11, a1);
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_22;
    }

LABEL_17:
    v24 = sub_1D87F3A18(v7, 0);
    v25 = sub_1D881788C(v42, v24 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v7, a1);
    v11 = v42[0];

    sub_1D888A84C();
    if (v25 == v7)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  v26 = swift_slowAlloc();
  a1 = sub_1D88C08D8(v26, v10, a1, sub_1D8A29D90, 0);
  MEMORY[0x1DA721330](v26, -1, -1);
  v7 = *(a1 + 16);
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_22:
  v24 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v27 = v40;
  sub_1D8A305B4(v24, v40);

  if ((*(v41 + 48))(v27, 1, v39) != 1)
  {
    sub_1D8A2DA48(v27, v38, type metadata accessor for DetectionRequest);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0);
    v29 = type metadata accessor for CVProcessorTaskDescriptor(0);
    v30 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D8B1AB90;
    v31 = *(a1 + 16);
    if (v31)
    {
      v32 = sub_1D87F3A18(*(a1 + 16), 0);
      v33 = sub_1D881788C(v42, v32 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v31, a1);
      sub_1D888A84C();
      if (v33 == v31)
      {
LABEL_29:
        v34 = v38;
        sub_1D8A2DAB0(v38, v28 + v30 + *(v29 + 20), type metadata accessor for DetectionRequest);
        *(v28 + v30) = v32;
        sub_1D8A2DB18(v34, type metadata accessor for DetectionRequest);
        return v28;
      }

      __break(1u);
    }

    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  sub_1D87A14E4(v27, &unk_1ECA68B20);
  return 0;
}

uint64_t sub_1D8A2D690()
{
  *(v1 + 72) = v0;
  type metadata accessor for LoggingSignposter(0);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A2D720, v0, 0);
}

uint64_t sub_1D8A2D720()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_1D8A2DAB0(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_signposter, v2, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.CoreRecognitionProcessor.prepare", 46, 2u, 1, 0, v0 + 4);
  sub_1D8A2DB18(v2, type metadata accessor for LoggingSignposter);
  v0[11] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24CoreRecognitionProcessor_imageReader);
  sub_1D8B13E90();
  sub_1D8A2DC2C(&qword_1EE0E9858, MEMORY[0x1E69D9C58]);
  v4 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8A2D84C, v4, v3);
}

uint64_t sub_1D8A2D84C()
{
  sub_1D8B13E80();
  *(v0 + 96) = 0;
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D8A2D8D8, v1, 0);
}

uint64_t sub_1D8A2D8D8()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8A2D980()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 4));

  v3 = v0[1];

  return v3();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8A2DA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A2DAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A2DB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A2DB78()
{
  result = qword_1ECA675A8;
  if (!qword_1ECA675A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA675A0);
    sub_1D8A2DC2C(&qword_1ECA67820, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA675A8);
  }

  return result;
}

uint64_t sub_1D8A2DC2C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 CVDebugArtifact.init(identifier:timestamp:payload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v5 = *(a3 + 16);
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  result = *(a3 + 25);
  *(a4 + 49) = result;
  return result;
}

CGImageRef CVBufferRef.cgImage.getter()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  IOSurface = CVPixelBufferGetIOSurface(v0);
  if (IOSurface)
  {
    v2 = IOSurface;
    viCore_lockUnlockWithFence(v2);
  }

  VTCreateCGImageFromCVPixelBuffer(v0, 0, v4);
  return v4[0];
}

uint64_t DetectionRequest.init<A>(detectionType:originator:annotations:regionOfInterest:timestamp:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  v20 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  sub_1D8A50DC0(a2, v25, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_15:
    *a5 = v26;
    v34 = type metadata accessor for DetectionRequest(0);
    sub_1D8A50DC0(a2, &a5[v34[5]], type metadata accessor for DetectionRequest.Originator);
    (*(v20 + 16))(v22, a3, a4);
    type metadata accessor for DetectionRequest.Annotation(0);
    sub_1D8A4F044(&qword_1EE0E6B20, 255, type metadata accessor for DetectionRequest.Annotation);
    v35 = sub_1D8B16090();
    (*(v20 + 8))(a3, a4);
    result = sub_1D8A50E28(a2, type metadata accessor for DetectionRequest.Originator);
    *&a5[v34[6]] = v35;
    v36 = &a5[v34[7]];
    *v36 = a6;
    v36[1] = a7;
    v36[2] = a8;
    v36[3] = a9;
    *&a5[v34[8]] = a10;
  }

  else
  {
    sub_1D8A50E28(v25, type metadata accessor for DetectionRequest.Originator);
    result = MEMORY[0x1E69E7CD0];
    if (v26 <= 0xD && ((1 << v26) & 0x3002) != 0)
    {
      result = sub_1D8A50348(&unk_1F5426900, &qword_1ECA67E58);
    }

    v28 = 0;
    v29 = 1 << *(result + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(result + 56);
    v32 = (v29 + 63) >> 6;
    while (v31)
    {
LABEL_8:
      v31 &= v31 - 1;
    }

    while (1)
    {
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v33 >= v32)
      {

        goto LABEL_15;
      }

      v31 = *(result + 56 + 8 * v33);
      ++v28;
      if (v31)
      {
        v28 = v33;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CVBufferRef.pngData.getter()
{
  v0 = MEMORY[0x1E69E8418];

  return sub_1D8A2E3B8(v0);
}

int64_t CVBufferRef.cvPixelData.getter()
{
  IOSurface = CVPixelBufferGetIOSurface(v0);
  if (IOSurface)
  {
    v2 = IOSurface;
    viCore_lockUnlockWithFence(v2);
  }

  CVPixelBufferLockBaseAddress(v0, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v0);
  if (!BaseAddress)
  {
    return BaseAddress;
  }

  Height = CVPixelBufferGetHeight(v0);
  result = CVPixelBufferGetBytesPerRow(v0);
  if ((result * Height) >> 64 == (result * Height) >> 63)
  {
    BaseAddress = sub_1D8A50284(BaseAddress, result * Height);
    CVPixelBufferUnlockBaseAddress(v0, 1uLL);
    return BaseAddress;
  }

  __break(1u);
  return result;
}

uint64_t CVBufferRef.pixelFormat.getter()
{
  CVPixelBufferGetPixelFormatType(v0);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D87F4514(0, 4, 0);
  for (i = 0; i != 32; i += 8)
  {
    v2 = sub_1D8B15A50();
    v5 = *(v10 + 16);
    v4 = *(v10 + 24);
    if (v5 >= v4 >> 1)
    {
      v8 = v3;
      v9 = v2;
      sub_1D87F4514((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v9;
    }

    *(v10 + 16) = v5 + 1;
    v6 = v10 + 16 * v5;
    *(v6 + 32) = v2;
    *(v6 + 40) = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675D0);
  sub_1D881CF20(&qword_1ECA675D8, &qword_1ECA675D0);
  return sub_1D8B15B90();
}

uint64_t CVBufferRef.jpegData.getter()
{
  v0 = MEMORY[0x1E69E8430];

  return sub_1D8A2E3B8(v0);
}

uint64_t sub_1D8A2E3B8(void (*a1)(uint64_t))
{
  v3 = v1;
  imageOut[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D8B14BE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(v6);
  sub_1D8B14BC0();
  (*(v5 + 8))(v8, v4);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = sub_1D8B15940();

    v12 = CGImageDestinationCreateWithData(v10, v11, 1uLL, 0);

    if (v12)
    {
      imageOut[0] = 0;
      IOSurface = CVPixelBufferGetIOSurface(v3);
      if (IOSurface)
      {
        v14 = IOSurface;
        viCore_lockUnlockWithFence(v14);
      }

      VTCreateCGImageFromCVPixelBuffer(v3, 0, imageOut);
      v15 = imageOut[0];
      if (imageOut[0])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675B8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8B1AB90;
        v17 = *MEMORY[0x1E696DE78];
        *(inited + 32) = *MEMORY[0x1E696DE78];
        v18 = v17;
        *(inited + 40) = sub_1D8B16D90();
        sub_1D893D618(inited);
        swift_setDeallocating();
        sub_1D87A14E4(inited + 32, &unk_1ECA675C0);
        type metadata accessor for CFString(0);
        type metadata accessor for CFNumber(0);
        sub_1D8A4F044(&qword_1EE0E37C0, 255, type metadata accessor for CFString);
        v19 = sub_1D8B15710();

        CGImageDestinationAddImage(v12, v15, v19);
        if (CGImageDestinationFinalize(v12))
        {
          v20 = v10;
          v21 = sub_1D8B13050();

          return v21;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t CVCoordinator.__allocating_init(configuration:trackManager:)(uint64_t a1, unint64_t a2)
{
  swift_allocObject();
  v4 = sub_1D8A5047C(a1, a2);

  return v4;
}

uint64_t CVCoordinator.consumeFrame<A>(_:isFirstCycleOverStill:cadenceMultiplier:upstreamRequests:upstreamResults:uprightTransform:)(void *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v10 = v8;
  v164 = a5;
  v171 = a4;
  LODWORD(v178) = a2;
  v161 = *v10;
  v16 = sub_1D8B159C0();
  v168 = *(v16 - 8);
  v169 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ProcessorState(0);
  v193 = *(v18 - 8);
  v194 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v182 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v180 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v160 - v22;
  v23 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v176 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v160 = &v160 - v26;
  v27 = type metadata accessor for DetectionRequest(0);
  v170 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a6 - 8);
  v32 = MEMORY[0x1EEE9AC00](v28);
  v174 = v33;
  v175 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v160 - v34;
  v36 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  v37 = *(v31 + 16);
  v190 = a1;
  v172 = v37;
  v173 = v31 + 16;
  v37(&v160 - v34, a1, a6);
  swift_bridgeObjectRetain_n();
  v183 = v36;
  v38 = sub_1D8B151C0();
  v39 = sub_1D8B16230();
  v40 = os_log_type_enabled(v38, v39);
  v177 = v31;
  v191 = v10;
  v179 = a3;
  if (v40)
  {
    LODWORD(v185) = v39;
    Strong = v38;
    v41 = a3;
    v42 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *&aBlock = v166;
    *v42 = 136315650;
    v43 = CameraSourceFrame.timeDescription.getter(a6, v192);
    v45 = v44;
    v46 = *(v31 + 8);
    v186 = a6;
    v46(v35, a6);
    v47 = sub_1D89AC714(v43, v45, &aBlock);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2048;
    v48 = *(v41 + 16);

    *(v42 + 14) = v48;

    v187 = v42;
    *(v42 + 22) = 2080;
    v49 = MEMORY[0x1E69E7CC0];
    if (v48)
    {
      *&v198 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v48, 0);
      v49 = v198;
      v50 = v41 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v51 = *(v170 + 72);
      do
      {
        sub_1D8A50DC0(v50, v30, type metadata accessor for DetectionRequest);
        v52 = *v30;
        sub_1D8A50E28(v30, type metadata accessor for DetectionRequest);
        *&v198 = v49;
        v54 = *(v49 + 16);
        v53 = *(v49 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1D87F4534((v53 > 1), v54 + 1, 1);
          v49 = v198;
        }

        *(v49 + 16) = v54 + 1;
        *(v49 + v54 + 32) = v52;
        v50 += v51;
        --v48;
      }

      while (v48);
    }

    v10 = v191;
    v56 = v192;
    v57 = MEMORY[0x1DA71F1E0](v49, &type metadata for CVDetection.DetectionType);
    v59 = v58;

    v60 = sub_1D89AC714(v57, v59, &aBlock);

    v61 = v187;
    *(v187 + 24) = v60;
    v62 = Strong;
    _os_log_impl(&dword_1D8783000, Strong, v185, "[%s] CVCoordinator.consumeFrame called with %ld upstream requests: %s", v61, 0x20u);
    v63 = v166;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v63, -1, -1);
    MEMORY[0x1DA721330](v61, -1, -1);

    v55 = v186;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v31 + 8))(v35, a6);
    v55 = a6;
    v56 = v192;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_57;
  }

  v64 = v190;
  v165 = *(v56 + 40);
  v166 = v56 + 40;
  v165(&aBlock, v55, v56);
  LODWORD(v185) = v208;
  v204 = 1;
  v65 = v10[5];
  v66 = swift_allocObject();
  *(v66 + 16) = &v204;
  *(v66 + 24) = v10;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1D8A50CB0;
  *(v67 + 24) = v66;
  v187 = v66;
  *(&v207 + 1) = sub_1D8A50CC0;
  v208 = v67;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v206 = sub_1D8A3EDFC;
  *&v207 = &block_descriptor_11;
  v68 = _Block_copy(&aBlock);
  v69 = v65;
  v70 = v55;
  v71 = v69;

  dispatch_sync(v71, v68);

  _Block_release(v68);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if ((v68 & 1) == 0)
  {
    v9 = CameraSourceFrame.timestamp.getter(v70, v56);
    if (v204)
    {
      v72 = sub_1D8B151C0();
      v73 = sub_1D8B16210();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&aBlock = v75;
        *v74 = 134218242;
        *(v74 + 4) = v9;
        *(v74 + 12) = 2080;
        swift_beginAccess();
        if (v204)
        {
          v76 = 0x6465746C6148;
        }

        else
        {
          v76 = 0x656D69746C616552;
        }

        if (v204)
        {
          v77 = 0xE600000000000000;
        }

        else
        {
          v77 = 0xE800000000000000;
        }

        v78 = sub_1D89AC714(v76, v77, &aBlock);

        *(v74 + 14) = v78;
        _os_log_impl(&dword_1D8783000, v72, v73, "CVCoordinator ignoring frame %f in state %s", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x1DA721330](v75, -1, -1);
        MEMORY[0x1DA721330](v74, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_53;
    }

    v89 = v64;
    if (v185 & 1) != 0 || (v165(&aBlock, v70, v192), (v207))
    {
      v90 = v191;
      v91 = v176;
      sub_1D8A50DC0(v191 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter, v176, type metadata accessor for LoggingSignposter);
      LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.consumeFrame", 26, 2u, 1, 0, v195);
      sub_1D8A50E28(v91, type metadata accessor for LoggingSignposter);
      v92 = swift_allocObject();
      *(v92 + 16) = MEMORY[0x1E69E7CD0];
      v183 = v92 + 16;
      v93 = v70;
      LOBYTE(v91) = v185;
      LODWORD(v169) = v185 ^ 1;
      v176 = *(v90 + 40);
      v94 = v175;
      v172(v175, v89, v70);
      v95 = v177;
      v96 = (*(v177 + 80) + 81) & ~*(v177 + 80);
      v97 = swift_allocObject();
      v98 = v192;
      *(v97 + 16) = v93;
      *(v97 + 24) = v98;
      *(v97 + 32) = v178 & 1;
      *(v97 + 40) = v90;
      *(v97 + 48) = v9;
      v99 = v179;
      *(v97 + 56) = v92;
      *(v97 + 64) = v99;
      *(v97 + 72) = v169;
      *(v97 + 76) = a8;
      *(v97 + 80) = v91;
      (*(v95 + 32))(v97 + v96, v94, v93);
      v100 = swift_allocObject();
      *(v100 + 16) = sub_1D8A50E88;
      *(v100 + 24) = v97;
      v178 = v97;
      *(&v207 + 1) = sub_1D8A5A6F0;
      v208 = v100;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v206 = sub_1D8A3EDFC;
      *&v207 = &block_descriptor_25;
      v101 = _Block_copy(&aBlock);

      v102 = v176;
      v185 = v92;

      dispatch_sync(v102, v101);

      _Block_release(v101);
      LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

      if ((v101 & 1) == 0)
      {
        v103 = v171;
        v104 = *(v171 + 16);
        v105 = MEMORY[0x1E69E7CC0];
        v186 = v93;
        if (v104)
        {
          *&aBlock = MEMORY[0x1E69E7CC0];
          sub_1D87F439C(0, v104, 0);
          v106 = aBlock;
          v107 = *(type metadata accessor for DetectionResult(0) - 8);
          v108 = v103 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
          v109 = *(v107 + 72);
          v110 = v162;
          do
          {
            sub_1D8A50DC0(v108, v110, type metadata accessor for DetectionResult);
            swift_storeEnumTagMultiPayload();
            *&aBlock = v106;
            v112 = *(v106 + 16);
            v111 = *(v106 + 24);
            if (v112 >= v111 >> 1)
            {
              sub_1D87F439C(v111 > 1, v112 + 1, 1);
              v106 = aBlock;
            }

            *(v106 + 16) = v112 + 1;
            sub_1D8A512F0(v110, v106 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v112, type metadata accessor for ProcessorState);
            v108 += v109;
            --v104;
          }

          while (v104);
          v93 = v186;
          v105 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v106 = MEMORY[0x1E69E7CC0];
        }

        v113 = v192;
        v114 = v181;
        v115 = v190;
        (*(v192 + 48))(v93, v192);
        v203[0] = v105;
        v116 = v183;
        swift_beginAccess();
        v194 = *v116;
        v117 = v93;
        v118 = v182;
        if (*(v194 + 16))
        {
          v119 = AssociatedTypeWitness;
          v120 = v117;
          (*(v182 + 16))(v180, v114, AssociatedTypeWitness);
          v121 = (*(v118 + 80) + 40) & ~*(v118 + 80);
          v122 = (v163 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
          v123 = swift_allocObject();
          v124 = v118;
          v125 = v123;
          *(v123 + 2) = v120;
          *(v123 + 3) = v113;
          v126 = v191;
          *(v123 + 4) = v191;
          (*(v124 + 32))(&v123[v121], v180, v119);
          v127 = Strong;
          *(v125 + v122) = Strong;
          v128 = v190;

          v129 = v194;

          v130 = v129;
          v131 = v186;
          v132 = v189;
          v133 = sub_1D8A4F08C(v130, v128, v164 | ((HIDWORD(v164) & 1) << 32), sub_1D8A50F20, v125, v186, v113);
          v189 = v132;
          if (v132)
          {

            v134 = v181;
            sub_1D8A44400(v203, v181, v106, v126, v128, v127, v131, v192);

            v135 = v196;
            v136 = v197;
            __swift_project_boxed_opaque_existential_1(v195, v196);
            (*(v136 + 8))(v135, v136);
            __swift_destroy_boxed_opaque_existential_1(v195);

            (*(v182 + 8))(v134, AssociatedTypeWitness);
          }

          v147 = v133;

          v203[0] = v147;
          v148 = *v183;
          v149 = *(*v183 + 16);
          v193 = v147;
          if (!v149)
          {
            v194 = MEMORY[0x1E69E7CC0];
            v153 = v182;
            v154 = v191;
            v155 = v192;
            v156 = v190;
            v152 = Strong;
            goto LABEL_51;
          }

          v150 = sub_1D87F3A18(v149, 0);
          v151 = *(v170 + 80);
          v194 = v150;
          v183 = sub_1D881788C(&aBlock, v150 + ((v151 + 32) & ~v151), v149, v148);

          sub_1D87977A0();
          if (v183 == v149)
          {
            v152 = Strong;
            v153 = v182;
            v154 = v191;
            v155 = v192;
            v156 = v190;
LABEL_51:
            v157 = v181;
            sub_1D8A44400(v203, v181, v106, v154, v156, v152, v186, v155);

            v158 = v196;
            v159 = v197;
            __swift_project_boxed_opaque_existential_1(v195, v196);
            (*(v159 + 8))(v158, v159);
            __swift_destroy_boxed_opaque_existential_1(v195);

            (*(v153 + 8))(v157, AssociatedTypeWitness);

            return v194;
          }

          __break(1u);
LABEL_57:
          result = sub_1D8B168C0();
          __break(1u);
          return result;
        }

        sub_1D8A44400(v203, v114, v106, v191, v115, Strong, v93, v113);

        v137 = v196;
        v138 = v197;
        __swift_project_boxed_opaque_existential_1(v195, v196);
        (*(v138 + 8))(v137, v138);
        __swift_destroy_boxed_opaque_existential_1(v195);

        (*(v118 + 8))(v114, AssociatedTypeWitness);

LABEL_46:

        return MEMORY[0x1E69E7CC0];
      }

      __break(1u);
    }

    else
    {
      v139 = sub_1D8B151C0();
      v140 = sub_1D8B16210();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 134217984;
        *(v141 + 4) = v9;
        _os_log_impl(&dword_1D8783000, v139, v140, "CVCoordinator ignoring frame at %f as tracking is not normal.", v141, 0xCu);
        MEMORY[0x1DA721330](v141, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_43;
      }
    }

    swift_once();
LABEL_43:
    if (sub_1D8B0AAA4())
    {
      v207 = xmmword_1D8B1ABB0;
      v208 = 7633012;
      v209 = 0xE300000000000000;
      v210 = 2;
      strcpy(&aBlock, "tracking-state");
      HIBYTE(aBlock) = -18;
      v206 = *&v9;
      v142 = sub_1D8B15EA0();
      v143 = v160;
      (*(*(v142 - 8) + 56))(v160, 1, 1, v142);
      sub_1D88C4BD0(&aBlock, &v198);
      v144 = swift_allocObject();
      *(v144 + 16) = 0;
      *(v144 + 24) = 0;
      v145 = v199;
      v146 = v201;
      *(v144 + 64) = v200;
      *(v144 + 80) = v146;
      *(v144 + 96) = v202;
      *(v144 + 32) = v198;
      *(v144 + 48) = v145;
      *(v144 + 104) = v161;
      sub_1D8891CA0(0, 0, v143, &unk_1D8B25D88, v144);

      sub_1D87DC9A0(&aBlock);
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_22:
  if (sub_1D8B0AAA4())
  {
    swift_beginAccess();
    v79 = v167;
    sub_1D8B159B0();
    v80 = sub_1D8B15980();
    v82 = v81;

    (*(v168 + 8))(v79, v169);
    if (v82 >> 60 != 15)
    {
      *&v207 = v80;
      *(&v207 + 1) = v82;
      v208 = 7633012;
      v209 = 0xE300000000000000;
      v210 = 2;
      *&aBlock = 0xD000000000000011;
      *(&aBlock + 1) = 0x80000001D8B43960;
      v206 = *&v9;
      v83 = sub_1D8B15EA0();
      v84 = v160;
      (*(*(v83 - 8) + 56))(v160, 1, 1, v83);
      sub_1D88C4BD0(&aBlock, &v198);
      v85 = swift_allocObject();
      *(v85 + 16) = 0;
      *(v85 + 24) = 0;
      v86 = v199;
      v87 = v201;
      *(v85 + 64) = v200;
      *(v85 + 80) = v87;
      *(v85 + 96) = v202;
      *(v85 + 32) = v198;
      *(v85 + 48) = v86;
      *(v85 + 104) = v161;
      sub_1D87A1544(v80, v82);
      sub_1D8891CA0(0, 0, v84, &unk_1D8B25D80, v85);

      sub_1D87C12A4(v80, v82);
      sub_1D87DC9A0(&aBlock);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)(id result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    if ((a3 & 0x100000000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = a3;
    }

    v25 = 0;
    v24 = BYTE4(a3) & 1;
    v26 = a4;
    v27 = 0;
    v28 = a2;
    v19 = *(MEMORY[0x1E695F050] + 16);
    v29 = *MEMORY[0x1E695F050];
    v30 = v19;
    v31 = 1;
    v32 = v18;
    v33 = BYTE4(a3) & 1;
    v34 = 0;
    v23 = 0;
    sub_1D88C5438(&v26, v21);
    *(&v22 + 1) = 0;
    v38[2] = v21[2];
    v38[3] = v21[3];
    v39 = v23;
    v38[0] = v21[0];
    v38[1] = v21[1];
    v38[4] = v22;
    sub_1D8A4E254(v38, a5, a6, v35, a7, a8, a9, a10);
    if (v10)
    {
      sub_1D881F5F8(v38);
    }

    else
    {
      LOBYTE(v21[0]) = 1;
      sub_1D8A49A08(v35, v17, 0x100000000uLL, a5, v37);
      sub_1D881F5F8(v38);
      a6 = v36;
      v20 = v36;
      sub_1D881F5F8(v35);
    }

    return a6;
  }

  return result;
}

unint64_t static CVCoordinator.Configuration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D893DF5C(&unk_1F5426928);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 3;
  return result;
}

uint64_t Angle.cgOrientation.getter()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    return 1;
  }

  result = 3;
  if (v1 != 3.14159265 && v1 != -3.14159265)
  {
    result = 6;
    if (v1 != 1.57079633 && v1 != -1.57079633)
    {
      if (v1 == -4.71238898 || v1 == 4.71238898)
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8A2FFD8(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A4F044(&qword_1EE0E98A0, 255, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  sub_1D8B16D60();
  v4 = (v1 + v3[10]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D87D0390(a1, *(v1 + v3[11]));
  v11 = *(v1 + v3[12]);
  v12 = *(v11 + 16);
  MEMORY[0x1DA720210](v12);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      v13 += 2;
      sub_1D8B16D50();
      --v12;
    }

    while (v12);
  }

  v14 = *(v1 + v3[13]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1DA720250](*&v14);
  v15 = *(v1 + v3[14]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = *(v1 + v3[15]);

  return sub_1D87D0004(a1, v16);
}

void sub_1D8A30194(uint64_t a1@<X0>, uint64_t a2@<X3>, CGFloat *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  MinX = CGRectGetMinX(*&a4);
  v49.origin.x = a4;
  v49.origin.y = a5;
  v49.size.width = a6;
  v49.size.height = a7;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = a4;
  v50.origin.y = a5;
  v50.size.width = a6;
  v50.size.height = a7;
  MaxX = CGRectGetMaxX(v50);
  v51.origin.x = a4;
  v51.origin.y = a5;
  v51.size.width = a6;
  v51.size.height = a7;
  v14 = CGRectGetMinY(v51);
  v52.origin.x = a4;
  v52.origin.y = a5;
  v52.size.width = a6;
  v52.size.height = a7;
  v15 = CGRectGetMinX(v52);
  v53.origin.x = a4;
  v53.origin.y = a5;
  v53.size.width = a6;
  v53.size.height = a7;
  MaxY = CGRectGetMaxY(v53);
  v54.origin.x = a4;
  v54.origin.y = a5;
  v54.size.width = a6;
  v54.size.height = a7;
  v17 = CGRectGetMaxX(v54);
  v55.origin.x = a4;
  v55.origin.y = a5;
  v55.size.width = a6;
  v55.size.height = a7;
  v48[1] = MinX;
  v48[2] = MinY;
  v48[3] = MaxX;
  v48[4] = v14;
  v48[5] = v15;
  v48[6] = MaxY;
  v48[7] = v17;
  v48[8] = CGRectGetMaxY(v55);
  CameraSourceFrame.rotationAngle.getter(a2, v48);
  v47 = 0;
  sub_1D8A5A9D8(v48, &v47, v46);
  Corners.bounds.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((*(a1 + 32) & 1) == 0)
  {
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v29 = *a1;
    v28 = *(a1 + 8);
    v56.origin.x = *a1;
    v56.origin.y = v28;
    v56.size.width = v27;
    v56.size.height = v26;
    v44 = v29 + v19 * CGRectGetWidth(v56);
    v57.origin.x = v29;
    v57.origin.y = v28;
    v57.size.width = v27;
    v57.size.height = v26;
    v41 = v28 + v21 * CGRectGetHeight(v57);
    v58.origin.x = v19;
    v58.origin.y = v21;
    v58.size.width = v23;
    v58.size.height = v25;
    Width = CGRectGetWidth(v58);
    v59.origin.x = v29;
    v59.origin.y = v28;
    v59.size.width = v27;
    v59.size.height = v26;
    v38 = Width * CGRectGetWidth(v59);
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v23;
    v60.size.height = v25;
    Height = CGRectGetHeight(v60);
    v61.origin.x = v29;
    v61.origin.y = v28;
    v61.size.width = v27;
    v61.size.height = v26;
    v25 = Height * CGRectGetHeight(v61);
    v21 = v41;
    v19 = v44;
    v23 = v38;
  }

  v62.origin.x = v19;
  v62.origin.y = v21;
  v62.size.width = v23;
  v62.size.height = v25;
  v45 = CGRectGetMinX(v62);
  v63.origin.x = v19;
  v63.origin.y = v21;
  v63.size.width = v23;
  v63.size.height = v25;
  v42 = CGRectGetMinY(v63);
  v64.origin.x = v19;
  v64.origin.y = v21;
  v64.size.width = v23;
  v64.size.height = v25;
  v39 = CGRectGetMaxX(v64);
  v65.origin.x = v19;
  v65.origin.y = v21;
  v65.size.width = v23;
  v65.size.height = v25;
  v31 = CGRectGetMinY(v65);
  v66.origin.x = v19;
  v66.origin.y = v21;
  v66.size.width = v23;
  v66.size.height = v25;
  v32 = CGRectGetMinX(v66);
  v67.origin.x = v19;
  v67.origin.y = v21;
  v67.size.width = v23;
  v67.size.height = v25;
  v33 = CGRectGetMaxY(v67);
  v68.origin.x = v19;
  v68.origin.y = v21;
  v68.size.width = v23;
  v68.size.height = v25;
  v34 = CGRectGetMaxX(v68);
  v69.origin.x = v19;
  v69.origin.y = v21;
  v69.size.width = v23;
  v69.size.height = v25;
  v35 = CGRectGetMaxY(v69);
  *a3 = v45;
  a3[1] = v42;
  a3[2] = v39;
  a3[3] = v31;
  a3[4] = v32;
  a3[5] = v33;
  a3[6] = v34;
  a3[7] = v35;
}

uint64_t DetectionRequest.Annotation.annotationType.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v2, v6, type metadata accessor for DetectionRequest.Annotation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      *a1 = 1;
      return sub_1D8A50E28(v6, type metadata accessor for DetectionRequest.Annotation);
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    result = sub_1D8A50E28(v6, type metadata accessor for DetectionRequest.Annotation);
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1D8A305B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  v94 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v90 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v82 - v10);
  v12 = type metadata accessor for DetectionRequest(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v91 = &v82 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v82 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v89 = a1;
    v87 = v7;
    v88 = v25;
    v26 = a1 + v25;
    v93 = v21;
    sub_1D8A50DC0(v26, &v82 - v22, type metadata accessor for DetectionRequest);
    v27 = v24 - 1;
    if (v24 == 1)
    {
      sub_1D8A512F0(v23, a2, type metadata accessor for DetectionRequest);
      return (*(v93 + 56))(a2, 0, 1, v12);
    }

    else
    {
      v85 = v4;
      v86 = v11;
      v92 = v23;
      v82 = v15;
      v95 = v12;
      v83 = a2;
      v97 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v24, 0);
      v30 = v97;
      v31 = v26;
      v32 = v24;
      v96 = *(v93 + 72);
      do
      {
        sub_1D8A50DC0(v31, v20, type metadata accessor for DetectionRequest);
        v33 = *v20;
        sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
        v97 = v30;
        v35 = *(v30 + 2);
        v34 = *(v30 + 3);
        if (v35 >= v34 >> 1)
        {
          sub_1D87F4534((v34 > 1), v35 + 1, 1);
          v30 = v97;
        }

        *(v30 + 2) = v35 + 1;
        v30[v35 + 32] = v33;
        v36 = v96;
        v31 += v96;
        --v32;
      }

      while (v32);
      v37 = sub_1D87C4904(v30);

      if (*(v37 + 2) == 1)
      {

        v97 = MEMORY[0x1E69E7CC0];
        sub_1D87F4140(0, v24, 0);
        v38 = v97;
        v39 = v26;
        v40 = v24;
        v41 = v95;
        do
        {
          sub_1D8A50DC0(v39, v20, type metadata accessor for DetectionRequest);
          v42 = *&v20[v41[8]];
          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v97 = v38;
          v44 = *(v38 + 2);
          v43 = *(v38 + 3);
          if (v44 >= v43 >> 1)
          {
            sub_1D87F4140((v43 > 1), v44 + 1, 1);
            v38 = v97;
          }

          *(v38 + 2) = v44 + 1;
          *&v38[8 * v44 + 32] = v42;
          v39 += v36;
          --v40;
          v41 = v95;
        }

        while (v40);
        v97 = v38;

        sub_1D8A4AF2C(&v97);

        v45 = *(v97 + 2);
        v46 = v92;
        v84 = v45;
        if (v45)
        {
          v47 = *&v97[8 * v45 + 24];
        }

        else
        {
          v47 = 0;
        }

        v48 = v41[7];
        x = *&v46[v48];
        y = *&v46[v48 + 8];
        width = *&v46[v48 + 16];
        height = *&v46[v48 + 24];
        v53 = v91;
        v54 = &v91[v48];
        v55 = v89 + v36 + v88;
        do
        {
          sub_1D8A50DC0(v55, v53, type metadata accessor for DetectionRequest);
          v99.origin.x = x;
          v99.origin.y = y;
          v99.size.width = width;
          v99.size.height = height;
          v100 = CGRectUnion(v99, *v54);
          x = v100.origin.x;
          y = v100.origin.y;
          width = v100.size.width;
          height = v100.size.height;
          sub_1D8A50E28(v53, type metadata accessor for DetectionRequest);
          v55 += v36;
          --v27;
        }

        while (v27);
        v97 = MEMORY[0x1E69E7CC0];
        sub_1D87F4C80(0, v24, 0);
        v37 = v97;
        v56 = v26;
        v57 = v24;
        do
        {
          sub_1D8A50DC0(v56, v20, type metadata accessor for DetectionRequest);
          v58 = *&v20[v41[6]];

          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v97 = v37;
          v60 = *(v37 + 2);
          v59 = *(v37 + 3);
          if (v60 >= v59 >> 1)
          {
            sub_1D87F4C80((v59 > 1), v60 + 1, 1);
            v37 = v97;
          }

          *(v37 + 2) = v60 + 1;
          *&v37[8 * v60 + 32] = v58;
          v41 = v95;
          v56 += v96;
          --v57;
        }

        while (v57);
        v61 = 0;
        v97 = MEMORY[0x1E69E7CC0];
        v62 = v60 + 1;
        v63 = v86;
        do
        {
          if (v61 >= *(v37 + 2))
          {
            __break(1u);
            goto LABEL_50;
          }

          v64 = v61 + 1;

          sub_1D88F5B4C(v65);
          v61 = v64;
        }

        while (v62 != v64);

        v91 = v97;
        v66 = *v92;
        v97 = MEMORY[0x1E69E7CC0];
        sub_1D87F4C3C(0, v24, 0);
        v67 = v97;
        v37 = v90;
        do
        {
          sub_1D8A50DC0(v26, v20, type metadata accessor for DetectionRequest);
          sub_1D8A50DC0(&v20[v41[5]], v37, type metadata accessor for DetectionRequest.Originator);
          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v97 = v67;
          v69 = *(v67 + 2);
          v68 = *(v67 + 3);
          if (v69 >= v68 >> 1)
          {
            sub_1D87F4C3C(v68 > 1, v69 + 1, 1);
            v67 = v97;
          }

          *(v67 + 2) = v69 + 1;
          sub_1D8A512F0(v37, &v67[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v69], type metadata accessor for DetectionRequest.Originator);
          v26 += v96;
          --v24;
        }

        while (v24);
        sub_1D8A3167C(v67, v63);

        if (!v84)
        {
          v47 = *&v92[v41[8]];
        }

        v70 = v87;
        sub_1D8A50DC0(v63, v87, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_48:
          v78 = v82;
          *v82 = v66;
          sub_1D8A50DC0(v63, v78 + v41[5], type metadata accessor for DetectionRequest.Originator);
          v79 = sub_1D87C45EC(v91);

          sub_1D8A50E28(v63, type metadata accessor for DetectionRequest.Originator);
          sub_1D8A50E28(v92, type metadata accessor for DetectionRequest);
          *(v78 + v41[6]) = v79;
          v80 = (v78 + v41[7]);
          *v80 = x;
          v80[1] = y;
          v80[2] = width;
          v80[3] = height;
          *(v78 + v41[8]) = v47;
          v81 = v83;
          sub_1D8A512F0(v78, v83, type metadata accessor for DetectionRequest);
          return (*(v93 + 56))(v81, 0, 1, v41);
        }

        sub_1D8A50E28(v70, type metadata accessor for DetectionRequest.Originator);
        v71 = MEMORY[0x1E69E7CD0];
        if (v66 <= 0xD && ((1 << v66) & 0x3002) != 0)
        {
          v71 = sub_1D8A50348(&unk_1F54267F0, &qword_1ECA67E58);
        }

        v72 = 0;
        v73 = 1 << *(v71 + 32);
        v74 = -1;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        v75 = v74 & *(v71 + 56);
        v76 = (v73 + 63) >> 6;
        while (v75)
        {
LABEL_41:
          v75 &= v75 - 1;
        }

        while (1)
        {
          v77 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            break;
          }

          if (v77 >= v76)
          {

            goto LABEL_48;
          }

          v75 = *(v71 + 56 + 8 * v77);
          ++v72;
          if (v75)
          {
            v72 = v77;
            goto LABEL_41;
          }
        }

LABEL_50:
        __break(1u);
      }

      sub_1D8B168C0();
      __break(1u);

      __break(1u);
    }
  }

  else
  {
    v29 = *(v21 + 56);

    return v29(a2, 1, 1, v12);
  }

  return result;
}

uint64_t sub_1D8A31004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a2;
  v11[7] = a1;
  v8 = type metadata accessor for DetectionRequest(0);
  return sub_1D87DFC48(sub_1D8A57778, v11, a3, v8, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v9);
}

uint64_t CVError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v9 = 0x6C75736572206F4ELL;
      if (v1)
      {
        v4 = *(v0 + 8);
      }

      else
      {
        v2 = 0;
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v2, v4);
    }

    else
    {

      sub_1D8B16720();

      v9 = 0xD000000000000012;
      if (v1)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      if (!v1)
      {
        v1 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v3, v1);
    }

    return v9;
  }

  if (*(v0 + 16) == 2)
  {
    v9 = 0;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B47960);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0xD000000000000027, 0x80000001D8B47980);
    sub_1D8B16020();
    return v9;
  }

  if (v2 <= 2)
  {
    if (v2 ^ 1 | v1)
    {
      v8 = 0x656C74746F726854;
    }

    else
    {
      v8 = 0xD000000000000019;
    }

    if (v2 | v1)
    {
      return v8;
    }

    else
    {
      return 0x6F6E20656D617246;
    }
  }

  else
  {
    if (v2 ^ 5 | v1)
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000016;
    if (!(v2 ^ 3 | v1))
    {
      v7 = 0x6F6E206B63617254;
    }

    if (v2 <= 4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

BOOL static CVCoordinationRegime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) != 1)
    {
      return v3 == 2 && LODWORD(v2) == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == v2;
}

uint64_t DetectionRequest.Originator.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v2, v10, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_1D8A4F044(&qword_1EE0E98A0, 255, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      return (*(v5 + 8))(v7, v4);
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D88197A0(a1, *v10);
    }

    return MEMORY[0x1DA720210](1);
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v14 = *(v10 + 1);
    sub_1D8B13060();
    return sub_1D87A1598(v13, v14);
  }

  if (v10[4])
  {
    if (v10[4] != 1)
    {
      return MEMORY[0x1DA720210](1);
    }

    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1DA720210](v15);
  return sub_1D8B16D60();
}

uint64_t sub_1D8A3167C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v23 = v10;
    v24 = a2;
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v14;
    v16 = *(v9 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8A50DC0(v15, v12, type metadata accessor for DetectionRequest.Originator);
      sub_1D8A512F0(v12, v8, type metadata accessor for DetectionRequest.Originator);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D87C9BB0(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D87C9BB0(v18 > 1, v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      sub_1D8A512F0(v8, v17 + v14 + v19 * v16, type metadata accessor for DetectionRequest.Originator);
      v15 += v16;
      --v13;
    }

    while (v13);
    if (v19)
    {
      v20 = sub_1D87C39A0(v17);

      *v24 = v20;
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v22 = v23;
      sub_1D8A50DC0(v17 + v14, v23, type metadata accessor for DetectionRequest.Originator);

      return sub_1D8A512F0(v22, v24, type metadata accessor for DetectionRequest.Originator);
    }
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CD0];

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_1D8A31940()
{
  v1 = *v0;
  v2 = 0x656D69676572;
  v3 = 0x6564496B63617274;
  v4 = 0x73756F69726176;
  if (v1 != 3)
  {
    v4 = 0x6E696D6165727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A319EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A56EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A31A14(uint64_t a1)
{
  v2 = sub_1D8A50FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31A50(uint64_t a1)
{
  v2 = sub_1D8A50FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31A8C(uint64_t a1)
{
  v2 = sub_1D8A511F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31AC8(uint64_t a1)
{
  v2 = sub_1D8A511F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31B04(uint64_t a1)
{
  v2 = sub_1D8A51040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31B40(uint64_t a1)
{
  v2 = sub_1D8A51040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31B7C(uint64_t a1)
{
  v2 = sub_1D8A511A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31BB8(uint64_t a1)
{
  v2 = sub_1D8A511A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31BF4(uint64_t a1)
{
  v2 = sub_1D8A51094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31C30(uint64_t a1)
{
  v2 = sub_1D8A51094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31C6C(uint64_t a1)
{
  v2 = sub_1D8A5129C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31CA8(uint64_t a1)
{
  v2 = sub_1D8A5129C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.Originator.encode(to:)(void *a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675F0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v48 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675F8);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67600);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - v5;
  v52 = sub_1D8B13240();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67608);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67610);
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67618);
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A50FEC();
  v63 = v18;
  sub_1D8B16DD0();
  sub_1D8A50DC0(v64, v15, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v60;
    v27 = v61;
    v28 = v10;
    v29 = v62;
    if (EnumCaseMultiPayload)
    {
      v44 = *v15;
      v45 = v15[4];
      LOBYTE(v67) = 1;
      sub_1D8A511F4();
      v46 = v66;
      v47 = v63;
      sub_1D8B16A40();
      LODWORD(v67) = v44;
      BYTE4(v67) = v45;
      sub_1D8A51248();
      sub_1D8B16AE0();
      (*(v27 + 8))(v9, v29);
      return (*(v65 + 8))(v47, v46);
    }

    else
    {
      v31 = *v15;
      v30 = *(v15 + 1);
      LOBYTE(v67) = 0;
      sub_1D8A5129C();
      v32 = v66;
      v33 = v63;
      sub_1D8B16A40();
      v67 = v31;
      v68 = v30;
      sub_1D89980D8();
      sub_1D8B16AE0();
      (*(v26 + 8))(v12, v28);
      (*(v65 + 8))(v33, v32);
      return sub_1D87A1598(v31, v30);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v34 = v50;
    v35 = v48;
    v36 = v15;
    v37 = v52;
    (*(v50 + 32))(v48, v36, v52);
    LOBYTE(v67) = 2;
    sub_1D8A511A0();
    v38 = v49;
    v39 = v66;
    v40 = v63;
    sub_1D8B16A40();
    sub_1D8A4F044(&qword_1ECA637D8, 255, MEMORY[0x1E69695A8]);
    v41 = v55;
    sub_1D8B16AE0();
    (*(v54 + 8))(v38, v41);
    (*(v34 + 8))(v35, v37);
    return (*(v65 + 8))(v40, v39);
  }

  else
  {
    v20 = v63;
    if (EnumCaseMultiPayload == 3)
    {
      v21 = *v15;
      LOBYTE(v67) = 3;
      sub_1D8A51094();
      v22 = v53;
      v23 = v66;
      sub_1D8B16A40();
      v67 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67638);
      sub_1D8A510E8();
      v24 = v59;
      sub_1D8B16AE0();
      (*(v57 + 8))(v22, v24);
      (*(v65 + 8))(v20, v23);
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_1D8A51040();
      v42 = v51;
      v43 = v66;
      sub_1D8B16A40();
      (*(v56 + 8))(v42, v58);
      return (*(v65 + 8))(v20, v43);
    }
  }
}

uint64_t DetectionRequest.Originator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67680);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v57 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67688);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v57 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67690);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v78 = &v57 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67698);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v77 = &v57 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676A0);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v75 = &v57 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676A8);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v9 = &v57 - v8;
  v73 = type metadata accessor for DetectionRequest.Originator(0);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A50FEC();
  v25 = v86;
  sub_1D8B16DB0();
  if (!v25)
  {
    v57 = v21;
    v58 = v18;
    v60 = v15;
    v59 = v12;
    v26 = v75;
    v27 = v76;
    v29 = v77;
    v28 = v78;
    v86 = v23;
    v30 = v79;
    v31 = sub_1D8B16A20();
    v32 = (2 * *(v31 + 16)) | 1;
    v82 = v31;
    v83 = v31 + 32;
    v84 = 0;
    v85 = v32;
    v33 = sub_1D881F7C0();
    if (v33 != 5 && v84 == v85 >> 1)
    {
      if (v33 <= 1u)
      {
        if (v33)
        {
          LOBYTE(v81) = 1;
          sub_1D8A511F4();
          sub_1D8B16950();
          v50 = v74;
          sub_1D8A51410();
          v51 = v63;
          sub_1D8B16A10();
          (*(v64 + 8))(v29, v51);
          (*(v50 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v56 = BYTE4(v81);
          v45 = v58;
          *v58 = v81;
          *(v45 + 4) = v56;
        }

        else
        {
          LOBYTE(v81) = 0;
          sub_1D8A5129C();
          v42 = v26;
          sub_1D8B16950();
          v43 = v74;
          sub_1D899812C();
          v44 = v62;
          sub_1D8B16A10();
          (*(v61 + 8))(v42, v44);
          (*(v43 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v45 = v57;
          *v57 = v81;
        }

        swift_storeEnumTagMultiPayload();
        v52 = v45;
      }

      else
      {
        if (v33 != 2)
        {
          if (v33 == 3)
          {
            LOBYTE(v81) = 3;
            sub_1D8A51094();
            sub_1D8B16950();
            v34 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67638);
            sub_1D8A51358();
            v35 = v68;
            v36 = v72;
            sub_1D8B16A10();
            (*(v70 + 8))(v36, v35);
            (*(v74 + 8))(v9, v27);
            swift_unknownObjectRelease();
            v53 = v59;
            *v59 = v81;
            swift_storeEnumTagMultiPayload();
            v54 = v86;
            sub_1D8A512F0(v53, v86, type metadata accessor for DetectionRequest.Originator);
            v55 = v80;
            v30 = v34;
LABEL_19:
            sub_1D8A512F0(v54, v30, type metadata accessor for DetectionRequest.Originator);
            v40 = v55;
            return __swift_destroy_boxed_opaque_existential_1(v40);
          }

          LOBYTE(v81) = 4;
          sub_1D8A51040();
          v49 = v71;
          sub_1D8B16950();
          (*(v65 + 8))(v49, v69);
          (*(v74 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v54 = v86;
          swift_storeEnumTagMultiPayload();
LABEL_18:
          v55 = v80;
          goto LABEL_19;
        }

        LOBYTE(v81) = 2;
        sub_1D8A511A0();
        sub_1D8B16950();
        sub_1D8B13240();
        sub_1D8A4F044(&unk_1ECA689C0, 255, MEMORY[0x1E69695A8]);
        v46 = v60;
        v47 = v67;
        sub_1D8B16A10();
        v48 = v74;
        (*(v66 + 8))(v28, v47);
        (*(v48 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v52 = v46;
      }

      v54 = v86;
      sub_1D8A512F0(v52, v86, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_18;
    }

    v37 = sub_1D8B16770();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v39 = v73;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v74 + 8))(v9, v27);
    swift_unknownObjectRelease();
  }

  v40 = v80;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t DetectionRequest.Annotation.AnnotationType.description.getter()
{
  v1 = 0x6E69646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D8A331C0(uint64_t a1)
{
  v2 = sub_1D8A51464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A331FC(uint64_t a1)
{
  v2 = sub_1D8A51464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33238(uint64_t a1)
{
  v2 = sub_1D8A514B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33274(uint64_t a1)
{
  v2 = sub_1D8A514B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A332B0(uint64_t a1)
{
  v2 = sub_1D8A5150C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A332EC(uint64_t a1)
{
  v2 = sub_1D8A5150C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33328(uint64_t a1)
{
  v2 = sub_1D8A51560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33364(uint64_t a1)
{
  v2 = sub_1D8A51560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.Annotation.AnnotationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676E0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676F0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51464();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8A5150C();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8A514B8();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8A51560();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DetectionRequest.Annotation.AnnotationType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67720);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67728);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67730);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67738);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A51464();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v24 = &type metadata for DetectionRequest.Annotation.AnnotationType;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8A5150C();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8A514B8();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8A51560();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D8A33CB0(uint64_t a1)
{
  v2 = sub_1D8A515B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33CEC(uint64_t a1)
{
  v2 = sub_1D8A515B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33D28(uint64_t a1)
{
  v2 = sub_1D8A51608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33D64(uint64_t a1)
{
  v2 = sub_1D8A51608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33DA0(uint64_t a1)
{
  v2 = sub_1D8A516B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33DDC(uint64_t a1)
{
  v2 = sub_1D8A516B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33E18(uint64_t a1)
{
  v2 = sub_1D8A51704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33E54(uint64_t a1)
{
  v2 = sub_1D8A51704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.Annotation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67740);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67748);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67758);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67760);
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A515B4();
  sub_1D8B16DD0();
  sub_1D8A50DC0(v38, v12, type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v31;
      sub_1D881F6FC(v12, v31, &qword_1ECA67750);
      v42 = 1;
      sub_1D8A516B0();
      v18 = v32;
      v19 = v39;
      sub_1D8B16A40();
      sub_1D881CF20(&qword_1ECA67788, &qword_1ECA67750);
      v20 = v35;
      sub_1D8B16AE0();
      (*(v34 + 8))(v18, v20);
      sub_1D87A14E4(v17, &qword_1ECA67750);
      return (*(v13 + 8))(v15, v19);
    }

    else
    {
      v24 = *v12;
      v44 = 2;
      sub_1D8A51608();
      v25 = v33;
      v26 = v39;
      sub_1D8B16A40();
      v43 = v24;
      sub_1D8A5165C();
      v27 = v37;
      sub_1D8B16AE0();
      (*(v36 + 8))(v25, v27);
      return (*(v13 + 8))(v15, v26);
    }
  }

  else
  {
    v22 = *v12;
    v41 = 0;
    sub_1D8A51704();
    v23 = v39;
    sub_1D8B16A40();
    v40 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0);
    sub_1D8A51758();
    sub_1D8B16AE0();
    (*(v29 + 8))(v9, v7);
    (*(v13 + 8))(v15, v23);
  }
}

uint64_t DetectionRequest.Annotation.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TextDetectorResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8A50DC0(v1, v12, type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D881F6FC(v12, v5, &qword_1ECA67750);
      MEMORY[0x1DA720210](1);
      sub_1D8A2FFD8(a1);
      return sub_1D87A14E4(v5, &qword_1ECA67750);
    }

    MEMORY[0x1DA720210](2);
    sub_1D8B15A60();
  }

  else
  {
    v15 = *v12;
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v18 = *(v7 + 72);
      do
      {
        sub_1D8A50DC0(v17, v9, type metadata accessor for TextDetectorResult);
        TextDetectorResult.hash(into:)(a1);
        sub_1D8A50E28(v9, type metadata accessor for TextDetectorResult);
        v17 += v18;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t DetectionRequest.Annotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677B0);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v62 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677B8);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677C0);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677C8);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v48 - v8;
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8A515B4();
  v23 = v65;
  sub_1D8B16DB0();
  if (!v23)
  {
    v49 = v19;
    v50 = v13;
    v51 = v16;
    v24 = v59;
    v25 = v60;
    v27 = v61;
    v26 = v62;
    v52 = v21;
    v65 = v10;
    v28 = v64;
    v29 = sub_1D8B16A20();
    v30 = (2 * *(v29 + 16)) | 1;
    v67 = v29;
    v68 = v29 + 32;
    v69 = 0;
    v70 = v30;
    v31 = sub_1D881F7C4();
    if (v31 == 3 || v69 != v70 >> 1)
    {
      v36 = sub_1D8B16770();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v38 = v65;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v63 + 8))(v9, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          LOBYTE(v71) = 1;
          sub_1D8A516B0();
          v32 = v27;
          sub_1D8B16950();
          v33 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          sub_1D881CF20(&qword_1ECA677D8, &qword_1ECA67750);
          v34 = v51;
          v35 = v57;
          sub_1D8B16A10();
          (*(v56 + 8))(v32, v35);
          (*(v63 + 8))(v9, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v52;
          sub_1D8A512F0(v34, v52, type metadata accessor for DetectionRequest.Annotation);
          v46 = v64;
        }

        else
        {
          LOBYTE(v71) = 2;
          sub_1D8A51608();
          sub_1D8B16950();
          v46 = v28;
          v40 = v25;
          sub_1D8A51810();
          v41 = v53;
          sub_1D8B16A10();
          v42 = v63;
          (*(v58 + 8))(v26, v41);
          (*(v42 + 8))(v9, v40);
          swift_unknownObjectRelease();
          v47 = v50;
          *v50 = v71;
          swift_storeEnumTagMultiPayload();
          v45 = v52;
          sub_1D8A512F0(v47, v52, type metadata accessor for DetectionRequest.Annotation);
        }
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_1D8A51704();
        sub_1D8B16950();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0);
        sub_1D8A51864();
        v43 = v55;
        sub_1D8B16A10();
        (*(v54 + 8))(v24, v43);
        (*(v63 + 8))(v9, v25);
        swift_unknownObjectRelease();
        v44 = v49;
        *v49 = v71;
        swift_storeEnumTagMultiPayload();
        v45 = v52;
        sub_1D8A512F0(v44, v52, type metadata accessor for DetectionRequest.Annotation);
        v46 = v28;
      }

      sub_1D8A512F0(v45, v46, type metadata accessor for DetectionRequest.Annotation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1D8A3506C()
{
  v1 = *v0;
  v2 = 0x6F69746365746564;
  v3 = 0x697461746F6E6E61;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616E696769726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A35128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A57194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A35150(uint64_t a1)
{
  v2 = sub_1D8A5191C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}