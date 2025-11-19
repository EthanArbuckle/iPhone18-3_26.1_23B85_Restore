uint64_t sub_1E1020BE8()
{
  v1 = v0[39];
  v2 = v0[14];
  v0[59] = sub_1E1018B70(v0[54], v0[55]);

  return MEMORY[0x1EEE6DFA0](sub_1E1020C5C, v2, 0);
}

uint64_t sub_1E1020C5C()
{
  v53 = v0;
  v1 = *(v0 + 472);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 472);
    }

    if (sub_1E10AE70C())
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = *(v0 + 472);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 336);

    v19 = sub_1E10ADF7C();
    v20 = sub_1E10AE44C();
    sub_1E10279CC(v17, v16, v15, v14, 1u);
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    v25 = *(v0 + 432);
    v24 = *(v0 + 440);
    if (v21)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315138;
      v28 = sub_1E1078CFC(v25, v24, &v52);
      sub_1E10279CC(v25, v24, v23, v22, 1u);
      *(v26 + 4) = v28;
      _os_log_impl(&dword_1E0FDF000, v19, v20, "No matching geo request for network request <%s>", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12EE9E0](v27, -1, -1);
      MEMORY[0x1E12EE9E0](v26, -1, -1);
    }

    else
    {

      sub_1E10279CC(v25, v24, v23, v22, 1u);
    }

    v29 = *(v0 + 424);
    v30 = *(v0 + 344);
    v31 = *(v0 + 312);
    v32 = *(v0 + 272);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 176);
    swift_willThrow();

    sub_1E1021064(v33, "PartialEventFetcher.partialEvents", 33, 2);

    (*(v34 + 8))(v33, v35);
    sub_1E1028100(v32, type metadata accessor for PartialEventConfiguration);
    v51 = *(v0 + 424);
    goto LABEL_14;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  result = sub_1E10279CC(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), 1u);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12EDD80](0, *(v0 + 472));
    v47 = *(v0 + 472);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 472) + 32);
  }

  v4 = *(v0 + 424);
  v5 = *(v0 + 344);
  v6 = *(v0 + 312);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v48 = *(v0 + 176);
  v49 = *(v0 + 272);

  v10 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
  v9 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8];
  sub_1E10095EC();
  swift_allocError();
  *v11 = v10;
  v11[1] = v9;
  swift_willThrow();

  sub_1E1021064(v7, "PartialEventFetcher.partialEvents", 33, 2);

  (*(v8 + 8))(v7, v48);
  sub_1E1028100(v49, type metadata accessor for PartialEventConfiguration);
LABEL_14:
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v39 = *(v0 + 248);
  v38 = *(v0 + 256);
  v40 = *(v0 + 240);
  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v43 = *(v0 + 192);
  v44 = *(v0 + 168);
  v45 = *(v0 + 144);
  v50 = *(v0 + 136);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1E1021064(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v27 = a2;
  v5 = sub_1E10ADF2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E10ADEEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1E10ADF0C();
  sub_1E10ADF3C();
  v26 = sub_1E10AE46C();
  result = sub_1E10AE4DC();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v13 + 8))(v18, v12);
  }

  if ((a4 & 1) == 0)
  {
    v21 = v27;
    if (v27)
    {
LABEL_9:

      sub_1E10ADF6C();

      if ((*(v6 + 88))(v11, v5) == *MEMORY[0x1E69E93E8])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v5);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1E10ADECC();
      _os_signpost_emit_with_name_impl(&dword_1E0FDF000, v19, v26, v24, v21, v22, v23, 2u);
      MEMORY[0x1E12EE9E0](v23, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v21 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E1021300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E102132C, a5, 0);
}

uint64_t sub_1E102132C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE89448, qword_1E10B2440);
  v6 = sub_1E10281C8(&qword_1ECE89898, v5, type metadata accessor for PartialEventFetcher);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v12 = *(v0 + 48);
  *(v7 + 16) = *(v0 + 24);
  *(v7 + 32) = v2;
  *(v7 + 40) = v12;
  *(v7 + 56) = v1;
  v8 = *(MEMORY[0x1E69E88A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_1E10214B0;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v10, v3, v4, v12, v6, &unk_1E10B3AE0, v7, v3);
}

uint64_t sub_1E10214B0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1E10215EC, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E10215EC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1E1021650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[93] = a8;
  v8[92] = a7;
  v8[91] = a6;
  v8[90] = a5;
  v8[89] = a4;
  v8[88] = a3;
  v8[87] = a2;
  v8[86] = a1;
  v10 = type metadata accessor for PartialEventConfiguration(0);
  v8[94] = v10;
  v11 = *(v10 - 8);
  v8[95] = v11;
  v8[96] = *(v11 + 64);
  v8[97] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64) + 15;
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1021794, a3, 0);
}

uint64_t sub_1E1021794()
{
  v1 = v0[91];
  v2 = v0[88];
  swift_beginAccess();
  v3 = *(v2 + 112);

  v0[102] = sub_1E101D680(v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1021820, v1, 0);
}

uint64_t sub_1E1021820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 816);
  v6 = *(v4 + 720);
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  if (*(*(v4 + 712) + *(*(v4 + 752) + 32)) < v6)
  {
    v6 = *(*(v4 + 712) + *(*(v4 + 752) + 32));
  }

  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
  }

  v56 = v5 + 56;
  v9 = v7 & *(v5 + 56);
  v10 = 0;
  if (v6)
  {
    v11 = 0;
    v59 = *(v4 + 760);
    v60 = v6;
    v12 = (63 - v8) >> 6;
    v57 = v12;
    v58 = *(v4 + 728);
    v61 = *(v4 + 816);
    while (v9)
    {
      v66 = v11;
LABEL_16:
      v16 = *(v4 + 808);
      v62 = v16;
      v63 = *(v4 + 800);
      v17 = *(v4 + 776);
      v64 = *(v4 + 768);
      v18 = *(v4 + 712);
      v19 = (*(v5 + 48) + 48 * (__clz(__rbit64(v9)) | (v10 << 6)));
      v21 = v19[1];
      v20 = v19[2];
      *(v4 + 128) = *v19;
      *(v4 + 144) = v21;
      *(v4 + 160) = v20;
      *(v4 + 512) = *v19;
      v22 = v19[2];
      *(v4 + 320) = v19[1];
      *(v4 + 336) = v22;
      v23 = v19[1];
      *(v4 + 576) = *(v4 + 336);
      *(v4 + 592) = v23;
      v24 = sub_1E10AE29C();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v16, 1, 1, v24);
      v26 = *(v58 + 112);
      sub_1E1028098(v18, v17, type metadata accessor for PartialEventConfiguration);
      v27 = (*(v59 + 80) + 88) & ~*(v59 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      v65 = (v28 + 16);
      *(v28 + 24) = 0;
      *(v28 + 32) = v26;
      v29 = *(v4 + 144);
      *(v28 + 40) = *(v4 + 128);
      *(v28 + 56) = v29;
      *(v28 + 72) = *(v4 + 160);
      sub_1E1028160(v17, v28 + v27, type metadata accessor for PartialEventConfiguration);
      sub_1E0FE62DC(v62, v63);
      v30 = (*(v25 + 48))(v63, 1, v24);
      v31 = *(v4 + 800);
      if (v30 == 1)
      {
        sub_1E1027C5C(v4 + 512, v4 + 496);
        sub_1E1027CB8(v4 + 592, v4 + 480);
        sub_1E1027CB8(v4 + 576, v4 + 464);

        sub_1E0FF0440(v31, &unk_1ECE88C00, &unk_1E10B94F0);
      }

      else
      {
        sub_1E1027C5C(v4 + 512, v4 + 640);
        sub_1E1027CB8(v4 + 592, v4 + 656);
        sub_1E1027CB8(v4 + 576, v4 + 672);

        sub_1E10AE28C();
        (*(v25 + 8))(v31, v24);
      }

      if (*v65)
      {
        v32 = *(v28 + 24);
        v33 = *v65;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = sub_1E10AE23C();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = **(v4 + 696);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
      v38 = v36 | v34;
      if (v36 | v34)
      {
        v38 = v4 + 224;
        *(v4 + 224) = 0;
        *(v4 + 232) = 0;
        *(v4 + 240) = v34;
        *(v4 + 248) = v36;
      }

      v11 = v66 + 1;
      v13 = *(v4 + 808);
      v9 &= v9 - 1;
      *(v4 + 424) = 1;
      *(v4 + 432) = v38;
      *(v4 + 440) = v37;
      swift_task_create();

      a1 = sub_1E0FF0440(v13, &unk_1ECE88C00, &unk_1E10B94F0);
      v5 = v61;
      v12 = v57;
      if (v66 + 1 == v60)
      {
        goto LABEL_29;
      }
    }

    v14 = v10;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v56 + 8 * v15);
      ++v14;
      if (v9)
      {
        v66 = v11;
        v10 = v15;
        goto LABEL_16;
      }
    }

    if (v12 <= v10 + 1)
    {
      v39 = v10 + 1;
    }

    else
    {
      v39 = v12;
    }

    v10 = v39 - 1;
    *(v4 + 824) = v12;
    v40 = *(v4 + 816);
    v41 = *(v4 + 728);
LABEL_30:
    v42 = v10;
    while (1)
    {
      v10 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v10 >= v12)
      {
        v51 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher);
        *(v4 + 864) = v51;
        v52 = *(MEMORY[0x1E69E8708] + 4);
        v53 = swift_task_alloc();
        *(v4 + 952) = v53;
        a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v53 = v4;
        v53[1] = sub_1E1023234;
        v54 = *(v4 + 696);
        a1 = v4 + 16;
        a2 = v41;
        a3 = v51;
        goto LABEL_36;
      }

      v9 = *(v40 + 56 + 8 * v10);
      ++v42;
      if (v9)
      {
        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = (63 - v8) >> 6;
LABEL_29:
  *(v4 + 824) = v12;
  v40 = *(v4 + 816);
  v41 = *(v4 + 728);
  if (!v9)
  {
    goto LABEL_30;
  }

LABEL_34:
  *(v4 + 840) = v10;
  *(v4 + 832) = v9;
  v43 = (*(v40 + 48) + 48 * (__clz(__rbit64(v9)) | (v10 << 6)));
  v44 = *v43;
  v45 = v43[2];
  *(v4 + 192) = v43[1];
  *(v4 + 208) = v45;
  *(v4 + 176) = v44;
  *(v4 + 608) = *v43;
  v46 = v43[2];
  *(v4 + 256) = v43[1];
  *(v4 + 272) = v46;
  *(v4 + 448) = v43[1];
  *(v4 + 624) = *(v4 + 272);
  v47 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher);
  sub_1E1027C5C(v4 + 608, v4 + 528);
  sub_1E1027CB8(v4 + 448, v4 + 544);
  sub_1E1027CB8(v4 + 624, v4 + 560);
  v48 = *(MEMORY[0x1E69E8708] + 4);
  v49 = swift_task_alloc();
  *(v4 + 848) = v49;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
  *v49 = v4;
  v49[1] = sub_1E1021EB8;
  v50 = *(v4 + 696);
  a1 = v4 + 72;
  a2 = v41;
  a3 = v47;
LABEL_36:

  return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
}

uint64_t sub_1E1021EB8()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v8 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v4 = *(v2 + 728);
    sub_1E1027D14(v2 + 608);
    sub_1E1027D68(v2 + 448);
    sub_1E1027D68(v2 + 624);
    v5 = sub_1E1023B68;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 728);
    v5 = sub_1E1021FF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E1021FF0()
{
  v1 = *(v0 + 80);
  *(v0 + 872) = v1;
  if (v1)
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 112);
    *(v0 + 880) = *(v0 + 120);
    *(v0 + 888) = v3;
    *(v0 + 896) = *(v0 + 96);
    *(v0 + 904) = *(v0 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1E1022564, v2, 0);
  }

  v4 = *(v0 + 792);
  v5 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 728);
  v8 = *(v0 + 712);
  v9 = sub_1E10AE29C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v4, 1, 1, v9);
  v11 = *(v7 + 112);
  sub_1E1028098(v8, v5, type metadata accessor for PartialEventConfiguration);
  v12 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  *(v13 + 32) = v11;
  v15 = *(v0 + 192);
  *(v13 + 40) = *(v0 + 176);
  *(v13 + 56) = v15;
  *(v13 + 72) = *(v0 + 208);
  sub_1E1028160(v5, v13 + v12, type metadata accessor for PartialEventConfiguration);
  sub_1E0FE62DC(v4, v48);
  LODWORD(v4) = (*(v10 + 48))(v48, 1, v9);

  v16 = *(v0 + 784);
  if (v4 != 1)
  {
    sub_1E10AE28C();
    (*(v10 + 8))(v16, v9);
    if (*v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  sub_1E0FF0440(*(v0 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
  if (!*v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = *(v13 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = sub_1E10AE23C();
  v20 = v19;
  swift_unknownObjectRelease();
LABEL_10:
  v21 = **(v0 + 696);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v22 = v20 | v18;
  if (v20 | v18)
  {
    v22 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v18;
    *(v0 + 312) = v20;
  }

  v23 = *(v0 + 792);
  *(v0 + 376) = 1;
  *(v0 + 384) = v22;
  *(v0 + 392) = v21;
  swift_task_create();

  v24 = sub_1E0FF0440(v23, &unk_1ECE88C00, &unk_1E10B94F0);
  v28 = *(v0 + 840);
  v29 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v29)
  {
    v30 = *(v0 + 816);
LABEL_19:
    *(v0 + 840) = v28;
    *(v0 + 832) = v29;
    v37 = *(v0 + 728);
    v38 = (*(v30 + 48) + 48 * (__clz(__rbit64(v29)) | (v28 << 6)));
    v40 = v38[1];
    v39 = v38[2];
    *(v0 + 176) = *v38;
    *(v0 + 192) = v40;
    *(v0 + 208) = v39;
    *(v0 + 608) = *v38;
    v41 = v38[2];
    *(v0 + 256) = v38[1];
    *(v0 + 272) = v41;
    *(v0 + 448) = v38[1];
    *(v0 + 624) = *(v0 + 272);
    v42 = sub_1E10281C8(&qword_1ECE89898, v25, type metadata accessor for PartialEventFetcher);
    sub_1E1027C5C(v0 + 608, v0 + 528);
    sub_1E1027CB8(v0 + 448, v0 + 544);
    sub_1E1027CB8(v0 + 624, v0 + 560);
    v43 = *(MEMORY[0x1E69E8708] + 4);
    v44 = swift_task_alloc();
    *(v0 + 848) = v44;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v44 = v0;
    v44[1] = sub_1E1021EB8;
    v45 = *(v0 + 696);
    v24 = v0 + 72;
    v25 = v37;
    v26 = v42;
LABEL_20:
  }

  else
  {
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v31 >= *(v0 + 824))
      {
        v32 = sub_1E10281C8(&qword_1ECE89898, v25, type metadata accessor for PartialEventFetcher);
        *(v0 + 864) = v32;
        v33 = *(v0 + 728);
        v34 = *(MEMORY[0x1E69E8708] + 4);
        v35 = swift_task_alloc();
        *(v0 + 952) = v35;
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v35 = v0;
        v35[1] = sub_1E1023234;
        v36 = *(v0 + 696);
        v24 = v0 + 16;
        v25 = v33;
        v26 = v32;
        goto LABEL_20;
      }

      v30 = *(v0 + 816);
      v29 = *(v30 + 8 * v31 + 56);
      ++v28;
      if (v29)
      {
        v28 = v31;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DAC8](v24, v25, v26, v27);
}

uint64_t sub_1E1022564()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[91];
  v4 = v0[88];
  v0[114] = sub_1E1018B70(v0[113], v0[109]);

  return MEMORY[0x1EEE6DFA0](sub_1E1022610, v3, 0);
}

uint64_t sub_1E1022610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 912);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 920) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = *(v4 + 912);
    v12 = *(v4 + 880);

    v13 = *(v4 + 792);
    v14 = *(v4 + 776);
    v52 = *(v4 + 768);
    v53 = *(v4 + 784);
    v15 = *(v4 + 760);
    v16 = *(v4 + 728);
    v17 = *(v4 + 712);
    v18 = sub_1E10AE29C();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v13, 1, 1, v18);
    v20 = *(v16 + 112);
    sub_1E1028098(v17, v14, type metadata accessor for PartialEventConfiguration);
    v21 = (*(v15 + 80) + 88) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = (v22 + 16);
    *(v22 + 24) = 0;
    *(v22 + 32) = v20;
    v24 = *(v4 + 192);
    *(v22 + 40) = *(v4 + 176);
    *(v22 + 56) = v24;
    *(v22 + 72) = *(v4 + 208);
    sub_1E1028160(v14, v22 + v21, type metadata accessor for PartialEventConfiguration);
    sub_1E0FE62DC(v13, v53);
    LODWORD(v13) = (*(v19 + 48))(v53, 1, v18);

    v25 = *(v4 + 784);
    if (v13 == 1)
    {
      sub_1E0FF0440(*(v4 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
      if (*v23)
      {
LABEL_15:
        v26 = *(v22 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_1E10AE23C();
        v29 = v28;
        swift_unknownObjectRelease();
LABEL_18:
        v30 = **(v4 + 696);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
        v31 = v29 | v27;
        if (v29 | v27)
        {
          v31 = v4 + 288;
          *(v4 + 288) = 0;
          *(v4 + 296) = 0;
          *(v4 + 304) = v27;
          *(v4 + 312) = v29;
        }

        v32 = *(v4 + 792);
        *(v4 + 376) = 1;
        *(v4 + 384) = v31;
        *(v4 + 392) = v30;
        swift_task_create();

        v6 = sub_1E0FF0440(v32, &unk_1ECE88C00, &unk_1E10B94F0);
        v33 = *(v4 + 840);
        v34 = (*(v4 + 832) - 1) & *(v4 + 832);
        if (v34)
        {
          v35 = *(v4 + 816);
LABEL_27:
          *(v4 + 840) = v33;
          *(v4 + 832) = v34;
          v42 = *(v4 + 728);
          v43 = (*(v35 + 48) + 48 * (__clz(__rbit64(v34)) | (v33 << 6)));
          v45 = v43[1];
          v44 = v43[2];
          *(v4 + 176) = *v43;
          *(v4 + 192) = v45;
          *(v4 + 208) = v44;
          *(v4 + 608) = *v43;
          v46 = v43[2];
          *(v4 + 256) = v43[1];
          *(v4 + 272) = v46;
          *(v4 + 448) = v43[1];
          *(v4 + 624) = *(v4 + 272);
          v47 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher);
          sub_1E1027C5C(v4 + 608, v4 + 528);
          sub_1E1027CB8(v4 + 448, v4 + 544);
          sub_1E1027CB8(v4 + 624, v4 + 560);
          v48 = *(MEMORY[0x1E69E8708] + 4);
          v49 = swift_task_alloc();
          *(v4 + 848) = v49;
          a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
          *v49 = v4;
          v49[1] = sub_1E1021EB8;
          v50 = *(v4 + 696);
          v6 = v4 + 72;
          a2 = v42;
          a3 = v47;
LABEL_28:

          return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
        }

        while (1)
        {
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v36 >= *(v4 + 824))
          {
            v37 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher);
            *(v4 + 864) = v37;
            v38 = *(v4 + 728);
            v39 = *(MEMORY[0x1E69E8708] + 4);
            v40 = swift_task_alloc();
            *(v4 + 952) = v40;
            a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
            *v40 = v4;
            v40[1] = sub_1E1023234;
            v41 = *(v4 + 696);
            v6 = v4 + 16;
            a2 = v38;
            a3 = v37;
            goto LABEL_28;
          }

          v35 = *(v4 + 816);
          v34 = *(v35 + 8 * v36 + 56);
          ++v33;
          if (v34)
          {
            v33 = v36;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
      }
    }

    else
    {
      sub_1E10AE28C();
      (*(v19 + 8))(v25, v18);
      if (*v23)
      {
        goto LABEL_15;
      }
    }

    v27 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  if (v5 < 0)
  {
    v10 = *(v4 + 912);
  }

  v6 = sub_1E10AE70C();
  *(v4 + 920) = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 < 1)
  {
    goto LABEL_32;
  }

  v7 = *(v4 + 912);
  *(v4 + 928) = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12EDD80](0);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  *(v4 + 936) = v8;
  v9 = *(v4 + 704);
  *(v4 + 944) = sub_1E105193C(v8, *(v4 + 736), *(v4 + 880));

  return MEMORY[0x1EEE6DFA0](sub_1E1022BEC, v9, 0);
}

uint64_t sub_1E1022BEC()
{
  v1 = v0[91];
  v2 = v0[88];
  sub_1E1018794(v0[118], v0[117]);

  return MEMORY[0x1EEE6DFA0](sub_1E1022C74, v1, 0);
}

uint64_t sub_1E1022C74()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);

  if (v1 + 1 != v2)
  {
    v22 = *(v0 + 928) + 1;
    *(v0 + 928) = v22;
    v23 = *(v0 + 912);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E12EDD80]();
    }

    else
    {
      v24 = *(v23 + 8 * v22 + 32);
    }

    *(v0 + 936) = v24;
    v41 = *(v0 + 704);
    *(v0 + 944) = sub_1E105193C(v24, *(v0 + 736), *(v0 + 880));

    return MEMORY[0x1EEE6DFA0](sub_1E1022BEC, v41, 0);
  }

  v3 = *(v0 + 912);
  v4 = *(v0 + 880);

  v5 = *(v0 + 792);
  v6 = *(v0 + 776);
  v52 = *(v0 + 768);
  v53 = *(v0 + 784);
  v7 = *(v0 + 760);
  v8 = *(v0 + 728);
  v9 = *(v0 + 712);
  v10 = sub_1E10AE29C();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v5, 1, 1, v10);
  v12 = *(v8 + 112);
  sub_1E1028098(v9, v6, type metadata accessor for PartialEventConfiguration);
  v13 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  *(v14 + 24) = 0;
  *(v14 + 32) = v12;
  v16 = *(v0 + 192);
  *(v14 + 40) = *(v0 + 176);
  *(v14 + 56) = v16;
  *(v14 + 72) = *(v0 + 208);
  sub_1E1028160(v6, v14 + v13, type metadata accessor for PartialEventConfiguration);
  sub_1E0FE62DC(v5, v53);
  LODWORD(v5) = (*(v11 + 48))(v53, 1, v10);

  v17 = *(v0 + 784);
  if (v5 != 1)
  {
    sub_1E10AE28C();
    (*(v11 + 8))(v17, v10);
    if (*v15)
    {
      goto LABEL_4;
    }

LABEL_8:
    v19 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  sub_1E0FF0440(*(v0 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
  if (!*v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = *(v14 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v19 = sub_1E10AE23C();
  v21 = v20;
  swift_unknownObjectRelease();
LABEL_9:
  v25 = **(v0 + 696);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v26 = v21 | v19;
  if (v21 | v19)
  {
    v26 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v19;
    *(v0 + 312) = v21;
  }

  v27 = *(v0 + 792);
  *(v0 + 376) = 1;
  *(v0 + 384) = v26;
  *(v0 + 392) = v25;
  swift_task_create();

  v28 = sub_1E0FF0440(v27, &unk_1ECE88C00, &unk_1E10B94F0);
  v32 = *(v0 + 840);
  v33 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v33)
  {
    v34 = *(v0 + 816);
LABEL_22:
    *(v0 + 840) = v32;
    *(v0 + 832) = v33;
    v42 = *(v0 + 728);
    v43 = (*(v34 + 48) + 48 * (__clz(__rbit64(v33)) | (v32 << 6)));
    v45 = v43[1];
    v44 = v43[2];
    *(v0 + 176) = *v43;
    *(v0 + 192) = v45;
    *(v0 + 208) = v44;
    *(v0 + 608) = *v43;
    v46 = v43[2];
    *(v0 + 256) = v43[1];
    *(v0 + 272) = v46;
    *(v0 + 448) = v43[1];
    *(v0 + 624) = *(v0 + 272);
    v47 = sub_1E10281C8(&qword_1ECE89898, v29, type metadata accessor for PartialEventFetcher);
    sub_1E1027C5C(v0 + 608, v0 + 528);
    sub_1E1027CB8(v0 + 448, v0 + 544);
    sub_1E1027CB8(v0 + 624, v0 + 560);
    v48 = *(MEMORY[0x1E69E8708] + 4);
    v49 = swift_task_alloc();
    *(v0 + 848) = v49;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v49 = v0;
    v49[1] = sub_1E1021EB8;
    v50 = *(v0 + 696);
    v28 = v0 + 72;
    v29 = v42;
    v30 = v47;
LABEL_23:
  }

  else
  {
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= *(v0 + 824))
      {
        v36 = sub_1E10281C8(&qword_1ECE89898, v29, type metadata accessor for PartialEventFetcher);
        *(v0 + 864) = v36;
        v37 = *(v0 + 728);
        v38 = *(MEMORY[0x1E69E8708] + 4);
        v39 = swift_task_alloc();
        *(v0 + 952) = v39;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v39 = v0;
        v39[1] = sub_1E1023234;
        v40 = *(v0 + 696);
        v28 = v0 + 16;
        v29 = v37;
        v30 = v36;
        goto LABEL_23;
      }

      v34 = *(v0 + 816);
      v33 = *(v34 + 8 * v35 + 56);
      ++v32;
      if (v33)
      {
        v32 = v35;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DAC8](v28, v29, v30, v31);
}

uint64_t sub_1E1023234()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 728);
  if (v0)
  {
    v6 = sub_1E1023C14;
  }

  else
  {
    v6 = sub_1E1023360;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E1023360()
{
  v1 = v0[3];
  v0[121] = v1;
  v2 = v0[88];
  if (v1)
  {
    v3 = v0[7];
    v0[122] = v0[8];
    v0[123] = v3;
    v0[124] = v0[5];
    v0[125] = v0[2];
    v4 = sub_1E10233B4;
  }

  else
  {
    v4 = sub_1E10237FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, 0);
}

uint64_t sub_1E10233B4()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[91];
  v4 = v0[88];
  v0[126] = sub_1E1018B70(v0[125], v0[121]);

  return MEMORY[0x1EEE6DFA0](sub_1E1023460, v3, 0);
}

uint64_t sub_1E1023460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[126];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[127] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = v4[126];
    v12 = v4[122];

    v13 = v4[108];
    v14 = v4[91];
    v15 = *(MEMORY[0x1E69E8708] + 4);
    v16 = swift_task_alloc();
    v4[119] = v16;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v16 = v4;
    v16[1] = sub_1E1023234;
    v17 = v4[87];
    v6 = (v4 + 2);
    a2 = v14;
    a3 = v13;

    return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
  }

  if (v5 < 0)
  {
    v10 = v4[126];
  }

  v6 = sub_1E10AE70C();
  v4[127] = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
  }

  v7 = v4[126];
  v4[128] = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12EDD80](0);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v4[129] = v8;
  v9 = v4[88];
  v4[130] = sub_1E105193C(v8, v4[92], v4[122]);

  return MEMORY[0x1EEE6DFA0](sub_1E10235F8, v9, 0);
}

uint64_t sub_1E10235F8()
{
  v1 = v0[91];
  v2 = v0[88];
  sub_1E1018794(v0[130], v0[129]);

  return MEMORY[0x1EEE6DFA0](sub_1E1023680, v1, 0);
}

uint64_t sub_1E1023680()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 1008);
    v4 = *(v0 + 976);

    v5 = *(v0 + 864);
    v6 = *(v0 + 728);
    v7 = *(MEMORY[0x1E69E8708] + 4);
    v8 = swift_task_alloc();
    *(v0 + 952) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v8 = v0;
    v8[1] = sub_1E1023234;
    v10 = *(v0 + 696);

    return MEMORY[0x1EEE6DAC8](v0 + 16, v6, v5, v9);
  }

  else
  {
    v11 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v11;
    v12 = *(v0 + 1008);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E12EDD80]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
    }

    *(v0 + 1032) = v13;
    v14 = *(v0 + 704);
    *(v0 + 1040) = sub_1E105193C(v13, *(v0 + 736), *(v0 + 976));

    return MEMORY[0x1EEE6DFA0](sub_1E10235F8, v14, 0);
  }
}

uint64_t sub_1E10237FC()
{
  v1 = v0[91];
  v2 = v0[88];
  swift_beginAccess();
  v0[131] = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E1023888, v1, 0);
}

uint64_t sub_1E1023888()
{
  v1 = *(v0[131] + 16);

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = v0[93];
  v3 = sub_1E10ADF9C();
  __swift_project_value_buffer(v3, qword_1EE185540);

  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE45C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[93];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v1;
    *(v8 + 12) = 2048;
    if (v7 >> 62)
    {
      v0[93];
      v14 = v8;
      v9 = sub_1E10AE70C();
      v8 = v14;
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v0[93];
    *(v8 + 14) = v9;
    v11 = v8;

    _os_log_impl(&dword_1E0FDF000, v4, v5, "Retrieved partial events for %ld requests out of %ld", v11, 0x16u);
    MEMORY[0x1E12EE9E0](v11, -1, -1);
  }

  else
  {
    v12 = v0[93];
  }

  v13 = v0[88];

  return MEMORY[0x1EEE6DFA0](sub_1E1023A2C, v13, 0);
}

uint64_t sub_1E1023A2C()
{
  v1 = v0[91];
  v0[132] = *(v0[88] + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E1023AA4, v1, 0);
}

uint64_t sub_1E1023AA4()
{
  v1 = v0[132];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[86];

  *v8 = v1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E1023B68()
{
  v1 = v0[102];

  v2 = v0[107];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E1023C14()
{
  v1 = v0[102];

  v2 = v0[120];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E1023CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a1;
  v9 = swift_task_alloc();
  *(v6 + 80) = v9;
  *v9 = v6;
  v9[1] = sub_1E1023D78;

  return sub_1E1075ADC(v6 + 16, a5, a6);
}

uint64_t sub_1E1023D78()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v3 + 88) = *(*v1 + 16);
  *(v3 + 96) = *(v2 + 24);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 120) = *(v2 + 48);
  *(v3 + 128) = *(v3 + 56);

  if (v0)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1028210, 0, 0);
  }
}

uint64_t sub_1E1023F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a1;
  v9 = swift_task_alloc();
  *(v6 + 80) = v9;
  *v9 = v6;
  v9[1] = sub_1E1023FBC;

  return sub_1E1075ADC(v6 + 16, a5, a6);
}

uint64_t sub_1E1023FBC()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v3 + 88) = *(*v1 + 16);
  *(v3 + 96) = *(v2 + 24);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 120) = *(v2 + 48);
  *(v3 + 128) = *(v3 + 56);

  if (v0)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1024148, 0, 0);
  }
}

uint64_t sub_1E1024148()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  *v3 = *(v0 + 88);
  *(v3 + 16) = v2;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1E1024180()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E10241E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E0FE6540;

  return sub_1E1021300(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E10242B8(void *a1, uint64_t a2)
{
  v36 = *a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *v2;
  v8 = *(*v2 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1E10AEA0C();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v30 = v7;
    v14 = *(v7 + 48);
    while (1)
    {
      v15 = (v14 + 48 * v12);
      v16 = v15[4];
      v17 = v15[5];
      v18 = v15[2] == v4 && v15[3] == v3;
      if (v18 || (sub_1E10AE8FC() & 1) != 0)
      {
        v19 = v16 == v6 && v17 == v5;
        if (v19 || (sub_1E10AE8FC() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1E1027D14(&v36);

    v20 = (*(v30 + 48) + 48 * v12);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    *a1 = *v20;
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v24;
    a1[5] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    v27 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v31;
    sub_1E1027C5C(&v36, v35);

    sub_1E10256F8(a2, v12, isUniquelyReferenced_nonNull_native);
    *v31 = v34;
    v29 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v29;
    *(a1 + 2) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1E10244C0(uint64_t a1, uint64_t *a2)
{
  v31 = a1;
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v29 = (&v29 - v12);
  v30 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  sub_1E10AE9CC();
  v15 = *a2;
  v16 = a2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v17 = sub_1E10AEA0C();
  v18 = -1 << *(v13 + 32);
  v19 = v17 & ~v18;
  if ((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v4 + 72);
    while (1)
    {
      sub_1E1028098(*(v13 + 48) + v21 * v19, v9, type metadata accessor for PartialEventResource);
      v22 = *v9 == v15 && v9[1] == v16;
      if (v22 || (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      sub_1E1028100(v9, type metadata accessor for PartialEventResource);
      v19 = (v19 + 1) & v20;
      if (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_1E1028100(v9, type metadata accessor for PartialEventResource);
    sub_1E1028100(a2, type metadata accessor for PartialEventResource);
    sub_1E1028098(*(v13 + 48) + v21 * v19, v31, type metadata accessor for PartialEventResource);
    return 0;
  }

  else
  {
LABEL_9:
    v23 = v30;
    v24 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v29;
    sub_1E1028098(a2, v29, type metadata accessor for PartialEventResource);
    v32 = *v23;
    sub_1E10258D4(v26, v19, isUniquelyReferenced_nonNull_native);
    v27 = v31;
    *v23 = v32;
    sub_1E1028160(a2, v27, type metadata accessor for PartialEventResource);
    return 1;
  }
}

uint64_t sub_1E1024744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v9 = sub_1E10AEA0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1E1025B60(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E1024894(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1E109CC6C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v32 = ~v7;
    v9 = 0x74726F7073;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v10 == 6)
          {
            v14 = 0xD000000000000011;
            v15 = 0x80000001E10BF070;
          }

          else
          {
            v14 = 0x66696C746867696ELL;
            v15 = 0xE900000000000065;
          }
        }

        else
        {
          if (v10 == 4)
          {
            v14 = 0x72657461656874;
          }

          else
          {
            v14 = 0x657665656C707061;
          }

          if (v10 == 4)
          {
            v15 = 0xE700000000000000;
          }

          else
          {
            v15 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v10 == 2)
        {
          v11 = 0x6D646E6173747261;
        }

        else
        {
          v11 = 0x65636E6164;
        }

        if (v10 == 2)
        {
          v12 = 0xEE00736D75657375;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = v9;
        }

        else
        {
          v13 = 0x636973756DLL;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v15 = 0xE500000000000000;
        }

        else
        {
          v15 = v12;
        }
      }

      v16 = 0xD000000000000011;
      if (a2 != 6)
      {
        v16 = 0x66696C746867696ELL;
      }

      v17 = 0xE900000000000065;
      if (a2 == 6)
      {
        v17 = 0x80000001E10BF070;
      }

      v18 = 0x657665656C707061;
      if (a2 == 4)
      {
        v18 = 0x72657461656874;
      }

      v19 = 0xEA0000000000746ELL;
      if (a2 == 4)
      {
        v19 = 0xE700000000000000;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a2 == 2)
      {
        v20 = 0x6D646E6173747261;
      }

      else
      {
        v20 = 0x65636E6164;
      }

      if (a2 == 2)
      {
        v21 = 0xEE00736D75657375;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      if (a2)
      {
        v22 = v9;
      }

      else
      {
        v22 = 0x636973756DLL;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = 0xE500000000000000;
      }

      v23 = a2 <= 3u ? v20 : v16;
      v24 = a2 <= 3u ? v21 : v17;
      if (v14 == v23 && v15 == v24)
      {
        break;
      }

      v25 = v9;
      v26 = sub_1E10AE8FC();

      if (v26)
      {
        goto LABEL_62;
      }

      v8 = (v8 + 1) & v32;
      v9 = v25;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

LABEL_62:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_60:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_1E1025CE0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E1024B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v35 = v19[1];
      v36 = *v19;
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[4];
      v23 = v19[5];
      v24 = *(v6 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 48 * v14);
      *v15 = v36;
      v15[1] = v35;
      v15[2] = v20;
      v15[3] = v21;
      v15[4] = v22;
      v15[5] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E1024E3C(uint64_t a1)
{
  v2 = v1;
  v38 = *(type metadata accessor for PartialEventResource(0) - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  result = sub_1E10AE5AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v2;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v38 + 72);
      sub_1E1028160(*(v9 + 48) + v24 * (v21 | (v13 << 6)), v8, type metadata accessor for PartialEventResource);
      v25 = *(v12 + 40);
      sub_1E10AE9CC();
      v26 = *v8;
      v27 = v8[1];
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1E1028160(v8, *(v12 + 48) + v20 * v24, type metadata accessor for PartialEventResource);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v9 + 32);
    if (v35 >= 64)
    {
      bzero((v9 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    v2 = v37;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1E1025144(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E10253A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      result = sub_1E10AEA0C();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E10256F8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v30 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1E1024B98(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E1026038();
      goto LABEL_22;
    }

    sub_1E1026674(v6 + 1);
  }

  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  result = sub_1E10AEA0C();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  a2 = result & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v12 + 48);
    while (1)
    {
      v18 = (v17 + 48 * a2);
      v19 = v18[4];
      v20 = v18[5];
      v21 = v18[2] == v8 && v18[3] == v9;
      if (v21 || (result = sub_1E10AE8FC(), (result & 1) != 0))
      {
        if (v19 == v10 && v20 == v11)
        {
          break;
        }

        result = sub_1E10AE8FC();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v16;
      if (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1E10AE93C();
    __break(1u);
  }

LABEL_22:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = (*(v23 + 48) + 48 * a2);
  v25 = v30[1];
  *v24 = *v30;
  v24[1] = v25;
  v24[2] = v30[2];
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v28;
  }

  return result;
}

uint64_t sub_1E10258D4(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PartialEventResource(0) - 8);
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  v34 = a1;
  if (v16 > v15 && (a3 & 1) != 0)
  {
LABEL_17:
    v17 = v8;
    goto LABEL_18;
  }

  if (a3)
  {
    v33 = v12;
    sub_1E1024E3C(v15 + 1);
    goto LABEL_8;
  }

  if (v16 <= v15)
  {
    v33 = v12;
    sub_1E102690C(v15 + 1);
LABEL_8:
    v18 = *v4;
    v19 = *(*v4 + 40);
    sub_1E10AE9CC();
    v20 = *a1;
    v21 = a1[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v22 = sub_1E10AEA0C();
    v23 = -1 << *(v18 + 32);
    a2 = v22 & ~v23;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v24 = ~v23;
      v17 = v8;
      v25 = *(v8 + 72);
      while (1)
      {
        sub_1E1028098(*(v18 + 48) + v25 * a2, v14, type metadata accessor for PartialEventResource);
        v26 = *v14 == v20 && v14[1] == v21;
        if (v26 || (sub_1E10AE8FC() & 1) != 0)
        {
          goto LABEL_21;
        }

        sub_1E1028100(v14, type metadata accessor for PartialEventResource);
        a2 = (a2 + 1) & v24;
        if (((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_17;
  }

  v17 = v8;
  sub_1E10261C0();
LABEL_18:
  v27 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E1028160(v34, *(v27 + 48) + *(v17 + 72) * a2, type metadata accessor for PartialEventResource);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1E1028100(v14, type metadata accessor for PartialEventResource);
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

uint64_t sub_1E1025B60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E1025144(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E10263D8();
      goto LABEL_16;
    }

    sub_1E1026BE4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  result = sub_1E10AEA0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E10AE8FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

uint64_t sub_1E1025CE0(uint64_t result, unint64_t a2, char a3)
{
  v38 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_67;
  }

  if (a3)
  {
    sub_1E10253A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1E1026534();
      goto LABEL_67;
    }

    sub_1E1026E1C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_1E109CC6C();
  v36 = v7;
  v37 = v7 + 56;
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v9;
    v10 = 0xEE00736D75657375;
    v11 = 0x6D646E6173747261;
    do
    {
      v12 = *(*(v36 + 48) + a2);
      if (v12 > 3)
      {
        if (*(*(v36 + 48) + a2) > 5u)
        {
          if (v12 == 6)
          {
            v16 = 0xD000000000000011;
            v17 = 0x80000001E10BF070;
          }

          else
          {
            v16 = 0x66696C746867696ELL;
            v17 = 0xE900000000000065;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v16 = 0x72657461656874;
          }

          else
          {
            v16 = 0x657665656C707061;
          }

          if (v12 == 4)
          {
            v17 = 0xE700000000000000;
          }

          else
          {
            v17 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0x65636E6164;
        }

        if (v12 == 2)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0xE500000000000000;
        }

        if (*(*(v36 + 48) + a2))
        {
          v15 = 0x74726F7073;
        }

        else
        {
          v15 = 0x636973756DLL;
        }

        if (*(*(v36 + 48) + a2) <= 1u)
        {
          v16 = v15;
        }

        else
        {
          v16 = v13;
        }

        if (*(*(v36 + 48) + a2) <= 1u)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = v14;
        }
      }

      v18 = 0xD000000000000011;
      if (v38 != 6)
      {
        v18 = 0x66696C746867696ELL;
      }

      v19 = 0xE900000000000065;
      if (v38 == 6)
      {
        v19 = 0x80000001E10BF070;
      }

      v20 = 0x657665656C707061;
      if (v38 == 4)
      {
        v20 = 0x72657461656874;
      }

      v21 = 0xEA0000000000746ELL;
      if (v38 == 4)
      {
        v21 = 0xE700000000000000;
      }

      if (v38 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v11;
      if (v38 == 2)
      {
        v23 = v11;
      }

      else
      {
        v23 = 0x65636E6164;
      }

      v24 = v10;
      if (v38 == 2)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v38)
      {
        v26 = 0x74726F7073;
      }

      else
      {
        v26 = 0x636973756DLL;
      }

      if (v38 <= 1u)
      {
        v23 = v26;
        v25 = 0xE500000000000000;
      }

      v27 = v38 <= 3u ? v23 : v18;
      v28 = v38 <= 3u ? v25 : v19;
      if (v16 == v27 && v17 == v28)
      {
        goto LABEL_70;
      }

      v29 = sub_1E10AE8FC();

      if (v29)
      {
        goto LABEL_71;
      }

      a2 = (a2 + 1) & v35;
      v10 = v24;
      v11 = v22;
    }

    while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_67:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v38;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_70:

LABEL_71:
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

void *sub_1E1026038()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  v2 = *v0;
  v3 = sub_1E10AE59C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E10261C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for PartialEventResource(0) - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  v8 = *v0;
  v9 = sub_1E10AE59C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v25 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v2 + 72) * (v20 | (v14 << 6));
        sub_1E1028098(*(v8 + 48) + v23, v7, type metadata accessor for PartialEventResource);
        result = sub_1E1028160(v7, *(v10 + 48) + v23, type metadata accessor for PartialEventResource);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1E10263D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  v2 = *v0;
  v3 = sub_1E10AE59C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E1026534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  v2 = *v0;
  v3 = sub_1E10AE59C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E1026674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = v19[1];
      v35 = *v19;
      v22 = v19[2];
      v21 = v19[3];
      v23 = v19[4];
      v24 = v19[5];
      v25 = *(v6 + 40);
      sub_1E10AE9CC();

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 48 * v14);
      v11 = v36;
      *v15 = v35;
      v15[1] = v20;
      v15[2] = v22;
      v15[3] = v21;
      v15[4] = v23;
      v15[5] = v24;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E102690C(uint64_t a1)
{
  v2 = v1;
  v36 = *(type metadata accessor for PartialEventResource(0) - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  result = sub_1E10AE5AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v35 = v2;
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      sub_1E1028098(*(v9 + 48) + v23 * (v20 | (v13 << 6)), v8, type metadata accessor for PartialEventResource);
      v24 = *(v12 + 40);
      sub_1E10AE9CC();
      v25 = *v8;
      v26 = v8[1];
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1E1028160(v8, *(v12 + 48) + v19 * v23, type metadata accessor for PartialEventResource);
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v9 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1E1026BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1E10AE9CC();

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E1026E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  result = sub_1E10AE5AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      result = sub_1E10AEA0C();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E1027140(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventResource(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  v13 = *(a1 + 16);
  v14 = sub_1E10281C8(&qword_1ECE89900, 255, type metadata accessor for PartialEventResource);
  result = MEMORY[0x1E12EDB70](v13, v2, v14);
  v19 = result;
  if (v13)
  {
    v16 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = *(v3 + 72);
    do
    {
      sub_1E1028098(v16, v8, type metadata accessor for PartialEventResource);
      sub_1E10244C0(v12, v8);
      sub_1E1028100(v12, type metadata accessor for PartialEventResource);
      v16 += v17;
      --v13;
    }

    while (v13);
    return v19;
  }

  return result;
}

uint64_t sub_1E10272D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12EDB70](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E1024744(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E102736C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E1027FF0();
  result = MEMORY[0x1E12EDB70](v2, &_s9EventTypeON, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1E1024894(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E10273E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v8 = sub_1E10AE69C();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_1E10AE23C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v6[13] = v11;
  v6[14] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E10274E8, v11, v13);
}

uint64_t sub_1E10274E8()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[5];
  v0[15] = sub_1E10AE6BC();
  v0[16] = sub_1E10281C8(&qword_1ECE898B0, 255, MEMORY[0x1E69E8820]);
  sub_1E10AE95C();
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1E102764C;
  v6 = v0[8];

  return v8(v0 + 4);
}

uint64_t sub_1E102764C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1E10278EC;
  }

  else
  {
    v3 = sub_1E1027760;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1027760()
{
  v1 = v0[6];
  v2 = *v1;
  *v1 = v0[4];

  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E10277D0, v3, v4);
}

uint64_t sub_1E10277D0()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[5];
  sub_1E10AE95C();
  sub_1E10281C8(&qword_1ECE898B8, 255, MEMORY[0x1E69E87E8]);
  sub_1E10AE6DC();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v9 = v0[2];
  v10 = v0[3];

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_1E10278EC()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E1027960, v1, v2);
}

uint64_t sub_1E1027960()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_1E10279CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1E10279E4()
{
  result = qword_1ECE898A0;
  if (!qword_1ECE898A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898A0);
  }

  return result;
}

unint64_t sub_1E1027A38()
{
  result = qword_1ECE898A8;
  if (!qword_1ECE898A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE898A8);
  }

  return result;
}

uint64_t sub_1E1027A84(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E0FE6540;

  return sub_1E1021650(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1E1027B60(uint64_t a1)
{
  v4 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E0FE6540;

  return sub_1E1023CC0(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PartialEventConfiguration(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0[4];

  v6 = v0[6];

  v7 = v0[8];

  v8 = v0[10];

  v9 = *(v0 + v2 + 8);

  v10 = *(v0 + v2 + 24);

  v11 = *(v0 + v2 + 32);

  v12 = v0 + v2 + v1[7];
  v13 = *(v12 + 1);

  v14 = *(type metadata accessor for AccessTokenResource() + 20);
  v15 = sub_1E10ADCBC();
  (*(*(v15 - 8) + 8))(&v12[v14], v15);

  return swift_deallocObject();
}

uint64_t sub_1E1027EF4(uint64_t a1)
{
  v4 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E0FE5FDC;

  return sub_1E1023F04(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

unint64_t sub_1E1027FF0()
{
  result = qword_1ECE898D0;
  if (!qword_1ECE898D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898D0);
  }

  return result;
}

unint64_t sub_1E1028044()
{
  result = qword_1ECE898E0;
  if (!qword_1ECE898E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898E0);
  }

  return result;
}

uint64_t sub_1E1028098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1028100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1028160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10281C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1028214(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89930, &qword_1E10B3C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1028BD0();
  sub_1E10AEA5C();
  v20 = *v3;
  LOBYTE(v18[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[4];
    v26 = v3[3];
    v27 = v15;
    v16 = v3[2];
    v25[0] = v3[1];
    v25[1] = v16;
    v17 = v3[4];
    v22 = v26;
    v23 = v17;
    v28 = *(v3 + 10);
    v24 = *(v3 + 10);
    v20 = v25[0];
    v21 = v14;
    v29 = 1;
    sub_1E1028CE0(v25, v18);
    sub_1E1028D50();
    sub_1E10AE85C();
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[1] = v21;
    v18[0] = v20;
    sub_1E1028DA4(v18);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E1028444()
{
  if (*v0)
  {
    result = 0x6B726F77747261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1E1028478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E1028554(uint64_t a1)
{
  v2 = sub_1E1028BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1028590(uint64_t a1)
{
  v2 = sub_1E1028BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E10285CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E102893C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1E1028640@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40) + 44);
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v8)
    {
      v9 = *(v5 + 8);
      v16 = *(v5 + 3);
      v17 = *(v5 + 72);
      v15 = *(v5 + 2);
      v10 = *(v5 + 2);

      v12 = v15;
      v11 = v16;
      v13 = v17;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v13 = 0uLL;
      v12 = 0uLL;
      v11 = 0uLL;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
    *(a1 + 56) = v8;
    *(a1 + 64) = v12;
    *(a1 + 80) = v11;
    *(a1 + 96) = v9;
  }

  else
  {
    result = sub_1E10AE6FC();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents17ArtworkAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E10287B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E1028800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1028864(uint64_t a1)
{
  *(a1 + 8) = sub_1E1028894();
  result = sub_1E10288E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1028894()
{
  result = qword_1ECE89908;
  if (!qword_1ECE89908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89908);
  }

  return result;
}

unint64_t sub_1E10288E8()
{
  result = qword_1ECE89910;
  if (!qword_1ECE89910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89910);
  }

  return result;
}

uint64_t sub_1E102893C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89918, &qword_1E10B3C20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1028BD0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v13 = v45;
  LOBYTE(v21) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v14 = v28;
  v20 = v27;
  v34 = 1;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v4);
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v40 = v35;
  v41 = v36;
  v15 = v20;
  *&v21 = v20;
  *(&v21 + 1) = v14;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v22 = v35;
  v23 = v36;
  sub_1E1028C78(&v21, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v15;
  v28 = v14;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v30 = v41;
  v29 = v40;
  result = sub_1E1028CB0(&v27);
  v17 = v24;
  *(v13 + 32) = v23;
  *(v13 + 48) = v17;
  *(v13 + 64) = v25;
  *(v13 + 80) = v26;
  v18 = v22;
  *v13 = v21;
  *(v13 + 16) = v18;
  return result;
}

unint64_t sub_1E1028BD0()
{
  result = qword_1ECE89920;
  if (!qword_1ECE89920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89920);
  }

  return result;
}

unint64_t sub_1E1028C24()
{
  result = qword_1ECE89928;
  if (!qword_1ECE89928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89928);
  }

  return result;
}

uint64_t sub_1E1028CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89938, &qword_1E10B3C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1028D50()
{
  result = qword_1ECE89940;
  if (!qword_1ECE89940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89940);
  }

  return result;
}

uint64_t sub_1E1028DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89938, &qword_1E10B3C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1028E20()
{
  result = qword_1ECE89948;
  if (!qword_1ECE89948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89948);
  }

  return result;
}

unint64_t sub_1E1028E78()
{
  result = qword_1ECE89950;
  if (!qword_1ECE89950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89950);
  }

  return result;
}

unint64_t sub_1E1028ED0()
{
  result = qword_1ECE89958;
  if (!qword_1ECE89958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89958);
  }

  return result;
}

uint64_t sub_1E1028F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  v21 = sub_1E10AE29C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v10 + 16))(v15, a1, v9);
  v22 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a2;
  *(v23 + 5) = a3;
  v24 = v27;
  *(v23 + 6) = a4;
  *(v23 + 7) = v24;
  (*(v10 + 32))(&v23[v22], v15, v9);

  sub_1E0FE579C(0, 0, v20, &unk_1E10B3D78, v23);
  return sub_1E10AE31C();
}

uint64_t sub_1E102915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89968, &unk_1E10B3D80);
  v8[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89970, &qword_1E10BCCE0);
  v8[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89978, qword_1E10B3D90);
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v15 = *(v14 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v16 = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  v8[24] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v18 = type metadata accessor for EventService.GeoRequest();
  v8[26] = v18;
  v19 = *(v18 - 8);
  v8[27] = v19;
  v20 = *(v19 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1029364, 0, 0);
}

uint64_t sub_1E1029364()
{
  v3 = *(*(v1 + 80) + 16);
  *(v1 + 248) = v3;
  v4 = ceil(v3 / *(v1 + 104));
  *(v1 + 256) = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4 < 9.22337204e18)
  {
    if (qword_1EE180170 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_5:
  v5 = v4;
  v6 = sub_1E10ADF9C();
  *(v1 + 264) = __swift_project_value_buffer(v6, qword_1EE185540);
  v7 = sub_1E10ADF7C();
  v8 = sub_1E10AE45C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 104);
    v0 = swift_slowAlloc();
    *v0 = 134218496;
    *(v0 + 4) = v3;
    *(v0 + 12) = 2048;
    *(v0 + 14) = v5;
    *(v0 + 22) = 2048;
    *(v0 + 24) = v9;
    _os_log_impl(&dword_1E0FDF000, v7, v8, "Performing a total of %ld requests, number of batches: %ld, max batch size: %ld", v0, 0x20u);
    MEMORY[0x1E12EE9E0](v0, -1, -1);
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v5)
  {
    *(v1 + 320) = *(*(v1 + 216) + 80);
    *(v1 + 272) = 0;
    v17 = *(v1 + 104);
    if (v3 >= v17)
    {
      v18 = *(v1 + 104);
    }

    else
    {
      v18 = v3;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = *(v1 + 248);
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 >= v18)
        {
          v0 = MEMORY[0x1E69E7CC0];
          if (v18)
          {
            *(v1 + 48) = MEMORY[0x1E69E7CC0];
            sub_1E10AE66C();
            v20 = 0;
            do
            {
              v21 = *(v1 + 240);
              v22 = *(v1 + 208);
              v24 = *(v1 + 192);
              v23 = *(v1 + 200);
              v25 = v20 + 1;
              sub_1E102AFCC(*(v1 + 80) + ((*(v1 + 320) + 32) & ~*(v1 + 320)) + *(*(v1 + 216) + 72) * v20, v21, type metadata accessor for EventService.GeoRequest);
              v27 = *v21;
              v26 = *(v21 + 8);
              v59 = *(v21 + 16);
              v28 = *(v21 + 32);
              v29 = *(v22 + 28);
              v30 = *(v24 + 28);
              v31 = sub_1E10ADACC();
              (*(*(v31 - 8) + 16))(v23 + v30, v21 + v29, v31);
              *v23 = v59;
              *(v23 + 16) = v28;
              v32 = type metadata accessor for GeoXPCRequestContainer(0);
              v33 = objc_allocWithZone(v32);
              v34 = &v33[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
              *v34 = v27;
              *(v34 + 1) = v26;
              sub_1E102AFCC(v23, &v33[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
              *(v1 + 16) = v33;
              *(v1 + 24) = v32;

              objc_msgSendSuper2((v1 + 16), sel_init);
              sub_1E102B034(v23, type metadata accessor for GeoXPCRequestContainer.Payload);
              sub_1E102B034(v21, type metadata accessor for EventService.GeoRequest);
              sub_1E10AE64C();
              v35 = *(*(v1 + 48) + 16);
              sub_1E10AE67C();
              sub_1E10AE68C();
              sub_1E10AE65C();
              v20 = v25;
            }

            while (v18 != v25);
            v0 = *(v1 + 48);
          }

          *(v1 + 280) = v0;
          v2 = v0 >> 62;
          if (!(v0 >> 62))
          {
            v36 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
            v37 = v3 - v36;
            *(v1 + 288) = v3 - v36;
            if (__OFSUB__(v3, v36))
            {
              __break(1u);
            }

            else
            {
              v38 = *(v1 + 264);

              v39 = sub_1E10ADF7C();
              v40 = sub_1E10AE45C();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 134218240;
                if (v2)
                {
                  v42 = sub_1E10AE70C();
                }

                else
                {
                  v42 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v41 + 4) = v42;

                *(v41 + 12) = 2048;
                *(v41 + 14) = v37;
                _os_log_impl(&dword_1E0FDF000, v39, v40, "Performing a batch of %ld requests, remaining requests: %ld", v41, 0x16u);
                MEMORY[0x1E12EE9E0](v41, -1, -1);
              }

              else
              {
              }

              v54 = *(v1 + 88);
              v53 = *(v1 + 96);
              v55 = swift_task_alloc();
              *(v1 + 296) = v55;
              v55[2] = v54;
              v55[3] = v0;
              v55[4] = v53;
              v56 = *(MEMORY[0x1E69E8920] + 4);
              v57 = swift_task_alloc();
              *(v1 + 304) = v57;
              v16 = type metadata accessor for PartialEventXPCValueContainer();
              *v57 = v1;
              v57[1] = sub_1E10299A0;
              v14 = sub_1E102B094;
              v36 = v1 + 56;
              v13 = 0x80000001E10C0030;
              v10 = 0;
              v11 = 0;
              v12 = 0xD000000000000028;
              v15 = v55;
            }

            return MEMORY[0x1EEE6DE38](v36, v10, v11, v12, v13, v14, v15, v16);
          }

LABEL_42:
          v36 = sub_1E10AE70C();
          goto LABEL_21;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = *(v1 + 232);
  v43 = *(v1 + 240);
  v45 = *(v1 + 224);
  v46 = *(v1 + 200);
  v48 = *(v1 + 176);
  v47 = *(v1 + 184);
  v49 = *(v1 + 152);
  v58 = *(v1 + 136);
  v60 = *(v1 + 128);
  v50 = *(v1 + 112);
  *(v1 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v51 = *(v1 + 8);

  return v51();
}

uint64_t sub_1E10299A0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_1E102A778;
  }

  else
  {
    v7 = sub_1E1029AF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E1029AF0()
{
  v1 = *(v0 + 56);
  v3 = *&v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  v2 = *&v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value + 8];
  v4 = *(v0 + 264);
  v120 = v1;
  if ((v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value + 16] & 1) == 0)
  {
    v13 = v0 + 32;
    sub_1E100A474(v3, v2, 0);

    v27 = sub_1E10ADF7C();
    v28 = sub_1E10AE45C();
    if (os_log_type_enabled(v27, v28))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v3 + 2);
      sub_1E100A408(v3, v2, 0);
      _os_log_impl(&dword_1E0FDF000, v27, v28, "Received a batch response of %ld requests", v13, 0xCu);
      MEMORY[0x1E12EE9E0](v13, -1, -1);
    }

    else
    {
      sub_1E100A408(v3, v2, 0);
    }

    v29 = 0;
    v30 = v3 + 64;
    v31 = -1;
    v32 = -1 << v3[32];
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v3 + 8);
    v34 = (63 - v32) >> 6;
    v121 = *(v0 + 312);
    v123 = v34;
    v125 = v3;
    while (v33)
    {
LABEL_18:
      v36 = *(v0 + 248);
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v29 << 6);
      v39 = (*(v3 + 6) + 16 * v38);
      v40 = *v39;
      v41 = v39[1];
      v2 = *(*(v3 + 7) + 8 * v38);

      v128 = v2;

      if (v36)
      {
        v2 = 0;
        v42 = 0;
        v43 = *(*(v0 + 216) + 72);
        while (1)
        {
          v44 = *(v0 + 224);
          sub_1E102AFCC(*(v0 + 80) + v2 + ((*(v0 + 320) + 32) & ~*(v0 + 320)), v44, type metadata accessor for EventService.GeoRequest);
          v45 = *v44 == v40 && v44[1] == v41;
          if (v45 || (sub_1E10AE8FC() & 1) != 0)
          {
            break;
          }

          ++v42;
          v13 = *(v0 + 248);
          sub_1E102B034(*(v0 + 224), type metadata accessor for EventService.GeoRequest);
          v2 += v43;
          if (v42 == v13)
          {
            goto LABEL_11;
          }
        }

        v47 = *(v0 + 224);
        v46 = *(v0 + 232);

        sub_1E102B0A0(v47, v46);
        v2 = v121;
        v48 = sub_1E1051EE4(v128);
        v49 = *(v0 + 232);
        if (v121)
        {

          sub_1E102B034(v49, type metadata accessor for EventService.GeoRequest);
          v97 = *(v0 + 264);
          v98 = v121;
          v99 = sub_1E10ADF7C();
          v100 = sub_1E10AE44C();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            *v101 = 138412290;
            v103 = v121;
            v104 = _swift_stdlib_bridgeErrorToNSError();
            *(v101 + 4) = v104;
            *v102 = v104;
            _os_log_impl(&dword_1E0FDF000, v99, v100, "GeoRequest failed, %@", v101, 0xCu);
            sub_1E0FF0440(v102, &qword_1ECE89170, &qword_1E10B15D0);
            MEMORY[0x1E12EE9E0](v102, -1, -1);
            MEMORY[0x1E12EE9E0](v101, -1, -1);
          }

          v106 = *(v0 + 168);
          v105 = *(v0 + 176);
          v131 = *(v0 + 160);
          v108 = *(v0 + 120);
          v107 = *(v0 + 128);
          v109 = *(v0 + 112);

          sub_1E10095EC();
          v110 = swift_allocError();
          v112 = v111;
          *(v0 + 64) = v121;
          v113 = v121;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
          v114 = swift_dynamicCast();
          v115 = *(v0 + 32);
          v116 = *(v0 + 40);
          if (!v114)
          {
            v115 = 0;
            v116 = 3;
          }

          *v112 = v115;
          v112[1] = v116;
          *v107 = v110;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
          sub_1E10AE33C();

          sub_1E0FF0440(v107, &qword_1ECE89968, &unk_1E10B3D80);
          v117 = *(v106 + 8);
          v13 = v106 + 8;
          v117(v105, v131);
          goto LABEL_30;
        }

        v50 = v48;
        v119 = *(v0 + 184);
        v51 = *(v0 + 168);
        v122 = *(v0 + 160);
        v13 = *(v0 + 144);
        v52 = *(v0 + 152);
        v118 = *(v0 + 112);
        v53 = *(v0 + 96);

        v54 = sub_1E102B104(v50, v53);

        v55 = *(v13 + 48);
        sub_1E102AFCC(v49, v52, type metadata accessor for EventService.GeoRequest);
        *(v52 + v55) = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
        v2 = v119;
        sub_1E10AE34C();
        (*(v51 + 8))(v119, v122);
        sub_1E102B034(v49, type metadata accessor for EventService.GeoRequest);
        v121 = 0;
      }

      else
      {
LABEL_11:
      }

      v34 = v123;
      v3 = v125;
    }

    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v34)
      {

        goto LABEL_30;
      }

      v33 = *&v30[8 * v35];
      ++v29;
      if (v33)
      {
        v29 = v35;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

  sub_1E100A474(v3, v2, 1);
  sub_1E100A474(v3, v2, 1);
  sub_1E100A414(v3, v2);
  v5 = sub_1E10ADF7C();
  v6 = sub_1E10AE44C();
  sub_1E100A408(v3, v2, 1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_1E10095EC();
    swift_allocError();
    *v9 = v3;
    v9[1] = v2;
    sub_1E100A414(v3, v2);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E0FDF000, v5, v6, "GeoRequest partial event failed, %@", v7, 0xCu);
    sub_1E0FF0440(v8, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 168);
  v127 = *(v0 + 160);
  v13 = v3;
  v14 = *(v0 + 136);
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);

  sub_1E10095EC();
  v17 = swift_allocError();
  v19 = v18;
  sub_1E100A408(v13, v2, 1);
  *v19 = v13;
  v19[1] = v2;
  *v14 = v17;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE33C();

  sub_1E0FF0440(v14, &qword_1ECE89968, &unk_1E10B3D80);
  (*(v12 + 8))(v11, v127);
LABEL_30:
  v56 = *(v0 + 272) + 1;
  if (v56 != *(v0 + 256))
  {
    v3 = *(v0 + 288);
    *(v0 + 272) = v56;
    v67 = *(v0 + 104);
    v68 = v56 * v67;
    if ((v56 * v67) >> 64 != (v56 * v67) >> 63)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v3 >= v67)
    {
      v69 = *(v0 + 104);
    }

    else
    {
      v69 = v3;
    }

    v70 = &v69[v68];
    if (__OFADD__(v68, v69))
    {
      goto LABEL_69;
    }

    if (v70 < v68)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v71 = *(v0 + 248);
    if (v71 < v68)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v68 < 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v71 < v70)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (v70 == v68)
    {
LABEL_49:
      *(v0 + 280) = v2;
      v13 = v2 >> 62;
      if (!(v2 >> 62))
      {
        v72 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_51:
        v86 = &v3[-v72];
        *(v0 + 288) = &v3[-v72];
        if (!__OFSUB__(v3, v72))
        {
          v87 = *(v0 + 264);

          v88 = sub_1E10ADF7C();
          v89 = sub_1E10AE45C();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            *v90 = 134218240;
            if (v13)
            {
              v91 = sub_1E10AE70C();
            }

            else
            {
              v91 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v90 + 4) = v91;

            *(v90 + 12) = 2048;
            *(v90 + 14) = v86;
            _os_log_impl(&dword_1E0FDF000, v88, v89, "Performing a batch of %ld requests, remaining requests: %ld", v90, 0x16u);
            MEMORY[0x1E12EE9E0](v90, -1, -1);
          }

          else
          {
          }

          v93 = *(v0 + 88);
          v92 = *(v0 + 96);
          v94 = swift_task_alloc();
          *(v0 + 296) = v94;
          v94[2] = v93;
          v94[3] = v2;
          v94[4] = v92;
          v95 = *(MEMORY[0x1E69E8920] + 4);
          v96 = swift_task_alloc();
          *(v0 + 304) = v96;
          v26 = type metadata accessor for PartialEventXPCValueContainer();
          *v96 = v0;
          v96[1] = sub_1E10299A0;
          v24 = sub_1E102B094;
          v23 = 0x80000001E10C0030;
          v72 = v0 + 56;
          v20 = 0;
          v21 = 0;
          v22 = 0xD000000000000028;
          v25 = v94;

          return MEMORY[0x1EEE6DE38](v72, v20, v21, v22, v23, v24, v25, v26);
        }

        __break(1u);
LABEL_76:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v72, v20, v21, v22, v23, v24, v25, v26);
      }

LABEL_74:
      v72 = sub_1E10AE70C();
      goto LABEL_51;
    }

    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    v72 = sub_1E10AE66C();
    if ((v69 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    v124 = v3;
    while (v69)
    {
      v73 = *(v0 + 240);
      v74 = *(v0 + 208);
      v76 = *(v0 + 192);
      v75 = *(v0 + 200);
      sub_1E102AFCC(*(v0 + 80) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 216) + 72) * v68, v73, type metadata accessor for EventService.GeoRequest);
      v2 = *v73;
      v77 = *(v73 + 8);
      v130 = *(v73 + 16);
      v78 = *(v73 + 32);
      v79 = *(v74 + 28);
      v80 = *(v76 + 28);
      v81 = sub_1E10ADACC();
      (*(*(v81 - 8) + 16))(v75 + v80, v73 + v79, v81);
      *v75 = v130;
      *(v75 + 16) = v78;
      v82 = type metadata accessor for GeoXPCRequestContainer(0);
      v83 = objc_allocWithZone(v82);
      v84 = &v83[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
      *v84 = v2;
      v84[1] = v77;
      sub_1E102AFCC(v75, &v83[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
      *(v0 + 16) = v83;
      *(v0 + 24) = v82;
      v3 = sel_init;

      v13 = objc_msgSendSuper2((v0 + 16), sel_init);
      sub_1E102B034(v75, type metadata accessor for GeoXPCRequestContainer.Payload);
      sub_1E102B034(v73, type metadata accessor for EventService.GeoRequest);
      sub_1E10AE64C();
      v85 = *(*(v0 + 48) + 16);
      sub_1E10AE67C();
      sub_1E10AE68C();
      sub_1E10AE65C();
      ++v68;
      if (!--v69)
      {
        v2 = *(v0 + 48);
        v3 = v124;
        goto LABEL_49;
      }
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v58 = *(v0 + 232);
  v57 = *(v0 + 240);
  v59 = *(v0 + 224);
  v60 = *(v0 + 200);
  v62 = *(v0 + 176);
  v61 = *(v0 + 184);
  v63 = *(v0 + 152);
  v126 = *(v0 + 136);
  v129 = *(v0 + 128);
  v64 = *(v0 + 112);
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1E102A778()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  v3 = v1;
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E0FDF000, v4, v5, "GeoRequest failed, %@", v6, 0xCu);
    sub_1E0FF0440(v7, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v73 = *(v0 + 160);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 112);

  sub_1E10095EC();
  v15 = &type metadata for EventService.Error;
  v16 = swift_allocError();
  v18 = v17;
  *(v0 + 64) = v1;
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v20 = swift_dynamicCast();
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  if (!v20)
  {
    v21 = 0;
    v22 = 3;
  }

  *v18 = v21;
  v18[1] = v22;
  *v12 = v16;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE33C();

  sub_1E0FF0440(v12, &qword_1ECE89968, &unk_1E10B3D80);
  (*(v11 + 8))(v10, v73);
  v30 = *(v0 + 272) + 1;
  if (v30 != *(v0 + 256))
  {
    v41 = *(v0 + 288);
    *(v0 + 272) = v30;
    v42 = *(v0 + 104);
    v43 = v30 * v42;
    if ((v30 * v42) >> 64 == (v30 * v42) >> 63)
    {
      if (v41 >= v42)
      {
        v44 = *(v0 + 104);
      }

      else
      {
        v44 = v41;
      }

      v45 = &v44[v43];
      if (__OFADD__(v43, v44))
      {
        goto LABEL_38;
      }

      if (v45 < v43)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v46 = *(v0 + 248);
      if (v46 < v43)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v43 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v46 < v45)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v1 = MEMORY[0x1E69E7CC0];
      if (v45 == v43)
      {
LABEL_24:
        *(v0 + 280) = v1;
        v15 = (v1 >> 62);
        if (!(v1 >> 62))
        {
          v47 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
          v60 = &v41[-v47];
          *(v0 + 288) = &v41[-v47];
          if (!__OFSUB__(v41, v47))
          {
            v61 = *(v0 + 264);

            v62 = sub_1E10ADF7C();
            v63 = sub_1E10AE45C();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 134218240;
              if (v15)
              {
                v65 = sub_1E10AE70C();
              }

              else
              {
                v65 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v64 + 4) = v65;

              *(v64 + 12) = 2048;
              *(v64 + 14) = v60;
              _os_log_impl(&dword_1E0FDF000, v62, v63, "Performing a batch of %ld requests, remaining requests: %ld", v64, 0x16u);
              MEMORY[0x1E12EE9E0](v64, -1, -1);
            }

            else
            {
            }

            v67 = *(v0 + 88);
            v66 = *(v0 + 96);
            v68 = swift_task_alloc();
            *(v0 + 296) = v68;
            v68[2] = v67;
            v68[3] = v1;
            v68[4] = v66;
            v69 = *(MEMORY[0x1E69E8920] + 4);
            v70 = swift_task_alloc();
            *(v0 + 304) = v70;
            v29 = type metadata accessor for PartialEventXPCValueContainer();
            *v70 = v0;
            v70[1] = sub_1E10299A0;
            v27 = sub_1E102B094;
            v47 = v0 + 56;
            v26 = 0x80000001E10C0030;
            v23 = 0;
            v24 = 0;
            v25 = 0xD000000000000028;
            v28 = v68;

            return MEMORY[0x1EEE6DE38](v47, v23, v24, v25, v26, v27, v28, v29);
          }

          __break(1u);
LABEL_45:
          __break(1u);
          return MEMORY[0x1EEE6DE38](v47, v23, v24, v25, v26, v27, v28, v29);
        }

LABEL_43:
        v47 = sub_1E10AE70C();
        goto LABEL_26;
      }

      *(v0 + 48) = MEMORY[0x1E69E7CC0];
      v47 = sub_1E10AE66C();
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v72 = v41;
      while (v44)
      {
        v48 = *(v0 + 240);
        v49 = *(v0 + 208);
        v51 = *(v0 + 192);
        v50 = *(v0 + 200);
        sub_1E102AFCC(*(v0 + 80) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 216) + 72) * v43, v48, type metadata accessor for EventService.GeoRequest);
        v15 = *v48;
        v52 = *(v48 + 8);
        v75 = *(v48 + 16);
        v53 = *(v48 + 32);
        v54 = *(v49 + 28);
        v55 = *(v51 + 28);
        v56 = sub_1E10ADACC();
        (*(*(v56 - 8) + 16))(v50 + v55, v48 + v54, v56);
        *v50 = v75;
        *(v50 + 16) = v53;
        v57 = type metadata accessor for GeoXPCRequestContainer(0);
        v58 = objc_allocWithZone(v57);
        v59 = &v58[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
        *v59 = v15;
        v59[1] = v52;
        sub_1E102AFCC(v50, &v58[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
        *(v0 + 16) = v58;
        *(v0 + 24) = v57;
        v41 = sel_init;

        objc_msgSendSuper2((v0 + 16), sel_init);
        sub_1E102B034(v50, type metadata accessor for GeoXPCRequestContainer.Payload);
        sub_1E102B034(v48, type metadata accessor for EventService.GeoRequest);
        sub_1E10AE64C();
        v1 = *(*(v0 + 48) + 16);
        sub_1E10AE67C();
        sub_1E10AE68C();
        sub_1E10AE65C();
        ++v43;
        if (!--v44)
        {
          v1 = *(v0 + 48);
          v41 = v72;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = *(v0 + 232);
  v31 = *(v0 + 240);
  v33 = *(v0 + 224);
  v34 = *(v0 + 200);
  v36 = *(v0 + 176);
  v35 = *(v0 + 184);
  v37 = *(v0 + 152);
  v71 = *(v0 + 136);
  v74 = *(v0 + 128);
  v38 = *(v0 + 112);
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1E102AE84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E0FE5FDC;

  return sub_1E102915C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1E102AFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E102B034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E102B0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventService.GeoRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E102B104(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = a1;
  v24 = (a1 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  v25 = v7;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v27 = *v13;
      v14 = *(*(a2 + 56) + v12);
      v15 = *(v26 + 16);
      v30 = v13[1];

      if (v15)
      {
        break;
      }

LABEL_5:

      v7 = v25;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v16 = v24;
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      if (v18 <= 3)
      {
        if (*v16 > 1u)
        {
          if (v18 == 2)
          {
            if (v14 <= 3 && v14 > 1 && v14 != 3)
            {
              goto LABEL_69;
            }
          }

          else if (v14 <= 3 && v14 > 1 && v14 != 2)
          {
            goto LABEL_69;
          }
        }

        else if (*v16)
        {
          if (v14 <= 3 && v14 <= 1 && v14)
          {
            goto LABEL_69;
          }
        }

        else if (v14 <= 3 && v14 <= 1 && v14 != 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if (*v16 <= 5u)
      {
        if (v18 == 4)
        {
          if (v14 > 3 && v14 <= 5 && v14 != 5)
          {
            goto LABEL_69;
          }
        }

        else if (v14 > 3 && v14 <= 5 && v14 != 4)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if (v18 != 6)
      {
        break;
      }

      if (v14 > 3 && v14 > 5 && v14 != 7)
      {
        goto LABEL_69;
      }

LABEL_66:
      v19 = sub_1E10AE8FC();

      if (v19)
      {
        goto LABEL_70;
      }

      v16 += 16;

      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    if (v14 <= 3 || v14 <= 5 || v14 == 6)
    {
      goto LABEL_66;
    }

LABEL_69:
    v20 = *(v16 - 1);

LABEL_70:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1059004(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v7 = v25;
    v22 = *(v29 + 16);
    v21 = *(v29 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_1E1059004((v21 > 1), v22 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v22 + 1;
    v23 = v29 + 32 * v22;
    *(v23 + 32) = v27;
    *(v23 + 40) = v30;
    *(v23 + 48) = v17;
    *(v23 + 56) = v18;
  }

  while (v6);
LABEL_6:
  while (2)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 < v7)
      {
        v6 = *(v3 + 8 * v10);
        ++v9;
        if (!v6)
        {
          continue;
        }

        v9 = v10;
        goto LABEL_10;
      }

      return v29;
    }

    return result;
  }
}

uint64_t sub_1E102BB04(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E102BB80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E102BCA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E102BE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E102BF54(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1E102BF84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E10AE8FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E102BFF4(void *a1, void *a2)
{
  v69 = a1;
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v72 = a2[2];
  v4 = v72;
  v73 = v3;
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v62 = type metadata accessor for ValueResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E10AE8BC();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v61 = v52 - v13;
  v63 = *(v3 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v4;
  v73 = v3;
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v18 = type metadata accessor for ValueResult.SuccessCodingKeys();
  v19 = swift_getWitnessTable();
  v54 = v18;
  v52[1] = v19;
  v57 = sub_1E10AE8BC();
  v56 = *(v57 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v53 = v52 - v23;
  v55 = *(v4 - 8);
  v24 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v52[0] = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v6;
  v68 = v4;
  v72 = v4;
  v73 = v3;
  v58 = v3;
  v74 = v5;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v66 = v8;
  type metadata accessor for ValueResult.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_1E10AE8BC();
  v70 = *(v34 - 8);
  v35 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v52 - v38;
  v40 = v69[4];
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  sub_1E10AEA5C();
  (*(v28 + 16))(v33, v71, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v63;
    v43 = v58;
    v42 = v59;
    (*(v63 + 32))(v59, v33, v58);
    LOBYTE(v72) = 1;
    v44 = v61;
    sub_1E10AE82C();
    v45 = v65;
    sub_1E10AE8AC();
    (*(v64 + 8))(v44, v45);
    (*(v41 + 8))(v42, v43);
  }

  else
  {
    v46 = v55;
    v47 = v52[0];
    v48 = v68;
    (*(v55 + 32))(v52[0], v33, v68);
    LOBYTE(v72) = 0;
    v49 = v53;
    sub_1E10AE82C();
    v50 = v57;
    sub_1E10AE8AC();
    (*(v56 + 8))(v49, v50);
    (*(v46 + 8))(v47, v48);
  }

  return (*(v70 + 8))(v39, v34);
}

uint64_t sub_1E102C5E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v100 = a1;
  v87 = a8;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  *&v97 = a4;
  *(&v97 + 1) = a5;
  v98 = a6;
  v99 = a7;
  v84 = type metadata accessor for ValueResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v76 = sub_1E10AE81C();
  v75 = *(v76 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v85 = &v70 - v17;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  *&v97 = a4;
  *(&v97 + 1) = a5;
  v98 = a6;
  v99 = a7;
  v18 = type metadata accessor for ValueResult.SuccessCodingKeys();
  v19 = swift_getWitnessTable();
  v81 = v18;
  v80 = v19;
  v74 = sub_1E10AE81C();
  v73 = *(v74 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v82 = &v70 - v23;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  *&v97 = a4;
  *(&v97 + 1) = a5;
  v98 = a6;
  v99 = a7;
  type metadata accessor for ValueResult.CodingKeys();
  v92 = swift_getWitnessTable();
  v88 = sub_1E10AE81C();
  v91 = *(v88 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v70 - v27;
  v77 = a2;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  v90 = a3;
  v79 = a4;
  *&v97 = a4;
  *(&v97 + 1) = a5;
  v78 = a6;
  v98 = a6;
  v99 = a7;
  v29 = type metadata accessor for ValueResult();
  v86 = *(v29 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v70 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v70 - v41;
  v43 = v100[4];
  __swift_project_boxed_opaque_existential_1(v100, v100[3]);
  v89 = v28;
  v44 = v93;
  sub_1E10AEA3C();
  if (!v44)
  {
    v92 = v34;
    v72 = v38;
    v71 = v42;
    v93 = v29;
    v45 = v89;
    v46 = v88;
    *&v94 = sub_1E10AE80C();
    sub_1E10AE20C();
    swift_getWitnessTable();
    *&v96 = sub_1E10AE55C();
    *(&v96 + 1) = v47;
    *&v97 = v48;
    *(&v97 + 1) = v49;
    sub_1E10AE54C();
    swift_getWitnessTable();
    sub_1E10AE3FC();
    v50 = v94;
    if (v94 == 2 || (v70 = v96, v94 = v96, v95 = v97, (sub_1E10AE41C() & 1) == 0))
    {
      v54 = sub_1E10AE62C();
      swift_allocError();
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0) + 48);
      *v56 = v93;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
      swift_willThrow();
      (*(v91 + 8))(v45, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v50)
      {
        LOBYTE(v94) = 1;
        v51 = v85;
        sub_1E10AE76C();
        v53 = v86;
        v52 = v87;
        v60 = v76;
        sub_1E10AE7FC();
        v61 = v91;
        (*(v75 + 8))(v51, v60);
        (*(v61 + 8))(v45, v46);
        swift_unknownObjectRelease();
        v67 = v92;
        v66 = v93;
      }

      else
      {
        LOBYTE(v94) = 0;
        v58 = v82;
        v59 = v46;
        sub_1E10AE76C();
        v53 = v86;
        v52 = v87;
        v67 = v72;
        v62 = v74;
        sub_1E10AE7FC();
        v63 = v58;
        v64 = v91;
        (*(v73 + 8))(v63, v62);
        (*(v64 + 8))(v45, v59);
        swift_unknownObjectRelease();
        v66 = v93;
      }

      swift_storeEnumTagMultiPayload();
      v68 = *(v53 + 32);
      v69 = v71;
      v68(v71, v67, v66);
      v68(v52, v69, v66);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v100);
}

BOOL sub_1E102CE48(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  return sub_1E0FF8300(*a1, *a2);
}

uint64_t sub_1E102CE64(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_1E0FF8338(*v1);
}

uint64_t sub_1E102CE7C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  return sub_1E0FF8310(a1, *v2);
}

uint64_t sub_1E102CE94(uint64_t a1, void *a2)
{
  sub_1E10AE9CC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  sub_1E0FF8310(v11, *v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E102CEE4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  return sub_1E102BF54(*v1);
}

uint64_t sub_1E102CEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  result = sub_1E102BE88(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E102CF34@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  result = sub_1E0FF8CD4();
  *a2 = result;
  return result;
}

uint64_t sub_1E102CF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102CFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E102D038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E102D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  result = sub_1E102BF84(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E102D11C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E102D160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ParticipantSchedule.participant.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1E102D42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E102D4F8(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_1E102D534(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E102D4F8(*v1);
}

uint64_t sub_1E102D544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E102D42C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E102D574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D5C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static ParticipantSchedule.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 24) + 8);
  if ((sub_1E10AE03C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for ParticipantSchedule() + 36);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  v11 = *(*(*(*(a4 + 8) + 8) + 24) + 8);

  return sub_1E10AE22C();
}

uint64_t ParticipantSchedule.encode(to:)(void *a1, uint64_t a2)
{
  v17[0] = a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for ParticipantSchedule.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E10AE8BC();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v17[1];
  sub_1E10AEA5C();
  LOBYTE(v22) = 0;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v14 = v19;
  sub_1E10AE8AC();
  if (v14)
  {
    return (*(v18 + 8))(v10, v5);
  }

  v16 = v18;
  v22 = *(v12 + *(v17[0] + 36));
  v21 = 1;
  sub_1E10AE20C();
  v20 = *(*(*(v4 + 8) + 8) + 16);
  swift_getWitnessTable();
  sub_1E10AE8AC();
  return (*(v16 + 8))(v10, v5);
}

uint64_t ParticipantSchedule.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1E10ADFFC();
  v7 = *(v2 + *(a2 + 36));
  v8 = *(*(*(v4 + 8) + 8) + 24);

  return sub_1E10AE21C();
}

uint64_t ParticipantSchedule.hashValue.getter(uint64_t a1)
{
  sub_1E10AE9CC();
  ParticipantSchedule.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t ParticipantSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v32 - v8;
  type metadata accessor for ParticipantSchedule.CodingKeys();
  swift_getWitnessTable();
  v42 = sub_1E10AE81C();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v38 = a2;
  v14 = type metadata accessor for ParticipantSchedule();
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v13;
  v21 = v43;
  sub_1E10AEA3C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = a1;
  v32 = v14;
  v33 = v19;
  v22 = v36;
  LOBYTE(v46) = 0;
  v23 = v38;
  v24 = AssociatedTypeWitness;
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  v26 = v37;
  v27 = v39;
  sub_1E10AE7FC();
  v28 = v33;
  (*(v22 + 32))(v33, v26, v24);
  sub_1E10AE20C();
  v45 = 1;
  v44 = *(*(*(v23 + 8) + 8) + 8);
  swift_getWitnessTable();
  sub_1E10AE7FC();
  (*(v40 + 8))(v27, v42);
  v29 = v32;
  *&v28[*(v32 + 36)] = v46;
  v30 = v34;
  (*(v34 + 16))(v35, v28, v29);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v30 + 8))(v28, v29);
}

uint64_t sub_1E102DEF0(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  ParticipantSchedule.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E102DFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1E10AE20C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E102E078(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_1E102E208(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *v21 = v22;
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

void sub_1E102E438()
{
  v1 = v0;
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE45C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "Tearing down ShazamEventsServiceConnection", v5, 2u);
    MEMORY[0x1E12EE9E0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    [v6 invalidate];
    v6 = *(v1 + 16);
  }

  *(v1 + 16) = 0;
}

uint64_t sub_1E102E540()
{
  sub_1E102E438();

  return swift_deallocClassInstance();
}

uint64_t sub_1E102E5A0(void (*a1)(void), uint64_t a2)
{
  sub_1E102E8F4();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    aBlock[4] = sub_1E102EF18;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E102ECE8;
    aBlock[3] = &block_descriptor_1;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    v9 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);
    sub_1E10AE53C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C70, &qword_1E10B4498);
    if (swift_dynamicCast())
    {

      return v23;
    }

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v17 = sub_1E10ADF9C();
    __swift_project_value_buffer(v17, qword_1EE185540);
    v18 = sub_1E10ADF7C();
    v19 = sub_1E10AE44C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E0FDF000, v18, v19, "Cannot get Shazam event service remote proxy", v20, 2u);
      MEMORY[0x1E12EE9E0](v20, -1, -1);
    }

    sub_1E10095EC();
    v21 = swift_allocError();
    *v22 = xmmword_1E10B4430;
    a1();
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v11 = sub_1E10ADF9C();
    __swift_project_value_buffer(v11, qword_1EE185540);
    v12 = sub_1E10ADF7C();
    v13 = sub_1E10AE44C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E0FDF000, v12, v13, "Cannot get Shazam event service connection", v14, 2u);
      MEMORY[0x1E12EE9E0](v14, -1, -1);
    }

    sub_1E10095EC();
    v15 = swift_allocError();
    *v16 = xmmword_1E10B4430;
    a1();
  }

  return 0;
}

void sub_1E102E8F4()
{
  if (!*(v0 + 16))
  {
    v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v2 = sub_1E10AE04C();
    v3 = [v1 initWithMachServiceName:v2 options:4096];

    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol_];
    [v3 setExportedInterface_];

    v6 = [v4 interfaceWithProtocol_];
    [v3 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v19 = sub_1E102EFA0;
    v20 = v7;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1E102ED50;
    v18 = &block_descriptor_11_0;
    v8 = _Block_copy(&v15);

    [v3 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v19 = sub_1E102EFC4;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1E102ED50;
    v18 = &block_descriptor_15;
    v10 = _Block_copy(&v15);

    [v3 setInvalidationHandler_];
    _Block_release(v10);
    v11 = *(v0 + 16);
    *(v0 + 16) = v3;
    v12 = v3;

    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = v13;
      [v14 resume];
    }
  }
}

uint64_t sub_1E102EB8C(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v4 = sub_1E10ADF9C();
  __swift_project_value_buffer(v4, qword_1EE185540);
  v5 = a1;
  v6 = sub_1E10ADF7C();
  v7 = sub_1E10AE44C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E0FDF000, v6, v7, "Shazam event service remote proxy error: %@", v8, 0xCu);
    sub_1E102EF38(v9);
    MEMORY[0x1E12EE9E0](v9, -1, -1);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1E102ECE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1E102ED50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E102ED94(uint64_t a1, const char *a2)
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v3 = sub_1E10ADF9C();
  __swift_project_value_buffer(v3, qword_1EE185540);
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1E0FDF000, v4, v5, a2, v6, 2u);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E102E438();
  }

  return result;
}

uint64_t sub_1E102EEB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = v3;
    [v4 setExportedObject_];
  }

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E102EF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89170, &qword_1E10B15D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E102F05C(__int128 *a1)
{
  v3 = v1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32[-v13];
  v15 = *v3;
  v16 = *(v3 + 80);
  v38 = *(v3 + 64);
  v39 = v16;
  v40 = *(v3 + 96);
  v17 = *(v3 + 16);
  v34 = *v3;
  v35 = v17;
  v18 = *(v3 + 48);
  v36 = *(v3 + 32);
  v37 = v18;
  v33 = &v34;
  v19 = sub_1E1035760(sub_1E1031EC4, v32, v15);
  if (v19[2])
  {
    sub_1E0FEDC50(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10, &qword_1ECE89C78, &qword_1E10B6BA0);

    sub_1E0FEDEF4(v10, v14, &qword_1ECE89C78, &qword_1E10B6BA0);
    sub_1E1030404(a1);
    v20 = sub_1E10310C0();
    if (v2)
    {
      v21 = a1[7];
      v40 = a1[6];
      v41 = v21;
      v22 = a1[9];
      v42 = a1[8];
      v43 = v22;
      v23 = a1[3];
      v36 = a1[2];
      v37 = v23;
      v24 = a1[5];
      v38 = a1[4];
      v39 = v24;
      v25 = a1[1];
      v34 = *a1;
      v35 = v25;
      sub_1E0FEDAB8(&v34);
    }

    else
    {
      v3 = v20;
    }

    sub_1E0FF0440(v14, &qword_1ECE89C78, &qword_1E10B6BA0);
  }

  else
  {

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v26 = sub_1E10ADF9C();
    __swift_project_value_buffer(v26, qword_1EE185540);
    v27 = sub_1E10ADF7C();
    v28 = sub_1E10AE44C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E0FDF000, v27, v28, "No resource available for venue schedule", v29, 2u);
      MEMORY[0x1E12EE9E0](v29, -1, -1);
    }

    sub_1E1031F0C();
    swift_allocError();
    *v30 = 3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1E102F36C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F60, &qword_1E10B4900);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v15 - v8;
  v10 = v1[3];
  v24 = v1[2];
  v25 = v10;
  v11 = v1[5];
  v26 = v1[4];
  v27 = v11;
  v12 = v1[1];
  v22 = *v1;
  v23 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF74D4(&v22, &v16);
  sub_1E10346B4();
  sub_1E10AEA5C();
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  sub_1E0FF7480();
  sub_1E10AE8AC();
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[5] = v21;
  v15[0] = v16;
  v15[1] = v17;
  sub_1E0FF750C(v15);
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E102F518@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F50, &qword_1E10B48F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10346B4();
  sub_1E10AEA3C();
  if (!v2)
  {
    sub_1E0FF753C();
    sub_1E10AE7FC();
    (*(v6 + 8))(v11, v5);
    v13 = v17[3];
    a2[2] = v17[2];
    a2[3] = v13;
    v14 = v17[5];
    a2[4] = v17[4];
    a2[5] = v14;
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E102F6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E10BF5C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E102F748(uint64_t a1)
{
  v2 = sub_1E10346B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E102F784(uint64_t a1)
{
  v2 = sub_1E10346B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E102F7F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CE0, &qword_1E10B4860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103269C();
  sub_1E10AEA5C();
  v14 = 0;
  sub_1E10AE88C();
  if (!v1)
  {
    v13 = 1;
    sub_1E10AE88C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E102F978(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E12EE180](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E12EE180](*&v3);
}

uint64_t sub_1E102F9C8(void *a1)
{
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F88, &qword_1E10B4910) - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 4);
  v41 = *(v1 + 3);
  v42 = v10;
  v11 = *(v1 + 6);
  v43 = *(v1 + 5);
  v44 = v11;
  v12 = *(v1 + 2);
  v39 = *(v1 + 1);
  v40 = v12;
  v13 = v1[14];
  v24 = v1[15];
  v25 = v13;
  HIDWORD(v23) = *(v1 + 128);
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1E1034708();

  sub_1E10AEA5C();
  *&v33 = v8;
  *(&v33 + 1) = v9;
  LOBYTE(v31[0]) = 0;
  sub_1E0FF4F38();
  v19 = v26;
  sub_1E10AE8AC();
  if (v19)
  {
  }

  else
  {
    v22 = v24;
    v21 = v25;

    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v39;
    v34 = v40;
    v32 = 1;
    sub_1E0FEDC50(&v39, v31, &qword_1ECE89C80, &qword_1E10B44E0);
    sub_1E103486C();
    sub_1E10AE85C();
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v31[0] = v33;
    v31[1] = v34;
    sub_1E0FF0440(v31, &qword_1ECE89C80, &qword_1E10B44E0);
    v28 = v21;
    v29 = v22;
    v30 = BYTE4(v23);
    v27 = 2;
    sub_1E10348C0();
    sub_1E10AE85C();
  }

  return (*(v45 + 8))(v7, v18);
}

uint64_t sub_1E102FCAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F68, &qword_1E10B4908);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1034708();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v23 = a2;
  LOBYTE(v24) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  *(&v22 + 1) = *(&v33[0] + 1);
  v13 = *&v33[0];
  v40 = 1;
  sub_1E103475C();
  sub_1E10AE7AC();
  *&v22 = v13;
  v50 = v43;
  v51 = v44;
  v52 = v45;
  v53 = v46;
  v48 = v41;
  v49 = v42;
  v37 = 2;
  sub_1E10347B0();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v54);
  v14 = *(&v38 + 1);
  v54 = v38;
  LOBYTE(v13) = v39;
  v47 = v39;
  v15 = v22;
  v24 = v22;
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v30 = v53;
  v25 = v48;
  v26 = v49;
  v31 = v38;
  v32 = v39;
  v16 = v23;
  *(v23 + 128) = v39;
  v17 = v27;
  v16[2] = v26;
  v16[3] = v17;
  v18 = v29;
  v16[4] = v28;
  v16[5] = v18;
  v19 = v25;
  *v16 = v24;
  v16[1] = v19;
  v20 = v31;
  v16[6] = v30;
  v16[7] = v20;
  sub_1E1034804(&v24, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v15;
  v33[3] = v50;
  v33[4] = v51;
  v33[5] = v52;
  v33[6] = v53;
  v33[1] = v48;
  v33[2] = v49;
  v34 = v54;
  v35 = v14;
  v36 = v13;
  return sub_1E103483C(v33);
}

uint64_t sub_1E1030050()
{
  if (*v0)
  {
    return 6778476;
  }

  else
  {
    return 7627116;
  }
}

uint64_t sub_1E1030074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7627116 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6778476 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E1030150(uint64_t a1)
{
  v2 = sub_1E103269C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E103018C(uint64_t a1)
{
  v2 = sub_1E103269C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1E10301C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E10324EC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1E10301F4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1E102F7F0(a1);
}

uint64_t sub_1E1030210()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  sub_1E102F978(v1, v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E103026C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  sub_1E102F978(v1, v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E10302E8()
{
  v1 = 0x73736572646461;
  if (*v0 != 1)
  {
    v1 = 7300455;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E1030334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E10326F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E103035C(uint64_t a1)
{
  v2 = sub_1E1034708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1030398(uint64_t a1)
{
  v2 = sub_1E1034708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1030404@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  v63 = *(v5 + 3);
  v64 = v8;
  v68 = v5[128];
  v9 = *(v5 + 7);
  v66 = *(v5 + 6);
  v67 = v9;
  v65 = *(v5 + 5);
  v10 = *(v5 + 2);
  v61 = *(v5 + 1);
  v62 = v10;
  v60[0] = v6;
  v60[1] = v7;
  if (sub_1E10306A0(v60) == 1)
  {
    goto LABEL_12;
  }

  v11 = *(v5 + 7);
  v58[6] = *(v5 + 6);
  v58[7] = v11;
  v59 = v5[128];
  v12 = *(v5 + 3);
  v58[2] = *(v5 + 2);
  v58[3] = v12;
  v13 = *(v5 + 5);
  v58[4] = *(v5 + 4);
  v58[5] = v13;
  v14 = *(v5 + 1);
  v58[0] = *v5;
  v58[1] = v14;
  if (sub_1E10306A0(v58) == 1)
  {
    goto LABEL_12;
  }

  v15 = *(v5 + 7);
  v55 = *(v5 + 6);
  v56 = v15;
  v57 = v5[128];
  v16 = *(v5 + 3);
  v51 = *(v5 + 2);
  v52 = v16;
  v17 = *(v5 + 5);
  v53 = *(v5 + 4);
  v54 = v17;
  v18 = *(v5 + 1);
  v49 = *v5;
  v50 = v18;
  v19 = *(&v18 + 1);
  v39 = v6;
  if (*(&v18 + 1) == 1)
  {
    v20 = 0;
    v38 = 0uLL;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    v38 = v55;
    v35 = v53;
    v36 = v54;
    v34 = v52;
    v37 = v51;
    v20 = v50;
  }

  v21 = *(v5 + 5);
  v45[4] = *(v5 + 4);
  v45[5] = v21;
  v45[6] = *(v5 + 6);
  v22 = *(v5 + 1);
  v45[0] = *v5;
  v45[1] = v22;
  v23 = *(v5 + 3);
  v45[2] = *(v5 + 2);
  v45[3] = v23;
  v24 = *(v5 + 14);
  v25 = *(v5 + 15);
  v26 = v5[128];
  v46 = v24;
  v47 = v25;
  v48 = v26;
  if (sub_1E10306A0(v45) == 1)
  {
    goto LABEL_12;
  }

  v27 = *(v5 + 5);
  v41[4] = *(v5 + 4);
  v41[5] = v27;
  v41[6] = *(v5 + 6);
  v28 = *(v5 + 14);
  v29 = *(v5 + 1);
  v41[0] = *v5;
  v41[1] = v29;
  v30 = *(v5 + 3);
  v41[2] = *(v5 + 2);
  v41[3] = v30;
  v42 = v28;
  v43 = v25;
  v44 = v26;
  if (sub_1E10306A0(v41) == 1)
  {
LABEL_12:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    v31 = v24;
    *a1 = v4;
    *(a1 + 8) = v3;
    v32 = 0.0;
    if (v26)
    {
      v31 = 0.0;
    }

    else
    {
      v32 = v25;
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = v39;
    *(a1 + 40) = v7;
    *(a1 + 48) = v20;
    *(a1 + 56) = v19;
    *(a1 + 64) = v37;
    *(a1 + 80) = v34;
    *(a1 + 96) = v35;
    *(a1 + 112) = v36;
    *(a1 + 128) = v38;
    *(a1 + 144) = v31;
    *(a1 + 152) = v32;

    return sub_1E0FEDC50(&v50, v40, &qword_1ECE89C80, &qword_1E10B44E0);
  }

  return result;
}

uint64_t sub_1E10306A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E10306B8(char a1)
{
  result = 0x652D6D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x7365756E6576;
      break;
    case 3:
      v3 = 1953458288;
      goto LABEL_10;
    case 4:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x657061706C6C6177;
      break;
    case 6:
      result = 0x61662D6863746177;
      break;
    case 7:
      v3 = 1701079414;
LABEL_10:
      result = v3 | 0x6C612D6F00000000;
      break;
    case 8:
      result = 0x7365726E6567;
      break;
    case 9:
      result = 0x72672D74726F7073;
      break;
    case 10:
      result = 0x7374726F7073;
      break;
    case 11:
      result = 0x74697465706D6F63;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1030838(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1E10306B8(*a1);
  v5 = v4;
  if (v3 == sub_1E10306B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E10AE8FC();
  }

  return v8 & 1;
}

uint64_t sub_1E10308C0()
{
  v1 = *v0;
  sub_1E10AE9CC();
  sub_1E10306B8(v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E1030924()
{
  sub_1E10306B8(*v0);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1030978()
{
  v1 = *v0;
  sub_1E10AE9CC();
  sub_1E10306B8(v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E10309D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E1032808();
  *a2 = result;
  return result;
}

uint64_t sub_1E1030A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E10306B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E1030A50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1032808();
  *a1 = result;
  return result;
}

uint64_t sub_1E1030A78(uint64_t a1)
{
  v2 = sub_1E1033348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1030AB4(uint64_t a1)
{
  v2 = sub_1E1033348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1030AF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E78, &qword_1E10B48F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1033348();
  sub_1E10AEA5C();
  v15 = *v3;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  sub_1E1033D5C();
  sub_1E10AE85C();
  if (!v2)
  {
    v15 = v3[1];
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E1033E14();
    sub_1E10AE85C();
    v15 = v3[2];
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E1033ECC();
    sub_1E10AE8AC();
    v15 = v3[3];
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E1033F84();
    sub_1E10AE85C();
    v15 = v3[4];
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E103403C();
    sub_1E10AE85C();
    v15 = v3[5];
    HIBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E10340F4();
    sub_1E10AE85C();
    v15 = v3[6];
    HIBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E10341AC();
    sub_1E10AE85C();
    v15 = v3[7];
    HIBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E1034264();
    sub_1E10AE85C();
    v15 = v3[8];
    HIBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E103431C();
    sub_1E10AE85C();
    v15 = v3[9];
    HIBYTE(v14) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E10343D4();
    sub_1E10AE85C();
    v15 = v3[10];
    HIBYTE(v14) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E103448C();
    sub_1E10AE85C();
    v15 = v3[11];
    HIBYTE(v14) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E1034544();
    sub_1E10AE85C();
    v15 = v3[12];
    HIBYTE(v14) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E10345FC();
    sub_1E10AE85C();
  }

  return (*(v6 + 8))(v11, v5);
}

__n128 sub_1E1031048@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1032854(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1E10310C0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C90, &qword_1E10B44E8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v160 = &v146 - v4;
  v159 = type metadata accessor for EventAttributes(0);
  v147 = *(v159 - 8);
  v5 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v158 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v161 = *(v202 - 1);
  v9 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v157 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v163 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v180 = &v146 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v146 - v21);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
  v154 = *(v183 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v151 = &v146 - v26;
  v28 = v0[1];
  v27 = v0[2];
  v30 = v0[3];
  v29 = v0[4];
  v32 = v0[5];
  v31 = v0[6];
  v33 = v0[7];
  v34 = v0[8];
  v35 = v0[9];
  v36 = v0[10];
  v38 = v0[11];
  v37 = v0[12];
  v170 = v0;
  v39 = v0[13];
  if (v28)
  {
    v182 = v28;
    v40 = v28;
  }

  else
  {
    v181 = v33;
    v178 = v32;
    v179 = v31;
    v176 = v30;
    v177 = v29;
    v175 = v27;
    v40 = sub_1E10179F8(MEMORY[0x1E69E7CC0]);
    v27 = v175;
    v30 = v176;
    v29 = v177;
    v32 = v178;
    v31 = v179;
    v33 = v181;
    v182 = 0;
  }

  v181 = &v146;
  *&v193 = v40;
  *(&v193 + 1) = v27;
  *&v194 = v30;
  *(&v194 + 1) = v29;
  *&v195 = v32;
  *(&v195 + 1) = v31;
  *&v196 = v33;
  *(&v196 + 1) = v34;
  *&v197 = v35;
  *(&v197 + 1) = v36;
  *&v198 = v38;
  *(&v198 + 1) = v37;
  v199 = v39;
  v201 = v39;
  v200[4] = v197;
  v200[5] = v198;
  v200[0] = v193;
  v200[1] = v194;
  v200[2] = v195;
  v200[3] = v196;
  v179 = v37;
  v169 = *v170;
  v41 = *(v170 + 5);
  v190 = *(v170 + 4);
  v191 = v41;
  v192 = *(v170 + 6);
  v42 = *(v170 + 1);
  v186 = *v170;
  v187 = v42;
  v43 = *(v170 + 3);
  v188 = *(v170 + 2);
  v189 = v43;
  MEMORY[0x1EEE9AC00](v43, v188);
  v176 = v36;
  v177 = v38;
  v174 = v34;
  v175 = v35;
  v178 = (&v146 - 4);
  v144 = &v186;

  v44 = v184;
  v45 = sub_1E1035760(sub_1E1034D74, v178, v169);
  v46 = v45;
  v182 = v44;
  v152 = v45[2];
  if (!v152)
  {

    v128 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v22 = v160;
    v184 = v128[2];
    if (v184)
    {
      v129 = 0;
      v130 = (v147 + 48);
      v131 = MEMORY[0x1E69E7CC0];
      while (v129 < v128[2])
      {
        v132 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v133 = v128;
        v134 = *(v161 + 72);
        v135 = v163;
        sub_1E0FEDC50(v128 + v132 + v134 * v129, v163, &qword_1ECE89708, &qword_1E10B31B8);
        sub_1E0FEDC50(v135 + v202[11], v22, &qword_1ECE89C90, &qword_1E10B44E8);
        if ((*v130)(v22, 1, v159) == 1)
        {
          goto LABEL_94;
        }

        v136 = v158;
        sub_1E1031F60(v22, v158);
        v137 = *(v136 + 32);
        sub_1E1031FC4(v136);
        if (v137)
        {
          sub_1E0FF0440(v163, &qword_1ECE89708, &qword_1E10B31B8);
        }

        else
        {
          sub_1E0FEDEF4(v163, v157, &qword_1ECE89708, &qword_1E10B31B8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v186 = v131;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1059D0C(0, *(v131 + 16) + 1, 1);
            v131 = v186;
          }

          v140 = *(v131 + 16);
          v139 = *(v131 + 24);
          if (v140 >= v139 >> 1)
          {
            sub_1E1059D0C(v139 > 1, v140 + 1, 1);
            v131 = v186;
          }

          *(v131 + 16) = v140 + 1;
          sub_1E0FEDEF4(v157, v131 + v132 + v140 * v134, &qword_1ECE89708, &qword_1E10B31B8);
        }

        ++v129;
        v22 = v160;
        v128 = v133;
        if (v184 == v129)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_87;
    }

LABEL_81:
    v131 = MEMORY[0x1E69E7CC0];
LABEL_82:

    v141 = sub_1E103AEE4(v200, v131);

    sub_1E1032020(&v193);
    return v141;
  }

  v47 = 0;
  v48 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v153 = v45 + v48;
  v164 = v48 + 8;
  v49 = MEMORY[0x1E69E7CC0];
  v162 = xmmword_1E10B2E70;
  v50 = v151;
  v150 = v40;
  v148 = v45;
  while (1)
  {
    if (v47 >= v46[2])
    {
      goto LABEL_88;
    }

    v155 = v47;
    v156 = v49;
    v184 = *(v154 + 72);
    sub_1E0FEDC50(&v153[v184 * v47], v50, &qword_1ECE89C78, &qword_1E10B6BA0);
    v53 = sub_1E10363F0(v40);
    v54 = *(v53 + 16);
    if (v54)
    {
      break;
    }

    sub_1E0FF0440(v50, &qword_1ECE89C78, &qword_1E10B6BA0);
    v116 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v117 = v116[2];
    v118 = v156[2];
    v119 = v118 + v117;
    if (__OFADD__(v118, v117))
    {
      goto LABEL_89;
    }

    v120 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v156;
    if (!v120 || v119 > v156[3] >> 1)
    {
      if (v118 <= v119)
      {
        v122 = v118 + v117;
      }

      else
      {
        v122 = v118;
      }

      v121 = sub_1E1058C94(v120, v122, 1, v156);
    }

    if (v116[2])
    {
      if ((v121[3] >> 1) - v121[2] < v117)
      {
        goto LABEL_91;
      }

      v123 = (*(v161 + 80) + 32) & ~*(v161 + 80);
      v124 = *(v161 + 72);
      v125 = v121;
      swift_arrayInitWithCopy();

      v49 = v125;
      v52 = v155;
      if (v117)
      {
        v126 = v125[2];
        v103 = __OFADD__(v126, v117);
        v127 = v126 + v117;
        if (v103)
        {
          goto LABEL_92;
        }

        v125[2] = v127;
      }
    }

    else
    {
      v51 = v121;

      v49 = v51;
      v52 = v155;
      if (v117)
      {
        goto LABEL_90;
      }
    }

    v47 = v52 + 1;
    v40 = v150;
    if (v47 == v152)
    {
      v143 = v49;

      v128 = v143;
      goto LABEL_67;
    }
  }

  v185 = MEMORY[0x1E69E7CC0];
  v55 = v53;
  v167 = v54;
  sub_1E1059D0C(0, v54, 0);
  v56 = 0;
  v181 = v185;
  v57 = *(v161 + 80);
  v149 = v55;
  v166 = (v57 + 32) & ~v57;
  v168 = v55 + v166;
  v58 = *(v161 + 72);
  v165 = v58;
  while (1)
  {
    v179 = v56;
    v59 = v168 + v58 * v56;
    v60 = v180;
    sub_1E0FEDC50(v59, v180, &qword_1ECE89708, &qword_1E10B31B8);
    sub_1E0FEDC50(v60, v22, &qword_1ECE89708, &qword_1E10B31B8);
    v61 = *(v170 + 5);
    v190 = *(v170 + 4);
    v191 = v61;
    v192 = *(v170 + 6);
    v62 = *(v170 + 1);
    v186 = *v170;
    v187 = v62;
    v63 = *(v170 + 3);
    v188 = *(v170 + 2);
    v189 = v63;
    MEMORY[0x1EEE9AC00](v63, v188);
    v144 = &v186;
    v64 = v182;
    v65 = sub_1E1035760(sub_1E1034D74, (&v146 - 4), v169);
    v182 = v64;
    v178 = v202[12];
    if (*(v22 + v178))
    {
      v66 = *(v22 + v178);
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC8];
    }

    v67 = v65[2];
    v177 = *(v22 + v178);

    if (!v67)
    {
      goto LABEL_49;
    }

    v68 = 0;
    v69 = v65 + v164;
    v176 = v65;
    v173 = v65 + v164;
LABEL_16:
    v70 = &v69[v184 * v68];
    v71 = v68;
    while (1)
    {
      if (v71 >= v67)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v68 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_80;
      }

      v72 = *(v70 - 1);
      v73 = *v70;
      if (v72 != *v22 || v73 != v22[1])
      {
        v75 = *(v70 - 1);
        v76 = *v70;
        if ((sub_1E10AE8FC() & 1) == 0)
        {
          break;
        }
      }

      v77 = &v70[*(v183 + 40)];
      v78 = *(v77 - 1);
      v79 = *v77;
      v80 = (v22 + v202[10]);
      v81 = v78 == *v80 && v79 == v80[1];
      if (!v81 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      ++v71;
      v70 += v184;
      if (v68 == v67)
      {
        goto LABEL_49;
      }
    }

    v82 = &v70[*(v183 + 40)];
    v83 = *(v82 - 1);
    v84 = *v82;
    v85 = v66[2];
    v174 = v83;
    v175 = v84;
    v172 = v66;
    if (v85 && (v86 = sub_1E1014100(v83, v84), (v87 & 1) != 0))
    {
      v88 = *(v66[7] + 8 * v86);
    }

    else
    {
      v88 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C98, &qword_1E10B6BD0);
    inited = swift_initStackObject();
    *(inited + 16) = v162;
    *(inited + 32) = v72;
    v90 = v174;
    *(inited + 40) = v73;
    *(inited + 48) = v90;
    *(inited + 56) = v175;
    v91 = *(v88 + 2);
    swift_bridgeObjectRetain_n();

    v92 = swift_isUniquelyReferenced_nonNull_native();
    if (!v92 || (v93 = *(v88 + 3) >> 1, v93 <= v91))
    {
      v88 = sub_1E1058CF8(v92, v91 + 1, 1, v88);
      v93 = *(v88 + 3) >> 1;
    }

    v95 = v174;
    v94 = v175;
    if (v93 <= *(v88 + 2))
    {
      break;
    }

    swift_arrayInitWithCopy();

    v96 = *(v88 + 2) + 1;
    v171 = v88;
    *(v88 + 2) = v96;
    v97 = v172;
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *&v186 = v97;
    v99 = sub_1E1014100(v95, v94);
    v101 = v97[2];
    v102 = (v100 & 1) == 0;
    v103 = __OFADD__(v101, v102);
    v104 = v101 + v102;
    if (v103)
    {
      goto LABEL_85;
    }

    v105 = v100;
    if (v97[3] >= v104)
    {
      if ((v98 & 1) == 0)
      {
        v112 = v99;
        sub_1E1016C1C();
        v99 = v112;
      }
    }

    else
    {
      sub_1E1015A3C(v104, v98);
      v99 = sub_1E1014100(v95, v94);
      if ((v105 & 1) != (v106 & 1))
      {
        goto LABEL_93;
      }
    }

    v69 = v173;
    v66 = v186;
    if (v105)
    {
      v107 = *(v186 + 56);
      v108 = *(v107 + 8 * v99);
      *(v107 + 8 * v99) = v171;
    }

    else
    {
      *(v186 + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v109 = (v66[6] + 16 * v99);
      *v109 = v95;
      v109[1] = v94;
      *(v66[7] + 8 * v99) = v171;
      v110 = v66[2];
      v103 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v103)
      {
        goto LABEL_86;
      }

      v66[2] = v111;
    }

    if (v68 != v67)
    {
      goto LABEL_16;
    }

LABEL_49:

    sub_1E0FF0440(v180, &qword_1ECE89708, &qword_1E10B31B8);

    *(v22 + v178) = v66;
    v113 = v181;
    v185 = v181;
    v115 = v181[2];
    v114 = v181[3];
    if (v115 >= v114 >> 1)
    {
      sub_1E1059D0C(v114 > 1, v115 + 1, 1);
      v113 = v185;
    }

    v56 = v179 + 1;
    v113[2] = v115 + 1;
    v181 = v113;
    v58 = v165;
    sub_1E0FEDEF4(v22, v113 + v166 + v115 * v165, &qword_1ECE89708, &qword_1E10B31B8);
    if (v56 == v167)
    {
      v50 = v151;
      sub_1E0FF0440(v151, &qword_1ECE89C78, &qword_1E10B6BA0);

      v46 = v148;
      v116 = v181;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_1E10AE94C();
  __break(1u);
LABEL_94:
  sub_1E0FF0440(v22, &qword_1ECE89C90, &qword_1E10B44E8);
  v145 = 0;
  v144 = 31;
  result = sub_1E10AE6FC();
  __break(1u);
  return result;
}

uint64_t sub_1E1031EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3[5];
  v8[4] = v3[4];
  v8[5] = v4;
  v8[6] = v3[6];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = v3[3];
  v8[2] = v3[2];
  v8[3] = v6;
  return sub_1E1046910(a1, v8, a2);
}

unint64_t sub_1E1031F0C()
{
  result = qword_1ECE89C88;
  if (!qword_1ECE89C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89C88);
  }

  return result;
}

uint64_t sub_1E1031F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1031FC4(uint64_t a1)
{
  v2 = type metadata accessor for EventAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1032074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E10320BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents15VenueAttributesV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1E103218C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1E10321D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E103225C()
{
  result = qword_1ECE89CA0;
  if (!qword_1ECE89CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CA0);
  }

  return result;
}

unint64_t sub_1E10322DC()
{
  result = qword_1ECE89CA8;
  if (!qword_1ECE89CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CA8);
  }

  return result;
}

unint64_t sub_1E1032330()
{
  result = qword_1ECE89CB0;
  if (!qword_1ECE89CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CB0);
  }

  return result;
}

unint64_t sub_1E1032388()
{
  result = qword_1ECE89CB8;
  if (!qword_1ECE89CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CB8);
  }

  return result;
}

uint64_t sub_1E1032408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1032444()
{
  result = qword_1ECE89CC0;
  if (!qword_1ECE89CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CC0);
  }

  return result;
}

unint64_t sub_1E1032498()
{
  result = qword_1ECE89CC8;
  if (!qword_1ECE89CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CC8);
  }

  return result;
}

double sub_1E10324EC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CD0, &qword_1E10B4858);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103269C();
  sub_1E10AEA3C();
  v13[15] = 0;
  sub_1E10AE7DC();
  v11 = v10;
  v13[14] = 1;
  sub_1E10AE7DC();
  (*(v3 + 8))(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1E103269C()
{
  result = qword_1ECE89CD8;
  if (!qword_1ECE89CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CD8);
  }

  return result;
}

uint64_t sub_1E10326F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7300455 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E1032808()
{
  v0 = sub_1E10AE74C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E1032854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CE8, &qword_1E10B4868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1033348();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  LOBYTE(v35) = 0;
  sub_1E103339C();
  sub_1E10AE7AC();
  v34 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
  LOBYTE(v35) = 1;
  sub_1E1033454();
  sub_1E10AE7AC();
  v33 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
  LOBYTE(v35) = 2;
  sub_1E103350C();
  sub_1E10AE7FC();
  v32 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
  LOBYTE(v35) = 3;
  sub_1E10335C4();
  sub_1E10AE7AC();
  v31 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
  LOBYTE(v35) = 4;
  sub_1E103367C();
  sub_1E10AE7AC();
  v30 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
  LOBYTE(v35) = 5;
  sub_1E1033734();
  sub_1E10AE7AC();
  v29 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
  LOBYTE(v35) = 6;
  sub_1E10337EC();
  sub_1E10AE7AC();
  v28 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
  LOBYTE(v35) = 7;
  sub_1E10338A4();
  sub_1E10AE7AC();
  v27 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
  LOBYTE(v35) = 8;
  sub_1E103395C();
  sub_1E10AE7AC();
  v13 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
  LOBYTE(v35) = 9;
  sub_1E1033A14();
  sub_1E10AE7AC();
  v26 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
  LOBYTE(v35) = 10;
  sub_1E1033ACC();
  sub_1E10AE7AC();
  v25 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
  LOBYTE(v35) = 11;
  sub_1E1033B84();
  sub_1E10AE7AC();
  v24 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
  v43 = 12;
  sub_1E1033C3C();
  sub_1E10AE7AC();
  (*(v6 + 8))(v11, v5);
  v23 = v44;
  *&v35 = v34;
  v14 = v33;
  *(&v35 + 1) = v33;
  v15 = v32;
  *&v36 = v32;
  v16 = v31;
  *(&v36 + 1) = v31;
  v17 = v30;
  *&v37 = v30;
  v18 = v29;
  *(&v37 + 1) = v29;
  *&v38 = v28;
  *(&v38 + 1) = v27;
  *&v39 = v13;
  *(&v39 + 1) = v26;
  *&v40 = v25;
  *(&v40 + 1) = v24;
  v41 = v44;
  sub_1E1033CF4(&v35, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v34;
  v42[1] = v14;
  v42[2] = v15;
  v42[3] = v16;
  v42[4] = v17;
  v42[5] = v18;
  v42[6] = v28;
  v42[7] = v27;
  v42[8] = v13;
  v42[9] = v26;
  v42[10] = v25;
  v42[11] = v24;
  v42[12] = v23;
  result = sub_1E1033D2C(v42);
  v20 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v20;
  *(a2 + 96) = v41;
  v21 = v36;
  *a2 = v35;
  *(a2 + 16) = v21;
  v22 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_1E1033348()
{
  result = qword_1ECE89CF0;
  if (!qword_1ECE89CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CF0);
  }

  return result;
}

unint64_t sub_1E103339C()
{
  result = qword_1ECE89D00;
  if (!qword_1ECE89D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89CF8, &qword_1E10B4870);
    sub_1E0FEDEAC(&qword_1ECE89D08, &qword_1ECE89708, &qword_1E10B31B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D00);
  }

  return result;
}

unint64_t sub_1E1033454()
{
  result = qword_1ECE89D18;
  if (!qword_1ECE89D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E0FEDEAC(&qword_1ECE89D20, &unk_1ECE8B2A0, &qword_1E10B3B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D18);
  }

  return result;
}

unint64_t sub_1E103350C()
{
  result = qword_1ECE89D30;
  if (!qword_1ECE89D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E0FEDEAC(&qword_1ECE89D38, &qword_1ECE89C78, &qword_1E10B6BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D30);
  }

  return result;
}

unint64_t sub_1E10335C4()
{
  result = qword_1ECE89D48;
  if (!qword_1ECE89D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E0FEDEAC(&qword_1ECE89D50, &qword_1ECE89D58, &qword_1E10B4890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D48);
  }

  return result;
}

unint64_t sub_1E103367C()
{
  result = qword_1ECE89D68;
  if (!qword_1ECE89D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E0FEDEAC(&qword_1ECE89D70, &qword_1ECE89D78, &qword_1E10B6B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D68);
  }

  return result;
}

unint64_t sub_1E1033734()
{
  result = qword_1ECE89D88;
  if (!qword_1ECE89D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E0FEDEAC(&qword_1ECE89D90, &qword_1ECE89D98, &qword_1E10B48A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D88);
  }

  return result;
}

unint64_t sub_1E10337EC()
{
  result = qword_1ECE89DA8;
  if (!qword_1ECE89DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E0FEDEAC(&qword_1ECE89DB0, &qword_1ECE89DB8, &qword_1E10B6B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DA8);
  }

  return result;
}

unint64_t sub_1E10338A4()
{
  result = qword_1ECE89DC8;
  if (!qword_1ECE89DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E0FEDEAC(&qword_1ECE89DD0, &qword_1ECE89DD8, &qword_1E10B48C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DC8);
  }

  return result;
}

unint64_t sub_1E103395C()
{
  result = qword_1ECE89DE8;
  if (!qword_1ECE89DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E0FEDEAC(&qword_1ECE89DF0, &qword_1ECE89DF8, &unk_1E10B6AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DE8);
  }

  return result;
}

unint64_t sub_1E1033A14()
{
  result = qword_1ECE89E08;
  if (!qword_1ECE89E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E0FEDEAC(&qword_1ECE89E10, &qword_1ECE89E18, &qword_1E10B6B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E08);
  }

  return result;
}

unint64_t sub_1E1033ACC()
{
  result = qword_1ECE89E28;
  if (!qword_1ECE89E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E0FEDEAC(&qword_1ECE89E30, &qword_1ECE89E38, &qword_1E10B6B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E28);
  }

  return result;
}

unint64_t sub_1E1033B84()
{
  result = qword_1ECE89E48;
  if (!qword_1ECE89E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E0FEDEAC(&qword_1ECE89E50, &unk_1ECE8B2B0, &qword_1E10B6B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E48);
  }

  return result;
}

unint64_t sub_1E1033C3C()
{
  result = qword_1ECE89E60;
  if (!qword_1ECE89E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E0FEDEAC(&qword_1ECE89E68, &qword_1ECE89E70, &qword_1E10B6B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E60);
  }

  return result;
}

unint64_t sub_1E1033D5C()
{
  result = qword_1ECE89E80;
  if (!qword_1ECE89E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89CF8, &qword_1E10B4870);
    sub_1E0FEDEAC(&qword_1ECE89E88, &qword_1ECE89708, &qword_1E10B31B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E80);
  }

  return result;
}

unint64_t sub_1E1033E14()
{
  result = qword_1ECE89E90;
  if (!qword_1ECE89E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E0FEDEAC(&qword_1ECE89E98, &unk_1ECE8B2A0, &qword_1E10B3B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E90);
  }

  return result;
}

unint64_t sub_1E1033ECC()
{
  result = qword_1ECE89EA0;
  if (!qword_1ECE89EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E0FEDEAC(&qword_1ECE89EA8, &qword_1ECE89C78, &qword_1E10B6BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EA0);
  }

  return result;
}

unint64_t sub_1E1033F84()
{
  result = qword_1ECE89EB0;
  if (!qword_1ECE89EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E0FEDEAC(&qword_1ECE89EB8, &qword_1ECE89D58, &qword_1E10B4890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EB0);
  }

  return result;
}

unint64_t sub_1E103403C()
{
  result = qword_1ECE89EC0;
  if (!qword_1ECE89EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E0FEDEAC(&qword_1ECE89EC8, &qword_1ECE89D78, &qword_1E10B6B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EC0);
  }

  return result;
}

unint64_t sub_1E10340F4()
{
  result = qword_1ECE89ED0;
  if (!qword_1ECE89ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E0FEDEAC(&qword_1ECE89ED8, &qword_1ECE89D98, &qword_1E10B48A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89ED0);
  }

  return result;
}

unint64_t sub_1E10341AC()
{
  result = qword_1ECE89EE0;
  if (!qword_1ECE89EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E0FEDEAC(&qword_1ECE89EE8, &qword_1ECE89DB8, &qword_1E10B6B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EE0);
  }

  return result;
}

unint64_t sub_1E1034264()
{
  result = qword_1ECE89EF0;
  if (!qword_1ECE89EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E0FEDEAC(&qword_1ECE89EF8, &qword_1ECE89DD8, &qword_1E10B48C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EF0);
  }

  return result;
}

unint64_t sub_1E103431C()
{
  result = qword_1ECE89F00;
  if (!qword_1ECE89F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E0FEDEAC(&qword_1ECE89F08, &qword_1ECE89DF8, &unk_1E10B6AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F00);
  }

  return result;
}