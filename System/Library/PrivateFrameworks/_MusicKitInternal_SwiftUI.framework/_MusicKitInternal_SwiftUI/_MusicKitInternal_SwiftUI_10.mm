uint64_t sub_217953F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217966E4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + *(_s11ContentViewVMa() + 52);
  sub_2179568EC();
  sub_217966E3C();
  return (*(v5 + 8))(v8, v4);
}

void sub_217954028(uint64_t a1)
{
  sub_217954188(319, &qword_27CB8C280, MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966ADC();
    if (v5 <= 0x3F)
    {
      sub_21788C1DC();
      if (v6 <= 0x3F)
      {
        sub_217954188(319, &qword_27CB8F228, MEMORY[0x277CDF468]);
        if (v7 <= 0x3F)
        {
          sub_2179541DC();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217954188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_2179541DC()
{
  if (!qword_27CB8F230)
  {
    sub_217966E4C();
    v0 = sub_2179666CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8F230);
    }
  }
}

unint64_t sub_21795427C()
{
  result = qword_27CB8A7A0;
  if (!qword_27CB8A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A7A0);
  }

  return result;
}

uint64_t sub_2179542E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = _s11ContentViewVMa();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  v6 = *v5;

  v7 = v5[1];

  v8 = v5[3];

  v9 = v5[4];

  v10 = v5[6];

  if (v5[13])
  {
    if (v5[11])
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 8);
    }
  }

  else
  {
    v11 = v5[8];
  }

  sub_2179542E0(v5[14], *(v5 + 120));
  v12 = *(v3 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F198, &dword_217972FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_217966E4C();
    OUTLINED_FUNCTION_3(v13);
    (*(v14 + 8))(v5 + v12);
  }

  else
  {
    v15 = *(v5 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_217954488(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(_s11ContentViewVMa() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a3(a1, a2, v9, v6, v7);
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return MEMORY[0x282131EE8](0);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_217966F8C();
}

uint64_t _s8MenuCellVMa()
{
  result = qword_27CB8F240;
  if (!qword_27CB8F240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217954634()
{
  sub_2179546C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2179546C4()
{
  if (!qword_27CB8F250)
  {
    sub_217966E2C();
    v0 = sub_2179666CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8F250);
    }
  }
}

unint64_t sub_217954730()
{
  result = qword_27CB8F258;
  if (!qword_27CB8F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F258);
  }

  return result;
}

uint64_t sub_217954784@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F260, &qword_217973158);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &__src[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F268, &qword_217973160);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &__src[-v12];
  *v7 = sub_217966D1C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F270, &qword_217973168);
  sub_217954A28(v1, &v7[*(v14 + 44)]);
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F278, &qword_217973170) + 36)] = 0;
  v15 = sub_21796744C();
  v16 = v1[5];
  sub_21796660C();
  v17 = &v7[*(v4 + 44)];
  *v17 = v15;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = v1[7];
  sub_217967E3C();
  sub_217966A6C();
  sub_217864D20(v7, v13, &qword_27CB8F260, &qword_217973158);
  memcpy(&v13[*(v8 + 36)], __src, 0x70uLL);
  LOBYTE(v7) = sub_2179673EC();
  v23 = v1[6];
  sub_21796660C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_217864D20(v13, a1, &qword_27CB8F268, &qword_217973160);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F280, &qword_217973178);
  v33 = a1 + *(result + 36);
  *v33 = v7;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_217954A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F288, &qword_217973180);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F290, &qword_217973188);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v49 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F298, &qword_217973190);
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v49);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2A0, &unk_217973198);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v52 = a1;
  v58 = a1;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B600, &unk_21796BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2A8, &qword_2179731A8);
  sub_2179554DC(&qword_27CB8B618, &qword_27CB8B600, &unk_21796BED0);
  sub_2179554DC(&qword_27CB8F2B0, &qword_27CB8F2A8, &qword_2179731A8);
  sub_217967BEC();
  sub_217864B2C(&qword_27CB8F2B8, &qword_27CB8F298, &qword_217973190);
  sub_217955554();
  v21 = v49;
  sub_2179676BC();
  (*(v10 + 8))(v13, v21);
  v22 = v50;
  sub_217967E4C();
  sub_2179667FC();
  v23 = &v20[*(v15 + 44)];
  v24 = v62;
  *v23 = v61;
  *(v23 + 1) = v24;
  *(v23 + 2) = v63;
  v25 = sub_217967B8C();
  v26 = sub_21796747C();
  KeyPath = swift_getKeyPath();
  *&v64 = v25;
  *(&v64 + 1) = KeyPath;
  *&v65 = v26;
  sub_21796750C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4D0, &qword_21796BD50);
  sub_2178981D0();
  v28 = v51;
  sub_2179676AC();

  v29 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2C8, &unk_2179731E0) + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v31 = *MEMORY[0x277CE1050];
  v32 = sub_217967BCC();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  LODWORD(v31) = sub_2179670EC();
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2D0, &qword_217973220) + 36)) = v31;
  sub_217967E5C();
  sub_2179667FC();
  v33 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F2D8, &qword_217973228) + 36));
  v34 = v65;
  *v33 = v64;
  v33[1] = v34;
  v33[2] = v66;
  LOBYTE(v31) = sub_2179673EC();
  v35 = *(v52 + 64);
  sub_21796660C();
  v36 = v22 + *(v28 + 36);
  *v36 = v31;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38;
  *(v36 + 24) = v39;
  *(v36 + 32) = v40;
  *(v36 + 40) = 0;
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v41 = qword_27CB97A38;
  v59 = qword_27CB97A28;
  v60 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x64726177726F66, 0xE700000000000000);

  sub_2178EE0A8(v59, v60, v41);

  sub_2179555A8();
  v42 = v54;
  sub_21796790C();

  sub_2178653BC(v22, &qword_27CB8F288, &qword_217973180);
  v43 = v53;
  sub_217864D70(v20, v53, &qword_27CB8F2A0, &unk_217973198);
  v44 = v55;
  sub_217864D70(v42, v55, &qword_27CB8F290, &qword_217973188);
  v45 = v56;
  sub_217864D70(v43, v56, &qword_27CB8F2A0, &unk_217973198);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F300, &qword_217973238);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_217864D70(v44, v45 + *(v46 + 64), &qword_27CB8F290, &qword_217973188);
  sub_2178653BC(v42, &qword_27CB8F290, &qword_217973188);
  sub_2178653BC(v20, &qword_27CB8F2A0, &unk_217973198);
  sub_2178653BC(v44, &qword_27CB8F290, &qword_217973188);
  return sub_2178653BC(v43, &qword_27CB8F2A0, &unk_217973198);
}

uint64_t sub_2179551BC(uint64_t *a1)
{
  v8 = *a1;
  v10 = a1[1];
  sub_217873C34();

  v1 = sub_21796763C();
  v3 = v2;
  v5 = v4;
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v6 = qword_27CB97A38;
  v9 = qword_27CB97A28;
  v11 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x656C746974, 0xE500000000000000);

  sub_2178EE0A8(v9, v11, v6);

  sub_21796790C();
  sub_21788C9B8(v1, v3, v5 & 1);
}

uint64_t sub_217955350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  if (v1 == 1)
  {
    sub_217967BAC();
  }

  else
  {
    sub_217967B8C();
  }

  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  v4 = qword_27CB97A38;
  v6 = qword_27CB97A28;
  v7 = unk_27CB97A30;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x6567616D69, 0xE500000000000000);

  sub_2178EE0A8(v6, v7, v4);

  sub_21796790C();
}

uint64_t sub_2179554DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2178BD980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217955554()
{
  result = qword_27CB8F2C0;
  if (!qword_27CB8F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2C0);
  }

  return result;
}

unint64_t sub_2179555A8()
{
  result = qword_27CB8F2E0;
  if (!qword_27CB8F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F288, &qword_217973180);
    sub_217955634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2E0);
  }

  return result;
}

unint64_t sub_217955634()
{
  result = qword_27CB8F2E8;
  if (!qword_27CB8F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2D8, &qword_217973228);
    sub_2179556C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2E8);
  }

  return result;
}

unint64_t sub_2179556C0()
{
  result = qword_27CB8F2F0;
  if (!qword_27CB8F2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2D0, &qword_217973220);
    sub_217955778();
    sub_217864B2C(&qword_27CB8B548, &qword_27CB8B550, &qword_217973230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2F0);
  }

  return result;
}

unint64_t sub_217955778()
{
  result = qword_27CB8F2F8;
  if (!qword_27CB8F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F2C8, &unk_2179731E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B4D0, &qword_21796BD50);
    sub_2178981D0();
    swift_getOpaqueTypeConformance2();
    sub_217864B2C(&qword_27CB8B4E8, &qword_27CB8B4F0, &qword_21796BD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F2F8);
  }

  return result;
}

unint64_t sub_21795586C()
{
  result = qword_27CB8F308;
  if (!qword_27CB8F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F280, &qword_217973178);
    sub_2179558F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F308);
  }

  return result;
}

unint64_t sub_2179558F8()
{
  result = qword_27CB8F310;
  if (!qword_27CB8F310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F268, &qword_217973160);
    sub_217955984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F310);
  }

  return result;
}

unint64_t sub_217955984()
{
  result = qword_27CB8F318;
  if (!qword_27CB8F318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F260, &qword_217973158);
    sub_217955A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F318);
  }

  return result;
}

unint64_t sub_217955A10()
{
  result = qword_27CB8F320;
  if (!qword_27CB8F320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F278, &qword_217973170);
    sub_217864B2C(&qword_27CB8F328, qword_27CB8F330, &unk_217973240);
    sub_217864B2C(&qword_27CB8BB00, &qword_27CB8BB08, &qword_21796C8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F320);
  }

  return result;
}

uint64_t ArtworkImageReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ArtworkImageReader.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = *(a1 + 16);
  v4 = sub_2179664CC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v17 = *v2;
  v12 = swift_allocObject();
  v13 = v17;
  *(v12 + 16) = v18;
  *(v12 + 32) = v13;

  sub_2179664BC();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  v14 = v5[2];
  v14(v11, v9, v4);
  v15 = v5[1];
  v15(v9, v4);
  v14(a2, v11, v4);
  return (v15)(v11, v4);
}

uint64_t sub_217955CB4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3B8, &qword_217973300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C0, &qword_217973308);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v41 - v15;
  v17 = *(a3 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  sub_217956074(a1, v11);
  v24 = sub_2179663FC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v24) == 1)
  {
    sub_217875F0C(v11, &qword_27CB8F3B8, &qword_217973300);
    v25 = type metadata accessor for ArtworkImage.Proxy();
    v26 = v16;
    v27 = 1;
  }

  else
  {
    sub_2179663EC();
    sub_2179663CC();
    v29 = v28;
    v31 = v30;
    v32 = sub_2179663DC();
    v41 = a3;
    v33 = a4;
    v34 = v32;
    v35 = type metadata accessor for ArtworkImage.Proxy();
    v42 = a2;
    v36 = v35;
    v37 = &v16[*(v35 + 20)];
    *v37 = v29;
    *(v37 + 1) = v31;
    *&v16[*(v35 + 24)] = v34;
    a4 = v33;
    a3 = v41;
    (*(*(v24 - 8) + 8))(v11, v24);
    v26 = v16;
    v27 = 0;
    v25 = v36;
    a2 = v42;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  a2(v16);
  sub_217875F0C(v16, &qword_27CB8F3C0, &qword_217973308);
  v38 = v17[2];
  v38(v23, v21, a3);
  v39 = v17[1];
  v39(v21, a3);
  v38(a4, v23, a3);
  return (v39)(v23, a3);
}

uint64_t sub_217955FCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_217955CB4(a1, *(v2 + 32), *(v2 + 16), a2);
}

uint64_t sub_217956020()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217956074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3B8, &qword_217973300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217956100()
{
  OUTLINED_FUNCTION_81();
  v4 = v3;
  v5 = sub_217966CBC();
  v6 = OUTLINED_FUNCTION_0_24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_25();
  sub_2178AEC6C(v0, v16, qword_27CB8F400, &unk_2179735E0);
  if (v18 == 1)
  {
    v9 = v16[1];
    *v4 = v16[0];
    *(v4 + 16) = v9;
    *(v4 + 32) = v17;
  }

  else
  {
    sub_21796938C();
    v10 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v10))
    {
      OUTLINED_FUNCTION_186();
      v15 = OUTLINED_FUNCTION_88_0();
      *v2 = 136315138;
      *(v2 + 4) = sub_217957F4C(0xD00000000000002BLL, 0x8000000217976DF0, &v15);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v11, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v13 = OUTLINED_FUNCTION_6_14();
    v14(v13);
  }

  OUTLINED_FUNCTION_80();
}

void sub_21795626C()
{
  OUTLINED_FUNCTION_81();
  v2 = OUTLINED_FUNCTION_10_11();
  v3 = OUTLINED_FUNCTION_0_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_25();
  v6 = OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_28(v10, v23);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    v11 = sub_2179666BC();
    OUTLINED_FUNCTION_3(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_73_0();
    v15(v14);
  }

  else
  {
    v16 = *v0;
    sub_21796938C();
    v17 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v17))
    {
      OUTLINED_FUNCTION_186();
      v18 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v18);
      dword_21796B7F0 = 136315138;
      unk_21796B7F4 = sub_217957F4C(0x686353726F6C6F43, 0xEB00000000656D65, &v24);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v19, v20, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v21 = OUTLINED_FUNCTION_6_14();
    v22(v21);
  }

  OUTLINED_FUNCTION_80();
}

void sub_217956410()
{
  OUTLINED_FUNCTION_81();
  v2 = OUTLINED_FUNCTION_10_11();
  v3 = OUTLINED_FUNCTION_0_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_25();
  v6 = OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_28(v10, v23);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    v11 = sub_21796695C();
    OUTLINED_FUNCTION_3(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_73_0();
    v15(v14);
  }

  else
  {
    v16 = *v0;
    sub_21796938C();
    v17 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v17))
    {
      OUTLINED_FUNCTION_186();
      v18 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v18);
      LODWORD(dword_21796C0C8) = 136315138;
      unk_21796C0CC = sub_217957F4C(0x5463696D616E7944, 0xEF657A6953657079, &v24);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v19, v20, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v21 = OUTLINED_FUNCTION_6_14();
    v22(v21);
  }

  OUTLINED_FUNCTION_80();
}

void sub_2179565B8()
{
  OUTLINED_FUNCTION_81();
  v2 = OUTLINED_FUNCTION_10_11();
  v3 = OUTLINED_FUNCTION_0_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_25();
  v6 = OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_28(v10, v23);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    v11 = sub_21796697C();
    OUTLINED_FUNCTION_3(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_73_0();
    v15(v14);
  }

  else
  {
    v16 = *v0;
    sub_21796938C();
    v17 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v17))
    {
      OUTLINED_FUNCTION_186();
      v18 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v18);
      LODWORD(dword_2179735F0) = 136315138;
      unk_2179735F4 = sub_217957F4C(0x694474756F79614CLL, 0xEF6E6F6974636572, &v24);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v19, v20, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v21 = OUTLINED_FUNCTION_6_14();
    v22(v21);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_217956760(uint64_t a1, char a2)
{
  v6 = sub_217966CBC();
  v7 = OUTLINED_FUNCTION_0_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_25();
  if ((a2 & 1) == 0)
  {

    v12 = sub_21796938C();
    v13 = sub_2179673BC();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = OUTLINED_FUNCTION_186();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_217957F4C(1819242306, 0xE400000000000000, &v17);
      _os_log_impl(&dword_217846000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_104();
      MEMORY[0x21CEA8ED0](v14, -1, -1);
    }

    sub_217966CAC();
    swift_getAtKeyPath();
    sub_2179542E0(a1, 0);
    (*(v9 + 8))(v3, v2);
    LOBYTE(a1) = v18;
  }

  return a1 & 1;
}

void sub_2179568EC()
{
  OUTLINED_FUNCTION_81();
  v2 = OUTLINED_FUNCTION_10_11();
  v3 = OUTLINED_FUNCTION_0_24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_25();
  v6 = OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_28(v10, v23);
  if (OUTLINED_FUNCTION_21_8() == 1)
  {
    v11 = sub_217966E4C();
    OUTLINED_FUNCTION_3(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_73_0();
    v15(v14);
  }

  else
  {
    v16 = *v0;
    sub_21796938C();
    v17 = sub_2179673BC();
    if (OUTLINED_FUNCTION_14_9(v17))
    {
      OUTLINED_FUNCTION_186();
      v18 = OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_17_11(v18);
      LODWORD(dword_217972FE0) = 136315138;
      unk_217972FE4 = sub_217957F4C(0xD000000000000013, 0x8000000217976DD0, &v24);
      OUTLINED_FUNCTION_5_15(&dword_217846000, v19, v20, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_104();
    }

    sub_217966CAC();
    OUTLINED_FUNCTION_9_17();

    v21 = OUTLINED_FUNCTION_6_14();
    v22(v21);
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_217956A8C(uint64_t a1, char a2)
{
  v4 = sub_217966CBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_21796938C();
    v10 = sub_2179673BC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_217957F4C(0x6C616E6F6974704FLL, 0xEE003E65646F4E3CLL, &v15);
      _os_log_impl(&dword_217846000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CEA8ED0](v12, -1, -1);
      MEMORY[0x21CEA8ED0](v11, -1, -1);
    }

    sub_217966CAC();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

uint64_t sub_217956C60()
{
  sub_217958510();
  sub_217966CCC();
  return v1;
}

uint64_t sub_217956C9C(uint64_t a1)
{
  sub_217958510();
  result = sub_217966CCC();
  if (v3)
  {
    if (a1)
    {
      swift_unknownObjectRelease();
      if (v3 == a1)
      {
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

LABEL_8:
    swift_unknownObjectRetain();
    sub_217966CDC();
    sub_21795705C();
    return swift_unknownObjectRelease();
  }

  if (a1)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_217956D60(uint64_t a1, uint64_t a2)
{
  sub_2179664FC();
  sub_2179585B8();
  if (swift_dynamicCast())
  {
    if (a2)
    {

      sub_2179626CC();
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);

      v5 = sub_217968F2C();

      [v6 setCacheIdentifier:v5 forCacheReference:a2];
    }
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_21796950C();
    MEMORY[0x21CEA7F50](0xD000000000000028, 0x8000000217976DA0);
    sub_2179664FC();
    sub_21796958C();
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CEA7F50](46, 0xE100000000000000);
    sub_21796959C();
    __break(1u);
  }
}

uint64_t sub_217956F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_217957D00();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_217956F70()
{
  sub_2179584BC();
  OUTLINED_FUNCTION_16_12();
  sub_217966CCC();
  return v1;
}

uint64_t sub_217956FA8(uint64_t a1)
{
  sub_2179584BC();
  OUTLINED_FUNCTION_16_12();
  result = sub_217966CCC();
  if (v3)
  {
    if (a1)
    {

      if (v3 == a1)
      {
      }
    }

    else
    {
    }

LABEL_8:

    sub_217966CDC();
    sub_21795705C();
  }

  if (a1)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21795705C()
{
  sub_217958510();
  OUTLINED_FUNCTION_16_12();
  sub_217966CCC();
  if (v19)
  {
    ObjectType = swift_getObjectType();
    sub_2178B4378(ObjectType, v20);
    v1 = sub_217958564();
    OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, &type metadata for ArtworkCachingConfigurationHandler, v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2179584BC();
    OUTLINED_FUNCTION_16_12();
    sub_217966CCC();
    v10 = sub_217958564();
    return OUTLINED_FUNCTION_19_9(v10, v11, v12, v13, v14, v15, v16, v17, v18, 0, v20, v21, &type metadata for ArtworkCachingConfigurationHandler, v22);
  }
}

uint64_t *sub_217957144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = _s4NodeCMa();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  return sub_217962BC4(a1, a2, a3, a4 & 1);
}

uint64_t sub_2179571B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_217956FA8(v2);
}

uint64_t sub_2179571E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C8, &qword_2179734C8);
  v35 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3D0, &qword_2179734D0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = v32 - v12;
  KeyPath = swift_getKeyPath();
  v14 = *(v3 + 4);
  v15 = *(v3 + 5);
  v16 = v3[48];
  _s4NodeCMa();
  sub_217957DA0(&qword_2811AD410);
  v17 = sub_2179666FC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3D8, &qword_2179734D8);
  (*(*(v18 - 8) + 16))(v8, a1, v18);
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3E0, &qword_2179734E0) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  *v43 = *v3;
  *&v43[9] = *(v3 + 9);
  v20 = *(v3 + 7);
  LOBYTE(a1) = v3[64];
  v21 = swift_allocObject();
  memcpy((v21 + 16), v3, 0x41uLL);
  v22 = &v8[*(v5 + 36)];
  *v22 = sub_217957B18;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v36 = *&v43[8];
  sub_217957B20(v43, v41);
  v33 = v15;
  v34 = v14;
  v32[3] = v16;
  sub_217957B7C();
  j__swift_retain();
  *&v42[0] = sub_217956A8C(v20, a1);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v3, 0x41uLL);
  sub_217957B20(v43, v41);
  sub_217957B7C();
  j__swift_retain();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3E8, &qword_2179734E8);
  v25 = sub_217957B90();
  v26 = sub_217957D00();
  v27 = v35;
  sub_217967A5C();

  sub_217957DE4(v8);
  v42[0] = *v43;
  *(v42 + 9) = *&v43[9];
  v28 = swift_allocObject();
  memcpy((v28 + 16), v3, 0x41uLL);

  sub_217957B20(v43, v41);
  sub_217957B7C();
  j__swift_retain();
  v41[0] = v27;
  v41[1] = v24;
  v41[2] = v25;
  v41[3] = v26;
  swift_getOpaqueTypeConformance2();
  sub_217957EA4();
  v29 = v40;
  v30 = v37;
  sub_217967A5C();

  sub_217957EF8(v43);
  return (*(v38 + 8))(v29, v30);
}

uint64_t sub_21795765C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  _s4NodeCMa();
  sub_217957DA0(&qword_2811AD410);
  sub_2179666FC();
  v5 = sub_217956A8C(*(a1 + 56), *(a1 + 64));
  sub_217962848(v5);
}

uint64_t sub_217957700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 32);
  v5 = *(a3 + 40);
  v6 = *(a3 + 48);
  _s4NodeCMa();
  sub_217957DA0(&qword_2811AD410);
  sub_2179666FC();

  sub_217962848(v7);
}

uint64_t sub_2179577A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  _s4NodeCMa();
  sub_217957DA0(&qword_2811AD410);
  v10 = sub_2179666FC();
  v11 = *(v10 + 24);
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;

  sub_217963388();
}

uint64_t View.artworkCaching(id:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4 & 1;
  v24 = a4 & 1;
  v23 = 0;
  v22 = 0;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v16 = a4 & 1;
  v17 = sub_2179579C0;
  v18 = v13;
  v19 = 0;
  v20 = KeyPath;
  v21 = 0;

  MEMORY[0x21CEA69A0](v15, a5, &_s7CachingV8ModifierVN, a6);
}

unint64_t sub_2179579D0()
{
  result = qword_2811AD320;
  if (!qword_2811AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD320);
  }

  return result;
}

uint64_t sub_217957A44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_217957A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217957B90()
{
  result = qword_2811AD468;
  if (!qword_2811AD468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3C8, &qword_2179734C8);
    sub_217957C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD468);
  }

  return result;
}

unint64_t sub_217957C1C()
{
  result = qword_2811AD470;
  if (!qword_2811AD470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E0, &qword_2179734E0);
    sub_217864B2C(&qword_2811AD458, &qword_27CB8F3D8, &qword_2179734D8);
    sub_217864B2C(&qword_2811AD448, &qword_27CB8F3F0, &qword_2179734F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD470);
  }

  return result;
}

unint64_t sub_217957D00()
{
  result = qword_2811AD330;
  if (!qword_2811AD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F3E8, &qword_2179734E8);
    sub_217957DA0(&qword_2811AD408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD330);
  }

  return result;
}

uint64_t sub_217957DA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217957DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3C8, &qword_2179734C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_217873C88();
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  j__swift_release();

  return swift_deallocObject();
}

unint64_t sub_217957EA4()
{
  result = qword_2811AD328;
  if (!qword_2811AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD328);
  }

  return result;
}

uint64_t sub_217957F4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_217958010(v11, 0, 0, 1, a1, a2);
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
    sub_2178C2C84(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_217958010(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_217958110(a5, a6);
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
    result = sub_21796953C();
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

uint64_t sub_217958110(uint64_t a1, unint64_t a2)
{
  v4 = sub_21795815C(a1, a2);
  sub_217958274(&unk_28298C998);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21795815C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_217968FFC())
  {
    result = sub_217958358(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2179694FC();
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
          result = sub_21796953C();
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

uint64_t sub_217958274(uint64_t result)
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

    result = sub_2179583C8(result, v8, 1, v3);
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

void *sub_217958358(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3F8, &qword_2179734F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2179583C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F3F8, &qword_2179734F8);
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

unint64_t sub_2179584BC()
{
  result = qword_2811AD430;
  if (!qword_2811AD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD430);
  }

  return result;
}

unint64_t sub_217958510()
{
  result = qword_2811AD438;
  if (!qword_2811AD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD438);
  }

  return result;
}

unint64_t sub_217958564()
{
  result = qword_2811AD498;
  if (!qword_2811AD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD498);
  }

  return result;
}

unint64_t sub_2179585B8()
{
  result = qword_2811AD300;
  if (!qword_2811AD300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AD300);
  }

  return result;
}

uint64_t sub_2179585FC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_217958650(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_3_28@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2178AEC6C(v2, &a2 - a1, v3, v4);
}

void OUTLINED_FUNCTION_5_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_217966CBC();
}

BOOL OUTLINED_FUNCTION_14_9(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  a10 = v14;

  return MEMORY[0x282137170](&a10);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217958828(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_217958868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2179588BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_21796969C(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_21795893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_217968FCC();
  if (a5)
  {
    return sub_21796975C();
  }

  sub_21796975C();
  return MEMORY[0x21CEA86B0](a4);
}

uint64_t sub_217958990(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x21CEA86B0](a3);
  }

  return sub_21796977C();
}

uint64_t sub_217958A60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_21796973C();
  sub_217968FCC();
  sub_21796975C();
  if (v4 != 1)
  {
    MEMORY[0x21CEA86B0](v3);
  }

  return sub_21796977C();
}

uint64_t sub_217958AE8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_217958AF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x21CEA7F50]();
  MEMORY[0x21CEA7F50](34, 0xE100000000000000);
  MEMORY[0x21CEA7F50](0x22203A6469, 0xE500000000000000);

  if ((a4 & 1) == 0)
  {
    v5 = sub_21796966C();
    MEMORY[0x21CEA7F50](v5);

    MEMORY[0x21CEA7F50](0x3A74696D696C202CLL, 0xE900000000000020);
  }

  MEMORY[0x21CEA7F50](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_217958C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217958C90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_217958DFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_217959084(uint64_t a1)
{
  v3 = sub_2179659BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  if (*(v1 + *(a1 + 36)))
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C508, &unk_217973820);
  if (!swift_dynamicCast())
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_217875F0C(v16, &qword_27CB8C510, &qword_21796DC70);
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  sub_21784A7D4(v16, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_21796590C();
  (*(v4 + 104))(v8, *MEMORY[0x277D2A4B0], v3);
  v13 = sub_2179659AC();
  v14 = *(v4 + 8);
  v14(v8, v3);
  v14(v10, v3);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13 & 1;
}

uint64_t sub_217959288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - v11);
  v13 = sub_217967B8C();
  v14 = sub_2179674BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
  sub_21796751C();
  sub_217875F0C(v7, &qword_27CB8AEC0, &qword_21796B610);
  v15 = sub_21796748C();

  KeyPath = swift_getKeyPath();
  v17 = (v12 + *(v9 + 44));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4F0, &qword_21796BD60) + 28);
  v19 = *MEMORY[0x277CE1058];
  v20 = sub_217967BCC();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v12 = v13;
  v12[1] = KeyPath;
  v12[2] = v15;
  if (sub_217959084(a1))
  {
    if (qword_27CB8A350 != -1)
    {
      swift_once();
    }

    v21 = qword_27CB977C8;
  }

  else
  {
    v21 = sub_217967B0C();
  }

  v22 = swift_getKeyPath();
  sub_217959514(v12, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E8, &unk_217973810);
  v24 = (a2 + *(result + 36));
  *v24 = v22;
  v24[1] = v21;
  return result;
}

uint64_t sub_217959514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B4C0, &qword_217973770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217959584@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  OUTLINED_FUNCTION_48(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = *a2;
  v16 = *(a2 + 1);
  v15 = *(a2 + 2);
  v17 = *(a2 + 3);
  v18 = _s24PlaylistFolderDetailViewVMa();
  v19 = a4 + v18[11];
  *v19 = swift_getKeyPath();
  *(v19 + 40) = 0;
  v20 = v18[12];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v21);
  sub_2179598B0(v13);
  v22 = (a4 + v18[13]);
  *v22 = sub_217948AEC();
  v22[1] = v23;
  v22[2] = v24;
  v25 = (a4 + v18[19]);
  *v25 = xmmword_217973830;
  v25[1] = xmmword_217973840;
  v26 = sub_217968D2C();
  OUTLINED_FUNCTION_1_1(v26);
  v28 = v27;
  v29 = *(v27 + 16);
  v30 = OUTLINED_FUNCTION_63_0();
  v31(v30);
  v32 = a4 + v18[9];
  *v32 = v14;
  *(v32 + 8) = v16;
  *(v32 + 16) = v15;
  *(v32 + 24) = v17;
  *(a4 + v18[10]) = a3;
  v33 = swift_allocObject();
  *(v33 + 16) = v14;
  *(v33 + 24) = v16;
  *(v33 + 32) = v15;
  *(v33 + 40) = v17;
  v34 = v33 | 0x4000000000000000;
  *(a4 + v18[14]) = v33 | 0x4000000000000000;
  v35 = a4 + v18[15];
  *v35 = 1;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = v33 | 0x4000000000000000;

  sub_217863EC4(v17);
  sub_217863EC4(v34);
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_6();
  v36 = sub_21796560C();
  v37 = (a4 + v18[16]);
  *v37 = v36;
  v37[1] = v38;
  OUTLINED_FUNCTION_28_6();
  v39 = sub_21796560C();
  v41 = v40;
  result = (*(v28 + 8))(a1, v26);
  v43 = (a4 + v18[17]);
  *v43 = v39;
  v43[1] = v41;
  *(a4 + v18[18]) = 0x4054000000000000;
  return result;
}

uint64_t sub_2179598B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  sub_21788D484(a1, &v8 - v6, &qword_27CB8F488, &qword_217973850);
  sub_217967C0C();
  return sub_2178653BC(a1, &qword_27CB8F488, &qword_217973850);
}

void sub_21795996C(uint64_t a1)
{
  sub_217968D2C();
  if (v2 <= 0x3F)
  {
    sub_2178F0E2C(319, &qword_27CB8A628, &qword_27CB8A630, qword_21796A7B0, MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_2178F0E2C(319, qword_27CB8F520, &qword_27CB8F488, &qword_217973850, MEMORY[0x277CE10B8]);
      if (v4 <= 0x3F)
      {
        sub_217948E00();
        if (v5 <= 0x3F)
        {
          v6 = *(a1 + 16);
          v7 = *(a1 + 24);
          _s24PlaylistFolderDetailViewV9ConstantsVMa();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217959B10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217959B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v296 = a1;
  v289[2] = a2;
  v4 = sub_217966CEC();
  v5 = OUTLINED_FUNCTION_8_5(v4, v313);
  v289[0] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v9);
  v10 = sub_21796738C();
  v11 = OUTLINED_FUNCTION_8_5(v10, &v310);
  v287[3] = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_48(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v20);
  v21 = sub_217966FEC();
  v22 = OUTLINED_FUNCTION_8_5(v21, &v306);
  v285[0] = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v26);
  v27 = sub_217966FFC();
  v28 = OUTLINED_FUNCTION_8_5(v27, v308);
  v286 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v32);
  v33 = sub_21796923C();
  v34 = OUTLINED_FUNCTION_8_5(v33, &v304);
  v280 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_52(v38);
  OUTLINED_FUNCTION_0_1();
  v299 = v39;
  v298 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_52(v243 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  OUTLINED_FUNCTION_33();
  v43 = sub_217968CFC();
  v44 = *(a1 + 16);
  OUTLINED_FUNCTION_4_23();
  v47 = sub_21795F794(v45, v46);
  v48 = *(a1 + 24);
  v316 = v43;
  v317 = v44;
  v49 = v44;
  v318 = v47;
  v319 = v48;
  v50 = v48;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v51 = sub_217967E9C();
  OUTLINED_FUNCTION_24();
  v53 = sub_217864B2C(v52, &qword_27CB8CC80, &qword_21796F110);
  v54 = sub_21786438C();
  v316 = v2;
  v317 = MEMORY[0x277CD7E90];
  v318 = v51;
  v319 = v53;
  v320 = v54;
  sub_217967D9C();
  OUTLINED_FUNCTION_33();
  sub_21796944C();
  OUTLINED_FUNCTION_19_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v314 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_9();
  v55 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v56 = swift_getWitnessTable();
  v57 = sub_217873C34();
  v316 = v55;
  v317 = MEMORY[0x277D837D0];
  v58 = v55;
  v245 = v55;
  v59 = MEMORY[0x277D837D0];
  v318 = v56;
  v319 = v57;
  v291[0] = v56;
  v60 = v57;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v292 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v66);
  v294 = v49;
  v295 = v50;
  _s18NavigationBarStyleVMa();
  v67 = sub_21796698C();
  OUTLINED_FUNCTION_2(v67);
  v276 = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v72);
  v316 = v58;
  v317 = v59;
  v318 = v56;
  v319 = v60;
  v73 = OUTLINED_FUNCTION_10_12();
  v290 = v73;
  OUTLINED_FUNCTION_17();
  v74 = swift_getWitnessTable();
  v313[2] = v73;
  v313[3] = v74;
  v282 = MEMORY[0x277CDFAD8];
  v75 = swift_getWitnessTable();
  v316 = v67;
  v317 = v75;
  v243[0] = v67;
  v244 = v75;
  v76 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v273[1] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v81);
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v83 = swift_getWitnessTable();
  v316 = done;
  v317 = v83;
  v84 = swift_getOpaqueTypeMetadata2();
  v316 = v67;
  v317 = v75;
  v85 = OUTLINED_FUNCTION_10_12();
  v316 = done;
  v317 = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v246 = v76;
  v316 = v76;
  v317 = v84;
  v243[1] = v84;
  v318 = v85;
  v319 = OpaqueTypeConformance2;
  v248 = v85;
  v87 = OpaqueTypeConformance2;
  v247 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v273[3] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v93);
  v316 = v76;
  v317 = v84;
  v318 = v85;
  v319 = v87;
  v94 = OUTLINED_FUNCTION_10_12();
  v316 = v88;
  v95 = v88;
  v259 = v88;
  v96 = MEMORY[0x277D837D0];
  v317 = MEMORY[0x277D837D0];
  v318 = v94;
  v97 = v94;
  v254 = v94;
  v293 = v60;
  v319 = v60;
  v98 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v273[2] = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v103);
  v316 = v95;
  v317 = v96;
  v318 = v97;
  v319 = v60;
  v104 = OUTLINED_FUNCTION_10_12();
  v260 = v98;
  v316 = v98;
  v317 = v104;
  v105 = v104;
  v261 = v104;
  v106 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v271 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v111);
  v316 = v98;
  v317 = v105;
  v112 = OUTLINED_FUNCTION_10_12();
  v255 = v106;
  v316 = v106;
  v317 = v112;
  v113 = v112;
  v256 = v112;
  v114 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v265 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v119);
  v316 = v106;
  v317 = v113;
  v120 = OUTLINED_FUNCTION_10_12();
  v316 = v114;
  v317 = v120;
  v121 = v114;
  v249 = v114;
  v122 = v120;
  v250 = v120;
  v123 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v273[0] = v124;
  v126 = *(v125 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v128);
  v316 = v121;
  v317 = v122;
  v129 = OUTLINED_FUNCTION_10_12();
  v316 = v123;
  v317 = v96;
  v130 = v123;
  v252 = v123;
  v318 = v129;
  v319 = MEMORY[0x277D837F8];
  v131 = v129;
  v251 = v129;
  v132 = MEMORY[0x277D837F8];
  v133 = swift_getOpaqueTypeMetadata2();
  v264 = v133;
  OUTLINED_FUNCTION_0_1();
  v269 = v134;
  v136 = *(v135 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v138);
  v316 = v130;
  v317 = v96;
  v318 = v131;
  v319 = v132;
  v263 = OUTLINED_FUNCTION_10_12();
  v316 = v133;
  v317 = v263;
  v268 = MEMORY[0x277CDED18];
  v266 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v272 = v139;
  v141 = *(v140 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v143);
  v267 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v277 = v144;
  v146 = *(v145 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v148);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  v149 = sub_21796698C();
  v150 = OUTLINED_FUNCTION_8_5(v149, &v299);
  v278 = v151;
  v153 = *(v152 + 64);
  v154 = MEMORY[0x28223BE20](v150);
  v270 = v243 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_52(v243 - v156);
  v157 = v296;
  v158 = v300;
  sub_21795B388(v296);
  v310 = v316;
  v311 = v317;
  v313[0] = sub_217968D0C();
  v313[1] = v159;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_149(&v314);
  sub_2179677EC();

  v160 = v294;
  v161 = v290;
  v162 = v295;
  v163 = j__OUTLINED_FUNCTION_59();
  v164 = v258;
  sub_21792D7FC(v163 & 1, v160, OpaqueTypeMetadata2, v160, v161);
  OUTLINED_FUNCTION_54(&WitnessTable);
  v165(v132, OpaqueTypeMetadata2);
  v245 = " any playlists in this folder.";
  v166 = v299;
  v167 = *(v299 + 16);
  v291[1] = v299 + 16;
  v292 = v167;
  v168 = v297;
  v169 = v157;
  v167(v297, v158, v157);
  sub_21796920C();
  v170 = sub_2179691FC();
  v290 = *(v166 + 80);
  v171 = v166;
  v172 = (v290 + 48) & ~v290;
  v173 = swift_allocObject();
  v174 = MEMORY[0x277D85700];
  *(v173 + 2) = v170;
  *(v173 + 3) = v174;
  *(v173 + 4) = v160;
  *(v173 + 5) = v162;
  v175 = *(v171 + 32);
  v299 = v171 + 32;
  v291[0] = v175;
  v175(&v173[v172], v168, v169);
  v176 = v279;
  v177 = v243[0];
  v178 = v244;
  sub_21785BFCC();
  OUTLINED_FUNCTION_149(&v286);
  sub_21785C01C(0, 0, v176, 0xD00000000000003ELL, v179, 66, v180, v173, v177, v178);
  OUTLINED_FUNCTION_54(&v303);
  v181(v176, v281);
  OUTLINED_FUNCTION_54(&v300);
  v182(v164, v177);
  v305 = v160;
  v306 = v162;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_37_5(v273);
  sub_217967A1C();
  OUTLINED_FUNCTION_54(&v295);
  v183 = OUTLINED_FUNCTION_39_7();
  v184(v183);
  v185 = v300;
  v186 = (v300 + *(v169 + 52));
  v281 = *v186;
  v188 = v186[1];
  v187 = v186[2];
  v280 = v188;
  v279 = v187;
  v310 = v281;
  v311 = v188;
  v312 = v187;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C3C();
  v189 = v284;
  sub_217966FDC();
  v190 = v283;
  sub_217966FBC();
  OUTLINED_FUNCTION_54(&v305);
  v191(v189, v285[1]);
  v192 = (v185 + *(v169 + 64));
  v193 = v192[1];
  v316 = *v192;
  v317 = v193;

  OUTLINED_FUNCTION_149(v285);
  v194 = v259;
  sub_2179676DC();

  OUTLINED_FUNCTION_54(v307);
  v195(v190, v287[0]);
  OUTLINED_FUNCTION_54(&v297);
  v196(v177, v194);
  v197 = v287[1];
  sub_21796726C();
  v198 = sub_21796727C();
  __swift_storeEnumTagSinglePayload(v197, 0, 1, v198);
  OUTLINED_FUNCTION_37_5(v287);
  sub_21796793C();
  sub_2178653BC(v197, &qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_54(&v296);
  v199 = OUTLINED_FUNCTION_39_7();
  v200(v199);
  v201 = v287[2];
  sub_21796737C();
  OUTLINED_FUNCTION_149(&v280);
  v202 = v255;
  sub_21796795C();
  OUTLINED_FUNCTION_54(&v309);
  v203(v201, v287[4]);
  OUTLINED_FUNCTION_54(&v292);
  v204(v177, v202);
  OUTLINED_FUNCTION_37_5(v274);
  MEMORY[0x21CEA6830](1, v249, v250);
  OUTLINED_FUNCTION_54(v289);
  v205 = OUTLINED_FUNCTION_39_7();
  v206(v205);
  v316 = v281;
  v317 = v280;
  v318 = v279;
  sub_217967C1C();
  v207 = v311;
  v316 = v310;
  v317 = v311;
  OUTLINED_FUNCTION_42_3();
  v208();
  v209 = swift_allocObject();
  v210 = v295;
  *(v209 + 16) = v294;
  *(v209 + 24) = v210;
  OUTLINED_FUNCTION_35_4();
  v211();
  v212 = v252;
  sub_217862E84();
  v213 = v257;
  sub_217967A6C();

  OUTLINED_FUNCTION_54(&v294);
  v214(v177, v212);
  v215 = *MEMORY[0x277CDDDC0];
  OUTLINED_FUNCTION_149(&v312);
  v217 = v288;
  v218 = v289[1];
  (*(v216 + 104))(v288);
  v219 = v253;
  v220 = v264;
  v221 = v263;
  sub_21796794C();
  (*(v207 + 8))(v217, v218);
  OUTLINED_FUNCTION_54(v291);
  v222(v213, v220);
  OUTLINED_FUNCTION_42_3();
  v223();
  v224 = swift_allocObject();
  v225 = v294;
  v226 = v295;
  *(v224 + 16) = v294;
  *(v224 + 24) = v226;
  OUTLINED_FUNCTION_35_4();
  v227();
  v316 = v220;
  v317 = v221;
  v228 = swift_getOpaqueTypeConformance2();
  v229 = v262;
  v230 = v266;
  sub_2178D0790(sub_21795F14C, v224, v266, v228);

  OUTLINED_FUNCTION_54(&v293);
  v231(v219, v230);
  sub_217967E3C();
  v302 = v225;
  v303 = v226;
  v304 = v300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFF0, &unk_217972DE0);
  v232 = sub_217864644();
  v308[2] = v228;
  v309 = v232;
  v233 = v282;
  v234 = v267;
  v235 = swift_getWitnessTable();
  sub_2179504C0(&qword_27CB8EFF8, &qword_27CB8EFF0, &unk_217972DE0, sub_21794FAB8);
  v236 = v270;
  OUTLINED_FUNCTION_63_0();
  sub_2179679DC();
  OUTLINED_FUNCTION_54(v301);
  v237(v229, v234);
  OUTLINED_FUNCTION_13_2();
  v239 = sub_217864B2C(v238, &qword_27CB8EFE0, &unk_217972DD0);
  v308[0] = v235;
  v308[1] = v239;
  v240 = v275;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_5(&v298);
  sub_2179560E4(v236, v240);
  v241 = *(v278 + 8);
  v241(v236, v240);
  sub_2179560E4(v233, v240);
  return (v241)(v233, v240);
}

uint64_t sub_21795B388(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  (*(v2 + 32))(v5 + v4, &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v9 = sub_217968CFC();
  v10 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358]);
  v22 = v9;
  v23 = v6;
  v24 = v10;
  v25 = v7;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v11 = sub_217967E9C();
  v12 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110);
  v13 = sub_21786438C();
  v22 = v8;
  v23 = MEMORY[0x277CD7E90];
  v24 = v11;
  v25 = v12;
  v26 = v13;
  sub_217967D9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  v18 = sub_21796685C();
  v19 = v14;
  v15 = sub_21796686C();
  swift_getWitnessTable();
  sub_2179560E4(&v18, v15);

  v18 = v22;
  v19 = v23;
  sub_2179560E4(&v18, v15);
}

uint64_t sub_21795B748()
{
  v0[2] = sub_21796920C();
  v0[3] = sub_2179691FC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = _s24PlaylistFolderDetailViewVMa();
  *v1 = v0;
  v1[1] = sub_21795B818;

  return sub_21795B93C(v2);
}

uint64_t sub_21795B818()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  sub_2179691BC();
  v7 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21795B93C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_21796920C();
  v2[10] = sub_2179691FC();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_21795B9FC;

  return sub_21795C138(a1);
}

uint64_t sub_21795B9FC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  sub_2179691BC();
  v7 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21795BB20()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v3 + *(v2 + 44);
  sub_217956100();
  if (v0[5])
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v11 = *(v5 + *(v6 + 56));
    v8 = *(v7 + 8);
    sub_217863EC4(v11);
    OUTLINED_FUNCTION_45();
    v8();
    sub_2178643E0(v11);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_39();

  return v9();
}

uint64_t sub_21795BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = _s24PlaylistFolderDetailViewVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = (a1 + *(v4 + 52));
  v21 = *v20;
  v22 = *(v20 + 2);
  v40 = v21;
  v41 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v24 = v38;
  v23 = v39;

  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
    v27 = *(v4 + 48);
    sub_21788D484(v19, v17, &qword_27CB8F488, &qword_217973850);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
    sub_217967C2C();
    sub_2178653BC(v19, &qword_27CB8F488, &qword_217973850);
  }

  v28 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
  (*(v5 + 16))(v8, a1, v4);
  sub_21796920C();
  v29 = sub_2179691FC();
  v30 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 2) = v29;
  *(v31 + 3) = v32;
  v33 = v37;
  *(v31 + 4) = v36;
  *(v31 + 5) = v33;
  (*(v5 + 32))(&v31[v30], v8, v4);
  sub_2178D207C();
}

uint64_t sub_21795BF44()
{
  v0[2] = sub_21796920C();
  v0[3] = sub_2179691FC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = _s24PlaylistFolderDetailViewVMa();
  *v1 = v0;
  v1[1] = sub_21795C014;

  return sub_21795C138(v2);
}

uint64_t sub_21795C014()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_64_2();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  sub_2179691BC();
  v7 = OUTLINED_FUNCTION_31_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21795C138(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v4 = sub_217968D2C();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = *(a1 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v2[29] = v10;
  v11 = *(v10 - 8);
  v2[30] = v11;
  v12 = *(v11 + 64) + 15;
  v2[31] = swift_task_alloc();
  v13 = sub_2179655BC();
  v2[32] = v13;
  v14 = *(v13 - 8);
  v2[33] = v14;
  v15 = *(v14 + 64) + 15;
  v2[34] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F5B0, &qword_217973A38) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BFC0, &qword_217973A40);
  v2[36] = v17;
  v18 = *(v17 - 8);
  v2[37] = v18;
  v19 = *(v18 + 64) + 15;
  v2[38] = swift_task_alloc();
  sub_21796920C();
  v2[39] = sub_2179691FC();
  v21 = sub_2179691BC();
  v2[40] = v21;
  v2[41] = v20;

  return MEMORY[0x2822009F8](sub_21795C428, v21, v20);
}

uint64_t sub_21795C428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[38];
  v14 = v12[35];
  v15 = v12[36];
  v16 = v12[22];
  v17 = v12[23];
  v19 = v12[20];
  v18 = v12[21];
  sub_217968CFC();
  OUTLINED_FUNCTION_4_23();
  sub_21795F794(v20, v21);
  sub_21796820C();
  KeyPath = swift_getKeyPath();
  v12[42] = *(v17 + 16);
  v12[43] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23 = OUTLINED_FUNCTION_39_7();
  v24(v23);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  OUTLINED_FUNCTION_15_13();
  v27 = sub_21795F794(v25, v26);
  MEMORY[0x21CEA7150](KeyPath, v14, v15, v27);

  sub_2178653BC(v14, &qword_27CB8F5B0, &qword_217973A38);
  v28 = (v18 + *(v19 + 52));
  v29 = v28[1];
  v30 = v28[2];
  v57 = *v28;
  v12[2] = *v28;
  v12[3] = v29;
  v12[4] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v32 = v12[11];
  v31 = v12[12];

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v35 = v12[33];
    v34 = v12[34];
    v56 = v12[32];
    v12[5] = v57;
    v12[6] = v29;
    v12[7] = v30;
    sub_217967C1C();
    v12[15] = v12[13];
    v12[16] = v12[14];
    sub_21796559C();
    sub_217873C34();
    v36 = sub_21796947C();
    v38 = v37;
    (*(v35 + 8))(v34, v56);

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = v12[38];
      v41 = v12[36];
      v12[8] = v57;
      v12[9] = v29;
      v12[10] = v30;
      sub_217967C1C();
      v42 = v12[17];
      v43 = v12[18];
      sub_2179681DC();
    }
  }

  v44 = *(MEMORY[0x277CD7CF0] + 4);
  v51 = swift_task_alloc();
  v12[44] = v51;
  *v51 = v12;
  v51[1] = sub_21795C71C;
  v52 = v12[38];
  v53 = v12[36];
  v54 = v12[31];

  return MEMORY[0x282124698](v54, v53, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_21795C71C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_21795C9EC;
  }

  else
  {
    v7 = sub_21795C858;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21795C858()
{
  v1 = v0[39];
  v2 = v0[37];
  v13 = v0[36];
  v14 = v0[38];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[20];
  v12 = v0[21];

  (*(v3 + 16))(v6, v4, v5);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  v9 = *(v8 + 48);
  sub_21788D484(v6, v7, &qword_27CB8F488, &qword_217973850);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C2C();
  sub_2178653BC(v6, &qword_27CB8F488, &qword_217973850);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v14, v13);
  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_39();

  return v10();
}

uint64_t sub_21795C9EC()
{
  v42 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];

  (*(v4 + 8))(v2, v3);
  if (qword_27CB8A480 != -1)
  {
    swift_once();
  }

  v5 = v0[45];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[20];
  v8 = v0[21];
  v10 = sub_21796653C();
  __swift_project_value_buffer(v10, qword_27CB97B00);
  (*(v7 + 16))(v6, v8, v9);
  v11 = v5;
  v12 = sub_21796651C();
  v13 = sub_21796937C();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[45];
  if (v14)
  {
    v40 = v13;
    v17 = v0[42];
    v16 = v0[43];
    v37 = v0[45];
    v18 = v0[25];
    v19 = v0[26];
    log = v12;
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[22];
    v23 = v0[20];
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v24 = 136446466;
    v17(v20, v19, v22);
    (*(v18 + 8))(v19, v23);
    OUTLINED_FUNCTION_15_13();
    sub_21795F794(v25, v26);
    v27 = sub_21796966C();
    v29 = v28;
    (*(v21 + 8))(v20, v22);
    v30 = sub_217957F4C(v27, v29, &v41);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2082;
    v0[19] = v37;
    v31 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v32 = sub_217968F8C();
    v34 = sub_217957F4C(v32, v33, &v41);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_217846000, log, v40, "Failed to load content for %{public}s. Error = %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA8ED0](v38, -1, -1);
    MEMORY[0x21CEA8ED0](v24, -1, -1);
  }

  else
  {
    (*(v0[25] + 8))(v0[26], v0[20]);
  }

  OUTLINED_FUNCTION_27_8();

  OUTLINED_FUNCTION_39();

  return v35();
}

uint64_t sub_21795CD40(uint64_t a1)
{
  v2 = type metadata accessor for MusicPicker.Click.ControlID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = _s24PlaylistFolderDetailViewVMa();
  v7 = a1 + *(v6 + 44);
  sub_217956100();
  v8 = v23;
  if (!v23)
  {
    return sub_2178653BC(v22, &qword_27CB8A630, qword_21796A7B0);
  }

  v9 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(v6 + 36);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  v13 = *(v10 + 24);
  v18[0] = *v10;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  v14 = *(v9 + 16);

  sub_217863EC4(v13);
  v14(v5, v18, v8, v9);
  v15 = v21;

  sub_2178643E0(v15);
  sub_21792C198(v5);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_21795CEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F018, &unk_217973A00);
  v60 = *(v67 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v67);
  v59 = v57 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F028, &qword_217972DF0);
  v9 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = v57 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B880, &qword_21796C6A0);
  v62 = *(v66 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v66);
  v61 = v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F008, &unk_2179739F0);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v64 = v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CC80, &qword_21796F110);
  v24 = *(v23 - 8);
  v68 = v23;
  v69 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v57 - v29;
  v31 = a2;
  v32 = a3;
  v33 = _s24PlaylistFolderDetailViewVMa();
  v34 = *(v33 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v15))
  {
    sub_2178653BC(v22, &qword_27CB8F488, &qword_217973850);
LABEL_9:
    v49 = 1;
    v50 = v72;
    return __swift_storeEnumTagSinglePayload(v50, v49, 1, v71);
  }

  v57[1] = v31;
  v57[2] = v32;
  v58 = a1;
  v35 = v70;
  (*(v70 + 16))(v18, v22, v15);
  sub_2178653BC(v22, &qword_27CB8F488, &qword_217973850);
  sub_21796823C();
  (*(v35 + 8))(v18, v15);
  v36 = v68;
  v37 = v69;
  (*(v69 + 32))(v30, v28, v68);
  if (!sub_2178D2C0C())
  {
    (*(v37 + 8))(v30, v36);
    goto LABEL_9;
  }

  v38 = (v58 + *(v33 + 52));
  v39 = *v38;
  v40 = *(v38 + 2);
  v75 = v39;
  v76 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v42 = v73;
  v41 = v74;

  v44 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = v61;
    sub_2179670DC();
    v46 = v62;
    v47 = v66;
    (*(v62 + 16))(v65, v45, v66);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00);
    v48 = v64;
    sub_217966F8C();
    (*(v46 + 8))(v45, v47);
  }

  else
  {
    MEMORY[0x28223BE20](v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F030, &unk_217973A10);
    sub_217864B2C(qword_27CB8F038, &qword_27CB8F030, &unk_217973A10);
    v52 = v36;
    v53 = v59;
    sub_2179670CC();
    v54 = v60;
    v55 = v67;
    (*(v60 + 16))(v65, v53, v67);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00);
    v48 = v64;
    sub_217966F8C();
    v56 = v53;
    v36 = v52;
    (*(v54 + 8))(v56, v55);
  }

  (*(v37 + 8))(v30, v36);
  v50 = v72;
  sub_217898E78(v48, v72, &qword_27CB8F008, &unk_2179739F0);
  v49 = 0;
  return __swift_storeEnumTagSinglePayload(v50, v49, 1, v71);
}

uint64_t sub_21795D6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(_s24PlaylistFolderDetailViewVMa() + 68));
  v8 = *v3;
  v9 = v3[1];
  sub_217873C34();

  result = sub_21796763C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_21795D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  sub_217968CFC();
  sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358]);
  _s13ItemShelfCellVMa();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v8 = sub_217967E9C();
  v9 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110);
  v10 = sub_21786438C();
  v27 = v7;
  v28 = MEMORY[0x277CD7E90];
  v29 = v8;
  v30 = v9;
  v31 = v10;
  sub_217967D9C();
  sub_21796944C();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  v11 = sub_21796666C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v21[-v17];
  sub_2179673DC();
  v22 = a3;
  v23 = a4;
  v24 = a2;
  sub_21796667C();
  swift_getWitnessTable();
  sub_2179560E4(v16, v11);
  v19 = *(v12 + 8);
  v19(v16, v11);
  sub_2179560E4(v18, v11);
  return (v19)(v18, v11);
}

uint64_t sub_21795DAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = a4;
  v7 = sub_21796708C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v29[0] = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v11 = sub_217968CFC();
  v12 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358]);
  v30 = v11;
  v31 = a2;
  v32 = v12;
  v33 = a3;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v13 = sub_217967E9C();
  v14 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110);
  v15 = sub_21786438C();
  v30 = v10;
  v31 = MEMORY[0x277CD7E90];
  v32 = v13;
  v33 = v14;
  v34 = v15;
  sub_217967D9C();
  sub_21796944C();
  v29[8] = swift_getWitnessTable();
  v29[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_21796665C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  sub_217966E6C();
  v24 = _s24PlaylistFolderDetailViewVMa();
  v25 = a1;
  v26 = *(a1 + *(v24 + 76) + 8);
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = v25;
  sub_21789A9E0();
  sub_21796664C();
  swift_getWitnessTable();
  sub_2179560E4(v21, v16);
  v27 = *(v17 + 8);
  v27(v21, v16);
  sub_2179560E4(v23, v16);
  return (v27)(v23, v16);
}

uint64_t sub_21795DE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v82 = a1;
  v6 = _s24PlaylistFolderDetailViewVMa();
  v72 = *(v6 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8CC80, &qword_21796F110);
  v9 = sub_217968CFC();
  v10 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358]);
  v87 = v9;
  v88 = a2;
  v74 = a2;
  v75 = a3;
  v89 = v10;
  v90 = a3;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v11 = sub_217967E9C();
  v12 = sub_217864B2C(&qword_27CB8F5A8, &qword_27CB8CC80, &qword_21796F110);
  v13 = sub_21786438C();
  v87 = v8;
  v88 = MEMORY[0x277CD7E90];
  v80 = v11;
  v89 = v11;
  v90 = v12;
  v67 = v12;
  v91 = v13;
  v14 = sub_217967D9C();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F488, &qword_217973850);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v63 - v26;
  v78 = v8;
  v65 = *(v8 - 8);
  v28 = *(v65 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v77 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  MEMORY[0x28223BE20](v31);
  v76 = &v63 - v34;
  v35 = sub_21796944C();
  v79 = *(v35 - 8);
  v36 = *(v79 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v63 - v40;
  v73 = v6;
  v42 = *(v6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888);
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v19))
  {
    sub_2178653BC(v27, &qword_27CB8F488, &qword_217973850);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v14);
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v43 = v64;
    (*(v64 + 16))(v22, v27, v19);
    sub_2178653BC(v27, &qword_27CB8F488, &qword_217973850);
    sub_21796823C();
    (*(v43 + 8))(v22, v19);
    v44 = v65;
    v45 = v76;
    v46 = v78;
    (*(v65 + 32))(v76, v33, v78);
    (*(v44 + 16))(v77, v45, v46);
    v48 = v72;
    v47 = v73;
    v49 = v66;
    (*(v72 + 16))(v66, v82, v73);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    v52 = v75;
    *(v51 + 16) = v74;
    *(v51 + 24) = v52;
    (*(v48 + 32))(v51 + v50, v49, v47);
    v53 = swift_getWitnessTable();
    sub_21795F794(&qword_27CB8E148, MEMORY[0x277D2B358]);
    v54 = v69;
    v55 = v78;
    sub_217967D8C();
    (*(v44 + 8))(v76, v55);
    v83 = v53;
    swift_getWitnessTable();
    v82 = v35;
    v56 = v41;
    v57 = v68;
    sub_2179560E4(v54, v14);
    v58 = v70;
    v59 = *(v70 + 8);
    v59(v54, v14);
    sub_2179560E4(v57, v14);
    v60 = v57;
    v41 = v56;
    v35 = v82;
    v59(v60, v14);
    (*(v58 + 32))(v39, v54, v14);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v14);
  }

  sub_2178AEE20(v39, v41);
  v61 = *(v79 + 8);
  v61(v39, v35);
  v85 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4(v41, v35);
  return (v61)(v41, v35);
}

uint64_t sub_21795E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a2;
  v69 = a1;
  v78 = a5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v65 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v9 = *(*(v77 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v77);
  v76 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v65 - v12;
  v13 = sub_217968CFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21795F794(&qword_27CB8BFA0, MEMORY[0x277D2B358]);
  v83 = v13;
  v84 = a3;
  v85 = v65;
  v86 = a4;
  v18 = _s13ItemShelfCellVMa();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v22 = sub_21796698C();
  v70 = *(v22 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  v68 = sub_21796698C();
  v71 = *(v68 - 8);
  v26 = *(v71 + 64);
  v27 = MEMORY[0x28223BE20](v68);
  v79 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v66 = &v65 - v29;
  (*(v14 + 16))(v17, v69, v13);
  v69 = _s24PlaylistFolderDetailViewVMa();
  v30 = v72;
  v31 = v72 + *(v69 + 60);
  v33 = *(v31 + 8);
  v32 = *(v31 + 16);
  v34 = *(v31 + 24);
  LOBYTE(v83) = *v31;
  v84 = v33;
  v85 = v32;
  v86 = v34;

  sub_217863EC4(v34);
  v35 = sub_2178AA2C4();
  sub_21791B630(v17, &v83, 0, 0, 11, 0, 1, v35, v21, v36, v37, a3, v13);
  sub_21796742C();
  WitnessTable = swift_getWitnessTable();
  v39 = v25;
  sub_217967A0C();
  (*(v67 + 8))(v21, v18);
  sub_21796743C();
  v40 = v69;
  v41 = v30;
  v42 = *(v30 + *(v69 + 76));
  v43 = MEMORY[0x277CDF918];
  v82[4] = WitnessTable;
  v82[5] = MEMORY[0x277CDF918];
  v44 = swift_getWitnessTable();
  v45 = v79;
  sub_217967A0C();
  (*(v70 + 8))(v39, v22);
  v82[2] = v44;
  v82[3] = v43;
  v46 = v68;
  v47 = swift_getWitnessTable();
  v48 = v66;
  v49 = v45;
  sub_2179560E4(v45, v46);
  v50 = v71;
  v51 = *(v71 + 8);
  v51(v49, v46);
  v52 = v74;
  sub_217967D6C();
  LOBYTE(v49) = sub_21796742C();
  v53 = *(v41 + *(v40 + 72));
  sub_21796660C();
  v54 = v75;
  v55 = v52 + *(v75 + 36);
  *v55 = v49;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  v60 = v73;
  sub_217898E78(v52, v73, &qword_27CB8A780, &qword_21796C770);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v54);
  v61 = *(v50 + 16);
  v62 = v79;
  v61(v79, v48, v46);
  v83 = v62;
  v63 = v76;
  sub_21788D484(v60, v76, &qword_27CB8A6E0, &qword_21796A8E0);
  v84 = v63;
  v82[0] = v46;
  v82[1] = v77;
  v80 = v47;
  v81 = sub_2179504C0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
  sub_2178B9390(&v83, 2, v82);
  sub_2178653BC(v60, &qword_27CB8A6E0, &qword_21796A8E0);
  v51(v48, v46);
  sub_2178653BC(v63, &qword_27CB8A6E0, &qword_21796A8E0);
  return (v51)(v62, v46);
}

uint64_t sub_21795EEA8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_21796617C();
}

uint64_t sub_21795EEF0(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

BOOL sub_21795EF70(double *a1, double *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  return sub_2178D11F8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21795EF88(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  return sub_21795EEF0(*v1, v1[1], v1[2], v1[3]);
}

uint64_t sub_21795EF9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
}

uint64_t sub_21795EFB0(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
  return sub_21796977C();
}

uint64_t sub_21795F044()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_45();
  v4 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_48(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2178EB854;

  return sub_21795B748();
}

uint64_t sub_21795F164(uint64_t (*a1)(void))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_45();
  v4 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_45();

  return a1();
}

uint64_t sub_21795F1FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21795D6AC(v1[4], a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_13(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = *(v1 + 2);
  swift_unknownObjectRelease();
  v12 = &v1[v8];
  v13 = sub_217968D2C();
  OUTLINED_FUNCTION_3(v13);
  (*(v14 + 8))(&v1[v8]);
  OUTLINED_FUNCTION_74(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v15 = &v1[v8 + v0[11]];
  if (v15[5])
  {
    if (v15[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
    v16 = *v15;
  }

  v17 = &v12[v0[12]];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  if (!OUTLINED_FUNCTION_71(v18))
  {
    (*(*(v3 - 8) + 8))(v17, v3);
  }

  v19 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888) + 28)];

  v20 = &v12[v0[13]];
  v21 = *(v20 + 1);

  v22 = *(v20 + 2);

  sub_2178643E0(*&v12[v0[14]]);
  OUTLINED_FUNCTION_74(v0[15]);
  sub_2178643E0(*(v20 + 3));
  OUTLINED_FUNCTION_45_4(v0[16]);
  OUTLINED_FUNCTION_45_4(v0[17]);

  return swift_deallocObject();
}

uint64_t sub_21795F3D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_48(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2178EC8F0;

  return sub_21795BF44();
}

uint64_t objectdestroy_20Tm()
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  v10 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11 = sub_217968D2C();
  OUTLINED_FUNCTION_3(v11);
  (*(v12 + 8))(v10);
  OUTLINED_FUNCTION_74(v0[9]);
  sub_2178643E0(*(v2 + 24));
  v13 = v10 + v0[11];
  if (*(v13 + 40))
  {
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    v14 = *v13;
  }

  v15 = v10 + v0[12];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F490, &qword_217973880);
  if (!OUTLINED_FUNCTION_71(v16))
  {
    (*(*(v3 - 8) + 8))(v15, v3);
  }

  v17 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F498, &qword_217973888) + 28));

  v18 = (v10 + v0[13]);
  v19 = v18[1];

  v20 = v18[2];

  sub_2178643E0(*(v10 + v0[14]));
  OUTLINED_FUNCTION_74(v0[15]);
  sub_2178643E0(v18[3]);
  OUTLINED_FUNCTION_45_4(v0[16]);
  OUTLINED_FUNCTION_45_4(v0[17]);

  return swift_deallocObject();
}

uint64_t sub_21795F6E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = _s24PlaylistFolderDetailViewVMa();
  OUTLINED_FUNCTION_48(v6);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5);
}

uint64_t sub_21795F794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27_8()
{
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[24];
}

uint64_t OUTLINED_FUNCTION_45_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_21795F90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_217968B0C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217968B1C();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v2, v12);
  result = (*(v15 + 88))(v19, v12);
  if (result == *MEMORY[0x277CE4428])
  {
    v21 = OUTLINED_FUNCTION_1_26();
    result = v22(v21);
    v23 = 0;
    v24 = *v19;
LABEL_11:
    *a1 = v24;
    *(a1 + 8) = v23;
    return result;
  }

  if (result == *MEMORY[0x277CE4418])
  {
    v25 = OUTLINED_FUNCTION_1_26();
    v26(v25);
    v24 = *v19;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C2E0, &unk_21796D6E0);
    (*(v7 + 32))(v11, &v19[*(v27 + 48)], v4);
    result = (*(v7 + 88))(v11, v4);
    if (result != *MEMORY[0x277CE4400])
    {
      result = (*(v7 + 8))(v11, v4);
    }

    v23 = 1;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE4430])
  {
    v28 = OUTLINED_FUNCTION_1_26();
    result = v29(v28);
    v24 = *v19;
    v23 = 2;
    goto LABEL_11;
  }

  if (result == *MEMORY[0x277CE4420])
  {
    v24 = 0;
    v23 = 3;
    goto LABEL_11;
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_21796950C();
  MEMORY[0x21CEA7F50](0xD00000000000002BLL, 0x8000000217976F90);
  sub_21796958C();
  MEMORY[0x21CEA7F50](46, 0xE100000000000000);
  result = sub_21796959C();
  __break(1u);
  return result;
}

BOOL static Artwork.LoadingStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3:
      if (v2 != 3 || *a2 != 0)
      {
        goto LABEL_14;
      }

      result = 1;
      break;
    default:
      if (*(a2 + 8))
      {
LABEL_14:
        result = 0;
      }

      else
      {
LABEL_13:
        result = *a1 == *a2;
      }

      break;
  }

  return result;
}

uint64_t Artwork.LoadingStatus.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x21CEA86B0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x21CEA86D0](v3);
      return MEMORY[0x21CEA86B0](0);
    case 2:
      v2 = 3;
      goto LABEL_9;
    case 3:
      return MEMORY[0x21CEA86B0](0);
    default:
      v2 = 1;
LABEL_9:
      MEMORY[0x21CEA86B0](v2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v1;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x21CEA86D0](v5);
  }
}

uint64_t Artwork.LoadingStatus.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21796973C();
  Artwork.LoadingStatus.hash(into:)();
  return sub_21796977C();
}

uint64_t sub_21795FDA0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_21796973C();
  Artwork.LoadingStatus.hash(into:)();
  return sub_21796977C();
}

uint64_t Artwork.LoadingStatus.description.getter()
{
  v1 = *v0;
  result = 0x646574726174732ELL;
  switch(*(v0 + 8))
  {
    case 1:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      MEMORY[0x21CEA7F50](0xD000000000000012, 0x8000000217976F10);
      sub_21796928C();
      MEMORY[0x21CEA7F50](0x3A726F727265202CLL, 0xE900000000000020);
      MEMORY[0x21CEA7F50](0x6E776F6E6B6E752ELL, 0xE800000000000000);
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      v3 = "PlaylistFolderDetailView.swift";
      v4 = 0xD000000000000015;
      goto LABEL_5;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_0_25();
      sub_21796950C();
      v3 = ".failed(duration: ";
      v4 = 0xD000000000000014;
LABEL_5:
      MEMORY[0x21CEA7F50](v4, v3 | 0x8000000000000000);
      sub_21796928C();
LABEL_6:
      MEMORY[0x21CEA7F50](41, 0xE100000000000000);
      return v5;
  }
}

uint64_t Artwork.LoadingStatus.debugDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return Artwork.LoadingStatus.description.getter();
}

unint64_t sub_21795FFC0()
{
  result = qword_27CB8F5C8[0];
  if (!qword_27CB8F5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8F5C8);
  }

  return result;
}

uint64_t sub_21796001C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_217960068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = sub_217960114();
  v11[1] = v6;
  v12 = v7 & 1;
  v13 = v8;
  v9 = _s20DismissAlertModifierVMa();
  MEMORY[0x21CEA69A0](v11, a2, v9, a4);
}

uint64_t sub_217960114()
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  v0 = sub_217966ACC();
  sub_21785853C();
  return v0;
}

uint64_t sub_21796018C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21796020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v131 = a3;
  v130 = a2;
  v139 = a1;
  v147 = a8;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v14);
  v148 = a7;
  _s20DismissAlertModifierVMa();
  OUTLINED_FUNCTION_9_18();
  swift_getWitnessTable();
  v15 = sub_2179670BC();
  v16 = sub_21796919C();
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  v165 = *(*(a7 + 16) + 8);
  OUTLINED_FUNCTION_6_15();
  v18 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = v15;
  v133 = v16;
  v136 = WitnessTable;
  v163 = WitnessTable;
  v164 = v18;
  v135 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v161 = OpaqueTypeMetadata2;
  v162 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_7_16();
  v21 = swift_getOpaqueTypeMetadata2();
  _s20FailureAlertModifierVMa();
  v22 = sub_21796698C();
  v23 = OUTLINED_FUNCTION_2(v22);
  v123 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_88();
  v122 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52(v119 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v31 = *(*(v30 - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v33);
  v34 = swift_checkMetadataState();
  OUTLINED_FUNCTION_2(v34);
  v128 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v39);
  v138 = *(v21 - 8);
  v40 = *(v138 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v42);
  v129 = v43;
  v161 = v43;
  v162 = OpaqueTypeConformance2;
  v134 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_217930878();
  v150 = v21;
  v151 = v30;
  v161 = v21;
  v162 = v30;
  v145 = v44;
  v163 = v44;
  v164 = v45;
  v141 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v47 = OUTLINED_FUNCTION_2(v46);
  v120 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_88();
  v119[0] = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52(v119 - v53);
  v140 = v54;
  v146 = v22;
  v144 = sub_217966F9C();
  OUTLINED_FUNCTION_2(v144);
  v143 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v59);
  v149 = a4 & 1;
  LOBYTE(v161) = a4;
  v60 = a5;
  v162 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  LODWORD(v30) = v160[7];
  v61 = a6;
  v62 = v148;
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  v63 = swift_getWitnessTable();
  v64 = v130;
  v65 = v131;
  v126 = v63;
  sub_217966A9C();
  sub_2178D759C();
  v67 = v66;

  v125 = v61;
  v161 = v67;
  OUTLINED_FUNCTION_12_10();
  v68 = swift_allocObject();
  *(v68 + 16) = v61;
  *(v68 + 24) = v62;
  if (v30 == 1)
  {
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    v69 = v149;
    *(v68 + 48) = v149;
    *(v68 + 56) = v60;

    swift_checkMetadataState();
    OUTLINED_FUNCTION_19_10();
    v70 = v127;
    OUTLINED_FUNCTION_11_14();

    v71 = v137;
    OUTLINED_FUNCTION_16_13();
    sub_21796792C();
    OUTLINED_FUNCTION_54(v160);
    v72(v70, v62);
    OUTLINED_FUNCTION_18_8();
    v74 = *(v73 - 256);
    sub_217966A9C();
    v75 = v119[2];
    sub_2178D81F4();

    OUTLINED_FUNCTION_12_10();
    v76 = swift_allocObject();
    v77 = v148;
    *(v76 + 16) = v125;
    *(v76 + 24) = v77;
    *(v76 + 32) = v64;
    *(v76 + 40) = v65;
    *(v76 + 48) = v69;
    *(v76 + 56) = v60;

    v78 = v119[0];
    v80 = v150;
    v79 = v151;
    v81 = v145;
    sub_217967A6C();

    sub_217875F0C(v75, &qword_27CB8A578, &qword_21796A750);
    OUTLINED_FUNCTION_54(&v166);
    v82(v71, v80);
    v161 = v80;
    v162 = v79;
    OUTLINED_FUNCTION_3_29();
    v83 = v119[1];
    v84 = v140;
    sub_2179560E4(v78, v140);
    v85 = *(v120 + 8);
    v85(v78, v84);
    sub_2179560E4(v83, v84);
    OUTLINED_FUNCTION_1_27();
    v88 = sub_217961740(v86, v87);
    v152 = v81;
    v153 = v88;
    OUTLINED_FUNCTION_1();
    swift_getWitnessTable();
    v89 = v142;
    sub_217952EE8();
    v90 = v78;
    v91 = v150;
    v85(v90, v84);
    v85(v83, v84);
  }

  else
  {
    v92 = v62;
    *(v68 + 32) = v64;
    *(v68 + 40) = v65;
    *(v68 + 48) = v149;
    v93 = v60;
    *(v68 + 56) = v60;

    swift_checkMetadataState();
    OUTLINED_FUNCTION_19_10();
    v94 = v127;
    OUTLINED_FUNCTION_11_14();

    v95 = v137;
    OUTLINED_FUNCTION_16_13();
    sub_21796792C();
    OUTLINED_FUNCTION_54(v160);
    v96(v94, v62);
    OUTLINED_FUNCTION_18_8();
    v98 = *(v97 - 256);
    v99 = sub_217966AAC();
    MEMORY[0x28223BE20](v99);
    v100 = v125;
    v119[-2] = v125;
    v119[-1] = v62;
    swift_getKeyPath();
    v101 = v124;
    sub_217966ABC();

    OUTLINED_FUNCTION_12_10();
    v102 = swift_allocObject();
    *(v102 + 16) = v100;
    *(v102 + 24) = v92;
    *(v102 + 32) = v64;
    *(v102 + 40) = v65;
    *(v102 + 48) = v149;
    *(v102 + 56) = v93;

    v103 = v122;
    v91 = v150;
    v81 = v145;
    sub_21792EC54(v101, sub_21796170C, v102, v150, v145);

    sub_217875F0C(v101, &qword_27CB8A788, &qword_21796A960);
    OUTLINED_FUNCTION_54(&v166);
    v104(v95, v91);
    OUTLINED_FUNCTION_1_27();
    v107 = sub_217961740(v105, v106);
    v158 = v81;
    v159 = v107;
    OUTLINED_FUNCTION_1();
    v108 = v146;
    swift_getWitnessTable();
    v109 = v121;
    sub_2179560E4(v103, v108);
    v110 = *(v123 + 8);
    v110(v103, v108);
    sub_2179560E4(v109, v108);
    v161 = v91;
    v162 = v151;
    OUTLINED_FUNCTION_3_29();
    v89 = v142;
    sub_217952FA4();
    v110(v103, v108);
    v110(v109, v108);
  }

  v161 = v91;
  v162 = v151;
  v111 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_1_27();
  v114 = sub_217961740(v112, v113);
  v156 = v81;
  v157 = v114;
  OUTLINED_FUNCTION_1();
  v115 = swift_getWitnessTable();
  v154 = v111;
  v155 = v115;
  OUTLINED_FUNCTION_20();
  v116 = v144;
  swift_getWitnessTable();
  sub_2179560E4(v89, v116);
  OUTLINED_FUNCTION_54(&v167);
  return v117(v89, v116);
}

void sub_217960DE4()
{
  v0 = _s5AlertVMa(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D81F4();

  if (qword_27CB8A438 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_27CB97AC0);
  sub_217864EC8(v17, v14);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v0);
  v18 = *(v3 + 48);
  sub_217961804(v16, v6);
  sub_217961804(v14, &v6[v18]);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_217961804(v6, v11);
    if (__swift_getEnumTagSinglePayload(&v6[v18], 1, v0) != 1)
    {
      v19 = v23;
      sub_217865358(&v6[v18], v23);
      sub_21791EA90();
      v21 = v20;
      sub_217961874(v19);
      sub_217875F0C(v14, &qword_27CB8A578, &qword_21796A750);
      sub_217875F0C(v16, &qword_27CB8A578, &qword_21796A750);
      sub_217961874(v11);
      sub_217875F0C(v6, &qword_27CB8A578, &qword_21796A750);
      if ((v21 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_217875F0C(v14, &qword_27CB8A578, &qword_21796A750);
    sub_217875F0C(v16, &qword_27CB8A578, &qword_21796A750);
    sub_217961874(v11);
LABEL_8:
    sub_217875F0C(v6, &qword_27CB8A818, &qword_21796F490);
    return;
  }

  sub_217875F0C(v14, &qword_27CB8A578, &qword_21796A750);
  sub_217875F0C(v16, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v6[v18], 1, v0) != 1)
  {
    goto LABEL_8;
  }

  sub_217875F0C(v6, &qword_27CB8A578, &qword_21796A750);
LABEL_10:
  if (qword_27CB8A378 != -1)
  {
    swift_once();
  }

  sub_2178CC26C();
}

uint64_t sub_2179611E0()
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D759C();

  sub_21796919C();
  swift_getWitnessTable();
  sub_21796932C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

uint64_t sub_2179612F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _s5AlertVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v34 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v34 - v25;
  v38 = a5;
  v39 = a6;
  _s9ViewModelCMa();
  swift_getWitnessTable();
  v36 = a1;
  v37 = a2;
  sub_217966A9C();
  sub_2178D81F4();

  if (qword_27CB8A438 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v10, qword_27CB97AC0);
  sub_217864EC8(v27, v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v10);
  v28 = *(v13 + 48);
  sub_217961804(v26, v16);
  sub_217961804(v24, &v16[v28]);
  if (__swift_getEnumTagSinglePayload(v16, 1, v10) != 1)
  {
    sub_217961804(v16, v21);
    if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v10) != 1)
    {
      v30 = &v16[v28];
      v31 = v35;
      sub_217865358(v30, v35);
      sub_21791EA90();
      v33 = v32;
      sub_217961874(v31);
      sub_217875F0C(v24, &qword_27CB8A578, &qword_21796A750);
      sub_217875F0C(v26, &qword_27CB8A578, &qword_21796A750);
      sub_217961874(v21);
      result = sub_217875F0C(v16, &qword_27CB8A578, &qword_21796A750);
      if ((v33 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_217875F0C(v24, &qword_27CB8A578, &qword_21796A750);
    sub_217875F0C(v26, &qword_27CB8A578, &qword_21796A750);
    sub_217961874(v21);
    return sub_217875F0C(v16, &qword_27CB8A818, &qword_21796F490);
  }

  sub_217875F0C(v24, &qword_27CB8A578, &qword_21796A750);
  sub_217875F0C(v26, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v10) != 1)
  {
    return sub_217875F0C(v16, &qword_27CB8A818, &qword_21796F490);
  }

  sub_217875F0C(v16, &qword_27CB8A578, &qword_21796A750);
LABEL_10:
  sub_217966A9C();
  sub_217862E84();
  sub_2178DC24C();
}

uint64_t sub_217961740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217961788()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_2179611E0();
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_12_10();

  return swift_deallocObject();
}

uint64_t sub_217961804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217961874(uint64_t a1)
{
  v2 = _s5AlertVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_29()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 336);
  v4 = *(v0 - 304);

  return sub_217967A6C();
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  v2 = *(v0 - 352);

  return swift_checkMetadataState();
}

uint64_t ArtworkImage.init(_:width:height:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_16();
  v7 = sub_217968C2C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_2178B01F4(a1, v1);
  OUTLINED_FUNCTION_4_24();
  if (v18)
  {
    sub_217968BBC();
    OUTLINED_FUNCTION_4_24();
    if (!v18)
    {
      sub_2178C6EEC(v1);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_11_15(v10);
    v20(v19);
  }

  (*(v10 + 16))(v15, v17, v7);
  sub_21796644C();
  sub_2178C6EEC(a1);
  return (*(v10 + 8))(v17, v7);
}

uint64_t ArtworkImage.artworkIdealAspectRatio(_:contentMode:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_13();
  v6 = sub_21796643C();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  v12 = sub_21796633C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v12);
  OUTLINED_FUNCTION_2_19();
  v14 = 0;
  v15 = v1;
  return OUTLINED_FUNCTION_10_13();
}

void ArtworkImage.artworkCropStyle(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_19();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = OUTLINED_FUNCTION_1_28(v9, v13);
  v11(v10, v0);
  sub_217968B9C();
  v12 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v12);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_3_30();
  sub_2179663AC();
  OUTLINED_FUNCTION_12_11();
}

uint64_t ArtworkImage.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_16();
  v7 = sub_217968C2C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2178B01F4(a1, v1);
  OUTLINED_FUNCTION_4_24();
  if (v15)
  {
    sub_217968BBC();
    OUTLINED_FUNCTION_4_24();
    if (!v15)
    {
      sub_2178C6EEC(v1);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_11_15(v10);
    v17(v16);
  }

  sub_21796639C();
  sub_2178C6EEC(a1);
  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_217961F6C(uint64_t a1, void (*a2)(char *, double), double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BD60, &qword_21796CC60);
  OUTLINED_FUNCTION_48(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_13();
  v11 = sub_217968C2C();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v23 - v20;
  sub_2178B01F4(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    sub_217968BBC();
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) != 1)
    {
      sub_2178C6EEC(v3);
    }
  }

  else
  {
    (*(v14 + 32))(v21, v3, v11);
  }

  (*(v14 + 16))(v19, v21, v11);
  a2(v19, a3);
  sub_2178C6EEC(a1);
  return (*(v14 + 8))(v21, v11);
}

void ArtworkImage.artworkImageFormat(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_19();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = OUTLINED_FUNCTION_1_28(v9, v13);
  v11(v10, v0);
  sub_217968B4C();
  v12 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v12);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_3_30();
  sub_2179663AC();
  OUTLINED_FUNCTION_12_11();
}

void ArtworkImage.artworkBackgroundColor(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_19();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = OUTLINED_FUNCTION_1_28(v9, v13);
  v11(v10, v0);
  v12 = sub_21796633C();
  OUTLINED_FUNCTION_8_14(v12);

  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_12_11();
}

void ArtworkImage.overrideFrameSize(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8D2C0, &qword_21796FC70);
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_16();
  v6 = sub_21796643C();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = OUTLINED_FUNCTION_1_28(v10, v14);
  v12(v11, v0);
  v13 = sub_21796633C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v13);
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_12_11();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_21796643C();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_2179663AC();
}

uint64_t sub_21796259C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_2179625C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  if (*(v0 + 40))
  {
    sub_2179635E0(v9);
    v10 = *(v0 + 24);
    v12[1] = *(v0 + 16);
    v12[2] = v10;
    sub_21796874C();
    (*(v4 + 8))(v9, v2);
    if (v13)
    {
      return v13;
    }
  }

  return v1;
}

void sub_2179626CC()
{
  v1 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied;
  if ((*(v0 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied) & 1) == 0)
  {
    v2 = v0;
    if (qword_2811AD490 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v3 = sub_21796653C();
    __swift_project_value_buffer(v3, qword_2811AE408);

    v4 = sub_21796651C();
    v5 = sub_21796939C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      v8 = sub_217963E64(0);
      v10 = sub_217957F4C(v8, v9, &v17);

      *(v6 + 4) = v10;
      OUTLINED_FUNCTION_6_16(&dword_217846000, v11, v12, "Applying artwork caching policy for %{public}s.");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }

    v13 = *(v0 + 16);
    v14 = *(v2 + 24);
    v15 = *(v2 + 32);
    v16 = *(v2 + 40);

    sub_21796299C(v2, v13, v14, v15, v16);

    *(v2 + v1) = 1;
  }
}

uint64_t sub_217962848(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {

      if (v3 == a1)
      {
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return result;
  }

  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_3_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
    sub_2179686DC();
    swift_endAccess();
  }

  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_3_31();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
    sub_2179686CC();
    swift_endAccess();
  }

  sub_217963388();
}

void sub_21796299C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v22[11] = v5;
    v23 = v6;
    if (qword_2811AD490 != -1)
    {
      swift_once();
    }

    v11 = sub_21796653C();
    __swift_project_value_buffer(v11, qword_2811AE408);

    v12 = sub_21796651C();
    v13 = sub_21796939C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 134349570;
      *(v14 + 4) = a4;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_217957F4C(a2, a3, v22);
      *(v14 + 22) = 2082;
      v16 = sub_217963E64(0);
      v18 = v17;

      v19 = sub_217957F4C(v16, v18, v22);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_217846000, v12, v13, "Setting cache limit %{public}ld for cache identifier: %{public}s and cache reference: %{public}s.", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEA8ED0](v15, -1, -1);
      MEMORY[0x21CEA8ED0](v14, -1, -1);
    }

    else
    {
    }

    v20 = objc_opt_self();
    v21 = sub_217968F2C();
    [v20 setCacheLimit:a4 forCacheIdentifier:v21 cacheReference:a1];
  }
}

uint64_t *sub_217962BC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  __swift_storeEnumTagSinglePayload(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_isPolicyApplied) = 0;
  swift_weakInit();
  sub_2179686AC();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  *(v5 + 40) = a4 & 1;
  if (qword_2811AD490 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  v13 = sub_21796653C();
  __swift_project_value_buffer(v13, qword_2811AE408);

  v14 = sub_21796651C();
  v15 = sub_21796939C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;

    v18 = sub_217963E64(0);
    v20 = v19;

    v21 = sub_217957F4C(v18, v20, &v25);

    *(v16 + 4) = v21;
    OUTLINED_FUNCTION_6_16(&dword_217846000, v22, v23, "Initialized %{public}s.");
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  return v5;
}

uint64_t sub_217962DC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D0, &qword_217973DC0);
  OUTLINED_FUNCTION_2(v9);
  v33 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  if (qword_2811AD490 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  v16 = sub_21796653C();
  __swift_project_value_buffer(v16, qword_2811AE408);

  v17 = sub_21796651C();
  v18 = sub_21796939C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v4;
    v21 = v20;
    v34[0] = v20;
    *v19 = 136446210;
    v22 = sub_217963E64(0);
    v24 = sub_217957F4C(v22, v23, v34);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_217846000, v17, v18, "Deallocating %{public}s.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v4 = v31;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_2179686DC();
    swift_endAccess();
  }

  v25 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  OUTLINED_FUNCTION_5_17();
  v26 = v32;
  (*(v4 + 16))(v32, v1 + v25, v2);
  sub_2179686BC();
  v27 = *(v4 + 8);
  v27(v26, v2);
  while (sub_2179686EC())
  {

    sub_217962848(v28);
  }

  (*(v33 + 8))(v15, v9);

  v29 = *(v1 + 24);

  sub_2179644D8(v1 + OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes);
  swift_weakDestroy();
  v27((v1 + v25), v2);
  return v1;
}

uint64_t sub_217963134()
{
  sub_217962DC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s4NodeCMa()
{
  result = qword_2811AD3F8;
  if (!qword_2811AD3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2179631E0()
{
  sub_2179632CC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_217963330();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2179632CC()
{
  if (!qword_27CB8F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F658, &qword_217973C90);
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8F650);
    }
  }
}

void sub_217963330()
{
  if (!qword_27CB8F660)
  {
    _s4NodeCMa();
    v0 = sub_2179686FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8F660);
    }
  }
}

uint64_t sub_217963388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D0, &qword_217973DC0);
  OUTLINED_FUNCTION_2(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  swift_beginAccess();
  sub_217964404(v20, v0 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  OUTLINED_FUNCTION_5_17();
  (*(v3 + 16))(v8, v0 + v23, v1);
  sub_2179686BC();
  (*(v3 + 8))(v8, v1);
  while (sub_2179686EC())
  {
    sub_217963388();
  }

  return (*(v11 + 8))(v16, v9);
}

uint64_t sub_2179635E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_cachedActivePolicyNodes;
  OUTLINED_FUNCTION_5_17();
  sub_217964540(v1 + v22, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2179644D8(v10);
    if (swift_weakLoadStrong())
    {
      sub_2179635E0();
    }

    else
    {
      sub_21796873C();
    }

    v25 = v1[2];
    v24 = v1[3];
    v39 = v25;
    v40 = v24;

    sub_21796874C();
    if (v38 && (, (v1[5] & 1) != 0))
    {
    }

    else
    {
      v38 = v1;
      v39 = v25;
      v40 = v24;

      sub_21796875C();
    }

    (*(v14 + 16))(v8, v21, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    swift_beginAccess();
    sub_217964404(v8, v1 + v22);
    swift_endAccess();
    if (qword_2811AD490 != -1)
    {
      OUTLINED_FUNCTION_0_26();
    }

    v26 = sub_21796653C();
    __swift_project_value_buffer(v26, qword_2811AE408);

    v27 = sub_21796651C();
    v28 = sub_21796939C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v29 = 136446466;
      v30 = sub_217963E64(2);
      v32 = sub_217957F4C(v30, v31, &v39);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      swift_beginAccess();
      v33 = sub_217963A80();
      v35 = sub_217957F4C(v33, v34, &v39);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_217846000, v27, v28, "%{public}s did update cached active policy nodes: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v23 = *(v14 + 32);
    v23(v19, v10, v11);
    v23(v21, v19, v11);
  }

  swift_beginAccess();
  (*(v14 + 16))(a1, v21, v11);
  return (*(v14 + 8))(v21, v11);
}

uint64_t sub_217963A80()
{
  v13 = 0;
  v14 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F658, &qword_217973C90);
  v10 = sub_21796872C();

  sub_2179645B0(&v10);

  v0 = *(v10 + 16);
  if (v0)
  {
    v1 = (v10 + 40);
    do
    {
      v3 = *(v1 - 1);
      v2 = *v1;
      v10 = v3;
      v11 = v2;

      sub_21796874C();
      if (v12)
      {
        v4 = v13 & 0xFFFFFFFFFFFFLL;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v4 = HIBYTE(v14) & 0xF;
        }

        if (v4)
        {
          MEMORY[0x21CEA7F50](44, 0xE100000000000000);
        }

        v10 = 0x22202020200ALL;
        v11 = 0xE600000000000000;
        MEMORY[0x21CEA7F50](v3, v2);

        MEMORY[0x21CEA7F50](2112034, 0xE300000000000000);
        v5 = sub_217963E64(2);
        MEMORY[0x21CEA7F50](v5);

        MEMORY[0x21CEA7F50](v10, v11);
      }

      v1 += 2;
      --v0;
    }

    while (v0);

    v6 = v13;
    v7 = v14;
  }

  else
  {

    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v10 = 91;
    v11 = 0xE100000000000000;
    MEMORY[0x21CEA7F50]();

    MEMORY[0x21CEA7F50](23818, 0xE200000000000000);
    return v10;
  }

  else
  {

    return 6109787;
  }
}

uint64_t sub_217963C94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21796654C();
  *a1 = result;
  return result;
}

uint64_t sub_217963D08()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  sub_217968FCC();
  sub_21796975C();
  if (v4 != 1)
  {
    MEMORY[0x21CEA86B0](v3);
  }
}

uint64_t sub_217963D9C()
{
  sub_21796973C();
  sub_217963D08();
  return sub_21796977C();
}

uint64_t sub_217963E24()
{
  v1 = *v0;
  sub_21796973C();
  sub_217963D08();
  return sub_21796977C();
}

uint64_t sub_217963E64(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6C8, &qword_217973DB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_21796950C();
  MEMORY[0x21CEA7F50](0xD00000000000001ELL, 0x8000000217977080);
  v35 = v1;
  sub_21796958C();
  v35 = v33;
  v36 = v34;
  v33 = 0x7963696C6F70203BLL;
  v34 = 0xEB00000000203D20;
  v9 = *(v1 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);

  v13 = sub_217958AF8(v9, v10, v11, v12);
  v15 = v14;

  MEMORY[0x21CEA7F50](v13, v15);

  MEMORY[0x21CEA7F50](v33, v34);

  if (a1 != 1)
  {
    if (a1 != 2)
    {
LABEL_20:
      MEMORY[0x21CEA7F50](62, 0xE100000000000000);
      return v35;
    }

    v16 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v16, v4);
    sub_217964474();
    v17 = sub_21796906C();
    if (sub_21796259C(v17))
    {
      v18 = sub_21796259C(v17);

      if (v18 >= 2)
      {
        v31 = 0;
        v32 = 0xE000000000000000;
        sub_21796950C();

        v31 = 0x1000000000000012;
        v32 = 0x80000002179770C0;
        v30 = v18;
        v19 = sub_21796966C();
        MEMORY[0x21CEA7F50](v19);

        MEMORY[0x21CEA7F50](0xE2207365646F6E20, 0xAB000000005DA680);
        MEMORY[0x21CEA7F50](v31, v32);

        goto LABEL_20;
      }

      v28 = 0x100000000000001DLL;
      v29 = 0x80000002179770A0;
LABEL_19:
      MEMORY[0x21CEA7F50](v28, v29);
      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_20;
  }

  if (swift_weakLoadStrong())
  {
    v33 = 0x746E65726170203BLL;
    v34 = 0xEB00000000203D20;
    v20 = sub_217963E64(0);
    MEMORY[0x21CEA7F50](v20);

    MEMORY[0x21CEA7F50](v33, v34);
  }

  v21 = OBJC_IVAR____TtCVVE25_MusicKitInternal_SwiftUIV8MusicKit7Artwork7Caching6Policy4Node_children;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v21, v4);
  sub_217964474();
  v22 = sub_21796906C();
  if (!sub_21796259C(v22))
  {
    goto LABEL_17;
  }

  MEMORY[0x21CEA7F50](0x72646C696863203BLL, 0xEE005B203D206E65);
  result = sub_21796259C(v22);
  if (!result)
  {
LABEL_16:

    v28 = 23818;
    v29 = 0xE200000000000000;
    goto LABEL_19;
  }

  v24 = result;
  if (result >= 1)
  {
    v25 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEA8490](v25, v22);
      }

      else
      {
        v26 = *(v22 + 8 * v25 + 32);
      }

      ++v25;
      v31 = 0x202020200ALL;
      v32 = 0xE500000000000000;
      v27 = sub_217963E64(0);
      MEMORY[0x21CEA7F50](v27);

      MEMORY[0x21CEA7F50](44, 0xE100000000000000);
      MEMORY[0x21CEA7F50](v31, v32);
    }

    while (v24 != v25);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_2179643AC()
{
  result = qword_2811AD408;
  if (!qword_2811AD408)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AD408);
  }

  return result;
}

uint64_t sub_217964404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_217964474()
{
  result = qword_27CB8F6E0;
  if (!qword_27CB8F6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F6C8, &qword_217973DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F6E0);
  }

  return result;
}

uint64_t sub_2179644D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217964540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F6D8, &qword_217973DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179645B0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2178EBDB0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21796461C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21796461C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21796965C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21796912C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2179647D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_217964710(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217964710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21796969C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2179647D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21796969C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21796969C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21796969C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2178E7E50();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2178E7E50();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_217964E0C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_217964CE0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_217964CE0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2178E9AC0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_217964E0C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_217964E0C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_217909E6C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21796969C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_217909E6C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21796969C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  v2 = *(v0 + 1024);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27CB977A8 == -1)
  {
    if (qword_27CB977B0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27CB977B0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CB977A0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27CB97794 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27CB97794 >= a3)
      {
        result = dword_27CB97798 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27CB977B0;
  if (qword_27CB977B0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CB977B0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CEA8860](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27CB97794, &dword_27CB97798);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}