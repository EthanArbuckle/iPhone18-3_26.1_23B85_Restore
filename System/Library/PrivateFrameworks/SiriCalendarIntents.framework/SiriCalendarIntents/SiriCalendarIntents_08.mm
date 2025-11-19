uint64_t sub_2665F2240(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_1_12(sub_2665F2284);
}

uint64_t sub_2665F2284()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v5);
    _os_log_impl(&dword_266549000, v3, v4, "[ParticipantDisambiguationFlowStrategy] Creating disambiguation items", v0, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = v1[10];
  v7 = v1[8];

  v8 = *(v6 + 80);
  sub_266669CE8();
  v9 = sub_266669CC8();
  v10 = [v9 disambiguationItems];

  v11 = sub_26666C498();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE58, &qword_266677258);
  v1[2] = v11;
  sub_2665F0314(v1 + 2);
  v12 = v1[9];
  v13 = v1[7];
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_26655358C(v12 + 104, (v1 + 2));
  sub_266660A28(v1 + 2, v13);
  OUTLINED_FUNCTION_5_3();

  return v14();
}

uint64_t sub_2665F2434()
{
  OUTLINED_FUNCTION_14();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_266669E18();
  v1[13] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[14] = v7;
  v9 = *(v8 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F24E0()
{
  v41 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_26666C148();
  v7 = sub_26666C618();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_13_0();
    v40 = v13;
    *v12 = 136315138;
    sub_2665B934C();
    v14 = sub_26666CAA8();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_2665BFC90(v14, v16, &v40);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266549000, v6, v7, "Got Input of %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[12];
  v19 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE48, &qword_266677250);
  v20 = sub_266669B88();
  sub_26655358C(v18 + 104, (v0 + 3));
  v0[2] = v20;
  if (*(v20 + 16) && (*(v20 + 56) & 1) == 0)
  {
    sub_266660EBC();
    v0[16] = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[17] = v36;
    *v36 = v37;
    v36[1] = sub_2665F27F4;
    v38 = v0[11];
    v39 = v0[12];
    OUTLINED_FUNCTION_27_10();

    return sub_2665F29E8();
  }

  else
  {
    v21 = sub_26666C148();
    v22 = sub_26666C608();
    if (OUTLINED_FUNCTION_9(v22))
    {
      v23 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v23);
      OUTLINED_FUNCTION_2_29();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      OUTLINED_FUNCTION_10();
    }

    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v30, v31);
    v32 = v0[15];
    sub_2665F6770((v0 + 2));

    OUTLINED_FUNCTION_24_1();

    return v33();
  }
}

uint64_t sub_2665F27F4()
{
  OUTLINED_FUNCTION_11();
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  v6 = *(v2 + 128);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665F291C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 120);
  sub_2665F6770(v0 + 16);

  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_2665F2980()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  sub_2665F6770(v0 + 16);

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_2665F29E8()
{
  OUTLINED_FUNCTION_14();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = *v0;
  v1[14] = *v0;
  v1[15] = *(v5 + 80);
  v6 = sub_266669A28();
  v1[16] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[17] = v7;
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v10 = sub_266669AE8();
  v1[19] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2665F2B20()
{
  v80 = v0;
  v1 = v0[13];
  v2 = *(v1 + 144);
  v3 = *(v1 + 160);
  if (!(v3 >> 6))
  {
    v6 = *(v1 + 152);
    v0[9] = v0[11];
    v7 = swift_task_alloc();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
    sub_2665F67E4(&qword_28007EE50);
    sub_26666C448();

    if (v0[5])
    {
      v78 = v0[5];
      v8 = v0[7];
      v77 = v0[6];
      OUTLINED_FUNCTION_24_8();
      goto LABEL_8;
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v39 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v39, qword_28156D7E8);

    v30 = sub_26666C148();
    v40 = sub_26666C608();
    OUTLINED_FUNCTION_24_8();
    if (!os_log_type_enabled(v30, v40))
    {

      OUTLINED_FUNCTION_24_8();
      goto LABEL_24;
    }

    v41 = OUTLINED_FUNCTION_21();
    v42 = OUTLINED_FUNCTION_13_0();
    v79[0] = v42;
    *v41 = 136315138;
    v43 = sub_2665BFC90(v2, v6, v79);
    OUTLINED_FUNCTION_24_8();
    *(v41 + 4) = v43;
    OUTLINED_FUNCTION_45_2();
    _os_log_impl(v44, v45, v46, v47, v48, v49);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_4_1();
    goto LABEL_22;
  }

  if (v3 >> 6 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v29 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v29, qword_28156D7E8);
    v30 = sub_26666C148();
    v31 = sub_26666C608();
    if (!OUTLINED_FUNCTION_9(v31))
    {
      goto LABEL_23;
    }

    v32 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v32);
    OUTLINED_FUNCTION_2_29();
LABEL_17:
    _os_log_impl(v33, v34, v35, v36, v37, v38);
LABEL_22:
    OUTLINED_FUNCTION_10();
LABEL_23:

    goto LABEL_24;
  }

  if ((v3 & 1) == 0)
  {
LABEL_24:
    sub_26656CBFC();
    OUTLINED_FUNCTION_19_16();
    v50 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v50, v51);
    goto LABEL_31;
  }

  v4 = v0[11];
  sub_2665957F8(v2, &type metadata for ParticipantResolutionUtil.ConsolidatedPerson, (v0 + 2));
  if (!v0[2])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v67 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v67, qword_28156D7E8);
    v30 = sub_26666C148();
    v68 = sub_26666C608();
    if (!OUTLINED_FUNCTION_9(v68))
    {
      goto LABEL_23;
    }

    v69 = OUTLINED_FUNCTION_21();
    *v69 = 134217984;
    *(v69 + 4) = v2;
    OUTLINED_FUNCTION_45_2();
    goto LABEL_17;
  }

  v78 = v0[2];
  v5 = v0[4];
  v76 = v0[3];
LABEL_8:
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  sub_266669CE8();
  v12 = sub_266669CB8();
  v13 = *(v10 + 96);
  v14 = (*(v13 + 16))(v9, v13);

  if (v14)
  {
    if (sub_2665C485C(v14))
    {
      sub_2665C4864(0, (v14 & 0xC000000000000001) == 0, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x266788B60](0, v14);
      }

      else
      {
        v15 = *(v14 + 32);
      }

      v16 = v15;
      v17 = v0[20];
      v18 = v0[21];
      v74 = v0[16];
      v75 = v0[17];
      v70 = v0[19];
      v71 = v0[15];
      v19 = v0[12];
      v72 = v0[18];
      v73 = v0[10];

      v20 = sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      v21 = sub_26666C488();
      [v16 setAlternatives_];

      v22 = sub_266669CB8();
      sub_266669CD8();
      v23 = sub_266669AC8();
      LOBYTE(v19) = v24;
      (*(v17 + 8))(v18, v70);
      (*(v13 + 24))(v16, v23, v19 & 1, v71, v13);

      v25 = v0[8];
      v79[3] = v20;
      v79[0] = v16;
      v26 = v16;
      v27 = v25;
      sub_266669A18();
      sub_266669B18();

      (*(v75 + 8))(v72, v74);

      OUTLINED_FUNCTION_5_3();
      goto LABEL_32;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v52 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v52, qword_28156D7E8);
  v53 = sub_26666C148();
  v54 = sub_26666C608();
  if (OUTLINED_FUNCTION_9(v54))
  {
    v55 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v55);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v56, v57, v58, v59, v60, v61);
    OUTLINED_FUNCTION_10();
  }

  sub_26656CBFC();
  OUTLINED_FUNCTION_19_16();
  v62 = swift_allocError();
  OUTLINED_FUNCTION_9_19(v62, v63);

LABEL_31:
  v64 = v0[21];
  v65 = v0[18];

  OUTLINED_FUNCTION_24_1();
LABEL_32:

  return v28();
}

uint64_t sub_2665F3144(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 contactIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_26666C308();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_26666CAC8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2665F31F4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_1_12(sub_2665F3210);
}

uint64_t sub_2665F3210()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[9];
  v2 = v0[10];
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  v5 = *(v2 + 160);
  *(v2 + 160) = 0x80;
  sub_2665F673C(v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE48, &qword_266677250);
  v6 = sub_266669B88();
  sub_26655358C(v2 + 104, (v0 + 3));
  v0[2] = v6;
  if (*(v6 + 16) && (*(v6 + 56) & 1) == 0)
  {
    sub_266660EBC();
    v0[11] = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[12] = v12;
    *v12 = v13;
    v12[1] = sub_2665F3384;
    v14 = v0[10];
    OUTLINED_FUNCTION_27_10();

    return sub_2665F36C4();
  }

  else
  {
    v0[14] = sub_266660FD4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[15] = v7;
    *v7 = v8;
    v7[1] = sub_2665F34F4;
    v9 = v0[10];
    OUTLINED_FUNCTION_27_10();

    return sub_2665F3E0C();
  }
}

uint64_t sub_2665F3384()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F349C()
{
  OUTLINED_FUNCTION_14();
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2665F34F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F360C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 104);
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2665F3668()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 128);
  sub_2665F6770(v0 + 16);
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2665F36C4()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_266669708();
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_19();
  v7 = sub_266669CA8();
  v1[7] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v11 = sub_2666699C8();
  v1[10] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v15 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2665F37D8()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[12];
  v12 = v0[4];
  v13 = v0[5];

  v0[2] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
  v15 = sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v16 = sub_2665F67E4(&qword_28007EE40);
  v18 = sub_2665EFD84(sub_2665F3DB4, 0, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  v0[13] = v18;
  sub_2665F0738(v18, sub_2665F6718, v13, v11);
  v19 = v0[12];
  v20 = v0[9];
  v22 = v0[5];
  v21 = v0[6];
  sub_2666696C8();
  *(swift_task_alloc() + 16) = v19;
  sub_266669BC8();

  v23 = v22[6];
  v24 = v22[7];
  __swift_project_boxed_opaque_existential_1(v22 + 3, v23);
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  v0[14] = 0x800000026667D640;
  v25 = *(MEMORY[0x277D56580] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[15] = v26;
  *v26 = v27;
  v26[1] = sub_2665F3AFC;
  v28 = v0[9];
  v29 = v0[3];

  return MEMORY[0x2821B9200](v29, v18, 0xD000000000000028, 0x800000026667D640, v28, v23, v24);
}

uint64_t sub_2665F3AFC()
{
  OUTLINED_FUNCTION_11();
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = v2[15];
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = v2[14];
  v7 = v2[13];

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665F3C54()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_31_1();
  v7(v6);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2665F3D08()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_31_1();
  v6(v5);
  v7 = v0[16];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[6];

  OUTLINED_FUNCTION_24_1();

  return v11();
}

id sub_2665F3DB4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_2665F3E0C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266669708();
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_19();
  v7 = sub_266669CA8();
  v1[6] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_19();
  v11 = sub_2666699C8();
  v1[9] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v15 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2665F3F20()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_2_29();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[11];
  v13 = v0[3];
  v12 = v0[4];

  sub_2665F0738(v13, sub_2665F65F0, v12, v11);
  v14 = v0[11];
  v15 = v0[8];
  v17 = v0[4];
  v16 = v0[5];
  sub_2666696C8();
  *(swift_task_alloc() + 16) = v14;
  sub_266669BC8();

  v18 = v17[6];
  v19 = v17[7];
  __swift_project_boxed_opaque_existential_1(v17 + 3, v18);
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  v0[12] = 0x800000026667D640;
  v20 = *(MEMORY[0x277D56598] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[13] = v21;
  *v21 = v22;
  v21[1] = sub_2665F4194;
  v23 = v0[8];
  v24 = v0[2];
  v25 = v0[3];

  return MEMORY[0x2821B9218](v24, v25, 0xD000000000000028, 0x800000026667D640, v23, v18, v19);
}

uint64_t sub_2665F4194()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 112) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F42AC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_31_1();
  v7(v6);

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2665F4360()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_31_1();
  v6(v5);
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[5];

  OUTLINED_FUNCTION_24_1();

  return v11();
}

uint64_t sub_2665F4434(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - v8;
  sub_266669C28();
  sub_266669C58();
  v10 = sub_2666699C8();
  OUTLINED_FUNCTION_4_5(v10);
  (*(v11 + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  return sub_266669C38();
}

uint64_t sub_2665F4510()
{
  v1 = 0;
  switch(*(v0 + 16))
  {
    case 1:
      if (!sub_2665F15B8(MEMORY[0x277D5F258], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666ABF8();

      if (v13)
      {

        goto LABEL_13;
      }

      sub_26666AC08();

      goto LABEL_10;
    case 2:
      return v1;
    case 3:
      if (!sub_2665F15B8(MEMORY[0x277D5F348], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666A808();
      break;
    default:
      if (!sub_2665F15B8(MEMORY[0x277D5F240], sub_2665C485C, sub_2665C4864))
      {
        return 0;
      }

      sub_26666A658();
      break;
  }

LABEL_10:
  if (!v13)
  {
    return 0;
  }

LABEL_13:

  v2 = sub_26666A9D8();

  if (v2)
  {
    if (sub_2665C485C(v2))
    {
      sub_2665C4864(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](0, v2);
      }

      else
      {
        v3 = *(v2 + 32);
      }

      sub_26666A3D8();

      v4 = sub_26666A918();

      if (v4)
      {
        v1 = sub_26666A218();

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (!sub_26666A468())
  {

    return 0;
  }

  v5 = sub_26666A9C8();
  OUTLINED_FUNCTION_7(v5);
  v6 = sub_26666A9B8();
  sub_26666AE98();

  sub_2665C1900();
  sub_26666A7C8();

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v7 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v7, qword_28156D7E8);
  v8 = sub_26666C148();
  v9 = sub_26666C618();
  if (os_log_type_enabled(v8, v9))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_21_6(&dword_266549000, v10, v11, "Hoisting list position from Common_CalendarEvent into empty Common_Person");
    OUTLINED_FUNCTION_4_1();
  }

  v1 = MEMORY[0x2667869C0](v6);

LABEL_26:

  return v1;
}

void sub_2665F48AC()
{
  OUTLINED_FUNCTION_28_0();
  v51 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_266668BE8();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v50 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D160, &qword_26666E0B0);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_10_5();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v49 - v24;
  v26 = sub_26666AF28();
  OUTLINED_FUNCTION_7(v26);
  v27 = sub_26666AF18();
  v28 = sub_26666ADB8();
  OUTLINED_FUNCTION_7(v28);
  sub_26666ADA8();
  v29 = sub_26666A9C8();
  OUTLINED_FUNCTION_7(v29);
  sub_26666A9B8();
  sub_26666AD98();

  v52 = v27;
  sub_26666AED8();

  if ((v2 & 1) == 0)
  {
    v30 = [v4 nameComponents];
    if (v30)
    {
      v31 = v30;
      sub_266668BB8();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v21, v32, 1, v5);
    sub_266567590(v21, v25);
    if (!__swift_getEnumTagSinglePayload(v25, 1, v5))
    {
      v40 = v50;
      (*(v50 + 16))(v13, v25, v5);
      sub_266594028(v25, &qword_28007D160, &qword_26666E0B0);
      sub_266668BD8();
      (*(v40 + 8))(v13, v5);
      sub_26666A9A8();

      goto LABEL_14;
    }

    sub_266594028(v25, &qword_28007D160, &qword_26666E0B0);
  }

  v33 = [v4 personHandle];
  if (v33)
  {
    v34 = v33;
    v35 = sub_26666AE38();
    OUTLINED_FUNCTION_7(v35);
    sub_26666AE28();
    v36 = [v34 label];
    if (v36)
    {
      v37 = v36;
      sub_26666C308();
      sub_26666AE08();
    }

    v38 = [v34 value];
    if (v38)
    {
      v39 = v38;
      sub_26666C308();

      sub_26666AE18();
    }

    sub_26666A988();
  }

LABEL_14:
  switch(*(v51 + 16))
  {
    case 1:
      v48 = sub_26666B0B8();
      OUTLINED_FUNCTION_7(v48);
      sub_26666B0A8();
      OUTLINED_FUNCTION_28_8();
      sub_26666B038();
      goto LABEL_23;
    case 2:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v42 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v42, qword_28156D7E8);
      v43 = sub_26666C148();
      v44 = sub_26666C608();
      if (os_log_type_enabled(v43, v44))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v45, v46, "[ParticipantDisambiguationFlowStrategy] Unexpected .deleteEvent intent action");
        OUTLINED_FUNCTION_4_1();
      }

      goto LABEL_24;
    case 3:
      v47 = sub_26666B0E8();
      OUTLINED_FUNCTION_7(v47);
      sub_26666B0D8();
      OUTLINED_FUNCTION_28_8();
      sub_26666AC38();
      goto LABEL_23;
    default:
      v41 = sub_26666B058();
      OUTLINED_FUNCTION_7(v41);
      sub_26666B048();
      OUTLINED_FUNCTION_28_8();
      sub_26666AB08();
LABEL_23:

LABEL_24:
      OUTLINED_FUNCTION_27_0();
      return;
  }
}

uint64_t sub_2665F4D58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  sub_2665F673C(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t sub_2665F4D94()
{
  sub_2665F4D58();

  return MEMORY[0x2821FE8D8](v0, 161, 7);
}

uint64_t sub_2665F4DE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents37ParticipantDisambiguationFlowStrategyC5StateOyxq__G(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2665F4E3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2665F4E88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2665F4EEC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

void sub_2665F4F30(uint64_t a1, void *a2)
{
  v3 = a2[10];
  v2 = a2[11];
  v4 = a2[12];
  type metadata accessor for ParticipantDisambiguationFlowStrategy();

  JUMPOUT(0x266785450);
}

uint64_t sub_2665F4FB8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26656CD98;

  return sub_2665F2240(a1, a2);
}

uint64_t sub_2665F5064()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656CD98;

  return sub_2665F2434();
}

uint64_t sub_2665F5128(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26656C894;

  return sub_2665F31F4(a1, a2);
}

uint64_t sub_2665F51D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B588] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_26656CD98;

  return MEMORY[0x2821B9F38](a1, a2, a3, v16, a5);
}

uint64_t sub_2665F52B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B598] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = sub_26656CD98;

  return MEMORY[0x2821B9F48](a1, a2, a3, v16, a5);
}

uint64_t sub_2665F539C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B590] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9F40](a1, a2, v14, a4);
}

uint64_t sub_2665F5470(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B5A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9F58](a1, a2, v14, a4);
}

uint64_t sub_2665F5544(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[10];
  v5 = a2[11];
  v7 = a2[12];
  v8 = type metadata accessor for ParticipantDisambiguationFlowStrategy();

  return MEMORY[0x2821B9F50](a1, v8, a3);
}

uint64_t sub_2665F55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v14 = v6;
  v14[1] = sub_26656CD98;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v18, a6);
}

uint64_t sub_2665F568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = a6[10];
  v18 = a6[11];
  v19 = a6[12];
  v20 = type metadata accessor for ParticipantDisambiguationFlowStrategy();
  *v16 = v7;
  v16[1] = sub_26656CD98;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v20, a7);
}

unint64_t sub_2665F57A8()
{
  result = qword_28007EE28;
  if (!qword_28007EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EE28);
  }

  return result;
}

void sub_2665F57FC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v46 = v2;
  v47 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  OUTLINED_FUNCTION_3_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  OUTLINED_FUNCTION_3_3(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_3();
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v45 - v25;
  if (v7(v24))
  {
    v5(v11);
    v45 = v9;
    sub_2665F65F8(v9, v18);
    sub_266552C44(0, v46, v1);
    sub_26666C1F8();
    sub_266594028(v45, &unk_28007F810, &unk_26667C710);
    v38 = sub_26666C228();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v38);
    if (!__swift_getEnumTagSinglePayload(v26, 1, v38))
    {
      OUTLINED_FUNCTION_4_5(v38);
      v44 = v47;
      (*(v43 + 32))(v47, v26, v38);
      v41 = v44;
      v42 = 0;
      v40 = v38;
      goto LABEL_12;
    }

    v35 = &qword_28007ED70;
    v36 = &qword_266671CC0;
    v37 = v26;
  }

  else
  {

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v27 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v27, qword_28156D7E8);
    v28 = sub_26666C148();
    v29 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v29))
    {
      v30 = OUTLINED_FUNCTION_20();
      *v30 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v35 = &unk_28007F810;
    v36 = &unk_26667C710;
    v37 = v9;
  }

  sub_266594028(v37, v35, v36);
  v40 = sub_26666C228();
  v41 = v47;
  v42 = 1;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665F5AE4()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v44 = sub_2666697B8();
  v2 = OUTLINED_FUNCTION_3_0(v44);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1_0();
  v45 = v9 - v8;
  v10 = sub_266669D18();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v40 = v12;
  v41 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11, v15);
  OUTLINED_FUNCTION_1_0();
  v42 = v17 - v16;
  v48 = MEMORY[0x277D84F90];
  v18 = sub_2665C485C(v1);
  v19 = 0;
  v20 = 0;
  v21 = v1 & 0xC000000000000001;
  v46 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v18 != v19)
  {
    if (v21)
    {
      v22 = MEMORY[0x266788B60](v19, v1);
    }

    else
    {
      if (v19 >= *(v46 + 16))
      {
        goto LABEL_26;
      }

      v22 = *(v1 + 8 * v19 + 32);
    }

    v23 = v22;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v47 = v22;
    v24 = sub_2665EEF64();
    MEMORY[0x28223BE20](v24, v25);
    *(&v38 - 2) = &v47;
    sub_2665C22F0();
    v27 = v26;

    sub_2665C28A4(v27);
    ++v19;
  }

  v20 = v48;
  if (qword_28007CE70 == -1)
  {
    goto LABEL_10;
  }

LABEL_29:
  swift_once();
LABEL_10:
  sub_26666A1C8();
  sub_266669CF8();
  v28 = sub_2665C485C(v1);
  if (!v28)
  {
    goto LABEL_24;
  }

  v29 = v28;
  v48 = MEMORY[0x277D84F90];
  sub_266633988();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v39 = v20;
    v30 = 0;
    v31 = v48;
    v43 = v4 + 32;
    v20 = v29;
    do
    {
      if (v21)
      {
        v32 = MEMORY[0x266788B60](v30, v1);
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v30 >= *(v46 + 16))
        {
          goto LABEL_28;
        }

        v32 = *(v1 + 8 * v30 + 32);
      }

      v33 = v32;
      INCalendarEvent.id.getter();
      if (qword_28007CE78 != -1)
      {
        OUTLINED_FUNCTION_11_16();
        swift_once();
      }

      sub_26666A1C8();
      v34 = v45;
      sub_266669798();

      v48 = v31;
      v35 = *(v31 + 16);
      if (v35 >= *(v31 + 24) >> 1)
      {
        sub_266633988();
        v34 = v45;
        v31 = v48;
      }

      ++v30;
      *(v31 + 16) = v35 + 1;
      (*(v4 + 32))(v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, v34, v44);
    }

    while (v29 != v30);
    v20 = v39;
LABEL_24:
    v36 = v42;
    v37 = sub_266669D08();

    (*(v40 + 8))(v36, v41);
    v48 = v20;
    sub_2665C28A4(v37);
    OUTLINED_FUNCTION_27_0();
    return;
  }

  __break(1u);
}

void sub_2665F5ED8(uint64_t a1)
{
  v36 = sub_2666697B8();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36, v4);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266669D18();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  v10 = sub_2665C485C(a1);
  v11 = 0;
  v12 = 0;
  v13 = a1 & 0xC000000000000001;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v11)
  {
    if (v13)
    {
      v14 = MEMORY[0x266788B60](v11, a1);
    }

    else
    {
      if (v11 >= *(v38 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v39 = v14;
    v16 = sub_266580ECC();
    MEMORY[0x28223BE20](v16, v17);
    *(&v30 - 2) = &v39;
    sub_2665C22F0();
    v19 = v18;

    sub_2665C28A4(v19);
    ++v11;
  }

  v12 = v40;
  if (qword_28007CE70 == -1)
  {
    goto LABEL_10;
  }

LABEL_29:
  swift_once();
LABEL_10:
  sub_26666A1C8();
  sub_266669CF8();
  v20 = sub_2665C485C(a1);
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v40 = MEMORY[0x277D84F90];
  sub_266633988();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v31 = v12;
    v22 = 0;
    v23 = v40;
    v35 = v2 + 32;
    v12 = v21;
    do
    {
      if (v13)
      {
        v24 = MEMORY[0x266788B60](v22, a1);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v22 >= *(v38 + 16))
        {
          goto LABEL_28;
        }

        v24 = *(a1 + 8 * v22 + 32);
      }

      v25 = v24;
      INPerson.id.getter();
      if (qword_28007CE78 != -1)
      {
        swift_once();
      }

      sub_26666A1C8();
      v26 = v37;
      sub_266669798();

      v40 = v23;
      v27 = *(v23 + 16);
      if (v27 >= *(v23 + 24) >> 1)
      {
        sub_266633988();
        v26 = v37;
        v23 = v40;
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      (*(v2 + 32))(v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v26, v36);
    }

    while (v21 != v22);
    v12 = v31;
LABEL_24:
    v28 = v34;
    v29 = sub_266669D08();

    (*(v32 + 8))(v28, v33);
    v40 = v12;
    sub_2665C28A4(v29);
    return;
  }

  __break(1u);
}

uint64_t sub_2665F6310(uint64_t a1)
{
  result = MEMORY[0x2667888B0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26660B960(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665F63D0(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_2665C6350();
    v5 = v2;

    sub_2665C2988(v3);

    sub_2665C28D0(v4);
    return v5;
  }

  return result;
}

uint64_t sub_2665F6458(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_2666697B8();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v25 - v22;
  a4(v21);
  if (qword_28007CE78 != -1)
  {
    OUTLINED_FUNCTION_11_16();
    swift_once();
  }

  sub_26666A1C8();
  sub_266669798();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
  (*(v9 + 16))(v15, a1, v6);
  return sub_266669728();
}

uint64_t sub_2665F65F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665F673C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_2665F6760(result, a2, a3 & 1);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_2665F6760(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2665F67E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007EE38, &qword_266677248);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665F6834(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2665F6844(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2665F6760(result, a2, a3 & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_2665F673C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return sub_26666C318();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2665764F4(v2, va);
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_26666C318();
}

uint64_t sub_2665F6A34()
{
  result = sub_26655EC10(319, &qword_28007E348);
  if (v1 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CBE0);
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156D140);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CommonCATsSimple();
        if (v4 <= 0x3F)
        {
          result = sub_26655EC10(319, &qword_28007E350);
          if (v5 <= 0x3F)
          {
            result = sub_266669A88();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665F6BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  OUTLINED_FUNCTION_4_14();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665F6BCC()
{
  v1 = v0[3];
  v2 = *(v0[2] + 64);
  v3 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  if (sub_266669658())
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
    v4 = sub_266669698() ^ 1;
  }

  v6 = v0[1];

  return v6(v4 & 1);
}

uint64_t sub_2665F6CDC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v4;
  v1[20] = v5;
  v1[18] = v6;
  v7 = sub_266669E18();
  v1[23] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v1[27] = *(v3 + 16);
  v14 = sub_266669CE8();
  v1[28] = v14;
  OUTLINED_FUNCTION_3_1(v14);
  v1[29] = v15;
  v17 = *(v16 + 64);
  v1[30] = OUTLINED_FUNCTION_19();
  v18 = sub_266669AE8();
  v1[31] = v18;
  OUTLINED_FUNCTION_3_1(v18);
  v1[32] = v19;
  v21 = *(v20 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v22 = sub_266669E58();
  v1[35] = v22;
  OUTLINED_FUNCTION_3_1(v22);
  v1[36] = v23;
  v25 = *(v24 + 64);
  v1[37] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_2665F6EBC()
{
  v138 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  sub_266669DF8();
  v5 = sub_266561674(v1, v0 + 16);
  (*(v2 + 8))(v1, v3, v5);
  v6 = *(v0 + 16);
  if (v6 == 2)
  {
    sub_2665B92F8(v0 + 16);
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = *(v0 + 152);
    v11 = sub_26666C168();
    __swift_project_value_buffer(v11, qword_28156D7E8);
    (*(v8 + 16))(v7, v10, v9);
    v12 = sub_26666C148();
    v13 = sub_26666C5F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 296);
      v15 = *(v0 + 280);
      v17 = *(v0 + 192);
      v16 = *(v0 + 200);
      v18 = *(v0 + 184);
      v19 = OUTLINED_FUNCTION_21();
      v20 = swift_slowAlloc();
      v137[0] = v20;
      *v19 = 136315138;
      sub_266669DF8();
      v21 = sub_26666C318();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_2665BFC90(v21, v23, v137);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_266549000, v12, v13, "[ConfirmParticipantStrategy] Did not get ConfirmationTask from parse: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_9_5();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);
      v27 = *(v0 + 184);

      (*(v26 + 8))(v25, v27);
    }

    sub_26656CBFC();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_9_19(v28, v29);
LABEL_12:
    v35 = *(v0 + 296);
    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 240);
    v40 = *(v0 + 200);
    v39 = *(v0 + 208);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_13;
  }

  v30 = *(v0 + 224);
  v31 = *(v0 + 160);
  sub_266557D74(v0 + 24, &unk_28007D200, &qword_26666FD20);
  v32 = sub_266669CC8();
  v33 = [v32 itemToConfirm];

  sub_26666C718();
  swift_unknownObjectRelease();
  v34 = sub_2665F01D8((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  v45 = *(v0 + 224);
  if (v6)
  {
    v46 = *(v0 + 264);
    v47 = *(v0 + 160);
    v48 = *(v0 + 224);
    sub_266669CD8();
    v49 = sub_266669AC8();
    LOBYTE(v47) = v50;
    v131 = *(v44 + 8);
    v131(v46, v43);
    if (v47)
    {
      goto LABEL_37;
    }

    v52 = *(v0 + 216);
    v51 = *(v0 + 224);
    v54 = *(v0 + 160);
    v53 = *(v0 + 168);
    v55 = sub_266669CB8();
    v56 = *(v53 + 32);
    v57 = (*(v56 + 16))(v52, v56);

    if (!v57)
    {
LABEL_37:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v104 = *(v0 + 232);
      v105 = *(v0 + 240);
      v106 = *(v0 + 224);
      v107 = *(v0 + 160);
      v108 = sub_26666C168();
      __swift_project_value_buffer(v108, qword_28156D7E8);
      (*(v104 + 16))(v105, v107, v106);
      v109 = sub_26666C148();
      v110 = sub_26666C608();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = *(v0 + 272);
        v112 = *(v0 + 240);
        v136 = v34;
        v113 = *(v0 + 224);
        v114 = *(v0 + 232);
        v128 = v113;
        v130 = *(v0 + 248);
        v115 = OUTLINED_FUNCTION_21();
        v116 = swift_slowAlloc();
        v137[0] = v116;
        *v115 = 136315138;
        sub_266669CD8();
        v117 = sub_266669AC8();
        LOBYTE(v113) = v118;
        v131(v111, v130);
        *(v0 + 104) = v117;
        *(v0 + 112) = v113 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
        v119 = sub_26666C318();
        v121 = v120;
        (*(v114 + 8))(v112, v128);
        v34 = v136;
        v122 = sub_2665BFC90(v119, v121, v137);

        *(v115 + 4) = v122;
        _os_log_impl(&dword_266549000, v109, v110, "[ConfirmParticipantStrategy] could not find participant on intent for current multicardinalIndex: %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
        v124 = *(v0 + 232);
        v123 = *(v0 + 240);
        v125 = *(v0 + 224);

        (*(v124 + 8))(v123, v125);
      }

      sub_26656CBFC();
      v126 = swift_allocError();
      OUTLINED_FUNCTION_9_19(v126, v127);

      goto LABEL_12;
    }

    sub_2665C4864(v49, (v57 & 0xC000000000000001) == 0, v57);
    v135 = v34;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x266788B60](v49, v57);
    }

    else
    {
      v58 = *(v57 + 8 * v49 + 32);
    }

    v59 = v58;
    v60 = *(v0 + 272);
    v61 = *(v0 + 248);
    v62 = *(v0 + 224);
    v129 = *(v0 + 216);
    v63 = *(v0 + 160);

    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v64 = sub_26666C488();
    [v59 setAlternatives:v64];

    v65 = sub_266669CB8();
    sub_266669CD8();
    v66 = sub_266669AC8();
    LOBYTE(v62) = v67;
    v131(v60, v61);
    (*(v56 + 24))(v59, v66, v62 & 1, v129, v56);

    v68 = qword_28156C150;
    v69 = *(v0 + 120);
    if (v68 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v70 = sub_26666C168();
    __swift_project_value_buffer(v70, qword_28156D7E8);
    v71 = sub_26666C148();
    v72 = sub_26666C618();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_266549000, v71, v72, "[ConfirmParticipantStrategy] Rejected participant, removed matches but kept skeleton", v73, 2u);
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    v74 = *(v0 + 272);
    v133 = *(v0 + 216);
    v76 = *(v0 + 160);
    v75 = *(v0 + 168);
    v77 = sub_266669CB8();
    sub_266669CD8();
    v78 = sub_266669AC8();
    v80 = v79;
    (*(v44 + 8))(v74, v43);
    v135 = v34;
    (*(*(v75 + 32) + 24))(v34, v78, v80 & 1, v133);

    v81 = qword_28156C150;
    v69 = *(v0 + 136);
    if (v81 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v82 = sub_26666C168();
    __swift_project_value_buffer(v82, qword_28156D7E8);
    v59 = sub_26666C148();
    v83 = sub_26666C618();
    if (os_log_type_enabled(v59, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_266549000, v59, v83, "[ConfirmParticipantStrategy] Confirmed participant.", v84, 2u);
      OUTLINED_FUNCTION_9_5();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v85 = sub_26666C168();
  __swift_project_value_buffer(v85, qword_28156D7E8);
  v86 = v69;
  v87 = sub_26666C148();
  v88 = sub_26666C618();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = *(v0 + 216);
    v90 = OUTLINED_FUNCTION_21();
    v91 = swift_slowAlloc();
    v137[0] = v91;
    *v90 = 136315138;
    *(v0 + 128) = v86;
    v92 = v86;
    swift_getWitnessTable();
    v93 = sub_26666C328();
    v95 = sub_2665BFC90(v93, v94, v137);

    *(v90 + 4) = v95;
    _os_log_impl(&dword_266549000, v87, v88, "[ConfirmParticipantStrategy] Updated intent: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_9_5();
  }

  v96 = *(v0 + 296);
  v97 = *(v0 + 264);
  v98 = *(v0 + 272);
  v99 = *(v0 + 208);
  v100 = *(v0 + 216);
  v132 = *(v0 + 240);
  v134 = *(v0 + 200);
  v101 = *(v0 + 144);
  v102 = sub_266669AF8();
  v103 = MEMORY[0x277D5BED0];
  if ((v6 & 1) == 0)
  {
    v103 = MEMORY[0x277D5BED8];
  }

  (*(*(v102 - 8) + 104))(v99, *v103, v102);
  __swift_storeEnumTagSinglePayload(v99, 0, 1, v102);
  sub_266669B98();

  OUTLINED_FUNCTION_24_1();
LABEL_13:

  return v41();
}

uint64_t sub_2665F7968()
{
  OUTLINED_FUNCTION_14();
  v1[48] = v2;
  v1[49] = v0;
  v1[46] = v3;
  v1[47] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64);
  v1[50] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64);
  v1[51] = OUTLINED_FUNCTION_19();
  v11 = sub_266669708();
  v1[52] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[53] = v12;
  v14 = *(v13 + 64);
  v1[54] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 64);
  v1[55] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v18);
  v20 = *(v19 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v21 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v21);
  v23 = *(v22 + 64);
  v1[58] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  OUTLINED_FUNCTION_3_3(v24);
  v26 = *(v25 + 64);
  v1[59] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_2665F7B24()
{
  v1 = v0[47];
  v2 = *(v0[48] + 16);
  sub_266669CE8();
  v3 = sub_266669CC8();
  v4 = [v3 itemToConfirm];

  sub_26666C718();
  swift_unknownObjectRelease();
  v5 = sub_2665F01D8(v0 + 42);
  v0[60] = v5;
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v8 = sub_26666C168();
  __swift_project_value_buffer(v8, qword_28156D7E8);
  v9 = v5;
  v10 = sub_26666C148();
  v11 = sub_26666C618();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_266549000, v10, v11, "[ConfirmParticipantStrategy] Making prompt to confirm participant: %@", v12, 0xCu);
    sub_266557D74(v13, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v15 = v0[47];

  v16 = sub_266669CB8();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v17 = sub_2665826C4();

    v18 = v17;
LABEL_11:
    v0[61] = v18;
    v19 = v0[49];
    type metadata accessor for CalendarEventConcept(0);
    v20 = v19 + 80;
    sub_26655358C(v19 + 80, (v0 + 17));
    v21 = sub_2665CA7F4(v18, v0 + 17);
    v0[62] = v21;
    v0[63] = *(v19 + 120);
    v0[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26666E050;
    *(inited + 32) = v9;
    v23 = swift_task_alloc();
    *(v23 + 16) = v20;
    v24 = v9;

    sub_2665511FC(sub_266557CC8, v23, inited);
    v26 = v25;
    v0[65] = v25;
    swift_setDeallocating();
    sub_26663919C();

    v27 = swift_task_alloc();
    v0[66] = v27;
    *v27 = v0;
    v27[1] = sub_2665F8170;

    return sub_2665D7F9C(v21, v26);
  }

  v28 = v0[47];

  v29 = sub_266669CB8();
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = [v30 targetEventIdentifier];
    if (v31)
    {
      v32 = v31;
      v33 = sub_26666C308();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = *__swift_project_boxed_opaque_existential_1((v0[49] + 40), *(v0[49] + 64));
    v0[5] = type metadata accessor for EventProvider();
    v0[6] = &off_287806290;
    v0[2] = v36;
    sub_26655358C((v0 + 2), (v0 + 7));

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v35)
    {
      v37 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

      v38 = sub_26655A8B4();
      v39 = sub_26665140C(v33, v35, v38);

      swift_bridgeObjectRelease_n();
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      if (v39)
      {
        sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
        v40 = v39;
        sub_2665EB4F8();
        v42 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_26666E050;
        *(v43 + 32) = v9;
        v44 = v42;
        v45 = v9;
        v18 = v44;
        sub_266580C38(v43);
        swift_setDeallocating();
        sub_26663919C();
        sub_266552C44(0, &qword_28007D748, 0x277CD3BE8);
        v46 = sub_26666C488();

        v47 = sub_26666C2F8();
        [v18 setValue:v46 forKeyPath:v47];

        goto LABEL_11;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }
  }

  v48 = sub_26666C148();
  v49 = sub_26666C5F8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_266549000, v48, v49, "[ConfirmParticipantStrategy] Unexpected intent!", v50, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_26656CBFC();
  v51 = swift_allocError();
  OUTLINED_FUNCTION_9_19(v51, v52);

  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_2665F8170()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = v2[66];
  v6 = *v1;
  v3[67] = v7;
  v3[68] = v0;

  v8 = v2[65];
  if (v0)
  {
    v9 = v3[62];
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665F82B8()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 488);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = *(v0 + 392);
  type metadata accessor for Snippet.ComposeEventModel();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_26655358C(v5 + 40, v0 + 216);
  v10 = v2;
  sub_2665AAA8C(v10, v0 + 216, v11, v12, v13, v14, v15, v16, v50, v51, v53, v54, v55, v56, v57, v58, v59, v60, v61, v0);
  if (v1)
  {
    v17 = *(v0 + 536);
    v19 = *(v0 + 488);
    v18 = *(v0 + 496);
    v20 = *(v0 + 472);
    v21 = *(v0 + 480);

    sub_266557D74(v20, &qword_28007E360, &unk_2666773F0);
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v0 + 512);
  v25 = *(v0 + 472);
  v26 = *(v0 + 480);
  v27 = *(v0 + 456);
  v28 = *(v0 + 464);
  v29 = *(v0 + 448);
  v30 = *(v0 + 392);
  v52 = *(v0 + 496);
  v31 = sub_26666B098();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(v0 + 552) = sub_26666B088();
  sub_26655358C(v30 + 128, v0 + 256);
  v34 = *(v0 + 280);
  *(v0 + 560) = v34;
  *(v0 + 576) = __swift_project_boxed_opaque_existential_1((v0 + 256), v34);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400) + 48);
  sub_2665B5F10(v28, v27);
  sub_2665F927C(v25, v27 + v35);
  v36 = type metadata accessor for Snippet();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v36);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666E050;
  *(inited + 32) = v26;
  v41 = swift_task_alloc();
  *(v41 + 16) = v30 + 80;
  v42 = v26;
  sub_2665511FC(sub_2665F92EC, v41, inited);
  *(v0 + 584) = v43;
  swift_setDeallocating();
  sub_26663919C();

  v44 = swift_task_alloc();
  *(v0 + 592) = v44;
  *v44 = v0;
  v44[1] = sub_2665F85A0;
  v45 = *(v0 + 504);
  OUTLINED_FUNCTION_26();

  return sub_2665D7F9C(v46, v47);
}

uint64_t sub_2665F85A0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = v2[74];
  v6 = *v1;
  v3[75] = v7;
  v3[76] = v0;

  v8 = v2[73];
  v9 = v2[62];
  if (v0)
  {
    v11 = v3[56];
    v10 = v3[57];

    sub_266557D74(v11, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v10, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2665F8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 608);
  sub_266662A60(*(v14 + 552), *(v14 + 440));
  if (v15)
  {
    v16 = *(v14 + 552);
    v17 = *(v14 + 536);
    v19 = *(v14 + 488);
    v18 = *(v14 + 496);
    v20 = *(v14 + 480);
    v49 = *(v14 + 472);
    v22 = *(v14 + 456);
    v21 = *(v14 + 464);
    v23 = *(v14 + 448);

    sub_266557D74(v23, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v22, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v21);
    sub_266557D74(v49, &qword_28007E360, &unk_2666773F0);
    __swift_destroy_boxed_opaque_existential_1((v14 + 256));
    OUTLINED_FUNCTION_13_12();

    OUTLINED_FUNCTION_24_1();

    return v24();
  }

  else
  {
    v26 = *(v14 + 568);
    v27 = *(v14 + 560);
    v29 = *(v14 + 432);
    v28 = *(v14 + 440);
    v31 = *(v14 + 400);
    v30 = *(v14 + 408);
    v32 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v32);
    sub_2666696B8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_266669788();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_26656CFC4();
    v41 = swift_task_alloc();
    *(v14 + 616) = v41;
    *v41 = v14;
    v41[1] = sub_2665F89C8;
    v42 = *(v14 + 600);
    v43 = *(v14 + 576);
    v45 = *(v14 + 448);
    v44 = *(v14 + 456);
    v47 = *(v14 + 432);
    v46 = *(v14 + 440);
    v48 = *(v14 + 368);
    v53 = *(v14 + 560);
    v54 = *(v14 + 568);
    v51 = *(v14 + 408);
    v52 = *(v14 + 400);

    return sub_2665643AC(v48, v44, v45, v42, 0, 0, v46, v47, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2665F89C8()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 600);
  v16 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 440);
  v5 = *(*v0 + 432);
  v6 = *(*v0 + 424);
  v7 = *(*v0 + 416);
  v8 = *(*v0 + 408);
  v9 = *(*v0 + 400);
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v16, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2665F8C28()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  v12 = *(v0 + 432);
  v13 = *(v0 + 408);
  v14 = *(v0 + 400);

  sub_2665AE46C(v6);
  sub_266557D74(v5, &qword_28007E360, &unk_2666773F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_26();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2665F8D40()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);

  v3 = *(v0 + 544);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_2665F8E04()
{
  v1 = *(v0 + 552);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 472);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);

  sub_2665AE46C(v6);
  sub_266557D74(v4, &qword_28007E360, &unk_2666773F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v7 = *(v0 + 608);
  OUTLINED_FUNCTION_6_19();

  OUTLINED_FUNCTION_24_1();

  return v8();
}

uint64_t sub_2665F8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_266669A88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2665F8F80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B93A4;

  return sub_2665F6CDC();
}

uint64_t sub_2665F9040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2665B8910;

  return sub_2665F6BA0(v5, v6, a3);
}

uint64_t sub_2665F90D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8AC0;

  return sub_2665F7968();
}

uint64_t sub_2665F9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B4E8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665F927C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[50];
  v8 = v0[51];
}

uint64_t OUTLINED_FUNCTION_13_12()
{
  v3 = v0[58];
  v2 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v9 = v0[50];
  v8 = v0[51];
}

uint64_t DIPromptForTitle.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2665F93E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2665F9474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665F93E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665F94A0(uint64_t a1)
{
  v2 = sub_2665F9694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665F94DC(uint64_t a1)
{
  v2 = sub_2665F9694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DIPromptForTitle.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_26666CAC8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t DIPromptForTitle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF28, &qword_266677420);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665F9694();
  sub_26666CBE8();
  sub_26666CA18();
  return (*(v5 + 8))(v10, v2);
}

unint64_t sub_2665F9694()
{
  result = qword_28007EF30;
  if (!qword_28007EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF30);
  }

  return result;
}

uint64_t DIPromptForTitle.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF38, &qword_266677428);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665F9694();
  sub_26666CBD8();
  if (!v1)
  {
    v13 = sub_26666C988();
    (*(v6 + 8))(v11, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_2665F9844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DIPromptForTitle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2665F9870(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return DIPromptForTitle.encode(to:)(a1);
}

unint64_t sub_2665F98A4(void *a1)
{
  a1[1] = sub_266563E34();
  a1[2] = sub_2665F98DC();
  result = sub_2665F9930();
  a1[3] = result;
  return result;
}

unint64_t sub_2665F98DC()
{
  result = qword_28007EF40;
  if (!qword_28007EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF40);
  }

  return result;
}

unint64_t sub_2665F9930()
{
  result = qword_28007EF48;
  if (!qword_28007EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIPromptForTitle.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2665F9A44()
{
  result = qword_28007EF50;
  if (!qword_28007EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF50);
  }

  return result;
}

unint64_t sub_2665F9A9C()
{
  result = qword_28007EF58;
  if (!qword_28007EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF58);
  }

  return result;
}

unint64_t sub_2665F9AF4()
{
  result = qword_28007EF60;
  if (!qword_28007EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF60);
  }

  return result;
}

uint64_t sub_2665F9B7C(uint64_t a1)
{
  v1[160] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v2);
  v4 = *(v3 + 64);
  v1[161] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF68, &qword_266677648);
  v1[162] = v5;
  v6 = *(v5 - 8);
  v1[163] = v6;
  v7 = *(v6 + 64);
  v1[164] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  v1[165] = v8;
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64);
  v1[166] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v1[167] = v11;
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64);
  v1[168] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  v1[169] = v14;
  v15 = *(v14 - 8);
  v1[170] = v15;
  v16 = *(v15 + 64) + 15;
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v17 = type metadata accessor for TaskParser();
  v1[173] = v17;
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64);
  v1[174] = OUTLINED_FUNCTION_19();
  v20 = sub_26666BE18();
  OUTLINED_FUNCTION_3_3(v20);
  v22 = *(v21 + 64);
  v1[175] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_2665F9D84, 0, 0);
}

uint64_t sub_2665F9D84()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1280);
  sub_266669638();
  sub_266669E68();
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  v5 = sub_26666BDD8();
  *(v0 + 1408) = v5;
  v6 = *(v0 + 896);
  __swift_project_boxed_opaque_existential_1((v0 + 864), *(v0 + 888));
  sub_266669648();
  v7 = (v2 + v3[5]);
  v8 = type metadata accessor for CalendarDateTimeResolver();
  v7[3] = v8;
  v7[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v10 = swift_allocObject();
  *boxed_opaque_existential_1 = v10;
  sub_2665524C0(v0 + 824, v10 + 16);
  v11 = boxed_opaque_existential_1 + *(v8 + 20);
  sub_266668D88();
  v12 = boxed_opaque_existential_1 + *(v8 + 24);
  sub_26666B548();
  v13 = (v2 + v3[6]);
  v14 = type metadata accessor for CalendarContactResolver();
  v13[3] = v14;
  v13[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v13) + *(v14 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v15 = sub_26666C058();
  v16 = (v2 + v3[7]);
  v16[3] = &type metadata for CalendarReferenceResolver;
  v16[4] = &off_28780BAC8;
  *v16 = v15;
  v17 = v4[3];
  v18 = v4[4];
  v71 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v17);
  LODWORD(v13) = (*(v18 + 16))(v17, v18);
  v19 = objc_allocWithZone(_s13IntentHandlerCMa_1());
  v20 = sub_26660F0D0(v13);
  *(v0 + 928) = v3;
  *(v0 + 936) = &off_287808308;
  v21 = __swift_allocate_boxed_opaque_existential_1((v0 + 904));
  sub_266552BE0(v2, v21);
  sub_26655358C(v0 + 864, v0 + 944);
  v22 = qword_28156CD28;
  v67 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 1400);
  v63 = *(v0 + 1384);
  v64 = *(v0 + 1392);
  v24 = *(v0 + 1376);
  v65 = *(v0 + 1360);
  v66 = *(v0 + 1368);
  v72 = *(v0 + 1352);
  v25 = *(v0 + 1344);
  v60 = *(v0 + 1336);
  v26 = *(v0 + 1328);
  v62 = *(v0 + 1320);
  v68 = *(v0 + 1312);
  v69 = *(v0 + 1280);
  v70 = *(v0 + 1288);
  v27 = qword_28156D828;
  *(v0 + 1008) = type metadata accessor for EventProvider();
  *(v0 + 1016) = &off_287806290;
  *(v0 + 984) = v27;
  v28 = sub_2666699F8();
  v61 = OUTLINED_FUNCTION_0_33(v28);
  swift_allocObject();

  v29 = sub_2666699E8();
  *(v0 + 1048) = v61;
  *(v0 + 1056) = MEMORY[0x277D5BD58];
  *(v0 + 1024) = v29;
  type metadata accessor for CreateEventCATsSimple();
  sub_26666BE08();
  v30 = sub_26666BDD8();
  *(v0 + 1088) = &type metadata for SiriCalendarFeatureManager;
  *(v0 + 1096) = &protocol witness table for SiriCalendarFeatureManager;
  sub_266552C44(0, &qword_28007DE60, 0x277CD3B20);
  sub_266552C44(0, &qword_28007F240, 0x277CD3B28);

  sub_2666694A8();
  *(v0 + 1416) = sub_26666BE38();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v0 + 1024, v0 + 552);
  sub_26655358C(v0 + 944, v0 + 592);
  *(v0 + 536) = v30;
  *(v0 + 544) = v5;
  sub_2665FB0C0(v0 + 536, v0 + 632);
  v31 = swift_allocObject();
  memcpy((v31 + 16), (v0 + 632), 0x60uLL);

  v58 = v24;
  sub_266669478();
  sub_26655358C(v0 + 904, v0 + 1104);
  v25[3] = &unk_287806408;
  v25[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v32 = swift_allocObject();
  *v25 = v32;
  sub_266552D2C(v0 + 1104, v32 + 16);
  sub_26655358C(v0 + 984, (v25 + 5));
  sub_26655358C(v0 + 944, (v25 + 10));
  sub_26655358C(v0 + 1024, (v25 + 15));
  v25[24] = &type metadata for SiriCalendarFeatureManager;
  v25[25] = &protocol witness table for SiriCalendarFeatureManager;
  v25[20] = v5;
  v33 = *(v60 + 68);

  sub_266669A78();
  *(v0 + 40) = &unk_287806408;
  *(v0 + 48) = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v34 = swift_allocObject();
  *(v0 + 16) = v34;
  sub_266552D2C(v0 + 1104, v34 + 16);
  sub_26655358C(v0 + 904, v0 + 56);
  sub_26655358C(v0 + 984, v0 + 96);
  sub_26655358C(v0 + 944, v0 + 136);
  sub_26655358C(v0 + 1024, v0 + 176);
  *(v0 + 216) = v5;
  sub_26655358C(v0 + 904, v0 + 224);
  sub_26655358C(v0 + 944, v0 + 264);
  sub_26655358C(v0 + 1024, v0 + 320);
  sub_26655358C(v0 + 1064, v0 + 360);
  v59 = v30;
  *(v0 + 304) = v30;
  *(v0 + 312) = v5;
  sub_26655358C(v0 + 904, v0 + 1144);
  sub_2665FB124();
  swift_retain_n();

  v35 = sub_266669398();
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v37;
  v39 = *(v0 + 1160);
  *(v38 + 32) = *(v0 + 1144);
  *(v38 + 48) = v39;
  *(v38 + 64) = *(v0 + 1176);
  sub_266669438();
  sub_26666BD78();
  sub_26666BD68();
  v40 = sub_26666BE78();
  OUTLINED_FUNCTION_0_33(v40);
  swift_allocObject();
  OUTLINED_FUNCTION_2_30();
  v41 = sub_26666BE68();
  v42 = sub_26666C058();
  *(v0 + 1208) = &type metadata for CalendarReferenceResolver;
  *(v0 + 1216) = &off_28780BAC8;
  *(v0 + 1184) = v42;
  sub_26655358C(v0 + 944, v0 + 1224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF90, &qword_266677668);
  v43 = swift_allocObject();
  v44 = MEMORY[0x277D56578];
  *(v43 + 48) = v40;
  *(v43 + 56) = v44;
  *(v43 + 24) = v41;
  *(v43 + 88) = &type metadata for DisambiguationResponseParser;
  *(v43 + 96) = &off_287806688;
  OUTLINED_FUNCTION_4();
  v45 = swift_allocObject();
  *(v43 + 64) = v45;
  sub_26656CCE8(v0 + 1184, v45 + 16);
  *(v43 + 144) = 0;
  *(v43 + 152) = 0;
  *(v43 + 160) = 0x80;
  *(v43 + 16) = 0;
  sub_26654B7D8((v0 + 1224), v43 + 104);
  sub_26656CD44(v0 + 1184);
  *(v0 + 1264) = v43;
  sub_26655369C(&qword_28007EF98, &qword_28007EF90, &qword_266677668);
  sub_2666693E8();
  sub_266669498();
  v26[3] = &unk_287806408;
  v26[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4();
  v46 = swift_allocObject();
  *v26 = v46;
  sub_266552D2C(v0 + 1104, v46 + 16);
  sub_26655358C(v0 + 984, (v26 + 5));
  sub_26655358C(v0 + 944, (v26 + 10));
  sub_26655358C(v0 + 1024, (v26 + 16));
  v26[15] = v5;
  v47 = v26 + *(v62 + 64);
  sub_266669A78();
  sub_266649918(v25, v0 + 16, v26);
  sub_266669488();
  sub_26655358C(v0 + 944, v0 + 416);
  sub_26655358C(v0 + 984, v0 + 456);
  v48 = OUTLINED_FUNCTION_0_33(v61);
  swift_allocObject();
  v49 = sub_2666699E8();
  *(v0 + 520) = v48;
  *(v0 + 528) = MEMORY[0x277D5BD58];
  *(v0 + 496) = v49;
  *(v0 + 400) = v67;
  *(v0 + 408) = v59;
  sub_2665FB184();
  sub_2666693B8();
  sub_266669448();

  sub_2665FB1D8(v0 + 224);
  sub_266552F34(v0 + 1104);
  sub_2665FB22C(v0 + 536);
  __swift_destroy_boxed_opaque_existential_1((v0 + 944));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
  __swift_destroy_boxed_opaque_existential_1((v0 + 984));
  __swift_destroy_boxed_opaque_existential_1((v0 + 904));
  sub_2665FB280(v0 + 400);
  sub_266557D74(v26, &qword_28007EF70, &unk_266677650);
  sub_266557D74(v0 + 16, &qword_28007EFA8, &qword_266677670);
  sub_266557D74(v25, &qword_28007EF78, &qword_26667B710);
  *(v0 + 752) = v63;
  *(v0 + 760) = &off_287808308;
  v50 = __swift_allocate_boxed_opaque_existential_1((v0 + 728));
  sub_266552BE0(v64, v50);
  *(v0 + 768) = v67;
  sub_2665FB2D4(v0 + 728, v0 + 776);
  (*(v65 + 16))(v66, v58, v72);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFB0, &qword_266677678);
  OUTLINED_FUNCTION_0_33(v51);
  swift_allocObject();
  sub_2666694B8();
  sub_2665FB330();
  sub_266669808();
  v53 = v71[3];
  v52 = v71[4];
  __swift_project_boxed_opaque_existential_1(v69, v53);
  v54 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v54);
  v55 = swift_task_alloc();
  *(v0 + 1424) = v55;
  *v55 = v0;
  v55[1] = sub_2665FA840;
  v56 = *(v0 + 1288);

  return sub_266668604(v56, v53, v52);
}

uint64_t sub_2665FA840(uint64_t a1)
{
  v2 = *(*v1 + 1424);
  v3 = *(*v1 + 1288);
  v5 = *v1;
  *(*v1 + 1432) = a1;

  sub_266557D74(v3, &qword_28007D140, &qword_26666F140);

  return MEMORY[0x2822009F8](sub_2665FA970, 0, 0);
}

uint64_t sub_2665FA970()
{
  v1 = v0[179];
  v2 = v0[177];
  v14 = v0[174];
  v15 = v0[175];
  v13 = v0[172];
  v3 = v0[170];
  v11 = v0[176];
  v12 = v0[169];
  v16 = v0[171];
  v17 = v0[168];
  v4 = v0[164];
  v5 = v0[163];
  v6 = v0[162];
  v18 = v0[166];
  v19 = v0[161];
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  v7 = sub_2666697F8();

  v0[159] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFC0, &qword_266677680);
  sub_26655369C(&qword_28007EFC8, &qword_28007EFC0, &qword_266677680);
  v8 = sub_266669528();

  (*(v5 + 8))(v4, v6);
  sub_2665FB384((v0 + 91));
  (*(v3 + 8))(v13, v12);
  sub_266553128(v14);
  sub_266553184((v0 + 103));

  __swift_destroy_boxed_opaque_existential_1(v0 + 108);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2665FAB78()
{
  v0 = sub_26666C958();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2665FABC4(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656D695465746164;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665FAC58(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2666040A8();
}

uint64_t sub_2665FAC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665FAB78();
  *a2 = result;
  return result;
}

uint64_t sub_2665FACAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665FABC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665FACD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFC8, &unk_266677850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_26666C308();
  *(inited + 40) = v2;

  v3 = sub_26666C318();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_26666C258();
}

uint64_t sub_2665FAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t sub_2665FADB4(uint64_t a1)
{
  v2 = sub_2665FB580();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2665FADF0(uint64_t a1)
{
  v2 = sub_2665FB580();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2665FAE40()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2665FACD8();
}

uint64_t sub_2665FAE58(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_26666EED0;
    if (qword_28007CE50 != -1)
    {
      swift_once();
    }

    v2 = sub_2665E877C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_26666EED0;
    if (qword_28007CE58 != -1)
    {
      swift_once();
    }

    v2 = sub_2665E88AC();
  }

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return v1;
}

uint64_t sub_2665FAF68(char a1)
{
  v2 = sub_26666B058();
  OUTLINED_FUNCTION_0_33(v2);
  swift_allocObject();
  v3 = sub_26666B048();
  v4 = sub_26666AF28();
  OUTLINED_FUNCTION_0_33(v4);
  swift_allocObject();
  sub_26666AF18();
  sub_26666AB08();
  switch(a1)
  {
    case 1:
      v5 = sub_26666AF78();
      OUTLINED_FUNCTION_0_33(v5);
      swift_allocObject();
      sub_26666AF68();
      v6 = sub_26666AB88();
      OUTLINED_FUNCTION_0_33(v6);
      swift_allocObject();
      sub_26666AB78();
      sub_26666AF38();

      sub_26666AEE8();

      break;
    case 2:
    case 3:

      v3 = 0;
      break;
    default:
      sub_26666AF08();

      break;
  }

  return v3;
}

unint64_t sub_2665FB124()
{
  result = qword_28007EF88;
  if (!qword_28007EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF88);
  }

  return result;
}

unint64_t sub_2665FB184()
{
  result = qword_28007EFA0;
  if (!qword_28007EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFA0);
  }

  return result;
}

unint64_t sub_2665FB330()
{
  result = qword_28007EFB8;
  if (!qword_28007EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CreateEvent.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665FB4C8()
{
  result = qword_28007EFD0;
  if (!qword_28007EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFD0);
  }

  return result;
}

unint64_t sub_2665FB52C()
{
  result = qword_28007EFD8;
  if (!qword_28007EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFD8);
  }

  return result;
}

unint64_t sub_2665FB580()
{
  result = qword_28007EFE0;
  if (!qword_28007EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t type metadata accessor for CalendarFlowCreator()
{
  result = qword_28156D108;
  if (!qword_28156D108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665FB668()
{
  result = type metadata accessor for StringLocalizer();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CommonCATsSimple();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2665FB6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26666BE18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_266669648();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (qword_28156C088 != -1)
  {
    swift_once();
  }

  v5 = qword_28156D7E0;
  *(a1 + *(type metadata accessor for StringLocalizer() + 20)) = v5;
  v6 = *(type metadata accessor for CalendarFlowCreator() + 20);
  type metadata accessor for CommonCATsSimple();
  v7 = v5;
  sub_26666BE08();
  result = sub_26666BDD8();
  *(a1 + v6) = result;
  return result;
}

uint64_t sub_2665FB860()
{
  v1 = type metadata accessor for StringLocalizer();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665FCD18(v0, v5);
  v8[1] = sub_2665FC6BC(0xD000000000000015, 0x800000026667F030, v5);
  sub_266669298();
  v6 = sub_266669528();

  return v6;
}

uint64_t sub_2665FB92C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665FB9C0;

  return sub_2665F9B7C(a1);
}

uint64_t sub_2665FB9C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

uint64_t sub_2665FBAA0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2665FBB34;

  return sub_266666A24(v2, 3);
}

uint64_t sub_2665FBB34()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 24);
  v4 = *v0;
  *(*v0 + 32) = v2;

  return MEMORY[0x2822009F8](sub_2665FBC30, 0, 0);
}

uint64_t sub_2665FBC30()
{
  *(v0 + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFE8, &qword_2666778E8);
  sub_2665FCF98();
  sub_266669528();

  v1 = OUTLINED_FUNCTION_1_10();

  return v2(v1);
}

uint64_t sub_2665FBD14(void *a1, uint64_t (*a2)(void *, uint64_t, void), uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for RootFlow();
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = a2(v12, v10, *(v11 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26666E050;
  *(v14 + 32) = sub_2665FB860();
  sub_2665FD07C(a1, v19);
  OUTLINED_FUNCTION_4();
  v15 = swift_allocObject();
  a4(v19, v15 + 16);
  v19[0] = OUTLINED_FUNCTION_9_20(v13, v14, a5);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v16, v17);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v9;
}

uint64_t sub_2665FBE74()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_26655251C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665FBED0(void *a1)
{
  v2 = type metadata accessor for RootFlow();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2665FC940(v5, v3, *(*(v4 + 8) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26666E050;
  *(v7 + 32) = sub_2665FB860();
  sub_2665FD07C(a1, v12);
  OUTLINED_FUNCTION_4();
  v8 = swift_allocObject();
  sub_26654B7D8(v12, v8 + 16);
  *&v12[0] = OUTLINED_FUNCTION_9_20(v6, v7, &unk_266677908);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v9, v10);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v2;
}

uint64_t sub_2665FC020()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_26664B940(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665FC07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2665FC0A0, 0, 0);
}

uint64_t sub_2665FC0A0()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  v0[6] = v2;
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2665FC1A0;
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return (sub_26664C480)(v9, v8, v2, v5, v7, v3, v4);
}

uint64_t sub_2665FC1A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_10();

  return v7(v6);
}

uint64_t sub_2665FC298(uint64_t a1)
{
  v2 = sub_266669E58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = type metadata accessor for RootFlow();
  (*(v3 + 16))(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v12[1] = OUTLINED_FUNCTION_9_20(MEMORY[0x277D84F90], MEMORY[0x277D84F90], &unk_266677918);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v9, v10);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v6;
}

uint64_t sub_2665FC424(uint64_t a1)
{
  v1[3] = a1;
  v2 = *(*(type metadata accessor for RedirectToCompanionFlow.State(0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_266669E58();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665FC51C, 0, 0);
}

uint64_t sub_2665FC51C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = *(v4 + 16);
  v6(v2, v0[3], v3);
  v6(v1, v2, v3);
  sub_266669E08();
  (*(v4 + 8))(v2, v3);
  v7 = sub_266669E18();
  __swift_storeEnumTagSinglePayload(v5, 0, 2, v7);
  v8 = type metadata accessor for RedirectToCompanionFlow(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_2665FD21C(v5, v11 + OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state, type metadata accessor for RedirectToCompanionFlow.State);
  v0[2] = v11;
  sub_2665FD280(&qword_28007EFF0, type metadata accessor for RedirectToCompanionFlow);
  sub_266669528();

  v12 = OUTLINED_FUNCTION_1_10();

  return v13(v12);
}

uint64_t sub_2665FC6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266669298();
  v11[3] = type metadata accessor for StringLocalizer();
  v11[4] = &off_28780C9B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_2665FD21C(a3, boxed_opaque_existential_1, type metadata accessor for StringLocalizer);
  sub_2665FD07C(v11, v10);
  v7 = swift_allocObject();
  sub_26654B7D8(v10, v7 + 16);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = sub_266669288();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_2665FC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  v9 = *(sub_266669368() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA898(v8, a2, a3);
  (*(v5 + 8))(v8, a2);
  return v12;
}

uint64_t sub_2665FC940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  v9 = *(sub_266669368() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA898(v8, a2, a3);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26666EED0;
  sub_266669338();
  v17 = v12;
  sub_2665C2D6C(v13);
  v14 = v17;
  (*(v5 + 8))(v8, a2);
  return v14;
}

uint64_t sub_2665FCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_4_5(a3);
  (*(v7 + 16))();
  v8 = type metadata accessor for RootFlow();
  v9 = sub_2665FC940(boxed_opaque_existential_1, a3, *(a4 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26666E050;
  *(v10 + 32) = sub_2665FB860();
  sub_2665FD07C(v16, v15);
  OUTLINED_FUNCTION_4();
  v11 = swift_allocObject();
  sub_26654B7D8(v15, v11 + 16);
  *&v15[0] = OUTLINED_FUNCTION_9_20(v9, v10, &unk_2666778E0);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v12, v13);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2665FCC98()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FB92C(v3);
}

uint64_t sub_2665FCD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665FCD7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_33(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_31(v4);

  return sub_2665CBB28(v6, v1, v2);
}

uint64_t sub_2665FCE14(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  v8 = *(v6 + 8);

  return v8(a1, a2);
}

uint64_t sub_2665FCF18()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FBAA0();
}

unint64_t sub_2665FCF98()
{
  result = qword_28156D148;
  if (!qword_28156D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007EFE8, &qword_2666778E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D148);
  }

  return result;
}

uint64_t sub_2665FCFFC()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FBE54(v3);
}

uint64_t sub_2665FD07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_5(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_2665FD0DC()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FC000(v3);
}

uint64_t sub_2665FD15C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(sub_266669E58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_33(v3);
  *v4 = v5;
  v4[1] = sub_2665FD2C8;

  return sub_2665FC424(v0 + v2);
}

uint64_t sub_2665FD21C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_5(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2665FD280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2665E587C(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
}

void sub_2665FD334(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_27_11();
  if (!v9)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2665EC63C(v1, v2);
  v10 = type metadata accessor for DayEventsReadingFlow.Window(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) != 1)
  {
    sub_266600EC0(v2, a1, type metadata accessor for DayEventsReadingFlow.Window);
    if (*(v1 + 16))
    {
      sub_266600390(0, 1, sub_2665C3F00, type metadata accessor for DayEventsReadingFlow.Window, sub_2665C72DC);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_2665FD448(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F040, &unk_266677B00);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_27_11();
  if (!v9)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2665EC668(v1, v2);
  v10 = _s17DayEventGroupingsV8GroupingVMa();
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) != 1)
  {
    sub_266600EC0(v2, a1, _s17DayEventGroupingsV8GroupingVMa);
    if (*(v1 + 16))
    {
      sub_266600390(0, 1, sub_2665C3F18, _s17DayEventGroupingsV8GroupingVMa, sub_2665C72F4);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2665FD55C()
{
  v1 = *v0;
  if (!sub_2665C485C(*v0))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_2665C485C(v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2665C4864(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v2 = *(v1 + 32);

    goto LABEL_5;
  }

LABEL_9:
  v2 = MEMORY[0x266788B60](0, v1);
LABEL_5:
  result = sub_2665C485C(v1);
  if (result)
  {
    sub_2666006E0(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2665FD5FC()
{
  v1 = v0;
  v2 = type metadata accessor for EventReadingFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v7 = sub_26666C168();
  __swift_project_value_buffer(v7, qword_28156D7E8);

  v18 = sub_26666C148();
  v8 = sub_26666C618();

  if (os_log_type_enabled(v18, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
    swift_beginAccess();
    sub_266600278(v1 + v11, v6, type metadata accessor for EventReadingFlow.State);
    v12 = sub_2665FFE70();
    v14 = v13;
    sub_2666004DC(v6, type metadata accessor for EventReadingFlow.State);
    v15 = sub_2665BFC90(v12, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_266549000, v18, v8, "[EventReadingFlow] transitioned to state %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266789690](v10, -1, -1);
    MEMORY[0x266789690](v9, -1, -1);
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_2665FD828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  swift_beginAccess();
  sub_266600E5C(a1, v1 + v3);
  swift_endAccess();
  sub_2665FD5FC();
  OUTLINED_FUNCTION_5_22();
  return sub_2666004DC(a1, v4);
}

uint64_t sub_2665FD898()
{
  OUTLINED_FUNCTION_14();
  v1[44] = v2;
  v1[45] = v0;
  v3 = _s17DayEventGroupingsV8GroupingVMa();
  v1[46] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = type metadata accessor for EventReadingFlow.State(0);
  v1[54] = v6;
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64) + 15;
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665FD994()
{
  v120 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 360);
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_6_20();
  sub_266600278(v3 + v4, v2, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = *(v0 + 440);
      v55 = *(v0 + 392);
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v56, v57, v58);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v59 = *(v0 + 384);
      v60 = *(v0 + 392);
      v61 = *(v0 + 376);
      v62 = sub_26666C168();
      __swift_project_value_buffer(v62, qword_28156D7E8);
      sub_266600278(v60, v59, _s17DayEventGroupingsV8GroupingVMa);
      sub_266600278(v60, v61, _s17DayEventGroupingsV8GroupingVMa);
      v63 = sub_26666C148();
      v64 = sub_26666C618();
      v65 = os_log_type_enabled(v63, v64);
      v67 = *(v0 + 376);
      v66 = *(v0 + 384);
      if (v65)
      {
        v118 = *(v0 + 368);
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v119[0] = v69;
        *v68 = 136315394;
        sub_266668D38();
        OUTLINED_FUNCTION_3_30();
        sub_266600230(v70, v71);
        v72 = sub_26666CAA8();
        v74 = v73;
        sub_2666004DC(v66, _s17DayEventGroupingsV8GroupingVMa);
        v75 = sub_2665BFC90(v72, v74, v119);

        *(v68 + 4) = v75;
        *(v68 + 12) = 2048;
        v76 = sub_2665C485C(*(v67 + *(v118 + 20)));
        v77 = OUTLINED_FUNCTION_34_4();
        sub_2666004DC(v77, v78);
        *(v68 + 14) = v76;
        _os_log_impl(&dword_266549000, v63, v64, "[EventReadingFlow] Prompting if the user would like to read %s events %ld", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        sub_2666004DC(*(v0 + 376), _s17DayEventGroupingsV8GroupingVMa);

        sub_2666004DC(v66, _s17DayEventGroupingsV8GroupingVMa);
      }

      v99 = *(v0 + 392);
      v101 = *(v0 + 352);
      v100 = *(v0 + 360);
      swift_beginAccess();
      v102 = __swift_project_boxed_opaque_existential_1((v100 + 32), *(v100 + 56));
      *(v0 + 40) = _s15ReadingStrategyVMa();
      *(v0 + 48) = &off_28780AAF8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_266600278(v102, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
      sub_26655358C(v0 + 16, v0 + 56);
      v104 = swift_allocObject();
      sub_26654B7D8((v0 + 56), v104 + 16);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      swift_endAccess();
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_266669B78();
      v105 = sub_266600BD4(v99, v0 + 96, v0 + 136, &unk_266677B38, v104);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_266552F34(v0 + 96);
      *(v0 + 328) = v105;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F048, &qword_266677B40);
      sub_26655369C(&qword_28007F050, &qword_28007F048, &qword_266677B40);
      sub_266669838();

      OUTLINED_FUNCTION_0_35();
      v98 = v99;
      goto LABEL_31;
    case 2u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v37 = *(v0 + 360);
      v38 = sub_26666C168();
      v39 = __swift_project_value_buffer(v38, qword_28156D7E8);

      v40 = sub_26666C148();
      v41 = sub_26666C618();
      v42 = OUTLINED_FUNCTION_9(v41);
      v43 = *(v0 + 360);
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        OUTLINED_FUNCTION_23_4();
        *(v44 + 4) = *(*(v43 + 88) + 16);

        _os_log_impl(&dword_266549000, v40, v39, "[EventReadingFlow] running result introduction flow groups: %ld", v44, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        v79 = *(v0 + 360);
      }

      v81 = *(v0 + 352);
      v80 = *(v0 + 360);

      sub_266669B78();
      v82 = sub_266668F88();
      OUTLINED_FUNCTION_28_9(v82);
      *(v0 + 344) = OUTLINED_FUNCTION_30_8();

      sub_266669838();

      break;
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v45 = sub_26666C168();
      __swift_project_value_buffer(v45, qword_28156D7E8);
      v46 = sub_26666C148();
      v47 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v47))
      {
        v48 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v48);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v49, v50, "[EventReadingFlow] running conclusion output flow");
        OUTLINED_FUNCTION_10();
      }

      v52 = *(v0 + 352);
      v51 = *(v0 + 360);

      sub_266669B78();
      v53 = sub_266668F88();
      OUTLINED_FUNCTION_28_9(v53);
      *(v0 + 320) = OUTLINED_FUNCTION_30_8();
      goto LABEL_20;
    case 4u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v28 = sub_26666C168();
      __swift_project_value_buffer(v28, qword_28156D7E8);
      v29 = sub_26666C148();
      v30 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v30))
      {
        v31 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v31);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v32, v33, "[EventReadingFlow] flow is in cancelled state, completing reading flow");
        OUTLINED_FUNCTION_10();
      }

      v35 = *(v0 + 352);
      v34 = *(v0 + 360);

      sub_266669B78();
      v36 = sub_266668F88();
      OUTLINED_FUNCTION_28_9(v36);
      *(v0 + 312) = OUTLINED_FUNCTION_30_8();
LABEL_20:
      sub_266669888();
      break;
    default:
      v6 = *(v0 + 440);
      v7 = *(v0 + 424);
      v117 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48));
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v6, v7, v8);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v10 = *(v0 + 416);
      v9 = *(v0 + 424);
      v11 = *(v0 + 408);
      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      sub_266600278(v9, v10, _s17DayEventGroupingsV8GroupingVMa);
      sub_266600278(v9, v11, _s17DayEventGroupingsV8GroupingVMa);
      v13 = sub_26666C148();
      v14 = sub_26666C618();
      v15 = os_log_type_enabled(v13, v14);
      v17 = *(v0 + 408);
      v16 = *(v0 + 416);
      if (v15)
      {
        v116 = *(v0 + 368);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v119[0] = v19;
        *v18 = 136315394;
        sub_266668D38();
        OUTLINED_FUNCTION_3_30();
        sub_266600230(v20, v21);
        v22 = sub_26666CAA8();
        v24 = v23;
        OUTLINED_FUNCTION_11_17();
        sub_2666004DC(v16, v25);
        v26 = sub_2665BFC90(v22, v24, v119);

        *(v18 + 4) = v26;
        *(v18 + 12) = 2048;
        v27 = sub_2665C485C(*(v17 + *(v116 + 20)));
        sub_2666004DC(v17, v1);
        *(v18 + 14) = v27;
        _os_log_impl(&dword_266549000, v13, v14, "[EventReadingFlow] Reading %s events %ld", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v19);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        OUTLINED_FUNCTION_11_17();
        sub_2666004DC(v17, v83);

        sub_2666004DC(v16, v1);
      }

      v84 = *(v0 + 424);
      v85 = *(v0 + 400);
      v86 = *(v0 + 352);
      v87 = *(v0 + 360);
      v88 = *(v87 + 16);
      OUTLINED_FUNCTION_23_4();
      sub_26655358C(v87 + 32, v0 + 176);
      OUTLINED_FUNCTION_4_29();
      sub_266600278(v84, v85, v89);
      v90 = *(v0 + 200);
      v91 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v90);
      v92 = *(v90 - 8);
      v93 = *(v92 + 64) + 15;
      v94 = swift_task_alloc();
      (*(v92 + 16))(v94, v91, v90);
      v95 = sub_266600994(v88, v94, v85, v117);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));

      *(v0 + 336) = v95;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_266600DA0;
      *(v96 + 24) = v87;
      type metadata accessor for DayEventsReadingFlow(0);
      sub_266600230(&qword_28007DD70, type metadata accessor for DayEventsReadingFlow);

      sub_266669838();

      OUTLINED_FUNCTION_0_35();
      v98 = v84;
LABEL_31:
      sub_2666004DC(v98, v97);
      break;
  }

  v106 = *(v0 + 440);
  v107 = *(v0 + 416);
  v108 = *(v0 + 424);
  v110 = *(v0 + 400);
  v109 = *(v0 + 408);
  v112 = *(v0 + 384);
  v111 = *(v0 + 392);
  v113 = *(v0 + 376);

  OUTLINED_FUNCTION_24_1();

  return v114();
}

uint64_t sub_2665FE4E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FE508, 0, 0);
}

uint64_t sub_2665FE508()
{
  v1 = v0[11];
  OUTLINED_FUNCTION_23_4();
  sub_26655358C(v1 + 32, (v0 + 2));
  OUTLINED_FUNCTION_39_2();
  v2 = *(v1 + 16);
  v0[12] = v2;
  v3 = *(v1 + 24);
  v0[13] = v3;
  v4 = v2;
  v5 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[14] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_22_5(v6);

  return sub_26661C694();
}

uint64_t sub_2665FE5E4()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  *(v10 + 120) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2665FE718()
{
  v0 = type metadata accessor for EventReadingFlow.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = sub_26666C148();
  v7 = sub_26666C618();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266549000, v6, v7, "[EventReadingFlow] Result introduction finished reading first group", v8, 2u);
    MEMORY[0x266789690](v8, -1, -1);
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
  swift_beginAccess();
  sub_2665FD448(v4);
  swift_endAccess();
  v4[v9] = 0;
  swift_storeEnumTagMultiPayload();
  return sub_2665FD828(v4);
}

uint64_t sub_2665FE8B0()
{
  v0 = type metadata accessor for EventReadingFlow.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665FF64C(v4);
  return sub_2665FD828(v4);
}

uint64_t sub_2665FE928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2665FE94C, 0, 0);
}

uint64_t sub_2665FE94C()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_26659F6B4;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_26661F02C();
}

uint64_t sub_2665FE9E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FEA08, 0, 0);
}

uint64_t sub_2665FEA08()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23_4();
  sub_26655358C(v1 + 32, v0 + 16);
  OUTLINED_FUNCTION_39_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 96) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_26661DB90();
}

uint64_t sub_2665FEAAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665FEBA4()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_2665FEC00(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FEC20, 0, 0);
}

uint64_t sub_2665FEC20()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23_4();
  sub_26655358C(v1 + 32, v0 + 16);
  OUTLINED_FUNCTION_39_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 96) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_26661B1E4();
}

uint64_t sub_2665FECC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665FEDBC(uint64_t a1)
{
  v2 = v1;
  v126 = a1;
  v122 = sub_266669AF8();
  v3 = OUTLINED_FUNCTION_3_0(v122);
  v125 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1_0();
  v118 = v9 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD38, &qword_2666725F8);
  OUTLINED_FUNCTION_18_2(v120);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12, v13);
  v121 = v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  v16 = OUTLINED_FUNCTION_3_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_10_5();
  v119 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = v117 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v124 = v117 - v28;
  v128 = sub_266669D78();
  v29 = OUTLINED_FUNCTION_3_0(v128);
  v123 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29, v33);
  OUTLINED_FUNCTION_1_0();
  v127 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD48, &qword_266672608);
  OUTLINED_FUNCTION_3_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v41, v42);
  v44 = v117 - v43;
  v45 = type metadata accessor for EventReadingFlow.State(0);
  v46 = OUTLINED_FUNCTION_18_2(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_10_5();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53, v54);
  v56 = v117 - v55;
  v57 = _s17DayEventGroupingsV8GroupingVMa();
  v58 = OUTLINED_FUNCTION_3_3(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58, v61);
  OUTLINED_FUNCTION_1_0();
  v64 = v63 - v62;
  v65 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_6_20();
  v66 = v2 + v65;
  v67 = v2;
  sub_266600278(v66, v56, v68);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_22();
    sub_2666004DC(v56, v82);
    swift_storeEnumTagMultiPayload();
    return sub_2665FD828(v52);
  }

  OUTLINED_FUNCTION_1_34();
  sub_266600EC0(v56, v64, v69);
  (*(v38 + 16))(v44, v126, v36);
  v70 = *(v38 + 88);
  v71 = OUTLINED_FUNCTION_34_4();
  if (v72(v71) != *MEMORY[0x277D5BC38])
  {
    swift_storeEnumTagMultiPayload();
    sub_2665FD828(v52);
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v64, v84);
    v85 = *(v38 + 8);
    v86 = OUTLINED_FUNCTION_34_4();
    return v87(v86);
  }

  v117[1] = v45;
  v126 = v64;
  v73 = *(v38 + 96);
  v74 = OUTLINED_FUNCTION_34_4();
  v75(v74);
  v76 = v123;
  (*(v123 + 32))(v127, v44, v128);
  v77 = v124;
  sub_266669D68();
  v78 = v122;
  (*(v125 + 104))(v26, *MEMORY[0x277D5BED8], v122);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v78);
  v79 = v121;
  v80 = *(v120 + 48);
  sub_2665E0920(v77, v121);
  sub_2665E0920(v26, v79 + v80);
  OUTLINED_FUNCTION_4_19(v79);
  if (!v89)
  {
    v88 = v119;
    sub_2665E0920(v79, v119);
    OUTLINED_FUNCTION_4_19(v79 + v80);
    v81 = v52;
    if (!v89)
    {
      v105 = v125;
      v106 = v118;
      (*(v125 + 32))(v118, v79 + v80, v78);
      sub_266600230(&qword_28007DD50, MEMORY[0x277D5BEE0]);
      LODWORD(v120) = sub_26666C2E8();
      v107 = *(v105 + 8);
      v107(v106, v78);
      sub_26656CAEC(v26, &qword_28007DD40, &qword_266672600);
      sub_26656CAEC(v124, &qword_28007DD40, &qword_266672600);
      v107(v119, v78);
      v76 = v123;
      sub_26656CAEC(v79, &qword_28007DD40, &qword_266672600);
      if (v120)
      {
        goto LABEL_27;
      }

LABEL_14:
      if (*(v67 + 96))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v90 = sub_26666C168();
        __swift_project_value_buffer(v90, qword_28156D7E8);
        v91 = sub_26666C148();
        v92 = sub_26666C618();
        if (OUTLINED_FUNCTION_52_0(v92))
        {
          v93 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v93);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v94, v95, "[EventReadingFlow] Prompt to continue rejected cancelling reading flow");
          OUTLINED_FUNCTION_10();
        }

        swift_storeEnumTagMultiPayload();
        v96 = v81;
      }

      else
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v97 = sub_26666C168();
        __swift_project_value_buffer(v97, qword_28156D7E8);
        v98 = sub_26666C148();
        v99 = sub_26666C618();
        if (OUTLINED_FUNCTION_52_0(v99))
        {
          v100 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v100);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v101, v102, "[EventReadingFlow] Prompt to continue rejected going to next day");
          OUTLINED_FUNCTION_10();
        }

        sub_2665FF64C(v81);
        v96 = v81;
      }

      sub_2665FD828(v96);
      (*(v76 + 8))(v127, v128);
      OUTLINED_FUNCTION_0_35();
      v104 = v126;
      return sub_2666004DC(v104, v103);
    }

    sub_26656CAEC(v26, &qword_28007DD40, &qword_266672600);
    sub_26656CAEC(v124, &qword_28007DD40, &qword_266672600);
    (*(v125 + 8))(v88, v78);
LABEL_13:
    sub_26656CAEC(v79, &qword_28007DD38, &qword_2666725F8);
    goto LABEL_14;
  }

  sub_26656CAEC(v26, &qword_28007DD40, &qword_266672600);
  sub_26656CAEC(v77, &qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_4_19(v79 + v80);
  v81 = v52;
  if (!v89)
  {
    goto LABEL_13;
  }

  sub_26656CAEC(v79, &qword_28007DD40, &qword_266672600);
LABEL_27:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v108 = sub_26666C168();
  __swift_project_value_buffer(v108, qword_28156D7E8);
  v109 = sub_26666C148();
  v110 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v110))
  {
    v111 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v111);
    OUTLINED_FUNCTION_35_1(&dword_266549000, v112, v113, "[EventReadingFlow] Prompt to continue confirmed");
    OUTLINED_FUNCTION_10();
  }

  v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
  OUTLINED_FUNCTION_4_29();
  v115 = v126;
  sub_266600278(v126, v81, v116);
  *(v81 + v114) = 0;
  swift_storeEnumTagMultiPayload();
  sub_2665FD828(v81);
  (*(v76 + 8))(v127, v128);
  OUTLINED_FUNCTION_0_35();
  v104 = v115;
  return sub_2666004DC(v104, v103);
}

uint64_t sub_2665FF64C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s17DayEventGroupingsV8GroupingVMa();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_23_4();
  if (*(*(v1 + 88) + 16))
  {
    swift_beginAccess();
    sub_2665FD448(v10);
    swift_endAccess();
    if (sub_2665FF768(v10))
    {
      OUTLINED_FUNCTION_1_34();
      v11 = OUTLINED_FUNCTION_45();
      sub_266600EC0(v11, v12, v13);
    }

    else
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
      OUTLINED_FUNCTION_1_34();
      v15 = OUTLINED_FUNCTION_45();
      sub_266600EC0(v15, v16, v17);
      *(a1 + v14) = 0;
    }
  }

  type metadata accessor for EventReadingFlow.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2665FF768(uint64_t a1)
{
  v3 = _s17DayEventGroupingsV8GroupingVMa();
  v4 = OUTLINED_FUNCTION_18_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  if (*(v1 + 96))
  {
    return 1;
  }

  v12 = sub_2665C485C(*(a1 + *(v3 + 20)));
  v11 = v12 > 1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v13 = sub_26666C168();
  __swift_project_value_buffer(v13, qword_28156D7E8);
  OUTLINED_FUNCTION_4_29();
  sub_266600278(a1, v10, v14);
  v15 = sub_26666C148();
  v16 = sub_26666C618();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v12 > 1;
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = v17;
    *(v18 + 8) = 2048;
    v19 = sub_2665C485C(*(v10 + *(v3 + 20)));
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v10, v20);
    *(v18 + 10) = v19;
    _os_log_impl(&dword_266549000, v15, v16, "[EventReadingFlow] shouldPrompt: %{BOOL}d events: %ld", v18, 0x12u);
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v10, v21);
  }

  return v11;
}

uint64_t sub_2665FF904()
{
  type metadata accessor for EventReadingFlow(0);
  sub_266600230(&qword_28007F038, type metadata accessor for EventReadingFlow);
  OUTLINED_FUNCTION_45();
  return sub_266669548();
}

uint64_t sub_2665FF990()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_5_22();
  sub_2666004DC(v0 + v4, v5);
  return v0;
}

uint64_t sub_2665FF9F4()
{
  sub_2665FF990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665FFA74()
{
  result = type metadata accessor for EventReadingFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReadingFlowDayPromptMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2665FFC3C()
{
  sub_2665FFCB0();
  if (v0 <= 0x3F)
  {
    _s17DayEventGroupingsV8GroupingVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2665FFCB0()
{
  if (!qword_28007F020)
  {
    _s17DayEventGroupingsV8GroupingVMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28007F020);
    }
  }
}

unint64_t sub_2665FFD20()
{
  result = qword_28007F028;
  if (!qword_28007F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F028);
  }

  return result;
}

uint64_t sub_2665FFD98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656C894;

  return sub_2665FD898();
}

uint64_t sub_2665FFE34()
{
  type metadata accessor for EventReadingFlow(0);

  return sub_266669588();
}

unint64_t sub_2665FFE70()
{
  v1 = _s17DayEventGroupingsV8GroupingVMa();
  v2 = OUTLINED_FUNCTION_18_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_10_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for EventReadingFlow.State(0);
  v14 = OUTLINED_FUNCTION_18_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_6_20();
  sub_266600278(v0, v20, v21);
  v22 = 0x6973756C636E6F63;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v20, v8, v33);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_26666C7E8();

      v41 = 0xD000000000000015;
      v42 = 0x800000026667F0F0;
      sub_266668D38();
      OUTLINED_FUNCTION_3_30();
      sub_266600230(v34, v35);
      v36 = sub_26666CAA8();
      MEMORY[0x266788710](v36);

      OUTLINED_FUNCTION_31_6();
      v40 = sub_2665C485C(*(v8 + *(v1 + 20)));
      v37 = sub_26666CAA8();
      MEMORY[0x266788710](v37);

      v22 = v41;
      OUTLINED_FUNCTION_0_35();
      v32 = v8;
      goto LABEL_11;
    case 2u:
      v22 = 0xD000000000000010;
      break;
    case 3u:
      return v22;
    case 4u:
      v22 = 0x656C6C65636E6163;
      break;
    default:
      v23 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48));
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v20, v12, v24);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_26666C7E8();
      MEMORY[0x266788710](0x2079614464616572, 0xEC0000003A796164);
      sub_266668D38();
      OUTLINED_FUNCTION_3_30();
      sub_266600230(v25, v26);
      v27 = sub_26666CAA8();
      MEMORY[0x266788710](v27);

      OUTLINED_FUNCTION_31_6();
      v40 = sub_2665C485C(*&v12[*(v1 + 20)]);
      v28 = sub_26666CAA8();
      MEMORY[0x266788710](v28);

      MEMORY[0x266788710](0xD000000000000022, 0x800000026667F110);
      if (v23)
      {
        v29 = 1702195828;
      }

      else
      {
        v29 = 0x65736C6166;
      }

      if (v23)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      MEMORY[0x266788710](v29, v30);

      v22 = v41;
      OUTLINED_FUNCTION_0_35();
      v32 = v12;
LABEL_11:
      sub_2666004DC(v32, v31);
      break;
  }

  return v22;
}

uint64_t sub_266600230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266600278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666002D8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = *v2;
  result = sub_2665C1DCC(*v2);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_2665C485C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (!v8)
  {
    sub_2665C4868(result, 1);
    v9 = OUTLINED_FUNCTION_45();
    return sub_2666007AC(v9, v10, 0, v11, v12, v13);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_266600390(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v5 + 16);
  if (v7 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v7 - v9;
  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  a3(result, 1);
  v13 = *v5;
  v14 = *(a4(0) - 8);
  v15 = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = *(v14 + 72);
  v17 = v15 + v16 * v8;
  result = swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v5 = v13;
    return result;
  }

  v18 = *(v13 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_16;
  }

  result = a5(v15 + v16 * a2, v18 - a2, v17);
  v19 = *(v13 + 16);
  v20 = __OFADD__(v19, v10);
  v21 = v19 - v9;
  if (!v20)
  {
    *(v13 + 16) = v21;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2666004DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266600534()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FEC00(v3, v4);
}

uint64_t sub_2666005B8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FE9E8(v3, v4);
}

uint64_t sub_26660063C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_33(v5);
  *v6 = v7;
  v6[1] = sub_26656C894;

  return sub_2665FE928(a1, a2, v2 + 16);
}

uint64_t sub_2666006E0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_2665C1DCC(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_2665C485C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_2665C4868(result, 1);

  return sub_2666008AC(v4, a2, 0);
}

uint64_t sub_2666007AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = a6;
  v6 = a3;
  v10 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v9 = &v7[a1 + 4];
  sub_266552C44(0, a4, a5);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v12 = v14 >> 62;
  if (!(v14 >> 62))
  {
    result = v7[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_26666C768();
LABEL_6:
  if (__OFSUB__(result, v10))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8(&v11[v10], result - v10, v9 + 8 * v6);
  if (v12)
  {
    result = sub_26666C768();
  }

  else
  {
    result = v7[2];
  }

  if (__OFADD__(result, v13))
  {
    goto LABEL_18;
  }

  v7[2] = result + v13;
LABEL_12:
  if (v6 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2666008AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2666692A8();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_26666C768();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2665C7428(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_26666C768();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_266600994(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = _s15ReadingStrategyVMa();
  v28 = v8;
  v29 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_266600EC0(a2, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  v10 = type metadata accessor for DayEventsReadingFlow(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v28;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15, v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v26[3] = v8;
  v26[4] = &off_28780AAF8;
  v20 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_266600EC0(v18, v20, _s15ReadingStrategyVMa);
  *(v13 + 16) = a1;
  sub_26655358C(v26, v13 + 24);
  sub_266600278(a3, v13 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_grouping, _s17DayEventGroupingsV8GroupingVMa);
  *(v13 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_isFirstTotalResultIntroduction) = a4;
  v21 = *(a3 + *(_s17DayEventGroupingsV8GroupingVMa() + 20));
  v22 = a1;
  sub_26659D404();
  v24 = v23;

  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2666004DC(a3, _s17DayEventGroupingsV8GroupingVMa);
  *(v13 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead) = v24;
  type metadata accessor for DayEventsReadingFlow.State(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v13;
}

uint64_t sub_266600BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s17DayEventGroupingsV8GroupingVMa();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = &unk_287806408;
  v22[4] = &off_2878064B0;
  v22[0] = swift_allocObject();
  sub_266552D2C(a2, v22[0] + 16);
  sub_266600278(a1, v14, _s17DayEventGroupingsV8GroupingVMa);
  sub_26655358C(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F058, &qword_266677B58);
  v15 = swift_allocObject();
  sub_26654B7D8(v21, v15 + 16);
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  sub_26655358C(a3, v21);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F048, &qword_266677B40);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_26655369C(&qword_28007F060, &qword_28007F058, &qword_266677B58);

  v19 = sub_2666691D8();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v19;
}

uint64_t sub_266600DA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_266600DD0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FE4E8(v3, v4);
}

uint64_t sub_266600E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReadingFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266600EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return sub_266668F78();
}

void OUTLINED_FUNCTION_31_6()
{

  JUMPOUT(0x266788710);
}

void sub_2666010A4()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28007CE28 != -1)
  {
    swift_once();
  }

  v7 = sub_26666C168();
  __swift_project_value_buffer(v7, qword_2800957E0);

  v18 = sub_26666C148();
  v8 = sub_26666C618();

  if (os_log_type_enabled(v18, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
    swift_beginAccess();
    sub_266602A78(v1 + v11, v6);
    v12 = sub_266602214();
    v14 = v13;
    sub_266602ADC(v6);
    v15 = sub_2665BFC90(v12, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_266549000, v18, v8, "[RedirectToCompanionFlow] transitioned to state %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266789690](v10, -1, -1);
    MEMORY[0x266789690](v9, -1, -1);
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_2666012A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_266602CFC(a1, v1 + v3);
  swift_endAccess();
  sub_2666010A4();
  return sub_266602ADC(a1);
}

uint64_t sub_266601314()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_266669D58();
  v1[10] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F090, &unk_266677CC8) - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v8 = sub_2666690F8();
  v1[14] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_19();
  v12 = sub_266669D28();
  v1[17] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[18] = v13;
  v15 = *(v14 + 64);
  v1[19] = OUTLINED_FUNCTION_19();
  v16 = sub_2666695C8();
  v1[20] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[21] = v17;
  v19 = *(v18 + 64);
  v1[22] = OUTLINED_FUNCTION_19();
  v20 = *(*(type metadata accessor for RedirectToCompanionFlow.State(0) - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v21 = sub_266669E18();
  v1[24] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v1[25] = v22;
  v24 = *(v23 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266601558, 0, 0);
}

uint64_t sub_266601558()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_266602A78(v3 + v4, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 2, v2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v6 = v0[23];
      v7 = v0[8];
      sub_2666698A8();
      sub_266602ADC(v6);
    }

    else
    {
      v28 = v0[21];
      v27 = v0[22];
      v29 = v0[20];
      v30 = v0[8];
      (*(v28 + 104))(v27, *MEMORY[0x277D5B8A0], v29);
      sub_2666698B8();
      (*(v28 + 8))(v27, v29);
    }
  }

  else
  {
    v8 = v0[24];
    v49 = v8;
    v50 = v0[27];
    v9 = v0[23];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v47 = v0[15];
    v48 = v0[14];
    v14 = v0[13];
    v41 = v0[12];
    v15 = v0[11];
    v42 = v0[10];
    v43 = v0[26];
    v45 = v0[9];
    v46 = v0[8];
    v44 = v0[25];
    (*(v44 + 32))();
    sub_266669278();
    (*(v11 + 104))(v10, *MEMORY[0x277D5C088], v13);
    sub_266669268();
    (*(v11 + 8))(v10, v13);
    type metadata accessor for SimpleHandoffStrategy();
    swift_allocObject();
    sub_266602A30(&qword_28007F098, v16, type metadata accessor for SimpleHandoffStrategy);

    sub_2666690C8();
    v17 = sub_2666690D8();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
    sub_2666690B8();
    sub_2666690E8();
    (*(v44 + 16))(v43, v50, v49);
    (*(v15 + 104))(v41, *MEMORY[0x277D5C0E0], v42);
    sub_266669B78();
    v18 = sub_266669018();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v0[5] = sub_266669008();
    sub_2666692D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
    v21 = sub_266669368();
    OUTLINED_FUNCTION_3_1(v21);
    v23 = *(v22 + 72);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_266672100;
    sub_266669318();
    sub_266669358();
    sub_266669348();
    v0[6] = sub_2666692B8();
    v26 = sub_266669568();

    v0[7] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0A0, &qword_266677CD8);
    sub_266602B40();
    sub_266669838();

    (*(v47 + 8))(v12, v48);
    (*(v44 + 8))(v50, v49);
  }

  v32 = v0[26];
  v31 = v0[27];
  v34 = v0[22];
  v33 = v0[23];
  v35 = v0[19];
  v36 = v0[16];
  v38 = v0[12];
  v37 = v0[13];

  v39 = v0[1];

  return v39();
}

uint64_t sub_266601A6C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_266669028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = (&v68 - v12);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = (&v68 - v16);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v68 - v24;
  v26 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v72 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v68 - v32;
  sub_266602C24(a1, v25);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B8, &qword_266677CE8);
  if (__swift_getEnumTagSinglePayload(v25, 1, v34) == 1)
  {
    if (qword_28007CE28 != -1)
    {
      swift_once();
    }

    v35 = sub_26666C168();
    __swift_project_value_buffer(v35, qword_2800957E0);
    v36 = sub_26666C148();
    v37 = sub_26666C5F8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266549000, v36, v37, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v38, 2u);
      MEMORY[0x266789690](v38, -1, -1);
    }

    v39 = sub_266669E18();
    __swift_storeEnumTagSinglePayload(v33, 1, 2, v39);
    sub_266602C94(v25);
  }

  else
  {
    (*(v4 + 32))(v20, v25, v3);
    v40 = *(v4 + 16);
    v40(v17, v20, v3);
    if ((*(v4 + 88))(v17, v3) == *MEMORY[0x277D5B4B0])
    {
      (*(v4 + 96))(v17, v3);
      v41 = *v17;
      if (qword_28007CE28 != -1)
      {
        swift_once();
      }

      v42 = sub_26666C168();
      __swift_project_value_buffer(v42, qword_2800957E0);
      v43 = v41;
      v44 = sub_26666C148();
      v45 = sub_26666C5F8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v74 = v41;
        v75 = v71;
        *v46 = 136315138;
        v47 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
        v48 = sub_26666C318();
        v50 = sub_2665BFC90(v48, v49, &v75);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_266549000, v44, v45, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v46, 0xCu);
        v51 = v71;
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x266789690](v51, -1, -1);
        MEMORY[0x266789690](v46, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v20, v3);
      v64 = sub_266669E18();
      __swift_storeEnumTagSinglePayload(v33, 2, 2, v64);
    }

    else
    {
      if (qword_28007CE28 != -1)
      {
        swift_once();
      }

      v52 = sub_26666C168();
      __swift_project_value_buffer(v52, qword_2800957E0);
      v40(v13, v20, v3);
      v53 = sub_26666C148();
      LODWORD(v71) = sub_26666C5E8();
      if (os_log_type_enabled(v53, v71))
      {
        v54 = swift_slowAlloc();
        v69 = v53;
        v55 = v54;
        v70 = swift_slowAlloc();
        v75 = v70;
        *v55 = 136315138;
        v40(v9, v13, v3);
        v68 = sub_26666C318();
        v57 = v56;
        v58 = *(v4 + 8);
        v58(v13, v3);
        v59 = sub_2665BFC90(v68, v57, &v75);

        v60 = v55;
        *(v55 + 4) = v59;
        v61 = v69;
        v62 = v60;
        _os_log_impl(&dword_266549000, v69, v71, "ExecuteOnRemote flow completed with: %s", v60, 0xCu);
        v63 = v70;
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x266789690](v63, -1, -1);
        MEMORY[0x266789690](v62, -1, -1);
      }

      else
      {

        v58 = *(v4 + 8);
        v58(v13, v3);
      }

      v58(v20, v3);
      v65 = sub_266669E18();
      __swift_storeEnumTagSinglePayload(v33, 1, 2, v65);
      v58(v17, v3);
    }
  }

  v66 = v72;
  sub_266602A78(v33, v72);
  sub_2666012A8(v66);
  return sub_266602ADC(v33);
}

uint64_t sub_266602180()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  sub_266602A30(&qword_28007EFF0, 255, type metadata accessor for RedirectToCompanionFlow);
  return sub_266669548();
}

uint64_t sub_266602214()
{
  v1 = v0;
  v2 = sub_266669E18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266602A78(v1, v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 2, v2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0x6E7552736168;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_26666C7E8();

    strcpy(v17, "inputReceived(");
    HIBYTE(v17[1]) = -18;
    sub_266602A30(&qword_28007D6D8, 255, MEMORY[0x277D5C118]);
    v15 = sub_26666CAA8();
    MEMORY[0x266788710](v15);

    MEMORY[0x266788710](41, 0xE100000000000000);
    v14 = v17[0];
    (*(v3 + 8))(v7, v2);
  }

  return v14;
}

uint64_t sub_266602450()
{
  sub_266602ADC(v0 + OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2666024DC()
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void (*sub_2666025D4(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_26666BA78();
  return sub_26660264C;
}

void sub_26660264C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_266602694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2665B8910;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266602768()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266557FE8;

  return sub_266601314();
}

uint64_t sub_266602804()
{
  type metadata accessor for RedirectToCompanionFlow(0);

  return sub_266669588();
}

uint64_t sub_26660288C()
{
  v0 = sub_266669E18();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2666028E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B6C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266557FE8;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t sub_266602A30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_266602A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602ADC(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266602B40()
{
  result = qword_28007F0A8;
  if (!qword_28007F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F0A0, &qword_266677CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F0A8);
  }

  return result;
}

uint64_t sub_266602BA4()
{
  v0 = sub_26666C168();
  __swift_allocate_value_buffer(v0, qword_2800957E0);
  __swift_project_value_buffer(v0, qword_2800957E0);
  return sub_26666C158();
}

uint64_t sub_266602C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266602CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602D60()
{
  v1 = v0[2];

  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents21CalendarEventLocation7Builder_virtualLocation);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_266602DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  result = MEMORY[0x28223BE20](v8, v9);
  v12 = &v18 - v11;
  if (a1 != 0xD000000000000010 || 0x800000026667D0F0 != a2)
  {
    result = sub_26666CAC8();
    if ((result & 1) == 0)
    {
      v15 = a1 == 0x4C6C617574726976 && a2 == 0xEF6E6F697461636FLL;
      if (v15 || (result = sub_26666CAC8(), (result & 1) != 0))
      {
        sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation, v12);
        v16 = sub_26666BDA8();
        if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
        {
          *(a3 + 24) = v16;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, v12, v16);
        }

        result = sub_266583058(v12);
      }

      goto LABEL_17;
    }
  }

  v14 = *(v3 + 24);
  if (!v14)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_26666BD58();
  *a3 = v14;
}

uint64_t sub_266602FB8()
{
  v0 = sub_26666C958();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26660300C(char a1)
{
  if (a1)
  {
    return 0x4C6C617574726976;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_266603054(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266604A1C();
}

uint64_t sub_266603078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266602FB8();
  *a2 = result;
  return result;
}

uint64_t sub_2666030A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26660300C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2666030DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266602FB8();
  *a1 = result;
  return result;
}

uint64_t sub_266603104(uint64_t a1)
{
  v2 = sub_2666039BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266603140(uint64_t a1)
{
  v2 = sub_2666039BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26660317C()
{
  v1 = *(v0 + 24);

  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation);
  return v0;
}

uint64_t sub_2666031B4()
{
  sub_26660317C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266603234()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2666032D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F108, &qword_266677E08);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666039BC();
  sub_26666CBE8();
  v21 = *(v3 + 24);
  v20[7] = 0;
  sub_26666BD58();
  OUTLINED_FUNCTION_1_35();
  sub_266603974(v15, v16);
  OUTLINED_FUNCTION_6_9();
  if (!v2)
  {
    v20[6] = 1;
    sub_26666BDA8();
    OUTLINED_FUNCTION_0_36();
    sub_266603974(v17, v18);
    OUTLINED_FUNCTION_6_9();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_266603484(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_266603598(a1);
  return v5;
}

void sub_2666034FC()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266603598(uint64_t *a1)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0F0, &qword_266677E00);
  OUTLINED_FUNCTION_3_0(v23);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666039BC();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventLocation(0);
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_26666BD58();
    v25 = 0;
    OUTLINED_FUNCTION_1_35();
    sub_266603974(v14, v15);
    OUTLINED_FUNCTION_5_16();
    *(v1 + 24) = v26;
    sub_26666BDA8();
    v24 = 1;
    OUTLINED_FUNCTION_0_36();
    sub_266603974(v19, v20);
    OUTLINED_FUNCTION_5_16();
    v21 = OUTLINED_FUNCTION_2_21();
    v22(v21);
    sub_2665BE5D0(v8, v1 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_266603894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266603484(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266603974(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2666039BC()
{
  result = qword_28007F0F8;
  if (!qword_28007F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F0F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266603AF0()
{
  result = qword_28007F118;
  if (!qword_28007F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F118);
  }

  return result;
}

unint64_t sub_266603B48()
{
  result = qword_28007F120;
  if (!qword_28007F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F120);
  }

  return result;
}

unint64_t sub_266603BA0()
{
  result = qword_28007F128;
  if (!qword_28007F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F128);
  }

  return result;
}

BOOL sub_266603C24(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    sub_26662F1A4(*v4);
    v8 = v7;
    v10 = v9;
    sub_26662F1A4(a1);
    if (v8 == v12 && v10 == v11)
    {

      return v5 != 0;
    }

    v14 = sub_26666CAC8();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_266603CE8()
{
  OUTLINED_FUNCTION_30_9();
  v3 = 0x5065747563657865;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x4D65747563657865;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEF776F6C466E6961;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x5065747563657865;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x4D65747563657865;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (v2 == 1)
    {
      v0 = 0xEF776F6C466E6961;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_67();
  }

  return v8 & 1;
}

uint64_t sub_266603DEC()
{
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1954047342;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1953718636;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_13();
  }

  return v7 & 1;
}

uint64_t sub_266603F00()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_81();
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE700000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_59_0();
      v0 = v0 | 0xEE00656C75520000;
      break;
    case 6:
      OUTLINED_FUNCTION_18_8();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x7961447472617473;
      break;
    case 2:
      v4 = 0x6D69547472617473;
      v1 = 0xE900000000000065;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x796144646E65;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v4 = 0x656D6954646E65;
      break;
    case 5:
      OUTLINED_FUNCTION_58();
      v1 = v1 | 0xEE00656C75520000;
      break;
    case 6:
      OUTLINED_FUNCTION_17_11();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_13();
  }

  return v7 & 1;
}

uint64_t sub_2666040A8()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_12_17();
      break;
    case 2:
      OUTLINED_FUNCTION_18_8();
      break;
    case 3:
      OUTLINED_FUNCTION_27_12();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_34_5();
      break;
    case 2:
      OUTLINED_FUNCTION_17_11();
      break;
    case 3:
      OUTLINED_FUNCTION_37_2();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_13();
  }

  return v7 & 1;
}

uint64_t sub_266604194(unsigned __int8 a1, char a2)
{
  v2 = "sameDateTimeMultiDay";
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 1)
    {
      v5 = "nextWindowAfternoonOnly";
    }

    else
    {
      v5 = "nextWindowEveningOnly";
    }
  }

  else
  {
    v4 = 0xD000000000000017;
    v5 = "sameDateTimeMultiDay";
  }

  if (a2)
  {
    v2 = "nextWindowAfternoonOnly";
    if (a2 == 1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a2 != 1)
    {
      v2 = "nextWindowEveningOnly";
    }
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_266604260()
{
  OUTLINED_FUNCTION_10_17();
  v2 = 0x5774737269467369;
  v4 = v3;
  v5 = 0x5774737269467369;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000026667CD00;
      v5 = 0xD00000000000001CLL;
      break;
    case 2:
      v7 = "afternoonEventsSameStartTime";
      goto LABEL_6;
    case 3:
      break;
    case 4:
      v5 = 0x69577473614C7369;
      v6 = 0xEC000000776F646ELL;
      break;
    default:
      v7 = &unk_26667CCE0;
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001ALL;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000026667CD00;
      v2 = 0xD00000000000001CLL;
      break;
    case 2:
      v8 = "afternoonEventsSameStartTime";
      goto LABEL_12;
    case 3:
      break;
    case 4:
      v2 = 0x69577473614C7369;
      v0 = 0xEC000000776F646ELL;
      break;
    default:
      v8 = &unk_26667CCE0;
LABEL_12:
      v0 = v8 | 0x8000000000000000;
      v2 = 0xD00000000000001ALL;
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_67();
  }

  return v10 & 1;
}

uint64_t sub_2666043C8()
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_19_6();
  v3 = 0x57656E4F796C6E6FLL;
  v5 = v4;
  v6 = "sameDateTimeMultiDay";
  v7 = "sameDateTimeSingleDay";
  v8 = "sameDateBirthday";
  v9 = 0x57656E4F796C6E6FLL;
  v10 = v0;
  v11 = "previousItemAllDay";
  switch(v5)
  {
    case 1:
      v10 = 0x800000026667CFE0;
      v9 = v2 + 2;
      break;
    case 2:
      v9 = 0x65746144656D6173;
      v10 = 0xEF7961446C6C4173;
      break;
    case 3:
      v10 = 0x800000026667D010;
      v9 = OUTLINED_FUNCTION_89();
      break;
    case 4:
      v10 = 0x800000026667D030;
      v9 = v2 + 5;
      break;
    case 5:
      v10 = 0x800000026667D050;
      v9 = v2 + 4;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v11 - 32) | 0x8000000000000000;
      v3 = v2 + 2;
      break;
    case 2:
      OUTLINED_FUNCTION_88();
      break;
    case 3:
      v0 = (v8 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_87();
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      v3 = v2 + 5;
      break;
    case 5:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = v2 + 4;
      break;
    default:
      break;
  }

  if (v9 == v3 && v10 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_67();
  }

  return v13 & 1;
}

uint64_t sub_266604558(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "ay";
  v4 = "ay";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "hasMoreEventsThatDay";
      v6 = 0xD000000000000016;
      break;
    case 2:
      v4 = "oneOrMoreDaysRequested";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "portionOfDayRequested";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "hasMoreEventsThatDay";
      v2 = 0xD000000000000016;
      break;
    case 2:
      v3 = "oneOrMoreDaysRequested";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "portionOfDayRequested";
      v2 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_26660468C(unsigned __int8 a1, char a2)
{
  v2 = 7954788;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7954788;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 3:
      v5 = 0x6E6F4D74696C7073;
      v3 = 0xEA00000000006874;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1953720684;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    case 7:
      v5 = 0x7261646E656C6163;
      v3 = 0xE900000000000073;
      break;
    case 8:
      v3 = 0xE500000000000000;
      v5 = 0x786F626E69;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 3:
      v2 = 0x6E6F4D74696C7073;
      v6 = 0xEA00000000006874;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1953720684;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x686372616573;
      break;
    case 7:
      v2 = 0x7261646E656C6163;
      v6 = 0xE900000000000073;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v2 = 0x786F626E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_266604880(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E69646E65747461;
  }

  else
  {
    v3 = 0x6E6F73726570;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEF73757461745367;
  }

  if (a2)
  {
    v5 = 0x6E69646E65747461;
  }

  else
  {
    v5 = 0x6E6F73726570;
  }

  if (a2)
  {
    v6 = 0xEF73757461745367;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_26660491C(unsigned __int8 a1, char a2)
{
  v2 = 0x6C61767265746E69;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x636E657571657266;
    }

    else
    {
      v4 = 0x6557664F73796164;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000079;
    }

    else
    {
      v5 = 0xEA00000000006B65;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6C61767265746E69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x636E657571657266;
    }

    else
    {
      v2 = 0x6557664F73796164;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000079;
    }

    else
    {
      v6 = 0xEA00000000006B65;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_266604A1C()
{
  OUTLINED_FUNCTION_19_8();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0x4C6C617574726976;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xEF6E6F697461636FLL;
  }

  if (v0)
  {
    v6 = 0x4C6C617574726976;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v0)
  {
    v7 = 0xEF6E6F697461636FLL;
  }

  else
  {
    v7 = v1;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_13();
  }

  return v9 & 1;
}

uint64_t sub_266604ABC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006563;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  v5 = a1;
  v6 = 0x696669746E656469;
  v7 = "wasPreviouslyRead";
  switch(v5)
  {
    case 1:
      v4 = 0xE500000000000000;
      v6 = 0x656C746974;
      break;
    case 2:
      OUTLINED_FUNCTION_12_17();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_59_0();
      goto LABEL_8;
    case 4:
      v6 = OUTLINED_FUNCTION_18_8();
      break;
    case 5:
      OUTLINED_FUNCTION_27_12();
      break;
    case 6:
      v4 = 0xE800000000000000;
      v6 = 0x7961446C6C417369;
      break;
    case 7:
      v6 = 0x6468747269427369;
      v4 = 31073;
LABEL_8:
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      v4 = 0x800000026667D600;
      v6 = 0xD000000000000011;
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_89();
      v4 = (v8 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  v9 = v2 + 3330;
  switch(a2)
  {
    case 1:
      v9 = 0xE500000000000000;
      OUTLINED_FUNCTION_54_0();
      break;
    case 2:
      OUTLINED_FUNCTION_34_5();
      break;
    case 3:
      OUTLINED_FUNCTION_58();
      goto LABEL_19;
    case 4:
      OUTLINED_FUNCTION_17_11();
      break;
    case 5:
      OUTLINED_FUNCTION_37_2();
      break;
    case 6:
      v9 = 0xE800000000000000;
      v3 = 0x7961446C6C417369;
      break;
    case 7:
      v3 = 0x6468747269427369;
      v9 = 31073;
LABEL_19:
      v9 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      v9 = (v7 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_19_6();
      v3 = v11 | 1;
      break;
    case 9:
      OUTLINED_FUNCTION_87();
      v9 = (v10 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_13();
  }

  return v13 & 1;
}

uint64_t sub_266604CB8()
{
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      v0 = 0xEA00000000006C69;
      break;
    case 2:
      OUTLINED_FUNCTION_75();
      break;
    case 3:
      v3 = 7104865;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_51_2();
      v0 = v6 | v5;
      break;
    case 6:
      OUTLINED_FUNCTION_52_1();
      v3 = 6645106;
LABEL_10:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_16_14();
      v4 = v0 & 0xFFFF00000000FFFFLL | 0x656E6F0000;
      goto LABEL_13;
    case 8:
      OUTLINED_FUNCTION_16_14();
      v4 = v0 & 0xFFFF00000000FFFFLL | 0x6F77740000;
LABEL_13:
      v0 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_16_14();
      v0 = v0 | 0xEF65657268740000;
      break;
    case 10:
      v0 = 0xEC0000006C69616DLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v9)
  {
    case 1:
      v8 = 0x616D65206B726F77;
      v1 = 0xEA00000000006C69;
      break;
    case 2:
      v8 = 0x6C616E6F73726570;
      v1 = 0xEE006C69616D6520;
      break;
    case 3:
      v8 = 0x6D6520726568746FLL;
      v11 = 7104865;
      goto LABEL_23;
    case 4:
      OUTLINED_FUNCTION_53_0();
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6E6F000000000000;
      v1 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_51_2();
      v1 = v14 | v13;
      break;
    case 6:
      OUTLINED_FUNCTION_53_0();
      v8 = v15 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      v11 = 6645106;
LABEL_23:
      v1 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_14_12();
      v12 = v1 & 0xFFFF00000000FFFFLL | 0x656E6F0000;
      goto LABEL_26;
    case 8:
      OUTLINED_FUNCTION_14_12();
      v12 = v1 & 0xFFFF00000000FFFFLL | 0x6F77740000;
LABEL_26:
      v1 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_14_12();
      v1 = v1 | 0xEF65657268740000;
      break;
    case 10:
      v8 = 0x65206C6F6F686373;
      v1 = 0xEC0000006C69616DLL;
      break;
    default:
      break;
  }

  if (v7 == v8 && v0 == v1)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_13_13();
  }

  return v17 & 1;
}

uint64_t sub_266604F4C(unsigned __int8 a1, char a2)
{
  v2 = 1752459639;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1752459639;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x646564756C636E69;
      break;
    case 2:
      v5 = 0x646E657474417369;
      v3 = 0xEB00000000676E69;
      break;
    case 3:
      v5 = 0x6574746120646461;
      v3 = 0xEC0000006565646ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_91();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_89();
      v3 = (v6 - 32) | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x646564756C636E69;
      break;
    case 2:
      v2 = 0x646E657474417369;
      v7 = 0xEB00000000676E69;
      break;
    case 3:
      v2 = 0x6574746120646461;
      v7 = 0xEC0000006565646ELL;
      break;
    case 4:
      v2 = 0x612065766F6D6572;
      v7 = 0xEF6565646E657474;
      break;
    case 5:
      OUTLINED_FUNCTION_87();
      v7 = (v8 - 32) | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_13();
  }

  return v10 & 1;
}

uint64_t sub_266605134(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64646120646E61;
  }

  else
  {
    v3 = 6581857;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x64646120646E61;
  }

  else
  {
    v5 = 6581857;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_2666051F0(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 6647407;
      break;
    case 4:
      v5 = 7105633;
      break;
    case 5:
      OUTLINED_FUNCTION_84();
      break;
    case 6:
      OUTLINED_FUNCTION_82();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 6647407;
      break;
    case 4:
      v2 = 7105633;
      break;
    case 5:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 6:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13();
  }

  return v8 & 1;
}

uint64_t sub_2666053B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_13();
  }

  return v10 & 1;
}

uint64_t sub_266605438(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_78();
  }

  sub_26666C368();
}

uint64_t sub_2666054C4()
{
  sub_26666C368();
}

uint64_t sub_266605568()
{
  OUTLINED_FUNCTION_29_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_76();
      break;
    case 6:
      OUTLINED_FUNCTION_19_17();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_26660565C()
{
  OUTLINED_FUNCTION_29_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_74();
      break;
    case 2:
      OUTLINED_FUNCTION_19_17();
      break;
    case 3:
      OUTLINED_FUNCTION_27_12();
      OUTLINED_FUNCTION_73();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_2666056DC()
{
  sub_26666C368();
}

uint64_t sub_26660575C()
{
  OUTLINED_FUNCTION_10_17();
  switch(v0)
  {
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_26_8();
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605834()
{
  OUTLINED_FUNCTION_10_17();
  switch(v0)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_19_6();
      break;
    case 2:
      OUTLINED_FUNCTION_88();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605924()
{
  sub_26666C368();
}

uint64_t sub_2666059E8()
{
  sub_26666C368();
}

uint64_t sub_266605AF4()
{
  sub_26666C368();
}

uint64_t sub_266605B68(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_60_0();
  }

  sub_26666C368();
}

uint64_t sub_266605BEC()
{
  OUTLINED_FUNCTION_19_8();
  sub_26666C368();
}

uint64_t sub_266605C64(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_6();
      break;
    case 2:
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_74();
      break;
    case 3:
      OUTLINED_FUNCTION_76();
      break;
    case 4:
      OUTLINED_FUNCTION_19_17();
      break;
    case 5:
      OUTLINED_FUNCTION_27_12();
      OUTLINED_FUNCTION_73();
      break;
    case 8:
      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_19_6();
      break;
    case 9:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605D78(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_75();
      break;
    case 4:
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_55_0();
      break;
    case 6:
      OUTLINED_FUNCTION_55_0();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605EF4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_91();
      break;
    case 5:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605FF8()
{
  sub_26666C368();
}

uint64_t sub_26660608C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_84();
      break;
    case 6:
      OUTLINED_FUNCTION_82();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_26660618C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_26666C368();
}

uint64_t sub_26660625C()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_69();

  return sub_26666CBC8();
}

uint64_t sub_266606324()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_69();

  return sub_26666CBC8();
}

uint64_t sub_2666063A0()
{
  OUTLINED_FUNCTION_70();
  if (!v0)
  {
    OUTLINED_FUNCTION_60_0();
  }

  OUTLINED_FUNCTION_69();

  return sub_26666CBC8();
}

uint64_t sub_266606428()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_69();

  return sub_26666CBC8();
}

uint64_t sub_266606518()
{
  sub_26666CB88();
  sub_26666C368();

  return sub_26666CBC8();
}

uint64_t sub_2666065F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_26666CB88();
  a3(a2);
  sub_26666C368();

  return sub_26666CBC8();
}

uint64_t sub_266606674(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_26666CB88();
  a3(v6, a2);
  return sub_26666CBC8();
}

uint64_t sub_2666066C0()
{
  OUTLINED_FUNCTION_70();
  if (!v0)
  {
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_78();
  }

  OUTLINED_FUNCTION_69();

  return sub_26666CBC8();
}

uint64_t sub_266606750(uint64_t a1, uint64_t a2)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a2);
  return sub_26666CBC8();
}

id sub_266606794(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_26666C2F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_266606830()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_19();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2666068BC()
{
  sub_2665A17F8(*(v0 + 16), *(v0 + 48), &qword_28007D3D8, &unk_2666746C0);
  v1 = sub_26666A368();
  v2 = OUTLINED_FUNCTION_40_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, v3, v1);
  v5 = *(v0 + 48);
  if (EnumTagSinglePayload == 1)
  {
    sub_26656CAEC(*(v0 + 48), &qword_28007D3D8, &unk_2666746C0);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v6 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v6, qword_28156D7E8);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v8))
    {
      v9 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v9);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v10, v11, "[CalendarDateTimeResolving] DateTimeValue not present, not resolving date component range");
      OUTLINED_FUNCTION_10();
    }

    v12 = *(v0 + 48);

    OUTLINED_FUNCTION_8();

    return v13(0);
  }

  else
  {
    *(v0 + 56) = sub_26666A358();
    (*(*(v1 - 8) + 8))(v5, v1);
    v15 = swift_task_alloc();
    *(v0 + 64) = v15;
    *v15 = v0;
    v15[1] = sub_266606AA0;
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = *(v0 + 80);
    v19 = *(v0 + 24);

    return sub_26660988C();
  }
}

uint64_t sub_266606AA0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266606B88()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  OUTLINED_FUNCTION_8();

  return v4(v2);
}

uint64_t sub_266606BF0()
{
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v0, v1);
  sub_26666A528();
  if (v8)
  {
    goto LABEL_4;
  }

  v3 = sub_26662EB9C();
  if (v3 == 40)
  {
    return 2;
  }

  sub_26662F1A4(v3);
  if (v5 == 0x6E6F697461636F6CLL && v4 == 0xE800000000000000)
  {
LABEL_4:

    return 0;
  }

  v7 = sub_26666CAC8();

  result = 0;
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  return result;
}

uint64_t sub_266606D0C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 211) = v3;
  *(v1 + 210) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  v7 = sub_26666A368();
  *(v1 + 88) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 96) = v8;
  v10 = *(v9 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v14 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 128) = v14;
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_19();
  v17 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266606E20()
{
  v168 = v0;
  if (*(v0 + 210) == 1)
  {
    v1 = *(v0 + 80);
    sub_26655A274(*(v0 + 136));
  }

  else
  {
    sub_26660E030(*(v0 + 80), *(v0 + 136));
  }

  if (*(v0 + 211) != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v14 = sub_26666C168();
    __swift_project_value_buffer(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v16))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_46();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_12();
    }

    v22 = *(v0 + 64);

    *(v0 + 48) = MEMORY[0x277D84FA0];
    v23 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
    v24 = v23;
    *(v0 + 168) = v23;
    if (v22)
    {
      v25 = *(v0 + 56);
      v26 = *(v0 + 64);
      v23 = sub_26666C2F8();
      v27 = v23;
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_96(v23, sel_setTargetEventIdentifier_);

    if (qword_28007CE40 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v30, v31);
    OUTLINED_FUNCTION_86();
    sub_26666A528();
    v32 = *(v0 + 208);
    if (v32 != 16)
    {
      if (sub_2666315D8(v32) == 0x7564656863736572 && v33 == 0xEA0000000000656CLL)
      {
      }

      else
      {
        v35 = sub_26666CAC8();

        if ((v35 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v36 = sub_26666C148();
      v37 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v37))
      {
        v38 = OUTLINED_FUNCTION_20();
        *v38 = 0;
        _os_log_impl(&dword_266549000, v36, v37, "[UpdateEventUSOIntentWrapper] Verb is reschedule adding dateTime to parameters to update", v38, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v47 = OUTLINED_FUNCTION_35_5(v39, v40, v41, v42, v43, v44, v45, v46, v166, v167);
      sub_26660B444(v47, 2);
    }

LABEL_28:
    v48 = *(v0 + 136);
    v49 = sub_26662EB9C();
    if (v49 == 19)
    {
      v93 = OUTLINED_FUNCTION_35_5(v49, v50, v51, v52, v53, v54, v55, v56, v166, v167);
      sub_26660B444(v93, 1);
      if (qword_28007CE58 != -1)
      {
        OUTLINED_FUNCTION_7_22();
      }

      v94 = *(v0 + 128);
      v95 = *(v0 + 136);
      v84 = sub_26666A528();
      v69 = *(v0 + 40);
      if (v69)
      {
        v96 = *(v0 + 32);
        v97 = *(v0 + 80);
        updated = type metadata accessor for UpdateEventNLv3IntentWrapper();
        sub_2666683AC(v97 + *(updated + 20), v96);

        OUTLINED_FUNCTION_62();
        v69 = sub_26666C2F8();
      }

      v99 = sel_setSetTitle_;
      goto LABEL_79;
    }

    if (v49 != 20)
    {
      if (v49 == 40)
      {
        v69 = *(v0 + 136);
        v88 = sub_26662EB9C();
        if (sub_266608658(v69, v88))
        {
          goto LABEL_87;
        }

        if (qword_28007CE50 != -1)
        {
          OUTLINED_FUNCTION_4_30();
        }

        v89 = *(v0 + 128);
        v69 = *(v0 + 136);
        v24 = *(v0 + 112);
        v90 = *(v0 + 88);
        sub_26666A528();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v90);
        v92 = *(v0 + 112);
        if (EnumTagSinglePayload == 1)
        {
          sub_26656CAEC(*(v0 + 112), &qword_28007D3D8, &unk_2666746C0);
          goto LABEL_87;
        }

        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 112), *(v0 + 88));
        v136 = sub_26666C148();
        v137 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v137))
        {
          v138 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v138);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v139, v140, "[UpdateEventNLv3IntentWrapper] Utterance has connecting preposition and date node, assuming request to change date time range.");
          OUTLINED_FUNCTION_10();
        }

        v141 = *(v0 + 120);
        v143 = *(v0 + 96);
        v142 = *(v0 + 104);
        v145 = *(v0 + 80);
        v144 = *(v0 + 88);

        v154 = OUTLINED_FUNCTION_35_5(v146, v147, v148, v149, v150, v151, v152, v153, v166, v167);
        sub_26660B444(v154, 2);
        v155 = type metadata accessor for UpdateEventNLv3IntentWrapper();
        __swift_project_boxed_opaque_existential_1((v145 + *(v155 + 24)), *(v145 + *(v155 + 24) + 24));
        v156 = *(v143 + 16);
        OUTLINED_FUNCTION_90();
        v157();
        OUTLINED_FUNCTION_65_0(v141);
        if (qword_28007CDB0 != -1)
        {
          OUTLINED_FUNCTION_6_21();
        }

        v158 = sub_26666B628();
        __swift_project_value_buffer(v158, qword_2800956E0);
        OUTLINED_FUNCTION_7_9(&dword_266677FE0);
        v159 = swift_task_alloc();
        *(v0 + 192) = v159;
        *v159 = v0;
        OUTLINED_FUNCTION_56(v159);
LABEL_74:
        OUTLINED_FUNCTION_92();

        __asm { BR              X4 }
      }

      if (v49 == 21)
      {
        v57 = *(v0 + 136);
        sub_26662EC9C();
        if (v58)
        {
          v66 = *(v0 + 80);
          v67 = OUTLINED_FUNCTION_35_5(v58, v59, v60, v61, v62, v63, v64, v65, v166, v167);
          sub_26660B444(v67, 4);
          v68 = type metadata accessor for UpdateEventNLv3IntentWrapper();
          v69 = OUTLINED_FUNCTION_50_1(v68);

          if (v69)
          {
            sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
            OUTLINED_FUNCTION_29_1();
            v70 = sub_26666C488();
          }

          else
          {
            v70 = 0;
          }

          [v24 setAddParticipants_];
        }

        else
        {
          v69 = *(v0 + 136);
          sub_26662EF30();
          if (!v125)
          {
            v162 = OUTLINED_FUNCTION_35_5(0, v126, v127, v128, v129, v130, v131, v132, v166, v167);
            sub_26660B444(v162, 4);
            goto LABEL_87;
          }

          v133 = *(v0 + 80);
          v134 = OUTLINED_FUNCTION_35_5(v125, v126, v127, v128, v129, v130, v131, v132, v166, v167);
          sub_26660B444(v134, 5);
          v135 = type metadata accessor for UpdateEventNLv3IntentWrapper();
          v69 = OUTLINED_FUNCTION_50_1(v135);

          if (v69)
          {
            sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
            OUTLINED_FUNCTION_29_1();
            v70 = sub_26666C488();
          }

          else
          {
            v70 = 0;
          }

          [v24 setRemoveParticipants_];
        }

LABEL_87:
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_47_3();

        OUTLINED_FUNCTION_1_36();
        sub_26660E088(v24, v163);
        OUTLINED_FUNCTION_64();

        OUTLINED_FUNCTION_11_18();
        OUTLINED_FUNCTION_92();

        __asm { BRAA            X3, X16 }
      }

      v100 = v49;
      v101 = sub_266603C24(v49, &unk_287803FF0);
      if (v101)
      {
        v109 = *(v0 + 80);
        v110 = OUTLINED_FUNCTION_35_5(v101, v102, v103, v104, v105, v106, v107, v108, v166, v167);
        sub_26660B444(v110, 2);
        v111 = type metadata accessor for UpdateEventNLv3IntentWrapper();
        __swift_project_boxed_opaque_existential_1((v109 + *(v111 + 24)), *(v109 + *(v111 + 24) + 24));
        if (qword_28007CE50 != -1)
        {
          OUTLINED_FUNCTION_4_30();
        }

        v112 = *(v0 + 128);
        v113 = *(v0 + 136);
        v114 = *(v0 + 120);
        sub_26666A528();
        if (qword_28007CDB0 != -1)
        {
          OUTLINED_FUNCTION_6_21();
        }

        v115 = sub_26666B628();
        OUTLINED_FUNCTION_11_4(v115, qword_2800956E0);
        OUTLINED_FUNCTION_7_9(&dword_266677FE0);
        v116 = swift_task_alloc();
        *(v0 + 176) = v116;
        *v116 = v0;
        OUTLINED_FUNCTION_56(v116);
        goto LABEL_74;
      }

      v69 = sub_26666C148();
      v120 = sub_26666C5F8();
      if (OUTLINED_FUNCTION_7_2(v120))
      {
        v24 = OUTLINED_FUNCTION_21();
        v121 = OUTLINED_FUNCTION_13_0();
        v167 = v121;
        *v24 = 136315138;
        sub_26662F1A4(v100);
        v124 = sub_2665BFC90(v122, v123, &v167);

        *(v24 + 1) = v124;
        _os_log_impl(&dword_266549000, v69, v120, "[UpdateEventUSOIntentWrapper] Unknown attribute to update: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_4_1();
      }

LABEL_80:

      goto LABEL_87;
    }

    v71 = *(v0 + 128);
    v72 = *(v0 + 136);
    sub_26666A528();
    v80 = *(v0 + 209);
    if (v80 == 16)
    {
      goto LABEL_36;
    }

    if (sub_2666315D8(v80) == 0x6574656C6564 && v117 == 0xE600000000000000)
    {
    }

    else
    {
      v119 = sub_26666CAC8();

      if ((v119 & 1) == 0)
      {
LABEL_36:
        v81 = OUTLINED_FUNCTION_35_5(v80, v73, v74, v75, v76, v77, v78, v79, v166, v167);
        sub_26660B444(v81, 3);
        if (qword_28007CE60 != -1)
        {
          OUTLINED_FUNCTION_2_8();
        }

        v82 = *(v0 + 128);
        v83 = *(v0 + 136);
        v84 = sub_26666A528();
        v85 = *(v0 + 24);
        if (v85)
        {
          v86 = *(v0 + 16);
          sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
          v87 = objc_allocWithZone(MEMORY[0x277CE41F8]);

          v69 = sub_266606794([v87 init], v86, v85, 0);
        }

        else
        {
          v69 = 0;
        }

        v99 = sel_setSetLocation_;
        goto LABEL_79;
      }
    }

    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v84 = sub_26666C658();
    v69 = v84;
    v99 = sel_setRemoveLocation_;
LABEL_79:
    OUTLINED_FUNCTION_96(v84, v99);
    goto LABEL_80;
  }

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26660787C;
  v3 = *(v0 + 136);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_92();

  return sub_266607DA4(v8, v9, v10, v11);
}

uint64_t sub_26660787C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266607964()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[17];
  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v2, v3);
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];

  v10 = v0[1];
  v11 = OUTLINED_FUNCTION_25();

  return v12(v11);
}

uint64_t sub_266607A04()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v9 + 184) = v8;

  sub_26656CAEC(v5, &qword_28007D3D8, &unk_2666746C0);
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266607B14()
{
  OUTLINED_FUNCTION_36_0();
  v2 = *(v1 + 184);
  [*(v1 + 168) setSetDateTimeRange_];

  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_47_3();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v0, v3);
  OUTLINED_FUNCTION_64();

  v4 = OUTLINED_FUNCTION_11_18();

  return v5(v4);
}

uint64_t sub_266607BC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 192);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v9 + 200) = v8;

  sub_26656CAEC(v5, &qword_28007D3D8, &unk_2666746C0);
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266607CD4()
{
  OUTLINED_FUNCTION_36_0();
  v1 = *(v0 + 200);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  [*(v0 + 168) setSetDateTimeRange_];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_47_3();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v2, v5);
  OUTLINED_FUNCTION_64();

  v6 = OUTLINED_FUNCTION_11_18();

  return v7(v6);
}

uint64_t sub_266607DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266607E48, 0, 0);
}

uint64_t sub_266607E48()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  v0[23] = __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEventUSOIntentWrapper] Parsing intent as follow up");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[19];

  v0[16] = MEMORY[0x277D84FA0];
  v8 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[24] = v8;
  if (v7)
  {
    v9 = v0[18];
    v10 = v0[19];
    v8 = sub_26666C2F8();
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  OUTLINED_FUNCTION_96(v8, sel_setTargetEventIdentifier_);

  if (qword_28007CE58 != -1)
  {
    OUTLINED_FUNCTION_7_22();
  }

  v12 = v0[17];
  v0[25] = type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  v0[26] = sub_26660DF18(v13, v14);
  OUTLINED_FUNCTION_90();
  v15 = sub_26666A528();
  v16 = v0[13];
  if (v16)
  {
    v17 = v0[12];
    v18 = v0[21];
    updated = type metadata accessor for UpdateEventNLv3IntentWrapper();
    sub_2666683AC(v18 + *(updated + 20), v17);

    OUTLINED_FUNCTION_86();
    v16 = sub_26666C2F8();
  }

  v20 = v0[21];
  OUTLINED_FUNCTION_96(v15, sel_setSetTitle_);

  v21 = type metadata accessor for UpdateEventNLv3IntentWrapper();
  v0[27] = v21;
  __swift_project_boxed_opaque_existential_1((v20 + *(v21 + 24)), *(v20 + *(v21 + 24) + 24));
  if (qword_28007CE50 != -1)
  {
    OUTLINED_FUNCTION_4_30();
  }

  v22 = v0[22];
  v23 = v0[17];
  OUTLINED_FUNCTION_90();
  sub_26666A528();
  if (qword_28007CDB0 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v24 = sub_26666B628();
  OUTLINED_FUNCTION_11_4(v24, qword_2800956E0);
  OUTLINED_FUNCTION_7_9(&dword_266677FE0);
  v30 = v25;
  v26 = swift_task_alloc();
  v0[28] = v26;
  *v26 = v0;
  v26[1] = sub_266608140;
  v27 = v0[22];
  v28 = v0[20];

  return v30(v27, v23, 0, v28);
}

uint64_t sub_266608140()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 224);
  v5 = *(v3 + 176);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v9 + 232) = v8;

  sub_26656CAEC(v5, &qword_28007D3D8, &unk_2666746C0);
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266608250()
{
  v52 = v0;
  v2 = *(v0 + 232);
  v3 = *(v0 + 136);
  [*(v0 + 192) setSetDateTimeRange_];

  sub_26662EC9C();
  v5 = v4;
  if (!v4)
  {
    v6 = *(v0 + 136);
    sub_26662DD18();
    v5 = v7;
  }

  v8 = *(v0 + 168);
  v9 = *(*(v0 + 216) + 28);
  sub_26655358C(v8 + v9, v0 + 16);
  if (v5)
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    v12 = OUTLINED_FUNCTION_97();
    sub_26663B9AC(v12, v10, v11);
    OUTLINED_FUNCTION_79();
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v1)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v5 = sub_26666C488();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v13 = *(v0 + 136);
  [*(v0 + 192) setAddParticipants_];

  sub_26662EF30();
  v15 = v14;
  sub_26655358C(v8 + v9, v0 + 56);
  if (v15)
  {
    v16 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v17 = OUTLINED_FUNCTION_25();
    v19 = v18;
    sub_26663B9AC(v17, v20, v16);
    OUTLINED_FUNCTION_79();

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v19)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v15 = sub_26666C488();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  [*(v0 + 192) setRemoveParticipants_];

  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  v23 = *(v0 + 136);
  sub_26666A528();
  if (*(v0 + 120))
  {
    v24 = *(v0 + 112);
    sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
    v25 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    OUTLINED_FUNCTION_97();
    v26 = OUTLINED_FUNCTION_42_4([v1 init]);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v0 + 136);
  [*(v0 + 192) setSetLocation_];

  v28 = sub_26662EB9C();
  switch(v28)
  {
    case 19:
      v29 = &v50;
      v30 = 1;
      goto LABEL_28;
    case 20:
      v29 = &v49;
      v30 = 3;
      goto LABEL_28;
    case 40:
      *(v0 + 128) = MEMORY[0x277D84FA0];
      goto LABEL_29;
    case 21:
      v29 = &v51;
      v30 = 4;
LABEL_28:
      sub_26660B444(v29, v30);
      goto LABEL_29;
  }

  v31 = v28;
  if (sub_266603C24(v28, &unk_287803FF0))
  {
    v29 = &v48;
    v30 = 2;
    goto LABEL_28;
  }

  v39 = *(v0 + 184);
  v40 = sub_26666C148();
  v41 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v41))
  {
    v42 = OUTLINED_FUNCTION_21();
    v43 = OUTLINED_FUNCTION_13_0();
    v47 = v43;
    *v42 = 136315138;
    sub_26662F1A4(v31);
    v46 = sub_2665BFC90(v44, v45, &v47);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_266549000, v40, v41, "[UpdateEventUSOIntentWrapper] Unknown attribute to update: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
  }

LABEL_29:
  v32 = *(v0 + 192);
  v33 = *(v0 + 168);
  v34 = *(v0 + 176);
  v35 = *(v0 + 128);
  sub_26660DC0C();
  OUTLINED_FUNCTION_47_3();

  v36 = OUTLINED_FUNCTION_11_18();

  return v37(v36);
}