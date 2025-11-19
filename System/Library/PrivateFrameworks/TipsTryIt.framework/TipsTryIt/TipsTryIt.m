__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26F1389DC(uint64_t a1, int a2)
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

uint64_t sub_26F1389FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F138A44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F138A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26F138AEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_26F138B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_26F138BCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_26F138C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40A0, &qword_26F181AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40A8, &qword_26F181AC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  *&v26 = v13;
  *(&v26 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
  sub_26F180414();
  v14 = v31;
  if (v31)
  {
    sub_26F13AA48(0, &qword_2806D40B0, 0x277CD9ED0);
    v24[1] = a2;
    *(swift_allocObject() + 16) = v14;
    v15 = v14;
    sub_26F17F994();
    sub_26F180564();
    sub_26F17F9A4();
    v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D40B8, &qword_26F181AD0) + 36)];
    v17 = v27;
    *v16 = v26;
    *(v16 + 1) = v17;
    *(v16 + 2) = v28;
    v18 = *a1;
    v32 = *(a1 + 8);
    v33 = v13;
    v34 = v12;
    v19 = *(a1 + 40);
    v30 = *(a1 + 32);
    v31 = v18;
    v29 = v19;
    v20 = swift_allocObject();
    v21 = *(a1 + 16);
    *(v20 + 1) = *a1;
    *(v20 + 2) = v21;
    *(v20 + 3) = *(a1 + 32);
    v22 = &v7[*(v4 + 36)];
    *v22 = sub_26F13A84C;
    v22[1] = v20;
    v22[2] = 0;
    v22[3] = 0;
    sub_26F13A854(v7, v11, &qword_2806D40A0, &qword_26F181AC0);
    swift_storeEnumTagMultiPayload();
    sub_26F13A854(&v31, v25, &qword_2806D4060, &qword_26F181A88);
    sub_26F13A854(&v33, v25, &qword_2806D4068, &qword_26F181A90);
    sub_26F13A854(&v34, v25, &qword_2806D4070, &qword_26F181A98);
    sub_26F13A854(&v30, v25, &qword_2806D4078, &qword_26F181AA0);
    sub_26F13A854(&v29, v25, &qword_2806D4080, &qword_26F181AA8);
    sub_26F13A8BC();
    sub_26F17FE44();

    return sub_26F13AB10(v7, &qword_2806D40A0, &qword_26F181AC0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26F13A8BC();
    return sub_26F17FE44();
  }
}

uint64_t sub_26F138FAC(uint64_t *a1)
{
  v2 = sub_26F180644();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F180684();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F1806A4();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v27 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v28 = *(v11 + 8);
  v28(v15, v10);
  v18 = *a1;
  v40 = *(a1 + 8);
  v19 = a1[3];
  v38 = a1[2];
  v39 = v18;
  v20 = a1[5];
  v36 = a1[4];
  v37 = v19;
  v35 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  v21[3] = *(a1 + 2);
  aBlock[4] = sub_26F13AA90;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);
  sub_26F13A854(&v39, v33, &qword_2806D4060, &qword_26F181A88);
  sub_26F13A854(&v38, v33, &qword_2806D4068, &qword_26F181A90);
  sub_26F13A854(&v37, v33, &qword_2806D4070, &qword_26F181A98);
  sub_26F13A854(&v36, v33, &qword_2806D4078, &qword_26F181AA0);
  sub_26F13A854(&v35, v33, &qword_2806D4080, &qword_26F181AA8);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F13A120(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  v24 = v27;
  MEMORY[0x27438A580](v17, v9, v5, v23);
  _Block_release(v23);

  (*(v32 + 8))(v5, v2);
  (*(v30 + 8))(v9, v31);
  return (v28)(v17, v29);
}

uint64_t sub_26F139434(uint64_t *a1)
{
  v35 = sub_26F180644();
  v38 = *(v35 - 8);
  v2 = *(v38 + 64);
  (MEMORY[0x28223BE20])();
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F180684();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  (MEMORY[0x28223BE20])();
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F1806A4();
  v32 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v16 = a1[4];
  v15 = a1[5];
  v18 = a1[2];
  v17 = a1[3];
  sub_26F13A208();
  v19 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v19 impactOccurred];

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v30 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v31 = *(v8 + 8);
  v31(v12, v7);
  v41 = *a1;
  v42 = *(a1 + 8);
  v20 = swift_allocObject();
  v21 = *(a1 + 1);
  v20[1] = *a1;
  v20[2] = v21;
  v20[3] = *(a1 + 2);
  aBlock[4] = sub_26F13AB08;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_49;
  v22 = _Block_copy(aBlock);
  sub_26F13A854(&v41, v39, &qword_2806D4060, &qword_26F181A88);

  v23 = v18;

  v24 = v16;

  v25 = v33;
  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F13A120(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  v27 = v34;
  v26 = v35;
  sub_26F180A44();
  v28 = v30;
  MEMORY[0x27438A580](v14, v25, v27, v22);
  _Block_release(v22);

  (*(v38 + 8))(v27, v26);
  (*(v36 + 8))(v25, v37);
  return (v31)(v14, v32);
}

uint64_t sub_26F1398B0(uint64_t *a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v7 = *a1;
  v13 = v7;
  v8 = v14;

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();
    sub_26F13AB10(&v13, &qword_2806D4060, &qword_26F181A88);
    (*(v3 + 8))(v6, v2);
    v7 = v12;
  }

  if (*(v7 + 53) == 1)
  {
    *(v7 + 53) = 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    *(&v11 - 2) = v7;
    *(&v11 - 8) = 1;
    v12 = v7;
    sub_26F13A120(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }
}

uint64_t sub_26F139B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = v1[2];
  *a1 = sub_26F17FD74();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4050, &qword_26F181A78);
  sub_26F138C34(&v10, a1 + *(v4 + 44));
  v13 = v10;
  v14 = BYTE8(v10);
  v15 = *(&v11 + 1);
  v16 = v11;
  v17 = *(&v12 + 1);
  v18 = v12;
  v5 = swift_allocObject();
  v6 = v11;
  *(v5 + 1) = v10;
  *(v5 + 2) = v6;
  *(v5 + 3) = v12;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4058, &qword_26F181A80) + 36));
  *v7 = sub_26F13A1FC;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
  sub_26F13A854(&v13, v9, &qword_2806D4060, &qword_26F181A88);
  sub_26F13A854(&v16, v9, &qword_2806D4068, &qword_26F181A90);
  sub_26F13A854(&v15, v9, &qword_2806D4070, &qword_26F181A98);
  sub_26F13A854(&v18, v9, &qword_2806D4078, &qword_26F181AA0);
  return sub_26F13A854(&v17, v9, &qword_2806D4080, &qword_26F181AA8);
}

uint64_t sub_26F139C90()
{
  v1 = *v0;
  v2 = sub_26F180754();
  v3 = MEMORY[0x27438A450](v2);

  return v3;
}

uint64_t sub_26F139CCC()
{
  v1 = *v0;
  sub_26F180754();
  sub_26F1807B4();
}

uint64_t sub_26F139D20()
{
  v1 = *v0;
  sub_26F180754();
  sub_26F180B94();
  sub_26F1807B4();
  v2 = sub_26F180BB4();

  return v2;
}

uint64_t sub_26F139D9C(uint64_t a1, id *a2)
{
  result = sub_26F180734();
  *a2 = 0;
  return result;
}

uint64_t sub_26F139E14(uint64_t a1, id *a2)
{
  v3 = sub_26F180744();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26F139E94@<X0>(uint64_t *a1@<X8>)
{
  sub_26F180754();
  v2 = sub_26F180724();

  *a1 = v2;
  return result;
}

uint64_t sub_26F139ED8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26F180754();
  v6 = v5;
  if (v4 == sub_26F180754() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F180B44();
  }

  return v9 & 1;
}

uint64_t sub_26F139F60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F180724();

  *a2 = v5;
  return result;
}

uint64_t sub_26F139FA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26F180754();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26F139FD4(uint64_t a1)
{
  v2 = sub_26F13A120(&qword_2806D4040, type metadata accessor for Key);
  v3 = sub_26F13A120(&qword_2806D4048, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26F13A120(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26F13A208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
  sub_26F180414();
  if (v8)
  {

    v0 = sub_26F180724();

    v1 = [v8 stateWithName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
    sub_26F180414();
    v2 = v8;
    LODWORD(v3) = 1.0;
    [v8 setState:v1 ofLayer:v2 transitionSpeed:v3];

    v4 = sub_26F180724();

    v5 = [v8 stateWithName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
    sub_26F180414();
    v6 = v8;
    LODWORD(v7) = 1.0;
    [v8 setState:v5 ofLayer:v6 transitionSpeed:v7];
  }
}

void sub_26F13A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v8 = sub_26F1809E4();
  if (!v8)
  {
    v8 = [objc_opt_self() mainBundle];
  }

  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D74218]);
  v11 = sub_26F180724();
  v12 = [v10 initWithName:v11 bundle:v9];

  if (v12)
  {
    v13 = [v12 data];

    v14 = sub_26F17F754();
    v16 = v15;

    sub_26F13A764(v14, v16);
    v17 = sub_26F17F744();
    v18 = sub_26F180724();
    v30.m11 = 0.0;
    v19 = [objc_opt_self() packageWithData:v17 type:v18 options:0 error:&v30];

    if (v19)
    {
      v20 = *&v30.m11;
      sub_26F13A7B8(v14, v16);
      v21 = [v19 rootLayer];
      if (v21)
      {
        *&v30.m11 = a1;
        *&v30.m12 = a2;
        v31 = v21;
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4090, &qword_26F181AB0);
        sub_26F180424();
        v23 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
        *&v30.m11 = a3;
        *&v30.m12 = a4;
        v31 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4098, &qword_26F181AB8);
        sub_26F180424();
        CATransform3DMakeScale(&v30, 1.0, -1.0, 1.0);
        [v22 setTransform_];
        v24 = sub_26F180724();
        v25 = [v22 stateWithName_];

        *&v30.m11 = a3;
        *&v30.m12 = a4;
        sub_26F180414();
        v26 = v31;
        [v31 setState:v25 ofLayer:v22];
        sub_26F13A7B8(v14, v16);

        goto LABEL_10;
      }
    }

    else
    {
      v27 = *&v30.m11;
      v28 = sub_26F17F6A4();

      swift_willThrow();
      sub_26F13A7B8(v14, v16);
    }

    sub_26F13A7B8(v14, v16);
  }

LABEL_10:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26F13A764(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26F13A7B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26F13A80C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26F13A854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26F13A8BC()
{
  result = qword_2806D40C0;
  if (!qword_2806D40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D40A0, &qword_26F181AC0);
    sub_26F13A990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40C0);
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

unint64_t sub_26F13A990()
{
  result = qword_2806D40C8;
  if (!qword_2806D40C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D40B8, &qword_26F181AD0);
    sub_26F13AC54(&qword_2806D40D0, &qword_2806D40D8, &qword_26F181AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40C8);
  }

  return result;
}

uint64_t sub_26F13AA48(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26F13AB10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26F13AB9C()
{
  result = qword_2806D40F8;
  if (!qword_2806D40F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4058, &qword_26F181A80);
    sub_26F13AC54(&qword_2806D4100, &qword_2806D4108, &unk_26F181B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40F8);
  }

  return result;
}

uint64_t sub_26F13AC54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26F13ACB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_26F13A854(v2, &v16 - v11, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F140EA0(v12, a1);
  }

  v14 = *v12;
  sub_26F180944();
  v15 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F13AE88()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SelectTextView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F13AFD8()
{
  v0 = sub_26F17F6C4();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F17F7A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_26F180714();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = sub_26F17F6D4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v32 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v23 = sub_26F1809E4();
  if (!v23)
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v24 = v23;
  sub_26F17F794();
  (*(v13 + 16))(v17, v19, v12);
  (*(v5 + 16))(v9, v11, v4);
  v25 = [v24 bundleURL];
  v31 = v12;
  v26 = v4;
  v27 = v25;
  sub_26F17F714();

  (*(v33 + 104))(v3, *MEMORY[0x277CC9118], v34);
  sub_26F17F6E4();

  (*(v5 + 8))(v11, v26);
  (*(v13 + 8))(v19, v31);
  result = sub_26F180774();
  qword_2806D6BF0 = result;
  *algn_2806D6BF8 = v29;
  return result;
}

uint64_t sub_26F13B390@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelectTextView();
  v5 = v1 + v4[7];
  v6 = *v5;
  v7 = *(v5 + 8);
  LOBYTE(v24[0]) = v6;
  *(&v24[0] + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180434();
  v8 = v1 + v4[6];
  v9 = *v8;
  v10 = *(v8 + 8);
  LOBYTE(v24[0]) = v9;
  *(&v24[0] + 1) = v10;
  sub_26F180434();
  v11 = (v1 + v4[9]);
  v12 = *v11;
  v13 = v11[1];
  *&v24[0] = v12;
  *(&v24[0] + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180434();
  v14 = sub_26F13AE88();
  if (qword_2806D3FC0 != -1)
  {
    swift_once();
  }

  v16 = qword_2806D6BF0;
  v15 = *algn_2806D6BF8;
  v17 = objc_allocWithZone(MEMORY[0x277D75C40]);

  *&v27[8] = v26;
  v27[24] = v27[0];
  v28 = v26;
  *&v29 = *v27;
  *(&v29 + 1) = v14;
  *&v30 = [v17 init];
  *(&v30 + 1) = v16;
  v31 = v15;
  v25 = v15;
  v24[4] = v29;
  v24[5] = v30;
  v24[0] = v26;
  v24[1] = *v27;
  v24[2] = *&v27[16];
  v24[3] = v26;
  *a1 = sub_26F180564();
  a1[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4238, &qword_26F181C68);
  sub_26F13B614(v2, v24, a1 + *(v19 + 44));
  if (qword_2806D3FD8 != -1)
  {
    swift_once();
  }

  v20 = qword_2806D6C10;
  v21 = sub_26F180014();
  sub_26F140220(&v26);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4240, &qword_26F181C70) + 36);
  *v22 = v20;
  v22[8] = v21;
}

uint64_t sub_26F13B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  *v12 = sub_26F17FD74();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4250, &qword_26F181C80);
  sub_26F13B7AC(a1, a2, &v12[*(v13 + 44)]);
  v14 = a1 + *(type metadata accessor for SelectTextView() + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v20[16] = v15;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v20[15])
  {
    v17 = 0.01;
  }

  else
  {
    v17 = 0.0;
  }

  sub_26F140250(v12, v10);
  sub_26F140250(v10, a3);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4258, &qword_26F181C88) + 48);
  *v18 = v17;
  *(v18 + 4) = 256;
  sub_26F1402C0(v12);
  return sub_26F1402C0(v10);
}

uint64_t sub_26F13B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v5 = type metadata accessor for SelectTextView();
  v84 = *(v5 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5);
  v85 = v7;
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4260, &qword_26F181C90);
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4268, &qword_26F181C98);
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = *(v91 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v83 - v16;
  v96 = sub_26F17FCB4();
  LOBYTE(v114[0]) = 1;
  sub_26F13C568(a1, v99);
  v148 = v99[6];
  v149[0] = v99[7];
  *(v149 + 9) = *(&v99[7] + 9);
  v144 = v99[2];
  v145 = v99[3];
  v147 = v99[5];
  v146 = v99[4];
  v143 = v99[1];
  v142 = v99[0];
  v150[6] = v99[6];
  v151[0] = v99[7];
  *(v151 + 9) = *(&v99[7] + 9);
  v150[2] = v99[2];
  v150[3] = v99[3];
  v150[5] = v99[5];
  v150[4] = v99[4];
  v150[1] = v99[1];
  v150[0] = v99[0];
  sub_26F13A854(&v142, v98, &qword_2806D4270, &qword_26F181CA0);
  sub_26F13AB10(v150, &qword_2806D4270, &qword_26F181CA0);
  *(&v141[5] + 7) = v147;
  *(&v141[6] + 7) = v148;
  *(&v141[7] + 7) = v149[0];
  v141[8] = *(v149 + 9);
  *(&v141[1] + 7) = v143;
  *(&v141[2] + 7) = v144;
  *(&v141[3] + 7) = v145;
  *(&v141[4] + 7) = v146;
  *(v141 + 7) = v142;
  v94 = LOBYTE(v114[0]);
  v17 = (a1 + *(v5 + 32));
  v18 = *v17;
  v19 = v17[1];
  *&v99[0] = v18;
  *(&v99[0] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  sub_26F180564();
  v93 = v5;
  sub_26F17FB44();
  v20 = *(a2 + 80);
  v129 = *(a2 + 64);
  v130 = v20;
  *&v131 = *(a2 + 96);
  v21 = *(a2 + 32);
  v128 = *(a2 + 48);
  v127 = v21;
  v22 = *(a2 + 16);
  v125 = *a2;
  v126 = v22;
  v23 = (a1 + *(v5 + 36));
  v24 = *v23;
  v25 = v23[1];
  *&v98[0] = v24;
  *(&v98[0] + 1) = v25;
  sub_26F140328(a2, v99);
  sub_26F180414();
  sub_26F180564();
  sub_26F17FB44();
  *&v139[160] = v135;
  *&v139[176] = v136;
  *&v139[192] = v137;
  *&v139[208] = v138;
  *&v139[96] = v131;
  *&v139[112] = v132;
  *&v139[128] = v133;
  *&v139[144] = v134;
  *&v139[32] = v127;
  *&v139[48] = v128;
  *&v139[64] = v129;
  *&v139[80] = v130;
  *v139 = v125;
  *&v139[16] = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4278, &qword_26F181CA8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26F181B20;
  v27 = sub_26F180044();
  *(v26 + 32) = v27;
  v28 = sub_26F180064();
  *(v26 + 33) = v28;
  v29 = sub_26F180054();
  sub_26F180054();
  if (sub_26F180054() != v27)
  {
    v29 = sub_26F180054();
  }

  sub_26F180054();
  if (sub_26F180054() != v28)
  {
    v29 = sub_26F180054();
  }

  sub_26F17F894();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v140 = 0;
  sub_26F140360(a1, v8);
  v38 = v8;
  v39 = *(v84 + 80);
  v83 = (v39 + 16) & ~v39;
  v84 = v83 + v85;
  v40 = (v83 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_26F1405D4(v38, v41 + ((v39 + 16) & ~v39));
  v42 = v41 + v40;
  v43 = *(a2 + 80);
  *(v42 + 64) = *(a2 + 64);
  *(v42 + 80) = v43;
  *(v42 + 96) = *(a2 + 96);
  v44 = *(a2 + 16);
  *v42 = *a2;
  *(v42 + 16) = v44;
  v45 = *(a2 + 48);
  *(v42 + 32) = *(a2 + 32);
  *(v42 + 48) = v45;
  memcpy(v98, v139, 0x148uLL);
  WORD4(v98[20]) = 256;
  LOBYTE(v98[21]) = v29;
  *(&v98[21] + 1) = v31;
  *&v98[22] = v33;
  *(&v98[22] + 1) = v35;
  *&v98[23] = v37;
  BYTE8(v98[23]) = 0;
  *&v98[24] = sub_26F140638;
  *(&v98[24] + 1) = v41;
  v98[25] = 0uLL;
  sub_26F140328(a2, v99);
  v46 = sub_26F13AE88();
  swift_getKeyPath();
  *&v99[0] = v46;
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v47 = *(v46 + 51);

  LOBYTE(v114[0]) = v47;
  sub_26F140360(a1, v38);
  v48 = swift_allocObject();
  v49 = *(a2 + 80);
  *(v48 + 80) = *(a2 + 64);
  *(v48 + 96) = v49;
  *(v48 + 112) = *(a2 + 96);
  v50 = *(a2 + 16);
  *(v48 + 16) = *a2;
  *(v48 + 32) = v50;
  v51 = *(a2 + 48);
  *(v48 + 48) = *(a2 + 32);
  *(v48 + 64) = v51;
  sub_26F1405D4(v38, v48 + ((v39 + 120) & ~v39));
  sub_26F140328(a2, v99);
  v52 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4290, &qword_26F181CE0);
  v54 = sub_26F140950();
  v55 = v86;
  sub_26F180314();

  memcpy(v99, v98, sizeof(v99));
  sub_26F13AB10(v99, &qword_2806D4290, &qword_26F181CE0);
  v56 = v52 + *(v93 + 28);
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v98[0]) = v57;
  *(&v98[0] + 1) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  sub_26F140360(v52, v38);
  v59 = swift_allocObject();
  sub_26F1405D4(v38, v59 + v83);
  *&v98[0] = v53;
  *(&v98[0] + 1) = MEMORY[0x277D839B0];
  *&v98[1] = v54;
  *(&v98[1] + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v60 = v95;
  v61 = v88;
  sub_26F180314();

  (*(v87 + 8))(v55, v61);
  v93 = sub_26F17FCB4();
  LOBYTE(v112) = 1;
  sub_26F13D4D4(v52, v98);
  v106 = v98[6];
  v107[0] = v98[7];
  *(v107 + 9) = *(&v98[7] + 9);
  v102 = v98[2];
  v103 = v98[3];
  v105 = v98[5];
  v104 = v98[4];
  v101 = v98[1];
  v100 = v98[0];
  v108[6] = v98[6];
  v109[0] = v98[7];
  *(v109 + 9) = *(&v98[7] + 9);
  v108[2] = v98[2];
  v108[3] = v98[3];
  v108[5] = v98[5];
  v108[4] = v98[4];
  v108[1] = v98[1];
  v108[0] = v98[0];
  sub_26F13A854(&v100, v114, &qword_2806D42E8, &qword_26F181D08);
  sub_26F13AB10(v108, &qword_2806D42E8, &qword_26F181D08);
  *(&v97[5] + 7) = v105;
  *(&v97[6] + 7) = v106;
  *(&v97[7] + 7) = v107[0];
  v97[8] = *(v107 + 9);
  *(&v97[1] + 7) = v101;
  *(&v97[2] + 7) = v102;
  *(&v97[3] + 7) = v103;
  *(&v97[4] + 7) = v104;
  *(v97 + 7) = v100;
  LODWORD(v88) = v112;
  v63 = v90;
  v62 = v91;
  v64 = *(v91 + 16);
  v65 = v92;
  v64(v90, v60, v92);
  *&v111[33] = v141[2];
  *&v111[17] = v141[1];
  *&v111[81] = v141[5];
  *&v111[97] = v141[6];
  *&v111[113] = v141[7];
  *&v111[129] = v141[8];
  *&v111[49] = v141[3];
  v110 = v96;
  v111[0] = v94;
  *&v111[65] = v141[4];
  *&v111[1] = v141[0];
  v66 = *&v111[128];
  v67 = v89;
  *(v89 + 128) = *&v111[112];
  *(v67 + 144) = v66;
  *(v67 + 160) = v111[144];
  v68 = *&v111[64];
  *(v67 + 64) = *&v111[48];
  *(v67 + 80) = v68;
  v69 = *&v111[96];
  *(v67 + 96) = *&v111[80];
  *(v67 + 112) = v69;
  v70 = *v111;
  *v67 = v110;
  *(v67 + 16) = v70;
  v71 = *&v111[32];
  *(v67 + 32) = *&v111[16];
  *(v67 + 48) = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D42F0, &qword_26F181D10);
  v64((v67 + *(v72 + 48)), v63, v65);
  v73 = *(v72 + 64);
  *&v113[81] = v97[5];
  *&v113[97] = v97[6];
  *&v113[113] = v97[7];
  *&v113[129] = v97[8];
  *&v113[33] = v97[2];
  *&v113[17] = v97[1];
  *&v113[49] = v97[3];
  v74 = v67 + v73;
  v75 = v93;
  v112 = v93;
  LOBYTE(v40) = v88;
  v113[0] = v88;
  *&v113[65] = v97[4];
  *&v113[1] = v97[0];
  v76 = *&v113[128];
  *(v74 + 128) = *&v113[112];
  *(v74 + 144) = v76;
  *(v74 + 160) = v113[144];
  v77 = *&v113[64];
  *(v74 + 64) = *&v113[48];
  *(v74 + 80) = v77;
  v78 = *&v113[96];
  *(v74 + 96) = *&v113[80];
  *(v74 + 112) = v78;
  v79 = *v113;
  *v74 = v112;
  *(v74 + 16) = v79;
  v80 = *&v113[32];
  *(v74 + 32) = *&v113[16];
  *(v74 + 48) = v80;
  sub_26F13A854(&v110, v98, &qword_2806D42F8, &qword_26F181D18);
  sub_26F13A854(&v112, v98, &qword_2806D4300, &unk_26F181D20);
  v81 = *(v62 + 8);
  v81(v95, v65);
  v121 = v97[5];
  v122 = v97[6];
  v123 = v97[7];
  v124 = v97[8];
  v117 = v97[1];
  v118 = v97[2];
  v119 = v97[3];
  v120 = v97[4];
  v114[0] = v75;
  v114[1] = 0;
  v115 = v40;
  v116 = v97[0];
  sub_26F13AB10(v114, &qword_2806D4300, &unk_26F181D20);
  v81(v63, v65);
  *(&v98[6] + 1) = v141[5];
  *(&v98[7] + 1) = v141[6];
  *(&v98[8] + 1) = v141[7];
  *(&v98[9] + 1) = v141[8];
  *(&v98[2] + 1) = v141[1];
  *(&v98[3] + 1) = v141[2];
  *(&v98[4] + 1) = v141[3];
  *(&v98[5] + 1) = v141[4];
  v98[0] = v96;
  LOBYTE(v98[1]) = v94;
  *(&v98[1] + 1) = v141[0];
  return sub_26F13AB10(v98, &qword_2806D42F8, &qword_26F181D18);
}

uint64_t sub_26F13C568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_26F17FE84();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v65 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v65 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v65 - v27;
  v29 = off_2806D4118;
  *&v81 = qword_2806D4110;
  KeyPath = swift_getKeyPath();
  *(&v81 + 1) = v29;

  v77 = a1;
  sub_26F13ACB8(v28);
  v30 = v4[13];
  v72 = *MEMORY[0x277CE0558];
  v70 = v30;
  v71 = v4 + 13;
  v30(v26);
  v68 = v4[7];
  v69 = v4 + 7;
  v68(v26, 0, 1, v3);
  v76 = v7;
  v31 = *(v7 + 48);
  sub_26F13A854(v28, v12, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v26, &v12[v31], &qword_2806D4200, &qword_26F181B88);
  v78 = v4;
  v32 = v4[6];
  v33 = v32(v12, 1, v3);
  v74 = v32;
  v75 = v4 + 6;
  if (v33 == 1)
  {
    sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
    if (v32(&v12[v31], 1, v3) == 1)
    {
      sub_26F13AB10(v12, &qword_2806D4200, &qword_26F181B88);
      v34 = 0x4054000000000000;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_26F13A854(v12, v23, &qword_2806D4200, &qword_26F181B88);
  if (v32(&v12[v31], 1, v3) == 1)
  {
    sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
    (v78[1])(v23, v3);
LABEL_6:
    sub_26F13AB10(v12, &qword_2806D4308, &qword_26F182E30);
    v34 = 0x405E000000000000;
    goto LABEL_9;
  }

  v35 = v78;
  v36 = v66;
  (v78[4])(v66, &v12[v31], v3);
  sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570]);
  LODWORD(v73) = sub_26F1806F4();
  v37 = v35[1];
  v37(v36, v3);
  sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
  v37(v23, v3);
  sub_26F13AB10(v12, &qword_2806D4200, &qword_26F181B88);
  v34 = 0x405E000000000000;
  if (v73)
  {
    v34 = 0x4054000000000000;
  }

LABEL_9:
  v73 = v34;
  v39 = v83;
  v38 = v84;
  sub_26F13ACB8(v83);
  v70(v38, v72, v3);
  v68(v38, 0, 1, v3);
  v40 = *(v76 + 48);
  v41 = v79;
  sub_26F13A854(v39, v79, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v38, v41 + v40, &qword_2806D4200, &qword_26F181B88);
  v42 = v74;
  if (v74(v41, 1, v3) != 1)
  {
    v43 = v67;
    sub_26F13A854(v41, v67, &qword_2806D4200, &qword_26F181B88);
    if (v42(v41 + v40, 1, v3) != 1)
    {
      v44 = v78;
      v45 = v41 + v40;
      v46 = v66;
      (v78[4])(v66, v45, v3);
      sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570]);
      sub_26F1806F4();
      v47 = v44[1];
      v47(v46, v3);
      sub_26F13AB10(v84, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
      v47(v67, v3);
      sub_26F13AB10(v41, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_16;
    }

    sub_26F13AB10(v84, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v39, &qword_2806D4200, &qword_26F181B88);
    (v78[1])(v43, v3);
    goto LABEL_14;
  }

  sub_26F13AB10(v38, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v39, &qword_2806D4200, &qword_26F181B88);
  if (v42(v41 + v40, 1, v3) != 1)
  {
LABEL_14:
    sub_26F13AB10(v41, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_16;
  }

  sub_26F13AB10(v41, &qword_2806D4200, &qword_26F181B88);
LABEL_16:
  sub_26F180574();
  sub_26F17F9A4();
  v115 = 0;
  v48 = sub_26F180044();
  sub_26F17F894();
  v50 = KeyPath;
  v49 = v81;
  *&v89[0] = KeyPath;
  BYTE8(v89[0]) = 0;
  *(v89 + 9) = *v114;
  HIDWORD(v89[0]) = *&v114[3];
  v51 = *(&v81 + 1);
  v89[1] = v81;
  v52 = v87;
  v89[4] = v88;
  v53 = v86;
  v89[2] = v86;
  v89[3] = v87;
  LOBYTE(v90) = v48;
  DWORD1(v90) = *(v117 + 3);
  *(&v90 + 1) = v117[0];
  *(&v90 + 1) = v54;
  *&v91[0] = v55;
  *(&v91[0] + 1) = v56;
  *&v91[1] = v57;
  BYTE8(v91[1]) = 0;
  v94 = v86;
  v95 = v87;
  v58 = v88;
  v92 = v89[0];
  v93 = v81;
  *(v98 + 9) = *(v91 + 9);
  v97 = v90;
  v98[0] = v91[0];
  v116 = 0;
  v96 = v88;
  v85[128] = 1;
  v59 = v87;
  v60 = v82;
  *(v82 + 32) = v86;
  *(v60 + 48) = v59;
  v61 = v93;
  *v60 = v92;
  *(v60 + 16) = v61;
  v62 = v98[1];
  *(v60 + 96) = v98[0];
  *(v60 + 112) = v62;
  v63 = v97;
  *(v60 + 64) = v96;
  *(v60 + 80) = v63;
  *(v60 + 128) = 0;
  *(v60 + 136) = 1;
  v99 = v50;
  v100 = 0;
  *&v101[3] = *&v114[3];
  *v101 = *v114;
  v102 = v49;
  v103 = v51;
  v105 = v52;
  v106 = v58;
  v104 = v53;
  v107 = v48;
  *&v108[3] = *(v117 + 3);
  *v108 = v117[0];
  v109 = v54;
  v110 = v55;
  v111 = v56;
  v112 = v57;
  v113 = 0;
  sub_26F13A854(v89, v85, &qword_2806D4310, &qword_26F181D58);
  return sub_26F13AB10(&v99, &qword_2806D4310, &qword_26F181D58);
}

uint64_t sub_26F13CEF8(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = sub_26F13AE88();
  if (*(v4 + 52) == 1)
  {
    *(v4 + 52) = 1;
  }

  else
  {
    v5 = v4;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v34[0] = v5;
    sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }

  *(sub_26F13AE88() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 4;

  v34[0] = 0;
  v34[1] = 0;
  v7 = [*(a2 + 80) attributedText];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = [v7 attributesAtIndex:0 effectiveRange:v34];

  type metadata accessor for Key(0);
  v11 = v10;
  sub_26F141008(&qword_2806D4040, type metadata accessor for Key);
  sub_26F1806D4();

  if (qword_2806D3FC0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v35 = qword_2806D6BF0;
    v36 = *algn_2806D6BF8;
    sub_26F140F5C();
    v12 = sub_26F180A24();
    v13 = v12;
    v14 = v12[2];
    if (!v14)
    {

      goto LABEL_19;
    }

    v33 = a1;
    a1 = v12[4];
    v15 = v12[5];

    if (v14 == 1)
    {
      break;
    }

    v31 = v14 - 1;
    v32 = v11;
    v17 = v14;
    v18 = v13 + 5;
    v19 = 1;
LABEL_11:
    v20 = &v18[2 * v19];
    while (v19 < v13[2])
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v11 = v19 + 1;

      v23 = sub_26F1807C4();
      if (sub_26F1807C4() < v23)
      {

        a1 = v22;
        v18 = v13 + 5;
        v24 = v31 == v19++;
        v11 = v32;
        if (v24)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      v20 += 2;
      ++v19;
      if (v17 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_18:

  v25 = sub_26F180724();

  v26 = sub_26F1806C4();

  [v25 sizeWithAttributes_];

  v27 = (v33 + *(type metadata accessor for SelectTextView() + 32));
  v28 = *v27;
  v29 = v27[1];
  v35 = v28;
  v36 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  result = sub_26F180424();
LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26F13D374(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == 1)
  {
    v6 = *(a3 + 24);
    v7 = *(a3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
    sub_26F180484();
    v5 = a4 + *(type metadata accessor for SelectTextView() + 28);
    LOBYTE(v6) = *v5;
    *(&v6 + 1) = *(v5 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
  }
}

void sub_26F13D430(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v3 = (a3 + *(type metadata accessor for SelectTextView() + 28));
    v4 = *v3;
    v5 = *(v3 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
    *(sub_26F13AE88() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 4;
  }
}

uint64_t sub_26F13D4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v3 = sub_26F17FE84();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v66 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v66 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v66 - v27;
  v29 = off_2806D4128;
  *&v81 = qword_2806D4120;
  KeyPath = swift_getKeyPath();
  *(&v81 + 1) = v29;

  v77 = a1;
  sub_26F13ACB8(v28);
  v30 = v4[13];
  v72 = *MEMORY[0x277CE0558];
  v70 = v30;
  v71 = v4 + 13;
  v30(v26);
  v68 = v4[7];
  v69 = v4 + 7;
  v68(v26, 0, 1, v3);
  v76 = v7;
  v31 = *(v7 + 48);
  sub_26F13A854(v28, v12, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v26, &v12[v31], &qword_2806D4200, &qword_26F181B88);
  v78 = v4;
  v32 = v4[6];
  v33 = v32(v12, 1, v3);
  v74 = v32;
  v75 = v4 + 6;
  if (v33 == 1)
  {
    sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
    v34 = v32(&v12[v31], 1, v3);
    v35 = v84;
    if (v34 == 1)
    {
      sub_26F13AB10(v12, &qword_2806D4200, &qword_26F181B88);
      v36 = 0x4054000000000000;
LABEL_7:
      v73 = v36;
      v37 = v79;
      goto LABEL_11;
    }

LABEL_6:
    sub_26F13AB10(v12, &qword_2806D4308, &qword_26F182E30);
    v36 = 0x405E000000000000;
    goto LABEL_7;
  }

  sub_26F13A854(v12, v23, &qword_2806D4200, &qword_26F181B88);
  if (v32(&v12[v31], 1, v3) == 1)
  {
    sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
    (v78[1])(v23, v3);
    v35 = v84;
    goto LABEL_6;
  }

  v38 = v78;
  v39 = v66;
  (v78[4])(v66, &v12[v31], v3);
  sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570]);
  LODWORD(v73) = sub_26F1806F4();
  v40 = v38[1];
  v40(v39, v3);
  sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v28, &qword_2806D4200, &qword_26F181B88);
  v40(v23, v3);
  sub_26F13AB10(v12, &qword_2806D4200, &qword_26F181B88);
  v41 = 0x405E000000000000;
  if (v73)
  {
    v41 = 0x4054000000000000;
  }

  v73 = v41;
  v37 = v79;
  v35 = v84;
LABEL_11:
  v42 = v83;
  sub_26F13ACB8(v83);
  v70(v35, v72, v3);
  v68(v35, 0, 1, v3);
  v43 = v3;
  v44 = *(v76 + 48);
  sub_26F13A854(v42, v37, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v35, v37 + v44, &qword_2806D4200, &qword_26F181B88);
  v45 = v74;
  if (v74(v37, 1, v43) != 1)
  {
    v46 = v67;
    sub_26F13A854(v37, v67, &qword_2806D4200, &qword_26F181B88);
    if (v45(v37 + v44, 1, v43) != 1)
    {
      v47 = v78;
      v48 = v66;
      (v78[4])(v66, v37 + v44, v43);
      sub_26F141008(&qword_2806D4318, MEMORY[0x277CE0570]);
      sub_26F1806F4();
      v49 = v47[1];
      v49(v48, v43);
      sub_26F13AB10(v84, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
      v49(v67, v43);
      sub_26F13AB10(v37, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_18;
    }

    sub_26F13AB10(v84, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v42, &qword_2806D4200, &qword_26F181B88);
    (v78[1])(v46, v43);
    goto LABEL_16;
  }

  sub_26F13AB10(v35, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v42, &qword_2806D4200, &qword_26F181B88);
  if (v45(v37 + v44, 1, v43) != 1)
  {
LABEL_16:
    sub_26F13AB10(v37, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_18;
  }

  sub_26F13AB10(v37, &qword_2806D4200, &qword_26F181B88);
LABEL_18:
  sub_26F180584();
  sub_26F17F9A4();
  v110 = 0;
  v50 = sub_26F180064();
  sub_26F17F894();
  v111 = 0;
  v87 = 1;
  v52 = KeyPath;
  v51 = v81;
  *&v91[0] = KeyPath;
  BYTE8(v91[0]) = 0;
  *(v91 + 9) = *v109;
  HIDWORD(v91[0]) = *&v109[3];
  v53 = *(&v81 + 1);
  v91[1] = v81;
  v91[4] = v90;
  v91[3] = v89;
  v91[2] = v88;
  LOBYTE(v92) = v50;
  DWORD1(v92) = *(v112 + 3);
  *(&v92 + 1) = v112[0];
  *(&v92 + 1) = v54;
  *&v93[0] = v55;
  *(&v93[0] + 1) = v56;
  *&v93[1] = v57;
  BYTE8(v93[1]) = 0;
  *(&v86[3] + 7) = v89;
  *(&v86[2] + 7) = v88;
  *(&v86[1] + 7) = v81;
  *(v86 + 7) = v91[0];
  v86[7] = *(v93 + 9);
  *(&v86[6] + 7) = v93[0];
  *(&v86[5] + 7) = v92;
  *(&v86[4] + 7) = v90;
  v58 = v82;
  *v82 = 0;
  *(v58 + 8) = 1;
  v59 = v86[0];
  v60 = v86[1];
  v61 = v86[2];
  *(v58 + 57) = v86[3];
  *(v58 + 41) = v61;
  *(v58 + 25) = v60;
  *(v58 + 9) = v59;
  v62 = v86[4];
  v63 = v86[5];
  v64 = v86[6];
  *(v58 + 121) = v86[7];
  *(v58 + 105) = v64;
  *(v58 + 89) = v63;
  *(v58 + 73) = v62;
  v94 = v52;
  v95 = 0;
  *&v96[3] = *&v109[3];
  *v96 = *v109;
  v97 = v51;
  v98 = v53;
  v100 = v89;
  v101 = v90;
  v99 = v88;
  v102 = v50;
  *&v103[3] = *(v112 + 3);
  *v103 = v112[0];
  v104 = v54;
  v105 = v55;
  v106 = v56;
  v107 = v57;
  v108 = 0;
  sub_26F13A854(v91, &v85, &qword_2806D4310, &qword_26F181D58);
  return sub_26F13AB10(&v94, &qword_2806D4310, &qword_26F181D58);
}

double sub_26F13DEB4@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SelectTextView();
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager();
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = a1 + v2[6];
  sub_26F180404();
  *v5 = LOBYTE(v19);
  *(v5 + 1) = v20;
  v6 = a1 + v2[7];
  sub_26F180404();
  *v6 = LOBYTE(v19);
  *(v6 + 1) = v20;
  v7 = (a1 + v2[8]);
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  CGRectGetWidth(v21);
  sub_26F180404();
  *v7 = v19;
  *(v7 + 1) = v20;
  v17 = (a1 + v2[9]);
  sub_26F180404();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  return result;
}

id sub_26F13E0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43A0, &qword_26F181EF0);
  sub_26F17FF24();
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v33 action:sel_handleTapWithSender_];

  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontDescriptorWithDesign_];

  if (v4)
  {
    v5 = [v4 fontDescriptorWithSize_];

    if (v5)
    {
      v6 = [objc_opt_self() fontWithDescriptor:v5 size:54.0];
      v7 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v7 setLineSpacing_];
      [v7 setAlignment_];
      LODWORD(v8) = 1045220557;
      [v7 setHyphenationFactor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43B0, &qword_26F181EF8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26F181B30;
      v10 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v11 = sub_26F13AA48(0, &qword_2806D43B8, 0x277D74300);
      *(inited + 40) = v6;
      v12 = v2;
      v13 = *MEMORY[0x277D74118];
      *(inited + 64) = v11;
      *(inited + 72) = v13;
      v14 = sub_26F13AA48(0, &qword_2806D43C0, 0x277D74240);
      *(inited + 80) = v7;
      v15 = *MEMORY[0x277D740D0];
      *(inited + 104) = v14;
      *(inited + 112) = v15;
      *(inited + 144) = MEMORY[0x277D839F8];
      *(inited + 120) = 0xBFF0000000000000;
      v16 = v10;
      v32 = v6;
      v17 = v13;
      v2 = v12;
      v18 = v7;
      v19 = v15;
      sub_26F151828(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D43C8, &unk_26F181F00);
      swift_arrayDestroy();
      v20 = *(v1 + 88);
      v21 = *(v1 + 96);
      v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v23 = sub_26F180724();
      type metadata accessor for Key(0);
      sub_26F141008(&qword_2806D4040, type metadata accessor for Key);
      v24 = sub_26F1806C4();

      v25 = [v22 initWithString:v23 attributes:v24];

      [*(v1 + 80) setAttributedText_];
    }
  }

  v26 = *(v1 + 80);
  [v26 addGestureRecognizer_];
  v27 = [v26 textContainer];
  [v27 setLineBreakMode_];

  LODWORD(v28) = 1132068864;
  [v26 setContentCompressionResistancePriority:0 forAxis:v28];
  sub_26F13AA48(0, &qword_2806D43A8, 0x277D75348);
  if (qword_2806D3FE0 != -1)
  {
    swift_once();
  }

  v29 = sub_26F1809D4();
  [v26 setTextColor_];

  v30 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor_];

  sub_26F17FF24();
  [v26 setDelegate_];

  [v26 setScrollEnabled_];
  [v26 setEditable_];

  return v26;
}

uint64_t sub_26F13E5F0(void *a1)
{
  v2 = v1;
  v4 = sub_26F180644();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26F180684();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  v14 = sub_26F180724();
  [a1 setText_];

  v27 = *v2;
  v28 = *(v2 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  MEMORY[0x27438A090](aBlock, v15);
  if (LOBYTE(aBlock[0]) == 1)
  {
    [a1 setSelectedTextRange_];
  }

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v16 = sub_26F180984();
  v17 = swift_allocObject();
  v18 = *(v2 + 80);
  *(v17 + 80) = *(v2 + 64);
  *(v17 + 96) = v18;
  v19 = *(v2 + 96);
  v20 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v20;
  v21 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v21;
  *(v17 + 112) = v19;
  *(v17 + 120) = a1;
  aBlock[4] = sub_26F141710;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_71;
  v22 = _Block_copy(aBlock);
  sub_26F140328(v2, &v27);
  v23 = a1;

  sub_26F180664();
  *&v27 = MEMORY[0x277D84F90];
  sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v11, v7, v22);
  _Block_release(v22);

  (*(v26 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v25);
}

uint64_t sub_26F13E984(uint64_t a1, id a2)
{
  [a2 bounds];
  [a2 sizeThatFits_];
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4398, &qword_26F181EE8);
  return sub_26F180484();
}

id sub_26F13EA14()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v19 = *(v0 + 24);
  v20 = *(v0 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
  sub_26F180494();
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = type metadata accessor for UITextViewRepresentable.Coordinator();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected] = 0;
  v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete] = 0;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength] = 0;
  v10 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_text];
  *v11 = v4;
  v11[1] = v3;
  v12 = &v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator__disableInteraction];
  *v12 = v5;
  *(v12 + 1) = v6;
  v12[16] = v7;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_textView] = v2;
  *&v9[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager] = v1;
  v15.receiver = v9;
  v15.super_class = v8;
  v13 = v2;

  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_26F13EB38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_26F180714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected];

    if ((v10 & 1) == 0)
    {
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
        v13 = v11;

        sub_26F180704();
        (*(v5 + 56))(v3, 1, 1, v4);
        sub_26F15BCB8(v8, 1, v3);

        sub_26F13AB10(v3, &qword_2806D4360, &qword_26F181DC0);
        (*(v5 + 8))(v8, v4);
      }

      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = *(v14 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
        v16 = v14;

        v17 = *(v15 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          *(v15 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v19;
        }
      }
    }
  }
}

id sub_26F13EEA0(void *a1)
{
  v2 = v1;
  v4 = sub_26F180644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F180684();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_26F1806A4();
  v54 = *(v58 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v58);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  result = [a1 selectedRange];
  v19 = v18;
  v20 = OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete;
  if (*(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete) == 1)
  {
    v53 = v8;
    v51 = v4;
    v21 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager) + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v21 + 93) = 5;
    v22 = OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength;
    v23 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength);
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v52 = v5;
    v65.location = [a1 selectedRange];
    v25 = (v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange);
    v26 = NSIntersectionRange(v65, *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange));
    result = v26.location;
    if (v24 < v19 && v26.length >= 1)
    {
      v27 = *(v21 + 64);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (!v28)
      {
        *(v21 + 64) = v29;
        sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
        v50 = sub_26F180984();
        sub_26F180694();
        sub_26F1806B4();
        v54 = *(v54 + 8);
        (v54)(v14, v58);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = sub_26F141050;
        v64 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v60 = 1107296256;
        v61 = sub_26F1673F4;
        v62 = &block_descriptor_47;
        v31 = _Block_copy(&aBlock);

        v32 = v55;
        sub_26F180664();
        aBlock = MEMORY[0x277D84F90];
        sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
        sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
        v33 = v56;
        v34 = v51;
        sub_26F180A44();
        v35 = v50;
        MEMORY[0x27438A580](v16, v32, v33, v31);
        _Block_release(v31);

        (*(v52 + 8))(v33, v34);
        (*(v57 + 8))(v32, v53);
        return (v54)(v16, v58);
      }

      goto LABEL_12;
    }

    *(v2 + v22) = v19;
    result = [a1 selectedRange];
    *v25 = result;
    v25[1] = v48;
  }

  else if (v18 >= 1)
  {
    v53 = v8;
    v36 = *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v52 = v5;
    v37 = v36 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    v38 = *(v36 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 56);
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;

    sub_26F15D9C8();
    v39 = *(v37 + 56);
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;

    *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected) = 1;
    *(v2 + v20) = 1;
    *(v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength) = v19;
    v40 = [a1 selectedRange];
    v41 = (v2 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange);
    *v41 = v40;
    v41[1] = v42;
    sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
    v51 = sub_26F180984();
    sub_26F180694();
    sub_26F1806B4();
    v54 = *(v54 + 8);
    (v54)(v14, v58);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = sub_26F140FE8;
    v64 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_26F1673F4;
    v62 = &block_descriptor_0;
    v44 = _Block_copy(&aBlock);

    v45 = v55;
    sub_26F180664();
    aBlock = MEMORY[0x277D84F90];
    sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
    sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
    v46 = v56;
    sub_26F180A44();
    v47 = v51;
    MEMORY[0x27438A580](v16, v45, v46, v44);
    _Block_release(v44);

    (*(v52 + 8))(v46, v4);
    (*(v57 + 8))(v45, v53);
    return (v54)(v16, v58);
  }

  return result;
}

void sub_26F13F60C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v2 = Strong;

    sub_26F15B0EC(1, 1, 0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v5 = v3;

    if (*(v4 + 50))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager);
      sub_26F17F7B4();
    }

    else
    {
      *(v4 + 50) = 0;
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v10 = *(v7 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator__disableInteraction);
    v11 = *(v7 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator__disableInteraction + 8);
    v12 = *(v7 + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator__disableInteraction + 16);
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4320, &qword_26F181D60);
    sub_26F180484();
    v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isWordSelected] = 0;
    v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_isFirstStepComplete] = 0;
    *&v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectionLength] = 0;
    v9 = &v8[OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_firstStepSelectedRange];
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t sub_26F13F85C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_26F180714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtCV9TipsTryIt23UITextViewRepresentable11Coordinator_trainingManager);
    v11 = result;

    sub_26F180704();
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_26F15BCB8(v8, 0, v3);

    sub_26F13AB10(v3, &qword_2806D4360, &qword_26F181DC0);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

id sub_26F13FAB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UITextViewRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F13FBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26F13FC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SelectTextView()
{
  result = qword_2806D41E8;
  if (!qword_2806D41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F13FDA0()
{
  sub_26F13FE74();
  if (v0 <= 0x3F)
  {
    sub_26F13FED8();
    if (v1 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4210);
      if (v2 <= 0x3F)
      {
        sub_26F13FF30(319, &unk_2806D4218);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F13FE74()
{
  if (!qword_2806D41F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4200, &qword_26F181B88);
    v0 = sub_26F17F904();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D41F8);
    }
  }
}

void sub_26F13FED8()
{
  if (!qword_2806D4208)
  {
    type metadata accessor for TrainingManager();
    v0 = sub_26F17F904();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4208);
    }
  }
}

void sub_26F13FF30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26F180444();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26F13FF9C(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_26F13E5F0(a1);
}

id sub_26F13FFF0@<X0>(void *a1@<X8>)
{
  result = sub_26F13EA14();
  *a1 = result;
  return result;
}

uint64_t sub_26F140060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F14163C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26F1400C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F14163C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26F140128()
{
  sub_26F14163C();
  sub_26F17FE24();
  __break(1u);
}

uint64_t sub_26F140150@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F141008(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 52);
  return result;
}

uint64_t sub_26F140250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1402C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4248, &qword_26F181C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F140360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1403C4()
{
  v1 = type metadata accessor for SelectTextView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v5 + v1[5]);

  v11 = *(v5 + v1[6] + 8);

  v12 = *(v5 + v1[7] + 8);

  v13 = *(v5 + v1[8] + 8);

  v14 = *(v5 + v1[9] + 8);

  v15 = *(v0 + v9);

  v16 = *(v0 + v9 + 8);

  v17 = *(v0 + v9 + 24);

  v18 = *(v0 + v9 + 32);

  v19 = *(v0 + v9 + 48);

  v20 = *(v0 + v9 + 56);

  v21 = *(v0 + v9 + 72);

  v22 = *(v0 + v9 + 96);

  return MEMORY[0x2821FE8E8](v0, v9 + 104, v2 | 7);
}

uint64_t sub_26F1405D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F140638()
{
  v1 = *(type metadata accessor for SelectTextView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26F13CEF8(v0 + v2, v3);
}

uint64_t sub_26F1406CC()
{
  v1 = type metadata accessor for SelectTextView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 120) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 72);

  v11 = *(v0 + 88);

  v12 = *(v0 + 112);

  v13 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_26F17FE84();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v0 + v3, 1, v14))
    {
      (*(v15 + 8))(v0 + v3, v14);
    }
  }

  else
  {
    v16 = *v13;
  }

  v17 = *(v13 + v1[5]);

  v18 = *(v13 + v1[6] + 8);

  v19 = *(v13 + v1[7] + 8);

  v20 = *(v13 + v1[8] + 8);

  v21 = *(v13 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_26F1408CC(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SelectTextView() - 8);
  v6 = v2 + ((*(v5 + 80) + 120) & ~*(v5 + 80));

  sub_26F13D374(a1, a2, v2 + 16, v6);
}

unint64_t sub_26F140950()
{
  result = qword_2806D4298;
  if (!qword_2806D4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4290, &qword_26F181CE0);
    sub_26F1409DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4298);
  }

  return result;
}

unint64_t sub_26F1409DC()
{
  result = qword_2806D42A0;
  if (!qword_2806D42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42A8, &qword_26F181CE8);
    sub_26F140A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42A0);
  }

  return result;
}

unint64_t sub_26F140A68()
{
  result = qword_2806D42B0;
  if (!qword_2806D42B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42B8, &qword_26F181CF0);
    sub_26F140AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42B0);
  }

  return result;
}

unint64_t sub_26F140AF4()
{
  result = qword_2806D42C0;
  if (!qword_2806D42C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42C8, &qword_26F181CF8);
    sub_26F140B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42C0);
  }

  return result;
}

unint64_t sub_26F140B80()
{
  result = qword_2806D42D0;
  if (!qword_2806D42D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D42D8, &qword_26F181D00);
    sub_26F140C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42D0);
  }

  return result;
}

unint64_t sub_26F140C0C()
{
  result = qword_2806D42E0;
  if (!qword_2806D42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D42E0);
  }

  return result;
}

uint64_t sub_26F140C60()
{
  v1 = type metadata accessor for SelectTextView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_26F140E18(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SelectTextView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26F13D430(a1, a2, v6);
}

uint64_t sub_26F140EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F140F5C()
{
  result = qword_2806D4330;
  if (!qword_2806D4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4330);
  }

  return result;
}

uint64_t sub_26F140FB0()
{
  MEMORY[0x27438AE00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F141008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F141080()
{
  v0 = sub_26F180644();
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F180684();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F1806A4();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  v20 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v21 = *(v9 + 8);
  v21(v13, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_26F141458;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_55;
  v17 = _Block_copy(aBlock);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F141008(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  v18 = v20;
  MEMORY[0x27438A580](v15, v7, v3, v17);
  _Block_release(v17);

  (*(v25 + 8))(v3, v0);
  (*(v23 + 8))(v7, v24);
  return (v21)(v15, v22);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26F141494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_26F1414DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F141548()
{
  result = qword_2806D4368;
  if (!qword_2806D4368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4240, &qword_26F181C70);
    sub_26F13AC54(&qword_2806D4370, &qword_2806D4378, &qword_26F181DF8);
    sub_26F13AC54(&qword_2806D4380, &qword_2806D4388, &qword_26F181E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4368);
  }

  return result;
}

unint64_t sub_26F14163C()
{
  result = qword_2806D4390;
  if (!qword_2806D4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4390);
  }

  return result;
}

uint64_t sub_26F141690()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  v8 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26F14174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F141820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26F180714();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LocationItemView()
{
  result = qword_2806D4490;
  if (!qword_2806D4490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F141928()
{
  result = sub_26F180714();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F1419B8@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_26F17FD34();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_26F1803C4();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44A0, &qword_26F181F88);
  v9 = *(*(v52 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v51 = &v45[-v13];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44A8, &qword_26F181F90);
  v14 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v16 = &v45[-v15];
  v49 = sub_26F17FD74();
  v59 = 1;
  sub_26F141FB0(v1, v57);
  memcpy(v61, v57, 0x119uLL);
  memcpy(v62, v57, 0x119uLL);
  sub_26F13A854(v61, v56, &qword_2806D44B0, &qword_26F181F98);
  sub_26F13AB10(v62, &qword_2806D44B0, &qword_26F181F98);
  memcpy(&v58[7], v61, 0x119uLL);
  v46 = v59;
  sub_26F180564();
  sub_26F17FB44();
  *&v60[55] = v57[3];
  *&v60[71] = v57[4];
  *&v60[87] = v57[5];
  *&v60[103] = v57[6];
  *&v60[7] = v57[0];
  *&v60[23] = v57[1];
  *&v60[39] = v57[2];
  v17 = (v1 + *(type metadata accessor for LocationItemView() + 20));
  v19 = *v17;
  v18 = v17[1];
  sub_26F1427C4();

  if (!sub_26F1809E4())
  {
    v20 = [objc_opt_self() mainBundle];
  }

  sub_26F1803F4();
  v21 = v50;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v50);
  v22 = sub_26F1803E4();

  (*(v5 + 8))(v8, v21);
  v56[0] = v22;
  v23 = v47;
  sub_26F17FD24();
  sub_26F1802E4();
  (*(v53 + 8))(v23, v54);

  v24 = v51;
  sub_26F17FA94();
  sub_26F13AB10(v12, &qword_2806D44A0, &qword_26F181F88);
  v25 = sub_26F180564();
  v27 = v26;
  v28 = &v16[*(v48 + 36)];
  sub_26F142810(v24, v28, &qword_2806D44A0, &qword_26F181F88);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44B8, &qword_26F181FA0) + 36));
  *v29 = v25;
  v29[1] = v27;
  *v16 = v49;
  *(v16 + 1) = 0;
  v16[16] = v46;
  memcpy(v16 + 17, v58, 0x120uLL);
  v30 = *&v60[80];
  *(v16 + 369) = *&v60[64];
  *(v16 + 385) = v30;
  *(v16 + 401) = *&v60[96];
  *(v16 + 52) = *&v60[111];
  v31 = *&v60[16];
  *(v16 + 305) = *v60;
  *(v16 + 321) = v31;
  v32 = *&v60[48];
  *(v16 + 337) = *&v60[32];
  *(v16 + 353) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C0, &qword_26F181FA8);
  v34 = v55;
  v35 = (v55 + *(v33 + 36));
  v36 = *(sub_26F17FB14() + 20);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_26F17FD14();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #16.0 }

  *v35 = _Q0;
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  return sub_26F142810(v16, v34, &qword_2806D44A8, &qword_26F181F90);
}

uint64_t sub_26F141FB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v68 - v5;
  v75 = sub_26F17F6C4();
  v73 = *(v75 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v74 = sub_26F17F7A4();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v74);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  v14 = sub_26F180714();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = sub_26F17F6D4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v70 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v15;
  v25 = *(v15 + 16);
  v25(v21, a1, v14);
  sub_26F1427C4();
  v26 = sub_26F1809E4();
  if (!v26)
  {
    v26 = [objc_opt_self() mainBundle];
  }

  v27 = v26;
  sub_26F17F794();
  v68 = v21;
  v25(v19, v21, v14);
  v28 = v74;
  (*(v8 + 16))(v69, v13, v74);
  v29 = [v27 bundleURL];
  v30 = v72;
  sub_26F17F714();

  (*(v73 + 104))(v30, *MEMORY[0x277CC9118], v75);
  sub_26F17F6E4();

  (*(v8 + 8))(v13, v28);
  (*(v71 + 8))(v68, v14);
  v31 = sub_26F1801A4();
  v33 = v32;
  v35 = v34;
  v36 = sub_26F1800A4();
  v37 = v76;
  (*(*(v36 - 8) + 56))(v76, 1, 1, v36);
  sub_26F1800D4();
  sub_26F13AB10(v37, &qword_2806D44D0, &qword_26F181FB8);
  sub_26F1800B4();
  sub_26F1800E4();

  v38 = sub_26F180184();
  v40 = v39;
  v42 = v41;

  sub_26F142878(v31, v33, v35 & 1);

  sub_26F180364();
  v43 = sub_26F180174();
  v75 = v44;
  v76 = v43;
  v45 = v44;
  LOBYTE(v37) = v46;
  v48 = v47;

  sub_26F142878(v38, v40, v42 & 1);

  sub_26F180534();
  sub_26F17FB44();
  LOBYTE(v40) = v37 & 1;
  v118 = v37 & 1;
  sub_26F180344();
  v49 = sub_26F180374();

  LOBYTE(v38) = sub_26F180024();
  sub_26F17F894();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v119 = 0;
  LOBYTE(v31) = sub_26F180004();
  sub_26F17F894();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v121 = 0;
  *&v86[0] = v43;
  *(&v86[0] + 1) = v45;
  LOBYTE(v86[1]) = v40;
  *(&v86[1] + 1) = *v117;
  DWORD1(v86[1]) = *&v117[3];
  v86[2] = v79;
  v86[3] = v80;
  v86[7] = v84;
  v86[8] = v85;
  v86[5] = v82;
  v86[6] = v83;
  v86[4] = v81;
  *(&v86[1] + 1) = v48;
  *&v86[9] = v49;
  v74 = xmmword_26F181F10;
  *(&v86[9] + 8) = xmmword_26F181F10;
  *(&v86[10] + 1) = 0x4000000000000000;
  LOBYTE(v86[11]) = v38;
  DWORD1(v86[11]) = *&v120[3];
  *(&v86[11] + 1) = *v120;
  *(&v86[11] + 1) = v51;
  *&v86[12] = v53;
  *(&v86[12] + 1) = v55;
  *&v86[13] = v57;
  BYTE8(v86[13]) = 0;
  HIDWORD(v86[13]) = *(v123 + 3);
  *(&v86[13] + 9) = v123[0];
  LOBYTE(v86[14]) = v31;
  DWORD1(v86[14]) = *&v122[3];
  *(&v86[14] + 1) = *v122;
  *(&v86[14] + 1) = v58;
  *&v86[15] = v60;
  *(&v86[15] + 1) = v62;
  *&v86[16] = v64;
  BYTE8(v86[16]) = 0;
  memcpy(v87, v86, 0x109uLL);
  v78[272] = 1;
  v66 = v77;
  memcpy(v77, v87, 0x110uLL);
  v66[34] = 0;
  *(v66 + 280) = 1;
  v88[0] = v76;
  v88[1] = v75;
  v89 = v40;
  *v90 = *v117;
  *&v90[3] = *&v117[3];
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v95 = v82;
  v91 = v48;
  v99 = v49;
  v100 = v74;
  v101 = 0x4000000000000000;
  v102 = v38;
  *&v103[3] = *&v120[3];
  *v103 = *v120;
  v104 = v51;
  v105 = v53;
  v106 = v55;
  v107 = v57;
  v108 = 0;
  *&v109[3] = *(v123 + 3);
  *v109 = v123[0];
  v110 = v31;
  *v111 = *v122;
  *&v111[3] = *&v122[3];
  v112 = v59;
  v113 = v61;
  v114 = v63;
  v115 = v65;
  v116 = 0;
  sub_26F13A854(v86, v78, &qword_2806D44D8, &qword_26F181FC0);
  return sub_26F13AB10(v88, &qword_2806D44D8, &qword_26F181FC0);
}

unint64_t sub_26F1427C4()
{
  result = qword_2806D4088;
  if (!qword_2806D4088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4088);
  }

  return result;
}

uint64_t sub_26F142810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26F142878(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26F14288C()
{
  result = qword_2806D44E0;
  if (!qword_2806D44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44C0, &qword_26F181FA8);
    sub_26F142944();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44E0);
  }

  return result;
}

unint64_t sub_26F142944()
{
  result = qword_2806D44E8;
  if (!qword_2806D44E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44A8, &qword_26F181F90);
    sub_26F1429FC();
    sub_26F13AC54(&qword_2806D4510, &qword_2806D44B8, &qword_26F181FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44E8);
  }

  return result;
}

unint64_t sub_26F1429FC()
{
  result = qword_2806D44F0;
  if (!qword_2806D44F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D44F8, &qword_26F181FC8);
    sub_26F13AC54(&qword_2806D4500, &qword_2806D4508, &unk_26F181FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D44F0);
  }

  return result;
}

uint64_t sub_26F142AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26F142BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TapView()
{
  result = qword_2806D4520;
  if (!qword_2806D4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F142CC8()
{
  sub_26F13FE74();
  if (v0 <= 0x3F)
  {
    sub_26F13FED8();
    if (v1 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4530);
      if (v2 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210);
        if (v3 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4538);
          if (v4 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218);
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

uint64_t sub_26F142E20()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for TapView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F142F70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_26F142E20();
  swift_getKeyPath();
  v19 = v8;
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v9 = *(v8 + 48);

  if ((v9 & 1) == 0)
  {
    v11 = (v2 + *(type metadata accessor for TapView() + 24));
    v13 = *v11;
    v12 = v11[1];
    v19 = *v11;
    v20 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
    result = sub_26F180414();
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      v18[1] = v13;
      v18[2] = v12;
      v18[0] = v21 + 1;
      sub_26F180424();

      result = sub_26F142E20();
      v14 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (!v15)
      {
        *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v16;

        sub_26F142E20();
        v17 = sub_26F180714();
        (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
        sub_26F15BCB8(a1, 1, v7);

        return sub_26F13AB10(v7, &qword_2806D4360, &qword_26F181DC0);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F1431A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4540, &qword_26F182068);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-v6];
  v19 = a2;
  v20 = a1;
  sub_26F17FFF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4548, &qword_26F182070);
  sub_26F13AC54(&qword_2806D4550, &qword_2806D4548, &qword_26F182070);
  sub_26F17F8A4();
  v8 = type metadata accessor for TapView();
  v9 = (a2 + v8[12]);
  v10 = *v9;
  v11 = v9[1];
  *&v22 = v10;
  *(&v22 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v12 = v21;
  v13 = &v7[*(v4 + 36)];
  *v13 = 0;
  v13[1] = v12;
  v22 = *(a2 + v8[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v21 >= 4)
  {
    v14 = (a2 + v8[8]);
    v15 = *v14;
    v16 = *(v14 + 1);
    LOBYTE(v22) = v15;
    *(&v22 + 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180414();
  }

  sub_26F1492A0();
  sub_26F180274();
  return sub_26F13AB10(v7, &qword_2806D4540, &qword_26F182068);
}

uint64_t sub_26F1433C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_26F17FD74();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4578, &qword_26F182088);
  return sub_26F143428(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_26F143428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v70 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4580, &qword_26F182090);
  v66 = *(v68 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v60 = (&v60 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4588, &qword_26F182098);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v60 - v10;
  v61 = sub_26F17FAC4();
  v11 = *(v61 - 8);
  v62 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TapView();
  v14 = *(v63 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4590, &qword_26F1820A0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v65 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  *v23 = sub_26F180564();
  *(v23 + 1) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4598, &qword_26F1820A8);
  sub_26F143AB0(a1, &v23[*(v25 + 44)]);
  v26 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45A0, &qword_26F1820B0) + 52)];
  *v26 = 0x7267206F746F6870;
  *(v26 + 1) = 0xEA00000000006469;
  sub_26F1491B0(a1, v16);
  v27 = v61;
  (*(v11 + 16))(v13, v64, v61);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = (v15 + *(v11 + 80) + v28) & ~*(v11 + 80);
  v30 = swift_allocObject();
  sub_26F1499C8(v16, v30 + v28, type metadata accessor for TapView);
  (*(v11 + 32))(v30 + v29, v13, v27);
  v31 = sub_26F180564();
  v32 = &v23[*(v18 + 44)];
  *v32 = sub_26F149358;
  v32[1] = v30;
  v33 = v63;
  v32[2] = v31;
  v32[3] = v34;
  v72 = *(a1 + v33[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  if (v71 < 4 || (v35 = a1 + v33[8], v36 = *v35, v37 = *(v35 + 8), LOBYTE(v72) = v36, *(&v72 + 1) = v37, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50), sub_26F180414(), (v71 & 1) != 0))
  {
    v38 = 1;
    v40 = v67;
    v39 = v68;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v42 = v60;
    *v60 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
    swift_storeEnumTagMultiPayload();
    v43 = v42 + *(type metadata accessor for HapticTouchButtonView() + 20);
    type metadata accessor for TrainingManager();
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
    *v43 = sub_26F17F914();
    *(v43 + 8) = v44 & 1;
    v45 = sub_26F180034();
    v46 = (a1 + v33[12]);
    v47 = *v46;
    v48 = v46[1];
    *&v72 = v47;
    *(&v72 + 1) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180414();
    sub_26F17F894();
    v40 = v67;
    v49 = v68;
    v50 = v42 + *(v68 + 36);
    *v50 = v45;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    sub_26F142810(v42, v40, &qword_2806D4580, &qword_26F182090);
    v39 = v49;
    v38 = 0;
  }

  (*(v66 + 56))(v40, v38, 1, v39);
  v55 = v65;
  sub_26F13A854(v23, v65, &qword_2806D4590, &qword_26F1820A0);
  v56 = v69;
  sub_26F13A854(v40, v69, &qword_2806D4588, &qword_26F182098);
  v57 = v70;
  sub_26F13A854(v55, v70, &qword_2806D4590, &qword_26F1820A0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45A8, &qword_26F1820B8);
  sub_26F13A854(v56, v57 + *(v58 + 48), &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v40, &qword_2806D4588, &qword_26F182098);
  sub_26F13AB10(v23, &qword_2806D4590, &qword_26F1820A0);
  sub_26F13AB10(v56, &qword_2806D4588, &qword_26F182098);
  return sub_26F13AB10(v55, &qword_2806D4590, &qword_26F1820A0);
}

uint64_t sub_26F143AB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v129 = a2;
  v123 = sub_26F17FE74();
  v3 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_26F1804F4();
  v115 = *(v118 - 8);
  v5 = *(v115 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26F180504();
  v119 = *(v7 - 8);
  v120 = v7 - 8;
  v116 = v7;
  v117 = v119;
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v7);
  v113 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A0, &qword_26F182220);
  v11 = *(v10 - 8);
  v127 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v128 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v132 = &v100 - v15;
  v16 = sub_26F17FAE4();
  v17 = *(v16 - 8);
  v107 = v16;
  v108 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v102 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v21 = *(v20 - 8);
  v111 = v20;
  v112 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v103 = &v100 - v23;
  v24 = type metadata accessor for TapView();
  v25 = *(v24 - 8);
  v121 = v24 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B0, &qword_26F182230);
  v28 = *(v27 - 8);
  v104 = v27;
  v105 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v130 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46B8, &qword_26F182238);
  v125 = *(v31 - 8);
  v126 = v31;
  v32 = *(v125 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v124 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v133 = &v100 - v35;
  v36 = sub_26F180354();
  sub_26F180564();
  sub_26F17FB44();
  *(&v139[6] + 5) = *&v139[21];
  *(&v139[8] + 5) = *&v139[23];
  *(&v139[10] + 5) = *&v139[25];
  *(&v139[12] + 5) = v140;
  *(v139 + 5) = *&v139[15];
  *(&v139[2] + 5) = *&v139[17];
  *(&v139[4] + 5) = *&v139[19];
  *(&v138[4] + 11) = *&v139[8];
  *(&v138[5] + 11) = *&v139[10];
  *(&v138[6] + 11) = *&v139[12];
  *(v138 + 11) = *v139;
  *(&v138[1] + 11) = *&v139[2];
  *(&v138[2] + 11) = *&v139[4];
  *&v138[0] = v36;
  WORD4(v138[0]) = 256;
  BYTE10(v138[0]) = 0;
  *(&v138[7] + 1) = *(&v140 + 1);
  *(&v138[3] + 11) = *&v139[6];
  v101 = a1;
  v131 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1491B0(a1, v131);
  v37 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v109 = *(v25 + 80);
  v110 = v26;
  v38 = swift_allocObject();
  v100 = type metadata accessor for TapView;
  sub_26F1499C8(&v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37, type metadata accessor for TapView);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46C0, &qword_26F182240);
  v40 = sub_26F14AAE8();
  sub_26F180254();

  v141[4] = v138[4];
  v141[5] = v138[5];
  v141[6] = v138[6];
  v141[7] = v138[7];
  v141[0] = v138[0];
  v141[1] = v138[1];
  v141[2] = v138[2];
  v141[3] = v138[3];
  sub_26F13AB10(v141, &qword_2806D46C0, &qword_26F182240);
  v41 = v102;
  sub_26F17FAD4();
  v42 = v131;
  sub_26F1491B0(a1, v131);
  v106 = v37;
  v43 = swift_allocObject() + v37;
  v44 = v100;
  sub_26F1499C8(v42, v43, v100);
  sub_26F14B314(&qword_2806D4700, MEMORY[0x277CDDAD8]);
  v45 = v103;
  v46 = v107;
  sub_26F1804C4();

  (*(v108 + 8))(v41, v46);
  sub_26F17F924();
  *&v138[0] = v39;
  *(&v138[0] + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
  v47 = v104;
  v48 = v111;
  v49 = v130;
  sub_26F1802C4();
  (*(v112 + 8))(v45, v48);
  (*(v105 + 8))(v49, v47);
  v51 = v114;
  v50 = v115;
  *v114 = xmmword_26F181FE0;
  (*(v50 + 104))(v51, *MEMORY[0x277CDF108], v118);
  v52 = v113;
  sub_26F180514();
  v53 = v116;
  v54 = sub_26F180894();
  *(v54 + 16) = 3;
  v55 = v117;
  v56 = v54 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
  v57 = *(v117 + 16);
  v57(v56, v52, v53);
  v58 = *(v119 + 72);
  v57(v56 + v58, v52, v53);
  (*(v55 + 32))(v56 + 2 * v58, v52, v53);
  sub_26F17FD74();
  v59 = v101;
  v134 = v101;
  LODWORD(v138[0]) = 0;
  sub_26F14B314(&qword_2806D4710, MEMORY[0x277CE0428]);
  sub_26F180BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4718, &qword_26F182260);
  sub_26F14AC78();
  v60 = v132;
  sub_26F180614();
  sub_26F180564();
  sub_26F17FB44();
  v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47B0, &qword_26F1822A8) + 36));
  v62 = v60;
  v63 = v138[5];
  v64 = v138[6];
  v61[4] = v138[4];
  v61[5] = v63;
  v61[6] = v64;
  v65 = v138[1];
  *v61 = v138[0];
  v61[1] = v65;
  v66 = v138[3];
  v61[2] = v138[2];
  v61[3] = v66;
  LOBYTE(v56) = sub_26F180004();
  sub_26F17F894();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47B8, &qword_26F1822B0) + 36);
  *v75 = v56;
  *(v75 + 8) = v68;
  *(v75 + 16) = v70;
  *(v75 + 24) = v72;
  *(v75 + 32) = v74;
  *(v75 + 40) = 0;
  v76 = (v59 + *(v121 + 44));
  v77 = *v76;
  v78 = v76[1];
  v136 = v77;
  v137 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  v79 = v135;
  v80 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47C0, &qword_26F1822B8) + 36));
  *v80 = v79;
  v80[1] = 0;
  v81 = v131;
  sub_26F1491B0(v59, v131);
  v82 = v106;
  v83 = swift_allocObject();
  sub_26F1499C8(v81, v83 + v82, v44);
  v84 = sub_26F180564();
  v86 = v85;
  v87 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47C8, &qword_26F1822C0) + 36));
  *v87 = sub_26F150C28;
  v87[1] = 0;
  v87[2] = v84;
  v87[3] = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_26F14B25C;
  *(v88 + 24) = v83;
  v89 = v126;
  v90 = (v60 + *(v127 + 44));
  *v90 = sub_26F14B30C;
  v90[1] = v88;
  v92 = v124;
  v91 = v125;
  v93 = *(v125 + 16);
  v93(v124, v133, v89);
  v94 = v62;
  v95 = v128;
  sub_26F13A854(v94, v128, &qword_2806D46A0, &qword_26F182220);
  v96 = v129;
  v93(v129, v92, v89);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D0, &unk_26F1822C8);
  sub_26F13A854(v95, &v96[*(v97 + 48)], &qword_2806D46A0, &qword_26F182220);
  sub_26F13AB10(v132, &qword_2806D46A0, &qword_26F182220);
  v98 = *(v91 + 8);
  v98(v133, v89);
  sub_26F13AB10(v95, &qword_2806D46A0, &qword_26F182220);
  return (v98)(v92, v89);
}

uint64_t sub_26F1447D0()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F1448B4()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F144998(uint64_t a1)
{
  v2 = type metadata accessor for TapView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8 = xmmword_26F181FF0;
  swift_getKeyPath();
  sub_26F1491B0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F1499C8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TapView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47D8, &qword_26F1822F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4730, &qword_26F182268);
  sub_26F14B3DC();
  sub_26F14ACFC();
  return sub_26F1804B4();
}

uint64_t sub_26F144B30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v105 = a3;
  v102 = sub_26F17FAE4();
  v100 = *(v102 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v103 = *(v104 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v92 - v8;
  v9 = sub_26F17FCF4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v123 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_26F17F6C4();
  v119 = *(v122 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_26F17F7A4();
  v118 = *(v121 - 8);
  v14 = *(v118 + 64);
  v15 = MEMORY[0x28223BE20](v121);
  v114 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v92 - v17;
  v116 = sub_26F180714();
  v113 = *(v116 - 8);
  v18 = *(v113 + 64);
  v19 = MEMORY[0x28223BE20](v116);
  v111 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v92 - v21;
  v22 = sub_26F17F6D4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v112 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TapView();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4748, &qword_26F182278);
  v29 = *(*(v129 - 1) + 64);
  MEMORY[0x28223BE20](v129);
  v31 = &v92 - v30;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47F0, &qword_26F1822F8);
  v109 = *(v110 - 8);
  v32 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v128 = &v92 - v33;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4738, &qword_26F182270);
  v34 = *(*(v125 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v125);
  v115 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v95 = &v92 - v37;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D47F8, &qword_26F182300);
  v97 = *(v98 - 8);
  v38 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v92 - v39;
  v130 = *a1;
  strcpy(v136, "TapTouchGrid");
  BYTE13(v136[0]) = 0;
  HIWORD(v136[0]) = -5120;
  v133 = v130;
  v40 = sub_26F180B34();
  MEMORY[0x27438A3F0](v40);

  v107 = *(&v136[0] + 1);
  v124 = *&v136[0];
  KeyPath = swift_getKeyPath();
  sub_26F1491B0(a2, v28);
  v41 = *(v26 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = v42 + v27;
  v44 = swift_allocObject();
  v108 = type metadata accessor for TapView;
  sub_26F1499C8(v28, v44 + v42, type metadata accessor for TapView);
  v135 = 0;
  sub_26F180564();
  sub_26F17FB44();
  v45 = v135;
  LOBYTE(v133) = 0;
  v46 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4760, &qword_26F182280) + 36)];
  v47 = *(sub_26F17FB14() + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_26F17FD14();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #18.0 }

  *v46 = _Q0;
  *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  *v31 = KeyPath;
  v31[8] = v45;
  v55 = v107;
  *(v31 + 2) = v124;
  *(v31 + 3) = v55;
  *(v31 + 4) = sub_26F14B4BC;
  *(v31 + 5) = v44;
  *(v31 + 6) = 0;
  *(v31 + 7) = 0;
  v56 = v136[5];
  *(v31 + 8) = v136[4];
  *(v31 + 9) = v56;
  *(v31 + 10) = v136[6];
  v57 = v136[1];
  *(v31 + 4) = v136[0];
  *(v31 + 5) = v57;
  v58 = v136[3];
  *(v31 + 6) = v136[2];
  *(v31 + 7) = v58;
  *(v31 + 22) = 0x3FF0000000000000;
  *(v31 + 92) = 256;
  v59 = swift_getKeyPath();
  v60 = &v31[*(v129 + 9)];
  *v60 = v59;
  v60[8] = 1;
  sub_26F1491B0(v126, v28);
  v94 = v43;
  v124 = v41;
  v61 = swift_allocObject();
  v107 = v42;
  KeyPath = v28;
  sub_26F1499C8(v28, v61 + v42, v108);
  v93 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v61 + v93) = v130;
  v108 = sub_26F14AF48();
  sub_26F180254();

  sub_26F13AB10(v31, &qword_2806D4748, &qword_26F182278);
  v62 = v127;
  sub_26F180704();
  sub_26F1427C4();
  v63 = sub_26F1809E4();
  if (!v63)
  {
    v63 = [objc_opt_self() mainBundle];
  }

  v64 = v63;
  v65 = v117;
  sub_26F17F794();
  v66 = v113;
  v67 = v116;
  (*(v113 + 16))(v111, v62, v116);
  v68 = v118;
  v69 = v121;
  (*(v118 + 16))(v114, v65, v121);
  v70 = [v64 bundleURL];
  v71 = v120;
  sub_26F17F714();

  (*(v119 + 104))(v71, *MEMORY[0x277CC9118], v122);
  sub_26F17F6E4();

  (*(v68 + 8))(v65, v69);
  (*(v66 + 8))(v127, v67);
  v133 = sub_26F180774();
  v134 = v72;
  v131 = v129;
  v132 = v108;
  swift_getOpaqueTypeConformance2();
  sub_26F140F5C();
  v73 = v115;
  v74 = v110;
  v75 = v128;
  sub_26F180294();

  (*(v109 + 8))(v75, v74);
  sub_26F17FCE4();
  result = sub_26F17FCD4();
  if (__OFADD__(v130, 1))
  {
    __break(1u);
  }

  else
  {
    v133 = v130 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    v77 = v95;
    sub_26F17FA84();

    sub_26F13AB10(v73, &qword_2806D4738, &qword_26F182270);
    v78 = v99;
    sub_26F17FAD4();
    v79 = v126;
    v80 = KeyPath;
    sub_26F1491B0(v126, KeyPath);
    v81 = swift_allocObject();
    v129 = type metadata accessor for TapView;
    v82 = v107;
    sub_26F1499C8(v80, v81 + v107, type metadata accessor for TapView);
    sub_26F14B314(&qword_2806D4700, MEMORY[0x277CDDAD8]);
    v83 = v101;
    v84 = v102;
    sub_26F1804C4();

    (*(v100 + 8))(v78, v84);
    sub_26F17F924();
    sub_26F14AE50();
    sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
    v85 = v96;
    v86 = v104;
    sub_26F1802C4();
    (*(v103 + 8))(v83, v86);
    sub_26F13AB10(v77, &qword_2806D4738, &qword_26F182270);
    v87 = sub_26F180454();
    sub_26F1491B0(v79, v80);
    v88 = v93;
    v89 = swift_allocObject();
    sub_26F1499C8(v80, v89 + v82, v129);
    *(v89 + v88) = v130;
    v90 = v105;
    (*(v97 + 32))(v105, v85, v98);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4730, &qword_26F182268);
    v91 = (v90 + *(result + 36));
    *v91 = v87;
    v91[1] = sub_26F14BA50;
    v91[2] = v89;
  }

  return result;
}

uint64_t sub_26F145A88(uint64_t a1)
{
  v2 = sub_26F17FC84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for TapView() + 20));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_26F180944();
    v10 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v12[1];
  }

  *(v8 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 0;
}

uint64_t sub_26F145BF4(uint64_t a1)
{
  v2 = type metadata accessor for TapView();
  v11 = *(a1 + *(v2 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180424();
  result = sub_26F142E20();
  v4 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v6;

    v7 = (a1 + *(v2 + 32));
    v12 = *v7;
    v13 = *(v7 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
    *(sub_26F142E20() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 88) = 1;

    v8 = sub_26F142E20() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    v9 = *(v8 + 56);
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;

    sub_26F15D9C8();
    v10 = *(v8 + 56);
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
  }

  return result;
}

uint64_t sub_26F145D2C()
{
  v0 = sub_26F180714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F142F70(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26F145E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TapView();
  v9 = (a2 + *(v8 + 32));
  v15 = *v9;
  v16 = *(v9 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v14 == 1 && (v11 = (a2 + *(v8 + 28)), v12 = *v11, v13 = v11[1], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078), result = sub_26F180414(), v14 == a3) && (result = sub_26F180414(), (v14 & 0x8000000000000000) == 0) && (result = sub_26F180414(), v14 <= 8))
  {
  }

  else
  {
    a1 = 0;
  }

  *a4 = a1;
  return result;
}

uint64_t sub_26F145F3C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v40 = a1;
  sub_26F14E9B4(&v38 - v21);
  (*(v6 + 104))(v20, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v23 = *(v10 + 56);
  sub_26F13A854(v22, v13, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v20, &v13[v23], &qword_2806D4200, &qword_26F181B88);
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) == 1)
  {
    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) == 1)
    {
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v40;
LABEL_8:
      v26 = *(v25 + *(type metadata accessor for TapView() + 56)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v13, v39, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) != 1)
    {
      v27 = &v13[v23];
      v28 = v38;
      (*(v6 + 32))(v38, v27, v5);
      sub_26F14B314(&qword_2806D4318, MEMORY[0x277CE0570]);
      v29 = v39;
      v30 = sub_26F1806F4();
      v31 = *(v6 + 8);
      v31(v28, v5);
      sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
      v31(v29, v5);
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v40;
      if ((v30 & 1) == 0)
      {
        v26 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v39, v5);
  }

  sub_26F13AB10(v13, &qword_2806D4308, &qword_26F182E30);
  v26 = 373.0;
  v25 = v40;
LABEL_10:
  v32 = v26 + a3 * -0.5;
  v33 = (v25 + *(type metadata accessor for TapView() + 48));
  v34 = *v33;
  v35 = v33[1];
  v41 = v32;
  v42 = v34;
  v43 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180424();
  v36 = sub_26F142E20();
  v42 = v34;
  v43 = v35;
  sub_26F180414();
  *(v36 + 64) = v41;
}

uint64_t sub_26F146460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v23 = a3;
  v7 = sub_26F17FAC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TapView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (v15)
  {
    sub_26F1491B0(a2, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v8 + 80) + v17 + 8) & ~*(v8 + 80);
    v19 = swift_allocObject();
    sub_26F1499C8(v14, v19 + v16, type metadata accessor for TapView);
    *(v19 + v17) = v15;
    (*(v8 + 32))(v19 + v18, v10, v7);
    v20 = sub_26F1498CC;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  *a4 = v20;
  a4[1] = v19;
}

uint64_t sub_26F14667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v140 = a3;
  v161 = a1;
  v117 = a5;
  v6 = sub_26F17FCF4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v160 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_26F17F6C4();
  v154 = *(v157 - 8);
  v9 = *(v154 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_26F17F7A4();
  v156 = *(v158 - 8);
  v11 = *(v156 + 64);
  v12 = MEMORY[0x28223BE20](v158);
  v150 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v152 = &v115 - v14;
  v153 = sub_26F180714();
  v151 = *(v153 - 8);
  v15 = *(v151 + 64);
  v16 = MEMORY[0x28223BE20](v153);
  v148 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v166 = &v115 - v18;
  v19 = sub_26F17F6D4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v149 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_26F17FAC4();
  v138 = *(v139 - 8);
  v22 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = v23;
  v129 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TapView();
  v134 = *(v24 - 8);
  v25 = *(v134 + 64);
  MEMORY[0x28223BE20](v24);
  v135 = v26;
  v141 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26F17FB14();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v123 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45B0, &qword_26F1820F0);
  v30 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v32 = &v115 - v31;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45B8, &qword_26F1820F8);
  v33 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v125 = &v115 - v34;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45C0, &qword_26F182100);
  v35 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v115 - v36;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45C8, &qword_26F182108);
  v37 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v132 = &v115 - v38;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45D0, &qword_26F182110);
  v39 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v133 = &v115 - v40;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45D8, &qword_26F182118);
  v41 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v136 = &v115 - v42;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45E0, &qword_26F182120);
  v43 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v163 = &v115 - v44;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45E8, &qword_26F182128);
  v45 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v147 = &v115 - v46;
  strcpy(v168, "TapTouchGrid");
  BYTE13(v168[0]) = 0;
  HIWORD(v168[0]) = -5120;
  v47 = (a2 + *(v24 + 28));
  v49 = *v47;
  v48 = v47[1];
  v146 = v49;
  v167.origin.x = v49;
  v145 = v48;
  v167.origin.y = v48;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4558, &qword_26F182078);
  sub_26F180414();
  v50 = sub_26F180B34();
  MEMORY[0x27438A3F0](v50);

  v120 = *(&v168[0] + 1);
  v121 = *&v168[0];
  KeyPath = swift_getKeyPath();
  v143 = v24;
  v51 = a2 + *(v24 + 44);
  v53 = *(v51 + 8);
  LOBYTE(v168[0]) = *v51;
  v52 = LOBYTE(v168[0]);
  *(v168 + 1) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  v165 = v52;
  LOBYTE(v168[0]) = v52;
  *(v168 + 1) = v53;
  v164 = v54;
  sub_26F180414();
  sub_26F180564();
  v159 = v53;
  sub_26F17FB44();
  v170 = 0;
  v55 = v165;
  LOBYTE(v167.origin.x) = v165;
  v167.origin.y = v53;
  sub_26F180414();
  v56 = v169;
  v57 = *(v27 + 20);
  v58 = *MEMORY[0x277CE0118];
  v59 = sub_26F17FD14();
  v60 = v123;
  (*(*(v59 - 8) + 104))(v123 + v57, v58, v59);
  v61 = 18.0;
  if (v56)
  {
    v61 = 0.0;
  }

  *v60 = v61;
  v60[1] = v61;
  v62 = &v32[*(v122 + 36)];
  sub_26F1499C8(v60, v62, MEMORY[0x277CDFC08]);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)) = 256;
  v63 = v168[2];
  *(v32 + 88) = v168[3];
  v64 = v168[5];
  *(v32 + 104) = v168[4];
  *(v32 + 120) = v64;
  *(v32 + 136) = v168[6];
  v65 = v168[1];
  *(v32 + 40) = v168[0];
  *(v32 + 56) = v65;
  *v32 = KeyPath;
  v32[8] = 0;
  v66 = v120;
  *(v32 + 2) = v121;
  *(v32 + 3) = v66;
  *(v32 + 4) = 0x3FF0000000000000;
  *(v32 + 72) = v63;
  v67 = swift_getKeyPath();
  v68 = v32;
  v69 = v125;
  sub_26F142810(v68, v125, &qword_2806D45B0, &qword_26F1820F0);
  v70 = v69 + *(v124 + 36);
  *v70 = v67;
  *(v70 + 8) = 1;
  LOBYTE(v167.origin.x) = v55;
  v167.origin.y = v53;
  sub_26F180414();
  if (v169)
  {
    sub_26F17F9C4();
    MidX = v71 * 0.5;
  }

  else
  {
    type metadata accessor for CGRect(0);
    sub_26F17F9F4();
    MidX = CGRectGetMidX(v167);
  }

  LOBYTE(v167.origin.x) = v165;
  v167.origin.y = v53;
  sub_26F180414();
  if (v169 == 1)
  {
    sub_26F17F9C4();
    MidY = v73 * 0.5;
  }

  else
  {
    type metadata accessor for CGRect(0);
    sub_26F17F9F4();
    MidY = CGRectGetMidY(v167);
  }

  v75 = v127;
  sub_26F142810(v69, v127, &qword_2806D45B8, &qword_26F1820F8);
  v76 = (v75 + *(v126 + 36));
  *v76 = MidX;
  v76[1] = MidY;
  v118 = a2;
  v77 = v141;
  sub_26F1491B0(a2, v141);
  v78 = v138;
  v79 = v129;
  v80 = v139;
  (*(v138 + 16))(v129, v142, v139);
  v81 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v161 = v81 + v135;
  v82 = (v81 + v135 + *(v78 + 80)) & ~*(v78 + 80);
  v83 = swift_allocObject();
  sub_26F1499C8(v77, v83 + v81, type metadata accessor for TapView);
  (*(v78 + 32))(v83 + v82, v79, v80);
  v84 = v132;
  v85 = sub_26F142810(v75, v132, &qword_2806D45C0, &qword_26F182100);
  v86 = (v84 + *(v128 + 36));
  *v86 = sub_26F149CB0;
  v86[1] = v83;
  v86[2] = 0;
  v86[3] = 0;
  v87 = MEMORY[0x27438A200](v85, 0.2, 1.0, 0.0);
  LOBYTE(v167.origin.x) = v165;
  v167.origin.y = v159;
  sub_26F180414();
  LOBYTE(v83) = v169;
  v88 = v84;
  v89 = v133;
  sub_26F142810(v88, v133, &qword_2806D45C8, &qword_26F182108);
  v90 = v89 + *(v130 + 36);
  *v90 = v87;
  *(v90 + 8) = v83;
  v91 = v118;
  sub_26F1491B0(v118, v77);
  v92 = swift_allocObject();
  sub_26F1499C8(v77, v92 + v81, type metadata accessor for TapView);
  v93 = v136;
  v94 = &v136[*(v131 + 36)];
  v95 = &v94[*(sub_26F17FA24() + 20)];
  sub_26F1808F4();
  *v94 = &unk_26F182160;
  *(v94 + 1) = v92;
  sub_26F142810(v89, v93, &qword_2806D45D0, &qword_26F182110);
  v96 = (v91 + *(v143 + 40));
  v97 = *v96;
  v98 = v96[1];
  v167.origin.x = v97;
  v167.origin.y = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  v99 = v169;
  v100 = v163;
  sub_26F142810(v93, v163, &qword_2806D45D8, &qword_26F182118);
  v101 = (v100 + *(v162 + 36));
  *v101 = v99;
  v101[1] = 0;
  sub_26F180704();
  sub_26F1427C4();
  v102 = sub_26F1809E4();
  if (!v102)
  {
    v102 = [objc_opt_self() mainBundle];
  }

  v103 = v102;
  v104 = v152;
  sub_26F17F794();
  v105 = v151;
  v106 = v153;
  (*(v151 + 16))(v148, v166, v153);
  v107 = v156;
  v108 = v158;
  (*(v156 + 16))(v150, v104, v158);
  v109 = [v103 bundleURL];
  v110 = v155;
  sub_26F17F714();

  (*(v154 + 104))(v110, *MEMORY[0x277CC9118], v157);
  sub_26F17F6E4();

  (*(v107 + 8))(v104, v108);
  (*(v105 + 8))(v166, v106);
  *&v167.origin.x = sub_26F180774();
  v167.origin.y = v111;
  sub_26F149F3C();
  sub_26F140F5C();
  v112 = v147;
  v113 = v163;
  sub_26F180294();

  sub_26F13AB10(v113, &qword_2806D45E0, &qword_26F182120);
  sub_26F17FCE4();
  sub_26F17FCD4();
  v167.origin.x = v146;
  v167.origin.y = v145;
  result = sub_26F180414();
  if (__OFADD__(v169, 1))
  {
    __break(1u);
  }

  else
  {
    *&v167.origin.x = v169 + 1;
    sub_26F17FCC4();
    sub_26F17FCD4();
    sub_26F17FD04();
    sub_26F17FA84();

    return sub_26F13AB10(v112, &qword_2806D45E8, &qword_26F182128);
  }

  return result;
}

uint64_t sub_26F1478E0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for TapView() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  return sub_26F17FAB4();
}

uint64_t sub_26F14799C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26F180AA4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_26F1808E4();
  v1[8] = sub_26F1808D4();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_26F147AB4;

  return sub_26F148464();
}

uint64_t sub_26F147AB4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v6 = sub_26F1808C4();
  *(v1 + 80) = v6;
  *(v1 + 88) = v5;

  return MEMORY[0x2822009F8](sub_26F147BF8, v6, v5);
}

uint64_t sub_26F147BF8()
{
  v1 = *(v0 + 48);
  v2 = sub_26F180BC4();
  v4 = v3;
  sub_26F180B84();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_26F147CD4;
  v6 = *(v0 + 48);

  return sub_26F14A55C(v2, v4, 0, 0, 1);
}

uint64_t sub_26F147CD4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    (*(v3[4] + 8))(v3[6], v3[3]);
    v4 = v3[10];
    v5 = v3[11];

    return MEMORY[0x2822009F8](sub_26F14821C, v4, v5);
  }

  else
  {
    v6 = v3[6];
    v7 = v3[3];
    v8 = v3[4];
    v9 = *(v8 + 8);
    v3[14] = v9;
    v3[15] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v3[16] = v10;
    *v10 = v3;
    v10[1] = sub_26F147E78;
    v11 = v3[2];

    return sub_26F148B4C();
  }
}

uint64_t sub_26F147E78()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26F147F98, v4, v3);
}

uint64_t sub_26F147F98()
{
  v1 = *(v0 + 40);
  v2 = sub_26F180BC4();
  v4 = v3;
  sub_26F180B84();
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_26F148074;
  v6 = *(v0 + 40);

  return sub_26F14A55C(v2, v4, 0, 0, 1);
}

uint64_t sub_26F148074()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 144) = v0;

  v5(v6, v7);
  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_26F148384;
  }

  else
  {
    v11 = sub_26F1482FC;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26F14821C()
{
  v1 = v0[13];
  v2 = v0[8];

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000026F184670;
  v3._countAndFlagsBits = 0xD000000000000064;
  TryItLog.error(_:)(v3);

  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26F1482FC()
{
  v1 = v0[8];
  v2 = v0[2];

  sub_26F142E20();
  sub_26F15C40C();

  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F148384()
{
  v1 = v0[18];
  v2 = v0[8];

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000026F184670;
  v3._countAndFlagsBits = 0xD000000000000064;
  TryItLog.error(_:)(v3);

  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26F148464()
{
  v1[5] = v0;
  v2 = sub_26F17F6C4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_26F17F7A4();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = sub_26F180714();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = *(*(sub_26F17F6D4() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_26F1808E4();
  v1[18] = sub_26F1808D4();
  v13 = sub_26F1808C4();

  return MEMORY[0x2822009F8](sub_26F148654, v13, v12);
}

uint64_t sub_26F148654()
{
  v1 = v0[18];
  v2 = v0[5];

  v3 = sub_26F142E20();
  if (*(v3 + 48) == 1)
  {
    *(v3 + 48) = 1;
  }

  else
  {
    v4 = v3;
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[2] = v4;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }

  v6 = v0[5];
  v7 = sub_26F142E20();
  if (*(v7 + 51))
  {
    v8 = v7;
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v0[4] = v8;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }

  else
  {
    *(v7 + 51) = 0;
  }

  v10 = v0[5];
  v11 = sub_26F142E20();
  if (*(v11 + 50) == 1)
  {
    *(v11 + 50) = 1;
  }

  else
  {
    v12 = v11;
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    v0[3] = v12;
    sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }

  v14 = v0[16];
  v15 = v0[5];
  sub_26F142E20();
  sub_26F180704();
  sub_26F1427C4();
  v16 = sub_26F1809E4();
  if (!v16)
  {
    v16 = [objc_opt_self() mainBundle];
  }

  v17 = v0[16];
  v33 = v16;
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v31 = v0[8];
  v25 = v0[7];
  v32 = v0[6];
  sub_26F17F794();
  (*(v19 + 16))(v18, v17, v21);
  (*(v22 + 16))(v23, v20, v24);
  v26 = [v33 bundleURL];
  sub_26F17F714();

  (*(v25 + 104))(v31, *MEMORY[0x277CC9118], v32);
  sub_26F17F6E4();

  (*(v22 + 8))(v20, v24);
  (*(v19 + 8))(v17, v21);
  v27 = sub_26F180774();
  sub_26F15A234(v27, v28);

  v29 = v0[1];

  return v29();
}

uint64_t sub_26F148B4C()
{
  *(v1 + 40) = v0;
  sub_26F1808E4();
  *(v1 + 48) = sub_26F1808D4();
  v3 = sub_26F1808C4();

  return MEMORY[0x2822009F8](sub_26F148BE4, v3, v2);
}

uint64_t sub_26F148BE4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = type metadata accessor for TapView();
  v4 = *(v2 + *(v3 + 52));
  v5 = (v2 + *(v3 + 36));
  v6 = *v5;
  v7 = v5[1];
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  v8 = sub_26F180424();
  MEMORY[0x27438A200](v8, 0.5, 1.0, 0.0);
  *(swift_task_alloc() + 16) = v2;
  sub_26F17FA44();

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F148D04(uint64_t a1)
{
  v2 = type metadata accessor for TapView();
  v3 = (a1 + v2[10]);
  v6 = *v3;
  v8 = v3[1];
  v10 = -*(a1 + v2[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180424();
  v4 = (a1 + v2[9]);
  v7 = *v4;
  v9 = v4[1];
  return sub_26F180424();
}

void sub_26F148DCC(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for TapView();
  v3 = a1 + v2[5];
  type metadata accessor for TrainingManager();
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v2[6];
  sub_26F180404();
  *(a1 + v5) = v33;
  v6 = v2[7];
  sub_26F180404();
  *(a1 + v6) = v33;
  v7 = a1 + v2[8];
  sub_26F180404();
  *v7 = v33;
  *(v7 + 1) = *(&v33 + 1);
  v8 = (a1 + v2[9]);
  sub_26F180404();
  *v8 = v33;
  v9 = (a1 + v2[10]);
  sub_26F180404();
  *v9 = v33;
  v10 = a1 + v2[11];
  sub_26F180404();
  *v10 = v33;
  *(v10 + 1) = *(&v33 + 1);
  v11 = (a1 + v2[12]);
  sub_26F180404();
  *v11 = v33;
  v12 = v2[13];
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v34.origin.x = v16;
  v34.origin.y = v18;
  v34.size.width = v20;
  v34.size.height = v22;
  *(a1 + v12) = CGRectGetWidth(v34);
  v23 = v2[14];
  v24 = [v13 mainScreen];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v35.origin.x = v26;
  v35.origin.y = v28;
  v35.size.width = v30;
  v35.size.height = v32;
  *(a1 + v23) = CGRectGetHeight(v35);
}

uint64_t sub_26F1490B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F1491B0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_26F1499C8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TapView);
  *a2 = sub_26F149218;
  a2[1] = v7;
  return result;
}

uint64_t sub_26F1491B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F149218(uint64_t a1)
{
  v3 = *(type metadata accessor for TapView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F1431A4(a1, v4);
}

unint64_t sub_26F1492A0()
{
  result = qword_2806D4560;
  if (!qword_2806D4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4540, &qword_26F182068);
    sub_26F13AC54(&qword_2806D4568, &qword_2806D4570, &qword_26F182080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4560);
  }

  return result;
}

uint64_t sub_26F149358@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17FAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F146460(a1, v2 + v6, v9, a2);
}

void *sub_26F149444(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_26F149494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_26F149564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F14B314(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_26F14963C()
{
  v1 = type metadata accessor for TapView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v25 = sub_26F17FAC4();
  v5 = *(v25 - 8);
  v6 = *(v5 + 80);
  v24 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = v2 | v6;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v6 + 8) & ~v6;
  v14 = *(v7 + v1[5]);

  v15 = *(v7 + v1[6] + 8);

  v16 = *(v7 + v1[7] + 8);

  v17 = *(v7 + v1[8] + 8);

  v18 = *(v7 + v1[9] + 8);

  v19 = *(v7 + v1[10] + 8);

  v20 = *(v7 + v1[11] + 8);

  v21 = *(v7 + v1[12] + 8);

  v22 = *(v0 + v12);

  (*(v5 + 8))(v0 + v13, v25);

  return MEMORY[0x2821FE8E8](v0, v13 + v24, v11 | 7);
}

uint64_t sub_26F1498CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_26F17FAC4() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_26F14667C(a1, v2 + v6, v9, v10, a2);
}

uint64_t sub_26F1499C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for TapView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v23 = sub_26F17FAC4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 80);
  v22 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = v2 | v6;
  v12 = (v3 + v4 + v6) & ~v6;
  v13 = *(v7 + v1[5]);

  v14 = *(v7 + v1[6] + 8);

  v15 = *(v7 + v1[7] + 8);

  v16 = *(v7 + v1[8] + 8);

  v17 = *(v7 + v1[9] + 8);

  v18 = *(v7 + v1[10] + 8);

  v19 = *(v7 + v1[11] + 8);

  v20 = *(v7 + v1[12] + 8);

  (*(v5 + 8))(v0 + v12, v23);

  return MEMORY[0x2821FE8E8](v0, v12 + v22, v11 | 7);
}

uint64_t sub_26F149CB0()
{
  v1 = *(type metadata accessor for TapView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F17FAC4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F1478E0(v0 + v2);
}

uint64_t sub_26F149D7C()
{
  v2 = *(type metadata accessor for TapView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F149E48;

  return sub_26F14799C(v0 + v3);
}

uint64_t sub_26F149E48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26F149F3C()
{
  result = qword_2806D45F8;
  if (!qword_2806D45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45E0, &qword_26F182120);
    sub_26F149FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D45F8);
  }

  return result;
}

unint64_t sub_26F149FC8()
{
  result = qword_2806D4600;
  if (!qword_2806D4600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45D8, &qword_26F182118);
    sub_26F14A084();
    sub_26F14B314(&qword_2806D4688, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4600);
  }

  return result;
}

unint64_t sub_26F14A084()
{
  result = qword_2806D4608;
  if (!qword_2806D4608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45D0, &qword_26F182110);
    sub_26F14A13C();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4608);
  }

  return result;
}

unint64_t sub_26F14A13C()
{
  result = qword_2806D4610;
  if (!qword_2806D4610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45C8, &qword_26F182108);
    sub_26F14A1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4610);
  }

  return result;
}

unint64_t sub_26F14A1C8()
{
  result = qword_2806D4618;
  if (!qword_2806D4618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45C0, &qword_26F182100);
    sub_26F14A254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4618);
  }

  return result;
}

unint64_t sub_26F14A254()
{
  result = qword_2806D4620;
  if (!qword_2806D4620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45B8, &qword_26F1820F8);
    sub_26F14A30C();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4620);
  }

  return result;
}

unint64_t sub_26F14A30C()
{
  result = qword_2806D4628;
  if (!qword_2806D4628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D45B0, &qword_26F1820F0);
    sub_26F14A3C4();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4628);
  }

  return result;
}

unint64_t sub_26F14A3C4()
{
  result = qword_2806D4630;
  if (!qword_2806D4630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4638, &qword_26F182168);
    sub_26F14A450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4630);
  }

  return result;
}

unint64_t sub_26F14A450()
{
  result = qword_2806D4640;
  if (!qword_2806D4640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4648, &qword_26F182170);
    sub_26F14A508();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4640);
  }

  return result;
}

unint64_t sub_26F14A508()
{
  result = qword_2806D4650;
  if (!qword_2806D4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4650);
  }

  return result;
}

uint64_t sub_26F14A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26F180A94();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26F14A65C, 0, 0);
}

uint64_t sub_26F14A65C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_26F180AA4();
  v7 = sub_26F14B314(&qword_2806D4690, MEMORY[0x277D85928]);
  sub_26F180B64();
  sub_26F14B314(&qword_2806D4698, MEMORY[0x277D858F8]);
  sub_26F180AB4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26F14A7EC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26F14A7EC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F14A9A8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26F14A9A8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_26F14AAE8()
{
  result = qword_2806D46C8;
  if (!qword_2806D46C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46C0, &qword_26F182240);
    sub_26F14AB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D46C8);
  }

  return result;
}

unint64_t sub_26F14AB74()
{
  result = qword_2806D46D0;
  if (!qword_2806D46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46D8, &qword_26F182248);
    sub_26F13AC54(&qword_2806D46E0, &qword_2806D46E8, &qword_26F182250);
    sub_26F13AC54(&qword_2806D46F0, &qword_2806D46F8, &qword_26F182258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D46D0);
  }

  return result;
}

unint64_t sub_26F14AC78()
{
  result = qword_2806D4720;
  if (!qword_2806D4720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4718, &qword_26F182260);
    sub_26F14ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4720);
  }

  return result;
}

unint64_t sub_26F14ACFC()
{
  result = qword_2806D4728;
  if (!qword_2806D4728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4730, &qword_26F182268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4738, &qword_26F182270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46A8, &qword_26F182228);
    sub_26F14AE50();
    sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D47A0, &qword_2806D47A8, &qword_26F1822A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4728);
  }

  return result;
}

unint64_t sub_26F14AE50()
{
  result = qword_2806D4740;
  if (!qword_2806D4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4738, &qword_26F182270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4748, &qword_26F182278);
    sub_26F14AF48();
    swift_getOpaqueTypeConformance2();
    sub_26F14B314(&qword_2806D4798, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4740);
  }

  return result;
}

unint64_t sub_26F14AF48()
{
  result = qword_2806D4750;
  if (!qword_2806D4750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4748, &qword_26F182278);
    sub_26F14B000();
    sub_26F13AC54(&qword_2806D4668, &qword_2806D4670, &qword_26F182180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4750);
  }

  return result;
}

unint64_t sub_26F14B000()
{
  result = qword_2806D4758;
  if (!qword_2806D4758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4760, &qword_26F182280);
    sub_26F14B0B8();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4758);
  }

  return result;
}

unint64_t sub_26F14B0B8()
{
  result = qword_2806D4768;
  if (!qword_2806D4768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4770, &qword_26F182288);
    sub_26F14B144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4768);
  }

  return result;
}

unint64_t sub_26F14B144()
{
  result = qword_2806D4778;
  if (!qword_2806D4778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4780, &qword_26F182290);
    sub_26F14B1D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4778);
  }

  return result;
}

unint64_t sub_26F14B1D0()
{
  result = qword_2806D4788;
  if (!qword_2806D4788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4790, &qword_26F182298);
    sub_26F14A508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4788);
  }

  return result;
}

uint64_t sub_26F14B25C(double a1, double a2)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F145F3C(v6, a1, a2);
}

uint64_t sub_26F14B2D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F14B314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F14B35C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F144B30(a1, v6, a2);
}

unint64_t sub_26F14B3DC()
{
  result = qword_2806D47E0;
  if (!qword_2806D47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D47D8, &qword_26F1822F0);
    sub_26F14B468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D47E0);
  }

  return result;
}

unint64_t sub_26F14B468()
{
  result = qword_2806D47E8;
  if (!qword_2806D47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D47E8);
  }

  return result;
}

uint64_t sub_26F14B4D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TapView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F14B54C()
{
  v1 = *(type metadata accessor for TapView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F145BF4(v0 + v2);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for TapView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[10] + 8);

  v15 = *(v5 + v1[11] + 8);

  v16 = *(v5 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F14B7D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TapView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_60Tm()
{
  v1 = type metadata accessor for TapView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[10] + 8);

  v15 = *(v5 + v1[11] + 8);

  v16 = *(v5 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26F14BA50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TapView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F145E10(a1, v2 + v6, v7, a2);
}

uint64_t sub_26F14BB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F14BC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DragView()
{
  result = qword_2806D4810;
  if (!qword_2806D4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F14BD74()
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26F14BF00(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26F14BF00(319, &qword_2806D4820, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_26F14BF64(319, &qword_2806D4828, &qword_2806D4830, "~m", MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26F14BFC8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F14BF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26F14BF64(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26F14BFC8()
{
  if (!qword_2806D4838)
  {
    v0 = sub_26F1808A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4838);
    }
  }
}

uint64_t sub_26F14C034()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for DragView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F14C184()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4918, &qword_26F182490);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4920, &qword_26F182498);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26F181B30;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0x6B726F592077654ELL;
  v4[1] = 0xE800000000000000;
  sub_26F180704();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = 0x79656E647953;
  v6[1] = 0xE600000000000000;
  sub_26F180704();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = 0x6F796B6F54;
  v8[1] = 0xE500000000000000;
  sub_26F180704();
  v10 = sub_26F151950(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_2806D6C00 = v10;
  return result;
}

uint64_t sub_26F14C34C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for DragView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26F14E670(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26F14E6D8(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v21 = sub_26F14E73C;
  v22 = v7;
  v8 = sub_26F14C034();
  swift_getKeyPath();
  v20 = v8;
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v9 = *(v8 + 51);

  LOBYTE(v20) = v9;
  sub_26F14E670(v2, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_26F14E6D8(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4840, &qword_26F1823F8);
  sub_26F13AC54(&qword_2806D4848, &qword_2806D4840, &qword_26F1823F8);
  v11 = v19;
  sub_26F180324();

  v12 = [objc_opt_self() defaultCenter];
  v13 = *MEMORY[0x277D76660];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4850, &qword_26F182400);
  v15 = v11 + *(v14 + 52);
  sub_26F1809C4();

  sub_26F14E670(v2, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  result = sub_26F14E6D8(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v6);
  v18 = (v11 + *(v14 + 56));
  *v18 = sub_26F14E944;
  v18[1] = v16;
  return result;
}

uint64_t sub_26F14C65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a1;
  v99 = a3;
  v104 = sub_26F17F9E4();
  v98 = *(v104 - 8);
  v105 = *(v98 + 64);
  MEMORY[0x28223BE20](v104);
  v97 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DragView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4860, &qword_26F182410);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v85 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4868, &qword_26F182418);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4870, &qword_26F182420);
  v20 = *(v19 - 8);
  v92 = (v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v102 = &v85 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4878, &qword_26F182428);
  v24 = *(v23 - 8);
  v94 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v93 = &v85 - v26;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4880, &qword_26F182430);
  v27 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v85 - v28;
  *v13 = sub_26F17FD74();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4888, &qword_26F182438) + 44);
  v29 = *(v6 + 44);
  v101 = a2;
  v106 = sub_26F14FC14(0, *(*(a2 + v29) + 16), *(a2 + v29));
  KeyPath = swift_getKeyPath();
  v100 = v9;
  sub_26F14E670(a2, v9);
  v30 = *(v7 + 80);
  v89 = ((v30 + 16) & ~v30) + v8;
  v31 = (v30 + 16) & ~v30;
  v91 = v31;
  v90 = v30 | 7;
  v32 = swift_allocObject();
  sub_26F14E6D8(v9, v32 + v31);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26F14FFC0;
  *(v33 + 24) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4890, &qword_26F182460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4898, &qword_26F182468);
  sub_26F13AC54(&qword_2806D48A0, &qword_2806D4890, &qword_26F182460);
  v34 = type metadata accessor for DraggableLocationItem();
  v35 = type metadata accessor for TrainingManager();
  v36 = sub_26F150AE8(&qword_2806D48A8, type metadata accessor for DraggableLocationItem);
  v37 = sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *&v108 = v34;
  *(&v108 + 1) = v35;
  *&v109 = v36;
  *(&v109 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  sub_26F1804B4();
  sub_26F180564();
  sub_26F17FB44();
  sub_26F142810(v13, v18, &qword_2806D4860, &qword_26F182410);
  v38 = &v18[*(v15 + 44)];
  v39 = v113;
  *(v38 + 4) = v112;
  *(v38 + 5) = v39;
  *(v38 + 6) = v114;
  v40 = v109;
  *v38 = v108;
  *(v38 + 1) = v40;
  v41 = v111;
  *(v38 + 2) = v110;
  *(v38 + 3) = v41;
  LOBYTE(v32) = sub_26F180004();
  sub_26F17F894();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v102;
  sub_26F142810(v18, v102, &qword_2806D4868, &qword_26F182418);
  v51 = v50 + v92[11];
  *v51 = v32;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = v101;
  v53 = v100;
  sub_26F14E670(v101, v100);
  v54 = v98;
  v55 = *(v98 + 16);
  v88 = v98 + 16;
  v92 = v55;
  v56 = v97;
  v57 = v104;
  (v55)(v97, v103, v104);
  KeyPath = *(v54 + 80);
  v58 = (v89 + KeyPath) & ~KeyPath;
  v86 = v58;
  v59 = swift_allocObject();
  v60 = v91;
  sub_26F14E6D8(v53, v59 + v91);
  v98 = *(v54 + 32);
  v61 = v59 + v58;
  v62 = v56;
  (v98)(v61, v56, v57);
  v63 = v93;
  sub_26F142810(v102, v93, &qword_2806D4870, &qword_26F182420);
  v64 = (v63 + *(v94 + 44));
  *v64 = sub_26F1500C8;
  v64[1] = v59;
  v64[2] = 0;
  v64[3] = 0;
  v65 = v100;
  sub_26F14E670(v52, v100);
  v66 = swift_allocObject();
  v67 = v60;
  sub_26F14E6D8(v65, v66 + v60);
  v68 = sub_26F180564();
  v70 = v69;
  v71 = v63;
  v72 = v95;
  sub_26F142810(v71, v95, &qword_2806D4878, &qword_26F182428);
  v73 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D48B0, &qword_26F182470) + 36));
  *v73 = sub_26F150C28;
  v73[1] = 0;
  v73[2] = v68;
  v73[3] = v70;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_26F150358;
  *(v74 + 24) = v66;
  v75 = (v72 + *(v96 + 36));
  *v75 = sub_26F1503D0;
  v75[1] = v74;
  v76 = v103;
  sub_26F17F9C4();
  v106 = v77;
  v107 = v78;
  sub_26F14E670(v101, v65);
  v79 = v62;
  v80 = v62;
  v81 = v104;
  (v92)(v80, v76, v104);
  v82 = v86;
  v83 = swift_allocObject();
  sub_26F14E6D8(v65, v83 + v67);
  (v98)(v83 + v82, v79, v81);
  type metadata accessor for CGSize(0);
  sub_26F150740();
  sub_26F150AE8(&qword_2806D4908, type metadata accessor for CGSize);
  sub_26F180314();

  return sub_26F150A80(v72);
}

uint64_t sub_26F14D03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v59 = a3;
  v56 = a1;
  v57 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = sub_26F180714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DraggableLocationItem();
  v18 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DragView();
  v22 = (a4 + v21[7]);
  v24 = *v22;
  v23 = v22[1];
  *&v62 = v24;
  *(&v62 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4858, &qword_26F182408);
  sub_26F180434();
  v53 = v60;
  v54 = *v61;
  v25 = (a4 + v21[8]);
  v27 = *v25;
  v26 = v25[1];
  *&v62 = v27;
  *(&v62 + 1) = v26;
  sub_26F180434();
  v51 = v60;
  v52 = *v61;
  v28 = (a4 + v21[6]);
  v29 = *(v28 + 4);
  v30 = v28[1];
  v62 = *v28;
  v63 = v30;
  v64 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  sub_26F180434();
  v32 = v60;
  v31 = v61[0];
  v49 = *&v61[3];
  v50 = *&v61[1];
  if (qword_2806D3FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = qword_2806D6C00;
  if (*(qword_2806D6C00 + 16) && (v34 = sub_26F14ECAC(v58, v59), (v35 & 1) != 0))
  {
    (*(v14 + 16))(v12, *(v33 + 56) + *(v14 + 72) * v34, v13);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v14 + 56))(v12, v36, 1, v13);
  sub_26F142810(v12, v10, &qword_2806D4360, &qword_26F181DC0);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_26F180704();
    sub_26F13AB10(v10, &qword_2806D4360, &qword_26F181DC0);
  }

  else
  {
    (*(v14 + 32))(v17, v10, v13);
  }

  swift_endAccess();
  type metadata accessor for TrainingManager();
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *v20 = sub_26F17F914();
  v20[8] = v37 & 1;
  *(v20 + 2) = v53;
  *(v20 + 24) = v54;
  *(v20 + 5) = v51;
  *(v20 + 3) = v52;
  *(v20 + 8) = v32;
  *(v20 + 9) = v31;
  v38 = v49;
  *(v20 + 5) = v50;
  *(v20 + 6) = v38;
  LOBYTE(v62) = 0;
  sub_26F180404();
  v39 = v61[0];
  v20[112] = v60;
  *(v20 + 15) = v39;
  LOBYTE(v62) = 0;
  sub_26F180404();
  v40 = v61[0];
  v20[128] = v60;
  *(v20 + 17) = v40;
  LOBYTE(v62) = 1;
  sub_26F180404();
  v41 = v61[0];
  v20[144] = v60;
  *(v20 + 19) = v41;
  LOBYTE(v62) = 0;
  sub_26F180404();
  v42 = v61[0];
  v20[160] = v60;
  *(v20 + 21) = v42;
  *&v62 = 0;
  sub_26F180404();
  v43 = v61[0];
  *(v20 + 22) = v60;
  *(v20 + 23) = v43;
  LOBYTE(v62) = 0;
  sub_26F180404();
  v44 = v61[0];
  v20[192] = v60;
  v46 = v55;
  v45 = v56;
  *(v20 + 25) = v44;
  *(v20 + 26) = v45;
  v47 = v59;
  *(v20 + 27) = v58;
  *(v20 + 28) = v47;
  (*(v14 + 32))(&v20[*(v46 + 64)], v17, v13);

  sub_26F14C034();
  sub_26F150AE8(&qword_2806D48A8, type metadata accessor for DraggableLocationItem);
  sub_26F180244();

  return sub_26F150B30(v20);
}

uint64_t sub_26F14D610(uint64_t a1)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_26F14C034() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 2;

  sub_26F17FEA4();
  sub_26F17F9D4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15 = (a1 + *(type metadata accessor for DragView() + 24));
  v16 = *(v15 + 4);
  v17 = v15[1];
  v20 = *v15;
  v21 = v17;
  v22 = v16;
  v19[0] = v8;
  v19[1] = v10;
  v19[2] = v12;
  v19[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  return sub_26F180424();
}

uint64_t sub_26F14D78C(uint64_t a1, double a2, double a3)
{
  v5 = sub_26F17FE84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v34 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v35 = sub_26F14C034();
  v36 = a1;
  sub_26F14E9B4(v22);
  (*(v6 + 104))(v20, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v23 = *(v10 + 56);
  sub_26F13A854(v22, v13, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v20, &v13[v23], &qword_2806D4200, &qword_26F181B88);
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) == 1)
  {
    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) == 1)
    {
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v36;
LABEL_8:
      v26 = *(v25 + *(type metadata accessor for DragView() + 40)) * 0.5;
      goto LABEL_10;
    }
  }

  else
  {
    sub_26F13A854(v13, v34, &qword_2806D4200, &qword_26F181B88);
    if (v24(&v13[v23], 1, v5) != 1)
    {
      v27 = v33;
      (*(v6 + 32))(v33, &v13[v23], v5);
      sub_26F150AE8(&qword_2806D4318, MEMORY[0x277CE0570]);
      v28 = v34;
      v29 = sub_26F1806F4();
      v30 = *(v6 + 8);
      v30(v27, v5);
      sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
      v30(v28, v5);
      sub_26F13AB10(v13, &qword_2806D4200, &qword_26F181B88);
      v25 = v36;
      if ((v29 & 1) == 0)
      {
        v26 = 373.0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_26F13AB10(v20, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v22, &qword_2806D4200, &qword_26F181B88);
    (*(v6 + 8))(v34, v5);
  }

  sub_26F13AB10(v13, &qword_2806D4308, &qword_26F182E30);
  v26 = 373.0;
LABEL_10:
  v31 = a3 * 0.5;
  *(v35 + 64) = v26 - v31;

  *(sub_26F14C034() + 56) = v31;
}

uint64_t sub_26F14DC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26F17FE64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17FEA4();
  sub_26F17F9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v17 = (a3 + *(type metadata accessor for DragView() + 24));
  v18 = *(v17 + 4);
  v19 = v17[1];
  v22 = *v17;
  v23 = v19;
  v24 = v18;
  v21[0] = v10;
  v21[1] = v12;
  v21[2] = v14;
  v21[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4910, &qword_26F182488);
  return sub_26F180424();
}

uint64_t sub_26F14DDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F14C034();
  swift_getKeyPath();
  v23 = v11;
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v12 = *(v11 + 51);

  if (v12 == 1)
  {
    v14 = sub_26F180894();
    v14[2] = 3;
    v15 = type metadata accessor for DragView();
    v14[5] = 0;
    v14[6] = 0;
    v14[4] = 0;
    v16 = (a1 + *(v15 + 32));
    v18 = *v16;
    v17 = v16[1];
    v23 = v18;
    v24 = v17;
    v22[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4858, &qword_26F182408);
    sub_26F180424();
    sub_26F14C034();
    sub_26F180704();
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_26F15BCB8(v10, 0, v5);

    sub_26F13AB10(v5, &qword_2806D4360, &qword_26F181DC0);
    (*(v7 + 8))(v10, v6);
    v19 = sub_26F14C034();
    if (*(v19 + 51))
    {
      v20 = v19;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v22[-2] = v20;
      LOBYTE(v22[-1]) = 0;
      v23 = v20;
      sub_26F17F7B4();
    }

    else
    {
      *(v19 + 51) = 0;
    }
  }

  return result;
}

uint64_t sub_26F14E0F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for DragView() + 20));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_26F180944();
    v11 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    v9 = v15;
  }

  if (*(v9 + 51) == 1)
  {
    *(v9 + 51) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 2) = v9;
    *(&v14 - 8) = 1;
    v15 = v9;
    sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }
}

void sub_26F14E32C(uint64_t *a1@<X8>)
{
  v1 = a1;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DragView();
  v3 = v1 + v2[5];
  type metadata accessor for TrainingManager();
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *v3 = sub_26F17F914();
  v3[8] = v4 & 1;
  v5 = v1 + v2[6];
  type metadata accessor for CGRect(0);
  sub_26F180404();
  v6 = v30;
  v7 = v29[1];
  *v5 = v29[0];
  *(v5 + 1) = v7;
  *(v5 + 4) = v6;
  v8 = (v1 + v2[7]);
  v9 = sub_26F180894();
  v9[2] = 3;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4830, "~m");
  sub_26F180404();
  v10 = *(&v29[0] + 1);
  *v8 = *&v29[0];
  v8[1] = v10;
  v11 = (v1 + v2[8]);
  v12 = sub_26F180894();
  v12[2] = 3;
  v12[5] = 0;
  v12[6] = 0;
  v12[4] = 0;
  sub_26F180404();
  v13 = *(&v29[0] + 1);
  *v11 = *&v29[0];
  v11[1] = v13;
  if (qword_2806D3FC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_2806D6C00;
  v15 = *(qword_2806D6C00 + 16);
  if (!v15)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v28 = v1;
  v16 = sub_26F14EB94(v15, 0);
  v17 = sub_26F14FABC(v29, v16 + 4, v15, v14);

  sub_26F150BAC();
  if (v17 == v15)
  {
    v1 = v28;
LABEL_7:
    *&v29[0] = v16;

    sub_26F14EEE0(v29);

    *(v1 + v2[9]) = *&v29[0];
    v18 = v2[10];
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v31.origin.x = v21;
    v31.origin.y = v23;
    v31.size.width = v25;
    v31.size.height = v27;
    *(v1 + v18) = CGRectGetHeight(v31);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_26F14E670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F14E6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F14E73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DragView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F14C65C(a1, v6, a2);
}

uint64_t sub_26F14E7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F150AE8(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 51);
  return result;
}

uint64_t sub_26F14E8E4()
{
  v1 = *(type metadata accessor for DragView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F14DDA4(v2);
}

uint64_t sub_26F14E944(uint64_t a1)
{
  v3 = *(type metadata accessor for DragView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F14E0F0(a1, v4);
}

uint64_t sub_26F14E9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_26F13A854(v2, &v16 - v11, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v12, a1, &qword_2806D4200, &qword_26F181B88);
  }

  v14 = *v12;
  sub_26F180944();
  v15 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

void *sub_26F14EB94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4938, &unk_26F1824E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_26F14EC18(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26F180754();
  sub_26F180B94();
  sub_26F1807B4();
  v4 = sub_26F180BB4();

  return sub_26F14ED24(a1, v4);
}

unint64_t sub_26F14ECAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26F180B94();
  sub_26F1807B4();
  v6 = sub_26F180BB4();

  return sub_26F14EE28(a1, a2, v6);
}

unint64_t sub_26F14ED24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26F180754();
      v9 = v8;
      if (v7 == sub_26F180754() && v9 == v10)
      {
        break;
      }

      v12 = sub_26F180B44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26F14EE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26F180B44())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26F14EEE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26F150B8C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26F14EF4C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26F14EF4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26F180B24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26F180894();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26F14F114(v7, v8, a1, v4);
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
    return sub_26F14F044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26F14F044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26F180B44(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F14F114(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26F14F9A4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26F14F6F0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26F180B44();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26F180B44();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26F14F9B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26F14F9B8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26F14F6F0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26F14F9A4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26F14F918(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26F180B44(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_26F14F6F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26F180B44() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26F180B44() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26F14F918(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26F14F9A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26F14F9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4930, &qword_26F1824D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26F14FABC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26F14FC14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v4 = a3;
  v6 = result;
  v40 = *(a3 + 16);
  if (v40 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4928, &qword_26F1824A0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 24);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v3 < 0)
  {
    goto LABEL_67;
  }

  v11 = v10 >> 1;
  v45 = v8;
  if (!v7)
  {
    v14 = v8 + 32;
    v18 = v6;
    if (v6 == a2)
    {
      goto LABEL_53;
    }

LABEL_27:
    if (v6 > a2)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v19 = 0;
    v41 = v18 - a2;
    if (v18 <= a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = v18;
    }

    v44 = v20 - v18;
    v21 = v40;
    v42 = v40 - v7;
    v22 = (v4 + 16 * v7 + 40);
    v39 = v7;
    while (v18 >= v6)
    {
      if (v44 == v19)
      {
        goto LABEL_61;
      }

      if (v42 == v19)
      {
        goto LABEL_53;
      }

      if (v7 + v19 >= v21)
      {
        goto LABEL_62;
      }

      if (__OFADD__(v7 + v19, 1))
      {
        goto LABEL_63;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      if (v11)
      {
        v25 = *v22;

        v26 = __OFSUB__(v11--, 1);
        if (v26)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v27 = *(v45 + 3);
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_65;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4928, &qword_26F1824A0);
        v30 = swift_allocObject();
        v31 = (_swift_stdlib_malloc_size(v30) - 32) / 24;
        *(v30 + 2) = v29;
        *(v30 + 3) = 2 * v31;
        v32 = v30 + 32;
        v33 = *(v45 + 3) >> 1;
        v14 = &v30[24 * v33 + 32];
        v34 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;
        if (*(v45 + 2))
        {
          v35 = v45 + 32;
          if (v30 != v45 || v32 >= &v35[24 * v33])
          {
            memmove(v32, v35, 24 * v33);
          }

          *(v45 + 2) = 0;
        }

        else
        {
        }

        v45 = v30;
        v7 = v39;
        v21 = v40;
        v26 = __OFSUB__(v34, 1);
        v11 = v34 - 1;
        if (v26)
        {
          goto LABEL_64;
        }
      }

      *v14 = v18 + v19;
      *(v14 + 1) = v23;
      *(v14 + 2) = v24;
      v14 += 24;
      ++v19;
      v22 += 2;
      if (!(v41 + v19))
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v6 > a2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = 0;
  v11 -= v7;
  v43 = v4;
  v13 = (v4 + 40);
  v14 = v8 + 56;
  v15 = 1;
  do
  {
    if (v6 - a2 + v15 == 1)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v15 - v40 == 1)
    {
      goto LABEL_58;
    }

    if (v12)
    {
      goto LABEL_59;
    }

    v17 = *(v13 - 1);
    v16 = *v13;
    *(v14 - 3) = v6 + v15 - 1;
    *(v14 - 2) = v17;
    *(v14 - 1) = v16;
    if (v7 == v15)
    {
      goto LABEL_24;
    }

    v12 = __OFADD__(v15, 1);

    ++v15;
    v13 += 2;
    v14 += 24;
  }

  while (v6 + v15 - 1 >= v6);
  __break(1u);
LABEL_24:

  v18 = v6 + v15;
  v4 = v43;
  if (v6 + v15 != a2)
  {
    goto LABEL_27;
  }

LABEL_53:
  result = v45;
  v36 = *(v45 + 3);
  if (v36 < 2)
  {
    return result;
  }

  v37 = v36 >> 1;
  v26 = __OFSUB__(v37, v11);
  v38 = v37 - v11;
  if (v26)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  *(v45 + 2) = v38;
  return result;
}

uint64_t sub_26F14FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for DragView() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_26F14D03C(a1, a2, a3, v10, a4);
}

uint64_t sub_26F150058()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F150090(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

uint64_t sub_26F1500C8()
{
  v1 = *(type metadata accessor for DragView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F17F9E4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26F14D610(v0 + v2);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for DragView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + v1[5]);

  v10 = *(v5 + v1[6] + 32);

  v11 = (v5 + v1[7]);
  v12 = *v11;

  v13 = v11[1];

  v14 = (v5 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(v5 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F150358(double a1, double a2)
{
  v5 = *(type metadata accessor for DragView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F14D78C(v6, a1, a2);
}

uint64_t sub_26F1503D0(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for DragView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = sub_26F17F9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v24 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = v2 | v6;
  v12 = (v3 + v23 + v6) & ~v6;
  v13 = *(v7 + v1[5]);

  v14 = *(v7 + v1[6] + 32);

  v15 = (v7 + v1[7]);
  v16 = *v15;

  v17 = v15[1];

  v18 = (v7 + v1[8]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v7 + v1[9]);

  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x2821FE8E8](v0, v12 + v24, v11 | 7);
}

uint64_t sub_26F15065C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DragView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17F9E4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F14DC50(a1, a2, v2 + v6);
}

unint64_t sub_26F150740()
{
  result = qword_2806D48B8;
  if (!qword_2806D48B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4880, &qword_26F182430);
    sub_26F1507F8();
    sub_26F13AC54(&qword_2806D48F8, &qword_2806D4900, &qword_26F182480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48B8);
  }

  return result;
}

unint64_t sub_26F1507F8()
{
  result = qword_2806D48C0;
  if (!qword_2806D48C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D48B0, &qword_26F182470);
    sub_26F1508B0();
    sub_26F13AC54(&qword_2806D48E8, &qword_2806D48F0, &qword_26F182478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48C0);
  }

  return result;
}

unint64_t sub_26F1508B0()
{
  result = qword_2806D48C8;
  if (!qword_2806D48C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4878, &qword_26F182428);
    sub_26F15093C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48C8);
  }

  return result;
}

unint64_t sub_26F15093C()
{
  result = qword_2806D48D0;
  if (!qword_2806D48D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4870, &qword_26F182420);
    sub_26F1509C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48D0);
  }

  return result;
}

unint64_t sub_26F1509C8()
{
  result = qword_2806D48D8;
  if (!qword_2806D48D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4868, &qword_26F182418);
    sub_26F13AC54(&qword_2806D48E0, &qword_2806D4860, &qword_26F182410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D48D8);
  }

  return result;
}

uint64_t sub_26F150A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4880, &qword_26F182430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F150AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F150B30(uint64_t a1)
{
  v2 = type metadata accessor for DraggableLocationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F150C28@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F180354();
  result = sub_26F17F9C4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

void *TryItAnalyticsEvent.__allocating_init(identifier:tipId:correlationId:collectionId:lessonId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  result[11] = a10;
  return result;
}

void *TryItAnalyticsEvent.init(identifier:tipId:correlationId:collectionId:lessonId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[10] = 0;
  v10[11] = 0;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;

  v11 = v10[11];
  v10[10] = a9;
  v10[11] = a10;

  return v10;
}

unint64_t sub_26F150D68()
{
  v14 = sub_26F151B3C(MEMORY[0x277D84F90]);
  if (v0[5])
  {
    v1 = v0[4];

    v2 = sub_26F180724();
  }

  else
  {
    v2 = 0;
  }

  sub_26F150F60(v2, 0x64695F706974, 0xE600000000000000);
  if (v0[7])
  {
    v3 = v0[6];
    v4 = v0[7];

    v5 = sub_26F180724();
  }

  else
  {
    v5 = 0;
  }

  sub_26F150F60(v5, 0xD000000000000012, 0x800000026F184810);
  if (v0[9])
  {
    v6 = v0[8];
    v7 = v0[9];

    v8 = sub_26F180724();
  }

  else
  {
    v8 = 0;
  }

  sub_26F150F60(v8, 0x697463656C6C6F63, 0xED000044495F6E6FLL);
  if (v0[11])
  {
    v9 = v0[10];

    v10 = sub_26F180724();
  }

  else
  {
    v10 = 0;
  }

  sub_26F150F60(v10, 0x495F6E6F7373656CLL, 0xE900000000000044);
  [objc_opt_self() isSeniorUser];
  v11 = sub_26F1808B4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26F151544(v11, 0x67616C665F353675, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  return v14;
}

uint64_t sub_26F150F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_26F151544(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_26F14ECAC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_26F1516BC();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_26F151394(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void *TryItAnalyticsEvent.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return v0;
}

uint64_t TryItAnalyticsEvent.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_26F1510F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
  v39 = a2;
  result = sub_26F180AE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26F180B94();
      sub_26F1807B4();
      result = sub_26F180BB4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26F151394(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F180A54() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26F180B94();

      sub_26F1807B4();
      v13 = sub_26F180BB4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26F151544(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F14ECAC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26F1510F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26F14ECAC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26F180B54();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26F1516BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_26F1516BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
  v2 = *v0;
  v3 = sub_26F180AD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_26F151828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4958, &unk_26F1825C0);
    v3 = sub_26F180AF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F13A854(v4, &v11, &qword_2806D43C8, &unk_26F181F00);
      v5 = v11;
      result = sub_26F14EC18(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26F151CBC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F151950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4920, &qword_26F182498);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4948, &qword_26F1825B0);
    v8 = sub_26F180AF4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26F13A854(v10, v6, &qword_2806D4920, &qword_26F182498);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26F14ECAC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_26F180714();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F151B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4950, &qword_26F1825B8);
    v3 = sub_26F180AF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26F14ECAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_26F151CBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26F151CCC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F151E0C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_26F17F874();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_26F17F834();
  v66 = *(v68 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PinchZoomView();
  v8 = v7 - 8;
  v64 = *(v7 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F17F854();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4980, &qword_26F182668);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4988, &qword_26F182670);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4990, &qword_26F182678);
  v60 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4998, &qword_26F182680);
  v69 = *(v67 - 8);
  v23 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v76 = &v57 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49A0, &qword_26F182688);
  v26 = *(v25 - 8);
  v70 = v25;
  v71 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v65 = &v57 - v28;
  v29 = *(v8 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
  sub_26F180434();
  v30 = sub_26F17F804();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  sub_26F17F844();
  v61 = v22;
  sub_26F17F7F4();
  v31 = v1;
  v32 = v10;
  sub_26F152E48(v1, v10);
  v33 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v64 = *(v64 + 80);
  v34 = swift_allocObject();
  sub_26F152EB0(v10, v34 + v33);
  v35 = &v22[*(v19 + 36)];
  *v35 = sub_26F152F14;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v31;
  v37 = v62;
  sub_26F180414();
  sub_26F17F814();
  (*(v66 + 8))(v37, v68);
  v38 = v81;
  v39 = v82;
  if (v83)
  {
    v38 = 0;
    v39 = 0;
  }

  v77 = v38;
  v78 = v39;
  LOBYTE(v79) = v83 & 1;
  v59 = v31;
  sub_26F152E48(v31, v10);
  v40 = swift_allocObject();
  sub_26F152EB0(v10, v40 + v33);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49A8, &qword_26F182690);
  v42 = sub_26F152F44();
  v43 = sub_26F153034();
  v44 = v60;
  v45 = v61;
  sub_26F180324();

  sub_26F13AB10(v45, &qword_2806D4990, &qword_26F182678);
  v46 = v72;
  sub_26F17F864();
  v58 = v32;
  sub_26F152E48(v36, v32);
  v47 = swift_allocObject();
  sub_26F152EB0(v32, v47 + v33);
  v77 = v44;
  v78 = v41;
  v79 = v42;
  v80 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v65;
  v50 = v46;
  v51 = v67;
  v52 = v76;
  sub_26F1801C4();

  (*(v73 + 8))(v50, v74);
  (*(v69 + 8))(v52, v51);
  v53 = v58;
  sub_26F152E48(v59, v58);
  v54 = swift_allocObject();
  sub_26F152EB0(v53, v54 + v33);
  v77 = v51;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v55 = v70;
  sub_26F180254();

  return (*(v71 + 8))(v49, v55);
}

uint64_t sub_26F152600()
{
  v0 = sub_26F151CCC();
  if (*(v0 + 52) == 1)
  {
    *(v0 + 52) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F1532A8(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7B4();
  }

  *(sub_26F151CCC() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) = 3;
}

uint64_t sub_26F152754(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if ((v4 & 1) == 0)
  {
    return sub_26F180424();
  }

  return result;
}