uint64_t sub_275755034(uint64_t a1, int a2, uint64_t a3)
{
  v37 = a2;
  v4 = sub_275796850();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_2757968B0();
  v12 = sub_27575542C();
  sub_275798260();
  sub_275798290();
  result = sub_275798280();
  if (result < 1)
  {
    return result;
  }

  sub_275754F34(a3);
  sub_275798260();
  sub_275798290();
  v32 = sub_275798280();
  sub_275798260();
  result = sub_275798290();
  v14 = v38;
  v15 = v39;
  if (v38 < v39)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v39 == v38)
  {
    return result;
  }

  if (v39 >= v38)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v34 = v12;
  v35 = v10;
  v36 = v11;
  v16 = (v5 + 8);
  v17 = 0.0;
  v33 = v38;
  do
  {
    v20 = v15++;
    if ((v20 & 1) == 0)
    {
      sub_2757968C0();
      if (v37)
      {
        sub_275796A20();
        LOBYTE(v39) = v21 & 1;
        LOBYTE(v38) = v22 & 1;
        sub_275796820();
      }

      v23 = *v16;
      v24 = v4;
      (*v16)(v10, v4);
      sub_275798260();
      sub_275798290();
      v25 = v4;
      v26 = sub_275798280();
      sub_2757968C0();
      if (v15 >= v26)
      {
        LOBYTE(v39) = 0;
        LOBYTE(v38) = 1;
        sub_275796820();
        v19 = v18;
        result = (v23)(v8, v24);
        v17 = v17 + v19;
      }

      else
      {
        LOBYTE(v39) = 0;
        LOBYTE(v38) = 1;
        sub_275796820();
        v28 = v27;
        v23(v8, v25);
        sub_2757968C0();
        LOBYTE(v39) = 0;
        LOBYTE(v38) = 1;
        sub_275796820();
        v30 = v29;
        result = (v23)(v8, v25);
        if (v28 > v30)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v17 = v17 + v31;
      }

      v4 = v25;
      v10 = v35;
      v14 = v33;
    }
  }

  while (v14 != v15);
  return result;
}

unint64_t sub_27575542C()
{
  result = qword_2809FF640;
  if (!qword_2809FF640)
  {
    sub_2757968B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF640);
  }

  return result;
}

uint64_t sub_2757554B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_275796850();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a2 & 1;
  if (a2 < 0)
  {
    v7 = -v7;
  }

  if (v7 == 1)
  {
    result = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_10:
        sub_2757968C0();
        v11 = 0;
        v10[0] = 1;
        sub_275796820();
        v9 = *(v4 + 8);
        v9(v6, v3);
        sub_2757968C0();
        v11 = 0;
        v10[0] = 1;
        sub_275796820();
        return (v9)(v6, v3);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (v7)
    {
LABEL_11:
      sub_2757968C0();
      v11 = 0;
      v10[0] = 1;
      sub_275796820();
      return (*(v4 + 8))(v6, v3);
    }

    sub_2757968B0();
    sub_27575542C();
    sub_275798260();
    sub_275798290();
    result = sub_275798280();
    if (!__OFADD__(a2, 1))
    {
      if (a2 + 1 < result)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27575577C()
{
  result = qword_2809FF648;
  if (!qword_2809FF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF648);
  }

  return result;
}

unint64_t sub_2757557D4()
{
  result = qword_2809FF650;
  if (!qword_2809FF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF650);
  }

  return result;
}

unint64_t sub_27575585C()
{
  result = qword_280A0A9E0[0];
  if (!qword_280A0A9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0A9E0);
  }

  return result;
}

unint64_t sub_2757558B4()
{
  result = qword_280A0AAF0[0];
  if (!qword_280A0AAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0AAF0);
  }

  return result;
}

uint64_t sub_275755908(uint64_t a1, int a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v43 = a2;
  v13 = sub_275796850();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  sub_275754F34(a3);
  v41 = v20;
  v46.origin.x = a4;
  v46.origin.y = a5;
  v46.size.width = a6;
  v46.size.height = a7;
  MinX = CGRectGetMinX(v46);
  v40.origin.x = a4;
  v40.origin.y = a5;
  v47.origin.x = a4;
  v47.origin.y = a5;
  v40.size.width = a6;
  v40.size.height = a7;
  v47.size.width = a6;
  v47.size.height = a7;
  MinY = CGRectGetMinY(v47);
  sub_2757968B0();
  sub_27575542C();
  sub_275798260();
  result = sub_275798290();
  v24 = v44;
  v25 = v45;
  if (v44 < v45)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v45 == v44)
  {
    return result;
  }

  if (v45 >= v44)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = *&a1;
  v27 = (v14 + 8);
  v28 = v26 * 0.5 - v41;
  v42 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  do
  {
    v34 = v24;
    sub_2757968C0();
    if (v43)
    {
      sub_275796A20();
      LOBYTE(v45) = v35 & 1;
      LOBYTE(v44) = v36 & 1;
      sub_275796820();
      v32 = v37;
      v29 = *v27;
      (*v27)(v19, v13);
      sub_2757554B0(a3, v25);
      v31 = v38;
    }

    else
    {
      v29 = *v27;
      (*v27)(v19, v13);
      sub_2757554B0(a3, v25);
      v31 = v30;
      CGRectGetMinX(v40);
      v32 = v28;
    }

    v33 = v25 + 1;
    sub_2757968C0();
    sub_275797890();
    LOBYTE(v45) = 0;
    LOBYTE(v44) = 0;
    sub_275796830();
    result = (v29)(v17, v13);
    if ((v25 & 0x8000000000000001) == 1)
    {
      MinY = MinY + v31 + 4.0;
    }

    MinX = MinX + v32;
    ++v25;
    v24 = v34;
  }

  while (v34 != v33);
  return result;
}

uint64_t sub_275755C64(double a1)
{
  v38 = sub_2757967A0();
  v2 = *(v38 - 8);
  v3 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v32 - v5;
  v40 = sub_275796850();
  v6 = *(v40 - 8);
  v7 = MEMORY[0x28223BE20](v40);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = sub_2757968B0();
  v12 = sub_27575542C();
  sub_275798260();
  result = sub_275798290();
  v14 = v43;
  v41 = v42;
  if (v42 < v43)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = 0.0;
  if (v43 == v41)
  {
    return v15 < a1;
  }

  if (v43 < v41)
  {
    v39 = (v6 + 8);
    v33 = (v2 + 8);
    v34 = v11;
    v32 = v12;
    while (1)
    {
      sub_2757968C0();
      sub_275796A20();
      LOBYTE(v43) = v16 & 1;
      LOBYTE(v42) = v17 & 1;
      sub_275796820();
      v19 = v18;
      sub_275798260();
      sub_275798290();
      result = sub_275798280();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      v20 = v14 + 1;
      v15 = v15 + v19;
      if (v14 == result - 1)
      {
        (*v39)(v10, v40);
      }

      else
      {
        v21 = v36;
        sub_275796840();
        v22 = v35;
        sub_2757968C0();
        v23 = v37;
        sub_275796840();
        v24 = *v39;
        v25 = v22;
        v26 = v40;
        (*v39)(v25, v40);
        sub_275796790();
        v28 = v27;
        v29 = *v33;
        v30 = v23;
        v31 = v38;
        (*v33)(v30, v38);
        v29(v21, v31);
        v24(v10, v26);
        v15 = v15 + v28;
      }

      v14 = v20;
      if (v41 == v20)
      {
        return v15 < a1;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_2809FF668)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809FF668);
    }
  }
}

__n128 sub_2757560B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  *v4 = sub_275796C80();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA60);
  sub_2757561F0(&v4[*(v5 + 44)]);
  sub_275797820();
  sub_275796A70();
  sub_27562DC4C(v4, a1);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF670) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_2757561F0@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_275796EB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA68);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2757967B0();
  sub_275796EA0();
  sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
  sub_27575682C();
  sub_275797180();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v17 = &v10[*(v26 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE280) + 28);
  v19 = *MEMORY[0x277CDF438];
  v20 = sub_275796720();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_27571428C();
  sub_275797300();
  sub_2756C92B4(v10, &qword_2809FEA68);
  sub_27562DCC4(v16, v14);
  v21 = v27;
  *v27 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA88);
  sub_27562DCC4(v14, v22 + *(v23 + 48));
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_2756C92B4(v16, &qword_2809FEA70);
  return sub_2756C92B4(v14, &qword_2809FEA70);
}

unint64_t sub_2757565F8()
{
  result = qword_2809FF678;
  if (!qword_2809FF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF678);
  }

  return result;
}

uint64_t sub_275756668(uint64_t a1)
{
  v2 = sub_2757567D8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2757566B4(uint64_t a1)
{
  v2 = sub_2757567D8();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_275756720()
{
  result = qword_2809FF680;
  if (!qword_2809FF680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF670);
    sub_2756CFA44(&qword_2809FE9F0, &qword_2809FE9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF680);
  }

  return result;
}

unint64_t sub_2757567D8()
{
  result = qword_2809FF688;
  if (!qword_2809FF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF688);
  }

  return result;
}

unint64_t sub_27575682C()
{
  result = qword_2809FEA78;
  if (!qword_2809FEA78)
  {
    sub_275796EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEA78);
  }

  return result;
}

id sub_275756884()
{
  sub_2757568E0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

unint64_t sub_2757568E0()
{
  result = qword_2809FF690;
  if (!qword_2809FF690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FF690);
  }

  return result;
}

uint64_t sub_275756990()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

void sub_275756A3C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_275756A98(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController_host;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_275729CC0;
}

id RemoteExtensionHostViewController.__allocating_init(host:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_275758798();

  return v4;
}

id RemoteExtensionHostViewController.init(host:)(void *a1)
{
  v2 = sub_275758798();

  return v2;
}

uint64_t sub_275756BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275796110();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_275756C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_275796280();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE170);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_275796110();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_275796080();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_275796090();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_2757960B0();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_2757981B0();
  v4[26] = sub_2757981A0();
  v11 = sub_275798160();
  v4[27] = v11;
  v4[28] = v10;

  return MEMORY[0x2822009F8](sub_275756EC4, v11, v10);
}

uint64_t sub_275756EC4()
{
  v1 = objc_opt_self();
  *(v0 + 232) = v1;
  v2 = [v1 extensionPointID];
  sub_275797F50();

  sub_275796070();
  sub_2757960A0();

  return MEMORY[0x2822009F8](sub_275756F8C, 0, 0);
}

uint64_t sub_275756F8C()
{
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  sub_275759150(&qword_2809FE168, MEMORY[0x277CC5D98]);
  sub_275798200();
  v1 = sub_275759150(&unk_2809FF740, MEMORY[0x277CC5D88]);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2757570D8;
  v3 = v0[15];

  return MEMORY[0x282200308](v0 + 5, v3, v1);
}

uint64_t sub_2757570D8()
{
  v2 = *v1;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_2757575B0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_275757270;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_275757270()
{
  v1 = v0[5];
  v0[31] = v1;
  if (v1)
  {
    v0[32] = sub_2757981A0();
    v2 = sub_275798160();
    v4 = v3;
    v5 = sub_275757624;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    (*(v0[19] + 8))(v0[21], v0[18]);
    v6 = v0[27];
    v7 = v0[28];
    v5 = sub_27575733C;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_27575733C()
{
  v30 = v0;

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_275700E70();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_275796270();
  v6 = sub_2757982F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[29];
    v8 = v0[23];
    v27 = v0[22];
    v28 = v0[24];
    v9 = v0[8];
    v25 = v0[7];
    v26 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v12 = [v7 extensionPointID];
    v13 = sub_275797F50();
    v15 = v14;

    v16 = sub_27562792C(v13, v15, &v29);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_275623000, v5, v6, "No extension found at id %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x277C81E50](v11, -1, -1);
    MEMORY[0x277C81E50](v10, -1, -1);

    (*(v9 + 8))(v26, v25);
    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[22];
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2757575B0()
{
  (*(v0[19] + 8))(v0[21], v0[18]);
  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_275759208, v1, v2);
}

uint64_t sub_275757624()
{

  return MEMORY[0x2822009F8](sub_27575768C, 0, 0);
}

uint64_t sub_27575768C()
{
  (*(v0[19] + 8))(v0[21], v0[18]);
  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_275757700, v1, v2);
}

uint64_t sub_275757700()
{
  v36 = v0;
  v1 = v0[31];
  if (*(v1 + 16))
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v0[33] = v5;
    v0[34] = v3 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v2, v1 + v6, v4);

    return MEMORY[0x2822009F8](sub_275757A0C, 0, 0);
  }

  else
  {

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = sub_275700E70();
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_275796270();
    v12 = sub_2757982F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[29];
      v14 = v0[23];
      v33 = v0[22];
      v34 = v0[24];
      v15 = v0[8];
      v31 = v0[7];
      v32 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      v18 = [v13 extensionPointID];
      v19 = sub_275797F50();
      v21 = v20;

      v22 = sub_27562792C(v19, v21, &v35);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_275623000, v11, v12, "No extension found at id %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x277C81E50](v17, -1, -1);
      MEMORY[0x277C81E50](v16, -1, -1);

      (*(v15 + 8))(v32, v31);
      (*(v14 + 8))(v34, v33);
    }

    else
    {
      v24 = v0[23];
      v23 = v0[24];
      v25 = v0[22];
      v27 = v0[8];
      v26 = v0[9];
      v28 = v0[7];

      (*(v27 + 8))(v26, v28);
      (*(v24 + 8))(v23, v25);
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_275757A0C()
{
  *(v0 + 280) = sub_2757981A0();
  v2 = sub_275798160();

  return MEMORY[0x2822009F8](sub_275757A98, v2, v1);
}

uint64_t sub_275757A98()
{
  v1 = v0[33];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[6];

  v1(v4, v2, v5);
  (*(v3 + 56))(v4, 0, 1, v5);
  v8 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController_appExtension;
  swift_beginAccess();
  sub_275759198(v4, v7 + v8);
  swift_endAccess();
  sub_2756C9074(v7 + v8, v6, &qword_2809FE170);
  (*((*MEMORY[0x277D85000] & *v7) + 0xB8))(v6);
  sub_2756C92B4(v6, &qword_2809FE170);
  sub_2756C92B4(v4, &qword_2809FE170);
  v9 = v0[27];
  v10 = v0[28];

  return MEMORY[0x2822009F8](sub_275757C04, v9, v10);
}

uint64_t sub_275757C04()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

void sub_275757D10()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController) = 0;
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController_appExtension;
  v2 = sub_275796110();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_275798820();
  __break(1u);
}

id sub_275757EA4()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController;
  v2 = *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = -2;
    }

    [v6 setModalPresentationStyle_];
    [v6 setModalInPresentation_];
    v10 = sub_27570FFE4();
    swift_beginAccess();
    [v6 setPreferredContentSize_];

    [v6 setDelegate_];
    v11 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_275757FE8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController) = a1;
}

void (*sub_275757FFC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_275757EA4();
  return sub_275758044;
}

void sub_275758044(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController) = v2;
}

void sub_27575805C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  [v0 presentPreferredSizeWithViewController:v1 animated:1 completion:0];
}

void sub_275758184(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF6B0);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v23 - v2;
  v3 = sub_275795F80();
  MEMORY[0x28223BE20](v3 - 8);
  v24 = sub_275798390();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE170);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_275796110();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_2756C9074(v23, v9, &qword_2809FE170);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_2756C92B4(v9, &qword_2809FE170);
    v18 = (*((*MEMORY[0x277D85000] & *v25) + 0x88))(v17);
    (*(v4 + 56))(v26, 1, 1, v24);
    sub_2757983A0();
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    sub_275795F70();
    v19 = sub_275798380();
    v20 = (*((*MEMORY[0x277D85000] & *v25) + 0x88))(v19);
    v21 = v26;
    v22 = v24;
    (*(v4 + 16))(v26, v6, v24);
    (*(v4 + 56))(v21, 0, 1, v22);
    sub_2757983A0();

    (*(v4 + 8))(v6, v22);
    (*(v11 + 8))(v16, v10);
  }
}

id RemoteExtensionHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_275797F10();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemoteExtensionHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteExtensionHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_275758798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController] = 0;
  v4 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController_appExtension;
  v5 = sub_275796110();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6 = type metadata accessor for RemoteExtensionHostViewController();
  v14.receiver = v0;
  v14.super_class = v6;
  v7 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  [v7 setModalPresentationStyle_];
  v8 = sub_2757981E0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_2757981B0();
  v9 = sub_2757981A0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  sub_2756F03A8(0, 0, v3, &unk_2757AC240, v10);

  return v7;
}

void sub_275758B9C(void *a1)
{
  v2 = v1;
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    sub_2756F13A0();
    v8 = swift_allocError();
    *v9 = 3;
  }

  v10 = a1;
  v11 = sub_275700E70();
  (*(v5 + 16))(v7, v11, v4);
  v12 = v8;
  v13 = sub_275796270();
  v14 = sub_275798310();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315906;
    *(v16 + 4) = sub_27562792C(0xD000000000000035, 0x80000002757B9A30, &v28);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_27562792C(0xD00000000000002ALL, 0x80000002757B9BD0, &v28);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 106;
    *(v16 + 32) = 2080;
    swift_getErrorValue();
    v18 = sub_2757989F0();
    v20 = sub_27562792C(v18, v19, &v28);

    *(v16 + 34) = v20;
    _os_log_impl(&dword_275623000, v13, v14, "%s: %s - line %ld: %s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v17, -1, -1);
    v21 = v16;
    v2 = v27;
    MEMORY[0x277C81E50](v21, -1, -1);
  }

  v22 = (*(v5 + 8))(v7, v4);
  v23 = MEMORY[0x277D85000];
  v24 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v22);
  if (v24)
  {
    v25 = v24;
    v26 = sub_275795C40();
    (*((*v23 & *v25) + 0xB0))();
  }

  else
  {
  }
}

uint64_t type metadata accessor for RemoteExtensionHostViewController()
{
  result = qword_280A0AD10;
  if (!qword_280A0AD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275758F2C()
{
  sub_275759064();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_275759064()
{
  if (!qword_2809FF718)
  {
    sub_275796110();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FF718);
    }
  }
}

uint64_t sub_2757590BC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return sub_275756C0C(v3, v4, v5, v2);
}

uint64_t sub_275759150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275759198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE170);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27575920C@<X0>(uint64_t a1@<X8>)
{
  sub_27575934C(a1);
  if (sub_2757979F0())
  {
  }

  else
  {
    sub_2756D5834(MEMORY[0x277D84F90]);
    sub_275797A00();
  }

  v1 = sub_2757979E0();
  v3 = MEMORY[0x277D837D0];
  if (*v2)
  {
    v9 = MEMORY[0x277D837D0];
    v7 = 0xD000000000000011;
    v8 = 0x80000002757B9C30;
    sub_275759BA0(&v7, 0x644965676170, 0xE600000000000000);
  }

  v1(v10, 0);
  v4 = sub_2757979E0();
  if (*v5)
  {
    v9 = v3;
    v7 = 0x6C61646F4DLL;
    v8 = 0xE500000000000000;
    sub_275759BA0(&v7, 0x6570795465676170, 0xE800000000000000);
  }

  return v4(v10, 0);
}

uint64_t sub_27575934C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_275797BC0();
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_275797A70();
  v59 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2757979D0();
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF750);
  v9 = *(sub_275797A20() - 8);
  v55 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v56 = v11;
  *(v11 + 16) = xmmword_2757A4FC0;
  v63 = v11 + v10;
  v61 = "RecommendedForYou";
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF758);
  inited = swift_initStackObject();
  v64 = xmmword_2757A8B60;
  *(inited + 16) = xmmword_2757A8B60;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_275797A60();
  v13 = sub_275797A50();
  v15 = v14;
  v60 = *(v4 + 8);
  v60(v6, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  v52 = sub_2756D5834(inited);
  swift_setDeallocating();
  sub_2756C92B4(inited + 32, &qword_2809FDAD0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF760);
  v16 = sub_275797DA0();
  v17 = *(*(v16 - 8) + 72);
  v18 = *(*(v16 - 8) + 80);
  v54 = *(v16 - 8);
  v19 = v54;
  v47 = v18;
  v20 = (v18 + 32) & ~v18;
  v49 = 3 * v17;
  v43 = 2 * v17;
  v41 = v17;
  v21 = swift_allocObject();
  v46 = xmmword_2757A4FA0;
  *(v21 + 16) = xmmword_2757A4FA0;
  v45 = sub_27575F078();
  v22 = *(v19 + 16);
  v42 = v19 + 16;
  v44 = v22;
  v39 = v16;
  v22(v21 + v20, v45, v16);
  sub_275797D80();
  sub_275797D90();
  sub_27575AD0C(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2757979C0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF768);
  v23 = v4 + 8;
  v51 = *(v4 + 72);
  v50 = *(v4 + 80);
  v24 = (v50 + 32) & ~v50;
  v25 = swift_allocObject();
  *(v25 + 16) = v64;
  sub_275797A60();
  sub_27575B02C(v25);
  swift_setDeallocating();
  v26 = v59;
  v27 = v60;
  v60((v25 + v24), v59);
  v40 = v23;
  swift_deallocClassInstance();
  sub_275797A10();
  v28 = swift_initStackObject();
  *(v28 + 16) = v64;
  *(v28 + 32) = 0x707954746E657665;
  *(v28 + 40) = 0xE900000000000065;
  sub_275797A40();
  v29 = sub_275797A50();
  v31 = v30;
  v27(v6, v26);
  *(v28 + 72) = MEMORY[0x277D837D0];
  *(v28 + 48) = v29;
  *(v28 + 56) = v31;
  sub_2756D5834(v28);
  swift_setDeallocating();
  sub_2756C92B4(v28 + 32, &qword_2809FDAD0);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  v33 = v39;
  v44(v32 + v20, v45, v39);
  sub_275797D80();
  sub_275797D90();
  v34 = sub_27575AD0C(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = swift_allocObject();
  *(v35 + 16) = v64;
  sub_275797D90();
  sub_27575B34C(v35, v34);
  swift_setDeallocating();
  (*(v54 + 8))(v35 + v20, v33);
  swift_deallocClassInstance();
  sub_2757979C0();
  v36 = swift_allocObject();
  *(v36 + 16) = v64;
  sub_275797A40();
  sub_27575B02C(v36);
  swift_setDeallocating();
  v60((v36 + v24), v59);
  swift_deallocClassInstance();
  sub_275797A10();
  sub_275797BB0();
  sub_2756D5834(MEMORY[0x277D84F90]);
  return sub_275797A30();
}

uint64_t sub_275759BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2756D5AA8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_27570A568(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2756C92B4(a1, &qword_2809FF7A0);
    sub_275759C70(a2, a3, v9);

    return sub_2756C92B4(v9, &qword_2809FF7A0);
  }

  return result;
}

double sub_275759C70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2756D57B0(a1, a2, sub_2756D56F8);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_27570A78C();
      v10 = v12;
    }

    sub_2756D5AA8((*(v10 + 56) + 32 * v8), a3);
    sub_275759D28(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_275759D28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2757985D0() + 1) & ~v5;
    do
    {
      sub_275798A40();

      sub_275797FF0();
      v10 = sub_275798A70();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_275759ED8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_275797DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_27575B4AC(&qword_2809FF770, MEMORY[0x277D22320]);
  v33 = a2;
  v11 = sub_275797ED0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_27575B4AC(&qword_2809FF778, MEMORY[0x277D22320]);
      v21 = sub_275797F00();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_27575A514(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_27575A1B8()
{
  v1 = v0;
  v35 = sub_275797DA0();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF780);
  result = sub_2757986D0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_27575B4AC(&qword_2809FF770, MEMORY[0x277D22320]);
      result = sub_275797ED0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_27575A514(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_275797DA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_27575A1B8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_27575A7B8();
      goto LABEL_12;
    }

    sub_27575A9F0();
  }

  v12 = *v3;
  sub_27575B4AC(&qword_2809FF770, MEMORY[0x277D22320]);
  v13 = sub_275797ED0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_27575B4AC(&qword_2809FF778, MEMORY[0x277D22320]);
      v21 = sub_275797F00();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2757989C0();
  __break(1u);
  return result;
}

void *sub_27575A7B8()
{
  v1 = v0;
  v2 = sub_275797DA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF780);
  v6 = *v0;
  v7 = sub_2757986C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_27575A9F0()
{
  v1 = v0;
  v32 = sub_275797DA0();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF780);
  v6 = sub_2757986D0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_27575B4AC(&qword_2809FF770, MEMORY[0x277D22320]);
      result = sub_275797ED0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_27575AD0C(uint64_t a1)
{
  v2 = sub_275797DA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF780);
    v9 = sub_2757986F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_27575B4AC(&qword_2809FF770, MEMORY[0x277D22320]);
      v16 = sub_275797ED0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_27575B4AC(&qword_2809FF778, MEMORY[0x277D22320]);
          v23 = sub_275797F00();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_27575B02C(uint64_t a1)
{
  v2 = sub_275797A70();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF788);
    v9 = sub_2757986F0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_27575B4AC(&qword_2809FF790, MEMORY[0x277D21BE0]);
      v16 = sub_275797ED0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_27575B4AC(&qword_2809FF798, MEMORY[0x277D21BE0]);
          v23 = sub_275797F00();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_27575B34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275797DA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_275759ED8(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_27575B4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27575B4F4()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_27575B548()
{
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  MEMORY[0x277C7F850](&v3, v1);
  return v3;
}

void (*sub_27575B5FC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 72);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_2756EA8C4(v3 + 48, v3 + 24);

  *(v4 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  MEMORY[0x277C7F850]();
  return sub_27575B6B8;
}

void sub_27575B6B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 56);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_275797740();
  sub_2756EA920(v1 + 48);

  free(v1);
}

uint64_t sub_27575B730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  sub_275797750();
  return v1;
}

uint64_t sub_27575B78C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_275795C10();
  MEMORY[0x28223BE20](v2 - 8);
  v26 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_275796280();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_275795B60();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275795B70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275795B90();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v22 = v1;
  v23 = v16;
  v30 = v16;
  v31 = v17;
  swift_bridgeObjectRetain_n();
  MEMORY[0x277C80130](23328, 0xE200000000000000);
  v18 = sub_2756ED35C();
  MEMORY[0x277C80130](v18);

  MEMORY[0x277C80130](10333, 0xE200000000000000);
  v21[1] = "xp_ase_icloudsettings_ue";
  MEMORY[0x277C80130](0xD000000000000057, 0x80000002757B9C70);
  MEMORY[0x277C80130](41, 0xE100000000000000);
  v19 = sub_275795CB0();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  (*(v9 + 104))(v11, *MEMORY[0x277CC8BB0], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC8B98], v28);
  sub_275795B80();
  sub_275795BA0();
}

uint64_t sub_27575BD88@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_275795C10();
  MEMORY[0x28223BE20](v1 - 8);
  v20[4] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_275796280();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_275795B60();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275795B70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_275795B90();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v20 - v14;
  v26 = 91;
  v27 = 0xE100000000000000;
  v20[3] = "s been configured by a profile.";
  v16 = sub_2756ED35C();
  MEMORY[0x277C80130](v16);

  MEMORY[0x277C80130](10333, 0xE200000000000000);
  v20[1] = "ABOUT_PRIVATE_RELAY_LINK_TITLE";
  v17 = sub_2756ED35C();
  MEMORY[0x277C80130](v17);

  MEMORY[0x277C80130](41, 0xE100000000000000);
  v18 = sub_275795CB0();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  (*(v9 + 104))(v11, *MEMORY[0x277CC8BB0], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CC8B98], v21);
  sub_275795B80();
  return sub_275795BA0();
}

uint64_t sub_27575C3A8@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7A8);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7B0);
  MEMORY[0x28223BE20](v16);
  v6 = &v14 - v5;
  v19 = *(v1 + 56);
  v20 = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  sub_275797750();
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7B8);
  sub_2756CFA44(&qword_2809FF7C0, &qword_2809FF7B8);
  sub_2757976E0();
  sub_275796CE0();
  sub_2756CFA44(&qword_2809FF7C8, &qword_2809FF7A8);
  v7 = v15;
  sub_275797260();

  (*(v2 + 8))(v4, v7);
  v8 = v17;
  sub_275796980();
  sub_2756C92B4(v6, &qword_2809FF7B0);
  v9 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7D0);
  v13 = (v8 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_275720ACC;
  v13[2] = v11;
  return result;
}

uint64_t sub_27575C6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_275796C70();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7E8);
  return sub_27575C734(v3, (a1 + *(v4 + 44)));
}

uint64_t sub_27575C734@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *a1;
  v11 = sub_275797530();
  *v9 = sub_275796D30();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF7F8);
  sub_27575C8A4(a1, &v9[*(v12 + 44)]);
  sub_2756C9074(v9, v7, &qword_2809FF7F0);
  *a2 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF800);
  sub_2756C9074(v7, a2 + *(v13 + 48), &qword_2809FF7F0);

  sub_2756C92B4(v9, &qword_2809FF7F0);
  sub_2756C92B4(v7, &qword_2809FF7F0);
}

uint64_t sub_27575C8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_275796CD0();
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF808);
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  MEMORY[0x28223BE20](v5);
  v98 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF810);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v114 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v97 - v11;
  v12 = sub_275795BD0();
  MEMORY[0x28223BE20](v12 - 8);
  v112 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_275796C80();
  v130 = 1;
  sub_275797820();
  sub_2757967D0();
  v14 = BYTE8(v137);
  v113 = BYTE8(v137);
  v111 = v138;
  v15 = BYTE8(v138);
  v102 = BYTE8(v138);
  v104 = v137;
  v109 = *(&v139 + 1);
  v105 = v139;
  v103 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  LOBYTE(v120) = v14;
  LOBYTE(v118) = v15;
  v117 = a1;
  v131 = *(a1 + 8);
  v120 = *(a1 + 8);

  sub_27575D7C8(&v131, &v118);
  sub_2756DC79C();
  v16 = sub_2757970D0();
  v18 = v17;
  v20 = v19;
  sub_275797000();
  v21 = sub_2757970A0();
  v23 = v22;
  v25 = v24;

  sub_2756E15EC(v16, v18, v20 & 1);

  sub_2757974F0();
  v26 = sub_275797070();
  v99 = v27;
  v100 = v26;
  LOBYTE(v18) = v28;
  v101 = v29;

  sub_2756E15EC(v21, v23, v25 & 1);

  v31 = v104;
  v30 = v105;
  *&v118 = v104;
  BYTE8(v118) = v113;
  HIDWORD(v118) = *(v148 + 3);
  *(&v118 + 9) = v148[0];
  *v119 = v111;
  v32 = v102;
  v119[8] = v102;
  *&v119[12] = *&v147[3];
  *&v119[9] = *v147;
  *&v119[16] = v105;
  *&v119[24] = v109;
  v33 = v103;
  *&v119[32] = KeyPath;
  *&v119[40] = v103;
  LOBYTE(v18) = v18 & 1;
  v146 = v18;
  v127 = *&v119[16];
  v128 = *&v119[32];
  v125 = v118;
  v126 = *v119;
  sub_2756C9074(&v118, &v120, &qword_2809FF850);
  v35 = v99;
  v34 = v100;
  sub_2756E0DD0(v100, v99, v18);
  v36 = v101;

  sub_2756E15EC(v34, v35, v18);

  *&v120 = v31;
  BYTE8(v120) = v113;
  *(&v120 + 9) = v148[0];
  HIDWORD(v120) = *(v148 + 3);
  *v121 = v111;
  v121[8] = v32;
  *&v121[9] = *v147;
  *&v121[12] = *&v147[3];
  *&v121[16] = v30;
  *&v121[24] = v109;
  *&v121[32] = KeyPath;
  *&v121[40] = v33;
  sub_2756C92B4(&v120, &qword_2809FF850);
  v131 = v125;
  v132 = v126;
  v133 = v127;
  v134 = v128;
  *&v135 = v34;
  *(&v135 + 1) = v35;
  LOBYTE(v136) = v18;
  DWORD1(v136) = *(&v118 + 3);
  *(&v136 + 1) = v118;
  *(&v136 + 1) = v36;
  v139 = v127;
  v140 = v128;
  v137 = v125;
  v138 = v126;
  v141 = v34;
  v142 = v35;
  v143 = v18;
  *&v144[3] = *(&v118 + 3);
  *v144 = v118;
  v145 = v36;
  sub_2756C9074(&v131, &v120, &qword_2809FF818);
  sub_2756C92B4(&v137, &qword_2809FF818);
  *&v129[39] = v133;
  *&v129[55] = v134;
  *&v129[71] = v135;
  *&v129[87] = v136;
  *&v129[7] = v131;
  *&v129[23] = v132;
  v113 = v130;
  sub_27575B78C(v112);
  v37 = sub_2757970C0();
  v39 = v38;
  LOBYTE(v36) = v40;
  sub_275796FF0();
  v41 = sub_2757970A0();
  v43 = v42;
  LOBYTE(v33) = v44;

  sub_2756E15EC(v37, v39, v36 & 1);

  sub_275797500();
  v45 = sub_275797070();
  v109 = v46;
  KeyPath = v45;
  LODWORD(v103) = v47;
  v111 = v48;

  sub_2756E15EC(v41, v43, v33 & 1);

  sub_27575BD88(v112);
  v49 = sub_2757970C0();
  v51 = v50;
  LOBYTE(v36) = v52;
  sub_275796FF0();
  v53 = sub_2757970A0();
  v55 = v54;
  LOBYTE(v33) = v56;
  v57 = v106;

  sub_2756E15EC(v49, v51, v36 & 1);

  sub_275797500();
  v58 = sub_275797070();
  v104 = v59;
  v105 = v58;
  v61 = v60;
  v112 = v62;

  sub_2756E15EC(v53, v55, v33 & 1);

  v63 = 1;
  if ((*(v117 + 48) & 1) == 0)
  {
    sub_275796CC0();
    sub_275796CB0();
    v64 = v61;
    sub_275797550();
    sub_275796C90();

    sub_275796CB0();
    sub_275796CF0();
    sub_2756E12D0();
    sub_275756884();
    v65 = sub_2757970B0();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF820);
    v73 = v98;
    v74 = &v98[*(v72 + 36)];
    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF828) + 28);
    sub_275796D40();
    v76 = sub_275796D50();
    (*(*(v76 - 8) + 56))(v74 + v75, 0, 1, v76);
    *v74 = swift_getKeyPath();
    *v73 = v65;
    *(v73 + 8) = v67;
    v77 = v69 & 1;
    v61 = v64;
    *(v73 + 16) = v77;
    *(v73 + 24) = v71;
    LODWORD(v65) = sub_275796E50();
    *(v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF830) + 36)) = v65;
    v78 = sub_275796FF0();
    v79 = swift_getKeyPath();
    v80 = (v73 + *(v57 + 36));
    *v80 = v79;
    v80[1] = v78;
    sub_27575D758(v73, v116);
    v63 = 0;
  }

  v81 = v116;
  (*(v107 + 56))(v116, v63, 1, v57);
  LOBYTE(v125) = v103 & 1;
  v82 = v103 & 1;
  LODWORD(v117) = v103 & 1;
  sub_2756C9074(v81, v114, &qword_2809FF810);
  v118 = v115;
  v119[0] = v113;
  *&v119[17] = *&v129[16];
  *&v119[1] = *v129;
  *&v119[81] = *&v129[80];
  *&v119[65] = *&v129[64];
  *&v119[49] = *&v129[48];
  v83 = *&v129[95];
  *&v119[96] = *&v129[95];
  *&v119[33] = *&v129[32];
  v84 = *&v119[32];
  v85 = v108;
  v86 = v109;
  *(v108 + 32) = *&v119[16];
  *(v85 + 48) = v84;
  v87 = *&v119[80];
  v88 = *&v119[48];
  *(v85 + 80) = *&v119[64];
  *(v85 + 96) = v87;
  *(v85 + 64) = v88;
  v89 = *v119;
  *v85 = v118;
  *(v85 + 16) = v89;
  v90 = KeyPath;
  v91 = v111;
  *(v85 + 112) = v83;
  *(v85 + 120) = v90;
  *(v85 + 128) = v86;
  *(v85 + 136) = v82;
  v92 = v104;
  v93 = v105;
  *(v85 + 144) = v91;
  *(v85 + 152) = v93;
  *(v85 + 160) = v92;
  *(v85 + 168) = v61 & 1;
  *(v85 + 176) = v112;
  v94 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF838) + 80);
  v95 = v114;
  sub_2756C9074(v114, v94, &qword_2809FF810);
  sub_2756C9074(&v118, &v120, &qword_2809FF840);
  sub_2756E0DD0(v90, v86, v117);

  sub_2756E0DD0(v93, v92, v61 & 1);

  sub_2756C92B4(v116, &qword_2809FF810);
  sub_2756C92B4(v95, &qword_2809FF810);
  sub_2756E15EC(v93, v92, v61 & 1);

  sub_2756E15EC(v90, v86, v125);

  v122 = *&v129[48];
  v123 = *&v129[64];
  v124[0] = *&v129[80];
  *&v121[1] = *v129;
  *&v121[17] = *&v129[16];
  v120 = v115;
  v121[0] = v113;
  *(v124 + 15) = *&v129[95];
  *&v121[33] = *&v129[32];
  return sub_2756C92B4(&v120, &qword_2809FF840);
}

uint64_t sub_27575D370@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
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

uint64_t sub_27575D418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_27575D460(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_27575D4C4()
{
  result = qword_2809FF7D8;
  if (!qword_2809FF7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF7D0);
    sub_27575D57C();
    sub_2756CFA44(&qword_2809FED08, &qword_2809FED10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF7D8);
  }

  return result;
}

unint64_t sub_27575D57C()
{
  result = qword_2809FF7E0;
  if (!qword_2809FF7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF7B0);
    sub_2756CFA44(&qword_2809FF7C8, &qword_2809FF7A8);
    sub_27575D634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF7E0);
  }

  return result;
}

unint64_t sub_27575D634()
{
  result = qword_2809FDD90;
  if (!qword_2809FDD90)
  {
    sub_275796F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD90);
  }

  return result;
}

uint64_t sub_27575D6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF848);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2756C9074(a1, &v5 - v3, &qword_2809FF848);
  return sub_275796B60();
}

uint64_t sub_27575D758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27575D824()
{
  v0 = sub_275795D60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795D50();
  v4 = sub_275795D40();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_280A0D890 = v4;
  qword_280A0D898 = v6;
  return result;
}

uint64_t *sub_27575D904()
{
  if (qword_280A0ADD0 != -1)
  {
    swift_once();
  }

  return &qword_280A0D890;
}

uint64_t sub_27575D954()
{
  if (qword_280A0ADD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280A0D890;

  return v0;
}

uint64_t sub_27575D9D8(uint64_t a1, uint64_t a2)
{
  if (qword_280A0ADD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280A0D890 = a1;
  qword_280A0D898 = a2;
}

uint64_t sub_27575DA64()
{
  v0 = sub_275795D60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280A0ADD0 != -1)
  {
    swift_once();
  }

  sub_275795D50();
  v4 = sub_275795D40();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  qword_280A0D890 = v4;
  qword_280A0D898 = v6;
}

uint64_t sub_27575DB94@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22348];
  v3 = sub_275797DB0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_27575DC4C(uint64_t a1, uint64_t a2)
{
  v2[79] = a2;
  v2[78] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF858);
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v4 = sub_275795D30();
  v2[84] = v4;
  v2[85] = *(v4 - 8);
  v2[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27575DD84, 0, 0);
}

uint64_t sub_27575DD84()
{
  v1 = v0[79];
  v0[2] = v0;
  v0[7] = v0 + 77;
  v0[3] = sub_27575DEA0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF860);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27575E928;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 fetchStorageSummaryWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27575DEA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 696) = v1;
  if (v1)
  {
    v2 = sub_27575E890;
  }

  else
  {
    v2 = sub_27575DFB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27575DFB0()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  *(v0 + 704) = *(v0 + 616);
  sub_275795D10();
  sub_275795CF0();
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  *(v0 + 144) = trunc(v5 / 3600.0) * 3600.0 * 1000.0;
  *(v0 + 168) = MEMORY[0x277D839F8];
  sub_2756D5AA8((v0 + 144), (v0 + 176));
  v6 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 176), 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    sub_275797F50();

    sub_275797FD0();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  v11 = 0x72656D6F74737563;
  if (has_internal_ui)
  {
    v11 = 0x6C616E7265746E69;
  }

  v12 = MEMORY[0x277D837D0];
  *(v0 + 232) = MEMORY[0x277D837D0];
  *(v0 + 208) = v11;
  *(v0 + 216) = 0xE800000000000000;
  sub_2756D5AA8((v0 + 208), (v0 + 240));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 240), 0x7542746E65696C63, 0xEF65707954646C69, v13);
  if (qword_280A0ADD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_280A0D890;
  v15 = qword_280A0D898;
  *(v0 + 296) = v12;
  *(v0 + 272) = v14;
  *(v0 + 280) = v15;
  sub_2756D5AA8((v0 + 272), (v0 + 304));

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 304), 0x496E6F6973736573, 0xE900000000000064, v16);
  *(v0 + 360) = MEMORY[0x277D839B0];
  *(v0 + 336) = 1;
  sub_2756D5AA8((v0 + 336), (v0 + 368));
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 368), 0xD000000000000017, 0x80000002757B9E00, v17);
  *(v0 + 712) = v6;
  type metadata accessor for FamilySharingHelper();
  v18 = sub_2756CC6AC();
  v19 = swift_task_alloc();
  *(v0 + 720) = v19;
  *v19 = v0;
  v19[1] = sub_27575E354;
  v20 = *(v0 + 624);

  return sub_27576A2A4(v20, v18 & 1);
}

uint64_t sub_27575E354(uint64_t a1)
{
  *(*v1 + 728) = a1;

  return MEMORY[0x2822009F8](sub_27575E454, 0, 0);
}

uint64_t sub_27575E454()
{
  v1 = *(v0 + 728);
  if (v1)
  {
    if (sub_275798320())
    {
      v2 = 0xE900000000000072;
      v3 = 0x6573616863727550;
    }

    else
    {
      v4 = sub_275798330();
      if (v4 >> 62)
      {
        v5 = sub_275798640();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v5 <= 0)
      {
        v3 = 0x7564697669646E49;
      }

      else
      {
        v3 = 0x7265626D654DLL;
      }

      if (v5 <= 0)
      {
        v2 = 0xEA00000000006C61;
      }

      else
      {
        v2 = 0xE600000000000000;
      }
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  v6 = *(v0 + 712);
  v7 = *(v0 + 704);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  *(v0 + 424) = MEMORY[0x277D837D0];
  *(v0 + 400) = v3;
  *(v0 + 408) = v2;
  sub_2756D5AA8((v0 + 400), (v0 + 432));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 432), 0xD00000000000001BLL, 0x80000002757B9E20, isUniquelyReferenced_nonNull_native);
  v29 = v6;
  v13 = [v7 totalStorage];
  [v13 doubleValue];

  v14 = objc_opt_self();
  v15 = [v14 bytes];
  sub_27575F310();
  sub_275795B00();
  v16 = [v14 megabytes];
  sub_275795B20();

  sub_275795B10();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v9, v11);
  v19(v8, v11);
  *(v0 + 488) = MEMORY[0x277D839F8];
  *(v0 + 464) = v18;
  sub_2756D5AA8((v0 + 464), (v0 + 496));
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 496), 0xD00000000000001FLL, 0x80000002757B9E40, v20);
  v21 = [v7 usedStorage];
  [v21 doubleValue];

  v22 = [v14 bytes];
  sub_275795B00();
  v23 = [v14 megabytes];
  sub_275795B20();

  sub_275795B10();
  v25 = v24;
  v19(v9, v11);
  v19(v8, v11);
  *(v0 + 552) = MEMORY[0x277D839F8];
  *(v0 + 528) = v25;
  sub_2756D5AA8((v0 + 528), (v0 + 560));
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v0 + 560), 0xD000000000000021, 0x80000002757B9E60, v26);

  v27 = *(v0 + 8);

  return v27(v29);
}

uint64_t sub_27575E890()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27575E928(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00130);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_27575EA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF870);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27575EAB8, 0, 0);
}

uint64_t sub_27575EAB8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  sub_275797BA0();
  sub_27575F35C();
  sub_275797C60();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_27575EBBC;
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);

  return sub_27575DC4C(v3, v2);
}

uint64_t sub_27575EBBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_27575EF00;
  }

  else
  {
    v4 = sub_27575ECD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_27575ECD0()
{
  v1 = 0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v24 = *(v0 + 216);
  v7 = -1;
  v8 = -1 << *(v24 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_12:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(v24 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_275627B04(*(v24 + 56) + 32 * v15, v0 + 112);
      *(v0 + 64) = v18;
      *(v0 + 72) = v17;
      sub_2756D5AA8((v0 + 112), (v0 + 80));

      v13 = v11;
LABEL_13:
      v19 = *(v0 + 80);
      *(v0 + 16) = *(v0 + 64);
      *(v0 + 32) = v19;
      *(v0 + 48) = *(v0 + 96);
      if (!*(v0 + 24))
      {
        v21 = *(v0 + 200);

        sub_27575F3B4(v21);

        v22 = *(v0 + 8);
        goto LABEL_20;
      }

      v1 = v13;
      v20 = *(v0 + 176);
      sub_2756D5AA8((v0 + 32), (v0 + 144));
      __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
      sub_275797C50();
      if (v2)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 144);

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v23 = *(v0 + 200);

    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
    sub_27575F3B4(v23);

    v22 = *(v0 + 8);
LABEL_20:

    v22();
  }

  else
  {
LABEL_5:
    if (v10 <= v1 + 1)
    {
      v12 = v1 + 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v9 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_13;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_27575EF00()
{
  sub_27575F3B4(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27575EF84(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2756DBB90;

  return sub_27575EA18(a1, v7, v5, v4);
}

uint64_t sub_27575F11C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0x655364756F6C4369, 0xEE0073676E697474);
}

uint64_t sub_27575F1D4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_27575F26C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_27575F310()
{
  result = qword_2809FF868;
  if (!qword_2809FF868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FF868);
  }

  return result;
}

unint64_t sub_27575F35C()
{
  result = qword_2809FF878;
  if (!qword_2809FF878)
  {
    sub_275797BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF878);
  }

  return result;
}

uint64_t sub_27575F3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_27575F46C()
{
  v0 = sub_275796280();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275700E70();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_275796270();
  v6 = sub_2757982E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_275623000, v5, v6, "Add time sensitive metrics", v7, 2u);
    MEMORY[0x277C81E50](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_27575F604()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_27575F634()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_27575F664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return v1;
}

void (*sub_27575F708(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_27575F824(v3 + 48, v3 + 32);
  *(v5 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  return sub_27575F7B8;
}

void sub_27575F7B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_2757975C0();
  sub_2756C92B4(v1, &qword_2809FD8E8);

  free(v1);
}

uint64_t sub_27575F824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27575F894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  return v1;
}

uint64_t sub_27575F8E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_275796E60();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v1[7];
  if (v5)
  {
    v6 = v1[6];
    v40 = *v2;

    v39 = sub_275796D20();
    v38 = sub_275796C80();
    *&v51 = v6;
    *(&v51 + 1) = v5;
    sub_2756DC79C();

    v7 = sub_2757970D0();
    v9 = v8;
    v11 = v10;
    sub_275796FF0();
    v12 = sub_2757970A0();
    v34 = v14;
    v35 = v13;
    LOBYTE(v6) = v15;

    sub_2756E15EC(v7, v9, v11 & 1);

    sub_275797500();
    v16 = v35;
    v17 = sub_275797070();
    v36 = v18;
    v37 = v17;
    LOBYTE(v9) = v19;
    v21 = v20;

    sub_2756E15EC(v12, v16, v6 & 1);

    sub_275797820();
    sub_2757967D0();
    LOBYTE(v60) = 0;
    *&v51 = v40;
    *(&v51 + 1) = v37;
    *&v52 = v36;
    BYTE8(v52) = v9 & 1;
    *&v53[0] = v21;
    *(&v53[0] + 1) = v39;
    *&v53[1] = v38;
    BYTE8(v55[1]) = 0;
  }

  else
  {
    v22 = *v1;

    sub_275797820();
    sub_2757967D0();
    v59 = BYTE8(v60);
    v58 = v62;
    v57 = 1;
    *&v51 = v22;
    *(&v51 + 1) = v60;
    LOBYTE(v52) = BYTE8(v60);
    *(&v52 + 1) = v61;
    LOBYTE(v53[0]) = v62;
    *(v53 + 8) = v63;
    BYTE8(v55[1]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE450);
  sub_2757602CC();
  sub_2757002A8();
  sub_275796D80();
  v54 = v49;
  v55[0] = v50[0];
  *(v55 + 9) = *(v50 + 9);
  v51 = v45;
  v52 = v46;
  v53[0] = v47;
  v53[1] = v48;
  v23 = swift_allocObject();
  v24 = *(v2 + 48);
  v23[3] = *(v2 + 32);
  v23[4] = v24;
  v23[5] = *(v2 + 64);
  v25 = *(v2 + 16);
  v23[1] = *v2;
  v23[2] = v25;
  *&v56 = sub_27575FE20;
  *(&v56 + 1) = v23;
  v60 = *(v2 + 64);
  sub_27575FE74(v2, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975D0();
  LODWORD(v40) = v46;
  v26 = swift_allocObject();
  v27 = *(v2 + 48);
  v26[3] = *(v2 + 32);
  v26[4] = v27;
  v26[5] = *(v2 + 64);
  v28 = *(v2 + 16);
  v26[1] = *v2;
  v26[2] = v28;
  sub_27575FE74(v2, &v45);
  v29 = sub_2757975F0();
  v30 = v41;
  *v41 = v29;
  v31 = v43;
  v32 = v44;
  (*(v43 + 104))(v30, *MEMORY[0x277CDE248], v44);
  v49 = v54;
  v50[0] = v55[0];
  v50[1] = v55[1];
  v50[2] = v56;
  v45 = v51;
  v46 = v52;
  v47 = v53[0];
  v48 = v53[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF890);
  sub_275760130();
  sub_275760464();
  sub_2757971D0();

  (*(v31 + 8))(v30, v32);
  return sub_2756C92B4(&v51, &qword_2809FF888);
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_27575FF04@<X0>(uint64_t a1@<X8>)
{
  v30 = sub_275796D20();
  sub_2756DC79C();

  v2 = sub_2757970D0();
  v27 = v3;
  v28 = v2;
  v26 = v4;
  v29 = v5;

  v6 = sub_2757970D0();
  v8 = v7;
  v10 = v9;
  sub_275796FF0();
  v11 = sub_2757970A0();
  v13 = v12;
  v15 = v14;

  sub_2756E15EC(v6, v8, v10 & 1);

  sub_275797500();
  v31 = sub_275797070();
  v17 = v16;
  LOBYTE(v8) = v18;
  v20 = v19;

  sub_2756E15EC(v11, v13, v15 & 1);

  sub_2756E0DD0(v28, v27, v26 & 1);

  sub_2756E0DD0(v31, v17, v8 & 1);

  sub_2756E15EC(v31, v17, v8 & 1);

  sub_2756E15EC(v28, v27, v26 & 1);

  LOBYTE(v6) = sub_275796FA0();
  result = sub_2757966F0();
  *a1 = v30;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v28;
  *(a1 + 32) = v27;
  *(a1 + 40) = v26 & 1;
  *(a1 + 48) = v29;
  *(a1 + 56) = v31;
  *(a1 + 64) = v17;
  *(a1 + 72) = v8 & 1;
  *(a1 + 80) = v20;
  *(a1 + 88) = v6;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = v24;
  *(a1 + 120) = v25;
  *(a1 + 128) = 0;
  return result;
}

unint64_t sub_275760130()
{
  result = qword_2809FF898;
  if (!qword_2809FF898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF888);
    sub_2757601BC();
    sub_275760410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF898);
  }

  return result;
}

unint64_t sub_2757601BC()
{
  result = qword_2809FF8A0;
  if (!qword_2809FF8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF8A8);
    sub_275760240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8A0);
  }

  return result;
}

unint64_t sub_275760240()
{
  result = qword_2809FF8B0;
  if (!qword_2809FF8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF8B8);
    sub_2757602CC();
    sub_2757002A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8B0);
  }

  return result;
}

unint64_t sub_2757602CC()
{
  result = qword_2809FF8C0;
  if (!qword_2809FF8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF8C8);
    sub_275760358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8C0);
  }

  return result;
}

unint64_t sub_275760358()
{
  result = qword_2809FF8D0;
  if (!qword_2809FF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF8D8);
    sub_2756CFA44(&qword_2809FF8E0, &qword_2809FF8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8D0);
  }

  return result;
}

unint64_t sub_275760410()
{
  result = qword_2809FF8F0;
  if (!qword_2809FF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8F0);
  }

  return result;
}

unint64_t sub_275760464()
{
  result = qword_2809FF8F8;
  if (!qword_2809FF8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF890);
    sub_2756CFA44(&qword_2809FF900, &qword_2809FF908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF8F8);
  }

  return result;
}

uint64_t sub_27576051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  result = sub_2757975A0();
  *a8 = a1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  *(a8 + 64) = v19;
  *(a8 + 72) = v20;
  return result;
}

double sub_275760630@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275796C70();
  v32 = 0;
  sub_27576094C(v2, &v16);
  v45 = v28;
  v46 = v29;
  v47[0] = *v30;
  *(v47 + 9) = *&v30[9];
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v48[12] = v28;
  v48[13] = v29;
  v49[0] = *v30;
  *(v49 + 9) = *&v30[9];
  v48[8] = v24;
  v48[9] = v25;
  v48[10] = v26;
  v48[11] = v27;
  v48[4] = v20;
  v48[5] = v21;
  v48[6] = v22;
  v48[7] = v23;
  v48[0] = v16;
  v48[1] = v17;
  v48[2] = v18;
  v48[3] = v19;
  sub_2756C9074(&v33, &v15, &qword_2809FF910);
  sub_2756C92B4(v48, &qword_2809FF910);
  *(&v31[12] + 7) = v45;
  *(&v31[13] + 7) = v46;
  *(&v31[14] + 7) = v47[0];
  v31[15] = *(v47 + 9);
  *(&v31[8] + 7) = v41;
  *(&v31[9] + 7) = v42;
  *(&v31[10] + 7) = v43;
  *(&v31[11] + 7) = v44;
  *(&v31[4] + 7) = v37;
  *(&v31[5] + 7) = v38;
  *(&v31[6] + 7) = v39;
  *(&v31[7] + 7) = v40;
  *(v31 + 7) = v33;
  *(&v31[1] + 7) = v34;
  *(&v31[2] + 7) = v35;
  *(&v31[3] + 7) = v36;
  v5 = v31[13];
  *(a1 + 209) = v31[12];
  *(a1 + 225) = v5;
  v6 = v31[15];
  *(a1 + 241) = v31[14];
  *(a1 + 257) = v6;
  v7 = v31[9];
  *(a1 + 145) = v31[8];
  *(a1 + 161) = v7;
  v8 = v31[11];
  *(a1 + 177) = v31[10];
  *(a1 + 193) = v8;
  v9 = v31[5];
  *(a1 + 81) = v31[4];
  *(a1 + 97) = v9;
  v10 = v31[7];
  *(a1 + 113) = v31[6];
  *(a1 + 129) = v10;
  v11 = v31[1];
  *(a1 + 17) = v31[0];
  *(a1 + 33) = v11;
  result = *&v31[2];
  v13 = v31[3];
  *(a1 + 49) = v31[2];
  v14 = v32;
  *a1 = v4;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v14;
  *(a1 + 65) = v13;
  return result;
}

uint64_t sub_27576094C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = *a1;

  sub_275797820();
  sub_2757967D0();
  v74 = v93;
  v75 = v91;
  v70 = v94;
  v71 = v92;
  v72 = v96;
  v73 = v95;
  v76 = sub_275796D30();
  v90 = 0;
  v4 = a1[2];
  v114 = a1[1];
  v115 = v4;
  sub_2756DC79C();

  v5 = sub_2757970D0();
  v79 = v6;
  v80 = v5;
  v8 = v7;
  v81 = v9;
  v10 = sub_275796FB0();
  v11 = sub_275796FD0();
  sub_275796FD0();
  if (sub_275796FD0() != v10)
  {
    v11 = sub_275796FD0();
  }

  sub_2757966F0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v78 = v8 & 1;
  v126 = v8 & 1;
  v125 = 0;
  v20 = sub_275796FC0();
  v21 = sub_275796FD0();
  sub_275796FD0();
  if (sub_275796FD0() != v20)
  {
    v21 = sub_275796FD0();
  }

  v69 = v21;
  sub_2757966F0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v127 = 0;
  v30 = a1[4];
  if (v30)
  {
    v114 = a1[3];
    v115 = v30;

    v31 = sub_2757970D0();
    v33 = v32;
    v35 = v34;
    sub_275796FF0();
    v36 = sub_2757970A0();
    v65 = v37;
    v67 = v36;
    v63 = v38;

    sub_2756E15EC(v31, v33, v35 & 1);

    sub_275797500();
    v39 = sub_275797070();
    v41 = v40;
    v64 = v42;
    v44 = v43;

    sub_2756E15EC(v67, v65, v63 & 1);

    v66 = v41;
    v68 = v39;
    v45 = v64 & 1;
    sub_2756E0DD0(v39, v41, v64 & 1);
    v46 = v44;
  }

  else
  {
    v66 = 0;
    v68 = 0;
    v45 = 0;
    v46 = 0;
  }

  *&v82 = v80;
  *(&v82 + 1) = v79;
  LOBYTE(v83) = v78;
  *(&v83 + 1) = v107[0];
  DWORD1(v83) = *(v107 + 3);
  *(&v83 + 1) = v81;
  LOBYTE(v84) = v11;
  *(&v84 + 1) = v97;
  DWORD1(v84) = *(&v97 + 3);
  *(&v84 + 1) = v13;
  *&v85 = v15;
  *(&v85 + 1) = v17;
  *&v86 = v19;
  BYTE8(v86) = 0;
  *(&v86 + 9) = v124[0];
  HIDWORD(v86) = *(v124 + 3);
  LOBYTE(v87) = v69;
  DWORD1(v87) = *(v123 + 3);
  *(&v87 + 1) = v123[0];
  *(&v87 + 1) = v23;
  *v88 = v25;
  *&v88[8] = v27;
  *&v88[16] = v29;
  v88[24] = 0;
  *&v113[16] = v84;
  *&v113[32] = v85;
  v112 = v82;
  *v113 = v83;
  *&v113[89] = *&v88[9];
  *&v113[64] = v87;
  *&v113[80] = *v88;
  *&v113[48] = v86;
  sub_2756C9074(&v82, &v114, &qword_2809FF998);
  sub_2756E171C(v68, v66, v45, v46);
  sub_2756E1760(v68, v66, v45, v46);
  sub_2756E1760(v68, v66, v45, v46);
  v114 = v80;
  v115 = v79;
  v116 = v78;
  LODWORD(v117) = v107[0];
  *(&v117 + 3) = *(v107 + 3);
  *(&v117 + 7) = v81;
  HIBYTE(v117) = v11;
  *v118 = v97;
  *&v118[3] = *(&v97 + 3);
  *&v118[7] = v13;
  *&v118[15] = v15;
  *&v118[23] = v17;
  *&v118[31] = v19;
  v118[39] = 0;
  *&v118[43] = *(v124 + 3);
  *&v118[40] = v124[0];
  v118[47] = v69;
  *&v119[3] = *(v123 + 3);
  *v119 = v123[0];
  *&v119[7] = v23;
  *&v119[15] = v25;
  *&v119[23] = v27;
  *&v119[31] = v29;
  v119[39] = 0;
  sub_2756C92B4(&v114, &qword_2809FF998);
  v101 = *&v113[48];
  v102 = *&v113[64];
  v103 = *&v113[80];
  v104 = *&v113[96];
  v97 = v112;
  v98 = *v113;
  v99 = *&v113[16];
  v100 = *&v113[32];
  v107[4] = *&v113[48];
  v107[5] = *&v113[64];
  v107[6] = *&v113[80];
  v107[7] = *&v113[96];
  v107[0] = v112;
  v107[1] = *v113;
  *&v105 = v68;
  *(&v105 + 1) = v66;
  *&v106 = v45;
  *(&v106 + 1) = v46;
  v107[2] = *&v113[16];
  v107[3] = *&v113[32];
  v108 = v68;
  v109 = v66;
  v110 = v45;
  v111 = v46;
  sub_2756C9074(&v97, &v114, &qword_2809FF988);
  sub_2756C92B4(v107, &qword_2809FF988);
  *&v89[55] = v100;
  *&v89[39] = v99;
  *&v89[103] = v103;
  *&v89[119] = v104;
  *&v89[135] = v105;
  *&v89[151] = v106;
  *&v89[71] = v101;
  *&v89[87] = v102;
  *&v89[7] = v97;
  *&v89[23] = v98;
  v47 = v90;
  v112 = v76;
  v113[0] = v90;
  v48 = *&v89[96];
  *&v113[113] = *&v89[112];
  v49 = *&v89[112];
  *&v113[129] = *&v89[128];
  v50 = *&v89[128];
  *&v113[145] = *&v89[144];
  v51 = *&v89[32];
  *&v113[49] = *&v89[48];
  v52 = *&v89[48];
  *&v113[65] = *&v89[64];
  v53 = *&v89[64];
  *&v113[81] = *&v89[80];
  v54 = *&v89[80];
  *&v113[97] = *&v89[96];
  v55 = *&v89[16];
  *&v113[1] = *v89;
  v56 = *v89;
  *&v113[17] = *&v89[16];
  *&v113[33] = *&v89[32];
  v57 = *&v113[128];
  *(a2 + 184) = *&v113[112];
  *(a2 + 200) = v57;
  *(a2 + 216) = *&v113[144];
  v58 = *&v113[64];
  *(a2 + 120) = *&v113[48];
  *(a2 + 136) = v58;
  v59 = *&v113[96];
  *(a2 + 152) = *&v113[80];
  *(a2 + 168) = v59;
  v60 = *v113;
  *(a2 + 56) = v112;
  *(a2 + 72) = v60;
  v61 = *&v113[32];
  *(a2 + 88) = *&v113[16];
  *(a2 + 104) = v61;
  v120 = v49;
  v121 = v50;
  *v122 = *&v89[144];
  *&v118[32] = v52;
  *v119 = v53;
  *&v119[16] = v54;
  *&v119[32] = v48;
  v117 = v56;
  *v118 = v55;
  LOBYTE(v124[0]) = v71;
  LOBYTE(v123[0]) = v70;
  *&v113[160] = *&v89[159];
  v127 = 1;
  *a2 = v77;
  *(a2 + 8) = v75;
  *(a2 + 16) = v71;
  *(a2 + 24) = v74;
  *(a2 + 32) = v70;
  *(a2 + 40) = v73;
  *(a2 + 48) = v72;
  *(a2 + 232) = *&v113[160];
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  v114 = v76;
  v115 = 0;
  v116 = v47;
  *&v122[15] = *&v89[159];
  *&v118[16] = v51;

  sub_2756C9074(&v112, &v82, &qword_2809FF990);
  sub_2756C92B4(&v114, &qword_2809FF990);
}

uint64_t sub_275761048@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double sub_275761058@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_275796D20();
  v24 = 1;
  sub_275797550();
  v3 = sub_275797720();
  sub_275797430();
  v4 = sub_2757974E0();

  sub_275797820();
  sub_275796A70();
  *v25 = v4;
  *&v25[8] = v37;
  *&v25[24] = v38;
  *&v25[40] = v39;
  *&v25[56] = v40;
  *&v25[104] = v43;
  *&v25[88] = v42;
  *&v25[72] = v41;
  v17 = *&v25[32];
  v18 = *&v25[48];
  v15 = *v25;
  v16 = *&v25[16];
  v20 = *&v25[80];
  v21 = *&v25[96];
  v19 = *&v25[64];
  v29 = v39;
  v28 = v38;
  v27 = v37;
  v22 = *(&v43 + 1);
  v26 = v4;
  v33 = v43;
  v32 = v42;
  v31 = v41;
  v30 = v40;

  sub_2756C9074(v25, v13, &qword_2809FF980);
  sub_2756C92B4(&v26, &qword_2809FF980);

  *&v25[104] = v19;
  *&v25[120] = v20;
  *&v25[136] = v21;
  *&v25[40] = v15;
  *&v25[56] = v16;
  *&v25[72] = v17;
  *&v25[88] = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  *v25 = v3;
  strcpy(&v25[8], "Family Sharing");
  v25[23] = -18;
  *&v25[24] = 0xD000000000000077;
  *&v25[32] = 0x80000002757B9EC0;
  *&v25[152] = v22;
  v26 = v3;
  strcpy(&v27, "Family Sharing");
  HIBYTE(v27) = -18;
  *&v28 = 0xD000000000000077;
  *(&v28 + 1) = 0x80000002757B9EC0;
  v36 = v22;
  v32 = v18;
  sub_2756C9074(v25, v13, &qword_2809FF918);
  sub_2756C92B4(&v26, &qword_2809FF918);
  *&v23[103] = *&v25[96];
  *&v23[119] = *&v25[112];
  *&v23[135] = *&v25[128];
  *&v23[151] = *&v25[144];
  *&v23[39] = *&v25[32];
  *&v23[55] = *&v25[48];
  *&v23[71] = *&v25[64];
  *&v23[87] = *&v25[80];
  *&v23[7] = *v25;
  *&v23[23] = *&v25[16];
  v5 = v24;
  sub_275797820();
  sub_2757967D0();
  v6 = *&v23[96];
  *(a1 + 129) = *&v23[112];
  v7 = *&v23[144];
  *(a1 + 145) = *&v23[128];
  *(a1 + 161) = v7;
  v8 = *&v23[32];
  *(a1 + 65) = *&v23[48];
  v9 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v9;
  *(a1 + 113) = v6;
  v10 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v10;
  *(a1 + 49) = v8;
  v11 = v13[1];
  *(a1 + 184) = v13[0];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 176) = *&v23[159];
  *(a1 + 200) = v11;
  result = v14[0];
  *(a1 + 216) = *v14;
  *(a1 + 232) = 0xD00000000000002DLL;
  *(a1 + 240) = 0x80000002757B9E90;
  return result;
}

unint64_t sub_275761440()
{
  result = qword_2809FF920;
  if (!qword_2809FF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF920);
  }

  return result;
}

uint64_t sub_2757614B4(uint64_t a1)
{
  v2 = sub_27576176C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_275761500(uint64_t a1)
{
  v2 = sub_27576176C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_27576154C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_275761594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2757615FC()
{
  result = qword_2809FF938;
  if (!qword_2809FF938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF940);
    sub_2757616B4();
    sub_2756CFA44(&qword_2809FF968, &qword_2809FF970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF938);
  }

  return result;
}

unint64_t sub_2757616B4()
{
  result = qword_2809FF948;
  if (!qword_2809FF948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF950);
    sub_2756CFA44(&qword_2809FF958, &qword_2809FF960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF948);
  }

  return result;
}

unint64_t sub_27576176C()
{
  result = qword_2809FF978;
  if (!qword_2809FF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF978);
  }

  return result;
}

uint64_t sub_2757617D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275761870;

  return MEMORY[0x2821E8768](a1);
}

uint64_t sub_275761870(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_275761980(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];
  v15 = v14;
  v16 = v14;

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if (v15 >= 3)
  {
    v20 = [a1 URL3x];
    if (v20)
    {
      v21 = v20;
      sub_275795C90();

      v22 = sub_275795CB0();
      (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
    }

    else
    {
      v26 = sub_275795CB0();
      (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    }
  }

  else if (v15 == 2)
  {
    v17 = [a1 URL2x];
    if (v17)
    {
      v18 = v17;
      sub_275795C90();

      v19 = sub_275795CB0();
      (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
    }

    else
    {
      v27 = sub_275795CB0();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    }

    v12 = v10;
  }

  else
  {
    v23 = [a1 URL1x];
    if (v23)
    {
      v24 = v23;
      sub_275795C90();

      v25 = sub_275795CB0();
      (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
    }

    else
    {
      v28 = sub_275795CB0();
      (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    }

    v12 = v7;
  }

  sub_275724320(v12, a2);
}

uint64_t sub_275761E54()
{

  v0 = sub_275762780();
  if (v0 == 43)
  {
    v0 = 17;
  }

  sub_275761F08(v0);

  return sub_2757973E0();
}

id static ICQUISwiftHelperFunctions.platformColorFromString(_:)()
{

  v0 = sub_275762780();
  if (v0 == 43)
  {
    v0 = 17;
  }

  return sub_275761F08(v0);
}

id sub_275761F08(char a1)
{
  v1 = [objc_opt_self() *off_27A65CC48[a1]];

  return v1;
}

id ICQUISwiftHelperFunctions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQUISwiftHelperFunctions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQUISwiftHelperFunctions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICQUISwiftHelperFunctions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQUISwiftHelperFunctions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UIButton.applyGlass(tinted:)(Swift::Bool tinted)
{
  v1 = tinted;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF9A0);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = &v20[-v3];
  v4 = sub_275798410();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_275798480();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2757984C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (_UISolariumEnabled())
  {
    v21 = v1;
    if (v1)
    {
      sub_275798430();
    }

    else
    {
      sub_2757984B0();
    }

    (*(v9 + 104))(v11, *MEMORY[0x277D75020], v8);
    sub_275798400();
    (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
    sub_275798420();
    if (!v21)
    {
      v16 = objc_opt_self();
      v17 = [v16 systemGray6Color];
      sub_275798450();
      v18 = [v16 labelColor];
      sub_275798460();
    }

    v19 = v22;
    (*(v13 + 16))(v22, v15, v12);
    (*(v13 + 56))(v19, 0, 1, v12);
    sub_2757984E0();
    (*(v13 + 8))(v15, v12);
  }
}

void sub_2757623BC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIButton.applyGlass(tinted:)(a3);
}

id sub_275762410(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_275796280();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v10 = sub_275797F10();
  v11 = [v9 initWithBundleIdentifier_];

  v12 = objc_opt_self();
  v13 = [v12 mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:64.0 scale:{64.0, v15}];
  [v16 setDrawBorder_];

  v17 = [v11 imageForDescriptor_];
  if (!v17)
  {
    v25 = sub_275700E70();
    (*(v30 + 16))(v8, v25, v6);

    v26 = sub_275796270();
    v27 = sub_2757982F0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_27562792C(a1, a2, &v31);
      _os_log_impl(&dword_275623000, v26, v27, "Unable to fetch icon for bundleID %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x277C81E50](v29, -1, -1);
      MEMORY[0x277C81E50](v28, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v8, v6);
    return 0;
  }

  v18 = v17;
  result = [v17 CGImage];
  if (result)
  {
    v20 = result;
    v21 = [v12 mainScreen];
    [v21 scale];
    v23 = v22;

    v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v20 scale:0 orientation:v23];
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_275762780()
{
  v0 = sub_2757989A0();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2757627F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI21OpenApplicationAction_bundleId;
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_275762870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_27576314C)(a1);
}

uint64_t sub_27576291C()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_275762988()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_2757629D8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_275762A60@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_275762AB8(uint64_t a1)
{
  v2 = sub_27576336C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275762AF4(uint64_t a1)
{
  v2 = sub_27576336C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275762B30(void *a1)
{
  v2 = swift_allocObject();
  sub_275762B80(a1);
  return v2;
}

uint64_t *sub_275762B80(void *a1)
{
  v15 = *v1;
  v3 = sub_275796530();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v14 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF9A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27576336C();
  v9 = v16;
  sub_275798A80();
  if (v9)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13;
    sub_2757635BC(&qword_2809FD770, MEMORY[0x277D23340]);
    sub_275798910();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC13iCloudQuotaUI21OpenApplicationAction_bundleId, v14, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_275762E20()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI21OpenApplicationAction_bundleId;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_275762E80()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI21OpenApplicationAction_bundleId;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_275762F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_27576314C)(a1);
}

uint64_t *sub_2757630F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_275762B80(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27576314C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_275796280();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27576320C, 0, 0);
}

uint64_t sub_27576320C()
{
  sub_275796520();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_27576336C()
{
  result = qword_280A0B100[0];
  if (!qword_280A0B100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0B100);
  }

  return result;
}

uint64_t type metadata accessor for OpenApplicationAction()
{
  result = qword_280A0B290;
  if (!qword_280A0B290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2757634B8()
{
  result = qword_280A0B420[0];
  if (!qword_280A0B420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0B420);
  }

  return result;
}

unint64_t sub_275763510()
{
  result = qword_280A0B530;
  if (!qword_280A0B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0B530);
  }

  return result;
}

unint64_t sub_275763568()
{
  result = qword_280A0B538[0];
  if (!qword_280A0B538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0B538);
  }

  return result;
}

uint64_t sub_2757635BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275763604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);

  sub_275797BD0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_275797BB0();
  sub_2756D5834(v4);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

unint64_t sub_275763778()
{
  result = qword_2809FF9C0;
  if (!qword_2809FF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF9C0);
  }

  return result;
}

uint64_t sub_2757637DC()
{
  v1 = v0;
  v2 = type metadata accessor for AppPlatterCard.Feature(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppPlatterCard.Item(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275767164(v1, v7, type metadata accessor for AppPlatterCard.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  sub_2757671CC(v7, v4, type metadata accessor for AppPlatterCard.Feature);
  v8 = *&v4[*(v2 + 20)];

  sub_275765B4C(v4, type metadata accessor for AppPlatterCard.Feature);
  return v8;
}

uint64_t sub_275763974@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPlatterCard.Feature(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_275767164(v2, v9, type metadata accessor for AppPlatterCard.Item);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_2757671CC(v9, v7, type metadata accessor for AppPlatterCard.Feature);
    v11 = &v7[*(v4 + 20)];
    v13 = *v11;
    v12 = *(v11 + 1);

    result = sub_275765B4C(v7, type metadata accessor for AppPlatterCard.Feature);
  }

  else
  {
    v13 = *v9;
    v12 = v9[1];
  }

  *a1 = v13;
  a1[1] = v12;
  return result;
}

uint64_t sub_275763AF0()
{
  v1 = *(v0 + *(type metadata accessor for AppPlatterCard.Feature(0) + 20));

  return v1;
}

uint64_t sub_275763B30()
{
  v1 = *(v0 + *(type metadata accessor for AppPlatterCard.Feature(0) + 24));

  return v1;
}

uint64_t sub_275763B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_275724320(a1, a6);
  result = type metadata accessor for AppPlatterCard.Feature(0);
  v12 = (a6 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = (a6 + *(result + 24));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_275763BD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_275763BEC(uint64_t a1)
{
  v28 = type metadata accessor for AppPlatterCard.Feature(0);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AppPlatterCard.Item(0);
  v3 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v31 = MEMORY[0x277D84F90];
    sub_275765B2C(0, v10, 0);
    v11 = v31;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v29 = *(v3 + 72);
    do
    {
      sub_275767164(v12, v9, type metadata accessor for AppPlatterCard.Item);
      sub_275767164(v9, v6, type metadata accessor for AppPlatterCard.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = v27;
        sub_2757671CC(v6, v27, type metadata accessor for AppPlatterCard.Feature);
        v14 = (v13 + *(v28 + 20));
        v16 = *v14;
        v15 = v14[1];

        sub_275765B4C(v13, type metadata accessor for AppPlatterCard.Feature);
      }

      else
      {
        v16 = *v6;
        v15 = v6[1];
      }

      result = sub_275765B4C(v9, type metadata accessor for AppPlatterCard.Item);
      v31 = v11;
      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_275765B2C((v17 > 1), v18 + 1, 1);
        v11 = v31;
      }

      v11[2] = v19;
      v20 = &v11[2 * v18];
      v20[4] = v16;
      v20[5] = v15;
      v12 += v29;
      --v10;
    }

    while (v10);
LABEL_11:
    v21 = 0;
    v22 = 0;
    v23 = v11 + 5;
    v24 = 0xE000000000000000;
    while (v22 < v11[2])
    {
      ++v22;
      v26 = *(v23 - 1);
      v25 = *v23;
      v31 = v21;
      v32 = v24;

      MEMORY[0x277C80130](v26, v25);

      v21 = v31;
      v24 = v32;
      v23 += 2;
      if (v19 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    return result;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
    goto LABEL_11;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

uint64_t sub_275763F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275763BEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_275763F40()
{
  v49 = type metadata accessor for AppPlatterCard.Item(0);
  v1 = *(v49 - 8);
  v2 = MEMORY[0x28223BE20](v49);
  v4 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAC8);
  MEMORY[0x28223BE20](v47);
  v8 = (&v45 - v7);
  v9 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v48 = v0;
  v10 = *(v0 + 48);
  v46 = v10[2];
  if (v46)
  {
    v11 = 0;
    v12 = *(type metadata accessor for AppPlatterCard.Feature(0) - 8);
    v13 = *(v12 + 80);
    v45 = *(v12 + 72);
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v47 + 48);
      *v8 = v11;
      sub_275767164(v14, v8 + v16, type metadata accessor for AppPlatterCard.Feature);
      sub_275767164(v8 + v16, v6, type metadata accessor for AppPlatterCard.Feature);
      swift_storeEnumTagMultiPayload();
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_275765FBC(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      v10 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_275765FBC(v18 > 1, v19 + 1, 1, v9);
      }

      v9[2] = v10;
      sub_2757671CC(v6, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, type metadata accessor for AppPlatterCard.Item);
      v20 = *(v48 + 7);
      v15 = v17;
      if (v20 == -1)
      {
        goto LABEL_12;
      }

      v21 = v11 - 1;
      if (v20)
      {
        v21 %= v20;
      }

      if (!v21)
      {
LABEL_12:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_275765EB0(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v15 + 2);
        v22 = *(v15 + 3);
        v10 = (v23 + 1);
        if (v23 >= v22 >> 1)
        {
          v15 = sub_275765EB0((v22 > 1), v23 + 1, 1, v15);
        }

        *(v15 + 2) = v10;
        *&v15[8 * v23 + 32] = v9;

        v9 = MEMORY[0x277D84F90];
      }

      ++v11;
      sub_2756C92B4(v8, &qword_2809FFAC8);
      v14 += v45;
    }

    while (v46 != v11);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v52 = v9;
  v24 = v9[2];
  if (v24)
  {
    v25 = *(v48 + 7);
    v26 = v25 - v24;
    if (__OFSUB__(v25, v24))
    {
      __break(1u);
    }

    else if ((v26 & 0x8000000000000000) == 0)
    {
      v48 = v15;
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v51 = MEMORY[0x277D84F90];
        sub_275765B2C(0, v26, 0);
        v28 = 0;
        v29 = v51;
        do
        {
          v50 = v28;
          v30 = sub_275798950();
          v32 = v31;
          v51 = v29;
          v34 = v29[2];
          v33 = v29[3];
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            sub_275765B2C((v33 > 1), v34 + 1, 1);
            v29 = v51;
          }

          ++v28;
          v29[2] = v35;
          v36 = &v29[2 * v34];
          v36[4] = v30;
          v36[5] = v32;
        }

        while (v26 != v28);
        v27 = MEMORY[0x277D84F90];
      }

      else
      {
        v35 = *(MEMORY[0x277D84F90] + 16);
        if (!v35)
        {
          v37 = MEMORY[0x277D84F90];
          goto LABEL_34;
        }

        v29 = MEMORY[0x277D84F90];
      }

      v51 = v27;
      sub_275765BAC(0, v35, 0);
      v37 = v51;
      v38 = v29 + 5;
      do
      {
        v39 = *v38;
        *v4 = *(v38 - 1);
        v4[1] = v39;
        swift_storeEnumTagMultiPayload();
        v51 = v37;
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);

        if (v41 >= v40 >> 1)
        {
          sub_275765BAC(v40 > 1, v41 + 1, 1);
          v37 = v51;
        }

        *(v37 + 16) = v41 + 1;
        sub_2757671CC(v4, v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v41, type metadata accessor for AppPlatterCard.Item);
        v38 += 2;
        --v35;
      }

      while (v35);
LABEL_34:

      sub_275764518(v37);
      v10 = v52;

      v15 = v48;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_35:
        v43 = *(v15 + 2);
        v42 = *(v15 + 3);
        if (v43 >= v42 >> 1)
        {
          v15 = sub_275765EB0((v42 > 1), v43 + 1, 1, v15);
        }

        *(v15 + 2) = v43 + 1;
        *&v15[8 * v43 + 32] = v10;
        goto LABEL_38;
      }

LABEL_42:
      v15 = sub_275765EB0(0, *(v15 + 2) + 1, 1, v15);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_38:

  return v15;
}

uint64_t sub_275764518(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_275765FBC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AppPlatterCard.Item(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_275764644()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_275764674@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_275796D20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF9C8);
  return sub_2757646C8(v1, a1 + *(v3 + 44));
}

uint64_t sub_2757646C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  *v13 = sub_275796C70();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA30);
  sub_275764A4C(a1, &v13[*(v14 + 44)]);
  *v7 = sub_275796D20();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA38) + 44);
  v26 = sub_275763F40();
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  v15[3] = *(a1 + 32);
  v15[4] = v16;
  v15[5] = *(a1 + 64);
  v17 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v17;
  sub_275766E20(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA48);
  sub_2756CFA44(&qword_2809FFA50, &qword_2809FFA40);
  sub_2756CFA44(&qword_2809FFA58, &qword_2809FFA48);
  sub_275766E58();
  sub_2757977B0();
  sub_2756C9074(v13, v11, &qword_2809FFA28);
  v18 = v23;
  sub_2756C9074(v7, v23, &qword_2809FFA20);
  v19 = v24;
  sub_2756C9074(v11, v24, &qword_2809FFA28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA68);
  sub_2756C9074(v18, v19 + *(v20 + 48), &qword_2809FFA20);
  sub_2756C92B4(v7, &qword_2809FFA20);
  sub_2756C92B4(v13, &qword_2809FFA28);
  sub_2756C92B4(v18, &qword_2809FFA20);
  return sub_2756C92B4(v11, &qword_2809FFA28);
}

uint64_t sub_275764A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v59 = *(v60 - 8);
  v3 = MEMORY[0x28223BE20](v60);
  v57 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v56 = &v52[-v5];
  v66 = sub_275796D30();
  v91 = 1;
  v6 = a1[1];
  v74 = *a1;
  v75 = v6;
  v7 = sub_2756DC79C();

  v8 = sub_2757970D0();
  v10 = v9;
  v12 = v11;
  sub_275797030();
  v67 = sub_2757970A0();
  v61 = v13;
  LODWORD(v64) = v14;
  v65 = v15;

  sub_2756E15EC(v8, v10, v12 & 1);

  v16 = a1[3];
  v74 = a1[2];
  v75 = v16;

  v55 = v7;
  v17 = sub_2757970D0();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_275796FF0();
  v21 = sub_2757970A0();
  v23 = v22;
  LOBYTE(v7) = v24;

  sub_2756E15EC(v17, v19, v10 & 1);

  sub_275797500();
  v25 = sub_275797070();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_2756E15EC(v21, v23, v7 & 1);

  v92 = v64 & 1;
  LOBYTE(v74) = v64 & 1;
  LODWORD(v7) = v29 & 1;
  LOBYTE(v68) = v29 & 1;
  v32 = v67;
  v33 = v61;
  v62 = v64 & 1;
  sub_2756E0DD0(v67, v61, v64 & 1);

  sub_2756E0DD0(v25, v27, v7);

  v64 = v27;
  v63 = v7;
  sub_2756E15EC(v25, v27, v7);
  v54 = v31;

  v34 = v33;
  sub_2756E15EC(v32, v33, v92);

  v35 = v91;
  if (a1[5])
  {
    v36 = a1[4];
    v37 = a1[5];
  }

  else
  {
    v36 = sub_2756ED3E0();
  }

  v74 = v36;
  v75 = v37;

  v38 = v56;
  sub_275797650();
  v39 = v59;
  v40 = *(v59 + 16);
  v41 = v57;
  v42 = v60;
  v40(v57, v38, v60);
  v68 = v66;
  v53 = v35;
  LOBYTE(v69) = v35;
  *(&v69 + 1) = v90[0];
  DWORD1(v69) = *(v90 + 3);
  *(&v69 + 1) = v67;
  *&v70 = v34;
  BYTE8(v70) = v62;
  HIDWORD(v70) = *(v89 + 3);
  *(&v70 + 9) = v89[0];
  v43 = v65;
  *&v71 = v65;
  *(&v71 + 1) = v25;
  *&v72 = v64;
  BYTE8(v72) = v63;
  HIDWORD(v72) = *(v88 + 3);
  *(&v72 + 9) = v88[0];
  v55 = v25;
  v44 = v54;
  v73 = v54;
  v45 = v70;
  v46 = v72;
  v47 = v58;
  *(v58 + 48) = v71;
  *(v47 + 64) = v46;
  v48 = v68;
  *(v47 + 16) = v69;
  *(v47 + 32) = v45;
  *v47 = v48;
  *(v47 + 80) = v44;
  *(v47 + 88) = 0;
  *(v47 + 96) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAE0);
  v40((v47 + *(v49 + 64)), v41, v42);
  sub_2756C9074(&v68, &v74, &qword_2809FF908);
  v50 = *(v39 + 8);
  v50(v38, v42);
  v50(v41, v42);
  v74 = v66;
  v75 = 0;
  v76 = v53;
  *v77 = v90[0];
  *&v77[3] = *(v90 + 3);
  v78 = v67;
  v79 = v61;
  v80 = v62;
  *v81 = v89[0];
  *&v81[3] = *(v89 + 3);
  v82 = v43;
  v83 = v55;
  v84 = v64;
  v85 = v63;
  *&v86[3] = *(v88 + 3);
  *v86 = v88[0];
  v87 = v44;
  return sub_2756C92B4(&v74, &qword_2809FF908);
}

double sub_2757650A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE598);
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for AppPlatterCard.Feature(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppPlatterCard.Item(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275767164(a1, v13, type metadata accessor for AppPlatterCard.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = type metadata accessor for AppPlatterCard.Feature;
    sub_2757671CC(v13, v10, type metadata accessor for AppPlatterCard.Feature);
    sub_2756C9074(v10, v6, &qword_2809FD700);
    v14 = swift_allocObject();
    v14[2] = sub_2757656B0;
    v14[3] = 0;
    v14[4] = sub_2757034C0;
    v14[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5B8);
    sub_2757039FC();
    sub_275796680();
    sub_2756CFA44(&qword_2809FE590, &qword_2809FE598);
    v15 = sub_275797720();
    v16 = *(v8 + 24);
    v17 = &v10[*(v8 + 20)];
    v18 = *v17;
    v19 = v17[1];
    v20 = *&v10[v16];
    v21 = *&v10[v16 + 8];

    sub_275761048(v15, v18, v19, v20, v21, v42);
    sub_275797820();
    sub_275796A70();
    v40[6] = v42[6];
    v40[7] = v42[7];
    v41[0] = v42[8];
    *&v41[1] = v43;
    v40[2] = v42[2];
    v40[3] = v42[3];
    v40[4] = v42[4];
    v40[5] = v42[5];
    v40[0] = v42[0];
    v40[1] = v42[1];
    sub_275767150(v40);
    v57 = v40[6];
    v58 = v40[7];
    v59[0] = v41[0];
    *(v59 + 9) = *(v41 + 9);
    v53 = v40[2];
    v54 = v40[3];
    v55 = v40[4];
    v56 = v40[5];
    v51 = v40[0];
    v52 = v40[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAB0);
    sub_275766F94();
    sub_275767018();
    sub_275796D80();
    sub_275765B4C(v10, v28);
    v57 = v37;
    v58 = v38;
    v59[0] = v39[0];
    *(v59 + 9) = *(v39 + 9);
    v53 = v33;
    v54 = v34;
    v55 = v35;
    v56 = v36;
    v51 = v31;
    v52 = v32;
  }

  else
  {
    sub_275765B4C(v13, type metadata accessor for AppPlatterCard.Item);
    sub_275797820();
    sub_275796A70();
    v30 = 1;
    *&v29[55] = v47;
    *&v29[71] = v48;
    *&v29[87] = v49;
    *&v29[103] = v50;
    *&v29[7] = v44;
    *&v29[23] = v45;
    *&v29[39] = v46;
    *&v40[0] = 0;
    BYTE8(v40[0]) = 1;
    *(&v40[3] + 9) = *&v29[48];
    *(&v40[2] + 9) = *&v29[32];
    *(&v40[1] + 9) = *&v29[16];
    *(v40 + 9) = *v29;
    *(&v40[7] + 1) = *(&v50 + 1);
    *(&v40[6] + 9) = *&v29[96];
    *(&v40[5] + 9) = *&v29[80];
    *(&v40[4] + 9) = *&v29[64];
    sub_27576715C(v40);
    v37 = v40[6];
    v38 = v40[7];
    v39[0] = v41[0];
    *(v39 + 9) = *(v41 + 9);
    v33 = v40[2];
    v34 = v40[3];
    v35 = v40[4];
    v36 = v40[5];
    v31 = v40[0];
    v32 = v40[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAB0);
    sub_275766F94();
    sub_275767018();
    sub_275796D80();
  }

  v22 = v58;
  a2[6] = v57;
  a2[7] = v22;
  a2[8] = v59[0];
  *(a2 + 137) = *(v59 + 9);
  v23 = v54;
  a2[2] = v53;
  a2[3] = v23;
  v24 = v56;
  a2[4] = v55;
  a2[5] = v24;
  result = *&v51;
  v26 = v52;
  *a2 = v51;
  a2[1] = v26;
  return result;
}

uint64_t sub_2757656B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_2757657CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_2757657E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_275796D20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF9C8);
  return sub_2757646C8(v7, a1 + *(v5 + 44));
}

uint64_t sub_27576585C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_275795CA0();
  v5 = sub_275795CB0();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

__n128 sub_275765974@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_275766194();
  v3 = sub_275796FA0();
  sub_275797820();
  sub_2757967D0();
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000002757BA280;
  *(a1 + 16) = 0xD000000000000026;
  *(a1 + 24) = 0x80000002757BA2A0;
  *(a1 + 32) = xmmword_2757ACC20;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 121) = *v5;
  *(a1 + 64) = nullsub_1;
  *(a1 + 72) = 0;
  *(a1 + 80) = v3;
  *(a1 + 120) = 1;
  *(a1 + 137) = *&v5[16];
  result = *&v5[32];
  *(a1 + 153) = *&v5[32];
  *(a1 + 168) = *(&v8 + 1);
  return result;
}

uint64_t sub_275765A94(uint64_t a1)
{
  v2 = sub_275766C68();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_275765AE0(uint64_t a1)
{
  v2 = sub_275766C68();

  return MEMORY[0x28212D8E0](a1, v2);
}

char *sub_275765B2C(char *a1, int64_t a2, char a3)
{
  result = sub_275765BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_275765B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_275765BAC(size_t a1, int64_t a2, char a3)
{
  result = sub_275765CD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275765BCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8D8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_275765CD8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAD0);
  v10 = *(type metadata accessor for AppPlatterCard.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AppPlatterCard.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_275765EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_275765FBC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFAD0);
  v10 = *(type metadata accessor for AppPlatterCard.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AppPlatterCard.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_275766194()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v55 = &v53 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v59 = &v53 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v56 = &v53 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v53 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA18);
  v23 = type metadata accessor for AppPlatterCard.Feature(0);
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v62 = *(*(v23 - 8) + 72);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2757A4FD0;
  v66 = "aUI21OpenApplicationAction";
  sub_275795CA0();
  v26 = sub_275795CB0();
  v27 = *(v26 - 8);
  v65 = v27[6];
  result = v65(v20, 1, v26);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v54 = v25;
  v29 = v25 + v24;
  v64 = v27[4];
  v64(v22, v20, v26);
  v63 = v27[7];
  v63(v22, 0, 1, v26);
  sub_275724320(v22, v25 + v24);
  v30 = (v25 + v24 + *(v23 + 20));
  *v30 = 0xD000000000000012;
  v30[1] = 0x80000002757BA2D0;
  v31 = (v25 + v24 + *(v23 + 24));
  *v31 = 0xD000000000000077;
  v31[1] = 0x80000002757B9EC0;
  sub_275795CA0();
  result = v65(v15, 1, v26);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v32 = v62;
  v33 = v29 + v62;
  v34 = v60;
  v64(v60, v15, v26);
  v63(v34, 0, 1, v26);
  sub_275724320(v34, v29 + v32);
  v35 = (v33 + *(v23 + 20));
  strcpy(v35, "Family Sharing");
  v35[15] = -18;
  v36 = (v33 + *(v23 + 24));
  *v36 = 0xD00000000000005BLL;
  v36[1] = 0x80000002757BA2F0;
  v37 = v61;
  sub_275795CA0();
  result = v65(v37, 1, v26);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v38 = v29 + 2 * v32;
  v39 = v58;
  v64(v58, v37, v26);
  v63(v39, 0, 1, v26);
  sub_275724320(v39, v38);
  v40 = v38 + *(v23 + 20);
  strcpy(v40, "Private Relay");
  *(v40 + 14) = -4864;
  v41 = (v38 + *(v23 + 24));
  *v41 = 0xD00000000000007FLL;
  v41[1] = 0x80000002757BA350;
  v42 = v59;
  sub_275795CA0();
  result = v65(v42, 1, v26);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v43 = v29 + 3 * v32;
  v44 = v32;
  v45 = v56;
  v64(v56, v42, v26);
  v63(v45, 0, 1, v26);
  sub_275724320(v45, v43);
  v46 = v43 + *(v23 + 20);
  strcpy(v46, "Hide My Email");
  *(v46 + 14) = -4864;
  v47 = (v43 + *(v23 + 24));
  *v47 = 0xD000000000000017;
  v47[1] = 0x80000002757BA3D0;
  v48 = v57;
  sub_275795CA0();
  result = v65(v48, 1, v26);
  if (result != 1)
  {
    v49 = v29 + 4 * v44;
    v50 = v55;
    v64(v55, v48, v26);
    v63(v50, 0, 1, v26);
    sub_275724320(v50, v49);
    v51 = (v49 + *(v23 + 20));
    *v51 = 0xD000000000000014;
    v51[1] = 0x80000002757BA3F0;
    v52 = (v49 + *(v23 + 24));
    *v52 = 0xD000000000000018;
    v52[1] = 0x80000002757BA410;
    return v54;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_2757668EC()
{
  result = qword_2809FF9D0;
  if (!qword_2809FF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF9D0);
  }

  return result;
}

uint64_t sub_27576696C()
{
  result = type metadata accessor for AppPlatterCard.Feature(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_275766A00()
{
  sub_275724A50();
  if (v0 <= 0x3F)
  {
    sub_275766A8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275766A8C()
{
  if (!qword_2809FEF70)
  {
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FEF70);
    }
  }
}

unint64_t sub_275766AFC()
{
  result = qword_2809FF9E8;
  if (!qword_2809FF9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF9F0);
    sub_275766B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF9E8);
  }

  return result;
}

unint64_t sub_275766B88()
{
  result = qword_2809FF9F8;
  if (!qword_2809FF9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFA00);
    sub_275766C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF9F8);
  }

  return result;
}

unint64_t sub_275766C14()
{
  result = qword_2809FFA08;
  if (!qword_2809FFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFA08);
  }

  return result;
}

unint64_t sub_275766C68()
{
  result = qword_2809FFA10;
  if (!qword_2809FFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFA10);
  }

  return result;
}

uint64_t sub_275766CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *a2 = sub_275796C70();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA70);
  v10 = v4;
  v5 = swift_allocObject();
  v6 = v2[4];
  v5[3] = v2[3];
  v5[4] = v6;
  v5[5] = v2[5];
  v7 = v2[2];
  v5[1] = v2[1];
  v5[2] = v7;

  sub_275766E20((v2 + 1), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFA80);
  sub_2756CFA44(&qword_2809FFA88, &qword_2809FFA78);
  sub_275766F08();
  sub_2757670F8();
  return sub_2757977B0();
}

unint64_t sub_275766E58()
{
  result = qword_2809FFA60;
  if (!qword_2809FFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFA60);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_275766F08()
{
  result = qword_2809FFA90;
  if (!qword_2809FFA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFA80);
    sub_275766F94();
    sub_275767018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFA90);
  }

  return result;
}

unint64_t sub_275766F94()
{
  result = qword_2809FFA98;
  if (!qword_2809FFA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFA98);
  }

  return result;
}

unint64_t sub_275767018()
{
  result = qword_2809FFAA8;
  if (!qword_2809FFAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFAB0);
    sub_2757670A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFAA8);
  }

  return result;
}

unint64_t sub_2757670A4()
{
  result = qword_2809FFAB8;
  if (!qword_2809FFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFAB8);
  }

  return result;
}

unint64_t sub_2757670F8()
{
  result = qword_2809FFAC0;
  if (!qword_2809FFAC0)
  {
    type metadata accessor for AppPlatterCard.Item(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFAC0);
  }

  return result;
}

uint64_t sub_275767164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2757671CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_275767238@<Q0>(uint64_t a1@<X8>)
{
  v17 = sub_275796C80();
  v20 = 1;
  sub_2756DC79C();

  v2 = sub_2757970D0();
  v33 = v3 & 1;
  v32 = 1;
  v31 = 1;
  *v22 = v2;
  *&v22[8] = v4;
  v22[16] = v3 & 1;
  *&v22[24] = v5;
  *&v22[32] = swift_getKeyPath();
  v22[40] = 1;
  v22[48] = sub_275796FA0();
  memset(&v22[56], 0, 32);
  v22[88] = 1;
  *(&v30[1] + 7) = *&v22[16];
  *(v30 + 7) = *v22;
  v30[5] = *&v22[73];
  *(&v30[4] + 7) = *&v22[64];
  *(&v30[3] + 7) = *&v22[48];
  *(&v30[2] + 7) = *&v22[32];
  v29 = 1;
  v23 = v2;
  *v24 = *&v22[8];
  v24[8] = v33;
  *&v24[16] = *&v22[24];
  *&v24[24] = *&v22[32];
  v24[32] = 1;
  v25[7] = v22[48];
  memset(&v25[15], 0, 32);
  v25[47] = 1;
  sub_2756C9074(v22, v18, &qword_2809FFB20);
  sub_2756C92B4(&v23, &qword_2809FFB20);
  *&v22[41] = v30[2];
  *&v22[57] = v30[3];
  *&v22[73] = v30[4];
  *&v22[89] = v30[5];
  *&v22[9] = v30[0];
  *&v22[25] = v30[1];
  *&v24[17] = v30[1];
  *v22 = 0;
  v22[8] = 1;
  *&v22[112] = 0;
  v22[120] = 1;
  v23 = 0;
  v24[0] = 1;
  *&v24[1] = v30[0];
  v26 = v30[5];
  *&v25[32] = v30[4];
  *&v25[16] = v30[3];
  *v25 = v30[2];
  v27 = 0;
  v28 = 1;
  sub_2756C9074(v22, v18, &qword_2809FFAE8);
  sub_2756C92B4(&v23, &qword_2809FFAE8);
  *&v19[71] = *&v22[64];
  *&v19[87] = *&v22[80];
  *&v19[103] = *&v22[96];
  *&v19[112] = *&v22[105];
  *&v19[7] = *v22;
  *&v19[23] = *&v22[16];
  *&v19[39] = *&v22[32];
  *&v19[55] = *&v22[48];
  v6 = v20;
  sub_275797820();
  sub_275796A70();
  *&v21[55] = v18[3];
  *&v21[71] = v18[4];
  *&v21[87] = v18[5];
  *&v21[103] = v18[6];
  *&v21[7] = v18[0];
  *&v21[23] = v18[1];
  *&v21[39] = v18[2];
  *a1 = v17;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  v7 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v7;
  v8 = *&v19[112];
  *(a1 + 113) = *&v19[96];
  *(a1 + 129) = v8;
  v9 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v9;
  v10 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = v10;
  v11 = *v21;
  v12 = *&v21[16];
  v13 = *&v21[32];
  *(a1 + 193) = *&v21[48];
  *(a1 + 177) = v13;
  *(a1 + 161) = v12;
  *(a1 + 145) = v11;
  result = *&v21[64];
  v15 = *&v21[80];
  v16 = *&v21[96];
  *(a1 + 256) = *&v21[111];
  *(a1 + 241) = v16;
  *(a1 + 225) = v15;
  *(a1 + 209) = result;
  return result;
}

unint64_t sub_275767628()
{
  result = qword_2809FFAF0;
  if (!qword_2809FFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFAF0);
  }

  return result;
}

uint64_t sub_275767698(uint64_t a1)
{
  v2 = sub_2757678EC();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2757676E4(uint64_t a1)
{
  v2 = sub_2757678EC();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_275767730(uint64_t a1, unsigned int a2)
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

uint64_t sub_27576778C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2757677FC()
{
  result = qword_2809FFAF8;
  if (!qword_2809FFAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFB00);
    sub_275767888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFAF8);
  }

  return result;
}

unint64_t sub_275767888()
{
  result = qword_2809FFB08;
  if (!qword_2809FFB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB08);
  }

  return result;
}

unint64_t sub_2757678EC()
{
  result = qword_2809FFB18;
  if (!qword_2809FFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB18);
  }

  return result;
}

uint64_t sub_275767A64()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_275767AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);

  sub_275797BD0();

  sub_275797BB0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

__n128 sub_275767C34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a9 + 40) = *a2;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 56) = v11;
  *(a9 + 72) = *(a2 + 32);
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  return result;
}

uint64_t sub_275767C68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_275767D24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetImpressionable() + 24);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_275767E2C(unsigned __int8 a1)
{
  sub_275798A40();
  MEMORY[0x277C80B70](a1);
  return sub_275798A70();
}

uint64_t sub_275767E74(unsigned __int8 a1)
{
  v1 = 0x73646C656966;
  v2 = 0x746E65726170;
  if (a1 != 2)
  {
    v2 = 0x7865646E69;
  }

  if (a1)
  {
    v1 = 0x746E656D656C65;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_275767EE4()
{
  v1 = 0x73646C656966;
  v2 = 0x746E65726170;
  if (*v0 != 2)
  {
    v2 = 0x7865646E69;
  }

  if (*v0)
  {
    v1 = 0x746E656D656C65;
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

uint64_t sub_275767F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275769A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275767F7C(uint64_t a1)
{
  v2 = sub_275769BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275767FB8(uint64_t a1)
{
  v2 = sub_275769BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275767FF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v24 - v6;
  v30 = sub_275796530();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB30);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v24 - v11;
  v13 = type metadata accessor for JetImpressionable();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275769BD0();
  v33 = v12;
  v16 = v35;
  sub_275798A80();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v15;
  v18 = v30;
  v39 = 0;
  sub_2756E7200(&qword_2809FDF20, &qword_2809FDF18);
  v19 = v31;
  sub_275798910();
  v20 = *(v29 + 32);
  v35 = v9;
  v20(v17, v19, v9);
  v38 = 1;
  sub_27576A1C4(&qword_2809FD770, MEMORY[0x277D23340]);
  sub_275798910();
  (*(v28 + 32))(v17 + v13[6], v8, v18);
  v37 = 2;
  v21 = v27;
  sub_2757988E0();
  sub_2756D8BC4(v21, v17 + v13[5], &qword_2809FFB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
  v36 = 3;
  sub_2756E7200(&qword_2809FE5E8, &qword_2809FE5C8);
  v22 = v26;
  sub_2757988E0();
  (*(v32 + 8))(v33, v34);
  sub_2756D8BC4(v22, v17 + v13[7], &qword_2809FE5D0);
  sub_275769C24(v17, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_275769C88(v17);
}

uint64_t sub_275768610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v98 = a2;
  v3 = sub_275796280();
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x28223BE20](v3);
  v94 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_275797C80();
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2757963E0();
  v92 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v78 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v78 - v14;
  v16 = type metadata accessor for JetImpressionable();
  v17 = v2;
  v18 = v105;
  v19 = sub_275796520();
  if (v18)
  {

    v21 = sub_275700E70();
    v22 = v94;
    v23 = v95;
    v24 = v96;
    (*(v95 + 16))(v94, v21, v96);
    v25 = sub_275796270();
    v26 = sub_2757982F0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_275623000, v25, v26, "Failed to resolve JetImpressionable", v27, 2u);
      MEMORY[0x277C81E50](v27, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    return sub_2756CC2E0(v97, v98);
  }

  else
  {
    v87 = v15;
    v88 = v12;
    v105 = v9;
    v90 = v7;
    v83 = v6;
    v84 = v19;
    v89 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    sub_27570F4D4();
    sub_275796390();
    v94 = v102;
    v29 = v87;
    sub_2756C9074(v17 + *(v16 + 20), v87, &qword_2809FFB28);
    v30 = sub_275796530();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_2756C92B4(v29, &qword_2809FFB28);
      v81 = 0;
      v80 = 0;
    }

    else
    {
      v32 = sub_275796520();
      v80 = v33;
      v81 = v32;
      (*(v31 + 8))(v29, v30);
    }

    v34 = v88;
    sub_2756C9074(v17 + *(v16 + 28), v88, &qword_2809FE5D0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE5C8);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      v82 = 0;
      sub_2756C92B4(v34, &qword_2809FE5D0);
      v79 = -1;
      v37 = v93;
    }

    else
    {
      sub_275796390();
      v37 = v93;
      v82 = 0;
      (*(v36 + 8))(v34, v35);
      v79 = v102;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    v38 = v94;
    result = sub_275798850();
    v39 = 0;
    v42 = *(v38 + 64);
    v41 = v38 + 64;
    v40 = v42;
    v43 = 1 << *(v41 - 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v40;
    v46 = (v43 + 63) >> 6;
    v47 = v92;
    v87 = (v92 + 16);
    v86 = v92 + 8;
    v85 = result + 64;
    v48 = v90;
    v49 = v105;
    v88 = result;
    if (v45)
    {
      while (1)
      {
        v50 = __clz(__rbit64(v45));
        v95 = (v45 - 1) & v45;
LABEL_22:
        v54 = v50 | (v39 << 6);
        v55 = *(v94 + 56);
        v56 = (*(v94 + 48) + 16 * v54);
        v57 = v56[1];
        v96 = *v56;
        v58 = v49;
        v59 = v47;
        (*(v47 + 16))(v58, v55 + *(v47 + 72) * v54, v48);

        sub_275768FA8(&v102);
        v48 = v90;
        v60 = *(v59 + 8);
        v49 = v105;
        v60(v105, v90);
        *(v85 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v61 = v88;
        v62 = (*(v88 + 6) + 16 * v54);
        *v62 = v96;
        v62[1] = v57;
        result = sub_2756D5AA8(&v102, (*(v61 + 56) + 32 * v54));
        v63 = *(v61 + 16);
        v64 = __OFADD__(v63, 1);
        v65 = v63 + 1;
        if (v64)
        {
          break;
        }

        result = v61;
        *(v61 + 16) = v65;
        v47 = v92;
        v37 = v93;
        v45 = v95;
        if (!v95)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v51 = v39;
      v52 = v91;
      while (1)
      {
        v39 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v39 >= v46)
        {

          v66 = v97[3];
          v67 = v97[4];
          __swift_project_boxed_opaque_existential_1(v97, v66);
          v68 = v84;
          v69 = v89;
          *&v102 = v84;
          *(&v102 + 1) = v89;

          sub_2757986B0();
          v70 = sub_2757695D0(v94);

          v103 = &type metadata for JetComponentModel;
          v104 = sub_275769CE4();
          v71 = swift_allocObject();
          *&v102 = v71;
          *(v71 + 56) = 0u;
          *(v71 + 72) = 0u;
          v72 = v100;
          *(v71 + 16) = v99;
          *(v71 + 32) = v72;
          *(v71 + 48) = v101;
          v73 = v81;
          *(v71 + 88) = 0;
          *(v71 + 96) = v73;
          *(v71 + 104) = v80;
          *(v71 + 112) = v68;
          v74 = v79;
          *(v71 + 120) = v69;
          *(v71 + 128) = v74;
          *(v71 + 136) = v70;
          v75 = v83;
          sub_275797C70();
          *&v99 = v66;
          *(&v99 + 1) = v67;
          OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
          v77 = v98;
          v98[3] = OpaqueTypeMetadata2;
          *&v99 = v66;
          *(&v99 + 1) = v67;
          v77[4] = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1(v77);
          sub_2757970F0();
          (*(v37 + 8))(v75, v52);
          return __swift_destroy_boxed_opaque_existential_0(&v102);
        }

        v53 = *(v41 + 8 * v39);
        ++v51;
        if (v53)
        {
          v50 = __clz(__rbit64(v53));
          v95 = (v53 - 1) & v53;
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_275768FA8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2757963E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = *(v5 + 16);
  v11(&v56 - v9, v2, v4);
  v12 = (*(v5 + 88))(v10, v4);
  if (v12 == *MEMORY[0x277D232A0])
  {
    (*(v5 + 96))(v10, v4);
    v13 = *v10;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    a1[3] = MEMORY[0x277D837D0];

    *a1 = v14;
    a1[1] = v15;
  }

  else if (v12 == *MEMORY[0x277D23248])
  {
    (*(v5 + 96))(v10, v4);
    v17 = *(*v10 + 16);
    a1[3] = MEMORY[0x277D83B88];

    *a1 = v17;
  }

  else if (v12 == *MEMORY[0x277D23288])
  {
    (*(v5 + 96))(v10, v4);
    v18 = *(*v10 + 16);
    a1[3] = MEMORY[0x277D839F8];

    *a1 = v18;
  }

  else if (v12 == *MEMORY[0x277D23258])
  {
    (*(v5 + 96))(v10, v4);
    v19 = *(*v10 + 16);
    a1[3] = MEMORY[0x277D839B0];

    *a1 = v19;
  }

  else
  {
    v20 = *MEMORY[0x277D23278];
    v66 = v8;
    if (v12 == v20)
    {
      (*(v5 + 96))(v10, v4);
      v21 = *v10;
      v22 = *(v21 + 16);
      v23 = *(v22 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v64 = v21;
        v59 = a1;
        v67 = MEMORY[0x277D84F90];

        sub_275749AA0(0, v23, 0);
        v24 = v67;
        v25 = *(v5 + 80);
        v63 = v22;
        v26 = v22 + ((v25 + 32) & ~v25);
        v65 = *(v5 + 72);
        v27 = (v5 + 8);
        do
        {
          v28 = v66;
          v29 = (v11)(v66, v26, v4);
          sub_275768FA8(v68, v29);
          (*v27)(v28, v4);
          v67 = v24;
          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_275749AA0((v30 > 1), v31 + 1, 1);
            v24 = v67;
          }

          *(v24 + 16) = v31 + 1;
          sub_2756D5AA8(v68, (v24 + 32 * v31 + 32));
          v26 += v65;
          --v23;
        }

        while (v23);

        a1 = v59;
      }

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF450);

      *a1 = v24;
    }

    else if (v12 == *MEMORY[0x277D23270])
    {
      v63 = v11;
      v59 = a1;
      (*(v5 + 96))(v10, v4);
      v57 = *v10;
      v32 = *(v57 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
      v33 = sub_275798850();
      v34 = v33;
      v35 = *(v32 + 64);
      v58 = v32 + 64;
      v36 = 1 << *(v32 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & v35;
      v39 = (v36 + 63) >> 6;
      v60 = v33 + 64;
      v61 = v5 + 8;
      v64 = v32;

      v40 = 0;
      v62 = v34;
      if (v38)
      {
        while (1)
        {
          v41 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
LABEL_26:
          v44 = v41 | (v40 << 6);
          v45 = *(v64 + 56);
          v46 = (*(v64 + 48) + 16 * v44);
          v47 = v46[1];
          v65 = *v46;
          v48 = v66;
          v63(v66, v45 + *(v5 + 72) * v44, v4);

          sub_275768FA8(v68, v49);
          (*(v5 + 8))(v48, v4);
          *(v60 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
          v34 = v62;
          v50 = (*(v62 + 48) + 16 * v44);
          *v50 = v65;
          v50[1] = v47;
          result = sub_2756D5AA8(v68, (*(v34 + 56) + 32 * v44));
          v51 = *(v34 + 16);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            break;
          }

          *(v34 + 16) = v53;
          if (!v38)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v42 = v40;
        while (1)
        {
          v40 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v40 >= v39)
          {

            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8D0);
            v55 = v59;
            v59[3] = v54;

            *v55 = v34;
            return result;
          }

          v43 = *(v58 + 8 * v40);
          ++v42;
          if (v43)
          {
            v41 = __clz(__rbit64(v43));
            v38 = (v43 - 1) & v43;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      a1[3] = MEMORY[0x277D837D0];
      strcpy(a1, "Unknown value");
      *(a1 + 7) = -4864;
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

unint64_t sub_2757695D0(uint64_t a1)
{
  v2 = sub_2757963E0();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x28223BE20](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF80);
  v5 = MEMORY[0x28223BE20](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    v8 = sub_275798870();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    sub_2756D8BC4(v26, v45, &qword_2809FDF80);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    sub_2756D5AA8(&v51, v53);
    sub_2756D5AA8(v53, v54);
    sub_2756D5AA8(v54, &v52);
    result = sub_2756D57B0(v31, v30, sub_2756D56F8);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_2756D5AA8(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = sub_2756D5AA8(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for JetImpressionable()
{
  result = qword_280A0BFF0;
  if (!qword_280A0BFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275769A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v4 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D656C65 && a2 == 0xE700000000000000 || (sub_275798980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000 || (sub_275798980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_275798980();

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

unint64_t sub_275769BD0()
{
  result = qword_2809FFB38;
  if (!qword_2809FFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB38);
  }

  return result;
}

uint64_t sub_275769C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetImpressionable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275769C88(uint64_t a1)
{
  v2 = type metadata accessor for JetImpressionable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275769CE4()
{
  result = qword_2809FFB40;
  if (!qword_2809FFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB40);
  }

  return result;
}

unint64_t sub_275769D3C()
{
  result = qword_2809FFB48;
  if (!qword_2809FFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB48);
  }

  return result;
}

unint64_t sub_275769D94()
{
  result = qword_2809FFB50;
  if (!qword_2809FFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB50);
  }

  return result;
}

unint64_t sub_275769DEC()
{
  result = qword_2809FFB58;
  if (!qword_2809FFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB58);
  }

  return result;
}

unint64_t sub_275769E44()
{
  result = qword_2809FFB60;
  if (!qword_2809FFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB60);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_275769F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_275769F4C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_275769FE4()
{
  sub_27576A098();
  if (v0 <= 0x3F)
  {
    sub_27576A20C();
    if (v1 <= 0x3F)
    {
      sub_275796530();
      if (v2 <= 0x3F)
      {
        sub_2757099EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27576A098()
{
  if (!qword_2809FFB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDF78);
    sub_27576A108();
    v0 = sub_2757963A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFB70);
    }
  }
}

unint64_t sub_27576A108()
{
  result = qword_2809FFB78;
  if (!qword_2809FFB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDF78);
    sub_27576A1C4(&qword_2809FD8C0, MEMORY[0x277D232B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFB78);
  }

  return result;
}

uint64_t sub_27576A1C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27576A20C()
{
  if (!qword_2809FFB80)
  {
    sub_275796530();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFB80);
    }
  }
}

uint64_t sub_27576A2A4(uint64_t a1, char a2)
{
  *(v2 + 200) = a2;
  v3 = sub_275796280();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27576A370, 0, 0);
}

uint64_t sub_27576A370()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 200);
  v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v6 = v5;
  *(v1 + 184) = v5;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setCachePolicy_];
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_27576A4CC;
  v8 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB88);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_27576B788;
  *(v1 + 104) = &block_descriptor_11;
  *(v1 + 112) = v8;
  [v6 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_27576A4CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_27576A7C8;
  }

  else
  {
    v2 = sub_27576A5DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27576A5DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = sub_275700E70();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_275796270();
  v8 = sub_275798310();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = [v6 members];
    sub_2756C557C(0, &qword_2809FFB90);
    v11 = sub_2757980E0();

    if (v11 >> 62)
    {
      v12 = sub_275798640();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v12;
    _os_log_impl(&dword_275623000, v7, v8, "User has a family circle with %ld members.", v9, 0xCu);
    MEMORY[0x277C81E50](v9, -1, -1);
    v13 = *(v0 + 184);
  }

  else
  {

    v7 = v6;
    v13 = v6;
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);

  (*(v16 + 8))(v14, v15);

  v17 = *(v0 + 8);

  return v17(v6);
}

uint64_t sub_27576A7C8()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  swift_willThrow();
  v5 = sub_275700E70();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_275796270();
  v8 = sub_2757982F0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[23];
  v10 = v0[24];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_275623000, v7, v8, "Unable to fetch family circle %@", v12, 0xCu);
    sub_2756C5AE8(v13);
    MEMORY[0x277C81E50](v13, -1, -1);
    MEMORY[0x277C81E50](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_27576A980(uint64_t a1)
{
  v1[37] = a1;
  sub_275795DD0();
  v1[38] = swift_task_alloc();
  v2 = sub_275795DF0();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = sub_275795CB0();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27576AAC8, 0, 0);
}

uint64_t sub_27576AAC8()
{
  v0[45] = sub_275797F10();
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[46] = v1;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_27576AC20;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB98);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_27576B788;
  v0[21] = &block_descriptor_3;
  v0[22] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27576AC20()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_27576B4A8;
  }

  else
  {
    v2 = sub_27576AD30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27576AD30()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[36];
  v0[48] = v3;

  v4 = [v3 urlForEndpoint_];
  if (v4)
  {
    v5 = v0[37];
    v6 = v4;
    sub_275795C90();

    sub_275795C60();
    v7 = objc_allocWithZone(MEMORY[0x277D083C0]);
    v8 = sub_275797F10();

    v9 = [v7 initWithAppleAccount:v5 urlString:v8];
    v0[49] = v9;

    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_27576AFC8;
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFBA8);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_27576B60C;
    v0[29] = &block_descriptor_6;
    v0[30] = v10;
    [v9 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v11 = v0[45];
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];
    sub_275795DC0();
    sub_2756D5834(MEMORY[0x277D84F90]);
    sub_27576B6FC();
    sub_275795C30();
    sub_275795DE0();
    (*(v13 + 8))(v12, v14);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_27576AFC8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_27576B540;
  }

  else
  {
    v2 = sub_27576B0D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27576B0D8()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 services]) == 0)
  {

LABEL_21:
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v22 = *(v0 + 360);
    v23 = *(v0 + 344);
    v40 = *(v0 + 336);
    v41 = *(v0 + 352);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 312);
    sub_275795DB0();
    sub_2756D5834(MEMORY[0x277D84F90]);
    sub_27576B6FC();
    sub_275795C30();
    sub_275795DE0();
    (*(v25 + 8))(v24, v26);
    swift_willThrow();

    (*(v23 + 8))(v41, v40);

    v27 = *(v0 + 8);

    return v27();
  }

  v4 = v3;
  sub_2756C557C(0, &qword_2809FFBB0);
  v5 = sub_2757980E0();

  v39 = v1;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_275798640())
  {
    v7 = 0;
    v8 = 0xEE00454741524F54;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C80840](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v8;
        v14 = v12;
        v15 = sub_275797F50();
        v17 = v16;

        if (v15 == 0x535F44554F4C4349 && v17 == v13)
        {

LABEL_25:
          v29 = *(v0 + 384);
          v30 = *(v0 + 392);
          v31 = *(v0 + 360);
          (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

          goto LABEL_30;
        }

        v8 = v13;
        v19 = sub_275798980();

        if (v19)
        {
          goto LABEL_25;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v32 = *(v0 + 384);
  v33 = *(v0 + 392);
  v34 = *(v0 + 352);
  v35 = *(v0 + 360);
  v36 = *(v0 + 336);
  v37 = *(v0 + 344);

  (*(v37 + 8))(v34, v36);
  v10 = 0;
LABEL_30:

  v38 = *(v0 + 8);

  return v38(v10);
}

uint64_t sub_27576B4A8()
{
  v1 = v0[46];
  v2 = v0[45];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_27576B540()
{
  v1 = v0[49];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[43];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_27576B60C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00130);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_27576B6FC()
{
  result = qword_2809FFBA0;
  if (!qword_2809FFBA0)
  {
    sub_275795DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFBA0);
  }

  return result;
}

uint64_t sub_27576B78C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_27576B800@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576B8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576B930@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576B9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BA40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 40);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BB44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 44);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 48);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 52);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BCB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 56);
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BD34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToggleRecommendedBackupAction(0) + 60);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_27576BDD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v131 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v130 = v112 - v5;
  v134 = sub_275796280();
  v135 = *(v134 - 8);
  v6 = MEMORY[0x28223BE20](v134);
  v132 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v129 = v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v112 - v10;
  v137 = sub_2757963E0();
  v136 = *(v137 - 8);
  v12 = MEMORY[0x28223BE20](v137);
  v128 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v127 = v112 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v112 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v112 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v112 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v112 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v112 - v28;
  v133 = a2;
  v30 = 0;
  sub_275796390();
  v123 = v27;
  v124 = v24;
  v116 = v18;
  v117 = v21;
  v126 = v4;
  v125 = a1;
  v31 = v135;
  v32 = v136;
  v33 = v137;
  (*(v136 + 56))(v11, 0, 1, v137);
  v34 = *(v32 + 32);
  v34(v29, v11, v33);
  sub_27577204C(v29, v138);
  v35 = v29;
  v36 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v37 = *(v36 + 24);
  v38 = v123;
  sub_275796390();
  v114 = v37;
  v122 = v34;
  v39 = sub_2757490EC();
  v40 = v31;
  v121 = v32 + 32;
  v112[2] = v36;
  v113 = v35;
  v41 = v136;
  v42 = *(v136 + 8);
  v43 = v39;
  v123 = (v136 + 8);
  v42(v38, v137);
  v44 = *(v43 + 16);
  v115 = v42;
  if (v44)
  {
    v119 = *(v41 + 16);
    v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v112[1] = v43;
    v46 = v43 + v45;
    v120 = v41 + 16;
    v118 = *(v41 + 72);
    v47 = MEMORY[0x277D84F90];
    v48 = v137;
    v49 = v41;
    v50 = v124;
    v119(v124, v43 + v45, v137);
    while (1)
    {
      v51 = sub_275748F2C();
      if (v30)
      {

        v42(v50, v48);
        v30 = 0;
      }

      else
      {
        v52 = v51;
        v136 = 0;
        v42(v50, v48);
        v53 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2756E65D4(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        v47 = v53;
        if (v55 >= v54 >> 1)
        {
          v47 = sub_2756E65D4((v54 > 1), v55 + 1, 1, v53);
        }

        *(v47 + 2) = v55 + 1;
        v47[v55 + 32] = v52 & 1;
        v40 = v135;
        v42 = v115;
        v50 = v124;
        v30 = v136;
      }

      v46 += v118;
      if (!--v44)
      {
        break;
      }

      v119(v50, v46, v48);
    }

    v56 = v47;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
    v48 = v137;
    v49 = v41;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v58 = v134;
  v59 = v129;
  if ((result & 1) == 0)
  {
    result = sub_275770734(v56);
    v56 = result;
  }

  v60 = v138[0];
  if ((v138[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v138[0] >= *(v56 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v56 + 32 + v138[0]) = (*(v56 + 32 + v138[0]) & 1) == 0;
  v61 = sub_275700E70();
  (*(v40 + 16))(v59, v61, v58);
  sub_275773DF0(v138, v139);
  v62 = sub_275796270();
  LODWORD(v137) = sub_275798310();
  if (!os_log_type_enabled(v62, v137))
  {
    sub_275773EAC(v138);
    sub_275773EAC(v138);

    (*(v40 + 8))(v59, v58);
    goto LABEL_22;
  }

  v63 = swift_slowAlloc();
  result = swift_slowAlloc();
  *&v139[0] = result;
  *v63 = 134218498;
  *(v63 + 4) = v60;
  *(v63 + 12) = 1024;
  if (v60 >= *(v56 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v64 = result;
  v65 = *(v56 + 32 + v60);
  sub_275773EAC(v138);
  *(v63 + 14) = v65;
  sub_275773EAC(v138);
  *(v63 + 18) = 2080;

  v67 = MEMORY[0x277C80210](v66, MEMORY[0x277D839B0]);
  v69 = v68;

  v70 = sub_27562792C(v67, v69, v139);

  *(v63 + 20) = v70;
  _os_log_impl(&dword_275623000, v62, v137, "ToggleRecommendedBackupAction, setting selected devices idx %ld selected: %{BOOL}d. New list: %s", v63, 0x1Cu);
  __swift_destroy_boxed_opaque_existential_0(v64);
  MEMORY[0x277C81E50](v64, -1, -1);
  MEMORY[0x277C81E50](v63, -1, -1);

  (*(v40 + 8))(v129, v134);
LABEL_22:
  v71 = v126;
  (*(v131 + 16))(v130, v125 + v114, v126);
  v72 = *(v56 + 16);
  v73 = v56;
  if (v72)
  {
    *&v139[0] = MEMORY[0x277D84F90];
    v74 = v56;

    sub_275770748(0, v72, 0);
    v75 = 32;
    v76 = *&v139[0];
    v77 = v116;
    do
    {
      sub_275798150();
      *&v139[0] = v76;
      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_275770748(v78 > 1, v79 + 1, 1);
        v76 = *&v139[0];
      }

      *(v76 + 16) = v79 + 1;
      v122(v76 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v79, v77, v48);
      ++v75;
      --v72;
    }

    while (v72);
    v73 = v74;

    v71 = v126;
    v40 = v135;
  }

  v80 = v117;
  sub_275798130();

  v81 = v130;
  sub_2757964E0();
  v82 = v115;
  if (v30)
  {
    v115(v80, v48);
    (*(v131 + 8))(v81, v71);
    v82(v113, v48);

    v84 = v132;
    v85 = v134;
    v86 = sub_275700E70();
    (*(v40 + 16))(v84, v86, v85);
    v87 = v30;
    v88 = sub_275796270();
    v89 = sub_2757982F0();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      v92 = v30;
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v90 + 4) = v93;
      *v91 = v93;
      _os_log_impl(&dword_275623000, v88, v89, "ToggleRecommendedBackupAction: Error while toggling backup, %@", v90, 0xCu);
      sub_2756C92B4(v91, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v91, -1, -1);
      MEMORY[0x277C81E50](v90, -1, -1);
    }

    else
    {
    }

    return (*(v40 + 8))(v84, v85);
  }

  else
  {
    v137 = v73;
    v115(v80, v48);
    (*(v131 + 8))(v81, v71);
    v83 = v127;
    sub_275796390();
    v136 = sub_2757490EC();
    v94 = v115;
    v115(v83, v48);
    v95 = *(v136 + 16);
    if (v95)
    {
      v98 = *(v49 + 16);
      v96 = v49 + 16;
      v97 = v98;
      v99 = v136 + ((*(v96 + 64) + 32) & ~*(v96 + 64));
      v100 = *(v96 + 56);
      v101 = MEMORY[0x277D84F90];
      v102 = v128;
      v98(v128, v99, v48);
      while (1)
      {
        sub_27577204C(v102, v139);
        v94(v102, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_2756E66C8(0, *(v101 + 2) + 1, 1, v101);
        }

        v104 = *(v101 + 2);
        v103 = *(v101 + 3);
        if (v104 >= v103 >> 1)
        {
          v101 = sub_2756E66C8((v103 > 1), v104 + 1, 1, v101);
        }

        *(v101 + 2) = v104 + 1;
        v105 = &v101[88 * v104];
        v106 = v139[1];
        *(v105 + 2) = v139[0];
        *(v105 + 3) = v106;
        v107 = v139[2];
        v108 = v139[3];
        v109 = v139[4];
        *(v105 + 14) = v140;
        *(v105 + 5) = v108;
        *(v105 + 6) = v109;
        *(v105 + 4) = v107;
        v102 = v128;
        v94 = v115;
        v99 += v100;
        if (!--v95)
        {
          break;
        }

        v97(v128, v99, v48);
      }
    }

    else
    {

      v101 = MEMORY[0x277D84F90];
    }

    v110 = v137;

    v111 = v133;
    sub_27576CE54(v133, v101, v110);

    sub_27576D834(v111, v101, v110);
    v115(v113, v48);

    return swift_bridgeObjectRelease_n();
  }
}

double sub_27576CDF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27577204C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_27576CE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v5 = sub_2757963E0();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v74 = (&v71 - v9);
  MEMORY[0x28223BE20](v8);
  v77 = &v71 - v10;
  v11 = sub_275796280();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v76 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v80 = &v71 - v15;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 0;
    v95 = MEMORY[0x277D84F90];
    v18 = a2 + 32;
    v75 = a2 + 32;
    do
    {
      v19 = (v18 + 88 * v17);
      v20 = v17;
      while (1)
      {
        if (v20 >= v16)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          return result;
        }

        v21 = v19[2];
        v22 = v19[4];
        v86[3] = v19[3];
        v86[4] = v22;
        v87 = *(v19 + 10);
        v23 = v19[1];
        v86[0] = *v19;
        v86[1] = v23;
        v86[2] = v21;
        v17 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_52;
        }

        v24 = v19[3];
        v91 = v19[2];
        v92 = v24;
        v93 = v19[4];
        v25 = v19[1];
        v89 = *v19;
        v94 = *(v19 + 10);
        v90 = v25;
        v88 = v20;
        if (v20 >= *(a3 + 16))
        {
          goto LABEL_53;
        }

        if (*(a3 + 32 + v20))
        {
          break;
        }

        sub_275773DF0(v86, v85);
        result = sub_2756C92B4(&v88, &qword_2809FFBE0);
        ++v20;
        v19 = (v19 + 88);
        if (v17 == v16)
        {
          goto LABEL_17;
        }
      }

      sub_275773DF0(v86, v85);
      v26 = v95;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2756E66C8(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v95 = v28 + 1;
        result = sub_2756E66C8((v27 > 1), v28 + 1, 1, v26);
        v29 = v95;
        v26 = result;
      }

      *(v26 + 16) = v29;
      v95 = v26;
      v30 = v26 + 88 * v28;
      v31 = v90;
      *(v30 + 32) = v89;
      *(v30 + 48) = v31;
      v32 = v91;
      v33 = v92;
      v34 = v93;
      *(v30 + 112) = v94;
      *(v30 + 80) = v33;
      *(v30 + 96) = v34;
      *(v30 + 64) = v32;
      v18 = v75;
    }

    while (v17 != v16);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v35 = v95;
  v36 = *(v95 + 16);
  if (v36)
  {
    v37 = *(v95 + 40);
    v38 = *(v95 + 48);
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = v82;
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v41 = v40 == 0;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v42 = sub_275700E70();
    (*(v83 + 16))(v80, v42, v84);

    v43 = v35;
    v44 = sub_275796270();
    v45 = sub_2757982F0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = *(v43 + 16);

      _os_log_impl(&dword_275623000, v44, v45, "ToggleRecommendedBackupAction: We have %ld devices but were unable to get a name to use in the confirmation message template.", v46, 0xCu);
      MEMORY[0x277C81E50](v46, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v80, v84);
    v36 = *(v43 + 16);
  }

  if (v36 == 2)
  {
    type metadata accessor for ToggleRecommendedBackupAction(0);
    v47 = sub_275796520();
    if (!v39)
    {
LABEL_36:
      v82 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2757A8B60;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_2756E3D78();
      *(v48 + 32) = v37;
      *(v48 + 40) = v38;
      v49 = sub_275797F70();

      v50 = sub_275796520();
      v82 = v49;
LABEL_41:
      v72 = v50;
      v80 = v51;
      LODWORD(v75) = 0;
      goto LABEL_42;
    }

LABEL_39:
  }

  if (v36 == 1)
  {
    type metadata accessor for ToggleRecommendedBackupAction(0);
    v47 = sub_275796520();
    if (!v39)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  if (v36 >= 3)
  {
    v82 = type metadata accessor for ToggleRecommendedBackupAction(0);
    v52 = sub_275796520();
    if (!v39)
    {
      v80 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_2757A4FC0;
      *(v66 + 56) = MEMORY[0x277D837D0];
      v67 = sub_2756E3D78();
      *(v66 + 32) = v37;
      *(v66 + 40) = v38;
      v68 = MEMORY[0x277D83C10];
      *(v66 + 96) = MEMORY[0x277D83B88];
      *(v66 + 104) = v68;
      *(v66 + 64) = v67;
      *(v66 + 72) = v36 - 1;
      v69 = sub_275797F70();

      v50 = sub_275796520();
      v82 = v69;
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v72 = 0;
  v82 = 0;
  v80 = 0xE000000000000000;
  LODWORD(v75) = 1;
LABEL_42:
  v53 = sub_275700E70();
  v54 = v76;
  (*(v83 + 16))(v76, v53, v84);
  v55 = v95;

  v56 = sub_275796270();
  v57 = sub_275798310();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218240;
    v59 = *(v55 + 16);

    *(v58 + 4) = v59;

    *(v58 + 12) = 1024;
    *(v58 + 14) = v75;
    _os_log_impl(&dword_275623000, v56, v57, "ToggleRecommendedBackupAction: updating buttons for %ld devices selected. Delete button disabled: %{BOOL}d", v58, 0x12u);
    MEMORY[0x277C81E50](v58, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v60 = v77;
  (*(v83 + 8))(v54, v84);
  type metadata accessor for ToggleRecommendedBackupAction(0);
  sub_275798000();

  sub_2757964E0();
  if (v39)
  {
    (*(v78 + 8))(v60, v79);
  }

  else
  {
    v61 = v78;
    v82 = 0;
    v62 = v79;
    v95 = *(v78 + 8);
    (v95)(v60, v79);
    v63 = swift_allocObject();
    *(v63 + 16) = v75;
    v64 = v74;
    *v74 = v63;
    (*(v61 + 104))(v64, *MEMORY[0x277D23258], v62);
    v65 = v82;
    sub_2757964E0();
    (v95)(v64, v62);
    if (v65)
    {
    }

    else
    {
      v70 = v73;
      sub_275798000();

      sub_2757964E0();
      return (v95)(v70, v62);
    }
  }
}

unsigned __int8 *sub_27576D834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = sub_275796280();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2757963E0();
  v9 = *(v8 - 8);
  v81 = v8;
  v82 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v78 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v74 - v13;
  MEMORY[0x28223BE20](v12);
  v75 = (&v74 - v14);
  v76 = sub_2756FADF0(MEMORY[0x277D84F90]);
  v15 = *(a2 + 16);
  v84 = v5;
  if (!v15)
  {
    v17 = 0;
LABEL_79:
    v52 = swift_allocObject();
    v92 = v17;
    *(v52 + 16) = sub_275798950();
    *(v52 + 24) = v53;
    v54 = v75;
    *v75 = v52;
    v55 = *MEMORY[0x277D232A0];
    v57 = v81;
    v56 = v82;
    v100 = *(v82 + 104);
    (v100)(v54, v55, v81);
    v58 = v77;
    (*(v56 + 32))(v77, v54, v57);
    v59 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v59;
    sub_275770E08(v58, 0xD000000000000010, 0x80000002757BA700, isUniquelyReferenced_nonNull_native);
    v61 = v92;

    v62 = sub_275700E70();
    v63 = v80;
    (*(v5 + 16))(v7, v62, v80);

    v64 = sub_275796270();
    v65 = sub_275798310();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v92 = v67;
      *v66 = 136315138;
      v68 = sub_275797EC0();
      v70 = sub_27562792C(v68, v69, &v92);
      v86 = v7;
      v71 = v70;
      v57 = v81;

      *(v66 + 4) = v71;

      _os_log_impl(&dword_275623000, v64, v65, "ToggleRecommendedBackupAction, setting disappear user info %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x277C81E50](v67, -1, -1);
      MEMORY[0x277C81E50](v66, -1, -1);

      (*(v84 + 8))(v86, v80);
    }

    else
    {

      (*(v5 + 8))(v7, v63);
    }

    type metadata accessor for ToggleRecommendedBackupAction(0);
    v72 = swift_allocObject();
    *(v72 + 16) = v61;
    v73 = v78;
    *v78 = v72;
    (v100)(v73, *MEMORY[0x277D23270], v57);
    sub_2757964E0();
    return (*(v82 + 8))(v73, v57);
  }

  v16 = 0;
  v17 = 0;
  v86 = (a2 + 32);
  v100 = a3;
  v85 = a3 + 32;
  v83 = v87 + 1;
  while (1)
  {
    v18 = v7;
    v19 = &v86[88 * v16];
    v20 = *(v19 + 2);
    v21 = *(v19 + 4);
    v89 = *(v19 + 3);
    v90 = v21;
    v91 = *(v19 + 10);
    v22 = *(v19 + 1);
    v88[0] = *v19;
    v88[1] = v22;
    v88[2] = v20;
    v98 = v91;
    v95 = v20;
    v96 = v89;
    v97 = v21;
    v93 = v88[0];
    v94 = v22;
    v92 = v16;
    v23 = *(&v21 + 1);
    v24 = v91;
    result = sub_275773DF0(v88, v87);
    if (*(v100 + 16) <= v16)
    {
      break;
    }

    if (*(v85 + v16) != 1)
    {
      v7 = v18;
      goto LABEL_4;
    }

    v26 = HIBYTE(v24) & 0xF;
    v27 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v28 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v28 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v7 = v18;
      goto LABEL_4;
    }

    if ((v24 & 0x1000000000000000) == 0)
    {
      if ((v24 & 0x2000000000000000) != 0)
      {
        v87[0] = v23;
        v87[1] = v24 & 0xFFFFFFFFFFFFFFLL;
        if (v23 == 43)
        {
          if (!v26)
          {
            goto LABEL_86;
          }

          v7 = v18;
          if (--v26)
          {
            v30 = 0;
            v40 = v83;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                break;
              }

              v42 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                break;
              }

              ++v40;
              if (!--v26)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else
        {
          v7 = v18;
          if (v23 == 45)
          {
            if (!v26)
            {
              goto LABEL_88;
            }

            if (--v26)
            {
              v30 = 0;
              v34 = v83;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  break;
                }

                v36 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  break;
                }

                v30 = v36 - v35;
                if (__OFSUB__(v36, v35))
                {
                  break;
                }

                ++v34;
                if (!--v26)
                {
                  goto LABEL_68;
                }
              }
            }
          }

          else if (v26)
          {
            v30 = 0;
            v45 = v87;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                break;
              }

              v47 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                break;
              }

              ++v45;
              if (!--v26)
              {
                goto LABEL_68;
              }
            }
          }
        }
      }

      else
      {
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_275798760();
        }

        v29 = *result;
        v7 = v18;
        if (v29 == 43)
        {
          if (v27 < 1)
          {
            goto LABEL_87;
          }

          v26 = v27 - 1;
          if (v27 != 1)
          {
            v30 = 0;
            if (!result)
            {
              goto LABEL_59;
            }

            v37 = result + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v26)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v29 == 45)
        {
          if (v27 < 1)
          {
            goto LABEL_85;
          }

          v26 = v27 - 1;
          if (v27 != 1)
          {
            v30 = 0;
            if (result)
            {
              v31 = result + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_67;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  goto LABEL_67;
                }

                v30 = v33 - v32;
                if (__OFSUB__(v33, v32))
                {
                  goto LABEL_67;
                }

                ++v31;
                if (!--v26)
                {
                  goto LABEL_68;
                }
              }
            }

LABEL_59:
            LOBYTE(v26) = 0;
LABEL_68:
            v99 = v26;
            v48 = v26;
            goto LABEL_69;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_67;
          }

          v30 = 0;
          if (!result)
          {
            goto LABEL_59;
          }

          while (1)
          {
            v43 = *result - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++result;
            if (!--v27)
            {
              goto LABEL_59;
            }
          }
        }
      }

LABEL_67:
      v30 = 0;
      LOBYTE(v26) = 1;
      goto LABEL_68;
    }

    v30 = sub_2757712B8(v23, v24, 10);
    v48 = v51;

    v7 = v18;
LABEL_69:
    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = v30;
    }

    v5 = v84;
    v50 = __OFADD__(v17, v49);
    v17 += v49;
    if (v50)
    {
      goto LABEL_84;
    }

LABEL_4:
    ++v16;
    sub_2756C92B4(&v92, &qword_2809FFBE0);
    if (v16 == v15)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}