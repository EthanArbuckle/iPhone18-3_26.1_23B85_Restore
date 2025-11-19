uint64_t sub_26A78DC24()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v3, qword_2803D2618);
  v29 = __swift_project_value_buffer(v3, qword_2803D2618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  v28 = xmmword_26A8570F0;
  *(v7 + 16) = xmmword_26A8570F0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + *(v4 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v11 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v12 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(inited);
  *v8 = v13;
  v14 = *(v0 + 36);
  v15 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v9 + v14, 1, 1, v15);
  *v9 = xmmword_26A883160;
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4020000000000000;
  *(v9 + 16) = sub_26A791D14;
  *(v9 + 24) = v16;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v17 = *(v4 + 48);
  v18 = swift_initStackObject();
  *(v18 + 16) = v28;
  if (qword_28157E748 != -1)
  {
    swift_once();
  }

  v19 = (v8 + v5);
  v20 = v8 + v5 + v17;
  v21 = qword_281588948;
  *(v18 + 32) = qword_281588948;
  v22 = byte_281588950;
  *(v18 + 40) = byte_281588950;
  *(v18 + 48) = 0;
  *(v18 + 56) = 7;
  sub_26A4E324C(v21, v22);
  sub_26A621A9C(v18);
  *v19 = v23;
  __swift_storeEnumTagSinglePayload(&v20[*(v0 + 36)], 1, 1, v15);
  *v20 = xmmword_26A883170;
  v24 = swift_allocObject();
  *(v24 + 16) = 0x402A000000000000;
  *(v20 + 2) = sub_26A791D14;
  *(v20 + 3) = v24;
  *(v20 + 4) = 0;
  *(v20 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v25 = sub_26A8516A8();
  __swift_storeEnumTagSinglePayload(&v2[*(v0 + 36)], 1, 1, v15);
  *v2 = xmmword_26A883180;
  v26 = swift_allocObject();
  *(v26 + 16) = 0x402A000000000000;
  *(v2 + 2) = sub_26A791D14;
  *(v2 + 3) = v26;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  return sub_26A80DFE8(v25);
}

uint64_t sub_26A78E000()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2630);
  v8 = __swift_project_value_buffer(v4, qword_2803D2630);
  if (qword_2803A8E80 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D2438);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B18], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D08, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78E21C()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2648);
  v8 = __swift_project_value_buffer(v4, qword_2803D2648);
  if (qword_2803A8E88 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D2450);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B20], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78E438()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2660);
  v8 = __swift_project_value_buffer(v4, qword_2803D2660);
  if (qword_2803A8E90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D2468);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B88], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78E654()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2678);
  v8 = __swift_project_value_buffer(v4, qword_2803D2678);
  if (qword_2803A8E98 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, &unk_2803D2480);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B28], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78E870()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2690);
  v8 = __swift_project_value_buffer(v4, qword_2803D2690);
  if (qword_2803A8EA0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D2498);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B30], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78EA8C()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D26A8);
  v8 = __swift_project_value_buffer(v4, qword_2803D26A8);
  if (qword_28157E688 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2815887C8);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B38], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A78ECA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0A0);
  MEMORY[0x28223BE20](v0 - 8);
  v68 = &v63 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v2 - 8);
  *&v69 = &v63 - v3;
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  __swift_allocate_value_buffer(v12, qword_2803D26C0);
  v66 = __swift_project_value_buffer(v8, qword_2803D26C0);
  if (qword_2803A8EB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_2803D24B0);
  sub_26A505CD4(v15, v11, &unk_2803ABFF0);
  v16 = (*(v5 + 104))(v7, *MEMORY[0x277D62B40], v4);
  v65 = v5;
  MEMORY[0x28223BE20](v16);
  v64 = v4;
  *(&v63 - 2) = v7;
  sub_26A505CD4(v11, v14, &unk_2803ABFF0);
  v17 = sub_26A791A88(sub_26A791D18, (&v63 - 4), *(v14 + 2));

  *(v14 + 2) = v17;
  v18 = v7;
  v20 = *v11;
  v19 = v11[1];
  sub_26A817EA4();
  v22 = v21;

  v70 = v22;
  sub_26A790428(&v70, v20, v19);
  v23 = v70;

  *(v14 + 3) = v23;
  v24 = *(v8 + 36);
  v67 = v14;
  v25 = &v14[v24];
  v26 = *&v14[v24];
  if (v26 <= *&v14[v24 + 8])
  {
    v26 = *&v14[v24 + 8];
  }

  v27 = v26 * 1.06666667;
  v28 = *(v25 + 32);
  v29 = *(v25 + 40);
  v30 = v65;
  v31 = v69;
  v32 = v64;
  (*(v65 + 16))(v69, v18, v64);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);

  sub_26A51DA28(v25);
  *v25 = v27;
  *(v25 + 8) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = v27 * 0.5;
  *(v25 + 16) = sub_26A791D14;
  *(v25 + 24) = v33;
  *(v25 + 32) = v28;
  *(v25 + 40) = v29;
  v34 = type metadata accessor for ImageStyleAppearance();
  sub_26A505C8C(v31, v25 + *(v34 + 36), &qword_2803AFE50);
  sub_26A4DBD10(v11, &unk_2803ABFF0);
  (*(v30 + 8))(v18, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26A857110;
  v65 = v38;
  v39 = (v38 + v37);
  v40 = (v38 + v37 + *(v35 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v69 = xmmword_26A8570F0;
  *(inited + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v42 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v43 = byte_281588980;
  *(inited + 40) = byte_281588980;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  sub_26A4E324C(v42, v43);
  sub_26A621A9C(inited);
  *v39 = v44;
  __swift_storeEnumTagSinglePayload(v40->i64 + *(v34 + 36), 1, 1, v32);
  *v40 = vdupq_n_s64(0x4055800000000000uLL);
  v45 = swift_allocObject();
  *(v45 + 16) = 0x4045800000000000;
  v40[1].i64[0] = sub_26A791D14;
  v40[1].i64[1] = v45;
  v40[2].i64[0] = 0;
  v40[2].i64[1] = 0;
  v46 = *(v35 + 48);
  v47 = swift_initStackObject();
  *(v47 + 16) = v69;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v48 = (v39 + v36 + v46);
  v49 = qword_281588968;
  *(v47 + 32) = qword_281588968;
  v50 = byte_281588970;
  *(v47 + 40) = byte_281588970;
  *(v47 + 48) = 1;
  *(v47 + 56) = 3;
  sub_26A4E324C(v49, v50);
  sub_26A621A9C(v47);
  *(v39 + v36) = v51;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v34 + 36), 1, 1, v32);
  *v48 = vdupq_n_s64(0x404E000000000000uLL);
  v52 = swift_allocObject();
  *(v52 + 16) = 0x403E000000000000;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v52;
  v53 = (v39 + 2 * v36);
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  v54 = (v53 + *(v35 + 48));
  v55 = swift_initStackObject();
  *(v55 + 16) = v69;
  v56 = qword_281588968;
  *(v55 + 32) = qword_281588968;
  v57 = byte_281588970;
  *(v55 + 40) = byte_281588970;
  *(v55 + 48) = 0;
  *(v55 + 56) = 1;
  sub_26A4E324C(v56, v57);
  sub_26A621A9C(v55);
  *v53 = v58;
  __swift_storeEnumTagSinglePayload(v54->i64 + *(v34 + 36), 1, 1, v32);
  *v54 = vdupq_n_s64(0x4052000000000000uLL);
  v59 = swift_allocObject();
  *(v59 + 16) = 0x4042000000000000;
  v54[1].i64[0] = sub_26A791D14;
  v54[1].i64[1] = v59;
  v54[2].i64[0] = 0;
  v54[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  sub_26A8516A8();
  v60 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v34);
  v61 = v67;
  sub_26A66E0C4();

  sub_26A4DBD10(v60, &qword_2803AE0A0);
  return sub_26A4DBD10(v61, &unk_2803ABFF0);
}

uint64_t sub_26A78F534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0A0);
  MEMORY[0x28223BE20](v0 - 8);
  v70 = &v65 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v65 - v3;
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65 - v13;
  __swift_allocate_value_buffer(v12, qword_2803D26D8);
  v68 = __swift_project_value_buffer(v8, qword_2803D26D8);
  if (qword_2803A8EB8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_2803D24C8);
  sub_26A505CD4(v15, v11, &unk_2803ABFF0);
  v16 = (*(v5 + 104))(v7, *MEMORY[0x277D62B48], v4);
  *&v66 = v5;
  MEMORY[0x28223BE20](v16);
  *(&v65 - 2) = v7;
  sub_26A505CD4(v11, v14, &unk_2803ABFF0);
  v17 = sub_26A791A88(sub_26A791D18, (&v65 - 2), *(v14 + 2));

  *(v14 + 2) = v17;
  *&v65 = v7;
  v19 = *v11;
  v18 = v11[1];
  sub_26A817EA4();
  v20 = v4;
  v22 = v21;

  v71 = v22;
  sub_26A790428(&v71, v19, v18);
  v23 = v71;

  *(v14 + 3) = v23;
  v24 = *(v8 + 36);
  v69 = v14;
  v25 = &v14[v24];
  v26 = *&v14[v24];
  if (v26 <= *&v14[v24 + 8])
  {
    v26 = *&v14[v24 + 8];
  }

  v27 = v26 * 1.06666667;
  v28 = *(v25 + 32);
  v29 = *(v25 + 40);
  v30 = v66;
  v31 = v67;
  v32 = v65;
  v33 = v20;
  (*(v66 + 16))(v67, v65, v20);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v20);

  sub_26A51DA28(v25);
  *v25 = v27;
  *(v25 + 8) = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = v27 * 0.5;
  *(v25 + 16) = sub_26A791D14;
  *(v25 + 24) = v34;
  *(v25 + 32) = v28;
  *(v25 + 40) = v29;
  v35 = type metadata accessor for ImageStyleAppearance();
  sub_26A505C8C(v31, v25 + *(v35 + 36), &qword_2803AFE50);
  sub_26A4DBD10(v11, &unk_2803ABFF0);
  (*(v30 + 8))(v32, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v37 = *(*(v36 - 8) + 72);
  v38 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
  v39 = swift_allocObject();
  v65 = xmmword_26A857110;
  *(v39 + 16) = xmmword_26A857110;
  v67 = v39;
  v40 = (v39 + v38);
  v41 = (v39 + v38 + *(v36 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v66 = xmmword_26A8570F0;
  *(inited + 16) = xmmword_26A8570F0;
  v43 = v33;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v44 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v45 = byte_281588980;
  *(inited + 40) = byte_281588980;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  sub_26A4E324C(v44, v45);
  sub_26A621A9C(inited);
  *v40 = v46;
  __swift_storeEnumTagSinglePayload(v41->i64 + *(v35 + 36), 1, 1, v33);
  *v41 = vdupq_n_s64(0x4059400000000000uLL);
  v47 = swift_allocObject();
  *(v47 + 16) = 0x4049800000000000;
  v41[1].i64[0] = sub_26A791D14;
  v41[1].i64[1] = v47;
  v41[2].i64[0] = 0;
  v41[2].i64[1] = 0;
  v48 = (v40 + v37 + *(v36 + 48));
  v49 = swift_initStackObject();
  *(v49 + 16) = v65;
  v50 = qword_281588978;
  *(v49 + 32) = qword_281588978;
  v51 = byte_281588980;
  *(v49 + 40) = byte_281588980;
  *(v49 + 48) = 1;
  *(v49 + 56) = 3;
  *(v49 + 64) = 0;
  *(v49 + 72) = 7;
  sub_26A4E324C(v50, v51);
  sub_26A621A9C(v49);
  *(v40 + v37) = v52;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v35 + 36), 1, 1, v43);
  *v48 = vdupq_n_s64(0x405BC00000000000uLL);
  v53 = swift_allocObject();
  *(v53 + 16) = 0x404C000000000000;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v53;
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  v54 = *(v36 + 48);
  v55 = swift_initStackObject();
  *(v55 + 16) = v66;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v56 = (v40 + 2 * v37);
  v57 = (v56 + v54);
  v58 = qword_281588968;
  *(v55 + 32) = qword_281588968;
  v59 = byte_281588970;
  *(v55 + 40) = byte_281588970;
  *(v55 + 48) = 1;
  *(v55 + 56) = 3;
  sub_26A4E324C(v58, v59);
  sub_26A621A9C(v55);
  *v56 = v60;
  __swift_storeEnumTagSinglePayload(v57->i64 + *(v35 + 36), 1, 1, v43);
  *v57 = vdupq_n_s64(0x4056400000000000uLL);
  v61 = swift_allocObject();
  *(v61 + 16) = 0x4046800000000000;
  v57[1].i64[0] = sub_26A791D14;
  v57[1].i64[1] = v61;
  v57[2].i64[0] = 0;
  v57[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  sub_26A8516A8();
  v62 = v70;
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v35);
  v63 = v69;
  sub_26A66E0C4();

  sub_26A4DBD10(v62, &qword_2803AE0A0);
  return sub_26A4DBD10(v63, &unk_2803ABFF0);
}

uint64_t sub_26A78FDEC()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D26F0);
  v8 = __swift_project_value_buffer(v4, qword_2803D26F0);
  if (qword_2803A8EC0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D24E0);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B50], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A790008()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_allocate_value_buffer(v5, qword_2803D2708);
  v8 = __swift_project_value_buffer(v4, qword_2803D2708);
  if (qword_2803A8EC8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2803D24F8);
  sub_26A505CD4(v9, v7, &unk_2803ABFF0);
  v10 = (*(v1 + 104))(v3, *MEMORY[0x277D62B58], v0);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = v3;
  sub_26A781544(sub_26A791D18, (&v12 - 4), v8);
  sub_26A4DBD10(v7, &unk_2803ABFF0);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A790224@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 * 1.77777778;
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = *(type metadata accessor for ImageStyleAppearance() + 36);
  v12 = sub_26A84B1D8();
  (*(*(v12 - 8) + 16))(a3 + v11, a2, v12);
  __swift_storeEnumTagSinglePayload(a3 + v11, 0, 1, v12);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
}

uint64_t sub_26A790318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (*a1 <= *(a1 + 8))
  {
    v5 = *(a1 + 8);
  }

  v6 = v5 * 1.06666667;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(type metadata accessor for ImageStyleAppearance() + 36);
  v10 = sub_26A84B1D8();
  (*(*(v10 - 8) + 16))(a3 + v9, a2, v10);
  __swift_storeEnumTagSinglePayload(a3 + v9, 0, 1, v10);
  *a3 = v6;
  *(a3 + 8) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = v6 * 0.5;
  *(a3 + 16) = sub_26A791D14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
}

uint64_t sub_26A790428(uint64_t *a1, uint64_t (*a2)(void, char *, void, char *), uint64_t a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26A545160();
    v7 = v8;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11[1] = v9;
  result = sub_26A7904F4(v11, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_26A7904F4(unint64_t *a1, uint64_t (*a2)(void, char *, void, char *), uint64_t a3)
{
  v6 = a1[1];
  result = sub_26A852558();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
        v10 = sub_26A851B18();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_26A790910(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_26A79065C(0, v6, 1, a1, a2);
  }

  return result;
}

uint64_t sub_26A79065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void, char *, void, char *))
{
  v42 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v40 = &v30 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    v38 = v9;
LABEL_4:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v20;
    while (1)
    {
      v43 = v22;
      v23 = v40;
      sub_26A505CD4(v21, v40, &qword_2803ACCF0);
      v24 = v41;
      sub_26A505CD4(v19, v41, &qword_2803ACCF0);
      v25 = v44;
      v26 = v42(*v23, &v23[*(v9 + 48)], *v24, &v24[*(v9 + 48)]);
      sub_26A4DBD10(v24, &qword_2803ACCF0);
      result = sub_26A4DBD10(v23, &qword_2803ACCF0);
      v44 = v25;
      if (v25)
      {
        break;
      }

      if ((v26 & 1) == 0)
      {
        v9 = v38;
LABEL_12:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 != v31)
        {
          goto LABEL_4;
        }

        return result;
      }

      v27 = v43;
      if (!v37)
      {
        __break(1u);
        return result;
      }

      v28 = v39;
      sub_26A505C8C(v21, v39, &qword_2803ACCF0);
      v9 = v38;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_26A505C8C(v28, v19, &qword_2803ACCF0);
      v19 += v36;
      v21 += v36;
      v29 = __CFADD__(v27, 1);
      v22 = v27 + 1;
      if (v29)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_26A790910(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, char *, void, char *), uint64_t a6)
{
  v151 = a5;
  v152 = a6;
  v137 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  v148 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v138 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v141 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v128 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v136 = &v128 - v20;
  MEMORY[0x28223BE20](v19);
  v150 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_102:
    v149 = *v137;
    if (v149)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v153;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_104;
    }

    goto LABEL_149;
  }

  v132 = a4;
  v133 = &v128 - v21;
  v144 = v24;
  v139 = v23;
  v140 = v22;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v149 = v8;
  v145 = v17;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v135 = v27;
      v30 = *v150;
      v31 = *(v148 + 72);
      v142 = v26 + 1;
      v32 = v30 + v31 * v29;
      v33 = v133;
      sub_26A505CD4(v32, v133, &qword_2803ACCF0);
      v147 = v30;
      v34 = v136;
      sub_26A505CD4(v30 + v31 * v28, v136, &qword_2803ACCF0);
      v35 = v153;
      LODWORD(v146) = v151(*v33, &v33[*(v149 + 48)], *v34, &v34[*(v149 + 48)]);
      v17 = v35;
      if (v35)
      {
        sub_26A4DBD10(v34, &qword_2803ACCF0);
        v127 = v33;
        goto LABEL_116;
      }

      sub_26A4DBD10(v34, &qword_2803ACCF0);
      sub_26A4DBD10(v33, &qword_2803ACCF0);
      v134 = v28;
      v36 = v28 + 2;
      v37 = v147 + v31 * (v28 + 2);
      v29 = v142;
      v143 = v25;
      while (1)
      {
        v38 = v36;
        if (v29 + 1 >= v25)
        {
          break;
        }

        v147 = v36;
        v39 = v29;
        v40 = v144;
        sub_26A505CD4(v37, v144, &qword_2803ACCF0);
        v153 = v17;
        v41 = v145;
        sub_26A505CD4(v32, v145, &qword_2803ACCF0);
        v42 = v153;
        v43 = v151(*v40, &v40[*(v149 + 48)], *v41, &v41[*(v149 + 48)]);
        v153 = v42;
        if (v42)
        {
          sub_26A4DBD10(v41, &qword_2803ACCF0);
          sub_26A4DBD10(v40, &qword_2803ACCF0);

          return;
        }

        v44 = v43;
        sub_26A4DBD10(v41, &qword_2803ACCF0);
        sub_26A4DBD10(v40, &qword_2803ACCF0);
        v45 = v146 ^ v44;
        v37 += v31;
        v32 += v31;
        v29 = v39 + 1;
        v38 = v147;
        v36 = v147 + 1;
        v17 = v153;
        v25 = v143;
        if (v45)
        {
          goto LABEL_11;
        }
      }

      v29 = v25;
LABEL_11:
      v153 = v17;
      if (v146)
      {
        v28 = v134;
        if (v29 < v134)
        {
          goto LABEL_143;
        }

        if (v134 >= v29)
        {
          v27 = v135;
          goto LABEL_32;
        }

        if (v25 >= v38)
        {
          v46 = v38;
        }

        else
        {
          v46 = v25;
        }

        v47 = v31 * (v46 - 1);
        v48 = v31 * v46;
        v49 = v134;
        v50 = v134 * v31;
        v51 = v29;
        v142 = v29;
        do
        {
          if (v49 != --v51)
          {
            v52 = *v150;
            if (!*v150)
            {
              goto LABEL_147;
            }

            sub_26A505C8C(v52 + v50, v138, &qword_2803ACCF0);
            v53 = v50 < v47 || v52 + v50 >= v52 + v48;
            if (v53)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26A505C8C(v138, v52 + v47, &qword_2803ACCF0);
            v29 = v142;
          }

          ++v49;
          v47 -= v31;
          v48 -= v31;
          v50 += v31;
        }

        while (v49 < v51);
      }

      v28 = v134;
      v27 = v135;
LABEL_32:
      v8 = v149;
    }

    v54 = v150[1];
    if (v29 < v54)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_139;
      }

      if (v29 - v28 < v132)
      {
        v55 = v28 + v132;
        if (__OFADD__(v28, v132))
        {
          __break(1u);
        }

        else
        {
          if (v55 >= v54)
          {
            v55 = v150[1];
          }

          if (v55 >= v28)
          {
            if (v29 == v55)
            {
              goto LABEL_41;
            }

            v134 = v28;
            v135 = v27;
            v102 = *v150;
            v103 = *(v148 + 72);
            v104 = *v150 + v103 * (v29 - 1);
            v146 = -v103;
            v147 = v102;
            v105 = (v28 - v29);
            v128 = v103;
            v106 = v102 + v29 * v103;
            v107 = &qword_2803ACCF0;
            v17 = v153;
            v129 = v55;
            while (1)
            {
              v142 = v29;
              v130 = v106;
              v131 = v105;
              v108 = v105;
              v143 = v104;
              do
              {
                v153 = v108;
                v109 = v139;
                sub_26A505CD4(v106, v139, v107);
                v110 = v107;
                v111 = v140;
                sub_26A505CD4(v104, v140, v110);
                v112 = v151(*v109, &v109[*(v8 + 48)], *v111, &v111[*(v8 + 48)]);
                if (v17)
                {
                  sub_26A4DBD10(v111, &qword_2803ACCF0);
                  v127 = v109;
LABEL_116:
                  sub_26A4DBD10(v127, &qword_2803ACCF0);
                  goto LABEL_117;
                }

                v113 = v112;
                sub_26A4DBD10(v111, v110);
                sub_26A4DBD10(v109, v110);
                v107 = v110;
                if ((v113 & 1) == 0)
                {
                  break;
                }

                v114 = v153;
                if (!v147)
                {
                  goto LABEL_146;
                }

                v115 = v141;
                sub_26A505C8C(v106, v141, v110);
                swift_arrayInitWithTakeFrontToBack();
                sub_26A505C8C(v115, v104, v110);
                v104 += v146;
                v106 += v146;
                v53 = __CFADD__(v114, 1);
                v108 = v114 + 1;
              }

              while (!v53);
              v29 = v142 + 1;
              v104 = v143 + v128;
              v105 = v131 - 1;
              v106 = v130 + v128;
              if (v142 + 1 == v129)
              {
                v153 = 0;
                v29 = v129;
                v28 = v134;
                v27 = v135;
                goto LABEL_41;
              }
            }
          }
        }

        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }
    }

LABEL_41:
    if (v29 < v28)
    {
      goto LABEL_138;
    }

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v29;
    if ((v56 & 1) == 0)
    {
      sub_26A7A0DBC();
      v27 = v116;
    }

    v57 = *(v27 + 2);
    v58 = v57 + 1;
    if (v57 >= *(v27 + 3) >> 1)
    {
      sub_26A7A0DBC();
      v27 = v117;
    }

    *(v27 + 2) = v58;
    v59 = v27 + 32;
    v60 = &v27[16 * v57 + 32];
    v61 = v142;
    *v60 = v28;
    *(v60 + 1) = v61;
    v147 = *v137;
    if (!v147)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return;
    }

    if (v57)
    {
      break;
    }

LABEL_90:
    v25 = v150[1];
    v26 = v142;
    if (v142 >= v25)
    {
      goto LABEL_102;
    }
  }

  while (1)
  {
    v62 = v58 - 1;
    v63 = &v59[16 * v58 - 16];
    v64 = &v27[16 * v58];
    if (v58 >= 4)
    {
      v69 = &v59[16 * v58];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_126;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_127;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_129;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_132;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_137;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v58 == 3)
    {
      v65 = *(v27 + 4);
      v66 = *(v27 + 5);
      v75 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      v68 = v75;
LABEL_61:
      if (v68)
      {
        goto LABEL_128;
      }

      v80 = *v64;
      v79 = *(v64 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_131;
      }

      v84 = *(v63 + 1);
      v85 = v84 - *v63;
      if (__OFSUB__(v84, *v63))
      {
        goto LABEL_134;
      }

      if (__OFADD__(v82, v85))
      {
        goto LABEL_136;
      }

      if (v82 + v85 >= v67)
      {
        if (v67 < v85)
        {
          v62 = v58 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_76;
    }

    if (v58 < 2)
    {
      goto LABEL_130;
    }

    v87 = *v64;
    v86 = *(v64 + 1);
    v75 = __OFSUB__(v86, v87);
    v82 = v86 - v87;
    v83 = v75;
LABEL_76:
    if (v83)
    {
      goto LABEL_133;
    }

    v89 = *v63;
    v88 = *(v63 + 1);
    v75 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v75)
    {
      goto LABEL_135;
    }

    if (v90 < v82)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v62 - 1 >= v58)
    {
      break;
    }

    if (!*v150)
    {
      goto LABEL_144;
    }

    v94 = &v59[16 * v62 - 16];
    v95 = *v94;
    v96 = &v59[16 * v62];
    v97 = *(v96 + 1);
    v98 = v153;
    sub_26A791428(*v150 + *(v148 + 72) * *v94, *v150 + *(v148 + 72) * *v96, *v150 + *(v148 + 72) * v97, v147, v151, v152);
    v17 = v98;
    if (v98)
    {
      goto LABEL_117;
    }

    if (v97 < v95)
    {
      goto LABEL_120;
    }

    v99 = v27;
    v100 = *(v27 + 2);
    if (v62 > v100)
    {
      goto LABEL_121;
    }

    *v94 = v95;
    *(v94 + 1) = v97;
    if (v62 >= v100)
    {
      goto LABEL_122;
    }

    v153 = 0;
    v58 = v100 - 1;
    sub_26A544D9C(v96 + 16, v100 - 1 - v62, &v59[16 * v62]);
    *(v99 + 2) = v100 - 1;
    v101 = v100 > 2;
    v27 = v99;
    v8 = v149;
    if (!v101)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  v27 = sub_26A544B3C();
LABEL_104:
  v119 = v27 + 16;
  v120 = *(v27 + 2);
  while (v120 >= 2)
  {
    if (!*v150)
    {
      goto LABEL_145;
    }

    v121 = v27;
    v122 = &v27[16 * v120];
    v123 = *v122;
    v124 = &v119[2 * v120];
    v125 = *(v124 + 1);
    sub_26A791428(*v150 + *(v148 + 72) * *v122, *v150 + *(v148 + 72) * *v124, *v150 + *(v148 + 72) * v125, v149, v151, v152);
    if (v17)
    {
      break;
    }

    if (v125 < v123)
    {
      goto LABEL_123;
    }

    if (v120 - 2 >= *v119)
    {
      goto LABEL_124;
    }

    *v122 = v123;
    *(v122 + 1) = v125;
    v126 = *v119 - v120;
    if (*v119 < v120)
    {
      goto LABEL_125;
    }

    v120 = *v119 - 1;
    sub_26A544D9C(v124 + 16, v126, v124);
    *v119 = v120;
    v27 = v121;
  }

LABEL_117:
}

uint64_t sub_26A791428(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void, char *, void, char *), uint64_t a6)
{
  v88 = a6;
  v89 = a5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  v10 = MEMORY[0x28223BE20](v91);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](&v79 - v14);
  v18 = &v79 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_65;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_66;
  }

  v26 = v21 / v20;
  v95 = a1;
  v94 = a4;
  v27 = a4;
  v28 = v24 / v20;
  if (v21 / v20 >= v24 / v20)
  {
    v82 = v13;
    v83 = v16;
    v44 = v23;
    sub_26A7A38A0(v23, v24 / v20, v27);
    v45 = a1;
    v46 = v44;
    v84 = v27;
    v47 = v27 + v28 * v20;
    v48 = -v20;
    v49 = &qword_2803ACCF0;
    v50 = &unk_26A85C520;
    v51 = v47;
    v81 = v48;
LABEL_38:
    v52 = v46 + v48;
    v53 = a3;
    v79 = v51;
    v90 = v46;
    v85 = v46 + v48;
    while (1)
    {
      if (v47 <= v84)
      {
        v95 = v46;
        v93 = v51;
        goto LABEL_62;
      }

      if (v46 <= v45)
      {
        v95 = v46;
        v93 = v79;
        goto LABEL_62;
      }

      v80 = v51;
      v54 = v45;
      v86 = (v47 + v48);
      v87 = v47;
      v55 = v82;
      v56 = v48;
      sub_26A505CD4(v47 + v48, v82, v49);
      v57 = v83;
      sub_26A505CD4(v52, v83, v49);
      v58 = v92;
      v59 = v50;
      v60 = v49;
      v61 = v89(*v55, &v55[*(v91 + 48)], *v57, &v57[*(v91 + 48)]);
      if (v58)
      {
        break;
      }

      v62 = v61;
      v92 = 0;
      v63 = v54;
      v64 = v53 + v56;
      sub_26A4DBD10(v57, v60);
      v65 = v55;
      v66 = v60;
      sub_26A4DBD10(v65, v60);
      v50 = v59;
      if (v62)
      {
        v73 = v53 < v90 || v64 >= v90;
        a3 = v53 + v56;
        if (v73)
        {
          v74 = v85;
          swift_arrayInitWithTakeFrontToBack();
          v46 = v74;
          v51 = v80;
          v48 = v81;
          v45 = v63;
          v49 = v66;
          v50 = v59;
          v47 = v87;
        }

        else
        {
          v75 = v80;
          v48 = v81;
          v51 = v80;
          v76 = v85;
          v46 = v85;
          v45 = v63;
          v49 = v66;
          v50 = v59;
          v47 = v87;
          if (v53 != v90)
          {
            v77 = v45;
            v78 = v81;
            swift_arrayInitWithTakeBackToFront();
            v48 = v78;
            v45 = v77;
            v46 = v76;
            v51 = v75;
          }
        }

        goto LABEL_38;
      }

      v67 = v53 < v87 || v64 >= v87;
      v68 = v53 + v56;
      if (v67)
      {
        v69 = v86;
        swift_arrayInitWithTakeFrontToBack();
        v53 += v56;
        v47 = v69;
        v51 = v69;
        v46 = v90;
        v45 = v63;
        v48 = v81;
        v49 = v66;
        v52 = v85;
      }

      else
      {
        v52 = v85;
        v70 = v86;
        v51 = v86;
        v22 = v87 == v53;
        v53 += v56;
        v47 = v86;
        v46 = v90;
        v45 = v63;
        v48 = v81;
        v49 = v66;
        if (!v22)
        {
          v71 = v45;
          v72 = v81;
          swift_arrayInitWithTakeBackToFront();
          v48 = v72;
          v45 = v71;
          v46 = v90;
          v53 = v68;
          v47 = v70;
          v51 = v70;
        }
      }
    }

    sub_26A4DBD10(v57, &qword_2803ACCF0);
    sub_26A4DBD10(v55, &qword_2803ACCF0);
    v95 = v90;
    v93 = v80;
  }

  else
  {
    v86 = result;
    v29 = v23;
    sub_26A7A38A0(a1, v21 / v20, v27);
    v30 = a1;
    v31 = v29;
    v87 = v27 + v26 * v20;
    v93 = v87;
    v32 = v27;
    v85 = a3;
    while (v32 < v87 && v31 < a3)
    {
      v34 = v30;
      v90 = v31;
      sub_26A505CD4(v31, v18, &qword_2803ACCF0);
      v35 = v32;
      v36 = v86;
      sub_26A505CD4(v32, v86, &qword_2803ACCF0);
      v37 = v92;
      v38 = v89(*v18, &v18[*(v91 + 48)], *v36, &v36[*(v91 + 48)]);
      v92 = v37;
      if (v37)
      {
        sub_26A4DBD10(v36, &qword_2803ACCF0);
        sub_26A4DBD10(v18, &qword_2803ACCF0);
        break;
      }

      v39 = v38;
      sub_26A4DBD10(v36, &qword_2803ACCF0);
      sub_26A4DBD10(v18, &qword_2803ACCF0);
      if (v39)
      {
        v40 = v90 + v20;
        v41 = v34;
        if (v34 < v90 || v34 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v34;
          v31 = v40;
          v32 = v35;
          a3 = v85;
        }

        else
        {
          a3 = v85;
          if (v34 != v90)
          {
            swift_arrayInitWithTakeBackToFront();
            v41 = v34;
          }

          v31 = v40;
          v32 = v35;
        }
      }

      else
      {
        v32 = v35 + v20;
        v41 = v34;
        if (v34 < v35 || v34 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v34;
        }

        else if (v34 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = v34;
        }

        v94 = v35 + v20;
        v31 = v90;
        a3 = v85;
      }

      v30 = v41 + v20;
      v95 = v30;
    }
  }

LABEL_62:
  sub_26A544C84(&v95, &v94, &v93);
  return 1;
}

uint64_t sub_26A791A88(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = type metadata accessor for ImageStyleAppearance();
  v34 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7708);
  result = sub_26A852468();
  v11 = result;
  v12 = 0;
  v37 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v32 = result + 64;
  v33 = result;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v37 + 48) + 8 * v23);
      v25 = *(v34 + 72) * v23;
      sub_26A648BE0(*(v37 + 56) + v25, v9);

      v26 = v39;
      v35(v9);
      v39 = v26;
      if (v26)
      {
        break;
      }

      sub_26A51DA28(v9);
      *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v27 = v33;
      *(*(v33 + 48) + 8 * v23) = v24;
      v11 = v27;
      result = sub_26A5EA2E4(v7, *(v27 + 56) + v25);
      v28 = *(v11 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v11 + 16) = v30;
      v18 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    v11 = v33;

    sub_26A51DA28(v9);
    return v11;
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_95()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_84()
{
  v4 = *(v2 - 120);

  return sub_26A505CD4(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_5_74@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_61()
{

  return sub_26A791A88(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_9_57()
{
  *(v3 - 112) = v2;

  return sub_26A790428((v3 - 112), v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_30()
{
  *(v1 + 16) = v0;

  sub_26A817EA4();
}

uint64_t OUTLINED_FUNCTION_22_29()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_23_23()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_25_23()
{
  *v0 = v6;
  v0[1] = v7;
  v0[2] = v4;
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = v3;

  return type metadata accessor for ImageStyleAppearance();
}

uint64_t OUTLINED_FUNCTION_27_16()
{
}

__n128 OUTLINED_FUNCTION_28_13(__n128 *a1)
{
  result = v1[7];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_29_18(uint64_t a1@<X8>)
{
  v2 = *a1;
  *(v1 + 32) = *a1;
  v3 = *(a1 + 8);
  *(v1 + 40) = v3;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);

  sub_26A621A9C(v1);
}

uint64_t OUTLINED_FUNCTION_33_14()
{
}

void OUTLINED_FUNCTION_35_11(uint64_t a1, char a2)
{
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t OUTLINED_FUNCTION_36_9()
{
}

uint64_t OUTLINED_FUNCTION_41_11()
{

  return sub_26A791A88(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return sub_26A8503E8();
}

uint64_t ReferenceStandardView.init(text1:addTint:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = type metadata accessor for ReferenceStandardView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  if (qword_2803A8CE0 != -1)
  {
    swift_once();
  }

  v8 = xmmword_2803D1FA8;
  v9 = qword_2803D1FB8;
  v10 = unk_2803D1FC0;
  v11 = qword_2803D1FC8;

  sub_26A6AEE74(v28);
  memcpy(v7, v28, 0xC0uLL);
  *(v7 + 192) = v11;
  *(v7 + 200) = v8;
  *(v7 + 216) = v9;
  *(v7 + 224) = v10;
  *(v7 + 232) = v11;
  v12 = v3[5];
  *(v7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v7 + v3[6];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v3[7];
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v15 = v3[8];
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v16 = (v7 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  v18 = __swift_project_value_buffer(v17, qword_2803D1E30);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  v20 = v16 + *(v19 + 32);
  sub_26A4DBD68(v18, v20, &qword_2803ADE40);
  sub_26A6AEE74(v27);
  memcpy(v16, v27, 0xBFuLL);
  sub_26A580C48(v20 + *(v17 + 36), v16 + *(v19 + 28));
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  *(v7 + v3[9]) = (*(v22 + 8))(v21, v22);
  *(v7 + v3[10]) = a2 & 1;
  sub_26A792450(v7, a3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ReferenceStandardView()
{
  result = qword_2803B7730;
  if (!qword_2803B7730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A792450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7924B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReferenceStandardView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A79269C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ReferenceStandardView() + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A7927F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceStandardView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ReferenceStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A7924B4(&v18[-v9]);
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  sub_26A79269C();
  sub_26A7927F0(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v19 = v1;
  sub_26A4CEAD4();
  v11 = *(v1 + *(type metadata accessor for ReferenceStandardView() + 40));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7710) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CF04;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7718) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7720);
  *(a1 + *(result + 36)) = 33;
  return result;
}

uint64_t sub_26A792C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_26A792CD8(a1, a2 + 24);
}

uint64_t sub_26A792CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReferenceStandardView() + 36));
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2800, v8, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v7, __src, sizeof(v7));
  v8[11] = 0;
  v8[10] = sub_26A80A810;
  v6 = v3;
  sub_26A4DBD68(&v6, v5, &qword_2803A99A0);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_26A4DBD68(v5, a2 + 16, &qword_2803A99A0);
  *(a2 + 312) = 0;
  *(a2 + 320) = 1;

  sub_26A4DBD10(&v6, &qword_2803A99A0);
  return sub_26A4DBD10(v5, &qword_2803A99A0);
}

uint64_t sub_26A792E24(uint64_t a1)
{
  result = sub_26A793950(&qword_2803B7728, MEMORY[0x277D632E0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A792EA4()
{
  sub_26A793018();
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A580EB4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A580EB4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A580EB4(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A793018()
{
  if (!qword_2803AD138)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AD138);
    }
  }
}

unint64_t sub_26A793068()
{
  result = qword_2803B7740;
  if (!qword_2803B7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7720);
    sub_26A7930F4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7740);
  }

  return result;
}

unint64_t sub_26A7930F4()
{
  result = qword_2803B7748;
  if (!qword_2803B7748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7718);
    sub_26A7931AC();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7748);
  }

  return result;
}

unint64_t sub_26A7931AC()
{
  result = qword_2803B7750;
  if (!qword_2803B7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7710);
    sub_26A4DBCC8(&qword_2803B7758, &qword_2803A97D0);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7750);
  }

  return result;
}

uint64_t sub_26A793264()
{
  v50 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v48 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v47 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for ReferenceStandardView();
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC18);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC20);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v52 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v51 = &v46 - v29;
  sub_26A84C4A8();
  v30 = TextProperty.asAnyView()();
  (*(v13 + 8))(v17, v11);
  v31 = v50;
  v55[3] = MEMORY[0x277CE11C8];
  v55[4] = &protocol witness table for AnyView;
  v55[0] = v30;
  v53 = v22;
  ReferenceStandardView.init(text1:addTint:)(v55, 0, v22);
  sub_26A84C4B8();
  sub_26A4DBDB4(v10, v7, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_26A4DBD10(v7, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v33 = &v25[*(v49 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v35 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v47;
    v37 = *(v48 + 32);
    v37(v47, v7, v31);
    v38 = swift_getKeyPath();
    v39 = &v25[*(v49 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A792450(v53, v25);
  v42 = sub_26A84C488();
  v43 = v51;
  sub_26A4DD08C(v42);

  sub_26A4DBD10(v25, &qword_2803AAC18);
  sub_26A4DBD68(v43, v52, &qword_2803AAC20);
  sub_26A793724();
  v44 = sub_26A851248();
  sub_26A4DBD10(v43, &qword_2803AAC20);
  return v44;
}

unint64_t sub_26A793724()
{
  result = qword_2803B7760;
  if (!qword_2803B7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC20);
    sub_26A7937DC();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7760);
  }

  return result;
}

unint64_t sub_26A7937DC()
{
  result = qword_2803B7768;
  if (!qword_2803B7768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC10);
    sub_26A793868();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7768);
  }

  return result;
}

unint64_t sub_26A793868()
{
  result = qword_2803B7770;
  if (!qword_2803B7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC18);
    sub_26A793950(&qword_2803ADE38, type metadata accessor for ReferenceStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7770);
  }

  return result;
}

uint64_t sub_26A793950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ResponseModelInstrumentationPayload.make(from:)()
{
  v0 = sub_26A84ABB8();
  if (v1 >> 60 == 15)
  {
    sub_26A793A7C();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  else
  {
    v4 = v0;
    v5 = v1;
    sub_26A84A7A8();
    swift_allocObject();
    sub_26A84A798();
    sub_26A793AD0();
    OUTLINED_FUNCTION_13_42();
    sub_26A84A788();

    return sub_26A54D2B8(v4, v5);
  }
}

unint64_t sub_26A793A7C()
{
  result = qword_2803B7778;
  if (!qword_2803B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7778);
  }

  return result;
}

unint64_t sub_26A793AD0()
{
  result = qword_2803B7780;
  if (!qword_2803B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7780);
  }

  return result;
}

uint64_t sub_26A793B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v21[-1] - v14;
  sub_26A84AD48();
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
  {

    (*(v12 + 8))(v15, v10);
LABEL_5:
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v21[3] = v8;
  v21[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v8 - 8) + 32))();
  v16 = sub_26A84AD38();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (v18 >> 60 == 15)
  {

    goto LABEL_5;
  }

  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26A793CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_7_68();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  (*(v29 + 16))(&a9 - v35, v24, v27, v34);
  sub_26A5E88D8();
  sub_26A84BE18();
  v37 = sub_26A84BE38();
  v39 = (v29 + 8);
  if (v20)
  {

    v40 = *v39;
    (*v39)(v32, v27);
    v40(v36, v27);
    sub_26A793A7C();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
  }

  else
  {
    v42 = v37;
    v43 = v38;
    v44 = *v39;
    (*v39)(v32, v27);
    v44(v36, v27);
    *v26 = v42;
    v26[1] = v43 | 0x1000000000000000;
    v26[2] = 0;
    v26[3] = 0;
  }

  OUTLINED_FUNCTION_8_62();
}

uint64_t sub_26A793E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026A88F530 == a2;
  if (v3 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xED00006C65646F4DLL;
    if (v6 || (sub_26A852598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F4D647261436173 && a2 == 0xEB000000006C6564)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A852598();

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

uint64_t sub_26A793FC8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x65736E6F70736572;
  }

  return 0x6F4D647261436173;
}

uint64_t sub_26A794044(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A7940BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A793E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A7940E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A793FC0();
  *a1 = result;
  return result;
}

uint64_t sub_26A79410C(uint64_t a1)
{
  v2 = sub_26A7946E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A794148(uint64_t a1)
{
  v2 = sub_26A7946E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794188(uint64_t a1)
{
  v2 = sub_26A7947DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7941C4(uint64_t a1)
{
  v2 = sub_26A7947DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794200(uint64_t a1)
{
  v2 = sub_26A794734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A79423C(uint64_t a1)
{
  v2 = sub_26A794734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A794278(uint64_t a1)
{
  v2 = sub_26A794884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7942B4(uint64_t a1)
{
  v2 = sub_26A794884();

  return MEMORY[0x2821FE720](a1, v2);
}

void ResponseModelInstrumentationPayload.encode(to:)()
{
  OUTLINED_FUNCTION_7_68();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7788);
  OUTLINED_FUNCTION_15();
  v36 = v5;
  v37 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7790);
  OUTLINED_FUNCTION_15();
  v33 = v9;
  v34 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7798);
  OUTLINED_FUNCTION_15();
  v32 = v12;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77A0);
  OUTLINED_FUNCTION_15();
  v39 = v17;
  v40 = v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_50();
  v19 = v0[1];
  v38 = *v0;
  v20 = v0[2];
  v30 = v0[3];
  v31 = v20;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26A7946E0();
  sub_26A852718();
  v21 = (v19 >> 60) & 3;
  if (v21)
  {
    v22 = v19 & 0xCFFFFFFFFFFFFFFFLL;
    if (v21 == 1)
    {
      LOBYTE(v41) = 1;
      sub_26A7947DC();
      v23 = v40;
      OUTLINED_FUNCTION_13_42();
      sub_26A852528();
      v41 = v38;
      v42 = v22;
      sub_26A794830();
      v24 = v34;
      sub_26A852548();
      v25 = OUTLINED_FUNCTION_9_58();
    }

    else
    {
      LOBYTE(v41) = 2;
      sub_26A794734();
      v28 = v35;
      v23 = v40;
      OUTLINED_FUNCTION_13_42();
      sub_26A852528();
      v41 = v38;
      v42 = v22;
      sub_26A794788();
      v24 = v37;
      sub_26A852548();
      v26 = *(v36 + 8);
      v25 = v28;
    }

    v26(v25, v24);
    (*(v39 + 8))(v1, v23);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_26A794884();
    v27 = v40;
    sub_26A852528();
    v41 = v38;
    v42 = v19;
    v43 = v31;
    v44 = v30;
    sub_26A7948D8();
    sub_26A852548();
    (*(v32 + 8))(v15, v11);
    (*(v39 + 8))(v1, v27);
  }

  OUTLINED_FUNCTION_8_62();
}

unint64_t sub_26A7946E0()
{
  result = qword_2803B77A8;
  if (!qword_2803B77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77A8);
  }

  return result;
}

unint64_t sub_26A794734()
{
  result = qword_2803B77B0;
  if (!qword_2803B77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77B0);
  }

  return result;
}

unint64_t sub_26A794788()
{
  result = qword_2803B77B8;
  if (!qword_2803B77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77B8);
  }

  return result;
}

unint64_t sub_26A7947DC()
{
  result = qword_2803B77C0;
  if (!qword_2803B77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77C0);
  }

  return result;
}

unint64_t sub_26A794830()
{
  result = qword_2803B77C8;
  if (!qword_2803B77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77C8);
  }

  return result;
}

unint64_t sub_26A794884()
{
  result = qword_2803B77D0;
  if (!qword_2803B77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77D0);
  }

  return result;
}

unint64_t sub_26A7948D8()
{
  result = qword_2803B77D8;
  if (!qword_2803B77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B77D8);
  }

  return result;
}

void ResponseModelInstrumentationPayload.init(from:)()
{
  OUTLINED_FUNCTION_7_68();
  v3 = v2;
  v66 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77E0);
  OUTLINED_FUNCTION_15();
  v64 = v6;
  v65 = v5;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v67 = &v57 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77E8);
  OUTLINED_FUNCTION_15();
  v62 = v9;
  v63 = v10;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77F0);
  OUTLINED_FUNCTION_15();
  v61 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B77F8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_50();
  v21 = v3[3];
  v68 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v21);
  sub_26A7946E0();
  sub_26A852708();
  if (v0)
  {
    goto LABEL_10;
  }

  v58 = v14;
  v59 = v18;
  v60 = v13;
  v22 = v1;
  v23 = sub_26A852518();
  v24 = sub_26A795C5C(v23, 0);
  v28 = v19;
  if (v26 == v27 >> 1)
  {
LABEL_9:
    v35 = sub_26A8522A8();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7800);
    *v37 = &type metadata for ResponseModelInstrumentationPayload;
    sub_26A8524E8();
    sub_26A852298();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_46();
    v38(v22, v28);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_11:
    OUTLINED_FUNCTION_8_62();
    return;
  }

  if (v26 < (v27 >> 1))
  {
    v29 = *(v25 + v26);
    sub_26A795CA4(v26 + 1, v27 >> 1, v24, v25, v26, v27);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v69) = 1;
          sub_26A7947DC();
          OUTLINED_FUNCTION_1_98();
          sub_26A8524D8();
          v34 = v66;
          sub_26A795D74();
          sub_26A852508();
          swift_unknownObjectRelease();
          v40 = OUTLINED_FUNCTION_15_36();
          v41(v40);
          OUTLINED_FUNCTION_12_46();
          v42 = OUTLINED_FUNCTION_13_9();
          v43(v42);
          v44 = 0;
          v45 = 0;
          v46 = v69;
          v47 = v70 | 0x1000000000000000;
        }

        else
        {
          LOBYTE(v69) = 2;
          sub_26A794734();
          OUTLINED_FUNCTION_1_98();
          sub_26A8524D8();
          v34 = v66;
          sub_26A795D20();
          sub_26A852508();
          swift_unknownObjectRelease();
          v53 = OUTLINED_FUNCTION_14_42();
          v54(v53);
          v55 = OUTLINED_FUNCTION_13_9();
          v56(v55);
          v44 = 0;
          v45 = 0;
          v46 = v69;
          v47 = v70 | 0x2000000000000000;
        }

        v52 = v68;
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_26A794884();
        OUTLINED_FUNCTION_1_98();
        sub_26A8524D8();
        sub_26A795DC8();
        v39 = v58;
        OUTLINED_FUNCTION_13_42();
        sub_26A852508();
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_9_58();
        v49(v48, v39);
        v50 = OUTLINED_FUNCTION_13_9();
        v51(v50);
        v46 = v69;
        v47 = v70;
        v44 = v71;
        v45 = v72;
        v52 = v68;
        v34 = v66;
      }

      *v34 = v46;
      v34[1] = v47;
      v34[2] = v44;
      v34[3] = v45;
      __swift_destroy_boxed_opaque_existential_1(v52);
      goto LABEL_11;
    }

    v28 = v19;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_26A794FDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xED00006C65646F4DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A795084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A794FDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A7950B0(uint64_t a1)
{
  v2 = sub_26A795E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7950EC(uint64_t a1)
{
  v2 = sub_26A795E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SACardModelPayload.cardModel.getter()
{
  v0 = OUTLINED_FUNCTION_211();
  sub_26A54D260(v0, v1);
  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A7951EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65646F4D64726163 && a2 == 0xE90000000000006CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A852598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A79528C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A7951EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A7952B8(uint64_t a1)
{
  v2 = sub_26A795F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A7952F4(uint64_t a1)
{
  v2 = sub_26A795F18();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26A795364()
{
  OUTLINED_FUNCTION_7_68();
  v13 = v2;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_50();
  v10 = *v0;
  v11 = v0[1];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v12 = sub_26A54D260(v10, v11);
  v13(v12);
  sub_26A852718();
  sub_26A795E70();
  sub_26A852548();
  sub_26A513D40(v10, v11);
  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_8_62();
}

void sub_26A7954D4()
{
  OUTLINED_FUNCTION_7_68();
  v2 = v1;
  v4 = v3;
  v14 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_26A852708();
  if (!v0)
  {
    v11 = v14;
    sub_26A795EC4();
    sub_26A852508();
    OUTLINED_FUNCTION_12_46();
    v12(v10, v7);
    *v11 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_8_62();
}

uint64_t SnippetPluginModelPayload.snippetPluginModel.getter()
{
  v0 = OUTLINED_FUNCTION_211();
  sub_26A54D260(v0, v1);
  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A7956B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026A88F530 == a2;
  if (v3 || (sub_26A852598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656C646E7562 && a2 == 0xEA0000000000656DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A852598();

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

uint64_t sub_26A795788(char a1)
{
  if (a1)
  {
    return 0x614E656C646E7562;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_26A7957D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A7956B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A7957F8(uint64_t a1)
{
  v2 = sub_26A795F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A795834(uint64_t a1)
{
  v2 = sub_26A795F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

void SnippetPluginModelPayload.encode(to:)()
{
  OUTLINED_FUNCTION_7_68();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7860);
  OUTLINED_FUNCTION_15();
  v13 = v5;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12[1] = v0[3];
  v12[2] = v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26A54D260(v9, v10);
  sub_26A795F6C();
  sub_26A852718();
  v14 = v9;
  v15 = v10;
  sub_26A795E70();
  sub_26A852548();
  sub_26A513D40(v14, v15);
  if (!v1)
  {
    LOBYTE(v14) = 1;
    sub_26A852538();
  }

  (*(v13 + 8))(v8, v4);
  OUTLINED_FUNCTION_8_62();
}

void SnippetPluginModelPayload.init(from:)()
{
  OUTLINED_FUNCTION_7_68();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7870);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26A795F6C();
  sub_26A852708();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_26A795EC4();
    OUTLINED_FUNCTION_1_98();
    sub_26A852508();
    v6 = sub_26A8524F8();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_13_9();
    v10(v9);
    *v4 = v11;
    v4[1] = v12;
    v4[2] = v6;
    v4[3] = v8;
    sub_26A54D260(v11, v12);

    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26A513D40(v11, v12);
  }

  OUTLINED_FUNCTION_8_62();
}

uint64_t sub_26A795C14(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26A795C5C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26A795CA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26A795D20()
{
  result = qword_2803B7808;
  if (!qword_2803B7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7808);
  }

  return result;
}

unint64_t sub_26A795D74()
{
  result = qword_2803B7810;
  if (!qword_2803B7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7810);
  }

  return result;
}

unint64_t sub_26A795DC8()
{
  result = qword_2803B7818;
  if (!qword_2803B7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7818);
  }

  return result;
}

unint64_t sub_26A795E1C()
{
  result = qword_2803B7828;
  if (!qword_2803B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7828);
  }

  return result;
}

unint64_t sub_26A795E70()
{
  result = qword_2803B7830;
  if (!qword_2803B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7830);
  }

  return result;
}

unint64_t sub_26A795EC4()
{
  result = qword_2803B7840;
  if (!qword_2803B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7840);
  }

  return result;
}

unint64_t sub_26A795F18()
{
  result = qword_2803B7850;
  if (!qword_2803B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7850);
  }

  return result;
}

unint64_t sub_26A795F6C()
{
  result = qword_2803B7868;
  if (!qword_2803B7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7868);
  }

  return result;
}

uint64_t sub_26A795FCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 32))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A79600C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = xmmword_26A883340;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_26A796094(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_26A7960E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseModelInstrumentationPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26A796270(_BYTE *result, int a2, int a3)
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

_BYTE *sub_26A79631C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A7963F8()
{
  result = qword_2803B7878;
  if (!qword_2803B7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7878);
  }

  return result;
}

unint64_t sub_26A796450()
{
  result = qword_2803B7880;
  if (!qword_2803B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7880);
  }

  return result;
}

unint64_t sub_26A7964A8()
{
  result = qword_2803B7888;
  if (!qword_2803B7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7888);
  }

  return result;
}

unint64_t sub_26A796500()
{
  result = qword_2803B7890;
  if (!qword_2803B7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7890);
  }

  return result;
}

unint64_t sub_26A796558()
{
  result = qword_2803B7898;
  if (!qword_2803B7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7898);
  }

  return result;
}

unint64_t sub_26A7965B0()
{
  result = qword_2803B78A0;
  if (!qword_2803B78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78A0);
  }

  return result;
}

unint64_t sub_26A796608()
{
  result = qword_2803B78A8;
  if (!qword_2803B78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78A8);
  }

  return result;
}

unint64_t sub_26A796660()
{
  result = qword_2803B78B0;
  if (!qword_2803B78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78B0);
  }

  return result;
}

unint64_t sub_26A7966B8()
{
  result = qword_2803B78B8;
  if (!qword_2803B78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78B8);
  }

  return result;
}

unint64_t sub_26A796710()
{
  result = qword_2803B78C0;
  if (!qword_2803B78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78C0);
  }

  return result;
}

unint64_t sub_26A796768()
{
  result = qword_2803B78C8;
  if (!qword_2803B78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78C8);
  }

  return result;
}

unint64_t sub_26A7967C0()
{
  result = qword_2803B78D0;
  if (!qword_2803B78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78D0);
  }

  return result;
}

unint64_t sub_26A796818()
{
  result = qword_2803B78D8;
  if (!qword_2803B78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78D8);
  }

  return result;
}

unint64_t sub_26A796870()
{
  result = qword_2803B78E0;
  if (!qword_2803B78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78E0);
  }

  return result;
}

unint64_t sub_26A7968C8()
{
  result = qword_2803B78E8;
  if (!qword_2803B78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78E8);
  }

  return result;
}

unint64_t sub_26A796920()
{
  result = qword_2803B78F0;
  if (!qword_2803B78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78F0);
  }

  return result;
}

unint64_t sub_26A796978()
{
  result = qword_2803B78F8;
  if (!qword_2803B78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B78F8);
  }

  return result;
}

unint64_t sub_26A7969D0()
{
  result = qword_2803B7900;
  if (!qword_2803B7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7900);
  }

  return result;
}

unint64_t sub_26A796A28()
{
  result = qword_2803B7908;
  if (!qword_2803B7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7908);
  }

  return result;
}

unint64_t sub_26A796A80()
{
  result = qword_2803B7910;
  if (!qword_2803B7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7910);
  }

  return result;
}

unint64_t sub_26A796AD8()
{
  result = qword_2803B7918;
  if (!qword_2803B7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7918);
  }

  return result;
}

unint64_t sub_26A796B30()
{
  result = qword_2803B7920;
  if (!qword_2803B7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7920);
  }

  return result;
}

void sub_26A796CBC()
{
  sub_26A4DB840(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A798F04(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TableRowViewModel();
      if (v2 <= 0x3F)
      {
        sub_26A798F04(319, &qword_2803B1100, type metadata accessor for TableCell, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26A796E08(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = sub_26A84F108();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84F218();
  sub_26A798C28(&qword_28157FE70, MEMORY[0x277CDF7F8]);
  v7 = sub_26A851D98();
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v9 = v7;
  v41 = MEMORY[0x277D84F90];
  sub_26A7DD2F4(0, v7 & ~(v7 >> 63), 0);
  v8 = v41;
  result = sub_26A851D88();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v29[1] = v4;
    result = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
    v11 = 0;
    v12 = *(result + 28);
    v31 = (v5 + 16);
    v32 = v12;
    v30 = (v5 + 8);
    v33 = v9;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = sub_26A851E18();
      v16 = v34;
      v15 = v35;
      (*v31)(v34);
      v14(v40, 0);
      sub_26A84F598();
      v40[0] = v17 & 1;
      v39 = v18 & 1;
      sub_26A84F0E8();
      v21 = v20;
      v22 = v19;
      v23 = v37;
      v24 = *v36;
      if (*v36 <= v19)
      {
        v24 = v19;
      }

      *v36 = v24;
      v25 = *v23;
      *v23 = *v23 + v21 + *(v38 + v32);
      (*v30)(v16, v15);
      v41 = v8;
      v27 = *(v8 + 16);
      v26 = *(v8 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_26A7DD2F4(v26 > 1, v27 + 1, 1);
        v8 = v41;
      }

      *(v8 + 16) = v27 + 1;
      v28 = v8 + 32 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = 0;
      *(v28 + 48) = v21;
      *(v28 + 56) = v22;
      result = sub_26A851DE8();
      ++v11;
      if (v13 == v33)
      {
        return v8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_26A7970FC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_26A79719C(a1, a2 & 1, a3, a4 & 1);

  type metadata accessor for TableRowHeightPreCalculationLayout(0);
  v7 = (a6 + *(type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0) + 52));
  v8 = *v7;
  v9 = v7[1];
  type metadata accessor for TableRowViewModel();
  sub_26A73B598(v8, v9);
  *(v7 + 1) = v10;
  return v8;
}

uint64_t sub_26A79719C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v180 = type metadata accessor for TableCell();
  OUTLINED_FUNCTION_15();
  v183 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v173 = v12;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v13);
  *&v182 = &v170 - v14;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v15);
  v181 = &v170 - v16;
  v187 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v186 = v21 - v20;
  v179 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  v22 = v5 + v179[12];
  if ((*(v22 + 25) & 1) == 0)
  {
    LOBYTE(v189[0]) = a2 & 1;
    LOBYTE(v190[0]) = a4 & 1;
    if (sub_26A84F5A8())
    {
      OUTLINED_FUNCTION_9_59();
    }
  }

  v178 = v18;
  v175 = *&a1;
  *v22 = *&a1;
  *(v22 + 8) = a2 & 1;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4 & 1;
  *(v22 + 25) = 0;
  OUTLINED_FUNCTION_9_59();
  v24 = v5 + *(v23 + 24);
  v172 = type metadata accessor for TableRowViewModel();
  v25 = *(v172 + 40);
  v174 = v24;
  v171 = *(v24 + v25);
  v26 = *(*(v171 + 16) + 16);
  v177 = v5;
  if (v26)
  {

    v27 = v170 + 48;
    v28 = MEMORY[0x277D84F90];
    do
    {
      if ((*(v27 + 8) & 0xFF00) != 0x200)
      {
        v185 = *(v27 + 8);
        v184 = *(v27 - 16);
        v29 = *v27;
        v30 = *(v27 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189[0] = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A7DCF20(0, *(*&v28 + 16) + 1, 1);
          v28 = v189[0];
        }

        v33 = *(*&v28 + 16);
        v32 = *(*&v28 + 24);
        v34 = v185;
        if (v33 >= v32 >> 1)
        {
          sub_26A7DCF20(v32 > 1, v33 + 1, 1);
          v34 = v185;
          v28 = v189[0];
        }

        *(*&v28 + 16) = v33 + 1;
        v35 = *&v28 + 48 * v33;
        *(v35 + 32) = v184;
        *(v35 + 48) = v29;
        *(v35 + 56) = v34;
        *(v35 + 72) = v30;
      }

      v27 += 48;
      --v26;
    }

    while (v26);

    v5 = v177;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_9_59();
  v37 = *(v36 + 44);
  sub_26A84F218();
  OUTLINED_FUNCTION_2_96();
  sub_26A798C28(v38, v39);
  v40 = sub_26A851D98();
  v176 = a2;
  if (v40)
  {
    v41 = v40;
    *&v184 = v28;
    *&v190[0] = MEMORY[0x277D84F90];
    sub_26A7DD274(0, v40 & ~(v40 >> 63), 0);
    v42 = v190[0];
    sub_26A851D88();
    if (v41 < 0)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    *&v185 = v178 + 16;
    v43 = (v178 + 8);
    a2 = *&v42;
    do
    {
      v44 = sub_26A851E18();
      v46 = v186;
      v45 = v187;
      (*v185)(v186);
      v44(v189, 0);
      sub_26A84F598();
      LOBYTE(v189[0]) = v47 & 1;
      v188 = v48 & 1;
      sub_26A84F0E8();
      v50 = v49;
      v52 = v51;
      (*v43)(v46, v45);
      *&v190[0] = a2;
      v53 = v37;
      v55 = *(a2 + 16);
      v54 = *(a2 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_26A7DD274(v54 > 1, v55 + 1, 1);
        a2 = *&v190[0];
      }

      *(a2 + 16) = v55 + 1;
      v56 = a2 + 16 * v55;
      *(v56 + 32) = v50;
      *(v56 + 40) = v52;
      sub_26A851DE8();
      --v41;
      v37 = v53;
    }

    while (v41);
    v178 = a2;
    LOBYTE(a2) = v176;
    v28 = *&v184;
  }

  else
  {
    v178 = MEMORY[0x277D84F90];
  }

  v57 = *(v178 + 16);
  if (v57)
  {
    v58 = v57;
    v59 = (v178 + 32);
    v60 = 0.0;
    do
    {
      v61 = *v59;
      v59 += 2;
      v60 = v60 + v61 / v58;
      --v57;
    }

    while (v57);
  }

  else
  {
    v60 = 0.0;
  }

  v62 = sub_26A6A547C();
  v187 = v37;
  if (v62 != v63)
  {
    v65 = v62;
    v66 = v63;
    if (v63 < v62)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v62 >= v63)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v67 = *(v5 + 8);
    v68 = *(v67 + 16);
    v69 = (v178 + 16 * v62 + 32);
    v186 = MEMORY[0x277D84F90];
    v64 = 0.0;
    do
    {
      if (v65 < v68)
      {
        if ((v65 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v65 >= *(v67 + 16))
        {
          goto LABEL_139;
        }

        v70 = *(v67 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v65 + *(v180 + 24));
        if ((v70 & 0x8000000000000000) == 0 && v70 < *(*&v28 + 16))
        {
          v71 = *&v28 + 32 + 48 * v70;
          v72 = *(v71 + 24);
          if ((v72 & 0xFF00) != 0x200)
          {
            if (v72)
            {
              if (v65 >= *(v178 + 16))
              {
                goto LABEL_149;
              }

              if (v64 > 0.0)
              {
                v64 = v64 + *(v177 + v179[7]);
              }

              if (v60 >= *v69 || (v73 = 1.0, (*(v71 + 40) & 0x100) != 0))
              {
                v73 = 1.0 - *v177;
              }

              v64 = v64 + *v69 * v73;
            }

            if ((v72 & 0x100) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_0_53();
                sub_26A7A1810();
                v186 = v76;
              }

              v74 = *(v186 + 16);
              if (v74 >= *(v186 + 24) >> 1)
              {
                sub_26A7A1810();
                v186 = v77;
              }

              v75 = v186;
              *(v186 + 16) = v74 + 1;
              *(v75 + 8 * v74 + 32) = v65;
            }
          }
        }
      }

      ++v65;
      v69 += 2;
    }

    while (v66 != v65);

    if ((a2 & 1) == 0)
    {
      v5 = v177;
      v37 = v187;
      goto LABEL_64;
    }

    v5 = v177;
    v37 = v187;
    if (v64 > 0.0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v64 = 0.0;
  v186 = MEMORY[0x277D84F90];
  if (a2)
  {
    goto LABEL_57;
  }

LABEL_64:
  if (v64 <= v175)
  {
LABEL_57:

    v189[0] = 0.0;
    v190[0] = 0.0;
    v78 = sub_26A796E08(v5 + v37, v189, v190, v5);

    v79 = v179;
    v80 = v179[14];

    *(v5 + v80) = v78;
    if (sub_26A61B05C(*(v5 + v79[10]), &unk_287B133E0))
    {
      OUTLINED_FUNCTION_8_63();
      if ((v82 & 1) == 0 && !*v81)
      {
        v83 = *(sub_26A625870() + 16);

        if (v83)
        {
          OUTLINED_FUNCTION_9_59();
        }
      }
    }

    OUTLINED_FUNCTION_9_59();
    v85 = (v5 + *(v84 + 52));
    *v85 = v87;
    v85[1] = v86;
  }

LABEL_65:
  v88 = v174;
  v89 = sub_26A625870();
  v90 = v89;
  v91 = *(v89 + 16);
  if (v91)
  {
    v92 = 0;
    *&v185 = *(v180 + 24);
    v93 = MEMORY[0x277D84F98];
    *&v184 = v89 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    while (v92 < *(v90 + 16))
    {
      OUTLINED_FUNCTION_4_80();
      v94 = v181;
      sub_26A798C90(v95, v181, v96);
      v97 = *(v94 + v185);
      sub_26A798C90(v94, *&v182, v88);
      swift_isUniquelyReferenced_nonNull_native();
      v189[0] = v93;
      v98 = sub_26A5484D4(v97);
      if (__OFADD__(*(*&v93 + 16), (v99 & 1) == 0))
      {
        goto LABEL_141;
      }

      v100 = v98;
      v101 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1120);
      v88 = v189;
      if (sub_26A8523E8())
      {
        v88 = *&v189[0];
        v102 = sub_26A5484D4(v97);
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_154;
        }

        v100 = v102;
      }

      v93 = v189[0];
      if (v101)
      {
        v104 = OUTLINED_FUNCTION_13_43();
        sub_26A625EA0(v104, v105);
        OUTLINED_FUNCTION_5_75();
      }

      else
      {
        *(*&v189[0] + 8 * (v100 >> 6) + 64) |= 1 << v100;
        *(*(*&v93 + 48) + 8 * v100) = v97;
        v106 = OUTLINED_FUNCTION_13_43();
        sub_26A625DE4(v106, v107);
        OUTLINED_FUNCTION_5_75();
        v108 = *(*&v93 + 16);
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_143;
        }

        *(*&v93 + 16) = v110;
      }

      if (v91 == ++v92)
      {
        goto LABEL_79;
      }
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v93 = MEMORY[0x277D84F98];
LABEL_79:

  v111 = v177;
  v112 = v186;
  if ((*(v171 + 65) & 1) != 0 || (OUTLINED_FUNCTION_8_63(), v114 = 0.0, (v115 & 1) == 0) && !*v113)
  {
    v116 = *(sub_26A625870() + 16);

    if (v116)
    {
      OUTLINED_FUNCTION_9_59();
      v114 = *(v111 + *(v117 + 36));
    }

    else
    {
      v114 = 0.0;
    }
  }

  v118 = sub_26A6A547C();
  if (v118 == v119)
  {

    v120 = v175;
    v121 = MEMORY[0x277D84F90];
    v122 = 0.0;
LABEL_134:

    v164 = v179;
    v165 = v179[14];
    v166 = v177;

    *(v166 + v165) = v121;
    v167 = 0.0;
    if ((v176 & 1) == 0)
    {
      v167 = v120;
    }

    v168 = (v166 + v164[13]);
    *v168 = v167;
    v168[1] = v122 + v114;
  }

  v123 = v118;
  v124 = v119;
  if (v119 >= v118)
  {
    *&v185 = 0;
    v125 = (v112 + 32);
    v126 = v178 + 32;
    v120 = v175;
    v127 = -v118;
    v122 = 0.0;
    v121 = MEMORY[0x277D84F90];
    v182 = 1000.0;
    v128 = v114;
    v129 = 0.0;
    v130 = v178 + 32 + 16 * v118;
    *&v184 = v178 + 32;
    while (2)
    {
      if (v123 < v124)
      {
        v187 = v123 + 1;
        v131 = *(v112 + 16);
        v132 = v125;
        do
        {
          if (!v131)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_53();
              sub_26A7A12C4();
              v121 = v160;
            }

            v142 = *(v121 + 16);
            if (v142 >= *(v121 + 24) >> 1)
            {
              sub_26A7A12C4();
              v121 = v161;
            }

            *(v121 + 16) = v142 + 1;
            v143 = v121 + 32 * v142;
            *(v143 + 32) = 0u;
            *(v143 + 48) = 0u;
            goto LABEL_132;
          }

          v133 = *v132++;
          --v131;
        }

        while (v133 != v123);
        if (*(*&v93 + 16) && (sub_26A5484D4(v123), (v134 & 1) != 0))
        {
          OUTLINED_FUNCTION_4_80();
          v135 = v124;
          v136 = v125;
          v137 = v173;
          sub_26A798C90(v138, v173, v139);
          v140 = *(v137 + *(v180 + 28));
          v141 = v137;
          v125 = v136;
          v124 = v135;
          v126 = v184;
          sub_26A798CF0(v141, *&v93);
        }

        else
        {
          v140 = 1;
        }

        v144 = v123 + v140;
        if (__OFADD__(v123, v140))
        {
          goto LABEL_144;
        }

        v145 = *(v178 + 16);
        if (v145 >= v144)
        {
          v146 = v123 + v140;
        }

        else
        {
          v146 = *(v178 + 16);
        }

        if (v146 < v123)
        {
          goto LABEL_145;
        }

        if (v123 < 0)
        {
          goto LABEL_146;
        }

        if (!__OFSUB__(v140, 1))
        {
          v147 = *(v177 + v179[7]);
          v148 = v147 * (v140 - 1);
          if (v123 == v146)
          {
            v112 = v186;
          }

          else
          {
            v149 = v140 + v123;
            if (v145 < v140 + v123)
            {
              v149 = *(v178 + 16);
            }

            v150 = v149 + v127;
            v151 = v130;
            v112 = v186;
            do
            {
              v152 = *v151;
              v151 += 2;
              v148 = v148 + v152;
              --v150;
            }

            while (v150);
          }

          if (v129 > 0.0 && v123 >= v185)
          {
            v154 = v129 + v148;
            if (v176)
            {
              if (v154 <= v182)
              {
                goto LABEL_124;
              }
            }

            else if (v154 <= v120)
            {
              goto LABEL_124;
            }

            v128 = v128 + v114 + v122;
            v122 = 0.0;
            *&v185 = v144;
            v129 = 0.0;
          }

LABEL_124:
          if (v123 >= v145)
          {
            goto LABEL_148;
          }

          v155 = (v126 + 16 * v123);
          v157 = *v155;
          v156 = v155[1];
          if (v122 <= v156)
          {
            v122 = v155[1];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A12C4();
            v121 = v162;
          }

          v158 = *(v121 + 16);
          if (v158 >= *(v121 + 24) >> 1)
          {
            sub_26A7A12C4();
            v121 = v163;
          }

          *(v121 + 16) = v158 + 1;
          v159 = (v121 + 32 * v158);
          v159[4] = v129;
          v159[5] = v128;
          v159[6] = v157;
          v159[7] = v156;
          v129 = v129 + v147 + v157;
LABEL_132:
          --v127;
          v130 += 16;
          v123 = v187;
          if (v187 != v124)
          {
            continue;
          }

          v114 = v128;
          goto LABEL_134;
        }

        goto LABEL_147;
      }

      break;
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

LABEL_153:
  __break(1u);
LABEL_154:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A798020(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  LODWORD(v63) = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v61 = v54 - v10;
  v65 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v60 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v64 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  v57 = v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_19();
  v62 = v17;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v18);
  v20 = v54 - v19;
  v21 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B98);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v54 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v34 = v54 - v33;
  LOBYTE(v67[0]) = a2 & 1;
  v68 = v63 & 1;
  v35 = sub_26A79719C(a1, a2 & 1, a3, v63 & 1);
  (*(v23 + 16))(v30, v59, v21);
  (*(v23 + 32))(v27, v30, v21);
  v36 = MEMORY[0x277CDF7F8];
  sub_26A798C28(&qword_28157FE78, MEMORY[0x277CDF7F8]);
  sub_26A851998();
  v37 = *(v32 + 44);
  v38 = v21;
  v55 = v37;
  *&v34[v37] = 0;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0168) + 36);
  sub_26A798C28(&qword_28157FE70, v36);
  v40 = 0;
  v56 = (v60 + 16);
  v63 = (v60 + 32);
  v41 = (v60 + 8);
  v60 = v35;
  v54[1] = v35 + 32;
  v42 = v39;
  v58 = v39;
  v59 = v38;
  while (1)
  {
    sub_26A851DD8();
    if (*&v34[v42] == v67[0])
    {
      v43 = 1;
      v44 = v62;
      goto LABEL_6;
    }

    v45 = sub_26A851E18();
    v46 = v57;
    v47 = v65;
    (*v56)(v57);
    v45(v67, 0);
    sub_26A851DE8();
    v48 = *(v66 + 48);
    v49 = v61;
    *v61 = v40;
    result = (*v63)(&v49[v48], v46, v47);
    if (__OFADD__(v40++, 1))
    {
      break;
    }

    *&v34[v55] = v40;
    v44 = v62;
    sub_26A544EC8(v61, v62, &qword_2803B2BA8);
    v43 = 0;
    v42 = v58;
LABEL_6:
    v52 = v66;
    __swift_storeEnumTagSinglePayload(v44, v43, 1, v66);
    sub_26A544EC8(v44, v20, &qword_2803B2B90);
    if (__swift_getEnumTagSinglePayload(v20, 1, v52) == 1)
    {
      sub_26A6A6CA0(v34);
    }

    v53 = *v20;
    result = (*v63)(v64, &v20[*(v66 + 48)], v65);
    if (v53 < *(v60 + 16))
    {
      if (v53 < 0)
      {
        goto LABEL_13;
      }

      sub_26A851568();
      LOBYTE(v67[0]) = 0;
      v68 = 0;
      v42 = v58;
      sub_26A84F0F8();
    }

    (*v41)(v64, v65);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26A798618@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  v17 = type metadata accessor for TableRowViewModel();
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for TableRowHeightPreCalculationLayout(0);
  v22 = *(v2 + v21[7]);
  OUTLINED_FUNCTION_3_86();
  sub_26A798C90(v2 + v23, v20, v24);
  v25 = *(v2 + v21[9]);
  v26 = *(v2 + v21[8]);
  v27 = *(v2 + 192);
  v28 = *(v2 + 240);
  if (*(v2 + 248) == 1)
  {
  }

  else
  {

    sub_26A4C24D0(v28, 0);
    sub_26A851EA8();
    v37 = v11;
    v29 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v28, 0);
    (*(v38 + 8))(v16, v37);
    v28 = v40;
  }

  v30 = *(v6 + 16);
  v30(v10, a1, v4);
  v31 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  OUTLINED_FUNCTION_11_50(v31[12]);
  v33 = (a2 + *(v32 + 52));
  *v33 = 0;
  v33[1] = 0;
  *(a2 + *(v32 + 56)) = MEMORY[0x277D84F90];
  a2[1] = v22;
  OUTLINED_FUNCTION_3_86();
  sub_26A798C90(v20, a2 + v34, v35);
  *(a2 + v31[7]) = v25;
  *(a2 + v31[8]) = v27;
  *(a2 + v31[9]) = v26;
  *(a2 + v31[10]) = v28;
  v30(a2 + v31[11], v10, v4);
  if (qword_2803A8B30 != -1)
  {
    swift_once();
  }

  if (qword_2803A8B38 != -1)
  {
    swift_once();
  }

  (*(v6 + 8))(v10, v4);
  result = sub_26A798CF0(v20, type metadata accessor for TableRowViewModel);
  *a2 = 0x3FD0000000000000;
  return result;
}

uint64_t sub_26A79899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A84F218();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = type metadata accessor for TableRowHeightPreCalculationLayout.Cache(0);
  v12 = v11[11];
  (*(v6 + 16))(v10, a1 + v12, v4);
  OUTLINED_FUNCTION_2_96();
  sub_26A798C28(v13, v14);
  v15 = sub_26A851758();
  result = (*(v6 + 8))(v10, v4);
  if ((v15 & 1) == 0)
  {
    (*(v6 + 24))(a1 + v12, a2, v4);
    OUTLINED_FUNCTION_11_50(v11[12]);
    v17 = v11[14];

    *(a1 + v17) = MEMORY[0x277D84F90];
  }

  return result;
}

void (*sub_26A798B6C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A798C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A798C90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A798CF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_26A798D70()
{
  sub_26A798F04(319, &qword_2803B1100, type metadata accessor for TableCell, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TableRowViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VRXIdiom();
      if (v2 <= 0x3F)
      {
        sub_26A84F218();
        if (v3 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803B35D8, MEMORY[0x277CDFB90], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGSize();
            if (v5 <= 0x3F)
            {
              sub_26A798F04(319, &qword_2803B35E0, type metadata accessor for CGRect, MEMORY[0x277D83940]);
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

void sub_26A798F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_75()
{
  v2 = *(v0 - 296);

  return sub_26A798CF0(v2, type metadata accessor for TableCell);
}

void OUTLINED_FUNCTION_11_50(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 24) = 256;
  *(v2 + 16) = 0;
}

uint64_t sub_26A79904C(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_26A851B18();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

uint64_t sub_26A7990BC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_26A851B18();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_26A875620)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A799168(uint64_t result, char a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    if (a3)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
      result = sub_26A851B18();
      *(result + 16) = v3;
      v6 = 32;
      do
      {
        v7 = result + v6;
        *v7 = v5;
        *(v7 + 8) = a2 & 1;
        v6 += 16;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A7991F4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      v3 = result;
      result = sub_26A851B18();
      *(result + 16) = v2;
      v4 = 32;
      do
      {
        v5 = (result + v4);
        v6 = v3[1];
        *v5 = *v3;
        v5[1] = v6;
        *(v5 + 26) = *(v3 + 26);
        v4 += 48;
        --v2;
      }

      while (v2);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26A799268(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    type metadata accessor for SFButtonItemStyle();
    result = sub_26A851B18();
    v4 = 0;
    v5 = (result + 44);
    *(result + 16) = a2;
    v6 = vdupq_n_s64(a2 - 1);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_26A875620)));
      if (vuzp1_s16(v8, *v6.i8).u8[0])
      {
        *(v5 - 3) = v3;
      }

      if (vuzp1_s16(v8, *&v6).i8[2])
      {
        *(v5 - 2) = v3;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_26A8841E0)))).i32[1])
      {
        *(v5 - 1) = v3;
        *v5 = v3;
      }

      v4 += 4;
      v5 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void FactItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:text5:thumbnail:thumbnail2:buttonItemsAreBottom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_28_0();
  v91 = v23;
  v93 = v25;
  v94 = v24;
  v92 = v26;
  v27 = type metadata accessor for FactItemButtonView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_225(KeyPath);
  v90 = v31;
  v33 = (v31 + v27[5]);
  if (qword_2803A8A80 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
    __swift_project_value_buffer(v34, qword_2803D1A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    sub_26A7A501C();
    sub_26A6AEE74(v107);
    memcpy(v33, v107, 0xBFuLL);
    OUTLINED_FUNCTION_12_48();
    sub_26A7A46D4();
    v35 = v27[6];
    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    OUTLINED_FUNCTION_24_9(&v108);
    OUTLINED_FUNCTION_24_9(&v106[368]);
    sub_26A7A501C();
    sub_26A6AEE74(v106);
    memcpy(v109, &v106[400], sizeof(v109));
    memcpy(&v106[192], &v106[400], 0xB0uLL);
    memcpy((v90 + v35), v106, 0x240uLL);
    v36 = (v90 + v27[7]);
    sub_26A54DFFC(v109, v105);
    if (qword_28157E660 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v110 = xmmword_281588758[0];
    v111 = unk_281588768;
    v112 = xmmword_281588778;
    v113 = xmmword_281588788;
    v114 = xmmword_281588758[0];
    v115 = unk_281588768;
    v116 = xmmword_281588778;
    v117 = xmmword_281588788;
    v95 = xmmword_281588778;
    v88 = xmmword_281588788;
    sub_26A7A501C();
    sub_26A6AEE74(v105);
    memcpy(v36, v105, 0xC0uLL);
    v36[12] = v95;
    v36[13] = v88;
    v37 = v115;
    v36[14] = v114;
    v36[15] = v37;
    v38 = v117;
    v36[16] = v116;
    v36[17] = v38;
    v39 = v90 + v27[8];
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v40 = v27[9];
    *(v90 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v41 = v27[10];
    *(v90 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    sub_26A50429C(v92, &v100);
    OUTLINED_FUNCTION_80();
    v42 = swift_allocObject();
    sub_26A4C2314(&v100, v42 + 16);
    v43 = (v90 + v27[12]);
    *v43 = sub_26A7A564C;
    v43[1] = v42;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v44);
    v45 = (v90 + v27[13]);
    *v45 = sub_26A7A5648;
    v45[1] = v46;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v47);
    v48 = (v90 + v27[14]);
    *v48 = sub_26A7A5648;
    v48[1] = v49;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v50);
    v51 = (v90 + v27[15]);
    *v51 = sub_26A7A5648;
    v51[1] = v52;
    OUTLINED_FUNCTION_85_1();
    OUTLINED_FUNCTION_80();
    v53 = swift_allocObject();
    OUTLINED_FUNCTION_29_19(v53);
    v54 = (v90 + v27[16]);
    *v54 = sub_26A7A5648;
    v54[1] = v55;
    sub_26A7A501C();
    if (*(&v101 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      v56 = OUTLINED_FUNCTION_13_3();
      v57(v56);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      v58 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A505D1C();
      OUTLINED_FUNCTION_2_0();
      *(&v100 + 1) = 0;
      *&v101 = 0;
    }

    v59 = OUTLINED_FUNCTION_79_1(v58);
    OUTLINED_FUNCTION_78_2(v59, v60, v90 + v27[17]);
    sub_26A7A501C();
    if (*(&v101 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
      v61 = OUTLINED_FUNCTION_13_3();
      v62(v61);
      __swift_destroy_boxed_opaque_existential_1(&v100);
      v63 = &protocol witness table for AnyView;
    }

    else
    {
      sub_26A505D1C();
      OUTLINED_FUNCTION_2_0();
      *(&v100 + 1) = 0;
      *&v101 = 0;
    }

    v64 = OUTLINED_FUNCTION_79_1(v63);
    OUTLINED_FUNCTION_78_2(v64, v65, v90 + v27[18]);
    v87 = v27;
    if (a23)
    {
      v66 = *(v94 + 24) || *(v93 + 24) != 0;
      v89 = v66;
    }

    else
    {
      v89 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7950);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_26A857110;
    sub_26A50429C(v91, v67 + 32);
    sub_26A7A501C();
    sub_26A7A501C();
    v68 = MEMORY[0x277D84F90];
    v69 = 32;
    v70 = MEMORY[0x277D84F90];
    do
    {
      sub_26A7A501C();
      v103[0] = v100;
      v103[1] = v101;
      v104 = v102;
      if (*(&v101 + 1))
      {
        sub_26A4C2314(v103, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2040();
          v70 = v72;
        }

        v71 = *(v70 + 16);
        if (v71 >= *(v70 + 24) >> 1)
        {
          sub_26A7A2040();
          v70 = v73;
        }

        *(v70 + 16) = v71 + 1;
        sub_26A4C2314(v97, v70 + 40 * v71 + 32);
      }

      else
      {
        sub_26A505D1C();
      }

      v69 += 40;
    }

    while (v69 != 152);
    swift_setDeallocating();
    sub_26A7A0D74(&qword_2803A91B8);
    v74 = *(v70 + 16);
    if (!v74)
    {
      break;
    }

    *&v103[0] = v68;
    v33 = v103;
    sub_26A7DCDCC(0, v74, 0);
    v27 = 0;
    v75 = *&v103[0];
    v96 = *(v70 + 16);
    v76 = v70 + 32;
    while (v96 != v27)
    {
      if (v27 >= *(v70 + 16))
      {
        goto LABEL_38;
      }

      sub_26A50429C(v76, &v100 + 8);
      *&v97[0] = v27;
      sub_26A4C2314((&v100 + 8), v97 + 8);
      v77 = v98;
      v78 = v99;
      v33 = __swift_project_boxed_opaque_existential_1(v97 + 1, v98);
      v79 = (*(v78 + 8))(v77, v78);
      sub_26A505D1C();
      *&v103[0] = v75;
      v81 = *(v75 + 16);
      v80 = *(v75 + 24);
      if (v81 >= v80 >> 1)
      {
        v33 = v103;
        sub_26A7DCDCC(v80 > 1, v81 + 1, 1);
        v75 = *&v103[0];
      }

      *(v75 + 16) = v81 + 1;
      v82 = v75 + 24 * v81;
      *(v82 + 32) = v79;
      *(v82 + 40) = 0;
      *(v82 + 48) = v27;
      v27 = (v27 + 1);
      v76 += 40;
      if (v74 == v27)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_18_1();
  }

  v75 = MEMORY[0x277D84F90];
LABEL_36:
  type metadata accessor for FactItemButtonViewModel(0);
  swift_allocObject();
  sub_26A79A938(v75, 0, 0, v89);
  v83 = (v90 + v87[11]);
  OUTLINED_FUNCTION_13_44();
  sub_26A7A3CA0();
  OUTLINED_FUNCTION_183();
  v84 = sub_26A84F258();
  v86 = v85;
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_90_1();
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  *v83 = v84;
  v83[1] = v86;
  sub_26A7A4F78();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_27_0();
}

void FactItemButtonView.init(text1:buttonItem1:buttonItem2:buttonItem3:text2:text3:text4:text5:thumbnail:thumbnail2:buttonItemsAreBottom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  OUTLINED_FUNCTION_28_0();
  v198 = v24;
  v204 = v23;
  v210 = v26;
  v216 = v25;
  v28 = v27;
  v30 = v29;
  v222 = v31;
  v180 = v32;
  v34 = v33;
  *v33 = swift_getKeyPath();
  *(v34 + 9) = 0;
  swift_unknownObjectWeakInit();
  v35 = type metadata accessor for FactItemButtonView(0);
  v187 = v34;
  v36 = (v34 + *(v35 + 20));
  if (qword_2803A8A80 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_18_1();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  __swift_project_value_buffer(v37, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  sub_26A7A501C();
  sub_26A6AEE74(__src);
  memcpy(v36, __src, 0xBFuLL);
  OUTLINED_FUNCTION_12_48();
  sub_26A7A46D4();
  v38 = *(v35 + 24);
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy(&v232[368], qword_2803D1B00, 0xD0uLL);
  sub_26A7A501C();
  sub_26A6AEE74(v232);
  OUTLINED_FUNCTION_87_1(v235);
  OUTLINED_FUNCTION_87_1(&v232[192]);
  memcpy(v236, v232, sizeof(v236));
  v39 = v187;
  memcpy((v187 + v38), v236, 0x240uLL);
  v40 = (v187 + *(v35 + 28));
  sub_26A54DFFC(v235, v232);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v150 = OUTLINED_FUNCTION_54_5(xmmword_281588758);
  v162 = v41;
  sub_26A7A501C();
  sub_26A6AEE74(v232);
  memcpy(v40, v232, 0xC0uLL);
  v40[12] = v162;
  v40[13] = v150;
  v42 = v238;
  v40[14] = v237;
  v40[15] = v42;
  v43 = v240;
  v40[16] = v239;
  v40[17] = v43;
  v44 = v187 + *(v35 + 32);
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = *(v35 + 36);
  *(v187 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v46 = *(v35 + 40);
  *(v187 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A50429C(v216, &v228);
  OUTLINED_FUNCTION_80();
  v47 = swift_allocObject();
  sub_26A4C2314(&v228, v47 + 16);
  v48 = (v187 + *(v35 + 48));
  *v48 = sub_26A7A3BEC;
  v48[1] = v47;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v49, v50, v51, v52, v53, v54, v55, v56, v126, v132, v138, v144, v150.n128_i64[0], v150.n128_i64[1], v162, *(&v162 + 1), v174, v180, v187, a21, v198, v204, v210, v216, v222, v57, v228, v229);
  v58 = (v39 + *(v35 + 52));
  *v58 = sub_26A7A3C08;
  v58[1] = v59;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v60, v61, v62, v63, v64, v65, v66, v67, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v188, v193, v199, v205, v211, v217, v223, v68, v228, v229);
  v69 = (v39 + *(v35 + 56));
  *v69 = sub_26A7A5648;
  v69[1] = v70;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v71 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v71, v72, v73, v74, v75, v76, v77, v78, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v189, v194, v200, v206, v212, v218, v224, v79, v228, v229);
  v80 = (v39 + *(v35 + 60));
  *v80 = sub_26A7A5648;
  v80[1] = v81;
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_80();
  v82 = swift_allocObject();
  OUTLINED_FUNCTION_16_31(v82, v83, v84, v85, v86, v87, v88, v89, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v190, v195, v201, v207, v213, v219, v225, v90, v228, v229);
  v91 = (v39 + *(v35 + 64));
  *v91 = sub_26A7A5648;
  v91[1] = v92;
  sub_26A7A501C();
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v93 = OUTLINED_FUNCTION_61_4();
    v94(v93);
    __swift_destroy_boxed_opaque_existential_1(&v228);
    v95 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_2_0();
    *(&v228 + 1) = 0;
    v229 = 0;
  }

  v96 = OUTLINED_FUNCTION_80_2(v95, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v191, v196, v202, v208, v214, v220, v226, v228, *(&v228 + 1), v229, v230, v231);
  OUTLINED_FUNCTION_78_2(v96, v97, v39 + *(v35 + 68));
  sub_26A7A501C();
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v98 = OUTLINED_FUNCTION_61_4();
    v99(v98);
    __swift_destroy_boxed_opaque_existential_1(&v228);
    v100 = &protocol witness table for AnyView;
  }

  else
  {
    sub_26A505D1C();
    OUTLINED_FUNCTION_2_0();
    *(&v228 + 1) = 0;
    v229 = 0;
  }

  v101 = OUTLINED_FUNCTION_80_2(v100, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v192, v197, v203, v209, v215, v221, v227, v228, *(&v228 + 1), v229, v230, v231);
  OUTLINED_FUNCTION_78_2(v101, v102, v39 + *(v35 + 72));
  v138 = a22;
  v144 = v35;
  if (a23)
  {
    v103 = v222;
    v168 = (v222 | v30) != 0;
  }

  else
  {
    v168 = 0;
    v103 = v222;
  }

  v36 = v186;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7968);
  OUTLINED_FUNCTION_80();
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_26A857110;
  *(v104 + 32) = v186;
  *(v104 + 40) = v103;
  *(v104 + 48) = v30;
  v105 = MEMORY[0x277D84F90];
  *&v228 = MEMORY[0x277D84F90];
  v106 = v30;
  v180 = v186;
  v156 = v103;
  v107 = 0;
  v108 = v105;
  while (v107 != 3)
  {
    if (v107 > 2)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v109 = *(v104 + 8 * v107++ + 32);
    if (v109)
    {
      v30 = v109;
      MEMORY[0x26D663CE0]();
      if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26A851B08();
      }

      v36 = &v228;
      sub_26A851B28();
      v108 = v228;
    }
  }

  swift_setDeallocating();
  sub_26A7A0D74(&qword_2803B7CE0);
  v110 = sub_26A73670C(v108);
  v132 = v106;
  if (v110)
  {
    v111 = v110;
    *&v228 = v105;
    sub_26A7DCDCC(0, v110 & ~(v110 >> 63), 0);
    if ((v111 & 0x8000000000000000) == 0)
    {
      v126 = v28;
      v36 = v228;
      v112 = sub_26A73670C(v108);
      v113 = 0;
      v222 = v108 & 0xFFFFFFFFFFFFFF8;
      v28 = v112 & ~(v112 >> 63);
      while (v28 != v113)
      {
        if ((v108 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x26D6644E0](v113, v108);
        }

        else
        {
          if (v113 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v114 = *(v108 + 8 * v113 + 32);
        }

        v30 = v114;
        *&v228 = v36;
        v35 = v36[2];
        v115 = v36[3];
        if (v35 >= v115 >> 1)
        {
          sub_26A7DCDCC(v115 > 1, v35 + 1, 1);
          v36 = v228;
        }

        v36[2] = v35 + 1;
        v116 = &v36[3 * v35];
        v116[4] = v30;
        *(v116 + 40) = 1;
        v116[6] = v113;
        if (v113 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_42;
        }

        if (v111 == ++v113)
        {

          v117 = v216;
          v39 = v187;
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
    v117 = v216;
LABEL_36:
    if (v168)
    {
      v118 = 4;
    }

    else
    {
      v118 = 0;
    }

    sub_26A799268(v118, v36[2]);
    v119 = OUTLINED_FUNCTION_37_15();
    type metadata accessor for FactItemButtonViewModel(v119);
    swift_allocObject();
    v120 = OUTLINED_FUNCTION_183();
    sub_26A79A938(v120, v121, 0, v168);
    v122 = (v39 + *(v144 + 44));
    OUTLINED_FUNCTION_13_44();
    sub_26A7A3CA0();
    v123 = sub_26A84F258();
    v125 = v124;

    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_67_2();
    __swift_destroy_boxed_opaque_existential_1(v117);
    *v122 = v123;
    v122[1] = v125;
    OUTLINED_FUNCTION_27_0();
  }
}

BOOL sub_26A79A65C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0);
      return sub_26A851FF8() & 1;
    }

    return 1;
  }

  return (a4 & 1) != 0;
}

BOOL sub_26A79A6E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      sub_26A4EC5B0(0, &qword_2803AC8F0);
      if ((sub_26A851FF8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if ((a5 & 1) == 0)
  {
    return 0;
  }

  return a3 == a6;
}

uint64_t sub_26A79A7A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183();
  sub_26A84EC18();

  return v1;
}

double sub_26A79A820()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A79A894()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A79A938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;

  v12 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonContentMaxWidth;
  v15[1] = 0;
  sub_26A84EBD8();
  (*(v9 + 32))(v4 + v12, v11, v8);
  swift_beginAccess();
  v15[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8);
  sub_26A84EBD8();
  swift_endAccess();
  if (a3)
  {
  }

  else
  {
    v13 = *(a1 + 16);

    a3 = sub_26A79904C(0, v13);
  }

  swift_beginAccess();
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79D8);
  sub_26A84EBD8();
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) = a4 & 1;
  return v4;
}

uint64_t sub_26A79AB28()
{
  result = sub_26A79A768();
  if (*(result + 16))
  {
    v1 = *(result + 32);
    v2 = *(result + 40);
    sub_26A7A4494(v1, v2);

    sub_26A73E014(v1, v2);
    return v2 ^ 1u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A79AB8C()
{
  v1 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttons;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonHiddenStates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AA8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel__buttonContentMaxWidth;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC778);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_26A79AC90()
{
  v0 = sub_26A79AB8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A79ACE4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemButtonView(0) + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A79AE38()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for FactItemButtonView(0);
  sub_26A7A501C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A7A4FCC();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A79B020@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for FactItemButtonView(0);
  sub_26A7A501C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A79B228@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FactItemButtonViewModel(0);
  result = sub_26A84EB88();
  *a1 = result;
  return result;
}

void sub_26A79B268()
{
  OUTLINED_FUNCTION_28_0();
  v129 = v0;
  v2 = v1;
  v139 = type metadata accessor for ButtonElementView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v138 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v137 = &v119 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D88);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v135 = (v9 - v10);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  v13 = sub_26A84E158();
  OUTLINED_FUNCTION_15();
  v142 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v123 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF538);
  v19 = OUTLINED_FUNCTION_2_5(v18);
  v122 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v143 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v121 = &v119 - v28;
  sub_26A84BBB8();
  OUTLINED_FUNCTION_15();
  v124 = v30;
  v125 = v29;
  MEMORY[0x28223BE20](v29);
  v144 = v31;
  v120 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_225(KeyPath);
  v33 = type metadata accessor for FactItemButtonView(0);
  v34 = v33[5];
  v128 = v2;
  v35 = (v2 + v34);
  if (qword_2803A8A80 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v140 = v13;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
    __swift_project_value_buffer(v36, qword_2803D1A70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    sub_26A7A501C();
    sub_26A6AEE74(v148);
    memcpy(v35, v148, 0xBFuLL);
    OUTLINED_FUNCTION_12_48();
    sub_26A7A46D4();
    v37 = v33[6];
    if (qword_2803A8AE8 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v132 = v23;
    OUTLINED_FUNCTION_24_9(&v149);
    OUTLINED_FUNCTION_24_9(&v147[368]);
    sub_26A7A501C();
    sub_26A6AEE74(v147);
    OUTLINED_FUNCTION_87_1(v150);
    OUTLINED_FUNCTION_87_1(&v147[192]);
    v38 = v128;
    memcpy((v128 + v37), v147, 0x240uLL);
    v39 = (v38 + v33[7]);
    sub_26A54DFFC(v150, v146);
    v40 = v33;
    if (qword_28157E660 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v41 = OUTLINED_FUNCTION_54_5(xmmword_281588758);
    v141 = v42;
    v133 = v41;
    sub_26A7A501C();
    sub_26A6AEE74(v146);
    memcpy(v39, v146, 0xC0uLL);
    v43 = v133;
    v39[12] = v141;
    v39[13] = v43;
    v44 = v150[16];
    v39[14] = v150[15];
    v39[15] = v44;
    v45 = v150[18];
    v39[16] = v150[17];
    v39[17] = v45;
    v46 = v38 + v33[8];
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    v47 = v33[9];
    *(v38 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v48 = v33[10];
    *(v38 + v48) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v50 = v124;
    v49 = v125;
    v51 = v124 + 16;
    *&v141 = *(v124 + 16);
    v52 = v120;
    (v141)(v120, v129, v125);
    v130 = v51;
    v126 = *(v50 + 80);
    v53 = (v126 + 16) & ~v126;
    v54 = swift_allocObject();
    v133.n128_u64[0] = *(v50 + 32);
    v131 = v50 + 32;
    (v133.n128_u64[0])(v54 + v53, v52, v49);
    v127 = v40;
    v55 = OUTLINED_FUNCTION_71_3((v38 + v40[12]));
    v56 = v141;
    (v141)(v55, v129, v49);
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_31_18(v57);
    v59 = v133.n128_u64[0];
    (v133.n128_u64[0])(v58);
    v60 = v40[13];
    v61 = v129;
    v62 = OUTLINED_FUNCTION_71_3((v128 + v60));
    v56(v62, v61, v49);
    v63 = swift_allocObject();
    v64 = OUTLINED_FUNCTION_31_18(v63);
    v59(v64);
    v65 = v128;
    v66 = OUTLINED_FUNCTION_71_3((v128 + v127[14]));
    (v141)(v66, v61, v49);
    v67 = swift_allocObject();
    v68 = OUTLINED_FUNCTION_31_18(v67);
    (v133.n128_u64[0])(v68);
    v69 = v127;
    v70 = OUTLINED_FUNCTION_71_3((v65 + v127[15]));
    (v141)(v70, v129, v49);
    v71 = swift_allocObject();
    v72 = OUTLINED_FUNCTION_31_18(v71);
    (v133.n128_u64[0])(v72);
    v73 = (v128 + v69[16]);
    *v73 = sub_26A7A5548;
    v73[1] = v54;
    v74 = v121;
    sub_26A84BBA8();
    v75 = sub_26A84BD28();
    if (__swift_getEnumTagSinglePayload(v74, 1, v75) == 1)
    {
      sub_26A505D1C();
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v76 = VisualProperty.asAnyView()();
      v78 = sub_26A84BD18();
      (*(*(v75 - 8) + 8))(v74, v75);
      v77 = v78 & 1;
    }

    v13 = v140;
    v79 = v132;
    v81 = v127;
    v80 = v128;
    v82 = v128 + v127[17];
    *v82 = v76;
    *(v82 + 8) = v77;
    v83 = v80 + v81[18];
    *v83 = 0;
    *(v83 + 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D90);
    v84 = *(v122 + 72);
    v85 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_26A857110;
    v131 = v86;
    v87 = v86 + v85;
    sub_26A84BB78();
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v13);
    sub_26A84BB88();
    *&v141 = v84;
    sub_26A84BB98();
    v144 = (v142 + 32);
    v88 = MEMORY[0x277D84F90];
    v89 = 3;
    v90 = v123;
    do
    {
      v33 = v143;
      sub_26A7A501C();
      sub_26A7A4FCC();
      if (__swift_getEnumTagSinglePayload(v79, 1, v13) == 1)
      {
        sub_26A505D1C();
      }

      else
      {
        v33 = *v144;
        (*v144)(v90, v79, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_26A7A153C(0, *(v88 + 16) + 1, 1, v88);
        }

        v92 = *(v88 + 16);
        v91 = *(v88 + 24);
        v93 = v88;
        if (v92 >= v91 >> 1)
        {
          v93 = sub_26A7A153C(v91 > 1, v92 + 1, 1, v88);
        }

        *(v93 + 16) = v92 + 1;
        v88 = v93;
        OUTLINED_FUNCTION_63_2();
        (v33)(v94 + v95 + *(v96 + 72) * v92, v90, v13);
        v79 = v132;
      }

      v87 += v141;
      --v89;
    }

    while (v89);
    swift_setDeallocating();
    sub_26A7A0C04(&qword_2803AF538);
    v35 = *(v88 + 16);
    if (!v35)
    {
      break;
    }

    v145 = MEMORY[0x277D84F90];
    sub_26A7DCDCC(0, v35, 0);
    v23 = 0;
    v97 = v145;
    OUTLINED_FUNCTION_63_2();
    v131 = v88 + v98;
    v132 = v35;
    *&v141 = *(v88 + 16);
    v130 = v99 + 16;
    v133.n128_u64[0] = v88;
    while (v141 != v23)
    {
      if (v23 >= *(v88 + 16))
      {
        goto LABEL_29;
      }

      v100 = v136;
      v101 = *(v136 + 48);
      v143 = v97;
      v102 = v142;
      v103 = *(v142 + 16);
      v104 = v134;
      v103(&v134[v101], v131 + *(v142 + 72) * v23, v13);
      v105 = v135;
      *v135 = v23;
      v106 = *(v100 + 48);
      v107 = *(v102 + 32);
      v108 = v105;
      v107(v105 + v106, &v104[v101], v13);
      v109 = v139;
      v33 = v137;
      v103(&v137[*(v139 + 20)], v108 + v106, v13);
      *v33 = swift_getKeyPath();
      *(v33 + 8) = 0;
      v110 = (v33 + *(v109 + 24));
      *v110 = 0;
      v110[1] = 0;
      sub_26A7A46D4();
      sub_26A7A3CA0();
      v111 = sub_26A851248();
      sub_26A7A55D8();
      sub_26A505D1C();
      v145 = v143;
      v97 = v143;
      v113 = *(v143 + 2);
      v112 = *(v143 + 3);
      if (v113 >= v112 >> 1)
      {
        sub_26A7DCDCC(v112 > 1, v113 + 1, 1);
        v97 = v145;
      }

      *(v97 + 16) = v113 + 1;
      v114 = v97 + 24 * v113;
      *(v114 + 32) = v111;
      *(v114 + 40) = 0;
      *(v114 + 48) = v23++;
      v35 = v132;
      v88 = v133.n128_u64[0];
      v13 = v140;
      if (v132 == v23)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    OUTLINED_FUNCTION_18_1();
  }

  v97 = MEMORY[0x277D84F90];
LABEL_27:
  type metadata accessor for FactItemButtonViewModel(0);
  swift_allocObject();
  sub_26A79A938(v97, 0, 0, 0);
  v115 = (v128 + v127[11]);
  OUTLINED_FUNCTION_13_44();
  sub_26A7A3CA0();
  OUTLINED_FUNCTION_183();
  v116 = sub_26A84F258();
  v118 = v117;
  (*(v124 + 8))(v129, v125);
  *v115 = v116;
  v115[1] = v118;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A79BFA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84BB48();
  v6 = sub_26A6E3188(a1);
  return (*(v3 + 8))(v5, v2, v6);
}

void sub_26A79C08C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_23();
  v2();
  v14 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v31);
    v15 = v4;
  }

  else
  {
    sub_26A84B858();
    v16 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
    v28 = v17;
    v29 = v16;
    v19 = v18;
    v21 = v20;
    (*(v7 + 8))(v11, v5);
    v30 = v4;
    v22 = v19 & 1;
    v23 = TextProperty.asAnyView()();
    v24 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v35 = 0;
    v26 = swift_getKeyPath();
    v34 = 0;
    v27 = swift_getKeyPath();
    v33 = 0;
    v32 = 1;
    (*(*(v14 - 8) + 8))(v0, v14);
    v31[0] = KeyPath;
    LOBYTE(v31[1]) = v35;
    v31[2] = v26;
    LOBYTE(v31[3]) = v34;
    v31[4] = v27;
    LOBYTE(v31[5]) = v33;
    v31[6] = v29;
    v31[7] = v28;
    v31[8] = v22;
    v31[9] = v21;
    v31[10] = v23;
    LOBYTE(v31[11]) = v24 & 1;
    memset(&v31[12], 0, 128);
    LOBYTE(v31[28]) = v32;
    memset(&v31[29], 0, 18);
    nullsub_1(v31);
    v15 = v30;
  }

  memcpy(v15, v31, 0xFAuLL);
  OUTLINED_FUNCTION_27_0();
}

void *sub_26A79C328@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  sub_26A84BB58();
  v5 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v8);
  }

  else
  {
    v6 = sub_26A6E3398(v9);
    (*(*(v5 - 8) + 8))(v4, v5, v6);
    memcpy(v8, v9, 0xFAuLL);
    nullsub_1(v8);
  }

  return memcpy(a1, v8, 0xFAuLL);
}

void *sub_26A79C478@<X0>(void *a1@<X8>)
{
  sub_26A7A501C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = OUTLINED_FUNCTION_13_3();
    v3(v2);
    nullsub_1(__src);
    memcpy(a1, __src, 0xFAuLL);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__src);
    return memcpy(a1, __src, 0xFAuLL);
  }
}

uint64_t sub_26A79C554(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = OUTLINED_FUNCTION_13_3();
  return v3(v2);
}

uint64_t FactItemButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_23();
  sub_26A79AE38();
  sub_26A79C848(v21);
  sub_26A79ACE4();
  sub_26A79B020(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v20 = v1;
  sub_26A4CF1E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7970) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7978) + 36)) = 42;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v16 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7980);
  v18 = a1 + *(result + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v16;
  return result;
}

void sub_26A79C848(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v4 = sub_26A79ACE4(), sub_26A61B05C(v4, &unk_287B131A0)))
  {
    sub_26A4EC5B0(0, &qword_28157D880);
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v5 = sub_26A852598();

        if ((v5 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    v6 = type metadata accessor for FactItemButtonView(0);
    v7 = v2 + *(v6 + 20);
    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28);
    v9 = type metadata accessor for FactItemConstants();
    v10 = 0;
    v11 = v2 + *(v6 + 28);
    v12.f64[0] = *(v11 + 192) + -2.0;
    v13.f64[0] = *(v11 + 208) + -2.0;
    v12.f64[1] = *(v8 + *(v9 + 60));
    v13.f64[1] = v12.f64[1];
  }

  else
  {
LABEL_9:
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v12 = 0uLL;
    if (byte_2803B0440 == 1)
    {
      v14 = sub_26A79ACE4();
      if (sub_26A61B05C(v14, &unk_287B13090))
      {
        v15 = type metadata accessor for FactItemButtonView(0);
        v10 = 0;
        v16 = (v1 + *(v15 + 28));
        __asm { FMOV            V0.2D, #10.0 }

        v12 = vaddq_f64(v16[12], _Q0);
        v13 = vaddq_f64(v16[13], _Q0);
      }

      else
      {
        v10 = 1;
        v13 = 0uLL;
        v12 = 0uLL;
      }
    }

    else
    {
      v10 = 1;
      v13 = 0uLL;
    }
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
}

uint64_t sub_26A79CAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97C0);
  MEMORY[0x28223BE20](v41);
  v33 = (v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v35 = v32 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97B0);
  MEMORY[0x28223BE20](v38);
  v34 = (v32 - v6);
  v7 = sub_26A84F3A8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B00);
  MEMORY[0x28223BE20](v39);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B08);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9790);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97A0);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = a1;
  v16 = sub_26A79ACE4();
  if (sub_26A61B05C(v16, &unk_287B13068))
  {
    *v14 = sub_26A84FBF8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B20);
    sub_26A79D3DC(a1, &v14[*(v17 + 44)]);
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A4D43E8();
    sub_26A506A30();
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    v32[1] = v12;
    v32[2] = v11;
    sub_26A79B020(v9);
    v18 = sub_26A84F388();
    (*(v36 + 8))(v9, v37);
    if (v18)
    {
      v19 = sub_26A84FC08();
      v20 = v15 + *(type metadata accessor for FactItemButtonView(0) + 20);
      v21 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
      v22 = v34;
      *v34 = v19;
      v22[1] = v21;
      *(v22 + 16) = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B18);
      sub_26A79E124(0, v22 + *(v23 + 44));
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A506A30();
      sub_26A506A30();
      sub_26A84FDF8();
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A4D43E8();
      sub_26A506A30();
      sub_26A84FDF8();
      sub_26A505D1C();
    }

    else
    {
      v24 = type metadata accessor for FactItemButtonView(0);
      if (*(v15 + *(v24 + 68)))
      {
        if (qword_28157FCB0 != -1)
        {
          swift_once();
        }

        v25 = qword_2815889E0;
      }

      else
      {
        v25 = sub_26A84FA78();
      }

      v26 = v15 + *(v24 + 20);
      v27 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 32);
      v28 = v33;
      *v33 = v25;
      v28[1] = v27;
      *(v28 + 16) = 0;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B10) + 44);
      v30 = sub_26A79DF68();
      sub_26A79E124(v30 & 1, v28 + v29);
      sub_26A7A4FCC();
      sub_26A7A501C();
      swift_storeEnumTagMultiPayload();
      sub_26A4D43E8();
      sub_26A506A30();
      sub_26A84FDF8();
    }
  }

  return sub_26A505D1C();
}

uint64_t sub_26A79D290()
{
  v0 = sub_26A79ACE4();
  if (!sub_26A61B05C(v0, &unk_287B131A0))
  {
    return 0;
  }

  sub_26A4EC5B0(0, &qword_28157D880);
  v1 = sub_26A63CD18();
  v2 = 0;
  switch(v1)
  {
    case 3:

      goto LABEL_5;
    case 4:
      return v2;
    default:
      v3 = sub_26A852598();

      if ((v3 & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      if (qword_2803A8BF0 != -1)
      {
        swift_once();
      }

      v2 = byte_2803B0440;
      break;
  }

  return v2;
}

uint64_t sub_26A79D3DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5 - 8];
  v7 = sub_26A84B058();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *(a1 + *(type metadata accessor for FactItemButtonView(0) + 48));
  v12 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v12, v10);
  v11(v18, v10);
  (*(v8 + 8))(v10, v7);
  v13 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v17, v18, 0xFAuLL);
  sub_26A79D680(v6);
  sub_26A7A501C();
  memcpy(v19, v17, 0x100uLL);
  v19[32] = KeyPath;
  v19[33] = v13;
  memcpy(v16, v19, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B30);
  sub_26A7A501C();
  sub_26A7A501C();
  sub_26A505D1C();
  sub_26A505D1C();
  memcpy(v20, v17, sizeof(v20));
  v21 = KeyPath;
  v22 = v13;
  return sub_26A505D1C();
}

uint64_t sub_26A79D680@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B38);
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B40);
  MEMORY[0x28223BE20](v50);
  v41 = &v38 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B48);
  MEMORY[0x28223BE20](v47);
  v49 = &v38 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B50);
  MEMORY[0x28223BE20](v48);
  v42 = &v38 - v6;
  v7 = sub_26A84B058();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B58);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B60);
  MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v44 = &v38 - v23;
  v24 = *(v1 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  v25 = *(v24 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  sub_26A79F8CC(v2, *(v24 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom), v16);
  sub_26A79AB28();
  v52 = v2;
  v53 = v25;
  v46 = v19;
  sub_26A607670();
  sub_26A505D1C();
  v43 = v25;
  if ((v25 & 1) != 0 || (v26 = sub_26A79ACE4(), VRXIdiom.idiom.getter(v26, v13), (*(v8 + 104))(v10, *MEMORY[0x277D62A20], v7), sub_26A7A3CA0(), sub_26A851A48(), sub_26A851A48(), v27 = *(v8 + 8), v27(v10, v7), v27(v13, v7), v58[0] == v56[0]))
  {
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    if (qword_2803A8AE8 != -1)
    {
      swift_once();
    }

    memcpy(v56, qword_2803D1B00, sizeof(v56));
    memcpy(&v55[368], qword_2803D1B00, 0xD0uLL);
    sub_26A7A501C();
    sub_26A6AEE74(v55);
    memcpy(v57, &v55[400], sizeof(v57));
    memcpy(&v55[192], &v55[400], 0xB0uLL);
    v60 = 0;
    v59 = 0;
    memcpy(v58 + 7, v55, 0x240uLL);
    v30 = v42;
    sub_26A7A501C();
    v31 = &v30[*(v48 + 36)];
    *v31 = KeyPath;
    v31[8] = v60;
    *(v31 + 2) = v29;
    v31[24] = v59;
    memcpy(v31 + 25, v58, 0x247uLL);
    v31[608] = 1;
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A54DFFC(v57, &v54);
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &unk_26A884758, sub_26A7A4648);
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  else
  {
    sub_26A7A066C();
    sub_26A851468();
    sub_26A84F628();
    v32 = v40;
    sub_26A7A501C();
    memcpy(&v32[*(v39 + 36)], v58, 0x70uLL);
    v33 = v41;
    sub_26A7A4FCC();
    *&v33[*(v50 + 36)] = 1;
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A7A44AC();
    sub_26A7A506C(&qword_2803B7B78, &qword_2803B7B40, &unk_26A884758, sub_26A7A4648);
    sub_26A84FDF8();
    sub_26A505D1C();
  }

  sub_26A505D1C();
  sub_26A7A4FCC();
  v34 = v43 ^ 1;
  v35 = v51;
  sub_26A7A4FCC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = 0;
  return result;
}

uint64_t sub_26A79DF68()
{
  v1 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  v12 = *(sub_26A79A768() + 16);

  if (v12 < 2 || (*(v11 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) & 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v14 = sub_26A79ACE4();
    VRXIdiom.idiom.getter(v14, v10);
    (*(v3 + 104))(v7, *MEMORY[0x277D629F0], v1);
    sub_26A7A3CA0();
    v15 = sub_26A851758();
    v16 = *(v3 + 8);
    v16(v7, v1);
    v16(v10, v1);
    v13 = v15 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_26A79E124@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v103 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C60);
  MEMORY[0x28223BE20](v85);
  v86 = &v79 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C68);
  MEMORY[0x28223BE20](v101);
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C70);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v79 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B28);
  MEMORY[0x28223BE20](v90);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v79 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v79 - v15;
  v16 = sub_26A84B058();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for FactItemStandardLayout(0);
  MEMORY[0x28223BE20](v94);
  v87 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C78);
  MEMORY[0x28223BE20](v96);
  v99 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v79 - v23;
  MEMORY[0x28223BE20](v24);
  v98 = &v79 - v25;
  v26 = type metadata accessor for FactItemButtonView(0);
  v27 = v26[12];
  v88 = v2 + v26[11];
  v89 = *(v88 + 8);
  v104 = *(v89 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  v28 = *(v2 + v27);
  v29 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v29, v19);
  v28(v112, v19);
  v30 = *(v17 + 8);
  v31 = v16;
  v30(v19, v16);
  v32 = *(v2 + v26[13]);
  v33 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v33, v19);
  v32(v111, v19);
  v30(v19, v31);
  v34 = *(v2 + v26[14]);
  v35 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v35, v19);
  v34(v110, v19);
  v30(v19, v31);
  v36 = *(v2 + v26[15]);
  v37 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v37, v19);
  v36(v109, v19);
  v30(v19, v31);
  v38 = *(v2 + v26[16]);
  v39 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v39, v19);
  v38(v108, v19);
  v30(v19, v31);
  v40 = v26[17];
  v41 = v26[18];
  v79 = v26;
  v42 = (v2 + v40);
  v43 = *v42;
  v91 = *(v42 + 8);
  v44 = *(v2 + v41);
  v93 = *(v2 + v41 + 8);

  v92 = v43;

  v45 = 0;
  if (v104 == 1)
  {
    sub_26A79D680(v80);
    sub_26A7A501C();
    sub_26A7A506C(&qword_2803B7C88, &qword_2803B7B28, &unk_26A884708, sub_26A7A50EC);
    v45 = sub_26A851248();
    sub_26A505D1C();
  }

  v90 = v45;
  type metadata accessor for FactItemButtonViewModel(0);
  sub_26A7A3CA0();
  sub_26A84F268();
  swift_getKeyPath();
  sub_26A84F278();

  v88 = __src[1];
  v89 = __src[0];
  v46 = __src[2];
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
  __swift_project_value_buffer(v47, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
  v48 = v87;
  sub_26A7A501C();
  sub_26A6AEE74(v113);
  memcpy(v48, v113, 0xBFuLL);
  sub_26A7A46D4();
  v49 = v94;
  v50 = &v48[*(v94 + 20)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v48[v49[6]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = v49[7];
  *&v48[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v53 = &v48[v49[18]];
  v105 = 0;
  sub_26A851048();
  v54 = v107;
  *v53 = v106;
  *(v53 + 1) = v54;
  v55 = &v48[v49[19]];
  v105 = 0;
  sub_26A851048();
  v56 = v107;
  *v55 = v106;
  *(v55 + 1) = v56;
  memcpy(&v48[v49[8]], v112, 0xFAuLL);
  memcpy(&v48[v49[9]], v111, 0xFAuLL);
  memcpy(&v48[v49[10]], v110, 0xFAuLL);
  memcpy(&v48[v49[11]], v109, 0xFAuLL);
  memcpy(&v48[v49[12]], v108, 0xFAuLL);
  v57 = &v48[v49[13]];
  *v57 = v92;
  v57[8] = v91;
  v58 = &v48[v49[14]];
  *v58 = v44;
  v58[8] = v93;
  v48[v49[15]] = v97 & 1;
  v59 = v89;
  *&v48[v49[16]] = v90;
  v60 = &v48[v49[17]];
  v61 = v88;
  *v60 = v59;
  *(v60 + 1) = v61;
  *(v60 + 2) = v46;
  sub_26A851448();
  v62 = 1;
  sub_26A84F628();
  v63 = v95;
  sub_26A7A4F78();
  memcpy(&v63[*(v96 + 36)], __src, 0x70uLL);
  sub_26A7A4FCC();
  v65 = v100;
  v64 = v101;
  if ((v104 & 1) == 0)
  {
    sub_26A79D680(v82);
    v66 = sub_26A8502A8();
    sub_26A79D290();
    sub_26A84ED48();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = v86;
    sub_26A7A4FCC();
    v76 = v84;
    v77 = &v75[*(v85 + 36)];
    *v77 = v66;
    *(v77 + 1) = v68;
    *(v77 + 2) = v70;
    *(v77 + 3) = v72;
    *(v77 + 4) = v74;
    v77[40] = 0;
    sub_26A7A4FCC();
    *&v76[*(v64 + 36)] = 1;
    sub_26A7A4FCC();
    sub_26A7A4FCC();
    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v65, v62, 1, v64);
  sub_26A7A501C();
  sub_26A7A501C();
  sub_26A7A501C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C80);
  sub_26A7A501C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A79ECDC(void *a1, char a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a4 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8);
  result = sub_26A79A790();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(result + 16) <= a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = *(result + a3 + 32);

  if (v11 == 1)
  {
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE0);
    sub_26A7A4954();
    return sub_26A84FDF8();
  }

  else
  {
    if (a2)
    {
      v12 = *(v9 + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
      if (a5 == 1)
      {
        v12 = 0;
      }

      v15 = v12;
      type metadata accessor for FactItemButtonViewModel(0);
      sub_26A7A3CA0();
      v14 = a1;
      sub_26A84F268();
      swift_getKeyPath();
      sub_26A84F278();

      v20[0] = v37;
      v20[1] = v38;
      v20[2] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE8);
      sub_26A506A30();
      sub_26A851298();

      KeyPath = swift_getKeyPath();
      v22 = 0;
      swift_unknownObjectWeakInit();
      v23 = swift_getKeyPath();
      v24 = 0;
      v13 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE10);
      sub_26A851048();
      v25 = v16;
      sub_26A851048();
      v26 = v16;
      sub_26A851048();
      v27 = v16;
      v31 = v13;
      v32 = a5;
      v33 = v15;
      v34 = 1;
      v28 = v17;
      v29 = v18;
      v30 = v19;
      sub_26A5A44A4(&KeyPath, v20);
      sub_26A5376B0(v20, &KeyPath);
      v35 = 0;
      sub_26A53770C();
      sub_26A84FDF8();
      sub_26A73E014(a1, 1);
      sub_26A537760(v20);
    }

    else
    {
      KeyPath = a1;
      v35 = 1;
      sub_26A53770C();

      sub_26A84FDF8();
    }

    sub_26A7A501C();
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BE0);
    sub_26A7A4954();
    sub_26A84FDF8();
    return sub_26A505D1C();
  }
}

uint64_t sub_26A79F138()
{
  v0 = type metadata accessor for FactItemButtonView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A79A768();
  swift_getKeyPath();
  sub_26A7A46D4();
  swift_allocObject();
  sub_26A7A4F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BA0);
  sub_26A506A30();
  sub_26A7A478C();
  return sub_26A8512F8();
}

uint64_t sub_26A79F320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_26A79ECDC(*a1, *(a1 + 8), v4, a2, 0);
  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    result = swift_getKeyPath();
    *(a3 + 128) = result;
    *(a3 + 136) = v7;
  }

  return result;
}

uint64_t sub_26A79F384()
{
  v0 = type metadata accessor for FactItemButtonView(0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A79A768();

  swift_getKeyPath();
  sub_26A7A46D4();
  swift_allocObject();
  sub_26A7A4F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C48);
  sub_26A6ED5A0();
  sub_26A506A30();
  return sub_26A8512F8();
}

uint64_t sub_26A79F574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for FactItemButtonView(0);
  v7 = *(*(a2 + *(v6 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
  v8 = a2 + *(v6 + 20);
  v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28);
  v10 = 40;
  if (v7)
  {
    v10 = 48;
  }

  v11 = *(v9 + v10);
  *a3 = sub_26A84FA78();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C58);
  return sub_26A79F638(a2, v5);
}

uint64_t sub_26A79F638(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FactItemButtonView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26A79A768();
  swift_getKeyPath();
  sub_26A7A46D4();
  v6 = (v5 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  sub_26A7A4F78();
  *(v7 + v6) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B79C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BA0);
  sub_26A506A30();
  sub_26A7A478C();
  return sub_26A8512F8();
}

uint64_t sub_26A79F834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 < a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  result = sub_26A79ECDC(*a1, *(a1 + 8), v5, a2, v6);
  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    result = sub_26A7A4FCC();
    *(a4 + 128) = KeyPath;
    *(a4 + 136) = v8;
  }

  return result;
}

uint64_t sub_26A79F8CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0958);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B88);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0948);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  if (sub_26A79FD1C())
  {
    v14 = sub_26A84FC08();
    v15 = type metadata accessor for FactItemButtonView(0);
    v16 = *(*(a1 + *(v15 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
    v17 = a1 + *(v15 + 20);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    v19 = 40;
    if (v16)
    {
      v19 = 48;
    }

    v20 = *(v17 + *(v18 + 28) + v19);
    *v12 = v14;
    *(v12 + 1) = v20;
    v12[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B98);
    sub_26A79F138();
    sub_26A7A4FCC();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
  }

  else
  {
    v21 = type metadata accessor for FactItemButtonView(0);
    v22 = *(*(a1 + *(v21 + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom);
    v23 = a1 + *(v21 + 20);
    v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28);
    v25 = 40;
    if (v22)
    {
      v25 = 48;
    }

    v26 = *(v24 + v25);
    *v7 = sub_26A84FA78();
    *(v7 + 1) = v26;
    v7[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7B90);
    sub_26A79FE30(a1, a2 & 1, &v7[*(v27 + 44)]);
    sub_26A7A4FCC();
    sub_26A7A501C();
    swift_storeEnumTagMultiPayload();
    sub_26A506A30();
    sub_26A506A30();
    sub_26A84FDF8();
  }

  return sub_26A505D1C();
}

BOOL sub_26A79FD1C()
{
  v1 = sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  if (*(*(v0 + *(type metadata accessor for FactItemButtonView(0) + 44) + 8) + OBJC_IVAR____TtC9SnippetUIP33_31F7205A88FA9ACFBA7652AFA21FB53123FactItemButtonViewModel_buttonItemsAreBottom) == 1 && (sub_26A79B020(v7), v8 = sub_26A84F388(), (*(v3 + 8))(v7, v1), (v8 & 1) != 0))
  {
    v9 = sub_26A79ACE4();
    return sub_26A61B05C(v9, &unk_287B13B08);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A79FE30@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7BF8);
  MEMORY[0x28223BE20](v28);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C00);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C08);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C10);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v31 = a2;
  if (a2)
  {
    *v14 = sub_26A850208();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C40);
    sub_26A79F384();
  }

  else
  {
    sub_26A79F138();
    sub_26A851468();
    sub_26A84F028();
    v17 = &v10[*(v28 + 36)];
    v18 = v37;
    *v17 = v36;
    *(v17 + 1) = v18;
    *(v17 + 2) = v38;
  }

  sub_26A7A501C();
  swift_storeEnumTagMultiPayload();
  sub_26A506A30();
  sub_26A7A49E0();
  sub_26A84FDF8();
  sub_26A505D1C();
  v19 = sub_26A79ACE4();
  v20 = v29;
  VRXIdiom.idiom.getter(v19, v29);
  v21 = v30;
  (*(v5 + 104))(v30, *MEMORY[0x277D62A20], v4);
  sub_26A7A3CA0();
  sub_26A851A48();
  sub_26A851A48();
  v22 = *(v5 + 8);
  v22(v21, v4);
  v22(v20, v4);
  v23 = (v35 == v34) & v31;
  sub_26A7A501C();
  v24 = v32;
  *v32 = 0;
  *(v24 + 4) = 256;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C38);
  sub_26A7A501C();
  v26 = v24 + *(v25 + 64);
  *v26 = 0;
  v26[8] = v23;
  v26[9] = v23 ^ 1;
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7A03A8(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = a1;
  v4 = sub_26A84B058();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for RFButtonStyle();
  MEMORY[0x28223BE20](v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26A79ACE4();
  VRXIdiom.idiom.getter(v14, v10);
  (*(v5 + 104))(v7, *MEMORY[0x277D629F0], v4);
  sub_26A7A3CA0();
  sub_26A851A48();
  sub_26A851A48();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  if (*&v18[0] == v17[1])
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    static PrimitiveButtonStyle<>.rfButton(margin:)(v18, v13);
  }

  else if (a3)
  {
    static PrimitiveButtonStyle<>.rfButton.getter(v13);
  }

  else
  {
    static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0920);
  sub_26A6091D0();
  sub_26A7A3CA0();
  sub_26A850978();
  return sub_26A7A55D8();
}

double sub_26A7A066C()
{
  v1 = type metadata accessor for FactItemButtonView(0);
  v2 = *(v0 + *(v1 + 24) + 312);
  v3 = *(sub_26A79A768() + 16);

  v4 = v0 + *(v1 + 20);
  v5 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8) + 28) + 40);
  v6 = *(sub_26A79A768() + 16);

  return v2 * v3 + v5 * (v6 - 1);
}

void sub_26A7A0724()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v47 = v3;
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v46 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = sub_26A84BBB8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for FactItemButtonView(0);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA50);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v45 - v26;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA58);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v50 = v29 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  (*(v14 + 16))(v18, v1, v12, v32);
  v49 = v23;
  sub_26A79B268();
  v52 = v1;
  v33 = v48;
  sub_26A84BB68();
  sub_26A7A4FCC();
  if (__swift_getEnumTagSinglePayload(v10, 1, v33) == 1)
  {
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v35 = &v27[*(v24 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
    *v35 = KeyPath;
  }

  else
  {
    v38 = v46;
    v39 = *(v47 + 32);
    v39(v46, v10, v33);
    v40 = swift_getKeyPath();
    v41 = &v27[*(v24 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v39(v41 + v42, v38, v33);
    v43 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v41 + v42, 0, 1, v43);
    *v41 = v40;
  }

  sub_26A7A4F78();
  v44 = sub_26A84BB18();
  sub_26A4DCB1C(v44);

  sub_26A505D1C();
  sub_26A84BB28();

  sub_26A7A501C();
  sub_26A7A51A4();
  sub_26A851248();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7A0C04(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26A7A0C68()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0CA4()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0CF8()
{
  sub_26A84B1D8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A7A0D74(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_26_17();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26A7A0DD0()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880);
    v7 = OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_25_24(v7);
    OUTLINED_FUNCTION_44_9(v8 / 72);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  v11 = 72 * v3;
  if (v1)
  {
    if (v2 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_26A7A0EB0()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_2_97();
    v12[2] = v3;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v12 != v0 || &v15[16 * v3] <= v14)
    {
      memmove(v14, v15, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v3);
  }
}

void sub_26A7A0F68()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DD0);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1034()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0);
    v7 = OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_25_24(v7);
    OUTLINED_FUNCTION_44_9(v8 / 48);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v10[48 * v3] <= v9)
    {
      memmove(v9, v10, 48 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A110C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB38);
    v7 = OUTLINED_FUNCTION_53_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v2;
    v7[3] = v8;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A11D4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB908);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A12C4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_20_30();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v3] <= v9)
    {
      memmove(v9, v10, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 32 * v3);
  }
}

void sub_26A7A138C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A30, &unk_26A884508);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogCollatableItem(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogCollatableItem, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1464()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A28, &unk_26A8844F8);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogAnimationChunk(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogAnimationChunk, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

size_t sub_26A7A153C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26A7A3644(v9, a2, &unk_2803B7D98, &unk_26A884AA8, MEMORY[0x277D636B8]);
  v11 = *(sub_26A84E158() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26A7A3B18(a4 + v12, v9, v10 + v12, MEMORY[0x277D636B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26A7A1684()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A90);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  v11 = 16 * v3;
  if (v1)
  {
    if (v7 != v0 || &v10[v11] <= v9)
    {
      memmove(v9, v10, v11);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v11);
  }
}

void sub_26A7A1748()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F0);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_19_27();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_26A7A1824()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AE0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_38_11(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 120);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    if (v3 != v0 || &v10[120 * v2] <= v9)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1910()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CC0, &unk_26A884970);
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for AnyComponentViewConverter();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for AnyComponentViewConverter, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A19E8()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CC8, &unk_26A886570);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for RichTextView.Tokenizer.Token(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for RichTextView.Tokenizer.Token, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1AE4()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CF0, &unk_26A8849B0);
  OUTLINED_FUNCTION_37_15();
  sub_26A84AB98();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277CC9260], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1BBC()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803AD258, &unk_26A8849D0);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableManager.CardSectionTableDefinition(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableManager.CardSectionTableDefinition, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A1CA8()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    OUTLINED_FUNCTION_86_1(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_19_27();
    v12[2] = v3;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

void sub_26A7A1D60()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AB0);
    v7 = OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_38_11(v7);
    OUTLINED_FUNCTION_18_29(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 32 * v2 <= (v3 + 32))
    {
      memmove((v3 + 32), (v0 + 32), 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AB8);
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1E7C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AD0);
    v7 = OUTLINED_FUNCTION_53_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v2;
    v7[3] = v8;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A1F44()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D68);
    v7 = OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_25_24(v7);
    OUTLINED_FUNCTION_44_9(v8 / 24);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2040()
{
  OUTLINED_FUNCTION_76_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_81();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_32_11();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_86_1(v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      v16 = OUTLINED_FUNCTION_77_0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_77_0();
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A216C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A88, &unk_26A884570);
  OUTLINED_FUNCTION_37_15();
  sub_26A84E4A8();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D63810], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2244()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7A80, &unk_26A884568);
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableRowWatchCellViewModel();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableRowWatchCellViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A231C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF750);
    v7 = OUTLINED_FUNCTION_53_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v2;
    v7[3] = v8;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A23E4()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DF8);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_26A7A24AC()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5898);
    v7 = OUTLINED_FUNCTION_53_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v2;
    v7[3] = v8;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2598()
{
  OUTLINED_FUNCTION_8_64();
  if (v2)
  {
    OUTLINED_FUNCTION_7_69();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_40_11();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_56_3();
  sub_26A7A3644(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_37_15();
  type metadata accessor for TableCell();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for TableCell, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A268C()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B7CB8, &unk_26A886430);
  OUTLINED_FUNCTION_37_15();
  sub_26A84E388();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(MEMORY[0x277D637C0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A2764()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7E10);
    v7 = OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_25_24(v7);
    OUTLINED_FUNCTION_44_9(v8 / 56);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v2 != v0 || &v10[56 * v3] <= v9)
    {
      memmove(v9, v10, 56 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 56 * v3);
  }
}

void sub_26A7A283C()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_14_43();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CE8);
    v7 = OUTLINED_FUNCTION_53_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_2_97();
    v7[2] = v2;
    v7[3] = v8;
  }

  OUTLINED_FUNCTION_50_6();
  if (v1)
  {
    OUTLINED_FUNCTION_62_4();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A7A2904()
{
  OUTLINED_FUNCTION_8_64();
  if (v4)
  {
    OUTLINED_FUNCTION_7_69();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_40_11();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_60();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_57_2(v2, v5, &unk_2803B6158, &unk_26A884C40);
  v8 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for SmartDialogAnimatableRect(v8);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    OUTLINED_FUNCTION_33_15(type metadata accessor for SmartDialogAnimatableRect, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
  }
}

void sub_26A7A29DC()
{
  OUTLINED_FUNCTION_34_13();
  if (v4)
  {
    OUTLINED_FUNCTION_4_81();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_32_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_11_51();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DF0);
    v7 = OUTLINED_FUNCTION_29_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_19_27();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43_7();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}