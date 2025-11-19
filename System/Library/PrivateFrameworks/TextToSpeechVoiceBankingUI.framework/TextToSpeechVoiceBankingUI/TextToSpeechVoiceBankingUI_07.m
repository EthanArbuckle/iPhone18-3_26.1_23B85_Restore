uint64_t sub_26EEBF3A8()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26EE15538;

  return sub_26EEB9C34();
}

uint64_t EnvironmentValues.ttsEditModeOverride.getter()
{
  sub_26EEBF4BC();
  sub_26EF39DEC();
  return v1;
}

unint64_t sub_26EEBF4BC()
{
  result = qword_2806CDA20;
  if (!qword_2806CDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CDA20);
  }

  return result;
}

uint64_t sub_26EEBF510@<X0>(_BYTE *a1@<X8>)
{
  sub_26EEBF4BC();
  result = sub_26EF39DEC();
  *a1 = v3;
  return result;
}

uint64_t sub_26EEBF560(char *a1)
{
  v2 = *a1;
  sub_26EEBF4BC();
  return sub_26EF39DFC();
}

uint64_t (*EnvironmentValues.ttsEditModeOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26EEBF4BC();
  sub_26EF39DEC();
  *(a1 + 16) = *(a1 + 17);
  return sub_26EEBF650;
}

uint64_t sub_26EEBF650(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_26EF39DFC();
}

uint64_t View.ttsEditMode(_:)()
{
  swift_getKeyPath();
  sub_26EF3A68C();
}

uint64_t sub_26EEBF6FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F68, &unk_26EF41FF0) + 44);
  return sub_26EF3A26C();
}

uint64_t sub_26EEBF750()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {
    v8 = *(v0 + 40);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v7, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v11[15];
  }

  return v7 & 1;
}

uint64_t sub_26EEBF8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF39DDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v18 - v12);
  v14 = type metadata accessor for VoicePickerPickableView();
  sub_26EE13B88(v1 + *(v14 + 28), v13, &qword_2806C8DF8, &qword_26EF41D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26EE14D98(v13, a1, &qword_2806C86A0, &qword_26EF407E0);
  }

  v16 = *v13;
  sub_26EF3B46C();
  v17 = sub_26EF3A36C();
  sub_26EF3880C();

  sub_26EF39DCC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_26EEBFAA4()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for VoicePickerPickableView() + 32);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t type metadata accessor for VoicePickerPickableView()
{
  result = qword_2806CDAD0;
  if (!qword_2806CDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEBFC48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E00, &qword_26EF41D98);
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E08, &qword_26EF41DA0);
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v76 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E10, &qword_26EF41DA8);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v76 - v15;
  v17 = sub_26EF3AE0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v76 - v26;
  sub_26EEBF8BC(&v76 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    sub_26EE14578(v27, &qword_2806C86A0, &qword_26EF407E0);
    goto LABEL_4;
  }

  MEMORY[0x274382CF0](v28);
  sub_26EE14578(v27, &qword_2806C8698, &qword_26EF41D90);
  v29 = sub_26EF3ADFC();
  (*(v18 + 8))(v22, v17);
  if ((v29 & 1) == 0)
  {
LABEL_4:
    if ((sub_26EEBFAA4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v31 = *v1;
  v30 = v1[1];
  ObjectType = swift_getObjectType();
  v33 = *(v30 + 80);
  v34 = *(v33(ObjectType, v30) + 16);

  if (v34)
  {
    v76 = v33(ObjectType, v30);
    v83 = v76;
    v35 = v77;
    v36 = v78;
    (*(v77 + 104))(v11, *MEMORY[0x277CC8AF0], v78);
    v38 = v81;
    v37 = v82;
    (*(v81 + 104))(v6, *MEMORY[0x277CC8B08], v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
    sub_26EE154C8(&qword_2806C8E20, &qword_2806C8E18, &qword_26EF429C0);
    sub_26EF37CBC();
    (*(v38 + 8))(v6, v37);
    (*(v35 + 8))(v11, v36);
    sub_26EE154C8(&qword_2806C8E28, &qword_2806C8E10, &qword_26EF41DA8);
    v39 = v80;
    sub_26EF3B1AC();
    (*(v79 + 8))(v16, v39);

    v40 = v84;
    v41 = v85;
    v42 = sub_26EE17094();
    v43._object = 0xEB00000000454741;
    v44 = v42 & 1;
    v43._countAndFlagsBits = 0x53555F4543494F56;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v43, v44, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_26EF3C6B0;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_26EE1EFBC();
    *(v45 + 32) = v40;
    *(v45 + 40) = v41;
    v46 = sub_26EF3B10C();

    return v46;
  }

LABEL_7:
  v49 = *v1;
  v48 = v1[1];
  v50 = swift_getObjectType();
  (*(v48 + 88))(&v83, v50, v48);
  v51 = *&v83;
  if (BYTE4(v83))
  {
    if (BYTE4(v83) == 1)
    {
      if (v83)
      {
        v52 = (*(v48 + 64))(v50, v48);
        if ((v52 & 0x100000000) == 0)
        {
          v53 = v52;
          v54 = sub_26EE17094() & 1;
          v55._countAndFlagsBits = 0x73752E6563617073;
          v55._object = 0xEA00000000006465;
          TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v55, v54, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_26EF3C6B0;
          v57 = [objc_opt_self() stringFromByteCount:v53 countStyle:0];
          v58 = sub_26EF3B0FC();
          v60 = v59;

          *(v56 + 56) = MEMORY[0x277D837D0];
          *(v56 + 64) = sub_26EE1EFBC();
          *(v56 + 32) = v58;
          *(v56 + 40) = v60;
          v61 = sub_26EF3B10C();

          return v61;
        }
      }
    }

    else
    {
      v74 = (*(v48 + 56))(v50, v48);
      if ((v74 & 0x100000000) == 0)
      {
        v75 = [objc_opt_self() stringFromByteCount:v74 countStyle:0];
        v61 = sub_26EF3B0FC();

        return v61;
      }
    }

    return 0;
  }

  result = (*(v48 + 56))(v50, v48);
  if ((result & 0x100000000) == 0)
  {
    v62 = result;
    v63 = v51 * result;
    if (COERCE_INT(fabs(v63)) > 2139095039)
    {
      __break(1u);
    }

    else if (v63 > -9.2234e18)
    {
      if (v63 < 9.2234e18)
      {
        v64 = v63;
        v65 = objc_opt_self();
        v66 = [v65 stringFromByteCount:v64 countStyle:0];
        v67 = sub_26EF3B0FC();
        v69 = v68;

        v84 = v67;
        v85 = v69;
        MEMORY[0x274383240](47, 0xE100000000000000);
        v70 = [v65 stringFromByteCount:v62 countStyle:0];
        v71 = sub_26EF3B0FC();
        v73 = v72;

        MEMORY[0x274383240](v71, v73);

        return v84;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_26EEC04D4()
{
  v1 = v0;
  v2 = sub_26EF3AE0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v35 - v11;
  sub_26EEBF8BC(&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_26EE14578(v12, &qword_2806C86A0, &qword_26EF407E0);
  }

  else
  {
    MEMORY[0x274382CF0](v13);
    sub_26EE14578(v12, &qword_2806C8698, &qword_26EF41D90);
    v14 = sub_26EF3ADFC();
    result = (*(v3 + 8))(v7, v2);
    if (v14)
    {
      return result;
    }
  }

  result = sub_26EEBFAA4();
  if ((result & 1) == 0)
  {
    v17 = *v1;
    v16 = v1[1];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 88);
    result = v19(&v45, ObjectType, v16);
    if (BYTE4(v45))
    {
      if (BYTE4(v45) == 1)
      {
        if (sub_26EEBF750())
        {
          v20 = v1[2];
          v21 = v1[3];
          v22 = v1[4];
          v36 = v20;
          v43 = v20;
          *&v44 = v21;
          *(&v44 + 1) = v22;
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
          MEMORY[0x274382CF0](&v38);
          v23 = v38;
          v24 = *(v16 + 48);
          v25 = v24(ObjectType, v16);
          v27 = sub_26EEC10CC(v25, v26, v23);

          v28 = v24(ObjectType, v16);
          v30 = v29;
          v31 = v36;
          v43 = v36;
          *&v44 = v21;
          *(&v44 + 1) = v22;

          if (v27)
          {
            MEMORY[0x274382CF0](&v42, v35);
            sub_26EEC696C(v28, v30);

            v38 = v31;
            v39 = v21;
            v40 = v22;
            v41 = v42;
          }

          else
          {
            MEMORY[0x274382CF0](&v41, v35);
            sub_26EE92004(&v42, v28, v30);

            v38 = v31;
            v39 = v21;
            v40 = v22;
            v37 = v41;
          }

          sub_26EF3AC3C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26EF3C6B0;
          *(inited + 32) = (*(v16 + 48))(ObjectType, v16);
          *(inited + 40) = v33;
          v34 = sub_26EE9592C(inited);
          swift_setDeallocating();
          sub_26EE95A18(inited + 32);
          v43 = v1[2];
          v44 = *(v1 + 3);
          v38 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
          return sub_26EF3AC3C();
        }
      }

      if (v45)
      {
        return result;
      }
    }

    result = v19(&v43, ObjectType, v16);
    if (!BYTE4(v43))
    {
      return (*(v16 + 104))(ObjectType, v16);
    }

    if (BYTE4(v43) != 1)
    {
      return (*(v16 + 112))(ObjectType, v16);
    }

    if (v43)
    {
      return (*(v16 + 104))(ObjectType, v16);
    }
  }

  return result;
}

uint64_t sub_26EEC09E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_26EF3B2DC();
  v4[13] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x2822009F8](sub_26EEC0A80, v6, v5);
}

uint64_t sub_26EEC0A80()
{
  v1 = *(v0 + 96);
  v2 = (v1 + *(type metadata accessor for VoicePickerPickableView() + 36));
  v3 = *v2;
  *(v0 + 197) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 128) = v4;
  *(v0 + 24) = v4;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (*(v0 + 192) == 1)
  {
    sub_26EF381CC();
    *(v0 + 144) = sub_26EF381BC();
    v5 = *(MEMORY[0x277D701B0] + 4);
    v17 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_26EEC0C98;

    return v17();
  }

  else
  {
    *(v0 + 32) = v3;
    v8 = *(v0 + 96);
    *(v0 + 40) = v4;
    *(v0 + 193) = 1;
    sub_26EF3AB0C();
    sub_26EF381CC();
    *(v0 + 160) = sub_26EF381BC();
    v9 = *v8;
    v10 = v8[1];
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 48))(ObjectType, v10);
    v14 = v13;
    *(v0 + 168) = v13;
    v15 = *(MEMORY[0x277D701B8] + 4);
    v18 = (*MEMORY[0x277D701B8] + MEMORY[0x277D701B8]);
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_26EEC0E6C;

    return v18(v12, v14);
  }
}

uint64_t sub_26EEC0C98()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_26EEC0DDC, v5, v4);
}

uint64_t sub_26EEC0DDC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 197);
  v4 = *(v0 + 104);

  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  *(v0 + 196) = 0;
  sub_26EF3AB0C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26EEC0E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_26EEC1020;
  }

  else
  {
    v8 = v2[20];
    v7 = v2[21];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_26EEC0F90;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEC0F90()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 197);
  v4 = *(v0 + 104);

  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 195) = 0;
  sub_26EF3AB0C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26EEC1020()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 197);
  v6 = *(v0 + 104);

  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  *(v0 + 194) = 0;
  sub_26EF3AB0C();
  v7 = *(v0 + 8);
  v8 = *(v0 + 184);

  return v7();
}

uint64_t sub_26EEC10CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26EF3B87C();
  sub_26EF3B16C();
  v7 = sub_26EF3B8CC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26EF3B82C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26EEC11C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_26EF3B2DC();
  v4[5] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_26EEC125C, v6, v5);
}

uint64_t sub_26EEC125C()
{
  v1 = v0[4];
  sub_26EF381CC();
  v0[8] = sub_26EF381BC();
  v2 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 48))(ObjectType, v3);
  v7 = v6;
  v0[9] = v6;
  v8 = *(MEMORY[0x277D701A8] + 4);
  v11 = (*MEMORY[0x277D701A8] + MEMORY[0x277D701A8]);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_26EEC135C;

  return v11(v5, v7);
}

uint64_t sub_26EEC135C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 89) = a1;

  v6 = *(v2 + 56);
  v7 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_26EEC14C4, v7, v6);
}

uint64_t sub_26EEC14C4()
{
  v1 = *(v0 + 89);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = (v3 + *(type metadata accessor for VoicePickerPickableView() + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v7 = *(v0 + 8);

  return v7();
}

BOOL sub_26EEC157C()
{
  v2 = *v0;
  v1 = v0[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 88))(&v13, ObjectType, v1);
  if (BYTE4(v13) != 1)
  {
    return 0;
  }

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v11[1] = v0[2];
  v12 = *(v0 + 3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](v11, v4);
  v5 = v11[0];
  v6 = (*(v1 + 48))(ObjectType, v1);
  v8 = sub_26EEC10CC(v6, v7, v5);

  if (v8)
  {
    return 0;
  }

  v10 = *((*(v1 + 80))(ObjectType, v1) + 16);

  return v10 == 0;
}

uint64_t sub_26EEC16A8()
{
  v1 = v0;
  v2 = sub_26EF39F4C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  v7 = MEMORY[0x28223BE20](v2, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
  v13 = *(v3 + 72);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26EF3C6B0;
  sub_26EF39F3C();
  v26 = v15;
  sub_26EEC8DCC(&qword_2806C6AB8, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EF3B68C();
  v26 = v1[2];
  v27 = *(v1 + 3);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](&v25, v16);
  v17 = v25;
  v18 = *v1;
  v19 = v1[1];
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 48))(ObjectType, v19);
  LOBYTE(v19) = sub_26EEC10CC(v21, v22, v17);

  if (v19)
  {
    sub_26EF39EDC();
    sub_26EF39F1C();
    v24 = *(v4 + 8);
    v24(v9, v2);
    return (v24)(v12, v2);
  }

  return result;
}

uint64_t sub_26EEC1948@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for VoicePickerPickableView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E30, &qword_26EF41DD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E38, &qword_26EF41DD8);
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v28 - v17;
  sub_26EEC6DD0(v2, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_26EEC6E38(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E40, &qword_26EF41DE0);
  sub_26EEC6F70();
  sub_26EF3AB4C();
  v21 = sub_26EE154C8(&qword_2806C8E60, &qword_2806C8E30, &qword_26EF41DD0);
  v22 = sub_26EEC7054();
  sub_26EF3A66C();
  (*(v8 + 8))(v12, v7);
  v23 = *v2;
  v24 = v2[1];
  ObjectType = swift_getObjectType();
  (*(v24 + 48))(ObjectType, v24);
  v33 = v7;
  v34 = &type metadata for SuperPlainButtonStyle;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_26EF3A82C();

  return (*(v30 + 8))(v18, v26);
}

uint64_t sub_26EEC1CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F90, &qword_26EF42080);
  v227 = *(v3 - 8);
  v228 = v3;
  v4 = *(v227 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v224 = &v213 - v6;
  v7 = sub_26EF3AA9C();
  v219 = *(v7 - 8);
  v220 = v7;
  v8 = *(v219 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v218 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F98, &qword_26EF42088);
  v11 = *(*(v221 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v221, v12);
  v223 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v222 = &v213 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FA0, &qword_26EF42090);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v240 = &v213 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v246 = &v213 - v23;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FA8, &qword_26EF42098);
  v24 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236, v25);
  v237 = &v213 - v26;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FB0, &qword_26EF420A0);
  v27 = *(*(v242 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v242, v28);
  v239 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v245 = &v213 - v32;
  v33 = sub_26EF3A15C();
  v243 = *(v33 - 8);
  v244 = v33;
  v34 = *(v243 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for VoicePickerPickableView();
  v234 = *(v38 - 8);
  v235 = v38;
  v39 = *(v234 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v230 = v41;
  v231 = &v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FB8, &qword_26EF420A8);
  v226 = *(v232 - 8);
  v42 = *(v226 + 64);
  MEMORY[0x28223BE20](v232, v43);
  v45 = &v213 - v44;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FC0, &qword_26EF420B0);
  v46 = *(v233 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v233, v48);
  v50 = &v213 - v49;
  v51 = sub_26EF3AE0C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  v56 = &v213 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8, v59);
  v61 = &v213 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FC8, &qword_26EF420B8);
  v63 = *(*(v62 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v62 - 8, v64);
  v238 = &v213 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v67);
  v247 = &v213 - v68;
  v241 = a1;
  sub_26EEBF8BC(v61);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v69 - 8) + 48))(v61, 1, v69) == 1)
  {
    sub_26EE14578(v61, &qword_2806C86A0, &qword_26EF407E0);
    v70 = v241;
  }

  else
  {
    MEMORY[0x274382CF0](v69);
    sub_26EE14578(v61, &qword_2806C8698, &qword_26EF41D90);
    v71 = sub_26EF3ADFC();
    (*(v52 + 8))(v56, v51);
    v70 = v241;
    if (v71)
    {
      goto LABEL_5;
    }
  }

  if (sub_26EEBFAA4())
  {
LABEL_5:
    v72 = sub_26EEC157C();
    v73 = v234;
    if (v72)
    {
      v74 = v231;
      sub_26EEC6DD0(v70, v231);
      v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v76 = swift_allocObject();
      sub_26EEC6E38(v74, v76 + v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9090, &qword_26EF42198);
      sub_26EEC8C84();
      sub_26EF3AB4C();
      sub_26EF3A14C();
      sub_26EE154C8(&qword_2806C90B0, &qword_2806C8FB8, &qword_26EF420A8);
      sub_26EEC8DCC(&qword_2806C8FF8, MEMORY[0x277CDE0B8]);
      v77 = v232;
      v78 = v244;
      sub_26EF3A65C();
      (*(v243 + 8))(v37, v78);
      (*(v226 + 8))(v45, v77);
      v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90B8, &qword_26EF421A8) + 36)] = 0;
      v79 = sub_26EF3A3EC();
      sub_26EF3962C();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v88 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90C0, &qword_26EF421B0) + 36)];
      *v88 = v79;
      *(v88 + 1) = v81;
      *(v88 + 2) = v83;
      *(v88 + 3) = v85;
      *(v88 + 4) = v87;
      v88[40] = 0;
      v89 = sub_26EF3A40C();
      sub_26EF3962C();
      v90 = v233;
      v91 = &v50[*(v233 + 36)];
      *v91 = v89;
      *(v91 + 1) = v92;
      *(v91 + 2) = v93;
      *(v91 + 3) = v94;
      *(v91 + 4) = v95;
      v91[40] = 0;
      sub_26EE14D98(v50, v247, &qword_2806C8FC0, &qword_26EF420B0);
      v96 = v90;
      v97 = 0;
    }

    else
    {
      v97 = 1;
      v96 = v233;
    }

    goto LABEL_9;
  }

  v97 = 1;
  v96 = v233;
  v73 = v234;
LABEL_9:
  (*(v46 + 56))(v247, v97, 1, v96);
  v98 = v231;
  sub_26EEC6DD0(v70, v231);
  v99 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v216 = *(v73 + 80);
  v100 = swift_allocObject();
  v217 = v99;
  v101 = sub_26EEC6E38(v98, v100 + v99);
  MEMORY[0x28223BE20](v101, v102);
  *(&v213 - 2) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FD0, &qword_26EF420C0);
  sub_26EEC8528();
  v103 = v237;
  sub_26EF3AB4C();
  v104 = v70 + *(v235 + 40);
  v105 = *v104;
  v106 = *(v104 + 8);
  LOBYTE(v312[0]) = v105;
  *(&v312[0] + 1) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  LOBYTE(v98) = v303;
  KeyPath = swift_getKeyPath();
  v108 = swift_allocObject();
  *(v108 + 16) = (v98 & 1) == 0;
  v109 = (v103 + *(v236 + 36));
  *v109 = KeyPath;
  v109[1] = sub_26EE274EC;
  v109[2] = v108;
  sub_26EF3A14C();
  sub_26EEC85F4();
  sub_26EEC8DCC(&qword_2806C8FF8, MEMORY[0x277CDE0B8]);
  v110 = v245;
  v111 = v244;
  sub_26EF3A65C();
  (*(v243 + 8))(v37, v111);
  sub_26EE14578(v103, &qword_2806C8FA8, &qword_26EF42098);
  *(v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9000, &qword_26EF42108) + 36)) = 0;
  LOBYTE(KeyPath) = sub_26EF3A3EC();
  sub_26EF3962C();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9008, &qword_26EF42110) + 36);
  *v120 = KeyPath;
  *(v120 + 8) = v113;
  *(v120 + 16) = v115;
  *(v120 + 24) = v117;
  *(v120 + 32) = v119;
  *(v120 + 40) = 0;
  LOBYTE(KeyPath) = sub_26EF3A40C();
  sub_26EF3962C();
  v121 = v110 + *(v242 + 36);
  *v121 = KeyPath;
  *(v121 + 8) = v122;
  *(v121 + 16) = v123;
  *(v121 + 24) = v124;
  *(v121 + 32) = v125;
  *(v121 + 40) = 0;
  v237 = sub_26EF39F6C();
  LOBYTE(v303) = 1;
  v126 = *v70;
  v127 = *(v70 + 8);
  ObjectType = swift_getObjectType();
  *&v312[0] = (*(v127 + 40))(ObjectType, v127);
  *(&v312[0] + 1) = v129;
  sub_26EE12538();
  v242 = sub_26EF3A5DC();
  v243 = v130;
  v132 = v131;
  v244 = v133;
  v134 = sub_26EEBFC48();
  if (v135)
  {
    *&v312[0] = v134;
    *(&v312[0] + 1) = v135;
    v136 = sub_26EF3A5DC();
    v138 = v137;
    v140 = v139;
    sub_26EF3A4CC();
    v141 = v132;
    v142 = sub_26EF3A5BC();
    v144 = v143;
    LODWORD(v236) = v145;
    v147 = v146;
    v70 = v241;

    v148 = v140 & 1;
    v149 = v144;
    v150 = v138;
    v151 = v142;
    v132 = v141;
    sub_26EE12ABC(v136, v150, v148);

    v152 = v236 & 1;
    sub_26EE13B20(v151, v144, v236 & 1);
  }

  else
  {
    v151 = 0;
    v149 = 0;
    v152 = 0;
    v147 = 0;
  }

  v153 = v132 & 1;
  v155 = v242;
  v154 = v243;
  sub_26EE13B20(v242, v243, v153);

  sub_26EEAFB98(v151, v149, v152, v147);
  sub_26EE5AAAC(v151, v149, v152, v147);
  LOBYTE(v312[0]) = v153;
  v235 = v149;
  v236 = v151;
  v234 = v152;
  sub_26EE5AAAC(v151, v149, v152, v147);
  LODWORD(v233) = v153;
  sub_26EE12ABC(v155, v154, v153);

  LODWORD(v232) = v303;
  *&v312[0] = *(v70 + 16);
  *(v312 + 8) = *(v70 + 24);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](&v303, v156);
  v157 = v303;
  v158 = *v70;
  v159 = *(v70 + 8);
  v160 = swift_getObjectType();
  v161 = *(v159 + 48);
  v225 = v160;
  v162 = v161(v160, v159);
  v164 = sub_26EEC10CC(v162, v163, v157);

  v226 = v147;
  if (v164)
  {
    sub_26EF3AA8C();
    v165 = *MEMORY[0x277CE0FE0];
    v167 = v218;
    v166 = v219;
    v168 = *(v219 + 104);
    v215 = v158;
    v169 = v220;
    v168(v218, v165, v220);
    v170 = sub_26EF3AADC();

    (*(v166 + 8))(v167, v169);
    sub_26EF3AE4C();
    sub_26EF3984C();
    *&v248[38] = v327;
    *&v248[22] = v326;
    *&v248[6] = v325;
    *(v304 + 2) = *v248;
    LOBYTE(v291) = 1;
    v303 = v170;
    LOWORD(v304[0]) = 1;
    *(&v304[1] + 2) = *&v248[16];
    *(&v304[2] + 2) = *&v248[32];
    *&v304[3] = *(&v327 + 1);
    sub_26EF3A47C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9060, &unk_26EF43210);
    sub_26EEC8954();
    v171 = v222;
    sub_26EF3A64C();
    v313 = v304[1];
    v314 = v304[2];
    *&v315 = *&v304[3];
    v312[0] = v303;
    v312[1] = v304[0];
    sub_26EE14578(v312, &qword_2806C9060, &unk_26EF43210);
    v172 = sub_26EF3A96C();
    v173 = swift_getKeyPath();
    v174 = (v171 + *(v221 + 36));
    *v174 = v173;
    v174[1] = v172;
    sub_26EF3AE4C();
    sub_26EF3984C();
    v219 = v330;
    v220 = v328;
    v218 = v332;
    v214 = v333;
    LOBYTE(v303) = 1;
    LOBYTE(v291) = v329;
    LOBYTE(v261) = v331;
    v221 = v159;
    v175 = v223;
    sub_26EE13B88(v171, v223, &qword_2806C8F98, &qword_26EF42088);
    LOBYTE(v169) = v303;
    v176 = v291;
    LOBYTE(v166) = v261;
    v177 = v224;
    sub_26EE13B88(v175, v224, &qword_2806C8F98, &qword_26EF42088);
    v178 = v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9088, &qword_26EF42190) + 48);
    *v178 = 0;
    *(v178 + 8) = v169;
    v179 = v219;
    *(v178 + 16) = v220;
    *(v178 + 24) = v176;
    *(v178 + 32) = v179;
    *(v178 + 40) = v166;
    v180 = v214;
    *(v178 + 48) = v218;
    *(v178 + 56) = v180;
    sub_26EE14578(v171, &qword_2806C8F98, &qword_26EF42088);
    v159 = v221;
    sub_26EE14578(v175, &qword_2806C8F98, &qword_26EF42088);
    v181 = v246;
    sub_26EE14D98(v177, v246, &qword_2806C8F90, &qword_26EF42080);
    (*(v227 + 56))(v181, 0, 1, v228);
  }

  else
  {
    (*(v227 + 56))(v246, 1, 1, v228);
  }

  v182 = *(v159 + 88);
  v183 = v225;
  v182(&v249, v225, v159);
  if (BYTE4(v249) == 1)
  {
    sub_26EEC86D8(&v303);
  }

  else
  {
    v184 = v231;
    sub_26EEC6DD0(v241, v231);
    v185 = v217;
    v186 = swift_allocObject();
    sub_26EEC6E38(v184, v186 + v185);
    v182(v312, v183, v159);
    LODWORD(v303) = v312[0];
    BYTE4(v303) = BYTE4(v312[0]);
    *(swift_allocObject() + 16) = 0x4034000000000000;
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9038, &qword_26EF431F0);
    sub_26EEC87E4();
    TTSDownloadButton.init(action:buttonState:size:downloadView:)(sub_26EEC86E4, v186, &v303, sub_26EEC87DC, v187, &v261, 25.0);
    v308 = v269;
    v309 = v270;
    v310 = v271;
    v304[3] = v265;
    v305 = v266;
    v306 = v267;
    v307 = v268;
    v303 = v261;
    v304[0] = v262;
    v304[1] = v263;
    v304[2] = v264;
    sub_26EEC8A00(&v303);
  }

  v299 = v308;
  v300 = v309;
  v301 = v310;
  v302 = v311;
  v295 = v304[3];
  v296 = v305;
  v297 = v306;
  v298 = v307;
  v291 = v303;
  v292 = v304[0];
  v293 = v304[1];
  v294 = v304[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9010, &qword_26EF42118);
  sub_26EE154C8(&qword_2806C9018, &qword_2806C9010, &qword_26EF42118);
  sub_26EF3A06C();
  v269 = v319;
  v270 = v320;
  v271 = v321;
  v272 = v322;
  v265 = v315;
  v266 = v316;
  v267 = v317;
  v268 = v318;
  v261 = v312[0];
  v262 = v312[1];
  v263 = v313;
  v264 = v314;
  CGSizeMake(&v261, v313, *&v314);
  v188 = v238;
  sub_26EE13B88(v247, v238, &qword_2806C8FC8, &qword_26EF420B8);
  v189 = v239;
  sub_26EE13B88(v245, v239, &qword_2806C8FB0, &qword_26EF420A0);
  v190 = v240;
  sub_26EE13B88(v246, v240, &qword_2806C8FA0, &qword_26EF42090);
  v258 = v270;
  v259 = v271;
  v254 = v266;
  v255 = v267;
  v260 = v272;
  v256 = v268;
  v257 = v269;
  v249 = v261;
  v250 = v262;
  v251 = v263;
  v252 = v264;
  v253 = v265;
  v191 = v188;
  v192 = v229;
  sub_26EE13B88(v191, v229, &qword_2806C8FC8, &qword_26EF420B8);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9020, &qword_26EF42120);
  sub_26EE13B88(v189, v192 + v193[12], &qword_2806C8FB0, &qword_26EF420A0);
  v194 = v192 + v193[16];
  v273 = v237;
  LOBYTE(v274) = v232;
  *(&v274 + 1) = v324[0];
  DWORD1(v274) = *(v324 + 3);
  *(&v274 + 1) = v242;
  *&v275 = v243;
  BYTE8(v275) = v233;
  *(&v275 + 9) = v323[0];
  HIDWORD(v275) = *(v323 + 3);
  *&v276 = v244;
  *(&v276 + 1) = v236;
  *&v277 = v235;
  v195 = v226;
  *(&v277 + 1) = v234;
  v278 = v226;
  v197 = v275;
  v196 = v276;
  v198 = v277;
  *(v194 + 80) = v226;
  *(v194 + 48) = v196;
  *(v194 + 64) = v198;
  v199 = v273;
  *(v194 + 16) = v274;
  *(v194 + 32) = v197;
  *v194 = v199;
  v200 = v192 + v193[20];
  *v200 = 0;
  *(v200 + 8) = 1;
  sub_26EE13B88(v190, v192 + v193[24], &qword_2806C8FA0, &qword_26EF42090);
  v201 = v193[28];
  v202 = v256;
  v299 = v257;
  v300 = v258;
  v203 = v258;
  v301 = v259;
  v205 = v252;
  v204 = v253;
  v295 = v253;
  v296 = v254;
  v206 = v254;
  v207 = v255;
  v297 = v255;
  v298 = v256;
  v208 = v249;
  v209 = v250;
  v291 = v249;
  v292 = v250;
  v210 = v251;
  v293 = v251;
  v294 = v252;
  v211 = v192 + v201;
  *(v211 + 128) = v257;
  *(v211 + 144) = v203;
  *(v211 + 160) = v259;
  *(v211 + 64) = v204;
  *(v211 + 80) = v206;
  *(v211 + 96) = v207;
  *(v211 + 112) = v202;
  *v211 = v208;
  *(v211 + 16) = v209;
  v302 = v260;
  *(v211 + 176) = v260;
  *(v211 + 32) = v210;
  *(v211 + 48) = v205;
  sub_26EE13B88(&v273, &v303, &qword_2806C9028, &qword_26EF42128);
  sub_26EE13B88(&v291, &v303, &qword_2806C9030, &unk_26EF42130);
  sub_26EE14578(v246, &qword_2806C8FA0, &qword_26EF42090);
  sub_26EE14578(v245, &qword_2806C8FB0, &qword_26EF420A0);
  sub_26EE14578(v247, &qword_2806C8FC8, &qword_26EF420B8);
  v308 = v257;
  v309 = v258;
  v310 = v259;
  v304[3] = v253;
  v305 = v254;
  v311 = v260;
  v306 = v255;
  v307 = v256;
  v303 = v249;
  v304[0] = v250;
  v304[1] = v251;
  v304[2] = v252;
  sub_26EE14578(&v303, &qword_2806C9030, &unk_26EF42130);
  sub_26EE14578(v240, &qword_2806C8FA0, &qword_26EF42090);
  v279[0] = v237;
  v279[1] = 0;
  v280 = v232;
  *v281 = v324[0];
  *&v281[3] = *(v324 + 3);
  v282 = v242;
  v283 = v243;
  v284 = v233;
  *v285 = v323[0];
  *&v285[3] = *(v323 + 3);
  v286 = v244;
  v287 = v236;
  v288 = v235;
  v289 = v234;
  v290 = v195;
  sub_26EE14578(v279, &qword_2806C9028, &qword_26EF42128);
  sub_26EE14578(v239, &qword_2806C8FB0, &qword_26EF420A0);
  return sub_26EE14578(v238, &qword_2806C8FC8, &qword_26EF420B8);
}

uint64_t sub_26EEC3448@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3AA9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90C8, &qword_26EF421B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v26[-v11];
  sub_26EF3AA8C();
  v13 = *MEMORY[0x277CE1010];
  v14 = sub_26EF3AABC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_26EF3AAAC();

  sub_26EE14578(v12, &qword_2806C90C8, &qword_26EF421B8);
  (*(v3 + 104))(v7, *MEMORY[0x277CE0FE0], v2);
  v16 = sub_26EF3AADC();

  (*(v3 + 8))(v7, v2);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = [objc_opt_self() systemRedColor];
  v24 = sub_26EF3AA5C();
  result = swift_getKeyPath();
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  *(a1 + 56) = result;
  *(a1 + 64) = v24;
  return result;
}

double sub_26EEC3718@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3AA9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90D8, &qword_26EF421C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23[-v14];
  v16 = (a1 + *(type metadata accessor for VoicePickerPickableView() + 36));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v24) = v17;
  *(&v24 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  sub_26EF3AA8C();
  (*(v5 + 104))(v9, *MEMORY[0x277CE0FE0], v4);
  v19 = sub_26EF3AADC();

  (*(v5 + 8))(v9, v4);
  *&v24 = v19;
  sub_26EF3A46C();
  sub_26EF3A64C();

  sub_26EF3AE4C();
  sub_26EF3984C();
  (*(v11 + 32))(a2, v15, v10);
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FD0, &qword_26EF420C0) + 36));
  v21 = v25;
  *v20 = v24;
  v20[1] = v21;
  result = *&v26;
  v20[2] = v26;
  return result;
}

double sub_26EEC39E4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF39AEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24[-v10];
  v12 = sub_26EF3AA9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26EF3AA8C();
  (*(v13 + 104))(v17, *MEMORY[0x277CE0FE0], v12);
  v18 = sub_26EF3AADC();

  (*(v13 + 8))(v17, v12);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v26 = 1;
  *&v25[6] = v27;
  *&v25[22] = v28;
  *&v25[38] = v29;
  sub_26EF3AF2C();
  sub_26EF39AFC();
  (*(v3 + 16))(v8, v11, v2);
  sub_26EEC8DCC(&qword_2806C90D0, MEMORY[0x277CDFAE8]);
  v19 = sub_26EF3986C();
  (*(v3 + 8))(v11, v2);
  v20 = sub_26EF3A96C();
  KeyPath = swift_getKeyPath();
  v22 = *&v25[16];
  *(a1 + 18) = *v25;
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v22;
  result = *&v25[32];
  *(a1 + 50) = *&v25[32];
  *(a1 + 64) = *&v25[46];
  *(a1 + 72) = v19;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v20;
  return result;
}

uint64_t sub_26EEC3CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v185 = a1;
  v3 = type metadata accessor for VoicePickerPickableView();
  v182 = *(v3 - 8);
  v4 = *(v182 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v183 = v6;
  v184 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VoicePickerGroup();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v160 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26EF39F4C();
  v180 = *(v11 - 8);
  v12 = *(v180 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v177 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26EF3A2EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E68, &qword_26EF41DF8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v154 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E70, &qword_26EF41E00);
  v158 = *(v159 - 8);
  v26 = *(v158 + 64);
  MEMORY[0x28223BE20](v159, v27);
  v29 = &v154 - v28;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E78, &qword_26EF41E08);
  v30 = *(*(v167 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v167, v31);
  v164 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v165 = &v154 - v35;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E80, &qword_26EF41E10);
  v168 = *(v169 - 8);
  v36 = *(v168 + 64);
  MEMORY[0x28223BE20](v169, v37);
  v166 = &v154 - v38;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E88, &qword_26EF41E18);
  v39 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174, v40);
  v171 = &v154 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E90, &qword_26EF41E20);
  v175 = *(v42 - 8);
  v176 = v42;
  v43 = *(v175 + 64);
  MEMORY[0x28223BE20](v42, v44);
  v172 = &v154 - v45;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E98, &qword_26EF41E28);
  v46 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170, v47);
  v173 = &v154 - v48;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EA0, &qword_26EF41E30);
  v179 = *(v181 - 8);
  v49 = *(v179 + 64);
  MEMORY[0x28223BE20](v181, v50);
  v178 = &v154 - v51;
  sub_26EEC1948(v25);
  sub_26EF3A2CC();
  v52 = sub_26EEC70A8();
  v162 = v29;
  v163 = v21;
  v161 = v52;
  sub_26EF3A7DC();
  (*(v16 + 8))(v20, v15);
  sub_26EE14578(v25, &qword_2806C8E68, &qword_26EF41DF8);
  v53 = *v1;
  v54 = v2[1];
  ObjectType = swift_getObjectType();
  (*(v54 + 88))(v189, ObjectType, v54);
  v186 = v2;
  if (BYTE4(v189[0]))
  {
    if (BYTE4(v189[0]) != 2 || LODWORD(v189[0]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_26EF3C6B0;
      *(v56 + 32) = (*(v54 + 40))(ObjectType, v54);
      *(v56 + 40) = v57;
      v58 = sub_26EEBFC48();
      if (v59)
      {
        v61 = *(v56 + 16);
        v60 = *(v56 + 24);
        v62 = v61 + 1;
        v63 = v160;
        v64 = v158;
        if (v61 < v60 >> 1)
        {
LABEL_6:
          *(v56 + 16) = v62;
          v65 = v56 + 16 * v61;
          *(v65 + 32) = v58;
          *(v65 + 40) = v59;
          v66 = v159;
          goto LABEL_18;
        }

        v108 = v58;
        v152 = v11;
        v153 = v59;
        v110 = sub_26EEC6C6C((v60 > 1), v61 + 1, 1, v56);
        v59 = v153;
        v11 = v152;
LABEL_23:
        v56 = v110;
        v58 = v108;
        goto LABEL_6;
      }

      v63 = v160;
      goto LABEL_17;
    }

    v157 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    v56 = swift_allocObject();
    v156 = xmmword_26EF3C6B0;
    *(v56 + 16) = xmmword_26EF3C6B0;
    v97 = sub_26EE17094();
    v98._object = 0xED0000454D414E5FLL;
    v99 = v97 & 1;
    v98._countAndFlagsBits = 0x44414F4C4E574F44;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v98, v99, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v100 = swift_allocObject();
    *(v100 + 16) = v156;
    v101 = (*(v54 + 40))(ObjectType, v54);
    v103 = v102;
    *(v100 + 56) = MEMORY[0x277D837D0];
    *(v100 + 64) = sub_26EE1EFBC();
    *(v100 + 32) = v101;
    *(v100 + 40) = v103;
    v104 = sub_26EF3B10C();
    v106 = v105;

    *(v56 + 32) = v104;
    *(v56 + 40) = v106;
    v58 = sub_26EEBFC48();
    if (v59)
    {
      v61 = *(v56 + 16);
      v107 = *(v56 + 24);
      v62 = v61 + 1;
      v63 = v160;
      v11 = v157;
      v64 = v158;
      if (v61 < v107 >> 1)
      {
        goto LABEL_6;
      }

      v108 = v58;
      v109 = v59;
      v110 = sub_26EEC6C6C((v107 > 1), v61 + 1, 1, v56);
      v59 = v109;
      v11 = v157;
      goto LABEL_23;
    }

LABEL_16:
    v63 = v160;
    v11 = v157;
LABEL_17:
    v66 = v159;
    v64 = v158;
    goto LABEL_18;
  }

  v157 = v11;
  v67 = v189[0];
  v68 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v68 setNumberStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
  v56 = swift_allocObject();
  v156 = xmmword_26EF3C6B0;
  *(v56 + 16) = xmmword_26EF3C6B0;
  v69 = sub_26EE17094();
  v70._object = 0x800000026EF46400;
  v71 = v69 & 1;
  v70._countAndFlagsBits = 0xD000000000000012;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v70, v71, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v72 = swift_allocObject();
  *(v72 + 16) = v156;
  v73 = (*(v54 + 40))(ObjectType, v54);
  v75 = v74;
  v76 = MEMORY[0x277D837D0];
  *(v72 + 56) = MEMORY[0x277D837D0];
  v77 = sub_26EE1EFBC();
  *(v72 + 64) = v77;
  *(v72 + 32) = v73;
  *(v72 + 40) = v75;
  v78 = sub_26EF3B10C();
  v80 = v79;

  *(v56 + 32) = v78;
  *(v56 + 40) = v80;
  v81 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v82) = v67;
  v83 = [v81 initWithFloat_];
  v84 = [v68 stringFromNumber_];

  if (!v84)
  {

    goto LABEL_16;
  }

  v155 = v68;
  v85 = sub_26EF3B0FC();
  v87 = v86;

  v88 = sub_26EE17094();
  v89._countAndFlagsBits = 0xD000000000000017;
  v89._object = 0x800000026EF46420;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v89, v88 & 1, 0);
  v90 = swift_allocObject();
  *(v90 + 16) = v156;
  *(v90 + 56) = v76;
  *(v90 + 64) = v77;
  *(v90 + 32) = v85;
  *(v90 + 40) = v87;
  v91 = sub_26EF3B10C();
  v93 = v92;

  v95 = *(v56 + 16);
  v94 = *(v56 + 24);
  if (v95 >= v94 >> 1)
  {
    v56 = sub_26EEC6C6C((v94 > 1), v95 + 1, 1, v56);
  }

  v63 = v160;
  v11 = v157;
  v66 = v159;
  v64 = v158;

  *(v56 + 16) = v95 + 1;
  v96 = v56 + 16 * v95;
  *(v96 + 32) = v91;
  *(v96 + 40) = v93;
LABEL_18:
  v189[0] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
  sub_26EE154C8(&qword_2806C8F80, &qword_2806C8E18, &qword_26EF429C0);
  v111 = sub_26EF3B07C();
  v113 = v112;

  v189[0] = v111;
  v189[1] = v113;
  v187 = v163;
  v188 = v161;
  swift_getOpaqueTypeConformance2();
  sub_26EE12538();
  v114 = v164;
  v115 = v162;
  sub_26EF3A78C();

  (*(v64 + 8))(v115, v66);
  v116 = v177;
  v117 = v186;
  sub_26EEC16A8();
  v118 = v165;
  sub_26EF39A8C();
  (*(v180 + 8))(v116, v11);
  v119 = sub_26EE14578(v114, &qword_2806C8E78, &qword_26EF41E08);
  MEMORY[0x28223BE20](v119, v120);
  *(&v154 - 2) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  sub_26EEC71F0();
  sub_26EEC72E8();
  v121 = v166;
  sub_26EF3A7CC();
  sub_26EE14578(v118, &qword_2806C8E78, &qword_26EF41E08);
  v123 = *v117;
  v122 = v117[1];
  v180 = swift_getObjectType();
  (*(v122 + 32))(v180, v122);
  LODWORD(v116) = *(v63 + 16);
  sub_26EEC7398(v63);
  if (v116)
  {
    v124 = 0xC024000000000000;
  }

  else
  {
    v124 = 0x4024000000000000;
  }

  v125 = v171;
  v126 = (*(v168 + 32))(v171, v121, v169);
  v127 = v125 + *(v174 + 36);
  *v127 = 0;
  *(v127 + 8) = v124;
  *(v127 + 16) = xmmword_26EF41CE0;
  *(v127 + 32) = 0;
  MEMORY[0x28223BE20](v126, v128);
  *(&v154 - 2) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EC0, &qword_26EF41E38);
  sub_26EEC73FC();
  sub_26EEC751C();
  v129 = v172;
  sub_26EF3A6DC();
  sub_26EE14578(v125, &qword_2806C8E88, &qword_26EF41E18);
  v130 = sub_26EF3A3BC();
  sub_26EF3962C();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v173;
  (*(v175 + 32))(v173, v129, v176);
  v140 = v139 + *(v170 + 36);
  *v140 = v130;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  v141 = (*(v122 + 48))(v180, v122);
  v143 = v142;
  v144 = v178;
  sub_26EE14D98(v139, v178, &qword_2806C8E98, &qword_26EF41E28);
  v145 = v144 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EF8, &qword_26EF41E58) + 36);
  *v145 = v141;
  *(v145 + 8) = v143;
  *(v145 + 16) = 1;
  v146 = v184;
  sub_26EEC6DD0(v117, v184);
  v147 = (*(v182 + 80) + 16) & ~*(v182 + 80);
  v148 = swift_allocObject();
  sub_26EEC6E38(v146, v148 + v147);
  v149 = v185;
  (*(v179 + 32))(v185, v144, v181);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F00, &unk_26EF41E60);
  v151 = (v149 + *(result + 36));
  *v151 = 0;
  v151[1] = 0;
  v151[2] = sub_26EEC7684;
  v151[3] = v148;
  return result;
}

uint64_t sub_26EEC4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoicePickerPickableView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25[-v13];
  v15 = a1 + *(v5 + 48);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v26._countAndFlagsBits) = v16;
  v26._object = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v25[15] == 1)
  {
    v18 = sub_26EE17094();
    v19._object = 0x800000026EF463E0;
    v20 = v18 & 1;
    v19._countAndFlagsBits = 0xD000000000000011;
    v26 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v19, v20, 0);
    sub_26EEC6DD0(a1, &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v22 = swift_allocObject();
    sub_26EEC6E38(&v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21);
    sub_26EE12538();
    sub_26EF3AB7C();
    (*(v10 + 32))(a2, v14, v9);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v10 + 56))(a2, v23, 1, v9);
}

uint64_t sub_26EEC4FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoicePickerPickableView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EF0, &qword_26EF41E48);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  if (sub_26EEC157C())
  {
    sub_26EEC6DD0(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_26EEC6E38(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    sub_26EF3AB4C();
    v15 = sub_26EF3A97C();
    KeyPath = swift_getKeyPath();
    v17 = &v12[*(v8 + 36)];
    *v17 = KeyPath;
    v17[1] = v15;
    sub_26EE14D98(v12, a2, &qword_2806C8EF0, &qword_26EF41E48);
    return (*(v21 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v19 = *(v21 + 56);

    return v19(a2, 1, 1, v8);
  }
}

uint64_t sub_26EEC5224@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094() & 1;
  v3._countAndFlagsBits = 0x54454C45445F4256;
  v3._object = 0xE900000000000045;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v2, 0);
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26EEC52A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v15[-v5];
  v7 = (a1 + *(type metadata accessor for VoicePickerPickableView() + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  v15[16] = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  result = sub_26EF3AAFC();
  if (v15[15] == 1)
  {
    v11 = sub_26EF3B30C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_26EF3B2DC();
    v12 = sub_26EF3B2CC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    sub_26EE2C388(0, 0, v6, &unk_26EF42038, v13);
  }

  return result;
}

uint64_t sub_26EEC5408()
{
  sub_26EF3B2DC();
  v0[2] = sub_26EF3B2CC();
  v2 = sub_26EF3B29C();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_26EEC549C, v2, v1);
}

uint64_t sub_26EEC549C()
{
  sub_26EF381CC();
  *(v0 + 40) = sub_26EF381BC();
  v1 = *(MEMORY[0x277D701B0] + 4);
  v4 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26EEC5554;

  return v4();
}

uint64_t sub_26EEC5554()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26EEC5698, v5, v4);
}

uint64_t sub_26EEC5698()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EEC56F8@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_26EEC5734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for VoicePickerPickableView();
  v4 = a1 + *(v3 + 44);
  v5 = *v4;
  if (v4[8] != 1)
  {

    sub_26EF3B46C();
    v45 = sub_26EF3A36C();
    sub_26EF3880C();

    v46 = sub_26EF39DDC();
    v47 = *(v46 - 8);
    v48 = *(v47 + 64);
    MEMORY[0x28223BE20](v46, v49);
    v51 = &v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v5, 0);
    (*(v47 + 8))(v51, v46);
    if ((v131 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
    v124 = &v103;
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    MEMORY[0x28223BE20](v52, v55);
    v57 = &v103 - v56;
    v58 = *a1;
    v59 = a1[1];
    ObjectType = swift_getObjectType();
    v127 = (*(v59 + 40))(ObjectType, v59);
    v128 = v61;
    sub_26EE12538();
    v62 = sub_26EF3A5DC();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = (*(v59 + 48))(ObjectType, v59);
    *v57 = v62;
    *(v57 + 1) = v64;
    v57[16] = v66 & 1;
    *(v57 + 3) = v68;
    *(v57 + 4) = v69;
    *(v57 + 5) = v70;
    v57[48] = 1;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F70, &qword_26EF42000);
    v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v71, v73);
    (*(v53 + 16))(&v103 - v74, v57, v52);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F78, &qword_26EF42008);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F60, &qword_26EF41F38);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F00, &unk_26EF41E60);
    v77 = sub_26EEC7C00();
    v127 = v76;
    v128 = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v127 = v75;
    v79 = MEMORY[0x277D837D0];
    v128 = MEMORY[0x277D837D0];
    v129 = OpaqueTypeConformance2;
    v130 = MEMORY[0x277D837F8];
    swift_getOpaqueTypeConformance2();
    v127 = MEMORY[0x277CE0BD8];
    v128 = v79;
    v129 = MEMORY[0x277CE0BC8];
    v130 = MEMORY[0x277D837E0];
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    return (*(v53 + 8))(v57, v52);
  }

  v131 = v5 & 1;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F78, &qword_26EF42008);
  v124 = &v103;
  v121 = *(v6 - 8);
  v122 = v6;
  v7 = *(v121 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v120 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F60, &qword_26EF41F38);
  v118 = &v103;
  v119 = v10;
  v117 = *(v10 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v116 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F00, &unk_26EF41E60);
  v115 = &v103;
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v16);
  v112 = &v103 - v17;
  v18 = sub_26EEC3CF8(&v103 - v17);
  v114 = &v103;
  v19 = *(v3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  sub_26EEC6DD0(a1, &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v22 = sub_26EF3B2CC();
  v23 = *(v19 + 80);
  v113 = ~v23;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_26EEC6E38(&v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + ((v23 + 32) & ~v23));
  v26 = sub_26EF3B30C();
  v111 = &v103;
  v110 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v103 - v30;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v107 = sub_26EF39A1C();
    v108 = &v103;
    v106 = *(v107 - 8);
    v32 = *(v106 + 64);
    MEMORY[0x28223BE20](v107, v33);
    v104 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_26EF3B70C();

    v127 = 0xD000000000000045;
    v128 = 0x800000026EF46390;
    v125 = 540;
    v35 = sub_26EF3B7FC();
    v109 = a1;
    MEMORY[0x274383240](v35);

    v103 = &v103;
    MEMORY[0x28223BE20](v36, v37);
    v38 = &v103 - v30;
    v39 = &v103 - v30;
    v40 = v110;
    (*(v27 + 16))(v38, v39, v110);
    v105 = v20;
    v41 = v104;
    a1 = v109;
    sub_26EF39A0C();
    (*(v27 + 8))(v31, v40);
    v42 = v116;
    sub_26EE14D98(v112, v116, &qword_2806C8F00, &unk_26EF41E60);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F08, &qword_26EF41E98);
    v44 = v41;
    v20 = v105;
    (*(v106 + 32))(v42 + *(v43 + 36), v44, v107);
  }

  else
  {
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F10, &qword_26EF41EA0);
    v82 = v116;
    v83 = (v116 + *(v81 + 36));
    v84 = sub_26EF3990C();
    (*(v27 + 32))(&v83[*(v84 + 20)], &v103 - v30, v110);
    v42 = v82;
    *v83 = &unk_26EF42018;
    *(v83 + 1) = v24;
    sub_26EE14D98(v112, v82, &qword_2806C8F00, &unk_26EF41E60);
  }

  v86 = *a1;
  v85 = a1[1];
  v87 = swift_getObjectType();
  v127 = (*(v85 + 48))(v87, v85);
  v128 = v88;
  MEMORY[0x28223BE20](v127, v88);
  sub_26EEC6DD0(a1, &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = (v23 + 16) & v113;
  v90 = swift_allocObject();
  sub_26EEC6E38(&v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v90 + v89);
  v91 = sub_26EEC7C00();
  v125 = v14;
  v126 = v91;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = MEMORY[0x277D837D0];
  v94 = MEMORY[0x277D837F8];
  v95 = v119;
  v96 = v120;
  sub_26EF3A8FC();

  (*(v117 + 8))(v42, v95);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F70, &qword_26EF42000);
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97, v99);
  v101 = v121;
  v100 = v122;
  (*(v121 + 16))(&v103 - v102, v96, v122);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
  v127 = v95;
  v128 = v93;
  v129 = v92;
  v130 = v94;
  swift_getOpaqueTypeConformance2();
  v127 = MEMORY[0x277CE0BD8];
  v128 = v93;
  v129 = MEMORY[0x277CE0BC8];
  v130 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_26EF3A06C();
  return (*(v101 + 8))(v96, v100);
}

uint64_t sub_26EEC63F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3[3] = v4;
  v3[4] = *(v4 + 64);
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = sub_26EF3B2DC();
  v3[8] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EEC6528, v7, v6);
}

uint64_t sub_26EEC6528()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = sub_26EF3B30C();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_26EEC6DD0(v7, v3);
  v9 = sub_26EF3B2CC();
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_26EEC6E38(v3, v11 + v10);
  sub_26EE2C388(0, 0, v4, &unk_26EF42028, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26EEC6670(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for VoicePickerPickableView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_26EF3B30C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_26EEC6DD0(a1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v17 = sub_26EF3B2CC();
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_26EEC6E38(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  a4(0, 0, v15, a3, v19);
}

uint64_t sub_26EEC682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, uint64_t a9, uint64_t *a10)
{
  v11 = *a10;
  v12 = *(a10 + 8);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  v13 = type metadata accessor for VoicePickerPickableView();
  v14 = v13[7];
  *(a8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  swift_storeEnumTagMultiPayload();
  v15 = a8 + v13[8];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a8 + v13[9];
  sub_26EF3AAEC();
  *v16 = v20;
  *(v16 + 8) = v21;
  v17 = a8 + v13[10];
  result = sub_26EF3AAEC();
  *v17 = v20;
  *(v17 + 8) = v21;
  v19 = a8 + v13[11];
  *v19 = v11;
  *(v19 + 8) = v12;
  return result;
}

uint64_t sub_26EEC696C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26EF3B87C();
  sub_26EF3B16C();
  v7 = sub_26EF3B8CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26EF3B82C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26EE92D6C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_26EEC6AA8(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_26EEC6AA8(unint64_t result)
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

    v9 = sub_26EF3B6AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_26EF3B87C();

        sub_26EF3B16C();
        v15 = sub_26EF3B8CC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_26EEC6C6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
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

uint64_t sub_26EEC6D78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39DAC();
  *a1 = result;
  return result;
}

uint64_t sub_26EEC6DA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_26EF39DBC();
}

uint64_t sub_26EEC6DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicePickerPickableView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEC6E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicePickerPickableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEC6EA0()
{
  v1 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26EEC04D4();
}

uint64_t sub_26EEC6EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F88, &qword_26EF42078);
  sub_26EEC1CA8(v3, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E40, &qword_26EF41DE0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_26EEC6F70()
{
  result = qword_2806C8E48;
  if (!qword_2806C8E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E40, &qword_26EF41DE0);
    sub_26EE154C8(&qword_2806C8E50, &qword_2806C8E58, &qword_26EF41DE8);
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8E48);
  }

  return result;
}

unint64_t sub_26EEC7054()
{
  result = qword_2806CDA40[0];
  if (!qword_2806CDA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2806CDA40);
  }

  return result;
}

unint64_t sub_26EEC70A8()
{
  result = qword_2806C8EA8;
  if (!qword_2806C8EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E68, &qword_26EF41DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E30, &qword_26EF41DD0);
    sub_26EE154C8(&qword_2806C8E60, &qword_2806C8E30, &qword_26EF41DD0);
    sub_26EEC7054();
    swift_getOpaqueTypeConformance2();
    sub_26EEC8DCC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EA8);
  }

  return result;
}

unint64_t sub_26EEC71F0()
{
  result = qword_2806C8EB0;
  if (!qword_2806C8EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E78, &qword_26EF41E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E68, &qword_26EF41DF8);
    sub_26EEC70A8();
    swift_getOpaqueTypeConformance2();
    sub_26EEC8DCC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EB0);
  }

  return result;
}

unint64_t sub_26EEC72E8()
{
  result = qword_2806C8EB8;
  if (!qword_2806C8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7558, &unk_26EF3E368);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EB8);
  }

  return result;
}

uint64_t sub_26EEC7398(uint64_t a1)
{
  v2 = type metadata accessor for VoicePickerGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EEC73FC()
{
  result = qword_2806C8EC8;
  if (!qword_2806C8EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E88, &qword_26EF41E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E78, &qword_26EF41E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7558, &unk_26EF3E368);
    sub_26EEC71F0();
    sub_26EEC72E8();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C8ED0, &qword_2806C8ED8, &qword_26EF41E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EC8);
  }

  return result;
}

unint64_t sub_26EEC751C()
{
  result = qword_2806C8EE0;
  if (!qword_2806C8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8EC0, &qword_26EF41E38);
    sub_26EEC75A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EE0);
  }

  return result;
}

unint64_t sub_26EEC75A0()
{
  result = qword_2806C8EE8;
  if (!qword_2806C8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8EF0, &qword_26EF41E48);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EE8);
  }

  return result;
}

uint64_t sub_26EEC7684()
{
  v1 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEC52A8(v2);
}

uint64_t sub_26EEC7714(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F18, &unk_26EF41F00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEC77E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F18, &unk_26EF41F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEC7894()
{
  sub_26EEC7A40();
  if (v0 <= 0x3F)
  {
    sub_26EEC7AA0(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_26EEC7B04(319, &qword_2806C8360, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26EEC7AA0(319, &qword_2806C8F28, &qword_2806C86A0, &qword_26EF407E0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26EEC7B04(319, &qword_2806C7350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26EEC7B04(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
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

unint64_t sub_26EEC7A40()
{
  result = qword_2806C8F20;
  if (!qword_2806C8F20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2806C8F20);
  }

  return result;
}

void sub_26EEC7AA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26EEC7B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EEC7B54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8520, &qword_26EF40360);
  sub_26EF39ABC();
  sub_26EE154C8(&qword_2806C8518, &qword_2806C8520, &qword_26EF40360);
  return swift_getWitnessTable();
}

unint64_t sub_26EEC7C00()
{
  result = qword_2806C8F30;
  if (!qword_2806C8F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F00, &unk_26EF41E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E98, &qword_26EF41E28);
    sub_26EEC7CDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8F30);
  }

  return result;
}

unint64_t sub_26EEC7CDC()
{
  result = qword_2806C8F38;
  if (!qword_2806C8F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E98, &qword_26EF41E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E88, &qword_26EF41E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8EC0, &qword_26EF41E38);
    sub_26EEC73FC();
    sub_26EEC751C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8F38);
  }

  return result;
}

unint64_t sub_26EEC7DD4()
{
  result = qword_2806C8F40;
  if (!qword_2806C8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F48, &qword_26EF41F28);
    sub_26EEC7E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8F40);
  }

  return result;
}

unint64_t sub_26EEC7E58()
{
  result = qword_2806C8F50;
  if (!qword_2806C8F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F58, &qword_26EF41F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F60, &qword_26EF41F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F00, &unk_26EF41E60);
    sub_26EEC7C00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8F50);
  }

  return result;
}

uint64_t sub_26EEC7FF0()
{
  v2 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEC63F4(v4, v5, v0 + v3);
}

uint64_t sub_26EEC813C()
{
  v2 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEC11C4(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEC8204()
{
  v2 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEC11C4(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEC82CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EEC8304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EE15538;

  return sub_26EEC5408();
}

uint64_t sub_26EEC83B0()
{
  v2 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEC09E8(v4, v5, v6, v0 + v3);
}

unint64_t sub_26EEC8528()
{
  result = qword_2806C8FD8;
  if (!qword_2806C8FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8FD0, &qword_26EF420C0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8FD8);
  }

  return result;
}

unint64_t sub_26EEC85F4()
{
  result = qword_2806C8FE0;
  if (!qword_2806C8FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8FA8, &qword_26EF42098);
    sub_26EE154C8(&qword_2806C8FE8, &qword_2806C8FF0, &unk_26EF420F8);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8FE0);
  }

  return result;
}

void *sub_26EEC86E4()
{
  v1 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v4 = *v2;
  v3 = v2[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 88))(&v7, ObjectType, v3);
  if (!BYTE4(v7))
  {
    return (*(v3 + 104))(ObjectType, v3);
  }

  if (BYTE4(v7) == 1)
  {
    if ((v7 & 1) == 0)
    {
      return result;
    }

    return (*(v3 + 104))(ObjectType, v3);
  }

  return (*(v3 + 112))(ObjectType, v3);
}

unint64_t sub_26EEC87E4()
{
  result = qword_2806C9040;
  if (!qword_2806C9040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
    sub_26EEC889C();
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9040);
  }

  return result;
}

unint64_t sub_26EEC889C()
{
  result = qword_2806C9048;
  if (!qword_2806C9048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9050, &unk_26EF42140);
    sub_26EEC8954();
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9048);
  }

  return result;
}

unint64_t sub_26EEC8954()
{
  result = qword_2806C9058;
  if (!qword_2806C9058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9060, &unk_26EF43210);
    sub_26EEC8D5C(&qword_2806C9068, &qword_2806C9070, &unk_26EF42150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9058);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for VoicePickerPickableView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  sub_26EE54224(*(v5 + 40), *(v5 + 48));
  v10 = (v0 + v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = sub_26EF3AE0C();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  sub_26EE54224(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[10] + 8);

  sub_26EE54224(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEC8C08()
{
  v1 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v4 = *v2;
  v3 = v2[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 104))(ObjectType, v3);
}

unint64_t sub_26EEC8C84()
{
  result = qword_2806C9098;
  if (!qword_2806C9098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9090, &qword_26EF42198);
    sub_26EEC8D5C(&qword_2806C90A0, &qword_2806C90A8, &qword_26EF421A0);
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9098);
  }

  return result;
}

uint64_t sub_26EEC8D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26EEC8DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for VoicePickerPickableView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);
  swift_unknownObjectRelease();
  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  sub_26EE54224(*(v6 + 40), *(v6 + 48));
  v11 = (v0 + v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = *v11;

      v14 = *(v11 + 1);

      v15 = *(v12 + 32);
      v16 = sub_26EF3AE0C();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
    }
  }

  else
  {
    v17 = *v11;
  }

  sub_26EE54224(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v18 = *(v6 + v1[9] + 8);

  v19 = *(v6 + v1[10] + 8);

  sub_26EE54224(*(v6 + v1[11]), *(v6 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEC9018()
{
  v2 = *(type metadata accessor for VoicePickerPickableView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEC09E8(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEC9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v41 = a5;
  v6 = sub_26EF3872C();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90F0, &qword_26EF421D8);
  v40 = *(v39 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v17);
  v19 = v35 - v18;
  v20 = sub_26EE17094();
  v21._object = 0x800000026EF46480;
  v22 = v20 & 1;
  v21._countAndFlagsBits = 0xD000000000000015;
  v23 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v22, 0);
  v35[1] = v23._countAndFlagsBits;
  v35[0] = v23._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v24 = *(v7 + 72);
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26EF3C6B0;
  sub_26EF386EC();
  v54 = v26;
  sub_26EECA924(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  (*(v8 + 8))(v12, v6);
  v27 = v36;
  v50 = a1;
  v51 = v36;
  v28 = v37;
  v52 = v37;
  LOBYTE(v8) = v38 & 1;
  v53 = v38 & 1;
  v46 = a1;
  v47 = v36;
  v48 = v37;
  v49 = v38 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90F8, &unk_26EF421E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806C9100, &qword_2806C90F8, &unk_26EF421E0);
  sub_26EE79320();
  sub_26EF386BC();
  v42 = a1;
  v43 = v27;
  v44 = v28;
  v45 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9108, &unk_26EF421F0);
  sub_26EE154C8(&qword_2806C9110, &qword_2806C90F0, &qword_26EF421D8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
  v30 = type metadata accessor for ToolbarCancelButton();
  v31 = sub_26EECA924(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
  v54 = v30;
  v55 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v29;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_26EF3A8EC();
  return (*(v40 + 8))(v19, v33);
}

uint64_t sub_26EEC96F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9118, &qword_26EF42200);
  sub_26EE154C8(&qword_2806C9120, &qword_2806C9118, &qword_26EF42200);
  return sub_26EF387CC();
}

uint64_t sub_26EEC97A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = sub_26EE17094();
  v8._object = 0xEB0000000045554ELL;
  v9 = v7 & 1;
  v8._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v9, 0)._countAndFlagsBits;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;

  sub_26EECABE0(v5, v6);
  CGSizeMake(countAndFlagsBits, v12, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_26EF3A3DC();
  result = sub_26EF3962C();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_26EEC98D0()
{
  v0 = type metadata accessor for ToolbarCancelButton();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v17 - v10;
  v12 = sub_26EF36388(v9);
  sub_26EF363D8(v12, v13, v4);
  v14 = sub_26EECA924(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
  MEMORY[0x274382230](v4, v0, v14);
  sub_26EEB2754(v4);
  v17[0] = v0;
  v17[1] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v11, v5, OpaqueTypeConformance2);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26EEC9A90@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9128, &qword_26EF422E8);
  v5 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109, v6);
  v110 = (&v101 - v7);
  v112 = sub_26EF387BC();
  v119 = *(v112 - 8);
  v8 = *(v119 + 64);
  v10 = MEMORY[0x28223BE20](v112, v9);
  v115 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v114 = &v101 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v113 = &v101 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v108 = &v101 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v101 - v22;
  v24 = sub_26EF3925C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v106 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v101 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v101 - v35;
  v37 = sub_26EF39DDC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9130, &unk_26EF422F0);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v43 - 8, v45);
  v111 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v117 = v23;
  v118 = &v101 - v49;
  LODWORD(v107) = a2;
  v103 = v37;
  v102 = v38;
  if (a2)
  {
    v50 = a1;
  }

  else
  {

    sub_26EF3B46C();
    v51 = v38;
    v52 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(a1, 0);
    (*(v51 + 8))(v42, v37);
    v50 = v122;
  }

  v104 = *(v25 + 16);
  v105 = v25 + 16;
  v104(v36, &v50[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience], v24);

  (*(v25 + 104))(v33, *MEMORY[0x277D70688], v24);
  sub_26EECA924(&qword_2806C8278, MEMORY[0x277D70698]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v122 == v120 && v123 == v121)
  {
    v53 = a1;
    v54 = 1;
  }

  else
  {
    v53 = a1;
    v54 = sub_26EF3B82C();
  }

  v55 = *(v25 + 8);
  v55(v33, v24);
  v55(v36, v24);

  v56 = sub_26EE17094();
  v57._object = 0x800000026EF464A0;
  v58 = v56 & 1;
  v57._countAndFlagsBits = 0xD00000000000001ALL;
  object = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v57, v58, 0)._object;
  v60 = sub_26EE17094();
  v61 = v60;
  if (v54)
  {
    v62._countAndFlagsBits = 0xD00000000000001ELL;
    v62._object = 0x800000026EF46570;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v62, v61 & 1, 0);
    v63 = v117;
  }

  else
  {
    v101 = object;
    v64._object = 0x800000026EF464C0;
    v65 = v60 & 1;
    v64._countAndFlagsBits = 0xD00000000000001ALL;
    countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v64, v65, 0)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_26EF3EE20;
    if (v107)
    {
      v68 = v53;
    }

    else
    {
      v107 = countAndFlagsBits;

      sub_26EF3B46C();
      v69 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v53, 0);
      (*(v102 + 8))(v42, v103);
      v68 = v122;
    }

    v70 = v106;
    v104(v106, &v68[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience], v24);

    v71 = sub_26EF3923C();
    v55(v70, v24);
    v72 = MEMORY[0x277D83B88];
    v73 = MEMORY[0x277D83C10];
    *(v67 + 56) = MEMORY[0x277D83B88];
    *(v67 + 64) = v73;
    *(v67 + 32) = v71;
    *(v67 + 96) = v72;
    *(v67 + 104) = v73;
    *(v67 + 72) = 15;
    *(v67 + 136) = v72;
    *(v67 + 144) = v73;
    *(v67 + 112) = 20;
    sub_26EF3B0CC();

    v63 = v108;
  }

  v74 = [objc_opt_self() systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v75 = v119;
  v108 = *(v119 + 16);
  v76 = v112;
  (v108)(v110, v63, v112);
  swift_storeEnumTagMultiPayload();
  sub_26EECA924(&qword_2806C8138, MEMORY[0x277CE76A8]);
  sub_26EF3A06C();
  v77 = *(v75 + 8);
  v119 = v75 + 8;
  v110 = v77;
  v77(v63, v76);
  v78 = sub_26EE17094();
  v79._object = 0x800000026EF464E0;
  v80 = v78 & 1;
  v79._countAndFlagsBits = 0xD00000000000001ALL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v79, v80, 0);
  v81._countAndFlagsBits = 0xD000000000000024;
  v81._object = 0x800000026EF46500;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v81, 1, 0);
  v82 = objc_opt_self();
  v83 = [v82 systemBlueColor];
  sub_26EF3AA5C();
  v84 = v117;
  sub_26EF387AC();
  v85 = sub_26EE17094();
  v86._object = 0x800000026EF46530;
  v87 = v85 & 1;
  v86._countAndFlagsBits = 0xD000000000000017;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v86, v87, 0);
  v88 = sub_26EE17094();
  v89._object = 0x800000026EF46550;
  v90 = v88 & 1;
  v89._countAndFlagsBits = 0xD000000000000019;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v89, v90, 0);
  v91 = [v82 systemBlueColor];
  sub_26EF3AA5C();
  v92 = v113;
  sub_26EF387AC();
  v93 = v111;
  sub_26EECA96C(v118, v111);
  v94 = v114;
  v95 = v108;
  (v108)(v114, v84, v76);
  v96 = v115;
  v95(v115, v92, v76);
  v97 = v116;
  sub_26EECA96C(v93, v116);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9138, &unk_26EF42300);
  v95((v97 + *(v98 + 48)), v94, v76);
  v95((v97 + *(v98 + 64)), v96, v76);
  v99 = v110;
  v110(v92, v76);
  v99(v84, v76);
  sub_26EECA9DC(v118);
  v99(v96, v76);
  v99(v94, v76);
  return sub_26EECA9DC(v93);
}

uint64_t sub_26EECA5F4()
{
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EECA924(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  v0 = sub_26EF39C1C();
  type metadata accessor for VoiceBankingSession();
  sub_26EECA924(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3973C();
  return v0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26EECA70C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_26EECA768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26EECA7D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C90F0, &qword_26EF421D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9108, &unk_26EF421F0);
  sub_26EE154C8(&qword_2806C9110, &qword_2806C90F0, &qword_26EF421D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C20, &qword_26EF41880);
  type metadata accessor for ToolbarCancelButton();
  sub_26EECA924(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EECA924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EECA96C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9130, &unk_26EF422F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EECA9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9130, &unk_26EF422F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EECAA44()
{
  v1 = *(v0 + 16);

  sub_26EE05C9C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_26EECAA88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);

    v2 = VoiceBankingNavigationModel.itemPath.modify(v12);
    v4 = v3;
    v5 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26EEB3AD4(0, *(v5 + 2) + 1, 1, v5);
      *v4 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_26EEB3AD4((v7 > 1), v8 + 1, 1, v5);
      *v4 = v5;
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = 4;
    v9[40] = 1;
    (v2)(v12, 0);
  }

  else
  {
    v11 = *(v0 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EECA924(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

id sub_26EECABE0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t type metadata accessor for VoiceCell()
{
  result = qword_2806CDD00;
  if (!qword_2806CDD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EECAC3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A0, &unk_26EF423C8);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9198, &qword_26EF423C0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v22 - v18;
  sub_26EECAE2C(&v22 - v18);
  sub_26EECB220(v10);
  sub_26EE13B88(v19, v16, &qword_2806C9198, &qword_26EF423C0);
  sub_26EE13B88(v10, v7, &qword_2806C91A0, &unk_26EF423C8);
  sub_26EE13B88(v16, a1, &qword_2806C9198, &qword_26EF423C0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9210, &unk_26EF42468);
  sub_26EE13B88(v7, a1 + *(v20 + 48), &qword_2806C91A0, &unk_26EF423C8);
  sub_26EE14578(v10, &qword_2806C91A0, &unk_26EF423C8);
  sub_26EE14578(v19, &qword_2806C9198, &qword_26EF423C0);
  sub_26EE14578(v7, &qword_2806C91A0, &unk_26EF423C8);
  return sub_26EE14578(v16, &qword_2806C9198, &qword_26EF423C0);
}

uint64_t sub_26EECAE2C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_26EF3A2EC();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9148, &qword_26EF42318);
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32, v8);
  v10 = &v31 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9150, &unk_26EF42320);
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v31 - v19;
  v21 = sub_26EF38DBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EECB6E4(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_26EE14578(v20, &qword_2806C7088, &unk_26EF3E330);
    return (*(v11 + 56))(v36, 1, 1, v35);
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
    *v10 = sub_26EF39E4C();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9158, &qword_26EF42330);
    sub_26EECB914(v1, &v10[*(v28 + 44)]);
    sub_26EF3A2DC();
    sub_26EE154C8(&qword_2806C9160, &qword_2806C9148, &qword_26EF42318);
    sub_26EF3A7DC();
    (*(v33 + 8))(v6, v34);
    sub_26EE14578(v10, &qword_2806C9148, &qword_26EF42318);
    v30 = v35;
    v29 = v36;
    (*(v11 + 32))(v36, v15, v35);
    (*(v11 + 56))(v29, 0, 1, v30);
    return (*(v22 + 8))(v26, v21);
  }
}

uint64_t sub_26EECB220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF3A2EC();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9168, &qword_26EF42338);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v23 - v17;
  sub_26EECB6E4(&v23 - v17);
  v19 = sub_26EF38DBC();
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    v24 = v3;
    v25 = a1;
    sub_26EE14578(v18, &qword_2806C7088, &unk_26EF3E330);
    v23 = sub_26EF39E4C();
    v32 = 1;
    v20 = sub_26EF39F6C();
    v31 = 1;
    sub_26EECCC80(v1, &v47);
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v45[8] = v55;
    v45[9] = v56;
    v45[10] = v57;
    v45[4] = v51;
    v45[5] = v52;
    v45[6] = v53;
    v45[7] = v54;
    v45[0] = v47;
    v45[1] = v48;
    v44 = v58;
    v46 = v58;
    v45[2] = v49;
    v45[3] = v50;
    sub_26EE13B88(&v33, &v27, &qword_2806C9170, &qword_26EF42340);
    sub_26EE14578(v45, &qword_2806C9170, &qword_26EF42340);
    *&v30[135] = v41;
    *&v30[151] = v42;
    *&v30[167] = v43;
    v30[183] = v44;
    *&v30[71] = v37;
    *&v30[87] = v38;
    *&v30[103] = v39;
    *&v30[119] = v40;
    *&v30[7] = v33;
    *&v30[23] = v34;
    *&v30[39] = v35;
    *&v30[55] = v36;
    *&v29[137] = *&v30[128];
    *&v29[153] = *&v30[144];
    *&v29[169] = *&v30[160];
    *&v29[73] = *&v30[64];
    *&v29[89] = *&v30[80];
    *&v29[105] = *&v30[96];
    *&v29[121] = *&v30[112];
    *&v29[9] = *v30;
    *&v29[25] = *&v30[16];
    *&v29[41] = *&v30[32];
    v27 = v23;
    LOBYTE(v28) = v32;
    *(&v28 + 1) = v20;
    *v29 = 0;
    v29[8] = v31;
    *&v29[185] = *&v30[176];
    *&v29[57] = *&v30[48];
    sub_26EF3A2DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9178, &qword_26EF42348);
    sub_26EE154C8(&qword_2806C9180, &qword_2806C9178, &qword_26EF42348);
    sub_26EF3A7DC();
    (*(v26 + 8))(v7, v24);
    v59 = *&v29[160];
    v60 = *&v29[176];
    v61 = v29[192];
    v55 = *&v29[96];
    v56 = *&v29[112];
    v57 = *&v29[128];
    v58 = *&v29[144];
    v51 = *&v29[32];
    v52 = *&v29[48];
    v53 = *&v29[64];
    v54 = *&v29[80];
    v47 = v27;
    v48 = v28;
    v49 = *v29;
    v50 = *&v29[16];
    sub_26EE14578(&v47, &qword_2806C9178, &qword_26EF42348);
    v21 = v25;
    (*(v9 + 32))(v25, v13, v8);
    return (*(v9 + 56))(v21, 0, 1, v8);
  }

  else
  {
    sub_26EE14578(v18, &qword_2806C7088, &unk_26EF3E330);
    return (*(v9 + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_26EECB6E4@<X0>(uint64_t a1@<X8>)
{
  if (v1[5])
  {

    v3 = sub_26EEA6568();

    MEMORY[0x28223BE20](v4, v5);
    v12[2] = v1;
    v13 = sub_26EE65474(sub_26EECF500, v12, v3);

    sub_26EECDA90(&v13);

    v6 = v13;
    if (v13[2])
    {
      v7 = sub_26EF38DBC();
      v8 = *(v7 - 8);
      (*(v8 + 16))(a1, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      return (*(v8 + 56))(a1, 0, 1, v7);
    }

    else
    {

      v10 = sub_26EF38DBC();
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    }
  }

  else
  {
    v11 = v1[6];
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EECF544(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
    sub_26EF39BFC();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_26EECB914@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91B0, &qword_26EF423E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v49 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91B8, &qword_26EF423F0);
  v9 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v10);
  v12 = v49 - v11;
  if (sub_26EF38CFC())
  {
    *v12 = sub_26EF39F6C();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91E0, &qword_26EF42408);
    sub_26EECC060(a1, &v12[*(v13 + 44)]);
    sub_26EE13B88(v12, v8, &qword_2806C91B8, &qword_26EF423F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91C8, &qword_26EF42400);
    sub_26EE154C8(&qword_2806C91D0, &qword_2806C91B8, &qword_26EF423F0);
    sub_26EE154C8(&qword_2806C91D8, &qword_2806C91C8, &qword_26EF42400);
    sub_26EF3A06C();
    return sub_26EE14578(v12, &qword_2806C91B8, &qword_26EF423F0);
  }

  else
  {
    v58 = a2;
    v57 = sub_26EF39F6C();
    v78 = 1;
    *&v91 = sub_26EF38D7C();
    *(&v91 + 1) = v15;
    sub_26EE12538();
    v56 = v8;
    v16 = sub_26EF3A5DC();
    v52 = v17;
    v53 = v16;
    v19 = v18;
    v54 = v20;
    sub_26EF3AE5C();
    sub_26EF39BAC();
    v59 = v19 & 1;
    v108 = v19 & 1;
    *&v91 = sub_26EECC798();
    *(&v91 + 1) = v21;
    v22 = sub_26EF3A5DC();
    v24 = v23;
    v26 = v25;
    sub_26EF3A4DC();
    v27 = sub_26EF3A5BC();
    v29 = v28;
    v55 = v4;
    v31 = v30;
    v49[1] = v32;

    sub_26EE12ABC(v22, v24, v26 & 1);

    LODWORD(v91) = sub_26EF3A1DC();
    v33 = sub_26EF3A58C();
    v35 = v34;
    LOBYTE(v24) = v36;
    v50 = v37;
    sub_26EE12ABC(v27, v29, v31 & 1);

    v39 = v52;
    v38 = v53;
    *&v79 = v53;
    *(&v79 + 1) = v52;
    LOBYTE(v80) = v59;
    *(&v80 + 1) = *v107;
    DWORD1(v80) = *&v107[3];
    v40 = v54;
    *(&v80 + 1) = v54;
    v85 = v65;
    v86 = v66;
    v87 = v67;
    v81 = v61;
    v82 = v62;
    v83 = v63;
    v84 = v64;
    LOBYTE(v24) = v24 & 1;
    v106 = v24;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v68 = v79;
    v69 = v80;
    sub_26EE13B88(&v79, &v91, &qword_2806C91A8, &unk_26EF423D8);
    v51 = v33;
    sub_26EE13B20(v33, v35, v24);
    v41 = v50;

    sub_26EE12ABC(v33, v35, v24);

    *&v91 = v38;
    *(&v91 + 1) = v39;
    LOBYTE(v92) = v59;
    *(&v92 + 1) = *v107;
    DWORD1(v92) = *&v107[3];
    *(&v92 + 1) = v40;
    v97 = v65;
    v98 = v66;
    v99 = v67;
    v93 = v61;
    v94 = v62;
    v95 = v63;
    v96 = v64;
    sub_26EE14578(&v91, &qword_2806C91A8, &unk_26EF423D8);
    v85 = v74;
    v86 = v75;
    v87 = v76;
    v81 = v70;
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v79 = v68;
    v80 = v69;
    v97 = v74;
    v98 = v75;
    v99 = v76;
    v93 = v70;
    v94 = v71;
    v95 = v72;
    v96 = v73;
    *&v88 = v51;
    *(&v88 + 1) = v35;
    LOBYTE(v89) = v24;
    *(&v89 + 1) = *v107;
    DWORD1(v89) = *&v107[3];
    *(&v89 + 1) = v41;
    v90 = 256;
    v91 = v68;
    v92 = v69;
    v100 = v51;
    v101 = v35;
    v102 = v24;
    *v103 = *v107;
    *&v103[3] = *&v107[3];
    v104 = v41;
    v105 = 256;
    sub_26EE13B88(&v79, &v61, &qword_2806C91C0, &qword_26EF423F8);
    sub_26EE14578(&v91, &qword_2806C91C0, &qword_26EF423F8);
    *(&v77[8] + 7) = v87;
    *(&v77[9] + 7) = v88;
    *(&v77[10] + 7) = v89;
    *(&v77[11] + 7) = v90;
    *(&v77[4] + 7) = v83;
    *(&v77[5] + 7) = v84;
    *(&v77[6] + 7) = v85;
    *(&v77[7] + 7) = v86;
    *(v77 + 7) = v79;
    *(&v77[1] + 7) = v80;
    *(&v77[2] + 7) = v81;
    *(&v77[3] + 7) = v82;
    v42 = v77[9];
    v43 = v56;
    *(v56 + 145) = v77[8];
    *(v43 + 161) = v42;
    *(v43 + 177) = v77[10];
    *(v43 + 186) = *(&v77[10] + 9);
    v44 = v77[5];
    *(v43 + 81) = v77[4];
    *(v43 + 97) = v44;
    v45 = v77[7];
    *(v43 + 113) = v77[6];
    *(v43 + 129) = v45;
    v46 = v77[1];
    *(v43 + 17) = v77[0];
    *(v43 + 33) = v46;
    v47 = v77[3];
    *(v43 + 49) = v77[2];
    v48 = v78;
    *v43 = v57;
    *(v43 + 1) = 0;
    v43[16] = v48;
    *(v43 + 65) = v47;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91C8, &qword_26EF42400);
    sub_26EE154C8(&qword_2806C91D0, &qword_2806C91B8, &qword_26EF423F0);
    sub_26EE154C8(&qword_2806C91D8, &qword_2806C91C8, &qword_26EF42400);
    return sub_26EF3A06C();
  }
}

uint64_t sub_26EECC060@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91E8, &qword_26EF42410);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - v10;
  v48 = sub_26EF38D7C();
  v49 = v12;
  sub_26EE12538();
  v13 = sub_26EF3A5DC();
  v30 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_26EF3AE5C();
  sub_26EF39BAC();
  v59 = v17 & 1;
  *v11 = sub_26EF39E4C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91F0, &qword_26EF42418);
  sub_26EECC304(v31, &v11[*(v20 + 44)]);
  sub_26EE13B88(v11, v8, &qword_2806C91E8, &qword_26EF42410);
  *&v39 = v13;
  *(&v39 + 1) = v15;
  LOBYTE(v40) = v17 & 1;
  *(&v40 + 1) = v19;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v21 = v32;
  v41 = v32;
  v42 = v33;
  v22 = v35;
  v43 = v34;
  v44 = v35;
  v23 = v40;
  *a2 = v39;
  a2[1] = v23;
  v24 = v42;
  v25 = v43;
  a2[2] = v21;
  a2[3] = v24;
  v26 = v47;
  a2[7] = v46;
  a2[8] = v26;
  v27 = v45;
  a2[5] = v22;
  a2[6] = v27;
  a2[4] = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91F8, &unk_26EF42420);
  sub_26EE13B88(v8, a2 + *(v28 + 48), &qword_2806C91E8, &qword_26EF42410);
  sub_26EE13B88(&v39, &v48, &qword_2806C91A8, &unk_26EF423D8);
  sub_26EE14578(v11, &qword_2806C91E8, &qword_26EF42410);
  sub_26EE14578(v8, &qword_2806C91E8, &qword_26EF42410);
  v48 = v30;
  v49 = v15;
  v50 = v17 & 1;
  v51 = v19;
  v56 = v36;
  v57 = v37;
  v58 = v38;
  v52 = v32;
  v53 = v33;
  v54 = v34;
  v55 = v35;
  return sub_26EE14578(&v48, &qword_2806C91A8, &unk_26EF423D8);
}

uint64_t sub_26EECC304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47[1] = a1;
  v49 = a2;
  v2 = sub_26EF3A2BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v48 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v47 - v21;
  sub_26EF397DC();
  sub_26EF3A2AC();
  sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
  sub_26EECF544(&qword_2806C7A78, MEMORY[0x277CDE330]);
  sub_26EF3A63C();
  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
  v23 = &v22[*(v15 + 44)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
  v25 = *MEMORY[0x277CDF440];
  v26 = sub_26EF396EC();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v50 = sub_26EECC798();
  v51 = v27;
  sub_26EE12538();
  v28 = sub_26EF3A5DC();
  v30 = v29;
  LOBYTE(v24) = v31;
  sub_26EF3A4DC();
  v32 = sub_26EF3A5BC();
  v34 = v33;
  LOBYTE(v3) = v35;

  sub_26EE12ABC(v28, v30, v24 & 1);

  LODWORD(v50) = sub_26EF3A1DC();
  v36 = sub_26EF3A58C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_26EE12ABC(v32, v34, v3 & 1);

  v43 = v48;
  sub_26EE13B88(v22, v48, &qword_2806C7A70, &qword_26EF3EEF0);
  v44 = v49;
  sub_26EE13B88(v43, v49, &qword_2806C7A70, &qword_26EF3EEF0);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9200, &qword_26EF42460) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40 & 1;
  *(v45 + 24) = v42;
  *(v45 + 32) = 256;
  sub_26EE13B20(v36, v38, v40 & 1);

  sub_26EE14578(v22, &qword_2806C7A70, &qword_26EF3EEF0);
  sub_26EE12ABC(v36, v38, v40 & 1);

  return sub_26EE14578(v43, &qword_2806C7A70, &qword_26EF3EEF0);
}

uint64_t sub_26EECC798()
{
  v1 = sub_26EF37DEC();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF37E1C();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26EF37E7C();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v38 - v19;
  v21 = sub_26EF38DBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0;
  sub_26EECB6E4(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_26EE14578(v20, &qword_2806C7088, &unk_26EF3E330);
    return 0;
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
    if (sub_26EF38D8C() == 7)
    {
      sub_26EF38D0C();
      sub_26EF37DFC();
      sub_26EF37DDC();
      countAndFlagsBits = sub_26EF37E5C();
      (*(v42 + 8))(v5, v43);
      (*(v40 + 8))(v10, v41);
      (*(v39 + 8))(v15, v11);
      (*(v22 + 8))(v26, v21);
    }

    else if (sub_26EF38D8C() == 5 || sub_26EF38D8C() == 4 || !sub_26EF38D8C())
    {
      v35 = sub_26EE17094();
      v36._object = 0x800000026EF46590;
      v37 = v35 & 1;
      v36._countAndFlagsBits = 0xD00000000000001CLL;
      countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v36, v37, 0)._countAndFlagsBits;
      (*(v22 + 8))(v26, v21);
    }

    else
    {
      v30 = v0;
      v31 = *(v0 + 16);
      v32 = *(v27 + 24);
      v33 = *(v30 + 32);
      type metadata accessor for VoiceBankingBatteryMonitor();
      sub_26EECF544(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
      v34 = sub_26EF3976C();
      (*(*v34 + 88))(v34);

      countAndFlagsBits = sub_26EF38D2C();
      (*(v22 + 8))(v26, v21);
    }

    return countAndFlagsBits;
  }
}

uint64_t sub_26EECCC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v88 - v6;
  v8 = sub_26EF39DDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v98 = *(type metadata accessor for VoiceCell() + 28);
  v110._countAndFlagsBits = sub_26EF38A7C();
  v110._object = v14;
  v93._countAndFlagsBits = sub_26EE12538();
  v95 = sub_26EF3A5DC();
  v96 = v15;
  v99 = v16;
  v18 = v17;
  sub_26EF3AE5C();
  sub_26EF39BAC();
  v94 = v18 & 1;
  v127 = v18 & 1;
  v19 = *a1;
  LODWORD(v92) = *(a1 + 8);
  v89 = v9;
  v90 = v8;
  if (v92 == 1)
  {
    countAndFlagsBits = v19;
  }

  else
  {

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v19, 0);
    (*(v9 + 8))(v13, v8);
    countAndFlagsBits = v110._countAndFlagsBits;
  }

  MEMORY[0x274380B50]();
  v22 = sub_26EF37EDC();
  v23 = (*(v22 - 8) + 56);
  v91 = *v23;
  v91(v7, 0, 1, v22);
  v24 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v7);

  sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
  v25 = sub_26EE17094();
  v26 = v25;
  if (v24 < 1)
  {
    v30._object = 0x800000026EF46590;
    v31 = v25 & 1;
    v30._countAndFlagsBits = 0xD00000000000001CLL;
    v110 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v30, v31, 0);
    v32 = sub_26EF3A5DC();
    v34 = v33;
    v36 = v35;
    sub_26EF3A4DC();
    v37 = sub_26EF3A5BC();
    v39 = v38;
    v41 = v40;

    sub_26EE12ABC(v32, v34, v36 & 1);

    LODWORD(v110._countAndFlagsBits) = sub_26EF3A1DC();
    v42 = sub_26EF3A58C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_26EE12ABC(v37, v39, v41 & 1);

    *&v101 = v42;
    *(&v101 + 1) = v44;
    *&v102 = v46 & 1;
    *(&v102 + 1) = v48;
    LOBYTE(v103) = 1;
    sub_26EF3A06C();
    v49 = v110;
    v50 = v111;
    v51 = v112;
  }

  else
  {
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x800000026EF465B0;
    v88[1] = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v27, v26 & 1, 0)._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26EF3C6B0;
    if (v92)
    {
      v29 = v19;
    }

    else
    {

      sub_26EF3B46C();
      v52 = sub_26EF3A36C();
      v92 = v23;
      v53 = v52;
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v19, 0);
      (*(v89 + 8))(v13, v90);
      v29 = v110._countAndFlagsBits;
    }

    MEMORY[0x274380B50]();
    v91(v7, 0, 1, v22);
    v54 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v7);

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v55 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v55;
    *(v28 + 32) = v54;
    v56 = sub_26EF3B0CC();
    v58 = v57;

    v110._countAndFlagsBits = v56;
    v110._object = v58;
    v59 = sub_26EF3A5DC();
    v61 = v60;
    v63 = v62;
    sub_26EF3A4DC();
    v64 = sub_26EF3A5BC();
    v66 = v65;
    v68 = v67;

    sub_26EE12ABC(v59, v61, v63 & 1);

    LODWORD(v110._countAndFlagsBits) = sub_26EF3A1DC();
    v69 = sub_26EF3A58C();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_26EE12ABC(v64, v66, v68 & 1);

    *&v101 = v69;
    *(&v101 + 1) = v71;
    *&v102 = v73 & 1;
    *(&v102 + 1) = v75;
    LOBYTE(v103) = 0;
    sub_26EF3A06C();
    v49 = v110;
    v50 = v111;
    v51 = v112;
  }

  v93 = v49;
  v98 = v50;
  v77 = v95;
  v76 = v96;
  *&v101 = v95;
  *(&v101 + 1) = v99;
  v78 = v94;
  LOBYTE(v102) = v94;
  *(&v102 + 1) = *v126;
  DWORD1(v102) = *&v126[3];
  *(&v102 + 1) = v96;
  v108 = v124;
  v109 = v125;
  v103 = v119;
  v104 = v120;
  v106 = v122;
  v107 = v123;
  v105 = v121;
  v79 = v124;
  v80 = v125;
  v81 = v97;
  *(v97 + 96) = v123;
  *(v81 + 112) = v79;
  v82 = v104;
  *(v81 + 32) = v103;
  *(v81 + 48) = v82;
  v83 = v106;
  *(v81 + 64) = v105;
  *(v81 + 80) = v83;
  v84 = v102;
  *v81 = v101;
  *(v81 + 16) = v84;
  v100 = v51;
  *(v81 + 128) = v80;
  *(v81 + 144) = v49;
  *(v81 + 160) = v50;
  *(v81 + 176) = v51;
  sub_26EE13B88(&v101, &v110, &qword_2806C91A8, &unk_26EF423D8);
  v85 = v93;
  v86 = v98;
  sub_26EECDA18(v93._countAndFlagsBits, v93._object, v98);
  sub_26EECDA54(v85._countAndFlagsBits, v85._object, v86);
  v110._countAndFlagsBits = v77;
  v110._object = v99;
  LOBYTE(v111) = v78;
  *(&v111 + 1) = *v126;
  DWORD1(v111) = *&v126[3];
  *(&v111 + 1) = v76;
  v116 = v123;
  v117 = v124;
  v118 = v125;
  v112 = v119;
  v113 = v120;
  v114 = v121;
  v115 = v122;
  return sub_26EE14578(&v110, &qword_2806C91A8, &unk_26EF423D8);
}

uint64_t sub_26EECD4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26EF37EDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  sub_26EF38DAC();
  v13 = a2 + *(type metadata accessor for VoiceCell() + 28);
  MEMORY[0x274380B50]();
  LOBYTE(a2) = sub_26EF37EAC();
  v14 = *(v4 + 8);
  v14(v9, v3);
  v14(v12, v3);
  return a2 & 1;
}

uint64_t sub_26EECD5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EECF544(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a2 = sub_26EF3973C();
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = sub_26EE9C5EC;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EECF544(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  *(a2 + 40) = sub_26EF39C1C();
  *(a2 + 48) = v5;
  v6 = *(type metadata accessor for VoiceCell() + 28);
  v7 = sub_26EF38AAC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a2 + v6, a1, v7);
}

uint64_t sub_26EECD74C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39F5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9140, &qword_26EF42310);
  return sub_26EECAC3C(a1 + *(v2 + 44));
}

uint64_t sub_26EECD7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26EF38AAC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26EECD87C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_26EF38AAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EECD920()
{
  sub_26EE1F6E4();
  if (v0 <= 0x3F)
  {
    sub_26EEA1624();
    if (v1 <= 0x3F)
    {
      sub_26EE2DFC8();
      if (v2 <= 0x3F)
      {
        sub_26EF38AAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26EECDA18(uint64_t a1, uint64_t a2, char a3)
{
  sub_26EE13B20(a1, a2, a3 & 1);
}

uint64_t sub_26EECDA54(uint64_t a1, uint64_t a2, char a3)
{
  sub_26EE12ABC(a1, a2, a3 & 1);
}

uint64_t sub_26EECDA90(void **a1)
{
  v2 = *(sub_26EF38DBC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EECF530(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EECDB38(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EECDB38(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
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
        sub_26EF38DBC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38DBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EECE044(v8, v9, a1, v4);
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
    return sub_26EECDC64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EECDC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v66 = sub_26EF391EC();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v66, v10);
  v65 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v64 = &v46[-v14];
  v15 = sub_26EF38DBC();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v56 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v63 = &v46[-v22];
  result = MEMORY[0x28223BE20](v21, v23);
  v62 = &v46[-v26];
  v48 = a2;
  if (a3 != a2)
  {
    v28 = *(v25 + 16);
    v27 = v25 + 16;
    v29 = *a4;
    v30 = *(v27 + 56);
    v58 = (v8 + 8);
    v59 = v28;
    v57 = (v27 - 8);
    v60 = v15;
    v61 = v27;
    v31 = v29 + v30 * (a3 - 1);
    v53 = -v30;
    v54 = (v27 + 16);
    v32 = a1 - a3;
    v55 = v29;
    v47 = v30;
    v33 = v29 + v30 * a3;
LABEL_5:
    v51 = v31;
    v52 = a3;
    v49 = v33;
    v50 = v32;
    v67 = v32;
    while (1)
    {
      v34 = v62;
      v35 = v59;
      v59(v62, v33, v15);
      v36 = v63;
      v35(v63, v31, v15);
      v37 = v64;
      sub_26EF38D1C();
      v38 = v65;
      sub_26EF38D1C();
      sub_26EECF544(&qword_2806C9208, MEMORY[0x277D70650]);
      v39 = v66;
      v68 = sub_26EF3B08C();
      v40 = *v58;
      v41 = v38;
      v15 = v60;
      (*v58)(v41, v39);
      v40(v37, v39);
      v42 = *v57;
      (*v57)(v36, v15);
      result = v42(v34, v15);
      if ((v68 & 1) == 0)
      {
LABEL_4:
        a3 = v52 + 1;
        v31 = v51 + v47;
        v32 = v50 - 1;
        v33 = v49 + v47;
        if (v52 + 1 == v48)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v43 = *v54;
      v44 = v56;
      (*v54)(v56, v33, v15);
      swift_arrayInitWithTakeFrontToBack();
      result = v43(v31, v44, v15);
      v31 += v53;
      v33 += v53;
      if (__CFADD__(v67++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EECE044(unint64_t *a1, uint64_t a2, void (**a3)(void), unint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v161 = sub_26EF391EC();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v161, v10);
  v160 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v159 = &v134 - v14;
  v15 = sub_26EF38DBC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v141 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v151 = &v134 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v158 = &v134 - v26;
  result = MEMORY[0x28223BE20](v25, v27);
  v162 = &v134 - v29;
  v30 = a3[1];
  if (v30 < 1)
  {
    v33 = a3;
    v32 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_26EE13990(v32);
      v32 = result;
    }

    v165 = v32;
    v129 = *(v32 + 16);
    if (v129 >= 2)
    {
      while (*v33)
      {
        v130 = v32;
        v32 = *(v32 + 16 * v129);
        v131 = v130;
        v132 = *&v130[16 * v129 + 24];
        sub_26EECECBC(*v33 + v16[9] * v32, *v33 + v16[9] * *&v130[16 * v129 + 16], *v33 + v16[9] * v132, a4);
        if (v5)
        {
        }

        if (v132 < v32)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_26EE13990(v131);
        }

        if (v129 - 2 >= *(v131 + 2))
        {
          goto LABEL_121;
        }

        v133 = &v131[16 * v129];
        *v133 = v32;
        v133[1] = v132;
        v165 = v131;
        result = sub_26EE5C168(v129 - 1);
        v32 = v165;
        v129 = *(v165 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v135 = a4;
  v31 = 0;
  v156 = (v8 + 8);
  v157 = v16 + 2;
  v155 = (v16 + 1);
  v153 = (v16 + 4);
  v32 = MEMORY[0x277D84F90];
  v33 = a3;
  v139 = a3;
  v154 = v15;
  v146 = v16;
  while (1)
  {
    if (v31 + 1 >= v30)
    {
      v51 = v31 + 1;
    }

    else
    {
      v148 = v30;
      v136 = v32;
      v34 = *v33;
      v35 = v16[9];
      v36 = v31;
      v138 = v31;
      v37 = v34 + v35 * (v31 + 1);
      v38 = v35;
      v163 = v35;
      v164 = v34;
      v39 = v34;
      v40 = v16[2];
      v40();
      v41 = v39 + v38 * v36;
      v42 = v158;
      v150 = v40;
      (v40)(v158, v41, v15);
      v43 = v159;
      sub_26EF38D1C();
      v44 = v160;
      sub_26EF38D1C();
      v45 = sub_26EECF544(&qword_2806C9208, MEMORY[0x277D70650]);
      v46 = v161;
      v149 = v45;
      LODWORD(v152) = sub_26EF3B08C();
      v47 = *v156;
      (*v156)(v44, v46);
      v145 = v47;
      (v47)(v43, v46);
      v48 = v146[1];
      a4 = v155;
      v48(v42, v15);
      v144 = v48;
      result = (v48)(v162, v15);
      v49 = v138 + 2;
      v50 = v164 + v163 * (v138 + 2);
      while (1)
      {
        v51 = v148;
        if (v148 == v49)
        {
          break;
        }

        v52 = v162;
        v53 = v150;
        (v150)(v162, v50, v15);
        v54 = v158;
        (v53)(v158, v37, v15);
        v55 = v159;
        sub_26EF38D1C();
        v56 = v160;
        sub_26EF38D1C();
        v57 = v161;
        v58 = sub_26EF3B08C();
        v147 = v5;
        LODWORD(v164) = v58 & 1;
        v59 = v145;
        (v145)(v56, v57);
        v60 = v55;
        v15 = v154;
        v59(v60, v57);
        a4 = v155;
        v61 = v144;
        (v144)(v54, v15);
        result = v61(v52, v15);
        ++v49;
        v50 += v163;
        v37 += v163;
        v5 = v147;
        if ((v152 & 1) != v164)
        {
          v51 = v49 - 1;
          break;
        }
      }

      v33 = v139;
      v16 = v146;
      v32 = v136;
      v31 = v138;
      if (v152)
      {
        if (v51 < v138)
        {
          goto LABEL_124;
        }

        if (v138 < v51)
        {
          a4 = v163 * (v51 - 1);
          v62 = v51;
          v63 = v51 * v163;
          v148 = v51;
          v64 = v138 * v163;
          do
          {
            if (v31 != --v62)
            {
              v65 = *v33;
              if (!v65)
              {
                goto LABEL_130;
              }

              v164 = *v153;
              v164(v141, v65 + v64, v15);
              if (v64 < a4 || v65 + v64 >= v65 + v63)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v164)(v65 + a4, v141, v15);
              v33 = v139;
            }

            ++v31;
            a4 -= v163;
            v63 -= v163;
            v64 += v163;
          }

          while (v31 < v62);
          v16 = v146;
          v32 = v136;
          v31 = v138;
          v51 = v148;
        }
      }
    }

    v66 = v33[1];
    if (v51 < v66)
    {
      if (__OFSUB__(v51, v31))
      {
        goto LABEL_123;
      }

      if (v51 - v31 < v135)
      {
        if (__OFADD__(v31, v135))
        {
          goto LABEL_125;
        }

        if (v31 + v135 >= v66)
        {
          a4 = v33[1];
        }

        else
        {
          a4 = v31 + v135;
        }

        if (a4 < v31)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v51 != a4)
        {
          break;
        }
      }
    }

    a4 = v51;
    if (v51 < v31)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v142 = a4;
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v32 + 16) + 1, 1, v32);
      v32 = result;
    }

    a4 = *(v32 + 16);
    v67 = *(v32 + 24);
    v68 = a4 + 1;
    if (a4 >= v67 >> 1)
    {
      result = sub_26EE12E30((v67 > 1), a4 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 16) = v68;
    v69 = v32 + 16 * a4;
    v70 = v142;
    *(v69 + 32) = v31;
    *(v69 + 40) = v70;
    if (!*v137)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v16 = *v137;
      while (1)
      {
        v71 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v72 = *(v32 + 32);
          v73 = *(v32 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_53:
          if (v75)
          {
            goto LABEL_111;
          }

          v88 = (v32 + 16 * v68);
          v90 = *v88;
          v89 = v88[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_114;
          }

          v94 = (v32 + 32 + 16 * v71);
          v96 = *v94;
          v95 = v94[1];
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_118;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v68 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v98 = (v32 + 16 * v68);
        v100 = *v98;
        v99 = v98[1];
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_67:
        if (v93)
        {
          goto LABEL_113;
        }

        v101 = v32 + 16 * v71;
        v103 = *(v101 + 32);
        v102 = *(v101 + 40);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_116;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v71 - 1;
        if (v71 - 1 >= v68)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v33)
        {
          goto LABEL_129;
        }

        v109 = *(v32 + 32 + 16 * a4);
        v110 = *(v32 + 32 + 16 * v71 + 8);
        sub_26EECECBC(*v33 + v146[9] * v109, *v33 + v146[9] * *(v32 + 32 + 16 * v71), *v33 + v146[9] * v110, v16);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_26EE13990(v32);
        }

        if (a4 >= *(v32 + 16))
        {
          goto LABEL_108;
        }

        v111 = v32 + 16 * a4;
        *(v111 + 32) = v109;
        *(v111 + 40) = v110;
        v165 = v32;
        result = sub_26EE5C168(v71);
        v32 = v165;
        v68 = *(v165 + 16);
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = v32 + 32 + 16 * v68;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_109;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_110;
      }

      v83 = (v32 + 16 * v68);
      v85 = *v83;
      v84 = v83[1];
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_112;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_115;
      }

      if (v87 >= v79)
      {
        v105 = (v32 + 32 + 16 * v71);
        v107 = *v105;
        v106 = v105[1];
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_119;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v30 = v33[1];
    v31 = v142;
    v16 = v146;
    if (v142 >= v30)
    {
      goto LABEL_95;
    }
  }

  v136 = v32;
  v147 = v5;
  v112 = *v33;
  v113 = v16[9];
  v152 = v16[2];
  v114 = v112 + v113 * (v51 - 1);
  v149 = -v113;
  v138 = v31;
  v115 = (v31 - v51);
  v150 = v112;
  v140 = v113;
  v116 = v112 + v51 * v113;
  v142 = a4;
LABEL_86:
  v148 = v51;
  v143 = v116;
  v144 = v115;
  v145 = v114;
  v117 = v115;
  while (1)
  {
    v163 = v117;
    v16 = v162;
    v118 = v152;
    v152(v162, v116, v15);
    v119 = v158;
    v118(v158, v114, v15);
    v120 = v159;
    sub_26EF38D1C();
    v121 = v160;
    sub_26EF38D1C();
    sub_26EECF544(&qword_2806C9208, MEMORY[0x277D70650]);
    v122 = v161;
    LODWORD(v164) = sub_26EF3B08C();
    v123 = *v156;
    v124 = v121;
    v15 = v154;
    (*v156)(v124, v122);
    v123(v120, v122);
    v125 = *v155;
    (*v155)(v119, v15);
    result = v125(v16, v15);
    if ((v164 & 1) == 0)
    {
LABEL_85:
      v51 = v148 + 1;
      v114 = &v145[v140];
      v115 = v144 - 1;
      v116 = &v143[v140];
      a4 = v142;
      if (v148 + 1 != v142)
      {
        goto LABEL_86;
      }

      v5 = v147;
      v33 = v139;
      v32 = v136;
      v31 = v138;
      if (v142 < v138)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v126 = v163;
    if (!v150)
    {
      break;
    }

    v127 = *v153;
    v16 = v151;
    (*v153)(v151, v116, v15);
    swift_arrayInitWithTakeFrontToBack();
    v127(v114, v16, v15);
    v114 += v149;
    v116 += v149;
    v128 = __CFADD__(v126, 1);
    v117 = (v126 + 1);
    if (v128)
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_26EECECBC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v76 = a3;
  v70 = sub_26EF391EC();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v70, v9);
  v71 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v69 = &v57 - v13;
  v74 = sub_26EF38DBC();
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v74, v16);
  v68 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17, v19);
  v75 = &v57 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_61;
  }

  v24 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_62;
  }

  v25 = (a2 - a1) / v23;
  v79 = a1;
  v78 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v27;
    if (v27 >= 1)
    {
      v42 = -v23;
      v62 = (v7 + 8);
      v63 = (v14 + 16);
      v60 = (v14 + 8);
      v61 = a4;
      v43 = v41;
      v73 = a1;
      v64 = v42;
      do
      {
        v58 = v41;
        v44 = a2;
        v45 = v42 + a2;
        v65 = v44;
        v66 = v45;
        while (1)
        {
          v46 = v76;
          if (v44 <= a1)
          {
            v79 = v44;
            v77 = v58;
            goto LABEL_59;
          }

          v59 = v41;
          v76 += v42;
          v47 = v42 + v43;
          v48 = *v63;
          v49 = v74;
          v72 = v46;
          v48();
          v50 = v68;
          (v48)(v68, v45, v49);
          v51 = v69;
          sub_26EF38D1C();
          v52 = v71;
          sub_26EF38D1C();
          sub_26EECF544(&qword_2806C9208, MEMORY[0x277D70650]);
          v53 = v70;
          LODWORD(v67) = sub_26EF3B08C();
          v54 = *v62;
          (*v62)(v52, v53);
          v54(v51, v53);
          v55 = *v60;
          (*v60)(v50, v49);
          v55(v75, v49);
          if (v67)
          {
            break;
          }

          v41 = v47;
          v56 = v47;
          if (v72 < v43 || v76 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v73;
            v42 = v64;
          }

          else
          {
            a1 = v73;
            v42 = v64;
            if (v72 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v43 = v41;
          v44 = v65;
          v45 = v66;
          if (v56 <= v61)
          {
            a2 = v65;
            goto LABEL_58;
          }
        }

        if (v72 < v65 || v76 >= v65)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v73;
          v41 = v59;
          v42 = v64;
        }

        else
        {
          a2 = v66;
          a1 = v73;
          v41 = v59;
          v42 = v64;
          if (v72 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v43 > v61);
    }

LABEL_58:
    v79 = a2;
    v77 = v41;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = a4 + v26;
    v77 = a4 + v26;
    if (v26 >= 1 && a2 < v76)
    {
      v29 = *(v14 + 16);
      v63 = (v7 + 8);
      v64 = v29;
      v65 = v23;
      v66 = v14 + 16;
      v62 = (v14 + 8);
      do
      {
        v73 = a1;
        v30 = v74;
        v31 = v64;
        v64();
        v32 = v68;
        (v31)(v68, a4, v30);
        v33 = v69;
        sub_26EF38D1C();
        v34 = v71;
        sub_26EF38D1C();
        sub_26EECF544(&qword_2806C9208, MEMORY[0x277D70650]);
        v35 = v70;
        LODWORD(v72) = sub_26EF3B08C();
        v36 = *v63;
        (*v63)(v34, v35);
        (v36)(v33, v35);
        v37 = *v62;
        (*v62)(v32, v30);
        v37(v75, v30);
        if (v72)
        {
          v38 = v65;
          v39 = v73;
          if (v73 < a2 || v73 >= a2 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v38;
        }

        else
        {
          v38 = v65;
          v40 = a4 + v65;
          v39 = v73;
          if (v73 < a4 || v73 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = v40;
          a4 += v38;
        }

        a1 = v39 + v38;
        v79 = a1;
      }

      while (a4 < v67 && a2 < v76);
    }
  }

LABEL_59:
  sub_26EECF41C(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_26EECF41C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26EF38DBC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26EECF544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EECF58C()
{
  v0 = sub_26EF3872C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  if (v7)
  {
    *(v10 + 16) = xmmword_26EF3D070;
    sub_26EF386EC();
    sub_26EF3871C();
  }

  else
  {
    *(v10 + 16) = xmmword_26EF3C6B0;
    sub_26EF386EC();
  }

  v12[1] = v10;
  sub_26EED125C(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_26EECF7A4@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v22 - v5;
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9218, &qword_26EF42478);
  v7 = *(v22[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22[0], v9);
  v11 = v22 - v10;
  v12 = sub_26EE17094();
  v13._object = 0x800000026EF465D0;
  v14 = v12 & 1;
  v13._countAndFlagsBits = 0xD000000000000017;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v14, 0);
  v15 = type metadata accessor for ThingsToKnowView();
  sub_26EEB1C34(v1 + *(v15 + 20), v6);
  v25 = v1;
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9220, &unk_26EF42480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806C9228, &qword_2806C9220, &unk_26EF42480);
  sub_26EE79320();
  sub_26EF386BC();
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C9230, &qword_2806C9218, &qword_26EF42478);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v18 = sub_26EEB2104();
  v26 = v17;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v16;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v22[0];
  sub_26EF3A8EC();
  return (*(v7 + 8))(v11, v20);
}

uint64_t type metadata accessor for ThingsToKnowView()
{
  result = qword_2806CDDA0;
  if (!qword_2806CDDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EECFB5C()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9238, &unk_26EF424A8);
  sub_26EE154C8(&qword_2806C9240, &qword_2806C9238, &unk_26EF424A8);
  return sub_26EF387CC();
}

uint64_t sub_26EECFC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ThingsToKnowView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = sub_26EE17094();
  v9._object = 0xEB0000000045554ELL;
  v10 = v8 & 1;
  v9._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v9, v10, 0)._countAndFlagsBits;
  sub_26EED0D54(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26EED0ECC(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  CGSizeMake(countAndFlagsBits, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(countAndFlagsBits) = sub_26EF3A3DC();
  result = sub_26EF3962C();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = countAndFlagsBits;
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_26EECFDA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BD8, &unk_26EF41860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v10 - v4;
  sub_26EECFED4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v7 = sub_26EEB2104();
  v10[0] = v6;
  v10[1] = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v5, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_26EECFED4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ToolbarCancelButton();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v20 = _UISolariumEnabled();
  if (v20)
  {
    (*(v1 + 56))(v16, 1, 1, v0);
    v21 = sub_26EED125C(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    v29 = v6;
    v30 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, OpaqueTypeConformance2);
    sub_26EEB26EC(v16);
  }

  else
  {
    v23 = sub_26EF36388(v20);
    sub_26EF363D8(v23, v24, v10);
    v25 = sub_26EED125C(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    MEMORY[0x274382230](v10, v6, v25);
    (*(v1 + 16))(v16, v5, v0);
    (*(v1 + 56))(v16, 0, 1, v0);
    v29 = v6;
    v30 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, v26);
    sub_26EEB26EC(v16);
    (*(v1 + 8))(v5, v0);
    sub_26EEB2754(v10);
  }

  v27 = sub_26EEB2104();
  MEMORY[0x274382230](v19, v11, v27);
  return sub_26EEB26EC(v19);
}

uint64_t sub_26EED021C@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = sub_26EF387BC();
  v51 = *(v1 - 8);
  v2 = v51[8];
  v4 = MEMORY[0x28223BE20](v1, v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v48 = &v45 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v52 = &v45 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v47 = &v45 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v45 = &v45 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v46 = &v45 - v19;
  v20 = sub_26EE17094();
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v21._object = 0x800000026EF46650;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v20 & 1, 0);
  v22 = sub_26EE17094();
  v23._countAndFlagsBits = 0xD00000000000001DLL;
  v23._object = 0x800000026EF46670;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v23, v22 & 1, 0);
  v24 = objc_opt_self();
  v25 = [v24 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v26 = sub_26EE17094();
  v27._countAndFlagsBits = 0xD000000000000020;
  v27._object = 0x800000026EF466B0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v27, v26 & 1, 0);
  sub_26EED0704();
  v28 = [v24 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v29 = sub_26EE17094();
  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x800000026EF46710;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v30, v29 & 1, 0);
  v31 = sub_26EE17094();
  v32._countAndFlagsBits = 0xD000000000000019;
  v32._object = 0x800000026EF46730;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v32, v31 & 1, 0);
  v33 = [v24 systemBlueColor];
  sub_26EF3AA5C();
  v34 = v47;
  sub_26EF387AC();
  v35 = v52;
  v36 = v51[2];
  v37 = v46;
  v36(v52, v46, v1);
  v38 = v48;
  v39 = v45;
  v36(v48, v45, v1);
  v40 = v49;
  v36(v49, v34, v1);
  v41 = v50;
  v36(v50, v35, v1);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9248, &qword_26EF42528);
  v36(&v41[*(v42 + 48)], v38, v1);
  v36(&v41[*(v42 + 64)], v40, v1);
  v43 = v51[1];
  v43(v34, v1);
  v43(v39, v1);
  v43(v37, v1);
  v43(v40, v1);
  v43(v38, v1);
  return (v43)(v52, v1);
}

uint64_t sub_26EED0704()
{
  v0 = sub_26EF37F6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24 - v8;
  v10 = sub_26EF37FEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF37FAC();
  sub_26EF37F7C();
  (*(v11 + 8))(v15, v10);
  sub_26EF37F5C();
  v16 = MEMORY[0x274380010](v9, v6);
  v17 = *(v1 + 8);
  v17(v6, v0);
  v17(v9, v0);
  v18 = sub_26EE17094();
  v19 = "ONSISTENCY_CONTENT_IMPERIAL";
  if ((v16 & 1) == 0)
  {
    v19 = "VB_THINGS_TO_KNOW_TITLE";
  }

  v20 = 0xD000000000000029;
  if ((v16 & 1) == 0)
  {
    v20 = 0xD00000000000002BLL;
  }

  v21._object = (v19 | 0x8000000000000000);
  v22 = v18 & 1;
  v21._countAndFlagsBits = v20;
  return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v22, 0)._countAndFlagsBits;
}

uint64_t sub_26EED0904@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EED125C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *a1 = sub_26EF39C1C();
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for ThingsToKnowView() + 20);
  return sub_26EECF58C();
}

uint64_t sub_26EED09BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_26EED0A98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EED0B48()
{
  sub_26EE1F73C();
  if (v0 <= 0x3F)
  {
    sub_26EED0BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EED0BCC()
{
  if (!qword_2806C8070)
  {
    sub_26EF3872C();
    v0 = sub_26EF3AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8070);
    }
  }
}

uint64_t sub_26EED0C24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9218, &qword_26EF42478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C9230, &qword_2806C9218, &qword_26EF42478);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  sub_26EEB2104();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EED0D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThingsToKnowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EED0DB8()
{
  v1 = (type metadata accessor for ThingsToKnowView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v10 = sub_26EF3872C();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EED0ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThingsToKnowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EED0F30()
{
  v1 = *(type metadata accessor for ThingsToKnowView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = sub_26EF3865C();
  v25[3] = v3;
  v25[4] = sub_26EED125C(&qword_2806C9250, MEMORY[0x277CE67D8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE67C0], v3);
  LOBYTE(v3) = sub_26EF3805C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v5 = *v2;
  if (v3)
  {
    if (v5)
    {
      v6 = *v2;

      v7 = VoiceBankingNavigationModel.itemPath.modify(v25);
      v9 = v8;
      v10 = *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26EEB3AD4(0, *(v10 + 2) + 1, 1, v10);
        *v9 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_26EEB3AD4((v12 > 1), v13 + 1, 1, v10);
        *v9 = v10;
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      v15 = 2;
LABEL_14:
      *(v14 + 4) = v15;
      v14[40] = 1;
      (v7)(v25, 0);
    }
  }

  else if (v5)
  {
    v16 = *v2;

    v7 = VoiceBankingNavigationModel.itemPath.modify(v25);
    v18 = v17;
    v19 = *v17;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_26EEB3AD4(0, *(v19 + 2) + 1, 1, v19);
      *v18 = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_26EEB3AD4((v21 > 1), v22 + 1, 1, v19);
      *v18 = v19;
    }

    *(v19 + 2) = v22 + 1;
    v14 = &v19[16 * v22];
    v15 = 5;
    goto LABEL_14;
  }

  v24 = v2[1];
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EED125C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26EED125C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EED12A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();
}

uint64_t sub_26EED1364(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26EF395CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v14(v10, v13, v4);

  sub_26EF3953C();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_26EED14D4(uint64_t a1)
{
  v2 = sub_26EF395CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v7, a1, v2);

  sub_26EF3953C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_26EED15FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9258, &qword_26EF42578);
  sub_26EF394FC();
  return swift_endAccess();
}

uint64_t sub_26EED1670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9260, &qword_26EF42580);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9258, &qword_26EF42578);
  sub_26EF3950C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_26EED17A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8F68];
  v3 = sub_26EF395CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26EED181C(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26EED185C(a1);
  return v5;
}

uint64_t sub_26EED185C(char *a1)
{
  v2 = v1;
  v44 = a1;
  v43 = sub_26EF395CC();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  v5 = MEMORY[0x28223BE20](v43, v4);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v40 = v37 - v8;
  v39 = sub_26EF3B53C();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v39, v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26EF3B50C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v17 = sub_26EF3AFAC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitor;
  v21 = sub_26EF395AC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = sub_26EF3959C();
  v38 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitorQueue;
  v24 = sub_26EE972DC();
  v37[0] = "VB_TAKE_YOUR_TIME_CONTENT";
  v37[1] = v24;
  sub_26EF3AF8C();
  v45 = MEMORY[0x277D84F90];
  sub_26EED2544(&qword_2806C9268, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E80, qword_26EF42588);
  sub_26EED258C(&qword_2806C9270, &unk_2806C9E80, qword_26EF42588);
  sub_26EF3B68C();
  (*(v9 + 104))(v13, *MEMORY[0x277D85260], v39);
  *(v1 + v38) = sub_26EF3B56C();
  v26 = v40;
  v25 = v41;
  v27 = *(v41 + 16);
  v28 = v43;
  v29 = v44;
  v27(v40, v44, v43);
  swift_beginAccess();
  v27(v42, v26, v28);
  sub_26EF394EC();
  v30 = *(v25 + 8);
  v31 = v28;
  v30(v26, v28);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitor;
  v33 = *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitor);

  sub_26EE21114(sub_26EED2048);
  sub_26EF3957C();

  v34 = *(v2 + v32);
  v35 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitorQueue);
  sub_26EF3958C();
  v30(v29, v31);
  return v2;
}

uint64_t sub_26EED1CAC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_26EF3AF7C();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3AFAC();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26EF395EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  sub_26EE972DC();
  v17 = sub_26EF3B54C();
  (*(v14 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  (*(v14 + 32))(v19 + v18, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_26EED24C8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26EE1DD80;
  aBlock[3] = &block_descriptor_2;
  v20 = _Block_copy(aBlock);

  sub_26EF3AF8C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26EED2544(&unk_2806C9E30, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
  sub_26EED258C(&qword_2806C9E40, &qword_2806C6DF0, &qword_26EF3D550);
  sub_26EF3B68C();
  MEMORY[0x274383620](0, v12, v7, v20);
  _Block_release(v20);

  (*(v25 + 8))(v7, v3);
  return (*(v23 + 8))(v12, v24);
}

uint64_t sub_26EED2050()
{
  v0 = sub_26EF395CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_26EF395DC();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v1 + 16))(v6, v9, v0);

  sub_26EF3953C();
  return (*(v1 + 8))(v9, v0);
}

uint64_t sub_26EED21A4()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel__status;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9258, &qword_26EF42578);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI24VoiceBankingNetworkModel_pathMonitor);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_26EED226C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VoiceBankingNetworkModel();
  result = sub_26EF394BC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for VoiceBankingNetworkModel()
{
  result = qword_2806CDE60;
  if (!qword_2806CDE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EED2300()
{
  sub_26EED23AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26EED23AC()
{
  if (!qword_2806C9278)
  {
    sub_26EF395CC();
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C9278);
    }
  }
}

uint64_t sub_26EED2404()
{
  v1 = sub_26EF395EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EED24C8()
{
  v1 = *(*(sub_26EF395EC() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_26EED2050();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EED2544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EED258C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26EED25E0()
{
  result = qword_2806C9BB0;
  if (!qword_2806C9BB0)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9BB0);
  }

  return result;
}

uint64_t sub_26EED2638()
{
  sub_26EE12538();

  v0 = sub_26EF3A5DC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = v4 & 1;
  v9 = sub_26EF3A44C();
  *&v11 = v0;
  *(&v11 + 1) = v2;
  LOBYTE(v12) = v8;
  *(&v12 + 1) = v6;
  LOWORD(v13) = 256;
  *(&v13 + 1) = KeyPath;
  LOBYTE(v14) = 0;
  *(&v14 + 1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9280, &unk_26EF42650);
  sub_26EED2808();
  sub_26EF3A88C();
  v15[2] = v13;
  v15[3] = v14;
  v16 = v9;
  v15[0] = v11;
  v15[1] = v12;
  return sub_26EED2A28(v15);
}

uint64_t sub_26EED275C()
{
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EED25E0();
  return sub_26EF39C1C();
}

uint64_t sub_26EED27AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26EED2638();
}

uint64_t sub_26EED27B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26EF39CFC();
  *a1 = result;
  return result;
}

unint64_t sub_26EED2808()
{
  result = qword_2806C9288;
  if (!qword_2806C9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9280, &unk_26EF42650);
    sub_26EED28AC();
    sub_26EED29D4(&qword_2806C6F20, &qword_2806C6F28, &qword_26EF42670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9288);
  }

  return result;
}

unint64_t sub_26EED28AC()
{
  result = qword_2806C9290;
  if (!qword_2806C9290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9298, &qword_26EF44AE0);
    sub_26EED2950();
    sub_26EED29D4(&qword_2806C92B0, &qword_2806C92B8, &qword_26EF42668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9290);
  }

  return result;
}

unint64_t sub_26EED2950()
{
  result = qword_2806C92A0;
  if (!qword_2806C92A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C92A8, &qword_26EF42660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C92A0);
  }

  return result;
}

uint64_t sub_26EED29D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26EED2A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9280, &unk_26EF42650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EED2AAC(uint64_t a1, int a2)
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

uint64_t sub_26EED2AF4(uint64_t result, int a2, int a3)
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

uint64_t sub_26EED2B44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9280, &unk_26EF42650);
  sub_26EED2808();
  return swift_getOpaqueTypeConformance2();
}

uint64_t VBKeepScreenAwakeManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84FA0];
  return result;
}

uint64_t VBKeepScreenAwakeManager.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  return result;
}

Swift::Void __swiftcall VBKeepScreenAwakeManager.keepScreenAwake(forReason:)(Swift::String forReason)
{
  v2 = v1;
  object = forReason._object;
  countAndFlagsBits = forReason._countAndFlagsBits;
  swift_beginAccess();

  sub_26EE92004(&v9, countAndFlagsBits, object);
  swift_endAccess();

  if (*(*(v1 + 24) + 16) == 1)
  {
    v5 = objc_opt_self();
    v6 = [v5 sharedApplication];
    v7 = [v6 isIdleTimerDisabled];

    *(v2 + 16) = v7;
    v8 = [v5 sharedApplication];
    [v8 setIdleTimerDisabled_];
  }
}

Swift::Void __swiftcall VBKeepScreenAwakeManager.letScreenSleep(givingUpReason:)(Swift::String givingUpReason)
{
  object = givingUpReason._object;
  countAndFlagsBits = givingUpReason._countAndFlagsBits;
  swift_beginAccess();
  sub_26EEC696C(countAndFlagsBits, object);
  swift_endAccess();

  if (!*(*(v1 + 24) + 16))
  {
    v4 = *(v1 + 16);
    v5 = [objc_opt_self() sharedApplication];
    [v5 setIdleTimerDisabled_];
  }
}

uint64_t VBKeepScreenAwakeManager.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t VBKeepScreenAwakeManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_26EED2E50()
{
  result = [objc_allocWithZone(type metadata accessor for VoiceBankingSession()) init];
  qword_2806CDF88 = result;
  return result;
}

id VoiceBankingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_26EED2EB8()
{
  if (qword_2806CDF80 != -1)
  {
    swift_once();
  }

  return &qword_2806CDF88;
}

id static VoiceBankingSession.shared.getter()
{
  if (qword_2806CDF80 != -1)
  {
    swift_once();
  }

  v1 = qword_2806CDF88;

  return v1;
}

uint64_t VoiceBankingSession.script.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  *a1 = *(v5 + v3);
}

uint64_t sub_26EED302C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26EED30F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF37FFC();
}

uint64_t type metadata accessor for VoiceBankingSession()
{
  result = qword_2806CE190;
  if (!qword_2806CE190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoiceBankingSession.script.setter(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF37FFC();
}

uint64_t sub_26EED32DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*VoiceBankingSession.script.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  *v4 = v1;
  swift_getKeyPath();
  sub_26EF3802C();

  swift_beginAccess();
  return sub_26EED34B8;
}

uint64_t sub_26EED34C4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_26EED3580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26EED366C(char a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  swift_beginAccess();
  v7 = *(v1 + v3);
  sub_26EE1C384();
  result = sub_26EF3B0AC();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF37FFC();
  }

  return result;
}

uint64_t sub_26EED37D8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_26EED3894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26EED3980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF37FFC();
  }

  return result;
}

uint64_t VoiceBankingSession.trainingAssetSize.getter()
{
  if (sub_26EF3922C())
  {
    return 1090000000;
  }

  else
  {
    return 533700000;
  }
}

uint64_t VoiceBankingSession.voiceID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EEF1774(a1, v1 + v3, &qword_2806C9CB0, &qword_26EF3DD20);
  return swift_endAccess();
}

uint64_t VoiceBankingSession.voiceCreationLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  v4 = sub_26EF38CDC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t VoiceBankingSession.voiceCreationLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  v4 = sub_26EF38CDC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id VoiceBankingSession.trainingScriptType.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

id sub_26EED3E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void VoiceBankingSession.trainingScriptType.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_26EF3B0FC();
  v7 = v6;
  if (v5 == sub_26EF3B0FC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26EF3B82C();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v12);
      sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
      sub_26EF37FFC();

      return;
    }
  }

  v13 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*VoiceBankingSession.trainingScriptType.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  *v4 = v1;
  swift_getKeyPath();
  sub_26EF3802C();

  swift_beginAccess();
  return sub_26EED4208;
}

uint64_t VoiceBankingSession.indexOfCurrentSample.getter()
{
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = (v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26EED42D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = v3 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t VoiceBankingSession.indexOfCurrentSample.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v8);
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF37FFC();
}

void (*VoiceBankingSession.indexOfCurrentSample.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  *v4 = v1;
  swift_getKeyPath();
  sub_26EF3802C();

  swift_beginAccess();
  return sub_26EED4678;
}

void sub_26EED4684(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_26EF3801C();

  free(v1);
}

uint64_t sub_26EED4708()
{
  v1 = sub_26EF3883C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EE27DAC();
  (*(v2 + 16))(v6, v7, v1);
  v8 = v0;
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B44C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getKeyPath();
    v25 = v8;
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF3800C();

    v13 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
    swift_beginAccess();
    v14 = v8[v13];
    v15 = 0x656C706D6F636E69;
    v16 = 0xE700000000000000;
    v17 = 0x676E6975657571;
    v18 = 0xE700000000000000;
    v19 = 0x6C616974726170;
    if (v14 != 3)
    {
      v19 = 0x6574656C706D6F63;
      v18 = 0xE800000000000000;
    }

    if (v14 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    v20 = 0xEA0000000000676ELL;
    if (v8[v13])
    {
      v15 = 0x69737365636F7270;
    }

    else
    {
      v20 = 0xEA00000000006574;
    }

    if (v8[v13] <= 1u)
    {
      v21 = v15;
    }

    else
    {
      v21 = v17;
    }

    if (v8[v13] <= 1u)
    {
      v22 = v20;
    }

    else
    {
      v22 = v16;
    }

    v23 = sub_26EE40670(v21, v22, &v26);

    *(v11 + 4) = v23;
    _os_log_impl(&dword_26EE01000, v9, v10, "Sample state set to %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2743842A0](v12, -1, -1);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t VoiceBankingSession.sampleState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t SampleState.description.getter()
{
  v1 = *v0;
  v2 = 0x656C706D6F636E69;
  v3 = 0x676E6975657571;
  v4 = 0x6C616974726170;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69737365636F7270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t (*sub_26EED4B54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26EED4BB8;
}

uint64_t sub_26EED4BB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_26EED4708();
  }

  return result;
}

uint64_t sub_26EED4BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26EED4CB0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return VoiceBankingSession.sampleState.setter(&v4);
}

uint64_t VoiceBankingSession.sampleState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    return sub_26EED4708();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v6);
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF37FFC();
}

void (*VoiceBankingSession.sampleState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  *v4 = v1;
  swift_getKeyPath();
  sub_26EF3802C();

  v4[7] = sub_26EED4B54(v4);
  return sub_26EED4F4C;
}

void sub_26EED4F4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_26EF3801C();

  free(v1);
}

uint64_t sub_26EED4FE0()
{
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
}

uint64_t sub_26EED508C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  *a2 = *(v3 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
}

uint64_t sub_26EED5140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26EED516C(v4);
}

uint64_t sub_26EED516C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF37FFC();
  }
}

uint64_t sub_26EED52A8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_26EED5368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v4 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26EED5430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26EED545C(v4);
}

uint64_t sub_26EED545C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_26EEF11E4(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF37FFC();
  }
}

uint64_t VoiceBankingSession.nextSampleHasRecording.getter()
{
  v1 = v0;
  v2 = sub_26EF38E9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!v9)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  v14 = v1;

  sub_26EF3800C();

  v10 = v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
  result = swift_beginAccess();
  if (*(v10 + 8) == 1)
  {
    goto LABEL_7;
  }

  v12 = *v10 + 1;
  if (__OFADD__(*v10, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= *(v9 + 16))
  {
LABEL_7:

LABEL_8:
    v13 = 0;
    return v13 & 1;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    (*(v3 + 16))(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);

    v13 = sub_26EF38DDC();
    (*(v3 + 8))(v7, v2);
    return v13 & 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t VoiceBankingSession.keepScreenAwakeManager.getter()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager;
  if (*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VBKeepScreenAwakeManager();
    v2 = VBKeepScreenAwakeManager.__allocating_init()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_26EED586C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = VoiceBankingSession.keepScreenAwakeManager.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26EED5898(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager);
  *(*a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager) = *a1;
}

uint64_t VoiceBankingSession.keepScreenAwakeManager.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager);
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager) = a1;
}

uint64_t (*VoiceBankingSession.keepScreenAwakeManager.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = VoiceBankingSession.keepScreenAwakeManager.getter();
  return sub_26EED5944;
}

uint64_t sub_26EED5944(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager);
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager) = v2;
}

uint64_t sub_26EED598C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  VoiceBankingSession.keepScreenAwakeManager.getter();
  a3(a1, a2);
}

uint64_t sub_26EED59E8()
{
  v0 = sub_26EF3925C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D70688], v0);
  sub_26EEF17DC(&qword_2806C8278, MEMORY[0x277D70698]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v1 + 8))(v5, v0);

LABEL_4:

    return 10;
  }

  v7 = sub_26EF3B82C();
  (*(v1 + 8))(v5, v0);

  if (v7)
  {
    return 10;
  }

  v8 = *MEMORY[0x277D70768];
  v9 = sub_26EF3B0FC();
  v11 = v10;
  if (v9 == sub_26EF3B0FC() && v11 == v12)
  {

    return 15;
  }

  else
  {
    v13 = sub_26EF3B82C();

    if (v13)
    {
      return 15;
    }

    else
    {
      v14 = *MEMORY[0x277D70770];
      v15 = sub_26EF3B0FC();
      v17 = v16;
      if (v15 == sub_26EF3B0FC() && v17 == v18)
      {

        goto LABEL_4;
      }

      v19 = sub_26EF3B82C();

      if (v19)
      {
        return 10;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_26EED5CC0()
{
  v0 = sub_26EF3925C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D70688], v0);
  sub_26EEF17DC(&qword_2806C8278, MEMORY[0x277D70698]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v1 + 8))(v5, v0);

    return 1;
  }

  else
  {
    v7 = sub_26EF3B82C();
    (*(v1 + 8))(v5, v0);

    if (v7)
    {
      return 1;
    }

    else
    {
      v8 = *MEMORY[0x277D70768];
      v9 = sub_26EF3B0FC();
      v11 = v10;
      if (v9 == sub_26EF3B0FC() && v11 == v12)
      {

        return 10;
      }

      else
      {
        v13 = sub_26EF3B82C();

        if (v13)
        {
          return 10;
        }

        else
        {
          v14 = *MEMORY[0x277D70770];
          v15 = sub_26EF3B0FC();
          v17 = v16;
          if (v15 == sub_26EF3B0FC() && v17 == v18)
          {

            return 15;
          }

          else
          {
            v19 = sub_26EF3B82C();

            if (v19)
            {
              return 15;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26EED5FA0(uint64_t a1)
{
  v3 = sub_26EF38E9C();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v90 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v95 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v84 - v21;
  v23 = sub_26EF3883C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v27 = MEMORY[0x28223BE20](v23, v26);
  v97 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v84 - v30;
  v32 = sub_26EE27ED0();
  v33 = v24[2];
  v92 = v32;
  v93 = v24 + 2;
  v91 = v33;
  (v33)(v31);
  v96 = a1;
  sub_26EE13B88(a1, v22, &unk_2806C9CA0, &qword_26EF3F100);
  v34 = v1;
  v35 = sub_26EF3881C();
  v36 = sub_26EF3B43C();

  if (os_log_type_enabled(v35, v36))
  {
    v87 = v36;
    v88 = v35;
    v86 = v24;
    v94 = v23;
    v98 = v8;
    v37 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v103[0] = v85;
    *v37 = 136315394;
    v38 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
    swift_beginAccess();
    v39 = v99;
    v40 = *(v99 + 48);
    v41 = v40(&v34[v38], 1, v100);
    v89 = v34;
    if (v41)
    {
      v42 = 0xE500000000000000;
      v43 = v100;
      v44 = 0x3E6C696E3CLL;
    }

    else
    {
      v47 = &v34[v38];
      v48 = v90;
      v43 = v100;
      (*(v39 + 16))(v90, v47, v100);
      v49 = sub_26EF38E7C();
      v50 = v39;
      v44 = v49;
      v42 = v51;
      (*(v50 + 8))(v48, v43);
    }

    v52 = sub_26EE40670(v44, v42, v103);

    *(v37 + 4) = v52;
    *(v37 + 12) = 2080;
    sub_26EE13B88(v22, v19, &unk_2806C9CA0, &qword_26EF3F100);
    if (v40(v19, 1, v43) == 1)
    {
      sub_26EE14578(v19, &unk_2806C9CA0, &qword_26EF3F100);
      v53 = 0xE500000000000000;
      v34 = v89;
      v23 = v94;
      v54 = v88;
      v55 = 0x3E6C696E3CLL;
    }

    else
    {
      v55 = sub_26EF38E7C();
      v53 = v56;
      (*(v99 + 8))(v19, v100);
      v34 = v89;
      v23 = v94;
      v54 = v88;
    }

    sub_26EE14578(v22, &unk_2806C9CA0, &qword_26EF3F100);
    v57 = sub_26EE40670(v55, v53, v103);

    *(v37 + 14) = v57;
    _os_log_impl(&dword_26EE01000, v54, v87, "will set sample. previous=%s new=%s", v37, 0x16u);
    v58 = v85;
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v58, -1, -1);
    MEMORY[0x2743842A0](v37, -1, -1);

    v45 = v86[1];
    v45(v31, v23);
    v8 = v98;
    v46 = v99;
  }

  else
  {

    sub_26EE14578(v22, &unk_2806C9CA0, &qword_26EF3F100);
    v45 = v24[1];
    v45(v31, v23);
    v46 = v99;
  }

  swift_getKeyPath();
  v59 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  v103[0] = v34;
  v60 = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v61 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  result = swift_beginAccess();
  v63 = *&v34[v61];
  if (v63)
  {
    v64 = v95;
    sub_26EE13B88(v96, v95, &unk_2806C9CA0, &qword_26EF3F100);
    if ((*(v46 + 48))(v64, 1, v100) == 1)
    {
      return sub_26EE14578(v64, &unk_2806C9CA0, &qword_26EF3F100);
    }

    v90 = v60;
    v96 = v59;
    v65 = *(v46 + 32);
    v98 = v8;
    v65(v8, v64, v100);
    v91(v97, v92, v23);
    v66 = v34;

    v67 = sub_26EF3881C();
    v68 = sub_26EF3B43C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v94 = v23;
      v70 = v69;
      *v69 = 134217984;
      swift_getKeyPath();
      v102 = v66;
      sub_26EF3800C();

      v71 = v66 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
      swift_beginAccess();
      v72 = *v71;
      if (v71[8])
      {
        v72 = -1;
      }

      *(v70 + 1) = v72;

      _os_log_impl(&dword_26EE01000, v67, v68, "Setting index of current sample to: %ld", v70, 0xCu);
      v73 = v70;
      v23 = v94;
      MEMORY[0x2743842A0](v73, -1, -1);
    }

    else
    {

      v67 = v66;
    }

    v45(v97, v23);
    v74 = v98;
    v75 = sub_26EED6960(v98, v63);
    v77 = v76;

    VoiceBankingSession.indexOfCurrentSample.setter(v75, v77 & 1);
    v78 = sub_26EF38DDC();
    v79 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
    if (v78)
    {
      swift_beginAccess();
      if (*(&v66->isa + v79) != 4)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v81);
        *(&v84 - 2) = v66;
        *(&v84 - 8) = 4;
        v101 = v66;
LABEL_23:
        sub_26EF37FFC();

        return (*(v99 + 8))(v74, v100);
      }
    }

    else
    {
      swift_beginAccess();
      if (*(&v66->isa + v79))
      {
        v82 = swift_getKeyPath();
        MEMORY[0x28223BE20](v82, v83);
        *(&v84 - 2) = v66;
        *(&v84 - 8) = 0;
        v101 = v66;
        goto LABEL_23;
      }
    }

    sub_26EED4708();
    return (*(v99 + 8))(v74, v100);
  }

  return result;
}

uint64_t sub_26EED6960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_26EF38E9C() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_26EEF17DC(&qword_2806C9430, MEMORY[0x277D70610]);
  v7 = 0;
  while ((sub_26EF3B0AC() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26EED6A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_26EE13B88(v4 + v8, a4, a2, a3);
}

uint64_t sub_26EED6AEC(uint64_t a1)
{
  sub_26EED5FA0(a1);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  swift_beginAccess();
  sub_26EEF1774(a1, v1 + v3, &unk_2806C9CA0, &qword_26EF3F100);
  return swift_endAccess();
}

uint64_t sub_26EED6B60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3925C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277D70690], v8);
  if (TTSVBIsPersonalVoiceVersion2Enabled() && (sub_26EF3922C() & 1) != 0)
  {
    (*(v9 + 8))(v13, v8);
    v14(v13, *MEMORY[0x277D70688], v8);
  }

  v15 = sub_26EE27ED0();
  (*(v3 + 16))(v7, v15, v2);
  v16 = v7;
  v17 = sub_26EF3881C();
  v18 = sub_26EF3B43C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v2;
    v22 = v21;
    v33[0] = v21;
    *v20 = 136315650;
    swift_beginAccess();
    v23 = sub_26EF3924C();
    v25 = sub_26EE40670(v23, v24, v33);
    v30 = v16;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 1024;
    *(v20 + 14) = TTSVBIsPersonalVoiceVersion2Enabled();
    *(v20 + 18) = 1024;
    *(v20 + 20) = sub_26EF3922C() & 1;
    _os_log_impl(&dword_26EE01000, v17, v18, "Setting experience=%s TTSVBIsPersonalVoiceVersion2Enabled()=%{BOOL}d  TTSVBDeviceSupportsV2Voices=%{BOOL}d", v20, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2743842A0](v22, -1, -1);
    v27 = v20;
    a1 = v32;
    MEMORY[0x2743842A0](v27, -1, -1);

    (*(v3 + 8))(v30, v31);
  }

  else
  {

    (*(v3 + 8))(v16, v2);
  }

  swift_beginAccess();
  (*(v9 + 16))(a1, v13, v8);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_26EED6EB4()
{
  v0 = sub_26EF3925C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D70688], v0);
  sub_26EEF17DC(&qword_2806C8278, MEMORY[0x277D70698]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v8[2] == v8[0] && v8[3] == v8[1])
  {
    v6 = 2;
  }

  else if (sub_26EF3B82C())
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  (*(v1 + 8))(v5, v0);

  return v6;
}

BOOL sub_26EED7058()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v27 - v5;
  v7 = sub_26EF3883C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v27 - v16;
  v18 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v1 + v18, v17, &qword_2806C9CB0, &qword_26EF3DD20);
  v19 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v17);
  sub_26EE14578(v17, &qword_2806C9CB0, &qword_26EF3DD20);
  if (v19 >= 1)
  {
    v20 = sub_26EE27ED0();
    (*(v8 + 16))(v12, v20, v7);
    v21 = sub_26EF3881C();
    v22 = sub_26EF3B43C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_26EE40670(0xD00000000000001CLL, 0x800000026EF46870, v27);
      _os_log_impl(&dword_26EE01000, v21, v22, "%s: will fetch Next Uncaptured Sample", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2743842A0](v24, -1, -1);
      MEMORY[0x2743842A0](v23, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    VoiceBankingSession.fetchNextUncapturedSample()(v6);
    sub_26EED5FA0(v6);
    v25 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
    swift_beginAccess();
    sub_26EEF1774(v6, v1 + v25, &unk_2806C9CA0, &qword_26EF3F100);
    swift_endAccess();
  }

  return v19 > 0;
}

BOOL VoiceBankingSession.isRecordingComplete.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v0 + v6, v5, &qword_2806C9CB0, &qword_26EF3DD20);
  v7 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v5);
  sub_26EE14578(v5, &qword_2806C9CB0, &qword_26EF3DD20);
  return v7 < 1;
}

uint64_t VoiceBankingSession.fetchNextUncapturedSample()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF38E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v1;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (!v11)
  {
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v12 = *(v11 + 16);

  if (!v12)
  {
LABEL_7:

    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v14 = 0;
  while (v14 < *(v11 + 16))
  {
    (*(v5 + 16))(v9, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v4);
    if ((sub_26EF38DDC() & 1) == 0)
    {

      (*(v5 + 32))(a1, v9, v4);
      return (*(v5 + 56))(a1, 0, 1, v4);
    }

    ++v14;
    result = (*(v5 + 8))(v9, v4);
    if (v12 == v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26EED768C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v11 = v2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  v6 = *(v11 + v5);
  if (v6 && *(v6 + 16) > a1)
  {
    v7 = sub_26EF38E9C();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v10 = sub_26EF38E9C();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_26EED785C()
{
  v1 = v0;
  v2 = sub_26EF38E9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  v11 = *(v1 + v8);

  v13 = 0;
  if (!v10)
  {
LABEL_8:

    return v13;
  }

  while (v13 < *(v9 + 16))
  {
    (*(v3 + 16))(v7, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v2);
    v14 = sub_26EF38DDC();
    result = (*(v3 + 8))(v7, v2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (v10 == ++v13)
    {
      v13 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t VoiceBankingSession.loadStores()()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26EED7B00, v3, v2);
}

uint64_t sub_26EED7B00()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26EF3B2CC();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26EED7C08;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v7, 0x726F745364616F6CLL, 0xEC00000029287365, sub_26EEF1824, v4, v8);
}

uint64_t sub_26EED7C08()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_26EED7D90;
  }

  else
  {
    v7 = v2[7];
    v8 = v2[8];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_26EED7D2C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EED7D2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EED7D90()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_26EED7E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3889C();
}

uint64_t sub_26EED7F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_26EF3B2DC();
  v4[7] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_26EED7FFC, v6, v5);
}

uint64_t sub_26EED7FFC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v11 = *(v0 + 16);
  v4 = sub_26EF3B2CC();
  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v11;
  *(v5 + 40) = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_26EED8120;
  v8 = MEMORY[0x277D85700];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v4, v8, 0xD000000000000046, 0x800000026EF46890, sub_26EEF182C, v5, v9);
}

uint64_t sub_26EED8120()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EED82A8;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EED8244;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EED8244()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EED82A8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_26EED8320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v17 - v11;
  swift_getKeyPath();
  v17[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v13 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v8 + 16))(v12, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);

  sub_26EF38ABC();
}

uint64_t VoiceBankingSession.createVoice(named:localeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = sub_26EF3B2DC();
  v6[9] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x2822009F8](sub_26EED85B8, v8, v7);
}

uint64_t sub_26EED85B8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v13 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = sub_26EF3B2CC();
  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v13;
  *(v6 + 48) = v3;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_26EF37EDC();
  *v8 = v0;
  v8[1] = sub_26EED86F0;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v10, v5, v11, 0xD00000000000001CLL, 0x800000026EF468E0, sub_26EEF1838, v6, v9);
}

uint64_t sub_26EED86F0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_26EED8878;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_26EED8814;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EED8814()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EED8878()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_26EED88F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a5;
  v18[2] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9420, &qword_26EF42DB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - v12;
  swift_getKeyPath();
  v18[3] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v14 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v9 + 16))(v13, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);

  sub_26EF38ADC();
}

uint64_t sub_26EED8AE4(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_26EF38A4C();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF37EDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9428, &unk_26EF42DC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v26 - v20;
  sub_26EE13B88(v27, &v26 - v20, &qword_2806C9428, &unk_26EF42DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v26;
    (*(v26 + 32))(v6, v21, v2);
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v23 = swift_allocError();
    (*(v22 + 16))(v24, v6, v2);
    v29 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9420, &qword_26EF42DB8);
    sub_26EF3B2AC();
    return (*(v22 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v16, v21, v7);
    (*(v8 + 16))(v13, v16, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9420, &qword_26EF42DB8);
    sub_26EF3B2BC();
    return (*(v8 + 8))(v16, v7);
  }
}

uint64_t VoiceBankingSession.loadSamplesFromTrainingScripts(from:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_26EF37EDC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_26EF3B2DC();
  v2[12] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v2[13] = v8;
  v2[14] = v7;

  return MEMORY[0x2822009F8](sub_26EED8F40, v8, v7);
}

uint64_t sub_26EED8F40()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[12];
    v7 = v0[7];

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v8 = v0[10];
    v9 = v0[7];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[10];
    v13 = v0[6];
    v14 = v0[5];
    (*(v0[9] + 32))(v12, v0[7], v0[8]);
    v15 = sub_26EF3B2CC();
    v0[15] = v15;
    v16 = swift_task_alloc();
    v0[16] = v16;
    v16[2] = v13;
    v16[3] = v12;
    v16[4] = v14;
    v17 = *(MEMORY[0x277D85A40] + 4);
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_26EED9148;
    v19 = MEMORY[0x277D85700];
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v18, v15, v19, 0xD000000000000025, 0x800000026EF46900, sub_26EEF1850, v16, v20);
  }
}

uint64_t sub_26EED9148()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_26EEF3250;
  }

  else
  {
    v7 = v2[15];
    v8 = v2[16];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_26EEF3194;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EED926C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3895C();
}

uint64_t VoiceBankingSession.samplesExists()()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_26EF37EDC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = sub_26EF3B2DC();
  v1[11] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[12] = v7;
  v1[13] = v6;

  return MEMORY[0x2822009F8](sub_26EED9508, v7, v6);
}

uint64_t sub_26EED9508()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[11];
    v7 = v0[6];

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v8 = v0[9];
    v9 = v0[6];

    v10 = v0[1];

    return v10(0);
  }

  else
  {
    v12 = v0[9];
    v13 = v0[5];
    (*(v0[8] + 32))(v12, v0[6], v0[7]);
    v14 = sub_26EF3B2CC();
    v0[14] = v14;
    v15 = swift_task_alloc();
    v0[15] = v15;
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_26EED9718;
    v18 = MEMORY[0x277D85700];
    v19 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 18, v14, v18, 0x4573656C706D6173, 0xEF29287374736978, sub_26EEF185C, v15, v19);
  }
}

uint64_t sub_26EED9718()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_26EED98E4;
  }

  else
  {
    v7 = v2[14];
    v8 = v2[15];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_26EED983C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EED983C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 144);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_26EED98E4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];
  v9 = v0[17];

  return v8(0);
}

uint64_t sub_26EED99A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9418, &unk_26EF42DA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF388DC();
}

uint64_t sub_26EED9AFC(uint64_t a1)
{
  v2 = sub_26EF38A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C58, &unk_26EF41A20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16[-v11];
  sub_26EE13B88(a1, &v16[-v11], &qword_2806C8C58, &unk_26EF41A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v13 = swift_allocError();
    (*(v3 + 16))(v14, v7, v2);
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9418, &unk_26EF42DA8);
    sub_26EF3B2AC();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    v16[7] = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9418, &unk_26EF42DA8);
    return sub_26EF3B2BC();
  }
}

uint64_t VoiceBankingSession.fetchVoices()()
{
  v1[3] = v0;
  v1[4] = sub_26EF3B2DC();
  v1[5] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_26EED9DD4, v3, v2);
}

uint64_t sub_26EED9DD4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_26EF3B2CC();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D20, &qword_26EF412D0);
  *v6 = v0;
  v6[1] = sub_26EED9EF4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v3, v8, 0x696F566863746566, 0xED00002928736563, sub_26EEF1864, v4, v7);
}

uint64_t sub_26EED9EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEDA080;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEDA018;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDA018()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26EEDA080()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_26EEDA0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9408, &qword_26EF42D98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38B0C();
}

uint64_t sub_26EEDA2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9370, &qword_26EF42CD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3892C();
}

uint64_t sub_26EEDA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v9 + 16))(v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  sub_26EF3894C();
}

uint64_t VoiceBankingSession.installAsset(localeID:name:type:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = sub_26EF3B2DC();
  v7[10] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x2822009F8](sub_26EEDA650, v9, v8);
}

uint64_t sub_26EEDA650()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 48);
  v5 = sub_26EF3B2CC();
  *(v0 + 104) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v12;
  *(v6 + 48) = v3;
  *(v6 + 56) = v13;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_26EEDA788;
  v9 = MEMORY[0x277D85700];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v5, v9, 0xD000000000000031, 0x800000026EF46930, sub_26EEF186C, v6, v10);
}

uint64_t sub_26EEDA788()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_26EEDA910;
  }

  else
  {
    v7 = v2[13];
    v8 = v2[14];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_26EEDA8AC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDA8AC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EEDA910()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_26EEDA988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a1;
  v28 = a8;
  v30 = a7;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v29 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26 - v17;
  v31 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v19 = *(v12 + 16);
  v19(&v26 - v17, a1, v11);
  v20 = *(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a8;
  v22 = *(v12 + 32);
  v22(v21 + ((v20 + 32) & ~v20), v18, v11);
  v23 = v29;
  v19(v29, v27, v11);
  v24 = swift_allocObject();
  v22(v24 + ((v20 + 16) & ~v20), v23, v11);

  sub_26EF388CC();
}

uint64_t sub_26EEDABB4(uint64_t a1)
{
  v2 = sub_26EF38A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v16 - v11;
  sub_26EE13B88(a1, v16 - v11, &unk_2806C9E70, &unk_26EF42D40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_26EE14578(v12, &unk_2806C9E70, &unk_26EF42D40);
  }

  (*(v3 + 32))(v7, v12, v2);
  sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
  v13 = swift_allocError();
  (*(v3 + 16))(v14, v7, v2);
  v16[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  sub_26EF3B2AC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t VoiceBankingSession.fetchTrainingScriptItems(localeID:scriptType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = sub_26EF3B2DC();
  v4[8] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26EEDAE80, v6, v5);
}

uint64_t sub_26EEDAE80()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v11 = *(v0 + 32);
  v4 = sub_26EF3B2CC();
  *(v0 + 88) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v11;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92D8, &qword_26EF428F8);
  *v7 = v0;
  v7[1] = sub_26EEDAFB4;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v4, v9, 0xD00000000000002ELL, 0x800000026EF46970, sub_26EEF1870, v5, v8);
}

uint64_t sub_26EEDAFB4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_26EEDB140;
  }

  else
  {
    v7 = v2[11];
    v8 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_26EEDB0D8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDB0D8()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26EEDB140()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_26EEDB1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93F8, &qword_26EF42D88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3893C();
}

uint64_t VoiceBankingSession.discardTrainingTasks()()
{
  v1[2] = v0;
  v1[3] = sub_26EF3B2DC();
  v1[4] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26EEDB3C8, v3, v2);
}