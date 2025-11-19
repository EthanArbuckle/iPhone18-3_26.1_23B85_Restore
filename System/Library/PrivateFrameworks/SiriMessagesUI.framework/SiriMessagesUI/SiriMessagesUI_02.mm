uint64_t sub_267FDE81C()
{
  v31 = sub_26804BD7C();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v0;
  v37 = *(v0 + 2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  MEMORY[0x26D60CAE0](&v35, v6);
  v7 = sub_26804C5EC();

  v8 = *(v7 + 16);
  if (v8)
  {
    *&v36 = MEMORY[0x277D84F90];
    sub_267FCB244();
    v9 = v36;
    result = sub_267FE429C();
    v13 = result;
    v14 = 0;
    v34 = v7 + 64;
    v29 = v2 + 32;
    v30 = v2;
    v27 = v7 + 72;
    v28 = v8;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v7 + 32))
      {
        v15 = v13 >> 6;
        if ((*(v34 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v7 + 36) != v11)
        {
          goto LABEL_27;
        }

        v32 = v12;
        v33 = v11;

        sub_26804C18C();

        *&v36 = v9;
        v16 = v5;
        v17 = *(v9 + 16);
        if (v17 >= *(v9 + 24) >> 1)
        {
          sub_267FCB244();
          v9 = v36;
        }

        *(v9 + 16) = v17 + 1;
        result = (*(v30 + 32))(v9 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v17, v16, v31);
        v18 = 1 << *(v7 + 32);
        if (v13 >= v18)
        {
          goto LABEL_28;
        }

        v19 = *(v34 + 8 * v15);
        if ((v19 & (1 << v13)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v7 + 36) != v33)
        {
          goto LABEL_30;
        }

        v5 = v16;
        v20 = v19 & (-2 << (v13 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v15 << 6;
          v22 = v15 + 1;
          v23 = (v27 + 8 * v15);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              result = sub_267FE4CE4(v13, v33, v32 & 1);
              v18 = __clz(__rbit64(v24)) + v21;
              goto LABEL_18;
            }
          }

          result = sub_267FE4CE4(v13, v33, v32 & 1);
LABEL_18:
          v5 = v16;
        }

        if (++v14 == v28)
        {

          return v9;
        }

        v12 = 0;
        v11 = *(v7 + 36);
        v13 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_267FDEB7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423E0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423E8);
  OUTLINED_FUNCTION_1();
  v52 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = v51 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423F0);
  OUTLINED_FUNCTION_1();
  v59 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v15);
  v51[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  v51[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242400);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v20);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242408);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v22);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242410);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v24);
  sub_26804D78C();
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242418);
  sub_267FC126C(&qword_280242420, &qword_280242418);
  sub_26804CEBC();
  if (*(v2 + 112))
  {
    sub_26804E04C();
  }

  else
  {
    sub_26804E05C();
  }

  v25 = sub_267FC126C(&qword_280242428, &qword_2802423E0);
  sub_26804DB5C();
  (*(v5 + 8))(v8, v3);
  v63 = *(v2 + 24);
  v64 = *(v2 + 40);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  MEMORY[0x26D60CAE0](&v65, v26);
  OUTLINED_FUNCTION_26();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_17_1(v27);
  sub_267FE3E48(v2, &v63);
  *&v63 = v3;
  *(&v63 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v53;
  v29 = v54;
  sub_26804DBEC();

  (*(v52 + 8))(v12, v29);
  OUTLINED_FUNCTION_26();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_17_1(v30);
  OUTLINED_FUNCTION_22();
  v32 = &v18[v31];
  sub_26804D02C();
  sub_267FE3E48(v2, &v63);
  sub_26804E82C();
  *v32 = &unk_268051A20;
  *(v32 + 1) = v30;
  (*(v59 + 32))(v18, v28, v60);
  v33 = v58;
  sub_267FD9D3C(v18, v58, &qword_2802423F8);
  OUTLINED_FUNCTION_22();
  *(v33 + v34) = 256;
  OUTLINED_FUNCTION_22();
  v35 = v57;
  v37 = (v57 + v36);
  v38 = *(sub_26804D11C() + 20);
  v39 = *MEMORY[0x277CE0118];
  sub_26804D48C();
  OUTLINED_FUNCTION_4();
  (*(v40 + 104))(&v37[v38], v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v37 = _Q0;
  *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
  sub_267FD9D3C(v33, v35, &qword_280242400);
  OUTLINED_FUNCTION_26();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_17_1(v46);
  v47 = v55;
  sub_267FD9D3C(v35, v55, &qword_280242408);
  OUTLINED_FUNCTION_22();
  v49 = (v47 + v48);
  *v49 = 0;
  v49[1] = 0;
  v49[2] = sub_267FE3FF0;
  v49[3] = v46;
  sub_267FD9D3C(v47, v61, &qword_280242410);
  return sub_267FE3E48(v2, &v63);
}

uint64_t sub_267FDF230@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26804D3DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242468);
  return sub_267FDF288(a1);
}

uint64_t sub_267FDF288(_OWORD *a1)
{
  v6[0] = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242458);
  sub_26804DDEC();
  v2 = sub_267FE42DC(v7);

  v7 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0x71uLL);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_267FE446C;
  *(v4 + 24) = v3;
  sub_267FE3E48(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242478);
  sub_267FC126C(&qword_280242480, &qword_280242470);
  sub_267FE44A8();
  return sub_26804DEFC();
}

uint64_t sub_267FDF428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a1;
  v79 = a5;
  v8 = sub_26804DD2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424C8);
  MEMORY[0x28223BE20](v69);
  v13 = (&v66 - v12);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242490);
  MEMORY[0x28223BE20](v77);
  v76 = &v66 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242520);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v66 - v15;
  v87 = *a4;
  v88 = *(a4 + 2);
  v83[0] = *a4;
  *&v83[1] = *(a4 + 2);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  MEMORY[0x26D60CAE0](v82);
  v16 = sub_26804C5EC();

  v72 = a2;
  v73 = a3;
  v17 = sub_268004338(a2, a3, v16);

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_26804C1CC();
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_267FCAB20(0, &qword_280242528);
  sub_267FAE54C(v18, v20);
  if (!sub_267FEF3B0(v18, v20))
  {
    sub_267FE4000(v18, v20);
LABEL_8:
    v59 = v78;
    v58 = v79;
    v60 = 1;
    return __swift_storeEnumTagSinglePayload(v58, v60, 1, v59);
  }

  v67 = v18;
  v21 = sub_26804DD0C();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v66 = v21;
  v22 = sub_26804DD5C();
  (*(v9 + 8))(v11, v8);
  v23 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242398) + 36);
  v24 = *(sub_26804D11C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_26804D48C();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #16.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
  *v13 = v22;
  v32 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424E0) + 36);
  *v32 = 0;
  *(v32 + 4) = 1;
  sub_26804DFAC();
  sub_26804CFBC();
  v33 = (v13 + *(v69 + 36));
  v34 = v86[9];
  *v33 = v86[8];
  v33[1] = v34;
  v33[2] = v86[10];
  v35 = swift_allocObject();
  *(v35 + 16) = v70;
  memcpy((v35 + 24), a4, 0x71uLL);
  sub_267FE3E48(a4, v83);
  sub_267FE482C();
  v36 = v76;
  sub_26804DAEC();

  sub_267FC16BC(v13, &qword_2802424C8);
  v37 = sub_26804DF8C();
  v39 = v38;
  v40 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424C0) + 36)];
  v42 = v72;
  v41 = v73;
  sub_267FDFDDC(a4, v72, v73, v40);
  v43 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424F0) + 36));
  *v43 = v37;
  v43[1] = v39;
  v44 = sub_26804DF7C();
  v46 = v45;
  v47 = v36;
  v48 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424B0) + 36)];
  sub_267FE0184(a4, v42, v41, v48);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242500) + 36));
  *v49 = v44;
  v49[1] = v46;
  v50 = sub_26804DF9C();
  v52 = v51;
  v83[0] = v87;
  *&v83[1] = v88;
  MEMORY[0x26D60CAE0](v82, v71);
  v53 = sub_26804C5EC();

  v54 = sub_268004338(v42, v41, v53);

  v68 = v20;
  if (v54 && (v55 = sub_26804C1AC(), v57 = v56, , (v57 & 1) == 0))
  {
    sub_267FE04DC(v55, v83);
    nullsub_1(v83);
    memcpy(v86, v83, 0x80uLL);
  }

  else
  {
    sub_267FE4950(v86);
  }

  memcpy(v82, v86, 0x80uLL);
  v82[16] = v50;
  v82[17] = v52;
  memcpy((v47 + *(v77 + 36)), v82, 0x90uLL);
  memcpy(v83, v86, sizeof(v83));
  v84 = v50;
  v85 = v52;
  sub_267FD9D8C(v82, v81, &qword_280242510);
  sub_267FC16BC(v83, &qword_280242510);
  v80 = a4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v62 = swift_allocObject();
  memcpy((v62 + 16), a4, 0x71uLL);
  sub_267FE3E48(a4, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242498);
  sub_267FE45C8();
  sub_267FC126C(&qword_280242518, &qword_280242498);
  v63 = v74;
  sub_26804DB1C();

  sub_267FE4000(v67, v68);
  sub_267FB418C(v47);
  v65 = v78;
  v64 = v79;
  (*(v75 + 32))(v79, v63, v78);
  v58 = v64;
  v60 = 0;
  v59 = v65;
  return __swift_storeEnumTagSinglePayload(v58, v60, 1, v59);
}

uint64_t sub_267FDFC7C(uint64_t a1)
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
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_267FA7000, v3, v4, "#PhotosRowView Tap to show preview for photo %ld", v5, 0xCu);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242580);
  return sub_26804DDFC();
}

uint64_t sub_267FDFDDC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v7 = sub_26804D10C();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425B0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  if (a1[112])
  {
    v17 = swift_allocObject();
    v26 = a4;
    v18 = v17;
    memcpy((v17 + 16), a1, 0x71uLL);
    *(v18 + 136) = v27;
    *(v18 + 144) = a3;
    sub_267FE3E48(a1, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425B8);
    sub_267FE4CFC();
    sub_26804DE2C();
    sub_26804D0FC();
    sub_267FC126C(&qword_280242628, &qword_2802425A8);
    sub_267FE53C4(&qword_280242288, MEMORY[0x277CDDB18]);
    sub_26804DABC();
    (*(v28 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v18) = sub_26804D7AC();
    sub_26804CE1C();
    v19 = &v16[*(v14 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    v24 = v26;
    sub_267FD9D3C(v16, v26, &qword_2802425B0);
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v14);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v14);
  }
}

uint64_t sub_267FE0184@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26804D0BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242588);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v45 = *a1;
  v46 = *(a1 + 2);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  MEMORY[0x26D60CAE0](&v44, v15);
  v16 = sub_26804C5EC();

  v17 = sub_268004338(a2, a3, v16);

  if (v17 && (v18 = sub_26804C16C(), , (v18 & 1) != 0))
  {
    *&v45 = sub_26804DD1C();
    (*(v9 + 104))(v11, *MEMORY[0x277CDF9F8], v8);
    sub_26804DB0C();
    (*(v9 + 8))(v11, v8);

    v19 = sub_26804DC5C();
    KeyPath = swift_getKeyPath();
    v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242590) + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    LOBYTE(v19) = sub_26804D7AC();
    sub_26804CE1C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242598) + 36)];
    *v30 = v19;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = sub_26804DFAC();
    v33 = v32;
    v34 = sub_26804DC9C();
    v35 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425A0) + 36)];
    *v35 = v34;
    *(v35 + 4) = 256;
    *(v35 + 2) = v31;
    *(v35 + 3) = v33;
    LOBYTE(v31) = sub_26804D7AC();
    sub_26804CE1C();
    v36 = &v14[*(v12 + 36)];
    *v36 = v31;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    sub_267FD9D3C(v14, a4, &qword_280242588);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v41, 1, v12);
}

uint64_t sub_267FE04DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_267FE242C(a1);
  sub_267FB0C1C();
  v25 = sub_26804D95C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_26804DC8C();
  v10 = sub_26804D7AC();
  v11 = sub_26804DC9C();
  KeyPath = swift_getKeyPath();
  v13 = v6 & 1;
  v14 = sub_26804D7AC();
  sub_26804CE1C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_26804D87C();
  result = swift_getKeyPath();
  *a2 = v25;
  *(a2 + 8) = v4;
  *(a2 + 16) = v13;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v11;
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  *(a2 + 80) = v18;
  *(a2 + 88) = v20;
  *(a2 + 96) = v22;
  *(a2 + 104) = 0;
  *(a2 + 112) = result;
  *(a2 + 120) = v23;
  return result;
}

uint64_t sub_267FE05F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242538);
  sub_267FE4978();
  return sub_26804D04C();
}

uint64_t sub_267FE0668(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3 - 8];
  v5 = sub_26804E84C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_26804E81C();
  sub_267FE3E48(a1, v11);
  v6 = sub_26804E80C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x71uLL);
  sub_267FE1CD0(0, 0, v4, &unk_268051A60, v7);
}

uint64_t sub_267FE0780()
{
  v0[2] = sub_26804E81C();
  v0[3] = sub_26804E80C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267FE082C;

  return sub_267FE0A34();
}

uint64_t sub_267FE082C()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  *(v4 + 40) = v0;

  v6 = sub_26804E7EC();
  if (v0)
  {
    v7 = sub_267FE09D8;
  }

  else
  {
    v7 = sub_267FE097C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_267FE097C()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_267FE09D8()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_267FE0A34()
{
  OUTLINED_FUNCTION_13();
  v1[45] = v0;
  v1[46] = sub_26804E81C();
  v1[47] = sub_26804E80C();
  v3 = sub_26804E7EC();
  v1[48] = v3;
  v1[49] = v2;

  return MEMORY[0x2822009F8](sub_267FE0ACC, v3, v2);
}

uint64_t sub_267FE0ACC()
{
  v129 = v0;
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  *(v0 + 136) = *v1;
  *(v0 + 152) = v2;
  v3 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  *(v0 + 400) = v4;
  MEMORY[0x26D60CAE0]();
  v5 = sub_26804C5EC();

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = *(v0 + 360);
    v8 = *(v7 + 16);
    *(v0 + 64) = *v7;
    *(v0 + 80) = v8;
    v109 = v4;
    MEMORY[0x26D60CAE0](v4);
    v124 = v0;
    v9 = sub_26804C5EC();

    v11 = 0;
    v12 = v9 + 64;
    v113 = v9;
    v13 = -1;
    v14 = -1 << *(v9 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v9 + 64);
    v16 = (63 - v14) >> 6;
    *&v10 = 136315138;
    v117 = v10;
    while (v15)
    {
      v17 = v11;
LABEL_10:
      v18 = (*(v113 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
      v19 = *v18;
      v20 = v18[1];
      v21 = qword_280241130;

      if (v21 != -1)
      {
        swift_once();
      }

      v15 &= v15 - 1;
      v22 = sub_26804CD4C();
      __swift_project_value_buffer(v22, qword_2802487E0);

      v23 = sub_26804CD3C();
      v24 = sub_26804E88C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v128[0] = v26;
        *v25 = v117;
        v27 = sub_267FAE0C4(v19, v20, v128);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_267FA7000, v23, v24, "#PhotosRowView assetId: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_1_1();
      }

      else
      {
      }

      v11 = v17;
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v17 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    sub_267FCAB20(0, &qword_280242440);
    *(v124 + 112) = *(v124 + 136);
    *(v124 + 128) = *(v124 + 152);
    MEMORY[0x26D60CAE0](v109);
    v28 = sub_26804C5EC();

    v29 = sub_26800443C(v28);
    v30 = sub_267FDE67C(v29);
    *(v124 + 408) = v30;
    v37 = v30;

    v38 = sub_267FDA00C(v37);
    v39 = v38;
    *(v124 + 416) = v38;
    v40 = 0x280241000uLL;
    if (v38)
    {
      if (v38 < 1)
      {
        __break(1u);
        goto LABEL_48;
      }

      v41 = 0;
      v42 = v37 & 0xC000000000000001;
      v109 = v37;
      v113 = v38;
      do
      {
        if (v42)
        {
          v43 = MEMORY[0x26D60D7C0](v41, v37);
        }

        else
        {
          v43 = *(v37 + 8 * v41 + 32);
        }

        v44 = v43;
        if (*(v40 + 304) != -1)
        {
          OUTLINED_FUNCTION_1_4();
          swift_once();
        }

        v45 = sub_26804CD4C();
        __swift_project_value_buffer(v45, qword_2802487E0);
        v46 = v44;
        v47 = sub_26804CD3C();
        v48 = sub_26804E88C();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v128[0] = v50;
          *v49 = v117;
          v51 = v42;
          v52 = [v46 localIdentifier];
          v53 = sub_26804E6CC();
          v55 = v54;

          v42 = v51;
          v56 = sub_267FAE0C4(v53, v55, v128);
          v37 = v109;
          v40 = 0x280241000;

          *(v49 + 4) = v56;
          v39 = v113;
          _os_log_impl(&dword_267FA7000, v47, v48, "#PhotosRowView phAssetIds id: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_1_1();
        }

        else
        {
        }

        ++v41;
      }

      while (v39 != v41);
    }

    v57 = [objc_allocWithZone(MEMORY[0x277CD98A0]) init];
    *(v124 + 424) = v57;
    [v57 setVersion_];
    [v57 setDeliveryMode_];
    if (!v39)
    {
      v60 = *(v124 + 424);
      v61 = *(v124 + 400);
      v62 = *(v124 + 360);

      v64 = *(v62 + 80);
      v65 = *(v62 + 88);
      *(v124 + 344) = v64;
      *(v124 + 328) = v65;
      *(v124 + 160) = v64;
      *(v124 + 168) = v65;
      v73 = OUTLINED_FUNCTION_27_0(v63, v66, v67, v68, v69, v70, v71, v72, v109, v113, v117, *(&v117 + 1), v124);
      OUTLINED_FUNCTION_19_0(v73, v125 + 248);
      v74 = OUTLINED_FUNCTION_18_1(v125 + 328, v125 + 240);
      v82 = OUTLINED_FUNCTION_27_0(v74, v75, v76, v77, v78, v79, v80, v81, v110, v114, v118, v121, v125);
      OUTLINED_FUNCTION_19_0(v82, (v126 + 33));
      OUTLINED_FUNCTION_18_1((v126 + 41), (v126 + 34));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242458);
      sub_26804DDEC();

      v126[26] = v64;
      v126[27] = v65;
      v126[36] = MEMORY[0x277D84F90];
      v83 = sub_26804DDFC();
      OUTLINED_FUNCTION_27_0(v83, v84, v85, v86, v87, v88, v89, v90, v111, v115, v119, v122, v126);
      OUTLINED_FUNCTION_11_1();
      sub_267FC16BC(v91, v92);
      sub_267FC16BC(v127 + 328, &qword_280242450);
      *(v127 + 88) = *(v127 + 136);
      *(v127 + 104) = *(v127 + 152);
      MEMORY[0x26D60CAE0](v61);
      sub_26804C5EC();
      OUTLINED_FUNCTION_25_0();

      v93 = sub_26800443C(v61);
      *(v127 + 192) = v64;
      *(v127 + 200) = v65;
      sub_26804DDEC();
      sub_268035374(v93);
      v94 = *(v127 + 312);
      *(v127 + 176) = v64;
      *(v127 + 184) = v65;
      *(v127 + 336) = v94;
      sub_26804DDFC();

      OUTLINED_FUNCTION_27_0(v95, v96, v97, v98, v99, v100, v101, v102, v112, v116, v120, v123, v127);
      OUTLINED_FUNCTION_11_1();
      sub_267FC16BC(v103, v104);
      OUTLINED_FUNCTION_8_1();
      goto LABEL_21;
    }

    if (v39 >= 1)
    {
      *(v124 + 432) = 0;
      v58 = *(v124 + 408);
      if ((v58 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x26D60D7C0](0);
      }

      else
      {
        v59 = *(v58 + 32);
      }

      v105 = v59;
      *(v124 + 440) = v59;
      v106 = *(v124 + 424);
      *(v124 + 448) = sub_26804E80C();
      v107 = swift_task_alloc();
      *(v124 + 456) = v107;
      *(v107 + 16) = v105;
      *(v107 + 24) = v106;
      v108 = swift_task_alloc();
      *(v124 + 464) = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242448);
      *v108 = v124;
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_13_1();

      return MEMORY[0x2822008A0]();
    }

LABEL_48:
    __break(1u);
    return MEMORY[0x2822008A0]();
  }

  if (qword_280241130 != -1)
  {
LABEL_46:
    OUTLINED_FUNCTION_1_4();
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
    _os_log_impl(&dword_267FA7000, v32, v33, "#PhotosRowView fetchThumbnails: no assets selected", v34, 2u);
    OUTLINED_FUNCTION_1_1();
  }

LABEL_21:
  OUTLINED_FUNCTION_6();

  return v35();
}

uint64_t sub_267FE1420()
{
  v2 = *v1;
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 384);
    v5 = *(v2 + 392);
    v6 = sub_267FE1A1C;
  }

  else
  {

    v4 = *(v2 + 384);
    v5 = *(v2 + 392);
    v6 = sub_267FE1588;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_267FE1588()
{
  v2 = (v0 + 136);
  if (*(v0 + 232) >> 60 == 15)
  {

    goto LABEL_15;
  }

  v3 = *(v0 + 440);
  v4 = *(v0 + 400);
  *(v0 + 16) = *v2;
  *(v0 + 32) = *(v0 + 152);
  MEMORY[0x26D60CAE0](v4);
  v5 = [v3 localIdentifier];
  v6 = sub_26804E6CC();
  v8 = v7;

  v9 = sub_26804C5EC();

  if (!*(v9 + 16))
  {
    v20 = *(v0 + 440);

    v21 = OUTLINED_FUNCTION_15_2();
    sub_267FE4000(v21, v22);

    goto LABEL_15;
  }

  sub_268007544(v6, v8);
  v11 = v10;

  v12 = *(v0 + 440);
  if ((v11 & 1) == 0)
  {
    v23 = OUTLINED_FUNCTION_15_2();
    sub_267FE4000(v23, v24);

    goto LABEL_15;
  }

  v13 = OUTLINED_FUNCTION_15_2();
  sub_267FAE54C(v13, v14);
  OUTLINED_FUNCTION_15_2();
  sub_26804C1DC();
  if ([v12 mediaType] == 2)
  {
    [*(v0 + 440) duration];
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        sub_26804C1BC();
        goto LABEL_10;
      }

LABEL_28:
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_10:
  v16 = [*(v0 + 440) playbackStyle];
  v17 = *(v0 + 440);
  if (v16 == 3)
  {
    sub_26804C17C();
  }

  v18 = OUTLINED_FUNCTION_15_2();
  sub_267FE4000(v18, v19);

LABEL_15:
  v25 = OUTLINED_FUNCTION_24_1();
  if (!v26)
  {
    *(v0 + 432) = v25;
    v33 = *(v0 + 408);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x26D60D7C0]();
    }

    else
    {
      v34 = *(v33 + 8 * v25 + 32);
    }

    v35 = v34;
    *(v0 + 440) = v34;
    v36 = *(v0 + 424);
    *(v0 + 448) = sub_26804E80C();
    v37 = swift_task_alloc();
    *(v0 + 456) = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v38 = swift_task_alloc();
    *(v0 + 464) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242448);
    *v38 = v0;
    v38[1] = sub_267FE1420;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x2822008A0]();
  }

  v39 = *(v0 + 400);
  v40 = *(v0 + 424);

  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_19_0(v0 + 344, v0 + 248);
  OUTLINED_FUNCTION_18_1(v0 + 328, v0 + 240);
  OUTLINED_FUNCTION_19_0(v0 + 344, v0 + 264);
  OUTLINED_FUNCTION_18_1(v0 + 328, v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242458);
  sub_26804DDEC();

  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  *(v0 + 288) = MEMORY[0x277D84F90];
  sub_26804DDFC();
  OUTLINED_FUNCTION_11_1();
  sub_267FC16BC(v27, v28);
  OUTLINED_FUNCTION_8_1();
  *(v0 + 88) = *v2;
  *(v0 + 104) = *(v0 + 152);
  MEMORY[0x26D60CAE0](v39);
  sub_26804C5EC();
  OUTLINED_FUNCTION_25_0();

  sub_26800443C(v2);
  OUTLINED_FUNCTION_14_1();
  sub_268035374(v2);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_11_1();
  sub_267FC16BC(v29, v30);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6();

  return v31();
}

uint64_t sub_267FE1A1C()
{
  v3 = OUTLINED_FUNCTION_24_1();
  if (v4)
  {
    v18 = *(v0 + 424);
    v5 = *(v0 + 400);

    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_19_0(v0 + 344, v0 + 248);
    OUTLINED_FUNCTION_18_1(v0 + 328, v0 + 240);
    OUTLINED_FUNCTION_19_0(v0 + 344, v0 + 264);
    OUTLINED_FUNCTION_18_1(v0 + 328, v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242458);
    sub_26804DDEC();

    *(v0 + 208) = v2;
    *(v0 + 216) = v1;
    *(v0 + 288) = MEMORY[0x277D84F90];
    sub_26804DDFC();
    OUTLINED_FUNCTION_11_1();
    sub_267FC16BC(v6, v7);
    OUTLINED_FUNCTION_8_1();
    *(v0 + 88) = *(v0 + 136);
    *(v0 + 104) = *(v0 + 152);
    MEMORY[0x26D60CAE0](v5);
    sub_26804C5EC();
    OUTLINED_FUNCTION_25_0();

    sub_26800443C(v5);
    OUTLINED_FUNCTION_14_1();
    sub_268035374(v5);
    OUTLINED_FUNCTION_10_2();

    OUTLINED_FUNCTION_11_1();
    sub_267FC16BC(v8, v9);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_6();

    return v10();
  }

  else
  {
    *(v0 + 432) = v3;
    v12 = *(v0 + 408);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D60D7C0]();
    }

    else
    {
      v13 = *(v12 + 8 * v3 + 32);
    }

    v14 = v13;
    *(v0 + 440) = v13;
    v15 = *(v0 + 424);
    *(v0 + 448) = sub_26804E80C();
    v16 = swift_task_alloc();
    *(v0 + 456) = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = swift_task_alloc();
    *(v0 + 464) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242448);
    *v17 = v0;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_267FE1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  sub_267FD9D8C(a3, v21 - v9, &qword_2802413A0);
  sub_26804E84C();
  v11 = OUTLINED_FUNCTION_25_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, &qword_2802413A0);

  if (EnumTagSinglePayload == 1)
  {
    sub_267FC16BC(v10, &qword_2802413A0);
  }

  else
  {
    sub_26804E83C();
    (*(qword_280241398 + 8))(v10, &qword_2802413A0);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_26804E7EC();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_26804E70C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = OUTLINED_FUNCTION_29_0();

      sub_267FC16BC(a3, &qword_2802413A0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_267FC16BC(a3, &qword_2802413A0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return OUTLINED_FUNCTION_29_0();
}

uint64_t sub_267FE1F38()
{
  v0[2] = sub_26804E81C();
  v0[3] = sub_26804E80C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267FE1FE4;

  return sub_267FE0A34();
}

uint64_t sub_267FE1FE4()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  *(v4 + 40) = v0;

  v6 = sub_26804E7EC();
  if (v0)
  {
    v7 = sub_267FE218C;
  }

  else
  {
    v7 = sub_267FE2134;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_267FE2134()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_267FE218C()
{

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_1_4();
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_26804CD4C();
  __swift_project_value_buffer(v2, qword_2802487E0);
  v3 = v1;
  v4 = sub_26804CD3C();
  v5 = sub_26804E89C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267FA7000, v4, v5, "#PhotosRowView Error fetching thumbnails: %@", v8, 0xCu);
    sub_267FC16BC(v9, &qword_2802413B8);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6();

  return v12();
}

uint64_t sub_267FE2318()
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
    _os_log_impl(&dword_267FA7000, v1, v2, "#PhotoRowView Disappeared", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  return sub_26804DDFC();
}

uint64_t sub_267FE242C(uint64_t a1)
{
  v1 = a1 % 60;
  v2 = a1 / 60 % 60;
  if (a1 < 3600)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242530);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2680518B0;
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = MEMORY[0x277D83B88];
    *(v7 + 64) = v9;
    *(v7 + 32) = v2;
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v1;
  }

  else
  {
    v3 = a1 / 0xE10uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242530);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2680518C0;
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v6;
    *(v4 + 32) = v3;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v2;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = v1;
  }

  return sub_26804E6DC();
}

uint64_t sub_267FE2560@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_26804D3BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242558);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_267FDE81C();
  v31 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242580);
  sub_26804DE0C();
  v24 = *v27;
  v12 = *&v27[16];
  v31 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v13 = *v27;
  v14 = v27[16];
  *v27 = v11;
  *&v27[8] = v24;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v15 = sub_267FE4B9C();
  sub_26804DB7C();
  (*(v4 + 8))(v6, v3);

  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242560);
  *v27 = &type metadata for PhotoQuickLookController;
  *&v27[8] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242570);
  v17 = sub_267FC126C(&qword_280242578, &qword_280242570);
  *v27 = v16;
  *&v27[8] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_26804DBBC();
  (*(v8 + 8))(v10, v7);
  v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x71uLL);
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242550) + 36));
  *v20 = sub_267FE4BF8;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = swift_allocObject();
  memcpy((v21 + 16), a1, 0x71uLL);
  v22 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242538) + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_267FE4C28;
  v22[3] = v21;
  sub_267FE3E48(a1, v27);
  return sub_267FE3E48(a1, v27);
}

uint64_t sub_267FE29A0(uint64_t a1)
{
  v2 = sub_26804D61C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242570);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26804D60C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  sub_26804CF7C();
  v7 = sub_267FC126C(&qword_280242578, &qword_280242570);
  MEMORY[0x26D60C280](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_267FE2B8C(const void *a1)
{
  sub_26804D45C();
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x71uLL);
  sub_267FE3E48(a1, v4);
  return sub_26804DE3C();
}

void sub_267FE2CA8(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v4 = v2;
    a2();
  }

  else
  {
    sub_26804E62C();
    sub_267FE53C4(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

void sub_267FE2D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242460);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() defaultManager];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_267FE406C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267FE302C;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  [v10 requestImageForAsset:a2 targetSize:0 contentMode:a3 options:v13 resultHandler:{300.0, 300.0}];
  _Block_release(v13);
}

void sub_267FE2F58(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = UIImageJPEGRepresentation(v1, 0.9);
    if (v2)
    {
      v3 = v2;
      sub_26804BDAC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242460);
    sub_26804E7FC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242460);
    sub_26804E7FC();
  }
}

uint64_t sub_267FE302C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_26804E64C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

void sub_267FE30D8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26804C85C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26804BD7C();
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_267FA7000, v11, v12, "#PhotosRowView Close Image tapped", v13, 2u);
    MEMORY[0x26D60E1E0](v13, -1, -1);
  }

  v71 = *a1;
  v72 = *(a1 + 2);
  v67 = *a1;
  v68 = *(a1 + 2);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  MEMORY[0x26D60CAE0](&v64);
  v14 = sub_26804C5DC();
  v51 = a2;
  v52 = a3;
  sub_267FE41C0(a2, a3);

  v14(&v67, 0);

  v15 = sub_267FDE81C();
  v16 = *(v15 + 16);
  v56 = a1;
  if (v16)
  {
    *&v67 = MEMORY[0x277D84F90];
    sub_267FCB224(0, v16, 0);
    v17 = v67;
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v20 = *(v18 + 64);
    v50[1] = v15;
    v21 = v15 + ((v20 + 32) & ~v20);
    v58 = *(v18 + 56);
    v59 = v19;
    v60 = v18;
    v22 = (v18 - 8);
    do
    {
      v23 = v61;
      v24 = v62;
      v59(v61, v21, v62);
      v25 = sub_26804BD6C();
      v27 = v26;
      (*v22)(v23, v24);
      *&v67 = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_267FCB224(v28 > 1, v29 + 1, 1);
        v17 = v67;
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v21 += v58;
      --v16;
    }

    while (v16);

    a1 = v56;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v67 = v71;
  v68 = v72;
  MEMORY[0x26D60CAE0](&v64, v57);
  v31 = sub_26804C5EC();

  v32 = sub_26800443C(v31);
  v33 = *(a1 + 10);
  v34 = *(a1 + 11);
  v69 = v34;
  v70 = v33;
  *&v67 = v33;
  *(&v67 + 1) = v34;
  sub_267FD9D8C(&v70, &v64, &qword_2802417C8);
  sub_267FD9D8C(&v69, &v64, &qword_280242450);
  sub_267FD9D8C(&v70, &v64, &qword_2802417C8);
  sub_267FD9D8C(&v69, &v64, &qword_280242450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242458);
  sub_26804DDEC();

  v64 = v33;
  v65 = v34;
  v63 = MEMORY[0x277D84F90];
  sub_26804DDFC();
  sub_267FC16BC(&v70, &qword_2802417C8);
  sub_267FC16BC(&v69, &qword_280242450);
  *&v67 = v33;
  *(&v67 + 1) = v34;

  sub_26804DDEC();
  v62 = v32;
  sub_268035374(v32);
  v64 = v33;
  v65 = v34;
  v63 = v66;
  sub_26804DDFC();
  sub_267FC16BC(&v70, &qword_2802417C8);
  sub_267FC16BC(&v69, &qword_280242450);
  v67 = v71;
  v68 = v72;
  MEMORY[0x26D60CAE0](&v64, v57);
  v35 = v52;

  v36 = sub_26804C5BC();
  v38 = v37;
  sub_268006D64();
  v39 = *(*v38 + 16);
  sub_268006DB0(v39);
  v40 = *v38;
  *(v40 + 16) = v39 + 1;
  v41 = v40 + 16 * v39;
  *(v41 + 32) = v51;
  *(v41 + 40) = v35;
  v36(&v67, 0);
  v42 = v56;

  v43 = *(v42 + 12);
  if (v43)
  {
    v45 = v53;
    v44 = v54;
    v46 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x277D5D730], v55);
    v47 = v43;
    sub_26804C84C();
    (*(v44 + 8))(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2680518B0;
    *&v67 = 0x656D686361747461;
    *(&v67 + 1) = 0xEB0000000073746ELL;
    sub_26804EAFC();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417C8);
    *(inited + 96) = v49;
    *(inited + 72) = v17;
    *&v67 = 0x696669746E656469;
    *(&v67 + 1) = 0xEB00000000737265;
    sub_26804EAFC();
    *(inited + 168) = v49;
    *(inited + 144) = v62;
    sub_26804E65C();
    sub_26804E60C();
  }

  else
  {
    sub_26804E62C();
    sub_267FE53C4(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_267FE388C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26804DD2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804DD1C();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_26804DD5C();

  (*(v3 + 8))(v5, v2);
  sub_26804DFAC();
  sub_26804CFBC();
  v48[0] = v6;
  v48[1] = v39[19];
  LOBYTE(v48[2]) = v40;
  v48[3] = v41;
  LOBYTE(v48[4]) = v42;
  *&v48[5] = v43;
  sub_26804D84C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425F8);
  sub_267FE4FEC();
  sub_26804DA9C();

  v7 = sub_26804DC9C();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425F0) + 36)) = v7;
  LOBYTE(v7) = sub_26804D7AC();
  sub_26804CE1C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425E0) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_26804DFAC();
  v19 = v18;
  sub_267FE3CE0(v39);
  memcpy(v47, v39, 0x98uLL);
  v47[19] = v17;
  v47[20] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425D0);
  memcpy((a1 + *(v20 + 36)), v47, 0xA8uLL);
  memcpy(v48, v39, 0x98uLL);
  v48[19] = v17;
  v48[20] = v19;
  sub_267FD9D8C(v47, &v32, &qword_280242610);
  sub_267FC16BC(v48, &qword_280242610);
  v21 = sub_26804DFAC();
  v23 = v22;
  v24 = [objc_opt_self() whiteColor];
  v25 = [v24 colorWithAlphaComponent_];

  v26 = sub_26804DC1C();
  sub_26804DFAC();
  sub_26804CFBC();
  *&v31[6] = v44;
  *&v31[22] = v45;
  *&v31[38] = v46;
  *(&v39[1] + 2) = *v31;
  v39[0] = v26;
  LOWORD(v39[1]) = 256;
  *(&v39[3] + 2) = *&v31[16];
  *(&v39[5] + 2) = *&v31[32];
  v39[7] = *(&v46 + 1);
  v39[8] = v21;
  v39[9] = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802425B8);
  memcpy((a1 + *(v27 + 36)), v39, 0x50uLL);
  v32 = v26;
  v33 = 256;
  v34 = *v31;
  v35 = *&v31[16];
  *v36 = *&v31[32];
  *&v36[14] = *&v31[46];
  v37 = v21;
  v38 = v23;
  sub_267FD9D8C(v39, &v30, &qword_280242620);
  return sub_267FC16BC(&v32, &qword_280242620);
}

double sub_267FE3CE0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26804DC9C();
  sub_26804CF6C();
  v3 = sub_26804DFAC();
  v5 = v4;
  v6 = sub_26804DC6C();
  v7 = sub_26804DFAC();
  v9 = v8;
  sub_26804DFAC();
  sub_26804CFBC();
  *a1 = v6;
  *(a1 + 8) = 256;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v2;
  *(a1 + 64) = 256;
  *(a1 + 72) = v3;
  *(a1 + 80) = v5;
  *(a1 + 88) = v7;
  *(a1 + 96) = v9;
  *(a1 + 104) = v16;
  *(a1 + 120) = v17;
  result = *&v18;
  *(a1 + 136) = v18;
  return result;
}

uint64_t sub_267FE3E80()
{
  OUTLINED_FUNCTION_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FE3F10;

  return sub_267FE1F38();
}

uint64_t sub_267FE3F10()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_267FE4000(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267FE4014(a1, a2);
  }

  return a1;
}

uint64_t sub_267FE4014(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_267FE406C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242460);

  sub_267FE2F58(a1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267FE4110()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FE3F10;

  return sub_267FE0780();
}

uint64_t sub_267FE41C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_268007544(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242630);
  sub_26804EBDC();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_26804C1EC();
  sub_26804EBFC();
  *v3 = v9;
  return v7;
}

uint64_t sub_267FE42DC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v3[2] = v20;
      }

      return v3;
    }

    v7 = *(i - 1);
    v8 = *i;
    if (v1)
    {

      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242638);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[3 * v15 + 4])
        {
          memmove(v14, v3 + 4, 24 * v15);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5[2] = v8;
    v5 += 3;
    ++v2;
    v3 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_267FE44A8()
{
  result = qword_280242488;
  if (!qword_280242488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242498);
    sub_267FE45C8();
    sub_267FC126C(&qword_280242518, &qword_280242498);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242488);
  }

  return result;
}

unint64_t sub_267FE45C8()
{
  result = qword_2802424A0;
  if (!qword_2802424A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242490);
    sub_267FE4680();
    sub_267FC126C(&qword_280242508, &qword_280242510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802424A0);
  }

  return result;
}

unint64_t sub_267FE4680()
{
  result = qword_2802424A8;
  if (!qword_2802424A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802424B0);
    sub_267FE4738();
    sub_267FC126C(&qword_2802424F8, &qword_280242500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802424A8);
  }

  return result;
}

unint64_t sub_267FE4738()
{
  result = qword_2802424B8;
  if (!qword_2802424B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802424C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802424C8);
    sub_267FE482C();
    swift_getOpaqueTypeConformance2();
    sub_267FC126C(&qword_2802424E8, &qword_2802424F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802424B8);
  }

  return result;
}

unint64_t sub_267FE482C()
{
  result = qword_2802424D0;
  if (!qword_2802424D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802424C8);
    sub_267FE48B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802424D0);
  }

  return result;
}

unint64_t sub_267FE48B8()
{
  result = qword_2802424D8;
  if (!qword_2802424D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802424E0);
    sub_267FDD584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802424D8);
  }

  return result;
}

double sub_267FE4950(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_267FE4978()
{
  result = qword_280242540;
  if (!qword_280242540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242538);
    sub_267FE4A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242540);
  }

  return result;
}

unint64_t sub_267FE4A04()
{
  result = qword_280242548;
  if (!qword_280242548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242560);
    sub_267FE4B9C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242570);
    sub_267FC126C(&qword_280242578, &qword_280242570);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242548);
  }

  return result;
}

unint64_t sub_267FE4B9C()
{
  result = qword_280242568;
  if (!qword_280242568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242568);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{

  OUTLINED_FUNCTION_26();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267FE4CE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_267FE4CFC()
{
  result = qword_2802425C0;
  if (!qword_2802425C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425B8);
    sub_267FE4DB4();
    sub_267FC126C(&qword_280242618, &qword_280242620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802425C0);
  }

  return result;
}

unint64_t sub_267FE4DB4()
{
  result = qword_2802425C8;
  if (!qword_2802425C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425D0);
    sub_267FE4E6C();
    sub_267FC126C(&qword_280242608, &qword_280242610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802425C8);
  }

  return result;
}

unint64_t sub_267FE4E6C()
{
  result = qword_2802425D8;
  if (!qword_2802425D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425E0);
    sub_267FE4EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802425D8);
  }

  return result;
}

unint64_t sub_267FE4EF8()
{
  result = qword_2802425E8;
  if (!qword_2802425E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425F8);
    sub_267FE4FEC();
    swift_getOpaqueTypeConformance2();
    sub_267FC126C(&qword_280241B18, &qword_280241B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802425E8);
  }

  return result;
}

unint64_t sub_267FE4FEC()
{
  result = qword_280242600;
  if (!qword_280242600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802425F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242600);
  }

  return result;
}

unint64_t sub_267FE5070()
{
  result = qword_280242640;
  if (!qword_280242640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242410);
    sub_267FE50FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242640);
  }

  return result;
}

unint64_t sub_267FE50FC()
{
  result = qword_280242648;
  if (!qword_280242648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242408);
    sub_267FE51B4();
    sub_267FC126C(&qword_2802423A0, &qword_280241990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242648);
  }

  return result;
}

unint64_t sub_267FE51B4()
{
  result = qword_280242650;
  if (!qword_280242650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242400);
    sub_267FE5240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242650);
  }

  return result;
}

unint64_t sub_267FE5240()
{
  result = qword_280242658;
  if (!qword_280242658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802423F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802423E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802423E0);
    sub_267FC126C(&qword_280242428, &qword_2802423E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_267FE53C4(&qword_280242660, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242658);
  }

  return result;
}

uint64_t sub_267FE53C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_1()
{
  *(v0 + 192) = v2;
  *(v0 + 200) = v1;

  return sub_26804DDEC();
}

void *OUTLINED_FUNCTION_17_1(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_task_create();
}

uint64_t sub_267FE54EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = type metadata accessor for MapAttachmentView();
  v8 = v7[7];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  swift_storeEnumTagMultiPayload();
  v9 = (a2 + v7[8]);
  sub_26804E62C();
  OUTLINED_FUNCTION_1_5();
  sub_267FE73BC(v10, v11);
  *v9 = sub_26804D17C();
  v9[1] = v12;
  v13 = sub_26804C39C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a2, a1, v13);
  v15 = sub_26804C38C();
  sub_26804945C(v15, v6);

  v16 = objc_allocWithZone(MEMORY[0x277D0EBE8]);
  v17 = sub_267FE741C(v6);
  if (v17)
  {
    v18 = v17;
    if ([v17 parseIncludingCustomParameters_])
    {
      [v18 centerCoordinate];
      v20 = v19;
      [v18 centerCoordinate];
      v22 = v21;

      goto LABEL_10;
    }
  }

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v23 = sub_26804CD4C();
  __swift_project_value_buffer(v23, qword_2802487E0);
  v24 = sub_26804CD3C();
  v25 = sub_26804E89C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_267FA7000, v24, v25, "#MapAttachmentView failed to parse URL", v26, 2u);
    OUTLINED_FUNCTION_1_1();
  }

  v20 = *MEMORY[0x277CE4278];
  v22 = *(MEMORY[0x277CE4278] + 8);
LABEL_10:
  v27 = MEMORY[0x26D60DA70](v20, v22, 0.0, 0.0);
  v28 = a2 + v7[6];
  *v36 = v27;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;
  type metadata accessor for MKCoordinateRegion();
  sub_26804DDDC();
  v32 = v39;
  v33 = v38;
  *v28 = v37;
  *(v28 + 16) = v33;
  *(v28 + 32) = v32;
  if (v20 == 0.0 && v22 == 0.0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    result = (*(v14 + 8))(a1, v13);
  }

  else
  {
    result = (*(v14 + 8))(a1, v13);
    v34 = 0;
  }

  *(a2 + v7[5]) = v34;
  return result;
}

uint64_t sub_267FE5840@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for MapAttachmentView();
  OUTLINED_FUNCTION_1();
  v67 = v3;
  v66 = *(v4 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0(v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26804C0EC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13_0(v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426A0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v63 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426A8);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426B0) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_0(v63 - v19);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0(v63 - v21);
  v70 = v2;
  v22 = v1 + *(v2 + 24);
  v23 = *(v22 + 32);
  v24 = *(v22 + 16);
  v73 = *v22;
  v74 = v24;
  *&v75 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426C0);
  sub_26804DDEC();
  sub_26804C0CC();
  v25 = sub_26804C0DC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v25);
  *&v73 = MEMORY[0x277D84F90];
  sub_267FE73BC(&qword_2802426C8, MEMORY[0x277CE42D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426D0);
  sub_267FC126C(&qword_2802426D8, &qword_2802426D0);
  sub_26804EABC();
  v72 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426E0);
  v26 = v1;
  sub_267FC126C(&qword_2802426E8, &qword_2802426E0);
  v27 = v63[0];
  sub_26804C0BC();
  sub_267FC126C(&qword_2802426F0, &qword_2802426A8);
  v28 = v64;
  sub_26804DA5C();
  (*(v13 + 8))(v16, v28);
  v29 = v65;
  sub_267FE6E44(v1, v65);
  v30 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v31 = swift_allocObject();
  sub_267FE6EA8(v29, v31 + v30);
  v32 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426F8) + 36));
  sub_26804D02C();
  sub_26804E82C();
  *v32 = &unk_268051CC8;
  v32[1] = v31;
  sub_26804DFAC();
  sub_26804CFBC();
  v33 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242700) + 36));
  v34 = v74;
  *v33 = v73;
  v33[1] = v34;
  v33[2] = v75;
  v35 = (v27 + *(v17 + 44));
  v36 = *(sub_26804D11C() + 20);
  v37 = *MEMORY[0x277CE0118];
  sub_26804D48C();
  OUTLINED_FUNCTION_4();
  (*(v38 + 104))(&v35[v36], v37);
  __asm { FMOV            V0.2D, #16.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680518C0;
  LOBYTE(v16) = sub_26804D7DC();
  *(inited + 32) = v16;
  v45 = sub_26804D7FC();
  *(inited + 33) = v45;
  v46 = sub_26804D7CC();
  *(inited + 34) = v46;
  v47 = sub_26804D7EC();
  sub_26804D7EC();
  if (sub_26804D7EC() != v16)
  {
    v47 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v45)
  {
    v47 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v46)
  {
    v47 = sub_26804D7EC();
  }

  v48 = *(v26 + *(v70 + 32));
  if (v48)
  {
    v49 = v48;
    sub_26804E50C();

    sub_26804CE1C();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v68;
    sub_267FB45D4(v27, v68);
    v59 = v58 + *(v69 + 36);
    *v59 = v47;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    sub_267FE70C0();
    sub_26804D9AC();
    return sub_267FB463C(v58);
  }

  else
  {
    sub_26804E62C();
    OUTLINED_FUNCTION_1_5();
    sub_267FE73BC(v61, v62);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_267FE6020()
{
  v0 = sub_26804D45C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for MapAttachmentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426C0);
  sub_26804DDEC();
  return MEMORY[0x26D60AD50](v0, v2, v4 & 1, v6);
}

uint64_t sub_267FE60DC()
{
  v0[2] = sub_26804E81C();
  v0[3] = sub_26804E80C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267FE6188;

  return sub_267FE62C0();
}

uint64_t sub_267FE6188()
{
  OUTLINED_FUNCTION_13();

  v1 = sub_26804E7EC();

  return MEMORY[0x2822009F8](sub_267FE2134, v1, v0);
}

uint64_t sub_267FE62C0()
{
  v1[22] = v0;
  sub_26804E81C();
  v1[23] = sub_26804E80C();
  v3 = sub_26804E7EC();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x2822009F8](sub_267FE6358, v3, v2);
}

uint64_t sub_267FE6358()
{
  v1 = v0[22];
  v2 = type metadata accessor for MapAttachmentView();
  v0[26] = v2;
  v3 = *(v1 + *(v2 + 20));
  v0[27] = v3;
  if (v3)
  {
    v4 = qword_280241130;
    v5 = v3;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v6 = sub_26804CD4C();
    v0[28] = __swift_project_value_buffer(v6, qword_2802487E0);
    v7 = sub_26804CD3C();
    v8 = sub_26804E88C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_267FA7000, v7, v8, "#MapAttachmentView retrieving current location", v9, 2u);
      OUTLINED_FUNCTION_1_1();
    }

    v10 = *MEMORY[0x277CE4228];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_267FE658C;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242730);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_267FE6974;
    v0[13] = &block_descriptor_2;
    v0[14] = v11;
    [v5 currentLocationWithAccuracy:v0 + 10 timeout:v10 completion:5.0];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    OUTLINED_FUNCTION_6();

    return v12();
  }
}

uint64_t sub_267FE658C()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_267FE6818;
  }

  else
  {
    v5 = sub_267FE66B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_267FE66B8()
{

  v1 = *(v0 + 144);
  v2 = sub_26804CD3C();
  v3 = sub_26804E88C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267FA7000, v2, v3, "#MapAttachmentView retrieved current location", v4, 2u);
    OUTLINED_FUNCTION_1_1();
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 176);

  v8 = MEMORY[0x26D60DA70]([v1 coordinate]);
  v9 = v7 + *(v5 + 24);
  v10 = *(v9 + 32);
  v11 = *(v9 + 16);
  *(v0 + 80) = *v9;
  *(v0 + 96) = v11;
  *(v0 + 112) = v10;
  *(v0 + 144) = v8;
  *(v0 + 152) = v12;
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802426C0);
  sub_26804DDFC();

  OUTLINED_FUNCTION_6();

  return v15();
}

uint64_t sub_267FE6818()
{
  v1 = *(v0 + 232);

  swift_willThrow();
  v2 = v1;
  v3 = sub_26804CD3C();
  v4 = sub_26804E89C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267FA7000, v3, v4, "#MapAttachmentView failed to get current location: %@", v8, 0xCu);
    sub_267FC46E8(v9);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6();

  return v12();
}

uint64_t *sub_267FE6974(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_267FE6A04(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_267FE6A70(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267FE6A04(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242738);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_267FE6A94@<X0>(uint64_t a1@<X8>)
{
  sub_26804C39C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_267FE54EC(v5, a1);
}

void sub_267FE6B7C()
{
  sub_26804C39C();
  if (v0 <= 0x3F)
  {
    sub_267FE6D1C(319, &qword_280242678, sub_267FE6CD8, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_267FE6D1C(319, &qword_280242688, type metadata accessor for MKCoordinateRegion, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_267FE6D1C(319, &qword_280242690, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_267FC1004();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_267FE6CD8()
{
  result = qword_280242680;
  if (!qword_280242680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280242680);
  }

  return result;
}

void sub_267FE6D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267FE6DC8(uint64_t a1)
{
  result = sub_267FE73BC(&qword_280241F38, type metadata accessor for MapAttachmentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267FE6E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapAttachmentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FE6EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapAttachmentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FE6F0C()
{
  OUTLINED_FUNCTION_13();
  type metadata accessor for MapAttachmentView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FE6FD4;

  return sub_267FE60DC();
}

uint64_t sub_267FE6FD4()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_6();

  return v0();
}

unint64_t sub_267FE70C0()
{
  result = qword_280242710;
  if (!qword_280242710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802426B8);
    sub_267FE714C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242710);
  }

  return result;
}

unint64_t sub_267FE714C()
{
  result = qword_280242718;
  if (!qword_280242718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802426B0);
    sub_267FE7204();
    sub_267FC126C(&qword_2802423A0, &qword_280241990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242718);
  }

  return result;
}

unint64_t sub_267FE7204()
{
  result = qword_280242720;
  if (!qword_280242720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242700);
    sub_267FE7290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242720);
  }

  return result;
}

unint64_t sub_267FE7290()
{
  result = qword_280242728;
  if (!qword_280242728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802426F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802426A8);
    sub_267FC126C(&qword_2802426F0, &qword_2802426A8);
    swift_getOpaqueTypeConformance2();
    sub_267FE73BC(&qword_280242660, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242728);
  }

  return result;
}

uint64_t sub_267FE73BC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_267FE741C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26804BD7C();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_26804BD2C();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithURL_];

  return v6;
}

uint64_t type metadata accessor for ButtonSnippetView()
{
  result = qword_280242740;
  if (!qword_280242740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267FE753C()
{
  result = sub_26804C81C();
  if (v1 <= 0x3F)
  {
    result = sub_26804E22C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_267FE75DC()
{
  v1 = type metadata accessor for ButtonSnippetView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_267FE8348(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_267FE83AC(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242750);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
  v7 = sub_26804E27C();
  v8 = sub_267FC126C(&qword_280241B08, &qword_280241B10);
  v9 = sub_267FE8480();
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_26804E2AC();
}

uint64_t sub_267FE778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_26804E27C();
  v3 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonSnippetView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  sub_267FE8348(a1, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_267FE83AC(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v17[4] = a1;
  sub_26804DE2C();
  sub_26804D5DC();
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  sub_267FE8480();
  v15 = v17[0];
  sub_26804DABC();
  (*(v3 + 8))(v5, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_267FE7A58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  MEMORY[0x28223BE20](v0 - 8);
  v67 = &v63 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v63 - v5;
  v6 = sub_26804BE4C();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ButtonSnippetView();
  MEMORY[0x28223BE20](v69);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26804BD7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26804C7FC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = (&v63 - v17);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v19 = sub_26804CD4C();
  v65 = __swift_project_value_buffer(v19, qword_2802487E0);
  v20 = sub_26804CD3C();
  v21 = sub_26804E88C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v64 = v18;
    v23 = v15;
    v24 = v13;
    v25 = v14;
    v26 = v11;
    v27 = v10;
    v28 = v9;
    v29 = v22;
    *v22 = 0;
    _os_log_impl(&dword_267FA7000, v20, v21, "#ButtonSnippetView button tapped", v22, 2u);
    v30 = v29;
    v9 = v28;
    v10 = v27;
    v11 = v26;
    v14 = v25;
    v13 = v24;
    v15 = v23;
    v18 = v64;
    MEMORY[0x26D60E1E0](v30, -1, -1);
  }

  v31 = v73;
  sub_26804C80C();
  v32 = (*(v15 + 88))(v18, v14);
  if (v32 == *MEMORY[0x277D5D6E0])
  {
    (*(v15 + 96))(v18, v14);
    (*(v11 + 32))(v13, v18, v10);
    v33 = [objc_allocWithZone(MEMORY[0x277D47AC8]) init];
    v34 = sub_26804BD2C();
    [v33 setRef_];

    (*(v11 + 8))(v13, v10);
    goto LABEL_9;
  }

  if (v32 == *MEMORY[0x277D5D6E8])
  {
    (*(v15 + 96))(v18, v14);
    v35 = *v18;
    v36 = v18[1];
    v33 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
    sub_267FE8698(v35, v36, v33, &selRef_setLaunchId_);
LABEL_9:
    v37 = v33;
    v38 = v68;
    sub_26804BE3C();
    v39 = sub_26804BE0C();
    v41 = v40;
    (*(v70 + 8))(v38, v71);
    sub_267FE8698(v39, v41, v37, &selRef_setAceId_);

    v42 = v72;
    sub_26804E20C();
    v43 = sub_26804E40C();
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {

      return sub_267FB05B4(v42, &qword_280241820);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_268050170;
      v46 = sub_26804BFFC();
      v47 = MEMORY[0x277D63778];
      *(v45 + 56) = v46;
      *(v45 + 64) = v47;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v45 + 32));
      *boxed_opaque_existential_1 = v37;
      *(boxed_opaque_existential_1 + 8) = 0;
      (*(*(v46 - 8) + 104))();
      v49 = v37;
      v50 = v66;
      sub_26804BF8C();
      v51 = sub_26804BF7C();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      v52 = sub_26804E2DC();
      v53 = v67;
      __swift_storeEnumTagSinglePayload(v67, 1, 1, v52);
      sub_26804E3FC();

      sub_267FB05B4(v53, &qword_280241810);
      sub_267FB05B4(v50, &qword_280241818);
      return (*(*(v43 - 8) + 8))(v42, v43);
    }
  }

  sub_267FE8348(v31, v9);
  v54 = sub_26804CD3C();
  v55 = sub_26804E89C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = v9;
    v58 = swift_slowAlloc();
    v74 = v58;
    *v56 = 136315138;
    sub_26804C80C();
    v59 = sub_26804E6EC();
    v61 = v60;
    sub_267FE863C(v57);
    v62 = sub_267FAE0C4(v59, v61, &v74);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_267FA7000, v54, v55, "#ButtonSnippetView unknown action: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x26D60E1E0](v58, -1, -1);
    MEMORY[0x26D60E1E0](v56, -1, -1);
  }

  else
  {

    sub_267FE863C(v9);
  }

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_267FE82E8@<X0>(uint64_t a1@<X8>)
{
  sub_26804C7EC();
  sub_267FB0C1C();
  result = sub_26804D95C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_267FE8348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSnippetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FE83AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FE8410@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonSnippetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267FE778C(v4, a1);
}

unint64_t sub_267FE8480()
{
  result = qword_280242758;
  if (!qword_280242758)
  {
    sub_26804E27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242758);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ButtonSnippetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26804C81C();
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  sub_26804E22C();
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267FE863C(uint64_t a1)
{
  v2 = type metadata accessor for ButtonSnippetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_267FE8698(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_26804E6BC();

  [a3 *a4];
}

uint64_t type metadata accessor for AttachmentView()
{
  result = qword_280242780;
  if (!qword_280242780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267FE8778()
{
  sub_267FE890C(319, &qword_280242790, type metadata accessor for MessageSnippetViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      sub_267FE890C(319, &qword_280242178, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_267FE890C(319, &qword_280242798, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_267FE8970(319, &qword_2802427A0);
          if (v4 <= 0x3F)
          {
            sub_267FE8970(319, &qword_2802427A8);
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

void sub_267FE890C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_267FE8970(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26804CF2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_267FE89D8()
{
  sub_26804D3AC();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_7_1();
  if (!v6)
  {

    sub_26804E8AC();
    v7 = sub_26804D77C();
    OUTLINED_FUNCTION_8_2();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FBACF4(v1, 0);
    (*(v4 + 8))(v2, v0);
    LOBYTE(v1) = v9;
  }

  return v1 & 1;
}

double sub_267FE8AEC()
{
  sub_26804D3AC();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_7_1();
  if (v6)
  {
    return *&v1;
  }

  sub_26804E8AC();
  v7 = sub_26804D77C();
  OUTLINED_FUNCTION_8_2();

  sub_26804D39C();
  swift_getAtKeyPath();
  sub_267FBACF4(v1, 0);
  (*(v4 + 8))(v2, v0);
  return v9;
}

uint64_t sub_267FE8C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427B0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427B8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427C0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  v7 = sub_26803C850();

  v8 = sub_26804E8EC();

  if (v8)
  {
    sub_267FE8E48(v6);
    sub_267FCC068();
    swift_storeEnumTagMultiPayload();
    sub_267FEAD64();
    sub_267FEB1F8();
    OUTLINED_FUNCTION_3_5();
    sub_26804D5AC();
    v9 = v6;
    v10 = &qword_2802427C0;
  }

  else
  {
    sub_267FE9EA0(v2);
    sub_267FCC068();
    swift_storeEnumTagMultiPayload();
    sub_267FEAD64();
    sub_267FEB1F8();
    OUTLINED_FUNCTION_3_5();
    sub_26804D5AC();
    v9 = v2;
    v10 = &qword_2802427B0;
  }

  return sub_267FC16BC(v9, v10);
}

uint64_t sub_267FE8E48@<X0>(uint64_t a1@<X8>)
{
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242858);
  MEMORY[0x28223BE20](v162);
  v4 = &v135 - v3;
  v147 = sub_26804CF1C();
  v145 = *(v147 - 8);
  v5 = MEMORY[0x28223BE20](v147);
  v141 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v140 = &v135 - v7;
  v138 = sub_26804D11C();
  MEMORY[0x28223BE20](v138);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242860);
  MEMORY[0x28223BE20](v150);
  v152 = &v135 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242808);
  MEMORY[0x28223BE20](v136);
  v154 = &v135 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427F8);
  MEMORY[0x28223BE20](v137);
  v155 = &v135 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427E0);
  MEMORY[0x28223BE20](v144);
  v143 = &v135 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242868);
  v146 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v142 = &v135 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802427D8);
  v15 = MEMORY[0x28223BE20](v161);
  v139 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v135 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v135 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v135 - v25;
  v27 = sub_26804BD7C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v158 = &v135 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  v148 = v1;
  sub_26804DF1C();
  v32 = sub_26803C850();

  v33 = sub_268043DF4(v32);
  if (v33)
  {
    v34 = v33;
    *&v153 = v26;
    v164 = v27;
    v135 = v9;
    v156 = v4;
    v157 = a1;
    v35 = sub_267FDA00C(v33);
    v36 = 0;
    v166 = v34 & 0xC000000000000001;
    v165 = v34 & 0xFFFFFFFFFFFFFF8;
    *&v159 = v28 + 32;
    v163 = MEMORY[0x277D84F90];
    v167 = v28;
LABEL_3:
    v37 = v164;
    while (v35 != v36)
    {
      if (v166)
      {
        v38 = MEMORY[0x26D60D7C0](v36, v34);
      }

      else
      {
        if (v36 >= *(v165 + 16))
        {
          goto LABEL_38;
        }

        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v40 = [v38 audioMessageFile];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 fileURL];

        if (v42)
        {
          sub_26804BD4C();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v28 = v167;

        v44 = v43;
        v37 = v164;
        __swift_storeEnumTagSinglePayload(v21, v44, 1, v164);
        sub_267FEB2B4();
        if (__swift_getEnumTagSinglePayload(v24, 1, v37) != 1)
        {
          v45 = v37;
          v46 = *v159;
          (*v159)(v160, v24, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_268006FD0(0, *(v163 + 16) + 1, 1, v163);
            v163 = v50;
          }

          v48 = *(v163 + 16);
          v47 = *(v163 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_268006FD0(v47 > 1, v48 + 1, 1, v163);
            v163 = v51;
          }

          v49 = v163;
          *(v163 + 16) = v48 + 1;
          v46(v49 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v48, v160, v164);
          ++v36;
          goto LABEL_3;
        }
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v24, 1, 1, v37);
        v28 = v167;
      }

      sub_267FC16BC(v24, &qword_280242C60);
      ++v36;
    }

    v26 = v153;
    sub_26804945C(v163, v153);

    if (__swift_getEnumTagSinglePayload(v26, 1, v37) == 1)
    {
      goto LABEL_27;
    }

    v52 = v158;
    (*v159)(v158, v26, v37);
    v53 = sub_267FD1574();
    if (!v53)
    {
      (*(v28 + 8))(v52, v37);
      goto LABEL_28;
    }

    v54 = v53;
    v165 = sub_26804D3DC();
    LOBYTE(v174[0]) = 0;
    v166 = v54;
    sub_267FEA698(v52, v148, v54, &v168);
    v55 = *(&v168 + 1);
    v160 = v168;
    v163 = v171;
    v159 = v169;
    v153 = v170;
    v56 = v174[0];
    v57 = sub_26804D79C();
    sub_26804CE1C();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    LOBYTE(v175[0]) = 0;
    LOBYTE(v54) = sub_26804D80C();
    sub_267FE8AEC();
    sub_26804CE1C();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    LOBYTE(v168) = 0;
    KeyPath = swift_getKeyPath();
    v75 = v154;
    v76 = &v154[*(v136 + 36)];
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
    v78 = *MEMORY[0x277CDFA88];
    v79 = sub_26804D0CC();
    (*(*(v79 - 8) + 104))(v76 + v77, v78, v79);
    *v76 = KeyPath;
    *v75 = v165;
    *(v75 + 1) = 0x4028000000000000;
    v75[16] = v56;
    *(v75 + 17) = v175[0];
    *(v75 + 5) = *(v175 + 3);
    *(v75 + 3) = v160;
    *(v75 + 4) = v55;
    *(v75 + 40) = v159;
    *(v75 + 56) = v153;
    *(v75 + 9) = v163;
    v75[80] = v57;
    *(v75 + 81) = v174[0];
    *(v75 + 21) = *(v174 + 3);
    *(v75 + 11) = v59;
    *(v75 + 12) = v61;
    *(v75 + 13) = v63;
    *(v75 + 14) = v65;
    v75[120] = 0;
    *(v75 + 31) = *&v173[3];
    *(v75 + 121) = *v173;
    v75[128] = v54;
    *(v75 + 33) = *&v172[3];
    *(v75 + 129) = *v172;
    *(v75 + 17) = v67;
    *(v75 + 18) = v69;
    *(v75 + 19) = v71;
    *(v75 + 20) = v73;
    v75[168] = 0;
    if (sub_267FE89D8())
    {
      sub_267FE8AEC();
    }

    v85 = v135;
    sub_268002388();
    sub_26804DFAC();
    sub_26804CFBC();
    v86 = v155;
    sub_267FEB2B4();
    v87 = &v86[*(v137 + 36)];
    v88 = v169;
    *v87 = v168;
    *(v87 + 1) = v88;
    *(v87 + 2) = v170;
    v89 = *(v138 + 20);
    v90 = *MEMORY[0x277CE0118];
    v91 = sub_26804D48C();
    (*(*(v91 - 8) + 104))(&v85[v89], v90, v91);
    __asm { FMOV            V0.2D, #14.0 }

    *v85 = _Q0;
    v97 = type metadata accessor for AttachmentView();
    v98 = v140;
    sub_267FB1634(v97, v99, v100, v101, v102, v103, v104, v105, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
    v106 = v145;
    v107 = v141;
    v108 = v147;
    (*(v145 + 104))(v141, *MEMORY[0x277CDF3C0], v147);
    LOBYTE(v90) = sub_26804CF0C();
    v109 = *(v106 + 8);
    v109(v107, v108);
    v109(v98, v108);
    if (v90)
    {
      v110 = [objc_opt_self() quaternarySystemFillColor];
      v111 = sub_26804DC1C();
    }

    else
    {
      v111 = sub_26804DC9C();
    }

    v112 = v111;
    v113 = v167;
    v114 = swift_getKeyPath();
    v115 = v152;
    sub_267FEB370();
    v116 = &v115[*(v150 + 36)];
    *v116 = v114;
    v116[1] = v112;
    v117 = sub_26804DFAC();
    v119 = v118;
    v120 = v143;
    v121 = v143 + *(v144 + 36);
    sub_267FEB2B4();
    v122 = (v121 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242848) + 36));
    *v122 = v117;
    v122[1] = v119;
    sub_267FEB2B4();
    sub_267FEAEB8();
    v123 = v142;
    sub_26804D9AC();
    sub_267FC16BC(v120, &qword_2802427E0);
    LOBYTE(v117) = sub_26804D79C();
    sub_26804CE1C();
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v132 = v139;
    (*(v146 + 32))(v139, v123, v149);
    v133 = v132 + *(v161 + 36);
    *v133 = v117;
    *(v133 + 8) = v125;
    *(v133 + 16) = v127;
    *(v133 + 24) = v129;
    *(v133 + 32) = v131;
    *(v133 + 40) = 0;
    v134 = v151;
    sub_267FB4BC4();
    sub_267FCC068();
    swift_storeEnumTagMultiPayload();
    sub_267FEADF0();
    sub_26804D5AC();

    sub_267FC16BC(v134, &qword_2802427D8);
    return (*(v113 + 8))(v158, v164);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
LABEL_27:
    sub_267FC16BC(v26, &qword_280242C60);
LABEL_28:
    if (qword_280241130 != -1)
    {
LABEL_39:
      swift_once();
    }

    v80 = sub_26804CD4C();
    __swift_project_value_buffer(v80, qword_2802487E0);
    v81 = sub_26804CD3C();
    v82 = sub_26804E89C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_267FA7000, v81, v82, "#AttachmentView no audio URL or wave form image", v83, 2u);
      MEMORY[0x26D60E1E0](v83, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_267FEADF0();
    return sub_26804D5AC();
  }
}

uint64_t sub_267FE9EA0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242870);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = type metadata accessor for AttachmentView();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242878);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  v9 = sub_26804DF1C();
  v10 = (*(*v50[0] + 456))(v9);

  if (v10)
  {
    sub_26804DF1C();
    type metadata accessor for MessageDraftSnippetViewModel();
    if (swift_dynamicCastClass())
    {
      v11 = sub_26803FB00();
LABEL_6:
      v12 = v11;
      goto LABEL_8;
    }
  }

  else
  {
    sub_26804DF1C();
    type metadata accessor for SentMessageSnippetViewModel();
    if (swift_dynamicCastClass())
    {
      v11 = sub_26802D410();
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_8:

  sub_26804DF1C();
  v13 = sub_26803C850();

  sub_268043DF4(v13);
  v14 = sub_26804DF1C();
  (*(*v50[0] + 456))(v14);

  sub_26804C8DC();

  sub_267FEB428(v50, v42);
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242890);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242898);
    if (swift_dynamicCast())
    {
      if (*(&v45 + 1))
      {
        sub_267FEB498(&v44, v47);
        v15 = v48;
        v16 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v37 = v12;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v36 = v2;
        v18 = AssociatedTypeWitness;
        v35 = &v33;
        v19 = *(AssociatedTypeWitness - 8);
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v34 = v7;
        v21 = &v33 - v20;
        (*(v16 + 32))(v15, v16);
        swift_getAssociatedConformanceWitness();
        v22 = sub_26804D97C();
        (*(v19 + 8))(v21, v18);
        *&v44 = v22;
        sub_267FEB30C(v1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        swift_allocObject();
        sub_267FEB370();
        v23 = MEMORY[0x277CE11C8];
        v24 = MEMORY[0x277CE11C0];
        v25 = v39;
        sub_26804DAEC();

        v26 = v40;
        v27 = v34;
        (*(v40 + 16))(v4, v25, v34);
        swift_storeEnumTagMultiPayload();
        *&v44 = v23;
        *(&v44 + 1) = v24;
        swift_getOpaqueTypeConformance2();
        sub_26804D5AC();

        (*(v26 + 8))(v25, v27);
        sub_267FC16BC(v50, &qword_280242880);
        return __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
    }
  }

  else
  {
    sub_267FC16BC(v42, &qword_280242880);
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
  }

  sub_267FC16BC(&v44, &qword_280242888);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v29 = sub_26804CD4C();
  __swift_project_value_buffer(v29, qword_2802487E0);
  v30 = sub_26804CD3C();
  v31 = sub_26804E89C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_267FA7000, v30, v31, "#AttachmentView unsupported attachments", v32, 2u);
    MEMORY[0x26D60E1E0](v32, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v47[0] = MEMORY[0x277CE11C8];
  v47[1] = MEMORY[0x277CE11C0];
  swift_getOpaqueTypeConformance2();
  sub_26804D5AC();

  return sub_267FC16BC(v50, &qword_280242880);
}

uint64_t sub_267FEA698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a3;
  v34 = sub_26804DD2C();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for AttachmentView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_26804BD7C();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1);
  sub_267FEB30C(a2, &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_allocObject();
  sub_267FEB370();
  v19 = sub_268026FE8(v17);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *MEMORY[0x277CE1020];
  v27 = sub_26804DD4C();
  (*(*(v27 - 8) + 104))(v12, v26, v27);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v27);
  sub_26804DD3C();
  sub_267FC16BC(v12, &qword_280241E28);
  v28 = v34;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v34);
  v29 = sub_26804DD5C();

  (*(v7 + 8))(v9, v28);
  v30 = sub_26804DCCC();
  KeyPath = swift_getKeyPath();
  *a4 = v19;
  a4[1] = v21;
  a4[2] = v23;
  a4[3] = v25;
  a4[4] = v29;
  a4[5] = KeyPath;
  a4[6] = v30;
}

uint64_t sub_267FEAA54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  type metadata accessor for MessageDraftSnippetViewModel();
  if (swift_dynamicCastClass())
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
      _os_log_impl(&dword_267FA7000, v1, v2, "#AttachmentView player button tapped, cancelling auto send", v3, 2u);
      MEMORY[0x26D60E1E0](v3, -1, -1);
    }

    sub_268042250();
  }
}

uint64_t sub_267FEAB8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - v1;
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
    _os_log_impl(&dword_267FA7000, v4, v5, "#AttachmentView component tapped, punching out", v6, 2u);
    MEMORY[0x26D60E1E0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  v7 = v9[1];
  type metadata accessor for AttachmentView();
  sub_26804E20C();
  (*(*v7 + 496))(v2);

  return sub_267FC16BC(v2, &qword_280241820);
}

unint64_t sub_267FEAD64()
{
  result = qword_2802427C8;
  if (!qword_2802427C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427C0);
    sub_267FEADF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802427C8);
  }

  return result;
}

unint64_t sub_267FEADF0()
{
  result = qword_2802427D0;
  if (!qword_2802427D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427E0);
    sub_267FEAEB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802427D0);
  }

  return result;
}

unint64_t sub_267FEAEB8()
{
  result = qword_2802427E8;
  if (!qword_2802427E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427E0);
    sub_267FEAF70();
    sub_267FC126C(&qword_280242840, &qword_280242848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802427E8);
  }

  return result;
}

unint64_t sub_267FEAF70()
{
  result = qword_2802427F0;
  if (!qword_2802427F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427F8);
    sub_267FEAFFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802427F0);
  }

  return result;
}

unint64_t sub_267FEAFFC()
{
  result = qword_280242800;
  if (!qword_280242800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242808);
    sub_267FEB0B4();
    sub_267FC126C(&unk_280242C10, &qword_280242BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242800);
  }

  return result;
}

unint64_t sub_267FEB0B4()
{
  result = qword_280242810;
  if (!qword_280242810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242818);
    sub_267FEB140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242810);
  }

  return result;
}

unint64_t sub_267FEB140()
{
  result = qword_280242820;
  if (!qword_280242820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242828);
    sub_267FC126C(&qword_280242830, &qword_280242838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242820);
  }

  return result;
}

unint64_t sub_267FEB1F8()
{
  result = qword_280242850;
  if (!qword_280242850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802427B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242850);
  }

  return result;
}

uint64_t sub_267FEB2B4()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

uint64_t sub_267FEB30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FEB370()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

uint64_t sub_267FEB3C8()
{
  type metadata accessor for AttachmentView();

  return sub_267FEAA54();
}

uint64_t sub_267FEB428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FEB498(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for AttachmentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CF1C();
    OUTLINED_FUNCTION_4();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0BC();
    OUTLINED_FUNCTION_4();
    (*(v12 + 8))(v5 + v11);
  }

  else
  {
  }

  sub_267FBACF4(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  sub_267FBACF4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_267FEB724()
{
  result = qword_2802428A0;
  if (!qword_2802428A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428A8);
    sub_267FEAD64();
    sub_267FEB1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802428A0);
  }

  return result;
}

uint64_t sub_267FEB7BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_267FEB7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267FEB880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428B0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = v54 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428B8);
  OUTLINED_FUNCTION_1();
  v55 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = v54 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428C0);
  OUTLINED_FUNCTION_1();
  v61 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v15);
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v17);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = v54 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v22);
  v54[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v24);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v26);
  sub_26804D78C();
  v68 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802428F0);
  sub_267FC126C(&qword_2802428F8, &qword_2802428F0);
  sub_26804CEBC();
  if (*(v2 + 80))
  {
    sub_26804E04C();
  }

  else
  {
    sub_26804E05C();
  }

  v27 = sub_267FC126C(&qword_280242900, &qword_2802428B0);
  sub_26804DB5C();
  (*(v5 + 8))(v8, v3);
  __src[0] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242908);
  sub_26804DDEC();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_10_3(v28);
  sub_267FEF22C(v2, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242910);
  *&__src[0] = v3;
  *(&__src[0] + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_267FEF264();
  v29 = v56;
  v30 = v58;
  sub_26804DBEC();

  (*(v55 + 8))(v12, v30);
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_10_3(v31);
  OUTLINED_FUNCTION_22();
  v32 = v60;
  v34 = (v60 + v33);
  sub_26804D02C();
  sub_267FEF22C(v2, __src);
  sub_26804E82C();
  *v34 = &unk_268052068;
  v34[1] = v31;
  (*(v61 + 32))(v32, v29, v62);
  sub_26804DFAC();
  sub_26804D13C();
  sub_267FDBADC(v32, v20, &qword_2802428C8);
  OUTLINED_FUNCTION_22();
  memcpy(&v20[v35], __src, 0x70uLL);
  v36 = v66;
  sub_267FDBADC(v20, v66, &qword_2802428D0);
  OUTLINED_FUNCTION_22();
  *(v36 + v37) = 256;
  OUTLINED_FUNCTION_22();
  v38 = v65;
  v40 = (v65 + v39);
  v41 = *(sub_26804D11C() + 20);
  v42 = *MEMORY[0x277CE0118];
  sub_26804D48C();
  OUTLINED_FUNCTION_4();
  (*(v43 + 104))(&v40[v41], v42);
  __asm { FMOV            V0.2D, #16.0 }

  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
  sub_267FDBADC(v36, v38, &qword_2802428D8);
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_10_3(v49);
  v50 = v63;
  sub_267FDBADC(v38, v63, &qword_2802428E0);
  OUTLINED_FUNCTION_22();
  v52 = (v50 + v51);
  *v52 = 0;
  v52[1] = 0;
  v52[2] = sub_267FEF3A8;
  v52[3] = v49;
  sub_267FDBADC(v50, v67, &qword_2802428E8);
  return sub_267FEF22C(v2, v69);
}

uint64_t sub_267FEC04C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26804D3DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242950);
  return sub_267FEC0A4(a1);
}

uint64_t sub_267FEC0A4(_OWORD *a1)
{
  v5[0] = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242948);
  sub_26804DDEC();
  v2 = *(v6 + 16);

  v6 = 0;
  v7 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0x51uLL);
  sub_267FEF22C(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242960);
  sub_267FEF4E0();
  sub_267FEF5C0();
  return sub_26804DEFC();
}

uint64_t sub_267FEC1D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242988);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = *a1;
  v19 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242948);
  result = sub_26804DDEC();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= *(v18 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = v18 + 16 * v9;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  sub_267FAE54C(v12, v13);

  sub_267FEF670();
  sub_267FAE54C(v12, v13);
  if (sub_267FEF3B0(v12, v13))
  {
    sub_26804DD0C();
    sub_267FE4014(v12, v13);
    *v8 = sub_26804DF8C();
    v8[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242990);
    sub_267FEC394(v9, a2, v8 + *(v15 + 44));

    sub_267FDBADC(v8, a3, &qword_280242988);
    v16 = 0;
  }

  else
  {
    sub_267FE4014(v12, v13);
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v16, 1, v6);
}

uint64_t sub_267FEC394@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v84 = a3;
  v73 = sub_26804D10C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242998);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v65 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429A0);
  MEMORY[0x28223BE20](v79);
  v68 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429A8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v65 - v11;
  v12 = sub_26804DD2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802424E0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v65 - v17);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429B0);
  v77 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429B8);
  v81 = *(v20 - 8);
  v82 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v65 - v23;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0FE0], v12);
  v24 = sub_26804DD5C();
  (*(v13 + 8))(v15, v12);
  v25 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242398) + 36);
  v26 = *(sub_26804D11C() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_26804D48C();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #16.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
  *v18 = v24;
  v34 = v18 + *(v16 + 36);
  *v34 = 0;
  *(v34 + 4) = 1;
  v35 = swift_allocObject();
  v66 = a1;
  *(v35 + 16) = a1;
  memcpy((v35 + 24), a2, 0x51uLL);
  sub_267FEF22C(a2, &v86);
  v36 = sub_267FE48B8();
  sub_26804DAEC();

  sub_267FC16BC(v18, &qword_2802424E0);
  v85 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v37 = swift_allocObject();
  memcpy((v37 + 16), a2, 0x51uLL);
  sub_267FEF22C(a2, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242498);
  *&v86 = v16;
  *(&v86 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  sub_267FC126C(&qword_280242518, &qword_280242498);
  v38 = v79;
  v39 = v75;
  v40 = v76;
  v41 = v74;
  sub_26804DB1C();

  v42 = v78;

  (*(v77 + 8))(v41, v40);
  v43 = 1;
  if (*(a2 + 80))
  {
    v86 = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242948);
    sub_26804DDEC();
    v44 = *(v85 + 16);

    if (v44 < 2)
    {
      v43 = 1;
    }

    else
    {
      v45 = swift_allocObject();
      memcpy((v45 + 16), a2, 0x51uLL);
      *(v45 + 104) = v66;
      sub_267FEF22C(a2, &v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429C8);
      sub_267FEF6D4();
      v46 = v67;
      sub_26804DE2C();
      v47 = v71;
      sub_26804D0FC();
      sub_267FC126C(&qword_280242A08, &qword_280242998);
      sub_267FEFDF8(&qword_280242288, MEMORY[0x277CDDB18]);
      v48 = v68;
      v49 = v70;
      v50 = v73;
      sub_26804DABC();
      (*(v72 + 8))(v47, v50);
      (*(v69 + 8))(v46, v49);
      LOBYTE(v45) = sub_26804D7AC();
      sub_26804CE1C();
      v51 = v48 + *(v38 + 36);
      *v51 = v45;
      *(v51 + 8) = v52;
      *(v51 + 16) = v53;
      *(v51 + 24) = v54;
      *(v51 + 32) = v55;
      *(v51 + 40) = 0;
      sub_267FDBADC(v48, v42, &qword_2802429A0);
      v43 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v38);
  v57 = v80;
  v56 = v81;
  v58 = *(v81 + 16);
  v59 = v82;
  v58(v80, v39, v82);
  v60 = v83;
  sub_267FB4D10(v42, v83);
  v61 = v84;
  v58(v84, v57, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429C0);
  sub_267FB4D10(v60, &v61[*(v62 + 48)]);
  sub_267FB4D74(v42);
  v63 = *(v56 + 8);
  v63(v39, v59);
  sub_267FB4D74(v60);
  return (v63)(v57, v59);
}

uint64_t sub_267FECDE0(uint64_t a1)
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
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_267FA7000, v3, v4, "#ShareThisPhotosRowView Tap to show preview for photo %ld", v5, 0xCu);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242580);
  return sub_26804DDFC();
}

uint64_t sub_267FECF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242538);
  sub_267FE4978();
  return sub_26804D04C();
}

uint64_t sub_267FECFB0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_26804D3BC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242558);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  *v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242908);
  sub_26804DDEC();
  v11 = v31;
  v31 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242580);
  sub_26804DE0C();
  v24 = *v27;
  v12 = *&v27[16];
  v31 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v13 = *v27;
  v14 = v27[16];
  *v27 = v11;
  *&v27[8] = v24;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v15 = sub_267FE4B9C();
  sub_26804DB7C();
  (*(v4 + 8))(v6, v3);

  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242560);
  *v27 = &type metadata for PhotoQuickLookController;
  *&v27[8] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242570);
  v17 = sub_267FC126C(&qword_280242578, &qword_280242570);
  *v27 = v16;
  *&v27[8] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_26804DBBC();
  (*(v8 + 8))(v10, v7);
  v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x51uLL);
  v20 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242550) + 36));
  *v20 = sub_267FEF924;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = swift_allocObject();
  memcpy((v21 + 16), a1, 0x51uLL);
  v22 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242538) + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_267FEF954;
  v22[3] = v21;
  sub_267FEF22C(a1, v27);
  return sub_267FEF22C(a1, v27);
}

uint64_t sub_267FED408(uint64_t a1)
{
  v2 = sub_26804D61C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242570);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26804D60C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  sub_26804CF7C();
  v7 = sub_267FC126C(&qword_280242578, &qword_280242570);
  MEMORY[0x26D60C280](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_267FED5F4(const void *a1)
{
  sub_26804D45C();
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x51uLL);
  sub_267FEF22C(a1, v4);
  return sub_26804DE3C();
}

void sub_267FED710(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v4 = v2;
    a2();
  }

  else
  {
    sub_26804E62C();
    sub_267FEFDF8(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_267FED7C4(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3 - 8];
  v5 = sub_26804E84C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_26804E81C();
  sub_267FEF22C(a1, v11);
  v6 = sub_26804E80C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, a1, 0x51uLL);
  sub_267FF4998(0, 0, v4, &unk_2680520A8, v7);
}

uint64_t sub_267FED8DC()
{
  v0[2] = sub_26804E81C();
  v0[3] = sub_26804E80C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267FED988;

  return sub_267FEDAB0();
}

uint64_t sub_267FED988()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  sub_26804E7EC();
  v3 = OUTLINED_FUNCTION_5_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267FEDAB0()
{
  OUTLINED_FUNCTION_13();
  v1[31] = v0;
  v1[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242928);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242930);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v2 = sub_26804BD7C();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  sub_26804E81C();
  v1[41] = sub_26804E80C();
  sub_26804E7EC();
  v3 = OUTLINED_FUNCTION_5_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_267FEDC30()
{
  v1 = *(v0 + 248);

  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *(v0 + 144) = v3;
  *(v0 + 152) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  sub_267FDC224(v0 + 144, v0 + 168, &qword_280242938);
  sub_267FDC224(v0 + 152, v0 + 176, &qword_280242940);
  sub_267FDC224(v0 + 144, v0 + 184, &qword_280242938);
  sub_267FDC224(v0 + 152, v0 + 192, &qword_280242940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242948);
  sub_26804DDEC();

  v49 = v2;
  v50 = v3;
  *(v0 + 48) = v3;
  v51 = (v0 + 16);
  *(v0 + 56) = v2;
  *(v0 + 200) = MEMORY[0x277D84F90];
  sub_26804DDFC();
  sub_267FC16BC(v0 + 144, &qword_280242938);
  sub_267FC16BC(v0 + 152, &qword_280242940);
  *(v0 + 16) = *v1;
  *(v0 + 64) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242908);
  sub_26804DDEC();
  v4 = *(v0 + 208);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 296);
    v8 = *(v6 + 16);
    v7 = v6 + 16;
    v56 = v8;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = *(v7 + 56);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v0 + 320);
      v13 = *(v0 + 288);
      v56(v12, v9, v13);
      v14 = sub_26804BD5C();
      (*(v7 - 8))(v12, v13);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v11;
      }

      else
      {
        sub_2680071C4();
      }

      v16 = *(v15 + 16);
      v11 = v15;
      if (v16 >= *(v15 + 24) >> 1)
      {
        sub_2680071C4();
        v11 = v17;
      }

      *(v11 + 16) = v16 + 1;
      *(v11 + v16 + 32) = v14 & 1;
      v9 += v10;
      --v5;
    }

    while (v5);
    v54 = v11;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  v18 = *(v0 + 296);
  *(v0 + 80) = *v51;
  sub_26804DDEC();
  v19 = 0;
  v20 = *(v0 + 216);
  v21 = *(v20 + 16);
  v22 = (v18 + 8);
  v52 = MEMORY[0x277D84F90];
  while (v21 != v19)
  {
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    (*(v18 + 16))(*(v0 + 312), v20 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v19, *(v0 + 288));
    v23 = sub_26804BD8C();
    v25 = v24;
    (*v22)(*(v0 + 312), *(v0 + 288));
    v48 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2680070F4();
      v52 = v28;
    }

    v26 = *(v52 + 16);
    if (v26 >= *(v52 + 24) >> 1)
    {
      sub_2680070F4();
      v52 = v29;
    }

    ++v19;
    *(v52 + 16) = v26 + 1;
    v27 = v52 + 16 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = v25;
    v21 = v48;
  }

  v30 = *(v0 + 296);
  v55 = *(v0 + 256);

  *(v0 + 96) = *v51;
  sub_26804DDEC();
  v31 = 0;
  v32 = *(v0 + 224);
  v33 = (v30 + 32);
  v53 = v32;
  v34 = *(v32 + 16);
  while (1)
  {
    if (v31 == v34)
    {
      v35 = 1;
      v31 = v34;
    }

    else
    {
      if (v31 >= *(v32 + 16))
      {
        goto LABEL_36;
      }

      v36 = *(v0 + 288);
      v38 = *(v0 + 264);
      v37 = *(v0 + 272);
      v39 = v32 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v31;
      v40 = *(v55 + 48);
      *v38 = v31;
      (*(v18 + 16))(&v38[v40], v39, v36);
      sub_267FDBADC(v38, v37, &qword_280242928);
      v35 = 0;
      ++v31;
    }

    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 256);
    __swift_storeEnumTagSinglePayload(v42, v35, 1, v43);
    sub_267FDBADC(v42, v41, &qword_280242930);
    if (__swift_getEnumTagSinglePayload(v41, 1, v43) == 1)
    {
      break;
    }

    v44 = *(v0 + 280);
    v45 = *v44;
    (*v33)(*(v0 + 304), &v44[*(v55 + 48)], *(v0 + 288));
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v45 >= *(v54 + 16))
    {
      goto LABEL_35;
    }

    if (*(v54 + 32 + v45) == 1)
    {
      sub_26804BD3C();
    }

    (*v22)(*(v0 + 304), *(v0 + 288));
    v32 = v53;
  }

  *(v0 + 112) = v50;
  *(v0 + 120) = v49;
  sub_26804DDEC();
  sub_26803542C(v52);
  v46 = *(v0 + 232);
  *(v0 + 128) = v50;
  *(v0 + 136) = v49;
  *(v0 + 240) = v46;
  sub_26804DDFC();
  sub_267FC16BC(v0 + 144, &qword_280242938);
  sub_267FC16BC(v0 + 152, &qword_280242940);

  v47 = *(v0 + 8);

  v47();
}

uint64_t sub_267FEE474()
{
  v0[2] = sub_26804E81C();
  v0[3] = sub_26804E80C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267FEE520;

  return sub_267FEDAB0();
}

uint64_t sub_267FEE520()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  sub_26804E7EC();
  v3 = OUTLINED_FUNCTION_5_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267FEE648()
{
  OUTLINED_FUNCTION_13();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267FEE6A4()
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
    _os_log_impl(&dword_267FA7000, v1, v2, "#ShareThisPhotosRowView Disappeared", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  return sub_26804DDFC();
}

void sub_267FEE7B8(uint64_t *a1, unint64_t a2)
{
  v4 = sub_26804C85C();
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26804BD7C();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_267FA7000, v9, v10, "#ShareThisPhotosRowView Close Image tapped", v11, 2u);
    MEMORY[0x26D60E1E0](v11, -1, -1);
  }

  v13 = *a1;
  v12 = a1[1];
  v63 = v12;
  v64[0] = v13;
  v59 = v13;
  v60 = v12;
  sub_267FDC224(v64, &v57, &qword_280242910);
  sub_267FDC224(&v63, &v57, &qword_280242A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242908);
  sub_26804DDEC();
  v14 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_267FEF900(v14);
    v14 = v43;
  }

  v15 = *(v14 + 16);
  if (v15 <= a2)
  {
    __break(1u);
  }

  else
  {
    v47 = v4;
    v16 = v15 - 1;
    v50 = v6;
    v17 = v6 + 8;
    v18 = *(v6 + 8);
    v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    v20 = v14 + v46 + v19 * a2;
    v52 = v18;
    v53 = v17;
    v18(v20, v55);
    v51 = v19;
    sub_26800746C(v20 + v19, v16 - a2, v20);
    *(v14 + 16) = v16;
    v57 = v13;
    v58 = v12;
    v61 = v14;
    sub_26804DDFC();
    sub_267FC16BC(v64, &qword_280242910);
    sub_267FC16BC(&v63, &qword_280242A10);
    v21 = a1[6];
    v22 = a1[7];
    v61 = v22;
    v62 = v21;
    v59 = v21;
    v60 = v22;
    sub_267FDC224(&v62, &v57, &qword_280242938);
    sub_267FDC224(&v61, &v57, &qword_280242940);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242948);
    sub_26804DDEC();

    v57 = v21;
    v58 = v22;
    v23 = MEMORY[0x277D84F90];
    v56 = MEMORY[0x277D84F90];
    sub_26804DDFC();
    sub_267FC16BC(&v62, &qword_280242938);
    sub_267FC16BC(&v61, &qword_280242940);
    v59 = v13;
    v60 = v12;
    sub_26804DDEC();
    v24 = v57;
    v25 = *(v57 + 16);
    if (v25)
    {
      v45 = a1;
      v59 = v23;
      sub_267FCB224(0, v25, 0);
      v23 = v59;
      v44[1] = v24;
      v26 = v24 + v46;
      v27 = v50 + 16;
      v50 = *(v50 + 16);
      do
      {
        v28 = v54;
        v29 = v55;
        v30 = v27;
        (v50)(v54, v26, v55);
        v31 = sub_26804BD6C();
        v33 = v32;
        v52(v28, v29);
        v59 = v23;
        v35 = *(v23 + 16);
        v34 = *(v23 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_267FCB224(v34 > 1, v35 + 1, 1);
          v23 = v59;
        }

        *(v23 + 16) = v35 + 1;
        v36 = v23 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v33;
        v26 += v51;
        --v25;
        v27 = v30;
      }

      while (v25);

      a1 = v45;
    }

    else
    {
    }

    v37 = a1[8];
    v38 = v49;
    if (v37)
    {
      v39 = v47;
      v40 = v48;
      (*(v49 + 104))(v48, *MEMORY[0x277D5D730], v47);
      v41 = v37;
      sub_26804C84C();
      (*(v38 + 8))(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2680518B0;
      v59 = 0x656D686361747461;
      v60 = 0xEB0000000073746ELL;
      sub_26804EAFC();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417C8);
      *(inited + 72) = v23;
      v59 = 0x696669746E656469;
      v60 = 0xEB00000000737265;
      sub_26804EAFC();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242A18);
      *(inited + 144) = MEMORY[0x277D84F90];
      sub_26804E65C();
      sub_26804E60C();

      return;
    }
  }

  sub_26804E62C();
  sub_267FEFDF8(&qword_2802412E0, MEMORY[0x277D63F60]);
  sub_26804D15C();
  __break(1u);
}

uint64_t sub_267FEEEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26804D0BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __dst[0] = sub_26804DD1C();
  (*(v3 + 104))(v5, *MEMORY[0x277CDF9E0], v2);
  sub_26804DB0C();
  (*(v3 + 8))(v5, v2);

  v6 = sub_26804DC9C();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429F0) + 36)) = v6;
  LOBYTE(v6) = sub_26804D7AC();
  sub_26804CE1C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429E0) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_26804DFAC();
  v18 = v17;
  sub_267FEF10C(v22);
  memcpy(v23, v22, 0x68uLL);
  v23[13] = v16;
  v23[14] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802429C8);
  memcpy((a1 + *(v19 + 36)), v23, 0x78uLL);
  memcpy(__dst, v22, 0x68uLL);
  __dst[13] = v16;
  __dst[14] = v18;
  sub_267FDC224(v23, v21, &qword_280242A00);
  return sub_267FC16BC(__dst, &qword_280242A00);
}

double sub_267FEF10C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26804DC9C();
  sub_26804CF6C();
  v3 = sub_26804DFAC();
  v5 = v4;
  v6 = sub_26804DC6C();
  v7 = sub_26804DFAC();
  *a1 = v6;
  *(a1 + 8) = 256;
  result = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v2;
  *(a1 + 64) = 256;
  *(a1 + 72) = v3;
  *(a1 + 80) = v5;
  *(a1 + 88) = v7;
  *(a1 + 96) = v9;
  return result;
}

unint64_t sub_267FEF264()
{
  result = qword_280242918;
  if (!qword_280242918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242910);
    sub_267FEFDF8(&qword_280242920, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242918);
  }

  return result;
}

uint64_t sub_267FEF318()
{
  OUTLINED_FUNCTION_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FCC8AC;

  return sub_267FEE474();
}

id sub_267FEF3B0(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26804BD9C();
  v6 = [v4 initWithData_];

  sub_267FE4014(a1, a2);
  return v6;
}

uint64_t sub_267FEF428()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FEFE40;

  return sub_267FED8DC();
}

unint64_t sub_267FEF4E0()
{
  result = qword_280242968;
  if (!qword_280242968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242958);
    sub_267FEF56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242968);
  }

  return result;
}

unint64_t sub_267FEF56C()
{
  result = qword_280242970;
  if (!qword_280242970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242970);
  }

  return result;
}

unint64_t sub_267FEF5C0()
{
  result = qword_280242978;
  if (!qword_280242978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242960);
    sub_267FC126C(&qword_280242980, &qword_280242988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242978);
  }

  return result;
}

unint64_t sub_267FEF670()
{
  result = qword_280242528;
  if (!qword_280242528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280242528);
  }

  return result;
}

unint64_t sub_267FEF6D4()
{
  result = qword_2802429D0;
  if (!qword_2802429D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802429C8);
    sub_267FEF78C();
    sub_267FC126C(&qword_2802429F8, &qword_280242A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802429D0);
  }

  return result;
}

unint64_t sub_267FEF78C()
{
  result = qword_2802429D8;
  if (!qword_2802429D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802429E0);
    sub_267FEF818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802429D8);
  }

  return result;
}

unint64_t sub_267FEF818()
{
  result = qword_2802429E8;
  if (!qword_2802429E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802429F0);
    swift_getOpaqueTypeConformance2();
    sub_267FC126C(&qword_280241B18, &qword_280241B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802429E8);
  }

  return result;
}

uint64_t objectdestroyTm_7(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_267FEFA08()
{
  result = qword_280242A20;
  if (!qword_280242A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428E8);
    sub_267FEFA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242A20);
  }

  return result;
}

unint64_t sub_267FEFA94()
{
  result = qword_280242A28;
  if (!qword_280242A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428E0);
    sub_267FEFB4C();
    sub_267FC126C(&qword_2802423A0, &qword_280241990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242A28);
  }

  return result;
}

unint64_t sub_267FEFB4C()
{
  result = qword_280242A30;
  if (!qword_280242A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428D8);
    sub_267FEFBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242A30);
  }

  return result;
}

unint64_t sub_267FEFBD8()
{
  result = qword_280242A38;
  if (!qword_280242A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428D0);
    sub_267FEFC64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242A38);
  }

  return result;
}

unint64_t sub_267FEFC64()
{
  result = qword_280242A40;
  if (!qword_280242A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802428B0);
    sub_267FC126C(&qword_280242900, &qword_2802428B0);
    swift_getOpaqueTypeConformance2();
    sub_267FEF264();
    swift_getOpaqueTypeConformance2();
    sub_267FEFDF8(&qword_280242660, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242A40);
  }

  return result;
}

uint64_t sub_267FEFDF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267FEFE60()
{
  sub_267FEFF54();
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      sub_267FEFFAC();
      if (v2 <= 0x3F)
      {
        sub_267FC0F1C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267FEFF54()
{
  if (!qword_280242AD0)
  {
    type metadata accessor for MessageDraftSnippetViewModel();
    v0 = sub_26804DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242AD0);
    }
  }
}

void sub_267FEFFAC()
{
  if (!qword_2802412F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241300);
    v0 = sub_26804CF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802412F8);
    }
  }
}

uint64_t sub_267FF0054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v91 = a1;
  v5 = sub_26804DE5C();
  OUTLINED_FUNCTION_1();
  v88 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v8);
  v9 = sub_26804D10C();
  OUTLINED_FUNCTION_5_6();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_267FF1474();
  v99 = WitnessTable;
  v100 = v5;
  v107 = v5;
  v108 = v9;
  v109 = WitnessTable;
  v110 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v89 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v87 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_0(v79 - v17);
  v18 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v90 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v22 = v79 - v21;
  v23 = sub_267FF14CC();
  v92 = v4;
  v93 = v3;
  v107 = v3;
  v108 = &type metadata for AppPickerView;
  v109 = v4;
  v110 = v23;
  v80 = v23;
  v24 = sub_26804D8CC();
  OUTLINED_FUNCTION_1();
  v83 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v27);
  v28 = OUTLINED_FUNCTION_6_4();
  v107 = v24;
  v108 = v18;
  v109 = v28;
  v110 = v11;
  v29 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v81 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v32);
  v107 = v24;
  v108 = v18;
  v103 = v18;
  v104 = v11;
  v109 = v28;
  v110 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = v29;
  v107 = v29;
  v108 = OpaqueTypeConformance2;
  v94 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v84 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v36);
  v38 = v79 - v37;
  v40 = v39;
  v98 = OpaqueTypeMetadata2;
  sub_26804D5BC();
  OUTLINED_FUNCTION_1();
  v95 = v42;
  v96 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21();
  v102 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v45 = sub_26803F324();

  if (v45)
  {
    v47 = v92;
    v46 = v93;
    v48 = sub_267FF08D0(v2, v93, v92);
    MEMORY[0x28223BE20](v48);
    v79[-4] = v46;
    v79[-3] = v47;
    v77 = v47;
    v78 = v80;
    v49 = v82;
    sub_26804D8BC();
    sub_26804D0FC();
    v50 = v79[1];
    v51 = v103;
    sub_26804DABC();
    (*(v90 + 8))(v22, v51);
    (*(v83 + 8))(v49, v24);
    v52 = v97;
    v53 = v94;
    sub_26804DAEC();
    v54 = v53;
    (*(v81 + 8))(v50, v52);
    v107 = v52;
    v108 = v53;
    v55 = OUTLINED_FUNCTION_2_8();
    v56 = OUTLINED_FUNCTION_13_2();
    sub_267FC1E90(v56, v57, v55);
    v58 = *(v84 + 8);
    v59 = OUTLINED_FUNCTION_13_2();
    v58(v59);
    sub_267FC1E90(v38, v40, v55);
    v61 = v99;
    v60 = v100;
    v107 = v100;
    v108 = v103;
    v109 = v99;
    v110 = v104;
    OUTLINED_FUNCTION_1_6();
    OUTLINED_FUNCTION_13_2();
    sub_267FBDD90();
    v62 = OUTLINED_FUNCTION_13_2();
    v58(v62);
    (v58)(v38, v40);
  }

  else
  {
    sub_26804DF1C();
    v63 = v85;
    sub_26804DE2C();
    sub_26804D0FC();
    v64 = v87;
    v61 = v99;
    v60 = v100;
    v65 = v103;
    v66 = v104;
    sub_26804DABC();
    (*(v90 + 8))(v22, v65);
    (*(v88 + 8))(v63, v60);
    v107 = v60;
    v108 = v65;
    v109 = v61;
    v110 = v66;
    v67 = OUTLINED_FUNCTION_1_6();
    v93 = v40;
    v68 = v86;
    v69 = v98;
    sub_267FC1E90(v64, v98, v67);
    v70 = *(v89 + 8);
    v70(v64, v69);
    sub_267FC1E90(v68, v69, v67);
    v52 = v97;
    v54 = v94;
    v107 = v97;
    v108 = v94;
    OUTLINED_FUNCTION_2_8();
    sub_267FBDF80();
    v70(v64, v69);
    v70(v68, v69);
  }

  v107 = v52;
  v108 = v54;
  v71 = OUTLINED_FUNCTION_2_8();
  v107 = v60;
  v108 = v103;
  v109 = v61;
  v110 = v104;
  v72 = OUTLINED_FUNCTION_1_6();
  v105 = v71;
  v106 = v72;
  OUTLINED_FUNCTION_7();
  v73 = v96;
  v74 = swift_getWitnessTable();
  v75 = v102;
  sub_267FC1E90(v102, v73, v74);
  return (*(v95 + 8))(v75, v73);
}

void (*sub_267FF08D0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = type metadata accessor for AppSelectorView();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  return sub_267FF1530;
}

void sub_267FF0A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v45 - v9;
  v10 = sub_26804D3AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26804E2DC();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v46 = v15;
    v47 = v11;
    v45 = v4;
    v20 = v10;
    v21 = v19;
    v22 = v5;
    v23 = swift_slowAlloc();
    v53[0] = v23;
    *v21 = 136315138;
    if (v22)
    {
      v24 = 0x65746E6573657270;
    }

    else
    {
      v24 = 0x657373696D736964;
    }

    v25 = v6;
    v26 = v3;
    v27 = sub_267FAE0C4(v24, 0xE900000000000064, v53);

    *(v21 + 4) = v27;
    v3 = v26;
    v6 = v25;
    _os_log_impl(&dword_267FA7000, v17, v18, "#SelectableAppNameView app picker menu is %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v28 = v23;
    v5 = v22;
    MEMORY[0x26D60E1E0](v28, -1, -1);
    v29 = v21;
    v10 = v20;
    v4 = v45;
    v15 = v46;
    v11 = v47;
    MEMORY[0x26D60E1E0](v29, -1, -1);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
    sub_26804DF1C();
    sub_268040550();

    sub_26804DF1C();
    v30 = sub_26803C498();

    if (v30)
    {
      (*(v49 + 104))(v15, *MEMORY[0x277D63BF8], v50);
      v31 = v3 + *(v4 + 40);
      v32 = *v31;
      v33 = *(v31 + 8);
      if (*(v31 + 16) == 1)
      {
      }

      else
      {

        sub_26804E8AC();
        v41 = sub_26804D77C();
        sub_26804CD2C();

        v42 = v48;
        sub_26804D39C();
        swift_getAtKeyPath();
        sub_267FC1318(v32, v33, 0);
        (*(v11 + 8))(v42, v10);
        v32 = v53[0];
        v33 = v53[1];
      }

      v43 = objc_allocWithZone(type metadata accessor for OnSnippetInteractionPerformed());
      v44 = sub_26803E5E0(0xD000000000000014, 0x8000000268056680, v15, v32, v33);
      sub_26804E5BC();
    }
  }

  else
  {
    v34 = sub_26804E84C();
    v35 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v34);
    v36 = v52;
    (*(v6 + 16))(v52, v3, v4);
    sub_26804E81C();
    v37 = sub_26804E80C();
    v38 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    *(v39 + 16) = v37;
    *(v39 + 24) = v40;
    *(v39 + 32) = *(v4 + 16);
    (*(v6 + 32))(v39 + v38, v36, v4);
    sub_267FF4998(0, 0, v35, &unk_268052250, v39);
  }
}

void *sub_267FF1010@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242AE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  sub_26804DF2C();
  swift_getKeyPath();
  sub_26804DF4C();

  (*(v5 + 8))(v7, v4);
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  sub_26804DF1C();
  v12 = sub_26803CB44();
  v14 = v13;

  sub_26804DF1C();
  sub_26803FA30(v3);

  v15 = sub_26804C44C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v15))
  {
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = sub_26804C43C();
  }

  sub_267FB05B4(v3, &qword_280242AE0);
  sub_267FDC2A4(v8, v9, v10, v11, v12, v14, v16, __src);
  return memcpy(v19, __src, 0x49uLL);
}

void sub_267FF1248(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_26803CBD4(v1, v2);
}

uint64_t sub_267FF1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  v6[7] = swift_task_alloc();
  sub_26804E81C();
  v6[8] = sub_26804E80C();
  v8 = sub_26804E7EC();

  return MEMORY[0x2822009F8](sub_267FF135C, v8, v7);
}

uint64_t sub_267FF135C()
{
  v1 = *(v0 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_2680406CC();

  sub_26804DF1C();
  type metadata accessor for AppSelectorView();
  sub_26804E20C();
  sub_268042890();

  sub_267FB05B4(v1, &qword_280241820);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_267FF1474()
{
  result = qword_280242288;
  if (!qword_280242288)
  {
    sub_26804D10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242288);
  }

  return result;
}

unint64_t sub_267FF14CC()
{
  result = qword_280242AD8;
  if (!qword_280242AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242AD8);
  }

  return result;
}

void sub_267FF1530(uint64_t a1)
{
  type metadata accessor for AppSelectorView();

  sub_267FF0A08(a1);
}

uint64_t sub_267FF15BC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AppSelectorView() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_267FC1A78;

  return sub_267FF1288(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t getEnumTagSinglePayload for RoundedCorner(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_267FF1714()
{
  result = qword_280242AE8;
  if (!qword_280242AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242AE8);
  }

  return result;
}

double sub_267FF1778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = [objc_opt_self() bezierPathWithRoundedRect:a1 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, a7, a7}];
  v9 = [v8 CGPath];

  sub_26804D8DC();
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

double sub_267FF1854@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_267FF1778(*(v5 + 8), v9, a2, a3, a4, a5, *v5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_267FF18D0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26804CDFC();
  return sub_267FF1944;
}

void sub_267FF1944(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_267FF1990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FF1BE0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_267FF19F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FF1BE0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_267FF1A58(uint64_t a1)
{
  v2 = sub_267FF1BE0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_267FF1AA8()
{
  result = qword_280242AF8;
  if (!qword_280242AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242AF8);
  }

  return result;
}

unint64_t sub_267FF1B00()
{
  result = qword_280242B00;
  if (!qword_280242B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242B00);
  }

  return result;
}

unint64_t sub_267FF1B58()
{
  result = qword_280242B08;
  if (!qword_280242B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242B08);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_267FF1BE0()
{
  result = qword_280242B10;
  if (!qword_280242B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242B10);
  }

  return result;
}

double sub_267FF1C44@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_267FF1D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LinkAttachmentView(0);
  v5 = a2 + *(v4 + 20);
  sub_26804DDDC();
  *v5 = v9;
  *(v5 + 8) = v10;
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  swift_storeEnumTagMultiPayload();
  sub_26804C47C();
  OUTLINED_FUNCTION_4();
  return (*(v7 + 32))(a2, a1);
}

uint64_t sub_267FF1DFC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for LinkAttachmentView(0);
  sub_267FF4418(v1 + *(v11 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0CC();
    OUTLINED_FUNCTION_4();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_26804E8AC();
    v14 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_267FF1FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BC8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BD0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  v37 = v2;
  *v5 = sub_26804D3DC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280242BE0);
  sub_2680495A4(sub_267FF4240, v36, &v5[*(v14 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680518C0;
  v16 = sub_26804D7DC();
  *(inited + 32) = v16;
  v17 = sub_26804D7FC();
  *(inited + 33) = v17;
  v18 = sub_26804D7CC();
  *(inited + 34) = v18;
  v19 = sub_26804D7EC();
  sub_26804D7EC();
  if (sub_26804D7EC() != v16)
  {
    v19 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v17)
  {
    v19 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v18)
  {
    v19 = sub_26804D7EC();
  }

  sub_26804CE1C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_267FF4248(v5, v9, &qword_280242BC8);
  v28 = &v9[*(v6 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  KeyPath = swift_getKeyPath();
  v30 = &v13[*(v10 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v32 = *MEMORY[0x277CDFA88];
  sub_26804D0CC();
  OUTLINED_FUNCTION_4();
  (*(v33 + 104))(v30 + v31, v32);
  *v30 = KeyPath;
  sub_267FF4248(v9, v13, &qword_280242BD0);
  sub_267FF42A8();
  sub_26804D9AC();
  return sub_267FC16BC(v13, &qword_280242BD8);
}

double sub_267FF2328@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_26804C47C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LinkViewWrapper(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 16);
  v23 = a1;
  v11(v6, a1, v3);
  v12 = (a1 + *(type metadata accessor for LinkAttachmentView(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 1);
  v25 = v13;
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v15 = v27;
  v16 = v28;
  v11(v10, v6, v3);
  v17 = &v10[*(v8 + 28)];
  *v17 = v15;
  v17[16] = v16;
  v18 = [objc_allocWithZone(type metadata accessor for LinkViewDelegate()) init];
  (*(v4 + 8))(v6, v3);
  *&v10[*(v8 + 32)] = v18;
  if (sub_26804C46C())
  {
    sub_26804D4AC();
  }

  else
  {
    sub_26804D4BC();
  }

  sub_26804D3CC();
  sub_26804CFBC();
  v19 = v24;
  sub_267FF44A8(v10, v24);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280242C28) + 36));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  result = *&v29;
  v20[2] = v29;
  return result;
}

id sub_267FF2584()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_280242B20 = result;
  return result;
}

id sub_267FF25B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v34[-v6];
  v8 = sub_26804BD7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_26804C45C();
  sub_26804945C(v12, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_267FC16BC(v7, &qword_280242C60);
LABEL_12:
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v24 = sub_26804CD4C();
    __swift_project_value_buffer(v24, qword_2802487E0);
    v25 = sub_26804CD3C();
    v26 = sub_26804E88C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_267FA7000, v25, v26, "#LinkAttachmentView metadata not in cache", v27, 2u);
      MEMORY[0x26D60E1E0](v27, -1, -1);
    }

    v28 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
    v29 = sub_26804C45C();
    sub_26804945C(v29, v5);

    if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_26804BD2C();
      (*(v9 + 8))(v5, v8);
    }

    [v28 setURL_];

    v23 = [objc_allocWithZone(MEMORY[0x277CD46D0]) init];
    [v23 _setMetadata_isFinal_];
    sub_267FF2BA4(v23);

    goto LABEL_20;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (qword_280241118 != -1)
  {
    swift_once();
  }

  v13 = qword_280242B20;
  v14 = sub_26804BD2C();
  v15 = [v13 objectForKey_];

  if (!v15)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_12;
  }

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
    _os_log_impl(&dword_267FA7000, v17, v18, "#LinkAttachmentView using cached metadata", v19, 2u);
    MEMORY[0x26D60E1E0](v19, -1, -1);
  }

  v20 = (v1 + *(type metadata accessor for LinkViewWrapper(0) + 20));
  v21 = *v20;
  v22 = v20[1];
  LOBYTE(v20) = *(v20 + 16);
  v35 = v21;
  v36 = v22;
  v37 = v20;
  v34[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  sub_26804DE9C();
  v23 = [objc_allocWithZone(MEMORY[0x277CD46D0]) initWithMetadata_];
  [v23 _setDisableAnimations_];
  [v23 _setPreferredSizeClass_];

  (*(v9 + 8))(v11, v8);
LABEL_20:
  [v23 setDelegate_];
  [v23 _setDisableAutoPlay_];
  [v23 _setDisablePlayback_];
  [v23 _setDisablePlaybackControls_];
  [v23 _setDisablePreviewGesture_];
  [v23 setUserInteractionEnabled_];
  LODWORD(v31) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v32];
  [v23 sizeToFit];

  return v23;
}

void sub_267FF2BA4(void *a1)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for LinkViewWrapper(0);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v4;
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26804BCEC();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_26804BD7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v15 = sub_26804CD4C();
  __swift_project_value_buffer(v15, qword_2802487E0);
  v16 = sub_26804CD3C();
  v17 = sub_26804E88C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v2;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_267FA7000, v16, v17, "#LinkAttachmentView fetching metadata", v19, 2u);
    v20 = v19;
    v2 = v18;
    MEMORY[0x26D60E1E0](v20, -1, -1);
  }

  v21 = sub_26804C45C();
  sub_26804945C(v21, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267FC16BC(v8, &qword_280242C60);
    v22 = sub_26804CD3C();
    v23 = sub_26804E89C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267FA7000, v22, v23, "#LinkAttachmentView no url present in the model", v24, 2u);
      MEMORY[0x26D60E1E0](v24, -1, -1);
    }
  }

  else
  {
    v39 = v2;
    v41 = *(v10 + 32);
    v25 = v14;
    v41(v14, v8, v9);
    v43 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
    [v43 setTimeout_];
    v26 = *(v10 + 16);
    v27 = v44;
    v42 = v25;
    v26(v44, v25, v9);
    v28 = v49;
    sub_26804BCDC();
    sub_26804BCBC();
    v40 = sub_26804BCCC();
    v26(v27, v25, v9);
    v29 = v48;
    sub_267FF467C(v39, v48);
    v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (*(v45 + 80) + v31 + 8) & ~*(v45 + 80);
    v33 = swift_allocObject();
    v41((v33 + v30), v27, v9);
    v34 = v51;
    *(v33 + v31) = v51;
    sub_267FF44A8(v29, v33 + v32);
    aBlock[4] = sub_267FF46E0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_267FF3BF0;
    aBlock[3] = &block_descriptor_3;
    v35 = _Block_copy(aBlock);
    v36 = v34;

    v37 = v43;
    v38 = v40;
    [v43 startFetchingMetadataForRequest:v40 completionHandler:v35];
    _Block_release(v35);

    (*(v50 + 8))(v28, v46);
    (*(v10 + 8))(v42, v9);
  }
}

void sub_267FF3178()
{
  v1 = (v0 + *(type metadata accessor for LinkViewWrapper(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v10 = v2;
  v11 = v3;
  v12 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  MEMORY[0x26D60CAE0](&v9, v4);
  if (v9 == 1)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v5 = sub_26804CD4C();
    __swift_project_value_buffer(v5, qword_2802487E0);
    v6 = sub_26804CD3C();
    v7 = sub_26804E88C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_267FA7000, v6, v7, "#LinkAttachmentView rendering LinkAttachmentView with final metadata", v8, 2u);
      MEMORY[0x26D60E1E0](v8, -1, -1);
    }
  }
}

uint64_t sub_267FF32A4(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if (a2)
  {
    *&a1 = INFINITY;
  }

  if (*&a1 <= 275.0)
  {
    v7 = *&a1;
  }

  else
  {
    v7 = 275.0;
  }

  if (a4)
  {
    *&a3 = INFINITY;
  }

  if (*&a3 <= 200.0)
  {
    v9 = *&a3;
  }

  else
  {
    v9 = 200.0;
  }

  [a5 sizeThatFits_];
  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = (v5 + *(type metadata accessor for LinkViewWrapper(0) + 20));
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  v17 = v12;
  v18 = v13;
  v19 = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  MEMORY[0x26D60CAE0](&v16, v14);
  return *&v7;
}

uint64_t sub_267FF339C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a4;
  v37 = a2;
  v35 = a1;
  v41 = sub_26804E06C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26804E08C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LinkViewWrapper(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26804BD7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267FF47EC();
  v36 = sub_26804E8BC();
  (*(v15 + 16))(v17, a3, v14);
  sub_267FF467C(a5, v13);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 8) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v35;
  (*(v15 + 32))(v22 + v18, v17, v14);
  v24 = v37;
  *(v22 + v19) = v37;
  v25 = v39;
  *(v22 + v20) = v39;
  sub_267FF44A8(v13, v22 + v21);
  aBlock[4] = sub_267FF4830;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267FF3BAC;
  aBlock[3] = &block_descriptor_21;
  v26 = _Block_copy(aBlock);
  v27 = v23;
  v28 = v24;
  v29 = v25;

  v30 = v38;
  sub_26804E07C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_267FF4184(&qword_280242C70, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C78);
  sub_267FC126C(&unk_280242C80, &qword_280242C78);
  v32 = v40;
  v31 = v41;
  sub_26804EABC();
  v33 = v36;
  MEMORY[0x26D60D520](0, v30, v32, v26);
  _Block_release(v26);

  (*(v44 + 8))(v32, v31);
  return (*(v42 + 8))(v30, v43);
}

void sub_267FF3830(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = qword_280241130;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_26804CD4C();
    __swift_project_value_buffer(v9, qword_2802487E0);
    v10 = sub_26804CD3C();
    v11 = sub_26804E88C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267FA7000, v10, v11, "#LinkAttachmentView metadata fetched", v12, 2u);
      MEMORY[0x26D60E1E0](v12, -1, -1);
    }

    v13 = qword_280241118;
    v14 = v8;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_280242B20;
    v16 = sub_26804BD2C();
    [v15 setObject:v14 forKey:v16];
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v18 = sub_26804CD4C();
    __swift_project_value_buffer(v18, qword_2802487E0);
    v19 = a3;
    v20 = sub_26804CD3C();
    v21 = sub_26804E89C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = a3;
      v32[0] = v23;
      *v22 = 136315138;
      v24 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413D0);
      v25 = sub_26804E6EC();
      v27 = sub_267FAE0C4(v25, v26, v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_267FA7000, v20, v21, "#LinkAttachmentView failed to fetch metadata: %s, creating a new one", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D60E1E0](v23, -1, -1);
      MEMORY[0x26D60E1E0](v22, -1, -1);
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
    v16 = sub_26804BD2C();
    [v14 setURL_];
  }

  [a4 _setMetadata_isFinal_];
  v28 = a5 + *(type metadata accessor for LinkViewWrapper(0) + 20);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v28) = *(v28 + 16);
  v32[0] = v29;
  v32[1] = v30;
  v33 = v28;
  LOBYTE(v31) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  sub_26804DE9C();
  [a4 sizeToFit];
}

uint64_t sub_267FF3BAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_267FF3BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_267FF3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FF4184(&unk_280242C90, type metadata accessor for LinkViewWrapper);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_267FF3D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FF4184(&unk_280242C90, type metadata accessor for LinkViewWrapper);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_267FF3DE4()
{
  sub_267FF4184(&unk_280242C90, type metadata accessor for LinkViewWrapper);
  sub_26804D56C();
  __break(1u);
}

id sub_267FF3EA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkViewDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_267FF3EFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkViewDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_267FF3F30@<X0>(uint64_t a1@<X8>)
{
  sub_26804C47C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_9();
  (*(v5 + 16))(v2, v1);
  return sub_267FF1D20(v2, a1);
}

void sub_267FF402C()
{
  sub_26804C47C();
  if (v0 <= 0x3F)
  {
    sub_267FF45E0(319, &qword_280242BB0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_267FF40E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_267FF40E4()
{
  if (!qword_280242690)
  {
    sub_26804D0CC();
    v0 = sub_26804CF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242690);
    }
  }
}

uint64_t sub_267FF4184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267FF41CC(uint64_t a1)
{
  result = sub_267FF4184(&qword_280241F30, type metadata accessor for LinkAttachmentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267FF4248(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_267FF42A8()
{
  result = qword_280242BF8;
  if (!qword_280242BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242BD8);
    sub_267FF4360();
    sub_267FC126C(&unk_280242C10, &qword_280242BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242BF8);
  }

  return result;
}

unint64_t sub_267FF4360()
{
  result = qword_280242C00;
  if (!qword_280242C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242BD0);
    sub_267FC126C(&qword_280242C08, &qword_280242BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242C00);
  }

  return result;
}

uint64_t sub_267FF4418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FF44A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkViewWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267FF4534()
{
  sub_26804C47C();
  if (v0 <= 0x3F)
  {
    sub_267FF45E0(319, &qword_280242C48, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LinkViewDelegate();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267FF45E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267FF467C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkViewWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FF46E0(void *a1, void *a2)
{
  v5 = *(sub_26804BD7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for LinkViewWrapper(0) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_267FF339C(a1, a2, v2 + v6, v9, v10);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_267FF47EC()
{
  result = qword_280242C68;
  if (!qword_280242C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280242C68);
  }

  return result;
}

void sub_267FF4830()
{
  v1 = *(sub_26804BD7C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for LinkViewWrapper(0) - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + 16);
  v9 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  sub_267FF3830(v8, v0 + v2, v6, v7, v9);
}

uint64_t sub_267FF4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  OUTLINED_FUNCTION_15(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_267FDC224(a3, v25 - v11, &qword_2802413A0);
  v13 = sub_26804E84C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_267FB05B4(v12, &qword_2802413A0);
  }

  else
  {
    sub_26804E83C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26804E7EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26804E70C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_267FB05B4(a3, &qword_2802413A0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_267FB05B4(a3, &qword_2802413A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_267FF4C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242FE0);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  sub_267FDC224(a1, &v6 - v4, &qword_280242FE0);
  return sub_26804D20C();
}

uint64_t sub_267FF4D38(uint64_t a1)
{
  result = MEMORY[0x26D60D4C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_267FFD408(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_267FF4DF8()
{
  v1 = *(sub_26804C4FC() + 16);

  if (v1 >= 2)
  {
    v2 = *(v0 + *(type metadata accessor for RecipientLabelView() + 52));
    if (v2)
    {
      v3 = v2;
      sub_26804E51C();
    }

    else
    {
      sub_26804E62C();
      OUTLINED_FUNCTION_0_2();
      sub_267FB02A8(v4, v5);
      OUTLINED_FUNCTION_21_1();
      sub_26804D15C();
      __break(1u);
    }
  }
}

void sub_267FF4EAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for RecipientLabelView();
  v12 = v11[5];
  sub_26804C54C();
  *(a2 + v12) = sub_26804C53C();
  v13 = a2 + v11[6];
  LOBYTE(v38) = 0;
  OUTLINED_FUNCTION_19_1();
  sub_26804DDDC();
  v14 = *(&v40 + 1);
  *v13 = v40;
  *(v13 + 8) = v14;
  v15 = type metadata accessor for ContactResult(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
  sub_267FDC224(v10, v7, &qword_280241A90);
  sub_26804DDDC();
  sub_267FB05B4(v10, &qword_280241A90);
  v16 = a2 + v11[9];
  LOBYTE(v38) = 1;
  OUTLINED_FUNCTION_19_1();
  sub_26804DDDC();
  v17 = *(&v40 + 1);
  *v16 = v40;
  *(v16 + 8) = v17;
  v18 = (a2 + v11[10]);
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CD0);
  OUTLINED_FUNCTION_19_1();
  sub_26804DDDC();
  v19 = v40;
  v20 = a2 + v11[11];
  v38 = 0;
  v39 = 0xE000000000000000;
  OUTLINED_FUNCTION_19_1();
  sub_26804DDDC();
  v21 = v41;
  *v20 = v40;
  *(v20 + 16) = v21;
  v22 = (a2 + v11[13]);
  sub_26804E62C();
  OUTLINED_FUNCTION_0_2();
  sub_267FB02A8(v23, v24);
  OUTLINED_FUNCTION_20();
  *v22 = sub_26804D17C();
  v22[1] = v25;
  v26 = v11[14];
  *(a2 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v27 = a2 + v11[15];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  v28 = sub_26804C51C();
  OUTLINED_FUNCTION_11();
  v30 = v29;
  (*(v29 + 16))(a2, a1, v28);
  v31 = sub_26804C50C();
  v32 = (a2 + v11[8]);
  *v32 = v31;
  v32[1] = v33;
  v32[2] = 0;
  v34 = sub_26804C4EC();

  *v18 = v34;
  v18[1] = 0;
  v35 = sub_26804C4BC();
  (*(v30 + 8))(a1, v28);
  if (v35)
  {
  }

  v36 = a2 + v11[12];
  *v36 = v35 != 0;
  *(v36 + 8) = 0;
}

uint64_t sub_267FF51F8@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v58 = v57 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  v13 = v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CE8);
  OUTLINED_FUNCTION_15(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = v57 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = v57 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CF8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_2();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v57 - v26;
  v28 = *(sub_26804C4FC() + 16);

  v62 = v8;
  if (v28)
  {
    goto LABEL_4;
  }

  v29 = *(v6 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v29)
  {
    v30 = v29;
    v31 = sub_26804E50C();

    if ((v31 & 1) == 0)
    {
      v52 = v58;
      sub_267FF9964(v58);
      sub_267FDC224(v52, v13, &qword_280242CD8);
      swift_storeEnumTagMultiPayload();
      sub_267FFD040();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_21_1();
      sub_267FCCA4C(v53, v54);
LABEL_11:
      sub_26804D5AC();
      OUTLINED_FUNCTION_21_1();
      return sub_267FB05B4(v49, v50);
    }

LABEL_4:
    v58 = v13;
    v57[1] = a1;
    *v17 = sub_26804D4AC();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D00);
    v33 = v6;
    sub_267FF57C4(v6, &v17[*(v32 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2680518C0;
    v35 = sub_26804D7BC();
    *(inited + 32) = v35;
    v36 = sub_26804D7DC();
    *(inited + 33) = v36;
    v37 = sub_26804D7FC();
    *(inited + 34) = v37;
    v38 = sub_26804D7EC();
    sub_26804D7EC();
    if (sub_26804D7EC() != v35)
    {
      v38 = sub_26804D7EC();
    }

    sub_26804D7EC();
    if (sub_26804D7EC() != v36)
    {
      v38 = sub_26804D7EC();
    }

    sub_26804D7EC();
    v39 = sub_26804D7EC();
    v40 = v58;
    if (v39 != v37)
    {
      v38 = sub_26804D7EC();
    }

    sub_26804CE1C();
    OUTLINED_FUNCTION_25_1();
    sub_267FDBADC(v17, v20, &qword_280242CE8);
    v41 = &v20[*(v59 + 36)];
    *v41 = v38;
    *(v41 + 1) = v2;
    *(v41 + 2) = v3;
    *(v41 + 3) = v4;
    *(v41 + 4) = v5;
    v41[40] = 0;
    v42 = sub_26804D7CC();
    v43 = v33 + *(type metadata accessor for RecipientLabelView() + 44);
    v44 = *v43;
    v45 = *(v43 + 16);
    v63 = v44;
    v64 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
    sub_26804DDEC();

    sub_26804CE1C();
    OUTLINED_FUNCTION_25_1();
    sub_267FDBADC(v20, v24, &qword_280242CF0);
    v46 = v24 + *(v60 + 36);
    *v46 = v42;
    *(v46 + 8) = v2;
    *(v46 + 16) = v3;
    *(v46 + 24) = v4;
    *(v46 + 32) = v5;
    *(v46 + 40) = 0;
    sub_267FDBADC(v24, v27, &qword_280242CF8);
    sub_267FDC224(v27, v40, &qword_280242CF8);
    swift_storeEnumTagMultiPayload();
    sub_267FFD040();
    OUTLINED_FUNCTION_4_5();
    sub_267FCCA4C(v47, v48);
    goto LABEL_11;
  }

  sub_26804E62C();
  OUTLINED_FUNCTION_0_2();
  sub_267FB02A8(v55, v56);
  OUTLINED_FUNCTION_21_1();
  result = sub_26804D15C();
  __break(1u);
  return result;
}

uint64_t sub_267FF57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v86 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  MEMORY[0x28223BE20](v96);
  v93 = &v86 - v5;
  v6 = type metadata accessor for RecipientLabelView();
  v104 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D70);
  MEMORY[0x28223BE20](v92);
  v10 = (&v86 - v9);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D78);
  MEMORY[0x28223BE20](v91);
  v102 = &v86 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D80);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v103 = &v86 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D88);
  v13 = MEMORY[0x28223BE20](v95);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v86 - v16;
  MEMORY[0x28223BE20](v15);
  v101 = &v86 - v17;
  *v10 = sub_26804DFBC();
  v10[1] = v18;
  v90 = v10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D90);
  sub_267FF63B8(a1, v10 + *(v19 + 44));
  v20 = a1 + *(v6 + 24);
  v89 = a1;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(__src[0]) = v21;
  __src[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v88 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267FFE8C0(a1, v88);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_267FFE160(&v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D98);
  sub_267FCCA4C(&qword_280242DA0, &qword_280242D70);
  sub_267FFDE6C();
  v25 = v8;
  v26 = v102;
  v27 = v90;
  sub_26804DB8C();

  v28 = v88;

  v29 = v89;
  sub_267FB05B4(v27, &qword_280242D70);
  sub_267FFE8C0(v29, v28);
  v30 = swift_allocObject();
  sub_267FFE160(v28, v30 + v23);
  v31 = &v26[*(v91 + 36)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_267FFDFB4;
  *(v31 + 3) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CA8);
  v32 = v93;
  sub_26804DDEC();
  sub_267FFE8C0(v29, v28);
  v92 = v25;
  v33 = swift_allocObject();
  sub_267FFE160(v28, v33 + v23);
  sub_267FFDFE4();
  sub_267FCC394();
  v34 = v102;
  sub_26804DBEC();

  sub_267FB05B4(v32, &qword_280241A90);
  sub_267FB05B4(v34, &qword_280242D78);
  v35 = *(v29 + *(v104 + 52));
  if (v35)
  {
    v36 = v29;
    v37 = v95;
    v38 = v35;
    v39 = v94;
    sub_26804E53C();

    sub_267FFE8C0(v36, v28);
    v40 = swift_allocObject();
    sub_267FFE160(v28, v40 + v23);
    v41 = swift_allocObject();
    *(v41 + 16) = sub_267FFF77C;
    *(v41 + 24) = v40;
    (*(v97 + 32))(v39, v103, v98);
    v42 = (v39 + *(v37 + 56));
    *v42 = sub_267FFF784;
    v42[1] = v41;
    v43 = v101;
    sub_267FDBADC(v39, v101, &qword_280242D88);
    v44 = (v36 + *(v104 + 44));
    v45 = *v44;
    v46 = v44[1];
    v47 = v44[2];
    v106 = *v44;
    v107 = v46;
    v108 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
    sub_26804DDEC();
    v48 = __src[0];
    v49 = __src[1];

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v106 = v45;
      v107 = v46;
      v108 = v47;
      sub_26804DDEC();
      v106 = __src[0];
      v107 = __src[1];
      sub_267FB0C1C();
      v51 = sub_26804D95C();
      v53 = v52;
      v55 = v54;
      v56 = v38;
      sub_26804E51C();

      v57 = sub_26804D81C();
      v58 = v87;
      __swift_storeEnumTagSinglePayload(v87, 1, 1, v57);
      sub_26804D85C();
      sub_267FB05B4(v58, &qword_280242310);
      v59 = sub_26804D93C();
      v61 = v60;
      v63 = v62;

      sub_267FB0FB4(v51, v53, v55 & 1);

      v106 = sub_26804DCCC();
      v104 = sub_26804D90C();
      v103 = v64;
      LOBYTE(v53) = v65;
      v102 = v66;
      sub_267FB0FB4(v59, v61, v63 & 1);

      v67 = v101;

      LOBYTE(v51) = sub_26804D80C();
      sub_26804CE1C();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      LOBYTE(v106) = v53 & 1;
      LOBYTE(__src[0]) = 0;
      v76 = v53 & 1;
      v77 = v51;
    }

    else
    {
      v67 = v43;
      v104 = 0;
      v103 = 0;
      v102 = 0;
      v77 = 0;
      v76 = 0;
      v69 = 0;
      v71 = 0;
      v73 = 0;
      v75 = 0;
    }

    v78 = v67;
    v79 = v99;
    sub_267FDC224(v67, v99, &qword_280242D88);
    v80 = v100;
    sub_267FDC224(v79, v100, &qword_280242D88);
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DD0) + 48);
    v82 = v104;
    __src[0] = v104;
    v83 = v103;
    __src[1] = v103;
    __src[2] = v76;
    v84 = v102;
    __src[3] = v102;
    __src[4] = v77;
    __src[5] = v69;
    __src[6] = v71;
    __src[7] = v73;
    __src[8] = v75;
    LOBYTE(__src[9]) = 0;
    memcpy((v80 + v81), __src, 0x49uLL);
    sub_267FDC224(__src, &v106, &qword_280242DD8);
    sub_267FB05B4(v78, &qword_280242D88);
    v106 = v82;
    v107 = v83;
    v108 = v76;
    v109 = v84;
    v110 = v77;
    v111 = v69;
    v112 = v71;
    v113 = v73;
    v114 = v75;
    v115 = 0;
    sub_267FB05B4(&v106, &qword_280242DD8);
    return sub_267FB05B4(v79, &qword_280242D88);
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_267FF63B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DF0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for RecipientLabelView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DF8);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v33 = 0;
  v34 = 1;
  sub_267FFE8C0(a1, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_267FFE160(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E00);
  sub_267FFE258();
  v30 = v17;
  sub_26804DAEC();

  sub_267FF4DF8();
  v21 = v20;
  *v7 = sub_26804D3DC();
  *(v7 + 1) = v21;
  v7[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E10);
  sub_267FF6A08(&v7[*(v22 + 44)]);
  v23 = *(v12 + 16);
  v23(v15, v17, v11);
  v24 = v31;
  sub_267FDC224(v7, v31, &qword_280242DF0);
  v25 = v32;
  v23(v32, v15, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E18);
  sub_267FDC224(v24, &v25[*(v26 + 48)], &qword_280242DF0);
  sub_267FB05B4(v7, &qword_280242DF0);
  v27 = *(v12 + 8);
  v27(v30, v11);
  sub_267FB05B4(v24, &qword_280242DF0);
  return (v27)(v15, v11);
}

void sub_267FF676C()
{
  v1 = *(v0 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v1)
  {
    v2 = v1;
    v3 = sub_26801635C();

    if ((v3 & 1) == 0)
    {
      v4 = v2;
      sub_268015CD8(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D68);
      sub_26804DDEC();
      if (v14)
      {
        if (qword_280241130 != -1)
        {
          swift_once();
        }

        v5 = sub_26804CD4C();
        __swift_project_value_buffer(v5, qword_2802487E0);
        v6 = sub_26804CD3C();
        v7 = sub_26804E88C();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_267FA7000, v6, v7, "#RecipientLabelView performing LaunchAppWithIntent", v8, 2u);
          MEMORY[0x26D60E1E0](v8, -1, -1);
        }

        v9 = v4;
        v10 = v14;
        sub_26804E5FC();
      }

      else
      {
        if (qword_280241130 != -1)
        {
          swift_once();
        }

        v11 = sub_26804CD4C();
        __swift_project_value_buffer(v11, qword_2802487E0);
        v10 = sub_26804CD3C();
        v12 = sub_26804E88C();
        if (os_log_type_enabled(v10, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_267FA7000, v10, v12, "#RecipientLabelView LaunchAppWithIntent is missing, no-op", v13, 2u);
          MEMORY[0x26D60E1E0](v13, -1, -1);
        }
      }
    }
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_267FF6A08@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E20);
  v34 = *(v39 - 8);
  v1 = v34;
  v2 = MEMORY[0x28223BE20](v39);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E28);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v35 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E30);
  v38 = *(v12 - 8);
  v13 = v38;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_26804C49C();
  v37 = v18;
  sub_267FF6DD4(v19, v20);

  sub_267FF70B4(v11);
  v33 = v5;
  sub_267FF7E14(v5);
  v21 = *(v13 + 16);
  v36 = v16;
  v21(v16, v18, v12);
  v32 = v9;
  sub_267FDC224(v11, v9, &qword_280242E28);
  v22 = *(v1 + 16);
  v23 = v39;
  v24 = v40;
  v22(v40, v5, v39);
  v25 = v22;
  v26 = v41;
  v21(v41, v16, v12);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E38);
  sub_267FDC224(v9, &v26[v27[12]], &qword_280242E28);
  v25(&v26[v27[16]], v24, v23);
  v28 = &v26[v27[20]];
  *v28 = 0;
  v28[8] = 1;
  v29 = *(v34 + 8);
  v29(v33, v23);
  sub_267FB05B4(v35, &qword_280242E28);
  v30 = *(v38 + 8);
  v30(v37, v12);
  v29(v24, v23);
  sub_267FB05B4(v32, &qword_280242E28);
  return (v30)(v36, v12);
}

uint64_t sub_267FF6DD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &__src[-1] - v6;
  __dst[0] = a1;
  __dst[1] = a2;
  sub_267FB0C1C();

  v8 = sub_26804D95C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v16 = *(v2 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v16)
  {
    v17 = v16;
    sub_26804E51C();

    sub_26804D84C();
    v18 = sub_26804D81C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
    v19 = sub_26804D85C();
    sub_267FB05B4(v7, &qword_280242310);
    v20 = swift_getKeyPath();
    v27 = v12 & 1;
    v26 = 0;
    __src[0] = v8;
    __src[1] = v10;
    LOBYTE(__src[2]) = v12 & 1;
    __src[3] = v14;
    __src[4] = KeyPath;
    __src[5] = 1;
    LOBYTE(__src[6]) = 0;
    __src[7] = v20;
    __src[8] = v19;
    v21 = v17;
    sub_26804E50C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E58);
    sub_267FFE318();
    sub_267FFE488();
    sub_26804DA3C();
    memcpy(__dst, __src, sizeof(__dst));
    return sub_267FB05B4(__dst, &qword_280242E50);
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_267FF70B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F18);
  MEMORY[0x28223BE20](v75);
  v7 = &v56 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F20);
  MEMORY[0x28223BE20](v71);
  v72 = &v56 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F28);
  MEMORY[0x28223BE20](v74);
  v73 = &v56 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F30);
  v59 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F38);
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = &v56 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F40);
  MEMORY[0x28223BE20](v63);
  v64 = &v56 - v12;
  v13 = type metadata accessor for RecipientLabelView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F48);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v17 = &v56 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F50);
  MEMORY[0x28223BE20](v69);
  v66 = &v56 - v18;
  v19 = *(sub_26804C4FC() + 16);

  if (v19 < 2)
  {
    v31 = *(sub_26804C4FC() + 16);

    if (v31)
    {
      sub_267FFE8C0(v2, &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v33 = swift_allocObject();
      v34 = sub_267FFE160(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
      MEMORY[0x28223BE20](v34);
      sub_267FFE9BC();
      sub_26804DE2C();
      v35 = v68;
      v36 = v70;
      (*(v68 + 2))(v72, v17, v70);
      swift_storeEnumTagMultiPayload();
      sub_267FFEE4C();
      sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
      v37 = v73;
      sub_26804D5AC();
      sub_267FDC224(v37, v7, &qword_280242F28);
      swift_storeEnumTagMultiPayload();
      sub_267FFEF90();
      sub_26804D5AC();
      sub_267FB05B4(v37, &qword_280242F28);
      return (*(v35 + 1))(v17, v36);
    }

    sub_267FFA150(v5);
    v53 = &qword_280242F10;
    sub_267FDC224(v5, v7, &qword_280242F10);
    swift_storeEnumTagMultiPayload();
    sub_267FFEF90();
    sub_267FFE9BC();
    sub_26804D5AC();
    v55 = v5;
  }

  else
  {
    v57 = v7;
    v58 = v3;
    v20 = v2 + *(v13 + 48);
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v77) = v21;
    *(&v77 + 1) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDEC();
    v23 = v80;
    sub_267FFE8C0(v2, &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v25 = swift_allocObject();
    if (v23 == 1)
    {
      v26 = sub_267FFE160(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
      MEMORY[0x28223BE20](v26);
      sub_267FFE9BC();
      sub_26804DE2C();
      v27 = v68;
      v28 = v70;
      (*(v68 + 2))(v64, v17, v70);
      swift_storeEnumTagMultiPayload();
      sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
      v29 = sub_267FCCA4C(&qword_280242FD0, &qword_280242F30);
      *&v77 = v65;
      *(&v77 + 1) = MEMORY[0x277D837D0];
      v78 = v29;
      v79 = MEMORY[0x277D837F8];
      swift_getOpaqueTypeConformance2();
      v30 = v66;
      sub_26804D5AC();
      (*(v27 + 1))(v17, v28);
    }

    else
    {
      v68 = type metadata accessor for RecipientLabelView;
      v39 = sub_267FFE160(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
      v56 = &v56;
      v40 = MEMORY[0x28223BE20](v39);
      MEMORY[0x28223BE20](v40);
      sub_267FFE9BC();
      sub_267FF14CC();
      sub_26804D8BC();
      v41 = v2 + *(v13 + 32);
      v42 = *v41;
      v43 = *(v41 + 16);
      v77 = v42;
      v78 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
      sub_26804DDEC();
      v77 = v80;
      sub_267FFE8C0(v2, &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = swift_allocObject();
      sub_267FFE160(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v24);
      v45 = sub_267FCCA4C(&qword_280242FD0, &qword_280242F30);
      v46 = MEMORY[0x277D837D0];
      v47 = MEMORY[0x277D837F8];
      v48 = v60;
      v49 = v65;
      v50 = v62;
      sub_26804DBEC();

      (*(v59 + 8))(v50, v49);
      v51 = v61;
      v52 = v67;
      (*(v61 + 16))(v64, v48, v67);
      swift_storeEnumTagMultiPayload();
      sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
      *&v77 = v49;
      *(&v77 + 1) = v46;
      v78 = v45;
      v79 = v47;
      swift_getOpaqueTypeConformance2();
      v30 = v66;
      sub_26804D5AC();
      (*(v51 + 8))(v48, v52);
    }

    v53 = &qword_280242F50;
    sub_267FDC224(v30, v72, &qword_280242F50);
    swift_storeEnumTagMultiPayload();
    sub_267FFEE4C();
    sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
    v54 = v73;
    sub_26804D5AC();
    sub_267FDC224(v54, v57, &qword_280242F28);
    swift_storeEnumTagMultiPayload();
    sub_267FFEF90();
    sub_267FFE9BC();
    sub_26804D5AC();
    sub_267FB05B4(v54, &qword_280242F28);
    v55 = v30;
  }

  return sub_267FB05B4(v55, v53);
}

uint64_t sub_267FF7E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31[1] = a1;
  v3 = type metadata accessor for RecipientLabelView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for ContactResult(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E30);
  v12 = *(v31[0] - 8);
  MEMORY[0x28223BE20](v31[0]);
  v14 = v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CA8);
  sub_26804DDEC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v6))
  {
    sub_267FB05B4(v11, &qword_280241A90);
    v15 = sub_26804C4AC();
    v17 = v16;
  }

  else
  {
    sub_267FFE8C0(v11, v8);
    sub_267FB05B4(v11, &qword_280241A90);
    v18 = &v8[*(v6 + 20)];
    v15 = *v18;
    v17 = v18[1];

    sub_267FFF36C();
  }

  sub_267FF6DD4(v15, v17);

  sub_267FFE8C0(v2, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v21 = sub_267FFE160(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  MEMORY[0x28223BE20](v21);
  v31[-2] = v14;
  v31[-1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E40);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E50);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E58);
  v25 = sub_267FFE318();
  v26 = sub_267FFE488();
  v32 = v23;
  v33 = v24;
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_267FFE540();
  v29 = v31[0];
  v32 = v31[0];
  v33 = v22;
  v34 = OpaqueTypeConformance2;
  v35 = v28;
  swift_getOpaqueTypeConformance2();
  sub_26804DE2C();
  return (*(v12 + 8))(v14, v29);
}

uint64_t sub_267FF827C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RecipientLabelView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_26804C4FC();
  v11 = sub_267FF4D38(v10);
  v21[3] = &type metadata for AggregatedContactSearcher;
  v21[4] = &off_2878ED8E0;
  v21[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CA8);
  sub_26804DE0C();
  v12 = sub_26804C51C();
  v20[3] = v12;
  v20[4] = &off_2878EB448;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a1, v12);
  sub_267FC6E0C(v21, v9, v20, a2);
  sub_267FFE8C0(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_267FFE160(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DB8) + 36));
  *v16 = sub_267FFE1B8;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  sub_267FFE8C0(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_267FFE160(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D98);
  v19 = (a2 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_267FFE1D0;
  v19[3] = v17;
  return result;
}

void sub_267FF8524(uint64_t a1)
{
  v2 = sub_26804D3AC();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_26804E2DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26804BFFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RecipientLabelView();
  v16 = *(a1 + *(v15 + 52));
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    sub_268015EFC();

    (*(v12 + 104))(v14, *MEMORY[0x277D63760], v11);
    (*(v8 + 104))(v10, *MEMORY[0x277D63BE0], v7);
    v19 = v18;
    sub_26804E23C();
    v20 = sub_26804E24C();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
    v21 = a1 + *(v17 + 60);
    v22 = *v21;
    v23 = *(v21 + 8);
    if (*(v21 + 16))
    {
    }

    else
    {

      sub_26804E8AC();
      v24 = sub_26804D77C();
      sub_26804CD2C();

      v25 = v29;
      sub_26804D39C();
      swift_getAtKeyPath();
      sub_267FC1318(v22, v23, 0);
      (*(v30 + 8))(v25, v31);
    }

    v26 = objc_allocWithZone(sub_26804E45C());
    v27 = sub_26804E44C();
    sub_26804E5BC();
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

void sub_267FF8934(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v1)
  {
    v2 = v1;
    sub_268015FC4();
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_267FF89F4()
{
  type metadata accessor for RecipientLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  return sub_26804DDFC();
}

void sub_267FF8A64()
{
  v1 = v0;
  v54 = sub_26804D3AC();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_26804E2DC();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26804BFFC();
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26804C85C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for ContactResult(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RecipientLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CA8);
  sub_26804DDEC();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_267FB05B4(v16, &qword_280241A90);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v21 = sub_26804CD4C();
    __swift_project_value_buffer(v21, qword_2802487E0);
    v22 = sub_26804CD3C();
    v23 = sub_26804E89C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267FA7000, v22, v23, "#RecipientLabelView selection turned to nil, this is not expected", v24, 2u);
      MEMORY[0x26D60E1E0](v24, -1, -1);
    }
  }

  else
  {
    v50 = v5;
    sub_267FFE160(v16, v19);
    v25 = (v0 + v20[6]);
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v60) = v26;
    v61 = v27;
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDFC();
    if (sub_267FD446C(*&v19[v17[6]]) || sub_267FD446C(*&v19[v17[7]]))
    {
      v49 = "tadata8@NSError16";
      v51 = 0xD000000000000015;
    }

    else
    {
      v51 = 0xD000000000000012;
      v49 = "RECIPIENT_NAME_TAPPED";
    }

    v28 = *(v0 + v20[13]);
    v29 = v50;
    if (v28)
    {
      (*(v11 + 104))(v13, *MEMORY[0x277D5D788], v10);
      v48 = v28;
      v46 = sub_26804C84C();
      v47 = v30;
      (*(v11 + 8))(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268050170;
      v60 = 1701667182;
      v61 = 0xE400000000000000;
      v32 = MEMORY[0x277D837D0];
      sub_26804EAFC();
      v33 = &v19[v17[5]];
      v35 = *v33;
      v34 = *(v33 + 1);
      *(inited + 96) = v32;
      *(inited + 72) = v35;
      *(inited + 80) = v34;

      v36 = sub_26804E65C();
      sub_26804E65C();
      sub_26804BFEC();

      (*(v55 + 104))(v58, *MEMORY[0x277D63BE0], v56);
      sub_26804E23C();
      v37 = sub_26804E24C();
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v37);
      v38 = v1 + v20[15];
      v39 = *v38;
      v40 = *(v38 + 8);
      if (*(v38 + 16))
      {
      }

      else
      {

        sub_26804E8AC();
        v41 = sub_26804D77C();
        sub_26804CD2C();

        v42 = v52;
        sub_26804D39C();
        swift_getAtKeyPath();
        sub_267FC1318(v39, v40, 0);
        (*(v53 + 8))(v42, v54);
      }

      v43 = objc_allocWithZone(sub_26804E45C());
      v44 = sub_26804E44C();
      v45 = v48;
      sub_268016080(v46, v47, v36, v44);

      sub_267FFF36C();
    }

    else
    {
      sub_26804E62C();
      sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
      sub_26804D15C();
      __break(1u);
    }
  }
}

uint64_t sub_267FF92C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v58 - v2;
  v4 = sub_26804C89C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = MEMORY[0x277D5D7A0];
  sub_267FB02A8(&qword_280242D58, MEMORY[0x277D5D7A0]);
  sub_267FB02A8(&qword_280242D60, v14);

  sub_26804C83C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_267FB05B4(v3, &qword_280242D50);
  }

  v63 = v0;
  (*(v5 + 32))(v13, v3, v4);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v16 = sub_26804CD4C();
  __swift_project_value_buffer(v16, qword_2802487E0);
  v17 = v5;
  v18 = *(v5 + 16);
  v18(v11, v13, v4);
  v19 = sub_26804CD3C();
  v20 = sub_26804E88C();
  v21 = os_log_type_enabled(v19, v20);
  v62 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v66 = v23;
    *v22 = 136315138;
    v18(v8, v11, v4);
    v24 = sub_26804E6EC();
    v26 = v25;
    v61 = *(v62 + 8);
    v61(v11, v4);
    v27 = sub_267FAE0C4(v24, v26, &v66);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_267FA7000, v19, v20, "#RecipientLabelView received %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D60E1E0](v23, -1, -1);
    MEMORY[0x26D60E1E0](v22, -1, -1);
  }

  else
  {

    v61 = *(v17 + 8);
    v61(v11, v4);
  }

  v28 = type metadata accessor for RecipientLabelView();
  v29 = v63;
  v30 = *(v63 + *(v28 + 52));
  if (v30)
  {
    v31 = v28;
    v32 = v30;
    sub_268016368(0);

    v33 = sub_26804C86C();
    v34 = (v29 + v31[11]);
    v35 = *v34;
    v36 = *(v34 + 2);
    v66 = v35;
    v67 = v36;
    v64 = v33;
    v65 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
    sub_26804DDFC();
    v38 = sub_26804C88C();
    if (!v38)
    {
      return (v61)(v13, v4);
    }

    v66 = *(v29 + v31[10]);
    v64 = v38;
    v39 = v29;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D68);
    sub_26804DDFC();
    v41 = (v39 + v31[8]);
    v43 = *v41;
    v42 = v41[1];
    v44 = v41[2];
    v59 = v43;
    v60 = v44;
    *&v66 = v43;
    *(&v66 + 1) = v42;
    v45 = v42;
    v67 = v44;
    sub_26804DDEC();
    v47 = v64;
    v46 = v65;
    v48 = v40;
    v49 = sub_267FFDD90(v48);
    if (v50)
    {
      if (v47 == v49 && v50 == v46)
      {

        return (v61)(v13, v4);
      }

      v52 = sub_26804EC9C();

      if (v52)
      {

LABEL_21:
        return (v61)(v13, v4);
      }
    }

    else
    {
    }

    v53 = (v63 + v31[9]);
    v54 = *v53;
    v55 = *(v53 + 1);
    LOBYTE(v66) = v54;
    *(&v66 + 1) = v55;
    LOBYTE(v64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDFC();
    v56 = sub_267FFDD90(v48);
    if (v57)
    {
      *&v66 = v59;
      *(&v66 + 1) = v45;
      v67 = v60;
      v64 = v56;
      v65 = v57;

      sub_26804DDFC();

      goto LABEL_21;
    }

    __break(1u);
  }

  sub_26804E62C();
  sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
  result = sub_26804D15C();
  __break(1u);
  return result;
}

uint64_t sub_267FF9964@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for RecipientLabelView();
  v3 = *(v2 - 8);
  v55 = v2 - 8;
  v52 = v3;
  v48 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v47 = sub_26804BF4C();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26804E47C();
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D28);
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x28223BE20](v14);
  v57 = &v42 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D30);
  sub_26804BEAC();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_268050170;
  v17 = sub_26804C49C();
  v19 = v18;
  v20 = sub_26804C4AC();
  v22 = v21;
  *&v73 = v17;
  *(&v73 + 1) = v19;

  MEMORY[0x26D60D390](v20, v22);

  v23 = v1;

  v24 = *MEMORY[0x277D62900];
  v25 = sub_26804BE9C();
  (*(*(v25 - 8) + 104))(v9, v24, v25);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  v26 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v26);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_26804BEBC();
  *&v67 = v16;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D38);
  sub_267FCCA4C(&qword_280242D40, &qword_280242D38);
  v27 = v44;
  sub_26804BF5C();
  v28 = sub_26804BF3C();
  v29 = v49;
  (*(v45 + 8))(v27, v47);
  *(&v74 + 1) = MEMORY[0x277CE11C8];
  v75 = MEMORY[0x277D63A60];
  *&v73 = v28;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v30 = v46;
  sub_26804E46C();
  sub_267FFE8C0(v23, v29);
  v31 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v32 = swift_allocObject();
  sub_267FFE160(v29, v32 + v31);
  sub_267FB02A8(&qword_280242D48, MEMORY[0x277D63E28]);
  v33 = v50;
  sub_26804D9BC();

  (*(v51 + 8))(v30, v33);
  v34 = *(v23 + *(v55 + 60));
  if (v34)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CD8);
    v36 = v34;
    v37 = v56;
    sub_26804E53C();

    sub_267FFE8C0(v23, v29);
    v38 = swift_allocObject();
    sub_267FFE160(v29, v38 + v31);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_267FFD19C;
    *(v39 + 24) = v38;
    result = (*(v53 + 32))(v37, v57, v54);
    v41 = (v37 + *(v35 + 56));
    *v41 = sub_267FFD1A0;
    v41[1] = v39;
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_267FFA150@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v81 - v3;
  v4 = sub_26804BEFC();
  v92 = *(v4 - 8);
  v5 = v92;
  MEMORY[0x28223BE20](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v7;
  v8 = sub_26804BF1C();
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242FB0);
  MEMORY[0x28223BE20](v91);
  v88 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242FA0);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v81 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F90);
  MEMORY[0x28223BE20](v93);
  v95 = &v81 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F80);
  MEMORY[0x28223BE20](v94);
  v96 = &v81 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F60);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242FE8);
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v98 = &v81 - v17;
  v84 = type metadata accessor for RecipientLabelView();
  v18 = (v1 + *(v84 + 32));
  v20 = v18[1];
  v21 = v18[2];
  *&v106 = *v18;
  v19 = v106;
  *(&v106 + 1) = v20;
  *&v107 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DDEC();
  v83 = v104;
  v22 = *MEMORY[0x277D62B70];
  v23 = *(v5 + 104);
  v24 = v7;
  v25 = v4;
  v90 = v5 + 104;
  v89 = v23;
  v23(v24, v22, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E8);
  v26 = sub_26804BECC();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_268050170;
  v30 = v29 + v28;
  v31 = v25;
  (*(v27 + 104))(v30, *MEMORY[0x277D62A28], v26);
  sub_267FAFE24(v29);
  v32 = v82;
  sub_26804BF0C();

  v33 = *(v92 + 8);
  v92 = v31;
  v33(v32, v31);
  v34 = v88;
  sub_26804E31C();
  *&v106 = v19;
  *(&v106 + 1) = v20;
  *&v107 = v21;
  sub_26804DDEC();
  v35 = v105;
  v36 = (v34 + *(v91 + 52));
  *v36 = v104;
  v36[1] = v35;
  v37 = v84;
  *&v106 = v19;
  *(&v106 + 1) = v20;
  v38 = v85;
  *&v107 = v21;
  sub_26804DDEC();
  v39 = sub_26804C52C();
  v41 = v40;

  if (v41)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  *&v106 = v42;
  *(&v106 + 1) = v43;
  sub_267FCCA4C(&qword_280242FA8, &qword_280242FB0);
  sub_267FB0C1C();
  v44 = v86;
  sub_26804DB4C();

  sub_267FB05B4(v34, &qword_280242FB0);
  KeyPath = swift_getKeyPath();
  v46 = *(v38 + *(v37 + 52));
  if (v46)
  {
    v47 = KeyPath;
    v48 = v46;
    sub_26804E51C();
    v50 = v49;

    v51 = MEMORY[0x277D62BE8];
    if (v50 <= 1.0)
    {
      v51 = MEMORY[0x277D62BD8];
    }

    v52 = v97;
    v53 = v92;
    v89(v97, *v51, v92);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    v54 = v95;
    v55 = &v95[*(v93 + 36)];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417F0);
    sub_267FDBADC(v52, &v55[*(v56 + 28)], &qword_280242FE0);
    *v55 = v47;
    sub_267FDBADC(v44, v54, &qword_280242FA0);
    v57 = v48;
    sub_26804E51C();

    sub_26804DFAC();
    sub_26804CFBC();
    v58 = v96;
    sub_267FDBADC(v54, v96, &qword_280242F90);
    v59 = (v58 + *(v94 + 36));
    v60 = v107;
    *v59 = v106;
    v59[1] = v60;
    v59[2] = v108;
    v61 = sub_26804D79C();
    v62 = v57;
    sub_26804E51C();

    sub_26804CE1C();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = v99;
    sub_267FDBADC(v58, v99, &qword_280242F80);
    v72 = v71 + *(v100 + 36);
    *v72 = v61;
    *(v72 + 8) = v64;
    *(v72 + 16) = v66;
    *(v72 + 24) = v68;
    *(v72 + 32) = v70;
    *(v72 + 40) = 0;
    sub_26804C4FC();

    MEMORY[0x28223BE20](v73);
    *(&v81 - 2) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F68);
    sub_267FFEADC();
    sub_267FFED94();
    v74 = v98;
    sub_26804DA2C();
    sub_267FB05B4(v71, &qword_280242F60);
    v75 = v62;
    sub_26804E51C();
    v77 = v76;

    v78 = v103;
    (*(v101 + 32))(v103, v74, v102);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F10);
    v80 = v78 + *(result + 36);
    *v80 = v77 * 9.0;
    *(v80 + 8) = 5;
    *(v80 + 16) = 256;
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_267FFAB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F68) + 36);
  sub_267FFAC30();
  v5 = sub_26804DFAC();
  v7 = v6;
  v8 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EE0) + 36));
  *v8 = v5;
  v8[1] = v7;
  return sub_267FDC224(a1, a2, &qword_280242F60);
}

uint64_t sub_267FFAC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EF8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v18 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242F00);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - v5);
  v7 = *(v0 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v7)
  {
    v8 = v7;
    v9 = sub_26804E50C();

    v10 = objc_opt_self();
    if (v9)
    {
      v11 = [v10 quaternarySystemFillColor];
      *v6 = sub_26804DC1C();
      swift_storeEnumTagMultiPayload();
      sub_267FFE920();
      return sub_26804D5AC();
    }

    else
    {
      v13 = [v10 tertiarySystemFillColor];
      v14 = sub_26804DC1C();
      v15 = *(v1 + 36);
      v16 = *MEMORY[0x277CE13B8];
      v17 = sub_26804DFFC();
      (*(*(v17 - 8) + 104))(v3 + v15, v16, v17);
      *v3 = v14;
      sub_267FDC224(v3, v6, &qword_280242EF8);
      swift_storeEnumTagMultiPayload();
      sub_267FFE920();
      sub_26804D5AC();
      return sub_267FB05B4(v3, &qword_280242EF8);
    }
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

void sub_267FFAEDC()
{
  v1 = v0;
  v2 = sub_26804C4BC();
  if (v2)
  {
    v3 = v2;
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v4 = sub_26804CD4C();
    __swift_project_value_buffer(v4, qword_2802487E0);
    v5 = sub_26804CD3C();
    v6 = sub_26804E88C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_267FA7000, v5, v6, "#RecipientLabelView requesting device unlock", v7, 2u);
      MEMORY[0x26D60E1E0](v7, -1, -1);
    }

    v8 = *(v1 + *(type metadata accessor for RecipientLabelView() + 52));
    if (!v8)
    {
      sub_26804E62C();
      sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
      sub_26804D15C();
      __break(1u);
      return;
    }

    v9 = v8;
    v13 = v3;
    sub_26804E5FC();
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v10 = sub_26804CD4C();
    __swift_project_value_buffer(v10, qword_2802487E0);
    v13 = sub_26804CD3C();
    v11 = sub_26804E89C();
    if (os_log_type_enabled(v13, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267FA7000, v13, v11, "#RecipientLabelView unlockDevice command is missing", v12, 2u);
      MEMORY[0x26D60E1E0](v12, -1, -1);
    }
  }
}

void sub_267FFB130(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecipientLabelView();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v61 = v5;
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v52 - v7;
  v8 = sub_26804D3AC();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_26804E2DC();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26804BFFC();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v63 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v19 = sub_26804CD4C();
  __swift_project_value_buffer(v19, qword_2802487E0);
  v20 = sub_26804CD3C();
  v21 = sub_26804E88C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = v14;
    v23 = a1;
    v24 = v22;
    v25 = swift_slowAlloc();
    v53 = v8;
    v54 = v10;
    v26 = v13;
    v27 = v25;
    v64 = v25;
    *v24 = 136315138;
    if (v23)
    {
      v28 = 0x65746E6573657270;
    }

    else
    {
      v28 = 0x657373696D736964;
    }

    v29 = v4;
    v30 = v16;
    v31 = v2;
    v32 = sub_267FAE0C4(v28, 0xE900000000000064, &v64);

    *(v24 + 4) = v32;
    v2 = v31;
    v16 = v30;
    v4 = v29;
    _os_log_impl(&dword_267FA7000, v20, v21, "#RecipientLabelView app picker menu is %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v33 = v27;
    v13 = v26;
    v8 = v53;
    v10 = v54;
    MEMORY[0x26D60E1E0](v33, -1, -1);
    v34 = v24;
    a1 = v23;
    v14 = v52;
    MEMORY[0x26D60E1E0](v34, -1, -1);
  }

  if (a1)
  {
    v35 = *(v2 + *(v4 + 52));
    if (v35)
    {
      v36 = v35;
      sub_268015EFC();

      (*(v56 + 104))(v63, *MEMORY[0x277D63760], v57);
      (*(v58 + 104))(v16, *MEMORY[0x277D63BE0], v14);
      v37 = v36;
      sub_26804E23C();
      v38 = sub_26804E24C();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v38);
      v39 = v2 + *(v4 + 60);
      v40 = *v39;
      v41 = *(v39 + 8);
      if (*(v39 + 16))
      {
      }

      else
      {

        sub_26804E8AC();
        v49 = sub_26804D77C();
        sub_26804CD2C();

        sub_26804D39C();
        swift_getAtKeyPath();
        sub_267FC1318(v40, v41, 0);
        (*(v55 + 8))(v10, v8);
      }

      v50 = objc_allocWithZone(sub_26804E45C());
      v51 = sub_26804E44C();
      sub_26804E5BC();
    }

    else
    {
      sub_26804E62C();
      sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
      sub_26804D15C();
      __break(1u);
    }
  }

  else
  {
    v42 = sub_26804E84C();
    v43 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v42);
    v44 = v62;
    sub_267FFE8C0(v2, v62);
    sub_26804E81C();
    v45 = sub_26804E80C();
    v46 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D85700];
    *(v47 + 16) = v45;
    *(v47 + 24) = v48;
    sub_267FFE160(v44, v47 + v46);
    sub_267FF4998(0, 0, v43, &unk_268052918, v47);
  }
}

void *sub_267FFB854@<X0>(void *a1@<X8>)
{
  type metadata accessor for RecipientLabelView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DE0C();
  v2 = sub_26804C50C();
  v4 = v3;
  v5 = sub_26804C4FC();
  sub_267FDC2A4(__src[0], __src[1], __src[2], __src[3], v2, v4, v5, __src);
  return memcpy(a1, __src, 0x49uLL);
}

void sub_267FFB930()
{
  v1 = sub_26804D3AC();
  v63 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = sub_26804E2DC();
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26804BFFC();
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_26804C85C();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipientLabelView();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 36);
  v68 = v0;
  v17 = &v0[v16];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v74) = *v17;
  *(&v74 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDEC();
  if (v72 == 1)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v20 = sub_26804CD4C();
    __swift_project_value_buffer(v20, qword_2802487E0);
    v21 = v68;
    sub_267FFE8C0(v68, v15);
    v22 = sub_26804CD3C();
    v23 = sub_26804E88C();
    v24 = os_log_type_enabled(v22, v23);
    v62 = v6;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v61 = v1;
      v26 = v25;
      v60 = swift_slowAlloc();
      v71 = v60;
      *v26 = 136315138;
      v27 = &v15[v12[8]];
      v28 = *v27;
      v29 = *(v27 + 2);
      v74 = v28;
      v75 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
      sub_26804DDEC();
      v30 = v5;
      v31 = v72;
      v32 = v73;
      sub_267FFF36C();
      v33 = sub_267FAE0C4(v31, v32, &v71);
      v5 = v30;
      v21 = v68;

      *(v26 + 4) = v33;
      _os_log_impl(&dword_267FA7000, v22, v23, "#RecipientLabelView app selected: %s", v26, 0xCu);
      v34 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x26D60E1E0](v34, -1, -1);
      v35 = v26;
      v1 = v61;
      MEMORY[0x26D60E1E0](v35, -1, -1);
    }

    else
    {

      sub_267FFF36C();
    }

    v36 = v21;
    v37 = *&v21[v12[13]];
    if (v37)
    {
      v38 = v65;
      v39 = v66;
      (*(v65 + 104))(v11, *MEMORY[0x277D5D758], v66);
      v68 = v37;
      v61 = sub_26804C84C();
      v41 = v40;
      (*(v38 + 8))(v11, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268050170;
      *&v74 = 0x6C646E7542707061;
      *(&v74 + 1) = 0xEB00000000644965;
      v43 = MEMORY[0x277D837D0];
      sub_26804EAFC();
      v44 = &v36[v12[8]];
      v45 = *v44;
      v46 = *(v44 + 2);
      v74 = v45;
      v75 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
      sub_26804DDEC();
      v47 = v72;
      v48 = v73;
      *(inited + 96) = v43;
      *(inited + 72) = v47;
      *(inited + 80) = v48;
      v49 = sub_26804E65C();
      sub_26804E65C();
      sub_26804BFEC();

      (*(v67 + 104))(v70, *MEMORY[0x277D63BE0], v62);
      sub_26804E23C();
      v50 = sub_26804E24C();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v50);
      v51 = &v36[v12[15]];
      v52 = *v51;
      v53 = *(v51 + 1);
      if (v51[16])
      {
      }

      else
      {

        sub_26804E8AC();
        v54 = sub_26804D77C();
        sub_26804CD2C();

        v55 = v64;
        sub_26804D39C();
        swift_getAtKeyPath();
        sub_267FC1318(v52, v53, 0);
        (*(v63 + 8))(v55, v1);
      }

      v56 = objc_allocWithZone(sub_26804E45C());
      v57 = sub_26804E44C();
      v58 = v68;
      sub_268016080(v61, v41, v49, v57);
    }

    else
    {
      sub_26804E62C();
      sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
      sub_26804D15C();
      __break(1u);
    }
  }

  else
  {
    LOBYTE(v74) = v18;
    *(&v74 + 1) = v19;
    LOBYTE(v72) = 1;
    sub_26804DDFC();
  }
}

void sub_267FFC1C8()
{
  v1 = *(v0 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v1)
  {
    v2 = v1;
    v3 = sub_26801635C();

    if ((v3 & 1) == 0)
    {
      v4 = *(sub_26804C4FC() + 16);

      if (v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
        sub_26804DDEC();
        if (v10)
        {
          sub_267FFAEDC();
        }

        else
        {
          if (qword_280241130 != -1)
          {
            swift_once();
          }

          v5 = sub_26804CD4C();
          __swift_project_value_buffer(v5, qword_2802487E0);
          v6 = sub_26804CD3C();
          v7 = sub_26804E88C();
          if (os_log_type_enabled(v6, v7))
          {
            v8 = swift_slowAlloc();
            *v8 = 0;
            _os_log_impl(&dword_267FA7000, v6, v7, "#RecipientLabelView presenting contact autocomplete", v8, 2u);
            MEMORY[0x26D60E1E0](v8, -1, -1);
          }

          v9 = v2;
          sub_268015CD8(0);

          sub_26804DDFC();
        }
      }

      else
      {

        sub_267FF676C();
      }
    }
  }

  else
  {
    sub_26804E62C();
    sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}