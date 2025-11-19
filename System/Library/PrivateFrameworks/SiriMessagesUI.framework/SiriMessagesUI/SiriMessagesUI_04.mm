uint64_t sub_268016080(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (sub_268016374(&unk_2802436F0))
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v8 = sub_26804CD4C();
    __swift_project_value_buffer(v8, qword_2802487E0);
    v9 = sub_26804CD3C();
    v10 = sub_26804E88C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_7_5();
      *v11 = 0;
      _os_log_impl(&dword_267FA7000, v9, v10, "#SnippetUI+Utilities direct invocation already performed, ignoring", v11, 2u);
      MEMORY[0x26D60E1E0](v11, -1, -1);
    }

    v12 = 0;
  }

  else
  {
    v13 = sub_268016374(&unk_2802436F0);
    sub_26801643C((v13 & 1) == 0, &unk_2802436F0);
    if (a4)
    {
      v14 = a4;
      sub_26804E5BC();
    }

    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v15 = sub_26804CD4C();
    __swift_project_value_buffer(v15, qword_2802487E0);

    v16 = sub_26804CD3C();
    v17 = sub_26804E88C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_267FAE0C4(a1, a2, &v23);
      _os_log_impl(&dword_267FA7000, v16, v17, "#SnippetUI+Utilities submitting direct invocation: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D60E1E0](v19, -1, -1);
      MEMORY[0x26D60E1E0](v18, -1, -1);
    }

    sub_268016A24();

    v20 = sub_2680166BC();
    sub_268016DC4(a3, v20);
    v21 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    [v21 setEyesFree_];
    v9 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v21 payload:v20];
    v12 = sub_26804E61C();
  }

  return v12 & 1;
}

uint64_t sub_268016374(const void *a1)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, a1);
  swift_endAccess();
  if (v3)
  {
    sub_26804EA9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_2680169BC(v8);
    return 0;
  }

  return result;
}

void sub_26801643C(uint64_t a1, const void *a2)
{
  v4 = sub_26804E7DC();
  swift_beginAccess();
  objc_setAssociatedObject(v2, a2, v4, 0x303);
  swift_endAccess();
}

uint64_t sub_2680164A8()
{
  v0 = sub_26804C8EC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D5D7D8], v0);
  v6 = MEMORY[0x277D5D7E8];
  sub_268016E38(&qword_2802436F8, MEMORY[0x277D5D7E8]);
  sub_268016E38(&qword_280243700, v6);
  sub_26804C82C();
  (*(v2 + 8))(v5, v0);
  return sub_26804E52C();
}

id sub_2680166BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26804E6BC();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_268016730(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26804E4BC();
  v7 = MEMORY[0x277D837D0];
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    v19[0] = sub_26804E6CC();
    v19[1] = v9;
    sub_26804EAFC();
    *(inited + 96) = v7;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
    sub_26804E65C();
  }

  *&v17 = 0xD000000000000022;
  *(&v17 + 1) = 0x8000000268056D90;
  OUTLINED_FUNCTION_9_2();
  v18 = MEMORY[0x277D839B0];
  LOBYTE(v17) = a1 & 1;
  sub_267FD9070(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_16(isUniquelyReferenced_nonNull_native, v11);
  sub_2680079E0(v19);
  strcpy(&v17, "keyboardLocale");
  HIBYTE(v17) = -18;
  OUTLINED_FUNCTION_9_2();
  v18 = v7;
  *&v17 = a2;
  *(&v17 + 1) = a3;
  sub_267FD9070(&v17, v16);

  v12 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_16(v12, v13);
  sub_2680079E0(v19);
  return v15;
}

uint64_t sub_2680168D4()
{
  v0 = sub_26804E4BC();
  if (!v0)
  {
    v0 = sub_26804E65C();
  }

  v1 = v0;
  v3 = sub_26804E6CC();
  sub_26804EAFC();
  sub_268004388(v4, v1, &v5);

  sub_2680079E0(v4);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2680169BC(&v5);
  }

  return 0;
}

uint64_t sub_2680169BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268016A24()
{
  result = qword_280244550;
  if (!qword_280244550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280244550);
  }

  return result;
}

_OWORD *sub_268016A68(_OWORD *a1, uint64_t a2)
{
  sub_2680075BC(a2);
  OUTLINED_FUNCTION_6_8();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243708);
  if ((sub_26804EBDC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_2680075BC(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    result = sub_26804ECEC();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v2;
  if (v9)
  {
    v13 = (v12[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);

    return sub_267FD9070(a1, v13);
  }

  else
  {
    sub_268007984(a2, v15);
    return sub_268016D00(v8, v15, a1, v12);
  }
}

uint64_t sub_268016BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_268007544(a2, a3);
  OUTLINED_FUNCTION_6_8();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  if ((sub_26804EBDC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_268007544(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_26804ECEC();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;
  }

  else
  {
    sub_268016D7C(v13, a2, a3, a1, v17);
  }
}

_OWORD *sub_268016D00(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_267FD9070(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_268016D7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_268016DC4(uint64_t a1, void *a2)
{
  v3 = sub_26804E63C();
  [a2 setUserData_];
}

uint64_t sub_268016E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268016ECC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 textInputMode];

  if (v1)
  {
    v2 = [v1 primaryLanguage];

    if (v2)
    {
      sub_26804E6CC();
    }
  }

  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_268016F7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = sub_26804BFCC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v32 = v8 - v7;
  sub_26804C01C();
  OUTLINED_FUNCTION_1();
  v34 = v10;
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v31 = v12 - v11;
  sub_26804E62C();
  sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
  OUTLINED_FUNCTION_20();
  *a2 = sub_26804D17C();
  a2[1] = v13;
  sub_26804E4FC();
  sub_26801999C(&qword_2802412F0, MEMORY[0x277D63F18]);
  OUTLINED_FUNCTION_20();
  a2[2] = sub_26804D17C();
  a2[3] = v14;
  v15 = type metadata accessor for PayloadTextInputView();
  v16 = a2 + v15[9];
  *v16 = sub_26804CE8C() & 1;
  *(v16 + 1) = v17;
  v16[16] = v18 & 1;
  v19 = v15[6];
  v20 = sub_26804C66C();
  OUTLINED_FUNCTION_11();
  v22 = v21;
  v30 = a1;
  (*(v21 + 16))(a2 + v19, a1, v20);
  sub_26804E6CC();
  sub_26804C65C();
  sub_26804C62C();
  v23 = sub_26804C63C();
  v24 = MEMORY[0x277D63218];
  if ((v23 & 1) == 0)
  {
    v24 = MEMORY[0x277D63210];
  }

  (*(v5 + 104))(v32, *v24, v33);
  sub_26804C00C();
  (*(v34 + 32))(a2 + v15[7], v31, v35);
  v25 = sub_26804C65C();
  v27 = v26;
  result = (*(v22 + 8))(v30, v20);
  v29 = (a2 + v15[8]);
  *v29 = v25;
  v29[1] = v27;
  v29[2] = 0;
  return result;
}

uint64_t sub_2680172C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26804D3DC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243730);
  return sub_268017318(v1, a1 + *(v3 + 44));
}

uint64_t sub_268017318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for PayloadTextInputView();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v77 = v5;
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26804C01C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26804E29C();
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243738);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v60 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243740);
  MEMORY[0x28223BE20](v67);
  v68 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243748);
  v71 = *(v16 - 8);
  v72 = v16;
  MEMORY[0x28223BE20](v16);
  v78 = (&v60 - v17);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243750);
  MEMORY[0x28223BE20](v70);
  v74 = &v60 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243758);
  MEMORY[0x28223BE20](v73);
  v75 = &v60 - v19;
  (*(v8 + 16))(v10, a1 + *(v3 + 28), v7);
  v79 = v3;
  if (sub_26804C64C())
  {
    sub_26804E62C();
    sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
    v20 = sub_26804D14C();
    swift_getKeyPath();
    sub_26804D16C();
  }

  sub_26804E28C();
  sub_2680192D4(a1, v6);
  v62 = *(v4 + 80);
  v21 = (v62 + 16) & ~v62;
  v61 = v21;
  v22 = swift_allocObject();
  v63 = type metadata accessor for PayloadTextInputView;
  sub_268019A48(v6, v22 + v21, type metadata accessor for PayloadTextInputView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243760);
  sub_26801999C(&qword_280243768, MEMORY[0x277D63B88]);
  sub_2680193B4();
  v23 = v64;
  sub_26804D9CC();

  v69[1](v13, v11);
  v24 = sub_26804D80C();
  sub_26804CE1C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v68;
  (*(v65 + 32))(v68, v23, v66);
  v34 = v33 + *(v67 + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  v35 = a1 + *(v79 + 36);
  LOBYTE(v23) = *v35;
  v79 = a1;
  v36 = *(v35 + 8);
  v69 = v6;
  v37 = *(v35 + 16);
  LOBYTE(v80) = v23;
  v81 = v36;
  LOBYTE(v82) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE4C();
  sub_268019604();
  sub_26804DBAC();
  v38 = v61;

  sub_267FB7778(v33);
  LOBYTE(v80) = v23;
  v81 = v36;
  LOBYTE(v82) = v37;
  v39 = v69;
  sub_26804CE2C();
  LOBYTE(v36) = v83;
  sub_2680192D4(v79, v39);
  v40 = swift_allocObject();
  sub_268019A48(v39, v40 + v38, v63);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_26801971C;
  *(v41 + 24) = v40;
  v42 = v74;
  (*(v71 + 32))(v74, v78, v72);
  v43 = &v42[*(v70 + 36)];
  *v43 = v36;
  v44 = v79;
  *(v43 + 1) = sub_268019774;
  *(v43 + 2) = v41;
  if (*v44)
  {
    v45 = *v44;
    v46 = sub_26804E5AC();

    sub_2680192D4(v44, v39);
    v47 = swift_allocObject();
    v78 = type metadata accessor for PayloadTextInputView;
    sub_268019A48(v39, v47 + v38, type metadata accessor for PayloadTextInputView);
    v48 = v42;
    v49 = v75;
    sub_267FDBADC(v48, v75, &qword_280243750);
    v50 = v73;
    *(v49 + *(v73 + 52)) = v46;
    v51 = (v49 + *(v50 + 56));
    *v51 = sub_2680197A0;
    v51[1] = v47;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437B0);
    v53 = v45;
    v54 = v39;
    v55 = v76;
    sub_26804E53C();

    sub_2680192D4(v44, v54);
    v56 = swift_allocObject();
    sub_268019A48(v54, v56 + v38, v78);
    v57 = swift_allocObject();
    *(v57 + 16) = sub_268019944;
    *(v57 + 24) = v56;
    result = sub_267FDBADC(v49, v55, &qword_280243758);
    v59 = (v55 + *(v52 + 56));
    *v59 = sub_267FC1310;
    v59[1] = v57;
  }

  else
  {
    sub_26804E62C();
    sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_268017D34@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v68 = sub_26804D11C();
  MEMORY[0x28223BE20](v68);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242860);
  MEMORY[0x28223BE20](v69);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437A0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243790);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243780);
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C38);
  (*(*(v19 - 8) + 16))(v12, a1, v19);
  *&v12[*(v10 + 44)] = 256;
  v20 = sub_26804D79C();
  if (*a2)
  {
    v21 = v20;
    v22 = *a2;
    v23 = sub_26804E50C();

    if (v23)
    {
      v24 = v22;
      sub_26804E51C();
    }

    sub_26804CE1C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_267FDBADC(v12, v15, &qword_2802437A0);
    v33 = &v15[*(v13 + 36)];
    *v33 = v21;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    v34 = sub_26804D80C();
    sub_26804CE1C();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_267FDBADC(v15, v18, &qword_280243790);
    v43 = &v18[*(v16 + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    v44 = v22;
    v45 = sub_26804E50C();

    v46 = 8.0;
    if (v45)
    {
      v47 = v44;
      sub_26804E51C();
      v49 = v48;

      v46 = v49 * 9.0;
    }

    v50 = *(v68 + 20);
    v51 = *MEMORY[0x277CE0118];
    v52 = sub_26804D48C();
    (*(*(v52 - 8) + 104))(v6 + v50, v51, v52);
    *v6 = v46;
    v6[1] = v46;
    v53 = v44;
    v54 = sub_26804E50C();

    if (v54)
    {
      v55 = [objc_opt_self() quaternarySystemFillColor];
      v56 = sub_26804DC1C();
    }

    else
    {
      if (qword_280241140 != -1)
      {
        swift_once();
      }

      v56 = qword_280248800;
    }

    KeyPath = swift_getKeyPath();
    sub_268019A48(v6, v8, MEMORY[0x277CDFC08]);
    v58 = &v8[*(v69 + 36)];
    *v58 = KeyPath;
    v58[1] = v56;
    v59 = sub_26804DFAC();
    v61 = v60;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243760);
    v63 = v70;
    v64 = v70 + *(v62 + 36);
    sub_267FDBADC(v8, v64, &qword_280242860);
    v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242848) + 36));
    *v65 = v59;
    v65[1] = v61;
    return sub_267FDBADC(v18, v63, &qword_280243780);
  }

  else
  {
    sub_26804E62C();
    sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

void sub_26801829C(char a1)
{
  if (a1)
  {
    v2 = v1;
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v3 = sub_26804CD4C();
    __swift_project_value_buffer(v3, qword_2802487E0);
    v4 = sub_26804CD3C();
    v5 = sub_26804E88C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_267FA7000, v4, v5, "#PayloadTextInputView focused", v6, 2u);
      MEMORY[0x26D60E1E0](v6, -1, -1);
    }

    if (!*v2)
    {
      sub_26804E62C();
      sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
      sub_26804D15C();
      __break(1u);
      return;
    }

    oslog = *v2;
    sub_268015CD8(1);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v7 = sub_26804CD4C();
    __swift_project_value_buffer(v7, qword_2802487E0);
    oslog = sub_26804CD3C();
    v8 = sub_26804E88C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_267FA7000, oslog, v8, "#PayloadTextInputView unfocused", v9, 2u);
      MEMORY[0x26D60E1E0](v9, -1, -1);
    }
  }
}

void sub_2680184C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26804E5CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  v11 = *(v5 + 16);
  v11(&v28[-v9], a1, v4);
  if ((*(v5 + 88))(v10, v4) != *MEMORY[0x277D63F38])
  {
    goto LABEL_16;
  }

  v11(v8, v10, v4);
  (*(v5 + 96))(v8, v4);
  if (*v8 == 1)
  {
    v18 = v2 + *(type metadata accessor for PayloadTextInputView() + 36);
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v18) = v18[16];
    v28[8] = v19;
    v29 = v20;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
    sub_26804CE2C();
    if (v28[7] == 1)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v21 = sub_26804CD4C();
      __swift_project_value_buffer(v21, qword_2802487E0);
      v22 = sub_26804CD3C();
      v23 = sub_26804E88C();
      if (!os_log_type_enabled(v22, v23))
      {
        v25 = 1;
        goto LABEL_24;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267FA7000, v22, v23, "#PayloadTextInputView new request started while focused", v24, 2u);
      v25 = 1;
LABEL_21:
      MEMORY[0x26D60E1E0](v24, -1, -1);
LABEL_24:

      (*(v5 + 8))(v10, v4);
      sub_268018C14(v25);
      return;
    }

LABEL_16:
    (*(v5 + 8))(v10, v4);
    return;
  }

  if (*v8 != 4)
  {
    goto LABEL_16;
  }

  if (*v2)
  {
    v12 = *v2;
    v13 = sub_26801635C();

    if (v13)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v14 = sub_26804CD4C();
      __swift_project_value_buffer(v14, qword_2802487E0);
      v15 = sub_26804CD3C();
      v16 = sub_26804E88C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_267FA7000, v15, v16, "#PayloadTextInputView outside content tapped but ignoring", v17, 2u);
        MEMORY[0x26D60E1E0](v17, -1, -1);
      }

      goto LABEL_16;
    }

    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v26 = sub_26804CD4C();
    __swift_project_value_buffer(v26, qword_2802487E0);
    v22 = sub_26804CD3C();
    v27 = sub_26804E88C();
    if (!os_log_type_enabled(v22, v27))
    {
      v25 = 0;
      goto LABEL_24;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_267FA7000, v22, v27, "#PayloadTextInputView outside content tapped", v24, 2u);
    v25 = 0;
    goto LABEL_21;
  }

  sub_26804E62C();
  sub_26801999C(&qword_2802412E0, MEMORY[0x277D63F60]);
  sub_26804D15C();
  __break(1u);
}

void sub_268018960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_26804C8EC();
  v4 = MEMORY[0x277D5D7E8];
  sub_26801999C(&qword_2802436F8, MEMORY[0x277D5D7E8]);
  sub_26801999C(&qword_280243700, v4);

  sub_26804C83C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2680199E0(v2);
  }

  else
  {
    v5 = *(v3 - 8);
    v6 = (*(v5 + 88))(v2, v3);
    v7 = *MEMORY[0x277D5D7D8];
    (*(v5 + 8))(v2, v3);
    if (v6 == v7)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v8 = sub_26804CD4C();
      __swift_project_value_buffer(v8, qword_2802487E0);
      v9 = sub_26804CD3C();
      v10 = sub_26804E88C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_267FA7000, v9, v10, "#PayloadTextInputView received .flushPayload", v11, 2u);
        MEMORY[0x26D60E1E0](v11, -1, -1);
      }

      sub_268018C14(0);
    }
  }
}

void sub_268018C14(int a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_26804E4DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PayloadTextInputView();
  v8 = (v1 + *(v7 + 36));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  LOBYTE(v46) = v9;
  v47 = v10;
  LOBYTE(v48) = v8;
  LOBYTE(v44) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE3C();
  if (!*(v1 + 16))
  {
    sub_26804E4FC();
    v37 = &qword_2802412F0;
    v38 = MEMORY[0x277D63F18];
    goto LABEL_22;
  }

  sub_26804E4EC();

  v11 = sub_2680168D4();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = (v1 + *(v7 + 32));
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v42 = v17;
  v43 = v16;
  v46 = v16;
  v47 = v17;
  v41 = v18;
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DDEC();
  if (v44 != v11 || v45 != v13)
  {
    v39 = v11;
    v20 = sub_26804EC9C();

    if (v20)
    {
      goto LABEL_9;
    }

    sub_26804E4EC();

    v25 = sub_268016ECC();
    v27 = sub_268016730(v40 & 1, v25, v26);

    v14(v6, v3);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v28 = sub_26804CD4C();
    __swift_project_value_buffer(v28, qword_2802487E0);
    v29 = sub_26804CD3C();
    v30 = sub_26804E88C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_267FA7000, v29, v30, "#PayloadTextInputView submitting direct invocation for content changed via snippet", v31, 2u);
      MEMORY[0x26D60E1E0](v31, -1, -1);
    }

    v46 = v43;
    v47 = v42;
    v48 = v41;
    v44 = v39;
    v45 = v13;
    sub_26804DDFC();
    v32 = *v2;
    if (*v2)
    {
      v33 = sub_26804E6CC();
      v35 = v34;
      v36 = v32;
      sub_268016080(v33, v35, v27, 0);

      return;
    }

    sub_26804E62C();
    v37 = &qword_2802412E0;
    v38 = MEMORY[0x277D63F60];
LABEL_22:
    sub_26801999C(v37, v38);
    sub_26804D15C();
    __break(1u);
    return;
  }

LABEL_9:

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v21 = sub_26804CD4C();
  __swift_project_value_buffer(v21, qword_2802487E0);
  v22 = sub_26804CD3C();
  v23 = sub_26804E88C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_267FA7000, v22, v23, "#PayloadTextInputView no changes to payload, not submitting direct invocation", v24, 2u);
    MEMORY[0x26D60E1E0](v24, -1, -1);
  }
}

uint64_t sub_2680190F4@<X0>(uint64_t *a1@<X8>)
{
  sub_26804C66C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v1);
  return sub_268016F7C(v6, a1);
}

void sub_2680191D4()
{
  sub_267FC1004();
  if (v0 <= 0x3F)
  {
    sub_267FC1098();
    if (v1 <= 0x3F)
    {
      sub_26804C66C();
      if (v2 <= 0x3F)
      {
        sub_26804C01C();
        if (v3 <= 0x3F)
        {
          sub_267FCB9B4();
          if (v4 <= 0x3F)
          {
            sub_267FCBA04();
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

uint64_t sub_2680192D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadTextInputView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268019338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PayloadTextInputView();
  OUTLINED_FUNCTION_15(v5);
  v7 = (v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));

  return sub_268017D34(a1, v7, a2);
}

unint64_t sub_2680193B4()
{
  result = qword_280243770;
  if (!qword_280243770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243760);
    sub_2680194C8(&qword_280243778, &qword_280243780, &unk_268053B10, sub_268019498);
    sub_267FCCA4C(&qword_280242840, &qword_280242848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243770);
  }

  return result;
}

uint64_t sub_2680194C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26801954C()
{
  result = qword_280243798;
  if (!qword_280243798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802437A0);
    sub_267FCCA4C(&qword_280241C58, &qword_280241C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243798);
  }

  return result;
}

unint64_t sub_268019604()
{
  result = qword_2802437A8;
  if (!qword_2802437A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243740);
    sub_26804E29C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243760);
    sub_26801999C(&qword_280243768, MEMORY[0x277D63B88]);
    sub_2680193B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802437A8);
  }

  return result;
}

void sub_26801971C(char a1)
{
  v2 = type metadata accessor for PayloadTextInputView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12_2();
  sub_26801829C(a1);
}

void sub_2680197A0(uint64_t a1)
{
  v2 = type metadata accessor for PayloadTextInputView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12_2();
  sub_2680184C0(a1);
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for PayloadTextInputView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_26804C66C();
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v1[9];
  sub_26804C01C();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v0 + v3 + v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_268019944()
{
  v0 = type metadata accessor for PayloadTextInputView();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_12_2();
  sub_268018960();
}

uint64_t sub_26801999C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2680199E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268019A48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268019AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppSashView();
  v5 = (a2 + *(v4 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CD0);
  sub_26804DDDC();
  v6 = (a2 + *(v4 + 24));
  sub_26804E62C();
  OUTLINED_FUNCTION_1_9();
  sub_26801AD9C(v7, v8);
  *v6 = sub_26804D17C();
  v6[1] = v9;
  v10 = sub_26804CCDC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a2, a1, v10);
  v12 = sub_26804CCBC();
  (*(v11 + 8))(a1, v10);

  *v5 = v12;
  v5[1] = 0;
  return result;
}

uint64_t sub_268019C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppSashView();
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = v5;
  v55 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437E8);
  OUTLINED_FUNCTION_4();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437F0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = v52 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802437F8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v20 = *(v1 + *(v4 + 32));
  if (v20)
  {
    v21 = v1;
    v22 = v20;
    v23 = sub_26804E50C();

    if (v23)
    {
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_5();
      sub_267FC126C(v24, v25);
      return sub_26804D5AC();
    }

    else
    {
      *v16 = sub_26804D3DC();
      *(v16 + 1) = 0;
      v16[16] = 1;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243800) + 44);
      v52[1] = a1;
      v28 = &v16[v27];
      sub_26804CCCC();
      sub_26804E34C();
      v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243808) + 36)];
      *v29 = 0;
      *(v29 + 4) = 1;
      *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243810) + 36)] = 257;
      v30 = sub_26804DFAC();
      v52[0] = v13;
      v32 = v31;
      v33 = &v12[*(v6 + 36)];
      sub_26801A144(v21);
      v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243818) + 36)];
      *v34 = v30;
      v34[1] = v32;
      OUTLINED_FUNCTION_21_1();
      sub_267FB035C(v35, v36, v37);
      sub_267FB035C(v10, v28, &qword_2802437E8);
      v38 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243820) + 48);
      *v38 = 0;
      *(v38 + 8) = 1;
      sub_267FC16BC(v12, &qword_2802437E8);
      sub_267FC16BC(v10, &qword_2802437E8);
      v39 = v52[0];
      v40 = v22;
      sub_26804E53C();

      v41 = v55;
      sub_26801AC70(v21, v55);
      v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v43 = swift_allocObject();
      sub_26801ACD4(v41, v43 + v42);
      v44 = swift_allocObject();
      *(v44 + 16) = sub_26801AD38;
      *(v44 + 24) = v43;
      v45 = &v16[*(v39 + 56)];
      *v45 = sub_267FC1310;
      *(v45 + 1) = v44;
      sub_267FB035C(v16, v19, &qword_2802437F0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_21_1();
      sub_267FC126C(v46, v47);
      sub_26804D5AC();
      OUTLINED_FUNCTION_21_1();
      return sub_267FC16BC(v48, v49);
    }
  }

  else
  {
    sub_26804E62C();
    OUTLINED_FUNCTION_1_9();
    sub_26801AD9C(v50, v51);
    OUTLINED_FUNCTION_21_1();
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26801A144(uint64_t a1)
{
  v2 = type metadata accessor for AppSashView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26804DC9C();
  v5 = sub_26804DCAC();

  v9 = v5;
  v10 = 256;
  sub_26801AC70(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26801ACD4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243830);
  sub_267FC126C(&qword_280243838, &qword_280243830);
  sub_26804DAEC();
}

void sub_26801A2E8()
{
  v1 = *(v0 + *(type metadata accessor for AppSashView() + 24));
  if (v1)
  {
    v2 = v1;
    sub_268015CD8(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D68);
    sub_26804DDEC();
    if (v12)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v3 = sub_26804CD4C();
      __swift_project_value_buffer(v3, qword_2802487E0);
      v4 = sub_26804CD3C();
      v5 = sub_26804E88C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_267FA7000, v4, v5, "#AppSashView performing LaunchAppWithIntent", v6, 2u);
        MEMORY[0x26D60E1E0](v6, -1, -1);
      }

      v7 = v2;
      v8 = v12;
      sub_26804E5FC();
    }

    else
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v9 = sub_26804CD4C();
      __swift_project_value_buffer(v9, qword_2802487E0);
      v8 = sub_26804CD3C();
      v10 = sub_26804E88C();
      if (os_log_type_enabled(v8, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_267FA7000, v8, v10, "#AppSashView LaunchAppWithIntent is missing, no-op", v11, 2u);
        MEMORY[0x26D60E1E0](v11, -1, -1);
      }
    }
  }

  else
  {
    sub_26804E62C();
    sub_26801AD9C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_26801A56C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_26804C89C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = MEMORY[0x277D5D7A0];
  sub_26801AD9C(&qword_280242D58, MEMORY[0x277D5D7A0]);
  sub_26801AD9C(&qword_280242D60, v14);

  sub_26804C83C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_26801ADE4(v3);
  }

  v37 = v0;
  (*(v5 + 32))(v13, v3, v4);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v16 = sub_26804CD4C();
  __swift_project_value_buffer(v16, qword_2802487E0);
  v17 = *(v5 + 16);
  v17(v11, v13, v4);
  v18 = sub_26804CD3C();
  v19 = sub_26804E88C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v20 = 136315138;
    v17(v8, v11, v4);
    v21 = sub_26804E6EC();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v11, v4);
    v25 = sub_267FAE0C4(v21, v23, &v39);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_267FA7000, v18, v19, "#AppSashView received %s", v20, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D60E1E0](v26, -1, -1);
    MEMORY[0x26D60E1E0](v20, -1, -1);
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v11, v4);
  }

  v27 = type metadata accessor for AppSashView();
  v28 = v37;
  v29 = *(v37 + *(v27 + 24));
  if (v29)
  {
    v30 = v27;
    v31 = v29;
    sub_268016368(0);

    v32 = (v28 + *(v30 + 20));
    v33 = *v32;
    v34 = v32[1];
    v39 = *v32;
    v40 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D68);
    sub_26804DDEC();
    if (v38)
    {

      v35 = sub_26804C88C();
      if (v35)
      {
        v39 = v33;
        v40 = v34;
        v38 = v35;
        sub_26804DDFC();
      }
    }

    return (v24)(v13, v4);
  }

  else
  {
    sub_26804E62C();
    sub_26801AD9C(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26801AA60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804CCDC();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_268019AEC(v5, a1);
}

void sub_26801AB54()
{
  sub_26804CCDC();
  if (v0 <= 0x3F)
  {
    sub_26801ABF0();
    if (v1 <= 0x3F)
    {
      sub_267FC1004();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26801ABF0()
{
  if (!qword_280242CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242CD0);
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242CC8);
    }
  }
}

uint64_t sub_26801AC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSashView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26801ACD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSashView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26801AD9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26801ADE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for AppSashView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26804CCDC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_26801AFA8()
{
  result = qword_280243840;
  if (!qword_280243840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243848);
    sub_267FC126C(&qword_280243828, &qword_2802437F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243840);
  }

  return result;
}

uint64_t type metadata accessor for WatchAutoSendButtonsSnippetView()
{
  result = qword_280243850;
  if (!qword_280243850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26801B0D4()
{
  sub_26804C99C();
  if (v0 <= 0x3F)
  {
    sub_267FC1004();
    if (v1 <= 0x3F)
    {
      sub_267FEFFAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for SentMessageSnippetView()
{
  result = qword_280243860;
  if (!qword_280243860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26801B200()
{
  sub_26801B284();
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26801B284()
{
  if (!qword_280243870)
  {
    type metadata accessor for SentMessageSnippetViewModel();
    v0 = type metadata accessor for ViewModel();
    if (!v1)
    {
      atomic_store(v0, &qword_280243870);
    }
  }
}

id sub_26801B2F8()
{
  sub_26801D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  v0 = sub_26803C850();

  sub_26804DDEC();
  v1 = *(v4 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel_intentResponse);

  v2 = sub_26801B3D8(v0, v1);
  [v2 setIntentHandlingStatus_];
  return v2;
}

id sub_26801B3D8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_26801B434@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D10);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_9();
  v5 = type metadata accessor for SentMessageSnippetView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243878);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  sub_26801D36C(v1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_3_12();
  sub_26801D61C(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243880);
  sub_267FC126C(&qword_280243888, &qword_280243880);
  sub_26804E2AC();
  v17 = *MEMORY[0x277D63BA8];
  sub_26804E2BC();
  OUTLINED_FUNCTION_4();
  (*(v18 + 104))(v2, v17);
  v19 = *MEMORY[0x277D63BC0];
  v20 = sub_26804E2CC();
  OUTLINED_FUNCTION_4();
  (*(v21 + 104))(v2, v19, v20);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v20);
  OUTLINED_FUNCTION_2_4();
  sub_267FC126C(v22, &qword_280243878);
  sub_26804D9FC();
  sub_267FC16BC(v2, &qword_280241D10);
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_26801B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CC8);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v54 - v3;
  v4 = sub_26804E2FC();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243898);
  v59 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v57 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v69 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v54 - v10;
  v65 = sub_26804E42C();
  v56 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438A8);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438B0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438B8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v66 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = a1;
  v72 = &v54 - v21;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v76 = v22;
  v77 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  if (sub_26803CB44() == 0xD000000000000013 && 0x80000002680565E0 == v24)
  {
  }

  else
  {
    v26 = sub_26804EC9C();

    if ((v26 & 1) == 0)
    {
      v27 = v71;
      v28 = sub_26801B2F8();
      MEMORY[0x28223BE20](v28);
      *(&v54 - 2) = v27;
      v29 = v55;
      sub_26804E43C();
      v30 = v56;
      v31 = v65;
      (*(v56 + 16))(v14, v29, v65);
      swift_storeEnumTagMultiPayload();
      sub_267FC126C(&qword_2802438C8, &qword_2802438B0);
      sub_26801D87C(&qword_2802438D0, MEMORY[0x277D63E18]);
      sub_26804D5AC();
      (*(v30 + 8))(v29, v31);
      goto LABEL_9;
    }
  }

  sub_26801C134(v17);
  sub_267FDC224(v17, v14, &qword_2802438B0);
  swift_storeEnumTagMultiPayload();
  sub_267FC126C(&qword_2802438C8, &qword_2802438B0);
  sub_26801D87C(&qword_2802438D0, MEMORY[0x277D63E18]);
  sub_26804D5AC();
  sub_267FC16BC(v17, &qword_2802438B0);
LABEL_9:
  v76 = v22;
  v77 = v23;
  sub_26804DDEC();
  v32 = *(v73 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel_shouldConfirmUnsend);

  v33 = v68;
  if (v32 == 1)
  {
    v34 = v58;
    sub_26801C8C0(&unk_2878ECFA0, sub_26801D7B8, sub_26801D83C, v58);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
    v36 = sub_267FC126C(&qword_280241B08, &qword_280241B10);
    v76 = v35;
    v77 = v36;
    swift_getOpaqueTypeConformance2();
    v37 = v61;
    v38 = sub_26804D97C();
    v39 = *(v60 + 8);
    v39(v34, v37);
    v40 = MEMORY[0x277CE11C8];
    v41 = MEMORY[0x277D63A60];
    v78 = MEMORY[0x277CE11C8];
    v79 = MEMORY[0x277D63A60];
    v76 = v38;
    sub_26801C8C0(&unk_2878ECF78, sub_26801D678, sub_26801D68C, v34);
    v42 = sub_26804D97C();
    v39(v34, v37);
    v74 = v40;
    v75 = v41;
    v73 = v42;
    v43 = v62;
    sub_26804E2EC();
    sub_26801D87C(&qword_2802438E0, MEMORY[0x277D63C38]);
    v44 = v57;
    v45 = v64;
    sub_26804DB3C();
    (*(v63 + 8))(v43, v45);
    v46 = v67;
    (*(v59 + 32))(v33, v44, v67);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v67;
  }

  __swift_storeEnumTagSinglePayload(v33, v47, 1, v46);
  v48 = v72;
  v49 = v66;
  sub_267FDC224(v72, v66, &qword_2802438B8);
  v50 = v69;
  sub_267FDC224(v33, v69, &qword_2802438A0);
  v51 = v70;
  sub_267FDC224(v49, v70, &qword_2802438B8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438D8);
  sub_267FDC224(v50, v51 + *(v52 + 48), &qword_2802438A0);
  sub_267FC16BC(v33, &qword_2802438A0);
  sub_267FC16BC(v48, &qword_2802438B8);
  sub_267FC16BC(v50, &qword_2802438A0);
  return sub_267FC16BC(v49, &qword_2802438B8);
}

uint64_t sub_26801C134@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v54 = type metadata accessor for BalloonView();
  MEMORY[0x28223BE20](v54);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438E8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v52 - v6;
  v7 = type metadata accessor for AttachmentView();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D88);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = type metadata accessor for RecipientView();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D90);
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v55 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - v21;
  v23 = *(v1 + 40);
  v63 = *(v1 + 32);
  v24 = v63;
  v64 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  sub_2680116A4(v17);
  sub_26801D87C(&qword_280241D98, type metadata accessor for RecipientView);
  v62 = v22;
  sub_26804DB3C();
  sub_26801D444(v17);
  v63 = v24;
  v64 = v23;
  sub_26804DDEC();
  v25 = sub_26803C850();

  v26 = sub_26804E90C();

  if (v26)
  {
    v63 = v24;
    v64 = v23;
    sub_26804DDEC();
    sub_26804E21C();
    v27 = v7[6];
    *&v9[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
    swift_storeEnumTagMultiPayload();
    v28 = v7[7];
    *&v9[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
    swift_storeEnumTagMultiPayload();
    v29 = &v9[v7[8]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v9[v7[9]];
    *v30 = swift_getKeyPath();
    v30[8] = 0;
    type metadata accessor for MessageSnippetViewModel();
    sub_26801D87C(&qword_280241DC8, type metadata accessor for MessageSnippetViewModel);
    sub_26804DF3C();
    sub_26801D61C(v9, v14, type metadata accessor for AttachmentView);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  __swift_storeEnumTagSinglePayload(v14, v31, 1, v7);
  v63 = v24;
  v64 = v23;
  sub_26804DDEC();
  v33 = sub_26803C850();

  v34 = sub_26804E8DC();

  v35 = v54;
  if (v34)
  {
    v63 = v24;
    v64 = v23;
    sub_26804DDEC();
    v36 = sub_26803C850();

    v37 = sub_26804E8FC();

    if (v37)
    {
      v63 = v24;
      v64 = v23;
      sub_26804DDEC();
      v38 = v53;
      sub_26804E21C();
      type metadata accessor for SentMessageSnippetViewModel();
      sub_26801D87C(&qword_2802438F8, type metadata accessor for SentMessageSnippetViewModel);
      sub_26804DF3C();
      sub_26801D61C(v38, v61, type metadata accessor for BalloonView);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  v39 = v61;
  __swift_storeEnumTagSinglePayload(v61, v32, 1, v35);
  v41 = v55;
  v40 = v56;
  v42 = *(v56 + 16);
  v43 = v57;
  v42(v55, v62, v57);
  v44 = v14;
  v45 = v14;
  v46 = v58;
  sub_267FDC224(v45, v58, &qword_280241D88);
  v47 = v59;
  sub_267FDC224(v39, v59, &qword_2802438E8);
  v48 = v60;
  v42(v60, v41, v43);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438F0);
  sub_267FDC224(v46, &v48[*(v49 + 48)], &qword_280241D88);
  sub_267FDC224(v47, &v48[*(v49 + 64)], &qword_2802438E8);
  sub_267FC16BC(v39, &qword_2802438E8);
  sub_267FC16BC(v44, &qword_280241D88);
  v50 = *(v40 + 8);
  v50(v62, v43);
  sub_267FC16BC(v47, &qword_2802438E8);
  sub_267FC16BC(v46, &qword_280241D88);
  return (v50)(v41, v43);
}

uint64_t sub_26801C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25[1] = a1;
  v25[2] = a2;
  v26 = sub_26804E1EC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for SentMessageSnippetView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  sub_26801D36C(v4, v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_3_12();
  sub_26801D61C(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, v22);
  v29 = v4;
  sub_26804DE2C();
  v23 = v26;
  (*(v6 + 104))(v10, *MEMORY[0x277D63A88], v26);
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  sub_26804D98C();
  (*(v6 + 8))(v10, v23);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_26801CB60(uint64_t a1)
{
  v2 = sub_26804E25C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26804E26C();
  v6 = sub_26804E3EC();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v15 = a1;
  sub_26804E26C();
  v8 = sub_26804E3EC();
  v7(v5, v2);
  v14 = a1;
  sub_26804E26C();
  v9 = sub_26804E3EC();
  v7(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243900);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2680518C0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  v11 = sub_26804E3DC();

  return v11;
}

void sub_26801CD48(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CE1410];
  *(a1 + 24) = MEMORY[0x277CE1428];
  *(a1 + 32) = v1;
}

uint64_t sub_26801CD60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RecipientView();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  sub_2680116A4(v6);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D90);
  v8 = sub_26801D87C(&qword_280241D98, type metadata accessor for RecipientView);
  v11 = v4;
  v12 = v8;
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_26804DB3C();
  return sub_26801D444(v6);
}

uint64_t sub_26801CEB4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  a1[3] = type metadata accessor for BalloonView();
  a1[4] = sub_26801D87C(&qword_280243908, type metadata accessor for BalloonView);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_26804E21C();
  type metadata accessor for SentMessageSnippetViewModel();
  sub_26801D87C(&qword_2802438F8, type metadata accessor for SentMessageSnippetViewModel);
  return sub_26804DF3C();
}

uint64_t sub_26801CFC4(const char *a1, unsigned int *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_9();
  v7 = sub_26804C30C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v14 = sub_26804CD4C();
  __swift_project_value_buffer(v14, qword_2802487E0);
  v15 = sub_26804CD3C();
  v16 = sub_26804E88C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267FA7000, v15, v16, a1, v17, 2u);
    MEMORY[0x26D60E1E0](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  (*(v9 + 104))(v13, *a2, v7);
  type metadata accessor for SentMessageSnippetView();
  sub_26804E20C();
  sub_26803CCA8(v13, v2);

  sub_267FC16BC(v2, &qword_280241820);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_26801D20C@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_26804C41C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802438C0);
  sub_26804DDEC();
  (*(v6 + 16))(v10, v16 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v4);

  a1(v11);
  (*(v6 + 8))(v10, v4);
  sub_267FB0C1C();
  result = sub_26804D95C();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_26801D36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SentMessageSnippetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26801D3D0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SentMessageSnippetView();
  OUTLINED_FUNCTION_15(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26801B748(v5, a1);
}

uint64_t sub_26801D444(uint64_t a1)
{
  v2 = type metadata accessor for RecipientView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26801D4C4(uint64_t a1)
{
  sub_26804D0BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_26804D29C();
}

uint64_t sub_26801D578()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D19C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_26801D5CC()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D1BC();
  *v0 = v2;
  return result;
}

uint64_t sub_26801D61C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t objectdestroyTm_16()
{
  v1 = (type metadata accessor for SentMessageSnippetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_267FBACF4(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v1[7];
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26801D7CC(const char *a1, unsigned int *a2)
{
  v4 = type metadata accessor for SentMessageSnippetView();
  OUTLINED_FUNCTION_15(v4);
  return sub_26801CFC4(a1, a2);
}

uint64_t sub_26801D87C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26801D8C4()
{
  result = qword_280243910;
  if (!qword_280243910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280243910);
  }

  return result;
}

uint64_t sub_26801D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AutoSendableCarPlayButtonView();
  swift_storeEnumTagMultiPayload();
  sub_26801F9AC(v9, v7, type metadata accessor for TimerState);
  sub_26804DDDC();
  sub_267FC12B4(v9);
  v11 = (a2 + *(v10 + 24));
  sub_26804E62C();
  sub_26801F8AC(&qword_2802412E0, MEMORY[0x277D63F60]);
  *v11 = sub_26804D17C();
  v11[1] = v12;
  v13 = a2 + *(v10 + 28);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  sub_26804CAEC();
  OUTLINED_FUNCTION_4();
  return (*(v14 + 32))(a2, a1);
}

uint64_t sub_26801DAF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AutoSendableCarPlayButtonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280241200);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  v11 = sub_26804CAEC();
  v19[3] = v11;
  v19[4] = sub_26801F8AC(&qword_280243930, MEMORY[0x277D5D888]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DE0C();
  sub_26801F9AC(v1, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCarPlayButtonView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_26801F570(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_26801F9AC(v2, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCarPlayButtonView);
  v15 = swift_allocObject();
  sub_26801F570(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  sub_26801F9AC(v2, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCarPlayButtonView);
  v16 = swift_allocObject();
  sub_26801F570(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13);
  return sub_26802DBBC(v19, v10, sub_26801F5D4, v14, sub_26801F630, v15, sub_26801F7F8, v16, a1);
}

void sub_26801DDF0()
{
  v1 = v0;
  v2 = sub_26804D3AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_26804E2DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26804BFFC();
  MEMORY[0x28223BE20](v13 - 8);
  sub_26804E65C();
  sub_26804BFEC();

  (*(v10 + 104))(v12, *MEMORY[0x277D63BE0], v9);
  sub_26804E23C();
  v14 = sub_26804E24C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  v15 = v1 + *(type metadata accessor for AutoSendableCarPlayButtonView() + 28);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (*(v15 + 16) == 1)
  {
  }

  else
  {

    sub_26804E8AC();
    v18 = sub_26804D77C();
    v23 = v2;
    v19 = v18;
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC1318(v16, v17, 0);
    (*(v3 + 8))(v5, v23);
  }

  v20 = objc_allocWithZone(sub_26804E45C());
  v21 = sub_26804E44C();
  sub_26801F0F8(0x796669646F4DLL, 0xE600000000000000, v21);
}

uint64_t sub_26801E188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v15[0] = a1;
  v15[1] = a3;
  v6 = sub_26804E48C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243938);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - v12;
  v15[4] = a2;
  *&v15[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243940);
  sub_267FC126C(&qword_280243948, &qword_280243940);
  sub_26804DE2C();
  sub_26804CECC();
  sub_267FC126C(&qword_280243950, &qword_280243938);
  sub_26801F8AC(&qword_2802432A8, MEMORY[0x277D63E50]);
  sub_26804DACC();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_26801E434()
{
  sub_26804E35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243958);
  sub_26801F8AC(&qword_2802419A8, MEMORY[0x277D63CB0]);
  sub_26801F8F4();
  return sub_26804DD6C();
}

uint64_t sub_26801E518()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_26804BF4C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268050170;
  sub_26804CADC();
  v8 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = sub_26804BEAC();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v11 = MEMORY[0x277D62918];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_26804BEBC();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_26804BF6C();
  return sub_26804E36C();
}

uint64_t sub_26801E750(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243970);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243978);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - v6);
  if (sub_26804CACC())
  {
    *v4 = sub_26804DFAC();
    v4[1] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243980);
    sub_26801E990(v4 + *(v9 + 44), a1);
    sub_267FB035C(v4, v7, &qword_280243970);
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280243968, &qword_280243970);
    sub_26804D5AC();
    return sub_267FC16BC(v4, &qword_280243970);
  }

  else
  {
    *v7 = sub_26804DD1C();
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280243968, &qword_280243970);
    return sub_26804D5AC();
  }
}

uint64_t sub_26801E990@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243988);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = sub_26804DD2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804DD1C();
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v36 = sub_26804DD5C();

  (*(v10 + 8))(v12, v9);
  sub_26804DFAC();
  sub_26804CFBC();
  v48[0] = 1;
  *&v44[3] = *&v44[27];
  *&v44[11] = *&v44[35];
  *&v44[19] = *&v44[43];
  v35 = sub_26804DFAC();
  v14 = v13;
  sub_26801EE60(v48, a2);
  memcpy(v45, v48, sizeof(v45));
  memcpy(v46, v48, 0xA8uLL);
  sub_267FB035C(v45, v39, &qword_280243990);
  sub_267FC16BC(v46, &qword_280243990);
  memcpy(v48, v45, sizeof(v48));
  LOBYTE(v9) = sub_26804D7AC();
  sub_26804CE1C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v39[0]) = 0;
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243998) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v26 = *MEMORY[0x277CDFA88];
  v27 = sub_26804D0CC();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  *v8 = v35;
  *(v8 + 1) = v14;
  memcpy(v8 + 16, v48, 0xA8uLL);
  v8[184] = v9;
  *(v8 + 185) = *v47;
  *(v8 + 47) = *&v47[3];
  *(v8 + 24) = v16;
  *(v8 + 25) = v18;
  *(v8 + 26) = v20;
  *(v8 + 27) = v22;
  v8[224] = 0;
  sub_26804DFAC();
  sub_26804CFBC();
  v28 = &v8[*(v4 + 44)];
  v29 = *&v44[59];
  *v28 = *&v44[51];
  *(v28 + 1) = v29;
  *(v28 + 2) = *&v44[67];
  v30 = v37;
  sub_267FB035C(v8, v37, &qword_280243988);
  v31 = v36;
  __src[0] = v36;
  __src[1] = 0;
  LOWORD(__src[2]) = 257;
  *(&__src[2] + 2) = *v44;
  *(&__src[4] + 2) = *&v44[8];
  *(&__src[6] + 2) = *&v44[16];
  __src[8] = *&v44[23];
  v32 = v38;
  memcpy(v38, __src, 0x48uLL);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802439A0);
  sub_267FB035C(v30, v32 + *(v33 + 48), &qword_280243988);
  sub_267FB035C(__src, v39, &qword_280243318);
  sub_267FC16BC(v8, &qword_280243988);
  sub_267FC16BC(v30, &qword_280243988);
  v39[0] = v31;
  v39[1] = 0;
  v40 = 257;
  v41 = *v44;
  v42 = *&v44[8];
  v43[0] = *&v44[16];
  *(v43 + 14) = *&v44[23];
  return sub_267FC16BC(v39, &qword_280243318);
}

uint64_t sub_26801EE60@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = 1.0 - a2;
  sub_26804CF6C();
  sub_26804DCBC();
  v4 = sub_26804DCAC();

  KeyPath = swift_getKeyPath();
  sub_26804E03C();
  v7 = v6;
  v9 = v8;
  v10 = sub_26804DFEC();
  sub_26804CF6C();
  v11 = v24;
  v13 = DWORD2(v24);
  v12 = HIDWORD(v24);
  v14 = v25;
  v15 = v26;
  sub_26804DCBC();
  v16 = sub_26804DCAC();

  v17 = swift_getKeyPath();
  *&__src[0] = 0;
  *(__src + 1) = v3;
  __src[1] = v21;
  __src[2] = v22;
  *&__src[3] = v23;
  *(&__src[3] + 1) = KeyPath;
  *&__src[4] = v4;
  *(&__src[4] + 1) = 0x4012D97C7F3321D2;
  *&__src[5] = v7;
  *(&__src[5] + 1) = v9;
  *&__src[6] = v10;
  *(&__src[6] + 1) = a2;
  memcpy(__dst, __src, 0x70uLL);
  v28[0] = v24;
  v28[1] = v25;
  *&v29 = v26;
  *(&v29 + 1) = v17;
  v30 = v16;
  *&__dst[160] = v16;
  *&__dst[112] = v24;
  *&__dst[128] = v25;
  *&__dst[144] = v29;
  memcpy(a1, __dst, 0xA8uLL);
  v31 = v11;
  v32 = v13;
  v33 = v12;
  v34 = v14;
  v35 = v15;
  v36 = v17;
  v37 = v16;
  sub_267FB035C(__src, v38, &qword_2802439A8);
  sub_267FB035C(v28, v38, &qword_2802439B0);
  sub_267FC16BC(&v31, &qword_2802439B0);
  v38[0] = 0;
  *&v38[1] = v3;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = KeyPath;
  v43 = v4;
  v44 = 0x4012D97C7F3321D2;
  v45 = v7;
  v46 = v9;
  v47 = v10;
  v48 = a2;
  return sub_267FC16BC(v38, &qword_2802439A8);
}

uint64_t sub_26801F0F8(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v8 = sub_26804CD4C();
  __swift_project_value_buffer(v8, qword_2802487E0);

  v9 = sub_26804CD3C();
  v10 = sub_26804E88C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_267FAE0C4(a1, a2, v19);
    _os_log_impl(&dword_267FA7000, v9, v10, "#AutoSendableCarPlayButtonView submitting direct invocation for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D60E1E0](v12, -1, -1);
    MEMORY[0x26D60E1E0](v11, -1, -1);
  }

  v13 = *(v4 + *(type metadata accessor for AutoSendableCarPlayButtonView() + 24));
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    strcpy(v19, "buttonPressed");
    HIWORD(v19[1]) = -4864;
    v15 = v13;
    v16 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    *(inited + 96) = v16;
    *(inited + 72) = a1;
    *(inited + 80) = a2;

    v17 = sub_26804E65C();
    sub_268016080(0xD000000000000034, 0x8000000268056DE0, v17, a3);
  }

  else
  {
    sub_26804E62C();
    sub_26801F8AC(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26801F3AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804CAEC();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_26801D950(v5, a1);
}

void sub_26801F4A0()
{
  sub_26804CAEC();
  if (v0 <= 0x3F)
  {
    sub_267FC6444();
    if (v1 <= 0x3F)
    {
      sub_267FC1004();
      if (v2 <= 0x3F)
      {
        sub_267FEFFAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26801F570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCarPlayButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26801F5D4()
{
  v0 = type metadata accessor for AutoSendableCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);

  return sub_26801DDB4();
}

void sub_26801F630()
{
  v0 = type metadata accessor for AutoSendableCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);
  sub_26801DDF0();
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for AutoSendableCarPlayButtonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_26804CAEC();
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3);
  v7 = v0 + v3 + v1[5];
  type metadata accessor for TimerState();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_4();
    (*(v8 + 8))(v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  sub_267FC1318(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26801F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = type metadata accessor for AutoSendableCarPlayButtonView();
  OUTLINED_FUNCTION_15(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_26801E188(a1, v9, a2, a3);
}

uint64_t sub_26801F8AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26801F8F4()
{
  result = qword_280243960;
  if (!qword_280243960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243958);
    sub_267FC126C(&qword_280243968, &qword_280243970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243960);
  }

  return result;
}

uint64_t sub_26801F9AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26801FA10()
{
  result = sub_26804BD7C();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id sub_26801FB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26804BD7C();
  OUTLINED_FUNCTION_4_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  type metadata accessor for PackageWrapperView();
  sub_267FAD4AC();
  (*(v6 + 16))(v10, v2 + *(a2 + 36), v4);
  return sub_26801FC2C(v14, v10, 1.0);
}

uint64_t sub_26801FC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_26801FD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_26801FD7C()
{
  swift_getWitnessTable();
  sub_26804D56C();
  __break(1u);
}

void sub_26801FDBC(double a1, double a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
  *v3 = a1;
  v3[1] = a2;
}

void *sub_26801FE18()
{
  OUTLINED_FUNCTION_8_7();
  v2 = *(v0 + *(v1 + 120));
  v3 = v2;
  return v2;
}

uint64_t sub_26801FE60@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  swift_beginAccess();
  OUTLINED_FUNCTION_10_5();
  return (*(v4 + 16))(a1, &v1[v3]);
}

void sub_26801FF10()
{
  v1 = v0;
  v2 = sub_267FACB40();
  [v2 removeFromSuperlayer];

  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v4 = *(v1 + v3);
  if (v4 && (v5 = [v4 rootLayer]) != 0)
  {
    v6 = v5;
    v7 = *(v1 + v3);
    if (v7)
    {
      v8 = v7;
      [v6 setGeometryFlipped_];
    }

    oslog = v6;
    sub_26802026C(v6);
    v9 = [v1 layer];
    [v9 addSublayer_];

    [v1 layoutIfNeeded];
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v10 = sub_26804CD4C();
    __swift_project_value_buffer(v10, qword_2802487E0);
    v11 = v1;
    oslog = sub_26804CD3C();
    v12 = sub_26804E89C();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_26804BD1C();
      v17 = sub_267FAE0C4(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_267FA7000, oslog, v12, "#PackageWrapperView#package unable to get rootLayer for packageUrl=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D60E1E0](v14, -1, -1);
      MEMORY[0x26D60E1E0](v13, -1, -1);
    }
  }
}

void sub_268020180(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_26801FF10();
}

id sub_2680201F4()
{
  v1 = MEMORY[0x277D85000];
  result = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x90));
  if (result)
  {
    result = [result frame];
    v3 = (v0 + *((*v1 & *v0) + 0x68));
    *v3 = v4;
    v3[1] = v5;
  }

  return result;
}

void sub_26802026C(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  sub_2680201F4();
}

id sub_2680202E0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *MEMORY[0x277D85000];
  v10 = sub_26804BD7C();
  OUTLINED_FUNCTION_4_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = &v4[*((v9 & v8) + 0x68)];
  *v17 = 0;
  *(v17 + 1) = 0;
  OUTLINED_FUNCTION_1_10();
  v44 = *(v18 + 120);
  *&v4[v44] = 0;
  OUTLINED_FUNCTION_1_10();
  v20 = *(v19 + 136);
  *&v4[v20] = 0;
  OUTLINED_FUNCTION_1_10();
  v43 = *(v21 + 144);
  *&v4[v43] = 0;
  OUTLINED_FUNCTION_1_10();
  v23 = *((v9 & v8) + 0x50);
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v4[*(v22 + 128)], a1, v23);
  OUTLINED_FUNCTION_1_10();
  v26 = *(v12 + 16);
  v26(&v4[*(v25 + 96)], a2, v10);
  OUTLINED_FUNCTION_1_10();
  *&v4[*(v27 + 112)] = a3;
  sub_268021280();
  v26(v16, a2, v10);
  v28 = sub_26804E6CC();
  v30 = sub_2680206B8(v16, v28, v29, 0);
  v31 = *&v4[v20];
  *&v4[v20] = v30;

  v32 = *&v4[v20];
  if (v32)
  {
    v32 = [v32 rootLayer];
  }

  v33 = *&v4[v43];
  *&v4[v43] = v32;
  v34 = v32;

  v35 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
  v36 = *&v4[v44];
  *&v4[v44] = v35;

  v37 = *&v4[v44];
  if (v37)
  {
    [v37 setInitialStatesOfLayer_];
  }

  v45.receiver = v4;
  v45.super_class = type metadata accessor for PackageWrapperView();
  v38 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  [v40 setBackgroundColor_];

  sub_268020980();
  (*(v12 + 8))(a2, v10);
  (*(v24 + 8))(a1, v23);
  return v40;
}

id sub_2680206B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_26804BD2C();
  v7 = sub_26804E6BC();

  if (a4)
  {
    v8 = sub_26804E63C();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_26804BD7C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_26804BD0C();

    swift_willThrow();
    v15 = sub_26804BD7C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_268020880()
{
  v1 = MEMORY[0x277D85000];
  v2 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x68));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x78)) = 0;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  sub_26804EC0C();
  __break(1u);
}

void sub_268020980()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  OUTLINED_FUNCTION_4_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = sub_26804BD7C();
  OUTLINED_FUNCTION_4_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  sub_268021280();
  v17 = *((v3 & v2) + 0x60);
  (*(v12 + 16))(v16, &v1[v17], v10);
  v18 = sub_26804E6CC();
  v20 = sub_2680206B8(v16, v18, v19, 0);
  v30 = v20;
  if (v20)
  {
    v31 = v20;
    sub_268020180(v30);
    sub_26801FE60(v9);
    sub_268020D64(v9, 0);

    (*(v6 + 8))(v9, v4);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v21 = sub_26804CD4C();
    __swift_project_value_buffer(v21, qword_2802487E0);
    v22 = v1;
    v23 = sub_26804CD3C();
    v24 = sub_26804E89C();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_12_3();
      v25 = OUTLINED_FUNCTION_9_3();
      v32[0] = v25;
      *v22 = 136315138;
      v26 = sub_26804BD1C();
      sub_267FAE0C4(v26, v27, v32);
      OUTLINED_FUNCTION_11_3();
      *(v22 + 4) = &v1[v17];
      OUTLINED_FUNCTION_6_10(&dword_267FA7000, v28, v29, "#PackageWrapperView#configureView unable to get packageLayer for packageUrl=%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }
  }
}

void sub_268020C4C(double a1, double a2)
{
  OUTLINED_FUNCTION_8_7();
  if (sub_267FACF5C() == 0.0 && v5 == 0.0)
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for PackageWrapperView();
    objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  }
}

double sub_268020D10(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_268020C4C(a2, a3);
  v7 = v6;

  return v7;
}

void sub_268020D64(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = sub_267FACB40();
  if (!v6 || (v3 = v6, sub_26804E75C(), v7 = sub_26804E6BC(), , v8 = [v3 stateWithName_], v3, v7, !v8))
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v15 = sub_26804CD4C();
    __swift_project_value_buffer(v15, qword_2802487E0);
    v16 = v2;
    v8 = sub_26804CD3C();
    v17 = sub_26804E89C();

    if (os_log_type_enabled(v8, v17))
    {
      OUTLINED_FUNCTION_12_3();
      v18 = OUTLINED_FUNCTION_9_3();
      v35 = v18;
      *v3 = 136315138;
      OUTLINED_FUNCTION_5_9();
      v20 = &v16[*(v19 + 96)];
      v21 = sub_26804BD1C();
      sub_267FAE0C4(v21, v22, &v35);
      OUTLINED_FUNCTION_11_3();
      *(v3 + 4) = v20;
      OUTLINED_FUNCTION_6_10(&dword_267FA7000, v23, v24, "#PackageWrapperView#animate unable to get caState for packageUrl=%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }

    goto LABEL_17;
  }

  v9 = sub_26801FE18();
  if (!v9)
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v25 = sub_26804CD4C();
    __swift_project_value_buffer(v25, qword_2802487E0);
    v26 = v2;
    v27 = sub_26804CD3C();
    v28 = sub_26804E89C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_12_3();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      OUTLINED_FUNCTION_5_9();
      v32 = &v26[*(v31 + 96)];
      v33 = sub_26804BD1C();
      sub_267FAE0C4(v33, v34, &v35);
      OUTLINED_FUNCTION_11_3();
      *(v29 + 4) = v32;
      _os_log_impl(&dword_267FA7000, v27, v28, "#PackageWrapperView#animate no stateController set for packageUrl=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }

    goto LABEL_17;
  }

  v10 = sub_26801FE18();
  if (!v10)
  {
LABEL_17:

    return;
  }

  v11 = v10;
  v12 = sub_267FACB40();
  v13 = 0.0;
  if (a2)
  {
    OUTLINED_FUNCTION_5_9();
    LODWORD(v13) = *&v4[*(v14 + 112)];
  }

  [v11 setState:v8 ofLayer:v12 transitionSpeed:v13];
}

id sub_2680210EC()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_8_7();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PackageWrapperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_268021154(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  sub_26804BD7C();
  OUTLINED_FUNCTION_10_5();
  (*(v5 + 8))(&a1[v4]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v7 + 128)]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  v10 = *&a1[*(v9 + 144)];
}

unint64_t sub_268021280()
{
  result = qword_280243A48[0];
  if (!qword_280243A48[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280243A48);
  }

  return result;
}

uint64_t sub_2680212CC()
{
  result = sub_26804DEBC();
  if (v1 <= 0x3F)
  {
    result = sub_26804BD7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_268021354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_26804BD7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 80);
  v14 = *(v10 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v9;
  v16 = ((v13 + 16) & ~v13) + *(v6 + 64) + v14;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = (v16 & ~v14) + *(*(v9 - 8) + 64);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v8 < v11)
  {
    v25 = (a1 + v16) & ~v14;
LABEL_35:

    return __swift_getEnumTagSinglePayload(v25, v11, v15);
  }

  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v25 = (v26 + v13 + 8) & ~v13;
    v11 = v7;
    v15 = v5;
    goto LABEL_35;
  }

  v27 = *v26;
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_2680215CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_26804BD7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v8 + 80);
  v16 = ((v15 + 16) & ~v15) + *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = ((v16 + v17) & ~v17) + *(*(v11 - 8) + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }

    return;
  }

  switch(v20)
  {
    case 1:
      a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 2:
      *&a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 3:
LABEL_64:
      __break(1u);
      return;
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v10 < v13)
      {
        v26 = &a1[v16 + v17] & ~v17;
        v27 = a2;
LABEL_32:

        __swift_storeEnumTagSinglePayload(v26, v27, v13, v11);
        return;
      }

      if (v10 >= a2)
      {
        v31 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v32 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v32 = (a2 - 1);
          }

          *v31 = v32;
          return;
        }

        v26 = (v31 + v15 + 8) & ~v15;
        v27 = a2;
        v13 = v9;
        v11 = v7;
        goto LABEL_32;
      }

      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v29 = v28 & (~v10 + a2);
        if (v16 <= 3)
        {
          v30 = v16;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v16);
        switch(v30)
        {
          case 2:
            *a1 = v29;
            break;
          case 3:
            *a1 = v29;
            a1[2] = BYTE2(v29);
            break;
          case 4:
            *a1 = v29;
            break;
          default:
            *a1 = v29;
            break;
        }
      }

      return;
  }
}

uint64_t getEnumTagSinglePayload for CarPlayButtonImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarPlayButtonImageType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268021B00(char a1)
{
  result = 0x662E656C63726963;
  switch(a1)
  {
    case 1:
      result = 0x2E656C7573706163;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      v3 = 1886352499;
      goto LABEL_9;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v3 = 2036427888;
LABEL_9:
      result = v3 | 0x6C69662E00000000;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6C69636E6570;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x616C732E6C6C6562;
      break;
    case 10:
      result = 0x70752E776F727261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268021C5C()
{
  v0 = sub_26804EC5C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268021CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268021C5C();
  *a1 = result;
  return result;
}

uint64_t sub_268021CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268021B00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_268021D2C()
{
  result = qword_280243AD0;
  if (!qword_280243AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243AD0);
  }

  return result;
}

uint64_t type metadata accessor for AutoSendButtonView()
{
  result = qword_280243AD8;
  if (!qword_280243AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268021DF4()
{
  sub_267FEFF54();
  if (v0 <= 0x3F)
  {
    sub_267FC1004();
    if (v1 <= 0x3F)
    {
      sub_26804E22C();
      if (v2 <= 0x3F)
      {
        sub_268021EA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_268021EA8()
{
  if (!qword_280243AE8)
  {
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280243AE8);
    }
  }
}

uint64_t sub_268021F14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for AutoSendButtonView();
  v4 = *(v3 - 8);
  v73 = (v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243AF0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v70 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243AF8);
  OUTLINED_FUNCTION_1();
  v75 = v11;
  v76 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v82 = v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B00);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  v83 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B08);
  OUTLINED_FUNCTION_1();
  v77 = v17;
  v78 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21();
  v85 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B10);
  OUTLINED_FUNCTION_1();
  v79 = v21;
  v80 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21();
  v86 = v23;
  sub_2680227E0(v9);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v25 = sub_26804046C();

  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = (v25 & 1) == 0;
  v29 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v5;
  *(v27 + 16) = v28;
  v31 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B18) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_267FCC05C;
  v31[2] = v27;
  sub_268024A0C(v2, v29);
  v32 = *(v4 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = OUTLINED_FUNCTION_14_3();
  sub_268024A70(v29, v34 + v33);
  v35 = &v9[*(v6 + 36)];
  *v35 = sub_268024AD4;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v74 = v24;
  sub_26804DF1C();
  v36 = sub_26803FE78();

  v87 = v36;
  sub_268024A0C(v2, v29);
  v37 = OUTLINED_FUNCTION_14_3();
  sub_268024A70(v29, v37 + v33);
  sub_268024B44();
  sub_26804DBEC();
  v38 = v2;

  sub_267FB05B4(v9, &qword_280243AF0);
  v39 = *(v2 + v73[7]);
  if (v39)
  {
    v40 = v39;
    v41 = sub_26804E5AC();
    v73 = v40;

    sub_268024A0C(v38, v29);
    v42 = OUTLINED_FUNCTION_14_3();
    sub_268024A70(v29, v42 + v33);
    v43 = v83;
    (*(v75 + 32))(v83, v82, v76);
    v44 = v84;
    *(v43 + *(v84 + 52)) = v41;
    v45 = (v43 + *(v44 + 56));
    *v45 = sub_268024DEC;
    v45[1] = v42;
    sub_26804DF1C();
    v46 = sub_26803FBD8();

    if (v46)
    {
      v47 = sub_267FCE3F8();

      v48 = v47 == 1.0;
    }

    else
    {
      v48 = 0;
    }

    LOBYTE(v87) = v48;
    sub_268024A0C(v38, v29);
    v49 = OUTLINED_FUNCTION_14_3();
    v70 = v29;
    sub_268024A70(v29, v49 + v33);
    v72 = v30;
    OUTLINED_FUNCTION_4_5();
    v51 = sub_267FC126C(v50, &qword_280243B00);
    v71 = v38;
    v52 = (v32 + 16) & ~v32;
    v53 = v84;
    v54 = v83;
    sub_26804DBEC();

    sub_267FB05B4(v54, &qword_280243B00);
    v55 = v73;
    v56 = sub_26804E5DC();
    v58 = v57;

    v91 = v56;
    v92 = v58;
    v59 = v70;
    sub_268024A0C(v38, v70);
    v60 = swift_allocObject();
    sub_268024A70(v59, v60 + v52);
    v87 = v53;
    v88 = MEMORY[0x277D839B0];
    v89 = v51;
    v90 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = MEMORY[0x277D837F8];
    v63 = v85;
    v64 = v78;
    sub_26804DBEC();

    (*(v77 + 8))(v63, v64);
    sub_26804C42C();
    sub_268024A0C(v71, v59);
    v65 = swift_allocObject();
    sub_268024A70(v59, v65 + v52);
    v87 = v64;
    v88 = MEMORY[0x277D837D0];
    v89 = OpaqueTypeConformance2;
    v90 = v62;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_2_18();
    sub_2680250E0(v66, v62);
    OUTLINED_FUNCTION_4_9(&qword_280243B68);
    OUTLINED_FUNCTION_3_13(&qword_280243B70);
    v67 = v80;
    v68 = v86;
    sub_26804DA0C();

    return (*(v79 + 8))(v68, v67);
  }

  else
  {
    sub_26804E62C();
    sub_2680250E0(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2680227E0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_26804E1EC();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AutoSendButtonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B38);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B30);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - v12;
  sub_268024A0C(v1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_268024A70(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v34 = v1;
  sub_26804DE2C();
  v15 = sub_26804DFBC();
  v17 = v16;
  sub_268023D20(v1, v36);
  v37[0] = v15;
  v37[1] = v17;
  memcpy(&v37[2], v36, 0x60uLL);
  memcpy(&v9[*(v7 + 36)], v37, 0x70uLL);
  v38[0] = v15;
  v38[1] = v17;
  memcpy(v39, v36, sizeof(v39));
  sub_268025148(v37, v35);
  sub_267FB05B4(v38, &qword_280243B50);
  sub_268024A0C(v1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_268024A70(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13);
  v19 = sub_268024D08();
  v20 = v27;
  sub_26804DA4C();

  sub_267FB05B4(v9, &qword_280243B38);
  v21 = v30;
  v22 = v31;
  v23 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x277D63A90], v32);
  v35[0] = v7;
  v35[1] = v19;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_26804D98C();
  (*(v22 + 8))(v21, v23);
  return (*(v29 + 8))(v20, v24);
}

uint64_t sub_268022C24(const char *a1)
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v2 = sub_26804CD4C();
  __swift_project_value_buffer(v2, qword_2802487E0);
  v3 = sub_26804CD3C();
  v4 = sub_26804E88C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267FA7000, v3, v4, a1, v5, 2u);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  return sub_268023F54();
}

uint64_t sub_268022D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_26804E5CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = *(v6 + 16);
  v15(&v50 - v13, a1, v5);
  v16 = (*(v6 + 88))(v14, v5);
  if (v16 == *MEMORY[0x277D63F48])
  {
    v15(v9, v14, v5);
    (*(v6 + 96))(v9, v5);
    v17 = *(v9 + 2);
    if (*v9 != 1)
    {

      return (*(v6 + 8))(v14, v5);
    }

    v51 = *(v9 + 1);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v18 = sub_26804CD4C();
    __swift_project_value_buffer(v18, qword_2802487E0);

    v19 = sub_26804CD3C();
    v20 = sub_26804E88C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = &loc_26804F000;
    v52 = v14;
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_267FAE0C4(v51, v17, &v53);
      _os_log_impl(&dword_267FA7000, v19, v20, "#AutoSendButtonView speech ended, aceId=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v25 = v24;
      v22 = &loc_26804F000;
      MEMORY[0x26D60E1E0](v25, -1, -1);
      MEMORY[0x26D60E1E0](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
    sub_26804DF1C();
    sub_26803F7EC(v4);

    v26 = sub_26804C2EC();
    if (__swift_getEnumTagSinglePayload(v4, 1, v26))
    {

      sub_267FB05B4(v4, &unk_280244540);
LABEL_9:
      v27 = sub_26804CD3C();
      v28 = sub_26804E87C();
      v29 = os_log_type_enabled(v27, v28);
      v14 = v52;
      if (v29)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_267FA7000, v27, v28, "#AutoSendButtonView speech ended while speechSynthesisId is nil", v30, 2u);
        MEMORY[0x26D60E1E0](v30, -1, -1);
      }

      return (*(v6 + 8))(v14, v5);
    }

    v35 = sub_26804C2CC();
    v37 = v36;
    sub_267FB05B4(v4, &unk_280244540);
    if (!v37)
    {

      goto LABEL_9;
    }

    if (v51 == v35 && v37 == v17)
    {
    }

    else
    {
      v51 = v35;
      v39 = sub_26804EC9C();

      if ((v39 & 1) == 0)
      {

        v44 = sub_26804CD3C();
        v45 = sub_26804E87C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v53 = v47;
          *v46 = v22[382];
          v48 = sub_267FAE0C4(v51, v37, &v53);

          *(v46 + 4) = v48;
          _os_log_impl(&dword_267FA7000, v44, v45, "#AutoSendButtonView player state update event aceId doesn't match speechSynthesisId=%s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          MEMORY[0x26D60E1E0](v47, -1, -1);
          MEMORY[0x26D60E1E0](v46, -1, -1);
        }

        else
        {
        }

        goto LABEL_41;
      }
    }

    sub_26804DF1C();
    sub_2680414A0();

LABEL_41:
    v14 = v52;
    return (*(v6 + 8))(v14, v5);
  }

  if (v16 == *MEMORY[0x277D63F38])
  {
    v15(v12, v14, v5);
    (*(v6 + 96))(v12, v5);
    if (*v12 == 5)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v40 = sub_26804CD4C();
      __swift_project_value_buffer(v40, qword_2802487E0);
      v41 = sub_26804CD3C();
      v42 = sub_26804E88C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_267FA7000, v41, v42, "#AutoSendButtonView request became idle", v43, 2u);
        MEMORY[0x26D60E1E0](v43, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
      sub_26804DF1C();
      sub_2680418C0();
    }

    else
    {
      if (*v12 != 1)
      {
        return (*(v6 + 8))(v14, v5);
      }

      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v31 = sub_26804CD4C();
      __swift_project_value_buffer(v31, qword_2802487E0);
      v32 = sub_26804CD3C();
      v33 = sub_26804E88C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_267FA7000, v32, v33, "#AutoSendButtonView new request started", v34, 2u);
        MEMORY[0x26D60E1E0](v34, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
      sub_26804DF1C();
      sub_2680417C0();
    }
  }

  return (*(v6 + 8))(v14, v5);
}

uint64_t sub_2680234E0()
{
  v1 = v0;
  v2 = type metadata accessor for AutoSendButtonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v9 = sub_26803FBD8();

  if (v9)
  {
    v11 = sub_267FCE3F8();

    if (v11 == 1.0)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v12 = sub_26804CD4C();
      __swift_project_value_buffer(v12, qword_2802487E0);
      v13 = sub_26804CD3C();
      v14 = sub_26804E88C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_267FA7000, v13, v14, "#AutoSendButtonView auto send timer expired", v15, 2u);
        MEMORY[0x26D60E1E0](v15, -1, -1);
      }

      v16 = sub_26804E84C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
      sub_268024A0C(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_26804E81C();
      v17 = sub_26804E80C();
      v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      *(v19 + 16) = v17;
      *(v19 + 24) = v20;
      sub_268024A70(v5, v19 + v18);
      sub_267FE1CD0(0, 0, v8, &unk_2680543E0, v19);
    }
  }

  return result;
}

uint64_t sub_268023790()
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267FA7000, v1, v2, "#AutoSendButtonView ASR text changed", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_268041A0C();
}

uint64_t sub_2680238A4()
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267FA7000, v1, v2, "#AutoSendButtonView cancel auto send requested", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_268042250();
}

uint64_t sub_2680239B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v3 = sub_26804CD4C();
  __swift_project_value_buffer(v3, qword_2802487E0);
  v4 = sub_26804CD3C();
  v5 = sub_26804E88C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267FA7000, v4, v5, "#AutoSendButtonView button tapped, sending request", v6, 2u);
    MEMORY[0x26D60E1E0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  type metadata accessor for AutoSendButtonView();
  sub_26804E20C();
  sub_268040828();

  return sub_267FB05B4(v2, &qword_280241820);
}

uint64_t sub_268023B5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26804C41C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  (*(v3 + 16))(v5, v22 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v2);

  v6 = sub_26804C3EC();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v22 = v6;
  v23 = v8;
  sub_267FB0C1C();
  v9 = sub_26804D95C();
  v11 = v10;
  LOBYTE(v5) = v12;
  sub_26804D84C();
  v13 = sub_26804D8EC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_267FB0FB4(v9, v11, v5 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

void sub_268023D20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_26804D3DC();
  v4 = (a1 + *(type metadata accessor for AutoSendButtonView() + 28));
  v8 = *v4;
  v9 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B88);
  sub_26804DDEC();
  sub_268023E5C();
  sub_26804DFAC();
  sub_26804CFBC();
  v5 = sub_26804DFEC();
  v6 = sub_268023E5C();
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FE6666666666666;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
}

double sub_268023E5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v0 = sub_26803FBD8();

  if (!v0)
  {
    return 0.0;
  }

  v1 = sub_267FCE3F8();

  return v1;
}

uint64_t sub_268023EDC()
{
  type metadata accessor for AutoSendButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B88);
  return sub_26804DDFC();
}

uint64_t sub_268023F54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_26803F7EC(v2);

  v3 = sub_26804C2EC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    sub_267FB05B4(v2, &unk_280244540);
LABEL_3:
    sub_26804DF1C();
    sub_2680414A0();
  }

  sub_26804C2CC();
  v6 = v5;
  sub_267FB05B4(v2, &unk_280244540);
  if (!v6)
  {
    goto LABEL_3;
  }
}

uint64_t sub_26802408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  v4[4] = swift_task_alloc();
  v5 = sub_26804EBAC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_26804E81C();
  v4[8] = sub_26804E80C();
  v7 = sub_26804E7EC();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_2680241B8, v7, v6);
}

uint64_t sub_2680241B8()
{
  OUTLINED_FUNCTION_13();
  sub_26804ED1C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_268024280;

  return sub_268024568(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_268024280()
{
  v2 = *v1;
  OUTLINED_FUNCTION_13_5();
  *v4 = v3;
  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  *v4 = *v1;
  *(v3 + 96) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[10];
  v9 = v2[9];
  if (v0)
  {
    v10 = sub_2680244F4;
  }

  else
  {
    v10 = sub_268024414;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_268024414()
{
  v1 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  type metadata accessor for AutoSendButtonView();
  sub_26804E20C();
  sub_2680416F0();

  sub_267FB05B4(v1, &qword_280241820);

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_2680244F4()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_268024568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26804EB9C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_268024668, 0, 0);
}

uint64_t sub_268024668()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26804EBAC();
  v5 = sub_2680250E0(&qword_280243B78, MEMORY[0x277D85928]);
  sub_26804ECFC();
  sub_2680250E0(&qword_280243B80, MEMORY[0x277D858F8]);
  sub_26804EBBC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2680247F8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2680247F8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_13_5();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_13_5();
  *v9 = v8;
  *(v2 + 120) = v0;

  v5(v6, v7);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2680249A8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_6();

    return v10();
  }
}

uint64_t sub_2680249A8()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_268024A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268024A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268024AEC(const char *a1)
{
  v2 = type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12_2();
  return sub_268022C24(a1);
}

unint64_t sub_268024B44()
{
  result = qword_280243B20;
  if (!qword_280243B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243AF0);
    sub_268024BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243B20);
  }

  return result;
}

unint64_t sub_268024BD0()
{
  result = qword_280243B28;
  if (!qword_280243B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243B38);
    sub_268024D08();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_267FC126C(&qword_280241B48, &qword_280241B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243B28);
  }

  return result;
}

unint64_t sub_268024D08()
{
  result = qword_280243B40;
  if (!qword_280243B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243B38);
    sub_267FC126C(&qword_280241B08, &qword_280241B10);
    sub_267FC126C(&qword_280243B48, &qword_280243B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243B40);
  }

  return result;
}

uint64_t sub_268024E1C(uint64_t (*a1)(void))
{
  v2 = type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12_2();
  return a1();
}

uint64_t sub_268024EA4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_12_2();
  return a2(a1);
}

uint64_t sub_268024F0C(uint64_t a1)
{
  v4 = type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_15(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_268024FF8;

  return sub_26802408C(a1, v7, v8, v1 + v6);
}

uint64_t sub_268024FF8()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_13_5();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2680250E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268025148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_1_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v1 + v4);

  v8 = *(v0 + 32);
  sub_26804E22C();
  OUTLINED_FUNCTION_0();
  (*(v9 + 8))(v1 + v4 + v8);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2680252DC()
{
  v0 = type metadata accessor for AutoSendButtonView();
  OUTLINED_FUNCTION_15(v0);

  return sub_268023EDC();
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return swift_allocObject();
}

uint64_t sub_268025408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_2680254E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v216 = a3;
  v211[1] = a2;
  v4 = type metadata accessor for TapbackCarPlaySnippetView();
  v5 = OUTLINED_FUNCTION_4_10(v4, v208);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v6);
  v7 = sub_26804CB2C();
  v8 = OUTLINED_FUNCTION_1_11(v7, &v207);
  v186 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_7_7(v11);
  v12 = type metadata accessor for ButtonSnippetView();
  v13 = OUTLINED_FUNCTION_4_10(v12, v211);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v14);
  v15 = sub_26804C81C();
  v16 = OUTLINED_FUNCTION_1_11(v15, &v210);
  v189 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v18);
  v19 = type metadata accessor for ConfirmationButtonSnippetView();
  v20 = OUTLINED_FUNCTION_4_10(v19, &v215);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v21);
  v22 = sub_26804CC4C();
  v23 = OUTLINED_FUNCTION_1_11(v22, &v214);
  v190 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v25);
  v26 = type metadata accessor for AppDisambiguationSnippetView();
  v27 = OUTLINED_FUNCTION_4_10(v26, &v219 + 8);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v28);
  v29 = sub_26804CC2C();
  v30 = OUTLINED_FUNCTION_1_11(v29, &v219);
  v191 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v32);
  v33 = type metadata accessor for SentMessageSnippetView();
  v34 = OUTLINED_FUNCTION_4_10(v33, &v225);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v35);
  v36 = sub_26804C95C();
  v37 = OUTLINED_FUNCTION_1_11(v36, v220 + 8);
  v205 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_7_7(v41);
  v42 = sub_26804CABC();
  v43 = OUTLINED_FUNCTION_1_11(v42, &v223);
  v201 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_7_7(v46);
  v47 = type metadata accessor for WatchAutoSendButtonsSnippetView();
  v48 = OUTLINED_FUNCTION_4_10(v47, &v221);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v49);
  v50 = sub_26804C99C();
  v51 = OUTLINED_FUNCTION_1_11(v50, &v229);
  v209 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v53);
  v54 = type metadata accessor for WatchConfirmationSnippetView();
  v55 = OUTLINED_FUNCTION_4_10(v54, v228);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v56);
  v57 = sub_26804C9FC();
  OUTLINED_FUNCTION_1();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7(v61);
  v218 = sub_26804C15C();
  OUTLINED_FUNCTION_1();
  v63 = v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_9_4();
  v67 = MEMORY[0x28223BE20](v66);
  v69 = &v182 - v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_4();
  MEMORY[0x28223BE20](v70);
  v72 = &v182 - v71;
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v73 = sub_26804CD4C();
  __swift_project_value_buffer(v73, qword_2802487E0);
  v75 = v63 + 16;
  v74 = *(v63 + 16);
  v215 = a1;
  v74(v72, a1, v218);
  v76 = sub_26804CD3C();
  v77 = sub_26804E87C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v212 = v63;
    v79 = v78;
    v182 = swift_slowAlloc();
    *&v219 = v182;
    *v79 = 136315650;
    v184 = v59;
    v183 = v57;
    v80 = v218;
    v74(v213, v72, v218);
    v81 = sub_26804E6EC();
    v206 = v69;
    v82 = v81;
    v83 = v80;
    v85 = v84;
    v214 = *(v212 + 8);
    v214(v72, v83);
    v86 = sub_267FAE0C4(v82, v85, &v219);

    *(v79 + 4) = v86;
    *(v79 + 12) = 2080;
    v87 = sub_26804E9DC();
    v89 = sub_267FAE0C4(v87, v88, &v219);

    *(v79 + 14) = v89;
    *(v79 + 22) = 2080;
    v57 = v183;
    v59 = v184;
    v90 = sub_26804EA3C();
    v72 = sub_267FAE0C4(v90, v91, &v219);
    v69 = v206;

    *(v79 + 24) = v72;
    _os_log_impl(&dword_267FA7000, v76, v77, "#MessagesUIPlugin Creating response snippet for model=%s\nmode=%s\nidiom=%s", v79, 0x20u);
    v77 = v182;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_1();
    v63 = v212;
    OUTLINED_FUNCTION_1_1();
  }

  else
  {

    v214 = *(v63 + 8);
    v214(v72, v218);
  }

  v92 = v218;
  v74(v69, v215, v218);
  v93 = (*(v63 + 88))(v69, v92);
  if (v93 == *MEMORY[0x277D5D368])
  {
    v94 = v210;
    v95 = v218;
    v74(v210, v69, v218);
    (*(v63 + 96))(v94, v95);
    v96 = v211[0];
    (*(v59 + 32))(v211[0], v94, v57);
    if (v216 == 6)
    {
      v97 = v207;
      (*(v59 + 16))(v207, v96, v57);
      v98 = (v97 + *(v208[0] + 20));
      sub_26804E62C();
      v99 = v57;
      OUTLINED_FUNCTION_0_6();
      sub_267FAE398(v100, v101);
      OUTLINED_FUNCTION_31();
      *v98 = sub_26804D17C();
      v98[1] = v102;
      sub_267FAE398(&qword_280243D08, type metadata accessor for WatchConfirmationSnippetView);
      v57 = sub_26804D97C();
      sub_268026C04(v97, type metadata accessor for WatchConfirmationSnippetView);
      (*(v59 + 8))(v96, v99);
LABEL_29:
      v170 = OUTLINED_FUNCTION_42();
      v171(v170);
      return v57;
    }

    (*(v59 + 8))(v96, v57);
    goto LABEL_17;
  }

  if (v93 != *MEMORY[0x277D5D390])
  {
    if (v93 == *MEMORY[0x277D5D370])
    {
      v114 = OUTLINED_FUNCTION_6_11();
      (v74)(v114);
      v115 = OUTLINED_FUNCTION_11_4();
      v116(v115);
      OUTLINED_FUNCTION_25_2();
      v117 = v200;
      v118 = v202;
      v119(v200, v57, v202);
      OUTLINED_FUNCTION_41();
      v120 = v197;
      v121(v197, v117, v118);
      sub_267FCF180(v120, &v222);
      v229 = *(&v224 + 1);
      v227 = v223;
      v228[0] = BYTE8(v223);
      v225 = v222;
      v219 = v222;
      v220[0] = v223;
      v220[1] = v224;
      sub_268026BB0();
      v57 = sub_26804D97C();
      sub_267FC16BC(&v225, &qword_280241D28);
      sub_267FC16BC(&v227, &qword_280241D30);

      sub_267FC16BC(&v229, &qword_280241D38);
      v122 = *(v75 + 8);
      v123 = v117;
LABEL_15:
      v124 = v118;
LABEL_28:
      v122(v123, v124);
      goto LABEL_29;
    }

    if (v93 == *MEMORY[0x277D5D360])
    {
      v129 = OUTLINED_FUNCTION_6_11();
      (v74)(v129);
      v130 = OUTLINED_FUNCTION_11_4();
      v131(v130);
      v132 = v205;
      v133 = OUTLINED_FUNCTION_24_3();
      v134 = v195;
      v135(v133);
      v136 = *(v132 + 16);
      v137 = v203;
      v136(v203, v77, v134);
      v138 = v196;
      sub_26804E21C();
      v139 = v194;
      v136(v194, v137, v134);
      type metadata accessor for SentMessageSnippetViewModel();
      swift_allocObject();
      v140 = sub_26802D5CC(v139);
      sub_26804E62C();
      v206 = v69;
      OUTLINED_FUNCTION_0_6();
      sub_267FAE398(v141, v142);
      v143 = sub_26804D17C();
      v212 = v63;
      v145 = v144;
      KeyPath = swift_getKeyPath();
      v221 = v140;
      sub_26804DDDC();
      v148 = *(&v219 + 1);
      v147 = v219;
      v149 = *(v205 + 8);
      v149(v203, v134);
      *v138 = v143;
      *(v138 + 8) = v145;
      *(v138 + 16) = KeyPath;
      *(v138 + 24) = 0;
      *(v138 + 32) = v147;
      *(v138 + 40) = v148;
      sub_267FAE398(&qword_280243CF0, type metadata accessor for SentMessageSnippetView);
      v57 = sub_26804D97C();
      sub_268026C04(v138, type metadata accessor for SentMessageSnippetView);
      v149(v204, v134);
      goto LABEL_29;
    }

    if (v93 == *MEMORY[0x277D5D380])
    {
      v150 = OUTLINED_FUNCTION_6_11();
      (v74)(v150);
      v151 = OUTLINED_FUNCTION_11_4();
      v152(v151);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_49();
      v153();
      v154 = v192;
      (*(v75 + 16))(v192 + *(v193 + 20), v77, v72);
      sub_26804C54C();
      *v154 = sub_26804C53C();
      sub_26804E21C();
      sub_267FAE398(&qword_280243CE8, type metadata accessor for AppDisambiguationSnippetView);
      OUTLINED_FUNCTION_31();
      v57 = sub_26804D97C();
      v155 = type metadata accessor for AppDisambiguationSnippetView;
      v156 = v154;
    }

    else
    {
      if (v93 == *MEMORY[0x277D5D388])
      {
        v157 = OUTLINED_FUNCTION_6_11();
        (v74)(v157);
        v158 = OUTLINED_FUNCTION_11_4();
        v159(v158);
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_49();
        v160();
        OUTLINED_FUNCTION_41();
        v161 = OUTLINED_FUNCTION_48();
        v162(v161);
        sub_26804E21C();
        sub_267FAE398(&qword_280243CE0, type metadata accessor for ConfirmationButtonSnippetView);
        OUTLINED_FUNCTION_31();
        v57 = sub_26804D97C();
        v163 = type metadata accessor for ConfirmationButtonSnippetView;
      }

      else
      {
        if (v93 != *MEMORY[0x277D5D358])
        {
          if (v93 != *MEMORY[0x277D5D378])
          {
            goto LABEL_17;
          }

          v173 = OUTLINED_FUNCTION_6_11();
          (v74)(v173);
          v174 = OUTLINED_FUNCTION_11_4();
          v175(v174);
          OUTLINED_FUNCTION_25_2();
          v176 = OUTLINED_FUNCTION_24_3();
          v118 = v188;
          v177(v176);
          OUTLINED_FUNCTION_41();
          v178 = v185;
          v179 = OUTLINED_FUNCTION_46();
          v180(v179);
          v181 = v187;
          sub_268027BD4(v178, v187);
          sub_267FAE398(&qword_280243CD0, type metadata accessor for TapbackCarPlaySnippetView);
          v57 = sub_26804D97C();
          sub_268026C04(v181, type metadata accessor for TapbackCarPlaySnippetView);
          v122 = *(v75 + 8);
          v123 = v77;
          goto LABEL_15;
        }

        v164 = OUTLINED_FUNCTION_6_11();
        (v74)(v164);
        v165 = OUTLINED_FUNCTION_11_4();
        v166(v165);
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_49();
        v167();
        OUTLINED_FUNCTION_41();
        v168 = OUTLINED_FUNCTION_48();
        v169(v168);
        sub_26804E21C();
        sub_267FAE398(&qword_280243CD8, type metadata accessor for ButtonSnippetView);
        OUTLINED_FUNCTION_31();
        v57 = sub_26804D97C();
        v163 = type metadata accessor for ButtonSnippetView;
      }

      v155 = v163;
      v156 = v92;
    }

    sub_268026C04(v156, v155);
    v122 = *(v75 + 8);
    v123 = v77;
    v124 = v72;
    goto LABEL_28;
  }

  v103 = OUTLINED_FUNCTION_39(v226);
  v57 = v218;
  v74(v103, v69, v218);
  (*(v63 + 96))(v92, v57);
  v104 = v209;
  v105 = v208[1];
  OUTLINED_FUNCTION_49();
  v106();
  if (v216 == 6)
  {
    v107 = v198;
    (*(v104 + 16))(v198, v105, v72);
    v108 = v199;
    v109 = (v107 + *(v199 + 20));
    sub_26804E62C();
    OUTLINED_FUNCTION_0_6();
    sub_267FAE398(v110, v111);
    OUTLINED_FUNCTION_31();
    *v109 = sub_26804D17C();
    v109[1] = v112;
    v113 = v107 + *(v108 + 24);
    *v113 = swift_getKeyPath();
    *(v113 + 8) = 0;
    *(v113 + 16) = 0;
    sub_267FAE398(&qword_280243D00, type metadata accessor for WatchAutoSendButtonsSnippetView);
    v57 = sub_26804D97C();
    sub_268026C04(v107, type metadata accessor for WatchAutoSendButtonsSnippetView);
    (*(v104 + 8))(v105, v72);
    goto LABEL_29;
  }

  (*(v104 + 8))(v105, v72);
LABEL_17:
  sub_2680269B0();
  v125 = swift_allocError();
  *v126 = 1;
  v217 = v125;
  swift_willThrow();
  v127 = OUTLINED_FUNCTION_42();
  v128(v127);
  return v57;
}

uint64_t sub_26802690C(char a1)
{
  sub_26804ED7C();
  MEMORY[0x26D60D9E0](a1 & 1);
  return sub_26804ED9C();
}

unint64_t sub_2680269B0()
{
  result = qword_280243CB0;
  if (!qword_280243CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243CB0);
  }

  return result;
}

uint64_t sub_268026A04()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D1DC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_268026A6C()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D23C();
  *v0 = result;
  return result;
}

char *sub_268026ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D20);
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

unint64_t sub_268026BB0()
{
  result = qword_280243CF8;
  if (!qword_280243CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243CF8);
  }

  return result;
}

uint64_t sub_268026C04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MessagesUIPluginBase.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268026E44()
{
  result = qword_280243D18;
  if (!qword_280243D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243D18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_26804C72C();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_44()
{
}

void OUTLINED_FUNCTION_47()
{
  v2 = *(v1 - 104);
  *v0 = *(v1 - 112);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_26804EC9C();
}

uint64_t sub_268026FE8(uint64_t a1)
{
  v2 = sub_26804BD7C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  v8 = objc_allocWithZone(type metadata accessor for AudioPlayer());
  v10[1] = sub_267FC3718(v7);
  sub_26804DDDC();
  (*(v4 + 8))(a1, v2);
  return v10[2];
}

uint64_t sub_268027114(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268027154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2680271C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[1] = a5;
  v27[0] = sub_26804D10C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D28);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;

  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D30);
  sub_268027780();
  sub_26804DE2C();
  sub_26804D0FC();
  OUTLINED_FUNCTION_1_12();
  sub_267FC126C(v22, &qword_280243D28);
  OUTLINED_FUNCTION_0_7();
  sub_268027864(v23, v24);
  v25 = v27[0];
  sub_26804DABC();
  (*(v10 + 8))(v13, v25);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_268027430(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E80);
  sub_26804DDEC();
  v3 = v23;
  swift_getKeyPath();
  v4 = sub_268027864(&qword_2802418E0, type metadata accessor for AudioPlayer);
  OUTLINED_FUNCTION_3_14(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v23);
  sub_26804C03C();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3_14(KeyPath, v13, v14, v15, v16, v17, v18, v19, v22, v24, v3);
  sub_26804C05C();

  sub_267FC3584((v3[OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying] & 1) == 0);
  swift_getKeyPath();
  sub_26804C04C();
}

uint64_t sub_268027574@<X0>(uint64_t a1@<X8>)
{
  v22 = sub_26804D63C();
  v2 = sub_26804DFAC();
  v23 = v3;
  v24 = v2;
  sub_2680276D0();
  v4 = sub_26804D96C();
  v6 = v5;
  v8 = v7;
  sub_26804D65C();
  v9 = sub_26804D90C();
  v11 = v10;
  v13 = v12;
  sub_267FB0FB4(v4, v6, v8 & 1);

  sub_26804D87C();
  v14 = sub_26804D93C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_267FB0FB4(v9, v11, v13 & 1);

  *a1 = v22;
  *(a1 + 4) = 256;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18 & 1;
  *(a1 + 32) = v20;
  *(a1 + 40) = v24;
  *(a1 + 48) = v23;
  return result;
}

uint64_t sub_2680276D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E80);
  sub_26804DDEC();
  sub_267FC35C4();

  return sub_26804DD1C();
}

unint64_t sub_268027780()
{
  result = qword_280243D38;
  if (!qword_280243D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243D30);
    sub_267FC126C(&qword_280243D40, &qword_280243D48);
    sub_267FC126C(&qword_2802436E0, &qword_2802436E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243D38);
  }

  return result;
}

uint64_t sub_268027864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TapbackCarPlaySnippetView()
{
  result = qword_280243D68;
  if (!qword_280243D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268027920()
{
  sub_26804E22C();
  if (v0 <= 0x3F)
  {
    sub_267FC1004();
    if (v1 <= 0x3F)
    {
      sub_268027A6C();
      if (v2 <= 0x3F)
      {
        sub_268027ABC(319, &qword_280242018, type metadata accessor for TapbackCarPlaySnippetViewModel);
        if (v3 <= 0x3F)
        {
          sub_26804C37C();
          if (v4 <= 0x3F)
          {
            sub_267FC63B0();
            if (v5 <= 0x3F)
            {
              sub_268027ABC(319, &qword_280241918, type metadata accessor for TimerState);
              if (v6 <= 0x3F)
              {
                sub_268027B10();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_268027A6C()
{
  if (!qword_280241FA0)
  {
    v0 = sub_26804EA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241FA0);
    }
  }
}

void sub_268027ABC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26804DE1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_268027B10()
{
  if (!qword_280243D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241FD8);
    sub_26802BE30(&qword_280242028);
    v0 = sub_26804CEAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280243D78);
    }
  }
}

uint64_t sub_268027BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419D0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v41 = sub_26804CB2C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  sub_26804E21C();
  v18 = type metadata accessor for TapbackCarPlaySnippetView();
  v19 = (a2 + v18[5]);
  sub_26804E62C();
  OUTLINED_FUNCTION_1_13();
  sub_26802CA24(v20);
  *v19 = sub_26804D17C();
  v19[1] = v21;
  swift_storeEnumTagMultiPayload();
  sub_26802BF84(v17, v15, type metadata accessor for TimerState);
  sub_26804DDDC();
  sub_26802C414(v17, type metadata accessor for TimerState);
  sub_26804C24C();
  OUTLINED_FUNCTION_3_15();
  sub_26802CA24(v22);
  sub_26804CE9C();
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v23 = sub_26804CD4C();
  __swift_project_value_buffer(v23, qword_2802487E0);
  v24 = sub_26804CD3C();
  v25 = sub_26804E87C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_267FA7000, v24, v25, "#TapbackCarPlaySnippetView init", v26, 2u);
    MEMORY[0x26D60E1E0](v26, -1, -1);
  }

  v27 = v42;
  v28 = sub_26804CB0C();
  v29 = (a2 + v18[6]);
  *v29 = v28;
  v29[1] = v30;
  v31 = v41;
  (*(v8 + 16))(v11, v27, v41);
  type metadata accessor for TapbackCarPlaySnippetViewModel();
  swift_allocObject();
  v32 = sub_26803B56C(v11);
  v33 = (a2 + v18[7]);
  v43 = v32;
  sub_26804DDDC();
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  sub_26804CB1C();
  sub_267FC69D8();
  v35 = [objc_opt_self() mainRunLoop];
  v36 = sub_26804EA4C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v36);
  v37 = sub_26804E9CC();

  sub_2680030A0(v6, &qword_2802419D0);
  v44 = v37;
  sub_26804E9BC();
  sub_26802CA24(&qword_280241910);
  v38 = sub_26804CDAC();
  (*(v8 + 8))(v27, v31);

  *(a2 + v18[9]) = v38;
  return result;
}

void *sub_268028094()
{
  result = sub_26804C22C();
  off_280243D58 = result;
  return result;
}

uint64_t sub_2680280B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v73 = v4;
  v5 = type metadata accessor for TapbackCarPlaySnippetView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v5 - 8;
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D88);
  OUTLINED_FUNCTION_1();
  v75 = v14;
  v76 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  v85 = v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D90);
  OUTLINED_FUNCTION_1();
  v78 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21();
  v86 = v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D98);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_21();
  v80 = v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DA0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21();
  v82 = v24;
  *v13 = sub_26804D49C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DA8);
  sub_2680288FC(v2, &v13[*(v25 + 44)]);
  v26 = v8;
  v71 = v8;
  v27 = *(v2 + *(v8 + 44));
  v84 = type metadata accessor for TapbackCarPlaySnippetView;
  sub_26802BF84(v2, v9, type metadata accessor for TapbackCarPlaySnippetView);
  v28 = *(v6 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = v7;
  v31 = swift_allocObject();
  sub_26802B968(v9, v31 + v29);
  v70 = v10;
  *&v13[*(v10 + 52)] = v27;
  v32 = &v13[*(v10 + 56)];
  *v32 = sub_26802B9CC;
  v32[1] = v31;
  v33 = *(v26 + 36);
  v69 = v2;
  v34 = (v2 + v33);
  v36 = *v34;
  v35 = v34[1];
  v87 = v36;
  v88 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v37 = v73;
  sub_26803B048(v73);

  v38 = v9;
  v68 = v9;
  sub_26802BF84(v2, v9, v84);
  v39 = v30;
  v40 = swift_allocObject();
  sub_26802B968(v38, v40 + v29);
  v67 = sub_26802CA68(&unk_280243DB0);
  v41 = sub_26802BE30(&qword_2802420B0);
  v42 = v70;
  v43 = v74;
  sub_26804DBDC();
  v44 = v39;

  sub_2680030A0(v37, &qword_280241FD8);
  sub_2680030A0(v13, &qword_280243D80);
  v45 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D60);
  v46 = v69;
  sub_26804CE2C();
  v47 = v68;
  sub_26802BF84(v46, v68, v84);
  v72 = v44;
  v84 = v28;
  v48 = swift_allocObject();
  v49 = v47;
  sub_26802B968(v47, v48 + v29);
  v87 = v42;
  v88 = v43;
  v89 = v67;
  v90 = v41;
  swift_getOpaqueTypeConformance2();
  v50 = v85;
  v51 = v75;
  sub_26804DBEC();

  sub_2680030A0(v37, &qword_280241FD8);
  (*(v76 + 8))(v50, v51);
  v52 = *(v46 + *(v45 + 28));
  if (v52)
  {
    v53 = v52;
    v54 = sub_26804E5AC();

    sub_26802BF84(v46, v49, type metadata accessor for TapbackCarPlaySnippetView);
    v55 = swift_allocObject();
    sub_26802B968(v49, v55 + v29);
    v56 = v80;
    (*(v78 + 32))(v80, v86, v81);
    v57 = v77;
    *(v56 + *(v77 + 52)) = v54;
    v58 = (v56 + *(v57 + 56));
    *v58 = sub_26802BED0;
    v58[1] = v55;
    sub_26802BF84(v46, v49, type metadata accessor for TapbackCarPlaySnippetView);
    v59 = swift_allocObject();
    sub_26802B968(v49, v59 + v29);
    v60 = v82;
    sub_267FDBADC(v56, v82, &qword_280243D98);
    v61 = (v60 + *(v79 + 36));
    *v61 = 0;
    v61[1] = 0;
    v61[2] = sub_26802BEE8;
    v61[3] = v59;
    sub_26802BF84(v46, v49, type metadata accessor for TapbackCarPlaySnippetView);
    v62 = swift_allocObject();
    sub_26802B968(v49, v62 + v29);
    v63 = v83;
    sub_267FDBADC(v60, v83, &qword_280243DA0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DB8);
    v65 = (v63 + *(result + 36));
    *v65 = sub_26802BF00;
    v65[1] = v62;
    v65[2] = 0;
    v65[3] = 0;
  }

  else
  {
    sub_26804E62C();
    OUTLINED_FUNCTION_1_13();
    sub_26802CA24(v66);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2680288FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DC0) - 8;
  v3 = MEMORY[0x28223BE20](v48);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = sub_26804C37C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for CarPlayHeaderView(0);
  v14 = (v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = type metadata accessor for TapbackCarPlaySnippetView();
  v20 = *(v8 + 16);
  v20(v12, a1 + *(v19 + 32), v7);
  v21 = v14[8];
  *&v18[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v22 = &v18[v14[9]];
  *v22 = sub_26804CE8C() & 1;
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  v20(v18, v12, v7);
  v25 = *(v8 + 32);
  v26 = v46;
  v25(v46, v12, v7);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v25((v28 + v27), v26, v7);
  v29 = &v18[v14[7]];
  *v29 = sub_267FAE6F8;
  *(v29 + 1) = v28;
  v29[16] = 0;
  __src[0] = 0;
  sub_26804DDDC();
  LOBYTE(v27) = v55;
  v30 = v57;
  LOBYTE(v7) = sub_26804D7AC();
  v55 = 0;
  *v6 = sub_26804D3DC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DC8);
  sub_26802A4E4(v47, &v6[*(v31 + 44)]);
  v32 = sub_26804D7AC();
  v33 = &v6[*(v48 + 44)];
  *v33 = v32;
  *(v33 + 8) = xmmword_268054730;
  __asm { FMOV            V0.2D, #7.0 }

  *(v33 + 24) = _Q0;
  v33[40] = 0;
  v39 = v51;
  sub_26802BF84(v18, v51, type metadata accessor for CarPlayHeaderView);
  v40 = v49;
  sub_267FB8ACC(v6, v49);
  v41 = v39;
  v42 = v50;
  sub_26802BF84(v41, v50, type metadata accessor for CarPlayHeaderView);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DD0);
  v44 = *(v43 + 48);
  __src[0] = v27;
  *&__src[1] = *v53;
  *&__src[4] = *&v53[3];
  *&__src[8] = v30;
  *&__src[16] = 0x4073700000000000;
  __src[24] = v7;
  *&__src[25] = *v52;
  *&__src[28] = *&v52[3];
  *&__src[32] = 0;
  *&__src[40] = 0;
  v48 = xmmword_268054740;
  *&__src[48] = xmmword_268054740;
  __src[64] = 0;
  memcpy((v42 + v44), __src, 0x41uLL);
  sub_267FB8ACC(v40, v42 + *(v43 + 64));
  sub_267FDC224(__src, &v55, &qword_280243DD8);
  sub_2680030A0(v6, &qword_280243DC0);
  sub_26802C414(v18, type metadata accessor for CarPlayHeaderView);
  sub_2680030A0(v40, &qword_280243DC0);
  v55 = v27;
  *v56 = *v53;
  *&v56[3] = *&v53[3];
  v57 = v30;
  v58 = 0x4073700000000000;
  v59 = v7;
  *v60 = *v52;
  *&v60[3] = *&v52[3];
  v61 = 0;
  v62 = 0;
  v63 = v48;
  v64 = 0;
  sub_2680030A0(&v55, &qword_280243DD8);
  return sub_26802C414(v51, type metadata accessor for CarPlayHeaderView);
}

uint64_t sub_268028E48(uint64_t a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for TimerState();
  v6 = MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_26804BDFC();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TapbackCarPlaySnippetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  v42 = v1;
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_26802C414(v12, type metadata accessor for TimerState);
  }

  v37 = v16;
  v38 = v4;
  v18 = v39;
  (*(v39 + 32))(v15, v12, v13);
  sub_26804BDBC();
  v20 = v19 * 0.5;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
  (*(v18 + 16))(v10, v15, v13);
  *&v10[v22] = v21;
  swift_storeEnumTagMultiPayload();
  sub_26802BF84(v10, v41, type metadata accessor for TimerState);
  v23 = v42;
  sub_26804DDFC();
  sub_26802C414(v10, type metadata accessor for TimerState);
  if (v21 != 1.0)
  {
    return (*(v18 + 8))(v15, v13);
  }

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v24 = v15;
  v25 = v13;
  v26 = sub_26804CD4C();
  __swift_project_value_buffer(v26, qword_2802487E0);
  v27 = sub_26804CD3C();
  v28 = sub_26804E88C();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v37;
  v31 = v38;
  if (v29)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_267FA7000, v27, v28, "#TapbackCarPlaySnippetView selection timer: expired", v32, 2u);
    MEMORY[0x26D60E1E0](v32, -1, -1);
  }

  v33 = (v23 + *(v30 + 28));
  v35 = v33[1];
  v43 = *v33;
  v34 = v43;
  v44 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B3D4(0);

  sub_26802B6AC();
  v43 = v34;
  v44 = v35;
  sub_26804DDEC();
  sub_26804E20C();
  sub_26803B740(v31);

  sub_2680030A0(v31, &qword_280241820);
  return (*(v18 + 8))(v24, v25);
}

void sub_2680292CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v11 = sub_26804CD4C();
  __swift_project_value_buffer(v11, qword_2802487E0);
  sub_267FDC224(a2, v10, &qword_280241FD8);
  v12 = sub_26804CD3C();
  v13 = sub_26804E88C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    sub_267FDC224(v10, v8, &qword_280241FD8);
    v16 = sub_26804C24C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
    {
      sub_2680030A0(v8, &qword_280241FD8);
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    else
    {
      v18 = sub_26804C23C();
      v17 = v19;
      (*(*(v16 - 8) + 8))(v8, v16);
    }

    sub_2680030A0(v10, &qword_280241FD8);
    v20 = sub_267FAE0C4(v18, v17, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_267FA7000, v12, v13, "#TapbackCarPlaySnippetView selectedTapback changed to %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D60E1E0](v15, -1, -1);
    MEMORY[0x26D60E1E0](v14, -1, -1);
  }

  else
  {

    sub_2680030A0(v10, &qword_280241FD8);
  }

  sub_26802961C();
  v21 = *(a3 + *(type metadata accessor for TapbackCarPlaySnippetView() + 20));
  if (v21)
  {
    v22 = v21;
    sub_26804E56C();
  }

  else
  {
    sub_26804E62C();
    sub_26802CA24(&qword_2802412E0);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_26802961C()
{
  v0 = type metadata accessor for TimerState();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  type metadata accessor for TapbackCarPlaySnippetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = v8;
  }

  else
  {
    v9 = sub_26804BDFC();
    (*(*(v9 - 8) + 8))(v8, v9);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v10 = sub_26804CD4C();
    __swift_project_value_buffer(v10, qword_2802487E0);
    v11 = sub_26804CD3C();
    v12 = sub_26804E88C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267FA7000, v11, v12, "#TapbackCarPlaySnippetView selection timer: paused", v13, 2u);
      MEMORY[0x26D60E1E0](v13, -1, -1);
    }

    *v6 = 0;
    swift_storeEnumTagMultiPayload();
    sub_26802BF84(v6, v3, type metadata accessor for TimerState);
    sub_26804DDFC();
  }

  return sub_26802C414(v6, type metadata accessor for TimerState);
}

void sub_268029880(uint64_t a1)
{
  sub_268029944();
  v2 = *(a1 + *(type metadata accessor for TapbackCarPlaySnippetView() + 20));
  if (v2)
  {
    v3 = v2;
    sub_26804E56C();
  }

  else
  {
    sub_26804E62C();
    sub_26802CA24(&qword_2802412E0);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_268029944()
{
  v0 = type metadata accessor for TimerState();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  type metadata accessor for TapbackCarPlaySnippetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = v8;
  }

  else
  {
    v9 = sub_26804BDFC();
    (*(*(v9 - 8) + 8))(v8, v9);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v10 = sub_26804CD4C();
    __swift_project_value_buffer(v10, qword_2802487E0);
    v11 = sub_26804CD3C();
    v12 = sub_26804E88C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267FA7000, v11, v12, "#TapbackButton selection timer: restart", v13, 2u);
      MEMORY[0x26D60E1E0](v13, -1, -1);
    }

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
    sub_26804BDEC();
    *&v6[v14] = 0;
    swift_storeEnumTagMultiPayload();
    sub_26802BF84(v6, v3, type metadata accessor for TimerState);
    sub_26804DDFC();
  }

  return sub_26802C414(v6, type metadata accessor for TimerState);
}

uint64_t sub_268029BC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_26804E5CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  v14 = *(v8 + 16);
  v14(v33 - v12, a1, v7);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 != *MEMORY[0x277D63F48])
  {
    if (v15 != *MEMORY[0x277D63F30])
    {
      return (*(v8 + 8))(v13, v7);
    }

    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v26 = sub_26804CD4C();
    __swift_project_value_buffer(v26, qword_2802487E0);
    v27 = sub_26804CD3C();
    v28 = sub_26804E88C();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_20:

      sub_26802961C();
      return (*(v8 + 8))(v13, v7);
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#TapbackCarPlaySnippetView Siri event: user speech detected";
LABEL_19:
    _os_log_impl(&dword_267FA7000, v27, v28, v30, v29, 2u);
    MEMORY[0x26D60E1E0](v29, -1, -1);
    goto LABEL_20;
  }

  v14(v11, v13, v7);
  (*(v8 + 96))(v11, v7);
  v16 = *v11;

  if (!v16)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v31 = sub_26804CD4C();
    __swift_project_value_buffer(v31, qword_2802487E0);
    v27 = sub_26804CD3C();
    v28 = sub_26804E88C();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_20;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#TapbackCarPlaySnippetView player state update: Siri speech playing";
    goto LABEL_19;
  }

  if (v16 == 1)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v17 = sub_26804CD4C();
    __swift_project_value_buffer(v17, qword_2802487E0);
    v18 = sub_26804CD3C();
    v19 = sub_26804E88C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267FA7000, v18, v19, "#TapbackCarPlaySnippetView player state update: Siri speech paused", v20, 2u);
      MEMORY[0x26D60E1E0](v20, -1, -1);
    }

    v21 = (v2 + *(type metadata accessor for TapbackCarPlaySnippetView() + 28));
    v23 = *v21;
    v22 = v21[1];
    v33[2] = v23;
    v33[3] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
    sub_26804DDEC();
    sub_26803B048(v6);

    v24 = sub_26804C24C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v24);
    sub_2680030A0(v6, &qword_280241FD8);
    if (EnumTagSinglePayload != 1)
    {
      sub_26802A1EC();
    }
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_26802A054()
{
  type metadata accessor for TapbackCarPlaySnippetView();
  sub_26804CD6C();
  sub_26804E9AC();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26804CD8C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

void sub_26802A0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v5 = (a1 + *(type metadata accessor for TapbackCarPlaySnippetView() + 28));
  v7 = *v5;
  v6 = v5[1];
  v10[2] = v7;
  v10[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B048(v4);

  v8 = sub_26804C24C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v8);
  sub_2680030A0(v4, &qword_280241FD8);
  if (EnumTagSinglePayload != 1)
  {
    sub_26802A1EC();
  }
}

void sub_26802A1EC()
{
  v1 = type metadata accessor for TimerState();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = (v0 + *(type metadata accessor for TapbackCarPlaySnippetView() + 28));
  v9 = *v7;
  v8 = v7[1];
  v20[2] = v9;
  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v10 = sub_26803B3FC();

  if (v10)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v11 = sub_26804CD4C();
    __swift_project_value_buffer(v11, qword_2802487E0);
    v12 = sub_26804CD3C();
    v13 = sub_26804E88C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267FA7000, v12, v13, "#TapbackCarPlaySnippetView selection timer: started", v14, 2u);
      MEMORY[0x26D60E1E0](v14, -1, -1);
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
    sub_26804BDEC();
    *&v6[v15] = 0;
    swift_storeEnumTagMultiPayload();
    sub_26802BF84(v6, v4, type metadata accessor for TimerState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
    sub_26804DDFC();
    sub_26802C414(v6, type metadata accessor for TimerState);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v16 = sub_26804CD4C();
    __swift_project_value_buffer(v16, qword_2802487E0);
    v17 = sub_26804CD3C();
    v18 = sub_26804E88C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_267FA7000, v17, v18, "#TapbackCarPlaySnippetView selection timer: skipped because dismissal timer is disabled", v19, 2u);
      MEMORY[0x26D60E1E0](v19, -1, -1);
    }
  }
}

uint64_t sub_26802A4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for TapbackCarPlaySnippetView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DE0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (qword_280241128 != -1)
  {
    swift_once();
  }

  v10 = *(off_280243D58 + 2);
  v24 = 0;
  v25 = v10;
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for TapbackCarPlaySnippetView;
  sub_26802BF84(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TapbackCarPlaySnippetView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_26802B968(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242958);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243DE8);
  v18 = v5;
  sub_267FEF4E0();
  sub_26802CA68(&unk_280243DF0);
  sub_26804DEFC();
  sub_26804CC7C();
  sub_26802BF84(v17, v6, v20);
  v13 = swift_allocObject();
  sub_26802B968(v6, v13 + v11);
  sub_26802C364();
  sub_26802CA24(&unk_280243E00);
  sub_26802CA24(&unk_280243E08);
  sub_26802CA24(&unk_280243E10);
  v14 = v22;
  sub_26804DA0C();

  return (*(v21 + 8))(v9, v14);
}

uint64_t sub_26802A8B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v69 = a2;
  v67 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242000);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_26804C24C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E18);
  MEMORY[0x28223BE20](v68);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E20);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v65 = &v51 - v21;
  v22 = *a1;
  if (qword_280241128 == -1)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = swift_once();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v70 = off_280243D58;
  if (v22 >= *(off_280243D58 + 2))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v54 = v17;
  v55 = v16;
  v56 = v6;
  v57 = v4;
  v23 = v70 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22;
  v61 = v13;
  v62 = v11;
  v24 = *(v11 + 16);
  v53 = v23;
  v24(v13);
  v25 = type metadata accessor for TapbackCarPlaySnippetView();
  v26 = v25[7];
  v27 = (v69 + v25[6]);
  v60 = *v27;
  v64 = v9;
  v28 = v27[1];
  v29 = *(v69 + v26 + 8);
  v72 = *(v69 + v26);
  v73 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  v63 = v22;
  sub_26804DDEC();
  v30 = v25[11];
  v58 = v71;
  v59 = v30;
  v31 = type metadata accessor for TapbackButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D60);
  sub_26804CE4C();
  sub_26804E21C();
  v32 = &v15[v31[9]];
  LOBYTE(v71) = 1;
  sub_26804DDDC();
  v33 = v73;
  *v32 = v72;
  *(v32 + 1) = v33;
  v34 = &v15[v31[5]];
  v35 = v61;
  v52 = v24;
  (v24)(v34, v61, v10);
  v36 = &v15[v31[6]];
  *v36 = v60;
  *(v36 + 1) = v28;
  v37 = v64;
  v38 = &v15[v31[7]];
  v71 = v58;
  type metadata accessor for TapbackCarPlaySnippetViewModel();
  sub_26804DDDC();
  (*(v62 + 8))(v35, v10);
  v39 = v73;
  *v38 = v72;
  *(v38 + 1) = v39;
  *&v15[*(v68 + 36)] = 0x3FF0000000000000;
  result = sub_26804CE4C();
  v40 = v63;
  if (v63 < v70[2])
  {
    v41 = v56;
    v52(v56, v53, v10);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v10);
    sub_26802C46C();
    sub_26802BE30(&qword_280242028);
    v42 = v65;
    sub_26804DB9C();
    sub_2680030A0(v41, &qword_280241FD8);
    sub_2680030A0(v37, &qword_280242000);
    sub_2680030A0(v15, &qword_280243E18);
    v43 = v40 >= v70[2] - 1;
    v45 = v54;
    v44 = v55;
    v46 = *(v54 + 16);
    v47 = v66;
    v46(v66, v42, v55);
    v48 = v67;
    v46(v67, v47, v44);
    v49 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E48) + 48)];
    *v49 = 0;
    v49[8] = 0;
    v49[9] = v43;
    v50 = *(v45 + 8);
    v50(v42, v44);
    return (v50)(v47, v44);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_26802AEFC(uint64_t a1)
{
  v65 = type metadata accessor for TapbackCarPlaySnippetView();
  MEMORY[0x28223BE20](v65);
  v66 = v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26804C24C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v64 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v64 - v17;
  v64[1] = a1;
  sub_26804CC5C();
  v67 = v18;
  v19 = v3;
  sub_267FDC224(v18, v16, &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    sub_2680030A0(v16, &qword_280241FD8);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v20 = sub_26804CD4C();
    __swift_project_value_buffer(v20, qword_2802487E0);
    v21 = sub_26804CD3C();
    v22 = sub_26804E88C();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v68;
    v25 = v65;
    if (v23)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_267FA7000, v21, v22, "#TapbackCarPlaySnippetView updateSnippet for deselect tapback", v26, 2u);
      MEMORY[0x26D60E1E0](v26, -1, -1);
    }

    v27 = (v24 + *(v25 + 28));
    v28 = *v27;
    v29 = v27[1];
    v70 = *v27;
    v71 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
    sub_26804DDEC();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v3);
    sub_26803B1BC(v13);
  }

  else
  {
    (*(v4 + 32))(v9, v16, v3);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v30 = sub_26804CD4C();
    __swift_project_value_buffer(v30, qword_2802487E0);
    (*(v4 + 16))(v7, v9, v3);
    v31 = sub_26804CD3C();
    v32 = sub_26804E88C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64[0] = v3;
      v35 = v34;
      v70 = v34;
      *v33 = 136315138;
      v36 = sub_26804C23C();
      v38 = v37;
      v39 = v7;
      v40 = *(v4 + 8);
      v40(v39, v64[0]);
      v41 = sub_267FAE0C4(v36, v38, &v70);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_267FA7000, v31, v32, "#TapbackCarPlaySnippetView updateSnippet for tapback: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v42 = v35;
      v19 = v64[0];
      MEMORY[0x26D60E1E0](v42, -1, -1);
      MEMORY[0x26D60E1E0](v33, -1, -1);
    }

    else
    {

      v43 = v7;
      v40 = *(v4 + 8);
      v40(v43, v3);
    }

    v25 = v65;
    v44 = v68;
    v45 = (v68 + *(v65 + 28));
    v28 = *v45;
    v29 = v45[1];
    v70 = *v45;
    v71 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
    sub_26804DDEC();
    sub_26803B684(v9);

    v46 = v9;
    v24 = v44;
    v40(v46, v19);
  }

  v70 = v28;
  v71 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v47 = sub_26804CC6C();
  sub_26803B4A0(v47 & 1);

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v48 = sub_26804CD4C();
  __swift_project_value_buffer(v48, qword_2802487E0);
  v49 = v66;
  sub_26802BF84(v24, v66, type metadata accessor for TapbackCarPlaySnippetView);
  v50 = sub_26804CD3C();
  v51 = sub_26804E88C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 136315138;
    v54 = (v49 + *(v25 + 28));
    v56 = *v54;
    v55 = v54[1];
    v69 = v53;
    v70 = v56;
    v71 = v55;
    sub_26804DDEC();
    v57 = v49;
    v58 = sub_26803B3FC();

    v59 = (v58 & 1) == 0;
    if (v58)
    {
      v60 = 0x64656C62616E65;
    }

    else
    {
      v60 = 0x64656C6261736964;
    }

    if (v59)
    {
      v61 = 0xE800000000000000;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    sub_26802C414(v57, type metadata accessor for TapbackCarPlaySnippetView);
    v62 = sub_267FAE0C4(v60, v61, &v69);

    *(v52 + 4) = v62;
    _os_log_impl(&dword_267FA7000, v50, v51, "#TapbackCarPlaySnippetView updateSnippet timer %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x26D60E1E0](v53, -1, -1);
    MEMORY[0x26D60E1E0](v52, -1, -1);
  }

  else
  {

    sub_26802C414(v49, type metadata accessor for TapbackCarPlaySnippetView);
  }

  sub_26802A1EC();
  v70 = v28;
  v71 = v29;
  sub_26804DDEC();
  sub_26803B3D4(1);

  return sub_2680030A0(v67, &qword_280241FD8);
}

uint64_t sub_26802B6AC()
{
  v0 = type metadata accessor for TimerState();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v16[-1] - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - v7;
  type metadata accessor for TapbackCarPlaySnippetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = v8;
  }

  else
  {
    v9 = sub_26804BDFC();
    (*(*(v9 - 8) + 8))(v8, v9);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v10 = sub_26804CD4C();
    __swift_project_value_buffer(v10, qword_2802487E0);
    v11 = sub_26804CD3C();
    v12 = sub_26804E88C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_267FA7000, v11, v12, "#TapbackCarPlaySnippetView selection timer: stopped", v13, 2u);
      MEMORY[0x26D60E1E0](v13, -1, -1);
    }

    sub_26804CD6C();
    sub_26804E9AC();

    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_26804CD8C();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    *v6 = 0;
    swift_storeEnumTagMultiPayload();
    sub_26802BF84(v6, v3, type metadata accessor for TimerState);
    sub_26804DDFC();
  }

  return sub_26802C414(v6, type metadata accessor for TimerState);
}

uint64_t sub_26802B968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapbackCarPlaySnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26802B9E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E68) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E70) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E78) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  v38 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E80) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  sub_26804DEDC();
  sub_26804DFAC();
  sub_26804CFBC();
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243E88) + 36)];
  v23 = v44;
  *v22 = v43;
  *(v22 + 1) = v23;
  *(v22 + 2) = v45;
  v24 = [objc_opt_self() separatorColor];
  v25 = sub_26804DC1C();
  KeyPath = swift_getKeyPath();
  v27 = &v10[*(v7 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  v41 = a1;
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDEC();
  if (v40)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = sub_267FDBADC(v10, v14, &qword_280243E68);
  *&v14[*(v11 + 44)] = v28;
  v30 = MEMORY[0x26D60CC30](v29, 0.25, 1.0, 0.0);
  v41 = a1;
  v42 = a2;
  sub_26804DDEC();
  v31 = v40;
  v32 = v38;
  sub_267FDBADC(v14, v38, &qword_280243E70);
  v33 = v32 + *(v15 + 44);
  *v33 = v30;
  *(v33 + 8) = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  *(v34 + 32) = a4;
  sub_267FDBADC(v32, v21, &qword_280243E78);
  v35 = &v21[*(v18 + 44)];
  *v35 = sub_26802C6E0;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  sub_267FDBADC(v21, v39, &qword_280243E80);
}

void sub_26802BDB8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TapbackCarPlaySnippetView();
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_10_7();

  sub_2680292CC(a1, a2, v2 + v6);
}

unint64_t sub_26802BE30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_12_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241FD8);
    OUTLINED_FUNCTION_3_15();
    sub_26802CA24(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26802BF18(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for TapbackCarPlaySnippetView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_10_7();

  return a1(v1 + v3);
}

uint64_t sub_26802BF84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_26802BFE0@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for TapbackCarPlaySnippetView();
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_10_7();

  return sub_26802A8B0(a1, v2 + v6, a2);
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for TapbackCarPlaySnippetView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);

  v6 = v1[8];
  sub_26804C37C();
  OUTLINED_FUNCTION_4();
  (*(v7 + 8))(v0 + v3 + v6);

  v8 = v0 + v3 + v1[10];
  type metadata accessor for TimerState();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_4();
    (*(v9 + 8))(v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  v10 = v0 + v3 + v1[11];
  v11 = sub_26804C24C();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243D60);

  v13 = *(v12 + 40);
  if (!__swift_getEnumTagSinglePayload(v10 + v13, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v10 + v13, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26802C2F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for TapbackCarPlaySnippetView();
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_10_7();
  return a2(a1);
}

unint64_t sub_26802C364()
{
  result = qword_280243DF8;
  if (!qword_280243DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243DE0);
    sub_26802CA68(&unk_280243DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243DF8);
  }

  return result;
}

uint64_t sub_26802C414(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26802C46C()
{
  result = qword_280243E28;
  if (!qword_280243E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243E18);
    sub_26802CA24(&unk_280243E30);
    sub_26802CA68(&unk_280243E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243E28);
  }

  return result;
}

uint64_t sub_26802C554(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26802C5A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_26802C60C()
{
  result = qword_280243E58;
  if (!qword_280243E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243DA0);
    sub_26802CA68(&unk_280243E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243E58);
  }

  return result;
}

unint64_t sub_26802C6F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_12_6(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_6_0(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26802C76C()
{
  result = qword_280243E98;
  if (!qword_280243E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243E78);
    sub_26802C824();
    sub_26802CA68(&unk_280243EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243E98);
  }

  return result;
}

unint64_t sub_26802C824()
{
  result = qword_280243EA0;
  if (!qword_280243EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243E70);
    sub_26802C8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243EA0);
  }

  return result;
}

unint64_t sub_26802C8B0()
{
  result = qword_280243EA8;
  if (!qword_280243EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243E68);
    sub_26802C968();
    sub_26802CA68(&unk_280241E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243EA8);
  }

  return result;
}

unint64_t sub_26802C968()
{
  result = qword_280243EB0;
  if (!qword_280243EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243E88);
    sub_26802CA24(&unk_280243EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243EB0);
  }

  return result;
}

unint64_t sub_26802CA24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_12_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26802CA68(uint64_t a1)
{
  result = OUTLINED_FUNCTION_12_6(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_6_0(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t type metadata accessor for BalloonView()
{
  result = qword_280243ED8;
  if (!qword_280243ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26802CB24()
{
  sub_26802CBA8();
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26802CBA8()
{
  if (!qword_280243EE8)
  {
    type metadata accessor for SentMessageSnippetViewModel();
    v0 = sub_26804DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280243EE8);
    }
  }
}

uint64_t sub_26802CC1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26804C26C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26804C2AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243ED0);
  sub_26804DF1C();
  v9 = sub_26803C850();

  sub_268043DE8(v9);
  sub_26804DF1C();
  sub_26802D570();

  sub_26804C28C();
  (*(v6 + 32))(a1, v8, v5);
  v10 = type metadata accessor for TextBalloonView();
  v11 = *(v10 + 20);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 24);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v13 = sub_26804DFAC();
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243EF0) + 36);
  sub_26802CE94(v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243818);
  v18 = (v16 + *(result + 36));
  *v18 = v13;
  v18[1] = v15;
  return result;
}

uint64_t sub_26802CE94(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26804DC9C();
  v5 = sub_26804DCAC();

  v9 = v5;
  v10 = 256;
  sub_26802D1CC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26802D230(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243830);
  sub_267FC126C(&qword_280243838, &qword_280243830);
  sub_26804DAEC();
}

uint64_t sub_26802D038()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v3 = sub_26804CD4C();
  __swift_project_value_buffer(v3, qword_2802487E0);
  v4 = sub_26804CD3C();
  v5 = sub_26804E88C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267FA7000, v4, v5, "#BalloonView component tapped, punching out", v6, 2u);
    MEMORY[0x26D60E1E0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243ED0);
  sub_26804DF1C();
  type metadata accessor for BalloonView();
  sub_26804E20C();
  sub_26803D4A8(v2);

  return sub_26802D2F0(v2);
}

uint64_t sub_26802D1CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26802D230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26802D2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26802D358()
{
  result = qword_280243EF8;
  if (!qword_280243EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243EF0);
    sub_26800DBE0();
    sub_267FC126C(&qword_280243F00, &qword_280243818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243EF8);
  }

  return result;
}

uint64_t sub_26802D410()
{
  swift_getKeyPath();
  sub_26802DB1C();
  sub_26804C03C();
}

uint64_t sub_26802D4B8()
{
  swift_getKeyPath();
  sub_26802D824();
}

uint64_t sub_26802D52C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel__photoSharingInfo) = a2;
}

uint64_t sub_26802D570()
{
  sub_26803CB44();
  sub_26804E95C();
}

uint64_t sub_26802D5CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26804C95C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel__photoSharingInfo;
  *(v2 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel__photoSharingInfo) = 0;
  sub_26804C06C();
  v12 = sub_26804C90C();
  if (!v12)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CD4080]) initWithCode:3 userActivity:0];
  }

  *(v2 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel_intentResponse) = v12;
  *(v2 + OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel_shouldConfirmUnsend) = sub_26804C92C() & 1;
  v13 = sub_26804C91C();

  *(v2 + v11) = v13;
  v14 = *(v5 + 16);
  v14(v10, a1, v4);
  v14(v8, v10, v4);
  v15 = sub_2680444E8(v8, v2);
  v16 = *(v5 + 8);
  v16(a1, v4);
  v16(v10, v4);
  return v15;
}

uint64_t sub_26802D794()
{
  v0 = sub_26803C850();
  v1 = sub_26804E9FC();

  v2 = sub_26804E6BC();
  OUTLINED_FUNCTION_1_14();

  v3 = sub_26804E6BC();
  OUTLINED_FUNCTION_1_14();

  return v1;
}

uint64_t sub_26802D8AC()
{

  v1 = OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_26802D928()
{
  v0 = sub_26803C3D8();

  v1 = OBJC_IVAR____TtC14SiriMessagesUI27SentMessageSnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_26802D9A4()
{
  v0 = sub_26802D928();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SentMessageSnippetViewModel()
{
  result = qword_280243F18;
  if (!qword_280243F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26802DA4C()
{
  result = sub_26804C07C();
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

unint64_t sub_26802DB1C()
{
  result = qword_2802438F8;
  if (!qword_2802438F8)
  {
    type metadata accessor for SentMessageSnippetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802438F8);
  }

  return result;
}

uint64_t sub_26802DBF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v47 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419D0);
  v17 = OUTLINED_FUNCTION_15(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v46 = a10;
  v48 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a10);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v42 - v22);
  v24 = (&v42 + v21[16] - v22);
  v49 = 0;
  sub_26804DDDC();
  v25 = *(&v50 + 1);
  *v24 = v50;
  v24[1] = v25;
  v26 = v21[17];
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802412C0);
  sub_26804DDDC();
  *(v23 + v26) = v50;
  v27 = v21[18];
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802412D0);
  sub_26804DDDC();
  *(v23 + v27) = v50;
  v28 = (v23 + v21[19]);
  sub_26804E62C();
  OUTLINED_FUNCTION_2_20();
  sub_268030BA4(v29, v30);
  OUTLINED_FUNCTION_20();
  *v28 = sub_26804D17C();
  v28[1] = v31;
  v32 = (v23 + v21[20]);
  sub_26804E4FC();
  sub_268030BA4(&qword_2802412F0, MEMORY[0x277D63F18]);
  OUTLINED_FUNCTION_20();
  *v32 = sub_26804D17C();
  v32[1] = v33;
  v34 = v23 + v21[21];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  v34[16] = 0;
  sub_267FCAFE4(a1, v23);
  v23[5] = a3;
  v23[6] = a4;
  v35 = v43;
  v23[7] = a5;
  v23[8] = v35;
  sub_267FDC224(a2, v23 + v21[15], qword_280241200);
  v36 = v45;
  v23[9] = v44;
  v23[10] = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_26804C77C())
  {
    sub_267FC69D8();
    v37 = [objc_opt_self() mainRunLoop];
    v38 = sub_26804EA4C();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v38);
    v39 = sub_26804E9CC();

    sub_267FB05B4(v19, &qword_2802419D0);
    *&v50 = v39;
    sub_26804E9BC();
    sub_268030BA4(&qword_280241910, MEMORY[0x277CC9DF0]);
    v40 = sub_26804CDAC();
    sub_267FB05B4(a2, qword_280241200);
  }

  else
  {
    sub_267FB05B4(a2, qword_280241200);
    v40 = 0;
  }

  v23[11] = v40;
  sub_267FDBADC(v23, v47, v46);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26802E020@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804CCAC();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_26802E0E8(v5, a1);
}

uint64_t sub_26802E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  swift_storeEnumTagMultiPayload();
  sub_268030BE8(v9, v7, type metadata accessor for TimerState);
  sub_26804DDDC();
  sub_268030C44(v9, type metadata accessor for TimerState);
  v11 = a2 + v10[6];
  *v11 = sub_26804CE8C() & 1;
  *(v11 + 8) = v12;
  *(v11 + 16) = v13 & 1;
  v14 = (a2 + v10[7]);
  sub_26804E62C();
  OUTLINED_FUNCTION_2_20();
  sub_268030BA4(v15, v16);
  *v14 = sub_26804D17C();
  v14[1] = v17;
  v18 = v10[8];
  *(a2 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v19 = a2 + v10[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = a2 + v10[10];
  v24[15] = 0;
  sub_26804DDDC();
  v21 = v25;
  *v20 = v24[16];
  *(v20 + 8) = v21;
  sub_26804CCAC();
  OUTLINED_FUNCTION_4();
  return (*(v22 + 32))(a2, a1);
}

uint64_t sub_26802E31C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280241200);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  v11 = sub_26804CCAC();
  v19[3] = v11;
  v19[4] = sub_268030BA4(&qword_280243F38, MEMORY[0x277D5D940]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DE0C();
  sub_268030BE8(v1, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCompactCarPlayButtonView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_2680304BC(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_268030BE8(v2, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCompactCarPlayButtonView);
  v15 = swift_allocObject();
  sub_2680304BC(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  sub_268030BE8(v2, &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableCompactCarPlayButtonView);
  v16 = swift_allocObject();
  sub_2680304BC(&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13);
  return sub_26802DBF0(v19, v10, sub_268030C98, v14, sub_268030520, v15, sub_26803057C, v16, a1, &qword_280243F40, &unk_268054BD8);
}

void sub_26802E5F4()
{
  v1 = v0;
  v2 = sub_26804D3AC();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_26804E2DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26804BFFC();
  MEMORY[0x28223BE20](v12 - 8);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v13 = sub_26804CD4C();
  __swift_project_value_buffer(v13, qword_2802487E0);
  v14 = sub_26804CD3C();
  v15 = sub_26804E88C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267FA7000, v14, v15, "#AutoSendableCompactCarPlayButtonView submitting Confirm button DirectInvocation", v16, 2u);
    MEMORY[0x26D60E1E0](v16, -1, -1);
  }

  sub_26804E65C();
  sub_26804BFEC();

  (*(v9 + 104))(v11, *MEMORY[0x277D63BE0], v8);
  sub_26804E23C();
  v17 = sub_26804E24C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);
  v18 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  v19 = v1 + *(v18 + 36);
  v20 = *v19;
  v21 = *(v19 + 8);
  if (*(v19 + 16) == 1)
  {
  }

  else
  {

    sub_26804E8AC();
    v22 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC1318(v20, v21, 0);
    (*(v33 + 8))(v4, v34);
  }

  v23 = objc_allocWithZone(sub_26804E45C());
  v24 = sub_26804E44C();
  v25 = *(v1 + *(v18 + 28));
  if (v25)
  {
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    strcpy(v35, "buttonPressed");
    v35[7] = -4864;
    v28 = v25;
    v29 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    *(inited + 96) = v29;
    *(inited + 72) = 0x6D7269666E6F43;
    *(inited + 80) = 0xE700000000000000;
    v30 = sub_26804E65C();
    v31 = v26;
    sub_268016080(0xD000000000000034, 0x8000000268056DE0, v30, v26);
  }

  else
  {
    sub_26804E62C();
    sub_268030BA4(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_26802EB84@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v73 = a1;
  v79 = a3;
  v6 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  v7 = *(v6 - 8);
  v80 = v6 - 8;
  v72 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26804E48C();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F48);
  v13 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v15 = &v69 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F50);
  MEMORY[0x28223BE20](v74);
  v17 = &v69 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F58) - 8;
  MEMORY[0x28223BE20](v78);
  v77 = &v69 - v18;
  v69 = a2;
  v81 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F60);
  sub_267FCCA4C(&qword_280243F68, &qword_280243F60);
  sub_26804DE2C();
  v73 = type metadata accessor for AutoSendableCompactCarPlayButtonView;
  v19 = v70;
  sub_268030BE8(a2, v70, type metadata accessor for AutoSendableCompactCarPlayButtonView);
  v20 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v72 = v20 + v8;
  v21 = swift_allocObject();
  sub_2680304BC(v19, v21 + v20);
  sub_26804CECC();

  sub_267FCCA4C(&qword_280243F70, &qword_280243F48);
  sub_268030BA4(&qword_2802432A8, MEMORY[0x277D63E50]);
  v22 = v71;
  v23 = v75;
  sub_26804DACC();
  (*(v76 + 8))(v12, v23);
  (*(v13 + 8))(v15, v22);
  v24 = sub_26804DC9C();
  KeyPath = swift_getKeyPath();
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F78) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = sub_26804DC5C();
  v28 = swift_getKeyPath();
  v29 = &v17[*(v74 + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = v69;
  v31 = v69 + *(v80 + 32);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  v82[0] = v32;
  v83 = v33;
  v84 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE4C();
  sub_26803086C();
  v34 = v77;
  sub_26804DBAC();

  sub_267FB9158(v17);
  v35 = sub_26804DFBC();
  v37 = v36;
  v38 = v30;
  sub_268030BE8(v30, v19, v73);
  v39 = (v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_2680304BC(v19, v40 + v20);
  *(v40 + v39) = a4;
  v41 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F90) + 36));
  *v41 = sub_268030A9C;
  v41[1] = v40;
  v41[2] = v35;
  v41[3] = v37;
  v85 = &type metadata for Features;
  v86 = sub_267FB0C70();
  v82[0] = 27;
  LOBYTE(v35) = sub_26804C08C();
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  if (v35)
  {
    v42 = 18.0;
  }

  else
  {
    v42 = 12.0;
  }

  v43 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243F98) + 36));
  v44 = *(sub_26804D11C() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_26804D48C();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = v42;
  v43[1] = v42;
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)) = 256;
  v47 = sub_26804DFAC();
  v49 = v48;
  v50 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FA0) + 36));
  *v50 = v47;
  v50[1] = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FA8);
  sub_26802F8A8(v38, v50 + *(v51 + 44));
  v52 = sub_26804DFAC();
  v54 = v53;
  v55 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FB0) + 36));
  *v55 = v52;
  v55[1] = v54;
  v56 = swift_getKeyPath();
  v57 = v34 + *(v78 + 44);
  *v57 = v56;
  *(v57 + 8) = 1;
  v58 = v38 + *(v80 + 48);
  v59 = *v58;
  v60 = *(v58 + 8);
  v82[0] = v59;
  v83 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDEC();
  if (v87)
  {
    v61 = 0.95;
  }

  else
  {
    v61 = 1.0;
  }

  sub_26804E03C();
  v63 = v62;
  v65 = v64;
  v66 = v79;
  sub_267FDBADC(v34, v79, &qword_280243F58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FB8);
  v68 = v66 + *(result + 36);
  *v68 = v61;
  *(v68 + 8) = v61;
  *(v68 + 16) = v63;
  *(v68 + 24) = v65;
  return result;
}

uint64_t sub_26802F3A4()
{
  sub_26804E35C();
  sub_268030BA4(&qword_2802419A8, MEMORY[0x277D63CB0]);
  return sub_26804DD6C();
}

uint64_t sub_26802F460()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_26804BF4C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268050170;
  sub_26804CC9C();
  v8 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = sub_26804BEAC();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v11 = MEMORY[0x277D62918];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_26804BEBC();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_26804BF6C();
  return sub_26804E36C();
}

uint64_t sub_26802F698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26804DD1C();
  *a1 = result;
  return result;
}

uint64_t sub_26802F6D4()
{
  type metadata accessor for AutoSendableCompactCarPlayButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  return sub_26804DDFC();
}

void *sub_26802F748@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_26804DC9C();
  sub_26804CC8C();
  v4 = sub_26804DCAC();

  sub_26804CFEC();
  sub_26804DFAC();
  sub_26804CFBC();
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  sub_26804DFAC();
  sub_26804D13C();
  v11 = sub_26804DFEC();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  result = memcpy((a1 + 56), __src, 0x70uLL);
  *(a1 + 168) = v11;
  *(a1 + 176) = a2;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_26802F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v110 = a2;
  v107 = sub_26804DC3C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_26804CF1C();
  v114 = *(v101 - 8);
  v3 = MEMORY[0x28223BE20](v101);
  v111 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = &v89 - v5;
  v6 = sub_26804D11C() - 8;
  v95 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v113 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v89 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v102 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FC8);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  *(&v120 + 1) = &type metadata for Features;
  v96 = sub_267FB0C70();
  v121 = v96;
  LOBYTE(v119) = 27;
  v29 = sub_26804C08C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  v30 = 12.0;
  if (v29)
  {
    v31 = 18.0;
  }

  else
  {
    v31 = 12.0;
  }

  v32 = *(v6 + 28);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_26804D48C();
  v35 = *(v34 - 8);
  v93 = *(v35 + 104);
  v94 = v35 + 104;
  v93(v10 + v32, v33, v34);
  *v10 = v31;
  v10[1] = v31;
  *&v119 = sub_26804DC5C();
  sub_268030B48();
  v36 = sub_26804DCFC();
  sub_26804CF6C();
  sub_268030BE8(v10, v19, MEMORY[0x277CDFC08]);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243090);
  v37 = &v19[*(v99 + 36)];
  v38 = v117;
  *v37 = v116;
  *(v37 + 1) = v38;
  *(v37 + 4) = v118;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243098);
  *&v19[*(v39 + 52)] = v36;
  v98 = v39;
  *&v19[*(v39 + 56)] = 256;
  v40 = sub_26804DFAC();
  v42 = v41;
  sub_268030C44(v10, MEMORY[0x277CDFC08]);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FD8);
  v43 = &v19[*(v97 + 36)];
  *v43 = v40;
  v43[1] = v42;
  v44 = (v112 + *(type metadata accessor for AutoSendableCompactCarPlayButtonView() + 24));
  HIDWORD(v92) = *v44;
  v91 = *(v44 + 1);
  HIDWORD(v90) = v44[16];
  LOBYTE(v119) = BYTE4(v92);
  *(&v119 + 1) = v91;
  LOBYTE(v120) = BYTE4(v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE2C();
  if (v115)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  sub_267FDBADC(v19, v26, &qword_280243FC0);
  *&v26[*(v21 + 44)] = v45;
  v103 = v28;
  sub_267FDBADC(v26, v28, &qword_280243FC8);
  *(&v120 + 1) = &type metadata for Features;
  v121 = v96;
  LOBYTE(v119) = 27;
  v46 = sub_26804C08C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  if (v46)
  {
    v30 = 18.0;
  }

  v47 = v113;
  v48 = (v93)(v113 + *(v95 + 28), v33, v34);
  *v47 = v30;
  v47[1] = v30;
  v49 = v100;
  sub_267FB1634(v48, v50, v51, v52, v53, v54, v55, v56, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v57 = *MEMORY[0x277CDF3C0];
  v58 = v114;
  v59 = *(v114 + 104);
  v60 = v111;
  v61 = v101;
  v59(v111, v57, v101);
  LODWORD(v96) = sub_26804CF0C();
  v62 = *(v58 + 8);
  v62(v60, v61);
  v114 = v58 + 8;
  v62(v49, v61);
  LOBYTE(v119) = BYTE4(v92);
  *(&v119 + 1) = v91;
  LOBYTE(v120) = BYTE4(v90);
  v63 = sub_26804CE2C();
  if (v115 == 1)
  {
    sub_267FB1634(v63, v64, v65, v66, v67, v68, v69, v70, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    v71 = v111;
    v59(v111, v57, v61);
    sub_26804CF0C();
    v62(v71, v61);
    v62(v49, v61);
  }

  (*(v106 + 104))(v104, *MEMORY[0x277CE0EE0], v107);
  v72 = sub_26804DCDC();
  sub_26804CF6C();
  v73 = v113;
  v74 = v102;
  sub_268030BE8(v113, v102, MEMORY[0x277CDFC08]);
  v75 = v74 + *(v99 + 36);
  v76 = v120;
  *v75 = v119;
  *(v75 + 16) = v76;
  *(v75 + 32) = v121;
  v77 = v98;
  *(v74 + *(v98 + 52)) = v72;
  *(v74 + *(v77 + 56)) = 256;
  v78 = sub_26804DFAC();
  v80 = v79;
  sub_268030C44(v73, MEMORY[0x277CDFC08]);
  v81 = (v74 + *(v97 + 36));
  *v81 = v78;
  v81[1] = v80;
  v82 = v108;
  sub_267FDBADC(v74, v108, &qword_280243FC0);
  v83 = v103;
  v84 = v105;
  sub_267FDC224(v103, v105, &qword_280243FC8);
  v85 = v109;
  sub_267FDC224(v82, v109, &qword_280243FC0);
  v86 = v110;
  sub_267FDC224(v84, v110, &qword_280243FC8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FE0);
  sub_267FDC224(v85, v86 + *(v87 + 48), &qword_280243FC0);
  sub_267FB05B4(v82, &qword_280243FC0);
  sub_267FB05B4(v83, &qword_280243FC8);
  sub_267FB05B4(v85, &qword_280243FC0);
  return sub_267FB05B4(v84, &qword_280243FC8);
}

void sub_2680302E0()
{
  sub_26804CCAC();
  if (v0 <= 0x3F)
  {
    sub_26803043C(319, &qword_280241918, type metadata accessor for TimerState, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_267FCBA04();
      if (v2 <= 0x3F)
      {
        sub_267FC1004();
        if (v3 <= 0x3F)
        {
          sub_26803043C(319, &qword_280242178, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_267FEFFAC();
            if (v5 <= 0x3F)
            {
              sub_2680064D4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26803043C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2680304BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268030524()
{
  v0 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);
  sub_26802E5F4();
}

uint64_t sub_26803057C@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_26802EB84(a1, v9, a2, a3);
}

uint64_t objectdestroyTm_19()
{
  type metadata accessor for AutoSendableCompactCarPlayButtonView();
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  sub_26804CCAC();
  OUTLINED_FUNCTION_0();
  (*(v8 + 8))(v1 + v4);
  v9 = v1 + v4 + v0[5];
  type metadata accessor for TimerState();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_0();
    (*(v10 + 8))(v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  v11 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CF1C();
    OUTLINED_FUNCTION_0();
    (*(v12 + 8))(v7 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_12();

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2680307D4()
{
  v0 = type metadata accessor for AutoSendableCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);

  return sub_26802F6D4();
}

unint64_t sub_26803086C()
{
  result = qword_280243F80;
  if (!qword_280243F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243F50);
    sub_268030924();
    sub_267FCCA4C(&qword_280241E58, &qword_280241E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243F80);
  }

  return result;
}

unint64_t sub_268030924()
{
  result = qword_280243F88;
  if (!qword_280243F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243F48);
    sub_26804E48C();
    sub_267FCCA4C(&qword_280243F70, &qword_280243F48);
    sub_268030BA4(&qword_2802432A8, MEMORY[0x277D63E50]);
    swift_getOpaqueTypeConformance2();
    sub_267FCCA4C(&qword_280241E58, &qword_280241E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243F88);
  }

  return result;
}

void *sub_268030A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoSendableCompactCarPlayButtonView() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26802F748(a1, v4);
}

unint64_t sub_268030B48()
{
  result = qword_280243FD0;
  if (!qword_280243FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243FD0);
  }

  return result;
}

uint64_t sub_268030BA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268030BE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268030C44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_268030CE4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C62616E65;
  }

  else
  {
    v3 = 0x64656C6261736964;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C62616E65;
  }

  else
  {
    v5 = 0x64656C6261736964;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26804EC9C();
  }

  return v8 & 1;
}

uint64_t sub_268030D84(char a1, char a2)
{
  v3 = sub_268021B00(a1);
  v5 = v4;
  if (v3 == sub_268021B00(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26804EC9C();
  }

  return v8 & 1;
}

uint64_t sub_268030E08@<X0>(uint64_t a1@<X8>)
{
  sub_26804C12C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v1);
  return sub_268030EBC(v6, a1);
}

uint64_t sub_268030EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UnreadMessagesCarPlayButtonView(0);
  sub_26804E21C();
  v5 = sub_26804C12C();
  OUTLINED_FUNCTION_11();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_12_0();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_268050170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268050170;
  v12 = MEMORY[0x277D837D0];
  sub_26804EAFC();
  *(inited + 96) = v12;
  strcpy((inited + 72), "ReadMessages");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  sub_26804E65C();
  v13 = sub_26804BFFC();
  v14 = MEMORY[0x277D63778];
  *(v10 + 56) = v13;
  *(v10 + 64) = v14;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_26804BFEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244060);
  sub_267FC126C(&qword_280244068, &qword_280244060);
  sub_26804BF9C();
  sub_26804C11C();
  v15 = sub_26804E72C();

  if (v15 < 2)
  {
    sub_26804C11C();
    v19 = sub_26804E72C();

    result = (*(v7 + 8))(a1, v5);
    v17 = *(v4 + 24);
    if (v19 == 1)
    {
      *(a2 + v17) = 0;
      return result;
    }

    v18 = 2;
  }

  else
  {
    result = (*(v7 + 8))(a1, v5);
    v17 = *(v4 + 24);
    v18 = 1;
  }

  *(a2 + v17) = v18;
  return result;
}

uint64_t sub_268031198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = type metadata accessor for UnreadMessagesCarPlayButtonView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244008);
  OUTLINED_FUNCTION_1();
  v25[0] = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  sub_2680348FC(v2, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UnreadMessagesCarPlayButtonView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_268034958(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for UnreadMessagesCarPlayButtonView);
  v25[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244010);
  sub_267FC126C(&qword_280244018, &qword_280244010);
  sub_26804DE2C();
  if (sub_268021B00(*(v2 + *(v4 + 32))) != 0x2E656C7573706163 || v14 != 0xEC0000006C6C6966)
  {
    sub_26804EC9C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244028);
  OUTLINED_FUNCTION_1_12();
  v18 = sub_267FC126C(v16, v17);
  v19 = sub_2680341BC();
  v26 = v7;
  v27 = &type metadata for CarPlayCapsuleButtonStyle;
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_26804E48C();
  OUTLINED_FUNCTION_4_11();
  v23 = sub_268034210(v21, v22);
  v26 = v7;
  v27 = v20;
  v28 = v18;
  v29 = v23;
  swift_getOpaqueTypeConformance2();
  sub_26804DA3C();
  return (*(v25[0] + 8))(v11, v7);
}

uint64_t sub_26803156C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UnreadMessagesCarPlayButtonView(0);
  sub_26804E20C();
  v12 = sub_26804E40C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    return sub_267FB05B4(v10, &qword_280241820);
  }

  v14 = *(v11 + 20);
  v15 = sub_26804BF7C();
  (*(*(v15 - 8) + 16))(v7, a1 + v14, v15);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
  v16 = *MEMORY[0x277D63BE0];
  v17 = sub_26804E2DC();
  (*(*(v17 - 8) + 104))(v4, v16, v17);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v17);
  sub_26804E3FC();
  sub_267FB05B4(v4, &qword_280241810);
  sub_267FB05B4(v7, &qword_280241818);
  return (*(*(v12 - 8) + 8))(v10, v12);
}

uint64_t sub_268031810()
{
  sub_26804E35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244040);
  sub_268034210(&qword_2802419A8, MEMORY[0x277D63CB0]);
  sub_268034268();
  return sub_26804DD6C();
}

uint64_t sub_2680318F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_26804BF4C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268050170;
  sub_26804C10C();
  v8 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = sub_26804BEAC();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v11 = MEMORY[0x277D62918];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_26804BEBC();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_26804BF6C();
  return sub_26804E36C();
}

void *sub_268031B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-1] - v5;
  v7 = type metadata accessor for UnreadMessagesCarPlayButtonView(0);
  sub_268021B00(*(a1 + *(v7 + 24)));
  v31 = sub_26804DD1C();
  __src[0] = sub_26804C11C();
  __src[1] = v8;
  sub_267FB0C1C();
  v9 = sub_26804D95C();
  v11 = v10;
  v13 = v12;
  v14 = sub_26804D81C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  sub_26804D85C();
  sub_267FB05B4(v6, &qword_280242310);
  v15 = sub_26804D93C();
  v17 = v16;
  v19 = v18;

  sub_267FB0FB4(v9, v11, v13 & 1);

  v20 = sub_26804D92C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_267FB0FB4(v15, v17, v19 & 1);

  sub_26804DFAC();
  sub_26804D13C();
  v24 &= 1u;
  v33 = v24;
  v27 = sub_26804DC7C();
  KeyPath = swift_getKeyPath();
  v29 = sub_26804DC9C();
  LOBYTE(v15) = sub_26804D7AC();
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  *(a2 + 24) = v20;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26;
  result = memcpy((a2 + 56), __src, 0x70uLL);
  *(a2 + 168) = KeyPath;
  *(a2 + 176) = v27;
  *(a2 + 184) = v29;
  *(a2 + 192) = v15;
  return result;
}

uint64_t sub_268031D9C()
{
  sub_26804DDDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244008);
  sub_267FC126C(&qword_280244030, &qword_280244008);
  sub_2680341BC();
  sub_26804DACC();
}

uint64_t sub_268031E78()
{
  v0 = sub_26804E48C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804CECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244008);
  sub_267FC126C(&qword_280244030, &qword_280244008);
  sub_268034210(&qword_2802432A8, MEMORY[0x277D63E50]);
  sub_26804DACC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_268032000@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v5 = a2;
  v55 = a2;
  v51[1] = a1;
  v61 = a4;
  v6 = type metadata accessor for CarPlayCapsuleButtonLabelStyle(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v57 = sub_26804D6AC();
  OUTLINED_FUNCTION_1();
  v60 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v51[0] = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244070);
  OUTLINED_FUNCTION_1();
  v58 = v16;
  v59 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v52 = v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244078) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244080) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  v53 = v51 - v25;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244088) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  sub_26804D6BC();
  LOBYTE(v64) = v5;
  v65 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v29 = v62;
  v30 = v63;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v31 = v10 + v6[5];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v10 + v6[6];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v10 + v6[7];
  *v33 = v29;
  v33[16] = v30;
  v34 = v10 + v6[8];
  type metadata accessor for CGSize();
  v64 = 0;
  v65 = 0;
  sub_26804DDDC();
  v35 = v63;
  *v34 = v62;
  *(v34 + 2) = v35;
  sub_268034210(&qword_280242110, MEMORY[0x277CDE278]);
  sub_268034210(&qword_280244090, type metadata accessor for CarPlayCapsuleButtonLabelStyle);
  v36 = v52;
  v37 = v57;
  v38 = v51[0];
  sub_26804DAAC();
  sub_268034A2C(v10, type metadata accessor for CarPlayCapsuleButtonLabelStyle);
  (*(v60 + 8))(v38, v37);
  if (sub_26804D6CC())
  {
    v39 = 0.5;
  }

  else
  {
    v39 = 1.0;
  }

  (*(v58 + 32))(v22, v36, v59);
  *&v22[*(v19 + 44)] = v39;
  if (sub_26804D6CC())
  {
    v40 = 0.98;
  }

  else
  {
    v40 = 1.0;
  }

  sub_26804E03C();
  v42 = v41;
  v44 = v43;
  v45 = v53;
  sub_267FDBADC(v22, v53, &qword_280244078);
  v46 = v45 + *(v23 + 44);
  *v46 = v40;
  *(v46 + 8) = v40;
  *(v46 + 16) = v42;
  *(v46 + 24) = v44;
  v47 = sub_26804D6CC();
  v48 = swift_allocObject();
  *(v48 + 16) = v55;
  *(v48 + 24) = v54;
  sub_267FDBADC(v45, v28, &qword_280244080);
  v49 = &v28[*(v56 + 44)];
  *v49 = v47 & 1;
  *(v49 + 1) = sub_268034410;
  *(v49 + 2) = v48;
  sub_267FDBADC(v28, v61, &qword_280244088);
}

uint64_t sub_2680325A8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26804D49C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802440D8);
  v2 = OUTLINED_FUNCTION_12_0();
  sub_268032624(v2, v3, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802440E0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_268032624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802440E8);
  MEMORY[0x28223BE20](v140);
  v147 = &v116 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802440F0);
  v6 = MEMORY[0x28223BE20](v130);
  v143 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v141 = &v116 - v9;
  MEMORY[0x28223BE20](v8);
  v142 = &v116 - v10;
  v11 = sub_26804DFFC();
  v136 = *(v11 - 8);
  v137 = v11;
  MEMORY[0x28223BE20](v11);
  v135 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_26804CF1C();
  v13 = *(v132 - 8);
  v14 = MEMORY[0x28223BE20](v132);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v128 = &v116 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802440F8);
  MEMORY[0x28223BE20](v18 - 8);
  v146 = (&v116 - v19);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244100);
  MEMORY[0x28223BE20](v120);
  v125 = &v116 - v20;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244108);
  MEMORY[0x28223BE20](v121);
  v124 = &v116 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244110);
  MEMORY[0x28223BE20](v122);
  v127 = &v116 - v22;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244118);
  v23 = MEMORY[0x28223BE20](v126);
  v139 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v123 = &v116 - v26;
  MEMORY[0x28223BE20](v25);
  v149 = &v116 - v27;
  v28 = sub_26804D3AC();
  v133 = *(v28 - 8);
  v134 = v28;
  MEMORY[0x28223BE20](v28);
  v129 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244120);
  MEMORY[0x28223BE20](v145);
  v31 = &v116 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244128);
  MEMORY[0x28223BE20](v117);
  v33 = &v116 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244130);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v138 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v116 - v38;
  MEMORY[0x28223BE20](v37);
  v148 = &v116 - v40;
  v150 = a1;
  sub_26804D69C();
  v41 = type metadata accessor for CarPlayCapsuleButtonLabelStyle(0);
  v42 = *(v41 + 20);
  v144 = a2;
  v43 = a2 + v42;
  v44 = *v43;
  LODWORD(a1) = *(v43 + 8);

  v45 = v44;
  HIDWORD(v118) = a1;
  if ((a1 & 1) == 0)
  {
    sub_26804E8AC();
    v46 = v13;
    v47 = v16;
    v48 = sub_26804D77C();
    sub_26804CD2C();

    v16 = v47;
    v13 = v46;
    v49 = v129;
    sub_26804D39C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v133 + 8))(v49, v134);
    v45 = __src[0];
  }

  v119 = v44;
  KeyPath = swift_getKeyPath();
  v51 = &v31[*(v145 + 36)];
  *v51 = KeyPath;
  v51[1] = v45;
  sub_26804DFAC();
  sub_26804D13C();
  sub_267FDBADC(v31, v33, &qword_280244120);
  memcpy(&v33[*(v117 + 36)], v151, 0x70uLL);
  sub_267FDBADC(v33, v39, &qword_280244128);
  sub_267FDBADC(v39, v148, &qword_280244130);
  v52 = sub_26804DFAC();
  v53 = v146;
  *v146 = v52;
  v53[1] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244138);
  v56 = v144;
  sub_268033404(v144, v150, v53 + *(v55 + 44));
  v57 = v56 + *(v41 + 28);
  v58 = *v57;
  v59 = *(v57 + 8);
  LOBYTE(v57) = *(v57 + 16);
  __src[0] = v58;
  __src[1] = v59;
  LOBYTE(__src[2]) = v57;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  v61 = MEMORY[0x26D60CAE0](v152, v60);
  if (LOBYTE(v152[0]) == 1)
  {
    v69 = *MEMORY[0x277CDF3C0];
    v70 = 0.3;
    v71 = v132;
    v72 = v128;
  }

  else
  {
    v72 = v128;
    sub_267FB1634(v61, v62, v63, v64, v65, v66, v67, v68, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
    v69 = *MEMORY[0x277CDF3C0];
    v71 = v132;
    (*(v13 + 104))(v16, v69, v132);
    v73 = sub_26804CF0C();
    v74 = *(v13 + 8);
    v74(v16, v71);
    v74(v72, v71);
    if (v73)
    {
      v70 = 0.6;
    }

    else
    {
      v70 = 0.65;
    }
  }

  v75 = v125;
  v76 = sub_267FDBADC(v146, v125, &qword_2802440F8);
  *(v75 + *(v120 + 36)) = v70;
  sub_267FB1634(v76, v77, v78, v79, v80, v81, v82, v83, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  (*(v13 + 104))(v16, v69, v71);
  v84 = sub_26804CF0C();
  v85 = *(v13 + 8);
  v85(v16, v71);
  v85(v72, v71);
  v87 = v135;
  v86 = v136;
  v88 = MEMORY[0x277CE13B8];
  if ((v84 & 1) == 0)
  {
    v88 = MEMORY[0x277CE13B0];
  }

  v89 = v137;
  (*(v136 + 104))(v135, *v88, v137);
  v90 = v124;
  (*(v86 + 32))(v124 + *(v121 + 36), v87, v89);
  sub_267FDBADC(v75, v90, &qword_280244100);
  v91 = sub_26804DCBC();
  v92 = swift_getKeyPath();
  v93 = v127;
  sub_267FDBADC(v90, v127, &qword_280244108);
  v94 = (v93 + *(v122 + 36));
  *v94 = v92;
  v94[1] = v91;
  sub_26804DFAC();
  sub_26804CFBC();
  v95 = v123;
  sub_267FDBADC(v93, v123, &qword_280244110);
  v96 = (v95 + *(v126 + 36));
  v97 = v152[1];
  *v96 = v152[0];
  v96[1] = v97;
  v96[2] = v152[2];
  sub_267FDBADC(v95, v149, &qword_280244118);
  sub_26804D69C();
  v98 = v119;

  if ((v118 & 0x100000000) == 0)
  {
    sub_26804E8AC();
    v99 = sub_26804D77C();
    sub_26804CD2C();

    v100 = v129;
    sub_26804D39C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v133 + 8))(v100, v134);
    v98 = __src[0];
  }

  v101 = swift_getKeyPath();
  v102 = v147;
  v103 = &v147[*(v145 + 36)];
  *v103 = v101;
  v103[1] = v98;
  v104 = swift_getKeyPath();
  v105 = v102 + *(v140 + 36);
  *v105 = v104;
  *(v105 + 8) = 1;
  sub_26804DFAC();
  sub_26804D13C();
  v106 = v141;
  sub_267FDBADC(v102, v141, &qword_2802440E8);
  memcpy((v106 + *(v130 + 36)), __src, 0x70uLL);
  v107 = v142;
  sub_267FDBADC(v106, v142, &qword_2802440F0);
  v108 = v148;
  v109 = v138;
  sub_267FDC224(v148, v138, &qword_280244130);
  v110 = v149;
  v111 = v139;
  sub_267FDC224(v149, v139, &qword_280244118);
  v112 = v143;
  sub_267FDC224(v107, v143, &qword_2802440F0);
  v113 = v131;
  sub_267FDC224(v109, v131, &qword_280244130);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244140);
  sub_267FDC224(v111, v113 + *(v114 + 48), &qword_280244118);
  sub_267FDC224(v112, v113 + *(v114 + 64), &qword_2802440F0);
  sub_267FB05B4(v107, &qword_2802440F0);
  sub_267FB05B4(v110, &qword_280244118);
  sub_267FB05B4(v108, &qword_280244130);
  sub_267FB05B4(v112, &qword_2802440F0);
  sub_267FB05B4(v111, &qword_280244118);
  return sub_267FB05B4(v109, &qword_280244130);
}