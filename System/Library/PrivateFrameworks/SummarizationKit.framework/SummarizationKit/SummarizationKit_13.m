uint64_t sub_228100F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  if ((sub_228100294(a1) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_22813711C();
  v11 = sub_22813708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    v14 = v10;
LABEL_6:
    sub_228102DB0(v14, &qword_27D81E580, &unk_2281402B0);
LABEL_7:
    v18 = 0;
    return v18 & 1;
  }

  v25 = sub_228136FFC();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v10, v11);
  sub_22813711C();
  if (v13(v7, 1, v11) == 1)
  {

    v14 = v7;
    goto LABEL_6;
  }

  v20 = sub_228136FFC();
  v22 = v21;
  v17(v7, v11);
  if (v25 == v20 && v16 == v22)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_2281399BC();
  }

  return v18 & 1;
}

uint64_t sub_228101134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v53 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v15 = *(sub_22813713C() - 8);
  v61 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v56 = 8 * v61;
  v17 = swift_allocObject();
  v54 = v17;
  *(v17 + 16) = xmmword_22813BA30;
  v63 = v17 + v16;
  sub_22813700C();
  v62 = sub_22813701C();
  v18 = *(v62 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v14, 0, 1, v62);
  v66 = v20;
  v21 = v19;
  v55 = v19;
  v65 = sub_2281370BC();
  v22 = *(v65 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v9, 1, 1, v65);
  v60 = v23;
  sub_22813707C();
  v25 = sub_22813708C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v64 = v25;
  v27(v4, 0, 1, v25);
  v57 = v27;
  sub_2281370FC();
  sub_22813700C();
  v21(v14, 0, 1, v62);
  v29 = v65;
  v59 = v24;
  v23(v9, 1, 1, v65);
  sub_22813707C();
  v58 = v28;
  v27(v4, 0, 1, v25);
  v30 = v61;
  sub_2281370FC();
  v53 = 2 * v30;
  sub_22813700C();
  v31 = v62;
  v32 = v55;
  v55(v14, 0, 1, v62);
  v60(v9, 1, 1, v29);
  sub_22813707C();
  v33 = v57;
  v57(v4, 0, 1, v64);
  v34 = v53;
  sub_2281370FC();
  v53 = v34 + v61;
  sub_22813700C();
  v32(v14, 0, 1, v31);
  v35 = v65;
  v36 = v60;
  v60(v9, 1, 1, v65);
  sub_22813707C();
  v37 = v64;
  v33(v4, 0, 1, v64);
  sub_2281370FC();
  sub_22813700C();
  v38 = v62;
  v32(v14, 0, 1, v62);
  v36(v9, 1, 1, v35);
  sub_22813707C();
  v39 = v37;
  v40 = v57;
  v57(v4, 0, 1, v39);
  v41 = v63;
  sub_2281370FC();
  v42 = v61;
  sub_22813700C();
  v43 = v38;
  v44 = v55;
  v55(v14, 0, 1, v43);
  v60(v9, 1, 1, v65);
  sub_22813707C();
  v40(v4, 0, 1, v64);
  sub_2281370FC();
  v53 = v41 + 6 * v42;
  sub_22813700C();
  v45 = v62;
  v46 = v44;
  v44(v14, 0, 1, v62);
  v47 = v9;
  v48 = v65;
  v49 = v60;
  v60(v9, 1, 1, v65);
  sub_22813707C();
  v50 = v57;
  v57(v4, 0, 1, v64);
  sub_2281370FC();
  v61 = v56 - v61;
  sub_22813700C();
  v46(v14, 0, 1, v45);
  v49(v47, 1, 1, v48);
  sub_22813707C();
  v51 = v64;
  v50(v4, 0, 1, v64);
  sub_2281370FC();
  sub_22813700C();
  v46(v14, 0, 1, v62);
  v49(v47, 1, 1, v65);
  sub_22813707C();
  v50(v4, 0, 1, v51);
  result = sub_2281370FC();
  qword_2813C86C8 = v54;
  return result;
}

uint64_t sub_228101938()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v49 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v15 = *(sub_22813713C() - 8);
  v58 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v51 = v17;
  *(v17 + 16) = xmmword_228142C10;
  v60 = v17 + v16;
  sub_22813700C();
  v18 = sub_22813701C();
  v19 = *(v18 - 8);
  v53 = *(v19 + 56);
  v20 = v19 + 56;
  v55 = v18;
  v53(v14, 0, 1, v18);
  v52 = v20;
  v21 = sub_2281370BC();
  v22 = *(v21 - 8);
  v59 = *(v22 + 56);
  v23 = v22 + 56;
  v24 = v21;
  v54 = v21;
  v59(v9, 1, 1);
  v57 = v23;
  sub_22813707C();
  v25 = sub_22813708C();
  v26 = *(v25 - 8);
  v56 = *(v26 + 56);
  v27 = v26 + 56;
  v56(v4, 0, 1, v25);
  v61 = v27;
  sub_2281370FC();
  sub_22813700C();
  v28 = v18;
  v29 = v53;
  v53(v14, 0, 1, v28);
  v30 = v9;
  v31 = v24;
  v32 = v59;
  (v59)(v9, 1, 1, v31);
  sub_22813707C();
  v33 = v56;
  v56(v4, 0, 1, v25);
  sub_2281370FC();
  sub_22813700C();
  v34 = v55;
  v29(v14, 0, 1, v55);
  v32(v30, 1, 1, v54);
  sub_22813707C();
  v35 = v25;
  v33(v4, 0, 1, v25);
  sub_2281370FC();
  v36 = v58;
  sub_22813700C();
  v37 = v34;
  v38 = v53;
  v53(v14, 0, 1, v37);
  v39 = v30;
  v40 = v30;
  v41 = v54;
  (v59)(v40, 1, 1, v54);
  sub_22813707C();
  v50 = v35;
  v56(v4, 0, 1, v35);
  v42 = v39;
  sub_2281370FC();
  sub_22813700C();
  v43 = v38;
  v38(v14, 0, 1, v55);
  (v59)(v42, 1, 1, v41);
  sub_22813707C();
  v44 = v56;
  v56(v4, 0, 1, v35);
  sub_2281370FC();
  v49[1] = 4 * v36 + v58;
  sub_22813700C();
  v45 = v55;
  v43(v14, 0, 1, v55);
  v46 = v59;
  (v59)(v42, 1, 1, v41);
  sub_22813707C();
  v47 = v50;
  v44(v4, 0, 1, v50);
  sub_2281370FC();
  sub_22813700C();
  v53(v14, 0, 1, v45);
  v46(v42, 1, 1, v54);
  sub_22813707C();
  v44(v4, 0, 1, v47);
  result = sub_2281370FC();
  qword_2813C86E8 = v51;
  return result;
}

uint64_t sub_22810200C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v52 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v52 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v15 = *(sub_22813713C() - 8);
  v62 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v55 = 8 * v62;
  v17 = swift_allocObject();
  v53 = v17;
  *(v17 + 16) = xmmword_22813BA30;
  v59 = v17 + v16;
  sub_22813700C();
  v58 = sub_22813701C();
  v18 = *(v58 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v14, 0, 1, v58);
  v65 = v20;
  v21 = v19;
  v54 = v19;
  sub_2281370AC();
  v22 = sub_2281370BC();
  v23 = *(v22 - 8);
  v64 = *(v23 + 56);
  v61 = v23 + 56;
  v64(v9, 0, 1, v22);
  sub_22813707C();
  v24 = sub_22813708C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v63 = v24;
  v26(v4, 0, 1, v24);
  v56 = v26;
  sub_2281370FC();
  sub_22813700C();
  v28 = v58;
  v21(v14, 0, 1, v58);
  sub_2281370AC();
  v29 = v9;
  v60 = v22;
  v64(v9, 0, 1, v22);
  sub_22813707C();
  v57 = v27;
  v26(v4, 0, 1, v24);
  v30 = v62;
  sub_2281370FC();
  v52 = 2 * v30;
  sub_22813700C();
  v31 = v54;
  v54(v14, 0, 1, v28);
  v64(v9, 1, 1, v22);
  sub_22813707C();
  v32 = v56;
  v56(v4, 0, 1, v63);
  v33 = v52;
  sub_2281370FC();
  v52 = v33 + v62;
  sub_22813700C();
  v31(v14, 0, 1, v28);
  v34 = v60;
  v35 = v64;
  v64(v9, 1, 1, v60);
  sub_22813707C();
  v36 = v63;
  v32(v4, 0, 1, v63);
  sub_2281370FC();
  sub_22813700C();
  v37 = v58;
  v31(v14, 0, 1, v58);
  v35(v29, 1, 1, v34);
  sub_22813707C();
  v38 = v36;
  v39 = v56;
  v56(v4, 0, 1, v38);
  v40 = v59;
  sub_2281370FC();
  v41 = v62;
  sub_22813700C();
  v42 = v37;
  v43 = v54;
  v54(v14, 0, 1, v42);
  v64(v29, 1, 1, v60);
  sub_22813707C();
  v39(v4, 0, 1, v63);
  sub_2281370FC();
  v52 = v40 + 6 * v41;
  sub_22813700C();
  v44 = v58;
  v45 = v43;
  v43(v14, 0, 1, v58);
  v46 = v29;
  v47 = v60;
  v48 = v64;
  v64(v29, 1, 1, v60);
  sub_22813707C();
  v49 = v56;
  v56(v4, 0, 1, v63);
  sub_2281370FC();
  v62 = v55 - v62;
  sub_22813700C();
  v45(v14, 0, 1, v44);
  v48(v46, 1, 1, v47);
  sub_22813707C();
  v50 = v63;
  v49(v4, 0, 1, v63);
  sub_2281370FC();
  sub_22813700C();
  v45(v14, 0, 1, v58);
  v48(v46, 1, 1, v60);
  sub_22813707C();
  v49(v4, 0, 1, v50);
  result = sub_2281370FC();
  qword_2813C86D8 = v53;
  return result;
}

uint64_t sub_228102848()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v24 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB18, &qword_22813DA60);
  v15 = *(sub_22813713C() - 8);
  v26 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v28 = 2 * v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22813B480;
  sub_22813700C();
  v17 = sub_22813701C();
  v25 = *(*(v17 - 8) + 56);
  v24[0] = v17;
  v25(v14, 0, 1, v17);
  sub_2281370AC();
  v18 = sub_2281370BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v24[1] = v19 + 56;
  v20(v9, 0, 1, v18);
  sub_22813707C();
  v29 = sub_22813708C();
  v30 = *(*(v29 - 8) + 56);
  v30(v4, 0, 1, v29);
  sub_2281370FC();
  sub_22813700C();
  v21 = v17;
  v22 = v25;
  v25(v14, 0, 1, v21);
  v20(v9, 1, 1, v18);
  sub_22813707C();
  v30(v4, 0, 1, v29);
  sub_2281370FC();
  sub_22813700C();
  v22(v14, 0, 1, v24[0]);
  v20(v9, 1, 1, v18);
  sub_22813707C();
  v30(v4, 0, 1, v29);
  result = sub_2281370FC();
  qword_2813C86F8 = v27;
  return result;
}

uint64_t sub_228102C60()
{
  if (qword_2813C86C0 != -1)
  {
    swift_once();
  }

  v0 = qword_2813C86C8;
  v1 = qword_2813C86E0;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_227FED2DC(v2);
  if (qword_2813C86F0 != -1)
  {
    swift_once();
  }

  sub_227FED2DC(v3);
  if (qword_2813C86D0 != -1)
  {
    swift_once();
  }

  result = sub_227FED2DC(v4);
  off_2813C86B8 = v0;
  return result;
}

uint64_t sub_228102DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228102E10()
{
  v0 = sub_22813716C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  sub_22813704C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3D8, &qword_228142C28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8B90 = result;
  return result;
}

uint64_t sub_228102EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3D0, &qword_228142C20);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_228139B5C();
  qword_2813C8AD0 = result;
  return result;
}

uint64_t sub_228102F0C()
{
  v0 = sub_22813713C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C6928 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  v6 = v16;
  if (!v16)
  {
    v7 = sub_22813703C();
    v8 = *(v7 + 16);
    if (v8)
    {
      v16 = MEMORY[0x277D84F90];
      sub_228043B14(0, v8, 0);
      v6 = v16;
      v9 = (v7 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;

        sub_2281370DC();
        v16 = v6;
        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_228043B14(v12 > 1, v13 + 1, 1);
          v6 = v16;
        }

        *(v6 + 16) = v13 + 1;
        (*(v1 + 32))(v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v5, v0);
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v6;
}

uint64_t sub_228103100()
{
  result = sub_22810333C(&unk_283B5AFD0);
  qword_2813C8B50 = result;
  *algn_2813C8B58 = v1;
  return result;
}

unint64_t sub_22810312C()
{
  result = sub_2281033EC();
  qword_2813C8788 = result;
  unk_2813C8790 = v1;
  return result;
}

uint64_t sub_228103150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_228136D2C();
  v11 = result;
  if (result)
  {
    result = sub_228136D4C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_228136D3C();
  sub_227FC8C94(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_228103208(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2281032C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_228136D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_228136D1C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_228136ECC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22810333C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3E8, &unk_228142C30);
  v10 = sub_228103664();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_227FC98AC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_2281033EC()
{
  v0 = sub_2281393DC();
  if (!v1)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_36:

    v16 = sub_22810333C(v4);

    return v16;
  }

  v2 = v0;
  v3 = v1;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == 2573 && v3 == 0xE200000000000000 || (result = sub_2281399BC(), (result & 1) != 0))
    {

      LOBYTE(v5) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    v10 = (v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    if (!v10)
    {
      break;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v15 = sub_22813933C();
    }

    else
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v12 = v2;
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v11 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = sub_2281398AC();
        }

        v12 = *v11;
      }

      v13 = v12;
      v14 = (__clz(~v12) - 24) << 16;
      if (v13 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 65541;
      }
    }

    if (v15 >> 14 != 4 * v10)
    {
      goto LABEL_31;
    }

    result = sub_2280AAC4C(v2, v3);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_31:

      LOBYTE(v5) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_2280AAC4C(v2, v3);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      v5 = result;

      if ((v5 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v4 = sub_2281336C8(0, *(v4 + 2) + 1, 1, v4);
      }
    }

LABEL_6:
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_2281336C8((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v4[v7 + 32] = v5;
    v2 = sub_2281393DC();
    v3 = v8;
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_228103664()
{
  result = qword_2813C4668;
  if (!qword_2813C4668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81F3E8, &unk_228142C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4668);
  }

  return result;
}

uint64_t sub_2281036C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_228139B2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a2 & 0xFFFFFFFFFFFFFFLL;
  v11 = (v7 + 8);

  v12 = 0;
  v13 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_22813987C();
      v17 = v16;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v30[0] = a1;
        v30[1] = v29;
        v15 = v30 + v13;
      }

      else
      {
        v14 = v28;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = sub_2281398AC();
        }

        v15 = (v14 + v13);
      }

      v18 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v22 = (__clz(v18 ^ 0xFF) - 24);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v24 = ((v18 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3Fu;
          v17 = 3;
        }

        else
        {
          v25 = ((v18 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3Fu;
          v17 = 4;
        }

        goto LABEL_16;
      }

      if (v22 == 1)
      {
LABEL_15:
        v17 = 1;
      }

      else
      {
        v23 = v15[1] & 0x3F | ((v18 & 0x1F) << 6);
        v17 = 2;
      }
    }

LABEL_16:
    if ((v12 & 1) == 0 || (sub_228139B3C(), v19 = sub_228139B0C(), (*v11)(v9, v4), (v19 & 1) == 0))
    {
      v13 += v17;
      sub_228139B3C();
      v12 = sub_228139B1C();
      v20 = *v11;
      (*v11)(v9, v4);
      if ((v12 & 1) == 0)
      {
        continue;
      }

      sub_228139B3C();
      v21 = sub_228139AFC();
      v20(v9, v4);
      if ((v21 & 1) == 0)
      {
        continue;
      }
    }

    v26 = 1;
    goto LABEL_28;
  }

  while (v13 < v10);
  v26 = 0;
LABEL_28:

  return v26;
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ClassificationConfiguration.__allocating_init(assetManager:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = (v5 + qword_2813C68F8);
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x8000000228142C20;
  v7 = (v5 + qword_2813C6900);
  *v7 = 0x7478746270;
  v7[1] = 0xE500000000000000;
  v8 = (v5 + qword_2813C68F0);
  *v8 = 0xD000000000000010;
  v8[1] = 0x8000000228143AB0;
  *(v5 + qword_2813C68E8) = 0;
  return sub_227FDF5B4(a1, 0, 0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t sub_228103A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = a3;
  v5 = sub_22813716C();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PriorityModelSession.Input();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v66 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v62 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v62 - v20;
  v22 = sub_228136F8C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228104D40(a2, v21, &qword_27D81EC50, &unk_228140BB0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    result = sub_228104DA8(v21, &qword_27D81EC50, &unk_228140BB0);
    v29 = 3;
  }

  else
  {
    (*(v23 + 32))(v27, v21, v22);
    sub_228136EFC();
    v31 = v30;
    v32 = *(v9 + 24);
    sub_228136EFC();
    v34 = v31 - v33;
    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v35 = v34 / 3600.0;
    v36 = sub_22813882C();
    v37 = __swift_project_value_buffer(v36, qword_2813C8A08);
    sub_228104E08(a1, v16, type metadata accessor for PriorityModelSession.Input);
    v38 = sub_22813880C();
    v39 = sub_2281396BC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v63 = v32;
      v41 = v40;
      v42 = swift_slowAlloc();
      v64 = a1;
      v62 = v37;
      v43 = v42;
      v71 = v42;
      *v41 = 134349314;
      *(v41 + 4) = v35;
      *(v41 + 12) = 2082;
      v65 = v22;
      v44 = v27;
      v45 = *v16;
      v46 = v16[1];

      sub_227FCDD44(v16, type metadata accessor for PriorityModelSession.Input);
      v47 = sub_227FCC340(v45, v46, &v71);
      v27 = v44;

      *(v41 + 14) = v47;
      v22 = v65;
      _os_log_impl(&dword_227FC3000, v38, v39, "Time interval between eventDate and dateReceived %{public}f hours for ID: %{public}s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      a1 = v64;
      MEMORY[0x22AAB28A0](v43, -1, -1);
      v48 = v41;
      v32 = v63;
      MEMORY[0x22AAB28A0](v48, -1, -1);
    }

    else
    {

      sub_227FCDD44(v16, type metadata accessor for PriorityModelSession.Input);
    }

    if (v35 <= 24.0)
    {
      v49 = v67;
      sub_2281370CC();
      v50 = sub_2280DC3FC((a1 + v32));
      (*(v68 + 8))(v49, v69);
      if ((v50 & 0x100000000) != 0)
      {
        result = (*(v23 + 8))(v27, v22);
        v29 = 0;
      }

      else
      {
        v51 = *&v50;
        v52 = v66;
        sub_228104E08(a1, v66, type metadata accessor for PriorityModelSession.Input);
        v53 = sub_22813880C();
        v54 = sub_2281396BC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v71 = v56;
          *v55 = 134349314;
          *(v55 + 4) = v51;
          *(v55 + 12) = 2082;
          v57 = v27;
          v58 = *v52;
          v59 = v52[1];

          sub_227FCDD44(v52, type metadata accessor for PriorityModelSession.Input);
          v60 = sub_227FCC340(v58, v59, &v71);

          *(v55 + 14) = v60;
          _os_log_impl(&dword_227FC3000, v53, v54, "Remaining hours of today %{public}f for ID: %{public}s", v55, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x22AAB28A0](v56, -1, -1);
          MEMORY[0x22AAB28A0](v55, -1, -1);

          result = (*(v23 + 8))(v57, v22);
        }

        else
        {

          sub_227FCDD44(v52, type metadata accessor for PriorityModelSession.Input);
          result = (*(v23 + 8))(v27, v22);
        }

        v29 = v35 >= v51;
      }
    }

    else
    {
      result = (*(v23 + 8))(v27, v22);
      v29 = 2;
    }
  }

  v61 = v70;
  *v70 = v29;
  *(v61 + 8) = 1;
  return result;
}

uint64_t sub_2281040F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F260, &unk_228141690);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v44 - v6;
  v45 = type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo(0);
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45, v10);
  v46 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v24 = *(*(v23 - 8) + 64);
  result = MEMORY[0x28223BE20](v23, v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  if (*(a1 + 8))
  {
    goto LABEL_4;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_4:
  v44 = *a1;
  v30 = *(*v1 + 96);
  swift_beginAccess();
  sub_228104E08(v1 + v30, v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  sub_228104D40(&v28[*(v23 + 28)], v16, &qword_27D81F268, &qword_228142CB0);
  v31 = *(v18 + 48);
  if (v31(v16, 1, v17) == 1)
  {
    *v22 = MEMORY[0x277D84F90];
    v32 = &v22[*(v17 + 20)];
    sub_228137D6C();
    sub_227FCDD44(v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    v33 = v45;
    (*(v8 + 56))(&v22[*(v17 + 24)], 1, 1, v45);
    if (v31(v16, 1, v17) != 1)
    {
      sub_228104DA8(v16, &qword_27D81F268, &qword_228142CB0);
    }
  }

  else
  {
    sub_227FCDD44(v28, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    sub_228104CD8(v16, v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    v33 = v45;
  }

  sub_228104D40(&v22[*(v17 + 24)], v7, &qword_27D81F260, &unk_228141690);
  v34 = *(v8 + 48);
  if (v34(v7, 1, v33) == 1)
  {
    v35 = sub_227FE4410(MEMORY[0x277D84F90]);
    v36 = v46;
    *v46 = v35;
    v37 = v36 + *(v33 + 20);
    sub_228137D6C();
    sub_227FCDD44(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    if (v34(v7, 1, v33) != 1)
    {
      sub_228104DA8(v7, &qword_27D81F260, &unk_228141690);
    }
  }

  else
  {
    sub_227FCDD44(v22, type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo);
    v36 = v46;
    sub_228104CD8(v7, v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  }

  v38 = 0x54746E6576456F6ELL;
  v39 = *v36;
  if (*(*v36 + 16))
  {
    v40 = sub_22808C91C(v44);
    if (v41)
    {
      v42 = (*(v39 + 56) + 16 * v40);
      v38 = *v42;
      v43 = v42[1];
    }
  }

  sub_227FCDD44(v36, type metadata accessor for Com_Apple_Summarizationkit_Proto_BucketInfo);
  return v38;
}

uint64_t ClassificationConfiguration.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = (v3 + qword_2813C68F8);
  *v4 = 0xD00000000000001BLL;
  v4[1] = 0x8000000228142C20;
  v5 = (v3 + qword_2813C6900);
  *v5 = 0x7478746270;
  v5[1] = 0xE500000000000000;
  v6 = (v3 + qword_2813C68F0);
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000228143AB0;
  *(v3 + qword_2813C68E8) = 0;
  return sub_227FDC5A4(0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010);
}

uint64_t ClassificationConfiguration.init()()
{
  v1 = (v0 + qword_2813C68F8);
  *v1 = 0xD00000000000001BLL;
  v1[1] = 0x8000000228142C20;
  v2 = (v0 + qword_2813C6900);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C68F0);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  *(v0 + qword_2813C68E8) = 0;
  return sub_227FDC5A4(0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010);
}

uint64_t ClassificationConfiguration.__allocating_init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = (v7 + qword_2813C68F8);
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x8000000228142C20;
  v9 = (v7 + qword_2813C6900);
  *v9 = 0x7478746270;
  v9[1] = 0xE500000000000000;
  v10 = (v7 + qword_2813C68F0);
  *v10 = 0xD000000000000010;
  v10[1] = 0x8000000228143AB0;
  *(v7 + qword_2813C68E8) = 0;
  return sub_227FDE650(a1, a2);
}

uint64_t ClassificationConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_2813C68F8);
  *v3 = 0xD00000000000001BLL;
  v3[1] = 0x8000000228142C20;
  v4 = (v2 + qword_2813C6900);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C68F0);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  *(v2 + qword_2813C68E8) = 0;
  return sub_227FDE650(a1, a2);
}

uint64_t ClassificationConfiguration.init(assetManager:)(void *a1)
{
  v2 = (v1 + qword_2813C68F8);
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x8000000228142C20;
  v3 = (v1 + qword_2813C6900);
  *v3 = 0x7478746270;
  v3[1] = 0xE500000000000000;
  v4 = (v1 + qword_2813C68F0);
  *v4 = 0xD000000000000010;
  v4[1] = 0x8000000228143AB0;
  *(v1 + qword_2813C68E8) = 0;
  return sub_227FDF5B4(a1, 0, 0xD00000000000001BLL, 0x8000000228142C20, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

BOOL sub_228104930(_DWORD *a1, _DWORD *a2)
{
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_227FCC340(0xD00000000000003CLL, 0x8000000228148CD0, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

uint64_t sub_228104ACC()
{
  v1 = *(v0 + qword_2813C68F8 + 8);

  v2 = *(v0 + qword_2813C6900 + 8);

  v3 = *(v0 + qword_2813C68F0 + 8);

  v4 = *(v0 + qword_2813C68E8);
}

uint64_t ClassificationConfiguration.deinit()
{
  sub_227FCDD44(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C68F8 + 8);

  v3 = *(v0 + qword_2813C6900 + 8);

  v4 = *(v0 + qword_2813C68F0 + 8);

  v5 = *(v0 + qword_2813C68E8);

  return v0;
}

uint64_t type metadata accessor for ClassificationConfiguration()
{
  result = qword_2813C68D8;
  if (!qword_2813C68D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228104CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228104D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228104DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228104E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228104E70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = qword_2813C6AC0;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_2280EAEE0(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    v10 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v10 + 16))
    {
      v11 = swift_allocObject();
      v12 = 19;
      *(v11 + 16) = 19;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v13 = sub_22812D41C;
      v14 = 96;
LABEL_21:
      v37 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, v14, v13);
      sub_227FDB3CC();
      swift_allocError();
      *v38 = v12;
      *(v38 + 8) = v37;
      return swift_willThrow();
    }

    v15 = v3;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C89F0);

    v17 = sub_22813880C();
    v18 = sub_2281396BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_227FCC340(a1, a2, &v39);
      _os_log_impl(&dword_227FC3000, v17, v18, "clientID %{public}s is not configured in ClientSwitchConfiguration; assuming enabled by default", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v20);
      MEMORY[0x22AAB28A0](v20, -1, -1);
      MEMORY[0x22AAB28A0](v19, -1, -1);
    }

    v3 = v15;
  }

  v21 = qword_2813C6AB0;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
    return swift_endAccess();
  }

  v23 = sub_22808C964(a1, a2);
  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  v25 = *(*(v22 + 56) + 8 * v23);
  swift_endAccess();
  v26 = *(v25 + 16);

  if (v26 && (sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000), (v27 & 1) != 0) || (v28 = *(a3 + 16)) == 0)
  {

    v36 = swift_allocObject();
    v12 = 15;
    *(v36 + 16) = 15;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    v13 = sub_22812D418;
    v14 = 113;
    goto LABEL_21;
  }

  v29 = (a3 + 40);
  do
  {
    if (*(v25 + 16))
    {
      v30 = *(v29 - 1);
      v31 = *v29;

      sub_22808C964(v30, v31);
      v33 = v32;

      if (v33)
      {

        v34 = swift_allocObject();
        v12 = 15;
        *(v34 + 16) = 15;
        *(v34 + 24) = 0;
        *(v34 + 32) = 0;
        v13 = sub_22812D414;
        v14 = 118;
        goto LABEL_21;
      }
    }

    v29 += 2;
    --v28;
  }

  while (v28);
}

uint64_t sub_228105284(uint64_t a1)
{
  v2 = sub_228138C0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v44 = &v37 - v9;
  v51 = MEMORY[0x277D84F90];
  sub_228043D60(0, v10, 0);
  v11 = v51;
  v12 = a1 + 56;
  v13 = -1 << *(a1 + 32);
  result = sub_2281397FC();
  v15 = result;
  v16 = 0;
  v42 = v3 + 16;
  v43 = (v3 + 8);
  v37 = a1 + 64;
  v38 = v3;
  v17 = v3;
  v46 = a1;
  v39 = v2;
  v40 = v10;
  v41 = a1 + 56;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v20 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_25;
    }

    v21 = v11;
    v22 = *(a1 + 36);
    v47 = v16;
    v48 = v22;
    v23 = *(a1 + 48) + *(v17 + 72) * v15;
    v24 = *(v17 + 16);
    v25 = v44;
    v24(v44, v23, v2);
    v11 = v45;
    v24(v45, v25, v2);
    v26 = v49;
    sub_227FE6B6C(v11, &v50);
    if (v26)
    {
      (*v43)(v25, v2);

      return v11;
    }

    v49 = 0;
    result = (*v43)(v25, v2);
    v27 = v50;
    v11 = v21;
    v51 = v21;
    v28 = *(v21 + 16);
    v29 = *(v11 + 24);
    if (v28 >= v29 >> 1)
    {
      result = sub_228043D60((v29 > 1), v28 + 1, 1);
      v11 = v51;
    }

    *(v11 + 16) = v28 + 1;
    *(v11 + v28 + 32) = v27;
    a1 = v46;
    v18 = 1 << *(v46 + 32);
    v12 = v41;
    if (v15 >= v18)
    {
      goto LABEL_26;
    }

    v30 = *(v41 + 8 * v20);
    if ((v30 & (1 << v15)) == 0)
    {
      goto LABEL_27;
    }

    if (v48 != *(v46 + 36))
    {
      goto LABEL_28;
    }

    v31 = v30 & (-2 << (v15 & 0x3F));
    if (v31)
    {
      v18 = __clz(__rbit64(v31)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v19 = v40;
    }

    else
    {
      v32 = v20 << 6;
      v33 = v20 + 1;
      v34 = (v37 + 8 * v20);
      v19 = v40;
      while (v33 < (v18 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_22812CAD8(v15, v48, 0);
          v18 = __clz(__rbit64(v35)) + v32;
          goto LABEL_20;
        }
      }

      result = sub_22812CAD8(v15, v48, 0);
LABEL_20:
      a1 = v46;
    }

    v16 = v47 + 1;
    v15 = v18;
    v17 = v38;
    v2 = v39;
    if (v47 + 1 == v19)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_228105610(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_227FC7F80(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v17 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22801D428();
    v9 = v17;
  }

  v10 = *(v9 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  sub_22812D31C(v10 + *(*(v11 - 8) + 72) * v6, &qword_27D81E4A0, &unk_22813AB10);
  v12 = (*(v9 + 56) + 24 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  sub_227FCD570(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_228105700(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22808D108(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v17 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22801DE60();
    v9 = v17;
  }

  v10 = *(v9 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  sub_22812D31C(v10 + *(*(v11 - 8) + 72) * v6, &qword_27D81E3D8, &unk_22813C640);
  v12 = (*(v9 + 56) + 24 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  sub_228028514(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_2281057F0(void *a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v111 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F458, &qword_228142F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v94 - v12;
  v14 = sub_228136FCC();
  v107 = *(v14 - 8);
  v108 = v14;
  v15 = *(v107 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v95 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v94 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v94 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v112 = &v94 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v99 = *(v30 - 8);
  v31 = *(v99 + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v101 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = (&v94 - v36);
  sub_22812CAE4(a2 + 16, &v114);
  v113[3] = &type metadata for PriorityModelSession.Configuration;
  v113[4] = &off_283B5F1E0;
  sub_228106B08(&v114, v113, &qword_27D81E4A0, &unk_22813AB10, v37);
  v102 = a1;
  v38 = *a1;
  if (*(*a1 + 16) && (v39 = sub_227FC7F80(v37), (v40 & 1) != 0))
  {
    v41 = (*(v38 + 56) + 24 * v39);
    v42 = v41[1];
    v43 = v41[2];
    v114 = *v41;
    v115 = v42;
    v116 = v43;
  }

  else
  {
    v114 = sub_22812AFB8(MEMORY[0x277D84F90]);
    v115 = v44;
    v116 = v45;
  }

  v46 = v112;
  *v112 = a2;
  v47 = *(v22 + 36);

  sub_228136F6C();
  v48 = *(v22 + 40);
  sub_228136FBC();
  v49 = v107;
  v50 = *(v107 + 16);
  v98 = v48;
  v51 = (v46 + v48);
  v52 = v108;
  v97 = v107 + 16;
  v96 = v50;
  v50(v21, v51, v108);
  sub_227FCAFD4(v46, v13, &qword_27D81EBA0, &qword_22813DAF0);
  (*(v23 + 56))(v13, 0, 1, v22);
  sub_2281072A8(v13, v21);
  v53 = v116;
  v106 = *(v116 + 16);
  v54 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v104 = v21;
  v110 = v37;
  v117 = v53;
  if (byte_2813C4629 == 1)
  {
    v55 = v49;
    v56 = v52;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v57 = &off_27D81EDB0;
  }

  else
  {
    v55 = v49;
    v56 = v52;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v57 = &qword_2813C76F8;
  }

  v58 = *(*v57 + 2040);
  v59 = *(*v57 + 2048);
  v60 = *(*v57 + 2056);
  v61 = *(*v57 + 2064);
  v62 = *(*v57 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v60(v113, v62);

    v59 = v113[0];
  }

  else
  {
  }

  v64 = v56;
  if (v59 >= v106)
  {
    v66 = v55;
    v73 = v104;
    v74 = v117;
LABEL_26:
    v77 = v114;
    v78 = v115;
    v108 = v114;

    v107 = v78;

    v79 = v102;
    v80 = *v102;
    v117 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113[0] = *v79;
    v82 = v78;
    v83 = v110;
    sub_22801BA08(v77, v82, v74, v110, isUniquelyReferenced_nonNull_native);
    *v79 = v113[0];
    v84 = sub_22813959C();
    (*(*(v84 - 8) + 56))(v111, 1, 1, v84);
    v85 = swift_allocObject();
    swift_weakInit();
    v86 = v101;
    sub_227FCAFD4(v83, v101, &qword_27D81E4A0, &unk_22813AB10);
    v87 = v112;
    v96(v73, &v112[v98], v64);
    v88 = v64;
    v89 = (*(v99 + 80) + 40) & ~*(v99 + 80);
    v90 = v73;
    v91 = (v100 + *(v66 + 80) + v89) & ~*(v66 + 80);
    v92 = v66;
    v93 = swift_allocObject();
    *(v93 + 2) = 0;
    *(v93 + 3) = 0;
    *(v93 + 4) = v85;
    sub_227FCCD78(v86, &v93[v89], &qword_27D81E4A0, &unk_22813AB10);
    (*(v92 + 32))(&v93[v91], v90, v88);
    sub_228109FEC(0, 0, v111, &unk_228142F60, v93);

    sub_22812D31C(v87, &qword_27D81EBA0, &qword_22813DAF0);
    sub_22812D31C(v110, &qword_27D81E4A0, &unk_22813AB10);

    return 1;
  }

  v65 = *(v117 + 16);
  if (v65)
  {
    v66 = v55;
    v67 = v65 - 1;
    v68 = v114;
    if (v114)
    {
      v69 = v115;

      v70 = v69;
      v71 = v109;
      v72 = sub_22812B4F0(v68 + 16, v68 + 32, v70, v67);
      v109 = v71;
    }

    else
    {
      v72 = 0;
    }

    v73 = v104;
    v75 = v95;
    sub_227FCC760(v67, v72, v95);
    (*(v66 + 8))(v75, v64);
    v76 = v94;
    sub_227FCCA18(v67, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v94);
    sub_22812D31C(v76, &qword_27D81EBA0, &qword_22813DAF0);
    v74 = v116;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_22810615C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v106 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v112 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F440, &qword_228142F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v95 - v12;
  v14 = sub_228136FCC();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v96 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v95 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v95 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v113 = &v95 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v100 = *(v30 - 8);
  v31 = *(v100 + 64);
  v33 = MEMORY[0x28223BE20](v30 - 8, v32);
  v102 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = (&v95 - v36);
  sub_22812CAE4(a2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo, &v115);
  v114[3] = type metadata accessor for SummarizationSession.Configuration();
  v114[4] = &off_283B5FB28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  sub_22812ABD8(a2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
  sub_228106B08(&v115, v114, &qword_27D81E3D8, &unk_22813C640, v37);
  v103 = a1;
  v39 = *a1;
  if (*(*a1 + 16) && (v40 = sub_22808D108(v37), (v41 & 1) != 0))
  {
    v42 = (*(v39 + 56) + 24 * v40);
    v43 = v42[1];
    v44 = v42[2];
    v115 = *v42;
    v116 = v43;
    v117 = v44;
  }

  else
  {
    v115 = sub_22812B698(MEMORY[0x277D84F90]);
    v116 = v45;
    v117 = v46;
  }

  v47 = v113;
  *v113 = a2;
  v48 = *(v22 + 36);

  sub_228136F6C();
  v49 = *(v22 + 40);
  sub_228136FBC();
  v50 = v108;
  v51 = *(v108 + 16);
  v99 = v49;
  v52 = (v47 + v49);
  v53 = v109;
  v98 = v108 + 16;
  v97 = v51;
  v51(v21, v52, v109);
  sub_227FCAFD4(v47, v13, &qword_27D81EB40, &qword_228142EC0);
  (*(v23 + 56))(v13, 0, 1, v22);
  sub_228107968(v13, v21);
  v54 = v117;
  v107 = *(v117 + 16);
  v55 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v105 = v21;
  v111 = v37;
  v118 = v54;
  if (byte_2813C4629 == 1)
  {
    v56 = v50;
    v57 = v53;
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v58 = &off_27D81EDB0;
  }

  else
  {
    v56 = v50;
    v57 = v53;
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v58 = &qword_2813C76F8;
  }

  v59 = *(*v58 + 2040);
  v60 = *(*v58 + 2048);
  v61 = *(*v58 + 2056);
  v62 = *(*v58 + 2064);
  v63 = *(*v58 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v61(v114, v63);

    v60 = v114[0];
  }

  else
  {
  }

  v65 = v57;
  if (v60 >= v107)
  {
    v67 = v56;
    v74 = v105;
    v75 = v118;
LABEL_26:
    v78 = v115;
    v79 = v116;
    v109 = v115;

    v108 = v79;

    v80 = v103;
    v81 = *v103;
    v118 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114[0] = *v80;
    v83 = v79;
    v84 = v111;
    sub_22801C09C(v78, v83, v75, v111, isUniquelyReferenced_nonNull_native);
    *v80 = v114[0];
    v85 = sub_22813959C();
    (*(*(v85 - 8) + 56))(v112, 1, 1, v85);
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = v102;
    sub_227FCAFD4(v84, v102, &qword_27D81E3D8, &unk_22813C640);
    v88 = v113;
    v97(v74, &v113[v99], v65);
    v89 = v65;
    v90 = (*(v100 + 80) + 40) & ~*(v100 + 80);
    v91 = v74;
    v92 = (v101 + *(v67 + 80) + v90) & ~*(v67 + 80);
    v93 = v67;
    v94 = swift_allocObject();
    *(v94 + 2) = 0;
    *(v94 + 3) = 0;
    *(v94 + 4) = v86;
    sub_227FCCD78(v87, &v94[v90], &qword_27D81E3D8, &unk_22813C640);
    (*(v93 + 32))(&v94[v92], v91, v89);
    sub_228109FEC(0, 0, v112, &unk_228142F20, v94);

    sub_22812D31C(v88, &qword_27D81EB40, &qword_228142EC0);
    sub_22812D31C(v111, &qword_27D81E3D8, &unk_22813C640);

    return 1;
  }

  v66 = *(v118 + 16);
  if (v66)
  {
    v67 = v56;
    v68 = v66 - 1;
    v69 = v115;
    if (v115)
    {
      v70 = v116;

      v71 = v70;
      v72 = v110;
      v73 = sub_22812B4F0(v69 + 16, v69 + 32, v71, v68);
      v110 = v72;
    }

    else
    {
      v73 = 0;
    }

    v74 = v105;
    v76 = v96;
    sub_227FCC760(v68, v73, v96);
    (*(v67 + 8))(v76, v65);
    v77 = v95;
    sub_227FCCA18(v68, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v95);
    sub_22812D31C(v77, &qword_27D81EB40, &qword_228142EC0);
    v75 = v117;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_228106B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v48 - v12;
  v51 = a3;
  v52 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v48 - v18;
  v49 = v17;
  v20 = *(v17 + 52);
  v21 = type metadata accessor for ModelBundleIdentifier();
  v22 = *(*(v21 - 8) + 56);
  v48 = v20;
  v22(&v19[v20], 1, 1, v21);
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  *v19 = (*(v23 + 8))(v24, v23);
  *(v19 + 1) = v25;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  *(v19 + 2) = (*(v27 + 16))(v26, v27);
  *(v19 + 3) = v28;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  *(v19 + 8) = (*(v30 + 24))(v29, v30);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  *(v19 + 5) = (*(v32 + 32))(v31, v32);
  *(v19 + 6) = v33;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  *(v19 + 14) = (*(v35 + 40))(v34, v35);
  sub_227FCAFD4(a2, v53, &qword_27D81F438, &qword_228142EC8);
  v36 = v54;
  if (v54)
  {
    v37 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v37 + 16))(v36, v37);
    v22(v13, 0, 1, v21);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v53);
  }

  else
  {
    sub_22812D31C(v53, &qword_27D81F438, &qword_228142EC8);
    v22(v13, 1, 1, v21);
  }

  sub_22812D2B4(v13, &v19[v48], &qword_27D81E570, &qword_22813B1F0);
  sub_227FCAFD4(a2, v53, &qword_27D81F438, &qword_228142EC8);
  v38 = v54;
  v39 = v49;
  if (v54)
  {
    v40 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v41 = (*(v40 + 32))(v38, v40) & 1;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v53);
  }

  else
  {
    sub_22812D31C(v53, &qword_27D81F438, &qword_228142EC8);
    v41 = 2;
  }

  v19[*(v39 + 56)] = v41;
  sub_227FCAFD4(a2, v53, &qword_27D81F438, &qword_228142EC8);
  v42 = v54;
  if (v54)
  {
    v43 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    LOBYTE(v43) = (*(v43 + 40))(v42, v43);
    sub_22812D31C(a2, &qword_27D81F438, &qword_228142EC8);
    v44 = v43 & 1;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v53);
  }

  else
  {
    sub_22812D31C(a2, &qword_27D81F438, &qword_228142EC8);
    sub_22812D31C(v53, &qword_27D81F438, &qword_228142EC8);
    v44 = 2;
  }

  v19[*(v39 + 60)] = v44;
  v45 = v51;
  v46 = v52;
  sub_227FCAFD4(v19, v50, v51, v52);
  __swift_destroy_boxed_opaque_existential_1Tm_13(a1);
  return sub_22812D31C(v19, v45, v46);
}

uint64_t sub_228106F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = *(v7 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_22812A3BC(a2, a3, v7 + 32, v9, (v8 + 16));
    v13 = v12;
    v15 = v14;

    sub_227FCAFD4(a1, &v30, &qword_27D81E830, &unk_22813C630);
    if (v13)
    {
      if (v31)
      {
LABEL_4:
        sub_227FE5EA8(&v30, v29);
        sub_228128810(a2, a3);

        sub_228029260(v29, v28);
        v18 = v3[2];
        v16 = v3 + 2;
        v17 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v16 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043AB4(0, *(v17 + 16) + 1, 1);
          v17 = *v16;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_228043AB4((v20 > 1), v21 + 1, 1);
        }

        sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
        __swift_destroy_boxed_opaque_existential_1Tm_13(v29);
        v22 = *v16;
        *(v22 + 16) = v21 + 1;
        result = sub_227FE5EA8(v28, (v22 + 32 * v21 + 32));
        *v16 = v22;
        return result;
      }

LABEL_18:
      sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    }
  }

  else
  {
    if (!v9)
    {
LABEL_17:
      sub_227FCAFD4(a1, &v30, &qword_27D81E830, &unk_22813C630);
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    v11 = 0;
    v24 = (v7 + 40);
    while (1)
    {
      v25 = *(v24 - 1) == a2 && *v24 == a3;
      if (v25 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      ++v11;
      v24 += 2;
      if (v9 == v11)
      {
        goto LABEL_17;
      }
    }

    sub_227FCAFD4(a1, &v30, &qword_27D81E830, &unk_22813C630);
    v15 = 0;
  }

  if (v31)
  {
    sub_227FE5EA8(&v30, v29);
    v26 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_227FEA628(v26);
    }

    result = sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(v26 + 2))
    {
      v27 = &v26[32 * v11];
      __swift_destroy_boxed_opaque_existential_1Tm_13(v27 + 4);
      result = sub_227FE5EA8(v29, v27 + 2);
      v3[2] = v26;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_228128BF8(v11, v15);

    sub_228128D74(v11, v29);
    sub_22812D31C(a1, &qword_27D81E830, &unk_22813C630);
    return __swift_destroy_boxed_opaque_existential_1Tm_13(v29);
  }

  return result;
}

uint64_t sub_2281072A8(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v68 = *(v66 - 8);
  v4 = *(v68 + 64);
  v6 = MEMORY[0x28223BE20](v66, v5);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v64 = &v58 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v62 = &v58 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v63 = &v58 - v15;
  v16 = sub_228136FCC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F460, &qword_228142F68);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v58 - v25;
  v28 = *v2;
  v27 = v2[1];
  v29 = v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v27 + 16);
  v69 = a2;
  if (v28)
  {

    v31 = sub_22812A508(a2, v29, v30, (v28 + 16), v28 + 32);
    v33 = v32;
    v35 = v34;

    v36 = &v26[*(v22 + 48)];
    v37 = v67;
    sub_227FCAFD4(v67, v36, &qword_27D81F458, &qword_228142F50);
    if (v33)
    {
      v38 = v69;
      goto LABEL_9;
    }
  }

  else
  {
    v58 = v26;
    v59 = v22;
    v60 = v2;
    v61 = v17;
    if (!v30)
    {
LABEL_8:
      v36 = &v58[*(v59 + 48)];
      v37 = v67;
      sub_227FCAFD4(v67, v36, &qword_27D81F458, &qword_228142F50);
      v38 = v69;
      v2 = v60;
      v17 = v61;
LABEL_9:
      if ((*(v68 + 48))(v36, 1, v66) == 1)
      {
        sub_22812D31C(v37, &qword_27D81F458, &qword_228142F50);
        return (*(v17 + 8))(v38, v16);
      }

      else
      {
        v44 = v37;
        v45 = v36;
        v46 = v64;
        sub_227FCCD78(v45, v64, &qword_27D81EBA0, &qword_22813DAF0);
        sub_22812899C(v38);
        sub_227FCAFD4(v46, v65, &qword_27D81EBA0, &qword_22813DAF0);
        v49 = v2[2];
        v47 = v2 + 2;
        v48 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v47 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043B58(0, *(v48 + 16) + 1, 1);
          v48 = *v47;
        }

        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_228043B58(v51 > 1, v52 + 1, 1);
        }

        sub_22812D31C(v44, &qword_27D81F458, &qword_228142F50);
        sub_22812D31C(v64, &qword_27D81EBA0, &qword_22813DAF0);
        v53 = *v47;
        *(v53 + 16) = v52 + 1;
        sub_227FCCD78(v65, v53 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, &qword_27D81EBA0, &qword_22813DAF0);
        *v47 = v53;
        return (*(v17 + 8))(v38, v16);
      }
    }

    v31 = 0;
    v39 = *(v61 + 16);
    v40 = *(v61 + 72);
    v41 = (v61 + 8);
    while (1)
    {
      v39(v21, v29, v16);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
      v42 = sub_22813926C();
      (*v41)(v21, v16);
      if (v42)
      {
        break;
      }

      ++v31;
      v29 += v40;
      if (v30 == v31)
      {
        goto LABEL_8;
      }
    }

    v36 = &v58[*(v59 + 48)];
    v37 = v67;
    sub_227FCAFD4(v67, v36, &qword_27D81F458, &qword_228142F50);
    v35 = 0;
    v2 = v60;
    v17 = v61;
  }

  if ((*(v68 + 48))(v36, 1, v66) == 1)
  {
    sub_227FCC760(v31, v35, v21);
    v54 = *(v17 + 8);
    v54(v21, v16);
    v55 = v62;
    sub_227FCCA18(v31, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v62);
    sub_22812D31C(v37, &qword_27D81F458, &qword_228142F50);
    sub_22812D31C(v55, &qword_27D81EBA0, &qword_22813DAF0);
    return (v54)(v69, v16);
  }

  v56 = v63;
  sub_227FCCD78(v36, v63, &qword_27D81EBA0, &qword_22813DAF0);
  v57 = v2[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_227FCCD64(v57);
  }

  sub_22812D31C(v37, &qword_27D81F458, &qword_228142F50);
  result = (*(v17 + 8))(v69, v16);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v31 < v57[2])
  {
    result = sub_22812D2B4(v56, v57 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v31, &qword_27D81EBA0, &qword_22813DAF0);
    v2[2] = v57;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_228107968(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v68 = *(v66 - 8);
  v4 = *(v68 + 64);
  v6 = MEMORY[0x28223BE20](v66, v5);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v64 = &v58 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v62 = &v58 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v63 = &v58 - v15;
  v16 = sub_228136FCC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F448, &qword_228142F30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v58 - v25;
  v28 = *v2;
  v27 = v2[1];
  v29 = v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v27 + 16);
  v69 = a2;
  if (v28)
  {

    v31 = sub_22812A508(a2, v29, v30, (v28 + 16), v28 + 32);
    v33 = v32;
    v35 = v34;

    v36 = &v26[*(v22 + 48)];
    v37 = v67;
    sub_227FCAFD4(v67, v36, &qword_27D81F440, &qword_228142F10);
    if (v33)
    {
      v38 = v69;
      goto LABEL_9;
    }
  }

  else
  {
    v58 = v26;
    v59 = v22;
    v60 = v2;
    v61 = v17;
    if (!v30)
    {
LABEL_8:
      v36 = &v58[*(v59 + 48)];
      v37 = v67;
      sub_227FCAFD4(v67, v36, &qword_27D81F440, &qword_228142F10);
      v38 = v69;
      v2 = v60;
      v17 = v61;
LABEL_9:
      if ((*(v68 + 48))(v36, 1, v66) == 1)
      {
        sub_22812D31C(v37, &qword_27D81F440, &qword_228142F10);
        return (*(v17 + 8))(v38, v16);
      }

      else
      {
        v44 = v37;
        v45 = v36;
        v46 = v64;
        sub_227FCCD78(v45, v64, &qword_27D81EB40, &qword_228142EC0);
        sub_22812899C(v38);
        sub_227FCAFD4(v46, v65, &qword_27D81EB40, &qword_228142EC0);
        v49 = v2[2];
        v47 = v2 + 2;
        v48 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v47 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043D20(0, *(v48 + 16) + 1, 1);
          v48 = *v47;
        }

        v52 = *(v48 + 16);
        v51 = *(v48 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_228043D20(v51 > 1, v52 + 1, 1);
        }

        sub_22812D31C(v44, &qword_27D81F440, &qword_228142F10);
        sub_22812D31C(v64, &qword_27D81EB40, &qword_228142EC0);
        v53 = *v47;
        *(v53 + 16) = v52 + 1;
        sub_227FCCD78(v65, v53 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, &qword_27D81EB40, &qword_228142EC0);
        *v47 = v53;
        return (*(v17 + 8))(v38, v16);
      }
    }

    v31 = 0;
    v39 = *(v61 + 16);
    v40 = *(v61 + 72);
    v41 = (v61 + 8);
    while (1)
    {
      v39(v21, v29, v16);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
      v42 = sub_22813926C();
      (*v41)(v21, v16);
      if (v42)
      {
        break;
      }

      ++v31;
      v29 += v40;
      if (v30 == v31)
      {
        goto LABEL_8;
      }
    }

    v36 = &v58[*(v59 + 48)];
    v37 = v67;
    sub_227FCAFD4(v67, v36, &qword_27D81F440, &qword_228142F10);
    v35 = 0;
    v2 = v60;
    v17 = v61;
  }

  if ((*(v68 + 48))(v36, 1, v66) == 1)
  {
    sub_227FCC760(v31, v35, v21);
    v54 = *(v17 + 8);
    v54(v21, v16);
    v55 = v62;
    sub_227FCCA18(v31, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v62);
    sub_22812D31C(v37, &qword_27D81F440, &qword_228142F10);
    sub_22812D31C(v55, &qword_27D81EB40, &qword_228142EC0);
    return (v54)(v69, v16);
  }

  v56 = v63;
  sub_227FCCD78(v36, v63, &qword_27D81EB40, &qword_228142EC0);
  v57 = v2[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = sub_227FEA650(v57);
  }

  sub_22812D31C(v37, &qword_27D81F440, &qword_228142F10);
  result = (*(v17 + 8))(v69, v16);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v31 < v57[2])
  {
    result = sub_22812D2B4(v56, v57 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v31, &qword_27D81EB40, &qword_228142EC0);
    v2[2] = v57;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_228108028(uint64_t *a1, void *a2)
{
  v73 = sub_228136FCC();
  v72 = *(v73 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v73, v6);
  v71 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v74 = &v67[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v67[-v15];
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  RequestInfo.sessionInfo.getter(v17, v18, v88);
  v86 = &type metadata for PriorityModelSession.Configuration;
  v87 = &off_283B5F1E0;
  sub_228106B08(v88, v85, &qword_27D81E4A0, &unk_22813AB10, v16);
  v75 = a1;
  v19 = *a1;
  if (!*(*a1 + 16) || (v20 = sub_227FC7F80(v16), (v21 & 1) == 0))
  {
    sub_22812D31C(v16, &qword_27D81E4A0, &unk_22813AB10);
    return 0;
  }

  v22 = (*(v19 + 56) + 24 * v20);
  v24 = *v22;
  v23 = v22[1];
  v25 = v22[2];
  v83 = *v22;
  v84 = v23;
  v91 = v25;
  sub_22812CAE4(a2, v88);
  sub_22812CAE4(a2, v85);
  sub_22812CAE4(a2, v80);
  sub_22812CAE4(a2, v77);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v26 = sub_22813880C();
  v27 = sub_2281396BC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76 = v69;
    *v28 = 136446978;
    v70 = v2;
    v30 = v89;
    v29 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v31 = *(v29 + 16);
    v68 = v27;
    v32 = v31(v30, v29);
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v88);
    v35 = sub_227FCC340(v32, v34, &v76);

    *(v28 + 4) = v35;
    *(v28 + 12) = 2082;
    v37 = v86;
    v36 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v38 = (*(v36[1] + 1))(v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v85);
    v41 = sub_227FCC340(v38, v40, &v76);

    *(v28 + 14) = v41;
    *(v28 + 22) = 2082;
    v43 = v81;
    v42 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v44 = (*(*(v42 + 8) + 16))(v43);
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm_13(v80);
    v47 = sub_227FCC340(v44, v46, &v76);

    *(v28 + 24) = v47;
    *(v28 + 32) = 1026;
    v49 = v78;
    v48 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    LODWORD(v48) = (*(*(v48 + 8) + 24))(v49);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v77);
    *(v28 + 34) = v48;
    _os_log_impl(&dword_227FC3000, v26, v68, "Returning session from cache for [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v28, 0x26u);
    v50 = v69;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v50, -1, -1);
    MEMORY[0x22AAB28A0](v28, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v77);

    __swift_destroy_boxed_opaque_existential_1Tm_13(v88);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v85);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v80);
  }

  v52 = *(v25 + 16);

  if (!v52)
  {
    v54 = sub_228105610(v16);
    sub_227FCD584(v54, v55);
    sub_22812D31C(v16, &qword_27D81E4A0, &unk_22813AB10);

    return 0;
  }

  if (*(v25 + 16))
  {
    if (v24)
    {

      v53 = sub_22812B4F0(v24 + 16, v24 + 32, v23, 0);
    }

    else
    {
      v53 = 0;
    }

    v56 = v71;
    sub_227FCC760(0, v53, v71);
    (*(v72 + 8))(v56, v73);
    v57 = v74;
    sub_227FCCA18(0, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v74);
    v58 = v91;
    if (*(v91 + 16))
    {
      v59 = v83;
      v60 = v84;

      v61 = v75;
      v62 = *v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = *v61;
      sub_22801BA08(v59, v60, v58, v16, isUniquelyReferenced_nonNull_native);
      *v61 = v88[0];
    }

    else
    {
      v64 = sub_228105610(v16);
      sub_227FCD584(v64, v65);
    }

    sub_22812D31C(v16, &qword_27D81E4A0, &unk_22813AB10);

    v66 = *v57;

    sub_22812D31C(v57, &qword_27D81EBA0, &qword_22813DAF0);
    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22810876C(uint64_t *a1, void *a2, uint64_t a3)
{
  v74 = sub_228136FCC();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v74, v7);
  v72 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v75 = &v69[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v69[-v16];
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  RequestInfo.sessionInfo.getter(v18, v19, v89);
  v87 = type metadata accessor for SummarizationSession.Configuration();
  v88 = &off_283B5FB28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  sub_22812ABD8(a3, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
  sub_228106B08(v89, v86, &qword_27D81E3D8, &unk_22813C640, v17);
  v76 = a1;
  v21 = *a1;
  if (*(*a1 + 16) && (v22 = sub_22808D108(v17), (v23 & 1) != 0))
  {
    v24 = (*(v21 + 56) + 24 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    v84 = *v24;
    v85 = v25;
    v92 = v27;
    sub_22812CAE4(a2, v89);
    sub_22812CAE4(a2, v86);
    sub_22812CAE4(a2, v81);
    sub_22812CAE4(a2, v78);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v28 = sub_22813880C();
    v29 = sub_2281396BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = v71;
      *v30 = 136446978;
      v31 = v90;
      v32 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      v33 = *(v32 + 16);
      v70 = v29;
      v34 = v33(v31, v32);
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v89);
      v37 = sub_227FCC340(v34, v36, &v77);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2082;
      v39 = v87;
      v38 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      v40 = (*(v38[1] + 1))(v39);
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v86);
      v43 = sub_227FCC340(v40, v42, &v77);

      *(v30 + 14) = v43;
      *(v30 + 22) = 2082;
      v45 = v82;
      v44 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v46 = (*(*(v44 + 8) + 16))(v45);
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm_13(v81);
      v49 = sub_227FCC340(v46, v48, &v77);

      *(v30 + 24) = v49;
      *(v30 + 32) = 1026;
      v51 = v79;
      v50 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      LODWORD(v50) = (*(*(v50 + 8) + 24))(v51);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v78);
      *(v30 + 34) = v50;
      _os_log_impl(&dword_227FC3000, v28, v70, "Returning session from cache for [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v30, 0x26u);
      v52 = v71;
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v52, -1, -1);
      MEMORY[0x22AAB28A0](v30, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm_13(v78);

      __swift_destroy_boxed_opaque_existential_1Tm_13(v89);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v86);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v81);
    }

    v54 = *(v27 + 16);

    if (v54)
    {
      if (*(v27 + 16))
      {
        if (v26)
        {

          v55 = sub_22812B4F0(v26 + 16, v26 + 32, v25, 0);
        }

        else
        {
          v55 = 0;
        }

        v58 = v72;
        sub_227FCC760(0, v55, v72);
        (*(v73 + 8))(v58, v74);
        v59 = v75;
        sub_227FCCA18(0, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v75);
        v60 = v92;
        if (*(v92 + 16))
        {
          v61 = v84;
          v62 = v85;

          v63 = v76;
          v64 = *v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89[0] = *v63;
          sub_22801C09C(v61, v62, v60, v17, isUniquelyReferenced_nonNull_native);
          *v63 = v89[0];
        }

        else
        {
          v66 = sub_228105700(v17);
          sub_227FCD584(v66, v67);
        }

        sub_22812D31C(v17, &qword_27D81E3D8, &unk_22813C640);

        v68 = *v59;

        sub_22812D31C(v59, &qword_27D81EB40, &qword_228142EC0);
        return v68;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v56 = sub_228105700(v17);
      sub_227FCD584(v56, v57);
      sub_22812D31C(v17, &qword_27D81E3D8, &unk_22813C640);

      return 0;
    }
  }

  else
  {
    sub_22812D31C(v17, &qword_27D81E3D8, &unk_22813C640);
    return 0;
  }

  return result;
}

uint64_t sub_228108EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_2281398CC();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228108FA0, 0, 0);
}

uint64_t sub_228108FA0()
{
  v20 = v0;
  v1 = v0[8];
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v2 = sub_22813800C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[14] = sub_22813801C();
  v5 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v6 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v6 = &qword_2813C76F8;
  }

  v7 = *(*v6 + 2000);
  v8 = *(*v6 + 2008);
  v9 = *(*v6 + 2016);
  v10 = *(*v6 + 2024);
  v11 = *(*v6 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v9(&v19, v11);
  }

  else
  {
  }

  v12 = v0[13];
  v13 = sub_228139B4C();
  v15 = v14;
  sub_228139A1C();
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_227FC77B8;
  v17 = v0[13];

  return sub_228128514(v13, v15, 0, 0, 1);
}

uint64_t sub_2281092E8()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_228109354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_2281398CC();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228109418, 0, 0);
}

uint64_t sub_228109418()
{
  v20 = v0;
  v1 = v0[8];
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v2 = sub_22813800C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[14] = sub_22813801C();
  v5 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v6 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v6 = &qword_2813C76F8;
  }

  v7 = *(*v6 + 2000);
  v8 = *(*v6 + 2008);
  v9 = *(*v6 + 2016);
  v10 = *(*v6 + 2024);
  v11 = *(*v6 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v9(&v19, v11);
  }

  else
  {
  }

  v12 = v0[13];
  v13 = sub_228139B4C();
  v15 = v14;
  sub_228139A1C();
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_228109760;
  v17 = v0[13];

  return sub_228128514(v13, v15, 0, 0, 1);
}

uint64_t sub_228109760()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_22812D37C;
  }

  else
  {
    v5 = sub_2281098C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2281098C8()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[16];
    v6 = v0[9];
    v5 = v0[10];
    os_unfair_lock_lock(Strong + 4);
    sub_228109A7C(&v3[6], v6, v5);
    os_unfair_lock_unlock(v3 + 4);
    if (v4)
    {
      return;
    }
  }

  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  v9();
}

uint64_t sub_2281099B8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    os_unfair_lock_lock(Strong + 4);
    v4 = *&v3[6]._os_unfair_lock_opaque;

    *&v3[6]._os_unfair_lock_opaque = MEMORY[0x277D84F98];
    os_unfair_lock_unlock(v3 + 4);
  }

  v5 = *MEMORY[0x277D41D50];
  v6 = sub_228137FFC();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_228109A7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v59 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F440, &qword_228142F10);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v65 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v59 - v26;
  v28 = *a1;
  if (*(*a1 + 16))
  {
    v29 = sub_22808D108(a2);
    if (v30)
    {
      v62 = a1;
      v63 = a2;
      v64 = v3;
      v31 = (*(v28 + 56) + 24 * v29);
      v32 = v31[1];
      v34 = v31[2];
      v66 = *v31;
      v33 = v66;
      v67 = v32;
      v68 = v34;

      v61 = a3;
      sub_227FCACB8(a3, v33, v32, v34, &qword_27D81EB40, &qword_228142EC0, v27);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB40, &qword_228142EC0);
      v36 = (*(*(v35 - 8) + 48))(v27, 1, v35);
      sub_22812D31C(v27, &qword_27D81F440, &qword_228142F10);
      if (v36 != 1)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v37 = sub_22813882C();
        __swift_project_value_buffer(v37, qword_2813C8A20);
        v38 = v63;
        sub_227FCAFD4(v63, v19, &qword_27D81E3D8, &unk_22813C640);
        sub_227FCAFD4(v38, v16, &qword_27D81E3D8, &unk_22813C640);
        sub_227FCAFD4(v38, v12, &qword_27D81E3D8, &unk_22813C640);
        v39 = sub_22813880C();
        v40 = sub_2281396BC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v69 = v60;
          *v41 = 136446722;
          v42 = *v19;
          v43 = v19[1];

          sub_22812D31C(v19, &qword_27D81E3D8, &unk_22813C640);
          v44 = sub_227FCC340(v42, v43, &v69);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2082;
          v45 = *(v16 + 2);
          v46 = *(v16 + 3);

          sub_22812D31C(v16, &qword_27D81E3D8, &unk_22813C640);
          v47 = sub_227FCC340(v45, v46, &v69);

          *(v41 + 14) = v47;
          *(v41 + 22) = 1026;
          LODWORD(v47) = *(v12 + 8);
          v38 = v63;
          sub_22812D31C(v12, &qword_27D81E3D8, &unk_22813C640);
          *(v41 + 24) = v47;
          _os_log_impl(&dword_227FC3000, v39, v40, "Evicted session from cache for [useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v41, 0x1Cu);
          v48 = v60;
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v48, -1, -1);
          MEMORY[0x22AAB28A0](v41, -1, -1);
        }

        else
        {
          sub_22812D31C(v12, &qword_27D81E3D8, &unk_22813C640);

          sub_22812D31C(v16, &qword_27D81E3D8, &unk_22813C640);
          sub_22812D31C(v19, &qword_27D81E3D8, &unk_22813C640);
        }

        v49 = v65;
        sub_227FCC4B4(v61, sub_227FEA650, &qword_27D81EB40, &qword_228142EC0, v65);
        sub_22812D31C(v49, &qword_27D81F440, &qword_228142F10);
        v50 = v68;
        v51 = v62;
        if (*(v68 + 16))
        {
          v53 = v66;
          v52 = v67;

          v54 = *v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = *v51;
          sub_22801C09C(v53, v52, v50, v38, isUniquelyReferenced_nonNull_native);
          *v51 = v69;
        }

        else
        {
          v56 = sub_228105700(v38);
          sub_227FCD584(v56, v57);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_228109FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_227FCAFD4(a3, v25 - v11, &qword_27D81E788, &unk_22813BC90);
  v13 = sub_22813959C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22812D31C(v12, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22813957C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22813931C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_22812D31C(a3, &qword_27D81E788, &unk_22813BC90);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22812D31C(a3, &qword_27D81E788, &unk_22813BC90);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22810A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[7] = v4;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_22810A2C0, 0, 0);
}

uint64_t sub_22810A2C0()
{
  v1 = *(v0 + 72);
  v2 = v1 & 1;
  if (v1)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
    v7 = v4[3];
    v6 = v4[4];
    v8 = __swift_project_boxed_opaque_existential_1(v4, v7);
    sub_2280DFFEC(v3 + v5, v8, v7, v6);
    v1 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v17 = *(v0 + 80);
  v11 = sub_2280D5C74();
  *(v0 + 104) = v11;
  v12 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  sub_22812CAE4(v10, v0 + 16);
  v13 = swift_allocObject();
  *(v0 + 112) = v13;
  sub_227FFA05C((v0 + 16), v13 + 16);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *(v14 + 16) = v0 + 56;
  *(v14 + 24) = v10;
  *(v14 + 32) = v17;
  *(v14 + 48) = v11;
  *(v14 + 56) = v2;
  *(v14 + 57) = (v1 & 2) != 0;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_22810A498;

  return sub_22810B06C(v9 + v12, sub_22812D3B4, v13, &unk_228142EE8, v14);
}

uint64_t sub_22810A498(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 112);
  v7 = *v2;
  *(*v2 + 136) = v1;

  v8 = *(v4 + 120);
  if (v1)
  {

    v9 = sub_22810A660;
  }

  else
  {
    *(v4 + 144) = a1 & 1;

    v9 = sub_22810A5F8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22810A5F8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2(v3);
}

uint64_t sub_22810A660()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[17];

  return v2(0);
}

uint64_t sub_22810A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810A770, 0, 0);
}

uint64_t sub_22810A770()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;

  sub_2281324C4(v4, v6);
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22810A8BC;
  v9 = v0[10];

  return v11(v0 + 5);
}

uint64_t sub_22810A8BC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22810AA74;
  }

  else
  {
    v3 = sub_22810A9D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22810A9D0()
{
  v1 = v0[11];
  sub_2281324D4(v1, v0[6], v0[12]);
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = v0[5];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22810AA74()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v4;
  swift_beginAccess();
  v8 = *(v2 + 24);
  *(v2 + 16) = sub_22812D470;
  *(v2 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v3, v6, v2);
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v10 = v0[1];
  v11 = v0[14];

  return v10();
}

uint64_t sub_22810AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810AC34, 0, 0);
}

uint64_t sub_22810AC34()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;

  sub_2281324C4(v4, v6);
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_22810AD80;
  v9 = v0[11];

  return v11(v0 + 5);
}

uint64_t sub_22810AD80()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_22810AF44;
  }

  else
  {
    v3 = sub_22810AE94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22810AE94()
{
  v1 = v0[12];
  sub_2281324D4(v1, v0[7], v0[13]);
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_22810AF44()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v4;
  swift_beginAccess();
  v8 = *(v2 + 24);
  *(v2 + 16) = sub_22812D474;
  *(v2 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v3, v6, v2);
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v10 = v0[1];
  v11 = v0[15];

  return v10();
}

uint64_t sub_22810B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810B104, 0, 0);
}

uint64_t sub_22810B104()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;

  sub_2281324C4(v4, v6);
  v11 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_22810B250;
  v9 = v0[9];

  return v11(v0 + 14);
}

uint64_t sub_22810B250()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22810B408;
  }

  else
  {
    v3 = sub_22810B364;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22810B364()
{
  v1 = *(v0 + 80);
  sub_2281324D4(v1, *(v0 + 40), *(v0 + 88));
  sub_22812AB78(v1, type metadata accessor for SignpostToken);

  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22810B408()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v4;
  swift_beginAccess();
  v8 = *(v2 + 24);
  *(v2 + 16) = sub_22812D468;
  *(v2 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v3, v6, v2);
  sub_22812AB78(v3, type metadata accessor for SignpostToken);

  v10 = v0[1];
  v11 = v0[13];

  return v10(0);
}

uint64_t sub_22810B564(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *, uint64_t, uint64_t))
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return a3(a1, v6, v4, v5);
}

uint64_t sub_22810B5D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);

  return sub_2280E0610(a1, v7, a3, v5, v6);
}

uint64_t sub_22810B630(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v46 - v7;
  v9 = sub_228138CCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46 - v21;

  sub_22810D23C(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v22, v8, v9);
    v29 = *(v10 + 16);
    v29(v19, v22, v9);
    v30 = (*(v10 + 88))(v19, v9);
    if (v30 == *MEMORY[0x277D4B0D8])
    {
LABEL_8:
      v28 = 0;
LABEL_11:
      (*(v10 + 8))(v22, v9);
      return v28;
    }

    if (v30 != *MEMORY[0x277D4B110])
    {
      if (v30 == *MEMORY[0x277D4B0E0] || v30 == *MEMORY[0x277D4B0F0] || v30 == *MEMORY[0x277D4B0F8])
      {
        goto LABEL_8;
      }

      if (v30 != *MEMORY[0x277D4B120])
      {
        v28 = 0;
        if (v30 == *MEMORY[0x277D4B100])
        {
          goto LABEL_11;
        }

        if (v30 == *MEMORY[0x277D4B118])
        {
          goto LABEL_11;
        }

        v28 = 1;
        if (v30 == *MEMORY[0x277D4B0C0] || v30 == *MEMORY[0x277D4B0B8])
        {
          goto LABEL_11;
        }

        if (v30 != *MEMORY[0x277D4B0D0])
        {
          if (v30 == *MEMORY[0x277D4B108] || v30 == *MEMORY[0x277D4B0E8] || v30 == *MEMORY[0x277D4B128] || v30 == *MEMORY[0x277D4B0B0] || v30 == *MEMORY[0x277D4B0C8])
          {
            goto LABEL_11;
          }

          if (qword_2813C49E0[0] != -1)
          {
            swift_once();
          }

          v34 = sub_22813882C();
          __swift_project_value_buffer(v34, qword_2813C8A20);
          v29(v15, v22, v9);
          v35 = sub_22813880C();
          v36 = sub_2281396DC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v46 = v37;
            v48 = swift_slowAlloc();
            v49 = v48;
            *v37 = 136446210;
            v47 = v36;
            v38 = sub_228138CAC();
            v40 = v39;
            v41 = *(v10 + 8);
            v41(v15, v9);
            v42 = sub_227FCC340(v38, v40, &v49);

            v43 = v46;
            *(v46 + 1) = v42;
            v44 = v43;
            _os_log_impl(&dword_227FC3000, v35, v47, "Unexpected use case identifier in isUserInitiatedUseCase: %{public}s", v43, 0xCu);
            v45 = v48;
            __swift_destroy_boxed_opaque_existential_1Tm_13(v48);
            MEMORY[0x22AAB28A0](v45, -1, -1);
            MEMORY[0x22AAB28A0](v44, -1, -1);
          }

          else
          {

            v41 = *(v10 + 8);
            v41(v15, v9);
          }

          v41(v19, v9);
        }

        goto LABEL_8;
      }
    }

    v28 = 1;
    goto LABEL_11;
  }

  sub_22812D31C(v8, qword_27D81F1D8, &unk_228142EA0);
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v23 = sub_22813882C();
  __swift_project_value_buffer(v23, qword_2813C8A20);

  v24 = sub_22813880C();
  v25 = sub_2281396DC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_227FCC340(a1, a2, &v49);
    _os_log_impl(&dword_227FC3000, v24, v25, "Could not convert requestInfo.useCaseIdentifer to UseCase: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    MEMORY[0x22AAB28A0](v27, -1, -1);
    MEMORY[0x22AAB28A0](v26, -1, -1);
  }

  return 0;
}

uint64_t sub_22810BC50(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v46 - v7;
  v9 = sub_228138CCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v46 - v21;

  sub_22810D23C(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v22, v8, v9);
    v29 = *(v10 + 16);
    v29(v19, v22, v9);
    v30 = (*(v10 + 88))(v19, v9);
    if (v30 == *MEMORY[0x277D4B0D8])
    {
LABEL_8:
      v28 = 1;
LABEL_11:
      (*(v10 + 8))(v22, v9);
      return v28;
    }

    if (v30 != *MEMORY[0x277D4B110])
    {
      if (v30 == *MEMORY[0x277D4B0E0] || v30 == *MEMORY[0x277D4B0F0] || v30 == *MEMORY[0x277D4B0F8])
      {
        goto LABEL_8;
      }

      if (v30 != *MEMORY[0x277D4B120])
      {
        v28 = 1;
        if (v30 == *MEMORY[0x277D4B100])
        {
          goto LABEL_11;
        }

        if (v30 == *MEMORY[0x277D4B118])
        {
          goto LABEL_11;
        }

        v28 = 0;
        if (v30 == *MEMORY[0x277D4B0C0] || v30 == *MEMORY[0x277D4B0B8])
        {
          goto LABEL_11;
        }

        if (v30 == *MEMORY[0x277D4B0D0])
        {
          goto LABEL_8;
        }

        v28 = 0;
        if (v30 == *MEMORY[0x277D4B108] || v30 == *MEMORY[0x277D4B0E8] || v30 == *MEMORY[0x277D4B128] || v30 == *MEMORY[0x277D4B0B0] || v30 == *MEMORY[0x277D4B0C8])
        {
          goto LABEL_11;
        }

        if (qword_2813C49E0 != -1)
        {
          swift_once();
        }

        v34 = sub_22813882C();
        __swift_project_value_buffer(v34, qword_2813C8A20);
        v29(v15, v22, v9);
        v35 = sub_22813880C();
        v36 = sub_2281396DC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v46 = v37;
          v48 = swift_slowAlloc();
          v49 = v48;
          *v37 = 136446210;
          v47 = v36;
          v38 = sub_228138CAC();
          v40 = v39;
          v41 = *(v10 + 8);
          v41(v15, v9);
          v42 = sub_227FCC340(v38, v40, &v49);

          v43 = v46;
          *(v46 + 1) = v42;
          v44 = v43;
          _os_log_impl(&dword_227FC3000, v35, v47, "Unexpected use case identifier in isUserInitiatedUseCase: %{public}s", v43, 0xCu);
          v45 = v48;
          __swift_destroy_boxed_opaque_existential_1Tm_13(v48);
          MEMORY[0x22AAB28A0](v45, -1, -1);
          MEMORY[0x22AAB28A0](v44, -1, -1);
        }

        else
        {

          v41 = *(v10 + 8);
          v41(v15, v9);
        }

        v41(v19, v9);
      }
    }

    v28 = 0;
    goto LABEL_11;
  }

  sub_22812D31C(v8, qword_27D81F1D8, &unk_228142EA0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v23 = sub_22813882C();
  __swift_project_value_buffer(v23, qword_2813C8A20);

  v24 = sub_22813880C();
  v25 = sub_2281396DC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_227FCC340(a1, a2, &v49);
    _os_log_impl(&dword_227FC3000, v24, v25, "Could not convert requestInfo.useCaseIdentifer to UseCase: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v27);
    MEMORY[0x22AAB28A0](v27, -1, -1);
    MEMORY[0x22AAB28A0](v26, -1, -1);
  }

  return 0;
}

uint64_t sub_22810C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 186) = a7;
  *(v7 + 185) = a6;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 88) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v9 = sub_2281386FC();
  *(v7 + 136) = v9;
  v10 = *(v9 - 8);
  *(v7 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810C388, 0, 0);
}

uint64_t sub_22810C388()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(*(v4 + 8) + 16))(v3);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v10 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v10);
  *(inited + 32) = (*(*(v9 + 8) + 8))(v10);
  *(inited + 40) = v11;
  v12 = *(v2 + 16);
  sub_228104E70(v5, v7, inited);
  v13 = v0[13];

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_22810C8C8;
  v17 = v0[14];
  v16 = v0[15];

  return (v19)(v0 + 23, v16);
}

uint64_t sub_22810C8C8()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22810CDE0;
  }

  else
  {
    v3 = sub_22810C9DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22810C9DC()
{
  v1 = *(v0 + 176);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 185) & 1) != 0 || (sub_22810D154(v1))
    {
      v4 = *(v0 + 88);
      v3 = *(v0 + 96);
      v5 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
      v6 = v3[3];
      v7 = v3[4];
      v8 = __swift_project_boxed_opaque_existential_1(v3, v6);
      sub_2280E0610(v4 + v5, v8, v2, v6, v7);
    }

    if (*(v0 + 186) == 1)
    {
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      v11 = v2;
      sub_2280D4DD0(v10, v9, v2);
    }

    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    *(v0 + 80) = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v16 = swift_dynamicCast();
    v17 = *(v13 + 56);
    if (v16)
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = *(v0 + 136);
      v21 = *(v0 + 144);
      v22 = *(v0 + 128);
      v17(v22, 0, 1, v20);
      (*(v21 + 32))(v19, v22, v20);
      v23 = *(v21 + 16);
      v23(v18, v19, v20);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v24 = swift_allocError();
      v23(v25, v18, v20);
      v26 = swift_allocObject();
      *(v26 + 16) = 7;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      v27 = sub_227FF96D4(v24, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D420);

      v28 = *(v21 + 8);
      v28(v18, v20);
      *(v0 + 64) = 7;
      *(v0 + 72) = v27;
      sub_227FDB3CC();
      if (sub_22813999C())
      {
      }

      else
      {
        swift_allocError();
        *v42 = 7;
        *(v42 + 8) = v27;
      }

      v43 = *(v0 + 160);
      v44 = *(v0 + 136);
      swift_willThrow();

      v28(v43, v44);
    }

    else
    {
      v41 = *(v0 + 128);
      v17(v41, 1, 1, *(v0 + 136));
      sub_22812D31C(v41, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v47 = *(v0 + 128);

    v39 = *(v0 + 8);
    v40 = 0;
  }

  else
  {
    if (*(v0 + 185))
    {
      v30 = *(v0 + 88);
      v29 = *(v0 + 96);
      v31 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
      v33 = v29[3];
      v32 = v29[4];
      v34 = __swift_project_boxed_opaque_existential_1(v29, v33);
      sub_2280E0308(v30 + v31, v34, v33, v32);
    }

    if (*(v0 + 186) == 1)
    {
      sub_2280D4DD0(*(v0 + 96), *(v0 + 120), 0);
    }

    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v37 = *(v0 + 128);
    v38 = *(v0 + 184);

    v39 = *(v0 + 8);
    v40 = v38;
  }

  return v39(v40);
}

uint64_t sub_22810CDE0()
{
  v1 = *(v0 + 176);
  if (*(v0 + 185) & 1) != 0 || (sub_22810D154(*(v0 + 176)))
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
    v5 = v2[3];
    v6 = v2[4];
    v7 = __swift_project_boxed_opaque_existential_1(v2, v5);
    sub_2280E0610(v3 + v4, v7, v1, v5, v6);
  }

  if (*(v0 + 186) == 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = v1;
    sub_2280D4DD0(v9, v8, v1);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  *(v0 + 80) = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 128);
    v16(v21, 0, 1, v19);
    (*(v20 + 32))(v18, v21, v19);
    v22 = *(v20 + 16);
    v22(v17, v18, v19);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v23 = swift_allocError();
    v22(v24, v17, v19);
    v25 = swift_allocObject();
    *(v25 + 16) = 7;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    v26 = sub_227FF96D4(v23, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D420);

    v27 = *(v20 + 8);
    v27(v17, v19);
    *(v0 + 64) = 7;
    *(v0 + 72) = v26;
    sub_227FDB3CC();
    if (sub_22813999C())
    {
    }

    else
    {
      swift_allocError();
      *v29 = 7;
      *(v29 + 8) = v26;
    }

    v30 = *(v0 + 160);
    v31 = *(v0 + 136);
    swift_willThrow();

    v27(v30, v31);
  }

  else
  {
    v28 = *(v0 + 128);
    v16(v28, 1, 1, *(v0 + 136));
    sub_22812D31C(v28, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v33 = *(v0 + 152);
  v32 = *(v0 + 160);
  v34 = *(v0 + 128);

  v35 = *(v0 + 8);

  return v35(0);
}

uint64_t sub_22810D154(void *a1)
{
  v6 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast() && (, v5 == 15) || (v6, v6 = a1, v3 = a1, swift_dynamicCast()) && (, v5 == 4))
  {

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_22810D23C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  if (sub_22813941C())
  {
    if (sub_22813941C())
    {
      v11 = sub_22813936C();
      v12 = sub_22812BBD0(v11, a1, a2);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      MEMORY[0x22AAB18D0](v12, v14, v16, v18);
    }

    sub_228138CBC();
    v19 = sub_228138CCC();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v10, 1, v19))
    {
      (*(v20 + 32))(a3, v10, v19);
      return (*(v20 + 56))(a3, 0, 1, v19);
    }

    sub_22812D31C(v10, qword_27D81F1D8, &unk_228142EA0);
  }

  else
  {
  }

  v21 = sub_228138CCC();
  return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22810D4B0(uint64_t *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_228136FCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v15 = a1[1];
  v17 = *(a2 + 1);

  *a2 = v16;
  *(a2 + 1) = v15;
  sub_228136F9C();
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_228136FBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22812D31C(v8, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
  }

  v19 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  return (*(v10 + 40))(&a2[*(v19 + 20)], v14, v9);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 1);

  *v2 = a1;
  *(v2 + 1) = a2;
  sub_228136F9C();
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_228136FBC();
    if (v17(v9, 1, v10) != 1)
    {
      sub_22812D31C(v9, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
  }

  v18 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  return (*(v11 + 40))(&v2[*(v18 + 20)], v15, v10);
}

void (*SummarizationRequestHandler.RequestInfo.requestIdentifier.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = sub_228136FCC();
  v5[2] = v8;
  v9 = *(v8 - 8);
  v5[3] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[4] = v10;
  return sub_22810D99C;
}

void sub_22810D99C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v4 = v2[1];
  }

  else
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    v8 = **v2;
    v9 = *(*v2 + 1);
    sub_228136F9C();
    v10 = *(v6 + 6);
    if (v10(v7, 1, v5) == 1)
    {
      v12 = v2[1];
      v11 = v2[2];
      v13 = v2[4];
      sub_228136FBC();
      if (v10(v12, 1, v11) != 1)
      {
        sub_22812D31C(v2[1], &qword_27D81E588, &qword_22813B2D0);
      }
    }

    else
    {
      (*(v2[3] + 4))(v2[4], v2[1], v2[2]);
    }

    v14 = v2[3];
    v3 = v2[4];
    v4 = v2[1];
    v15 = v2[2];
    v16 = *v2;
    v17 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    (*(v14 + 5))(&v16[*(v17 + 20)], v3, v15);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t SummarizationRequestHandler.RequestInfo.requestUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 20);
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarizationRequestHandler.RequestInfo.useCaseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SummarizationRequestHandler.RequestInfo.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientApplicationIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.clientProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.originatingApplicationProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:originatingApplicationIdentifier:originatingApplicationProcessIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, int a11)
{
  v40 = a8;
  v38 = a11;
  v39 = a7;
  v36 = a10;
  v37 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v36 - v20;
  v22 = sub_228136FCC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  *(a9 + 1) = a2;

  sub_228136F9C();

  v28 = *(v23 + 48);
  if (v28(v21, 1, v22) == 1)
  {
    sub_228136FBC();
    if (v28(v21, 1, v22) != 1)
    {
      sub_22812D31C(v21, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v23 + 32))(v27, v21, v22);
  }

  v29 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  result = (*(v23 + 32))(&a9[v29[5]], v27, v22);
  v31 = &a9[v29[6]];
  *v31 = a3;
  *(v31 + 1) = a4;
  v32 = &a9[v29[7]];
  v33 = v37;
  *v32 = a5;
  *(v32 + 1) = v33;
  *&a9[v29[8]] = v39;
  v34 = &a9[v29[9]];
  v35 = v36;
  *v34 = v40;
  *(v34 + 1) = v35;
  *&a9[v29[10]] = v38;
  return result;
}

uint64_t SummarizationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v37 = a7;
  v34 = a3;
  v35 = a4;
  v36 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v34 - v15;
  v17 = sub_228136FCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v27 = a1;
  *(v27 + 1) = a2;

  sub_228136F9C();

  v28 = *(v18 + 48);
  if (v28(v16, 1, v17) == 1)
  {
    sub_228136FBC();
    if (v28(v16, 1, v17) != 1)
    {
      sub_22812D31C(v16, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v18 + 32))(v22, v16, v17);
  }

  (*(v18 + 32))(&v27[v23[5]], v22, v17);
  v29 = &v27[v23[6]];
  v30 = v35;
  *v29 = v34;
  *(v29 + 1) = v30;
  v31 = &v27[v23[7]];
  *v31 = a5;
  *(v31 + 1) = a6;
  LODWORD(v30) = v37;
  *&v27[v23[8]] = v37;
  v32 = &v27[v23[9]];
  *v32 = a5;
  *(v32 + 1) = a6;
  *&v27[v23[10]] = v30;
  sub_22812CCFC(v27, v36, type metadata accessor for SummarizationRequestHandler.RequestInfo);
}

uint64_t sub_22810E408()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22810E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22810E4AC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_22810E4E4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_22810E528(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t SummarizationRequestHandler.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SummarizationRequestHandler.init()();
  return v3;
}

uint64_t SummarizationRequestHandler.init()()
{
  v1 = v0;
  v2 = sub_22813882C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2813C8A20);
  v10 = *(v3 + 16);
  v10(v0 + v8, v9, v2);
  v11 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  if (qword_2813C4968 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Signpost(0);
  v13 = __swift_project_value_buffer(v12, qword_2813C8990);
  sub_22812ABD8(v13, v1 + v11, type metadata accessor for Signpost);
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v14 = SKAssetManager.init()();
  v15 = type metadata accessor for ClientSwitchConfiguration();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v1 + 16) = ClientSwitchConfiguration.init(assetManager:)(v14);
  v10(v7, v1 + v8, v2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F3F0, &qword_228142CB8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = sub_227FE5914(MEMORY[0x277D84F90]);
  *(v21 + 16) = 0;
  *(v21 + 24) = v22;
  (*(v3 + 32))(v21 + qword_2813C7C88, v7, v2);
  v23 = (v21 + qword_2813C7D90);
  *v23 = sub_22812A97C;
  v23[1] = 0;
  *(v1 + 24) = v21;
  return v1;
}

uint64_t SummarizationRequestHandler.prewarm(requestInfo:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22810E8C8;

  return sub_22810E9BC(a1, 0);
}

uint64_t sub_22810E8C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22810E9BC(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_228138CCC();
  *(v3 + 96) = v5;
  v6 = *(v5 - 8);
  *(v3 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v8 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F1D8, &unk_228142EA0) - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v10 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v3 + 168) = v10;
  v11 = *(v10 - 8);
  *(v3 + 176) = v11;
  *(v3 + 184) = *(v11 + 64);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22810EC28, 0, 0);
}

uint64_t sub_22810EC28()
{
  v99 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 336);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  if (*(v0 + 336))
  {
    v8 = 0xEB00000000206465;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812ABD8(v6, v1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v2, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v9 = v3;
  v10 = v8;
  sub_22812ABD8(v6, v9, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v4, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  sub_22810A6C8();
  sub_22810A6D0();
  v11 = sub_22813880C();
  v12 = sub_2281396BC();

  if (os_log_type_enabled(v11, v12))
  {
    if (v5)
    {
      v13 = 0x7461636572706564;
    }

    else
    {
      v13 = 0;
    }

    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v93 = *(v0 + 264);
    v94 = *(v0 + 256);
    v16 = *(v0 + 168);
    v95 = v12;
    v17 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v98[0] = v96;
    *v17 = 136316418;
    *(v17 + 4) = sub_227FCC340(v13, v10, v98);
    *(v17 + 12) = 2082;
    v18 = *v14;
    v19 = v14[1];

    sub_22812AB78(v14, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v20 = sub_227FCC340(v18, v19, v98);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2082;
    v21 = (v15 + v16[6]);
    v22 = *v21;
    v23 = v21[1];

    sub_22812AB78(v15, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v24 = sub_227FCC340(v22, v23, v98);

    *(v17 + 24) = v24;
    *(v17 + 32) = 2082;
    v25 = (v93 + v16[7]);
    v26 = *v25;
    v27 = v25[1];

    sub_22812AB78(v93, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v28 = sub_227FCC340(v26, v27, v98);

    *(v17 + 34) = v28;
    *(v17 + 42) = 1026;
    LODWORD(v16) = *(v94 + v16[8]);
    sub_22812AB78(v94, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    *(v17 + 44) = v16;
    *(v17 + 48) = 1026;
    *(v17 + 50) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v11, v95, "Received %sprewarm request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v17, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v96, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  else
  {
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 264);
    sub_22812AB78(*(v0 + 256), type metadata accessor for SummarizationRequestHandler.RequestInfo);

    sub_22812AB78(v31, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v30, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v29, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v34 = *(v0 + 152);
  v35 = *(v0 + 96);
  v36 = *(v0 + 104);
  v37 = (*(v0 + 72) + *(v33 + 24));
  v38 = *v37;
  v39 = v37[1];

  sub_22810D23C(v38, v39, v32);
  sub_227FCAFD4(v32, v34, qword_27D81F1D8, &unk_228142EA0);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v40 = *(v0 + 240);
    v41 = *(v0 + 144);
    v42 = *(v0 + 72);
    sub_22812D31C(*(v0 + 152), qword_27D81F1D8, &unk_228142EA0);
    sub_2280EA2E4(v41);
    sub_22812ABD8(v42, v40, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v43 = sub_22813880C();
    v44 = sub_2281396DC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 240);
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v98[0] = v48;
      *v47 = 136446210;
      v49 = (v46 + *(v33 + 24));
      v50 = *v49;
      v51 = v49[1];

      sub_22812AB78(v46, type metadata accessor for SummarizationRequestHandler.RequestInfo);
      v52 = sub_227FCC340(v50, v51, v98);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_227FC3000, v43, v44, "Unknown request use case identifier in prewarm: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v48);
      MEMORY[0x22AAB28A0](v48, -1, -1);
      MEMORY[0x22AAB28A0](v47, -1, -1);
    }

    else
    {

      sub_22812AB78(v46, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    }

    goto LABEL_17;
  }

  v53 = *(v0 + 112);
  v54 = *(v0 + 120);
  v55 = *(v0 + 96);
  v56 = *(v0 + 104);
  (*(v56 + 32))(v54, *(v0 + 152), v55);
  (*(v56 + 16))(v53, v54, v55);
  v57 = (*(v56 + 88))(v53, v55);
  if (v57 == *MEMORY[0x277D4B0D8])
  {
    goto LABEL_14;
  }

  if (v57 == *MEMORY[0x277D4B110])
  {
    goto LABEL_23;
  }

  if (v57 == *MEMORY[0x277D4B0E0] || v57 == *MEMORY[0x277D4B0F0] || v57 == *MEMORY[0x277D4B0F8])
  {
    goto LABEL_14;
  }

  if (v57 == *MEMORY[0x277D4B120])
  {
LABEL_23:
    sub_2280EA7F4(*(v0 + 120), *(v0 + 136));
    v90 = *(v0 + 136);
    v91 = *(v0 + 144);
LABEL_40:
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    sub_22812CCFC(v90, v91, type metadata accessor for SummarizationSession.Configuration);
    goto LABEL_17;
  }

  if (v57 == *MEMORY[0x277D4B100] || v57 == *MEMORY[0x277D4B118])
  {
    goto LABEL_14;
  }

  if (v57 == *MEMORY[0x277D4B0C0] || v57 == *MEMORY[0x277D4B0B8])
  {
    goto LABEL_41;
  }

  if (v57 == *MEMORY[0x277D4B0D0])
  {
LABEL_14:
    v58 = *(v0 + 120);
    v59 = *(v0 + 96);
    v60 = *(v0 + 104);
    sub_2280EA2E4(*(v0 + 144));
LABEL_15:
    (*(v60 + 8))(v58, v59);
    goto LABEL_17;
  }

  if (v57 == *MEMORY[0x277D4B108] || v57 == *MEMORY[0x277D4B0E8])
  {
LABEL_41:
    sub_2280EA7F4(*(v0 + 120), *(v0 + 128));
    v91 = *(v0 + 144);
    v90 = *(v0 + 128);
    goto LABEL_40;
  }

  if (v57 == *MEMORY[0x277D4B128] || v57 == *MEMORY[0x277D4B0B0] || v57 == *MEMORY[0x277D4B0C8])
  {
    v58 = *(v0 + 120);
    v59 = *(v0 + 96);
    v60 = *(v0 + 104);
    sub_2280EA2EC(*(v0 + 144));
    goto LABEL_15;
  }

  v76 = *(v0 + 248);
  v77 = *(v0 + 72);
  sub_2280EA2E4(*(v0 + 144));
  sub_22812ABD8(v77, v76, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v78 = sub_22813880C();
  v79 = sub_2281396DC();
  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 248);
  v97 = *(v0 + 120);
  v82 = *(v0 + 96);
  v83 = *(v0 + 104);
  if (v80)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v98[0] = v85;
    *v84 = 136446210;
    v86 = (v81 + *(v33 + 24));
    v87 = *v86;
    v88 = v86[1];

    sub_22812AB78(v81, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v89 = sub_227FCC340(v87, v88, v98);

    *(v84 + 4) = v89;
    _os_log_impl(&dword_227FC3000, v78, v79, "Unknown request use case identifier in prewarm: %{public}s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v85);
    MEMORY[0x22AAB28A0](v85, -1, -1);
    MEMORY[0x22AAB28A0](v84, -1, -1);
  }

  else
  {

    sub_22812AB78(v81, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v92 = *(v83 + 8);
  v92(v97, v82);
  v92(*(v0 + 112), *(v0 + 96));
LABEL_17:
  if (qword_27D81E2B8 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 232);
  v63 = *(v0 + 176);
  v62 = *(v0 + 184);
  v64 = *(v0 + 88);
  v65 = *(v0 + 72);
  v66 = type metadata accessor for Signpost(0);
  v67 = __swift_project_value_buffer(v66, qword_27D823258);
  *(v0 + 296) = v67;
  sub_22812ABD8(v65, v61, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v68 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v69 = swift_allocObject();
  *(v0 + 304) = v69;
  sub_22812CCFC(v61, v69 + v68, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v70 = swift_allocObject();
  *(v0 + 312) = v70;
  *(v70 + 16) = sub_22812CC9C;
  *(v70 + 24) = v69;

  sub_2281324C4(v67, v70);
  v71 = swift_task_alloc();
  *(v0 + 320) = v71;
  *v71 = v0;
  v71[1] = sub_22810F818;
  v72 = *(v0 + 144);
  v74 = *(v0 + 72);
  v73 = *(v0 + 80);

  return sub_228110DB0(v71, v73, v74, v72);
}

uint64_t sub_22810F818()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_22810FCEC;
  }

  else
  {
    v3 = sub_22810F92C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22810F92C()
{
  v41 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 224);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  *(v0 + 336);
  sub_2281324D4(v4, *(v0 + 296), *(v0 + 312));
  sub_22812AB78(v4, type metadata accessor for SignpostToken);

  sub_22812ABD8(v5, v3, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v6 = sub_22813880C();
  v7 = sub_2281396BC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v10 = *(v0 + 160);
  LODWORD(v4) = *(v0 + 336);
  if (v8)
  {
    if (*(v0 + 336))
    {
      v11 = 0xEB00000000206465;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    if (*(v0 + 336))
    {
      v12 = 0x7461636572706564;
    }

    else
    {
      v12 = 0;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315394;
    v15 = sub_227FCC340(v12, v11, &v40);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2082;
    v16 = *v9;
    v17 = v9[1];

    sub_22812AB78(v9, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v18 = sub_227FCC340(v16, v17, &v40);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_227FC3000, v6, v7, "Successfully handled %sprewarm request [requestIdentifier: %{public}s]", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {

    sub_22812AB78(v9, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  sub_22812D31C(v10, qword_27D81F1D8, &unk_228142EA0);
  v20 = *(v0 + 272);
  v19 = *(v0 + 280);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 240);
  v23 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v31 = *(v0 + 200);
  v32 = *(v0 + 192);
  v33 = *(v0 + 160);
  v34 = *(v0 + 152);
  v35 = *(v0 + 136);
  v36 = *(v0 + 128);
  v37 = *(v0 + 120);
  v38 = *(v0 + 112);
  v39 = *(v0 + 88);
  sub_22812AB78(*(v0 + 144), type metadata accessor for SummarizationSession.Configuration);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22810FCEC()
{
  v73 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v56 = *(v0 + 216);
  v58 = *(v0 + 208);
  v60 = *(v0 + 200);
  v63 = *(v0 + 192);
  v5 = *(v0 + 88);
  v66 = *(v0 + 80);
  v69 = *(v0 + 288);
  v6 = *(v0 + 72);
  *(v0 + 336);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_22812CC9C;
  v7[4] = v2;
  swift_beginAccess();
  v8 = *(v3 + 24);
  *(v3 + 16) = sub_22812D46C;
  *(v3 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v3);
  sub_22812AB78(v5, type metadata accessor for SignpostToken);

  sub_22812ABD8(v6, v56, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v58, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v60, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_22812ABD8(v6, v63, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v10 = v1;
  v11 = sub_22813880C();
  v12 = sub_2281396DC();

  if (os_log_type_enabled(v11, v12))
  {
    v70 = v12;
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);
    v61 = *(v0 + 192);
    v64 = *(v0 + 328);
    v16 = *(v0 + 168);
    v17 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v72[0] = v67;
    *v17 = 136447234;
    v19 = *v13;
    v18 = v13[1];

    sub_22812AB78(v13, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v20 = sub_227FCC340(v19, v18, v72);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = (v14 + v16[6]);
    v22 = *v21;
    v23 = v21[1];

    sub_22812AB78(v14, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v24 = sub_227FCC340(v22, v23, v72);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    v25 = (v15 + v16[7]);
    v26 = *v25;
    v27 = v25[1];

    sub_22812AB78(v15, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    v28 = sub_227FCC340(v26, v27, v72);

    *(v17 + 24) = v28;
    *(v17 + 32) = 1026;
    LODWORD(v28) = *(v61 + v16[8]);
    sub_22812AB78(v61, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    *(v17 + 34) = v28;
    *(v17 + 38) = 2082;
    swift_getErrorValue();
    v29 = *(v0 + 40);
    v30 = Error.loggingDescription.getter(*(v0 + 48), *(v0 + 56));
    v32 = sub_227FCC340(v30, v31, v72);

    *(v17 + 40) = v32;
    _os_log_impl(&dword_227FC3000, v11, v70, "Prewarm request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v17, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v67, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  else
  {
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 200);
    sub_22812AB78(*(v0 + 192), type metadata accessor for SummarizationRequestHandler.RequestInfo);

    sub_22812AB78(v35, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v34, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_22812AB78(v33, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  }

  v36 = *(v0 + 328);
  v37 = *(v0 + 160);
  v38 = *(v0 + 144);
  swift_willThrow();
  sub_22812D31C(v37, qword_27D81F1D8, &unk_228142EA0);
  sub_22812AB78(v38, type metadata accessor for SummarizationSession.Configuration);
  v71 = *(v0 + 328);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);
  v44 = *(v0 + 240);
  v43 = *(v0 + 248);
  v46 = *(v0 + 224);
  v45 = *(v0 + 232);
  v48 = *(v0 + 208);
  v47 = *(v0 + 216);
  v51 = *(v0 + 200);
  v52 = *(v0 + 192);
  v53 = *(v0 + 160);
  v54 = *(v0 + 152);
  v55 = *(v0 + 144);
  v57 = *(v0 + 136);
  v59 = *(v0 + 128);
  v62 = *(v0 + 120);
  v65 = *(v0 + 112);
  v68 = *(v0 + 88);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t SummarizationRequestHandler.prewarm(for:clientApplicationIdentifier:clientProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 + 208) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_228136FCC();
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v10 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v5 + 120) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v12 = sub_228138CCC();
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v15 = sub_228138C1C();
  *(v5 + 168) = v15;
  v16 = *(v15 - 8);
  *(v5 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228110454, 0, 0);
}

uint64_t sub_228110454()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277D4B080], *(v0 + 168));
  sub_227FCAF8C(&qword_27D81F3F8, MEMORY[0x277D4B088]);
  sub_2281394CC();
  sub_2281394CC();
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    (*(v3 + 8))(*(v0 + 184), *(v0 + 168));

    v5 = MEMORY[0x277D4B0C0];
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 40);
    v8 = sub_2281399BC();
    (*(v3 + 8))(v2, v4);

    v5 = MEMORY[0x277D4B0E0];
    if (v8)
    {
      v5 = MEMORY[0x277D4B0C0];
    }
  }

  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 80);
  (*(v10 + 104))(v9, *v5, v11);
  v39 = sub_228138CAC();
  v18 = v17;
  (*(v10 + 8))(v9, v11);
  sub_228136FBC();
  v19 = sub_228136FAC();
  v21 = v20;
  (*(v15 + 8))(v13, v14);
  *v12 = v19;
  v12[1] = v21;

  sub_228136F9C();

  v22 = *(v15 + 48);
  if (v22(v16, 1, v14) == 1)
  {
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 104);
    sub_228136FBC();
    if (v22(v24, 1, v23) != 1)
    {
      sub_22812D31C(*(v0 + 80), &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
  }

  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v28 = *(v0 + 120);
  v29 = *(v0 + 208);
  v31 = *(v0 + 56);
  v30 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(v27 + v28[5], *(v0 + 104), *(v0 + 88));
  v32 = (v27 + v28[6]);
  *v32 = v39;
  v32[1] = v18;
  v33 = (v27 + v28[7]);
  *v33 = v31;
  v33[1] = v30;
  *(v27 + v28[8]) = v29;
  v34 = (v27 + v28[9]);
  *v34 = v31;
  v34[1] = v30;
  *(v27 + v28[10]) = v29;
  sub_22812CCFC(v27, v26, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  swift_bridgeObjectRetain_n();
  v35 = swift_task_alloc();
  *(v0 + 192) = v35;
  *v35 = v0;
  v35[1] = sub_22811081C;
  v36 = *(v0 + 136);
  v37 = *(v0 + 72);

  return sub_22810E9BC(v36, 1);
}

uint64_t sub_22811081C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_228110A0C;
  }

  else
  {
    v3 = sub_228110930;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228110930()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  sub_22812AB78(v0[17], type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228110A0C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  sub_22812AB78(v0[17], type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t SummarizationRequestHandler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  v4 = sub_22813882C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22812AB78(v0 + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost, type metadata accessor for Signpost);
  return v0;
}

uint64_t SummarizationRequestHandler.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  v4 = sub_22813882C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_22812AB78(&v0[OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost], type metadata accessor for Signpost);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228110C4C(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  MEMORY[0x22AAB1970](*a1, a1[1]);
  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v2 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  MEMORY[0x22AAB1970](*(a1 + v2[6]), *(a1 + v2[6] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  MEMORY[0x22AAB1970](*(a1 + v2[7]), *(a1 + v2[7] + 8));
  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v5 = *(a1 + v2[8]);
  v3 = sub_22813998C();
  MEMORY[0x22AAB1970](v3);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v5);
}

uint64_t sub_228110DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_228110DD4, 0, 0);
}

uint64_t sub_228110DD4()
{
  v25 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v4 = (v1 + *(v3 + 28));
  v6 = *v4;
  v5 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v8 = (v1 + *(v3 + 24));
  v9 = v8[1];
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  v10 = *(v2 + 16);

  sub_228104E70(v6, v5, inited);
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v0[11] = v3;
  v0[12] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_22812ABD8(v11, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008(v0 + 8, v12);
  v17 = v16;
  v18 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 8);
  v20 = *(v17 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24);
  v19 = *(v17 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 32);
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), v20);
  (*(*(v19 + 8) + 8))(v20);
  v21 = *(v18 + 24);
  v24 = v17;
  v22 = *(v21 + qword_2813C7D90 + 8);
  if ((*(v21 + qword_2813C7D90))(&v24))
  {
    os_unfair_lock_lock((v21 + 16));
    sub_22810615C((v21 + 24), v17, v21);
    os_unfair_lock_unlock((v21 + 16));
  }

  v23 = v0[1];

  return v23();
}

void sub_228111008(void *a1, uint64_t a2)
{
  v6 = type metadata accessor for SummarizationSession.Configuration();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v23 - v13;
  v15 = *(v2 + 24);
  os_unfair_lock_lock((v15 + 16));
  v16 = sub_22810876C((v15 + 24), a1, a2);
  if (v3)
  {
    os_unfair_lock_unlock((v15 + 16));
    __break(1u);
  }

  else
  {
    v17 = v16;
    os_unfair_lock_unlock((v15 + 16));
    if (!v17)
    {
      sub_22812ABD8(a2, v14, type metadata accessor for SummarizationSession.Configuration);
      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      RequestInfo.sessionInfo.getter(v18, v19, v26);
      sub_22812ABD8(v14, v11, type metadata accessor for SummarizationSession.Configuration);
      sub_22812CAE4(v26, v25);
      v20 = type metadata accessor for SummarizationSession(0);
      memset(v23, 0, sizeof(v23));
      v24 = 0;
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_228060E7C(v11, v25, v23, 0, 0, 0);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v26);
      sub_22812AB78(v14, type metadata accessor for SummarizationSession.Configuration);
    }
  }
}

uint64_t SummarizationRequestHandler.isLanguageEligibleForSummarization(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a1;
  return MEMORY[0x2822009F8](sub_228111204, 0, 0);
}

uint64_t sub_228111204()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[5] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_228111328;
  v6 = v0[9];

  return sub_22810A298((v0 + 2), 3, &unk_228142CE8, v4);
}

uint64_t sub_228111328(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 80);

    return MEMORY[0x2822009F8](sub_228111490, 0, 0);
  }

  else
  {
    v8 = *(v4 + 80);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v4 + 16));
    v9 = *(v6 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_228111490()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1(0);
}

uint64_t sub_2281114F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v7 = sub_22813797C();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_22813795C();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_22813794C();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_22813713C();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228111764, 0, 0);
}

uint64_t sub_228111764()
{
  v90 = v0;
  v1 = objc_opt_self();
  v2 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v3 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v3 = &qword_2813C76F8;
    }

    v5 = *(*v3 + 272);
    v4 = *(*v3 + 280);
    v7 = *(*v3 + 288);
    v6 = *(*v3 + 296);
    v8 = *(*v3 + 2208);

    v9 = v2[422];

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_15;
    }

LABEL_21:
    v1 = v0[17];
    v16 = v0;
    v19 = v0 + 13;
    v18 = v0[13];
    v17 = v19[1];
    v21 = v16[11];
    v20 = v16[12];
    v84 = v16;
    v22 = v16[4];
    v23 = (v22 + *(type metadata accessor for SummarizationRequestHandler.RequestInfo(0) + 24));
    v24 = *v23;
    v25 = v23[1];
    (*(v18 + 104))(v17, *MEMORY[0x277D0E2D8], v20);

    sub_22813792C();
    sub_22813796C();
    if (qword_2813C86B0 != -1)
    {
      swift_once();
    }

    v2 = off_2813C86B8;
    v88 = *(off_2813C86B8 + 2);
    if (!v88)
    {
      v61 = 0;
      v0 = v84;
LABEL_60:
      v69 = v0[17];
      v70 = v84[16];
      v71 = v84[15];
      (*(v84[10] + 8))(v84[11], v84[9]);
      (*(v70 + 8))(v69, v71);
      v0 = v84;
      goto LABEL_61;
    }

    v26 = 0;
    v0 = v84;
    v86 = v84[19];
    v87 = (v86 + 8);
    v83 = off_2813C86B8;
    while (v26 < v2[2])
    {
      v1 = v0[20];
      v27 = v0[8];
      (*(v86 + 16))(v1, v2 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v26, v0[18]);
      sub_22813710C();
      v28 = sub_22813701C();
      v29 = *(v28 - 8);
      v30 = *(v29 + 48);
      v31 = v30(v27, 1, v28);
      v32 = v84 + 8;
      if (v31 == 1)
      {
        goto LABEL_29;
      }

      v34 = v0[7];
      v33 = v0[8];
      v35 = v0[3];
      v36 = sub_228136FFC();
      v85 = v37;
      v38 = *(v29 + 8);
      v38(v33, v28);
      v1 = v35;
      sub_22813710C();
      if (v30(v34, 1, v28) == 1)
      {

        v32 = v84 + 7;
        v2 = v83;
        v0 = v84;
LABEL_29:
        sub_22812D31C(*v32, &qword_27D81E328, &qword_2281402C0);
        goto LABEL_30;
      }

      v39 = v84[7];
      v40 = sub_228136FFC();
      v1 = v41;
      v38(v39, v28);
      if (v36 == v40 && v85 == v1)
      {

        v0 = v84;
      }

      else
      {
        v42 = sub_2281399BC();

        v2 = v83;
        v0 = v84;
        if ((v42 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v43 = v0[20];
      v44 = v0[6];
      sub_22813712C();
      v45 = sub_2281370BC();
      v46 = *(v45 - 8);
      v47 = *(v46 + 48);
      v48 = v47(v44, 1, v45);
      v49 = v0[6];
      if (v48 == 1)
      {
        sub_22812D31C(v0[6], &qword_27D81E320, &unk_22813A7D0);
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v50 = sub_228136FFC();
        v51 = v52;
        (*(v46 + 8))(v49, v45);
      }

      v53 = v0[5];
      v54 = v0[3];
      sub_22813712C();
      v55 = v47(v53, 1, v45);
      v1 = v0[5];
      if (v55 == 1)
      {
        sub_22812D31C(v0[5], &qword_27D81E320, &unk_22813A7D0);
        if (!v51)
        {
          goto LABEL_58;
        }

        goto LABEL_50;
      }

      v56 = sub_228136FFC();
      v58 = v57;
      (*(v46 + 8))(v1, v45);
      if (!v51)
      {
        if (!v58)
        {
          goto LABEL_58;
        }

LABEL_50:

        v2 = v83;
LABEL_30:
        (*v87)(v0[20], v0[18]);
        goto LABEL_31;
      }

      if (!v58)
      {
        goto LABEL_50;
      }

      if (v50 == v56 && v51 == v58)
      {

LABEL_58:
        (*v87)(v0[20], v0[18]);
LABEL_59:
        v61 = 1;
        goto LABEL_60;
      }

      v1 = v0[20];
      v59 = v0[18];
      v60 = sub_2281399BC();

      (*v87)(v1, v59);
      v2 = v83;
      if (v60)
      {
        goto LABEL_59;
      }

LABEL_31:
      if (v88 == ++v26)
      {
        v61 = 0;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v1 = v6;
  v7(&v89, v8);

  v4 = v89;
  if (!v89)
  {
    goto LABEL_21;
  }

LABEL_15:
  v2 = *(v4 + 16);
  if (!v2)
  {
LABEL_20:

    goto LABEL_21;
  }

  v10 = 0;
  v11 = (v0[19] + 8);
  v12 = (v4 + 40);
  while (1)
  {
    if (v10 >= *(v4 + 16))
    {
      goto LABEL_65;
    }

    v1 = v0[21];
    v13 = v0[3];
    v15 = *(v12 - 1);
    v14 = *v12;

    sub_2281370DC();
    if (sub_2281370EC())
    {
      break;
    }

    v10 = (v10 + 1);
    (*v11)(v0[21], v0[18]);
    v12 += 2;
    if (v2 == v10)
    {
      goto LABEL_20;
    }
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v62 = sub_22813882C();
  __swift_project_value_buffer(v62, qword_2813C8A20);
  v63 = sub_22813880C();
  v64 = sub_2281396BC();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v0[21];
  v67 = v0[18];
  if (v65)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_227FC3000, v63, v64, "Returning true from isLanguageEligibleForSummarization for language in\nlanguagesEligibleForSummarizationOverride list.", v68, 2u);
    MEMORY[0x22AAB28A0](v68, -1, -1);
  }

  (*v11)(v66, v67);
  v61 = 1;
LABEL_61:
  v73 = v0[20];
  v72 = v0[21];
  v74 = v0[17];
  v75 = v0[14];
  v76 = v0[11];
  v78 = v0[7];
  v77 = v0[8];
  v80 = v0[5];
  v79 = v0[6];
  *v0[2] = v61;

  v81 = v0[1];

  return v81();
}

uint64_t SummarizationRequestHandler.isTextEligibleForSummarization(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a2;
  return MEMORY[0x2822009F8](sub_2281120D0, 0, 0);
}

uint64_t sub_2281120D0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[5] = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v1, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_2281121FC;
  v7 = v0[10];

  return sub_22810A298((v0 + 2), 3, &unk_228142D08, v5);
}

uint64_t sub_2281121FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = *(v4 + 88);

    return MEMORY[0x2822009F8](sub_228112364, 0, 0);
  }

  else
  {
    v8 = *(v4 + 88);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v4 + 16));
    v9 = *(v6 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_228112364()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1(0);
}

uint64_t sub_2281123CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_2281123F0, 0, 0);
}

uint64_t sub_2281123F0()
{
  v1 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  *v1 = SKText.isEligibleForSummarization.getter();
  v2 = v0[1];

  return v2();
}

uint64_t SummarizationRequestHandler.summarize(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = sub_2281386FC();
  v6[31] = v8;
  v9 = *(v8 - 8);
  v6[32] = v9;
  v10 = *(v9 + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281125A8, 0, 0);
}

{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v8 = sub_2281386FC();
  v6[46] = v8;
  v9 = *(v8 - 8);
  v6[47] = v9;
  v10 = *(v9 + 64) + 15;
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v11 = sub_228138C3C();
  v6[50] = v11;
  v12 = *(v11 - 8);
  v6[51] = v12;
  v13 = *(v12 + 64) + 15;
  v6[52] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v6[53] = swift_task_alloc();
  v15 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281207CC, 0, 0);
}

uint64_t sub_2281125A8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 288) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 296) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 304) = v7;
  *(v0 + 312) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 328) = v10;
  *(v10 + 16) = sub_22812BF34;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v13 = *v11;
  v12 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v13, v12, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v18 = swift_task_alloc();
  *(v0 + 336) = v18;
  *v18 = v0;
  v18[1] = sub_228112BF0;
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 192);
  v24 = *(v0 + 200);

  return sub_228113644(v23, v7, v21, v19, v20, v24, v22);
}

uint64_t sub_228112BF0()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_228113224;
  }

  else
  {
    v3 = sub_228112D04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228112D04()
{
  v1 = *(v0 + 344);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 192);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F400, &qword_228142D28);
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 304);
    v6 = *(v0 + 288);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 240);
    sub_22812C558(*(v0 + 232) + *(v0 + 296), v6, v2);
    v10 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 184) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v8 + 56);
    if (v12)
    {
      v14 = *(v0 + 264);
      v15 = *(v0 + 272);
      v16 = *(v0 + 248);
      v17 = *(v0 + 256);
      v18 = *(v0 + 240);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 7;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF96D4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812C854);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 168) = 7;
      *(v0 + 176) = v23;
      sub_227FDB3CC();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v38 = 7;
        *(v38 + 8) = v23;
      }

      v39 = *(v0 + 272);
      v40 = *(v0 + 248);
      swift_willThrow();

      v24(v39, v40);
      v2 = v26;
    }

    else
    {
      v37 = *(v0 + 240);
      v13(v37, 1, 1, *(v0 + 248));
      sub_22812D31C(v37, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v44 = *(v0 + 304);
    v43 = *(v0 + 312);
    v45 = *(v0 + 280);
    v51 = *(v0 + 272);
    v52 = *(v0 + 264);
    v46 = *(v0 + 232);
    v54 = *(v0 + 240);
    v47 = swift_allocObject();
    v47[2] = v2;
    v47[3] = sub_22812BF34;
    v47[4] = v41;
    swift_beginAccess();
    v48 = *(v42 + 24);
    *(v42 + 16) = sub_22812C848;
    *(v42 + 24) = v47;

    v49 = v2;

    swift_willThrow();
    sub_2281324D4(v45, v46 + v43, v42);
    sub_22812AB78(v45, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = *(v0 + 304);
    v30 = *(v0 + 312);
    v31 = *(v0 + 288);
    v33 = *(v0 + 272);
    v32 = *(v0 + 280);
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v53 = *(v0 + 240);
    sub_22812BF3C(v35 + *(v0 + 296), v31);
    sub_22812C1DC(v31, v29, 0);
    sub_2281324D4(v32, v35 + v30, v28);
    sub_22812AB78(v32, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_228113224()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  sub_22812C558(*(v0 + 232) + *(v0 + 296), v3, v1);
  v7 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 272);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);
    v15 = *(v0 + 240);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 7;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812C854);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 168) = 7;
    *(v0 + 176) = v20;
    sub_227FDB3CC();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 7;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 272);
    v27 = *(v0 + 248);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 240);
    v10(v24, 1, 1, *(v0 + 248));
    sub_22812D31C(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v28 = *(v0 + 320);
  v29 = *(v0 + 328);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);
  v33 = *(v0 + 232);
  v41 = *(v0 + 240);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_22812BF34;
  v34[4] = v28;
  swift_beginAccess();
  v35 = *(v29 + 24);
  *(v29 + 16) = sub_22812C848;
  *(v29 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v29);
  sub_22812AB78(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_228113644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_228138BFC();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v13 = sub_228138F9C();
  v7[31] = v13;
  v14 = *(v13 - 8);
  v7[32] = v14;
  v15 = *(v14 + 64) + 15;
  v7[33] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v17 = sub_228138BDC();
  v7[35] = v17;
  v18 = *(v17 - 8);
  v7[36] = v18;
  v19 = *(v18 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228113870, 0, 0);
}

uint64_t sub_228113870()
{
  v71 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[21];
  sub_228138BEC();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 != *MEMORY[0x277D4B020] && v5 != *MEMORY[0x277D4B028])
  {
    if (v5 == *MEMORY[0x277D4B030])
    {
      v11 = swift_task_alloc();
      v0[42] = v11;
      *v11 = v0;
      v11[1] = sub_228114394;
      v12 = v0[24];
      v13 = v0[25];
      v14 = v0[22];
      v15 = v0[23];
      v16 = v0[19];
      v17 = v0[20];

      return sub_228114610(v16, v12, v13, v14, v15, v17);
    }

    if (v5 != *MEMORY[0x277D4B038] && v5 != *MEMORY[0x277D4B040])
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v29 = v0[27];
      v28 = v0[28];
      v30 = v0[26];
      v31 = v0[21];
      v32 = sub_22813882C();
      __swift_project_value_buffer(v32, qword_2813C8A20);
      (*(v29 + 16))(v28, v31, v30);
      v33 = sub_22813880C();
      v34 = sub_2281396DC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v0[37];
        v36 = v0[35];
        v38 = v0[27];
        v37 = v0[28];
        v39 = v0[26];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v70 = v41;
        *v40 = 136446210;
        sub_228138BEC();
        v42 = sub_2281392EC();
        v44 = v43;
        (*(v38 + 8))(v37, v39);
        v45 = sub_227FCC340(v42, v44, &v70);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_227FC3000, v33, v34, "@unknown case for SummarizationClient.TextAssistantSummarizationOptions.Source; received %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_13(v41);
        MEMORY[0x22AAB28A0](v41, -1, -1);
        MEMORY[0x22AAB28A0](v40, -1, -1);
      }

      else
      {
        v47 = v0[27];
        v46 = v0[28];
        v48 = v0[26];

        (*(v47 + 8))(v46, v48);
      }

      v49 = v0[38];
      v50 = v0[35];
      v51 = v0[36];
      v52 = swift_allocObject();
      *(v52 + 16) = 56;
      *(v52 + 24) = 0;
      *(v52 + 32) = 0;
      v53 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 482, sub_22812D404);
      sub_227FDB3CC();
      swift_allocError();
      *v54 = 56;
      *(v54 + 8) = v53;
      swift_willThrow();
      (*(v51 + 8))(v49, v50);
      goto LABEL_23;
    }
  }

  v7 = v0[21];
  if (sub_228138BCC())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = 24;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    v9 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 605, sub_22812D40C);
    sub_227FDB3CC();
    swift_allocError();
    *v10 = 24;
    *(v10 + 8) = v9;
    swift_willThrow();
LABEL_23:
    v56 = v0[37];
    v55 = v0[38];
    v58 = v0[33];
    v57 = v0[34];
    v60 = v0[29];
    v59 = v0[30];
    v61 = v0[28];

    v62 = v0[1];

    return v62();
  }

  v19 = v0[34];
  v20 = v0[23];
  v21 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  sub_2280EA5AC(*(v20 + *(v21 + 24)), *(v20 + *(v21 + 24) + 8), v19);
  v22 = v0[34];
  v23 = v0[22];
  v24 = v0[23];
  v0[5] = v21;
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v24, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008(v0 + 2, v22);
  v0[39] = v26;
  v64 = v0[24];
  v63 = v0[25];
  v65 = v0[23];
  v66 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v0[10] = &type metadata for SKText;
  v0[11] = &protocol witness table for SKText;
  v0[7] = v64;
  v0[8] = v63;
  v0[15] = v21;
  v0[16] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v67 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_22812ABD8(v65, v67, type metadata accessor for SummarizationRequestHandler.RequestInfo);

  v68 = swift_task_alloc();
  v0[40] = v68;
  *v68 = v0;
  v68[1] = sub_228113EE4;
  v69 = v0[33];

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v69, (v0 + 7), &unk_283B5B700, (v0 + 12), v66);
}

uint64_t sub_228113EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v6 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_2281142A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v4 = sub_228114008;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228114008()
{
  v36 = v0;
  v1 = *(v0 + 264);
  v35 = 2;
  v2 = Summary.stringValue(for:)(&v35);
  if (v2.value._object)
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 152);
    *(v0 + 136) = v2;
    sub_228138EEC();
    sub_228138F0C();
    sub_228138C4C();

    (*(v7 + 8))(v4, v6);
    sub_22812AB78(v5, type metadata accessor for SummarizationSession.Configuration);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v17 = *(v0 + 224);
  }

  else
  {
    v19 = *(v0 + 312);
    v20 = *(v0 + 264);
    v21 = *(v0 + 272);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = swift_allocObject();
    *(v24 + 16) = 27;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    v25 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 500, sub_22812D408);
    sub_227FDB3CC();
    swift_allocError();
    *v26 = 27;
    *(v26 + 8) = v25;
    swift_willThrow();

    (*(v23 + 8))(v20, v22);
    sub_22812AB78(v21, type metadata accessor for SummarizationSession.Configuration);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 224);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2281142A4()
{
  v1 = v0[39];
  v2 = v0[34];

  sub_22812AB78(v2, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_228114394()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_228114558;
  }

  else
  {
    v3 = sub_2281144A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2281144A8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_228114558()
{
  v1 = v0[43];
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_228114610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = sub_228138F9C();
  v6[27] = v9;
  v10 = *(v9 - 8);
  v6[28] = v10;
  v11 = *(v10 + 64) + 15;
  v6[29] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = *(*(sub_228136F8C() - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v14 = sub_228136FCC();
  v6[32] = v14;
  v15 = *(v14 - 8);
  v6[33] = v15;
  v16 = *(v15 + 64) + 15;
  v6[34] = swift_task_alloc();
  v17 = sub_22813899C();
  v6[35] = v17;
  v18 = *(v17 - 8);
  v6[36] = v18;
  v19 = *(v18 + 64) + 15;
  v6[37] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v21 = sub_228138E6C();
  v6[39] = v21;
  v22 = *(v21 - 8);
  v6[40] = v22;
  v23 = *(v22 + 64) + 15;
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281148F8, 0, 0);
}

uint64_t sub_2281148F8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[38];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v23 = v0[32];
  v24 = v0[39];
  v26 = v0[37];
  v27 = v0[23];
  v28 = v0[30];
  v29 = v0[22];
  v8 = v0[21];
  v25 = v0[20];
  v9 = sub_228138E3C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_228138E4C();
  sub_228136FBC();
  sub_228136FAC();
  (*(v6 + 8))(v5, v23);
  (*(v3 + 16))(v1, v2, v24);
  sub_228136F6C();

  sub_22813897C();
  v10 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  v0[5] = v10;
  v0[6] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22812ABD8(v27, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v28);
  sub_228111008(v0 + 2, v28);
  v0[43] = v12;
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  v17 = v0[23];
  v16 = v0[24];
  sub_22812AB78(v0[30], type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 2);
  v0[10] = type metadata accessor for SKMailMessage();
  v0[11] = &protocol witness table for SKMailMessage;
  v18 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v14 + 16))(v18, v13, v15);
  v0[15] = v10;
  v0[16] = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v19 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_22812ABD8(v17, v19, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v20[1] = sub_228114CF8;
  v21 = v0[29];

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v21, (v0 + 7), &unk_283B5B6D8, (v0 + 12), v16);
}

uint64_t sub_228114CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_22811514C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm_13((v2 + 56));
    v4 = sub_228114E1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228114E1C()
{
  v47 = v0;
  v1 = *(v0 + 232);
  v46 = 1;
  v2 = Summary.stringValue(for:)(&v46);
  if (v2.value._object)
  {
    v3 = *(v0 + 336);
    v4 = *(v0 + 320);
    v37 = *(v0 + 312);
    v38 = *(v0 + 328);
    v39 = *(v0 + 304);
    v5 = *(v0 + 288);
    v36 = *(v0 + 296);
    v34 = *(v0 + 344);
    v35 = *(v0 + 280);
    v41 = *(v0 + 272);
    v42 = *(v0 + 248);
    v44 = *(v0 + 240);
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 208);
    v33 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 152);
    *(v0 + 136) = v2;
    sub_228138EEC();
    sub_228138F0C();
    sub_228138C4C();

    (*(v7 + 8))(v6, v33);
    (*(v5 + 8))(v36, v35);
    (*(v4 + 8))(v3, v37);
  }

  else
  {
    v12 = *(v0 + 344);
    v13 = *(v0 + 320);
    v43 = *(v0 + 312);
    v45 = *(v0 + 336);
    v14 = *(v0 + 288);
    v40 = *(v0 + 296);
    v15 = *(v0 + 280);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    v18 = *(v0 + 216);
    v19 = swift_allocObject();
    *(v19 + 16) = 27;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 544, sub_22812D410);
    sub_227FDB3CC();
    swift_allocError();
    *v21 = 27;
    *(v21 + 8) = v20;
    swift_willThrow();

    (*(v16 + 8))(v17, v18);
    (*(v14 + 8))(v40, v15);
    (*(v13 + 8))(v45, v43);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v25 = *(v0 + 296);
    v24 = *(v0 + 304);
    v26 = *(v0 + 272);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v29 = *(v0 + 232);
    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22811514C()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);
  v20 = v0[45];
  v9 = v0[41];
  v8 = v0[42];
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v16 = v0[25];
  v17 = v0[26];

  v18 = v0[1];

  return v18();
}

uint64_t SummarizationRequestHandler.partialSummaries(for:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[45] = a5;
  v6[46] = v5;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v8 = sub_2281386FC();
  v6[48] = v8;
  v9 = *(v8 - 8);
  v6[49] = v9;
  v10 = *(v9 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v11 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v6[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281153EC, 0, 0);
}

uint64_t sub_2281153EC()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 136) = v4;
  *(v0 + 144) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  *(v0 + 432) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 440) = v6;
  *(v0 + 448) = v7;
  sub_22812CAE4(v0 + 112, v0 + 152);
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  sub_227FFA05C((v0 + 152), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 464) = v9;
  *(v9 + 16) = sub_22812D380;
  *(v9 + 24) = v8;

  sub_2281324C4(v3 + v7, v9);
  v10 = (boxed_opaque_existential_1 + *(v4 + 28));
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v14 = (boxed_opaque_existential_1 + *(v4 + 24));
  v15 = v14[1];
  *(inited + 32) = *v14;
  *(inited + 40) = v15;
  v16 = *(v3 + 16);

  sub_228104E70(v11, v12, inited);
  v17 = v6;
  v18 = *(v0 + 352);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  if (sub_228138BCC())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 24;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, 605, sub_22812D3BC);
    sub_227FDB3CC();
    v21 = swift_allocError();
    *v22 = 24;
    *(v22 + 8) = v20;
    swift_willThrow();
    if (sub_22810D154(v21))
    {
      sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v21);
    }

    v39 = *(v0 + 384);
    v40 = *(v0 + 392);
    v41 = *(v0 + 376);
    *(v0 + 312) = v21;
    v42 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v43 = swift_dynamicCast();
    v44 = *(v40 + 56);
    if (v43)
    {
      v45 = *(v0 + 400);
      v46 = *(v0 + 408);
      v47 = *(v0 + 384);
      v48 = *(v0 + 392);
      v49 = *(v0 + 376);
      v44(v49, 0, 1, v47);
      (*(v48 + 32))(v46, v49, v47);
      v50 = *(v48 + 16);
      v50(v45, v46, v47);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v51 = swift_allocError();
      v50(v52, v45, v47);
      v53 = swift_allocObject();
      *(v53 + 16) = 7;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      v54 = sub_227FF96D4(v51, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8);

      v55 = *(v48 + 8);
      v55(v45, v47);
      *(v0 + 296) = 7;
      *(v0 + 304) = v54;
      sub_227FDB3CC();
      v56 = sub_22813999C();
      if (v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = swift_allocError();
        *v59 = 7;
        *(v59 + 8) = v54;
      }

      v60 = *(v0 + 408);
      v61 = *(v0 + 384);
      swift_willThrow();

      v55(v60, v61);
      v21 = v57;
    }

    else
    {
      v58 = *(v0 + 376);
      v44(v58, 1, 1, *(v0 + 384));
      sub_22812D31C(v58, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v63 = *(v0 + 456);
    v62 = *(v0 + 464);
    v65 = *(v0 + 440);
    v64 = *(v0 + 448);
    v66 = *(v0 + 424);
    v81 = *(v0 + 416);
    v82 = *(v0 + 408);
    v67 = *(v0 + 368);
    v83 = *(v0 + 400);
    v84 = *(v0 + 376);
    v68 = swift_allocObject();
    v68[2] = v21;
    v68[3] = sub_22812D380;
    v68[4] = v63;
    swift_beginAccess();
    v69 = *(v62 + 24);
    *(v62 + 16) = sub_22812D434;
    *(v62 + 24) = v68;

    v70 = v21;

    swift_willThrow();
    sub_2281324D4(v66, v67 + v64, v62);
    sub_22812AB78(v66, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    v23 = *(v0 + 360) + *(v4 + 24);
    sub_2280EA5AC(*v23, *(v23 + 8), *(v0 + 416));
    v24 = *(v0 + 416);
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    *(v0 + 216) = v4;
    *(v0 + 224) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
    sub_22812ABD8(v26, v27, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    sub_228111008((v0 + 192), v24);
    *(v0 + 472) = v28;
    v29 = v28;
    v30 = *(v0 + 360);
    v31 = *(v0 + 344);
    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 192));
    *(v0 + 256) = v4;
    *(v0 + 264) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
    v32 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    sub_22812ABD8(v30, v32, type metadata accessor for SummarizationRequestHandler.RequestInfo);
    type metadata accessor for SharedData();
    v33 = swift_allocObject();
    *(v0 + 480) = v33;
    type metadata accessor for SKAssetManager();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;

    swift_initStackObject();
    v34 = SKAssetManager.init()();
    v35 = type metadata accessor for FilterRules();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = FilterRules.init(assetManager:)(v34);
    v73 = *(v33 + 16);
    *(v33 + 16) = v38;

    v74 = *(v33 + 24);
    *(v33 + 24) = v17;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 336);
    v75 = *(v0 + 344);
    *(v0 + 320) = v33;
    v77 = swift_task_alloc();
    *(v0 + 488) = v77;
    v77[2] = v29;
    v77[3] = v76;
    v77[4] = v75;
    v77[5] = v0 + 232;
    v77[6] = v17;
    v78 = *(MEMORY[0x277D85A70] + 4);
    v79 = swift_task_alloc();
    *(v0 + 496) = v79;
    *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
    *v79 = v0;
    v79[1] = sub_228115D64;
    v80 = *(v0 + 328);

    return MEMORY[0x282200908](v80, v0 + 320, &unk_22813DF50, v77, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228115D64()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 512) = v0;

  v4 = *(v2 + 488);

  if (v0)
  {
    v5 = sub_2281163B0;
  }

  else
  {
    v5 = sub_228115E88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228115E88()
{
  v1 = *(v0 + 512);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 416);
  v5 = *(v0 + 344);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 232));

  sub_22812AB78(v4, type metadata accessor for SummarizationSession.Configuration);
  sub_2281395DC();
  if (v1)
  {
    v6 = v1;
    (*(*(*(v0 + 504) - 8) + 8))(*(v0 + 328));
    if (sub_22810D154(v1))
    {
      sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v1);
    }

    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    v9 = *(v0 + 376);
    *(v0 + 312) = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v11 = swift_dynamicCast();
    v12 = *(v8 + 56);
    if (v11)
    {
      v13 = *(v0 + 400);
      v14 = *(v0 + 408);
      v15 = *(v0 + 384);
      v16 = *(v0 + 392);
      v17 = *(v0 + 376);
      v12(v17, 0, 1, v15);
      (*(v16 + 32))(v14, v17, v15);
      v18 = *(v16 + 16);
      v18(v13, v14, v15);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v19 = swift_allocError();
      v18(v20, v13, v15);
      v21 = swift_allocObject();
      *(v21 + 16) = 7;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8);

      v23 = *(v16 + 8);
      v23(v13, v15);
      *(v0 + 296) = 7;
      *(v0 + 304) = v22;
      sub_227FDB3CC();
      v24 = sub_22813999C();
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = swift_allocError();
        *v34 = 7;
        *(v34 + 8) = v22;
      }

      v35 = *(v0 + 408);
      v36 = *(v0 + 384);
      swift_willThrow();

      v23(v35, v36);
      v6 = v25;
    }

    else
    {
      v33 = *(v0 + 376);
      v12(v33, 1, 1, *(v0 + 384));
      sub_22812D31C(v33, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v38 = *(v0 + 456);
    v37 = *(v0 + 464);
    v40 = *(v0 + 440);
    v39 = *(v0 + 448);
    v41 = *(v0 + 424);
    v47 = *(v0 + 416);
    v48 = *(v0 + 408);
    v42 = *(v0 + 368);
    v49 = *(v0 + 400);
    v50 = *(v0 + 376);
    v43 = swift_allocObject();
    v43[2] = v6;
    v43[3] = sub_22812D380;
    v43[4] = v38;
    swift_beginAccess();
    v44 = *(v37 + 24);
    *(v37 + 16) = sub_22812D434;
    *(v37 + 24) = v43;

    v45 = v6;

    swift_willThrow();
    sub_2281324D4(v41, v42 + v39, v37);
    sub_22812AB78(v41, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v32 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 456);
    v27 = *(v0 + 440);
    v28 = *(v0 + 424);
    v30 = *(v0 + 400);
    v29 = *(v0 + 408);
    v31 = *(v0 + 376);
    sub_2281324D4(v28, *(v0 + 368) + *(v0 + 448), *(v0 + 464));
    sub_22812AB78(v28, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_2281163B0()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 344);

  v3 = *(v0 + 512);
  v4 = *(v0 + 472);
  v5 = *(v0 + 416);

  sub_22812AB78(v5, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 232));
  if (sub_22810D154(v3))
  {
    sub_22812C558(*(v0 + 368) + OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger, *(v0 + 432), v3);
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 376);
  *(v0 + 312) = v3;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v12 = *(v0 + 400);
    v13 = *(v0 + 408);
    v14 = *(v0 + 384);
    v15 = *(v0 + 392);
    v16 = *(v0 + 376);
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v13, v16, v14);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v18 = swift_allocError();
    v17(v19, v12, v14);
    v20 = swift_allocObject();
    *(v20 + 16) = 7;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3B8);

    v22 = *(v15 + 8);
    v22(v12, v14);
    *(v0 + 296) = 7;
    *(v0 + 304) = v21;
    sub_227FDB3CC();
    v23 = sub_22813999C();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v26 = 7;
      *(v26 + 8) = v21;
    }

    v27 = *(v0 + 408);
    v28 = *(v0 + 384);
    swift_willThrow();

    v22(v27, v28);
    v3 = v24;
  }

  else
  {
    v25 = *(v0 + 376);
    v11(v25, 1, 1, *(v0 + 384));
    sub_22812D31C(v25, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 456);
  v29 = *(v0 + 464);
  v32 = *(v0 + 440);
  v31 = *(v0 + 448);
  v33 = *(v0 + 424);
  v40 = *(v0 + 416);
  v41 = *(v0 + 408);
  v34 = *(v0 + 368);
  v42 = *(v0 + 400);
  v43 = *(v0 + 376);
  v35 = swift_allocObject();
  v35[2] = v3;
  v35[3] = sub_22812D380;
  v35[4] = v30;
  swift_beginAccess();
  v36 = *(v29 + 24);
  *(v29 + 16) = sub_22812D434;
  *(v29 + 24) = v35;

  v37 = v3;

  swift_willThrow();
  sub_2281324D4(v33, v34 + v31, v29);
  sub_22812AB78(v33, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 112));

  v38 = *(v0 + 8);

  return v38();
}

uint64_t SummarizationRequestHandler.summarize(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[30] = v7;
  v8 = *(v7 - 8);
  v5[31] = v8;
  v9 = *(v8 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811693C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138F9C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = type metadata accessor for SKTextMessage();
  v5[53] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228118E94, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138F9C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = type metadata accessor for SKUserNotification();
  v5[53] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811A424, 0, 0);
}

{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[30] = v7;
  v8 = *(v7 - 8);
  v5[31] = v8;
  v9 = *(v8 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811B8FC, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138F9C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811DCD8, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138F9C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22811F15C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138C3C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = type metadata accessor for SKMailMessage();
  v5[53] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228121C84, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138C3C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = type metadata accessor for SKTextMessage();
  v5[53] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22812323C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138C3C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = type metadata accessor for SKNoteMessage();
  v5[53] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v16 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2281247F4, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138C3C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228125D7C, 0, 0);
}

{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[45] = v7;
  v8 = *(v7 - 8);
  v5[46] = v8;
  v9 = *(v8 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v10 = sub_228138C3C();
  v5[49] = v10;
  v11 = *(v10 - 8);
  v5[50] = v11;
  v12 = *(v11 + 64) + 15;
  v5[51] = swift_task_alloc();
  v13 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228127228, 0, 0);
}

uint64_t sub_22811693C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 280) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 288) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 296) = v7;
  *(v0 + 304) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = sub_22812D384;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v13 = *v11;
  v12 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v13, v12, inited);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *v18 = v0;
  v18[1] = sub_228116F84;
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 192);

  return sub_2281179CC(v23, v7, v21, v19, v20, v22);
}

uint64_t sub_228116F84()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2281175AC;
  }

  else
  {
    v3 = sub_228117098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228117098()
{
  v1 = *(v0 + 336);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 192);
    v4 = sub_228138F9C();
    (*(*(v4 - 8) + 8))(v3, v4);
    v5 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v9 = *(v0 + 232);
    sub_22812C558(*(v0 + 224) + *(v0 + 288), v6, v2);
    v10 = v2;
    sub_22812C1DC(v6, v5, v2);

    *(v0 + 184) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v8 + 56);
    if (v12)
    {
      v14 = *(v0 + 256);
      v15 = *(v0 + 264);
      v16 = *(v0 + 240);
      v17 = *(v0 + 248);
      v18 = *(v0 + 232);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 7;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF96D4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C0);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 168) = 7;
      *(v0 + 176) = v23;
      sub_227FDB3CC();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v38 = 7;
        *(v38 + 8) = v23;
      }

      v39 = *(v0 + 264);
      v40 = *(v0 + 240);
      swift_willThrow();

      v24(v39, v40);
      v2 = v26;
    }

    else
    {
      v37 = *(v0 + 232);
      v13(v37, 1, 1, *(v0 + 240));
      sub_22812D31C(v37, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v41 = *(v0 + 312);
    v42 = *(v0 + 320);
    v44 = *(v0 + 296);
    v43 = *(v0 + 304);
    v45 = *(v0 + 272);
    v51 = *(v0 + 264);
    v52 = *(v0 + 256);
    v46 = *(v0 + 224);
    v54 = *(v0 + 232);
    v47 = swift_allocObject();
    v47[2] = v2;
    v47[3] = sub_22812D384;
    v47[4] = v41;
    swift_beginAccess();
    v48 = *(v42 + 24);
    *(v42 + 16) = sub_22812D438;
    *(v42 + 24) = v47;

    v49 = v2;

    swift_willThrow();
    sub_2281324D4(v45, v46 + v43, v42);
    sub_22812AB78(v45, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
    v29 = *(v0 + 296);
    v30 = *(v0 + 304);
    v31 = *(v0 + 280);
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);
    v34 = *(v0 + 256);
    v35 = *(v0 + 224);
    v53 = *(v0 + 232);
    sub_22812BF3C(v35 + *(v0 + 288), v31);
    sub_22812C1DC(v31, v29, 0);
    sub_2281324D4(v32, v35 + v30, v28);
    sub_22812AB78(v32, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_2281175AC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  sub_22812C558(*(v0 + 224) + *(v0 + 288), v3, v1);
  v7 = v1;
  sub_22812C1DC(v3, v2, v1);

  *(v0 + 184) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v9 = swift_dynamicCast();
  v10 = *(v5 + 56);
  if (v9)
  {
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = *(v0 + 232);
    v10(v15, 0, 1, v13);
    (*(v14 + 32))(v12, v15, v13);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v17 = swift_allocError();
    v16(v18, v11, v13);
    v19 = swift_allocObject();
    *(v19 + 16) = 7;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C0);

    v21 = *(v14 + 8);
    v21(v11, v13);
    *(v0 + 168) = 7;
    *(v0 + 176) = v20;
    sub_227FDB3CC();
    v22 = sub_22813999C();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = swift_allocError();
      *v25 = 7;
      *(v25 + 8) = v20;
    }

    v26 = *(v0 + 264);
    v27 = *(v0 + 240);
    swift_willThrow();

    v21(v26, v27);
    v1 = v23;
  }

  else
  {
    v24 = *(v0 + 232);
    v10(v24, 1, 1, *(v0 + 240));
    sub_22812D31C(v24, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v28 = *(v0 + 312);
  v29 = *(v0 + 320);
  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v32 = *(v0 + 272);
  v39 = *(v0 + 264);
  v40 = *(v0 + 256);
  v33 = *(v0 + 224);
  v41 = *(v0 + 232);
  v34 = swift_allocObject();
  v34[2] = v1;
  v34[3] = sub_22812D384;
  v34[4] = v28;
  swift_beginAccess();
  v35 = *(v29 + 24);
  *(v29 + 16) = sub_22812D438;
  *(v29 + 24) = v34;

  v36 = v1;

  swift_willThrow();
  sub_2281324D4(v32, v33 + v30, v29);
  sub_22812AB78(v32, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2281179CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_228138F9C();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for SKMailMessage();
  v6[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SummarizationSession.Configuration() - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298) - 8) + 64) + 15;
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228117BBC, 0, 0);
}

uint64_t sub_228117BBC()
{
  v1 = *(v0 + 168);
  v2 = MEMORY[0x22AAB0E90]();
  v3 = sub_228105284(v2);
  *(v0 + 296) = v3;
  v13 = v3;
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 264);
  v17 = *(v0 + 272);
  v18 = *(v0 + 248);
  v71 = *(v0 + 256);
  v72 = *(v0 + 152);

  v19 = sub_228136DBC();
  v20 = *(*(v19 - 8) + 56);
  v20(v14, 1, 1, v19);
  v20(v15, 1, 1, v19);
  v20(v17, 1, 1, v19);
  v20(v16, 1, 1, v19);
  v21 = sub_228138E0C();
  (*(*(v21 - 8) + 56))(v71, 1, 1, v21);
  v22 = sub_228138DDC();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  result = sub_228138F4C();
  v24 = *(v13 + 16);
  *(v0 + 304) = v24;
  if (!v24)
  {
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 232);
    v36 = *(v0 + 216);

    v37 = *(v0 + 8);
LABEL_2:

    return v37();
  }

  *(v0 + 312) = 0;
  v25 = *(v0 + 296);
  if (!*(v25 + 16))
  {
    __break(1u);
    return result;
  }

  v26 = *(v25 + 32);
  sub_2281395DC();
  v38 = *(v0 + 168);
  v39 = sub_2281388FC();
  if (v26 == 2)
  {
    if (v39)
    {
      v44 = *(v0 + 296);

      v45 = swift_allocObject();
      *(v45 + 16) = 24;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      v42 = sub_22812D3FC;
      v43 = 861;
      goto LABEL_15;
    }

    v50 = *(v0 + 240);
    v51 = *(v0 + 184);
    v52 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v51 + *(v52 + 24)), *(v51 + *(v52 + 24) + 8), v50);
  }

  else
  {
    if (v26 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 352) = v26;
      sub_2281398EC();
      v48 = *(v0 + 136);
      v49 = *(v0 + 144);
      return sub_2281398FC();
    }

    if (v39)
    {
      v40 = *(v0 + 296);

      v41 = swift_allocObject();
      *(v41 + 16) = 24;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      v42 = sub_22812D400;
      v43 = 852;
LABEL_15:
      v46 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v43, v42);
      sub_227FDB3CC();
      swift_allocError();
      *v47 = 24;
      *(v47 + 8) = v46;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      v5 = *(v0 + 280);
      v4 = *(v0 + 288);
      v7 = *(v0 + 264);
      v6 = *(v0 + 272);
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);
      v11 = *(v0 + 232);
      v10 = *(v0 + 240);
      v12 = *(v0 + 216);

      v37 = *(v0 + 8);
      goto LABEL_2;
    }

    sub_2280EA2E4(*(v0 + 240));
  }

  v53 = *(v0 + 232);
  v54 = *(v0 + 240);
  v56 = *(v0 + 184);
  v55 = *(v0 + 192);
  v57 = *(v0 + 176);
  v58 = sub_22813899C();
  (*(*(v58 - 8) + 16))(v53, v55, v58);
  v59 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v59;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v56, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v54);
  *(v0 + 320) = v61;
  v63 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 184);
  v65 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = v63;
  *(v0 + 88) = &protocol witness table for SKMailMessage;
  v66 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22812ABD8(v62, v66, type metadata accessor for SKMailMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v67 = swift_allocObject();
  *(v0 + 328) = v67;
  *(v67 + 16) = xmmword_22813A4B0;
  *(v67 + 32) = v26;
  *(v0 + 120) = v59;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v68 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v64, v68, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v69 = swift_task_alloc();
  *(v0 + 336) = v69;
  *v69 = v0;
  v69[1] = sub_22811836C;
  v70 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v70, v0 + 56, v67, v0 + 96, v65);
}

uint64_t sub_22811836C()
{
  v2 = *v1;
  v3 = (*v1)[42];
  v9 = *v1;
  (*v1)[43] = v0;

  if (v0)
  {
    v4 = v2[41];
    v5 = v2[37];

    v6 = sub_228118B5C;
  }

  else
  {
    v7 = v2[41];

    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 12);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 7);
    v6 = sub_2281184AC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2281184AC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = *(v0 + 152);
  v9 = *(v0 + 312) + 1;
  Summary.merge(_:)(v5);

  (*(v6 + 8))(v5, v7);
  sub_22812AB78(v4, type metadata accessor for SKMailMessage);
  result = sub_22812AB78(v3, type metadata accessor for SummarizationSession.Configuration);
  if (v9 == v2)
  {
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 232);
    v20 = *(v0 + 216);

    v21 = *(v0 + 8);
LABEL_18:

    return v21();
  }

  v22 = *(v0 + 344);
  v23 = *(v0 + 312) + 1;
  *(v0 + 312) = v23;
  v24 = *(v0 + 296);
  if (v23 >= *(v24 + 16))
  {
    __break(1u);
    return result;
  }

  v25 = *(v24 + v23 + 32);
  sub_2281395DC();
  if (v22)
  {
    v26 = *(v0 + 296);
    (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));

LABEL_17:
    v53 = *(v0 + 280);
    v52 = *(v0 + 288);
    v55 = *(v0 + 264);
    v54 = *(v0 + 272);
    v57 = *(v0 + 248);
    v56 = *(v0 + 256);
    v59 = *(v0 + 232);
    v58 = *(v0 + 240);
    v60 = *(v0 + 216);

    v21 = *(v0 + 8);
    goto LABEL_18;
  }

  v27 = *(v0 + 168);
  v28 = sub_2281388FC();
  if (v25 == 2)
  {
    if (v28)
    {
      v33 = *(v0 + 296);

      v34 = swift_allocObject();
      *(v34 + 16) = 24;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0;
      v31 = sub_22812D3FC;
      v32 = 861;
      goto LABEL_12;
    }

    v39 = *(v0 + 240);
    v40 = *(v0 + 184);
    v41 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
    sub_2280EA5AC(*(v40 + *(v41 + 24)), *(v40 + *(v41 + 24) + 8), v39);
  }

  else
  {
    if (v25 != 1)
    {
      sub_22813988C();
      *(v0 + 136) = 0;
      *(v0 + 144) = 0xE000000000000000;
      MEMORY[0x22AAB1970](0xD000000000000021, 0x8000000228148E30);
      *(v0 + 352) = v25;
      sub_2281398EC();
      v37 = *(v0 + 136);
      v38 = *(v0 + 144);
      return sub_2281398FC();
    }

    if (v28)
    {
      v29 = *(v0 + 296);

      v30 = swift_allocObject();
      *(v30 + 16) = 24;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      v31 = sub_22812D400;
      v32 = 852;
LABEL_12:
      v35 = sub_227FF96D4(0, 0xD00000000000006DLL, 0x8000000228148D10, v32, v31);
      sub_227FDB3CC();
      swift_allocError();
      *v36 = 24;
      *(v36 + 8) = v35;
      swift_willThrow();
      (*(*(v0 + 208) + 8))(*(v0 + 152), *(v0 + 200));
      goto LABEL_17;
    }

    sub_2280EA2E4(*(v0 + 240));
  }

  v42 = *(v0 + 232);
  v43 = *(v0 + 240);
  v45 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 176);
  v47 = sub_22813899C();
  (*(*(v47 - 8) + 16))(v42, v44, v47);
  v48 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 40) = v48;
  *(v0 + 48) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_22812ABD8(v45, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_228111008((v0 + 16), v43);
  *(v0 + 320) = v50;
  v51 = *(v0 + 232);
  v61 = *(v0 + 224);
  v62 = *(v0 + 184);
  v63 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  *(v0 + 80) = v61;
  *(v0 + 88) = &protocol witness table for SKMailMessage;
  v64 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22812ABD8(v51, v64, type metadata accessor for SKMailMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB30, &qword_22813DA78);
  v65 = swift_allocObject();
  *(v0 + 328) = v65;
  *(v65 + 16) = xmmword_22813A4B0;
  *(v65 + 32) = v25;
  *(v0 + 120) = v48;
  *(v0 + 128) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v66 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_22812ABD8(v62, v66, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v67 = swift_task_alloc();
  *(v0 + 336) = v67;
  *v67 = v0;
  v67[1] = sub_22811836C;
  v68 = *(v0 + 216);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v68, v0 + 56, v65, v0 + 96, v63);
}

uint64_t sub_228118B5C()
{
  v1 = v0[40];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[19];

  sub_22812AB78(v2, type metadata accessor for SKMailMessage);
  sub_22812AB78(v3, type metadata accessor for SummarizationSession.Configuration);
  (*(v5 + 8))(v6, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm_13(v0 + 7);
  v7 = v0[43];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[27];

  v17 = v0[1];

  return v17();
}

uint64_t sub_228118E94()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v7;
  *(v0 + 472) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = sub_22812D388;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v38 = v7;
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 336);
  v39 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v22 = sub_228138AAC();
  (*(*(v22 - 8) + 16))(v18, v21, v22);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v19);
  sub_228111008((v0 + 144), v19);
  *(v0 + 496) = v24;
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  v27 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = v26;
  *(v0 + 216) = &protocol witness table for SKTextMessage;
  v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  v29 = sub_22812ABD8(v25, v28, type metadata accessor for SKTextMessage);
  v30 = MEMORY[0x22AAB0FD0](v29);
  v31 = sub_228105284(v30);
  *(v0 + 504) = v31;
  v32 = v31;
  v33 = *(v0 + 336);

  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v34 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v33, v34, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v35 = swift_task_alloc();
  *(v0 + 512) = v35;
  *v35 = v0;
  v35[1] = sub_22811970C;
  v36 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v36, v0 + 184, v32, v0 + 224, v38);
}

uint64_t sub_22811970C()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v7 = *v1;
  (*v1)[65] = v0;

  v4 = v2[63];

  if (v0)
  {
    v5 = sub_228119DC4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_228119840;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228119840()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 312);

  sub_22812AB78(v3, type metadata accessor for SKTextMessage);
  (*(v5 + 32))(v7, v4, v6);
  sub_2281395DC();
  if (v1)
  {
    v8 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v9 = *(v0 + 464);
    v10 = *(v0 + 448);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v10, v8);
    v14 = v8;
    sub_22812C1DC(v10, v9, v8);

    *(v0 + 304) = v8;
    v15 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v16 = swift_dynamicCast();
    v17 = *(v12 + 56);
    if (v16)
    {
      v18 = *(v0 + 376);
      v19 = *(v0 + 384);
      v20 = *(v0 + 360);
      v21 = *(v0 + 368);
      v22 = *(v0 + 352);
      v17(v22, 0, 1, v20);
      (*(v21 + 32))(v19, v22, v20);
      v23 = *(v21 + 16);
      v23(v18, v19, v20);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v24 = swift_allocError();
      v23(v25, v18, v20);
      v26 = swift_allocObject();
      *(v26 + 16) = 7;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      v27 = sub_227FF96D4(v24, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C4);

      v28 = *(v21 + 8);
      v28(v18, v20);
      *(v0 + 288) = 7;
      *(v0 + 296) = v27;
      sub_227FDB3CC();
      v29 = sub_22813999C();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = swift_allocError();
        *v42 = 7;
        *(v42 + 8) = v27;
      }

      v43 = *(v0 + 384);
      v44 = *(v0 + 360);
      swift_willThrow();

      v28(v43, v44);
      v8 = v30;
    }

    else
    {
      v41 = *(v0 + 352);
      v17(v41, 1, 1, *(v0 + 360));
      sub_22812D31C(v41, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v45 = *(v0 + 480);
    v46 = *(v0 + 488);
    v47 = *(v0 + 464);
    v48 = *(v0 + 472);
    v49 = *(v0 + 440);
    v55 = *(v0 + 432);
    v56 = *(v0 + 416);
    v58 = *(v0 + 408);
    v60 = *(v0 + 384);
    v50 = *(v0 + 344);
    v62 = *(v0 + 376);
    v64 = *(v0 + 352);
    v51 = swift_allocObject();
    v51[2] = v8;
    v51[3] = sub_22812D388;
    v51[4] = v45;
    swift_beginAccess();
    v52 = *(v46 + 24);
    *(v46 + 16) = sub_22812D43C;
    *(v46 + 24) = v51;

    v53 = v8;

    swift_willThrow();
    sub_2281324D4(v49, v50 + v48, v46);
    sub_22812AB78(v49, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v40 = *(v0 + 8);
  }

  else
  {
    v32 = *(v0 + 480);
    v31 = *(v0 + 488);
    v34 = *(v0 + 464);
    v33 = *(v0 + 472);
    v35 = *(v0 + 448);
    v36 = *(v0 + 432);
    v37 = *(v0 + 440);
    v38 = *(v0 + 416);
    v57 = *(v0 + 408);
    v59 = *(v0 + 384);
    v61 = *(v0 + 376);
    v39 = *(v0 + 344);
    v63 = *(v0 + 352);
    sub_22812BF3C(v39 + *(v0 + 456), v35);
    sub_22812C1DC(v35, v34, 0);
    sub_2281324D4(v37, v39 + v33, v31);
    sub_22812AB78(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_228119DC4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKTextMessage);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v3 = *(v0 + 520);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v5, v3);
  v9 = v3;
  sub_22812C1DC(v5, v4, v3);

  *(v0 + 304) = v3;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 368);
    v17 = *(v0 + 352);
    v12(v17, 0, 1, v15);
    (*(v16 + 32))(v14, v17, v15);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v18(v20, v13, v15);
    v21 = swift_allocObject();
    *(v21 + 16) = 7;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C4);

    v23 = *(v16 + 8);
    v23(v13, v15);
    *(v0 + 288) = 7;
    *(v0 + 296) = v22;
    sub_227FDB3CC();
    v24 = sub_22813999C();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v22;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 360);
    swift_willThrow();

    v23(v28, v29);
    v3 = v25;
  }

  else
  {
    v26 = *(v0 + 352);
    v12(v26, 1, 1, *(v0 + 360));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 472);
  v34 = *(v0 + 440);
  v41 = *(v0 + 432);
  v42 = *(v0 + 416);
  v43 = *(v0 + 408);
  v44 = *(v0 + 384);
  v35 = *(v0 + 344);
  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  v36 = swift_allocObject();
  v36[2] = v3;
  v36[3] = sub_22812D388;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_22812D43C;
  *(v31 + 24) = v36;

  v38 = v3;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v33, v31);
  sub_22812AB78(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22811A424()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for SummarizationRequestHandler.RequestInfo(0);
  *(v0 + 88) = v4;
  *(v0 + 96) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 448) = boxed_opaque_existential_1;
  sub_22812ABD8(v2, boxed_opaque_existential_1, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v6 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  *(v0 + 456) = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_logger;
  sub_22812BC80(v3 + v6, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v7 = sub_2280D5C74();
  v8 = OBJC_IVAR____TtC16SummarizationKit27SummarizationRequestHandler_requestSignpost;
  *(v0 + 464) = v7;
  *(v0 + 472) = v8;
  sub_22812CAE4(v0 + 64, v0 + 104);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  sub_227FFA05C((v0 + 104), v9 + 16);
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = sub_22812D38C;
  *(v10 + 24) = v9;

  sub_2281324C4(v3 + v8, v10);
  v11 = (boxed_opaque_existential_1 + *(v4 + 28));
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  v15 = (boxed_opaque_existential_1 + *(v4 + 24));
  v16 = v15[1];
  *(inited + 32) = *v15;
  *(inited + 40) = v16;
  v17 = *(v3 + 16);

  sub_228104E70(v12, v13, inited);
  v38 = v7;
  v18 = *(v0 + 432);
  v19 = *(v0 + 416);
  v20 = *(v0 + 336);
  v39 = *(v0 + 344);
  v21 = *(v0 + 320);

  swift_setDeallocating();
  sub_227FE5D7C(inited + 32);
  v22 = sub_228138B8C();
  (*(*(v22 - 8) + 16))(v18, v21, v22);
  *(v0 + 168) = v4;
  *(v0 + 176) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22812ABD8(v20, v23, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  sub_2280EA2E4(v19);
  sub_228111008((v0 + 144), v19);
  *(v0 + 496) = v24;
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  v27 = *(v0 + 328);
  sub_22812AB78(*(v0 + 416), type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 144));
  *(v0 + 208) = v26;
  *(v0 + 216) = &protocol witness table for SKUserNotification;
  v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
  v29 = sub_22812ABD8(v25, v28, type metadata accessor for SKUserNotification);
  v30 = MEMORY[0x22AAB10E0](v29);
  v31 = sub_228105284(v30);
  *(v0 + 504) = v31;
  v32 = v31;
  v33 = *(v0 + 336);

  *(v0 + 248) = v4;
  *(v0 + 256) = &protocol witness table for SummarizationRequestHandler.RequestInfo;
  v34 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
  sub_22812ABD8(v33, v34, type metadata accessor for SummarizationRequestHandler.RequestInfo);
  v35 = swift_task_alloc();
  *(v0 + 512) = v35;
  *v35 = v0;
  v35[1] = sub_22811AC9C;
  v36 = *(v0 + 408);

  return SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(v36, v0 + 184, v32, v0 + 224, v38);
}

uint64_t sub_22811AC9C()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v7 = *v1;
  (*v1)[65] = v0;

  v4 = v2[63];

  if (v0)
  {
    v5 = sub_22811B354;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 28);
    __swift_destroy_boxed_opaque_existential_1Tm_13(v2 + 23);
    v5 = sub_22811ADD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22811ADD0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 312);

  sub_22812AB78(v3, type metadata accessor for SKUserNotification);
  (*(v5 + 32))(v7, v4, v6);
  sub_2281395DC();
  if (v1)
  {
    v8 = v1;
    (*(*(v0 + 400) + 8))(*(v0 + 312), *(v0 + 392));
    v9 = *(v0 + 464);
    v10 = *(v0 + 448);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = *(v0 + 352);
    sub_22812C558(*(v0 + 344) + *(v0 + 456), v10, v8);
    v14 = v8;
    sub_22812C1DC(v10, v9, v8);

    *(v0 + 304) = v8;
    v15 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v16 = swift_dynamicCast();
    v17 = *(v12 + 56);
    if (v16)
    {
      v18 = *(v0 + 376);
      v19 = *(v0 + 384);
      v20 = *(v0 + 360);
      v21 = *(v0 + 368);
      v22 = *(v0 + 352);
      v17(v22, 0, 1, v20);
      (*(v21 + 32))(v19, v22, v20);
      v23 = *(v21 + 16);
      v23(v18, v19, v20);
      sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v24 = swift_allocError();
      v23(v25, v18, v20);
      v26 = swift_allocObject();
      *(v26 + 16) = 7;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0;
      v27 = sub_227FF96D4(v24, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C8);

      v28 = *(v21 + 8);
      v28(v18, v20);
      *(v0 + 288) = 7;
      *(v0 + 296) = v27;
      sub_227FDB3CC();
      v29 = sub_22813999C();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = swift_allocError();
        *v42 = 7;
        *(v42 + 8) = v27;
      }

      v43 = *(v0 + 384);
      v44 = *(v0 + 360);
      swift_willThrow();

      v28(v43, v44);
      v8 = v30;
    }

    else
    {
      v41 = *(v0 + 352);
      v17(v41, 1, 1, *(v0 + 360));
      sub_22812D31C(v41, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v45 = *(v0 + 480);
    v46 = *(v0 + 488);
    v47 = *(v0 + 464);
    v48 = *(v0 + 472);
    v49 = *(v0 + 440);
    v55 = *(v0 + 432);
    v56 = *(v0 + 416);
    v58 = *(v0 + 408);
    v60 = *(v0 + 384);
    v50 = *(v0 + 344);
    v62 = *(v0 + 376);
    v64 = *(v0 + 352);
    v51 = swift_allocObject();
    v51[2] = v8;
    v51[3] = sub_22812D38C;
    v51[4] = v45;
    swift_beginAccess();
    v52 = *(v46 + 24);
    *(v46 + 16) = sub_22812D440;
    *(v46 + 24) = v51;

    v53 = v8;

    swift_willThrow();
    sub_2281324D4(v49, v50 + v48, v46);
    sub_22812AB78(v49, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v40 = *(v0 + 8);
  }

  else
  {
    v32 = *(v0 + 480);
    v31 = *(v0 + 488);
    v34 = *(v0 + 464);
    v33 = *(v0 + 472);
    v35 = *(v0 + 448);
    v36 = *(v0 + 432);
    v37 = *(v0 + 440);
    v38 = *(v0 + 416);
    v57 = *(v0 + 408);
    v59 = *(v0 + 384);
    v61 = *(v0 + 376);
    v39 = *(v0 + 344);
    v63 = *(v0 + 352);
    sub_22812BF3C(v39 + *(v0 + 456), v35);
    sub_22812C1DC(v35, v34, 0);
    sub_2281324D4(v37, v39 + v33, v31);
    sub_22812AB78(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_22811B354()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 432);

  sub_22812AB78(v2, type metadata accessor for SKUserNotification);
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 184));
  v3 = *(v0 + 520);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 360);
  v7 = *(v0 + 368);
  v8 = *(v0 + 352);
  sub_22812C558(*(v0 + 344) + *(v0 + 456), v5, v3);
  v9 = v3;
  sub_22812C1DC(v5, v4, v3);

  *(v0 + 304) = v3;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if (v11)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 360);
    v16 = *(v0 + 368);
    v17 = *(v0 + 352);
    v12(v17, 0, 1, v15);
    (*(v16 + 32))(v14, v17, v15);
    v18 = *(v16 + 16);
    v18(v13, v14, v15);
    sub_227FCAF8C(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v19 = swift_allocError();
    v18(v20, v13, v15);
    v21 = swift_allocObject();
    *(v21 + 16) = 7;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    v22 = sub_227FF96D4(v19, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_22812D3C8);

    v23 = *(v16 + 8);
    v23(v13, v15);
    *(v0 + 288) = 7;
    *(v0 + 296) = v22;
    sub_227FDB3CC();
    v24 = sub_22813999C();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v27 = 7;
      *(v27 + 8) = v22;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 360);
    swift_willThrow();

    v23(v28, v29);
    v3 = v25;
  }

  else
  {
    v26 = *(v0 + 352);
    v12(v26, 1, 1, *(v0 + 360));
    sub_22812D31C(v26, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 488);
  v32 = *(v0 + 464);
  v33 = *(v0 + 472);
  v34 = *(v0 + 440);
  v41 = *(v0 + 432);
  v42 = *(v0 + 416);
  v43 = *(v0 + 408);
  v44 = *(v0 + 384);
  v35 = *(v0 + 344);
  v45 = *(v0 + 376);
  v46 = *(v0 + 352);
  v36 = swift_allocObject();
  v36[2] = v3;
  v36[3] = sub_22812D38C;
  v36[4] = v30;
  swift_beginAccess();
  v37 = *(v31 + 24);
  *(v31 + 16) = sub_22812D440;
  *(v31 + 24) = v36;

  v38 = v3;

  swift_willThrow();
  sub_2281324D4(v34, v35 + v33, v31);
  sub_22812AB78(v34, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}