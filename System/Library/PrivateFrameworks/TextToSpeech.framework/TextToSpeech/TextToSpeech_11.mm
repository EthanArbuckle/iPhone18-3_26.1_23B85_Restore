uint64_t _s12TextToSpeech18VoiceQueryCriteriaV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1A957B308();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &Criteria - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &Criteria - v12;
  v14 = sub_1A937829C(&qword_1EB3872A8, &qword_1A958C788);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &Criteria - v17;
  v19 = *a1;
  v37 = *a2;
  v38 = v19;
  sub_1A93FC780();
  sub_1A957C438();
  sub_1A957C438();
  if (v36 != v35)
  {
    return 0;
  }

  v20 = a1[1];
  v37 = a2[1];
  v38 = v20;
  sub_1A957C438();
  sub_1A957C438();
  if (v36 != v35)
  {
    return 0;
  }

  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v21 = *(Criteria + 24);
  v22 = *(v14 + 48);
  sub_1A9391BAC(a1 + v21, v18, &qword_1EB386988, &qword_1A9587830);
  sub_1A9391BAC(a2 + v21, &v18[v22], &qword_1EB386988, &qword_1A9587830);
  v23 = v34;
  v24 = *(v34 + 48);
  if (v24(v18, 1, v4) != 1)
  {
    sub_1A9391BAC(v18, v13, &qword_1EB386988, &qword_1A9587830);
    if (v24(&v18[v22], 1, v4) != 1)
    {
      (*(v23 + 32))(v8, &v18[v22], v4);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770]);
      v26 = sub_1A957C098();
      v27 = *(v23 + 8);
      v27(v8, v4);
      v27(v13, v4);
      sub_1A937B960(v18, &qword_1EB386988, &qword_1A9587830);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v23 + 8))(v13, v4);
LABEL_8:
    sub_1A937B960(v18, &qword_1EB3872A8, &qword_1A958C788);
    return 0;
  }

  if (v24(&v18[v22], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1A937B960(v18, &qword_1EB386988, &qword_1A9587830);
LABEL_12:
  v28 = *(Criteria + 28);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32 && (*v29 == *v31 && v30 == v32 || (sub_1A957D3E8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A942C2EC()
{
  result = qword_1EB38EE70;
  if (!qword_1EB38EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE70);
  }

  return result;
}

unint64_t sub_1A942C340()
{
  result = qword_1EB386400;
  if (!qword_1EB386400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386400);
  }

  return result;
}

unint64_t sub_1A942C394()
{
  result = qword_1EB386300;
  if (!qword_1EB386300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386300);
  }

  return result;
}

uint64_t sub_1A942C3E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A942C430()
{
  result = qword_1EB3863F8;
  if (!qword_1EB3863F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3863F8);
  }

  return result;
}

uint64_t sub_1A942C484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564646962726F66 && a2 == 0xEF7374696172546ELL;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xEE00737469617254 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A942C5FC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A942C62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A942C69C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A942C6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9416A8C(v5, v2, v3, v4);
}

uint64_t sub_1A942C784(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return sub_1A9418EA0(a1, a2, v7, v6);
}

void *sub_1A942C838(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3872A0, &qword_1A958C768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v9 = sub_1A957D128();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = *(v3 + 72);
  v27 = *(v2 + 48);
  v28 = v11;

  sub_1A9391BAC(a1 + v10, v7, &qword_1EB3872A0, &qword_1A958C768);
  v12 = sub_1A9425364(v7);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v9;
  }

  v14 = v12;
  v26 = sub_1A957B308();
  v15 = *(v26 - 8);
  v16 = *(v15 + 32);
  v17 = *(v15 + 72);
  v18 = a1 + v28 + v10;
  while (1)
  {
    *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v16(v9[6] + v17 * v14, v7, v26);
    result = memmove((v9[7] + 280 * v14), &v7[v27], 0x118uLL);
    v20 = v9[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    v9[2] = v22;
    if (!--v8)
    {
      goto LABEL_8;
    }

    v23 = v18 + v28;
    sub_1A9391BAC(v18, v7, &qword_1EB3872A0, &qword_1A958C768);
    v14 = sub_1A9425364(v7);
    v18 = v23;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A942CA78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return sub_1A941A184(a1, v1);
}

uint64_t sub_1A942CB14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A942B9F0(a1, v5);
}

uint64_t sub_1A942CBCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9382328;

  return sub_1A941A184(a1, v1);
}

uint64_t sub_1A942CC68(uint64_t a1)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A941A724(a1, v4, v1);
}

unint64_t sub_1A942CD04(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A942CD14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A941BFCC(v3, v4, v5, v2);
}

uint64_t sub_1A942CDA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A941D5C8(v7, v2, v3, v4, v5, v6);
}

uint64_t sub_1A942CE64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A93836DC;

  return sub_1A941DDB4(v9, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1A942CF7C(uint64_t a1)
{
  result = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
  *(a1 + 8) = result;
  return result;
}

void sub_1A942CFFC()
{
  sub_1A942D0B4();
  if (v0 <= 0x3F)
  {
    sub_1A942E334(319, &qword_1EB3863D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A942D0B4()
{
  if (!qword_1EB386488)
  {
    sub_1A957B308();
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386488);
    }
  }
}

void sub_1A942D178()
{
  sub_1A942D0B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of VoiceResolver.currentSystemLocale()(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceResolver.currentLocales()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93916A8;

  return v6();
}

uint64_t dispatch thunk of VoiceResolver.currentLocaleIdentifiers()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9431DCC;

  return v6();
}

uint64_t dispatch thunk of VoiceResolver.currentSystemLocaleIdentifier()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9431DC8;

  return v6();
}

uint64_t dispatch thunk of VoiceResolver.currentVoiceLocales()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93918CC;

  return v6();
}

uint64_t dispatch thunk of VoiceResolver.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93836DC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceResolver.voice(forLocale:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceResolver.voices(forLocale:)(uint64_t a1)
{
  v4 = *(*v1 + 424);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9431DCC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceResolver.voice(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 432);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A93836DC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of VoiceResolver.voice(forIdentifier:preferringLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 456);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1A93836DC;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of VoiceResolver.fallback(forVoice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 464);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t sub_1A942E0E8(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1A942E104(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A942E120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 49))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 48) & 0x3C | (*(a1 + 48) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A942E170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1A942E1EC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -64;
  }

  return result;
}

uint64_t sub_1A942E238(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A942E250(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A942E2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1A942E334(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TTSSpeechQueue.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSSpeechQueue.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A942E4D8()
{
  result = qword_1EB3951E0[0];
  if (!qword_1EB3951E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3951E0);
  }

  return result;
}

unint64_t sub_1A942E530()
{
  result = qword_1EB38EE60;
  if (!qword_1EB38EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE60);
  }

  return result;
}

unint64_t sub_1A942E588()
{
  result = qword_1EB38EE68;
  if (!qword_1EB38EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38EE68);
  }

  return result;
}

uint64_t sub_1A942E63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[0] = a4;
  v12 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v25 - v15;
  sub_1A9391BAC(a5, v25 - v15, &qword_1EB388000, &qword_1A9587710);
  v17 = sub_1A957C688();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1A937B960(v16, &qword_1EB388000, &qword_1A9587710);
    if (a2)
    {
LABEL_3:
      v19 = sub_1A957C1C8();

      v20 = swift_allocObject();
      *(v20 + 16) = a6;
      *(v20 + 24) = a7;

      swift_unknownObjectRetain();
      if (a3 == 1)
      {
        v21 = 0;
      }

      else
      {
        v26[0] = 6;
        v26[1] = 0;
        v26[2] = a3;
        v26[3] = v25[0];
        v21 = v26;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19 + 32;
      v23 = swift_task_create();

      goto LABEL_12;
    }
  }

  else
  {
    sub_1A957C678();
    (*(v18 + 8))(v16, v17);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  *(v22 + 24) = a7;

  swift_unknownObjectRetain();
  if (a3 != 1)
  {
    v26[4] = 6;
    v26[5] = 0;
    v26[6] = a3;
    v26[7] = v25[0];
  }

  v23 = swift_task_create();
LABEL_12:
  sub_1A937B960(a5, &qword_1EB388000, &qword_1A9587710);
  return v23;
}

uint64_t sub_1A942E900(uint64_t a1, void (*a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v190 = a3;
  v181 = sub_1A957B188();
  v183 = *(v181 - 8);
  v5 = *(v183 + 64);
  v7 = MEMORY[0x1EEE9AC00](v181, v6);
  v166 = &v162[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v179 = &v162[-v11];
  MEMORY[0x1EEE9AC00](v10, v12);
  v167 = &v162[-v13];
  v14 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v182 = &v162[-v17];
  v18 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v173 = &v162[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v178 = &v162[-v25];
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v177 = &v162[-v28];
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v176 = &v162[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v170 = &v162[-v34];
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v171 = &v162[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v162[-v40];
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v162[-v43];
  v180 = sub_1A957B2E8();
  v184 = *(v180 - 8);
  v45 = *(v184 + 64);
  v47 = MEMORY[0x1EEE9AC00](v180, v46);
  v168 = &v162[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v172 = &v162[-v51];
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v175 = &v162[-v54];
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v174 = &v162[-v57];
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v169 = &v162[-v60];
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v64 = &v162[-v63];
  MEMORY[0x1EEE9AC00](v62, v65);
  v67 = &v162[-v66];
  v68 = sub_1A957B308();
  v69 = *(v68 - 8);
  v185 = v68;
  v186 = v69;
  v70 = *(v69 + 64);
  v72 = MEMORY[0x1EEE9AC00](v68, v71);
  v188 = &v162[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v72, v74);
  v189 = &v162[-v75];
  v76 = sub_1A957B1A8();
  v78 = v77;
  v187 = a2;
  if (v76 == sub_1A957B1A8() && v78 == v79)
  {

    goto LABEL_5;
  }

  v80 = sub_1A957D3E8();

  if (v80)
  {
LABEL_5:
    result = 10000 - v190;
    if (!__OFSUB__(10000, v190))
    {
      return result;
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v165 = a1;
  sub_1A957B118();
  sub_1A957B108();
  sub_1A957B118();
  sub_1A957B108();
  v82 = sub_1A957B118();
  v84 = v83;
  if (v82 == sub_1A957B118() && v84 == v85)
  {
  }

  else
  {
    v86 = sub_1A957D3E8();

    if ((v86 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v64 = v185;
  v87 = *(v186 + 8);
  v87(v188, v185);
  v87(v189, v64);
  result = 5000 - v190;
  if (!__OFSUB__(5000, v190))
  {
    return result;
  }

  __break(1u);
LABEL_14:
  sub_1A957B2F8();
  sub_1A957B2B8();
  v88 = v184 + 8;
  v89 = *(v184 + 8);
  v90 = v180;
  v89(v67, v180);
  sub_1A957B2F8();
  sub_1A957B2B8();
  v184 = v88;
  v164 = v89;
  v89(v64, v90);
  v91 = *(v14 + 48);
  v92 = v182;
  sub_1A9391BAC(v44, v182, &qword_1EB386A68, &qword_1A9587F40);
  v93 = v92;
  sub_1A9391BAC(v41, &v92[v91], &qword_1EB386A68, &qword_1A9587F40);
  v94 = *(v183 + 48);
  v95 = v181;
  if (v94(v93, 1, v181) == 1)
  {
    sub_1A937B960(v41, &qword_1EB386A68, &qword_1A9587F40);
    v96 = v182;
    sub_1A937B960(v44, &qword_1EB386A68, &qword_1A9587F40);
    if (v94(&v96[v91], 1, v95) == 1)
    {
      sub_1A937B960(v96, &qword_1EB386A68, &qword_1A9587F40);
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v97 = v171;
  sub_1A9391BAC(v93, v171, &qword_1EB386A68, &qword_1A9587F40);
  if (v94((v93 + v91), 1, v95) == 1)
  {
    sub_1A937B960(v41, &qword_1EB386A68, &qword_1A9587F40);
    v96 = v182;
    sub_1A937B960(v44, &qword_1EB386A68, &qword_1A9587F40);
    (*(v183 + 8))(v97, v95);
LABEL_19:
    sub_1A937B960(v96, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_20;
  }

  v110 = v183;
  v111 = v93 + v91;
  v112 = v167;
  (*(v183 + 32))(v167, v111, v95);
  sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610]);
  v163 = sub_1A957C098();
  v113 = *(v110 + 8);
  v113(v112, v181);
  sub_1A937B960(v41, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v44, &qword_1EB386A68, &qword_1A9587F40);
  v113(v97, v181);
  v95 = v181;
  sub_1A937B960(v182, &qword_1EB386A68, &qword_1A9587F40);
  if ((v163 & 1) == 0)
  {
LABEL_20:
    v98 = v174;
    sub_1A957B2F8();
    v99 = v176;
    sub_1A957B2B8();
    v164(v98, v90);
    if (v94(v99, 1, v95) == 1)
    {
      sub_1A937B960(v99, &qword_1EB386A68, &qword_1A9587F40);
      v182 = 0;
      v100 = 0;
    }

    else
    {
      sub_1A957B148();
      (*(v183 + 8))(v99, v95);
      v182 = sub_1A957C1A8();
      v100 = v101;
    }

    v102 = v177;
    v103 = v178;
    v104 = v175;
    sub_1A957B2F8();
    sub_1A957B2B8();
    v164(v104, v90);
    if (v94(v102, 1, v95) == 1)
    {
      sub_1A937B960(v102, &qword_1EB386A68, &qword_1A9587F40);
      v105 = v179;
      v106 = v173;
    }

    else
    {
      sub_1A957B148();
      (*(v183 + 8))(v102, v95);
      v107 = sub_1A957C1A8();
      v109 = v108;

      if (v100)
      {
        if (v109)
        {
          if (v182 == v107 && v100 == v109)
          {
          }

          else
          {
            v154 = sub_1A957D3E8();

            v105 = v179;
            v106 = v173;
            if ((v154 & 1) == 0)
            {
LABEL_41:
              v135 = v172;
              sub_1A957B2F8();
              sub_1A957B2B8();
              v136 = v180;
              v164(v135, v180);
              if (v94(v103, 1, v95) == 1)
              {
                v137 = v185;
                v138 = *(v186 + 8);
                v138(v188, v185);
                v138(v189, v137);
                sub_1A937B960(v103, &qword_1EB386A68, &qword_1A9587F40);
              }

              else
              {
                v139 = v105;
                v140 = v183;
                v187 = *(v183 + 32);
                v187(v139, v103, v95);
                v141 = v168;
                sub_1A957B2F8();
                sub_1A957B2B8();
                v164(v141, v136);
                if (v94(v106, 1, v95) == 1)
                {
                  (*(v140 + 8))(v179, v95);
                  v142 = v185;
                  v143 = *(v186 + 8);
                  v143(v188, v185);
                  v143(v189, v142);
                  sub_1A937B960(v106, &qword_1EB386A68, &qword_1A9587F40);
                }

                else
                {
                  v144 = v166;
                  v187(v166, v106, v95);
                  v145 = v179;
                  if (Locale.LanguageCode.isMacroLanguage.getter())
                  {
                    v146 = Locale.LanguageCode.childLanguages.getter();
                    v147 = sub_1A939A620(v144, v146);

                    v148 = *(v183 + 8);
                    v148(v144, v95);
                    v148(v145, v95);
                    v149 = v185;
                    v150 = *(v186 + 8);
                    v150(v188, v185);
                    v150(v189, v149);
                    if (v147)
                    {
                      result = 100 - v190;
                      if (!__OFSUB__(100, v190))
                      {
                        return result;
                      }

                      __break(1u);
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v151 = *(v183 + 8);
                    v151(v144, v95);
                    v151(v145, v95);
                    v152 = v185;
                    v153 = *(v186 + 8);
                    v153(v188, v185);
                    v153(v189, v152);
                  }
                }
              }

              return 0;
            }
          }

          v155 = v185;
          v156 = *(v186 + 8);
          v156(v188, v185);
          v156(v189, v155);
          result = 500 - v190;
          if (!__OFSUB__(500, v190))
          {
            return result;
          }

          __break(1u);
          goto LABEL_57;
        }

        v105 = v179;
        v106 = v173;
      }

      else
      {
        v105 = v179;
        v106 = v173;
      }
    }

    goto LABEL_41;
  }

LABEL_31:
  v114 = v169;
  sub_1A957B2F8();
  v115 = v170;
  sub_1A957B2B8();
  v164(v114, v90);
  if (v94(v115, 1, v95) == 1)
  {
    v116 = v185;
    v117 = *(v186 + 8);
    v117(v188, v185);
    v117(v189, v116);
    sub_1A937B960(v115, &qword_1EB386A68, &qword_1A9587F40);
    goto LABEL_58;
  }

  v118 = sub_1A957B148();
  v120 = v119;
  (*(v183 + 8))(v115, v95);
  v121 = sub_1A957B1A8();
  v123 = v122;
  v124 = sub_1A93A7EF0();
  v125 = *v124;
  if (!*(*v124 + 16) || (v126 = *v124, , v127 = sub_1A937A490(v118, v120), v129 = v128, , (v129 & 1) == 0))
  {
LABEL_57:

    v157 = v185;
    v158 = *(v186 + 8);
    v158(v188, v185);
    v158(v189, v157);
LABEL_58:
    while (1)
    {
      result = 1000 - v190;
      if (!__OFSUB__(1000, v190))
      {
        return result;
      }

      __break(1u);
LABEL_61:
      v159 = sub_1A957D3E8();

      v160 = v185;
      v161 = *(v186 + 8);
      v161(v188, v185);
      v161(v189, v160);
      if (v159)
      {
        goto LABEL_62;
      }
    }
  }

  v130 = (*(v125 + 56) + 16 * v127);
  v132 = *v130;
  v131 = v130[1];

  if (v121 != v132 || v123 != v131)
  {
    goto LABEL_61;
  }

  v133 = v185;
  v134 = *(v186 + 8);
  v134(v188, v185);
  v134(v189, v133);
LABEL_62:
  result = 2000 - v190;
  if (__OFSUB__(2000, v190))
  {
    __break(1u);
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_1A942F9B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v49 = a1;
  v50 = a2;
  v51 = sub_1A957B308();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v51, v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A937829C(&qword_1EB387270, &qword_1A958C630);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v43 = (&v42 - v13);
  v14 = sub_1A937829C(&qword_1EB387278, &unk_1A958C638);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = (&v42 - v21);
  v23 = *a3;
  v42 = v4 + 16;
  v24 = *(v23 + 16);
  v25 = (v10 + 48);
  v47 = (v4 + 32);
  v48 = (v10 + 56);
  v44 = v4;
  v45 = v23;
  v46 = (v4 + 8);

  v27 = 0;
  v28 = v51;
  while (1)
  {
    if (v27 == v24)
    {
      v29 = 1;
      v27 = v24;
      goto LABEL_7;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= *(v45 + 16))
    {
      goto LABEL_16;
    }

    v31 = v43;
    v30 = v44;
    v32 = v45 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27;
    v33 = *(v9 + 48);
    *v43 = v27;
    (*(v30 + 16))(v31 + v33, v32, v51);
    sub_1A93A7460(v31, v19, &qword_1EB387270, &qword_1A958C630);
    v29 = 0;
    ++v27;
LABEL_7:
    (*v48)(v19, v29, 1, v9);
    sub_1A93A7460(v19, v22, &qword_1EB387278, &unk_1A958C638);
    if ((*v25)(v22, 1, v9) == 1)
    {

      v38 = sub_1A957B118();
      v40 = v39;
      if (v38 == sub_1A957B118() && v40 == v41)
      {

        v37 = 0;
      }

      else
      {
        v37 = sub_1A957D3E8();
      }

      return v37 & 1;
    }

    v34 = *v22;
    (*v47)(v8, v22 + *(v9 + 48), v28);
    v35 = sub_1A942E900(v49, v8, v34);
    v36 = sub_1A942E900(v50, v8, v34);
    result = (*v46)(v8, v28);
    if (v35 != v36)
    {

      v37 = v36 < v35;
      return v37 & 1;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A942FDA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v65 = a6;
  v76 = a5;
  v10 = sub_1A957B308();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v75 = &v63 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v63 - v22;
  result = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v63 - v26;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_67;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_68;
  }

  v31 = (a2 - a1) / v29;
  v81 = a1;
  v80 = a4;
  v77 = v29;
  if (v31 >= v30 / v29)
  {
    v33 = v30 / v29 * v29;
    if (a4 < a2 || a2 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v29 = v77;
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
      v29 = v77;
    }

    v44 = a4 + v33;
    if (v33 >= 1)
    {
      v71 = v16;
      v45 = -v29;
      v69 = (v11 + 16);
      v70 = (v11 + 8);
      v46 = a4 + v33;
      v47 = v75;
      v67 = a1;
      v68 = a4;
      v73 = -v29;
      do
      {
        v64 = v44;
        v48 = a2;
        v49 = v44;
        v74 = a2 + v45;
        v72 = a2;
        while (1)
        {
          if (v48 <= a1)
          {
            v81 = v48;
            v79 = v64;
            goto LABEL_65;
          }

          v50 = a3;
          v66 = v49;
          v51 = v73;
          v77 = v46;
          v52 = (v46 + v73);
          v53 = *v69;
          (*v69)(v47, (v46 + v73), v10);
          v54 = v10;
          v55 = v71;
          v53(v71, v74, v54);
          v56 = sub_1A942F9B4(v47, v55, v76);
          if (v78)
          {
            v62 = *v70;
            (*v70)(v55, v54);
            v62(v47, v54);
            v81 = v72;
            v79 = v66;
            goto LABEL_65;
          }

          v57 = v56;
          v58 = v50 + v51;
          v59 = *v70;
          (*v70)(v55, v54);
          v59(v47, v54);
          v10 = v54;
          if (v57)
          {
            break;
          }

          v49 = v52;
          a3 = v50 + v51;
          a1 = v67;
          if (v50 < v77 || v58 >= v77)
          {
            swift_arrayInitWithTakeFrontToBack();
            v47 = v75;
          }

          else
          {
            v47 = v75;
            if (v50 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v52;
          v48 = v72;
          if (v52 <= v68)
          {
            a2 = v72;
            v44 = v52;
            goto LABEL_64;
          }
        }

        a3 = v50 + v51;
        a1 = v67;
        if (v50 < v72 || v58 >= v72)
        {
          a2 = v74;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v75;
          v45 = v73;
        }

        else
        {
          v60 = v50 == v72;
          a2 = v74;
          v47 = v75;
          v45 = v73;
          if (!v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v46 = v77;
        v44 = v66;
      }

      while (v77 > v68);
    }

LABEL_64:
    v81 = a2;
    v79 = v44;
  }

  else
  {
    v32 = v31 * v29;
    if (a4 < a1 || a1 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v75 = (a4 + v32);
    v79 = a4 + v32;
    if (v32 >= 1 && a2 < a3)
    {
      v35 = *(v11 + 16);
      v72 = a3;
      v73 = v35;
      v74 = v11 + 16;
      v36 = (v11 + 8);
      while (1)
      {
        v37 = v73;
        (v73)(v27, a2, v10);
        v37(v23, a4, v10);
        v38 = sub_1A942F9B4(v27, v23, v76);
        if (v78)
        {
          v61 = *v36;
          (*v36)(v23, v10);
          v61(v27, v10);
          goto LABEL_65;
        }

        v39 = v38;
        v40 = a2;
        v41 = *v36;
        (*v36)(v23, v10);
        v41(v27, v10);
        if ((v39 & 1) == 0)
        {
          break;
        }

        v42 = v77;
        a2 = v40 + v77;
        if (a1 < v40 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          if (a1 == v40)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v42 = v77;
LABEL_36:
        a1 += v42;
        v81 = a1;
        if (a4 >= v75 || a2 >= v72)
        {
          goto LABEL_65;
        }
      }

      v42 = v77;
      v43 = a4 + v77;
      a2 = v40;
      if (a1 < a4 || a1 >= v43)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a1 == a4)
        {
LABEL_35:
          v80 = v43;
          a4 = v43;
          goto LABEL_36;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v42 = v77;
      goto LABEL_35;
    }
  }

LABEL_65:
  sub_1A942AC58(&v81, &v80, &v79);

  return 1;
}

uint64_t sub_1A943042C(char **a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v28 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v28 = sub_1A938911C(v28);
  }

  v23 = v7;
  *v7 = v28;
  v9 = v28 + 16;
  v10 = *(v28 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v23 = v28;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v28[16 * v10];
      v13 = *v12;
      v14 = v9;
      v15 = &v9[16 * v10];
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = *(*(sub_1A957B308() - 8) + 72);
      v19 = v11 + v18 * v13;
      v29 = v11 + v18 * v17;
      v7 = (v11 + v18 * v16);

      sub_1A942FDA0(v19, v29, v7, a2, a4, a5);
      if (v6)
      {
        goto LABEL_9;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v20 = *v14;
      if (v10 - 2 >= *v14)
      {
        goto LABEL_11;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v21 = v20 - v10;
      if (v20 < v10)
      {
        goto LABEL_12;
      }

      v9 = v14;
      v10 = v20 - 1;
      memmove(v15, v15 + 16, 16 * v21);
      *v14 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v23 = v28;
    __break(1u);
  }

  return result;
}

uint64_t sub_1A94305D8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v180 = a5;
  v10 = sub_1A957B308();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v166 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v152 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v152 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v152 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v183 = MEMORY[0x1E69E7CC0];
  v179 = a3;
  v39 = a3[1];
  v174 = a6;
  if (v39 >= 1)
  {
    v40 = v39;
    v163 = &v152 - v35;
    v157 = v38;
    v168 = v36;
    v169 = v37;
    v177 = (v11 + 1);
    v178 = v11 + 2;
    v171 = (v11 + 4);
    swift_bridgeObjectRetain_n();
    v41 = a4;
    v42 = 0;
    v182 = MEMORY[0x1E69E7CC0];
    v176 = v10;
    v161 = a1;
    v160 = v41;
    v172 = v11;
    v167 = v19;
    v162 = v25;
    v159 = v31;
    v43 = v41;
    while (1)
    {
      v175 = v40;
      if (v42 + 1 >= v40)
      {
        v63 = v42 + 1;
        v64 = v42;
      }

      else
      {
        v48 = *v179;
        v49 = v11[9];
        v50 = v11;
        v51 = *v179 + v49 * (v42 + 1);
        v52 = v50[2];
        v53 = v163;
        v52(v163, v51, v10);
        v54 = v157;
        v52(v157, v48 + v49 * v42, v10);
        LODWORD(v170) = sub_1A942F9B4(v53, v54, v180);
        if (v181)
        {
          v151 = *v177;
          (*v177)(v54, v10);
          v151(v163, v10);
LABEL_103:
          swift_bridgeObjectRelease_n();
        }

        v173 = v48;
        v55 = *v177;
        (*v177)(v54, v10);
        v55(v163, v10);
        v158 = v42;
        v56 = v42 + 2;
        v57 = (v173 + v49 * (v42 + 2));
        v58 = v49;
        v173 = v49;
        while (v175 != v56)
        {
          v52(v31, v57, v10);
          v59 = v31;
          v60 = v169;
          v52(v169, v51, v10);
          v61 = sub_1A942F9B4(v59, v60, v180);
          if (v181)
          {
            v55(v60, v10);
            v55(v59, v10);
            goto LABEL_103;
          }

          v62 = v61;
          v55(v60, v10);
          v55(v59, v10);
          ++v56;
          v58 = v173;
          v57 += v173;
          v51 += v173;
          v31 = v59;
          if ((v170 ^ v62))
          {
            v63 = v56 - 1;
            goto LABEL_17;
          }
        }

        v63 = v175;
LABEL_17:
        v11 = v172;
        v25 = v162;
        v64 = v158;
        if ((v170 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v63 < v158)
        {
          goto LABEL_124;
        }

        if (v158 < v63)
        {
          v65 = v58 * (v63 - 1);
          v66 = v63 * v58;
          v175 = v63;
          v67 = v63;
          v68 = v158;
          v69 = v158 * v58;
          do
          {
            if (v68 != --v67)
            {
              v70 = *v179;
              if (!*v179)
              {
                goto LABEL_127;
              }

              v71 = *v171;
              (*v171)(v166, v70 + v69, v176);
              if (v69 < v65 || v70 + v69 >= (v70 + v66))
              {
                v10 = v176;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v10 = v176;
                if (v69 != v65)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v71((v70 + v65), v166, v10);
              v58 = v173;
            }

            ++v68;
            v65 -= v58;
            v66 -= v58;
            v69 += v58;
          }

          while (v68 < v67);
          a1 = v161;
          v43 = v160;
          v11 = v172;
          v25 = v162;
          v64 = v158;
          v63 = v175;
        }

        else
        {
LABEL_30:
          a1 = v161;
          v43 = v160;
        }
      }

      v72 = v179[1];
      if (v63 >= v72)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v63, v64))
      {
        goto LABEL_121;
      }

      if (v63 - v64 >= v43)
      {
LABEL_41:
        v74 = v63;
        if (v63 < v64)
        {
          goto LABEL_120;
        }

        goto LABEL_42;
      }

      if (__OFADD__(v64, v43))
      {
        goto LABEL_122;
      }

      if (v64 + v43 >= v72)
      {
        v73 = v179[1];
      }

      else
      {
        v73 = v64 + v43;
      }

      if (v73 < v64)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_127:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_128:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_129;
      }

      if (v63 == v73)
      {
        goto LABEL_41;
      }

      v135 = *v179;
      v136 = v11[9];
      v173 = v11[2];
      v137 = v135 + v136 * (v63 - 1);
      v165 = -v136;
      v158 = v64;
      v138 = v64 - v63;
      v170 = v135;
      v153 = v136;
      v139 = v135 + v63 * v136;
      v164 = v73;
      while (2)
      {
        v175 = v63;
        v154 = v139;
        v155 = v138;
        v156 = v137;
        do
        {
          v140 = v173;
          (v173)(v25, v139, v10);
          v141 = v25;
          v142 = v168;
          v140(v168, v137, v10);
          v143 = sub_1A942F9B4(v141, v142, v180);
          if (v181)
          {
            v149 = *v177;
            (*v177)(v142, v10);
            v149(v141, v10);
            goto LABEL_103;
          }

          v144 = v143;
          v145 = *v177;
          (*v177)(v142, v10);
          v145(v141, v10);
          v25 = v141;
          if ((v144 & 1) == 0)
          {
            break;
          }

          if (!v170)
          {
            goto LABEL_126;
          }

          v146 = *v171;
          v147 = v167;
          (*v171)(v167, v139, v10);
          swift_arrayInitWithTakeFrontToBack();
          v146(v137, v147, v10);
          v137 += v165;
          v139 += v165;
        }

        while (!__CFADD__(v138++, 1));
        v63 = v175 + 1;
        v137 = v156 + v153;
        v138 = v155 - 1;
        v139 = v154 + v153;
        v74 = v164;
        if (v175 + 1 != v164)
        {
          continue;
        }

        break;
      }

      a1 = v161;
      v43 = v160;
      v11 = v172;
      v64 = v158;
      if (v164 < v158)
      {
        goto LABEL_120;
      }

LABEL_42:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v74;
      v76 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v182 = sub_1A9389130(0, *(v182 + 2) + 1, 1, v182);
      }

      v78 = *(v182 + 2);
      v77 = *(v182 + 3);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v182 = sub_1A9389130((v77 > 1), v78 + 1, 1, v182);
      }

      v80 = v182;
      *(v182 + 2) = v79;
      v81 = v80 + 32;
      v82 = &v80[16 * v78 + 32];
      v83 = v164;
      *v82 = v76;
      *(v82 + 1) = v83;
      v183 = v80;
      v175 = *a1;
      if (!v175)
      {
        goto LABEL_128;
      }

      if (v78)
      {
        while (1)
        {
          v84 = v79 - 1;
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v85 = *(v182 + 4);
            v86 = *(v182 + 5);
            v95 = __OFSUB__(v86, v85);
            v87 = v86 - v85;
            v88 = v95;
LABEL_61:
            if (v88)
            {
              goto LABEL_111;
            }

            v101 = &v182[16 * v79];
            v103 = *v101;
            v102 = *(v101 + 1);
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v104;
            if (v104)
            {
              goto LABEL_114;
            }

            v107 = &v81[16 * v84];
            v109 = *v107;
            v108 = *(v107 + 1);
            v95 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v95)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v105, v110))
            {
              goto LABEL_118;
            }

            if (v105 + v110 >= v87)
            {
              if (v87 < v110)
              {
                v84 = v79 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v111 = &v182[16 * v79];
          v113 = *v111;
          v112 = *(v111 + 1);
          v95 = __OFSUB__(v112, v113);
          v105 = v112 - v113;
          v106 = v95;
LABEL_75:
          if (v106)
          {
            goto LABEL_113;
          }

          v114 = &v81[16 * v84];
          v116 = *v114;
          v115 = *(v114 + 1);
          v95 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v95)
          {
            goto LABEL_116;
          }

          if (v117 < v105)
          {
            goto LABEL_6;
          }

LABEL_82:
          if (v84 - 1 >= v79)
          {
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

          v122 = *v179;
          if (!*v179)
          {
            goto LABEL_125;
          }

          v123 = &v81[16 * v84 - 16];
          v124 = *v123;
          v125 = &v81[16 * v84];
          v126 = *(v125 + 1);
          v127 = v11[9];
          v128 = v122 + v127 * *v123;
          v129 = v122 + v127 * *v125;
          v130 = v122 + v127 * v126;
          v131 = v174;

          v132 = v128;
          v133 = v181;
          sub_1A942FDA0(v132, v129, v130, v175, v180, v131);
          v181 = v133;
          if (v133)
          {
            v183 = v182;
            goto LABEL_103;
          }

          if (v126 < v124)
          {
            goto LABEL_106;
          }

          v134 = *(v182 + 2);
          if (v84 > v134)
          {
            goto LABEL_107;
          }

          *v123 = v124;
          *(v123 + 1) = v126;
          if (v84 >= v134)
          {
            goto LABEL_108;
          }

          v79 = v134 - 1;
          memmove(&v81[16 * v84], v125 + 16, 16 * (v134 - 1 - v84));
          *(v182 + 2) = v134 - 1;
          v10 = v176;
          v11 = v172;
          if (v134 <= 2)
          {
LABEL_6:
            v183 = v182;
            a1 = v161;
            v43 = v160;
            goto LABEL_7;
          }
        }

        v89 = &v81[16 * v79];
        v90 = *(v89 - 8);
        v91 = *(v89 - 7);
        v95 = __OFSUB__(v91, v90);
        v92 = v91 - v90;
        if (v95)
        {
          goto LABEL_109;
        }

        v94 = *(v89 - 6);
        v93 = *(v89 - 5);
        v95 = __OFSUB__(v93, v94);
        v87 = v93 - v94;
        v88 = v95;
        if (v95)
        {
          goto LABEL_110;
        }

        v96 = &v182[16 * v79];
        v98 = *v96;
        v97 = *(v96 + 1);
        v95 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v95)
        {
          goto LABEL_112;
        }

        v95 = __OFADD__(v87, v99);
        v100 = v87 + v99;
        if (v95)
        {
          goto LABEL_115;
        }

        if (v100 >= v92)
        {
          v118 = &v81[16 * v84];
          v120 = *v118;
          v119 = *(v118 + 1);
          v95 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v95)
          {
            goto LABEL_119;
          }

          if (v87 < v121)
          {
            v84 = v79 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_7:
      v40 = v179[1];
      v42 = v164;
      v25 = v162;
      v31 = v159;
      if (v164 >= v40)
      {
        goto LABEL_4;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_4:
  v44 = *a1;
  if (*a1)
  {
    v45 = v174;

    v46 = v44;
    v47 = v181;
    sub_1A943042C(&v183, v46, v179, v180, v45);

    v181 = v47;
    goto LABEL_103;
  }

LABEL_129:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1A9431158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v56 = a5;
  v9 = sub_1A957B308();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v51 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v55 = &v43 - v16;
  result = MEMORY[0x1EEE9AC00](v15, v17);
  v21 = &v43 - v20;
  v44 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 56);
    v52 = (v23 - 8);
    v53 = v24;
    v54 = v23;
    v26 = (v23 + 16);
    v27 = v22 + v25 * (a3 - 1);
    v49 = -v25;
    v50 = v22;
    v28 = a1 - a3;
    v43 = v25;
    v29 = v22 + v25 * a3;
    while (2)
    {
      v47 = v27;
      v48 = a3;
      v45 = v29;
      v46 = v28;
      v30 = v27;
      do
      {
        v31 = v21;
        v32 = v21;
        v33 = v53;
        v53(v31, v29, v9);
        v34 = v55;
        v33(v55, v30, v9);
        v21 = v32;
        v35 = sub_1A942F9B4(v32, v34, v56);
        if (v57)
        {
          v42 = *v52;
          (*v52)(v34, v9);
          return (v42)(v32, v9);
        }

        v36 = v35;
        v37 = v34;
        v38 = *v52;
        (*v52)(v37, v9);
        result = (v38)(v32, v9);
        if ((v36 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v39 = *v26;
        v40 = v51;
        (*v26)(v51, v29, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v39)(v30, v40, v9);
        v30 += v49;
        v29 += v49;
      }

      while (!__CFADD__(v28++, 1));
      a3 = v48 + 1;
      v27 = v47 + v43;
      v28 = v46 - 1;
      v29 = v45 + v43;
      if (v48 + 1 != v44)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1A943141C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1A957D388();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A957B308();
        v10 = sub_1A957C518();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_1A957B308() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;

      sub_1A94305D8(v12, v13, a1, v8, a2, a3);

      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
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
    sub_1A9431158(0, v6, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A943159C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(sub_1A957B308() - 8);
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1A942BE9C(v8);
  }

  v9 = v8[2];
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;

  sub_1A943141C(v11, a2, a4);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A943168C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941FA54(v2, v3, v4);
}

uint64_t sub_1A9431748()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A9431798()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A94317E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941C8F0(v2, v3, v4);
}

uint64_t sub_1A9431894()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94318DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A941B258(v2, v3, v4);
}

uint64_t sub_1A9431990()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94178F4(v2, v3);
}

void sub_1A9431A3C()
{
  v1 = *(v0 + 16);
  v2 = sub_1A957C4B8();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1A9431A9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9431ADC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A9431B1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9415E34(v2, v3);
}

uint64_t sub_1A9431C34()
{
  v1 = *(v0 + 16);
  v2 = sub_1A957B1A8();
  v4 = v3;
  if (v2 == sub_1A957B1A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A957D3E8();
  }

  return v7 & 1;
}

uint64_t sub_1A9431CCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A9431D0C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A9417ED0(v3, v4, v5, v2);
}

uint64_t sub_1A9431DF0()
{
  type metadata accessor for SSEVoiceManager();
  v0 = swift_allocObject();
  type metadata accessor for VoiceDatabaseClient();
  v1 = sub_1A938983C();
  result = VoiceDatabaseClient.__allocating_init(readOnly:)(v1 & 1);
  *(v0 + 16) = result;
  qword_1EB3953F8 = v0;
  return result;
}

uint64_t sub_1A9431E44()
{
  v0 = swift_allocObject();
  type metadata accessor for VoiceDatabaseClient();
  v1 = sub_1A938983C();
  *(v0 + 16) = VoiceDatabaseClient.__allocating_init(readOnly:)(v1 & 1);
  return v0;
}

uint64_t *sub_1A9431E94()
{
  if (qword_1EB3953F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB3953F8;
}

uint64_t static SSEVoiceManager.shared.getter()
{
  if (qword_1EB3953F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A9431F40(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1A937829C(&unk_1EB387BC0, &qword_1A9587E30);
  sub_1A957B9D8();
}

uint64_t sub_1A9431FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[112] = a4;
  v4[111] = a3;
  v4[110] = a2;
  v4[109] = a1;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v4[113] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v4[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94320C8, 0, 0);
}

uint64_t sub_1A94320C8()
{
  v17 = v0;
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = *(v0[110] + 16);
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A9587160;
  *(v7 + 32) = *sub_1A9493C84();
  v0[108] = v7;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  v8 = sub_1A957CE08();
  v15 = v0[107];
  sub_1A9431DA8(&v16, v8);

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v4, v3, v2, &v16, &v15, v1);
  v13 = (*v5 + 320);
  v14 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  v0[115] = v10;
  *v10 = v0;
  v10[1] = sub_1A9432324;
  v11 = v0[114];

  return v14(v11);
}

uint64_t sub_1A9432324(uint64_t a1)
{
  v2 = *(*v1 + 920);
  v3 = *(*v1 + 912);
  v5 = *v1;
  *(*v1 + 928) = a1;

  sub_1A9391040(v3);

  return MEMORY[0x1EEE6DFA0](sub_1A9432444, 0, 0);
}

uint64_t sub_1A9432444()
{
  v1 = v0[116];
  v2 = v0[109];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23(v2);
  }

  else
  {
    v3 = v0[116];

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v4 = v0[114];
  v5 = v0[113];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A9432524(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  memcpy((v3 + 24), __src, 0x118uLL);

  sub_1A937B3DC(__dst, &v5);
  sub_1A937829C(&qword_1EB3872B0, &unk_1A9597060);
  sub_1A957B9D8();

  return v5;
}

uint64_t sub_1A94325E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  v4 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9432688, 0, 0);
}

uint64_t sub_1A9432688()
{
  v1 = *(*(v0 + 304) + 16);
  memcpy((v0 + 16), *(v0 + 312), 0x118uLL);
  v6 = (*v1 + 288);
  v7 = (*v6 + **v6);
  v2 = (*v6)[1];
  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_1A94327CC;
  v4 = *(v0 + 320);

  return v7(v4, v0 + 16);
}

uint64_t sub_1A94327CC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A9432A1C;
  }

  else
  {
    v3 = sub_1A94328E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94328E4()
{
  v1 = v0[40];
  v2 = sub_1A957AFD8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[37];
  if (v4 == 1)
  {
    sub_1A937B960(v1, &unk_1EB387B80, qword_1A9587740);
    *v5 = 0;
    v5[1] = 0;
  }

  else
  {
    v6 = sub_1A957AFA8();
    v8 = v7;
    (*(v3 + 8))(v1, v2);
    *v5 = v6;
    v5[1] = v8;
  }

  v9 = v0[40];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A9432A1C()
{
  v1 = v0[37];
  *v1 = 0;
  v1[1] = 0;
  v2 = v0[40];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9432A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v17 - v11;
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(a1 + 24);
    v15 = sub_1A957C688();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v3;
    v16[5] = v14;
    v16[6] = v13;
    v16[7] = a2;
    v16[8] = a3;

    sub_1A93C4B70(0, 0, v12, &unk_1A958C7B8, v16);
  }

  return result;
}

uint64_t sub_1A9432BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[113] = a8;
  v8[112] = a7;
  v8[111] = a6;
  v8[110] = a5;
  v8[109] = a4;
  v9 = sub_1A937829C(&qword_1EB3872B8, &qword_1A958C7F8);
  v8[114] = v9;
  v10 = *(v9 - 8);
  v8[115] = v10;
  v11 = *(v10 + 64) + 15;
  v8[116] = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v8[117] = v12;
  v13 = *(v12 - 8);
  v8[118] = v13;
  v14 = *(v13 + 64) + 15;
  v8[119] = swift_task_alloc();
  v15 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v8[120] = swift_task_alloc();
  v16 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v8[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9432D74, 0, 0);
}

uint64_t sub_1A9432D74()
{
  v17 = v0;
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[111];
  v4 = v0[110];
  v5 = *(v0[109] + 16);
  v0[122] = v5;
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A9587160;
  *(v7 + 32) = *sub_1A9493C84();
  v0[108] = v7;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  v8 = sub_1A957CE08();
  v15 = v0[107];
  sub_1A9431DA8(&v16, v8);

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v4, v3, v2, &v15, &v16, v1);
  v13 = (*v5 + 320);
  v14 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  v0[123] = v10;
  *v10 = v0;
  v10[1] = sub_1A9432FD4;
  v11 = v0[121];

  return v14(v11);
}

uint64_t sub_1A9432FD4(uint64_t a1)
{
  v2 = *(*v1 + 984);
  v3 = *(*v1 + 968);
  v5 = *v1;
  *(*v1 + 992) = a1;

  sub_1A9391040(v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94330F4, 0, 0);
}

uint64_t sub_1A94330F4()
{
  v1 = v0[124];
  if (*(v1 + 16))
  {
    v2 = v0[122];
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v0 + 72, v0 + 2, 0x118uLL);
    v14 = (*v2 + 296);
    v15 = (*v14 + **v14);
    v3 = (*v14)[1];
    v4 = swift_task_alloc();
    v0[125] = v4;
    *v4 = v0;
    v4[1] = sub_1A94332E0;
    v5 = v0[122];
    v6 = v0[119];

    return (v15)(v6, v0 + 72);
  }

  else
  {
    v8 = v0[124];

    v9 = v0[121];
    v10 = v0[120];
    v11 = v0[119];
    v12 = v0[116];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1A94332E0()
{
  v2 = *(*v1 + 1000);
  v5 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = sub_1A9433728;
  }

  else
  {
    v3 = sub_1A94333F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94333F4()
{
  v1 = v0[119];
  v2 = v0[117];
  v3 = v0[116];
  sub_1A957C6F8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[127] = v5;
  *v5 = v0;
  v5[1] = sub_1A94334AC;
  v6 = v0[116];
  v7 = v0[114];

  return MEMORY[0x1EEE6D9C8](v0 + 128, 0, 0, v7);
}

uint64_t sub_1A94334AC()
{
  v1 = *(*v0 + 1016);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94335A8, 0, 0);
}

uint64_t sub_1A94335A8()
{
  if (*(v0 + 1028))
  {
    v1 = *(v0 + 952);
    v2 = *(v0 + 944);
    v3 = *(v0 + 936);
    v4 = *(v0 + 904);
    v5 = *(v0 + 896);
    v6 = (*(*(v0 + 920) + 8))(*(v0 + 928), *(v0 + 912));
    v5(v6);
    sub_1A937B48C(v0 + 16);
    (*(v2 + 8))(v1, v3);
    v7 = *(v0 + 968);
    v8 = *(v0 + 960);
    v9 = *(v0 + 952);
    v10 = *(v0 + 928);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(MEMORY[0x1E69E8678] + 4);
    v14 = swift_task_alloc();
    *(v0 + 1016) = v14;
    *v14 = v0;
    v14[1] = sub_1A94334AC;
    v15 = *(v0 + 928);
    v16 = *(v0 + 912);

    return MEMORY[0x1EEE6D9C8](v0 + 1024, 0, 0, v16);
  }
}

uint64_t sub_1A9433728()
{
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[116];
  sub_1A937B48C((v0 + 2));

  v5 = v0[1];
  v6 = v0[126];

  return v5();
}

uint64_t SSEVoiceManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SSEVoiceManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A943381C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A9431FF4(a1, v4, v5, v6);
}

uint64_t sub_1A94338D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return sub_1A94325E8(a1, v4, v1 + 24);
}

uint64_t sub_1A943397C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A9382328;

  return sub_1A9432BCC(v7, v8, v9, v2, v3, v4, v5, v6);
}

id sub_1A9433AE0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000063, 0x80000001A95C2970, 0);
  qword_1EB3A7BD8 = result;
  return result;
}

id sub_1A9433B6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000083, 0x80000001A95C2C90, 0);
  qword_1EB3A7BE0 = result;
  return result;
}

id sub_1A9433BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD00000000000001CLL, 0x80000001A95C2C70, 0);
  qword_1EB3A7BE8 = result;
  return result;
}

id sub_1A9433C84()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1A943639C(0xD000000000000064, 0x80000001A95C2BD0, 0);
  qword_1EB3A7BF0 = result;
  return result;
}

void *sub_1A9433D10()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_1A9433D54(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *sub_1A9433D9C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1A9433DE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *sub_1A9433E28()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_1A9433E6C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *sub_1A9433F04()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_1A9433F48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1A9434014(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1A94340D8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 65) = a1;
  return result;
}

uint64_t sub_1A9434168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94341BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 320);

  return v3(v4);
}

uint64_t sub_1A9434218()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_1A9434250(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1A943431C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_1A94343AC()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_1A94343E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_1A94344B0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1A9434540()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*v0 + 384))();
  result = sub_1A957C238();
  if (result < v3)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1A957C268();
    result = sub_1A957C268();
    if (result >> 14 >= v5 >> 14)
    {
      v6 = sub_1A957C3B8();
      v7 = MEMORY[0x1AC585090](v6);

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A9434624()
{
  if (((*(*v0 + 288))() & 1) == 0)
  {
    return 0;
  }

  if (qword_1EB395418 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3A7BE8;
  v2 = (*v0 + 408);
  v3 = *v2;
  (*v2)();
  v4 = sub_1A957C0C8();

  (v3)(v5);

  (v3)(v6);
  sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
  sub_1A9436478();
  sub_1A93820F4();
  v7 = sub_1A957CC38();
  v9 = [v1 matchesInString:v4 options:0 range:{v7, v8}];

  sub_1A94364DC();
  v10 = sub_1A957C4C8();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_1A957CE48();
  if (!result)
  {
LABEL_13:

    return 0;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1AC585DE0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  [v13 range];
  v15 = v14;

  result = (v3)();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = sub_1A957C268();
    result = sub_1A957C268();
    if (result >> 14 >= v16 >> 14)
    {
      v17 = sub_1A957C3B8();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = MEMORY[0x1AC585090](v17, v19, v21, v23);

      return v24;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A9434904()
{
  if (qword_1EB395408 != -1)
  {
    swift_once();
  }

  v1 = *(*v0 + 288);
  v2 = qword_1EB3A7BD8;
  if ((v1() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1EB395410 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v3 = qword_1EB3A7BE0;

    v2 = v3;
LABEL_6:
    v4 = (*v0 + 408);
    v5 = *v4;
    (*v4)();
    v6 = sub_1A957C0C8();

    (v5)(v7);

    (v5)(v8);
    sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
    sub_1A9436478();
    sub_1A93820F4();
    v9 = sub_1A957CC38();
    v11 = [v2 matchesInString:v6 options:0 range:{v9, v10}];

    sub_1A94364DC();
    v12 = sub_1A957C4C8();

    if (v12 >> 62)
    {
      break;
    }

    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_8:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1AC585DE0](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;

    (v5)(v15);
    v0 = v16;
    if (([v14 range] & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v17 = sub_1A957C268();
    if (sub_1A957C268() >> 14 >= v17 >> 14)
    {
      v18 = sub_1A957C3B8();
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x1AC585090](v18, v20, v22, v24);

      return v25;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  if (sub_1A957CE48())
  {
    goto LABEL_8;
  }

LABEL_15:

  v25 = (v5)(v26);

  return v25;
}

uint64_t sub_1A9434C48(uint64_t a1)
{
  if ((*(*v1 + 336))())
  {
    sub_1A9379534(a1, v13);
    v3 = (*(*v1 + 376))(v12);
  }

  else
  {
    sub_1A9379534(a1, v13);
    v3 = (*(*v1 + 328))(v12);
  }

  v5 = v3;
  v6 = v4;
  v7 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A93ADC90(0, v7[2] + 1, 1, v7);
    *v6 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A93ADC90((v9 > 1), v10 + 1, 1, v7);
    *v6 = v7;
  }

  v7[2] = v10 + 1;
  sub_1A932D070(v13, &v7[5 * v10 + 4]);
  return v5(v12, 0);
}

void sub_1A9434E04()
{
  if (qword_1EB395420 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB3A7BF0;
  v3 = (*v0 + 408);
  v4 = *v3;
  (*v3)();
  v5 = sub_1A957C0C8();

  (v4)(v6);

  v86[5] = 15;
  v86[0] = (v4)(v7);
  v86[1] = v8;
  sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
  sub_1A9436478();
  sub_1A93820F4();
  v9 = sub_1A957CC38();
  v11 = [v2 matchesInString:v5 options:0 range:{v9, v10}];

  sub_1A94364DC();
  v12 = sub_1A957C4C8();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_42:

    v69 = sub_1A957CA78();
    v1 = sub_1A9445750();
    v70 = sub_1A938983C();
    sub_1A94457AC(v69, v1, v70 & 1, 0xD000000000000080, 0x80000001A95C29E0, 0x6D6F436573726170, 0xEE002928646E616DLL);
LABEL_43:

    return;
  }

  if (!sub_1A957CE48())
  {
    goto LABEL_42;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1AC585DE0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;
  v15 = sub_1A957C0C8();
  [v14 rangeWithName_];

  v4();
  sub_1A957CA08();
  v16 = v4;
  v18 = v17;

  v19 = sub_1A957C0C8();
  v85 = v14;
  [v14 rangeWithName_];

  v4();
  sub_1A957CA08();
  v21 = v20;
  v23 = v22;

  (v4)(v24);
  if (v18)
  {
    __break(1u);
    goto LABEL_79;
  }

  v25 = sub_1A957C3B8();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = MEMORY[0x1AC585090](v25, v27, v29, v31);
  v34 = v33;

  (v16)(v35);
  if (v23)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v36 = sub_1A957C3B8();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  MEMORY[0x1AC585090](v36, v38, v40, v42);

  if (v32 == 1702125938 && v34 == 0xE400000000000000)
  {

    v1 = v85;
LABEL_15:

    v43 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v43 setNumberStyle_];
    v44 = sub_1A957C0C8();

    v45 = [v43 numberFromString_];

    (*(*v0 + 176))(v45);
LABEL_16:
    while (1)
    {
      [v1 range];
      v47 = v46;
      v48 = (*(*v0 + 400))(v86);
      if (!__OFADD__(*v49, v47))
      {
        break;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      v68 = sub_1A957D3E8();

LABEL_48:
      (*(*v0 + 272))(v68 & 1);
    }

    *v49 += v47;
    v50 = v48(v86, 0);
    (*(*v0 + 464))(v50);
    goto LABEL_43;
  }

  v1 = v85;
  if (sub_1A957D3E8())
  {

    goto LABEL_15;
  }

  if (v32 == 1935762032 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v51 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v51 setNumberStyle_];
    v52 = sub_1A957C0C8();

    v53 = [v51 numberFromString_];

    (*(*v0 + 224))(v53);
    goto LABEL_16;
  }

  if (v32 == 1685024112 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v54 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v54 setNumberStyle_];
    v55 = sub_1A957C0C8();

    v56 = [v54 numberFromString_];

    (*(*v0 + 248))(v56);
    goto LABEL_16;
  }

  if (v32 == 1835822966 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v57 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v57 setNumberStyle_];
    v58 = sub_1A957C0C8();

    v59 = [v57 numberFromString_];

    (*(*v0 + 200))(v59);
    goto LABEL_16;
  }

  if ((v32 != 1668181107 || v34 != 0xE400000000000000) && (sub_1A957D3E8() & 1) == 0)
  {

    if (v32 == 1918986339 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      v65 = sub_1A957C1A8();
      v67 = v66;

      if (v65 == 1819440236 && v67 == 0xE400000000000000)
      {

        v68 = 1;
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v32 == 1919053166 && v34 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      v71 = sub_1A957C1A8();
      v73 = v72;

      if (v71 == 1819440236 && v73 == 0xE400000000000000)
      {

        v74 = 1;
      }

      else
      {
        v74 = sub_1A957D3E8();
      }

      (*(*v0 + 296))(v74 & 1);
      goto LABEL_57;
    }

    if (v32 == 1954051171 && v34 == 0xE400000000000000)
    {
    }

    else
    {
      v75 = sub_1A957D3E8();

      if ((v75 & 1) == 0)
      {

        v77 = sub_1A957CA88();
        v78 = 0x80000001A95C2A70;
        v79 = sub_1A9445750();
        v80 = sub_1A938983C();
        goto LABEL_70;
      }
    }

    v21 = sub_1A957C1A8();
    v16 = v76;

    if (v21 == 1886090103 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v21 == 1886090100 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      (*(*v0 + 344))(1);
LABEL_57:
      v1 = v85;
      goto LABEL_16;
    }

    if (v21 == 1685221239 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v21 == 1954047348 && v16 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
    {

      (*(*v0 + 344))(2);
      goto LABEL_57;
    }

LABEL_80:
    if (v21 == 1836216174 && v16 == 0xE400000000000000)
    {

LABEL_84:
      (*(*v0 + 440))(v81);
      (*(*v0 + 344))(0);
      goto LABEL_57;
    }

    v82 = sub_1A957D3E8();

    if (v82)
    {
      goto LABEL_84;
    }

    v77 = sub_1A957CA88();
    v78 = 0x80000001A95C2A90;
    v79 = sub_1A9445750();
    v80 = sub_1A938983C();
LABEL_70:
    v83 = v78;
    v84 = MEMORY[0x1E69E7CC0];
    sub_1A94457AC(v77, v79, v80 & 1, 0xD000000000000080, 0x80000001A95C29E0, 0x6D6F436573726170, 0xEE002928646E616DLL);

    goto LABEL_57;
  }

  v60 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v60 setNumberStyle_];
  v61 = sub_1A957C0C8();
  v62 = [v60 numberFromString_];

  if (v62)
  {

    [v62 floatValue];
    v64 = v63;

    v86[3] = &type metadata for TTSMarkup.Pause;
    v86[4] = &protocol witness table for TTSMarkup.Pause;
    v86[0] = swift_allocObject();
    TTSMarkup.Pause.init(seconds:)(v86[0] + 16, v64 / 1000.0);
    (*(*v0 + 432))(v86);
    sub_1A9378138(v86);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1A9435D00()
{
  v1 = (*(*v0 + 424))();
  v3 = v2;
  result = (*(*v0 + 288))();
  if (result)
  {
    v5 = (*v0 + 416);
    v6 = *v5;
    result = (*v5)();
    if (v7)
    {

      result = (v6)(v8);
      v1 = result;
      v3 = v9;
    }
  }

  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = TTSMarkup.SpeechText.init(_:)(v1, v3, v26);
  v11 = v26[0];
  v12 = v26[1];
  v13 = v26[2];
  v14 = v27;
  v15 = *(*v0 + 168);
  v16 = v15(v10);
  if (v16)
  {

    result = (v15)();
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v17 = result;
    [result floatValue];
  }

  v18 = *(*v0 + 216);
  v19 = v18();
  if (!v19)
  {
LABEL_11:
    v27 = &type metadata for TTSMarkup.SpeechText;
    v28 = &protocol witness table for TTSMarkup.SpeechText;
    v21 = swift_allocObject();
    v26[0] = v21;
    v21[2] = v11;
    v21[3] = v12;
    v21[4] = v13;
    v21[5] = v14;
    v22 = *(*v0 + 432);

    v22(v26);
    sub_1A9378138(v26);

    v23 = sub_1A957C238();

    result = (*(*v0 + 400))(v26);
    if (!__OFADD__(*v24, v23))
    {
      *v24 += v23;
      v25 = (result)(v26, 0);
      return (*(*v0 + 464))(v25);
    }

    __break(1u);
    goto LABEL_14;
  }

  result = v18();
  if (result)
  {
    v20 = result;
    [result floatValue];

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A943602C()
{
  v1 = (*v0 + 408);
  v2 = *v1;
  v3 = (*v1)();
  v5 = v4;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    (v2)(v6);
    if (qword_1EB395420 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB3A7BF0;
    v9 = sub_1A957C0C8();
    sub_1A937829C(&qword_1EB3872C8, &qword_1A958C808);
    sub_1A9436478();
    sub_1A93820F4();
    v10 = sub_1A957CC38();
    v12 = [v8 matchesInString:v9 options:0 range:{v10, v11}];

    sub_1A94364DC();
    v13 = sub_1A957C4C8();

    if (v13 >> 62)
    {
      v14 = sub_1A957CE48();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = *v0;
    if (v14 < 1)
    {
      return (*(v16 + 456))(v15);
    }

    else
    {
      return (*(v16 + 448))(v15);
    }
  }

  else
  {
    v18 = *(*v0 + 440);

    return v18();
  }
}

double PTParser.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 72) = MEMORY[0x1E69E7CC0];
  *(v4 + 80) = 0;
  *(v4 + 88) = v6;
  *(v4 + 96) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return result;
}

uint64_t PTParser.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = 0;
  *(v2 + 88) = v3;
  *(v2 + 96) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PTParser.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return v0;
}

uint64_t PTParser.__deallocating_deinit()
{
  PTParser.deinit();

  return swift_deallocClassInstance();
}

id sub_1A943639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A957C0C8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1A9436478()
{
  result = qword_1EB3872D0;
  if (!qword_1EB3872D0)
  {
    sub_1A93A7B68(&qword_1EB3872C8, &qword_1A958C808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3872D0);
  }

  return result;
}

unint64_t sub_1A94364DC()
{
  result = qword_1EB3872D8;
  if (!qword_1EB3872D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3872D8);
  }

  return result;
}

unint64_t sub_1A943652C()
{
  result = qword_1EB3872E0;
  if (!qword_1EB3872E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3872E0);
  }

  return result;
}

uint64_t sub_1A94367A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1769105779;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x636E6575716F6C65;
    }

    else
    {
      v4 = 0x6C61746E6963616DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE90000000000006BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65636E65726563;
    }

    else
    {
      v4 = 1769105779;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x636E6575716F6C65;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x6C61746E6963616DLL;
    v8 = 0xE90000000000006BLL;
  }

  if (a2)
  {
    v2 = 0x65636E65726563;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A94368E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  for (i = (a2 + 32); ; ++i)
  {
    v8 = *v3++;
    v7 = v8;
    v9 = *i;
    v10 = v8 >> 61;
    if ((v8 >> 61) <= 2)
    {
      break;
    }

    v11 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v10 == 3)
    {
      if (v9 >> 61 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_6;
    }

    if (v10 == 4)
    {
      if (v9 >> 61 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_6;
    }

    if (v9 != 0xA000000000000000)
    {
      goto LABEL_50;
    }

LABEL_7:
    if (!--v2)
    {
      return 1;
    }
  }

  if (!v10)
  {
    if (v9 >> 61)
    {
      goto LABEL_49;
    }

    v15 = *(v7 + 16) == *(v9 + 16) && *(v7 + 24) == *(v9 + 24);
    if (!v15 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  v11 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  v12 = v9 >> 61;
  if (v10 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_49;
    }

    if (*(v11 + 16) > 1u)
    {
      if (*(v11 + 16) == 2)
      {
        v14 = 0x636E6575716F6C65;
        v13 = 0xE900000000000065;
      }

      else
      {
        v13 = 0xE90000000000006BLL;
        v14 = 0x6C61746E6963616DLL;
      }
    }

    else if (*(v11 + 16))
    {
      v13 = 0xE700000000000000;
      v14 = 0x65636E65726563;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1769105779;
    }

    v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v17 = 0xE90000000000006BLL;
        if (v14 != 0x6C61746E6963616DLL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v17 = 0xE900000000000065;
      if (v14 == 0x636E6575716F6C65)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE400000000000000;
        if (v14 != 1769105779)
        {
          goto LABEL_46;
        }

LABEL_44:
        if (v13 == v17)
        {

          swift_retain_n();

          goto LABEL_7;
        }

        goto LABEL_46;
      }

      v17 = 0xE700000000000000;
      if (v14 == 0x65636E65726563)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    v18 = sub_1A957D3E8();

    swift_retain_n();

    if ((v18 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v12 == 2)
  {
LABEL_6:
    v5 = *(v11 + 16);
    v6 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v5) = sub_1A94368E8(v5, v6);

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

LABEL_49:

LABEL_50:

  return 0;
}

uint64_t sub_1A9436C28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1A9441F50(v24, v15);
    sub_1A9441F50(v27, v15);
    v13 = _s12TextToSpeech16PronuncationRuleV2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1A9441F88(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1A9441F88(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1A9436D44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v32 = *(result + 16);
  v33 = 0;
  v22 = a2 + 32;
  v23 = result + 32;
  while (v33 != v32)
  {
    v3 = (v23 + 40 * v33);
    v4 = *v3;
    v5 = (v22 + 40 * v33);
    v6 = *v5;
    v7 = *(*v3 + 16);
    if (v7 != *(*v5 + 16))
    {
      return 0;
    }

    v25 = v3[1];
    v31 = v3[2];
    v28 = v3[4];
    v29 = v3[3];
    v24 = v5[1];
    v30 = v5[2];
    if (v7)
    {
      v8 = v4 == v6;
    }

    else
    {
      v8 = 1;
    }

    v26 = v5[4];
    v27 = v5[3];
    if (!v8)
    {
      v11 = 0;
      v34 = *v5;
      v35 = *v3;
      while (v7)
      {
        result = *(v4 + v11 + 32);
        v12 = *(v4 + v11 + 48);
        v13 = *(v4 + v11 + 56);
        v37 = *(v4 + v11 + 64);
        v14 = *(v4 + v11 + 72);
        v36 = *(v4 + v11 + 80);
        v15 = *(v6 + v11 + 48);
        v16 = *(v6 + v11 + 56);
        v17 = *(v6 + v11 + 64);
        v18 = *(v6 + v11 + 72);
        v19 = *(v6 + v11 + 80);
        if (result != *(v6 + v11 + 32) || *(v4 + v11 + 40) != *(v6 + v11 + 40))
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v12 == v15 && v13 == v16)
        {
          if (v37 != v17)
          {
            return 0;
          }
        }

        else
        {
          v20 = sub_1A957D3E8();
          result = 0;
          if (v20 & 1) == 0 || ((v37 ^ v17))
          {
            return result;
          }
        }

        if (v14 != v18 || v36 != v19)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v11 += 56;
        --v7;
        v6 = v34;
        v4 = v35;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    if (v31)
    {
      v9 = v32;
      if (!v30)
      {
        return 0;
      }

      v10 = v25 == v24 && v31 == v30;
      if (!v10 && (sub_1A957D3E8() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v9 = v32;
      if (v30)
      {
        return 0;
      }
    }

    v21 = v29 == v27 && v28 == v26;
    if (!v21 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    result = 1;
    if (++v33 == v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9436FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v17 = *(a1 + i + 64);
      v6 = *(a1 + i + 72);
      v16 = *(a1 + i + 80);
      v7 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v9 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v10 = *(a2 + i + 80);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if (v4 == v7 && v5 == v8)
      {
        if (v17 != v9)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1A957D3E8();
        result = 0;
        if (v12 & 1) == 0 || ((v17 ^ v9))
        {
          return result;
        }
      }

      if ((v6 != v11 || v16 != v10) && (sub_1A957D3E8() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A9437104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v8 = *v3++;
      v7 = v8;
      v9 = *i;
      v10 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        break;
      }

      if (v10)
      {
        if (v9 >> 62 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v9 >> 62)
      {
        return 0;
      }

      v11 = *(v7 + 24);
      v12 = *(v7 + 16);
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      v15 = sub_1A957C0F8();
      v17 = v16;
      if (v15 == sub_1A957C0F8() && v17 == v18)
      {
        swift_retain_n();

        if (v11 != v14)
        {
          return 0;
        }
      }

      else
      {
        v20 = sub_1A957D3E8();
        swift_retain_n();

        result = 0;
        if ((v20 & 1) == 0 || v11 != v14)
        {
          return result;
        }
      }

LABEL_7:
      if (!--v2)
      {
        return 1;
      }
    }

    if (v10 == 2)
    {
      if (v9 >> 62 != 2)
      {
        return 0;
      }
    }

    else if (v9 >> 62 != 3)
    {
      return 0;
    }

LABEL_6:
    v5 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v5) = sub_1A9437104(v5, v6);

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1A9437314(uint64_t a1)
{
  v2 = sub_1A94413F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437350(uint64_t a1)
{
  v2 = sub_1A94413F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A943738C()
{
  v1 = 0x7053664F74726170;
  v2 = 29295;
  if (*v0 != 2)
  {
    v2 = 7630702;
  }

  if (*v0)
  {
    v1 = 6581857;
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

uint64_t sub_1A94373F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9444A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9437418(uint64_t a1)
{
  v2 = sub_1A944121C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437454(uint64_t a1)
{
  v2 = sub_1A944121C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9437490(uint64_t a1)
{
  v2 = sub_1A9441270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94374CC(uint64_t a1)
{
  v2 = sub_1A9441270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9437514(uint64_t a1)
{
  v2 = sub_1A944139C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9437550(uint64_t a1)
{
  v2 = sub_1A944139C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A943758C()
{
  if (*v0)
  {
    result = 0x61747265436E696DLL;
  }

  else
  {
    result = 6775156;
  }

  *v0;
  return result;
}

uint64_t sub_1A94375C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61747265436E696DLL && a2 == 0xEC00000079746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A94376A8(uint64_t a1)
{
  v2 = sub_1A9441444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94376E4(uint64_t a1)
{
  v2 = sub_1A9441444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostMatchRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3872E8, &qword_1A958C910);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v46 = &v41 - v6;
  v47 = sub_1A937829C(&qword_1EB3872F0, &qword_1A958C918);
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47, v8);
  v10 = &v41 - v9;
  v43 = sub_1A937829C(&qword_1EB3872F8, &qword_1A958C920);
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43, v12);
  v14 = &v41 - v13;
  v44 = sub_1A937829C(&qword_1EB387300, &qword_1A958C928);
  v42 = *(v44 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44, v16);
  v18 = &v41 - v17;
  v19 = sub_1A937829C(&qword_1EB387308, &qword_1A958C930);
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v41 - v22;
  v24 = *v1;
  v25 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944121C();
  sub_1A957D598();
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v26 == 2)
    {
      v33 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v54) = 2;
      sub_1A944139C();
      v29 = v52;
      v30 = v23;
      sub_1A957D288();
      v54 = v33;
      sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
      sub_1A94412C4();
      v34 = v47;
      sub_1A957D338();
      v35 = *(v45 + 8);
      v36 = v10;
LABEL_11:
      v35(v36, v34);
      return (*(v51 + 8))(v30, v29);
    }

    v39 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v54) = 3;
    sub_1A9441270();
    v14 = v46;
    v29 = v52;
    v30 = v23;
    sub_1A957D288();
    v54 = v39;
    sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
    sub_1A94412C4();
    v34 = v49;
    sub_1A957D338();
    v38 = v48;
LABEL_10:
    v35 = *(v38 + 8);
    v36 = v14;
    goto LABEL_11;
  }

  if (v26)
  {
    v37 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v54) = 1;
    sub_1A94413F0();
    v29 = v52;
    v30 = v23;
    sub_1A957D288();
    v54 = v37;
    sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
    sub_1A94412C4();
    v34 = v43;
    sub_1A957D338();
    v38 = v41;
    goto LABEL_10;
  }

  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  LOBYTE(v54) = 0;
  sub_1A9441444();
  v29 = v52;
  v30 = v23;
  sub_1A957D288();
  v54 = v27;
  v53 = 0;
  type metadata accessor for NLTag(0);
  sub_1A9441598(&qword_1EB387328, type metadata accessor for NLTag);
  v31 = v44;
  v32 = v50;
  sub_1A957D338();
  if (!v32)
  {
    LOBYTE(v54) = 1;
    sub_1A957D318();
  }

  (*(v42 + 8))(v18, v31);
  return (*(v51 + 8))(v30, v29);
}

uint64_t PostMatchRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v4 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = *(v3 + 16);
      v6 = *(v3 + 24);
      MEMORY[0x1AC5863C0](0);
      sub_1A957C0F8();
      sub_1A957C228();

      return sub_1A957D528();
    }

    v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = 1;
  }

  MEMORY[0x1AC5863C0](v9);

  return sub_1A9440B40(a1, v8);
}

uint64_t PostMatchRule.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v68 = a2;
  v71 = sub_1A937829C(&qword_1EB387330, &qword_1A958C940);
  v67 = *(v71 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v71, v4);
  v70 = &v59 - v5;
  v64 = sub_1A937829C(&qword_1EB387338, &qword_1A958C948);
  v66 = *(v64 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64, v7);
  v69 = &v59 - v8;
  v9 = sub_1A937829C(&qword_1EB387340, &qword_1A958C950);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v59 - v13;
  v15 = sub_1A937829C(&qword_1EB387348, &qword_1A958C958);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v18 = sub_1A937829C(&qword_1EB387350, &unk_1A958C960);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v59 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v73 = a1;
  sub_1A93780F4(a1, v25);
  sub_1A944121C();
  v26 = v72;
  sub_1A957D588();
  if (!v26)
  {
    v60 = v15;
    v61 = 0;
    v28 = v69;
    v27 = v70;
    v29 = v71;
    v72 = v19;
    v30 = v23;
    v31 = sub_1A957D268();
    v32 = v31;
    v33 = *(v31 + 16);
    if (v33)
    {
      v34 = *(v31 + 32);
      if (v33 == 1 && v34 != 4)
      {
        if (*(v31 + 32) > 1u)
        {
          if (v34 != 2)
          {
            v79 = 3;
            sub_1A9441270();
            v40 = v30;
            v49 = v61;
            sub_1A957D178();
            v42 = v72;
            v50 = v68;
            if (!v49)
            {
              v69 = v32;
              v54 = swift_allocObject();
              sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
              sub_1A94414C0();
              sub_1A957D238();
              (*(v67 + 8))(v27, v29);
              (*(v42 + 8))(v40, v18);
              swift_unknownObjectRelease();
              *v50 = v54 | 0xC000000000000000;
              return sub_1A9378138(v73);
            }

            goto LABEL_19;
          }

          v78 = 2;
          sub_1A944139C();
          v43 = v28;
          v40 = v30;
          v44 = v61;
          sub_1A957D178();
          v42 = v72;
          if (v44)
          {
LABEL_19:
            (*(v42 + 8))(v40, v18);
            goto LABEL_20;
          }

          v45 = swift_allocObject();
          sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
          sub_1A94414C0();
          v46 = v64;
          sub_1A957D238();
          (*(v66 + 8))(v43, v46);
          (*(v42 + 8))(v40, v18);
          swift_unknownObjectRelease();
          v55 = v45 | 0x8000000000000000;
        }

        else if (*(v31 + 32))
        {
          v77 = 1;
          sub_1A94413F0();
          v47 = v14;
          v48 = v61;
          sub_1A957D178();
          if (v48)
          {
            (*(v72 + 8))(v30, v18);
LABEL_20:
            swift_unknownObjectRelease();
            return sub_1A9378138(v73);
          }

          v52 = swift_allocObject();
          sub_1A937829C(&qword_1EB387310, &qword_1A958C938);
          sub_1A94414C0();
          v53 = v62;
          sub_1A957D238();
          (*(v63 + 8))(v47, v53);
          (*(v72 + 8))(v30, v18);
          swift_unknownObjectRelease();
          v55 = v52 | 0x4000000000000000;
        }

        else
        {
          v76 = 0;
          sub_1A9441444();
          v40 = v30;
          v41 = v61;
          sub_1A957D178();
          if (v41)
          {
            v42 = v72;
            goto LABEL_19;
          }

          v55 = swift_allocObject();
          type metadata accessor for NLTag(0);
          v75 = 0;
          sub_1A9441598(&qword_1EB387368, type metadata accessor for NLTag);
          v51 = v60;
          sub_1A957D238();
          v74 = 1;
          sub_1A957D218();
          v57 = v56;
          (*(v65 + 8))(0, v51);
          (*(v72 + 8))(v30, v18);
          swift_unknownObjectRelease();
          *(v55 + 24) = v57;
        }

        *v68 = v55;
        return sub_1A9378138(v73);
      }
    }

    v36 = sub_1A957CF58();
    swift_allocError();
    v38 = v37;
    v39 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v38 = &type metadata for PostMatchRule;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v72 + 8))(v30, v18);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v73);
}

TextToSpeech::RulesetTargetSynthesizer_optional __swiftcall RulesetTargetSynthesizer.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RulesetTargetSynthesizer.rawValue.getter()
{
  v1 = 1769105779;
  v2 = 0x636E6575716F6C65;
  if (*v0 != 2)
  {
    v2 = 0x6C61746E6963616DLL;
  }

  if (*v0)
  {
    v1 = 0x65636E65726563;
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

void sub_1A94389A4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1769105779;
  v4 = 0x636E6575716F6C65;
  v5 = 0xE900000000000065;
  if (*v1 != 2)
  {
    v4 = 0x6C61746E6963616DLL;
    v5 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = 0x65636E65726563;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1A9438AD0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9438B90()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9438C3C()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9438D0C(uint64_t a1)
{
  v2 = sub_1A9441984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438D48(uint64_t a1)
{
  v2 = sub_1A9441984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438D84(uint64_t a1)
{
  v2 = sub_1A9441930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438DC0(uint64_t a1)
{
  v2 = sub_1A9441930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A9438DFC()
{
  v1 = *v0;
  v2 = 0x69736568746E7973;
  v3 = 6581857;
  v4 = 29295;
  if (v1 != 4)
  {
    v4 = 7630702;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 7105633;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9438E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9444BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9438EC4(uint64_t a1)
{
  v2 = sub_1A944175C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438F00(uint64_t a1)
{
  v2 = sub_1A944175C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438F3C(uint64_t a1)
{
  v2 = sub_1A94417B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9438F78(uint64_t a1)
{
  v2 = sub_1A94417B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9438FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9439038(uint64_t a1)
{
  v2 = sub_1A94418DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9439074(uint64_t a1)
{
  v2 = sub_1A94418DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94390D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69736568746E7973 && a2 == 0xEB0000000072657ALL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A943915C(uint64_t a1)
{
  v2 = sub_1A94419D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9439198(uint64_t a1)
{
  v2 = sub_1A94419D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94391E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A943926C(uint64_t a1)
{
  v2 = sub_1A9441A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94392A8(uint64_t a1)
{
  v2 = sub_1A9441A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RulesetActivationRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387370, &qword_1A958C970);
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v68 = &v55 - v6;
  v7 = sub_1A937829C(&qword_1EB387378, &qword_1A958C978);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v65 = &v55 - v10;
  v11 = sub_1A937829C(&qword_1EB387380, &qword_1A958C980);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v62 = &v55 - v14;
  v15 = sub_1A937829C(&qword_1EB387388, &qword_1A958C988);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v57 = &v55 - v18;
  v19 = sub_1A937829C(&qword_1EB387390, &qword_1A958C990);
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v55 - v22;
  v24 = sub_1A937829C(&qword_1EB387398, &qword_1A958C998);
  v56 = *(v24 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v55 - v27;
  v29 = sub_1A937829C(&qword_1EB3873A0, &qword_1A958C9A0);
  v72 = *(v29 - 8);
  v73 = v29;
  v30 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v55 - v32;
  v34 = *v1;
  v35 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944175C();
  v71 = v33;
  sub_1A957D598();
  v36 = v34 >> 61;
  if ((v34 >> 61) > 2)
  {
    if (v36 == 3)
    {
      v50 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v74) = 4;
      sub_1A94418DC();
      v42 = v65;
      v38 = v73;
      v39 = v71;
      sub_1A957D288();
      v74 = v50;
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441804();
      v43 = v67;
      sub_1A957D338();
      v44 = v66;
    }

    else
    {
      if (v36 != 4)
      {
        LOBYTE(v74) = 2;
        sub_1A9441984();
        v52 = v57;
        v53 = v73;
        v54 = v71;
        sub_1A957D288();
        (*(v60 + 8))(v52, v61);
        return (*(v72 + 8))(v54, v53);
      }

      v41 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v74) = 5;
      sub_1A94417B0();
      v42 = v68;
      v38 = v73;
      v39 = v71;
      sub_1A957D288();
      v74 = v41;
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441804();
      v43 = v70;
      sub_1A957D338();
      v44 = v69;
    }

    goto LABEL_11;
  }

  if (!v36)
  {
    v45 = *(v34 + 16);
    v46 = *(v34 + 24);
    LOBYTE(v74) = 0;
    sub_1A9441A80();
    v47 = v73;
    v48 = v71;
    sub_1A957D288();
    sub_1A957D2E8();
    (*(v56 + 8))(v28, v24);
    return (*(v72 + 8))(v48, v47);
  }

  if (v36 != 1)
  {
    v51 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v74) = 3;
    sub_1A9441930();
    v42 = v62;
    v38 = v73;
    v39 = v71;
    sub_1A957D288();
    v74 = v51;
    sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441804();
    v43 = v64;
    sub_1A957D338();
    v44 = v63;
LABEL_11:
    (*(v44 + 8))(v42, v43);
    return (*(v72 + 8))(v39, v38);
  }

  v37 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v74) = 1;
  sub_1A94419D8();
  v38 = v73;
  v39 = v71;
  sub_1A957D288();
  LOBYTE(v74) = v37;
  sub_1A9441A2C();
  v40 = v59;
  sub_1A957D338();
  (*(v58 + 8))(v23, v40);
  return (*(v72 + 8))(v39, v38);
}

uint64_t RulesetActivationRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v14 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1AC5863C0](4);
      result = MEMORY[0x1AC5863C0](*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 32);
        do
        {
          v17 = *v16++;

          RulesetActivationRule.hash(into:)(a1);

          --v15;
        }

        while (v15);
      }
    }

    else if (v4 == 4)
    {
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1AC5863C0](5);
      result = MEMORY[0x1AC5863C0](*(v7 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 32);
        do
        {
          v11 = *v10++;

          RulesetActivationRule.hash(into:)(a1);

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      return MEMORY[0x1AC5863C0](2);
    }
  }

  else if (v4)
  {
    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 1)
    {
      v6 = *(v5 + 16);
      MEMORY[0x1AC5863C0](1);
      sub_1A957C228();
    }

    else
    {
      v18 = *(v5 + 16);
      MEMORY[0x1AC5863C0](3);
      result = MEMORY[0x1AC5863C0](*(v18 + 16));
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = (v18 + 32);
        do
        {
          v21 = *v20++;

          RulesetActivationRule.hash(into:)(a1);

          --v19;
        }

        while (v19);
      }
    }
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }

  return result;
}

uint64_t sub_1A9439D00(void (*a1)(void *))
{
  v4[9] = *v1;
  sub_1A957D4F8();
  a1(v4);
  return sub_1A957D548();
}

uint64_t RulesetActivationRule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v93 = sub_1A937829C(&qword_1EB3873C8, &qword_1A958C9B0);
  v95 = *(v93 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93, v4);
  v100 = &v82 - v5;
  v91 = sub_1A937829C(&qword_1EB3873D0, &qword_1A958C9B8);
  v94 = *(v91 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91, v7);
  v99 = &v82 - v8;
  v90 = sub_1A937829C(&qword_1EB3873D8, &qword_1A958C9C0);
  v92 = *(v90 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v90, v10);
  v98 = &v82 - v11;
  v88 = sub_1A937829C(&qword_1EB3873E0, &qword_1A958C9C8);
  v86 = *(v88 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88, v13);
  v96 = &v82 - v14;
  v87 = sub_1A937829C(&qword_1EB3873E8, &qword_1A958C9D0);
  v89 = *(v87 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87, v16);
  v18 = &v82 - v17;
  v19 = sub_1A937829C(&qword_1EB3873F0, &qword_1A958C9D8);
  v85 = *(v19 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v82 - v22;
  v24 = sub_1A937829C(&qword_1EB3873F8, &qword_1A958C9E0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v82 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v102 = a1;
  sub_1A93780F4(a1, v30);
  sub_1A944175C();
  v32 = v101;
  sub_1A957D588();
  if (!v32)
  {
    v82 = v19;
    v83 = 0;
    v33 = v18;
    v34 = v98;
    v35 = v99;
    v36 = v100;
    v84 = v25;
    v101 = v24;
    v37 = sub_1A957D268();
    v38 = v37;
    if (*(v37 + 16) != 1 || (v39 = *(v37 + 32), v39 == 6))
    {
      v44 = sub_1A957CF58();
      swift_allocError();
      v46 = v45;
      v47 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v46 = &type metadata for RulesetActivationRule;
      v48 = v101;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v84 + 8))(v29, v48);
      goto LABEL_10;
    }

    if (*(v37 + 32) <= 2u)
    {
      if (*(v37 + 32))
      {
        if (v39 == 1)
        {
          v104 = 1;
          sub_1A94419D8();
          v40 = v33;
          v41 = v101;
          v42 = v83;
          sub_1A957D178();
          v43 = v84;
          if (v42)
          {
            (*(v84 + 8))(v29, v41);
LABEL_10:
            swift_unknownObjectRelease();
            return sub_1A9378138(v102);
          }

          v74 = swift_allocObject();
          sub_1A9441BAC();
          v75 = v87;
          sub_1A957D238();
          (*(v89 + 8))(v40, v75);
          (*(v43 + 8))(v29, v101);
          swift_unknownObjectRelease();
          v81 = v74 | 0x2000000000000000;
LABEL_30:
          *v97 = v81;
          return sub_1A9378138(v102);
        }

        v105 = 2;
        sub_1A9441984();
        v65 = v96;
        v66 = v101;
        v67 = v83;
        sub_1A957D178();
        v68 = v84;
        if (v67)
        {
          (*(v84 + 8))(v29, v66);
          swift_unknownObjectRelease();
          return sub_1A9378138(v102);
        }

        (*(v86 + 8))(v65, v88);
        (*(v68 + 8))(v29, v66);
        swift_unknownObjectRelease();
        v70 = 0xA000000000000000;
      }

      else
      {
        v103 = 0;
        sub_1A9441A80();
        v56 = v23;
        v57 = v29;
        v58 = v101;
        v59 = v83;
        sub_1A957D178();
        if (v59)
        {
          (*(v84 + 8))(v57, v58);
          goto LABEL_10;
        }

        v70 = swift_allocObject();
        v71 = v82;
        v78 = sub_1A957D1E8();
        v80 = v79;
        (*(v85 + 8))(v56, v71);
        (*(v84 + 8))(v57, v58);
        swift_unknownObjectRelease();
        *(v70 + 16) = v78;
        *(v70 + 24) = v80;
      }

      *v97 = v70;
      return sub_1A9378138(v102);
    }

    v50 = v97;
    if (v39 != 3)
    {
      v51 = v84;
      v52 = v101;
      if (v39 == 4)
      {
        v107 = 4;
        sub_1A94418DC();
        v53 = v83;
        sub_1A957D178();
        if (!v53)
        {
          v54 = swift_allocObject();
          sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
          sub_1A9441AD4();
          v55 = v91;
          sub_1A957D238();
          (*(v94 + 8))(v35, v55);
          (*(v51 + 8))(v29, v52);
          swift_unknownObjectRelease();
          v81 = v54 | 0x6000000000000000;
          goto LABEL_30;
        }
      }

      else
      {
        v108 = 5;
        sub_1A94417B0();
        v69 = v83;
        sub_1A957D178();
        if (!v69)
        {
          v99 = v38;
          v76 = swift_allocObject();
          sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
          sub_1A9441AD4();
          v77 = v93;
          sub_1A957D238();
          (*(v95 + 8))(v36, v77);
          (*(v51 + 8))(v29, v52);
          swift_unknownObjectRelease();
          v81 = v76 | 0x8000000000000000;
          goto LABEL_30;
        }
      }

      (*(v51 + 8))(v29, v52);
      goto LABEL_10;
    }

    v106 = 3;
    sub_1A9441930();
    v60 = v34;
    v61 = v29;
    v62 = v101;
    v63 = v83;
    sub_1A957D178();
    v64 = v84;
    if (v63)
    {
      (*(v84 + 8))(v61, v62);
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = v38;
      v100 = v61;
      v72 = swift_allocObject();
      sub_1A937829C(&qword_1EB3873A8, &qword_1A958C9A8);
      sub_1A9441AD4();
      v73 = v90;
      sub_1A957D238();
      (*(v92 + 8))(v60, v73);
      (*(v64 + 8))(v100, v62);
      swift_unknownObjectRelease();
      *v50 = v72 | 0x4000000000000000;
    }
  }

  return sub_1A9378138(v102);
}

uint64_t sub_1A943AA4C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[9] = *v3;
  sub_1A957D4F8();
  a3(v6);
  return sub_1A957D548();
}

uint64_t sub_1A943AABC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_1A957D4F8();
  a4(v7);
  return sub_1A957D548();
}

TextToSpeech::PronuncationRule::ReplacementType_optional __swiftcall PronuncationRule.ReplacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PronuncationRule.ReplacementType.rawValue.getter()
{
  if (*v0)
  {
    return 6385769;
  }

  else
  {
    return 7823730;
  }
}

uint64_t sub_1A943ABA4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6385769;
  }

  else
  {
    v2 = 7823730;
  }

  if (*a2)
  {
    v3 = 6385769;
  }

  else
  {
    v3 = 7823730;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A957D3E8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A943AC1C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A957D158();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1A943AC7C(uint64_t *a1@<X8>)
{
  v2 = 7823730;
  if (*v1)
  {
    v2 = 6385769;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1A943AD54()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A943ADBC()
{
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A943AE08()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t PronuncationRule.regex.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PronuncationRule.regex.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PronuncationRule.replacement.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PronuncationRule.replacement.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PronuncationRule.postMatch.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1A93B73E0(v2);
}

uint64_t PronuncationRule.postMatch.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1A93B7494(*(v1 + 40));
  *(v1 + 40) = v2;
  return result;
}

uint64_t PronuncationRule.notes.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PronuncationRule.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PronuncationRule.init(regex:replacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 256;
  *(a5 + 40) = 0xF000000000000007;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A943B0FC()
{
  v1 = *v0;
  v2 = 0x7865676572;
  v3 = 0x64656C62616E65;
  v4 = 0x6374614D74736F70;
  if (v1 != 4)
  {
    v4 = 0x7365746F6ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6563616C706572;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A943B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9444DB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A943B1F0(uint64_t a1)
{
  v2 = sub_1A9441E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943B22C(uint64_t a1)
{
  v2 = sub_1A9441E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PronuncationRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387418, &qword_1A958C9E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v22 = v1[3];
  v23 = v11;
  LODWORD(v11) = *(v1 + 32);
  v20 = *(v1 + 33);
  v21 = v11;
  v12 = v1[5];
  v18[1] = v1[6];
  v19 = v12;
  v18[0] = v1[7];
  v13 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A9441E54();
  sub_1A957D598();
  v32 = 0;
  v14 = v24;
  sub_1A957D2E8();
  if (!v14)
  {
    v16 = v21;
    v17 = v19;
    v31 = 1;
    sub_1A957D2E8();
    v30 = v16;
    v29 = 2;
    sub_1A9441EA8();
    sub_1A957D338();
    v28 = 3;
    sub_1A957D2F8();
    v25 = v17;
    v27 = 4;
    sub_1A93B73E0(v17);
    sub_1A9441348();
    sub_1A957D2B8();
    sub_1A93B7494(v25);
    v26 = 5;
    sub_1A957D2E8();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t PronuncationRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v10 = v1[5];
  v9 = v1[6];
  v11 = v1[7];
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957C228();

  sub_1A957D518();
  sub_1A957D518();
  if ((~v10 & 0xF000000000000007) != 0)
  {

    PostMatchRule.hash(into:)(a1);
  }

  return sub_1A957C228();
}

uint64_t PronuncationRule.hashValue.getter()
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t PronuncationRule.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387428, &qword_1A958C9F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A9441E54();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(a1);
    return sub_1A93B7494(0xF000000000000007);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v12 = sub_1A957D1E8();
    v14 = v13;
    v31 = v12;
    LOBYTE(v35[0]) = 1;
    *&v30 = sub_1A957D1E8();
    *(&v30 + 1) = v15;
    LOBYTE(v32[0]) = 2;
    sub_1A9441EFC();
    sub_1A957D238();
    v16 = LOBYTE(v35[0]);
    LOBYTE(v35[0]) = 3;
    v41 = sub_1A957D1F8();
    LOBYTE(v32[0]) = 4;
    sub_1A9441544();
    sub_1A957D1B8();
    v29 = v16;
    v17 = v35[0];
    sub_1A93B7494(0xF000000000000007);
    v42 = 5;
    v18 = sub_1A957D1E8();
    v41 &= 1u;
    v19 = v18;
    v20 = v10;
    v22 = v21;
    (*(v6 + 8))(v20, v5);
    v24 = *(&v30 + 1);
    v23 = v31;
    *&v32[0] = v31;
    *(&v32[0] + 1) = v14;
    v32[1] = v30;
    LOBYTE(v33) = v29;
    BYTE1(v33) = v41;
    *(&v33 + 1) = v17;
    *&v34 = v19;
    *(&v34 + 1) = v22;
    v25 = v30;
    *a2 = v32[0];
    a2[1] = v25;
    v26 = v34;
    a2[2] = v33;
    a2[3] = v26;
    sub_1A9441F50(v32, v35);
    sub_1A9378138(a1);
    v35[0] = v23;
    v35[1] = v14;
    v35[2] = v30;
    v35[3] = v24;
    v36 = v29;
    v37 = v41;
    v38 = v17;
    v39 = v19;
    v40 = v22;
    return sub_1A9441F88(v35);
  }
}

uint64_t sub_1A943BA30()
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A943BA74()
{
  sub_1A957D4F8();
  PronuncationRule.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t PronunciationRuleSet.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PronunciationRuleSet.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PronunciationRuleSet() + 20);
  v4 = sub_1A957B0B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PronunciationRuleSet.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PronunciationRuleSet() + 20);
  v4 = sub_1A957B0B8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PronunciationRuleSet.language.getter()
{
  v1 = (v0 + *(type metadata accessor for PronunciationRuleSet() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PronunciationRuleSet.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.activationRule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PronunciationRuleSet() + 28));
}

uint64_t PronunciationRuleSet.activationRule.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for PronunciationRuleSet() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;
  return result;
}

uint64_t PronunciationRuleSet.operatingRegex.getter()
{
  v1 = (v0 + *(type metadata accessor for PronunciationRuleSet() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PronunciationRuleSet.operatingRegex.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.rules.getter()
{
  v1 = *(v0 + *(type metadata accessor for PronunciationRuleSet() + 36));
}

uint64_t PronunciationRuleSet.rules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PronunciationRuleSet() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PronunciationRuleSet.priority.setter(uint64_t a1)
{
  result = type metadata accessor for PronunciationRuleSet();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PronunciationRuleSet.enabled.setter(char a1)
{
  result = type metadata accessor for PronunciationRuleSet();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PronunciationRuleSet.notes.getter()
{
  v1 = (v0 + *(type metadata accessor for PronunciationRuleSet() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PronunciationRuleSet.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PronunciationRuleSet() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PronunciationRuleSet.init(name:language:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for PronunciationRuleSet();
  v13 = a6 + v12[5];
  result = sub_1A957B0A8();
  v15 = (a6 + v12[8]);
  *v15 = 0;
  v15[1] = 0;
  *(a6 + v12[9]) = MEMORY[0x1E69E7CC0];
  *(a6 + v12[11]) = 1;
  v16 = (a6 + v12[12]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *a6 = a1;
  a6[1] = a2;
  v17 = (a6 + v12[6]);
  *v17 = a3;
  v17[1] = a4;
  *(a6 + v12[10]) = a5;
  *(a6 + v12[7]) = 0xA000000000000000;
  return result;
}

uint64_t sub_1A943C278(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x65676175676E616CLL;
    if (a1 != 2)
    {
      v6 = 0x6974617669746361;
    }

    if (a1)
    {
      v5 = 1684632949;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x797469726F697270;
    v2 = 0x64656C62616E65;
    if (a1 != 7)
    {
      v2 = 0x7365746F6ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6974617265706FLL;
    if (a1 != 4)
    {
      v3 = 0x73656C7572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A943C398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9444FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A943C3C0(uint64_t a1)
{
  v2 = sub_1A94422BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943C3FC(uint64_t a1)
{
  v2 = sub_1A94422BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PronunciationRuleSet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB387438, &qword_1A958C9F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94422BC();
  sub_1A957D598();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v29) = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    v14 = type metadata accessor for PronunciationRuleSet();
    v15 = v14[5];
    LOBYTE(v29) = 1;
    sub_1A957B0B8();
    sub_1A9441598(&qword_1EB387440, MEMORY[0x1E69695A8]);
    sub_1A957D338();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v29) = 2;
    sub_1A957D2E8();
    v29 = *(v3 + v14[7]);
    HIBYTE(v28) = 3;
    sub_1A9441888();

    sub_1A957D338();

    v19 = (v3 + v14[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v29) = 4;
    sub_1A957D298();
    v29 = *(v3 + v14[9]);
    HIBYTE(v28) = 5;
    sub_1A937829C(&qword_1EB387448, &qword_1A958CA00);
    sub_1A9442310();
    sub_1A957D338();
    v22 = *(v3 + v14[10]);
    LOBYTE(v29) = 6;
    sub_1A957D328();
    v23 = *(v3 + v14[11]);
    LOBYTE(v29) = 7;
    sub_1A957D2F8();
    v24 = (v3 + v14[12]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v29) = 8;
    sub_1A957D2E8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t PronunciationRuleSet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1A957C228();
  v6 = type metadata accessor for PronunciationRuleSet();
  v7 = v6[5];
  sub_1A957B0B8();
  sub_1A9441598(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
  sub_1A957C068();
  v8 = (v2 + v6[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_1A957C228();
  v18 = *(v2 + v6[7]);
  RulesetActivationRule.hash(into:)(a1);
  v11 = (v2 + v6[8]);
  if (v11[1])
  {
    v12 = *v11;
    sub_1A957D518();
    sub_1A957C228();
  }

  else
  {
    sub_1A957D518();
  }

  sub_1A9440910(a1, *(v2 + v6[9]));
  MEMORY[0x1AC5863C0](*(v2 + v6[10]));
  v13 = *(v2 + v6[11]);
  sub_1A957D518();
  v14 = (v2 + v6[12]);
  v15 = *v14;
  v16 = v14[1];

  return sub_1A957C228();
}

uint64_t PronunciationRuleSet.hashValue.getter()
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t PronunciationRuleSet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1A957B0B8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB387460, &qword_1A958CA08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PronunciationRuleSet();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v18 + 20);
  v43 = v18;
  v44 = v21;
  v22 = v20;
  sub_1A957B0A8();
  v24 = a1[3];
  v23 = a1[4];
  v42 = a1;
  sub_1A93780F4(a1, v24);
  sub_1A94422BC();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(v42);
    (*(v45 + 8))(v22 + v44, v46);
  }

  else
  {
    v40 = v10;
    LOBYTE(v48) = 0;
    v25 = v9;
    *v22 = sub_1A957D1E8();
    v22[1] = v26;
    LOBYTE(v48) = 1;
    sub_1A9441598(&qword_1EB387468, MEMORY[0x1E69695A8]);
    v27 = v46;
    sub_1A957D238();
    (*(v45 + 40))(v22 + v44, v8, v27);
    LOBYTE(v48) = 2;
    v28 = sub_1A957D1E8();
    v29 = v43;
    v30 = (v22 + v43[6]);
    *v30 = v28;
    v30[1] = v31;
    v47 = 3;
    sub_1A9441B58();
    sub_1A957D238();
    *(v22 + v29[7]) = v48;
    LOBYTE(v48) = 4;
    v32 = sub_1A957D198();
    v33 = (v22 + v29[8]);
    *v33 = v32;
    v33[1] = v34;
    sub_1A937829C(&qword_1EB387448, &qword_1A958CA00);
    v47 = 5;
    sub_1A94423E8();
    sub_1A957D238();
    *(v22 + v29[9]) = v48;
    LOBYTE(v48) = 6;
    *(v22 + v29[10]) = sub_1A957D228();
    LOBYTE(v48) = 7;
    *(v22 + v43[11]) = sub_1A957D1F8() & 1;
    LOBYTE(v48) = 8;
    v35 = sub_1A957D1E8();
    v37 = v36;
    v38 = (v22 + v43[12]);
    (*(v40 + 8))(v14, v25);
    *v38 = v35;
    v38[1] = v37;
    sub_1A93B59D0(v22, v41);
    sub_1A9378138(v42);
    return sub_1A93B5F94(v22);
  }
}

uint64_t sub_1A943CF88()
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A943CFCC()
{
  sub_1A957D4F8();
  PronunciationRuleSet.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t SiriRule.regex.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriRule.regex.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriRule.replacement.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriRule.replacement.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SiriRule.notes.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SiriRule.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1A943D1D8()
{
  v1 = 0x7865676572;
  v2 = 0x64656C62616E65;
  if (*v0 != 2)
  {
    v2 = 0x7365746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x6D6563616C706572;
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

uint64_t sub_1A943D254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A94452A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A943D27C(uint64_t a1)
{
  v2 = sub_1A94425E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943D2B8(uint64_t a1)
{
  v2 = sub_1A94425E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRule.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387480, &qword_1A958CA10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v17 = *(v1 + 32);
  v12 = v1[5];
  v16[1] = v1[6];
  v16[2] = v12;
  v13 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94425E4();
  sub_1A957D598();
  v21 = 0;
  v14 = v16[5];
  sub_1A957D2E8();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v20 = 1;
  sub_1A957D2E8();
  v19 = 2;
  sub_1A957D2F8();
  v18 = 3;
  sub_1A957D2E8();
  return (*(v4 + 8))(v8, v3);
}

uint64_t SiriRule.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();

  return sub_1A957C228();
}

uint64_t SiriRule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387488, &qword_1A958CA18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94425E4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v30 = 0;
  v12 = sub_1A957D1E8();
  v25 = v13;
  v29 = 1;
  v23 = sub_1A957D1E8();
  v24 = v14;
  v28 = 2;
  v26 = sub_1A957D1F8();
  v27 = 3;
  v15 = sub_1A957D1E8();
  v18 = v17;
  v26 &= 1u;
  v19 = v15;
  (*(v6 + 8))(v10, v5);
  v21 = v24;
  v20 = v25;
  *a2 = v12;
  *(a2 + 8) = v20;
  *(a2 + 16) = v23;
  *(a2 + 24) = v21;
  *(a2 + 32) = v26;
  *(a2 + 40) = v19;
  *(a2 + 48) = v18;

  sub_1A9378138(a1);
}

uint64_t sub_1A943D8B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943D954()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();

  return sub_1A957C228();
}

uint64_t sub_1A943D9D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957C228();
  sub_1A957D518();
  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943DAA4()
{
  v0 = sub_1A937829C(&qword_1EB387490, &qword_1A958CA20);
  sub_1A9377618(v0, qword_1EB3A7BF8);
  sub_1A937731C(v0, qword_1EB3A7BF8);
  sub_1A937829C(&qword_1EB3874D0, &qword_1A958CA50);
  return sub_1A957BAA8();
}

uint64_t sub_1A943DB34()
{
  v0 = sub_1A937829C(&qword_1EB387498, &qword_1A958CA28);
  sub_1A9377618(v0, qword_1EB3A7C10);
  sub_1A937731C(v0, qword_1EB3A7C10);
  sub_1A937829C(&qword_1EB3874D8, &qword_1A958CA58);
  return sub_1A957BAA8();
}

uint64_t SiriRuleSet.rules.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriRuleSet.normalizationDomain.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SiriRuleSet.normalizationDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SiriRuleSet.fileName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SiriRuleSet.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SiriRuleSet.init(name:)(TextToSpeech::SiriRuleSet *__return_ptr retstr, Swift::String name)
{
  retstr->normalizationDomain.value._object = 0;
  retstr->fileName = name;
  retstr->rules._rawValue = MEMORY[0x1E69E7CC0];
  retstr->normalizationDomain.value._countAndFlagsBits = 0;
}

void SiriRuleSet.init(fromUrl:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A957C168();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = sub_1A957AFD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0uLL;
  (*(v8 + 16))(v12, a1, v7);
  v13 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v14 = sub_1A957AF58();
  v15 = [v13 initWithContentsOfURL_];

  v16 = *(v8 + 8);
  v16(v12, v7);
  if (v15)
  {
    v17 = TTSCreateDecryptedDataFromEncryptedData(v15);
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = sub_1A957AFF8();
    v21 = v20;

    sub_1A957C158();
    v33 = v21;
    v22 = sub_1A957C118();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      v26 = sub_1A957AF48();
      v32 = &v32;
      v38 = v27;
      v37 = v26;
      v34[0] = 10;
      v34[1] = 0xE100000000000000;
      v35 = MEMORY[0x1E69E7CC0];
      MEMORY[0x1EEE9AC00](v26, v27);
      *(&v32 - 2) = v34;
      v28 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, (&v32 - 4), v24, v25, &v32);
      v29 = sub_1A943E044(v28);

      sub_1A943E160(v29);
      sub_1A9442638(v19, v33);

      v16(a1, v7);
      v30 = v37;
      v31 = v38;
      *a2 = v35;
      *(a2 + 8) = v36;
      *(a2 + 24) = v30;
      *(a2 + 32) = v31;
      return;
    }

    v16(a1, v7);
    sub_1A9442638(v19, v33);
  }

  else
  {
    v16(a1, v7);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_1A943E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1A944054C(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1A944054C((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = MEMORY[0x1E69E67B0];
      v15 = sub_1A9445524();
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v5;
      v11[3] = v6;
      v11[4] = v8;
      v11[5] = v7;
      *(v2 + 16) = v10 + 1;
      sub_1A932D070(&v13, v2 + 40 * v10 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A943E160(uint64_t a1)
{
  v95 = sub_1A937829C(&qword_1EB387490, &qword_1A958CA20);
  v2 = *(v95 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v95, v4);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v83 = &v74 - v8;
  v9 = sub_1A937829C(&qword_1EB3874A0, &qword_1A958CA30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v82 = &v74 - v12;
  v81 = sub_1A937829C(&qword_1EB387498, &qword_1A958CA28);
  v13 = *(v81 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v81, v15);
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v74 - v19;
  v21 = sub_1A937829C(&qword_1EB3874A8, &qword_1A958CA38);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v79 = &v74 - v24;
  v92 = sub_1A957AE58();
  v25 = *(*(v92 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v92, v26);
  v91 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = (a1 + 32);
    v89 = (v28 + 8);
    v90 = v20;
    v77 = (v13 + 8);
    v78 = (v13 + 16);
    v75 = (v2 + 8);
    v76 = (v2 + 16);
    do
    {
      v32 = v31[4];
      sub_1A93780F4(v31, v31[3]);
      v33 = v91;
      sub_1A957AE08();
      v34 = sub_1A957CCF8();
      v36 = v35;
      (*v89)(v33, v92);
      if (sub_1A957C348())
      {
      }

      else
      {
        v93 = v31;
        v94 = v30;
        if (qword_1EB395538 != -1)
        {
          swift_once();
        }

        v37 = v81;
        v38 = sub_1A937731C(v81, qword_1EB3A7C10);
        swift_beginAccess();
        (*v78)(v20, v38, v37);
        v39 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v39 = v34;
        }

        v40 = 7;
        if (((v36 >> 60) & ((v34 & 0x800000000000000) == 0)) != 0)
        {
          v40 = 11;
        }

        v86 = v40 | (v39 << 16);
        v87 = v34;
        v88 = v36;
        sub_1A957C3B8();
        sub_1A93B744C(&qword_1EB3874B0, &qword_1EB387498, &qword_1A958CA28);
        v41 = v80;
        sub_1A957BA98();
        v42 = v79;
        sub_1A957BAB8();

        v43 = *v77;
        (*v77)(v41, v37);
        v43(v90, v37);
        v44 = v42;
        v45 = sub_1A937829C(&qword_1EB3874B8, &qword_1A958CA40);
        v46 = *(v45 - 8);
        v47 = (*(v46 + 48))(v42, 1, v45);
        v48 = v95;
        if (v47 == 1)
        {
          sub_1A937B960(v44, &qword_1EB3874A8, &qword_1A958CA38);
        }

        else
        {
          sub_1A957BAE8();
          v108 = v96;
          v109 = v97;
          v110 = v98;
          v111 = v99;
          (*(v46 + 8))(v44, v45);
          v49 = MEMORY[0x1AC585090](v110, *(&v110 + 1), v111, *(&v111 + 1));
          v51 = v50;
          sub_1A937B960(&v108, &qword_1EB3874D8, &qword_1A958CA58);
          v52 = v85;
          v53 = v85[2];

          v52[1] = v49;
          v52[2] = v51;
        }

        v54 = v83;
        if (qword_1EB395530 != -1)
        {
          swift_once();
        }

        v55 = sub_1A937731C(v48, qword_1EB3A7BF8);
        swift_beginAccess();
        (*v76)(v54, v55, v48);
        sub_1A957C3B8();

        sub_1A93B744C(&qword_1EB3874C0, &qword_1EB387490, &qword_1A958CA20);
        v56 = v84;
        sub_1A957BA98();
        v57 = v82;
        v58 = v95;
        sub_1A957BAB8();

        v59 = *v75;
        (*v75)(v56, v58);
        v59(v54, v58);
        v60 = v57;
        v31 = v93;
        v30 = v94;
        v61 = sub_1A937829C(&qword_1EB3874C8, &qword_1A958CA48);
        v62 = *(v61 - 8);
        v63 = (*(v62 + 48))(v57, 1, v61);
        v20 = v90;
        if (v63 == 1)
        {
          result = sub_1A937B960(v60, &qword_1EB3874A0, &qword_1A958CA30);
        }

        else
        {
          sub_1A957BAE8();
          v116 = v104;
          v117 = v105;
          v118 = v106;
          v119 = v107;
          v112 = v100;
          v113 = v101;
          v114 = v102;
          v115 = v103;
          v108 = v96;
          v109 = v97;
          v110 = v98;
          v111 = v99;
          (*(v62 + 8))(v60, v61);
          v64 = MEMORY[0x1AC585090](v110, *(&v110 + 1), v111, *(&v111 + 1));
          v66 = v65;
          v67 = MEMORY[0x1AC585090](v114, *(&v114 + 1), v115, *(&v115 + 1));
          v69 = v68;
          sub_1A937B960(&v108, &qword_1EB3874D0, &qword_1A958CA50);
          v70 = *v85;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A94406B4(0, *(v70 + 16) + 1, 1, v70);
            v70 = result;
          }

          v72 = *(v70 + 16);
          v71 = *(v70 + 24);
          if (v72 >= v71 >> 1)
          {
            result = sub_1A94406B4((v71 > 1), v72 + 1, 1, v70);
            v70 = result;
          }

          *(v70 + 16) = v72 + 1;
          v73 = v70 + 56 * v72;
          *(v73 + 32) = v64;
          *(v73 + 40) = v66;
          *(v73 + 48) = v67;
          *(v73 + 56) = v69;
          *(v73 + 64) = 1;
          *(v73 + 72) = 0;
          *(v73 + 80) = 0xE000000000000000;
          *v85 = v70;
          v31 = v93;
          v30 = v94;
        }
      }

      v31 += 5;
      --v30;
    }

    while (v30);
  }

  return result;
}

uint64_t sub_1A943EBE8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x656D614E656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_1A943EC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9445408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A943EC6C(uint64_t a1)
{
  v2 = sub_1A944268C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943ECA8(uint64_t a1)
{
  v2 = sub_1A944268C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRuleSet.encode(to:)(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB3874E0, &qword_1A958CA60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v15[3] = v1[2];
  v15[4] = v10;
  v15[1] = v1[4];
  v15[2] = v12;
  v13 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944268C();

  sub_1A957D598();
  v19 = v11;
  v18 = 0;
  sub_1A937829C(&qword_1EB3874E8, &qword_1A958CA68);
  sub_1A94426E0();
  sub_1A957D338();

  if (!v2)
  {
    v17 = 1;
    sub_1A957D298();
    v16 = 2;
    sub_1A957D2E8();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t SiriRuleSet.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  sub_1A9440E30(a1, *v1);
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  return sub_1A957C228();
}

uint64_t SiriRuleSet.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A957D4F8();
  sub_1A9440E30(v7, v2);
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRuleSet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387500, &qword_1A958CA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944268C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  sub_1A937829C(&qword_1EB3874E8, &qword_1A958CA68);
  v28 = 0;
  sub_1A94427B8();
  sub_1A957D238();
  v12 = v29;
  v27 = 1;
  v13 = sub_1A957D198();
  v15 = v14;
  v25 = v13;
  v26 = 2;
  v16 = sub_1A957D1E8();
  v19 = v18;
  v20 = *(v6 + 8);
  v24 = v16;
  v20(v10, v5);
  v21 = v24;
  v22 = v25;
  *a2 = v12;
  a2[1] = v22;
  a2[2] = v15;
  a2[3] = v21;
  a2[4] = v19;

  sub_1A9378138(a1);
}

uint64_t sub_1A943F27C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A957D4F8();
  sub_1A9440E30(v7, v2);
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t sub_1A943F318(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  sub_1A9440E30(a1, *v1);
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  return sub_1A957C228();
}

uint64_t sub_1A943F3A4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A957D4F8();
  sub_1A9440E30(v7, v2);
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  sub_1A957C228();
  return sub_1A957D548();
}

uint64_t SiriRulesetGroup.config.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriRulesetGroup.rulesets.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

TextToSpeech::SiriRulesetGroup __swiftcall SiriRulesetGroup.init(config:rulesets:)(Swift::OpaquePointer config, Swift::OpaquePointer rulesets)
{
  v2->_rawValue = config._rawValue;
  v2[1]._rawValue = rulesets._rawValue;
  result.rulesets = rulesets;
  result.config = config;
  return result;
}

uint64_t SiriRulesetGroup.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 8);
  v8 = (v7 + 64);
  v9 = *(v7 + 16) + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;
    if (v13 == v5 && v14 == a2)
    {
      break;
    }

    v8 += 5;
    result = sub_1A957D3E8();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v13 = v5;
LABEL_11:
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
}

double sub_1A943F618@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v11 = *a1;
  SiriRulesetGroup.subscript.getter(v5, v4, v9);
  v6 = v10;
  result = *v9;
  v8 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_1A943F66C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v10[0] = *a1;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;

  sub_1A9442890(v10[0]);
  return SiriRulesetGroup.subscript.setter(v10, v3, v4);
}

uint64_t SiriRulesetGroup.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v25 = v7;
  v26 = a1[4];
  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  v9 = v11;
  v12 = *(v11 + 16);
  if (v12)
  {
    v14 = 0;
    v15 = 64;
    while (1)
    {
      v16 = *(v9 + v15 - 8) == a2 && *(v9 + v15) == a3;
      if (v16 || (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      ++v14;
      v15 += 40;
      if (v12 == v14)
      {
        goto LABEL_9;
      }
    }

    if (v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A94408FC(v9);
        v9 = result;
      }

      if (v14 < *(v9 + 16))
      {
        v21 = (v9 + v15);
        v22 = *(v9 + v15 - 32);
        v23 = *(v9 + v15 - 16);
        v24 = *(v9 + v15);
        *(v21 - 4) = v6;
        *(v21 - 3) = v5;
        *(v21 - 2) = v8;
        *(v21 - 1) = v25;
        *v21 = v26;

LABEL_20:
        *v10 = v9;
        return result;
      }

      __break(1u);
    }

    else
    {
      sub_1A943F8C8(v14, &v27);
    }
  }

  else
  {
LABEL_9:

    if (v6)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A94407DC(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1A94407DC((v18 > 1), v19 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v19 + 1;
      v20 = (v9 + 40 * v19);
      v20[4] = v6;
      v20[5] = v5;
      v20[6] = v8;
      v20[7] = v25;
      v20[8] = v26;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1A943F8C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94408FC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

void (*SiriRulesetGroup.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  v7[6] = a3;
  v7[7] = v3;
  v7[5] = a2;
  v9 = *v3;
  SiriRulesetGroup.subscript.getter(a2, a3, v7);
  return sub_1A943FA14;
}

void sub_1A943FA14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[6];
  v7 = (*a1)[7];
  v10 = (*a1)[4];
  v9 = (*a1)[5];
  v15[0] = v4;
  v15[1] = v3;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v10;
  if (a2)
  {

    sub_1A9442890(v4);
    SiriRulesetGroup.subscript.setter(v15, v9, v8);
    v11 = v2[1];
    v12 = v2[2];
    v13 = v2[3];
    v14 = v2[4];
    sub_1A94428E0(*v2);
  }

  else
  {

    SiriRulesetGroup.subscript.setter(v15, v9, v8);
  }

  free(v2);
}

uint64_t static SiriRulesetGroup.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1A943FB54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9436D44(v2, v3);
}

uint64_t sub_1A943FB54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A943FCFC()
{
  if (*v0)
  {
    result = 0x73746573656C7572;
  }

  else
  {
    result = 0x6769666E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1A943FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746573656C7572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A943FE0C(uint64_t a1)
{
  v2 = sub_1A944292C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A943FE48(uint64_t a1)
{
  v2 = sub_1A944292C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriRulesetGroup.encode(to:)(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB387518, &qword_1A958CA78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944292C();

  sub_1A957D598();
  v15 = v10;
  v14 = 0;
  sub_1A937829C(&qword_1EB387520, &unk_1A958CA80);
  sub_1A9442980();
  sub_1A957D338();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1A937829C(&qword_1EB387530, &qword_1A958CA90);
    sub_1A9442A2C();
    sub_1A957D338();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t SiriRulesetGroup.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1A9440F0C(a1, v3);

  return sub_1A9440C5C(a1, v4);
}

uint64_t SiriRulesetGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v4, v1);
  sub_1A9440C5C(v4, v2);
  return sub_1A957D548();
}

uint64_t SiriRulesetGroup.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB387548, &qword_1A958CA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A944292C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  sub_1A937829C(&qword_1EB387520, &unk_1A958CA80);
  v16 = 0;
  sub_1A9442B04();
  sub_1A957D238();
  v12 = v17;
  sub_1A937829C(&qword_1EB387530, &qword_1A958CA90);
  v16 = 1;
  sub_1A9442C1C();
  sub_1A957D238();
  (*(v6 + 8))(v10, v5);
  v13 = v17;
  *a2 = v12;
  a2[1] = v13;

  sub_1A9378138(a1);
}

uint64_t sub_1A9440350()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v4, v1);
  sub_1A9440C5C(v4, v2);
  return sub_1A957D548();
}

uint64_t sub_1A94403A4(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1A9440F0C(a1, v3);

  return sub_1A9440C5C(a1, v4);
}

uint64_t sub_1A94403E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  sub_1A9440F0C(v4, v1);
  sub_1A9440C5C(v4, v2);
  return sub_1A957D548();
}

uint64_t sub_1A9440434(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1A943FB54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9436D44(v2, v3);
}

uint64_t sub_1A9440490(uint64_t a1)
{
  v2 = sub_1A9441598(&qword_1EB3875F8, type metadata accessor for NLTag);
  v3 = sub_1A9441598(&qword_1EB387600, type metadata accessor for NLTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1A944054C(void *a1, int64_t a2, char a3)
{
  result = sub_1A944056C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A944056C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387620, &qword_1A958EA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387628, &qword_1A958EA28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94406B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387610, &qword_1A958EA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94407DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387608, &qword_1A958EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9440910(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v4);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 8)
    {
      v22 = v4;
      v8 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v10 = i[1];
      v12 = *(i + 16);
      v13 = *(i + 17);
      v14 = i[3];
      v21 = i[4];
      v15 = i[5];

      sub_1A93B73E0(v14);

      sub_1A957C228();
      sub_1A957C228();
      sub_1A957C228();

      sub_1A957D518();
      if ((~v14 & 0xF000000000000007) != 0)
      {
        break;
      }

      sub_1A957D518();
      v7 = v22;
LABEL_4:
      sub_1A957C228();

      sub_1A93B7494(v14);

      v4 = v7 - 1;
      if (!v4)
      {
        return result;
      }
    }

    sub_1A957D518();
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      v7 = v22;
      v19 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v16 == 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }
    }

    else
    {
      v7 = v22;
      if (!v16)
      {
        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
        MEMORY[0x1AC5863C0](0);
        sub_1A957C0F8();

        sub_1A957C228();

        sub_1A957D528();
LABEL_14:
        sub_1A93B7494(v14);
        goto LABEL_4;
      }

      v19 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = 1;
    }

    MEMORY[0x1AC5863C0](v20);

    sub_1A9440B40(a1, v19);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1A9440B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        v13 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        if (v10 == 2)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        if (!v10)
        {
          v11 = *(v8 + 16);
          v12 = *(v8 + 24);
          MEMORY[0x1AC5863C0](0);
          sub_1A957C0F8();

          sub_1A957C228();

          sub_1A957D528();
          goto LABEL_5;
        }

        v13 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = 1;
      }

      MEMORY[0x1AC5863C0](v7);

      sub_1A9440B40(a1, v13);
LABEL_5:

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1A9440C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v3);
  v21 = v3;
  if (v3)
  {
    v5 = 0;
    v20 = a2 + 32;
    do
    {
      v24 = v5;
      v6 = (v20 + 40 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v22 = v6[3];
      v10 = v6[4];
      MEMORY[0x1AC5863C0](*(*v6 + 16));
      v11 = *(v8 + 16);
      v23 = v9;
      if (v11)
      {

        v12 = (v8 + 80);
        do
        {
          v13 = *(v12 - 6);
          v14 = *(v12 - 5);
          v16 = *(v12 - 4);
          v15 = *(v12 - 3);
          v17 = *(v12 - 16);
          v19 = *(v12 - 1);
          v18 = *v12;

          sub_1A957C228();
          sub_1A957C228();
          sub_1A957D518();
          sub_1A957C228();

          v12 += 7;
          --v11;
        }

        while (v11);
        if (!v23)
        {
LABEL_11:
          sub_1A957D518();
          goto LABEL_4;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      sub_1A957D518();
      sub_1A957C228();
LABEL_4:
      v5 = v24 + 1;
      sub_1A957C228();
    }

    while (v24 + 1 != v21);
  }

  return result;
}

uint64_t sub_1A9440E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5863C0](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v6 = *(v5 - 6);
      v7 = *(v5 - 5);
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 16);
      v11 = *(v5 - 1);
      v12 = *v5;

      sub_1A957C228();
      sub_1A957C228();
      sub_1A957D518();
      sub_1A957C228();

      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A9440F0C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v22 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a2 + 56) + 8 * v12);
    v25 = a1[2];
    v26 = a1[3];
    v27 = *(a1 + 8);
    v23 = *a1;
    v24 = a1[1];

    sub_1A957C228();

    MEMORY[0x1AC5863C0](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        sub_1A957C228();

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v6 &= v6 - 1;

    result = sub_1A957D548();
    v9 = result ^ v22;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1AC5863C0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL _s12TextToSpeech13PostMatchRuleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        return 0;
      }
    }

    else if (v3 >> 62 != 3)
    {
      return 0;
    }

LABEL_14:
    v16 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v16) = sub_1A9437104(v16, v17);

    return v16 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v3 >> 62)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_1A957C0F8();
  v11 = v10;
  if (v9 == sub_1A957C0F8() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1A957D3E8();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return v5 == v8;
}

unint64_t sub_1A944121C()
{
  result = qword_1EB395540;
  if (!qword_1EB395540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395540);
  }

  return result;
}

unint64_t sub_1A9441270()
{
  result = qword_1EB395548;
  if (!qword_1EB395548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395548);
  }

  return result;
}

unint64_t sub_1A94412C4()
{
  result = qword_1EB387318;
  if (!qword_1EB387318)
  {
    sub_1A93A7B68(&qword_1EB387310, &qword_1A958C938);
    sub_1A9441348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387318);
  }

  return result;
}

unint64_t sub_1A9441348()
{
  result = qword_1EB387320;
  if (!qword_1EB387320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387320);
  }

  return result;
}

unint64_t sub_1A944139C()
{
  result = qword_1EB395550;
  if (!qword_1EB395550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395550);
  }

  return result;
}

unint64_t sub_1A94413F0()
{
  result = qword_1EB395558;
  if (!qword_1EB395558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395558);
  }

  return result;
}

unint64_t sub_1A9441444()
{
  result = qword_1EB395560;
  if (!qword_1EB395560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395560);
  }

  return result;
}

unint64_t sub_1A94414C0()
{
  result = qword_1EB387358;
  if (!qword_1EB387358)
  {
    sub_1A93A7B68(&qword_1EB387310, &qword_1A958C938);
    sub_1A9441544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387358);
  }

  return result;
}

unint64_t sub_1A9441544()
{
  result = qword_1EB387360;
  if (!qword_1EB387360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387360);
  }

  return result;
}

uint64_t sub_1A9441598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12TextToSpeech21RulesetActivationRuleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 61 == 3)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v4 == 4)
    {
      if (v3 >> 61 == 4)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 != 0xA000000000000000)
    {
      return 0;
    }

    return 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v7 = sub_1A94367A4(v6, v5);

        return v7 & 1;
      }

      return 0;
    }

    if (v3 >> 61 == 2)
    {
LABEL_21:
      v10 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v10) = sub_1A94368E8(v10, v11);

      return v10 & 1;
    }

    return 0;
  }

  if (v3 >> 61)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A944175C()
{
  result = qword_1EB395568;
  if (!qword_1EB395568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395568);
  }

  return result;
}

unint64_t sub_1A94417B0()
{
  result = qword_1EB395570;
  if (!qword_1EB395570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395570);
  }

  return result;
}

unint64_t sub_1A9441804()
{
  result = qword_1EB3873B0;
  if (!qword_1EB3873B0)
  {
    sub_1A93A7B68(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873B0);
  }

  return result;
}

unint64_t sub_1A9441888()
{
  result = qword_1EB3873B8;
  if (!qword_1EB3873B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873B8);
  }

  return result;
}

unint64_t sub_1A94418DC()
{
  result = qword_1EB395578;
  if (!qword_1EB395578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395578);
  }

  return result;
}

unint64_t sub_1A9441930()
{
  result = qword_1EB395580;
  if (!qword_1EB395580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395580);
  }

  return result;
}

unint64_t sub_1A9441984()
{
  result = qword_1EB395588;
  if (!qword_1EB395588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395588);
  }

  return result;
}

unint64_t sub_1A94419D8()
{
  result = qword_1EB395590;
  if (!qword_1EB395590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395590);
  }

  return result;
}

unint64_t sub_1A9441A2C()
{
  result = qword_1EB3873C0;
  if (!qword_1EB3873C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3873C0);
  }

  return result;
}

unint64_t sub_1A9441A80()
{
  result = qword_1EB395598;
  if (!qword_1EB395598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB395598);
  }

  return result;
}

unint64_t sub_1A9441AD4()
{
  result = qword_1EB387400;
  if (!qword_1EB387400)
  {
    sub_1A93A7B68(&qword_1EB3873A8, &qword_1A958C9A8);
    sub_1A9441B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387400);
  }

  return result;
}

unint64_t sub_1A9441B58()
{
  result = qword_1EB387408;
  if (!qword_1EB387408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387408);
  }

  return result;
}