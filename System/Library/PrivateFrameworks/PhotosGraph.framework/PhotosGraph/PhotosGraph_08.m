uint64_t sub_22F1843B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F191468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F1843E0(uint64_t a1)
{
  v2 = sub_22F18BF18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18441C(uint64_t a1)
{
  v2 = sub_22F18BF18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B48, &qword_22F7732C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  v17 = v1[8];
  v16[1] = *(v1 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BF18();
  sub_22F742210();
  LOBYTE(v26) = 0;
  v14 = v24;
  sub_22F741F80();
  if (!v14)
  {
    v26 = v23;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
    sub_22F18A1D4();
    sub_22F741FE0();
    LOBYTE(v26) = 2;
    sub_22F741FC0();
    LOBYTE(v26) = 3;
    sub_22F741FC0();
    LOBYTE(v26) = 4;
    sub_22F741FC0();
    LOBYTE(v26) = 5;
    sub_22F741F80();
    v26 = v17;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1870F4();
    sub_22F741FE0();
    LOBYTE(v26) = 7;
    sub_22F741F90();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B58, &qword_22F7732C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BF18();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_22F741EB0();
  v13 = v12;
  v33 = a2;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
  LOBYTE(v34) = 1;
  sub_22F18A250();
  sub_22F741F10();
  v32 = v38[0];
  LOBYTE(v38[0]) = 2;
  v31 = sub_22F741EF0();
  LOBYTE(v38[0]) = 3;
  v15 = sub_22F741EF0();
  LOBYTE(v38[0]) = 4;
  v29 = sub_22F741EF0();
  LOBYTE(v38[0]) = 5;
  v28 = sub_22F741EB0();
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  LOBYTE(v34) = 6;
  sub_22F1873C8();
  sub_22F741F10();
  v27 = v38[0];
  v41 = 7;
  v17 = sub_22F741EC0();
  (*(v6 + 8))(v9, v5);
  v18 = v17 & 1;
  v40 = v17 & 1;
  *&v34 = v14;
  *(&v34 + 1) = v13;
  v19 = v32;
  v20 = v31;
  *&v35 = v32;
  *(&v35 + 1) = v31;
  *&v36 = v15;
  *(&v36 + 1) = v29;
  v21 = v30;
  *v37 = v28;
  *&v37[8] = v30;
  v22 = v27;
  *&v37[16] = v27;
  v37[24] = v18;
  v23 = *v37;
  v24 = v33;
  v33[2] = v36;
  v24[3] = v23;
  *(v24 + 57) = *&v37[9];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  sub_22F18BF6C(&v34, v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v38[0] = v14;
  v38[1] = v13;
  v38[2] = v19;
  v38[3] = v20;
  v38[4] = v15;
  v38[5] = v29;
  v38[6] = v28;
  v38[7] = v21;
  v38[8] = v22;
  v39 = v40;
  return sub_22F18BFA4(v38);
}

uint64_t static MusicKitCatalogSong.MusicKitTesseractMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_22F17AFA0(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22F184CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746544796C696164 && a2 == 0xEC000000736C6961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F184D34(uint64_t a1)
{
  v2 = sub_22F18BFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F184D70(uint64_t a1)
{
  v2 = sub_22F18BFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B60, &qword_22F7732D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BFD4();

  sub_22F742210();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B68, &qword_22F7732D8);
  sub_22F18C028();
  sub_22F741F70();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MusicKitCatalogSong.MusicKitTesseractMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B80, &unk_22F7732E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18BFD4();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C100();
    sub_22F741EA0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F1850A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_22F17AFA0(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t MusicKitCatalogSong.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicKitCatalogSong.attributes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[14];
  v35 = v1[13];
  v36 = v3;
  v4 = v1[14];
  v37 = v1[15];
  v5 = v1[8];
  v6 = v1[10];
  v31 = v1[9];
  v7 = v31;
  v32 = v6;
  v8 = v1[10];
  v9 = v1[12];
  v33 = v1[11];
  v10 = v33;
  v34 = v9;
  v11 = v1[4];
  v12 = v1[6];
  v27 = v1[5];
  v13 = v27;
  v28 = v12;
  v14 = v1[6];
  v15 = v1[8];
  v29 = v1[7];
  v16 = v29;
  v30 = v15;
  v17 = v1[2];
  v24[0] = v1[1];
  v24[1] = v17;
  v18 = v1[4];
  v20 = v1[1];
  v19 = v1[2];
  v25 = v1[3];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[15];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return sub_22F13BA9C(v24, &v23, &qword_27DAB1B88, &qword_22F77C000);
}

uint64_t MusicKitCatalogSong.relationships.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22F18C1D8(v2, v3, v4, v5);
}

uint64_t MusicKitCatalogSong.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = v2;
  return sub_22F1007AC(v2);
}

uint64_t static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a5)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[3] = 0;
    a6[4] = 0;
    a6[2] = 1;
    return result;
  }

  v6 = *(a5 + 16);
  if (v6)
  {
    v8 = result;
    v9 = 0;
    v10 = a5 + 64;
    v11 = MEMORY[0x277D84F90];
    v32 = a5 + 64;
    do
    {
      v34 = v11;
      v12 = (v10 + 40 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v6)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        v14 = *(v12 - 2);
        if (v14)
        {
          v36 = *(v12 - 28);
          v37 = *(v12 - 8);
          v15 = *(v12 - 3);
          v16 = *(v12 - 1);
          v17 = *v12;
          v18 = v15 == v8 && v14 == a2;
          if (v18 || (v19 = *(v12 - 3), result = sub_22F742040(), (result & 1) != 0))
          {
            if (v17)
            {
              if (v16 == a3 && v17 == a4)
              {
                v16 = a3;
                v31 = a4;
                goto LABEL_20;
              }

              result = sub_22F742040();
              if (result)
              {
                break;
              }
            }
          }
        }

        ++v13;
        v12 += 5;
        if (v9 == v6)
        {
          v11 = v34;
          goto LABEL_28;
        }
      }

      v31 = v17;
LABEL_20:

      v11 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22F146474(0, *(v34 + 16) + 1, 1);
        v11 = v34;
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_22F146474((v20 > 1), v21 + 1, 1);
        v11 = v34;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 40 * v21;
      *(v22 + 32) = v37;
      *(v22 + 36) = v36;
      *(v22 + 40) = v15;
      *(v22 + 48) = v14;
      *(v22 + 56) = v16;
      *(v22 + 64) = v31;
      v10 = v32;
    }

    while (v9 != v6);
LABEL_28:
    if (!*(v11 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_33:

      *a6 = 0;
      a6[1] = 0;
      a6[3] = 0;
      a6[4] = 0;
      a6[2] = 1;
      return result;
    }
  }

  v23 = *(v11 + 32);
  v24 = v11;
  v25 = *(v11 + 36);
  v27 = v24[5];
  v26 = v24[6];
  v29 = v24[7];
  v28 = v24[8];

  v30 = 0x100000000;
  if (!v25)
  {
    v30 = 0;
  }

  *a6 = v30 | v23;
  a6[1] = v27;
  a6[2] = v26;
  a6[3] = v29;
  a6[4] = v28;
  return result;
}

uint64_t sub_22F1854A0()
{
  v1 = 25705;
  v2 = 0x6E6F6974616C6572;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x7475626972747461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F185518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F19171C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F185540(uint64_t a1)
{
  v2 = sub_22F18C23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F18557C(uint64_t a1)
{
  v2 = sub_22F18C23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSong.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B90, &qword_22F7732F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v30 = v1[1];
  v31 = v8;
  v9 = *(v1 + 14);
  v66 = *(v1 + 13);
  v67 = v9;
  v68 = *(v1 + 15);
  v10 = *(v1 + 10);
  v62 = *(v1 + 9);
  v63 = v10;
  v11 = *(v1 + 12);
  v64 = *(v1 + 11);
  v65 = v11;
  v12 = *(v1 + 6);
  v58 = *(v1 + 5);
  v59 = v12;
  v13 = *(v1 + 8);
  v60 = *(v1 + 7);
  v61 = v13;
  v14 = *(v1 + 2);
  v54 = *(v1 + 1);
  v55 = v14;
  v15 = *(v1 + 4);
  v56 = *(v1 + 3);
  v57 = v15;
  v16 = v1[32];
  v28 = v1[33];
  v29 = v16;
  v17 = v1[34];
  v26 = v1[35];
  v27 = v17;
  v25 = v1[36];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18C23C();
  sub_22F742210();
  LOBYTE(v39) = 0;
  v19 = v7;
  v20 = v69;
  sub_22F741F80();
  if (!v20)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v51 = v66;
    v52 = v67;
    v53 = v68;
    v47 = v62;
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v38 = 1;
    sub_22F13BA9C(&v54, v37, &qword_27DAB1B88, &qword_22F77C000);
    sub_22F18C290();
    sub_22F741F70();
    v37[12] = v51;
    v37[13] = v52;
    v37[14] = v53;
    v37[8] = v47;
    v37[9] = v48;
    v37[10] = v49;
    v37[11] = v50;
    v37[4] = v43;
    v37[5] = v44;
    v37[6] = v45;
    v37[7] = v46;
    v37[0] = v39;
    v37[1] = v40;
    v37[2] = v41;
    v37[3] = v42;
    sub_22F120ADC(v37, &qword_27DAB1B88, &qword_22F77C000);
    v33 = v23;
    v34 = v22;
    v35 = v21;
    v36 = v26;
    v32 = 2;
    sub_22F18C1D8(v23, v22, v21, v26);
    sub_22F18C2E4();
    sub_22F741F70();
    sub_22F18C338(v33, v34, v35, v36);
    v33 = v25;
    v32 = 3;
    sub_22F1007AC(v25);
    sub_22F18C39C();
    sub_22F741F70();
    sub_22F1007BC(v33);
  }

  return (*(v4 + 8))(v19, v3);
}

uint64_t MusicKitCatalogSong.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1BB0, &qword_22F7732F8);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v7 = &v17 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F18C23C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = a2;
  LOBYTE(v25) = 0;
  v9 = v80;
  v21 = sub_22F741EB0();
  v22 = v10;
  v49 = 1;
  sub_22F18C3F0();
  sub_22F741EA0();
  v77 = v62;
  v78 = v63;
  v79 = v64;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72 = v57;
  v65 = v50;
  v66 = v51;
  v67 = v52;
  v68 = v53;
  v24[0] = 2;
  sub_22F18C444();
  sub_22F741EA0();
  v20 = v26;
  v18 = v25;
  v17 = *(&v27 + 1);
  v19 = v27;
  v47 = 3;
  sub_22F18C498();
  sub_22F741EA0();
  MEMORY[8](v7, v9);
  v80 = v48;
  v12 = v21;
  v11 = v22;
  *v24 = v21;
  *&v24[8] = v22;
  *&v24[208] = v77;
  *&v24[224] = v78;
  *&v24[240] = v79;
  *&v24[144] = v73;
  *&v24[160] = v74;
  *&v24[192] = v76;
  *&v24[176] = v75;
  *&v24[80] = v69;
  *&v24[96] = v70;
  *&v24[128] = v72;
  *&v24[112] = v71;
  *&v24[16] = v65;
  *&v24[32] = v66;
  *&v24[64] = v68;
  *&v24[48] = v67;
  v13 = v18;
  v14 = v19;
  *&v24[256] = v18;
  *&v24[264] = v20;
  v15 = v17;
  *&v24[272] = v19;
  *&v24[280] = v17;
  *&v24[288] = v48;
  memcpy(v23, v24, 0x128uLL);
  sub_22F18C4EC(v24, &v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v25 = v12;
  v26 = v11;
  v39 = v77;
  v40 = v78;
  v41 = v79;
  v35 = v73;
  v36 = v74;
  v37 = v75;
  v38 = v76;
  v31 = v69;
  v32 = v70;
  v33 = v71;
  v34 = v72;
  v27 = v65;
  v28 = v66;
  v29 = v67;
  v30 = v68;
  v42 = v13;
  v43 = v20;
  v44 = v14;
  v45 = v15;
  v46 = v80;
  return sub_22F18C524(&v25);
}

unint64_t MusicKitCatalogSong.description.getter()
{
  v1 = type metadata accessor for Song();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v10, v0, sizeof(v10));
  memcpy(v9, v0, sizeof(v9));
  sub_22F18C4EC(v10, &v8);
  Song.init(_:)(v9);
  v5 = Song.jsonDescription.getter();
  sub_22F15CBD8(v4);
  return v5;
}

unint64_t sub_22F185F00()
{
  v1 = type metadata accessor for Song();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v10, v0, sizeof(v10));
  memcpy(v9, v0, sizeof(v9));
  sub_22F18C4EC(v10, &v8);
  Song.init(_:)(v9);
  v5 = Song.jsonDescription.getter();
  sub_22F15CBD8(v4);
  return v5;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV0cD17TesseractMetadataV0cdG12DailyDetailsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_22F17AD98(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && v4 == v6 && v3 == v9 && v5 == v8)
  {
    if (v18 == v10 && v19 == v11 || (sub_22F742040() & 1) != 0)
    {
      if (sub_22F17ADF4(v16, v14))
      {
        return v17 ^ v15 ^ 1u;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV10AttributesV6UnitagV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v9 || (v5 != *(a2 + 8) || v6 != v9) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    return v10 && (v7 == v11 && v8 == v10 || (sub_22F742040() & 1) != 0);
  }

  return !v10;
}

unint64_t sub_22F1861E0()
{
  result = qword_2810AAD18;
  if (!qword_2810AAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD18);
  }

  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV10AttributesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v175 = *(a1 + 32);
  v171 = *(a1 + 48);
  v178 = *(a1 + 56);
  v180 = *(a1 + 40);
  v173 = *(a1 + 64);
  v165 = *(a1 + 72);
  v168 = *(a1 + 80);
  v162 = *(a1 + 88);
  v167 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 108);
  v5 = *(a1 + 120);
  v161 = *(a1 + 112);
  v159 = *(a1 + 128);
  v154 = *(a1 + 136);
  v157 = *(a1 + 144);
  v6 = *(a1 + 152);
  v7 = *(a1 + 156);
  v8 = *(a1 + 160);
  v9 = *(a1 + 168);
  v10 = *(a1 + 176);
  v11 = *(a1 + 184);
  v12 = *(a1 + 192);
  v13 = *(a1 + 200);
  v14 = *(a1 + 208);
  v16 = *(a1 + 216);
  v15 = *(a1 + 224);
  v17 = *(a1 + 232);
  v18 = *(a2 + 24);
  v174 = *(a2 + 32);
  v19 = *(a2 + 104);
  v20 = *(a2 + 152);
  v21 = *(a2 + 40);
  v170 = *(a2 + 48);
  v176 = *(a2 + 56);
  v172 = *(a2 + 64);
  v164 = *(a2 + 72);
  v169 = *(a2 + 80);
  v22 = *(a2 + 88);
  v166 = *(a2 + 96);
  v163 = *(a2 + 108);
  v160 = *(a2 + 112);
  v156 = *(a2 + 120);
  v158 = *(a2 + 128);
  v152 = *(a2 + 136);
  v155 = *(a2 + 144);
  v153 = *(a2 + 156);
  v24 = *(a2 + 160);
  v23 = *(a2 + 168);
  v26 = *(a2 + 176);
  v25 = *(a2 + 184);
  v27 = *(a2 + 192);
  v28 = *(a2 + 200);
  v29 = *(a2 + 208);
  v30 = *(a2 + 216);
  v31 = *(a2 + 224);
  v32 = *(a2 + 232);
  if (v2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v148 = *(a2 + 224);
    v149 = *(a1 + 192);
    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRelease_n();
      return 0;
    }

    v117 = *(a2 + 232);
    v118 = *(a1 + 216);
    v119 = *(a1 + 208);
    v122 = *(a1 + 160);
    v123 = *(a1 + 168);
    v120 = *(a1 + 184);
    v121 = *(a1 + 176);
    v115 = *(a1 + 224);
    v116 = *(a1 + 232);
    if (*(a1 + 16) != *(a2 + 16) || v2 != v18)
    {
      v131 = *(a1 + 200);
      v141 = *(a2 + 168);
      v33 = *(a1 + 108);
      v34 = *(a2 + 88);
      v35 = *(a2 + 216);
      v110 = *(a2 + 192);
      v36 = *(a2 + 208);
      v37 = sub_22F742040();
      v22 = v34;
      v4 = v33;
      v29 = v36;
      v27 = v110;
      v13 = v131;
      v23 = v141;
      v30 = v35;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_10;
    }

    v148 = *(a2 + 224);
    v149 = *(a1 + 192);
    v117 = *(a2 + 232);
    v118 = *(a1 + 216);
    v119 = *(a1 + 208);
    v122 = *(a1 + 160);
    v123 = *(a1 + 168);
    v120 = *(a1 + 184);
    v121 = *(a1 + 176);
    v115 = *(a1 + 224);
    v116 = *(a1 + 232);
    v38 = *(a1 + 200);
    v39 = *(a2 + 216);
    v132 = *(a1 + 156);
    v150 = *(a2 + 160);
    v142 = *(a2 + 168);
    v143 = *(a1 + 120);
    v40 = *(a2 + 192);
    v41 = *(a2 + 208);
    v42 = *(a1 + 108);
    v43 = *(a2 + 88);

    v22 = v43;
    v4 = v42;
    v23 = v142;
    v5 = v143;
    v29 = v41;
    v27 = v40;
    v24 = v150;
    v7 = v132;
    v30 = v39;
    v13 = v38;
  }

  if (v180)
  {
    if (!v21)
    {
      return 0;
    }

    if (v175 != v174 || v180 != v21)
    {
      v151 = v24;
      v133 = v13;
      v44 = v4;
      v45 = v22;
      v46 = v27;
      v47 = v30;
      v144 = v5;
      v48 = v29;
      v49 = v23;
      v50 = sub_22F742040();
      v27 = v46;
      v22 = v45;
      v23 = v49;
      v4 = v44;
      v24 = v151;
      v29 = v48;
      v5 = v144;
      v30 = v47;
      v13 = v133;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  v52 = v27;
  if (!v178)
  {
    if (!v176)
    {
      v135 = v7;
      v145 = v5;
      v60 = v27;
      v125 = v25;
      v61 = v28;
      v62 = v23;
      v63 = v30;
      v64 = v29;
      v65 = v4;
      v66 = v22;

      v22 = v66;
      v4 = v65;
      v29 = v64;
      v30 = v63;
      v23 = v62;
      v28 = v61;
      v53 = v125;
      v52 = v60;
      v5 = v145;
      v7 = v135;
      goto LABEL_32;
    }

LABEL_10:

    return 0;
  }

  if (!v176)
  {
    goto LABEL_10;
  }

  v53 = v25;
  if (v171 != v170 || v178 != v176)
  {
    v134 = v7;
    v111 = v27;
    v54 = v4;
    v55 = v22;
    v124 = v25;
    v56 = v23;
    v57 = v30;
    v58 = v29;
    v59 = sub_22F742040();
    v22 = v55;
    v4 = v54;
    v29 = v58;
    v30 = v57;
    v23 = v56;
    v53 = v124;
    v52 = v111;
    v7 = v134;
    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_32:
  if (v173)
  {
    if (!v172)
    {
      return 0;
    }

    v136 = v7;
    v146 = v5;
    v67 = v52;
    v126 = v53;
    v68 = v28;
    v69 = v23;
    v70 = v30;
    v71 = v29;
    v72 = v4;
    v73 = v22;
    v74 = sub_22F17ADF4(v173, v172);
    v22 = v73;
    v4 = v72;
    v29 = v71;
    v30 = v70;
    v23 = v69;
    v28 = v68;
    v53 = v126;
    v52 = v67;
    v5 = v146;
    v7 = v136;
    if ((v74 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v172)
  {
    return 0;
  }

  v75 = v52;
  if (v168)
  {
    if (!v169)
    {
      return 0;
    }

    if (v165 != v164 || v168 != v169)
    {
      v137 = v7;
      v112 = v52;
      v76 = v4;
      v77 = v22;
      v127 = v53;
      v78 = v23;
      v79 = v30;
      v80 = v29;
      v81 = sub_22F742040();
      v22 = v77;
      v4 = v76;
      v29 = v80;
      v30 = v79;
      v23 = v78;
      v53 = v127;
      v75 = v112;
      v7 = v137;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v169)
  {
    return 0;
  }

  if (v167)
  {
    if (!v166)
    {
      return 0;
    }

    if (v162 != v22 || v167 != v166)
    {
      v138 = v7;
      v113 = v75;
      v82 = v4;
      v128 = v53;
      v83 = v23;
      v84 = v30;
      v85 = v29;
      v86 = sub_22F742040();
      v4 = v82;
      v29 = v85;
      v30 = v84;
      v23 = v83;
      v53 = v128;
      v75 = v113;
      v7 = v138;
      if ((v86 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v166)
  {
    return 0;
  }

  if (v4)
  {
    v87 = v13;
    if (!v163)
    {
      return 0;
    }
  }

  else
  {
    v88 = v163;
    if (v3 != v19)
    {
      v88 = 1;
    }

    v87 = v13;
    if (v88)
    {
      return 0;
    }
  }

  if (v161)
  {
    if (!v160)
    {
      return 0;
    }

    v139 = v7;
    v147 = v5;
    v89 = v75;
    v90 = v87;
    v129 = v53;
    v91 = v23;
    v92 = v30;
    v93 = v29;
    v94 = sub_22F17AE84(v161, v160);
    v29 = v93;
    v30 = v92;
    v23 = v91;
    v53 = v129;
    v87 = v90;
    v75 = v89;
    v5 = v147;
    v7 = v139;
    if ((v94 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v160)
  {
    return 0;
  }

  v95 = v75;
  if (v159)
  {
    if (!v158)
    {
      return 0;
    }

    if (v5 != v156 || v159 != v158)
    {
      v140 = v7;
      v114 = v75;
      v96 = v87;
      v130 = v53;
      v97 = v23;
      v98 = v30;
      v99 = v29;
      v100 = sub_22F742040();
      v29 = v99;
      v30 = v98;
      v23 = v97;
      v53 = v130;
      v87 = v96;
      v95 = v114;
      v7 = v140;
      if ((v100 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v158)
  {
    return 0;
  }

  if (v157)
  {
    if (!v155)
    {
      return 0;
    }

    v101 = v26;
    v102 = v53;
    v103 = v28;
    v181 = v29;
    v179 = v30;
    v104 = v87;
    if (v154 != v152 || v157 != v155)
    {
      v105 = v23;
      v106 = sub_22F742040();
      v23 = v105;
      if ((v106 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v103 = v28;
    v101 = v26;
    v102 = v53;
    v181 = v29;
    v179 = v30;
    v104 = v87;
    if (v155)
    {
      return 0;
    }
  }

  v107 = v23;
  if (v7)
  {
    if (!v153)
    {
      return 0;
    }
  }

  else
  {
    v108 = v153;
    if (v6 != v20)
    {
      v108 = 1;
    }

    if (v108)
    {
      return 0;
    }
  }

  if (!v123)
  {
    sub_22F187018(v122, 0);
    if (!v107)
    {
      sub_22F187018(v24, 0);
      v109 = 0;
      goto LABEL_97;
    }

    sub_22F187018(v24, v107);
LABEL_93:
    sub_22F1870B0(v122, v123);
    sub_22F1870B0(v24, v107);
    return 0;
  }

  if (!v23)
  {
    sub_22F187018(v122, v123);
    sub_22F187018(v24, 0);
    sub_22F187018(v122, v123);

    goto LABEL_93;
  }

  if ((v122 != v24 || v123 != v23) && (sub_22F742040() & 1) == 0)
  {
    sub_22F187018(v122, v123);
    sub_22F187018(v24, v107);
    sub_22F187018(v122, v123);
    sub_22F1870B0(v24, v107);

    sub_22F1870B0(v122, v123);
    return 0;
  }

  if (v121 == v101 && v120 == v102)
  {
    sub_22F187018(v122, v123);
    sub_22F187018(v24, v107);
    sub_22F187018(v122, v123);
    sub_22F1870B0(v24, v107);

    v109 = v123;

LABEL_97:
    sub_22F1870B0(v122, v109);
    goto LABEL_98;
  }

  v177 = sub_22F742040();
  sub_22F187018(v122, v123);
  sub_22F187018(v24, v107);
  sub_22F187018(v122, v123);
  sub_22F1870B0(v24, v107);

  sub_22F1870B0(v122, v123);
  if ((v177 & 1) == 0)
  {
    return 0;
  }

LABEL_98:
  if (v104)
  {
    if (!v103 || (v149 != v95 || v104 != v103) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v103)
  {
    return 0;
  }

  if (v119 == 2)
  {
    if (v181 != 2)
    {
      return 0;
    }

    goto LABEL_111;
  }

  result = 0;
  if (v181 != 2 && ((v181 ^ v119) & 1) == 0)
  {
LABEL_111:
    if (v118)
    {
      if (!v179 || (sub_22F17ADF4(v118, v179) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v179)
    {
      return 0;
    }

    if (v116)
    {
      if (v117 && (v115 == v148 && v116 == v117 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v117)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_22F186DC0()
{
  result = qword_2810AAD50;
  if (!qword_2810AAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD50);
  }

  return result;
}

unint64_t sub_22F186E14()
{
  result = qword_27DAB1798;
  if (!qword_27DAB1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1798);
  }

  return result;
}

unint64_t sub_22F186E68()
{
  result = qword_27DAB17A0;
  if (!qword_27DAB17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17A0);
  }

  return result;
}

unint64_t sub_22F186EBC()
{
  result = qword_27DAB17B0;
  if (!qword_27DAB17B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F186E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17B0);
  }

  return result;
}

unint64_t sub_22F186F40()
{
  result = qword_27DAB17C0;
  if (!qword_27DAB17C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F186FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17C0);
  }

  return result;
}

unint64_t sub_22F186FC4()
{
  result = qword_27DAB17C8;
  if (!qword_27DAB17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17C8);
  }

  return result;
}

uint64_t sub_22F187018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22F18705C()
{
  result = qword_27DAB17D0;
  if (!qword_27DAB17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17D0);
  }

  return result;
}

uint64_t sub_22F1870B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22F1870F4()
{
  result = qword_2810A92E8;
  if (!qword_2810A92E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92E8);
  }

  return result;
}

unint64_t sub_22F187170()
{
  result = qword_2810AACE0;
  if (!qword_2810AACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACE0);
  }

  return result;
}

unint64_t sub_22F1871C4()
{
  result = qword_2810AACC0;
  if (!qword_2810AACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACC0);
  }

  return result;
}

unint64_t sub_22F187218()
{
  result = qword_2810A9348;
  if (!qword_2810A9348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17A8, &qword_22F7730B8);
    sub_22F1871C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9348);
  }

  return result;
}

unint64_t sub_22F18729C()
{
  result = qword_2810A9350;
  if (!qword_2810A9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17B8, &unk_22F7730C0);
    sub_22F187320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9350);
  }

  return result;
}

unint64_t sub_22F187320()
{
  result = qword_2810AAD00;
  if (!qword_2810AAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD00);
  }

  return result;
}

unint64_t sub_22F187374()
{
  result = qword_2810AAD20;
  if (!qword_2810AAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD20);
  }

  return result;
}

unint64_t sub_22F1873C8()
{
  result = qword_2810A92D8;
  if (!qword_2810A92D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92D8);
  }

  return result;
}

unint64_t sub_22F1874AC()
{
  result = qword_27DAB17E8;
  if (!qword_27DAB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17E8);
  }

  return result;
}

unint64_t sub_22F187500()
{
  result = qword_27DAB17F8;
  if (!qword_27DAB17F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F187584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB17F8);
  }

  return result;
}

unint64_t sub_22F187584()
{
  result = qword_27DAB1800;
  if (!qword_27DAB1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1800);
  }

  return result;
}

unint64_t sub_22F1875D8()
{
  result = qword_27DAB1810;
  if (!qword_27DAB1810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB17F0, &qword_22F7730E0);
    sub_22F18765C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1810);
  }

  return result;
}

unint64_t sub_22F18765C()
{
  result = qword_27DAB1818;
  if (!qword_27DAB1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1818);
  }

  return result;
}

unint64_t sub_22F1876B0()
{
  result = qword_27DAB1828;
  if (!qword_27DAB1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1828);
  }

  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3BPMV2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v10 = *(a2 + 24);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == *(a2 + 44))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = 1;
    }

    return (v13 & 1) == 0;
  }

  return (*(a2 + 48) & 1) != 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_22F742040() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV2eeoiySbAM_AMtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v46 = a1[5];
  v47 = a1[4];
  v48 = a1[6];
  v49 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];
  v9 = a1[11];
  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v42 = a2[5];
  v43 = a2[4];
  v44 = a2[6];
  v45 = a2[7];
  v14 = a2[8];
  v15 = a2[9];
  v17 = a2[10];
  v16 = a2[11];
  if (v3 == 1)
  {
    v36 = a2[9];
    v37 = a2[8];
    v38 = a2[10];
    v39 = a2[11];
    v40 = a1[9];
    v41 = a1[8];
    sub_22F189DE8(v2, 1);
    if (v11 == 1)
    {
      v35 = v8;
      sub_22F189DE8(v10, 1);
      sub_22F189ED8(v2, 1);
      goto LABEL_9;
    }

    sub_22F189DE8(v10, v11);
LABEL_7:
    v55 = v2;
    v56 = v3;
    v57 = v4;
    v58 = v5;
    v59 = v10;
    v60 = v11;
    v61 = v13;
    v62 = v12;
LABEL_24:
    sub_22F120ADC(&v55, &qword_27DAB1D88, &qword_22F777148);
    return 0;
  }

  v55 = *a1;
  v56 = v3;
  v57 = v4;
  v58 = v5;
  if (v11 == 1)
  {
    sub_22F189DE8(v2, v3);
    sub_22F189DE8(v10, 1);
    sub_22F189DE8(v2, v3);

    goto LABEL_7;
  }

  v36 = v15;
  v37 = v14;
  v38 = v17;
  v39 = v16;
  v40 = v7;
  v41 = v6;
  v35 = v8;
  v51 = v10;
  v52 = v11;
  v53 = v13;
  v54 = v12;
  v33 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
  sub_22F189DE8(v2, v3);
  sub_22F189DE8(v10, v11);
  sub_22F189DE8(v2, v3);

  sub_22F189ED8(v2, v3);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if (v46 == 1)
  {
    v19 = v47;
    v18 = v48;
    v20 = v49;
    sub_22F189DE8(v47, 1);
    v21 = v42;
    if (v42 == 1)
    {
      sub_22F189DE8(v43, 1);
      sub_22F189ED8(v47, 1);
      goto LABEL_17;
    }

    v23 = v43;
    v22 = v44;
    v24 = v45;
    sub_22F189DE8(v43, v42);
    goto LABEL_15;
  }

  v19 = v47;
  v18 = v48;
  v55 = v47;
  v56 = v46;
  v20 = v49;
  v57 = v48;
  v58 = v49;
  v21 = v42;
  if (v42 == 1)
  {
    sub_22F189DE8(v47, v46);
    v23 = v43;
    v22 = v44;
    v24 = v45;
    sub_22F189DE8(v43, 1);
    sub_22F189DE8(v47, v46);

LABEL_15:
    v55 = v19;
    v56 = v46;
    v57 = v18;
    v58 = v20;
    v59 = v23;
    v60 = v21;
    v61 = v22;
    v62 = v24;
    goto LABEL_24;
  }

  v51 = v43;
  v52 = v42;
  v53 = v44;
  v54 = v45;
  v34 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
  sub_22F189DE8(v47, v46);
  sub_22F189DE8(v43, v42);
  sub_22F189DE8(v47, v46);

  sub_22F189ED8(v47, v46);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v40 != 1)
  {
    v55 = v41;
    v56 = v40;
    v26 = v35;
    v57 = v35;
    v58 = v9;
    if (v36 != 1)
    {
      v51 = v37;
      v52 = v36;
      v53 = v38;
      v54 = v39;
      v50 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV0himL0V2eeoiySbAO_AOtFZ_0(&v55, &v51);
      sub_22F189DE8(v41, v40);
      sub_22F189DE8(v37, v36);
      sub_22F189DE8(v41, v40);

      sub_22F189ED8(v41, v40);
      return (v50 & 1) != 0;
    }

    v25 = v41;
    v28 = 1;
    sub_22F189DE8(v41, v40);
    v30 = v37;
    v29 = v38;
    v31 = v39;
    sub_22F189DE8(v37, 1);
    sub_22F189DE8(v41, v40);

    goto LABEL_23;
  }

  v25 = v41;
  v26 = v35;
  sub_22F189DE8(v41, 1);
  if (v36 != 1)
  {
    v30 = v37;
    v29 = v38;
    v31 = v39;
    v28 = v36;
    sub_22F189DE8(v37, v36);
LABEL_23:
    v55 = v25;
    v56 = v40;
    v57 = v26;
    v58 = v9;
    v59 = v30;
    v60 = v28;
    v61 = v29;
    v62 = v31;
    goto LABEL_24;
  }

  v27 = 1;
  sub_22F189DE8(v37, 1);
  sub_22F189ED8(v41, 1);
  return v27;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI5BeatsV2eeoiySbAM_AMtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + 16);
  if (v6 != *(v5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = v3 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_14:
    if (result)
    {
      if (v4 && (sub_22F17AD98(result, v4) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  v8 = (v3 + 32);
  v9 = (v5 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  v9 = *(a1 + 48);
  v10 = *(a1 + 52);
  v11 = *(a1 + 56);
  v12 = *(a1 + 60);
  v13 = *(a1 + 64);
  v14 = *(a1 + 68);
  v15 = *(a1 + 69);
  v17 = a2[3];
  v16 = a2[4];
  v18 = *(a2 + 44);
  v19 = *(a2 + 10);
  v20 = *(a2 + 45);
  v22 = a2[6];
  v21 = a2[7];
  v23 = *(a2 + 68);
  v24 = *(a2 + 16);
  v25 = *(a2 + 69);
  if (*(a1 + 21))
  {
    if ((*(a2 + 21) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (*(a2 + 21))
    {
      goto LABEL_42;
    }

    v27 = *(a1 + 16);
    v29 = *a2;
    v28 = a2[1];
    v30 = *(a2 + 20);
    v31 = *(a2 + 4);
    v32 = *(a1 + 20);
    if (*(a1 + 4))
    {
      if ((v29 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v29 & 0x100000000) != 0 || *a1 != *&v29)
      {
        return v26 & 1;
      }
    }

    if (*(a1 + 12))
    {
      if ((v28 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v28 & 0x100000000) != 0 || *(a1 + 8) != *&v28)
      {
        return v26 & 1;
      }
    }

    v33 = v31 | (v30 << 32);
    if (v32)
    {
      if ((v33 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v33 & 0x100000000) != 0 || v27 != *&v31)
      {
        return v26 & 1;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      if (v3)
      {
        if ((v17 & 0x100000000) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        if ((v17 & 0x100000000) != 0 || v2 != *&v17)
        {
          return v26 & 1;
        }
      }

      if (v5)
      {
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        if ((v16 & 0x100000000) != 0 || v4 != *&v16)
        {
          return v26 & 1;
        }
      }

      v34 = v19 | (v18 << 32);
      if (v7)
      {
        v35 = v34 & 0x100000000;
        if ((v35 == 0) | v15 & 1)
        {
          v26 = BYTE4(v35) & v25;
          return v26 & 1;
        }
      }

      else
      {
        v36 = HIDWORD(v34) & 1;
        if (v6 != *&v19)
        {
          LODWORD(v36) = 1;
        }

        if ((v36 | v15))
        {
          v26 = (v36 ^ 1) & v25;
          return v26 & 1;
        }
      }

      goto LABEL_41;
    }

LABEL_42:
    v26 = 0;
    return v26 & 1;
  }

  if (v15 & 1 | ((v20 & 1) == 0))
  {
    v26 = v20 & v25;
    return v26 & 1;
  }

LABEL_41:
  if (v25)
  {
    goto LABEL_42;
  }

  if (v10)
  {
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = 0;
    if ((v22 & 0x100000000) != 0 || v9 != *&v22)
    {
      return v26 & 1;
    }
  }

  if (v12)
  {
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = 0;
    if ((v21 & 0x100000000) != 0 || v11 != *&v21)
    {
      return v26 & 1;
    }
  }

  v38 = v24 | (v23 << 32);
  if (v14)
  {
    if ((v38 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_59:
    v26 = 1;
    return v26 & 1;
  }

  v26 = 0;
  if ((v38 & 0x100000000) == 0 && v13 == *&v38)
  {
    goto LABEL_59;
  }

  return v26 & 1;
}

BOOL sub_22F1880D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v159[2] = *(a1 + 32);
  v159[3] = v4;
  v5 = *(a1 + 80);
  v159[4] = *(a1 + 64);
  v159[5] = v5;
  v6 = *(a1 + 16);
  v159[0] = *a1;
  v159[1] = v6;
  v7 = *(a1 + 96);
  v132 = *(a1 + 100);
  v8 = *(a1 + 104);
  v131 = *(a1 + 108);
  v9 = *(a1 + 112);
  v125 = *(a1 + 116);
  v10 = *(a1 + 117);
  v11 = *(a1 + 120);
  v127 = *(a1 + 124);
  v12 = *(a1 + 128);
  v122 = *(a1 + 132);
  v13 = *(a1 + 136);
  v117 = *(a1 + 140);
  v134 = *(a1 + 141);
  v14 = *(a1 + 144);
  v119 = *(a1 + 148);
  v15 = *(a1 + 152);
  v114 = *(a1 + 156);
  v16 = *(a1 + 160);
  v110 = *(a1 + 164);
  v129 = *(a1 + 165);
  v17 = *(a1 + 168);
  v18 = *(a1 + 172);
  v19 = *(a1 + 176);
  v20 = *(a1 + 180);
  v21 = *(a1 + 184);
  v22 = *(a1 + 188);
  v23 = *(a1 + 189);
  v24 = *(a1 + 262);
  v25 = *(a1 + 264);
  v26 = *(a1 + 268);
  v27 = *(a1 + 272);
  v28 = *(a1 + 276);
  v29 = *(a1 + 280);
  v30 = *(a1 + 284);
  v31 = *(a1 + 285);
  v33 = *(a1 + 288);
  v32 = *(a1 + 296);
  v34 = *(a1 + 320);
  v160 = *(a1 + 304);
  v161 = v34;
  v162 = *(a1 + 336);
  v163 = *(a1 + 352);
  v35 = *(a1 + 353);
  v36 = *(a2 + 48);
  v164[2] = *(a2 + 32);
  v164[3] = v36;
  v37 = *(a2 + 80);
  v164[4] = *(a2 + 64);
  v164[5] = v37;
  v38 = *(a2 + 16);
  v164[0] = *a2;
  v164[1] = v38;
  v39 = *(a2 + 96);
  v130 = *(a2 + 104);
  v124 = *(a2 + 116);
  v123 = *(a2 + 112);
  v168 = *(a2 + 352);
  v40 = *(a2 + 117);
  v41 = *(a2 + 320);
  v165 = *(a2 + 304);
  v166 = v41;
  v167 = *(a2 + 336);
  v126 = *(a2 + 120);
  v121 = *(a2 + 128);
  v116 = *(a2 + 140);
  v115 = *(a2 + 136);
  v133 = *(a2 + 141);
  v118 = *(a2 + 144);
  v113 = *(a2 + 152);
  v109 = *(a2 + 164);
  v108 = *(a2 + 160);
  v128 = *(a2 + 165);
  v111 = *(a2 + 168);
  v107 = *(a2 + 176);
  v106 = *(a2 + 188);
  v105 = *(a2 + 184);
  v120 = *(a2 + 189);
  v112 = *(a2 + 262);
  v43 = *(a2 + 264);
  v42 = *(a2 + 272);
  v44 = *(a2 + 284);
  v45 = *(a2 + 280);
  v46 = *(a2 + 285);
  v48 = *(a2 + 288);
  v47 = *(a2 + 296);
  v49 = *(a2 + 353);
  v50 = v159[0];
  v51 = v164[0];
  if (*(&v159[0] + 1) == 2)
  {
    if (*(&v164[0] + 1) == 2)
    {
      v102 = v23;
      v103 = v18;
      v97 = v19;
      v98 = v16;
      v99 = *(a2 + 285);
      v104 = v17;
      v100 = v43;
      v95 = v31;
      v96 = v20;
      v89 = v42;
      v93 = v22;
      v82 = *(a2 + 280);
      v83 = v44;
      v94 = v21;
      v101 = v24;
      v90 = v26;
      v85 = v25;
      v87 = v35;
      v88 = v28;
      v80 = v29;
      v81 = v27;
      v84 = v30;
      v91 = *(a2 + 288);
      v86 = *(a2 + 353);
      *&v92 = v33;
      *(&v92 + 1) = v32;
      *&v148 = *&v159[0];
      *(&v148 + 1) = 2;
      v52 = *(a1 + 64);
      *v151 = *(a1 + 48);
      *&v151[16] = v52;
      v152 = *(a1 + 80);
      v53 = *(a1 + 32);
      v149 = *(a1 + 16);
      v150 = v53;
      sub_22F13BA9C(v159, &v143, &qword_27DAB1970, &qword_22F7731A8);
      sub_22F13BA9C(v164, &v143, &qword_27DAB1970, &qword_22F7731A8);
      sub_22F120ADC(&v148, &qword_27DAB1970, &qword_22F7731A8);
      goto LABEL_11;
    }

    sub_22F13BA9C(v159, &v148, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(v164, &v148, &qword_27DAB1970, &qword_22F7731A8);
LABEL_7:
    v148 = v50;
    v56 = *(a1 + 64);
    *v151 = *(a1 + 48);
    *&v151[16] = v56;
    v152 = *(a1 + 80);
    v57 = *(a1 + 32);
    v149 = *(a1 + 16);
    v150 = v57;
    v153 = v51;
    v58 = *(a2 + 80);
    v157 = *(a2 + 64);
    v158 = v58;
    v59 = *(a2 + 48);
    v155 = *(a2 + 32);
    v156 = v59;
    v154 = *(a2 + 16);
    sub_22F120ADC(&v148, &qword_27DAB1D80, &qword_22F777140);
    return 0;
  }

  v148 = v159[0];
  v54 = *(a1 + 64);
  *v151 = *(a1 + 48);
  *&v151[16] = v54;
  v152 = *(a1 + 80);
  v55 = *(a1 + 32);
  v149 = *(a1 + 16);
  v150 = v55;
  v145 = v55;
  *v146 = *v151;
  *&v146[16] = v54;
  v147 = v152;
  v143 = v159[0];
  v144 = v149;
  if (*(&v164[0] + 1) == 2)
  {
    v139 = v150;
    v140 = *v151;
    v141 = *&v151[16];
    v142 = v152;
    v137 = v148;
    v138 = v149;
    sub_22F13BA9C(v159, v136, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(v164, v136, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(&v148, v136, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F189FAC(&v137);
    goto LABEL_7;
  }

  v102 = v23;
  v103 = v18;
  v97 = v19;
  v98 = v16;
  v99 = v46;
  v104 = v17;
  v100 = v43;
  v95 = v31;
  v96 = v20;
  v89 = v42;
  v93 = v22;
  v82 = v45;
  v83 = v44;
  v94 = v21;
  v101 = v24;
  v90 = v26;
  v85 = v25;
  v87 = v35;
  v88 = v28;
  v80 = v29;
  v81 = v27;
  v84 = v30;
  *&v91 = v48;
  *(&v91 + 1) = v47;
  v86 = v49;
  *&v92 = v33;
  *(&v92 + 1) = v32;
  v62 = *(a2 + 64);
  v140 = *(a2 + 48);
  v141 = v62;
  v142 = *(a2 + 80);
  v63 = *(a2 + 32);
  v138 = *(a2 + 16);
  v139 = v63;
  v137 = v164[0];
  sub_22F13BA9C(v159, v136, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F13BA9C(v164, v136, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F13BA9C(&v148, v136, &qword_27DAB1970, &qword_22F7731A8);
  v64 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV2eeoiySbAM_AMtFZ_0(&v143, &v137);
  v135[2] = v139;
  v135[3] = v140;
  v135[4] = v141;
  v135[5] = v142;
  v135[0] = v137;
  v135[1] = v138;
  sub_22F189FAC(v135);
  v136[2] = v145;
  v136[3] = *v146;
  v136[4] = *&v146[16];
  v136[5] = v147;
  v136[0] = v143;
  v136[1] = v144;
  sub_22F189FAC(v136);
  v137 = v50;
  v65 = *(a1 + 64);
  v140 = *(a1 + 48);
  v141 = v65;
  v142 = *(a1 + 80);
  v66 = *(a1 + 32);
  v138 = *(a1 + 16);
  v139 = v66;
  sub_22F120ADC(&v137, &qword_27DAB1970, &qword_22F7731A8);
  if (!v64)
  {
    return 0;
  }

LABEL_11:
  if (v10)
  {
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v40)
    {
      return 0;
    }

    if (v132)
    {
      if ((v39 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v39 & 0x100000000) != 0 || v7 != *&v39)
      {
        return v60;
      }
    }

    if (v131)
    {
      if ((v130 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v130 & 0x100000000) != 0 || v8 != *&v130)
      {
        return v60;
      }
    }

    v69 = v123 | (v124 << 32);
    if (v125)
    {
      if ((v69 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v69 & 0x100000000) != 0 || v9 != *&v123)
      {
        return v60;
      }
    }
  }

  if (v134)
  {
    if ((v133 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v133)
    {
      return 0;
    }

    if (v127)
    {
      if ((v126 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v126 & 0x100000000) != 0 || v11 != *&v126)
      {
        return v60;
      }
    }

    if (v122)
    {
      if ((v121 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v121 & 0x100000000) != 0 || v12 != *&v121)
      {
        return v60;
      }
    }

    v70 = v115 | (v116 << 32);
    if (v117)
    {
      if ((v70 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v70 & 0x100000000) != 0 || v13 != *&v115)
      {
        return v60;
      }
    }
  }

  if (v129)
  {
    if ((v128 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v128)
    {
      return 0;
    }

    if (v119)
    {
      if ((v118 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v118 & 0x100000000) != 0 || v14 != *&v118)
      {
        return v60;
      }
    }

    if (v114)
    {
      if ((v113 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v113 & 0x100000000) != 0 || v15 != *&v113)
      {
        return v60;
      }
    }

    v71 = v108 | (v109 << 32);
    if (v110)
    {
      if ((v71 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v71 & 0x100000000) != 0 || v98 != *&v108)
      {
        return v60;
      }
    }
  }

  if (v102)
  {
    if ((v120 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v120)
    {
      return 0;
    }

    if (v103)
    {
      if ((v111 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v111 & 0x100000000) != 0 || v104 != *&v111)
      {
        return v60;
      }
    }

    if (v96)
    {
      if ((v107 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v107 & 0x100000000) != 0 || v97 != *&v107)
      {
        return v60;
      }
    }

    v77 = v105 | (v106 << 32);
    if (v93)
    {
      if ((v77 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v77 & 0x100000000) != 0 || v94 != *&v105)
      {
        return v60;
      }
    }
  }

  if (v101)
  {
    v67 = v100;
    v68 = v99;
    if ((v112 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v72 = *(a1 + 240);
    v150 = *(a1 + 224);
    *v151 = v72;
    *&v151[14] = *(a1 + 254);
    v73 = *(a1 + 208);
    v148 = *(a1 + 192);
    v149 = v73;
    v151[22] = v101;
    v67 = v100;
    v68 = v99;
    if (v112)
    {
      return 0;
    }

    v74 = *(a2 + 240);
    v145 = *(a2 + 224);
    *v146 = v74;
    *&v146[14] = *(a2 + 254);
    v75 = *(a2 + 208);
    v143 = *(a2 + 192);
    v144 = v75;
    if ((_s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(&v148, &v143) & 1) == 0)
    {
      return 0;
    }
  }

  if (v95)
  {
    if ((v68 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  if (v68)
  {
    return 0;
  }

  if (v90)
  {
    if ((v67 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = 0;
    if ((v67 & 0x100000000) != 0 || v85 != *&v67)
    {
      return v60;
    }
  }

  if (v88)
  {
    if ((v89 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = 0;
    if ((v89 & 0x100000000) != 0 || v81 != *&v89)
    {
      return v60;
    }
  }

  v79 = v82 | (v83 << 32);
  if (v84)
  {
    if ((v79 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  v60 = 0;
  if ((v79 & 0x100000000) == 0 && v80 == *&v82)
  {
LABEL_78:
    if (v92 == 1)
    {
      sub_22F18A470(1);
      v76 = v91;
      if (v91 == 1)
      {
        sub_22F18A470(1);
        sub_22F18A50C(1);
LABEL_111:
        if (v87)
        {
          return v86;
        }

        v148 = v160;
        v149 = v161;
        v150 = v162;
        v151[0] = v163;
        v151[1] = v87;
        if ((v86 & 1) == 0)
        {
          v143 = v165;
          v144 = v166;
          v145 = v167;
          v146[0] = v168;
          return _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3BPMV2eeoiySbAM_AMtFZ_0(&v148, &v143);
        }

        return 0;
      }

      sub_22F18A470(v91);
      goto LABEL_109;
    }

    v148 = v92;
    v76 = v91;
    if (v91 == 1)
    {
      sub_22F18A470(v92);
      sub_22F18A470(1);
      sub_22F18A470(v92);

LABEL_109:
      sub_22F18A50C(v92);
      sub_22F18A50C(v76);
      return 0;
    }

    v143 = v91;
    v78 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI5BeatsV2eeoiySbAM_AMtFZ_0(&v148, &v143);
    sub_22F18A470(v92);
    sub_22F18A470(v91);
    sub_22F18A470(v92);

    sub_22F18A50C(v92);
    if (v78)
    {
      goto LABEL_111;
    }

    return 0;
  }

  return v60;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV2eeoiySbAI_AItFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x162uLL);
  memcpy(v15, v3, 0x162uLL);
  memcpy(__src, v4, 0x162uLL);
  memcpy(&__src[360], v3, 0x162uLL);
  memcpy(v16, v4, 0x162uLL);
  if (sub_22F19193C(v16) != 1)
  {
    memcpy(v12, v4, 0x162uLL);
    memcpy(v10, v4, 0x162uLL);
    memcpy(v11, v3, 0x162uLL);
    if (sub_22F19193C(v11) != 1)
    {
      memcpy(v9, v3, 0x162uLL);
      sub_22F13BA9C(__dst, v8, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F13BA9C(v15, v8, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F13BA9C(v12, v8, &qword_27DAB19B0, &qword_22F7731C0);
      v5 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(v10, v9);
      memcpy(v7, v9, 0x162uLL);
      sub_22F18A780(v7);
      memcpy(v8, v10, 0x162uLL);
      sub_22F18A780(v8);
      memcpy(v9, v4, 0x162uLL);
      sub_22F120ADC(v9, &qword_27DAB19B0, &qword_22F7731C0);
      return v5;
    }

    memcpy(v9, v4, 0x162uLL);
    sub_22F13BA9C(__dst, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v15, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v12, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F18A780(v9);
    goto LABEL_7;
  }

  memcpy(v11, v3, 0x162uLL);
  if (sub_22F19193C(v11) != 1)
  {
    sub_22F13BA9C(__dst, v12, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v15, v12, &qword_27DAB19B0, &qword_22F7731C0);
LABEL_7:
    memcpy(v11, __src, 0x2CAuLL);
    sub_22F120ADC(v11, &qword_27DAB1D78, &qword_22F777138);
    return 0;
  }

  memcpy(v12, v4, 0x162uLL);
  sub_22F13BA9C(__dst, v10, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F13BA9C(v15, v10, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F120ADC(v12, &qword_27DAB19B0, &qword_22F7731C0);
  return 1;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV9ExitPointV2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if ((sub_22F17AA10(*(a1 + 8), *(a2 + 8)) & 1) == 0 || v5 != v4)
  {
    return 0;
  }

  return sub_22F17AA10(v2, v3);
}

uint64_t _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 12);
  if (v4)
  {
    v6 = v2 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_10:
    if (*(result + 12))
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 8) == *(a2 + 2))
      {
        v9 = *(a2 + 12);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  v7 = (v2 + 32);
  v8 = (v3 + 32);
  while (v4)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 28);
  v4 = *(a1 + 6);
  v5 = a1[4];
  v6 = *(a1 + 44);
  v7 = *(a1 + 10);
  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[8];
  v10 = a1[9];
  v12 = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 28);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 44);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v22 = *(a2 + 64);
  v21 = *(a2 + 72);
  if (*a1)
  {
    v23 = *(a2 + 12);
    v24 = *(a2 + 8);
    v25 = *(a1 + 2);
    v26 = *(a1 + 12);
    v55 = *a1;
    v57 = v26;
    v56 = v25;
    if (!v12)
    {

LABEL_18:

      return 0;
    }

    v48 = v7;
    v49 = v6;
    v46 = v18;
    v47 = v17;
    v50 = v16;
    v51 = v5;
    v44 = v19;
    v45 = v8;
    v42 = v20;
    v43 = v9;
    v38 = v22;
    v39 = v11;
    v40 = v21;
    v41 = v10;
    v27 = v24 | (v23 << 32);
    v52 = v12;
    v53 = v27;
    v54 = BYTE4(v27) & 1;
    v28 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v55, &v52);
    swift_bridgeObjectRetain_n();

    if ((v28 & 1) == 0)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (!v13)
    {

      v30 = v51;
      if (v51)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (!v50)
      {

        goto LABEL_23;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v12)
  {
    v32 = *a2;
    goto LABEL_17;
  }

  v48 = *(a1 + 10);
  v49 = *(a1 + 44);
  v46 = *(a2 + 40);
  v47 = *(a2 + 44);
  v50 = *(a2 + 32);
  v51 = a1[4];
  v44 = *(a2 + 48);
  v45 = a1[6];
  v42 = *(a2 + 56);
  v43 = a1[7];
  v38 = *(a2 + 64);
  v39 = a1[8];
  v40 = *(a2 + 72);
  v41 = a1[9];

  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_5:
  v55 = v2;
  v56 = v4;
  v57 = (v4 | (v3 << 32)) >> 32;
  if (!v13)
  {
    goto LABEL_17;
  }

  v52 = v13;
  v53 = v15;
  v54 = ((v15 | (v14 << 32)) >> 32) & 1;
  v29 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v55, &v52);
  swift_bridgeObjectRetain_n();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v51;
  if (!v51)
  {
    goto LABEL_21;
  }

LABEL_8:
  v55 = v30;
  v56 = v48;
  v57 = (v48 | (v49 << 32)) >> 32;
  if (!v50)
  {
    goto LABEL_17;
  }

  v52 = v50;
  v53 = v46;
  v54 = ((v46 | (v47 << 32)) >> 32) & 1;
  v31 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v55, &v52);
  swift_bridgeObjectRetain_n();

  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if (v45)
  {
    if (!v44 || (sub_22F17A8E4(v45, v44) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  if (v43)
  {
    if (!v42 || (sub_22F17B318(v43, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (v39)
  {
    v34 = v38;
    if (v38)
    {
      if (sub_22F17AA10(v39, v38))
      {
        v35 = sub_22F17AA10(v41, v40);
        sub_22F13BB74(v39);
        sub_22F13BB74(v38);
        sub_22F13BB74(v39);
        sub_22F18B0F4(v38);

        sub_22F18B0F4(v39);
        return (v35 & 1) != 0;
      }

      sub_22F13BB74(v39);
      sub_22F13BB74(v38);
      sub_22F13BB74(v39);
      sub_22F18B0F4(v38);

      v37 = v39;
LABEL_44:
      sub_22F18B0F4(v37);
      return 0;
    }

    v36 = v39;
    sub_22F13BB74(v39);
    sub_22F13BB74(0);
    sub_22F13BB74(v39);

LABEL_42:
    sub_22F18B0F4(v36);
    v37 = v34;
    goto LABEL_44;
  }

  v36 = 0;
  sub_22F13BB74(0);
  v34 = v38;
  if (v38)
  {
    sub_22F13BB74(v38);
    goto LABEL_42;
  }

  sub_22F13BB74(0);
  sub_22F18B0F4(0);
  return 1;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV2eeoiySbAI_AItFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v6;
  v7 = a2[3];
  v35[2] = a2[2];
  v35[3] = v7;
  v35[4] = a2[4];
  v8 = *a2;
  v35[1] = a2[1];
  v34[4] = v5;
  v35[0] = v8;
  v9 = *&v34[0];
  v10 = v8;
  if (*&v34[0] == 1)
  {
    if (v8 == 1)
    {
      v11 = 1;
      *&v27[24] = *(a1 + 24);
      *&v27[40] = *(a1 + 40);
      *&v27[56] = *(a1 + 56);
      v12 = *(a1 + 72);
      *v27 = 1;
      *&v27[72] = v12;
      *&v27[8] = *(a1 + 8);
      sub_22F13BA9C(v34, &v22, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v35, &v22, &qword_27DAB1AC0, &qword_22F773278);
      v13 = v27;
LABEL_9:
      sub_22F120ADC(v13, &qword_27DAB1AC0, &qword_22F773278);
      return v11;
    }

    sub_22F13BA9C(v34, v27, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v35, v27, &qword_27DAB1AC0, &qword_22F773278);
  }

  else
  {
    *&v27[8] = *(a1 + 8);
    *&v27[24] = *(a1 + 24);
    *&v27[40] = *(a1 + 40);
    *&v27[56] = *(a1 + 56);
    v14 = *(a1 + 72);
    *v27 = *&v34[0];
    *&v27[72] = v14;
    v24 = *&v27[32];
    v25 = *&v27[48];
    v26 = *&v27[64];
    v22 = *v27;
    v23 = *&v27[16];
    if (v8 != 1)
    {
      *&v21[24] = *(a2 + 24);
      *&v21[40] = *(a2 + 40);
      *&v21[56] = *(a2 + 56);
      v16 = *(a2 + 9);
      *&v21[8] = *(a2 + 8);
      *&v21[72] = v16;
      *v21 = v8;
      sub_22F13BA9C(v34, v20, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v35, v20, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v27, v20, &qword_27DAB1AC0, &qword_22F773278);
      v11 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(&v22, v21);
      v19[2] = *&v21[32];
      v19[3] = *&v21[48];
      v19[4] = *&v21[64];
      v19[0] = *v21;
      v19[1] = *&v21[16];
      sub_22F18B46C(v19);
      v20[2] = v24;
      v20[3] = v25;
      v20[4] = v26;
      v20[0] = v22;
      v20[1] = v23;
      sub_22F18B46C(v20);
      *&v21[24] = *(a1 + 24);
      *&v21[40] = *(a1 + 40);
      *&v21[56] = *(a1 + 56);
      v17 = *(a1 + 72);
      *v21 = v9;
      *&v21[72] = v17;
      *&v21[8] = *(a1 + 8);
      v13 = v21;
      goto LABEL_9;
    }

    *&v21[32] = *&v27[32];
    *&v21[48] = *&v27[48];
    *&v21[64] = *&v27[64];
    *v21 = *v27;
    *&v21[16] = *&v27[16];
    sub_22F13BA9C(v34, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v35, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v27, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F18B46C(v21);
  }

  *&v27[24] = *(a1 + 24);
  *&v27[40] = *(a1 + 40);
  *&v27[56] = *(a1 + 56);
  v15 = *(a1 + 72);
  *v27 = v9;
  *&v27[72] = v15;
  v28 = v10;
  *&v27[8] = *(a1 + 8);
  v30 = *(a2 + 24);
  v31 = *(a2 + 40);
  v32 = *(a2 + 56);
  v33 = *(a2 + 9);
  v29 = *(a2 + 8);
  sub_22F120ADC(v27, &qword_27DAB1D70, &qword_22F777130);
  return 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 == 1)
    {
      sub_22F189A6C(*a1, v3);
      sub_22F189A6C(v4, 1);
      sub_22F189A6C(v2, v3);

LABEL_7:
      sub_22F189B28(v2, v3);
      v7 = v4;
      v8 = v5;
LABEL_19:
      sub_22F189B28(v7, v8);
      return 0;
    }

    if (v3)
    {
      if (v5)
      {
        if (v2 == v4 && v3 == v5)
        {
          sub_22F189A6C(*a1, v3);
          sub_22F189A6C(v2, v3);
          sub_22F189A6C(v2, v3);
          v9 = v2;
          v10 = v3;
LABEL_15:
          sub_22F189B28(v9, v10);
LABEL_22:

          sub_22F189B28(v2, v3);
          return 1;
        }

        v13 = *a1;
        v14 = sub_22F742040();
        sub_22F189A6C(v2, v3);
        sub_22F189A6C(v4, v5);
        sub_22F189A6C(v2, v3);
        sub_22F189B28(v4, v5);
        if (v14)
        {
          goto LABEL_22;
        }

LABEL_18:

        v7 = v2;
        v8 = v3;
        goto LABEL_19;
      }

      sub_22F189A6C(*a1, v3);
      v11 = v3;
    }

    else
    {
      sub_22F189A6C(*a1, 0);
      v11 = 0;
      if (!v5)
      {
        sub_22F189A6C(v4, 0);
        sub_22F189A6C(v2, 0);
        v9 = v4;
        v10 = 0;
        goto LABEL_15;
      }
    }

    sub_22F189A6C(v4, v5);
    sub_22F189A6C(v2, v11);
    sub_22F189B28(v4, v5);
    goto LABEL_18;
  }

  sub_22F189A6C(*a1, 1);
  if (v5 != 1)
  {
    sub_22F189A6C(v4, v5);
    goto LABEL_7;
  }

  v6 = 1;
  sub_22F189A6C(v4, 1);
  sub_22F189B28(v2, 1);
  return v6;
}

uint64_t sub_22F189A6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189A80()
{
  result = qword_27DAB1840;
  if (!qword_27DAB1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1840);
  }

  return result;
}

unint64_t sub_22F189AD4()
{
  result = qword_27DAB1848;
  if (!qword_27DAB1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1848);
  }

  return result;
}

uint64_t sub_22F189B28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189B3C()
{
  result = qword_27DAB1858;
  if (!qword_27DAB1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1858);
  }

  return result;
}

unint64_t sub_22F189B90()
{
  result = qword_27DAB1868;
  if (!qword_27DAB1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1868);
  }

  return result;
}

unint64_t sub_22F189BE4()
{
  result = qword_27DAB1878;
  if (!qword_27DAB1878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1878);
  }

  return result;
}

unint64_t sub_22F189C68()
{
  result = qword_27DAB1880;
  if (!qword_27DAB1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1880);
  }

  return result;
}

unint64_t sub_22F189CBC()
{
  result = qword_27DAB1890;
  if (!qword_27DAB1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1890);
  }

  return result;
}

unint64_t sub_22F189D40()
{
  result = qword_27DAB1898;
  if (!qword_27DAB1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1898);
  }

  return result;
}

unint64_t sub_22F189D94()
{
  result = qword_27DAB18A8;
  if (!qword_27DAB18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18A8);
  }

  return result;
}

uint64_t sub_22F189DE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189E30()
{
  result = qword_27DAB18C0;
  if (!qword_27DAB18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18C0);
  }

  return result;
}

unint64_t sub_22F189E84()
{
  result = qword_27DAB18C8;
  if (!qword_27DAB18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18C8);
  }

  return result;
}

uint64_t sub_22F189ED8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189F20()
{
  result = qword_27DAB18D8;
  if (!qword_27DAB18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18D8);
  }

  return result;
}

unint64_t sub_22F189FDC()
{
  result = qword_27DAB18E8;
  if (!qword_27DAB18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18E8);
  }

  return result;
}

unint64_t sub_22F18A030()
{
  result = qword_2810AAC60;
  if (!qword_2810AAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC60);
  }

  return result;
}

unint64_t sub_22F18A084()
{
  result = qword_2810AAC40;
  if (!qword_2810AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC40);
  }

  return result;
}

unint64_t sub_22F18A0D8()
{
  result = qword_27DAB1910;
  if (!qword_27DAB1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1910);
  }

  return result;
}

unint64_t sub_22F18A12C()
{
  result = qword_2810AAC48;
  if (!qword_2810AAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC48);
  }

  return result;
}

unint64_t sub_22F18A180()
{
  result = qword_27DAB1928;
  if (!qword_27DAB1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1928);
  }

  return result;
}

unint64_t sub_22F18A1D4()
{
  result = qword_27DAB1938;
  if (!qword_27DAB1938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1938);
  }

  return result;
}

unint64_t sub_22F18A250()
{
  result = qword_27DAB1948;
  if (!qword_27DAB1948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1948);
  }

  return result;
}

unint64_t sub_22F18A2CC()
{
  result = qword_27DAB1958;
  if (!qword_27DAB1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1958);
  }

  return result;
}

unint64_t sub_22F18A320()
{
  result = qword_2810AAC18;
  if (!qword_2810AAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC18);
  }

  return result;
}

unint64_t sub_22F18A374()
{
  result = qword_27DAB1978;
  if (!qword_27DAB1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1978);
  }

  return result;
}

unint64_t sub_22F18A3C8()
{
  result = qword_27DAB1980;
  if (!qword_27DAB1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1980);
  }

  return result;
}

unint64_t sub_22F18A41C()
{
  result = qword_27DAB1988;
  if (!qword_27DAB1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1988);
  }

  return result;
}

uint64_t sub_22F18A470(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_22F18A4B8()
{
  result = qword_27DAB1990;
  if (!qword_27DAB1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1990);
  }

  return result;
}

uint64_t sub_22F18A50C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_22F18A550()
{
  result = qword_27DAB1998;
  if (!qword_27DAB1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1998);
  }

  return result;
}

unint64_t sub_22F18A5A4()
{
  result = qword_2810AAC70;
  if (!qword_2810AAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC70);
  }

  return result;
}

unint64_t sub_22F18A5F8()
{
  result = qword_2810AAC20;
  if (!qword_2810AAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC20);
  }

  return result;
}

unint64_t sub_22F18A64C()
{
  result = qword_2810AAC28;
  if (!qword_2810AAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC28);
  }

  return result;
}

unint64_t sub_22F18A6A0()
{
  result = qword_2810AAC68;
  if (!qword_2810AAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC68);
  }

  return result;
}

unint64_t sub_22F18A6F4()
{
  result = qword_2810AAC78;
  if (!qword_2810AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC78);
  }

  return result;
}

unint64_t sub_22F18A7B0()
{
  result = qword_2810AABF8;
  if (!qword_2810AABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABF8);
  }

  return result;
}

unint64_t sub_22F18A804()
{
  result = qword_27DAB19B8;
  if (!qword_27DAB19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19B8);
  }

  return result;
}

unint64_t sub_22F18A858()
{
  result = qword_2810AAC00;
  if (!qword_2810AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC00);
  }

  return result;
}

unint64_t sub_22F18A8AC()
{
  result = qword_2810AABD8;
  if (!qword_2810AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABD8);
  }

  return result;
}

unint64_t sub_22F18A900()
{
  result = qword_27DAB19D8;
  if (!qword_27DAB19D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18A984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19D8);
  }

  return result;
}

unint64_t sub_22F18A984()
{
  result = qword_27DAB19E0;
  if (!qword_27DAB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19E0);
  }

  return result;
}

unint64_t sub_22F18A9D8()
{
  result = qword_2810A9340;
  if (!qword_2810A9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18AA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9340);
  }

  return result;
}

unint64_t sub_22F18AA5C()
{
  result = qword_2810AABE0;
  if (!qword_2810AABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABE0);
  }

  return result;
}

unint64_t sub_22F18AAB0()
{
  result = qword_2810AAB20;
  if (!qword_2810AAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB20);
  }

  return result;
}

unint64_t sub_22F18AB04()
{
  result = qword_2810A92C0;
  if (!qword_2810A92C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92C0);
  }

  return result;
}

unint64_t sub_22F18AB80()
{
  result = qword_2810A92B0;
  if (!qword_2810A92B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92B0);
  }

  return result;
}

unint64_t sub_22F18ABFC()
{
  result = qword_2810AAB40;
  if (!qword_2810AAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB40);
  }

  return result;
}

unint64_t sub_22F18AC50()
{
  result = qword_2810AAB60;
  if (!qword_2810AAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB60);
  }

  return result;
}

unint64_t sub_22F18ACA4()
{
  result = qword_2810AAB00;
  if (!qword_2810AAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB00);
  }

  return result;
}

unint64_t sub_22F18ACF8()
{
  result = qword_2810AABA0;
  if (!qword_2810AABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABA0);
  }

  return result;
}

unint64_t sub_22F18AD4C()
{
  result = qword_2810AAB80;
  if (!qword_2810AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB80);
  }

  return result;
}

unint64_t sub_22F18ADA0()
{
  result = qword_2810AABB8;
  if (!qword_2810AABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABB8);
  }

  return result;
}

unint64_t sub_22F18ADF4()
{
  result = qword_27DAB1A60;
  if (!qword_27DAB1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A60);
  }

  return result;
}

unint64_t sub_22F18AE48()
{
  result = qword_27DAB1A68;
  if (!qword_27DAB1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A68);
  }

  return result;
}

unint64_t sub_22F18AE9C()
{
  result = qword_27DAB1A70;
  if (!qword_27DAB1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A70);
  }

  return result;
}

unint64_t sub_22F18AEF0()
{
  result = qword_27DAB1A80;
  if (!qword_27DAB1A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A80);
  }

  return result;
}

unint64_t sub_22F18AF74()
{
  result = qword_27DAB1A88;
  if (!qword_27DAB1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A88);
  }

  return result;
}

unint64_t sub_22F18AFC8()
{
  result = qword_27DAB1A98;
  if (!qword_27DAB1A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18B04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A98);
  }

  return result;
}

unint64_t sub_22F18B04C()
{
  result = qword_27DAB1AA0;
  if (!qword_27DAB1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AA0);
  }

  return result;
}

unint64_t sub_22F18B0A0()
{
  result = qword_27DAB1AA8;
  if (!qword_27DAB1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AA8);
  }

  return result;
}

uint64_t sub_22F18B0F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_22F18B134()
{
  result = qword_2810AAB08;
  if (!qword_2810AAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB08);
  }

  return result;
}

unint64_t sub_22F18B188()
{
  result = qword_2810AAB28;
  if (!qword_2810AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB28);
  }

  return result;
}

unint64_t sub_22F18B1DC()
{
  result = qword_2810AAB48;
  if (!qword_2810AAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB48);
  }

  return result;
}

unint64_t sub_22F18B230()
{
  result = qword_2810A9330;
  if (!qword_2810A9330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18B2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9330);
  }

  return result;
}

unint64_t sub_22F18B2B4()
{
  result = qword_2810AAAE8;
  if (!qword_2810AAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAE8);
  }

  return result;
}

unint64_t sub_22F18B308()
{
  result = qword_2810A9338;
  if (!qword_2810A9338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9338);
  }

  return result;
}

unint64_t sub_22F18B38C()
{
  result = qword_2810AAB88;
  if (!qword_2810AAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB88);
  }

  return result;
}

unint64_t sub_22F18B3E0()
{
  result = qword_2810AAB68;
  if (!qword_2810AAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB68);
  }

  return result;
}

unint64_t sub_22F18B49C()
{
  result = qword_2810AAAD8;
  if (!qword_2810AAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAD8);
  }

  return result;
}

unint64_t sub_22F18B4F0()
{
  result = qword_27DAB1AC8;
  if (!qword_27DAB1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AC8);
  }

  return result;
}

unint64_t sub_22F18B544()
{
  result = qword_2810AAAE0;
  if (!qword_2810AAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAE0);
  }

  return result;
}

unint64_t sub_22F18B598()
{
  result = qword_2810AAAB8;
  if (!qword_2810AAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAB8);
  }

  return result;
}

unint64_t sub_22F18B5EC()
{
  result = qword_27DAB1AE8;
  if (!qword_27DAB1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AE8);
  }

  return result;
}

unint64_t sub_22F18B670()
{
  result = qword_27DAB1AF0;
  if (!qword_27DAB1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AF0);
  }

  return result;
}

unint64_t sub_22F18B6C4()
{
  result = qword_2810A9328;
  if (!qword_2810A9328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9328);
  }

  return result;
}

unint64_t sub_22F18B748()
{
  result = qword_2810AAAC0;
  if (!qword_2810AAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAC0);
  }

  return result;
}

unint64_t sub_22F18B79C()
{
  result = qword_27DAB1B08;
  if (!qword_27DAB1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B08);
  }

  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  if (!v3)
  {
    if (!v8)
    {

      if (v5 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }

    v12 = *a2;
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_15:

    return 0;
  }

  if ((sub_22F17ADF4(v3, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 1)
  {
LABEL_5:
    sub_22F1007AC(1);
    if (v7 == 1)
    {
      v5 = 1;
      sub_22F1007AC(1);
      goto LABEL_7;
    }

    sub_22F1007AC(v7);
LABEL_20:
    sub_22F1007BC(v5);
    v13 = v7;
LABEL_57:
    sub_22F1007BC(v13);
    return 0;
  }

LABEL_17:
  if (v7 == 1)
  {
    sub_22F1007AC(v5);
    sub_22F1007AC(1);
    sub_22F1007AC(v5);

    goto LABEL_20;
  }

  if (v5)
  {
    if (v7)
    {
      sub_22F1007AC(v5);
      sub_22F1007AC(v7);
      sub_22F1007AC(v5);
      sub_22F1007AC(v7);
      v14 = sub_22F17A460(v5, v7);
      sub_22F1007BC(v7);
      sub_22F1007BC(v7);
      if (v14)
      {

        goto LABEL_7;
      }

LABEL_37:

      v13 = v5;
      goto LABEL_57;
    }

    sub_22F1007AC(v5);
    v15 = v5;
LABEL_36:
    sub_22F1007AC(v7);
    sub_22F1007AC(v15);
    sub_22F1007BC(v7);
    goto LABEL_37;
  }

  sub_22F1007AC(0);
  v15 = 0;
  if (v7)
  {
    goto LABEL_36;
  }

  sub_22F1007AC(0);
  sub_22F1007AC(0);
  sub_22F1007BC(0);

LABEL_7:
  sub_22F1007BC(v5);
  if (v4 == 1)
  {
    sub_22F1007AC(1);
    if (v10 == 1)
    {
      v4 = 1;
      sub_22F1007AC(1);
      goto LABEL_10;
    }

    sub_22F1007AC(v10);
    goto LABEL_30;
  }

  if (v10 == 1)
  {
    sub_22F1007AC(v4);
    sub_22F1007AC(1);
    sub_22F1007AC(v4);

LABEL_30:
    sub_22F1007BC(v4);
    v13 = v10;
    goto LABEL_57;
  }

  if (v4)
  {
    if (v10)
    {
      sub_22F1007AC(v4);
      sub_22F1007AC(v10);
      sub_22F1007AC(v4);
      sub_22F1007AC(v10);
      v16 = sub_22F17AA6C(v4, v10);
      sub_22F1007BC(v10);
      sub_22F1007BC(v10);
      if (v16)
      {

        goto LABEL_10;
      }

LABEL_50:

      v13 = v4;
      goto LABEL_57;
    }

    sub_22F1007AC(v4);
    v17 = v4;
LABEL_49:
    sub_22F1007AC(v10);
    sub_22F1007AC(v17);
    sub_22F1007BC(v10);
    goto LABEL_50;
  }

  sub_22F1007AC(0);
  v17 = 0;
  if (v10)
  {
    goto LABEL_49;
  }

  sub_22F1007AC(0);
  sub_22F1007AC(0);
  sub_22F1007BC(0);

LABEL_10:
  sub_22F1007BC(v4);
  if (v6 != 1)
  {
    if (v9 == 1)
    {
      sub_22F1007AC(v6);
      sub_22F1007AC(1);
      sub_22F1007AC(v6);

LABEL_43:
      sub_22F1007BC(v6);
      v13 = v9;
      goto LABEL_57;
    }

    if (v6)
    {
      if (v9)
      {
        sub_22F1007AC(v6);
        sub_22F1007AC(v9);
        sub_22F1007AC(v6);
        sub_22F1007AC(v9);
        v18 = sub_22F17A530(v6, v9);
        sub_22F1007BC(v9);
        sub_22F1007BC(v9);
        if ((v18 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_53:

        sub_22F1007BC(v6);
        return 1;
      }

      sub_22F1007AC(v6);
      v19 = v6;
    }

    else
    {
      sub_22F1007AC(0);
      v19 = 0;
      if (!v9)
      {
        sub_22F1007AC(0);
        sub_22F1007AC(0);
        sub_22F1007BC(0);
        goto LABEL_53;
      }
    }

    sub_22F1007AC(v9);
    sub_22F1007AC(v19);
    sub_22F1007BC(v9);
LABEL_56:

    v13 = v6;
    goto LABEL_57;
  }

  sub_22F1007AC(1);
  if (v9 != 1)
  {
    sub_22F1007AC(v9);
    goto LABEL_43;
  }

  v11 = 1;
  sub_22F1007AC(1);
  sub_22F1007BC(1);
  return v11;
}

unint64_t sub_22F18BC24()
{
  result = qword_2810AAC98;
  if (!qword_2810AAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC98);
  }

  return result;
}

unint64_t sub_22F18BC78()
{
  result = qword_27DAB1B20;
  if (!qword_27DAB1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B20);
  }

  return result;
}

unint64_t sub_22F18BCCC()
{
  result = qword_27DAB1B28;
  if (!qword_27DAB1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B28);
  }

  return result;
}

unint64_t sub_22F18BD20()
{
  result = qword_27DAB1B30;
  if (!qword_27DAB1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B30);
  }

  return result;
}

unint64_t sub_22F18BD74()
{
  result = qword_27DAB1B38;
  if (!qword_27DAB1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B38);
  }

  return result;
}

unint64_t sub_22F18BDC8()
{
  result = qword_2810AAC80;
  if (!qword_2810AAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC80);
  }

  return result;
}

unint64_t sub_22F18BE1C()
{
  result = qword_2810AAA98;
  if (!qword_2810AAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA98);
  }

  return result;
}

unint64_t sub_22F18BE70()
{
  result = qword_2810AABC0;
  if (!qword_2810AABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABC0);
  }

  return result;
}

unint64_t sub_22F18BEC4()
{
  result = qword_2810AAAA0;
  if (!qword_2810AAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAA0);
  }

  return result;
}

unint64_t sub_22F18BF18()
{
  result = qword_27DAB1B50;
  if (!qword_27DAB1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B50);
  }

  return result;
}

unint64_t sub_22F18BFD4()
{
  result = qword_2810AAD70;
  if (!qword_2810AAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD70);
  }

  return result;
}

unint64_t sub_22F18C028()
{
  result = qword_27DAB1B70;
  if (!qword_27DAB1B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B70);
  }

  return result;
}

unint64_t sub_22F18C0AC()
{
  result = qword_27DAB1B78;
  if (!qword_27DAB1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B78);
  }

  return result;
}

unint64_t sub_22F18C100()
{
  result = qword_2810A9358;
  if (!qword_2810A9358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9358);
  }

  return result;
}

unint64_t sub_22F18C184()
{
  result = qword_2810AAD78;
  if (!qword_2810AAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD78);
  }

  return result;
}

uint64_t sub_22F18C1D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    sub_22F1007AC(a2);
    sub_22F1007AC(a3);

    return sub_22F1007AC(a4);
  }

  return result;
}

unint64_t sub_22F18C23C()
{
  result = qword_2810AACB0;
  if (!qword_2810AACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACB0);
  }

  return result;
}

unint64_t sub_22F18C290()
{
  result = qword_27DAB1B98;
  if (!qword_27DAB1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B98);
  }

  return result;
}

unint64_t sub_22F18C2E4()
{
  result = qword_27DAB1BA0;
  if (!qword_27DAB1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BA0);
  }

  return result;
}

uint64_t sub_22F18C338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    sub_22F1007BC(a2);
    sub_22F1007BC(a3);

    return sub_22F1007BC(a4);
  }

  return result;
}

unint64_t sub_22F18C39C()
{
  result = qword_27DAB1BA8;
  if (!qword_27DAB1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BA8);
  }

  return result;
}

unint64_t sub_22F18C3F0()
{
  result = qword_2810AACB8;
  if (!qword_2810AACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACB8);
  }

  return result;
}

unint64_t sub_22F18C444()
{
  result = qword_2810AAA90;
  if (!qword_2810AAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA90);
  }

  return result;
}

unint64_t sub_22F18C498()
{
  result = qword_2810AAD58;
  if (!qword_2810AAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV10AttributesV10PlayParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV10AttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_22F18C598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_22F18C5E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_22F18C6C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18C71C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22F18C7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F18C804(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F18C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18C8E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22F18C950(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18C9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaestroSongs(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaestroSongs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F18CAC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18CB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18CBE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F18CCA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 354))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 288);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CD0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 354) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 354) = 0;
    }

    if (a2)
    {
      *(result + 288) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22F18CDD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 354))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 288);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CE40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 354) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 354) = 0;
    }

    if (a2)
    {
      *(result + 288) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22F18CF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CF84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18CFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18D058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

__n128 __swift_memcpy70_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F18D104(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 70))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F18D124(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 70) = v3;
  return result;
}

uint64_t sub_22F18D188(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18D1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22F18D260(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F18D280(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV11VideoEventsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22F18D310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18D378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18D3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18D448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_22F18D4F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F18D53C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F18D590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22F18D5D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22F18D628(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F18D670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F18D6E0(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F18D73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F18D7C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_22F18D808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Attributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F18DF80()
{
  result = qword_27DAB1BB8;
  if (!qword_27DAB1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BB8);
  }

  return result;
}

unint64_t sub_22F18DFD8()
{
  result = qword_27DAB1BC0;
  if (!qword_27DAB1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BC0);
  }

  return result;
}

unint64_t sub_22F18E030()
{
  result = qword_27DAB1BC8;
  if (!qword_27DAB1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BC8);
  }

  return result;
}

unint64_t sub_22F18E088()
{
  result = qword_27DAB1BD0;
  if (!qword_27DAB1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BD0);
  }

  return result;
}

unint64_t sub_22F18E0E0()
{
  result = qword_27DAB1BD8;
  if (!qword_27DAB1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BD8);
  }

  return result;
}

unint64_t sub_22F18E138()
{
  result = qword_27DAB1BE0;
  if (!qword_27DAB1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BE0);
  }

  return result;
}

unint64_t sub_22F18E190()
{
  result = qword_27DAB1BE8;
  if (!qword_27DAB1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BE8);
  }

  return result;
}

unint64_t sub_22F18E1E8()
{
  result = qword_27DAB1BF0;
  if (!qword_27DAB1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BF0);
  }

  return result;
}

unint64_t sub_22F18E240()
{
  result = qword_27DAB1BF8;
  if (!qword_27DAB1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BF8);
  }

  return result;
}

unint64_t sub_22F18E298()
{
  result = qword_27DAB1C00;
  if (!qword_27DAB1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C00);
  }

  return result;
}

unint64_t sub_22F18E2F0()
{
  result = qword_27DAB1C08;
  if (!qword_27DAB1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C08);
  }

  return result;
}

unint64_t sub_22F18E348()
{
  result = qword_27DAB1C10;
  if (!qword_27DAB1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C10);
  }

  return result;
}

unint64_t sub_22F18E3A0()
{
  result = qword_27DAB1C18;
  if (!qword_27DAB1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C18);
  }

  return result;
}

unint64_t sub_22F18E3F8()
{
  result = qword_27DAB1C20;
  if (!qword_27DAB1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C20);
  }

  return result;
}

unint64_t sub_22F18E450()
{
  result = qword_27DAB1C28;
  if (!qword_27DAB1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C28);
  }

  return result;
}

unint64_t sub_22F18E4A8()
{
  result = qword_27DAB1C30;
  if (!qword_27DAB1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C30);
  }

  return result;
}

unint64_t sub_22F18E500()
{
  result = qword_27DAB1C38;
  if (!qword_27DAB1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C38);
  }

  return result;
}

unint64_t sub_22F18E558()
{
  result = qword_27DAB1C40;
  if (!qword_27DAB1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C40);
  }

  return result;
}

unint64_t sub_22F18E5B0()
{
  result = qword_27DAB1C48;
  if (!qword_27DAB1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C48);
  }

  return result;
}

unint64_t sub_22F18E608()
{
  result = qword_27DAB1C50;
  if (!qword_27DAB1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C50);
  }

  return result;
}

unint64_t sub_22F18E660()
{
  result = qword_27DAB1C58;
  if (!qword_27DAB1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C58);
  }

  return result;
}

unint64_t sub_22F18E6B8()
{
  result = qword_27DAB1C60;
  if (!qword_27DAB1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C60);
  }

  return result;
}

unint64_t sub_22F18E710()
{
  result = qword_27DAB1C68;
  if (!qword_27DAB1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C68);
  }

  return result;
}

unint64_t sub_22F18E768()
{
  result = qword_27DAB1C70;
  if (!qword_27DAB1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C70);
  }

  return result;
}

unint64_t sub_22F18E7C0()
{
  result = qword_27DAB1C78;
  if (!qword_27DAB1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C78);
  }

  return result;
}

unint64_t sub_22F18E818()
{
  result = qword_27DAB1C80;
  if (!qword_27DAB1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C80);
  }

  return result;
}

unint64_t sub_22F18E870()
{
  result = qword_27DAB1C88;
  if (!qword_27DAB1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C88);
  }

  return result;
}

unint64_t sub_22F18E8C8()
{
  result = qword_27DAB1C90;
  if (!qword_27DAB1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C90);
  }

  return result;
}

unint64_t sub_22F18E920()
{
  result = qword_27DAB1C98;
  if (!qword_27DAB1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C98);
  }

  return result;
}

unint64_t sub_22F18E978()
{
  result = qword_27DAB1CA0;
  if (!qword_27DAB1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CA0);
  }

  return result;
}

unint64_t sub_22F18E9D0()
{
  result = qword_27DAB1CA8;
  if (!qword_27DAB1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CA8);
  }

  return result;
}

unint64_t sub_22F18EA28()
{
  result = qword_27DAB1CB0;
  if (!qword_27DAB1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CB0);
  }

  return result;
}

unint64_t sub_22F18EA80()
{
  result = qword_27DAB1CB8;
  if (!qword_27DAB1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CB8);
  }

  return result;
}

unint64_t sub_22F18EAD8()
{
  result = qword_2810AACA0;
  if (!qword_2810AACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACA0);
  }

  return result;
}

unint64_t sub_22F18EB30()
{
  result = qword_2810AACA8;
  if (!qword_2810AACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACA8);
  }

  return result;
}

unint64_t sub_22F18EB88()
{
  result = qword_2810AAD60;
  if (!qword_2810AAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD60);
  }

  return result;
}

unint64_t sub_22F18EBE0()
{
  result = qword_2810AAD68;
  if (!qword_2810AAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD68);
  }

  return result;
}

unint64_t sub_22F18EC38()
{
  result = qword_27DAB1CC0;
  if (!qword_27DAB1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CC0);
  }

  return result;
}

unint64_t sub_22F18EC90()
{
  result = qword_27DAB1CC8;
  if (!qword_27DAB1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CC8);
  }

  return result;
}

unint64_t sub_22F18ECE8()
{
  result = qword_2810AAC88;
  if (!qword_2810AAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC88);
  }

  return result;
}

unint64_t sub_22F18ED40()
{
  result = qword_2810AAC90;
  if (!qword_2810AAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC90);
  }

  return result;
}

unint64_t sub_22F18ED98()
{
  result = qword_27DAB1CD0;
  if (!qword_27DAB1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CD0);
  }

  return result;
}

unint64_t sub_22F18EDF0()
{
  result = qword_27DAB1CD8;
  if (!qword_27DAB1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CD8);
  }

  return result;
}

unint64_t sub_22F18EE48()
{
  result = qword_2810AAAA8;
  if (!qword_2810AAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAA8);
  }

  return result;
}

unint64_t sub_22F18EEA0()
{
  result = qword_2810AAAB0;
  if (!qword_2810AAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAB0);
  }

  return result;
}

unint64_t sub_22F18EEF8()
{
  result = qword_2810AAAC8;
  if (!qword_2810AAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAC8);
  }

  return result;
}

unint64_t sub_22F18EF50()
{
  result = qword_2810AAAD0;
  if (!qword_2810AAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAD0);
  }

  return result;
}

unint64_t sub_22F18EFA8()
{
  result = qword_2810AABA8;
  if (!qword_2810AABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABA8);
  }

  return result;
}

unint64_t sub_22F18F000()
{
  result = qword_2810AABB0;
  if (!qword_2810AABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABB0);
  }

  return result;
}

unint64_t sub_22F18F058()
{
  result = qword_2810AAB70;
  if (!qword_2810AAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB70);
  }

  return result;
}

unint64_t sub_22F18F0B0()
{
  result = qword_2810AAB78;
  if (!qword_2810AAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB78);
  }

  return result;
}

unint64_t sub_22F18F108()
{
  result = qword_2810AAB90;
  if (!qword_2810AAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB90);
  }

  return result;
}

unint64_t sub_22F18F160()
{
  result = qword_2810AAB98;
  if (!qword_2810AAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB98);
  }

  return result;
}

unint64_t sub_22F18F1B8()
{
  result = qword_2810AAAF0;
  if (!qword_2810AAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAF0);
  }

  return result;
}

unint64_t sub_22F18F210()
{
  result = qword_2810AAAF8;
  if (!qword_2810AAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAF8);
  }

  return result;
}

unint64_t sub_22F18F268()
{
  result = qword_2810AAB50;
  if (!qword_2810AAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB50);
  }

  return result;
}

unint64_t sub_22F18F2C0()
{
  result = qword_2810AAB58;
  if (!qword_2810AAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB58);
  }

  return result;
}

unint64_t sub_22F18F318()
{
  result = qword_2810AAB30;
  if (!qword_2810AAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB30);
  }

  return result;
}

unint64_t sub_22F18F370()
{
  result = qword_2810AAB38;
  if (!qword_2810AAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB38);
  }

  return result;
}

unint64_t sub_22F18F3C8()
{
  result = qword_2810AAB10;
  if (!qword_2810AAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB10);
  }

  return result;
}

unint64_t sub_22F18F420()
{
  result = qword_2810AAB18;
  if (!qword_2810AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB18);
  }

  return result;
}

unint64_t sub_22F18F478()
{
  result = qword_2810AABC8;
  if (!qword_2810AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABC8);
  }

  return result;
}

unint64_t sub_22F18F4D0()
{
  result = qword_2810AABD0;
  if (!qword_2810AABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABD0);
  }

  return result;
}

unint64_t sub_22F18F528()
{
  result = qword_2810AABE8;
  if (!qword_2810AABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABE8);
  }

  return result;
}

unint64_t sub_22F18F580()
{
  result = qword_2810AABF0;
  if (!qword_2810AABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABF0);
  }

  return result;
}

unint64_t sub_22F18F5D8()
{
  result = qword_2810AAC08;
  if (!qword_2810AAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC08);
  }

  return result;
}

unint64_t sub_22F18F630()
{
  result = qword_2810AAC10;
  if (!qword_2810AAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC10);
  }

  return result;
}

unint64_t sub_22F18F688()
{
  result = qword_27DAB1CE0;
  if (!qword_27DAB1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CE0);
  }

  return result;
}

unint64_t sub_22F18F6E0()
{
  result = qword_27DAB1CE8;
  if (!qword_27DAB1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CE8);
  }

  return result;
}

unint64_t sub_22F18F738()
{
  result = qword_27DAB1CF0;
  if (!qword_27DAB1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CF0);
  }

  return result;
}

unint64_t sub_22F18F790()
{
  result = qword_27DAB1CF8;
  if (!qword_27DAB1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CF8);
  }

  return result;
}

unint64_t sub_22F18F7E8()
{
  result = qword_2810AAC30;
  if (!qword_2810AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC30);
  }

  return result;
}

unint64_t sub_22F18F840()
{
  result = qword_2810AAC38;
  if (!qword_2810AAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC38);
  }

  return result;
}

unint64_t sub_22F18F898()
{
  result = qword_2810AAC50;
  if (!qword_2810AAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC50);
  }

  return result;
}

unint64_t sub_22F18F8F0()
{
  result = qword_2810AAC58;
  if (!qword_2810AAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC58);
  }

  return result;
}

unint64_t sub_22F18F948()
{
  result = qword_27DAB1D00;
  if (!qword_27DAB1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D00);
  }

  return result;
}

unint64_t sub_22F18F9A0()
{
  result = qword_27DAB1D08;
  if (!qword_27DAB1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D08);
  }

  return result;
}

unint64_t sub_22F18F9F8()
{
  result = qword_27DAB1D10;
  if (!qword_27DAB1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D10);
  }

  return result;
}

unint64_t sub_22F18FA50()
{
  result = qword_27DAB1D18;
  if (!qword_27DAB1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D18);
  }

  return result;
}

unint64_t sub_22F18FAA8()
{
  result = qword_27DAB1D20;
  if (!qword_27DAB1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D20);
  }

  return result;
}

unint64_t sub_22F18FB00()
{
  result = qword_27DAB1D28;
  if (!qword_27DAB1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D28);
  }

  return result;
}

unint64_t sub_22F18FB58()
{
  result = qword_27DAB1D30;
  if (!qword_27DAB1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D30);
  }

  return result;
}

unint64_t sub_22F18FBB0()
{
  result = qword_27DAB1D38;
  if (!qword_27DAB1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D38);
  }

  return result;
}

unint64_t sub_22F18FC08()
{
  result = qword_27DAB1D40;
  if (!qword_27DAB1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D40);
  }

  return result;
}

unint64_t sub_22F18FC60()
{
  result = qword_27DAB1D48;
  if (!qword_27DAB1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D48);
  }

  return result;
}

unint64_t sub_22F18FCB8()
{
  result = qword_27DAB1D50;
  if (!qword_27DAB1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D50);
  }

  return result;
}

unint64_t sub_22F18FD10()
{
  result = qword_27DAB1D58;
  if (!qword_27DAB1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D58);
  }

  return result;
}

unint64_t sub_22F18FD68()
{
  result = qword_27DAB1D60;
  if (!qword_27DAB1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D60);
  }

  return result;
}

unint64_t sub_22F18FDC0()
{
  result = qword_27DAB1D68;
  if (!qword_27DAB1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D68);
  }

  return result;
}

unint64_t sub_22F18FE18()
{
  result = qword_2810AAD40;
  if (!qword_2810AAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD40);
  }

  return result;
}

unint64_t sub_22F18FE70()
{
  result = qword_2810AAD48;
  if (!qword_2810AAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD48);
  }

  return result;
}

unint64_t sub_22F18FEC8()
{
  result = qword_2810AAD08;
  if (!qword_2810AAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD08);
  }

  return result;
}

unint64_t sub_22F18FF20()
{
  result = qword_2810AAD10;
  if (!qword_2810AAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD10);
  }

  return result;
}

unint64_t sub_22F18FF78()
{
  result = qword_2810AAD28;
  if (!qword_2810AAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD28);
  }

  return result;
}

unint64_t sub_22F18FFD0()
{
  result = qword_2810AAD30;
  if (!qword_2810AAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD30);
  }

  return result;
}

unint64_t sub_22F190028()
{
  result = qword_2810AACC8;
  if (!qword_2810AACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACC8);
  }

  return result;
}

unint64_t sub_22F190080()
{
  result = qword_2810AACD0;
  if (!qword_2810AACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACD0);
  }

  return result;
}

unint64_t sub_22F1900D8()
{
  result = qword_2810AACE8;
  if (!qword_2810AACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACE8);
  }

  return result;
}

unint64_t sub_22F190130()
{
  result = qword_2810AACF0;
  if (!qword_2810AACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACF0);
  }

  return result;
}

uint64_t sub_22F190184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F190294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F1903B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572506F72746E69 && a2 == 0xEC00000077656976 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7377656976657270 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E65726566657270 && a2 == 0xEF65726F63536563 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73676174696E75 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F78FFF0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL || (sub_22F742040() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61 || (sub_22F742040() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F790010 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72)
  {

    return 15;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_22F1908D8()
{
  v0 = sub_22F741E30();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22F190924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1801545072 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F190A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F190B50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F790070 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22F190CC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374616562 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7172194 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22F190FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61566E696167 && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22F191124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F191254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22F191468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43545565746164 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4354557372756F68 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022F7900D0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F4379616C70 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4370696B73 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x52646E457473616CLL && a2 == 0xED00006E6F736165 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F7900F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F19171C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_22F191888()
{
  result = qword_2810A8EA0;
  if (!qword_2810A8EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EA0);
  }

  return result;
}

uint64_t sub_22F19193C(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_22F191AA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    type metadata accessor for SongSourceEntry();
    sub_22F1A3328(&unk_27DAB1E28, type metadata accessor for SongSourceEntry);
    sub_22F741470();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (type metadata accessor for SongSourceEntry(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_22F0FF590();
      return;
    }

LABEL_17:
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22F740E20();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_22F13E1A8((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t MusicCache.read(songSourceIdentifier:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771340;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v12[0] = v5;
  v12[1] = v6;
  v13 = v7;
  v14 = v8;

  v10 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v9, v12);

  return v10;
}

uint64_t MusicCache.MergePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t MusicCache.ReadOptions.init(sortDescriptors:fetchLimit:shouldReadPlaybackInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t sub_22F191FAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E58, &qword_22F7774E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F770DF0;
  v1 = *MEMORY[0x277CBE1D8];
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v3 = *MEMORY[0x277CBE178];
  *(inited + 56) = sub_22F740E20();
  *(inited + 64) = v4;
  *(inited + 72) = 1;
  v5 = sub_22F14E41C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1E60, qword_22F7774E8);
  result = swift_arrayDestroy();
  qword_2810AC290 = v5;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.readMusicCacheInfo()(PhotosGraph::MusicCacheInfo_optional *__return_ptr retstr)
{
  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4EA8;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v5, 0, v4, &v10);
  sub_22F1A2878(v11);
  v6 = memcpy(v9, v11, sizeof(v9));
  v7 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v6);
  sub_22F7417A0();
  if (v2)
  {

    memcpy(v8, v9, sizeof(v8));
    sub_22F120ADC(v8, &unk_27DAB1D90, &qword_22F7771A8);
  }

  else
  {
    sub_22F1B2BBC(0);

    memcpy(retstr, v9, 0x130uLL);
  }
}

void MusicCache.removeAll(progressReporter:)()
{
  sub_22F741710();
  v1 = *(v0 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F7417A0();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.write(musicCacheInfo:)(PhotosGraph::MusicCacheInfo *musicCacheInfo)
{
  memcpy(v8, musicCacheInfo, sizeof(v8));
  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v3 = qword_2810B4EA8;
  *&v4 = CACurrentMediaTime();
  v5 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v4, 0, v3, &v7);
  v6 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v5);
  sub_22F7417A0();
  if (!v2)
  {
    sub_22F1B2BBC(0);
  }
}