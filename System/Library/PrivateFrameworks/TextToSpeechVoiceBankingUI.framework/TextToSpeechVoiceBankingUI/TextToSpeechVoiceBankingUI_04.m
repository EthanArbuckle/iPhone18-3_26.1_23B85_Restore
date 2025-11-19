uint64_t sub_26EE732EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_26EE733B4()
{
  result = qword_2806C7E00;
  if (!qword_2806C7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7E00);
  }

  return result;
}

uint64_t sub_26EE73408()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 4) = v2;
  return result;
}

uint64_t sub_26EE73470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE7354C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26EE735B0()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE735E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EE15538;

  return sub_26EE6BF50(a1, v1);
}

uint64_t sub_26EE73684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EE05D7C;

  return sub_26EE6BF50(a1, v1);
}

uint64_t sub_26EE73720(uint64_t a1)
{
  v2 = sub_26EF383FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8]);
  result = MEMORY[0x274383430](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_26EE71D00(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_26EE738BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE73994()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE05D7C;

  return sub_26EE6E9C0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26EE73AB8(int a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x168))(&v5);
}

uint64_t sub_26EE73B34()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE6F9BC(v4, v5, v6, v2, v3);
}

uint64_t sub_26EE73BCC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE70C40(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EE73CAC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE707D4(v4, v5, v6, v2, v3);
}

uint64_t sub_26EE73D44(void *a1)
{
  a1[1] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable);
  a1[2] = sub_26EE73470(&qword_2806C7E78, type metadata accessor for CoreSynthesisVoicePickable);
  result = sub_26EE73470(&qword_2806C7E80, type metadata accessor for CoreSynthesisVoicePickable);
  a1[3] = result;
  return result;
}

unint64_t sub_26EE73DF4()
{
  result = qword_2806C7E88;
  if (!qword_2806C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7E88);
  }

  return result;
}

uint64_t sub_26EE73E50()
{
  result = sub_26EF383FC();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_26EF37FEC();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_26EF3804C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26EE74350()
{
  result = sub_26EF383AC();
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

uint64_t getEnumTagSinglePayload for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26EE74938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE749A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE74A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_26EE13B88(v2, &v19 - v13, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26EF3988C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t type metadata accessor for RenameVoiceView()
{
  result = qword_2806CC080;
  if (!qword_2806CC080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE74CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RenameVoiceView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F00, &qword_26EF3F908);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24[-v11];
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F08, &qword_26EF3F910);
  sub_26EE75D80();
  sub_26EF3A50C();
  sub_26EE7607C(v2, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_26EE760E4(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v15 = &v12[*(v8 + 36)];
  v16 = v15 + *(sub_26EF3990C() + 20);
  sub_26EF3B2EC();
  *v15 = &unk_26EF3F958;
  v15[1] = v14;
  v17 = sub_26EE17094() & 1;
  v18._countAndFlagsBits = 0x454D414E5F4256;
  v18._object = 0xE700000000000000;
  v26 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v18, v17, 0);
  sub_26EE76214();
  sub_26EE12538();
  sub_26EF3A75C();

  sub_26EE762FC(v12);
  sub_26EE7607C(v2, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = swift_allocObject();
  sub_26EE760E4(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v13);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F78, &qword_26EF3F968) + 36));
  *v20 = sub_26EE76364;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  sub_26EE7607C(v2, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v21 = swift_allocObject();
  sub_26EE760E4(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F80, &qword_26EF3F970);
  v23 = (a1 + *(result + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_26EE76410;
  v23[3] = v21;
  return result;
}

uint64_t sub_26EE74FB4(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_26EF3B2DC();
  *(v1 + 64) = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE7504C, v3, v2);
}

uint64_t sub_26EE7504C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = type metadata accessor for RenameVoiceView();
  v4 = (v2 + *(v3 + 36));
  v6 = *v4;
  v5 = v4[1];
  v7 = (v2 + *(v3 + 28));
  v8 = *v7;
  v9 = *(v7 + 2);
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB0C();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26EE75110()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EE752F8();
}

uint64_t sub_26EE751BC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE6002C, v5, v4);
}

uint64_t sub_26EE752F8()
{
  v1[20] = v0;
  v2 = sub_26EF38A2C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_26EF3883C();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = sub_26EF3988C();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v11 = sub_26EF39DDC();
  v1[30] = v11;
  v12 = *(v11 - 8);
  v1[31] = v12;
  v13 = *(v12 + 64) + 15;
  v1[32] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[33] = sub_26EF3B2CC();
  v15 = sub_26EF3B29C();
  v1[34] = v15;
  v1[35] = v14;

  return MEMORY[0x2822009F8](sub_26EE75500, v15, v14);
}

uint64_t sub_26EE75500()
{
  v1 = v0[20];
  v2 = type metadata accessor for RenameVoiceView();
  v0[36] = v2;
  v3 = (v1 + v2[7]);
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v0[2] = *v3;
  v0[3] = v4;
  v0[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v7 = (v1 + v2[9]);
  if (v0[11] == *v7 && v0[12] == v7[1])
  {
    v18 = v0[33];
    v19 = v0[12];
  }

  else
  {
    v9 = v0[12];
    v10 = sub_26EF3B82C();

    if ((v10 & 1) == 0)
    {
      v0[5] = v5;
      v0[6] = v4;
      v0[7] = v6;
      sub_26EF3AAFC();
      v12 = v0[13];
      v11 = v0[14];

      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v0[20];
        v15 = v14 + v2[5];
        v16 = *v15;
        if (*(v15 + 8) == 1)
        {
          v17 = v16;
        }

        else
        {
          v36 = v0[32];
          v37 = v0[31];
          v38 = v0[30];

          sub_26EF3B46C();
          v31 = sub_26EF3A36C();
          sub_26EF3880C();

          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE05C9C(v16, 0);
          (*(v37 + 8))(v36, v38);
          v17 = v0[19];
          v14 = v0[20];
        }

        v0[37] = v17;
        v0[8] = v5;
        v0[9] = v4;
        v0[10] = v6;
        sub_26EF3AAFC();
        v32 = v0[15];
        v33 = v0[16];
        v0[38] = v33;
        v34 = v2[10];
        v35 = swift_task_alloc();
        v0[39] = v35;
        *v35 = v0;
        v35[1] = sub_26EE7582C;

        return VoiceBankingSession.updateVoiceName(voiceName:voiceID:)(v32, v33, v14 + v34);
      }
    }

    v20 = v0[33];
  }

  v22 = v0[28];
  v21 = v0[29];
  v23 = v0[27];
  v24 = v0[20];
  sub_26EE74A6C(v21);
  sub_26EF3987C();
  (*(v22 + 8))(v21, v23);
  v25 = v0[32];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[23];

  v29 = v0[1];

  return v29();
}

uint64_t sub_26EE7582C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v10 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_26EE75A14;
  }

  else
  {
    v8 = v2[37];
    v7 = v2[38];

    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_26EE7594C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE7594C()
{
  v1 = v0[33];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[20];

  sub_26EE74A6C(v2);
  sub_26EF3987C();
  (*(v3 + 8))(v2, v4);
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26EE75A14()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 264);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  v8 = sub_26EE27DAC();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v1;
  v10 = sub_26EF3881C();
  v11 = sub_26EF3B47C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 320);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    (*(v14 + 104))(v13, *MEMORY[0x277D704D8], v15);
    sub_26EF38A4C();
    sub_26EE786C0(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v14 + 8))(v13, v15);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_26EE01000, v10, v11, "%@", v16, 0xCu);
    sub_26EE14578(v17, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v17, -1, -1);
    MEMORY[0x2743842A0](v16, -1, -1);
  }

  v19 = *(v0 + 320);
  v20 = *(v0 + 288);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 192);
  v24 = *(v0 + 160);

  (*(v22 + 8))(v21, v23);
  v25 = v24 + *(v20 + 24);
  v26 = *(v25 + 8);
  *(v0 + 136) = *v25;
  *(v0 + 144) = v26;
  *(v0 + 328) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();

  v27 = *(v0 + 256);
  v28 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 184);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_26EE75D08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F20, &qword_26EF3F918);
  sub_26EE75E10();
  return sub_26EF3AD6C();
}

unint64_t sub_26EE75D80()
{
  result = qword_2806C7F10;
  if (!qword_2806C7F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F08, &qword_26EF3F910);
    sub_26EE75E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F10);
  }

  return result;
}

unint64_t sub_26EE75E10()
{
  result = qword_2806C7F18;
  if (!qword_2806C7F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F20, &qword_26EF3F918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F28, &qword_26EF3F920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F30, &qword_26EF3F928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F38, &qword_26EF3F930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6788, &unk_26EF3D080);
    sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938);
    sub_26EE12538();
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7F50, &qword_2806C7F58, &qword_26EF3F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F18);
  }

  return result;
}

uint64_t sub_26EE7607C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameVoiceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE760E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameVoiceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE76148()
{
  v2 = *(type metadata accessor for RenameVoiceView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE74FB4(v0 + v3);
}

unint64_t sub_26EE76214()
{
  result = qword_2806C7F60;
  if (!qword_2806C7F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F00, &qword_26EF3F908);
    sub_26EE154C8(&qword_2806C7F68, &qword_2806C7F70, &qword_26EF3F960);
    sub_26EE786C0(&qword_2806C6708, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F60);
  }

  return result;
}

uint64_t sub_26EE762FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F00, &qword_26EF3F908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE76364()
{
  v1 = type metadata accessor for RenameVoiceView();
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  return sub_26EF3965C();
}

uint64_t sub_26EE76430@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = sub_26EF399DC();
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v90 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenameVoiceView();
  v7 = (v6 - 8);
  v89 = *(v6 - 8);
  v88 = *(v89 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v87 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26EF397BC();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v11);
  v82 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F40, &unk_26EF3F938);
  v76 = *(v74 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v74, v14);
  v72 = &v68 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F38, &qword_26EF3F930);
  v79 = *(v78 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v78, v17);
  v73 = &v68 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F30, &qword_26EF3F928);
  v81 = *(v80 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x28223BE20](v80, v20);
  v75 = &v68 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F28, &qword_26EF3F920);
  v84 = *(v83 - 8);
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v83, v23);
  v77 = &v68 - v24;
  v25 = sub_26EE17094() & 1;
  v26._countAndFlagsBits = 0x454D414E5F4256;
  v26._object = 0xE700000000000000;
  v27 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v26, v25, 0);
  v28 = (v1 + v7[9]);
  v29 = *v28;
  countAndFlagsBits = v28[1]._countAndFlagsBits;
  v104 = v29;
  v105 = countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB1C();
  v95 = v27;
  v71 = sub_26EE12538();
  sub_26EF3AEEC();
  v31 = sub_26EE17094();
  v32._object = 0x800000026EF45C20;
  v33 = v31 & 1;
  v32._countAndFlagsBits = 0xD00000000000001BLL;
  v104 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v32, v33, 0);
  v34 = v7[8];
  v70 = v1;
  v35 = (v1 + v34);
  v36 = *v35;
  v37 = *(v35 + 1);
  v102 = v36;
  v103 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  v94 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v38 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938);
  v67 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  v39 = v71;
  v40 = v74;
  v41 = v73;
  v42 = v72;
  sub_26EF3A89C();

  (*(v76 + 8))(v42, v40);
  v43 = v70;
  v44 = v70 + v7[10];
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v44) = *(v44 + 16);
  LOBYTE(v95._countAndFlagsBits) = v45;
  v95._object = v46;
  LOBYTE(v96) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  sub_26EF3966C();
  v95._countAndFlagsBits = v40;
  v95._object = MEMORY[0x277D837D0];
  v96 = v69;
  v97 = MEMORY[0x277CE0BD8];
  v98 = v38;
  v99 = v39;
  v100 = v67;
  v101 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v75;
  v49 = v78;
  sub_26EF3A8CC();

  (*(v79 + 8))(v41, v49);
  v50 = v82;
  sub_26EF397AC();
  v95._countAndFlagsBits = v49;
  v95._object = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v77;
  v53 = v80;
  sub_26EF3A6AC();
  (*(v85 + 8))(v50, v86);
  v54 = v53;
  (*(v81 + 8))(v48, v53);
  v55 = v87;
  sub_26EE7607C(v43, v87);
  v56 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v57 = swift_allocObject();
  sub_26EE760E4(v55, v57 + v56);
  v58 = v90;
  sub_26EF399CC();
  v95._countAndFlagsBits = v54;
  v95._object = v51;
  swift_getOpaqueTypeConformance2();
  v59 = v91;
  v60 = v83;
  sub_26EF3A91C();

  (*(v92 + 8))(v58, v93);
  (*(v84 + 8))(v52, v60);
  v61 = sub_26EF3AE4C();
  v63 = v62;
  v64 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F20, &qword_26EF3F918) + 36);
  sub_26EE772C8(v64);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F58, &qword_26EF3F948);
  v66 = (v64 + *(result + 36));
  *v66 = v61;
  v66[1] = v63;
  return result;
}

uint64_t sub_26EE76E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_26EE17094() & 1;
  v6._countAndFlagsBits = 0x4B4F5F4256;
  v6._object = 0xE500000000000000;
  v9 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v5, 0);
  v7 = sub_26EF3961C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_26EE12538();
  return sub_26EF3AB5C();
}

uint64_t sub_26EE76F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RenameVoiceView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  v14 = sub_26EF3B30C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_26EE7607C(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v15 = sub_26EF3B2CC();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_26EE760E4(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_26EE2C388(0, 0, v13, a3, v17);
}

uint64_t sub_26EE770E0()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE7718C;

  return sub_26EE752F8();
}

uint64_t sub_26EE7718C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE789C4, v5, v4);
}

uint64_t sub_26EE772C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F98, &qword_26EF3F980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v19 - v8;
  v10 = v1 + *(type metadata accessor for RenameVoiceView() + 28);
  v11 = *v10;
  v12 = *(v10 + 16);
  v20 = v11;
  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v14 = v19[1];
  v13 = v19[2];

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  v16 = 1;
  if (v15)
  {
    *v9 = sub_26EF39E4C();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FA0, &unk_26EF3F988);
    sub_26EE77460(v2, &v9[*(v17 + 44)]);
    sub_26EE14D98(v9, a1, &qword_2806C7F98, &qword_26EF3F980);
    v16 = 0;
  }

  return (*(v5 + 56))(a1, v16, 1, v4);
}

uint64_t sub_26EE77460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RenameVoiceView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FC8, &qword_26EF3FA18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FD0, &qword_26EF3FA20);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v34 - v20;
  sub_26EE7607C(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  sub_26EE760E4(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_26EF3AB4C();
  v24 = sub_26EF3A1BC();
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FD8, &qword_26EF3FA28) + 36)] = v24;
  LOBYTE(v24) = sub_26EF3A40C();
  sub_26EF3962C();
  v25 = &v12[*(v8 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_26EE17094() & 1;
  v31._countAndFlagsBits = 0x5241454C435F4256;
  v31._object = 0xE800000000000000;
  v34 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v31, v30, 0);
  sub_26EE78484();
  sub_26EE12538();
  sub_26EF3A78C();

  sub_26EE14578(v12, &qword_2806C7FC8, &qword_26EF3FA18);
  sub_26EE13B88(v21, v18, &qword_2806C7FD0, &qword_26EF3FA20);
  *a2 = 0;
  *(a2 + 8) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8010, &unk_26EF3FA40);
  sub_26EE13B88(v18, a2 + *(v32 + 48), &qword_2806C7FD0, &qword_26EF3FA20);
  sub_26EE14578(v21, &qword_2806C7FD0, &qword_26EF3FA20);
  return sub_26EE14578(v18, &qword_2806C7FD0, &qword_26EF3FA20);
}

uint64_t sub_26EE777A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3AA8C();
  *a1 = result;
  return result;
}

uint64_t sub_26EE777EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26EE7784C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26EE14D98(a1, a5, &qword_2806C7568, &unk_26EF3E3D0);
  v9 = type metadata accessor for RenameVoiceView();
  v10 = a5 + v9[5];
  type metadata accessor for VoiceBankingSession();
  sub_26EE786C0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *v10 = sub_26EF3973C();
  *(v10 + 8) = v11 & 1;
  v12 = a5 + v9[6];
  sub_26EF3AAEC();
  *v12 = v21;
  *(v12 + 8) = *(&v21 + 1);
  v13 = a5 + v9[7];
  sub_26EF3AAEC();
  *v13 = v21;
  *(v13 + 16) = v22;
  v14 = a5 + v9[8];
  *v14 = sub_26EF3967C() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = (a5 + v9[9]);
  *v17 = a2;
  v17[1] = a3;
  v18 = v9[10];
  v19 = sub_26EF37EDC();
  return (*(*(v19 - 8) + 32))(a5 + v18, a4, v19);
}

uint64_t sub_26EE779F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26EE17094();
  v5._object = 0x800000026EF45C60;
  v6 = v4 & 1;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v5, v6, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26EF3C6B0;
  v8 = (v3 + *(type metadata accessor for RenameVoiceView() + 28));
  v15 = *v8;
  v16 = *(v8 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_26EE1EFBC();
  *(v7 + 32) = v13;
  *(v7 + 40) = v14;
  sub_26EF3B10C();

  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_26EE77C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26EF37EDC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26EE77D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_26EF37EDC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26EE77E80()
{
  sub_26EE77FC0(319, &qword_2806C7570, MEMORY[0x277CDD848]);
  if (v0 <= 0x3F)
  {
    sub_26EE77FC0(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession);
    if (v1 <= 0x3F)
    {
      sub_26EE78014(319, &qword_2806C7350);
      if (v2 <= 0x3F)
      {
        sub_26EE78014(319, &qword_2806C7FA8);
        if (v3 <= 0x3F)
        {
          sub_26EE78060();
          if (v4 <= 0x3F)
          {
            sub_26EF37EDC();
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

void sub_26EE77FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3972C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26EE78014(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26EF3AB2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26EE78060()
{
  if (!qword_2806C7FB0)
  {
    v0 = sub_26EF3968C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7FB0);
    }
  }
}

unint64_t sub_26EE780BC()
{
  result = qword_2806C7FB8;
  if (!qword_2806C7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F80, &qword_26EF3F970);
    sub_26EE78148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FB8);
  }

  return result;
}

unint64_t sub_26EE78148()
{
  result = qword_2806C7FC0;
  if (!qword_2806C7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F78, &qword_26EF3F968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F00, &qword_26EF3F908);
    sub_26EE76214();
    sub_26EE12538();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FC0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for RenameVoiceView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_26EE05C9C(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = *(v5 + v1[6] + 8);

  v9 = v5 + v1[7];
  v10 = *(v9 + 1);

  v11 = *(v9 + 2);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = v1[10];
  v15 = sub_26EF37EDC();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE783E0()
{
  v1 = type metadata accessor for RenameVoiceView();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  return sub_26EF3AB0C();
}

unint64_t sub_26EE78484()
{
  result = qword_2806C7FE0;
  if (!qword_2806C7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7FC8, &qword_26EF3FA18);
    sub_26EE78510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FE0);
  }

  return result;
}

unint64_t sub_26EE78510()
{
  result = qword_2806C7FE8;
  if (!qword_2806C7FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7FD8, &qword_26EF3FA28);
    sub_26EE154C8(&qword_2806C7FF0, &qword_2806C7FF8, &qword_26EF3FA30);
    sub_26EE154C8(&qword_2806C8000, &qword_2806C8008, &qword_26EF3FA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FE8);
  }

  return result;
}

uint64_t sub_26EE785F8()
{
  v1 = *(type metadata accessor for RenameVoiceView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26EE15538;

  return sub_26EE770E0();
}

uint64_t sub_26EE786C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for RenameVoiceView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26EF3988C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  sub_26EE05C9C(*(v6 + v1[5]), *(v6 + v1[5] + 8));
  v9 = *(v6 + v1[6] + 8);

  v10 = v6 + v1[7];
  v11 = *(v10 + 1);

  v12 = *(v10 + 2);

  v13 = *(v6 + v1[8] + 8);

  v14 = *(v6 + v1[9] + 8);

  v15 = v1[10];
  v16 = sub_26EF37EDC();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE788C4()
{
  v1 = *(type metadata accessor for RenameVoiceView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26EE15538;

  return sub_26EE75110();
}

uint64_t type metadata accessor for PrepareForCloudView()
{
  result = qword_2806CC120;
  if (!qword_2806CC120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE78A14()
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
  sub_26EE7A9C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_26EE78BFC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &countAndFlagsBits - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8020, &qword_26EF3FAC0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &countAndFlagsBits - v11;
  v13 = sub_26EE17094();
  v14._object = 0x800000026EF45C80;
  v15 = v13 & 1;
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0)._countAndFlagsBits;
  v16 = sub_26EE17094();
  v17._countAndFlagsBits = 0xD000000000000021;
  v17._object = 0x800000026EF45CA0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16 & 1, 0);
  v18 = type metadata accessor for PrepareForCloudView();
  sub_26EE13B88(v1 + *(v18 + 24), v6, &qword_2806C8018, &qword_26EF41830);
  v31 = v1;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8028, &qword_26EF3FAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  sub_26EE154C8(&qword_2806C8038, &qword_2806C8028, &qword_26EF3FAC8);
  sub_26EE79320();
  sub_26EF386BC();
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8050, &qword_26EF3FAD8);
  sub_26EE154C8(&qword_2806C8058, &qword_2806C8020, &qword_26EF3FAC0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  v21 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  v32 = v20;
  v33 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v19;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  sub_26EF3A8EC();
  return (*(v27 + 8))(v12, v23);
}

uint64_t sub_26EE78FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8060, &unk_26EF3FAF0);
  sub_26EE154C8(&qword_2806C8068, &qword_2806C8060, &unk_26EF3FAF0);

  return sub_26EF387CC();
}

uint64_t sub_26EE79088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrepareForCloudView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = sub_26EE17094();
  v9._object = 0xEB0000000045554ELL;
  v10 = v8 & 1;
  v9._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v9, v10, 0)._countAndFlagsBits;
  sub_26EE7A4C8(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_26EE7A530(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
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

uint64_t sub_26EE79224(uint64_t a1)
{
  v2 = sub_26EF3988C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for PrepareForCloudView() + 20);
  v9 = *(v8 + 8);
  (*v8)();
  sub_26EE7A5AC(v7);
  sub_26EF3987C();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_26EE79320()
{
  result = qword_2806C8040;
  if (!qword_2806C8040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8030, &qword_26EF3FAD0);
    sub_26EE793AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8040);
  }

  return result;
}

unint64_t sub_26EE793AC()
{
  result = qword_2806C8048;
  if (!qword_2806C8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8048);
  }

  return result;
}

uint64_t sub_26EE79400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_26EF3A13C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v21 - v16;
  sub_26EF3A0DC();
  v21[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  sub_26EF397CC();
  v18 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  MEMORY[0x274382230](v11, v6, v18);
  (*(v7 + 8))(v11, v6);
  v21[6] = v6;
  v21[7] = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v17, v12, OpaqueTypeConformance2);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_26EE796C8@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = sub_26EF387BC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v5 = MEMORY[0x28223BE20](v1, v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v34 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v18._object = 0x800000026EF45CD0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v18, 1, 0);
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v19._object = 0x800000026EF45CF0;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v19, 1, 0);
  v20 = objc_opt_self();
  v21 = [v20 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v22 = sub_26EE17094();
  v23._object = 0x800000026EF45D10;
  v24 = v22 & 1;
  v23._countAndFlagsBits = 0xD00000000000001ALL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v23, v24, 0);
  v25 = sub_26EE17094();
  v26._countAndFlagsBits = 0xD000000000000023;
  v26._object = 0x800000026EF45D30;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v26, v25 & 1, 0);
  v27 = [v20 systemBlueColor];
  sub_26EF3AA5C();
  sub_26EF387AC();
  v28 = v2[2];
  v28(v10, v17, v1);
  v29 = v34;
  v28(v34, v14, v1);
  v30 = v35;
  v28(v35, v10, v1);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8078, &unk_26EF3FB70);
  v28(&v30[*(v31 + 48)], v29, v1);
  v32 = v2[1];
  v32(v14, v1);
  v32(v17, v1);
  v32(v29, v1);
  return (v32)(v10, v1);
}

uint64_t sub_26EE79A54(uint64_t a1)
{
  v2 = type metadata accessor for PrepareForCloudView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_26EE17094() & 1;
  v12._countAndFlagsBits = 0x45434E41435F4256;
  v12._object = 0xE90000000000004CLL;
  v17 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v12, v11, 0);
  sub_26EF3960C();
  v13 = sub_26EF3961C();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_26EE7A4C8(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_26EE7A530(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_26EE12538();
  return sub_26EF3AB5C();
}

uint64_t sub_26EE79C44(uint64_t a1)
{
  v22 = sub_26EF39DDC();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v21 - v10);
  v12 = sub_26EF3988C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE13B88(a1, v11, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v18 = *v11;
    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v22);
  }

  sub_26EF3987C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_26EE79EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for PrepareForCloudView();
  v7 = (a3 + *(v6 + 20));
  *v7 = a1;
  v7[1] = a2;
  v8 = a3 + *(v6 + 24);
  return sub_26EE78A14();
}

uint64_t sub_26EE79F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26EE7A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26EE7A204()
{
  sub_26EE7A300(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE3FF38();
    if (v1 <= 0x3F)
    {
      sub_26EE7A300(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE7A300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EE7A364()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8020, &qword_26EF3FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8050, &qword_26EF3FAD8);
  sub_26EE154C8(&qword_2806C8058, &qword_2806C8020, &qword_26EF3FAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EE7A4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrepareForCloudView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7A530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrepareForCloudView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7A5AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_26EE13B88(v2, &v19 - v13, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26EF3988C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for PrepareForCloudView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = v5 + *(v1 + 24);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v13 = sub_26EF3872C();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE7A950(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PrepareForCloudView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26EE7A9C4()
{
  result = qword_2806C8088;
  if (!qword_2806C8088)
  {
    sub_26EF3872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8088);
  }

  return result;
}

uint64_t VBAuthenticationChallengeModel.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t VBAuthenticationChallengeModel.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_26EE7AA60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(sub_26EF3914C()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26EF3883C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = sub_26EF3B2DC();
  v3[9] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v3[10] = v8;
  v3[11] = v7;

  return MEMORY[0x2822009F8](sub_26EE7ABC8, v8, v7);
}

uint64_t sub_26EE7ABC8()
{
  v1 = v0[4];
  if (*(v1 + 24))
  {
    v2 = v0[9];

    v3 = v0[7];

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    *(v1 + 24) = 1;
    v9 = sub_26EE27DAC();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_26EF3881C();
    v11 = sub_26EF3B43C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26EE01000, v10, v11, "Issuing authentication challenge", v12, 2u);
      MEMORY[0x2743842A0](v12, -1, -1);
    }

    v13 = v0[7];
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[6];
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];

    (*(v16 + 8))(v13, v15);
    v20 = sub_26EF3B2CC();
    v0[12] = v20;
    v21 = swift_task_alloc();
    v0[13] = v21;
    v21[2] = v17;
    v21[3] = v19;
    v21[4] = v18;
    v22 = *(MEMORY[0x277D859E0] + 4);
    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_26EE7AE00;
    v24 = MEMORY[0x277D85700];
    v25 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 15, v20, v24, 0xD000000000000030, 0x800000026EF45D60, sub_26EE7B144, v21, v25);
  }
}

uint64_t sub_26EE7AE00()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE7AF60, v6, v5);
}

uint64_t sub_26EE7AF60()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  v3 = *(v0 + 120);
  *(v2 + 24) = 0;
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5(v3);
}

void sub_26EE7AFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  v8 = sub_26EE7AA60();
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  sub_26EF3912C();
}

void sub_26EE7B144(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_26EE7AFD8(a1);
}

uint64_t sub_26EE7B150(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v49 = sub_26EF38A4C();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v49, v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - v10;
  v12 = sub_26EF3883C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v45 - v25;
  sub_26EE7B7C8(a1, &v45 - v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v49;
    (*(v3 + 32))(v11, v26, v49);
    v28 = sub_26EE27DAC();
    (*(v13 + 16))(v18, v28, v12);
    (*(v3 + 16))(v8, v11, v27);
    v29 = sub_26EF3881C();
    v30 = sub_26EF3B45C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = v11;
      v47 = v12;
      v32 = v31;
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136315138;
      v45 = sub_26EF389AC();
      v35 = v34;
      v36 = v8;
      v37 = *(v3 + 8);
      v37(v36, v49);
      v38 = sub_26EE40670(v45, v35, &v51);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_26EE01000, v29, v30, "Authentication challenge failed: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x2743842A0](v33, -1, -1);
      v11 = v46;
      MEMORY[0x2743842A0](v32, -1, -1);

      (*(v13 + 8))(v18, v47);
    }

    else
    {

      v44 = v8;
      v37 = *(v3 + 8);
      v37(v44, v49);
      (*(v13 + 8))(v18, v12);
    }

    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
    sub_26EF3B2BC();
    return (v37)(v11, v49);
  }

  else
  {
    v39 = sub_26EE27DAC();
    (*(v13 + 16))(v21, v39, v12);
    v40 = sub_26EF3881C();
    v41 = sub_26EF3B43C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26EE01000, v40, v41, "Authentication challenge succeeded", v42, 2u);
      MEMORY[0x2743842A0](v42, -1, -1);
    }

    (*(v13 + 8))(v21, v12);
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
    sub_26EF3B2BC();
    return sub_26EE7B838(v26);
  }
}

uint64_t VBAuthenticationChallengeModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_26EE7B6B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE7B74C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE7B150(a1, v4);
}

uint64_t sub_26EE7B7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE7B838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EE7B8A0()
{
  result = qword_2806C6C38;
  if (!qword_2806C6C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C6C38);
  }

  return result;
}

uint64_t sub_26EE7B8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_26EF3872C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v33[0] = v33 - v13;
  v33[2] = sub_26EE7BDC8(v12);
  v33[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v15 = *(v4 + 72);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26EF3C6B0;
  sub_26EF386CC();
  v38[0] = v17;
  sub_26EE82EA0(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  (*(v4 + 8))(v8, v3);
  v37 = v2;
  v36 = v2;
  v35 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A8, &unk_26EF3FC40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8030, &qword_26EF3FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80B0, &qword_26EF3FC50);
  sub_26EE154C8(&qword_2806C80B8, &qword_2806C80A8, &unk_26EF3FC40);
  sub_26EE7D75C(&qword_2806C8040, &qword_2806C8030, &qword_26EF3FAD0, sub_26EE793AC);
  sub_26EE7D75C(&qword_2806C80C0, &qword_2806C80B0, &qword_26EF3FC50, sub_26EE7D7E0);
  v18 = v34;
  sub_26EF386BC();
  v19 = swift_allocObject();
  v20 = *(v2 + 48);
  v19[3] = *(v2 + 32);
  v19[4] = v20;
  v21 = *(v2 + 80);
  v19[5] = *(v2 + 64);
  v19[6] = v21;
  v22 = *(v2 + 16);
  v19[1] = *v2;
  v19[2] = v22;
  v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80F8, &qword_26EF3FC80) + 36));
  v24 = v18;
  LODWORD(v18) = *(sub_26EF3990C() + 20);
  sub_26EE201F8(v2, v38);
  sub_26EF3B2EC();
  *v23 = &unk_26EF3FC78;
  v23[1] = v19;
  v25 = *(v2 + 56);
  v26 = swift_allocObject();
  v27 = *(v2 + 48);
  *(v26 + 3) = *(v2 + 32);
  *(v26 + 4) = v27;
  v28 = *(v2 + 80);
  *(v26 + 5) = *(v2 + 64);
  *(v26 + 6) = v28;
  v29 = *(v2 + 16);
  *(v26 + 1) = *v2;
  *(v26 + 2) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8100, &qword_26EF3FC88);
  *(v24 + *(v30 + 52)) = v25;
  v31 = (v24 + *(v30 + 56));
  *v31 = sub_26EE7EA90;
  v31[1] = v26;
  sub_26EE201F8(v2, v38);
}

uint64_t sub_26EE7C1F8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8110, &qword_26EF3FC98);
  v42 = *(v46 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v46, v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8258, &qword_26EF3FF38);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8260, &qword_26EF3FF40);
  v13 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v40 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8158, &qword_26EF3FDB8);
  v17 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45, v18);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8268, &qword_26EF3FF48);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8, v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v40 - v28;
  v48 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  v30 = sub_26EF3AAFC();
  if (v47 == 1)
  {
    *v20 = sub_26EF39F5C();
    *(v20 + 1) = 0;
    v20[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8108, &qword_26EF3FC90);
    sub_26EE80748(a1, &v20[*(v32 + 44)]);
    sub_26EE13B88(v20, v16, &qword_2806C8158, &qword_26EF3FDB8);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8150, &qword_2806C8158, &qword_26EF3FDB8);
    v33 = sub_26EE154C8(&qword_2806C8140, &qword_2806C8110, &qword_26EF3FC98);
    *&v48 = v46;
    *(&v48 + 1) = v33;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    sub_26EE14578(v20, &qword_2806C8158, &qword_26EF3FDB8);
  }

  else
  {
    v41 = v8;
    MEMORY[0x28223BE20](v30, v31);
    *(&v40 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8118, &qword_26EF3FCA0);
    sub_26EE80B64();
    sub_26EF387CC();
    v34 = sub_26EE154C8(&qword_2806C8140, &qword_2806C8110, &qword_26EF3FC98);
    v35 = v46;
    sub_26EF3A5EC();
    (*(v42 + 8))(v7, v35);
    v36 = v43;
    v37 = v41;
    (*(v43 + 16))(v16, v12, v41);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8150, &qword_2806C8158, &qword_26EF3FDB8);
    *&v48 = v35;
    *(&v48 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    (*(v36 + 8))(v12, v37);
  }

  sub_26EE13B88(v29, v26, &qword_2806C8268, &qword_26EF3FF48);
  sub_26EE13B88(v26, a2, &qword_2806C8268, &qword_26EF3FF48);
  v38 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8270, &unk_26EF3FF50) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_26EE14578(v29, &qword_2806C8268, &qword_26EF3FF48);
  return sub_26EE14578(v26, &qword_2806C8268, &qword_26EF3FF48);
}

uint64_t sub_26EE7C94C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22[-v5];
  if (*a1)
  {
    v7 = *a1;

    VoiceBankingNavigationModel.dismissSheet()();

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = v8;
      sub_26EF17564();

      v10 = sub_26EF3B30C();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      sub_26EF3B2DC();
      sub_26EE201F8(a1, v22);
      v11 = sub_26EF3B2CC();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      *(v12 + 16) = v11;
      *(v12 + 24) = v13;
      v14 = *(a1 + 48);
      *(v12 + 64) = *(a1 + 32);
      *(v12 + 80) = v14;
      v15 = *(a1 + 80);
      *(v12 + 96) = *(a1 + 64);
      *(v12 + 112) = v15;
      v16 = *(a1 + 16);
      *(v12 + 32) = *a1;
      *(v12 + 48) = v16;
      sub_26EE2C388(0, 0, v6, &unk_26EF3FF30, v12);
    }

    v21 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    v19 = &qword_2806C9BB0;
    v20 = type metadata accessor for VoiceBankingAudioServiceViewModel;
  }

  else
  {
    v18 = *(a1 + 8);
    type metadata accessor for VoiceBankingNavigationModel();
    v19 = &qword_2806C6C20;
    v20 = type metadata accessor for VoiceBankingNavigationModel;
  }

  sub_26EE82EA0(v19, v20);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE7CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE7CBF4, v6, v5);
}

uint64_t sub_26EE7CBF4()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE7CD18()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE6002C, v5, v4);
}

id sub_26EE7CE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v90 = sub_26EF39F4C();
  v89 = *(v90 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v90, v4);
  v86 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v94 = sub_26EF3A2EC();
  v6 = *(v94 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v94, v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80D8, &qword_26EF3FC60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v82 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81F0, &qword_26EF3FE90);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v82 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80D0, &qword_26EF3FC58);
  v22 = *(*(v84 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v84, v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v83 = &v82 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v85 = &v82 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v88 = &v82 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80B0, &qword_26EF3FC50);
  v91 = *(v35 - 8);
  v92 = v35;
  v36 = *(v91 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v87 = &v82 - v38;
  *v15 = sub_26EF3AE4C();
  v15[1] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81F8, &qword_26EF3FE98);
  sub_26EE7D990(a1, v15 + *(v40 + 44));
  v41 = sub_26EF3A3DC();
  sub_26EF3962C();
  v42 = v15 + *(v11 + 36);
  *v42 = v41;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_26EF3A2DC();
  v47 = sub_26EE7D8D8();
  sub_26EF3A7DC();
  (*(v6 + 8))(v10, v94);
  sub_26EE14578(v15, &qword_2806C80D8, &qword_26EF3FC60);
  v97 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  LODWORD(v15) = v95;
  v48 = sub_26EE17094();
  v49 = "play.circle.fill";
  if (v15)
  {
    v49 = "VB_PROCESSING_PROGRESS_TRAINING";
  }

  v50._object = (v49 | 0x8000000000000000);
  v51 = v48 & 1;
  v50._countAndFlagsBits = 0xD00000000000001FLL;
  v97 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v50, v51, 0);
  v95 = v11;
  v96 = v47;
  swift_getOpaqueTypeConformance2();
  sub_26EE12538();
  sub_26EF3A78C();

  (*(v17 + 8))(v21, v16);
  v97 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v95)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
  }

  else
  {
    v97 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
    sub_26EF3AAFC();
    result = AXFormatFloatWithPercentage();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v55 = result;
    v52 = sub_26EF3B0FC();
    v53 = v56;
  }

  v97._countAndFlagsBits = v52;
  v97._object = v53;
  v57 = v83;
  sub_26EF39A7C();

  sub_26EE14578(v26, &qword_2806C80D0, &qword_26EF3FC58);
  v58 = v86;
  sub_26EF39EFC();
  v59 = v85;
  sub_26EF39A8C();
  v61 = v89 + 8;
  v60 = *(v89 + 8);
  v62 = v90;
  v60(v58, v90);
  sub_26EE14578(v57, &qword_2806C80D0, &qword_26EF3FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
  v63 = *(v61 + 64);
  v64 = (*(v61 + 72) + 32) & ~*(v61 + 72);
  v65 = swift_allocObject();
  v94 = xmmword_26EF3D070;
  *(v65 + 16) = xmmword_26EF3D070;
  sub_26EF39F2C();
  sub_26EF39EDC();
  v97._countAndFlagsBits = v65;
  sub_26EE82EA0(&qword_2806C6AB8, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EF3B68C();
  v66 = v88;
  sub_26EF39A9C();
  v60(v58, v62);
  sub_26EE14578(v59, &qword_2806C80D0, &qword_26EF3FC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8200, &qword_26EF3FEA0);
  inited = swift_initStackObject();
  *(inited + 16) = v94;
  LOBYTE(v58) = sub_26EF3A3CC();
  *(inited + 32) = v58;
  v68 = sub_26EF3A3DC();
  *(inited + 33) = v68;
  v69 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v58)
  {
    v69 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v68)
  {
    v69 = sub_26EF3A3FC();
  }

  _UISolariumEnabled();
  sub_26EF3962C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v87;
  sub_26EE14D98(v66, v87, &qword_2806C80D0, &qword_26EF3FC58);
  v79 = v92;
  v80 = v78 + *(v92 + 36);
  *v80 = v69;
  *(v80 + 8) = v71;
  *(v80 + 16) = v73;
  *(v80 + 24) = v75;
  *(v80 + 32) = v77;
  *(v80 + 40) = 0;
  v81 = v93;
  sub_26EE14D98(v78, v93, &qword_2806C80B0, &qword_26EF3FC50);
  return (*(v91 + 56))(v81, 0, 1, v79);
}

uint64_t sub_26EE7D75C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE7D7E0()
{
  result = qword_2806C80C8;
  if (!qword_2806C80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D0, &qword_26EF3FC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D8, &qword_26EF3FC60);
    sub_26EE7D8D8();
    swift_getOpaqueTypeConformance2();
    sub_26EE82EA0(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C80C8);
  }

  return result;
}

unint64_t sub_26EE7D8D8()
{
  result = qword_2806C80E0;
  if (!qword_2806C80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C80D8, &qword_26EF3FC60);
    sub_26EE154C8(&qword_2806C80E8, &qword_2806C80F0, &qword_26EF3FC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C80E0);
  }

  return result;
}

uint64_t sub_26EE7D990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3AF6C();
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v102 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26EF3AF4C();
  v101 = *(v103 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v103, v9);
  v100 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8208, &qword_26EF3FEA8);
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = *(v96 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v93 = &v91 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8210, &qword_26EF3FEB0);
  v15 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v16);
  v94 = &v91 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8218, &qword_26EF3FEB8);
  v18 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99, v19);
  v98 = &v91 - v20;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8220, &qword_26EF3FEC0);
  v112 = *(v111 - 8);
  v21 = *(v112 + 64);
  MEMORY[0x28223BE20](v111 - 8, v22);
  v92 = &v91 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8228, &qword_26EF3FEC8);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v110 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v120 = &v91 - v30;
  v119 = sub_26EF3A9CC();
  v31 = _UISolariumEnabled();
  v32 = objc_opt_self();
  v33 = &selRef_systemBlueColor;
  if (!v31)
  {
    v33 = &selRef_systemGreenColor;
  }

  v34 = [v32 *v33];
  sub_26EF3AA5C();
  v118 = sub_26EF3AA2C();

  sub_26EF3979C();
  v35 = v190;
  v114 = v192;
  v115 = v191;
  v36 = v193;
  v113 = v194;
  v37 = v195;
  v38 = sub_26EF3AE4C();
  v116 = v39;
  v117 = v38;
  _UISolariumEnabled();
  _UISolariumEnabled();
  sub_26EF3AE4C();
  sub_26EF3984C();
  v134[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  sub_26EF3AAFC();
  v40 = *&v127[0];
  v109 = sub_26EF3A9CC();
  v41 = _UISolariumEnabled();
  v42 = objc_opt_self();
  if (v41)
  {
    v43 = &selRef_systemBlueColor;
  }

  else
  {
    v43 = &selRef_systemGreenColor;
  }

  v44 = [v42 *v43];
  v108 = sub_26EF3AA5C();
  v45 = 1;
  sub_26EF3979C();
  v46 = sub_26EF3AE4C();
  v106 = v47;
  v107 = v46;
  _UISolariumEnabled();
  _UISolariumEnabled();
  sub_26EF3AE4C();
  sub_26EF3984C();
  sub_26EF3AF2C();
  v49 = v48;
  v51 = v50;
  v134[0] = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (LOBYTE(v127[0]) == 1)
  {
    sub_26EF3AA8C();
    _UISolariumEnabled();
    v52 = v93;
    sub_26EF3AACC();

    v53 = _UISolariumEnabled();
    v54 = objc_opt_self();
    v55 = &selRef_systemGreenColor;
    if (v53)
    {
      v55 = &selRef_systemBlueColor;
    }

    v56 = [v54 *v55];
    v57 = sub_26EF3AA5C();
    v58 = v94;
    (*(v96 + 32))(v94, v52, v97);
    *(v58 + *(v95 + 36)) = v57;
    v59 = v100;
    sub_26EF3AF3C();
    v60 = v102;
    sub_26EF3AF5C();
    v61 = v92;
    v62 = v98;
    v63 = &v98[*(v99 + 36)];
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F30, &qword_26EF3D7A0) + 28);
    sub_26EE82EA0(&qword_2806C6F38, MEMORY[0x277CE1598]);
    v65 = v103;
    sub_26EF39BCC();
    (*(v104 + 8))(v60, v105);
    (*(v101 + 8))(v59, v65);
    *v63 = swift_getKeyPath();
    sub_26EE14D98(v58, v62, &qword_2806C8210, &qword_26EF3FEB0);
    sub_26EE82BB0();
    sub_26EF3A88C();
    sub_26EE14578(v62, &qword_2806C8218, &qword_26EF3FEB8);
    (*(v112 + 32))(v120, v61, v111);
    v45 = 0;
  }

  v66 = v120;
  (*(v112 + 56))(v120, v45, 1, v111);
  v67 = v66;
  v68 = v110;
  sub_26EE13B88(v67, v110, &qword_2806C8228, &qword_26EF3FEC8);
  *&v121 = v35;
  *(&v121 + 1) = __PAIR64__(v114, v115);
  *&v122 = v36;
  *(&v122 + 1) = v113;
  *&v123 = v37;
  *(&v123 + 1) = v118;
  LOWORD(v124) = 256;
  *(&v124 + 2) = v188;
  WORD3(v124) = v189;
  *(&v124 + 1) = v119;
  LOWORD(v125) = 256;
  WORD3(v125) = v187;
  *(&v125 + 2) = v186;
  *(&v125 + 1) = v117;
  *v126 = v116;
  *&v126[40] = v185;
  *&v126[24] = v184;
  *&v126[8] = v183;
  v69 = v121;
  v70 = v122;
  v71 = v124;
  *(a2 + 32) = v123;
  *(a2 + 48) = v71;
  *a2 = v69;
  *(a2 + 16) = v70;
  v72 = v125;
  v73 = *v126;
  v74 = *&v126[16];
  v75 = *&v126[32];
  *(a2 + 128) = *&v126[48];
  *(a2 + 96) = v74;
  *(a2 + 112) = v75;
  *(a2 + 64) = v72;
  *(a2 + 80) = v73;
  *&v127[0] = 0;
  *(&v127[0] + 1) = v40;
  v127[1] = v180;
  v127[2] = v181;
  v77 = v108;
  v76 = v109;
  *&v128 = v182;
  *(&v128 + 1) = v108;
  LOWORD(v129) = 256;
  *(&v129 + 2) = v178;
  WORD3(v129) = v179;
  *(&v129 + 1) = 0;
  *&v130 = v40;
  *(&v130 + 1) = v109;
  LOWORD(v131) = 256;
  WORD3(v131) = v177;
  *(&v131 + 2) = v176;
  v79 = v106;
  v78 = v107;
  *(&v131 + 1) = v107;
  *&v132[0] = v106;
  *(v132 + 8) = v173;
  *(&v132[2] + 8) = v175;
  *(&v132[1] + 8) = v174;
  *(&v132[3] + 1) = 0x4012D97C7F3321D2;
  *&v133 = v49;
  *(&v133 + 1) = v51;
  v80 = v127[0];
  v81 = v180;
  v82 = v181;
  *(a2 + 184) = v128;
  *(a2 + 168) = v82;
  *(a2 + 152) = v81;
  *(a2 + 136) = v80;
  v83 = v129;
  v84 = v130;
  v85 = v131;
  *(a2 + 248) = v132[0];
  *(a2 + 232) = v85;
  *(a2 + 216) = v84;
  *(a2 + 200) = v83;
  v86 = v132[1];
  v87 = v132[2];
  v88 = v133;
  *(a2 + 296) = v132[3];
  *(a2 + 312) = v88;
  *(a2 + 264) = v86;
  *(a2 + 280) = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8230, &qword_26EF3FED0);
  sub_26EE13B88(v68, a2 + *(v89 + 64), &qword_2806C8228, &qword_26EF3FEC8);
  sub_26EE13B88(&v121, v134, &qword_2806C8238, &qword_26EF3FED8);
  sub_26EE13B88(v127, v134, &qword_2806C8240, &unk_26EF3FEE0);
  sub_26EE14578(v120, &qword_2806C8228, &qword_26EF3FEC8);
  sub_26EE14578(v68, &qword_2806C8228, &qword_26EF3FEC8);
  *&v134[0] = 0;
  *(&v134[0] + 1) = v40;
  v134[1] = v180;
  v134[2] = v181;
  v135 = v182;
  v136 = v77;
  v137 = 256;
  v138 = v178;
  v139 = v179;
  v140 = 0;
  v141 = v40;
  v142 = v76;
  v143 = 256;
  v145 = v177;
  v144 = v176;
  v146 = v78;
  v147 = v79;
  v148 = v173;
  v149 = v174;
  v150 = v175;
  v151 = 0x4012D97C7F3321D2;
  v152 = v49;
  v153 = v51;
  sub_26EE14578(v134, &qword_2806C8240, &unk_26EF3FEE0);
  v154 = v35;
  v155 = v115;
  v156 = v114;
  v157 = v36;
  v158 = v113;
  v159 = v37;
  v160 = v118;
  v161 = 256;
  v162 = v188;
  v163 = v189;
  v164 = v119;
  v165 = 256;
  v166 = v186;
  v167 = v187;
  v168 = v117;
  v169 = v116;
  v172 = v185;
  v171 = v184;
  v170 = v183;
  return sub_26EE14578(&v154, &qword_2806C8238, &qword_26EF3FED8);
}

uint64_t sub_26EE7E518(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_26EF39DDC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[10] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_26EE7E644, v7, v6);
}

uint64_t sub_26EE7E644()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 16, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 32);
    v1 = *(v0 + 40);
  }

  *(v0 + 104) = v4;
  v9 = *(v0 + 48);
  v10 = *(v1 + 48);
  v11 = sub_26EF37EDC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_26EE17094();
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_26EE7E818;
  v14 = *(v0 + 48);

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v10, v14, v12 & 1);
}

uint64_t sub_26EE7E818()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 48);
  v8 = *v0;

  sub_26EE14578(v4, &qword_2806C9CB0, &qword_26EF3DD20);
  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26EE7E984, v6, v5);
}

uint64_t sub_26EE7E984()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EE7E9FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE7E518(v0 + 16);
}

uint64_t sub_26EE7EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_26EF3A30C();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = sub_26EF3883C();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = sub_26EF37EDC();
  v4[29] = v11;
  v12 = *(v11 - 8);
  v4[30] = v12;
  v13 = *(v12 + 64) + 15;
  v4[31] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D8, &qword_26EF3FE60);
  v4[32] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v17 = sub_26EF38DBC();
  v4[37] = v17;
  v18 = *(v17 - 8);
  v4[38] = v18;
  v4[39] = *(v18 + 64);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v19 = sub_26EF39DDC();
  v4[46] = v19;
  v20 = *(v19 - 8);
  v4[47] = v20;
  v21 = *(v20 + 64) + 15;
  v4[48] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[49] = sub_26EF3B2CC();
  v23 = sub_26EF3B29C();
  v4[50] = v23;
  v4[51] = v22;

  return MEMORY[0x2822009F8](sub_26EE7EE1C, v23, v22);
}

uint64_t sub_26EE7EE1C()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;
  *(v0 + 416) = v3;
  *(v0 + 145) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 368);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 136, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 152);
  }

  *(v0 + 424) = v4;
  v9 = swift_task_alloc();
  *(v0 + 432) = v9;
  *v9 = v0;
  v9[1] = sub_26EE7EF9C;

  return VoiceBankingSession.refreshModels()();
}

uint64_t sub_26EE7EF9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v9 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v5 = *(v3 + 400);
    v6 = *(v3 + 408);
    v7 = sub_26EE7FA5C;
  }

  else
  {

    v5 = *(v3 + 400);
    v6 = *(v3 + 408);
    v7 = sub_26EE7F0B8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EE7F0B8()
{
  v129 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);

  v125 = v1;
  result = *(v0 + 440);
  v122 = *(v1 + 16);
  if (!v122)
  {

    goto LABEL_22;
  }

  v4 = 0;
  v5 = *(v0 + 304);
  v6 = *(v5 + 80);
  v95 = ~v6;
  v96 = v6;
  v113 = result + ((v6 + 32) & ~v6);
  v7 = *(v0 + 240);
  v101 = (*(v0 + 376) + 8);
  v97 = (v7 + 32);
  v100 = (v7 + 8);
  v103 = *(v0 + 256);
  v105 = *(v0 + 416);
  v115 = v5;
  v119 = (v5 + 8);
  v8 = &qword_2806C9CB0;
  v107 = (v7 + 48);
  v109 = (v7 + 56);
  while (1)
  {
    if (v4 >= *(v125 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = v8;
    v11 = *(v0 + 145);
    v12 = *(v0 + 288);
    v13 = *(v0 + 232);
    v102 = *(v115 + 16);
    v102(*(v0 + 344), v113 + *(v115 + 72) * v4, *(v0 + 296));
    sub_26EF38DAC();
    (*v109)(v12, 0, 1, v13);
    if (v11 == 1)
    {
      v14 = v105;
    }

    else
    {
      v15 = *(v0 + 384);
      v16 = *(v0 + 368);

      sub_26EF3B46C();
      v17 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE14578(v0 + 136, &qword_2806C8178, &qword_26EF3FE00);
      (*v101)(v15, v16);
      v14 = *(v0 + 160);
    }

    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 264);
    v21 = *(v0 + 232);
    v22 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    v23 = v14 + v22;
    v24 = v10;
    sub_26EE13B88(v23, v19, v10, &qword_26EF3DD20);

    v25 = *(v103 + 48);
    sub_26EE13B88(v18, v20, v24, &qword_26EF3DD20);
    v26 = v19;
    v8 = v24;
    sub_26EE13B88(v26, v20 + v25, v24, &qword_26EF3DD20);
    v27 = *v107;
    v28 = (*v107)(v20, 1, v21);
    v29 = *(v0 + 232);
    if (v28 == 1)
    {
      break;
    }

    sub_26EE13B88(*(v0 + 264), *(v0 + 272), v8, &qword_26EF3DD20);
    v30 = v27(v20 + v25, 1, v29);
    v32 = *(v0 + 280);
    v31 = *(v0 + 288);
    v33 = *(v0 + 272);
    if (v30 == 1)
    {
      v34 = *(v0 + 232);
      sub_26EE14578(*(v0 + 280), v8, &qword_26EF3DD20);
      sub_26EE14578(v31, v8, &qword_26EF3DD20);
      (*v100)(v33, v34);
      goto LABEL_4;
    }

    v98 = *(v0 + 288);
    v99 = *(v0 + 264);
    v35 = *(v0 + 248);
    v36 = *(v0 + 232);
    (*v97)(v35, v20 + v25, v36);
    sub_26EE82EA0(&qword_2806C81E0, MEMORY[0x277CC95F0]);
    v37 = sub_26EF3B0AC();
    v38 = *v100;
    (*v100)(v35, v36);
    sub_26EE14578(v32, v8, &qword_26EF3DD20);
    sub_26EE14578(v98, v8, &qword_26EF3DD20);
    v38(v33, v36);
    sub_26EE14578(v99, v8, &qword_26EF3DD20);
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_5:
    ++v4;
    result = (*v119)(*(v0 + 344), *(v0 + 296));
    if (v122 == v4)
    {
      v39 = *(v0 + 440);

      goto LABEL_22;
    }
  }

  v9 = *(v0 + 288);
  sub_26EE14578(*(v0 + 280), v8, &qword_26EF3DD20);
  sub_26EE14578(v9, v8, &qword_26EF3DD20);
  if (v27(v20 + v25, 1, v29) != 1)
  {
LABEL_4:
    sub_26EE14578(*(v0 + 264), &qword_2806C81D8, &qword_26EF3FE60);
    goto LABEL_5;
  }

  sub_26EE14578(*(v0 + 264), &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_18:
  v40 = *(v0 + 440);
  v41 = *(v0 + 352);
  v42 = *(v0 + 360);
  v43 = *(v0 + 344);
  v114 = *(v0 + 336);
  v116 = *(v0 + 328);
  v45 = *(v0 + 296);
  v44 = *(v0 + 304);
  v46 = *(v0 + 224);
  v47 = *(v0 + 208);
  v110 = *(v0 + 200);

  v48 = *(v44 + 32);
  v48(v41, v43, v45);
  v123 = v48;
  v48(v42, v41, v45);
  v49 = sub_26EE27DAC();
  (*(v47 + 16))(v46, v49, v110);
  v102(v114, v42, v45);
  v102(v116, v42, v45);
  v50 = sub_26EF3881C();
  v51 = sub_26EF3B43C();
  v52 = os_log_type_enabled(v50, v51);
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  v55 = *(v0 + 296);
  v56 = *(v0 + 224);
  v58 = *(v0 + 200);
  v57 = *(v0 + 208);
  if (v52)
  {
    v111 = *(v0 + 200);
    v59 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v128 = v106;
    *v59 = 134218242;
    sub_26EF38D4C();
    v61 = v60;
    v62 = *v119;
    (*v119)(v53, v55);
    *(v59 + 4) = v61 * 10.0;
    *(v59 + 12) = 2080;
    v63 = sub_26EF38D7C();
    v104 = v51;
    v65 = v64;
    v117 = v62;
    v62(v54, v55);
    v66 = sub_26EE40670(v63, v65, &v128);

    *(v59 + 14) = v66;
    _os_log_impl(&dword_26EE01000, v50, v104, "ProcessingVoiceView: Refreshed models. Training progress %f - %s", v59, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x2743842A0](v106, -1, -1);
    MEMORY[0x2743842A0](v59, -1, -1);

    (*(v57 + 8))(v56, v111);
  }

  else
  {

    v67 = *v119;
    (*v119)(v54, v55);
    v117 = v67;
    v67(v53, v55);
    (*(v57 + 8))(v56, v58);
  }

  v68 = *(v0 + 448);
  v69 = *(v0 + 360);
  v70 = *(v0 + 312);
  v71 = *(v0 + 320);
  v72 = *(v0 + 296);
  v73 = *(v0 + 192);
  v112 = *(v0 + 184);
  v74 = *(v0 + 168);
  v120 = *(v0 + 176);
  v75 = swift_task_alloc();
  *(v75 + 16) = v74;
  *(v75 + 24) = v69;
  v108 = v69;
  v102(v71, v69, v72);
  v76 = (v96 + 16) & v95;
  v77 = (v76 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v123(v78 + v76, v71, v72);
  v79 = (v78 + v77);
  v80 = v74[1];
  *v79 = *v74;
  v79[1] = v80;
  v81 = v74[5];
  v83 = v74[2];
  v82 = v74[3];
  v79[4] = v74[4];
  v79[5] = v81;
  v79[2] = v83;
  v79[3] = v82;
  sub_26EE201F8(v74, v0 + 16);
  sub_26EF3AEAC();
  sub_26EF3A2FC();
  sub_26EF3991C();

  (*(v112 + 8))(v73, v120);

  v117(v108, v72);
LABEL_22:
  v84 = *(v0 + 384);
  v85 = *(v0 + 352);
  v86 = *(v0 + 360);
  v88 = *(v0 + 336);
  v87 = *(v0 + 344);
  v90 = *(v0 + 320);
  v89 = *(v0 + 328);
  v92 = *(v0 + 280);
  v91 = *(v0 + 288);
  v93 = *(v0 + 272);
  v118 = *(v0 + 264);
  v121 = *(v0 + 248);
  v124 = *(v0 + 224);
  v126 = *(v0 + 216);
  v127 = *(v0 + 192);

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_26EE7FA5C()
{
  v1 = v0[53];
  v2 = v0[49];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  v6 = sub_26EE27DAC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B45C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[56];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "ProcessingVoiceView: failed to refresh models.", v14, 2u);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  v15 = v0[48];
  v16 = v0[44];
  v17 = v0[45];
  v19 = v0[42];
  v18 = v0[43];
  v21 = v0[40];
  v20 = v0[41];
  v23 = v0[35];
  v22 = v0[36];
  v24 = v0[34];
  v27 = v0[33];
  v28 = v0[31];
  v29 = v0[28];
  v30 = v0[27];
  v31 = v0[24];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26EE7FC48(uint64_t a1, uint64_t a2)
{
  result = sub_26EF38CFC();
  if ((result & 1) == 0)
  {
    MEMORY[0x28223BE20](result, v4);
    sub_26EF3AEAC();
    sub_26EF3992C();

    v5 = *(a2 + 56);
    sub_26EF3947C();
    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_26EF3948C();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_26EE7FD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8168, &qword_26EF3FDF0);
  v3 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83, v4);
  v88 = &v76 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8130, &qword_26EF3FCA8);
  v6 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v7);
  v81 = &v76 - v8;
  v87 = sub_26EF387BC();
  v9 = *(v87 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v87, v11);
  v80 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8170, &qword_26EF3FDF8);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v79 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v82 = &v76 - v23;
  v24 = sub_26EF3925C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v76 - v32;
  v34 = sub_26EF39DDC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 + 24);
  v41 = *(a1 + 16);
  v90 = v41;
  v85 = v9;
  if (v91 == 1)
  {
    v42 = v41;
  }

  else
  {
    v77 = v38;

    sub_26EF3B46C();
    v43 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(&v90, &qword_2806C8178, &qword_26EF3FE00);
    (*(v35 + 8))(v40, v77);
    v42 = v89;
  }

  (*(v25 + 16))(v33, v42 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v24);

  (*(v25 + 104))(v30, *MEMORY[0x277D70688], v24);
  sub_26EE82EA0(&qword_2806C8180, MEMORY[0x277D70698]);
  v44 = sub_26EF3B0AC();
  v45 = *(v25 + 8);
  v45(v30, v24);
  v45(v33, v24);
  v46 = v87;
  if (v44)
  {
    v47 = sub_26EE17094();
    v48._object = 0x800000026EF45D10;
    v49 = v47 & 1;
    v48._countAndFlagsBits = 0xD00000000000001ALL;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v48, v49, 0);
    v50 = sub_26EE17094();
    v51._countAndFlagsBits = 0xD000000000000020;
    v51._object = 0x800000026EF45E40;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v51, v50 & 1, 0);
    v52 = [objc_opt_self() systemBlueColor];
    sub_26EF3AA5C();
    sub_26EF387AC();
    v53 = v85;
    (*(v85 + 16))(v88, v16, v46);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8]);
    sub_26EF3A06C();
    return (*(v53 + 8))(v16, v46);
  }

  else
  {
    if (TTSDeviceSupportsBattery())
    {
      v55._countAndFlagsBits = 0xD00000000000001BLL;
      v55._object = 0x800000026EF45CD0;
      TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v55, 1, 0);
      v56._countAndFlagsBits = 0xD00000000000001DLL;
      v56._object = 0x800000026EF45CF0;
      TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v56, 1, 0);
      v57 = [objc_opt_self() systemBlueColor];
      sub_26EF3AA5C();
      sub_26EF387AC();
      v58 = v16;
      v59 = v85;
      v60 = v82;
      v61 = v58;
      (*(v85 + 32))(v82);
      v62 = 0;
    }

    else
    {
      v62 = 1;
      v61 = v16;
      v59 = v85;
      v60 = v82;
    }

    (*(v59 + 56))(v60, v62, 1, v46);
    v63 = v46;
    v64 = sub_26EE17094();
    v65._object = 0x800000026EF45D10;
    v66 = v64 & 1;
    v65._countAndFlagsBits = 0xD00000000000001ALL;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v65, v66, 0);
    v67 = sub_26EE17094();
    v68._countAndFlagsBits = 0xD00000000000001CLL;
    v68._object = 0x800000026EF45E20;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v68, v67 & 1, 0);
    v69 = [objc_opt_self() systemBlueColor];
    sub_26EF3AA5C();
    v78 = v61;
    sub_26EF387AC();
    v70 = v79;
    sub_26EE13B88(v60, v79, &qword_2806C8170, &qword_26EF3FDF8);
    v71 = *(v59 + 16);
    v72 = v80;
    v71(v80, v61, v63);
    v73 = v81;
    sub_26EE13B88(v70, v81, &qword_2806C8170, &qword_26EF3FDF8);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8188, &qword_26EF3FE08);
    v71((v73 + *(v74 + 48)), v72, v63);
    v75 = *(v59 + 8);
    v75(v72, v63);
    sub_26EE14578(v70, &qword_2806C8170, &qword_26EF3FDF8);
    sub_26EE13B88(v73, v88, &qword_2806C8130, &qword_26EF3FCA8);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8]);
    sub_26EF3A06C();
    sub_26EE14578(v73, &qword_2806C8130, &qword_26EF3FCA8);
    v75(v78, v63);
    return sub_26EE14578(v82, &qword_2806C8170, &qword_26EF3FDF8);
  }
}

uint64_t sub_26EE80748@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = sub_26EF39B6C();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8190, &qword_26EF3FE10);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8198, &qword_26EF3FE18);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v38 - v23;
  v25 = swift_allocObject();
  v26 = a1[3];
  v25[3] = a1[2];
  v25[4] = v26;
  v27 = a1[5];
  v25[5] = a1[4];
  v25[6] = v27;
  v28 = a1[1];
  v25[1] = *a1;
  v25[2] = v28;
  sub_26EE201F8(a1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81A0, &qword_26EF3FE20);
  sub_26EE154C8(&qword_2806C81A8, &qword_2806C81A0, &qword_26EF3FE20);
  sub_26EF3AB4C();
  sub_26EF39B5C();
  sub_26EE154C8(&qword_2806C81B0, &qword_2806C8190, &qword_26EF3FE10);
  sub_26EE82EA0(&qword_2806C6BB8, MEMORY[0x277CDDB18]);
  v29 = v39;
  v30 = v41;
  sub_26EF3A65C();
  (*(v42 + 8))(v8, v30);
  (*(v40 + 8))(v14, v29);
  v31 = v16[2];
  v31(v21, v24, v15);
  v32 = v43;
  *v43 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81B8, &qword_26EF3FE28);
  v31(&v33[*(v34 + 48)], v21, v15);
  v35 = &v33[*(v34 + 64)];
  *v35 = 0;
  v35[8] = 1;
  v36 = v16[1];
  v36(v24, v15);
  return (v36)(v21, v15);
}

unint64_t sub_26EE80B64()
{
  result = qword_2806C8120;
  if (!qword_2806C8120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8118, &qword_26EF3FCA0);
    sub_26EE154C8(&qword_2806C8128, &qword_2806C8130, &qword_26EF3FCA8);
    sub_26EE82EA0(&qword_2806C8138, MEMORY[0x277CE76A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8120);
  }

  return result;
}

uint64_t sub_26EE80C4C(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, _BYTE *, uint64_t, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v20[-v10];
  v12 = sub_26EF3B30C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_26EF3B2DC();
  sub_26EE201F8(a1, v20);
  v13 = sub_26EF3B2CC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v16;
  v17 = a1[5];
  *(v14 + 96) = a1[4];
  *(v14 + 112) = v17;
  v18 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v18;
  a4(0, 0, v11, a3, v14);
}

uint64_t sub_26EE80D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26EF3883C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D8, &qword_26EF3FE60);
  v4[16] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = sub_26EF38AAC();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v17 = sub_26EF39DDC();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[28] = sub_26EF3B2CC();
  v21 = sub_26EF3B29C();
  v4[29] = v21;
  v4[30] = v20;

  return MEMORY[0x2822009F8](sub_26EE81030, v21, v20);
}

uint64_t sub_26EE81030()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 248) = v3;
  *(v0 + 49) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v7 = *(v0 + 200);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE14578(v0 + 40, &qword_2806C8178, &qword_26EF3FE00);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 56);
  }

  *(v0 + 256) = v4;
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_26EE811B0;

  return VoiceBankingSession.fetchVoices()();
}

uint64_t sub_26EE811B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v9 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = *(v3 + 232);
    v6 = *(v3 + 240);
    v7 = sub_26EE81BD0;
  }

  else
  {

    v5 = *(v3 + 232);
    v6 = *(v3 + 240);
    v7 = sub_26EE812CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void sub_26EE812CC()
{
  v72 = *(v0 + 272);
  v71 = *(v72 + 16);
  if (!v71)
  {
LABEL_16:
    v36 = *(v0 + 224);

    v37 = *(v0 + 216);
    v38 = *(v0 + 184);
    v39 = *(v0 + 192);
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v43 = *(v0 + 136);
    v42 = *(v0 + 144);
    v44 = *(v0 + 120);
    v45 = *(v0 + 96);

    v46 = *(v0 + 8);

    v46();
    return;
  }

  v1 = 0;
  v2 = *(v0 + 176);
  v69 = v72 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v70 = v2;
  v3 = *(v0 + 112);
  v68 = (v3 + 56);
  v59 = (v3 + 32);
  v62 = (v3 + 8);
  v63 = (*(v0 + 208) + 8);
  v65 = *(v0 + 128);
  v66 = *(v0 + 248);
  v64 = (v2 + 8);
  v4 = &qword_2806C9CB0;
  v67 = (v3 + 48);
  while (1)
  {
    if (v1 >= *(v72 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v4;
    v7 = *(v0 + 49);
    v8 = *(v0 + 160);
    v9 = *(v0 + 104);
    v10 = (*(v70 + 16))(*(v0 + 184), v69 + *(v70 + 72) * v1, *(v0 + 168));
    MEMORY[0x274380B50](v10);
    (*v68)(v8, 0, 1, v9);
    if (v7 == 1)
    {
      v11 = v66;
    }

    else
    {
      v12 = *(v0 + 216);
      v13 = *(v0 + 200);

      sub_26EF3B46C();
      v14 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE14578(v0 + 40, &qword_2806C8178, &qword_26EF3FE00);
      (*v63)(v12, v13);
      v11 = *(v0 + 64);
    }

    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 104);
    v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    v20 = v11 + v19;
    v21 = v6;
    sub_26EE13B88(v20, v16, v6, &qword_26EF3DD20);

    v22 = *(v65 + 48);
    sub_26EE13B88(v15, v17, v21, &qword_26EF3DD20);
    v23 = v16;
    v4 = v21;
    sub_26EE13B88(v23, v17 + v22, v21, &qword_26EF3DD20);
    v24 = *v67;
    v25 = (*v67)(v17, 1, v18);
    v26 = *(v0 + 104);
    if (v25 == 1)
    {
      break;
    }

    sub_26EE13B88(*(v0 + 136), *(v0 + 144), v4, &qword_26EF3DD20);
    v27 = v24(v17 + v22, 1, v26);
    v29 = *(v0 + 152);
    v28 = *(v0 + 160);
    v30 = *(v0 + 144);
    if (v27 == 1)
    {
      v31 = *(v0 + 104);
      sub_26EE14578(*(v0 + 152), v4, &qword_26EF3DD20);
      sub_26EE14578(v28, v4, &qword_26EF3DD20);
      (*v62)(v30, v31);
      goto LABEL_4;
    }

    v60 = *(v0 + 160);
    v61 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    (*v59)(v32, v17 + v22, v33);
    sub_26EE82EA0(&qword_2806C81E0, MEMORY[0x277CC95F0]);
    v34 = sub_26EF3B0AC();
    v35 = *v62;
    (*v62)(v32, v33);
    sub_26EE14578(v29, v4, &qword_26EF3DD20);
    sub_26EE14578(v60, v4, &qword_26EF3DD20);
    v35(v30, v33);
    sub_26EE14578(v61, v4, &qword_26EF3DD20);
    if (v34)
    {
      goto LABEL_20;
    }

LABEL_5:
    ++v1;
    (*v64)(*(v0 + 184), *(v0 + 168));
    if (v71 == v1)
    {
      v73 = *(v0 + 272);
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 160);
  sub_26EE14578(*(v0 + 152), v4, &qword_26EF3DD20);
  sub_26EE14578(v5, v4, &qword_26EF3DD20);
  if (v24(v17 + v22, 1, v26) != 1)
  {
LABEL_4:
    sub_26EE14578(*(v0 + 136), &qword_2806C81D8, &qword_26EF3FE60);
    goto LABEL_5;
  }

  sub_26EE14578(*(v0 + 136), &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_20:
  v47 = *(v0 + 72);
  (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 184), *(v0 + 168));
  v48 = *(v47 + 32);
  *(v0 + 288) = v48;
  if (v48)
  {
    v49 = *(v0 + 272);
    v50 = *(v0 + 192);
    v48;

    v51 = sub_26EF38A6C();
    v53 = v52;
    *(v0 + 296) = v52;
    v54 = sub_26EF38A9C();
    v56 = v55;
    *(v0 + 304) = v55;
    v57 = swift_task_alloc();
    *(v0 + 312) = v57;
    *v57 = v0;
    v57[1] = sub_26EE819A4;

    sub_26EF1E820(v51, v53, v54, v56);
  }

  else
  {
    v58 = *(*(v0 + 72) + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    sub_26EF39BFC();
  }
}

uint64_t sub_26EE819A4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v11 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_26EE81CC0;
  }

  else
  {
    v8 = v2[37];
    v7 = v2[38];
    v9 = v2[36];

    v4 = v2[29];
    v5 = v2[30];
    v6 = sub_26EE81AD8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE81AD8()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26EE81BD0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v13 = *(v0 + 96);

  v10 = *(v0 + 8);
  v11 = *(v0 + 280);

  return v10();
}

uint64_t sub_26EE81CC0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[28];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  v9 = sub_26EE27DAC();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v1;
  v11 = sub_26EF3881C();
  v12 = sub_26EF3B45C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[40];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v13;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_26EE01000, v11, v12, "ProcessingVoiceView: Unable to preview personal voice. %@", v14, 0xCu);
    sub_26EE14578(v15, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v15, -1, -1);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  v18 = v0[40];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];

  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v19, v20);
  v25 = v0[27];
  v26 = v0[23];
  v27 = v0[24];
  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[17];
  v30 = v0[18];
  v32 = v0[15];
  v33 = v0[12];

  v34 = v0[1];

  return v34();
}

uint64_t sub_26EE81F08@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39F5C();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81C0, &qword_26EF3FE30);
  return sub_26EE81F58(a1 + *(v2 + 44));
}

uint64_t sub_26EE81F58@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81C8, &qword_26EF3FE38);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - v8;
  sub_26EF3AA8C();
  sub_26EF3AACC();

  v10 = objc_opt_self();
  v11 = [v10 systemBlueColor];
  v12 = sub_26EF3AA5C();
  v13 = [v10 systemBlueColor];
  sub_26EF3AA5C();
  v14 = sub_26EF3AA2C();

  v15 = &v9[*(v2 + 44)];
  *v15 = v12;
  v15[1] = v14;
  v16 = sub_26EE17094() & 1;
  v17._countAndFlagsBits = 0x49564552505F4256;
  v17._object = 0xEA00000000005745;
  v40 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16, 0);
  sub_26EE12538();
  v18 = sub_26EF3A5DC();
  v20 = v19;
  LOBYTE(v12) = v21;
  v22 = sub_26EF3A5AC();
  v24 = v23;
  v26 = v25;
  sub_26EE12ABC(v18, v20, v12 & 1);

  sub_26EF3A4BC();
  v27 = sub_26EF3A5BC();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_26EE12ABC(v22, v24, v26 & 1);

  v34 = v38;
  sub_26EE13B88(v9, v38, &qword_2806C81C8, &qword_26EF3FE38);
  v35 = v39;
  sub_26EE13B88(v34, v39, &qword_2806C81C8, &qword_26EF3FE38);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C81D0, &unk_26EF3FE40) + 48);
  *v36 = v27;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31 & 1;
  *(v36 + 24) = v33;
  sub_26EE13B20(v27, v29, v31 & 1);

  sub_26EE14578(v9, &qword_2806C81C8, &qword_26EF3FE38);
  sub_26EE12ABC(v27, v29, v31 & 1);

  return sub_26EE14578(v34, &qword_2806C81C8, &qword_26EF3FE38);
}

uint64_t sub_26EE82254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v27 - v6;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EE82EA0(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  v27 = sub_26EF39C1C();
  v9 = v8;
  type metadata accessor for VoiceBankingSession();
  sub_26EE82EA0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  v10 = sub_26EF3973C();
  v12 = v11;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE82EA0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v13 = sub_26EF39C1C();
  v15 = v14;
  sub_26EE7B8A0();
  v16 = [objc_opt_self() mainRunLoop];
  v17 = *MEMORY[0x277CBE738];
  v18 = sub_26EF3B5BC();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = sub_26EF3B59C();

  sub_26EE14578(v7, &qword_2806C6C30, &qword_26EF3D3D0);
  v30 = v19;
  sub_26EF3B58C();
  sub_26EE82EA0(&qword_2806C6C40, MEMORY[0x277CC9DF0]);
  v20 = sub_26EF394CC();

  v29 = 0x3F847AE147AE147BLL;
  sub_26EF3AAEC();
  v21 = v30;
  v22 = v31;
  LOBYTE(v29) = 0;
  result = sub_26EF3AAEC();
  v24 = v30;
  v25 = v31;
  *a2 = v27;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12 & 1;
  *(a2 + 25) = v30;
  *(a2 + 28) = *(&v30 + 3);
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v28;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v24;
  v26 = v29;
  *(a2 + 84) = *(&v29 + 3);
  *(a2 + 81) = v26;
  *(a2 + 88) = v25;
  return result;
}

uint64_t sub_26EE825CC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_26EE7B8EC(a1);
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

uint64_t sub_26EE82638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE82680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TTSVBSiriTTSTrainerTaskMode()
{
  if (!qword_2806C8160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2806C8160);
    }
  }
}

uint64_t sub_26EE827CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE80D90(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE8285C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE7EADC(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE828EC()
{
  v1 = *(v0 + 24);
  v6 = *(*(v0 + 16) + 64);
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_26EE13B88(&v8, &v5, &qword_2806C81E8, &unk_26EF3FE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  sub_26EF3AAFC();
  v2 = *&v5;
  sub_26EF38D4C();
  if (v2 > v3)
  {
    v3 = v2;
  }

  v6 = v7;
  v5 = *&v3;
  sub_26EF3AB0C();
  if ((sub_26EF38CFC() & 1) == 0)
  {
    v6 = v7;
    v5 = 0x3FF0000000000000;
    sub_26EF3AB0C();
  }

  return sub_26EE14578(&v7, &qword_2806C6F88, &qword_26EF3D830);
}

uint64_t sub_26EE829F4()
{
  v1 = sub_26EF38DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  sub_26EE05C9C(*(v0 + v5 + 16), *(v0 + v5 + 24));

  v7 = *(v0 + v5 + 56);

  v8 = *(v0 + v5 + 72);

  v9 = *(v0 + v5 + 88);

  return MEMORY[0x2821FE8E8](v0, v5 + 96, v3 | 7);
}

uint64_t sub_26EE82AC0()
{
  v1 = *(sub_26EF38DBC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_26EE7FC48(v0 + v2, v3);
}

uint64_t sub_26EE82B4C()
{
  v2 = *(*(v0 + 16) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

unint64_t sub_26EE82BB0()
{
  result = qword_2806C8248;
  if (!qword_2806C8248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8218, &qword_26EF3FEB8);
    sub_26EE82C68();
    sub_26EE154C8(&qword_2806C6F60, &qword_2806C6F30, &qword_26EF3D7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8248);
  }

  return result;
}

unint64_t sub_26EE82C68()
{
  result = qword_2806C8250;
  if (!qword_2806C8250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8210, &qword_26EF3FEB0);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8250);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);

  sub_26EE05C9C(*(v0 + 32), *(v0 + 40));

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_26EE05C9C(*(v0 + 48), *(v0 + 56));

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26EE82E10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE7CB5C(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE82EA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26EE82F2C()
{
  v0 = *MEMORY[0x277D76438];
  v1 = sub_26EF3B0BC();
  UIAccessibilityPostNotification(v0, v1);
}

uint64_t sub_26EE82FB8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v48 = a6;
  v41 = a3;
  v42 = a2;
  v44 = a1;
  v43 = *(a4 - 8);
  v11 = *(v43 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v41 - v17;
  v20 = *(v19 - 8);
  v21 = v20[8];
  v23 = MEMORY[0x28223BE20](v16, v22);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v41 - v27;
  v46 = sub_26EF3A07C();
  v29 = *(v46 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v46, v31);
  v33 = &v41 - v32;
  if (v44)
  {
    v42(v45);
    v34 = v20[2];
    v34(v28, v25, a5);
    v45 = a8;
    v35 = v20[1];
    v35(v25, a5);
    v34(v25, v28, a5);
    sub_26EE83348(v25, a5);
    v35(v25, a5);
    v35(v28, a5);
    a8 = v45;
  }

  else
  {
    v36 = v43;
    v37 = *(v43 + 16);
    v37(v18, v45, a4);
    v37(v14, v18, a4);
    sub_26EE83440(v14, a5, a4);
    v38 = *(v36 + 8);
    v38(v14, a4);
    v38(v18, a4);
  }

  v49 = v47;
  v50 = v48;
  v39 = v46;
  swift_getWitnessTable();
  (*(v29 + 16))(a8, v33, v39);
  return (*(v29 + 8))(v33, v39);
}

uint64_t sub_26EE83348(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF3A05C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_26EF3A06C();
}

uint64_t sub_26EE83440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26EF3A05C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_26EF3A06C();
}

uint64_t sub_26EE83538(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9[8] = 0;
    v9[9] = result;
    v2 = MEMORY[0x28223BE20](result, a2);
    v9[2] = v4;
    v9[3] = v3;
    v9[4] = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
    v6 = sub_26EF3B27C();
    v7 = sub_26EE83E28();
    return sub_26EE6E328(sub_26EE83714, v9, v5, v6, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  }

  return result;
}

uint64_t sub_26EE83618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  result = sub_26EF3B26C();
  if (a3)
  {
    v15[5] = v9;
    v15[6] = result;
    v15[7] = a3;
    MEMORY[0x28223BE20](result, v11);
    v15[2] = a4;
    v15[3] = a2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8288, &unk_26EF3FF60);
    v13 = sub_26EE83F44();
    result = sub_26EE83734(sub_26EE83F14, v15, v12, a4, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE83734(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v9 = v8;
  v76 = a2;
  v77 = a4;
  v75 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v15 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v59 = &v58 - v18;
  v62 = a5;
  v60 = *(a5 - 8);
  v19 = *(v60 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v72 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v73 = &v58 - v24;
  v25 = sub_26EF3B5CC();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v66 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v58 - v32;
  v34 = *(*(a4 - 1) + 64);
  v36 = MEMORY[0x28223BE20](v31, v35);
  v65 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v71 = *(a3 - 1);
  v40 = *(v71 + 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a6;
  v78 = swift_getAssociatedTypeWitness();
  v67 = *(v78 - 8);
  v44 = *(v67 + 64);
  MEMORY[0x28223BE20](v78, v45);
  v47 = &v58 - v46;
  v48 = sub_26EF3B1CC();
  v79 = sub_26EF3B76C();
  v74 = sub_26EF3B77C();
  sub_26EF3B74C();
  (*(v71 + 2))(v43, v68, a3);
  v77 = v47;
  v71 = a3;
  result = sub_26EF3B1BC();
  if (v48 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v48)
  {
    v50 = (v70 + 48);
    v51 = (v70 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26EF3B5DC();
      result = (*v50)(v33, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v75(v33, v73);
      if (v9)
      {
        (*(v67 + 8))(v77, v78);

        (*(v60 + 32))(v61, v73, v62);
        return (*v51)(v33, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v51)(v33, AssociatedTypeWitness);
      sub_26EF3B75C();
      if (!--v48)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v52 = v66;
  sub_26EF3B5DC();
  v53 = v52;
  v54 = v70;
  v55 = *(v70 + 48);
  v73 = (v70 + 48);
  v71 = v55;
  if (v55(v52, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v67 + 8))(v77, v78);
    (*(v63 + 8))(v53, v64);
    return v79;
  }

  else
  {
    v70 = *(v54 + 32);
    v56 = (v54 + 8);
    v57 = v59;
    while (1)
    {
      (v70)(v57, v53, AssociatedTypeWitness);
      v75(v57, v72);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v56)(v57, AssociatedTypeWitness);
      sub_26EF3B75C();
      sub_26EF3B5DC();
      if (v71(v53, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v56)(v57, AssociatedTypeWitness);
    (*(v67 + 8))(v77, v78);

    return (*(v60 + 32))(v61, v72, v62);
  }
}

unint64_t sub_26EE83E28()
{
  result = qword_2806C8280;
  if (!qword_2806C8280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F98, &qword_26EF3D860);
    sub_26EE2767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8280);
  }

  return result;
}

uint64_t sub_26EE83EB4(int8x16_t *a1)
{
  v3 = a1->i64[0];
  v2 = a1->i64[1];
  sub_26EF3A07C();
  v5 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable();
}

uint64_t sub_26EE83F14(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  return sub_26EF3B28C();
}

unint64_t sub_26EE83F44()
{
  result = qword_2806C8290;
  if (!qword_2806C8290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8288, &unk_26EF3FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8290);
  }

  return result;
}

uint64_t sub_26EE83FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25[0] = a5;
  v25[1] = a6;
  v27 = a7;
  v26 = sub_26EF387EC();
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v26, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82A8, &qword_26EF3FF80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v25 - v20;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82F0, &unk_26EF3FFA0);
  sub_26EE84834();
  sub_26EF3AB4C();
  sub_26EF396AC();
  sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80);
  sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0]);
  v23 = v26;
  sub_26EF3A66C();
  (*(v11 + 8))(v15, v23);
  return (*(v17 + 8))(v21, v16);
}

uint64_t type metadata accessor for TrayButtonStyle()
{
  result = qword_2806CC350;
  if (!qword_2806CC350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26EE842D4()
{
  result = qword_2806C82C8;
  if (!qword_2806C82C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
    sub_26EE154C8(&qword_2806C82D0, &qword_2806C82D8, &unk_26EF3FF90);
    sub_26EE154C8(&qword_2806C82E0, &qword_2806C7A80, &qword_26EF3EEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C82C8);
  }

  return result;
}

uint64_t sub_26EE843B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TrayButtonStyle();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82C0, &qword_26EF3FF88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v25[-v16];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8320, &qword_26EF3FFB8);
  sub_26EE154C8(&qword_2806C8328, &qword_2806C8320, &qword_26EF3FFB8);
  sub_26EF3AB4C();
  v19 = &v17[*(v13 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
  v21 = *MEMORY[0x277CDF420];
  v22 = sub_26EF396EC();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v23 = *(v8 + 20);
  v30 = 0x402C000000000000;
  sub_26EE8560C();
  sub_26EF397EC();
  sub_26EE842D4();
  sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle);
  sub_26EF3A66C();
  sub_26EE85660(v12);
  return sub_26EE856BC(v17);
}

uint64_t sub_26EE84694()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_26EE846BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF39E4C();
  sub_26EE12538();

  v3 = sub_26EF3A5DC();
  v5 = v4;
  v7 = v6;
  v9 = v8 & 1;
  sub_26EE13B20(v3, v4, v8 & 1);

  sub_26EE12ABC(v3, v5, v9);

  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82F0, &unk_26EF3FFA0) + 36);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_26EF39ECC();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8318, &qword_26EF3FFB0);
  *(v10 + *(result + 36)) = 0;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v9;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_26EE8482C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_26EE846BC(a1);
}

unint64_t sub_26EE84834()
{
  result = qword_2806C82F8;
  if (!qword_2806C82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82F0, &unk_26EF3FFA0);
    sub_26EE154C8(&qword_2806C8300, &qword_2806C8308, &unk_26EF43760);
    sub_26EE154C8(&qword_2806C8310, &qword_2806C8318, &qword_26EF3FFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C82F8);
  }

  return result;
}

uint64_t sub_26EE84918@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83B8, &unk_26EF40140);
  return sub_26EE8497C(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_26EE8497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44, v6);
  v8 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C8, &unk_26EF40150);
  v47 = *(v48 - 8);
  v9 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v48, v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v45 = &v44 - v14;
  *&v55[0] = a1;
  *(&v55[0] + 1) = a2;
  sub_26EE12538();

  v15 = sub_26EF3A5DC();
  v17 = v16;
  v19 = v18;
  sub_26EF3A43C();
  v20 = sub_26EF3A5BC();
  v22 = v21;
  v24 = v23;

  sub_26EE12ABC(v15, v17, v19 & 1);

  v25 = sub_26EF3A5AC();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;
  sub_26EE12ABC(v20, v22, v24 & 1);

  v31 = sub_26EF3A3BC();
  v54 = v17 & 1;
  v53 = 1;
  *&v50 = v25;
  *(&v50 + 1) = v27;
  LOBYTE(v51) = v17 & 1;
  *(&v51 + 1) = v30;
  v52[0] = v31;
  memset(&v52[8], 0, 32);
  v52[40] = 1;
  v32 = *MEMORY[0x277CDF9B8];
  v33 = sub_26EF39A3C();
  (*(*(v33 - 8) + 104))(v8, v32, v33);
  sub_26EE85E54(&qword_2806C83D0, MEMORY[0x277CDFA28]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6A70, &qword_26EF3D058);
    sub_26EE15444();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
    v35 = v45;
    sub_26EF3A73C();
    sub_26EE14578(v8, &qword_2806C83C0, &qword_26EF40210);
    v55[2] = *v52;
    v56[0] = *&v52[16];
    *(v56 + 9) = *&v52[25];
    v55[0] = v50;
    v55[1] = v51;
    sub_26EE14578(v55, &qword_2806C6A70, &qword_26EF3D058);
    v36 = v47;
    v37 = *(v47 + 16);
    v38 = v46;
    v39 = v48;
    v37(v46, v35, v48);
    v40 = v49;
    *v49 = 0;
    *(v40 + 8) = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83E0, &unk_26EF40160);
    v37(v40 + *(v41 + 48), v38, v39);
    v42 = v40 + *(v41 + 64);
    *v42 = 0;
    v42[8] = 1;
    v43 = *(v36 + 8);
    v43(v35, v39);
    return (v43)(v38, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EE84E14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26EF3AE2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8298, &qword_26EF3FF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82A0, &qword_26EF3FF78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82A8, &qword_26EF3FF80);
  sub_26EF387EC();
  sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80);
  sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0]);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
  type metadata accessor for TrayButtonStyle();
  sub_26EE842D4();
  sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle);
  swift_getOpaqueTypeConformance2();
  return sub_26EF3AE3C();
}

uint64_t sub_26EE8502C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_26EF39DDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8340, &qword_26EF40028);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8348, &qword_26EF40030);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v43 - v18;
  sub_26EF3A26C();
  v20 = sub_26EE85424();
  v21 = sub_26EF3A3BC();
  v22 = &v14[*(v10 + 44)];
  *v22 = v20;
  v22[8] = v21;
  v23 = *v2;
  if (*(v2 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
LABEL_3:
      v24 = [objc_opt_self() lightGrayColor];
      v25 = sub_26EF3AA5C();
      goto LABEL_8;
    }
  }

  else
  {
    v26 = *v2;

    sub_26EF3B46C();
    v27 = sub_26EF3A36C();
    v43 = v3;
    v28 = v15;
    v29 = v27;
    sub_26EF3880C();

    v15 = v28;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v23, 0);
    (*(v4 + 8))(v8, v43);
    if (v46 != 1)
    {
      goto LABEL_3;
    }
  }

  if (sub_26EF3A27C())
  {
    v30 = v15;
    v31 = [objc_opt_self() whiteColor];
    v32 = [v31 colorWithAlphaComponent_];

    v15 = v30;
    v25 = sub_26EF3AA5C();
  }

  else
  {
    v25 = sub_26EF3A9EC();
  }

LABEL_8:
  v33 = v25;
  sub_26EE14D98(v14, v19, &qword_2806C8340, &qword_26EF40028);
  *&v19[*(v15 + 36)] = v33;
  v34 = *(type metadata accessor for TrayButtonStyle() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  sub_26EF397FC();
  v35 = v45;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8350, &qword_26EF40038);
  v37 = v44;
  v38 = (v44 + *(v36 + 36));
  v39 = *(sub_26EF39B7C() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_26EF39ECC();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v35;
  *(v38 + 1) = v35;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040) + 36)] = 256;
  return sub_26EE14D98(v19, v37, &qword_2806C8348, &qword_26EF40030);
}

uint64_t sub_26EE85424()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = [objc_opt_self() systemExtraLightGrayColor];
      return sub_26EF3AA5C();
    }
  }

  else
  {
    v9 = *v0;

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v7, 0);
    (*(v2 + 8))(v6, v1);
    if (v15[15] != 1)
    {
      goto LABEL_3;
    }
  }

  v11 = sub_26EF3A27C();
  v12 = [objc_opt_self() systemBlueColor];
  if (v11)
  {
    v13 = v12;
    [v12 colorWithAlphaComponent_];
  }

  return sub_26EF3AA5C();
}

unint64_t sub_26EE8560C()
{
  result = qword_2806C8330;
  if (!qword_2806C8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8330);
  }

  return result;
}

uint64_t sub_26EE85660(uint64_t a1)
{
  v2 = type metadata accessor for TrayButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE856BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C82C0, &qword_26EF3FF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE85780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE85848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE858F4()
{
  sub_26EE85978();
  if (v0 <= 0x3F)
  {
    sub_26EE859C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE85978()
{
  if (!qword_2806C8360)
  {
    v0 = sub_26EF3972C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8360);
    }
  }
}

void sub_26EE859C8()
{
  if (!qword_2806C8368)
  {
    sub_26EE8560C();
    v0 = sub_26EF3980C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8368);
    }
  }
}

unint64_t sub_26EE85A28()
{
  result = qword_2806C8370;
  if (!qword_2806C8370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8378, &qword_26EF40128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82A8, &qword_26EF3FF80);
    sub_26EF387EC();
    sub_26EE154C8(&qword_2806C82B0, &qword_2806C82A8, &qword_26EF3FF80);
    sub_26EE85E54(&qword_2806C82B8, MEMORY[0x277CE76F0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C82C0, &qword_26EF3FF88);
    type metadata accessor for TrayButtonStyle();
    sub_26EE842D4();
    sub_26EE85E54(&qword_2806C82E8, type metadata accessor for TrayButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8370);
  }

  return result;
}

unint64_t sub_26EE85BFC()
{
  result = qword_2806C8380;
  if (!qword_2806C8380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8350, &qword_26EF40038);
    sub_26EE85CB4();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8380);
  }

  return result;
}

unint64_t sub_26EE85CB4()
{
  result = qword_2806C8388;
  if (!qword_2806C8388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8348, &qword_26EF40030);
    sub_26EE85D6C();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8388);
  }

  return result;
}

unint64_t sub_26EE85D6C()
{
  result = qword_2806C8390;
  if (!qword_2806C8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8340, &qword_26EF40028);
    sub_26EE85E54(&qword_2806C8398, MEMORY[0x277CDE278]);
    sub_26EE154C8(&qword_2806C83A0, &qword_2806C83A8, &unk_26EF40130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8390);
  }

  return result;
}

uint64_t sub_26EE85E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EE85EF8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v85 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v77 - v8;
  v10 = sub_26EF3A2EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8400, &qword_26EF40218);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8408, &qword_26EF40220);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = MEMORY[0x28223BE20](v25, v26);
  if (a1)
  {
    v78 = &v77 - v28;
    v79 = v17;
    v80 = v30;
    v81 = v16;
    v82 = v29;
    v83 = v27;
    v85 = a3;
    v31 = a1;
    v32 = sub_26EF0FE94();
    v84 = v5;
    v89 = v9;
    v90 = v21;
    v87 = v11;
    v88 = v10;
    v86 = v15;
    if (v32)
    {
      v33 = v32;
      v34 = [v32 portName];

      v35 = sub_26EF3B0FC();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    v91 = v35;
    v92 = v37;
    sub_26EE12538();
    v38 = sub_26EF3A5DC();
    v40 = v39;
    v42 = v41;
    sub_26EF3A4BC();
    v43 = sub_26EF3A5BC();
    v45 = v44;
    v47 = v46;

    sub_26EE12ABC(v38, v40, v42 & 1);

    sub_26EF3AA4C();
    v48 = sub_26EF3A57C();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_26EE12ABC(v43, v45, v47 & 1);

    v55 = sub_26EF0FE94();

    if (v55)
    {

      v56 = 1.0;
    }

    else
    {
      v56 = 0.0;
    }

    v57 = v89;
    v58 = v86;
    v59 = v87;
    v91 = v48;
    v92 = v50;
    v60 = v52 & 1;
    v93 = v52 & 1;
    v94 = v54;
    v95 = v56;
    sub_26EF3A2DC();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8410, &qword_26EF40228);
    v62 = sub_26EE866BC();
    sub_26EF3A7DC();
    (*(v59 + 8))(v58, v88);
    sub_26EE12ABC(v48, v50, v60);

    v63 = *MEMORY[0x277CDF9A8];
    v64 = sub_26EF39A3C();
    (*(*(v64 - 8) + 104))(v57, v63, v64);
    sub_26EE86740(&qword_2806C83D0, MEMORY[0x277CDFA28]);
    if (sub_26EF3B0AC())
    {
      v91 = v61;
      v92 = v62;
      swift_getOpaqueTypeConformance2();
      sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
      v65 = v90;
      v66 = v78;
      v67 = v81;
      sub_26EF3A73C();
      sub_26EE86788(v57);
      (*(v79 + 8))(v65, v67);
      v69 = v82;
      v68 = v83;
      v70 = *(v82 + 16);
      v71 = v80;
      v70(v80, v66, v83);
      v72 = v85;
      *v85 = 0;
      *(v72 + 8) = 1;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8420, &qword_26EF40230);
      v70(v72 + *(v73 + 48), v71, v68);
      v74 = v72 + *(v73 + 64);
      *v74 = 0;
      v74[8] = 1;
      v75 = *(v69 + 8);
      v75(v66, v68);
      return (v75)(v71, v68);
    }

    __break(1u);
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE86740(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE86574()
{
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE86740(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

  return sub_26EF39C1C();
}

uint64_t sub_26EE86604@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = sub_26EF39F5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83E8, qword_26EF40170);
  return sub_26EE85EF8(v4, v3, (a1 + *(v5 + 44)));
}

unint64_t sub_26EE866BC()
{
  result = qword_2806C8418;
  if (!qword_2806C8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8410, &qword_26EF40228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8418);
  }

  return result;
}

uint64_t sub_26EE86740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE86788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VoiceList.voiceFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceList(0) + 28);

  return sub_26EE7354C(v3, a1);
}

uint64_t VoiceList.extraOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for VoiceList(0) + 32));
}

uint64_t sub_26EE8688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for VoiceList(0);
  v6 = (a1 + *(v5 + 36));
  v8 = *v6;
  v7 = v6[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AB0C();
  v13[0] = 0;
  v13[1] = 0;
  sub_26EE86988(a3, v13);
  v9 = (a1 + *(v5 + 40));
  v11 = *v9;
  v12 = v9[1];
  sub_26EF3AB0C();
}

uint64_t sub_26EE86988(uint64_t a1, uint64_t *a2)
{
  v35 = type metadata accessor for PickerGroupWithChildren(0);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v34 = v2;
    v40 = MEMORY[0x277D84F90];
    sub_26EE8EC80(0, v10, 0);
    v11 = v40;
    v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38 = v9;
    v12 = (a1 + v37);
    v36 = *(v5 + 72);
    v39 = a2;
    do
    {
      sub_26EE936C8(v12, v9, type metadata accessor for PickerGroupWithChildren);
      v14 = *a2;
      v13 = a2[1];
      v15 = type metadata accessor for VoicePickerGroup();
      v16 = v15;
      v17 = *(v15 + 32);
      if (*(v12 + v17) == 2)
      {
        v18 = *(v15 + 24);

        v19 = sub_26EF37F2C();
        if (!v20)
        {
          v19 = sub_26EF37EFC();
        }

        v21 = v19;
        v22 = v20;
        v9 = v38;
        if (!v13)
        {
LABEL_7:

LABEL_13:
          v9[*(v35 + 24)] = 1;
          goto LABEL_14;
        }
      }

      else
      {
        v21 = *v12;
        v22 = v12[1];

        if (!v13)
        {
          goto LABEL_7;
        }
      }

      if (v14 == v21 && v13 == v22)
      {
      }

      else
      {
        v23 = sub_26EF3B82C();

        if ((v23 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      if (*(v12 + v17) == 2)
      {
        v24 = *(v16 + 24);
        v25 = sub_26EF37F2C();
        a2 = v39;
        if (!v26)
        {
          v25 = sub_26EF37EFC();
        }

        v27 = v25;
        v28 = v26;
        v9 = v38;
      }

      else
      {
        v27 = *v12;
        v28 = v12[1];

        a2 = v39;
      }

      v29 = a2[1];
      *a2 = v27;
      a2[1] = v28;

      v40 = v11;
      v31 = *(v11 + 16);
      v30 = *(v11 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_26EE8EC80(v30 > 1, v31 + 1, 1);
        v11 = v40;
      }

      *(v11 + 16) = v31 + 1;
      v32 = v36;
      sub_26EE93734(v9, v11 + v37 + v31 * v36, type metadata accessor for PickerGroupWithChildren);
      v12 = (v12 + v32);
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_26EE86C68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8470, &qword_26EF40290);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v55 = &v49 - v6;
  v57 = type metadata accessor for PickerGroupWithChildren(0);
  v50 = *(v57 - 8);
  v7 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v57, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v56 = &v49 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v49 - v16;
  v18 = (v1 + *(type metadata accessor for VoiceList(0) + 44));
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  v22 = *v18;
  v59 = *v18;
  v60 = v19;
  v61 = v20;
  v62 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  MEMORY[0x274382CF0](v58);
  v24 = v58[0];
  v25 = v58[1];

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = v20;
    v62 = v21;
    MEMORY[0x274382CF0](v58, v23);
    v53 = sub_26EF3B11C();
    v28 = v27;

    v29 = *(a1 + 16);
    if (v29)
    {
      v54 = v28;
      v30 = *(v57 + 20);
      v49 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v31 = a1 + v49;
      v32 = *(v50 + 72);
      v51 = (v50 + 56);
      v52 = v30;
      v50 += 48;
      v33 = MEMORY[0x277D84F90];
      do
      {
        sub_26EE936C8(v31, v17, type metadata accessor for PickerGroupWithChildren);
        v34 = sub_26EE936C8(v17, v11, type metadata accessor for PickerGroupWithChildren);
        v35 = *&v17[v52];
        MEMORY[0x28223BE20](v34, v36);
        v38 = v53;
        v37 = v54;
        *(&v49 - 4) = v17;
        *(&v49 - 3) = v38;
        *(&v49 - 2) = v37;

        v39 = sub_26EE872F4(sub_26EE87464, (&v49 - 6), v35);
        v40 = *(v57 + 20);
        v41 = *&v11[v40];

        *&v11[v40] = v39;
        v42 = *(v39 + 16);

        if (v42)
        {
          v43 = v55;
          sub_26EE936C8(v11, v55, type metadata accessor for PickerGroupWithChildren);
          v44 = 0;
        }

        else
        {
          v44 = 1;
          v43 = v55;
        }

        v45 = v57;
        (*v51)(v43, v44, 1, v57);
        sub_26EE95DC4(v11, type metadata accessor for PickerGroupWithChildren);
        sub_26EE95DC4(v17, type metadata accessor for PickerGroupWithChildren);
        if ((*v50)(v43, 1, v45) == 1)
        {
          sub_26EE14578(v43, &qword_2806C8470, &qword_26EF40290);
        }

        else
        {
          sub_26EE93734(v43, v56, type metadata accessor for PickerGroupWithChildren);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_26EE8E824(0, v33[2] + 1, 1, v33);
          }

          v47 = v33[2];
          v46 = v33[3];
          if (v47 >= v46 >> 1)
          {
            v33 = sub_26EE8E824(v46 > 1, v47 + 1, 1, v33);
          }

          v33[2] = v47 + 1;
          sub_26EE93734(v56, v33 + v49 + v47 * v32, type metadata accessor for PickerGroupWithChildren);
        }

        v31 += v32;
        --v29;
      }

      while (v29);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    return a1;
  }

  return v33;
}

uint64_t sub_26EE8713C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VoicePickerGroup();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[1];
  ObjectType = swift_getObjectType();
  v30 = (*(v15 + 40))(ObjectType, v15);
  v31 = v17;
  v18 = a2 + *(v9 + 32);
  v19 = sub_26EF37F2C();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x274383240](v19, v21);

  (*(v15 + 32))(ObjectType, v15);
  v22 = *v13;
  v23 = v13[1];

  sub_26EE95DC4(v13, type metadata accessor for VoicePickerGroup);
  MEMORY[0x274383240](v22, v23);

  v24 = sub_26EF3B11C();
  v26 = v25;

  v30 = v24;
  v31 = v26;
  v29[0] = a3;
  v29[1] = a4;
  sub_26EE12538();
  v27 = sub_26EF3B62C();

  return v27 & 1;
}

uint64_t sub_26EE872F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v12 = *(a3 + 16 * v7 + 32);
      v13 = v12;
      swift_unknownObjectRetain();
      v9 = v6(&v13);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v8;
      }

      if (v9)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v14 = v8;
        if ((result & 1) == 0)
        {
          result = sub_26EE7123C(0, *(v8 + 16) + 1, 1);
          v8 = v14;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          result = sub_26EE7123C((v10 > 1), v11 + 1, 1);
          v8 = v14;
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + 16 * v11 + 32) = v12;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  return result;
}

uint64_t sub_26EE87498()
{
  sub_26EE8E9FC();

  return sub_26EF39DEC();
}

uint64_t sub_26EE874E0@<X0>(_BYTE *a1@<X8>)
{
  sub_26EE8E9FC();
  result = sub_26EF39DEC();
  *a1 = v3;
  return result;
}

uint64_t sub_26EE87550@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for VoiceList(0);
  v60 = *(v3 - 1);
  v4 = *(v60 + 8);
  MEMORY[0x28223BE20](v3, v5);
  v6 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86B0, &qword_26EF407E8);
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v63 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v62 = v55 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86B8, &qword_26EF407F0);
  v14 = *(v59 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v59, v16);
  v58 = v55 - v17;
  v18 = sub_26EF39DDC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86C0, &qword_26EF407F8);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v61 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v55 - v30;
  v32 = *(v2 + v3[8]);
  if (!*(v32 + 16))
  {
    v35 = 1;
    v36 = v59;
    goto LABEL_8;
  }

  v55[1] = v4;
  v56 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2 + v3[15];
  v34 = *v33;
  LODWORD(v33) = *(v33 + 8);
  v57 = v2;
  if (v33 != 1)
  {

    sub_26EF3B46C();
    v37 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v34, 0);
    (*(v19 + 8))(v23, v18);
    if (v67 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v71 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8718, &qword_26EF40820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
    sub_26EE154C8(&qword_2806C8728, &qword_2806C8718, &qword_26EF40820);
    v67 = MEMORY[0x277CE0BD8];
    v68 = MEMORY[0x277D837D0];
    v69 = MEMORY[0x277CE0BC8];
    v70 = MEMORY[0x277D837E0];
    swift_getOpaqueTypeConformance2();
    sub_26EE962D4();
    v38 = v58;
    sub_26EF3ACFC();
    v39 = v59;
    (*(v14 + 32))(v31, v38, v59);
    v36 = v39;
    v35 = 0;
    v6 = v56;
    v2 = v57;
    goto LABEL_8;
  }

  if (v34)
  {
    goto LABEL_7;
  }

LABEL_4:
  v35 = 1;
  v6 = v56;
  v2 = v57;
  v36 = v59;
LABEL_8:
  (*(v14 + 56))(v31, v35, 1, v36);
  v40 = (v2 + v3[10]);
  v42 = *v40;
  v41 = v40[1];
  v67 = v42;
  v68 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AAFC();
  sub_26EE936C8(v2, v6, type metadata accessor for VoiceList);
  v43 = (v60[80] + 16) & ~v60[80];
  v44 = swift_allocObject();
  sub_26EE93734(v6, v44 + v43, type metadata accessor for VoiceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86C8, &qword_26EF40800);
  sub_26EE154C8(&qword_2806C86D0, &qword_2806C8438, &qword_26EF40258);
  sub_26EE96154();
  sub_26EE9429C(&qword_2806C8708, type metadata accessor for PickerGroupWithChildren);
  v45 = v62;
  sub_26EF3ACFC();
  v46 = v61;
  sub_26EE13B88(v31, v61, &qword_2806C86C0, &qword_26EF407F8);
  v48 = v63;
  v47 = v64;
  v49 = *(v64 + 16);
  v50 = v65;
  v49(v63, v45, v65);
  v60 = v31;
  v51 = v66;
  sub_26EE13B88(v46, v66, &qword_2806C86C0, &qword_26EF407F8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8710, &qword_26EF40818);
  v49((v51 + *(v52 + 48)), v48, v50);
  v53 = *(v47 + 8);
  v53(v45, v50);
  sub_26EE14578(v60, &qword_2806C86C0, &qword_26EF407F8);
  v53(v48, v50);
  return sub_26EE14578(v46, &qword_2806C86C0, &qword_26EF407F8);
}

uint64_t sub_26EE87CEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_26EE12538();

  result = sub_26EF3A5DC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_26EE87D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8700, &qword_26EF40810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8738, &unk_26EF40830);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86E8, &qword_26EF40808);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v32 - v20;
  v22 = type metadata accessor for PickerGroupWithChildren(0);
  if (*(a1 + *(v22 + 24)) == 1)
  {
    v24 = type metadata accessor for VoicePickerGroup();
    if (*(a1 + *(v24 + 32)) == 2)
    {
      v25 = *(v24 + 24);
      v26 = sub_26EF37F2C();
      if (!v27)
      {
        v26 = sub_26EF37EFC();
      }

      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = *a1;
      v31 = a1[1];
    }

    v32[2] = v28;
    v32[3] = v29;
    MEMORY[0x28223BE20](v29, v27);
    v32[-2] = a1;
    v32[-1] = a2;
    type metadata accessor for PickerGroupView(0);
    sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView);
    sub_26EE12538();
    sub_26EF3AD3C();
    (*(v17 + 16))(v15, v21, v16);
    swift_storeEnumTagMultiPayload();
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810);
    sub_26EF3A06C();
    return (*(v17 + 8))(v21, v16);
  }

  else
  {
    MEMORY[0x28223BE20](v22, v23);
    v32[-2] = a1;
    v32[-1] = a2;
    type metadata accessor for PickerGroupView(0);
    sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView);
    sub_26EF3AD6C();
    (*(v6 + 16))(v15, v10, v5);
    swift_storeEnumTagMultiPayload();
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810);
    sub_26EF3A06C();
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_26EE88220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PickerGroupWithChildren(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE936C8(a1, v11, type metadata accessor for PickerGroupWithChildren);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2 + *(type metadata accessor for VoiceList(0) + 44);
  v16 = *v15;
  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  v31 = v16;
  v32 = v18;
  v33 = v17;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  MEMORY[0x274382CF0](v30, v19);
  v21 = v30[0];
  v20 = v30[1];

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 != 0;
  v24 = type metadata accessor for PickerGroupView(0);
  v25 = a3 + v24[6];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  sub_26EE936C8(v11, a3, type metadata accessor for PickerGroupWithChildren);
  v26 = (a3 + v24[5]);
  *v26 = v12;
  v26[1] = v13;
  v26[2] = v14;
  *(a3 + v24[8]) = v23;
  v27 = *(*&v11[*(v7 + 28)] + 16) < 7uLL;
  result = sub_26EE95DC4(v11, type metadata accessor for PickerGroupWithChildren);
  v29 = a3 + v24[7];
  *v29 = v27;
  *(v29 + 8) = 0;
  return result;
}

uint64_t sub_26EE883F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8508, &qword_26EF40358);
  v60 = *(v66 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v66, v4);
  v59 = &v56 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8670, &qword_26EF40790);
  v62 = *(v67 - 8);
  v6 = v62[8];
  MEMORY[0x28223BE20](v67, v7);
  v61 = &v56 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8678, &qword_26EF40798);
  v9 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v10);
  v65 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84D0, &qword_26EF40338);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v56 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84C8, &qword_26EF40330);
  v17 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v18);
  v20 = &v56 - v19;
  v21 = sub_26EF39DDC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VoiceList(0);
  v57 = v27;
  v29 = v2 + *(v27 + 60);
  v30 = *v29;
  if (v29[8] == 1)
  {
    v71 = v30 & 1;
    if ((v30 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x28223BE20](v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8680, &qword_26EF407A0);
      sub_26EE154C8(&qword_2806C8690, &qword_2806C8680, &qword_26EF407A0);
      v31 = sub_26EF3A50C();
      v62 = &v56;
      MEMORY[0x28223BE20](v31, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84D8, &qword_26EF40340);
      sub_26EE154C8(&qword_2806C84E0, &qword_2806C84D0, &qword_26EF40338);
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84E8, &qword_26EF40348);
      v34 = sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348);
      v69 = v33;
      v70 = v34;
      swift_getOpaqueTypeConformance2();
      sub_26EF3A8EC();
      (*(v58 + 8))(v16, v12);
      KeyPath = swift_getKeyPath();
      v36 = &v20[*(v64 + 36)];
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8500, &qword_26EF40350) + 28);
      v38 = *(v57 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      sub_26EF3AB1C();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
      (*(*(v39 - 8) + 56))(v36 + v37, 0, 1, v39);
      *v36 = KeyPath;
      sub_26EE13B88(v20, v65, &qword_2806C84C8, &qword_26EF40330);
      swift_storeEnumTagMultiPayload();
      sub_26EE93BA4();
      v40 = sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358);
      v69 = v66;
      v70 = v40;
      swift_getOpaqueTypeConformance2();
      sub_26EF3A06C();
      return sub_26EE14578(v20, &qword_2806C84C8, &qword_26EF40330);
    }
  }

  else
  {

    sub_26EF3B46C();
    v42 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v30, 0);
    v27 = (*(v22 + 8))(v26, v21);
    if ((v71 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v58 = sub_26EF39EAC();
  v43 = *v2;
  v44 = v2[1];
  v45 = v2[2];
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v43;
  v46[5] = v44;
  v46[6] = v45;
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v43;
  v47[5] = v44;
  v47[6] = v45;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
  v48 = sub_26EF3AC7C();
  MEMORY[0x28223BE20](v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8680, &qword_26EF407A0);
  sub_26EE9604C();
  sub_26EE154C8(&qword_2806C8690, &qword_2806C8680, &qword_26EF407A0);
  v50 = v59;
  sub_26EF3AB9C();
  v51 = sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358);
  v52 = v61;
  v53 = v66;
  sub_26EF3A6BC();
  (*(v60 + 8))(v50, v53);
  v54 = v62;
  v55 = v67;
  (v62[2])(v65, v52, v67);
  swift_storeEnumTagMultiPayload();
  sub_26EE93BA4();
  v69 = v53;
  v70 = v51;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A06C();
  return (v54[1])(v52, v55);
}

uint64_t sub_26EE88DA8@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = sub_26EF3AE0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v25 - v9;
  v11 = sub_26EF3A13C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84E8, &qword_26EF40348);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v25 - v18;
  v20 = *(type metadata accessor for VoiceList(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
  sub_26EF3AAFC();
  (*(v2 + 104))(v7, *MEMORY[0x277CDF0D0], v1);
  v21 = sub_26EF3ADEC();
  v22 = *(v2 + 8);
  v22(v7, v1);
  v22(v10, v1);
  if (v21)
  {
    sub_26EF3A10C();
  }

  else
  {
    sub_26EF3A0CC();
  }

  sub_26EF3964C();
  sub_26EE9429C(&qword_2806C86A8, MEMORY[0x277CDD680]);
  sub_26EF397CC();
  v23 = sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348);
  MEMORY[0x274382230](v19, v14, v23);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_26EE890E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_26EE13B88(a1, &v7 - v5, &qword_2806C86A0, &qword_26EF407E0);
  return sub_26EF39D7C();
}

uint64_t VoiceList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8480, &qword_26EF402C8);
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v84 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8488, &qword_26EF402D0);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v90 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8490, &qword_26EF402D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v74 - v13;
  sub_26EE883F0(&v74 - v13);
  KeyPath = swift_getKeyPath();
  v16 = *(v1 + 24);
  OpaqueTypeConformance2 = v10;
  v17 = &v14[*(v10 + 36)];
  *v17 = KeyPath;
  v17[8] = v16;
  v88 = type metadata accessor for VoiceList(0);
  v18 = *(v88 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v88, v20);
  v79 = v1;
  sub_26EE936C8(v1, &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceList);
  sub_26EF3B2DC();
  v21 = sub_26EF3B2CC();
  v22 = *(v18 + 80);
  v23 = ~v22;
  v24 = (v22 + 32) & ~v22;
  v81 = v19;
  v89 = v22;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v21;
  *(v25 + 24) = v26;
  sub_26EE93734(&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for VoiceList);
  v27 = sub_26EF3B30C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = &v74 - v31;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v77 = sub_26EF39A1C();
    v78 = &v74;
    v76 = *(v77 - 1);
    v33 = *(v76 + 8);
    MEMORY[0x28223BE20](v77, v34);
    v75 = v27;
    v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v92 = 0;
    *&v92[8] = 0xE000000000000000;
    sub_26EF3B70C();

    *v92 = 0xD00000000000003BLL;
    *&v92[8] = 0x800000026EF45F40;
    v91 = 117;
    v37 = sub_26EF3B7FC();
    v74 = v14;
    MEMORY[0x274383240](v37);

    MEMORY[0x28223BE20](v38, v39);
    v40 = &v74 - v31;
    v41 = &v74 - v31;
    v42 = v75;
    (*(v28 + 16))(v40, v41, v75);
    sub_26EF39A0C();
    (*(v28 + 8))(v32, v42);
    v43 = v90;
    sub_26EE93864(v74, v90);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8498, &qword_26EF40318);
    (*(v76 + 4))(v43 + *(v44 + 36), v36, v77);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8530, &qword_26EF40368);
    v46 = v90;
    v47 = (v90 + *(v45 + 36));
    v48 = sub_26EF3990C();
    (*(v28 + 32))(&v47[*(v48 + 20)], &v74 - v31, v27);
    *v47 = &unk_26EF40310;
    *(v47 + 1) = v25;
    sub_26EE93864(v14, v46);
  }

  v49 = v79;
  v50 = v79 + *(v88 + 48);
  *v92 = *v50;
  *&v92[8] = *(v50 + 8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  v52 = MEMORY[0x274382CF0](&v91, v51);
  v75 = v91;
  v53 = v81;
  MEMORY[0x28223BE20](v52, v54);
  v77 = type metadata accessor for VoiceList;
  v78 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE936C8(v49, &v74 - v78, type metadata accessor for VoiceList);
  v55 = (v89 + 16) & v23;
  v56 = swift_allocObject();
  v76 = type metadata accessor for VoiceList;
  sub_26EE93734(&v74 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v56 + v55, type metadata accessor for VoiceList);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C84A0, &qword_26EF40320);
  v58 = sub_26EE939E8();
  *v92 = OpaqueTypeConformance2;
  *&v92[8] = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_26EE154C8(&qword_2806C8528, &qword_2806C84A0, &qword_26EF40320);
  v60 = v83;
  v61 = v84;
  v62 = v90;
  sub_26EF3A8FC();

  (*(v82 + 8))(v62, v60);
  v63 = v49 + *(v88 + 44);
  v64 = *v63;
  v66 = *(v63 + 16);
  v65 = *(v63 + 24);
  *v92 = v64;
  *&v92[16] = v66;
  v93 = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8448, &qword_26EF40268);
  v68 = MEMORY[0x274382CF0](&v91, v67);
  MEMORY[0x28223BE20](v68, v69);
  v70 = (&v74 - v78);
  sub_26EE936C8(v49, &v74 - v78, v77);
  v71 = swift_allocObject();
  sub_26EE93734(v70, v71 + v55, v76);
  *v92 = v60;
  *&v92[8] = v57;
  *&v92[16] = OpaqueTypeConformance2;
  v93 = v59;
  swift_getOpaqueTypeConformance2();
  v72 = v87;
  sub_26EF3A8FC();

  return (*(v86 + 8))(v61, v72);
}

uint64_t sub_26EE89A7C()
{
  sub_26EE94020();
  sub_26EF39DEC();
  return v1;
}

uint64_t sub_26EE89AB8@<X0>(_BYTE *a1@<X8>)
{
  sub_26EE94020();
  result = sub_26EF39DEC();
  *a1 = v3;
  return result;
}

uint64_t sub_26EE89B28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_26EF39DFC();
}

uint64_t sub_26EE89B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a3;
  v4 = sub_26EF3883C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8660, &qword_26EF40780);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8668, &qword_26EF40788);
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = sub_26EF3B2DC();
  v3[17] = sub_26EF3B2CC();
  v14 = sub_26EF3B29C();
  v3[18] = v14;
  v3[19] = v13;

  return MEMORY[0x2822009F8](sub_26EE89D40, v14, v13);
}

uint64_t sub_26EE89D40()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[6];
  v6 = type metadata accessor for VoiceList(0);
  v0[20] = v6;
  v7 = (v5 + *(v6 + 28));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 8))(v8, v9);
  sub_26EF3B31C();
  (*(v3 + 8))(v2, v4);
  v0[21] = 0;
  v10 = v0[16];
  v11 = sub_26EF3B2CC();
  v0[22] = v11;
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_26EE89E94;
  v14 = v0[15];
  v15 = v0[13];
  v16 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 4, v11, v16, v15);
}

uint64_t sub_26EE89E94()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26EE89FD8, v5, v4);
}

uint64_t sub_26EE89FD8()
{
  v1 = v0 + 4;
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[9];
    sub_26EF3866C();

    v4 = sub_26EF3881C();
    v5 = sub_26EF3B44C();
    if (os_log_type_enabled(v4, v5))
    {
      v42 = v5;
      log = v4;
      v44 = v0;
      v45 = v0 + 4;
      v6 = -1;
      v7 = swift_slowAlloc();
      v11 = 0;
      v41 = v7;
      *v7 = 134217984;
      v12 = (v2 + 40);
      v0 = -*(v2 + 16);
      while (1)
      {
        if ((v0 + v6) == -1)
        {
          *(v41 + 1) = v11;

          v4 = log;
          _os_log_impl(&dword_26EE01000, log, v42, "VoiceList received new voice list from fetcher. Personal voices: %ld", v41, 0xCu);
          MEMORY[0x2743842A0](v41, -1, -1);
          v0 = v44;
          v1 = v45;
          goto LABEL_14;
        }

        if (++v6 >= *(v2 + 16))
        {
          break;
        }

        v13 = v2;
        v14 = v12 + 2;
        v15 = *(v12 - 1);
        v16 = *v12;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 48);
        swift_unknownObjectRetain();
        v18(ObjectType, v16);
        v19 = sub_26EF3B0BC();

        v20 = TTSVoiceIDHasPersonalVoicePrefix();

        v7 = swift_unknownObjectRelease();
        v21 = __OFADD__(v11, v20);
        v11 += v20;
        v12 = v14;
        v2 = v13;
        if (v21)
        {
          __break(1u);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_14:

      v27 = v0[20];
      v28 = v0[21];
      v29 = v0[6];
      (*(v0[8] + 8))(v0[9], v0[7]);
      v30 = (v29 + *(v27 + 52));
      v32 = *v30;
      v31 = v30[1];
      v0[2] = v32;
      v0[3] = v31;
      v0[5] = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8460, &qword_26EF40280);
      sub_26EF3AB0C();
      v33 = sub_26EE8A3A0(v2);

      v34 = sub_26EE86C68(v33);
      v35 = swift_task_alloc();
      v35[2] = v29;
      v35[3] = v33;
      v35[4] = v34;
      sub_26EF3AEAC();
      sub_26EF3992C();

      v0[21] = v28;
      v36 = v0[16];
      v37 = sub_26EF3B2CC();
      v0[22] = v37;
      v38 = *(MEMORY[0x277D85798] + 4);
      v39 = swift_task_alloc();
      v0[23] = v39;
      *v39 = v0;
      v39[1] = sub_26EE89E94;
      v40 = v0[15];
      v10 = v0[13];
      v9 = MEMORY[0x277D85700];
      v7 = v1;
      v8 = v37;
    }

    return MEMORY[0x2822003E8](v7, v8, v9, v10);
  }

  else
  {
LABEL_9:
    v22 = v0[17];
    v23 = v0[12];
    v24 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v25 = v0[1];

    return v25();
  }
}

uint64_t *sub_26EE8A3A0(uint64_t a1)
{
  v144 = a1;
  v2 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8470, &qword_26EF40290);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v133 = &v120 - v6;
  v7 = type metadata accessor for VoicePickerGroup();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v131 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PickerGroupWithChildren(0);
  v123 = *(v130 - 8);
  v11 = *(v123 + 64);
  v13 = MEMORY[0x28223BE20](v130, v12);
  v129 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v120 - v16;
  v125 = sub_26EF39DDC();
  v140 = *(v125 - 8);
  v18 = v140[8];
  MEMORY[0x28223BE20](v125, v19);
  v124 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8630, &unk_26EF40750);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v139 = &v120 - v24;
  v149 = sub_26EF37FCC();
  v142 = *(v149 - 8);
  v25 = *(v142 + 64);
  MEMORY[0x28223BE20](v149, v26);
  v148 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_26EF37FEC();
  v143 = *(v147 - 8);
  v28 = *(v143 + 64);
  MEMORY[0x28223BE20](v147, v29);
  v146 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26EF37F1C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v157 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  *&v152 = &v120 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v135 = &v120 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v151 = &v120 - v44;
  v132 = type metadata accessor for VoiceList(0);
  v45 = *(v132 + 48);
  v134 = v1;
  v46 = v1 + v45;
  v158 = *v46;
  v159 = *(v46 + 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  MEMORY[0x274382CF0](&v160, v47);
  v48 = *(v160 + 56);
  v150 = v160 + 56;
  v49 = 1 << *(v160 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v52 = (v49 + 63) >> 6;
  v154 = v32 + 16;
  v136 = v32;
  v155 = (v32 + 8);
  v153 = v160;

  v156 = MEMORY[0x277D84FA0];
  v137 = 0;
  v128 = v17;
  v53 = v152;
  if (v51)
  {
    while (1)
    {
      v54 = v2;
LABEL_9:
      v55 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v56 = v136;
      v57 = *(v136 + 16);
      v58 = v151;
      v57(v151, v153[6] + *(v136 + 72) * (v55 | (v54 << 6)), v31);
      v158 = v156;
      v57(v53, v58, v31);

      v59 = v135;
      sub_26EE91D24(v135, v53);
      v60 = *(v56 + 8);
      v60(v59, v31);
      v61 = sub_26EF37F0C();
      v62 = sub_26EE8C024(v158, v61);

      v60(v58, v31);
      v156 = v62;
      if (!v51)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v54 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_47:
      v119 = *(v54 - 256);
      goto LABEL_49;
    }

    if (v54 >= v52)
    {
      break;
    }

    v51 = *(v150 + 8 * v54);
    ++v2;
    if (v51)
    {
      v2 = v54;
      goto LABEL_9;
    }
  }

  v145 = *(v144 + 16);
  if (v145)
  {
    v63 = 0;
    v144 += 32;
    v143 += 8;
    v142 += 8;
    v141 = (v136 + 48);
    v138 = (v136 + 32);
    v153 = v156 + 7;
    v121 = (v140 + 1);
    v127 = (v123 + 56);
    v140 = MEMORY[0x277D84F98];
    v122 = (v123 + 48);
    v126 = xmmword_26EF3C6B0;
    v64 = v139;
    while (1)
    {
      v151 = v63;
      v152 = *(v144 + 16 * v63);
      ObjectType = swift_getObjectType();
      v66 = *(&v152 + 1);
      v67 = *(*(&v152 + 1) + 72);
      swift_unknownObjectRetain();
      v68 = v146;
      v150 = ObjectType;
      v67(ObjectType, v66);
      v69 = v148;
      sub_26EF37FDC();
      (*v143)(v68, v147);
      sub_26EF37FBC();
      (*v142)(v69, v149);
      if ((*v141)(v64, 1, v31) == 1)
      {
        swift_unknownObjectRelease();
        sub_26EE14578(v64, &qword_2806C8630, &unk_26EF40750);
      }

      else
      {
        v70 = v157;
        (*v138)(v157, v64, v31);
        v71 = v156;
        if (v156[2])
        {
          v72 = v156[5];
          sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640]);
          v73 = sub_26EF3B04C();
          v74 = -1 << *(v71 + 32);
          v75 = v73 & ~v74;
          if (((*(v153 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
LABEL_21:
            swift_unknownObjectRelease();
            (*v155)(v157, v31);
            goto LABEL_38;
          }

          v76 = v66;
          v77 = ~v74;
          v78 = *(v136 + 72);
          v79 = *(v136 + 16);
          v80 = v135;
          while (1)
          {
            v79(v80, v156[6] + v78 * v75, v31);
            sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640]);
            v81 = sub_26EF3B0AC();
            (*v155)(v80, v31);
            if (v81)
            {
              break;
            }

            v75 = (v75 + 1) & v77;
            if (((*(v153 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v70 = v157;
        }

        else
        {
          v76 = v66;
        }

        v82 = v134 + *(v132 + 60);
        v83 = *v82;
        if (*(v82 + 8) == 1)
        {
          if ((v83 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_26EF3B46C();
          v84 = sub_26EF3A36C();
          sub_26EF3880C();

          v85 = v124;
          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE54224(v83, 0);
          (*v121)(v85, v125);
          if (v158 != 1)
          {
            goto LABEL_30;
          }
        }

        (*(v76 + 88))(&v158, v150, v76);
        v64 = v139;
        if (BYTE4(v158) == 1)
        {
LABEL_30:
          v86 = *(v76 + 32);
          v87 = v131;
          v86(v150, v76);
          v88 = VoicePickerGroup.id.getter();
          v90 = v89;
          sub_26EE95DC4(v87, type metadata accessor for VoicePickerGroup);
          if (v140[2])
          {
            v91 = sub_26EE1FCF4(v88, v90);
            v93 = v92;

            if (v93)
            {
              v94 = v123;
              v95 = v133;
              sub_26EE936C8(v140[7] + *(v123 + 72) * v91, v133, type metadata accessor for PickerGroupWithChildren);
              v96 = v130;
              (*(v94 + 56))(v95, 0, 1, v130);
              v97 = v128;
              sub_26EE93734(v95, v128, type metadata accessor for PickerGroupWithChildren);
              goto LABEL_36;
            }
          }

          else
          {
          }

          v98 = v133;
          v96 = v130;
          (*v127)(v133, 1, 1, v130);
          v97 = v128;
          v86(v150, v76);
          *(v97 + *(v96 + 20)) = MEMORY[0x277D84F90];
          *(v97 + *(v96 + 24)) = 0;
          if ((*v122)(v98, 1, v96) != 1)
          {
            sub_26EE14578(v133, &qword_2806C8470, &qword_26EF40290);
          }

LABEL_36:
          v99 = *(v96 + 20);
          v100 = *(v97 + v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
          inited = swift_initStackObject();
          v102 = v152;
          *(inited + 16) = v126;
          *(inited + 32) = v102;
          v158 = v100;
          swift_unknownObjectRetain();

          sub_26EE8EE78(inited);
          v103 = v158;

          v158 = v103;

          v104 = v137;
          sub_26EE8F03C(&v158);
          v54 = &v159 + 8;
          v137 = v104;
          if (v104)
          {
            goto LABEL_47;
          }

          swift_bridgeObjectRelease_n();
          *(v97 + v99) = v158;
          v105 = VoicePickerGroup.id.getter();
          v107 = v106;
          v108 = v129;
          sub_26EE936C8(v97, v129, type metadata accessor for PickerGroupWithChildren);
          v109 = v140;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v158 = v109;
          sub_26EE8F420(v108, v105, v107, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();

          (*v155)(v157, v31);
          v140 = v158;
          sub_26EE95DC4(v97, type metadata accessor for PickerGroupWithChildren);
LABEL_38:
          v64 = v139;
          goto LABEL_14;
        }

        (*v155)(v70, v31);
        swift_unknownObjectRelease();
      }

LABEL_14:
      v63 = v151 + 1;
      if (v151 + 1 == v145)
      {
        goto LABEL_40;
      }
    }
  }

  v140 = MEMORY[0x277D84F98];
LABEL_40:

  v113 = v140;
  v114 = v140[2];
  if (!v114)
  {
    goto LABEL_43;
  }

  v115 = sub_26EE8EB84(v140[2], 0);
  v116 = sub_26EE93444(&v158, v115 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v114, v113);

  v111 = sub_26EE74A10();
  if (v116 != v114)
  {
    __break(1u);
LABEL_43:
    v115 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v111, v112);
  *(&v120 - 2) = v134;
  v158 = v115;

  v117 = v137;
  sub_26EE8EF7C(sub_26EE95D94, (&v120 - 4));
  if (!v117)
  {

    return v158;
  }

  v119 = v117;
LABEL_49:

  __break(1u);
  return result;
}

uint64_t sub_26EE8B3C0(uint64_t a1)
{
  v2 = type metadata accessor for VoiceList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_26EF3B30C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_26EE936C8(a1, v6, type metadata accessor for VoiceList);
  sub_26EF3B2DC();
  v13 = sub_26EF3B2CC();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_26EE93734(v6, v15 + v14, type metadata accessor for VoiceList);
  sub_26EE2C388(0, 0, v11, &unk_26EF40740, v15);
}

uint64_t sub_26EE8B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_26EF3B2DC();
  *(v4 + 48) = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE8B638, v6, v5);
}

uint64_t sub_26EE8B638()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = (v2 + *(type metadata accessor for VoiceList(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v0[2] = *v3;
  v0[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8440, &qword_26EF40260);
  sub_26EF3AAFC();
  v6 = v0[4];
  v0[2] = v4;
  v0[3] = v5;
  sub_26EF3AAFC();
  v7 = sub_26EE86C68(v0[4]);

  v8 = swift_task_alloc();
  v8[2] = v2;
  v8[3] = v6;
  v8[4] = v7;
  sub_26EF3AEAC();
  sub_26EF3992C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_26EE8B78C(void *a1, void *a2, uint64_t a3)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v88 - v11;
  v13 = sub_26EF37FEC();
  v95 = *(v13 - 8);
  v14 = v95[8];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v94 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v93 = &v88 - v19;
  v20 = type metadata accessor for VoicePickerGroup();
  v21 = *(*(v20 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v88 - v27;
  sub_26EE936C8(a1, &v88 - v27, type metadata accessor for VoicePickerGroup);
  sub_26EE936C8(a2, v25, type metadata accessor for VoicePickerGroup);
  v29 = v20[8];
  v30 = v28[v29];
  v31 = v25[v29];
  if (v30 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v98) = v28[v29];
    if (v31 != 2)
    {
      LOBYTE(v96) = v31 & 1;
      sub_26EE2988C();
      if (sub_26EF3B0AC())
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v98) = v30;
    LOBYTE(v96) = 0;
    sub_26EE2988C();
    if (sub_26EF3B0AC())
    {
      goto LABEL_55;
    }

    if (v31 == 2)
    {
      LODWORD(v89) = 1;
      goto LABEL_12;
    }
  }

  LOBYTE(v98) = v31;
  LOBYTE(v96) = 0;
  sub_26EE2988C();
  if (sub_26EF3B0AC())
  {
    goto LABEL_58;
  }

  if (v30 == 2)
  {
LABEL_14:
    LOBYTE(v98) = v31;
    LOBYTE(v96) = 1;
    sub_26EE2988C();
    if (sub_26EF3B0AC())
    {
      goto LABEL_55;
    }

LABEL_15:
    v32 = v20[7];
    if (v28[v32 + 8] & 1) != 0 || (v25[v32 + 8])
    {
      goto LABEL_17;
    }

    v47 = *&v28[v32];
    v48 = *&v25[v32];
    v49 = (a1 + v32);
    v50 = *(a1 + v32 + 8);
    v51 = (a2 + v32);
    v52 = *(a2 + v32 + 8);
    if (v50)
    {
      if (v52)
      {
LABEL_17:
        v33 = v95[2];
        v34 = v93;
        v33(v93, a1 + v20[6], v13);
        v35 = a2 + v20[6];
        v90 = v13;
        (v33)(v94, v35);
        v36 = sub_26EF37EFC();
        v38 = v37;
        if (v36 == sub_26EF37EFC() && v38 == v39)
        {

LABEL_21:
          v41 = a1[1];
          v98 = *a1;
          v99 = v41;
          v42 = a2[1];
          v96 = *a2;
          v97 = v42;
          sub_26EE12538();
          v43 = sub_26EF3B61C();
          v44 = v95[1];
          v45 = v90;
          v44(v94, v90);
          v44(v34, v45);
LABEL_22:
          sub_26EE95DC4(v25, type metadata accessor for VoicePickerGroup);
          sub_26EE95DC4(v28, type metadata accessor for VoicePickerGroup);
          return v43 == -1;
        }

        v40 = sub_26EF3B82C();

        if (v40)
        {
          goto LABEL_21;
        }

        v53 = sub_26EF37EFC();
        v55 = v54;
        v89 = *(type metadata accessor for VoiceList(0) + 24);
        sub_26EE13B88(v92 + v89, v12, &qword_2806C8430, &qword_26EF40250);
        v56 = v95;
        v57 = v90;
        v88 = v95[6];
        if (v88(v12, 1, v90) == 1)
        {
          sub_26EE14578(v12, &qword_2806C8430, &qword_26EF40250);

LABEL_28:
          v58 = sub_26EF37EFC();
          v60 = v59;
          v61 = v91;
          sub_26EE13B88(v92 + v89, v91, &qword_2806C8430, &qword_26EF40250);
          v62 = v90;
          if (v88(v61, 1, v90) == 1)
          {
            sub_26EE14578(v61, &qword_2806C8430, &qword_26EF40250);

LABEL_30:
            v63 = v93;
            v64 = sub_26EF37F2C();
            if (v65)
            {
              v66 = v64;
            }

            else
            {
              v66 = 0;
            }

            if (v65)
            {
              v67 = v65;
            }

            else
            {
              v67 = 0xE000000000000000;
            }

            v98 = v66;
            v99 = v67;
            v68 = v62;
            v69 = v94;
            v70 = sub_26EF37F2C();
            if (v71)
            {
              v72 = v70;
            }

            else
            {
              v72 = 0;
            }

            if (v71)
            {
              v73 = v71;
            }

            else
            {
              v73 = 0xE000000000000000;
            }

            v96 = v72;
            v97 = v73;
            sub_26EE12538();
            v43 = sub_26EF3B61C();

            v74 = v95[1];
            v74(v69, v68);
            v74(v63, v68);
            goto LABEL_22;
          }

          v80 = v61;
          v81 = sub_26EF37EFC();
          v83 = v82;
          v84 = v95[1];
          v84(v80, v62);
          if (v58 == v81 && v60 == v83)
          {
          }

          else
          {
            v87 = sub_26EF3B82C();

            if ((v87 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v84(v94, v62);
          v84(v93, v62);
          goto LABEL_58;
        }

        v75 = sub_26EF37EFC();
        v77 = v76;
        v78 = v57;
        v79 = v56[1];
        v79(v12, v78);
        if (v53 == v75 && v55 == v77)
        {
        }

        else
        {
          v85 = sub_26EF3B82C();

          if ((v85 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v86 = v90;
        v79(v94, v90);
        v79(v93, v86);
LABEL_55:
        sub_26EE95DC4(v25, type metadata accessor for VoicePickerGroup);
        sub_26EE95DC4(v28, type metadata accessor for VoicePickerGroup);
        return 1;
      }
    }

    else
    {
      if (*v49 != *v51)
      {
        v52 = 1;
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_26EE95DC4(v25, type metadata accessor for VoicePickerGroup);
    sub_26EE95DC4(v28, type metadata accessor for VoicePickerGroup);
    return v47 < v48;
  }

  LODWORD(v89) = 0;
LABEL_12:
  LOBYTE(v98) = v30;
  LOBYTE(v96) = 1;
  sub_26EE2988C();
  if ((sub_26EF3B0AC() & 1) == 0)
  {
    if (v89)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_58:
  sub_26EE95DC4(v25, type metadata accessor for VoicePickerGroup);
  sub_26EE95DC4(v28, type metadata accessor for VoicePickerGroup);
  return 0;
}

uint64_t sub_26EE8C024(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF37F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v29 - v13;
  result = MEMORY[0x28223BE20](v12, v15);
  v18 = v29 - v17;
  v19 = 0;
  v30 = a1;
  v31 = a2;
  v22 = *(a1 + 56);
  v21 = a1 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[2] = v5 + 32;
  v29[3] = v5 + 16;
  v29[1] = v5 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v5 + 16))(v18, *(v30 + 48) + *(v5 + 72) * (v28 | (v27 << 6)), v4);
      (*(v5 + 32))(v10, v18, v4);
      sub_26EE91D24(v14, v10);
      result = (*(v5 + 8))(v14, v4);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return v31;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t VoiceList.init(preferredLocale:voiceFetcher:searchText:languages:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a7;
  v54 = a8;
  v47 = a5;
  v48 = a6;
  v49 = a2;
  v50 = a4;
  v46 = a3;
  v51 = a1;
  v52 = a10;
  v11 = sub_26EF3AE0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v45 - v19;
  v55 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v21 = v58;
  *a9 = v57;
  *(a9 + 8) = v21;
  *(a9 + 24) = 0;
  v22 = type metadata accessor for VoiceList(0);
  v23 = v22[6];
  v24 = sub_26EF37FEC();
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = (a9 + v22[9]);
  v26 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v27 = v58;
  *v25 = v57;
  v25[1] = v27;
  v28 = (a9 + v22[10]);
  v55 = v26;
  sub_26EF3AAEC();
  v29 = v58;
  *v28 = v57;
  v28[1] = v29;
  v30 = (a9 + v22[13]);
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v31 = v58;
  *v30 = v57;
  v30[1] = v31;
  v32 = v22[14];
  (*(v12 + 104))(v20, *MEMORY[0x277CDF0D8], v11);
  (*(v12 + 16))(v17, v20, v11);
  sub_26EF3AAEC();
  v33 = v11;
  v34 = v49;
  (*(v12 + 8))(v20, v33);
  v35 = a9 + v22[15];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = v51;
  sub_26EE7354C(v34, a9 + v22[7]);
  sub_26EE94074(v36, a9 + v23);
  v37 = v50;
  if (v50)
  {
    v39 = v47;
    v38 = v48;
    v40 = v46;
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_26EF3AC8C();
    v40 = v57;
    v39 = *(&v58 + 1);
    v37 = v58;
    v38 = v59;
  }

  v41 = (a9 + v22[11]);
  *v41 = v40;
  v41[1] = v37;
  v41[2] = v39;
  v41[3] = v38;
  v42 = (a9 + v22[12]);
  v43 = v54;
  *v42 = v53;
  v42[1] = v43;
  v42[2] = v52;
  __swift_destroy_boxed_opaque_existential_1(v34);
  result = sub_26EE14578(v36, &qword_2806C8430, &qword_26EF40250);
  *(a9 + v22[8]) = v26;
  return result;
}

double VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v64 = a8;
  v70 = a5;
  v71 = a6;
  v72 = a4;
  v73 = a3;
  v76 = a11;
  v77 = a7;
  v78 = a10;
  v69 = a13;
  v63 = a12;
  v16 = sub_26EF3AE0C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v61 - v29;
  v75 = a1;
  sub_26EE13B88(a1, &v61 - v29, &qword_2806C8430, &qword_26EF40250);
  v74 = a2;
  sub_26EE7354C(a2, v84);
  v79 = MEMORY[0x277D84FA0];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v68 = v81;
  v66 = *(&v82 + 1);
  v67 = v82;
  *(a9 + 24) = 0;
  v31 = type metadata accessor for VoiceList(0);
  v32 = v31[6];
  v62 = v32;
  v33 = sub_26EF37FEC();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  v34 = (a9 + v31[9]);
  v35 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v36 = v82;
  *v34 = v81;
  v34[1] = v36;
  v37 = (a9 + v31[10]);
  v79 = v35;
  sub_26EF3AAEC();
  v38 = v82;
  *v37 = v81;
  v37[1] = v38;
  v39 = (a9 + v31[13]);
  v79 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v40 = v82;
  *v39 = v81;
  v39[1] = v40;
  v41 = v31[14];
  (*(v17 + 104))(v25, *MEMORY[0x277CDF0D8], v16);
  (*(v17 + 16))(v22, v25, v16);
  sub_26EF3AAEC();
  (*(v17 + 8))(v25, v16);
  v42 = a9 + v31[15];
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = a9 + v31[12];
  *v43 = v63;
  *(v43 + 16) = v69;
  sub_26EE7354C(v84, a9 + v31[7]);
  v44 = v64;
  v69 = v30;
  sub_26EE94074(v30, a9 + v62);
  if (v44)
  {
    v45 = v77;
    v46 = v76;
    v47 = v78;
    v48 = v44;
    v49 = v77;
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_26EF3AC8C();
    v49 = v81;
    v47 = *(&v82 + 1);
    v48 = v82;
    v46 = v83;
    v45 = v77;
  }

  v50 = (a9 + v31[11]);
  *v50 = v49;
  v50[1] = v48;
  v50[2] = v47;
  v50[3] = v46;
  sub_26EF3B2DC();
  sub_26EE940E4(v45, v44);
  v51 = v71;

  v52 = v73;

  v53 = v72;

  v54 = sub_26EF3B2CC();
  v55 = swift_allocObject();
  v56 = MEMORY[0x277D85700];
  v55[2] = v54;
  v55[3] = v56;
  v55[4] = v52;
  v55[5] = v53;
  v57 = v70;
  v55[6] = v70;
  v55[7] = v51;

  v58 = sub_26EF3B2CC();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = v56;
  v59[4] = v52;
  v59[5] = v53;
  v59[6] = v57;
  v59[7] = v51;
  sub_26EF3AC7C();

  sub_26EE9414C(v77, v44);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_26EE14578(v75, &qword_2806C8430, &qword_26EF40250);
  __swift_destroy_boxed_opaque_existential_1(v84);
  sub_26EE14578(v69, &qword_2806C8430, &qword_26EF40250);

  *a9 = v81;
  result = *&v82;
  *(a9 + 8) = v82;
  *(a9 + v31[8]) = MEMORY[0x277D84F90];
  return result;
}

double VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:extraOptions:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v69 = a7;
  v70 = a1;
  v62 = a5;
  v63 = a6;
  v64 = a4;
  v65 = a3;
  v71 = a2;
  v67 = a8;
  v68 = a11;
  v57 = a10;
  v66 = a14;
  v56 = a13;
  v55 = a12;
  v15 = sub_26EF3AE0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v55 - v23;
  v72 = MEMORY[0x277D84FA0];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v60 = v75;
  v61 = v74;
  v59 = *(&v75 + 1);
  *(a9 + 24) = 0;
  v25 = type metadata accessor for VoiceList(0);
  v26 = v25[6];
  v27 = sub_26EF37FEC();
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  v28 = (a9 + v25[9]);
  v29 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v30 = v75;
  *v28 = v74;
  v28[1] = v30;
  v31 = (a9 + v25[10]);
  v72 = v29;
  sub_26EF3AAEC();
  v32 = v75;
  *v31 = v74;
  v31[1] = v32;
  v33 = (a9 + v25[13]);
  v72 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v34 = v75;
  *v33 = v74;
  v33[1] = v34;
  v35 = v25[14];
  (*(v16 + 104))(v24, *MEMORY[0x277CDF0D8], v15);
  (*(v16 + 16))(v21, v24, v15);
  sub_26EF3AAEC();
  (*(v16 + 8))(v24, v15);
  v36 = a9 + v25[15];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = a9 + v25[12];
  *v37 = v55;
  *(v37 + 16) = v56;
  sub_26EE7354C(v71, a9 + v25[7]);
  v38 = v67;
  sub_26EE94074(v70, a9 + v26);
  if (v38)
  {
    v39 = v69;
    v40 = v68;
    v41 = v57;
    v42 = v38;
    v43 = v69;
  }

  else
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_26EF3AC8C();
    v43 = v74;
    v41 = *(&v75 + 1);
    v42 = v75;
    v40 = v76;
    v39 = v69;
  }

  v44 = (a9 + v25[11]);
  *v44 = v43;
  v44[1] = v42;
  v44[2] = v41;
  v44[3] = v40;
  sub_26EF3B2DC();
  sub_26EE940E4(v39, v38);
  v45 = v63;

  v46 = v65;

  v47 = v64;

  v48 = sub_26EF3B2CC();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v46;
  v49[5] = v47;
  v51 = v62;
  v49[6] = v62;
  v49[7] = v45;

  v52 = sub_26EF3B2CC();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v50;
  v53[4] = v46;
  v53[5] = v47;
  v53[6] = v51;
  v53[7] = v45;
  sub_26EF3AC7C();

  sub_26EE9414C(v69, v67);
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_26EE14578(v70, &qword_2806C8430, &qword_26EF40250);

  *a9 = v74;
  result = *&v75;
  *(a9 + 8) = v75;
  *(a9 + v25[8]) = v66;
  return result;
}

uint64_t sub_26EE8D05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  MEMORY[0x274382CF0](&v13, v6);
  v7 = v14;
  if (v14)
  {
    v8 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26EF3C6B0;
    *(inited + 32) = v8;
    v10 = inited + 32;
    *(inited + 40) = v7;
    v11 = sub_26EE9592C(inited);
    swift_setDeallocating();
    result = sub_26EE95A18(v10);
  }

  else
  {
    result = sub_26EE9592C(MEMORY[0x277D84F90]);
    v11 = result;
  }

  *a5 = v11;
  return result;
}

uint64_t sub_26EE8D130(uint64_t *a1)
{
  result = sub_26EE8D1A8(*a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
    return sub_26EF3AC3C();
  }

  return result;
}

uint64_t sub_26EE8D1A8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_26EF3B69C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_26EE959C4(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t VoiceList.init(preferredLocale:voiceFetcher:selection:searchText:languages:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a6;
  v56 = a8;
  v48 = a7;
  v49 = a2;
  v61 = a4;
  v62 = a5;
  v59 = a13;
  v60 = a3;
  v57 = a11;
  v58 = a12;
  v53 = a1;
  v54 = a10;
  v14 = sub_26EF3AE0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - v22;
  v63 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v51 = *(&v65 + 1);
  v52 = v65;
  v50 = v66;
  v24 = type metadata accessor for VoiceList(0);
  v25 = v24[6];
  v26 = sub_26EF37FEC();
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  v27 = (a9 + v24[9]);
  v28 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v29 = *(&v65 + 1);
  *v27 = v65;
  v27[1] = v29;
  v30 = (a9 + v24[10]);
  v63 = v28;
  sub_26EF3AAEC();
  v31 = *(&v65 + 1);
  *v30 = v65;
  v30[1] = v31;
  v32 = v28;
  v33 = v48;
  v34 = (a9 + v24[13]);
  v63 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v35 = *(&v65 + 1);
  *v34 = v65;
  v34[1] = v35;
  v36 = v24[14];
  (*(v15 + 104))(v23, *MEMORY[0x277CDF0D8], v14);
  (*(v15 + 16))(v20, v23, v14);
  v37 = v49;
  sub_26EF3AAEC();
  (*(v15 + 8))(v23, v14);
  v38 = a9 + v24[15];
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = v53;
  sub_26EE7354C(v37, a9 + v24[7]);
  sub_26EE94074(v39, a9 + v25);
  if (v33)
  {
    v40 = v55;
    *&v65 = v55;
    *(&v65 + 1) = v33;
    v66 = v56;
    v67 = v54;
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_26EF3AC8C();
    v40 = v55;
  }

  sub_26EE940E4(v40, v33);

  sub_26EE9414C(v40, v33);
  v41 = v66;
  v42 = v67;
  v43 = a9 + v24[11];
  *v43 = v65;
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  v44 = (a9 + v24[12]);
  v45 = v58;
  *v44 = v57;
  v44[1] = v45;
  v44[2] = v59;
  v46 = v61;
  *a9 = v60;
  *(a9 + 8) = v46;
  *(a9 + 16) = v62;
  *(a9 + 24) = 1;
  __swift_destroy_boxed_opaque_existential_1(v37);
  result = sub_26EE14578(v39, &qword_2806C8430, &qword_26EF40250);
  *(a9 + v24[8]) = v32;
  return result;
}

uint64_t VoiceList.ExtraOption.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VoiceList.ExtraOption.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VoiceList.ExtraOption.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t VoiceList.ExtraOption.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

TextToSpeechVoiceBankingUI::VoiceList::ExtraOption __swiftcall VoiceList.ExtraOption.init(title:id:)(Swift::String title, Swift::String id)
{
  v2[1] = title;
  *v2 = id;
  result.title = id;
  result.id = title;
  return result;
}

uint64_t sub_26EE8D718@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t VoiceListPicker.init(selectedVoiceId:preferredLocale:fetcher:languages:extraOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v16 = type metadata accessor for VoiceListPicker(0);
  sub_26EE941BC(a5, a9 + v16[5]);
  result = sub_26EE9422C(a6, a9 + v16[6]);
  v18 = (a9 + v16[8]);
  *v18 = a7;
  v18[1] = a8;
  v18[2] = a10;
  *(a9 + v16[7]) = a11;
  return result;
}

uint64_t VoiceListPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF3AE0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v50 - v15;
  v54 = &v50 - v15;
  v17 = type metadata accessor for VoiceListPicker(0);
  sub_26EE13B88(v1 + v17[5], v16, &qword_2806C8430, &qword_26EF40250);
  sub_26EE7354C(v1 + v17[6], v66);
  v18 = *(v1 + 8);
  *v65 = *v1;
  *&v65[8] = v18;
  *&v65[16] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7770, &qword_26EF40370);
  sub_26EF3AC5C();
  v53 = v62;
  v55 = v63;
  v19 = v64;
  v57 = *(&v63 + 1);
  v20 = v1 + v17[8];
  *v65 = *v20;
  *&v65[8] = *(v20 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8450, &qword_26EF40270);
  sub_26EF3AC5C();
  v51 = v62;
  v50 = v63;
  v61 = *(v1 + v17[7]);
  v62 = MEMORY[0x277D84FA0];

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8428, &qword_26EF40248);
  sub_26EF3AC8C();
  v59 = *&v65[8];
  v60 = *v65;
  v58 = *&v65[16];
  *(a1 + 24) = 0;
  v21 = type metadata accessor for VoiceList(0);
  v22 = v21[6];
  v23 = sub_26EF37FEC();
  (*(*(v23 - 8) + 56))(a1 + v22, 1, 1, v23);
  v24 = (a1 + v21[9]);
  v25 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8438, &qword_26EF40258);
  sub_26EF3AAEC();
  v26 = *&v65[8];
  *v24 = *v65;
  v24[1] = v26;
  v27 = (a1 + v21[10]);
  v62 = v25;
  sub_26EF3AAEC();
  v28 = *&v65[8];
  *v27 = *v65;
  v27[1] = v28;
  v29 = (a1 + v21[13]);
  v62 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  sub_26EF3AAEC();
  v30 = *&v65[8];
  *v29 = *v65;
  v29[1] = v30;
  v31 = v21[14];
  (*(v4 + 104))(v11, *MEMORY[0x277CDF0D8], v3);
  (*(v4 + 16))(v52, v11, v3);
  sub_26EF3AAEC();
  (*(v4 + 8))(v11, v3);
  v32 = a1 + v21[15];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = a1 + v21[12];
  *v33 = v51;
  *(v33 + 8) = v50;
  sub_26EE7354C(v66, a1 + v21[7]);
  v34 = v54;
  sub_26EE94074(v54, a1 + v22);
  v62 = 0;
  *&v63 = 0xE000000000000000;
  sub_26EF3AC8C();
  v35 = *&v65[16];
  v36 = *&v65[24];
  v37 = a1 + v21[11];
  *v37 = *v65;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  sub_26EF3B2DC();

  v38 = v53;

  v39 = v55;

  v40 = sub_26EF3B2CC();
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D85700];
  v41[2] = v40;
  v41[3] = v42;
  v43 = v38;
  v41[4] = v38;
  v41[5] = v39;
  v44 = v57;
  v41[6] = v57;
  v41[7] = v19;

  v45 = sub_26EF3B2CC();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v42;
  v46[4] = v43;
  v46[5] = v39;
  v46[6] = v44;
  v46[7] = v19;
  sub_26EF3AC7C();

  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_26EE14578(v34, &qword_2806C8430, &qword_26EF40250);

  *a1 = *v65;
  *(a1 + 8) = *&v65[8];
  *(a1 + v21[8]) = v61;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8540, &qword_26EF40378);
  v49 = a1 + *(result + 36);
  *v49 = KeyPath;
  *(v49 + 8) = 1;
  return result;
}

uint64_t sub_26EE8DDB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 48))(ObjectType, v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_26EE8DE00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2 + *(type metadata accessor for PickerGroupView(0) + 20);
  v19 = *v6;
  v20 = *(v6 + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  v7 = sub_26EF3AC5C();
  v8 = v16;
  v9 = v17;
  v10 = sub_26EEC9124(v7);
  v12 = v11;
  sub_26EE17094();
  v13 = sub_26EE17094();
  sub_26EEC915C(&v19);
  LOBYTE(v17) = v20;
  v16 = v19;
  LOBYTE(v15) = v13 & 1;
  return sub_26EEC682C(v4, v5, v8, v9, v18, v10, v12 & 1, a3, v15, &v16);
}

uint64_t sub_26EE8DF08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8550, &qword_26EF40390);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8558, &qword_26EF40398);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for PickerGroupView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8560, &qword_26EF403A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v35 - v21;
  LODWORD(v21) = *(v2 + 16);
  v38 = v20;
  if (v21 == 1)
  {
    v36 = v11;
    v37 = v3;
    v23 = *(v2 + 8);
    v43 = *v2;
    v44 = v23;
    if (*(v2 + *(v12 + 32)) == 1)
    {
      v41 = 1;

      sub_26EF3AC8C();
    }

    else
    {
      v29 = v2 + *(v12 + 28);
      v30 = *v29;
      v31 = *(v29 + 8);
      v41 = v30;
      v42 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
      sub_26EF3AB1C();
    }

    v35 = v40;
    sub_26EE936C8(v2, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
    v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v33 = swift_allocObject();
    sub_26EE93734(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for PickerGroupView);
    sub_26EE942E4();
    sub_26EE12538();
    sub_26EF39A2C();
    v34 = v38;
    (*(v17 + 16))(v36, v22, v38);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0);
    sub_26EF3A06C();
    return (*(v17 + 8))(v22, v34);
  }

  else
  {
    v40 = *(v2 + *(type metadata accessor for PickerGroupWithChildren(0) + 20));
    swift_getKeyPath();
    sub_26EE936C8(v2, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
    v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v25 = swift_allocObject();
    sub_26EE93734(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PickerGroupView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
    type metadata accessor for VoicePickerPickableView();
    sub_26EE154C8(&qword_2806C8568, &qword_2806C8458, &qword_26EF40278);
    sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView);
    v26 = v36;
    sub_26EF3ACEC();
    v27 = v37;
    (*(v37 + 16))(v11, v26, v3);
    swift_storeEnumTagMultiPayload();
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0);
    sub_26EE942E4();
    sub_26EF3A06C();
    return (*(v27 + 8))(v26, v3);
  }
}

uint64_t sub_26EE8E500(uint64_t a1)
{
  v2 = type metadata accessor for PickerGroupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v9[1] = *(a1 + *(type metadata accessor for PickerGroupWithChildren(0) + 20));
  swift_getKeyPath();
  sub_26EE936C8(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerGroupView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26EE93734(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PickerGroupView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8458, &qword_26EF40278);
  type metadata accessor for VoicePickerPickableView();
  sub_26EE154C8(&qword_2806C8568, &qword_2806C8458, &qword_26EF40278);
  sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE8E718@<X0>(uint64_t *a1@<X8>)
{
  result = VoicePickerGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTSPickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE8E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26EE94618();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

size_t sub_26EE8E824(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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
  v15 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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

unint64_t sub_26EE8E9FC()
{
  result = qword_2806C8478;
  if (!qword_2806C8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8478);
  }

  return result;
}

void *sub_26EE8EA50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26EE8EB84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v4 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_26EE8EC80(size_t a1, int64_t a2, char a3)
{
  result = sub_26EE8ECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26EE8ECA0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8650, &qword_26EF40770);
  v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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
  v15 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
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

void *sub_26EE8EE78(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26EE8EA50(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26EE8EF7C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_26EE9341C(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_26EE8F890(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_26EE8F03C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26EE93430(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26EE8F9CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26EE8F0A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PickerGroupWithChildren(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8648, &unk_26EF40760);
  v45 = a2;
  result = sub_26EF3B7BC();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_26EE93734(v32, v46, type metadata accessor for PickerGroupWithChildren);
      }

      else
      {
        sub_26EE936C8(v32, v46, type metadata accessor for PickerGroupWithChildren);
      }

      v33 = *(v13 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_26EE93734(v46, *(v13 + 56) + v31 * v21, type metadata accessor for PickerGroupWithChildren);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26EE8F420(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26EE1FCF4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PickerGroupWithChildren(0);
      return sub_26EE94558(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PickerGroupWithChildren);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_26EE8F638();
    goto LABEL_7;
  }

  sub_26EE8F0A8(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_26EE1FCF4(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_26EF3B86C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_26EE8F58C(v12, a2, a3, a1, v18);
}

uint64_t sub_26EE8F58C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PickerGroupWithChildren(0);
  result = sub_26EE93734(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for PickerGroupWithChildren);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_26EE8F638()
{
  v1 = v0;
  v2 = type metadata accessor for PickerGroupWithChildren(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8648, &unk_26EF40760);
  v6 = *v0;
  v7 = sub_26EF3B7AC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_26EE936C8(*(v6 + 56) + v28, v32, type metadata accessor for PickerGroupWithChildren);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_26EE93734(v27, *(v29 + 56) + v28, type metadata accessor for PickerGroupWithChildren);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

uint64_t sub_26EE8F890(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26EF3B7EC();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PickerGroupWithChildren(0);
        v9 = sub_26EF3B24C();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for PickerGroupWithChildren(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_26EE8FED8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_26EE8FAD4(0, v5, 1, a1);
  }

  return result;
}