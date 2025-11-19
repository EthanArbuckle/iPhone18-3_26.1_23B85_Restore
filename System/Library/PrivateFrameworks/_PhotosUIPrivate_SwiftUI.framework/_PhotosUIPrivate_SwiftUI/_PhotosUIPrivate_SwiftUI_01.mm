uint64_t sub_29EC7C764(uint64_t a1)
{
  v2 = sub_29EC7ED74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42[9] = *(a1 + 25);
  v31 = v3;
  v32 = a1;
  *v42 = *(a1 + 16);
  v8 = *&v42[8];
  v7 = *v42;
  v9 = *&v42[16];
  v10 = v42[24];
  if (v42[24] == 1)
  {
    sub_29EC78B1C(*v42, *&v42[8]);
    v11 = v9;
    v12 = v8;
    v13 = v7;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v14 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v42, &qword_2A1891488, &qword_29EC81DC8);
    (*(v3 + 8))(v6, v2);
    v13 = v39;
    v12 = v40;
    v11 = v41;
    if (!v40)
    {
      goto LABEL_10;
    }
  }

  v30 = v9;
  v15 = v2;
  v39 = v13;
  v40 = v12;
  v41 = v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v34);
  v16 = v34;

  v17 = *(v32 + 80);
  result = sub_29EC7E430(v17);
  if (!v19)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = sub_29EC7CC18(result, v19, v16);

  v2 = v15;
  v9 = v30;
  if (v20)
  {
    if (v10)
    {
      result = sub_29EC78B1C(v7, v8);
      if (!v8)
      {
        return result;
      }
    }

    else
    {

      sub_29EC7F2B4();
      v25 = sub_29EC7EF14();
      sub_29EC7EB84();

      sub_29EC7ED64();
      swift_getAtKeyPath();
      sub_29EC7E678(v42, &qword_2A1891488, &qword_29EC81DC8);
      result = (*(v31 + 8))(v6, v2);
      v7 = v39;
      v8 = v40;
      v9 = v41;
      if (!v40)
      {
        return result;
      }
    }

    result = sub_29EC7E430(v17);
    if (v26)
    {
      v27 = result;
      v28 = v26;
      v39 = v7;
      v40 = v8;
      v41 = v9;
      MEMORY[0x29EDAEF70](&v38, v29);
      sub_29EC7DF90(v27, v28);

      v34 = v7;
      v35 = v8;
      v36 = v9;
      v37 = v38;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_10:
  if (v10)
  {
    result = sub_29EC78B1C(v7, v8);
    if (!v8)
    {
      return result;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v21 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v42, &qword_2A1891488, &qword_29EC81DC8);
    result = (*(v31 + 8))(v6, v2);
    v7 = v39;
    v8 = v40;
    v9 = v41;
    if (!v40)
    {
      return result;
    }
  }

  result = sub_29EC7E430(*(v32 + 80));
  if (!v22)
  {
    goto LABEL_22;
  }

  v23 = result;
  v24 = v22;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v37);
  sub_29EC6C140(&v38, v23, v24);

  v34 = v7;
  v35 = v8;
  v36 = v9;
  v33 = v37;
LABEL_19:
  sub_29EC7F174();
}

BOOL sub_29EC7CC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_29EC7F4E4();
  sub_29EC7F224();
  v7 = sub_29EC7F4F4();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_29EC7F4A4();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_29EC7CD04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29EC7ED74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v25 + 9) = *(a1 + 25);
  v25[0] = *(a1 + 16);
  v9 = *&v25[0];
  if (BYTE8(v25[1]) == 1)
  {
    v10 = *(&v25[0] + 1);
    v11 = *&v25[1];
    sub_29EC78B1C(*&v25[0], *(&v25[0] + 1));
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v12 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v25, &qword_2A1891488, &qword_29EC81DC8);
    (*(v5 + 8))(v8, v4);
    v9 = v22;
    v10 = v23;
    v11 = v24;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
  MEMORY[0x29EDAEF70](&v21, v13);
  v14 = v21;

  result = sub_29EC7E430(*(a1 + 80));
  if (v16)
  {
    v17 = sub_29EC7CC18(result, v16, v14);

    if (v17)
    {
      v18 = 1;
LABEL_9:
      *a2 = sub_29EC7F1C4();
      a2[1] = v19;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914A8, &unk_29EC81E10);
      return sub_29EC7CF48(v18, (a2 + *(v20 + 44)));
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EC7CF48@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B0, &qword_29EC81E20);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = (&v28 - v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B8, &unk_29EC81E28);
  v8 = *(*(v28 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v28 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v28 - v15;
  v17 = sub_29EC7F094();
  v18 = sub_29EC7F0B4();
  v19 = (v7 + *(v4 + 44));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891230, &qword_29EC80DF0) + 28);
  v21 = *MEMORY[0x29EDBCAE0];
  v22 = sub_29EC7F0E4();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v7 = v18;
  if (a1)
  {
    v23 = sub_29EC7F0A4();
  }

  else
  {
    v23 = sub_29EC7F074();
  }

  v24 = v23;
  sub_29EC7DEC0(v7, v14, &qword_2A18914B0, &qword_29EC81E20);
  *&v14[*(v28 + 36)] = v24;
  sub_29EC7DEC0(v14, v16, &qword_2A18914B8, &unk_29EC81E28);
  sub_29EC7E4BC(v16, v11, &qword_2A18914B8, &unk_29EC81E28);
  v25 = v29;
  *v29 = v17;
  *(v25 + 4) = 256;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914C0, &qword_29EC81E68);
  sub_29EC7E4BC(v11, v25 + *(v26 + 48), &qword_2A18914B8, &unk_29EC81E28);

  sub_29EC7E678(v16, &qword_2A18914B8, &unk_29EC81E28);
  sub_29EC7E678(v11, &qword_2A18914B8, &unk_29EC81E28);
}

uint64_t sub_29EC7D218(uint64_t a1)
{
  v2 = sub_29EC7ED74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v21 = *(a1 + 48);
  *&v21[9] = *(a1 + 57);
  v7 = *v21;
  if (v21[24] == 1)
  {
    v8 = *&v21[8];
    v9 = *&v21[16];
    result = sub_29EC78B1C(*v21, *&v21[8]);
    if (!v8)
    {
      return result;
    }
  }

  else
  {

    sub_29EC7F2B4();
    v11 = sub_29EC7EF14();
    sub_29EC7EB84();

    sub_29EC7ED64();
    swift_getAtKeyPath();
    sub_29EC7E678(v21, &qword_2A1891488, &qword_29EC81DC8);
    result = (*(v3 + 8))(v6, v2);
    v7 = v17;
    v8 = v18;
    v9 = v19;
    if (!v18)
    {
      return result;
    }
  }

  result = sub_29EC7E430(*(a1 + 80));
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891350, &qword_29EC814F0);
    MEMORY[0x29EDAEF70](&v16);
    sub_29EC6C140(&v20, v13, v14);

    v15[1] = v7;
    v15[2] = v8;
    v15[3] = v9;
    v15[0] = v16;
    sub_29EC7F174();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EC7D440@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_29EC7F1C4();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914C8, &qword_29EC81E70);
  return sub_29EC7D488(a1 + *(v3 + 44));
}

uint64_t sub_29EC7D488@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B8, &unk_29EC81E28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = (&v32 - v3);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914D0, &qword_29EC81E78);
  v33 = *(v40 - 8);
  v5 = v33;
  v6 = *(v33 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v40);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v32 - v10;
  v39 = sub_29EC7F084();
  v38 = sub_29EC7F094();
  sub_29EC7EBD4();
  v12 = v43;
  v35 = v44;
  v13 = v45;
  v34 = v45;
  v14 = v46;
  v42 = v47;
  v15 = v48;
  v37 = sub_29EC7F1C4();
  v36 = v16;
  v17 = sub_29EC7F0B4();
  v18 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914B0, &qword_29EC81E20) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1891230, &qword_29EC80DF0) + 28);
  v20 = *MEMORY[0x29EDBCAD8];
  v21 = sub_29EC7F0E4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v4 = v17;
  *(v4 + *(v1 + 36)) = sub_29EC7F094();
  sub_29EC7E508();
  v32 = v11;
  sub_29EC7F024();
  sub_29EC7E678(v4, &qword_2A18914B8, &unk_29EC81E28);
  v22 = *(v5 + 16);
  v23 = v40;
  v22(v9, v11, v40);
  __src[0] = v12 * 0.5;
  __src[1] = v12;
  LODWORD(v5) = v35;
  *&__src[2] = __PAIR64__(v13, v35);
  __src[3] = v14;
  __src[4] = v42;
  __src[5] = v15;
  v24 = v38;
  *&__src[6] = v38;
  LOWORD(__src[7]) = 256;
  *(&__src[7] + 2) = v51;
  HIWORD(__src[7]) = v52;
  v25 = v39;
  *&__src[8] = v39;
  LOWORD(__src[9]) = 256;
  HIWORD(__src[9]) = v50;
  *(&__src[9] + 2) = v49;
  v26 = v37;
  v27 = v36;
  *&__src[10] = v37;
  __src[11] = v36;
  v28 = v41;
  memcpy(v41, __src, 0x60uLL);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18914F8, &qword_29EC81E88);
  v22(&v28[*(v29 + 48)], v9, v23);
  sub_29EC7E4BC(__src, v54, &qword_2A1891500, &qword_29EC81E90);
  v30 = *(v33 + 8);
  v30(v32, v23);
  v30(v9, v23);
  v54[0] = v12 * 0.5;
  v54[1] = v12;
  v55 = v5;
  v56 = v34;
  v57 = v14;
  v58 = v42;
  v59 = v15;
  v60 = v24;
  v61 = 256;
  v62 = v51;
  v63 = v52;
  v64 = v25;
  v65 = 256;
  v66 = v49;
  v67 = v50;
  v68 = v26;
  v69 = v27;
  return sub_29EC7E678(v54, &qword_2A1891500, &qword_29EC81E90);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVyShySSGGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_24_PhotosUIPrivate_SwiftUI0A29ComponentItemSelectionHandlerVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29EC7DA38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_29EC7DA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EC7DB2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_29EC7DB6C(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t sub_29EC7DC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_29EC7DC0C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_29EC7DC0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_29EC7DC9C()
{
  result = qword_2A1891400;
  if (!qword_2A1891400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18913F0, &qword_29EC81D68);
    sub_29EC7DD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891400);
  }

  return result;
}

unint64_t sub_29EC7DD28()
{
  result = qword_2A1891408;
  if (!qword_2A1891408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891410, &qword_29EC81D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891408);
  }

  return result;
}

uint64_t sub_29EC7DDAC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  return v1();
}

unint64_t sub_29EC7DDD4()
{
  result = qword_2A1891420;
  if (!qword_2A1891420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18913D8, &qword_29EC81D50);
    sub_29EC74C60(&qword_2A1891428, &qword_2A1891430, &qword_29EC81D80);
    sub_29EC74C60(&qword_2A1891438, &qword_2A1891418, &qword_29EC81D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891420);
  }

  return result;
}

uint64_t sub_29EC7DEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_6_0();
  v9(v8);
  return v4;
}

uint64_t objectdestroyTm()
{
  sub_29EC734B4(*(v0 + 16), *(v0 + 24));
  sub_29EC7DC00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_29EC7DC00(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  v1 = *(v0 + 112);

  return MEMORY[0x2A1C733A0](v0, 145, 7);
}

uint64_t sub_29EC7DF90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_29EC7F4E4();
  sub_29EC7F224();
  v7 = sub_29EC7F4F4();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29EC7F4A4() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_29EC6C650();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_29EC7E0B8(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_29EC7E0B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_29EC7F324();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_29EC7F4E4();

        sub_29EC7F224();
        v15 = sub_29EC7F4F4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_29EC7E294(uint64_t a1)
{
  sub_29EC7F0E4();
  OUTLINED_FUNCTION_1_0();
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  OUTLINED_FUNCTION_5();
  (*(v7 + 16))(v6 - v5, a1);
  return sub_29EC7ECE4();
}

uint64_t sub_29EC7E34C()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC7ED44();
  *v0 = result & 1;
  return result;
}

id sub_29EC7E3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_29EC7F254();
  v6 = [a3 fetchAssetsWithUUIDs:v5 options:a2];

  return v6;
}

uint64_t sub_29EC7E430(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29EC7F214();

  return v3;
}

uint64_t sub_29EC7E4BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_6_0();
  v9(v8);
  return v4;
}

unint64_t sub_29EC7E508()
{
  result = qword_2A18914D8;
  if (!qword_2A18914D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18914B8, &unk_29EC81E28);
    sub_29EC7E5C0();
    sub_29EC74C60(&qword_2A18914E8, &qword_2A18914F0, &qword_29EC81E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18914D8);
  }

  return result;
}

unint64_t sub_29EC7E5C0()
{
  result = qword_2A18914E0;
  if (!qword_2A18914E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A18914B0, &qword_29EC81E20);
    sub_29EC74C60(&qword_2A1891268, &qword_2A1891230, &qword_29EC80DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18914E0);
  }

  return result;
}

uint64_t sub_29EC7E678(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_29EC7E6D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29EC7E720()
{
  result = qword_2A1891518;
  if (!qword_2A1891518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1891510, &qword_29EC81E98);
    sub_29EC7E7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891518);
  }

  return result;
}

unint64_t sub_29EC7E7A4()
{
  result = qword_2A1891520;
  if (!qword_2A1891520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891520);
  }

  return result;
}

uint64_t sub_29EC7E7F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_4_1();

  return MEMORY[0x2A1C733A0](v0, 105, 7);
}

uint64_t sub_29EC7E83C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_29EC74CCC(result);
  }

  else
  {
  }
}

unint64_t sub_29EC7E888()
{
  result = qword_2A1891538;
  if (!qword_2A1891538)
  {
    sub_29EC6A3C4(255, &qword_2A1891540, 0x29EDBB9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1891538);
  }

  return result;
}

uint64_t sub_29EC7E8F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_4_1();

  return MEMORY[0x2A1C733A0](v0, 120, 7);
}

uint64_t sub_29EC7E948()
{
  OUTLINED_FUNCTION_7();
  result = sub_29EC7ECF4();
  *v0 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  sub_29EC6BEAC(*(v0 + 40), *(v0 + 48));
  sub_29EC7DC00(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return sub_29EC7E83C(v1, v2, v3);
}