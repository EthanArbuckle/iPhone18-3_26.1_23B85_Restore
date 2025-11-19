uint64_t sub_26A929950()
{
  result = sub_26A930ADC();
  qword_2803D3418 = result;
  return result;
}

uint64_t static ProtoVisualResponseProvider.setPatternId(_:forViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2803D3200 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = qword_2803D3418;
  sub_26A92DBC0(a1, a2, a3, a4);
  qword_2803D3418 = v9;
  return swift_endAccess();
}

uint64_t static ProtoVisualResponseProvider.preWarm(using:)(void *a1)
{
  v50 = a1;
  v1 = sub_26A930A0C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v55 = v3;
  v56 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v54 = v7 - v6;
  OUTLINED_FUNCTION_11();
  v8 = sub_26A930A3C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v52 = v10;
  v53 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v51 = v14 - v13;
  OUTLINED_FUNCTION_11();
  v48 = sub_26A930A1C();
  v15 = OUTLINED_FUNCTION_0(v48);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v49 = sub_26A9309CC();
  v23 = OUTLINED_FUNCTION_0(v49);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v29 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v31 = v30;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v32 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v33 = v48;
  (*(v17 + 104))(v22, *MEMORY[0x277D851C0], v48);
  v34 = sub_26A930BFC();
  (*(v17 + 8))(v22, v33);
  v35 = v49;
  (*(v25 + 16))(&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v49);
  v36 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = v50;
  (*(v25 + 32))(v37 + v36, v29, v35);
  v61 = sub_26A92DDBC;
  v62 = v37;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
  v59 = v39;
  v60 = &block_descriptor;
  v40 = _Block_copy(aBlock);
  v41 = v38;
  v42 = v51;
  sub_26A930A2C();
  v57 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_8();
  sub_26A92E114(v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v45 = v54;
  v46 = v56;
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v42, v45, v40);
  _Block_release(v40);

  (*(v55 + 8))(v45, v46);
  (*(v52 + 8))(v42, v53);
  (*(v25 + 8))(v31, v35);
}

uint64_t sub_26A929F54(void *a1, uint64_t a2)
{
  v37 = a2;
  v39 = a1;
  v2 = sub_26A930A0C();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_26A930A3C();
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26A9309CC();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = sub_26A93097C();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3308, &qword_26A9315F8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26A931530;
  v50 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277D63858];
  v47 = 2434083;
  v48 = 0xE300000000000000;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v14 = sub_26A9308FC();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v15 = MEMORY[0x277D633D0];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_26A9308EC();
  sub_26A93098C();
  sub_26A92E114(&qword_2803D3248, MEMORY[0x277D637F0]);
  v46 = v9;
  v16 = sub_26A9308CC();
  v18 = v17;
  v19 = v16;
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v35 = sub_26A930BCC();
  v20 = v36;
  (*(v7 + 16))(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = v18;
  v23 = v7;
  v24 = v19;
  v25 = v39;
  *(v22 + 4) = v39;
  (*(v23 + 32))(&v22[v21], &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v51 = sub_26A92EA3C;
  v52 = v22;
  v47 = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_26A92EAB0;
  v50 = &block_descriptor_40;
  v26 = _Block_copy(&v47);
  v27 = v24;
  sub_26A92DF88(v24, v18);
  v28 = v25;

  v29 = v38;
  sub_26A930A2C();
  v47 = MEMORY[0x277D84F90];
  sub_26A92E114(&qword_2803D3228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v30 = v41;
  v31 = v44;
  sub_26A930C7C();
  v32 = v35;
  MEMORY[0x26D665B20](0, v29, v30, v26);
  _Block_release(v26);

  sub_26A92E0AC(v27, v18);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v29, v42);
  return (*(v45 + 8))(v12, v46);
}

void sub_26A92A520(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(type metadata accessor for ProtoVisualResponseProvider()) init];
  v7 = ProtoVisualResponseProvider.view(for:mode:overload:)(a1, a2, 1);

  if (v7)
  {
    [v7 setHidden_];
    [a3 addSubview_];
    [v7 removeFromSuperview];
    sub_26A930C0C();
    if (qword_2803D3210 != -1)
    {
      swift_once();
    }

    sub_26A9309AC();
  }
}

id ProtoVisualResponseProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProtoVisualResponseProvider.view(for:mode:overload:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v3 = sub_26A930A5C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v34 = sub_26A9309CC();
  v14 = OUTLINED_FUNCTION_0(v34);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v23 = off_2803D3398;
  v22 = unk_2803D33A0;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v24 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  v32 = v22;
  v33 = v23;
  sub_26A9309AC();
  ProtoVisualResponseProvider.responseView(for:mode:)(v11, v29, v30, v31);
  (*(v6 + 32))(v13, v11, v3);
  v35[3] = v3;
  v35[4] = MEMORY[0x277D63B38];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(v6 + 16))(boxed_opaque_existential_1, v13, v3);
  v26 = objc_allocWithZone(sub_26A930A7C());
  v27 = sub_26A930A6C();
  (*(v6 + 8))(v13, v3);
  sub_26A930C0C();
  sub_26A9309AC();
  (*(v16 + 8))(v21, v34);
  return v27;
}

uint64_t sub_26A92A990(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void ProtoVisualResponseProvider.viewController(for:mode:)()
{
  v0 = sub_26A930B9C();
  v1 = 2;
  j__OUTLINED_FUNCTION_6_0(v0, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 70, "viewController(for:mode:)", 25, v1);
  OUTLINED_FUNCTION_10("Fatal error", "or:mode:)");
  __break(1u);
}

void (*ProtoVisualResponseProvider.responseView(for:mode:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v74 = a4;
  v72 = a1;
  v77 = sub_26A93097C();
  v6 = OUTLINED_FUNCTION_0(v77);
  v71 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v66 = v15;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v73 = v16;
  OUTLINED_FUNCTION_11();
  v79 = sub_26A9309CC();
  v17 = OUTLINED_FUNCTION_0(v79);
  v80 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3240, &qword_26A931558);
  v26 = OUTLINED_FUNCTION_9(v69);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v67 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  v68 = v31;
  v32 = off_2803D33B0;
  v33 = unk_2803D33B8;
  v78 = byte_2803D33C0;
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v34 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  OUTLINED_FUNCTION_15();
  sub_26A9309AC();
  v64 = v33;
  v65 = v32;
  v75 = v25;
  sub_26A9309BC();
  sub_26A930C1C();
  OUTLINED_FUNCTION_15();
  sub_26A9309AC();
  sub_26A92DF88(a2, a3);
  OUTLINED_FUNCTION_7();
  sub_26A92E114(v35, v36);
  v37 = v76;
  sub_26A9308DC();
  if (v37)
  {
    v38 = *(v80 + 8);
    v39 = v79;
    v38(v23, v79);
    v38(v75, v39);
  }

  else
  {
    sub_26A930C0C();
    OUTLINED_FUNCTION_15();
    sub_26A9309AC();
    v40 = *(v80 + 8);
    v80 += 8;
    v63 = v40;
    v40(v23, v79);
    v41 = v71;
    v62 = *(v71 + 32);
    v42 = v73;
    v76 = 0;
    v43 = v77;
    v62(v73, v14, v77);
    v44 = objc_allocWithZone(sub_26A930ACC());
    v45 = sub_26A930ABC();
    v61 = *(v41 + 16);
    v46 = v70;
    v61(v70, v42, v43);
    v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v74;
    *(v48 + 24) = v45;
    v62(v48 + v47, v46, v43);
    v49 = v45;
    sub_26A92EC64(sub_26A92DFE4, v48);

    v50 = v69;
    v51 = *(v69 + 48);
    v52 = v73;
    v61(v46, v73, v43);
    v53 = v49;
    v54 = v67;
    sub_26A930A4C();
    (*(v41 + 8))(v52, v43);
    *(v54 + v51) = v53;
    sub_26A930C0C();
    v55 = v75;
    sub_26A9309AC();
    v63(v55, v79);
    v56 = v68;
    sub_26A92DFFC(v54, v68);
    v38 = *(v56 + *(v50 + 48));
    v57 = sub_26A930A5C();
    OUTLINED_FUNCTION_9(v57);
    (*(v58 + 32))(v72, v56);
  }

  return v38;
}

uint64_t sub_26A92B0D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26A93097C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = a2;
  v12 = sub_26A930B7C();
  sub_26A92F990(v12, sub_26A92E938, v10, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift");
}

void ProtoVisualResponseProvider.viewController(for:mode:completion:)()
{
  v0 = sub_26A930B9C();
  v1 = 2;
  j__OUTLINED_FUNCTION_6_0(v0, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift", 49, 2, 134, "viewController(for:mode:completion:)", 36, v1);
  OUTLINED_FUNCTION_10("Fatal error", "or:mode:)");
  __break(1u);
}

uint64_t ProtoVisualResponseProvider.responseView(for:mode:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_26A930A0C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v42 = sub_26A930A3C();
  v14 = OUTLINED_FUNCTION_0(v42);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_26A930A1C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  (*(v25 + 104))(v30, *MEMORY[0x277D851C0], v22);
  v31 = sub_26A930BFC();
  (*(v25 + 8))(v30, v22);
  v32 = swift_allocObject();
  v32[2] = a1;
  v32[3] = a2;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = a5;
  v47 = sub_26A92E104;
  v48 = v32;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
  v45 = v33;
  v46 = &block_descriptor_9;
  v34 = _Block_copy(aBlock);
  sub_26A92DF88(a1, a2);

  sub_26A930A2C();
  OUTLINED_FUNCTION_8();
  sub_26A92E114(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v21, v13, v34);
  _Block_release(v34);

  (*(v43 + 8))(v13, v6);
  (*(v16 + 8))(v21, v42);
}

uint64_t sub_26A92B654(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v7 = sub_26A930A0C();
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v20 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26A930A3C();
  v19 = *(v21 - 8);
  v10 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = sub_26A9309CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v16 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  sub_26A92BAB8(a1, v24, v25, v26, a5);
  sub_26A930C0C();
  sub_26A9309AC();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_26A92BAB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a2;
  v45 = a5;
  v42 = a3;
  v43 = a4;
  v6 = sub_26A930A0C();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_26A930A3C();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26A9309CC();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v53);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_26A93097C();
  v44 = *(v57 - 8);
  v15 = *(v44 + 64);
  v16 = MEMORY[0x28223BE20](v57);
  v41 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v52 = v40 - v20;
  v21 = off_2803D3380;
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v22 = qword_2803D33E8;
  sub_26A9309BC();
  sub_26A930C1C();
  sub_26A9309AC();
  v40[1] = v21;
  sub_26A92DF88(a1, v54);
  sub_26A92E114(&qword_2803D3248, MEMORY[0x277D637F0]);
  v23 = v55;
  sub_26A9308DC();
  if (v23)
  {
    return (*(v11 + 8))(v14, v53);
  }

  sub_26A930C0C();
  sub_26A9309AC();
  (*(v11 + 8))(v14, v53);
  v25 = v44;
  v26 = *(v44 + 32);
  v27 = v52;
  v28 = v19;
  v29 = v57;
  v26(v52, v28, v57);
  sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  v55 = 0;
  v30 = sub_26A930BCC();
  v31 = v41;
  (*(v25 + 16))(v41, v27, v29);
  v32 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  v26((v33 + v32), v31, v29);
  v34 = (v33 + ((v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v45;
  *v34 = v43;
  v34[1] = v35;
  aBlock[4] = sub_26A92E774;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A92EAB0;
  aBlock[3] = &block_descriptor_25;
  v36 = _Block_copy(aBlock);

  v37 = v46;
  sub_26A930A2C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A92E114(&qword_2803D3228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A92DE7C();
  v38 = v48;
  v39 = v51;
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v37, v38, v36);
  _Block_release(v36);

  (*(v50 + 8))(v38, v39);
  (*(v47 + 8))(v37, v49);
  return (*(v25 + 8))(v52, v29);
}

uint64_t sub_26A92C0E8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v30 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F8, &qword_26A9315E8);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - v7;
  v9 = sub_26A930A5C();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26A93097C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(sub_26A930ACC());
  v17 = sub_26A930ABC();
  v18 = *(v13 + 16);
  v18(v15, a2, v12);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v17;
  (*(v13 + 32))(v20 + v19, v15, v12);
  v21 = v17;
  sub_26A92EC64(sub_26A92E808, v20);

  v18(v15, v30, v12);
  v22 = v21;
  v23 = v31;
  sub_26A930A4C();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3300, &qword_26A9315F0) + 48);
  v26 = v32;
  v25 = v33;
  (*(v32 + 16))(v8, v23, v33);
  *&v8[v24] = v22;
  swift_storeEnumTagMultiPayload();
  v27 = v22;
  v36(v8);

  sub_26A92E684(v8, &qword_2803D32F8, &qword_26A9315E8);
  return (*(v26 + 8))(v23, v25);
}

uint64_t sub_26A92C408(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26A93097C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v11 = a2;
  v12 = sub_26A930B7C();
  sub_26A92F990(v12, sub_26A92EAC0, v10, 0, "SnippetUI_Proto/ProtoVisualResponseProvider.swift");
}

unint64_t sub_26A92C58C()
{
  sub_26A930C9C();

  v0 = sub_26A930C2C();
  MEMORY[0x26D665A60](v0);

  MEMORY[0x26D665A60](0x3A6D6F696469202CLL, 0xE900000000000020);
  sub_26A930AAC();
  v1 = sub_26A930C4C();
  MEMORY[0x26D665A60](v1);

  MEMORY[0x26D665A60](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v2 = sub_26A93094C();
  MEMORY[0x26D665A60](v2);

  return 0xD000000000000017;
}

uint64_t sub_26A92C6A0(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F8, &qword_26A9315E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  *(&v11 - v7) = a3;
  swift_storeEnumTagMultiPayload();
  v9 = a3;
  a1(v8);
  return sub_26A92E684(v8, &qword_2803D32F8, &qword_26A9315E8);
}

Swift::Void __swiftcall ProtoVisualResponseProvider.reset()()
{
  v0 = [objc_allocWithZone(sub_26A930A9C()) init];
  sub_26A930A8C();
}

void static ProtoVisualResponseProvider.transform(model:mode:currentIdiom:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a4;
  v142 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3250, &qword_26A931560);
  v7 = OUTLINED_FUNCTION_16(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v150 = v11;
  OUTLINED_FUNCTION_11();
  v157 = sub_26A9308BC();
  v12 = OUTLINED_FUNCTION_0(v157);
  v141 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - v17;
  v130 = sub_26A93087C();
  v19 = OUTLINED_FUNCTION_0(v130);
  v147 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v129 = (v24 - v23);
  OUTLINED_FUNCTION_11();
  v25 = sub_26A93088C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v33 = v32 - v31;
  v145 = sub_26A93093C();
  v34 = OUTLINED_FUNCTION_0(v145);
  v144 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v39 = MEMORY[0x28223BE20](v38);
  v146 = &v119 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17();
  v149 = v42;
  OUTLINED_FUNCTION_11();
  v43 = sub_26A93097C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v127 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v48);
  v50 = &v119 - v49;
  sub_26A92DF88(a1, a2);
  OUTLINED_FUNCTION_7();
  v53 = sub_26A92E114(v51, v52);
  v54 = v148;
  sub_26A9308DC();
  if (!v54)
  {
    v121 = v53;
    v124 = 0;
    v123 = v43;
    v122 = v50;
    v140 = *(sub_26A93096C() + 16);
    v55 = v144;
    v148 = v144 + 16;
    v138 = v28 + 8;
    v128 = v147 + 8;
    v132 = (v144 + 32);
    v143 = v144 + 8;
    v135 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18();
    v139 = v56;
LABEL_3:
    OUTLINED_FUNCTION_19();
LABEL_4:
    if (v58 != v140)
    {
      if (v58 < *(v57 + 16))
      {
        v59 = *(v55 + 80);
        OUTLINED_FUNCTION_20();
        v137 = v60;
        v136 = *(v55 + 72);
        v63 = v62;
        (*(v55 + 16))(v149, v61 + v60 + v136 * v62, v43);
        v147 = v63 + 1;
        v50 = sub_26A93091C();
        sub_26A930C3C();
        v64 = 0;
        v65 = *(v50 + 2);
        while (v65 != v64)
        {
          v43 = v64 + 1;
          v66 = &v50[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v64];
          sub_26A92E114(&qword_2803D3258, MEMORY[0x277D62FA0]);
          v67 = sub_26A930AEC();
          v64 = v43;
          if (v67)
          {

            OUTLINED_FUNCTION_12(&v158);
            v68(v33, v25);
            v50 = v129;
            sub_26A930C5C();
            v69 = v149;
            v43 = sub_26A93092C();
            OUTLINED_FUNCTION_12(v152);
            v70(v50, v130);
            if (v43)
            {
              v73 = *v132;
              v43 = v125;
              (*v132)(v125, v69, v145);
              v74 = v135;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v155[0] = v74;
              v120 = v73;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_26A92E1A8(0, *(v74 + 16) + 1, 1);
                v74 = *&v155[0];
              }

              v77 = *(v74 + 16);
              v76 = *(v74 + 24);
              v50 = (v77 + 1);
              if (v77 >= v76 >> 1)
              {
                sub_26A92E1A8(v76 > 1, v77 + 1, 1);
                v74 = *&v155[0];
              }

              *(v74 + 16) = v50;
              v135 = v74;
              OUTLINED_FUNCTION_18();
              v120();
              v55 = v144;
              goto LABEL_3;
            }

LABEL_12:
            OUTLINED_FUNCTION_18();
            v55 = v144;
            OUTLINED_FUNCTION_19();
            OUTLINED_FUNCTION_12(&v159);
            v72(v149, v43);
            v57 = v139;
            v58 = v147;
            goto LABEL_4;
          }
        }

        OUTLINED_FUNCTION_12(&v158);
        v71(v33, v25);
        goto LABEL_12;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

    v140 = *(v135 + 16);
    if (v140)
    {
      v78 = 0;
      v79 = *(v55 + 80);
      OUTLINED_FUNCTION_20();
      v138 = v81;
      v139 = v80 + v81;
      v82 = (v50 + 8);
      v83 = MEMORY[0x277D84F90];
      v84 = v157;
      while (v78 < *(v80 + 16))
      {
        v149 = v83;
        v85 = *(v55 + 72);
        v147 = v78;
        v142 = v85;
        v141 = *(v55 + 16);
        (v141)(v146, v139 + v85 * v78, v43);
        v86 = sub_26A93090C();
        v87 = v86;
        v88 = *(v86 + 16);
        if (v88)
        {
          v89 = 0;
          v90 = v86 + 32;
          while (v89 < *(v87 + 16))
          {
            sub_26A92E1C8(v90, &v151);
            __swift_project_boxed_opaque_existential_1(&v151, v153);
            v84 = v157;
            v43 = v150;
            sub_26A93099C();
            sub_26A9308AC();
            (*v82)(v18, v84);
            v91 = sub_26A93089C();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v91);
            sub_26A92E684(v43, &qword_2803D3250, &qword_26A931560);
            if (EnumTagSinglePayload != 1)
            {

              sub_26A92E3BC(&v151, v155);
              goto LABEL_28;
            }

            ++v89;
            __swift_destroy_boxed_opaque_existential_1(&v151);
            v90 += 40;
            if (v88 == v89)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_26:

        v156 = 0;
        memset(v155, 0, sizeof(v155));
LABEL_28:
        sub_26A92E2E4(v155, &v151);
        v93 = v133;
        if (v153)
        {
          v43 = v154;
          __swift_project_boxed_opaque_existential_1(&v151, v153);
          sub_26A93099C();
          v94 = v134;
          sub_26A9308AC();
          (*v82)(v93, v84);
          sub_26A92E684(v94, &qword_2803D3250, &qword_26A931560);
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }

        else
        {
          sub_26A92E684(&v151, &qword_2803D3260, &qword_26A931568);
          v95 = sub_26A93089C();
          v96 = v134;
          __swift_storeEnumTagSinglePayload(v134, 1, 1, v95);
          sub_26A92E684(v96, &qword_2803D3250, &qword_26A931560);
        }

        OUTLINED_FUNCTION_18();
        v141();
        v83 = v149;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_26A92D7D8(0, *(v83 + 16) + 1, 1, v83);
        }

        v98 = *(v83 + 16);
        v97 = *(v83 + 24);
        if (v98 >= v97 >> 1)
        {
          v83 = sub_26A92D7D8(v97 > 1, v98 + 1, 1, v83);
        }

        v78 = v147 + 1;
        sub_26A92E684(v155, &qword_2803D3260, &qword_26A931568);
        OUTLINED_FUNCTION_12(&v159);
        v99(v146, v43);
        *(v83 + 16) = v98 + 1;
        OUTLINED_FUNCTION_12(v155 + 8);
        v100();
        v55 = v144;
        v80 = v135;
        if (v78 == v140)
        {

          goto LABEL_38;
        }
      }

      goto LABEL_53;
    }

    v83 = MEMORY[0x277D84F90];
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3268, &qword_26A931570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A931540;
    *(inited + 32) = 0;
    v102 = *(v83 + 16);
    v103 = v83;
    v104 = v123;
    v105 = v127;
    v106 = v122;
    v107 = MEMORY[0x277D84F90];
    v108 = v126;
    if (v102)
    {
      sub_26A93095C();
      v109 = v124;
      v110 = sub_26A9308CC();
      v124 = v109;
      if (v109)
      {
        v112 = *(v105 + 8);
        v112(v108, v104);
        v112(v106, v104);

        *(inited + 16) = 0;
        swift_setDeallocating();
        sub_26A92D778();
        return;
      }

      v114 = v110;
      v115 = v111;
      v149 = v103;
      sub_26A92E37C(0, &unk_2803D3270, 0x277D63FB8);
      (*(v105 + 8))(v108, v104);
      v113 = sub_26A92D658(v114, v115, 1);
    }

    else
    {
      v149 = v103;
      v113 = 0;
    }

    v116 = 0;
    *(inited + 40) = v113;
    *&v155[0] = v107;
    while (v116 != 2)
    {
      v117 = *(inited + 8 * v116++ + 32);
      if (v117)
      {
        v118 = v117;
        MEMORY[0x26D665A80]();
        if (*((*&v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A930B5C();
        }

        sub_26A930B6C();
      }
    }

    swift_setDeallocating();
    sub_26A92D778();
    (*(v105 + 8))(v106, v104);
  }
}

id sub_26A92D658(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_26A93085C();
  v8 = [v6 initWithModel:v7 responseType:a3];

  sub_26A92E0AC(a1, a2);
  return v8;
}

id ProtoVisualResponseProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProtoVisualResponseProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A92D778()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32E8, &qword_26A9315D8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

size_t sub_26A92D7D8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_26A92D8C4(v8, v7);
  v10 = *(sub_26A93093C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26A92D9C0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_26A92D8C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F0, &qword_26A9315E0);
  v4 = *(sub_26A93093C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A92D9C0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_26A93093C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_26A93093C();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_26A92DA94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26A930D1C();
  sub_26A930B0C();
  v6 = sub_26A930D2C();

  return sub_26A92DB0C(a1, a2, v6);
}

unint64_t sub_26A92DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26A930CEC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26A92DBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A92DA94(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803D3310, &qword_26A931600);
  if ((sub_26A930CCC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_26A92DA94(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_26A930CFC();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_26A92E15C(v13, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_26A92DD14()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = OUTLINED_FUNCTION_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v8);
}

uint64_t sub_26A92DDBC()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_26A929F54(v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26A92DE7C()
{
  result = qword_2803D3238;
  if (!qword_2803D3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D3230, &qword_26A931550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D3238);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_26A92DF88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26A92DFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3240, &qword_26A931558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A92E06C()
{
  sub_26A92E0AC(v0[2], v0[3]);
  v1 = v0[6];

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E0AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26A92E114(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A92E15C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

size_t sub_26A92E1A8(size_t a1, int64_t a2, char a3)
{
  result = sub_26A92E484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26A92E1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26A92E2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3260, &qword_26A931568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A92E37C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26A92E3BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void type metadata accessor for VRXMode()
{
  if (!qword_2803D3280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2803D3280);
    }
  }
}

uint64_t sub_26A92E448()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

size_t sub_26A92E484(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D32F0, &qword_26A9315E0);
  v10 = *(sub_26A93093C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26A93093C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26A92D9C0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26A92E638()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E684(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26A92E6DC()
{
  v1 = sub_26A93097C();
  OUTLINED_FUNCTION_9(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A92E774()
{
  v1 = *(sub_26A93097C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_26A92C0E8(v3, v0 + v2, v5, v6);
}

uint64_t sub_26A92E820(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_26A93097C();
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_20();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return a1(v6, v7, v1 + v5);
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_26A93097C();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = OUTLINED_FUNCTION_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v8);
}

unint64_t sub_26A92E93C()
{
  v1 = sub_26A93097C();
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_20();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return sub_26A92C58C();
}

uint64_t sub_26A92E98C()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_26A92E0AC(*(v0 + 16), *(v0 + 24));

  v6 = OUTLINED_FUNCTION_14();
  v7(v6);
  v8 = OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v8);
}

void sub_26A92EA3C()
{
  v1 = sub_26A9309CC();
  OUTLINED_FUNCTION_16(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  sub_26A92A520(v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, 0xD000000000000084, a2 | 0x8000000000000000, v2, 49, 2);
}

uint64_t sub_26A92EC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A930A0C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26A930A3C();
  v12 = OUTLINED_FUNCTION_0(v23);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803D3208 != -1)
  {
    swift_once();
  }

  v22[1] = qword_2803D33E0;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  aBlock[4] = sub_26A93040C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A92EAB0;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  sub_26A930A2C();
  v24 = MEMORY[0x277D84F90];
  sub_26A93044C(&qword_2803D3228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3230, &qword_26A931550);
  sub_26A930494(&qword_2803D3238, &qword_2803D3230, &qword_26A931550);
  sub_26A930C7C();
  MEMORY[0x26D665B20](0, v18, v11, v20);
  _Block_release(v20);
  (*(v7 + 8))(v11, v4);
  (*(v14 + 8))(v18, v23);
}

uint64_t sub_26A92EF40()
{
  v8 = sub_26A930BBC();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_26A930BAC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_26A930A3C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_26A92E37C(0, &qword_2803D3220, 0x277D85C78);
  sub_26A930A2C();
  v9 = MEMORY[0x277D84F90];
  sub_26A93044C(&qword_2803D33F8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D3400, qword_26A931620);
  sub_26A930494(&qword_2803D3408, &qword_2803D3400, qword_26A931620);
  sub_26A930C7C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_26A930BEC();
  qword_2803D33E0 = result;
  return result;
}

void sub_26A92F1A0()
{
  OUTLINED_FUNCTION_3_0();
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  if (os_log_type_enabled(qword_2803D33E8, v2))
  {
    if (v0)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v29, qword_2803D3420);
      v30 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v30))
      {
        OUTLINED_FUNCTION_15_0();
        v31 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v31);
        v32 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v32, v33);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v34 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v34, v35);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2080;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_10_0(v36, v47, v51, v1, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83);
        v13 = v70;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v37, v38, v39, v40, v41, v42, v43, v44, v50, v53, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v5 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v5, qword_2803D3420);
      v6 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v6))
      {
        OUTLINED_FUNCTION_15_0();
        v7 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v7);
        v8 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v8, v9);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v10 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v10, v11);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2082;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_11_0(v12, v47, v51, v1, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83);
        v13 = v57;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v48, v52, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_20_0(&dword_26A928000, v22, v23, v28, v24, v25, v26, v27, v49);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        OUTLINED_FUNCTION_17_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_26A92F438(os_log_type_t a1, char a2)
{
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  if (os_log_type_enabled(qword_2803D33E8, a1))
  {
    if (a2)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v12 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v12, qword_2803D3420);
      log = sub_26A9309DC();
      if (os_log_type_enabled(log, a1))
      {
        v5 = OUTLINED_FUNCTION_15_0();
        v20 = OUTLINED_FUNCTION_13_0();
        v13 = OUTLINED_FUNCTION_30(4.8755e-34);
        sub_26A92FDA4(v13, v14, &v20);

        OUTLINED_FUNCTION_26();
        *(v5 + 22) = 2082;
        v15 = sub_26A930CAC();
        v17 = sub_26A92FDA4(v15, v16, &v20);

        *(v5 + 24) = v17;
        *(v5 + 32) = 2080;
        *(v5 + 34) = OUTLINED_FUNCTION_19_0("iOS does not support vending viewControllers. This is done to prevent clients from mistakenly believing they will show on lockscreen", log);
        v11 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v4 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v4, qword_2803D3420);
      log = sub_26A9309DC();
      if (os_log_type_enabled(log, a1))
      {
        v5 = OUTLINED_FUNCTION_15_0();
        v20 = OUTLINED_FUNCTION_13_0();
        v6 = OUTLINED_FUNCTION_30(4.8755e-34);
        sub_26A92FDA4(v6, v7, &v20);

        OUTLINED_FUNCTION_26();
        *(v5 + 22) = 2082;
        v8 = sub_26A930CAC();
        v10 = sub_26A92FDA4(v8, v9, &v20);

        *(v5 + 24) = v10;
        *(v5 + 32) = 2082;
        *(v5 + 34) = OUTLINED_FUNCTION_19_0("iOS does not support vending viewControllers. This is done to prevent clients from mistakenly believing they will show on lockscreen", log);
        v11 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        _os_log_impl(&dword_26A928000, loga, a1, v11, v5, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        return;
      }
    }
  }
}

void sub_26A92F704()
{
  OUTLINED_FUNCTION_3_0();
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  if (os_log_type_enabled(qword_2803D33E8, v2))
  {
    if (v0)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v29, qword_2803D3420);
      v30 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v30))
      {
        OUTLINED_FUNCTION_15_0();
        v31 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v31);
        v32 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v32, v33);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v34 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v34, v35);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2080;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_10_0(v36, v47, v51, v1, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83);
        v13 = v70;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v37, v38, v39, v40, v41, v42, v43, v44, v50, v53, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v5 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v5, qword_2803D3420);
      v6 = sub_26A9309DC();
      if (OUTLINED_FUNCTION_31(v6))
      {
        OUTLINED_FUNCTION_15_0();
        v7 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23(v7);
        v8 = OUTLINED_FUNCTION_4_0(4.8755e-34);
        OUTLINED_FUNCTION_12_0(v8, v9);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_2_0();
        *(v0 + 22) = 2082;
        v10 = OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_12_0(v10, v11);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 24) = v3;
        *(v0 + 32) = 2082;
        OUTLINED_FUNCTION_7_0();
        sub_26A930C9C();

        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_11_0(v12, v47, v51, v1, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83);
        v13 = v57;
        sub_26A930D0C();
        OUTLINED_FUNCTION_33();

        OUTLINED_FUNCTION_9_0(v14, v15, v16, v17, v18, v19, v20, v21, v48, v52, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84);
        OUTLINED_FUNCTION_16_0();
        *(v0 + 34) = v3;
        v28 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_14:
        OUTLINED_FUNCTION_20_0(&dword_26A928000, v22, v23, v28, v24, v25, v26, v27, v49);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        OUTLINED_FUNCTION_17_0();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_17_0();
}

void sub_26A92F990(os_log_type_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char a4, uint64_t a5)
{
  if (qword_2803D3210 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  if (os_log_type_enabled(qword_2803D33E8, a1))
  {
    if (a4)
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v34 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v34, qword_2803D3420);

      oslog = sub_26A9309DC();

      if (os_log_type_enabled(oslog, a1))
      {
        v58 = a2;
        v10 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_13_0();
        v35 = OUTLINED_FUNCTION_29(4.8755e-34);
        OUTLINED_FUNCTION_18_0(v35, v36, v37, v38, v39, v40, v41);
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_25();
        *(v10 + 22) = 2082;
        v42 = sub_26A930CAC();
        OUTLINED_FUNCTION_18_0(v42, v43, v44, v45, v46, v47, v48);
        v49 = OUTLINED_FUNCTION_21();
        *(v10 + 24) = a5;
        *(v10 + 32) = 2080;
        v50 = v58(v49);
        OUTLINED_FUNCTION_18_0(v50, v51, v52, v53, v54, v55, v56);
        OUTLINED_FUNCTION_21();
        *(v10 + 34) = a5;
        v33 = "%{public}s:%{public}lu [%{public}s] %s";
        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2803D3218 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v9 = sub_26A9309EC();
      OUTLINED_FUNCTION_27(v9, qword_2803D3420);

      oslog = sub_26A9309DC();

      if (os_log_type_enabled(oslog, a1))
      {
        v57 = a2;
        v10 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_13_0();
        v11 = OUTLINED_FUNCTION_29(4.8755e-34);
        OUTLINED_FUNCTION_18_0(v11, v12, v13, v14, v15, v16, v17);
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_25();
        *(v10 + 22) = 2082;
        v18 = sub_26A930CAC();
        OUTLINED_FUNCTION_18_0(v18, v19, v20, v21, v22, v23, v24);
        v25 = OUTLINED_FUNCTION_21();
        *(v10 + 24) = a5;
        *(v10 + 32) = 2082;
        v26 = v57(v25);
        OUTLINED_FUNCTION_18_0(v26, v27, v28, v29, v30, v31, v32);
        OUTLINED_FUNCTION_21();
        *(v10 + 34) = a5;
        v33 = "%{public}s:%{public}lu [%{public}s] %{public}s";
LABEL_13:
        _os_log_impl(&dword_26A928000, oslog, a1, v33, v10, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_14_0();

        return;
      }
    }
  }
}

uint64_t sub_26A92FC70()
{
  sub_26A92E37C(0, &qword_2803D3410, 0x277D86200);
  result = sub_26A930C6C();
  qword_2803D33E8 = result;
  return result;
}

uint64_t sub_26A92FCE0()
{
  v0 = sub_26A9309EC();
  __swift_allocate_value_buffer(v0, qword_2803D3420);
  __swift_project_value_buffer(v0, qword_2803D3420);
  if (qword_2803D3210 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D33E8;
  return sub_26A9309FC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26A92FDA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A92FE68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26A92FF68(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26A92FE68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26A92FFC4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26A930CBC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26A92FF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A92FFC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A930010(a1, a2);
  sub_26A930128(&unk_287B2C400);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26A930010(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26A930B2C())
  {
    result = sub_26A93020C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26A930C8C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26A930CBC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A930128(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26A93027C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26A93020C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D33F0, &qword_26A931618);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26A93027C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D33F0, &qword_26A931618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26A9303D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26A93040C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A93044C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A930494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_0()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_4_0(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_26A930CAC();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_26A92FDA4(a20, a21, (v21 - 88));
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, unint64_t a13, uint64_t a14)
{
  a13 = v14 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a14 = a1;

  return MEMORY[0x2821FE9C8](a4, &a12, &a9);
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  a13 = v14 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a14 = a1;

  return MEMORY[0x2821FE9C8](a4, &a8, &a5);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, unint64_t a2)
{

  return sub_26A92FDA4(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D666060);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_0()
{
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_26A92FDA4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_19_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26A92FDA4(0xD000000000000084, (a1 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_20_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v9, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_21()
{
}

void OUTLINED_FUNCTION_25()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2050;
  *(v1 + 14) = v2;
}

void OUTLINED_FUNCTION_26()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2050;
  *(v0 + 14) = v1;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_29(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

uint64_t OUTLINED_FUNCTION_30(float a1)
{
  *v1 = a1;

  return sub_26A930CAC();
}

BOOL OUTLINED_FUNCTION_31(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_32()
{
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x26D665A60);
}