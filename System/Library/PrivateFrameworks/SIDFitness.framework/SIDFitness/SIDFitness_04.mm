uint64_t sub_2629E3B04()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2629E3CE0;
  }

  else
  {
    v3 = sub_2629E3C18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629E3C18()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_2629E48E8(v0[7], type metadata accessor for SIDWorkoutPlanScheduleRequest);
  v3 = *v1;

  sub_2629E48E8(v1, type metadata accessor for SIDWorkoutPlanScheduleResponse);
  *v2 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_2629E3CE0()
{
  v1 = v0[5];
  sub_2629E48E8(v0[7], type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2629E3D70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2629A88B4;

  return sub_2629E38C4(a1, a2, v7, v6);
}

uint64_t sub_2629E3E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v5 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 88) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2629E3EDC, 0, 0);
}

uint64_t sub_2629E3EDC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  sub_262A2A008();
  v10 = (v7 + *(v8 + 20));
  *v10 = v6;
  v10[1] = v5;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v2;
  v10[5] = v1;
  *(v7 + *(v8 + 24)) = 0;

  v16 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_2629E4034;
  v13 = v0[5];
  v14 = v0[3];

  return v16(v13);
}

uint64_t sub_2629E4034()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2629E41CC;
  }

  else
  {
    v3 = sub_2629E4148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2629E4148()
{
  sub_2629E48E8(*(v0 + 40), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629E41CC()
{
  sub_2629E48E8(v0[5], type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_2629E4250(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2629E4964;

  return sub_2629E3E24(a1, v5, v4);
}

uint64_t sub_2629E430C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for SIDUserMetadata();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2629E44AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for SIDUserMetadata();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2629E4638()
{
  sub_2629E4834(319, &qword_27FF3C960, type metadata accessor for SIDActiveWorkoutPlan, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2629E47E4();
    if (v1 <= 0x3F)
    {
      sub_2629E4834(319, &qword_27FF3CAB0, type metadata accessor for SIDArchivedSession, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SIDUserMetadata();
        if (v3 <= 0x3F)
        {
          sub_2629C2458();
          if (v4 <= 0x3F)
          {
            sub_2629E4834(319, &qword_27FF3C970, type metadata accessor for SIDUserOnboardingData, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2629E4898();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2629E47E4()
{
  if (!qword_27FF3C968)
  {
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C968);
    }
  }
}

void sub_2629E4834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2629E4898()
{
  result = qword_27FF3CAB8;
  if (!qword_27FF3CAB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FF3CAB8);
  }

  return result;
}

uint64_t sub_2629E48E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SIDUserMetadata.init(allowedContentRatings:didOptInPrivacyPreference:isWheelchairUser:locale:timezone:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  v9 = *(type metadata accessor for SIDUserMetadata() + 32);
  v10 = sub_262A2A168();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t type metadata accessor for SIDUserMetadata()
{
  result = qword_27FF3CAC8;
  if (!qword_27FF3CAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDUserMetadata.hash(into:)(__int128 *a1)
{
  sub_2629B59B0(a1, *v1);
  v2 = *(v1 + 8);
  sub_262A2A9B8();
  v3 = *(v1 + 9);
  sub_262A2A9B8();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_262A2A448();
  v6 = *(type metadata accessor for SIDUserMetadata() + 32);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  return sub_262A2A388();
}

uint64_t SIDUserMetadata.hashValue.getter()
{
  sub_262A2A998();
  sub_2629B59B0(v7, *v0);
  v1 = *(v0 + 8);
  sub_262A2A9B8();
  v2 = *(v0 + 9);
  sub_262A2A9B8();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_262A2A448();
  v5 = *(type metadata accessor for SIDUserMetadata() + 32);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t sub_2629E4BD4(__int128 *a1, uint64_t a2)
{
  sub_2629B59B0(a1, *v2);
  v4 = *(v2 + 8);
  sub_262A2A9B8();
  v5 = *(v2 + 9);
  sub_262A2A9B8();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_262A2A448();
  v8 = *(a2 + 32);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  return sub_262A2A388();
}

uint64_t sub_2629E4C84(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_2629B59B0(v10, *v2);
  v4 = *(v2 + 8);
  sub_262A2A9B8();
  v5 = *(v2 + 9);
  sub_262A2A9B8();
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  sub_262A2A448();
  v8 = *(a2 + 32);
  sub_262A2A168();
  sub_2629E4E48(&qword_27FF3CA80, MEMORY[0x277CC9A70]);
  sub_262A2A388();
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness15SIDUserMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_2629D4314(*a1, *a2) & 1) != 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_262A2A878()))
  {
    v5 = *(type metadata accessor for SIDUserMetadata() + 32);

    JUMPOUT(0x26672E9F0);
  }

  return 0;
}

uint64_t sub_2629E4E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629E4EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A2A168();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2629E4F64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_262A2A168();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629E5008()
{
  sub_2629E50A0();
  if (v0 <= 0x3F)
  {
    sub_262A2A168();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E50A0()
{
  if (!qword_27FF3CAD8)
  {
    sub_2629E50FC();
    v0 = sub_262A2A5C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3CAD8);
    }
  }
}

unint64_t sub_2629E50FC()
{
  result = qword_27FF3CAE0;
  if (!qword_27FF3CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CAE0);
  }

  return result;
}

uint64_t SIDUserOnboardingData.init(completedDate:selectedModalityIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262A29FD8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SIDUserOnboardingData();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for SIDUserOnboardingData()
{
  result = qword_27FF3CAF0;
  if (!qword_27FF3CAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SIDUserOnboardingData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_262A29FB8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SIDUserOnboardingData() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2629D45F4(v5, v6);
}

uint64_t SIDUserOnboardingData.hash(into:)(__int128 *a1)
{
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v3 = *(v1 + *(type metadata accessor for SIDUserOnboardingData() + 20));

  return sub_2629B5854(a1, v3);
}

uint64_t SIDUserOnboardingData.hashValue.getter()
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v1 = type metadata accessor for SIDUserOnboardingData();
  sub_2629B5854(v3, *(v0 + *(v1 + 20)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E53B4(uint64_t a1)
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  sub_2629B5854(v4, *(v1 + *(a1 + 20)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E5458(__int128 *a1, uint64_t a2)
{
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v5 = *(v2 + *(a2 + 20));

  return sub_2629B5854(a1, v5);
}

uint64_t sub_2629E54F0(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_262A29FD8();
  sub_2629E5640(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  sub_2629B5854(v5, *(v2 + *(a2 + 20)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E5590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262A29FB8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2629D45F4(v7, v8);
}

uint64_t sub_2629E5640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629E569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A29FD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629E576C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A29FD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2629E5824()
{
  sub_262A29FD8();
  if (v0 <= 0x3F)
  {
    sub_2629E58A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E58A8()
{
  if (!qword_27FF3CB00)
  {
    v0 = sub_262A2A5C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3CB00);
    }
  }
}

__n128 SIDWorkoutPlanScheduleRequest.init(planIdentifier:scaffold:variation:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a2[1];
  v14 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *a3;
  v9 = sub_262A2A018();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v10 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  v11 = a4 + *(v10 + 20);
  result = v13;
  *v11 = v14;
  *(v11 + 16) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(a4 + *(v10 + 24)) = v8;
  return result;
}

uint64_t type metadata accessor for SIDWorkoutPlanScheduleRequest()
{
  result = qword_27FF3CB08;
  if (!qword_27FF3CB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262A2A018();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SIDWorkoutPlanScheduleRequest.scaffold.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDWorkoutPlanScheduleRequest() + 20);
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v5;
}

uint64_t SIDWorkoutPlanScheduleRequest.variation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2629E5B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629E5BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A2A018();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2629E5CA0()
{
  result = sub_262A2A018();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SIDWorkoutPlanScheduleResponse.init(schedule:metrics:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v11 = *(*(PlanScaffold - 1) + 64);
  MEMORY[0x28223BE20](PlanScaffold);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v53 = a3;
  *a3 = v14;

  v15 = sub_2629AC344(MEMORY[0x277D84F90]);
  v16 = v15;
  if (*(a2 + 16))
  {
    v17 = v15;
    v18 = sub_2629CB0BC(0xD000000000000010, 0x8000000262A312E0);
    v19 = 0;
    v20 = 0;
    if (v21)
    {
      sub_2629ADE10(*(a2 + 56) + 32 * v18, v56);
      if (swift_dynamicCast())
      {
        v20 = v55;
      }
    }

    if (*(a2 + 16) && (v22 = sub_2629CB0BC(0xD000000000000010, 0x8000000262A312E0), (v23 & 1) != 0))
    {
      sub_2629ADE10(*(a2 + 56) + 32 * v22, v56);
      v16 = v17;
      if (swift_dynamicCast())
      {
        v19 = v55;
      }
    }

    else
    {
      v16 = v17;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  sub_262A2A008();
  v24 = sub_262A2A018();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v51 = v25 + 56;
  v52 = v26;
  v26(v9, 0, 1, v24);
  if (*(a2 + 16) && (v27 = sub_2629CB0BC(0xD000000000000013, 0x8000000262A31320), (v28 & 1) != 0) && (sub_2629ADE10(*(a2 + 56) + 32 * v27, v56), swift_dynamicCast()))
  {
    v49 = v55;
  }

  else
  {
    v49 = 0;
  }

  v55 = v14;
  v29 = SIDWorkoutPlanSchedule.metricScaffold.getter();

  v48 = sub_2629E6220(v29);

  v30 = *(a2 + 16);
  v50 = v9;
  if (!v30)
  {
    v47 = 0;
    goto LABEL_27;
  }

  v31 = sub_2629CB0BC(0x687469726F676C61, 0xEE0065726F63536DLL);
  if ((v32 & 1) != 0 && (sub_2629ADE10(*(a2 + 56) + 32 * v31, v56), swift_dynamicCast()))
  {
    v47 = v54;
    if (!*(a2 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    v47 = 0;
    if (!*(a2 + 16))
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v33 = sub_2629CB0BC(0xD000000000000012, 0x8000000262A31360);
  if ((v34 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_2629ADE10(*(a2 + 56) + 32 * v33, v56);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  v35 = v54;
LABEL_29:
  v36 = PlanScaffold[12];
  v37 = v52;
  v52(&v13[v36], 1, 1, v24);
  v38 = PlanScaffold[14];
  v39 = &v13[PlanScaffold[13]];
  v37(&v13[v38], 1, 1, v24);
  *v13 = v16;
  *(v13 + 1) = v20;
  *(v13 + 2) = v19;
  v40 = MEMORY[0x277D84FA0];
  *(v13 + 3) = MEMORY[0x277D84FA0];
  v41 = &v13[v36];
  v42 = v50;
  sub_2629BEB44(v50, v41);
  v43 = v48;
  *(v13 + 4) = v49;
  *&v13[PlanScaffold[15]] = v43;
  *(v13 + 5) = v47;
  v13[48] = 0;
  *&v13[PlanScaffold[16]] = v35;
  v13[49] = 0;
  *(v13 + 7) = v40;
  sub_2629E64D0(&v13[v38]);
  v37(&v13[v38], 1, 1, v24);
  sub_2629E64D0(v42);
  *&v13[PlanScaffold[17]] = MEMORY[0x277D84F90];
  *v39 = 0;
  v39[8] = 1;
  v44 = type metadata accessor for SIDWorkoutPlanScheduleResponse();
  return sub_2629E6584(v13, v53 + *(v44 + 20));
}

unint64_t sub_2629E6220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C078, &unk_262A2B520);
    v2 = sub_262A2A778();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v26 = *(*(a1 + 56) + 8 * v14);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C6C0, &unk_262A2E480);
        swift_dynamicCast();
        v31 = v28;
        v32 = v29;
        v33 = v30;
        v27 = v28;
        v28 = v29;
        *&v29 = v30;
        result = sub_2629CB0BC(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_2629E67DC(&v27, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          v20 = v2[7] + 40 * result;
          v21 = v27;
          v22 = v28;
          *(v20 + 32) = v29;
          *v20 = v21;
          *(v20 + 16) = v22;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t SIDWorkoutPlanScheduleResponse.init(schedule:metrics:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for SIDWorkoutPlanScheduleResponse() + 20);

  return sub_2629E6584(a2, v4);
}

uint64_t sub_2629E64D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SIDWorkoutPlanScheduleResponse()
{
  result = qword_27FF3CB18;
  if (!qword_27FF3CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629E6584(uint64_t a1, uint64_t a2)
{
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  (*(*(PlanScaffold - 8) + 32))(a2, a1, PlanScaffold);
  return a2;
}

uint64_t sub_2629E65FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
    v9 = *(*(PlanScaffold - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, PlanScaffold);
  }
}

void *sub_2629E66BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
    v8 = *(*(PlanScaffold - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, PlanScaffold);
  }

  return result;
}

uint64_t sub_2629E6760()
{
  result = type metadata accessor for SIDMetricCreatePlanScaffold();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2629E6838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v4 << 16 == *v3 << 16)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v5 = sub_262A2A878();
        swift_bridgeObjectRelease_n();
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E6908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = *v4;
      v7 = 0xEA00000000003436;
      v8 = 0x3936313931323531;
      switch(*v3)
      {
        case 1:
          v7 = 0xEA00000000003432;
          goto LABEL_34;
        case 2:
          v7 = 0xEA00000000003834;
          goto LABEL_40;
        case 3:
          v7 = 0xEA00000000003536;
          v8 = 0x3337313931323531;
          break;
        case 4:
          v7 = 0xEA00000000003630;
          v8 = 0x3536313931323531;
          break;
        case 5:
          v7 = 0xEA00000000003137;
          goto LABEL_43;
        case 6:
          v7 = 0xEA00000000003536;
          v8 = 0x3131303236323531;
          break;
        case 7:
          v7 = 0xEA00000000003137;
          v8 = 0x3337313931323531;
          break;
        case 8:
          v7 = 0xEA00000000003537;
          v8 = 0x3337313931323531;
          break;
        case 9:
          v7 = 0xEA00000000003231;
          v8 = 0x3535313931323531;
          break;
        case 0xA:
          v7 = 0xEA00000000003830;
          v8 = 0x3136393933373531;
          break;
        case 0xB:
          v7 = 0xEA00000000003936;
          goto LABEL_40;
        case 0xC:
          v8 = 0x3835313931323531;
          goto LABEL_26;
        case 0xD:
          v7 = 0xEA00000000003631;
          v8 = 0x3936313931323531;
          break;
        case 0xE:
          v7 = 0xEA00000000003234;
          v8 = 0x3035343739323631;
          break;
        case 0xF:
          v8 = 0x3236313931323531;
          goto LABEL_26;
        case 0x10:
          v7 = 0xEA00000000003330;
          v8 = 0x3534333231373531;
          break;
        case 0x11:
          v7 = 0xEA00000000003634;
          v8 = 0x3036313931323531;
          break;
        case 0x12:
          v7 = 0xEA00000000003138;
          v8 = 0x3936313931323531;
          break;
        case 0x13:
          v7 = 0xEA00000000003533;
          goto LABEL_36;
        case 0x14:
          v7 = 0xEA00000000003335;
          goto LABEL_38;
        case 0x15:
          v8 = 0x3331393535343631;
LABEL_26:
          v7 = 0xEA00000000003832;
          break;
        case 0x16:
          v7 = 0xEA00000000003831;
LABEL_34:
          v8 = 0x3236313931323531;
          break;
        case 0x17:
          v7 = 0xEA00000000003336;
LABEL_38:
          v8 = 0x3439303330373531;
          break;
        case 0x18:
          v7 = 0xEA00000000003437;
          v8 = 0x3531393535343631;
          break;
        case 0x19:
          v7 = 0xEA00000000003934;
          v8 = 0x3337313931323531;
          break;
        case 0x1A:
          v7 = 0xEA00000000003537;
LABEL_43:
          v9 = 0x303236323531;
          goto LABEL_44;
        case 0x1B:
          v7 = 0xEA00000000003630;
          v9 = 0x393535343631;
LABEL_44:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
          break;
        case 0x1C:
          v7 = 0xEA00000000003636;
LABEL_40:
          v8 = 0x3637313931323531;
          break;
        case 0x1D:
          v7 = 0xEA00000000003539;
          v8 = 0x3436393933373531;
          break;
        case 0x1E:
          v7 = 0xEA00000000003534;
LABEL_36:
          v8 = 0x3835313931323531;
          break;
        default:
          break;
      }

      v10 = 0x3936313931323531;
      v11 = 0xEA00000000003436;
      switch(*v4)
      {
        case 1:
          v11 = 0xEA00000000003432;
          goto LABEL_85;
        case 2:
          v11 = 0xEA00000000003834;
          goto LABEL_94;
        case 3:
          v11 = 0xEA00000000003536;
          goto LABEL_81;
        case 4:
          v11 = 0xEA00000000003630;
          if (v8 != 0x3536313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 5:
          v11 = 0xEA00000000003137;
          goto LABEL_101;
        case 6:
          v11 = 0xEA00000000003536;
          if (v8 != 0x3131303236323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 7:
          v11 = 0xEA00000000003137;
          goto LABEL_81;
        case 8:
          v11 = 0xEA00000000003537;
          goto LABEL_81;
        case 9:
          v11 = 0xEA00000000003231;
          if (v8 != 0x3535313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xA:
          v11 = 0xEA00000000003830;
          if (v8 != 0x3136393933373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xB:
          v11 = 0xEA00000000003936;
          goto LABEL_94;
        case 0xC:
          v13 = 0x3835313931323531;
          goto LABEL_70;
        case 0xD:
          v11 = 0xEA00000000003631;
          goto LABEL_76;
        case 0xE:
          v11 = 0xEA00000000003234;
          if (v8 != 0x3035343739323631)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0xF:
          v13 = 0x3236313931323531;
          goto LABEL_70;
        case 0x10:
          v11 = 0xEA00000000003330;
          if (v8 != 0x3534333231373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x11:
          v11 = 0xEA00000000003634;
          if (v8 != 0x3036313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x12:
          v11 = 0xEA00000000003138;
LABEL_76:
          if (v8 != 0x3936313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x13:
          v11 = 0xEA00000000003533;
          goto LABEL_88;
        case 0x14:
          v11 = 0xEA00000000003335;
          goto LABEL_91;
        case 0x15:
          v13 = 0x3331393535343631;
LABEL_70:
          v11 = 0xEA00000000003832;
          if (v8 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x16:
          v11 = 0xEA00000000003831;
LABEL_85:
          if (v8 != 0x3236313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x17:
          v11 = 0xEA00000000003336;
LABEL_91:
          if (v8 != 0x3439303330373531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x18:
          v11 = 0xEA00000000003437;
          if (v8 != 0x3531393535343631)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x19:
          v11 = 0xEA00000000003934;
LABEL_81:
          if (v8 != 0x3337313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1A:
          v11 = 0xEA00000000003537;
LABEL_101:
          v12 = 0x303236323531;
          goto LABEL_102;
        case 0x1B:
          v11 = 0xEA00000000003630;
          v12 = 0x393535343631;
LABEL_102:
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x3331000000000000))
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1C:
          v11 = 0xEA00000000003636;
LABEL_94:
          if (v8 != 0x3637313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        case 0x1D:
          v11 = 0xEA00000000003539;
          v10 = 0x3436393933373531;
          goto LABEL_97;
        case 0x1E:
          v11 = 0xEA00000000003534;
LABEL_88:
          if (v8 != 0x3835313931323531)
          {
            goto LABEL_5;
          }

          goto LABEL_98;
        default:
LABEL_97:
          if (v8 != v10)
          {
            goto LABEL_5;
          }

LABEL_98:
          if (v7 == v11)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_262A2A878();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_2629E7004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 33);
    for (i = (a2 + 33); *(v3 - 1) == *(i - 1); i += 2)
    {
      v5 = *v3;
      v6 = *i;
      if ((sub_262A2A178() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2629E7090(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 12337;
      }

      else
      {
        v6 = 12593;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 57;
      }

      if (*v3)
      {
        v8 = 0xE200000000000000;
      }

      else
      {
        v8 = 0xE100000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 12337;
      }

      else
      {
        v9 = 12593;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 57;
      }

      if (*v4)
      {
        v11 = 0xE200000000000000;
      }

      else
      {
        v11 = 0xE100000000000000;
      }

      if (v7 == v10 && v8 == v11)
      {
      }

      else
      {
        v5 = sub_262A2A878();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E71B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        v9 = 0xEA00000000003735;
        if (v6 == 6)
        {
          v10 = 0x3032383934393431;
        }

        else
        {
          v10 = 0x3930393836383531;
        }

        if (v6 != 6)
        {
          v9 = 0xEA00000000003638;
        }

        v11 = 0xEA00000000003836;
        if (v6 != 4)
        {
          v11 = 0xEA00000000003736;
        }

        if (*v3 <= 5u)
        {
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = v10;
        }

        if (*v3 <= 5u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v8 = 0xEA00000000003636;
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = 0x3932343038373431;
          v8 = 0xEA00000000003037;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0x3932343038373431;
        }

        else
        {
          v7 = 0x3931333738353531;
        }

        if (*v3)
        {
          v8 = 0xEA00000000003936;
        }

        else
        {
          v8 = 0xEA00000000003739;
        }
      }

      v12 = *v4;
      if (v12 > 3)
      {
        if (*v4 <= 5u)
        {
          if (v12 == 4)
          {
            v13 = 0xEA00000000003836;
          }

          else
          {
            v13 = 0xEA00000000003736;
          }

LABEL_45:
          if (v7 != 0x3932343038373431)
          {
            goto LABEL_5;
          }

          goto LABEL_46;
        }

        if (v12 == 6)
        {
          v13 = 0xEA00000000003735;
          if (v7 != 0x3032383934393431)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xEA00000000003638;
          if (v7 != 0x3930393836383531)
          {
LABEL_5:
            v5 = sub_262A2A878();

            if ((v5 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else
      {
        if (*v4 <= 1u)
        {
          if (!*v4)
          {
            v13 = 0xEA00000000003739;
            if (v7 != 0x3931333738353531)
            {
              goto LABEL_5;
            }

            goto LABEL_46;
          }

          v13 = 0xEA00000000003936;
          goto LABEL_45;
        }

        if (v12 == 2)
        {
          v13 = 0xEA00000000003636;
          goto LABEL_45;
        }

        v13 = 0xEA00000000003037;
        if (v7 != 0x3932343038373431)
        {
          goto LABEL_5;
        }
      }

LABEL_46:
      if (v8 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E7408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 4)
      {
        if (v6 == 8)
        {
          v9 = 12337;
        }

        else
        {
          v9 = 12593;
        }

        v10 = 0xE200000000000000;
        if (v6 == 7)
        {
          v9 = 57;
          v10 = 0xE100000000000000;
        }

        v11 = 55;
        if (v6 != 5)
        {
          v11 = 56;
        }

        if (*v3 <= 6u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }

        if (*v3 <= 6u)
        {
          v7 = 0xE100000000000000;
        }

        else
        {
          v7 = v10;
        }
      }

      else if (*v3 <= 1u)
      {
        if (*v3)
        {
          v8 = 51;
        }

        else
        {
          v8 = 50;
        }

        v7 = 0xE100000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
        if (v6 == 2)
        {
          v8 = 52;
        }

        else if (v6 == 3)
        {
          v8 = 53;
        }

        else
        {
          v8 = 54;
        }
      }

      v12 = *v4;
      if (v12 > 4)
      {
        if (*v4 <= 6u)
        {
          v13 = 0xE100000000000000;
          if (v12 == 5)
          {
            if (v8 != 55)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 56)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 7)
        {
          v13 = 0xE100000000000000;
          if (v8 != 57)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0xE200000000000000;
          if (v12 == 8)
          {
            if (v8 != 12337)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 12593)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v13 = 0xE100000000000000;
        if (*v4 <= 1u)
        {
          if (*v4)
          {
            if (v8 != 51)
            {
              goto LABEL_5;
            }
          }

          else if (v8 != 50)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 2)
        {
          if (v8 != 52)
          {
            goto LABEL_5;
          }
        }

        else if (v12 == 3)
        {
          if (v8 != 53)
          {
            goto LABEL_5;
          }
        }

        else if (v8 != 54)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v13)
      {
LABEL_5:
        v5 = sub_262A2A878();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E766C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 52;
      }

      else
      {
        v5 = 53;
      }

      if (*v4)
      {
        v6 = 52;
      }

      else
      {
        v6 = 53;
      }

      if (v5 == v6)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = sub_262A2A878();
        swift_bridgeObjectRelease_n();
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2629E7738(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      v11 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v11 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      if (v5 == v8 && v6 == v9)
      {
        if (v7 != v10)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_262A2A878();
        result = 0;
        if ((v13 & 1) == 0 || v7 != v10)
        {
          return result;
        }
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2629E7834(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629E7890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2629E7920(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629E797C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDWorkoutPlanProgressWorkout();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v29 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v27 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (2)
      {
        sub_2629C1CD8(v14, v11);
        sub_2629C1CD8(v15, v8);
        v17 = *v11 == *v8 && v11[1] == v8[1];
        if (v17 || (sub_262A2A878()) && (v18 = v4[5], (sub_262A29FB8()) && *(v11 + v4[6]) == *(v8 + v4[6]))
        {
          v19 = v4[7];
          v20 = *(v11 + v19);
          v21 = *(v8 + v19);
          v22 = 0xEA00000000003638;
          v23 = 0x3932343038373431;
          switch(v20)
          {
            case 1:
              v22 = 0xEA00000000003937;
              goto LABEL_26;
            case 2:
              v22 = 0xEA00000000003438;
              goto LABEL_26;
            case 3:
              v22 = 0xEA00000000003238;
              goto LABEL_26;
            case 4:
              v22 = 0xEA00000000003633;
              v23 = 0x3532363037343631;
              break;
            case 5:
              v22 = 0xEA00000000003839;
              goto LABEL_22;
            case 6:
              v22 = 0xEA00000000003738;
              goto LABEL_26;
            case 7:
              v22 = 0xEA00000000003739;
              goto LABEL_22;
            case 8:
              v23 = 0x3932343038373431;
              v22 = 0xEA00000000003038;
              break;
            case 9:
              v22 = 0xEA00000000003639;
LABEL_22:
              v23 = 0x3332373831363531;
              break;
            case 10:
              v22 = 0xEA00000000003338;
              goto LABEL_26;
            case 11:
              v22 = 0xEA00000000003138;
              goto LABEL_26;
            case 12:
              v22 = 0xEA00000000003635;
              v23 = 0x3032383934393431;
              break;
            case 13:
              v22 = 0xEA00000000003538;
LABEL_26:
              v23 = 0x3932343038373431;
              break;
            default:
              break;
          }

          v24 = 0xEA00000000003638;
          switch(v21)
          {
            case 1:
              v24 = 0xEA00000000003937;
              goto LABEL_44;
            case 2:
              v24 = 0xEA00000000003438;
              goto LABEL_44;
            case 3:
              v24 = 0xEA00000000003238;
              goto LABEL_44;
            case 4:
              v24 = 0xEA00000000003633;
              if (v23 != 0x3532363037343631)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 5:
              v24 = 0xEA00000000003839;
              goto LABEL_39;
            case 6:
              v24 = 0xEA00000000003738;
              goto LABEL_44;
            case 7:
              v24 = 0xEA00000000003739;
              goto LABEL_39;
            case 8:
              v24 = 0xEA00000000003038;
              if (v23 != 0x3932343038373431)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 9:
              v24 = 0xEA00000000003639;
LABEL_39:
              if (v23 != 0x3332373831363531)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 10:
              v24 = 0xEA00000000003338;
              goto LABEL_44;
            case 11:
              v24 = 0xEA00000000003138;
              goto LABEL_44;
            case 12:
              v24 = 0xEA00000000003635;
              if (v23 != 0x3032383934393431)
              {
                goto LABEL_49;
              }

              goto LABEL_45;
            case 13:
              v24 = 0xEA00000000003538;
              goto LABEL_44;
            default:
LABEL_44:
              if (v23 != 0x3932343038373431)
              {
                goto LABEL_49;
              }

LABEL_45:
              if (v22 == v24)
              {
              }

              else
              {
LABEL_49:
                v25 = sub_262A2A878();

                if ((v25 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v26 = *(v11 + v4[8]) ^ *(v8 + v4[8]);
              sub_2629C1D3C(v8);
              sub_2629C1D3C(v11);
              if ((v26 & 1) == 0)
              {
                v15 += v16;
                v14 += v16;
                if (--v12)
                {
                  continue;
                }
              }

              v27 = v26 ^ 1;
              break;
          }
        }

        else
        {
LABEL_55:
          sub_2629C1D3C(v8);
          sub_2629C1D3C(v11);
          v27 = 0;
        }

        break;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_2629E7DF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v33 = a2 + 32;
    v34 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_53;
      }

      v6 = (v4 + 48 * v3);
      result = *v6;
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v10 = v6[5];
      v12 = (v5 + 48 * v3);
      v13 = v12[2];
      v14 = v12[3];
      v16 = v12[4];
      v15 = v12[5];
      if (result != *v12 || v7 != v12[1])
      {
        result = sub_262A2A878();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v18 = *(v8 + 16);
      if (v18 != *(v13 + 16))
      {
        return 0;
      }

      if (v18)
      {
        v19 = v8 == v13;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = (v8 + 32);
        v21 = (v13 + 32);
        while (v18)
        {
          if (*v20 != *v21)
          {
            return 0;
          }

          ++v20;
          ++v21;
          if (!--v18)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        __break(1u);
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

LABEL_20:
      v22 = *(v9 + 16);
      if (v22 != *(v14 + 16))
      {
        return 0;
      }

      if (v22 && v9 != v14)
      {
        break;
      }

LABEL_31:
      v26 = *(v11 + 16);
      if (v26 != *(v16 + 16))
      {
        return 0;
      }

      if (v26 && v11 != v16)
      {
        v27 = (v11 + 40);
        v28 = (v16 + 40);
        do
        {
          v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
          if (!v29 && (sub_262A2A878() & 1) == 0)
          {
            return 0;
          }

          v27 += 2;
          v28 += 2;
        }

        while (--v26);
      }

      v30 = *(v10 + 16);
      if (v30 != *(v15 + 16))
      {
        return 0;
      }

      if (v30 && v10 != v15)
      {
        v31 = (v10 + 32);
        v32 = (v15 + 32);
        while (*v31 == *v32)
        {
          ++v31;
          ++v32;
          if (!--v30)
          {
            goto LABEL_48;
          }
        }

        return 0;
      }

LABEL_48:
      ++v3;
      result = 1;
      v5 = v33;
      v4 = v34;
      if (v3 == v2)
      {
        return result;
      }
    }

    v23 = (v9 + 40);
    v24 = (v14 + 40);
    while (1)
    {
      v25 = *(v23 - 1) == *(v24 - 1) && *v23 == *v24;
      if (!v25 && (sub_262A2A878() & 1) == 0)
      {
        return 0;
      }

      v23 += 2;
      v24 += 2;
      if (!--v22)
      {
        goto LABEL_31;
      }
    }
  }

  return 1;
}

uint64_t sub_2629E8034(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_262A305E8[v5];
    v9 = qword_262A305E8[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629E80A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_262A2A878() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2629E8170(uint64_t a1, uint64_t a2)
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

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 80 * v3;
    v7 = (v4 + 80 * v3);
    v8 = v7[1];
    ++v3;
    v26 = *v7;
    v27 = v8;
    v9 = v7[3];
    v28 = v7[2];
    v29 = v9;
    v10 = v7[4];
    v11 = (v5 + v6);
    v12 = v11[3];
    v33 = v11[2];
    v34 = v12;
    v35 = v11[4];
    v13 = *v11;
    v32 = v11[1];
    v30 = v10;
    v31 = v13;
    v14 = 0xEA00000000003638;
    v15 = 0x3932343038373431;
    switch(v26)
    {
      case 1:
        v14 = 0xEA00000000003937;
        goto LABEL_19;
      case 2:
        v14 = 0xEA00000000003438;
        goto LABEL_19;
      case 3:
        v14 = 0xEA00000000003238;
        goto LABEL_19;
      case 4:
        v14 = 0xEA00000000003633;
        v15 = 0x3532363037343631;
        break;
      case 5:
        v14 = 0xEA00000000003839;
        goto LABEL_15;
      case 6:
        v14 = 0xEA00000000003738;
        goto LABEL_19;
      case 7:
        v14 = 0xEA00000000003739;
        goto LABEL_15;
      case 8:
        v15 = 0x3932343038373431;
        v14 = 0xEA00000000003038;
        break;
      case 9:
        v14 = 0xEA00000000003639;
LABEL_15:
        v15 = 0x3332373831363531;
        break;
      case 10:
        v14 = 0xEA00000000003338;
        goto LABEL_19;
      case 11:
        v14 = 0xEA00000000003138;
        goto LABEL_19;
      case 12:
        v14 = 0xEA00000000003635;
        v15 = 0x3032383934393431;
        break;
      case 13:
        v14 = 0xEA00000000003538;
LABEL_19:
        v15 = 0x3932343038373431;
        break;
      default:
        break;
    }

    v16 = 0xEA00000000003638;
    switch(v31)
    {
      case 1:
        v16 = 0xEA00000000003937;
        goto LABEL_37;
      case 2:
        v16 = 0xEA00000000003438;
        goto LABEL_37;
      case 3:
        v16 = 0xEA00000000003238;
        goto LABEL_37;
      case 4:
        v16 = 0xEA00000000003633;
        if (v15 != 0x3532363037343631)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 5:
        v16 = 0xEA00000000003839;
        goto LABEL_32;
      case 6:
        v16 = 0xEA00000000003738;
        goto LABEL_37;
      case 7:
        v16 = 0xEA00000000003739;
        goto LABEL_32;
      case 8:
        v16 = 0xEA00000000003038;
        if (v15 != 0x3932343038373431)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 9:
        v16 = 0xEA00000000003639;
LABEL_32:
        if (v15 != 0x3332373831363531)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 10:
        v16 = 0xEA00000000003338;
        goto LABEL_37;
      case 11:
        v16 = 0xEA00000000003138;
        goto LABEL_37;
      case 12:
        v16 = 0xEA00000000003635;
        if (v15 != 0x3032383934393431)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      case 13:
        v16 = 0xEA00000000003538;
        goto LABEL_37;
      default:
LABEL_37:
        if (v15 != 0x3932343038373431)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v14 == v16)
        {
          sub_2629E8F60(&v26, v25);
          sub_2629E8F60(&v31, v25);
        }

        else
        {
LABEL_42:
          v17 = sub_262A2A878();
          sub_2629E8F60(&v26, v25);
          sub_2629E8F60(&v31, v25);

          if ((v17 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v18 = *(*(&v26 + 1) + 16);
        if (v18 != *(*(&v31 + 1) + 16))
        {
          goto LABEL_64;
        }

        if (!v18 || *(&v26 + 1) == *(&v31 + 1))
        {
LABEL_49:
          if ((sub_2629E6838(v27, v32) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E6908(*(&v27 + 1), *(&v32 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E7408(v28, v33) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E7090(*(&v28 + 1), *(&v33 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E71B4(v29, v34) & 1) == 0)
          {
            goto LABEL_64;
          }

          if ((sub_2629E766C(*(&v29 + 1), *(&v34 + 1)) & 1) == 0)
          {
            goto LABEL_64;
          }

          v21 = *(v30 + 16);
          if (v21 != *(v35 + 16))
          {
            goto LABEL_64;
          }

          if (v21 && v30 != v35)
          {
            v22 = (v30 + 32);
            v23 = (v35 + 32);
            while (*v22 == *v23)
            {
              ++v22;
              ++v23;
              if (!--v21)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_64;
          }

LABEL_61:
          sub_2629E8FBC(&v31);
          sub_2629E8FBC(&v26);
          if (*(&v30 + 1) != *(&v35 + 1))
          {
            return 0;
          }

          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v19 = (*(&v26 + 1) + 32);
        v20 = (*(&v31 + 1) + 32);
        while (qword_262A305E8[*v19] == qword_262A305E8[*v20])
        {
          ++v19;
          ++v20;
          if (!--v18)
          {
            goto LABEL_49;
          }
        }

LABEL_64:
        sub_2629E8FBC(&v31);
        sub_2629E8FBC(&v26);
        return 0;
    }
  }
}

uint64_t SIDMetrics.recommendationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262A2A018();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SIDMetrics()
{
  result = qword_27FF3CB30;
  if (!qword_27FF3CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDMetrics.treatments.getter()
{
  v1 = *(v0 + *(type metadata accessor for SIDMetrics() + 24));
}

uint64_t SIDMetrics.init(cohortIdentifier:recommendationIdentifier:treatments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SIDMetrics();
  *(a4 + *(v8 + 20)) = a1;
  v9 = sub_262A2A018();
  result = (*(*(v9 - 8) + 32))(a4, a2, v9);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t static SIDMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_262A29FF8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SIDMetrics();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_2629E7738(v6, v7);
}

uint64_t SIDMetrics.hash(into:)(uint64_t a1)
{
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  v3 = type metadata accessor for SIDMetrics();
  MEMORY[0x26672F240](*(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_2629BF80C(a1, v4);
}

uint64_t SIDMetrics.hashValue.getter()
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  v1 = type metadata accessor for SIDMetrics();
  MEMORY[0x26672F240](*(v0 + *(v1 + 20)));
  sub_2629BF80C(v3, *(v0 + *(v1 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E89BC(uint64_t a1)
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v1 + *(a1 + 20)));
  sub_2629BF80C(v4, *(v1 + *(a1 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E8A74(uint64_t a1, uint64_t a2)
{
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_2629BF80C(a1, v5);
}

uint64_t sub_2629E8B28(uint64_t a1, uint64_t a2)
{
  sub_262A2A998();
  sub_262A2A018();
  sub_2629E8CA0(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  MEMORY[0x26672F240](*(v2 + *(a2 + 20)));
  sub_2629BF80C(v5, *(v2 + *(a2 + 24)));
  return sub_262A2A9D8();
}

uint64_t sub_2629E8BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262A29FF8() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2629E7738(v7, v8);
}

uint64_t sub_2629E8CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629E8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A018();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2629E8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262A2A018();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_2629E8E84()
{
  sub_262A2A018();
  if (v0 <= 0x3F)
  {
    sub_2629E8F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629E8F10()
{
  if (!qword_27FF3C378)
  {
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C378);
    }
  }
}

uint64_t static SIDTreatment.from(treatment:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_262A2A248();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262A2A2A8();
  v9 = v8;
  v10 = sub_262A2A298();
  v12 = v11;
  sub_262A2A2B8();
  v13 = sub_262A2A238();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

uint64_t SIDTreatment.areaId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SIDTreatment.treatmentId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall SIDTreatment.init(areaId:treatmentId:bucket:)(SIDFitness::SIDTreatment *__return_ptr retstr, Swift::String areaId, Swift::String treatmentId, Swift::Int bucket)
{
  retstr->areaId = areaId;
  retstr->treatmentId = treatmentId;
  retstr->bucket = bucket;
}

uint64_t sub_2629E9198()
{
  v1 = 0x6E656D7461657274;
  if (*v0 != 1)
  {
    v1 = 0x74656B637562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644961657261;
  }
}

uint64_t sub_2629E91F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629E9CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629E921C(uint64_t a1)
{
  v2 = sub_2629E97B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629E9258(uint64_t a1)
{
  v2 = sub_2629E97B0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static SIDTreatment.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_262A2A878()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262A2A878()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDTreatment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_262A2A448();
  sub_262A2A448();
  return MEMORY[0x26672F240](v5);
}

uint64_t SIDTreatment.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v5);
  return sub_262A2A9D8();
}

uint64_t sub_2629E9404()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v5);
  return sub_262A2A9D8();
}

uint64_t sub_2629E9484()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_262A2A448();
  sub_262A2A448();
  return MEMORY[0x26672F240](v5);
}

uint64_t sub_2629E94D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  MEMORY[0x26672F240](v5);
  return sub_262A2A9D8();
}

BOOL sub_2629E9554(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_262A2A878()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262A2A878()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t SIDTreatment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CB40, &qword_262A30610);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629E97B0();
  sub_262A2AA28();
  v17 = 0;
  v12 = v14[3];
  sub_262A2A828();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_262A2A828();
  v15 = 2;
  sub_262A2A838();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2629E97B0()
{
  result = qword_27FF3CB48;
  if (!qword_27FF3CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB48);
  }

  return result;
}

uint64_t SIDTreatment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CB50, &qword_262A30618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629E97B0();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = 0;
  v11 = sub_262A2A7C8();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_262A2A7C8();
  v20 = v14;
  v22 = 2;
  v15 = sub_262A2A7D8();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2629E9A6C()
{
  result = qword_27FF3CB58;
  if (!qword_27FF3CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB58);
  }

  return result;
}

uint64_t sub_2629E9AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2629E9B38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2629E9BA4()
{
  result = qword_27FF3CB60;
  if (!qword_27FF3CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB60);
  }

  return result;
}

unint64_t sub_2629E9BFC()
{
  result = qword_27FF3CB68;
  if (!qword_27FF3CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB68);
  }

  return result;
}

unint64_t sub_2629E9C54()
{
  result = qword_27FF3CB70;
  if (!qword_27FF3CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB70);
  }

  return result;
}

uint64_t sub_2629E9CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644961657261 && a2 == 0xE600000000000000;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B637562 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262A2A878();

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

unint64_t sub_2629E9DC8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_2629E9EB8()
{
  result = qword_27FF3CB78;
  if (!qword_27FF3CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB78);
  }

  return result;
}

unint64_t sub_2629E9F1C()
{
  result = qword_27FF3CB80;
  if (!qword_27FF3CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB80);
  }

  return result;
}

unint64_t sub_2629E9F70(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v42 = sub_262A2A108();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262A2A168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = sub_262A2A058();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_262A2A128();
  v38 = *(v20 - 8);
  v39 = v20;
  v21 = *(v38 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CC9830], v15);
  sub_262A2A068();
  v24 = v15;
  v25 = v6;
  (*(v16 + 8))(v19, v24);
  sub_262A2A088();
  sub_262A2A038();
  v26 = sub_262A2A048();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  v27 = v40;
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  (*(v7 + 16))(v10, v27, v6);
  v28 = v41;
  sub_262A2A0F8();
  v29 = v42;
  (*(v2 + 104))(v5, *MEMORY[0x277CC99B8], v42);
  v30 = sub_262A2A118();
  (*(v2 + 8))(v5, v29);
  result = sub_262A2A078();
  v32 = v30 - result;
  if (__OFSUB__(v30, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v33 = __OFADD__(v32, 7);
  v34 = v32 + 7;
  if (v33)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _s10SIDFitness10SIDWeekdayO8rawValueACSgSi_tcfC_0(v34 % 7);
  if (result != 7)
  {
    v35 = result;
    (*(v7 + 8))(v27, v25);
    v36 = sub_262A29FD8();
    (*(*(v36 - 8) + 8))(v28, v36);
    (*(v38 + 8))(v23, v39);
    return v35;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2629EA3E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629EA43C()
{
  v1 = v0[1];
  MEMORY[0x26672F240](*v0);
  return MEMORY[0x26672F240](v1);
}

uint64_t sub_2629EA478()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  MEMORY[0x26672F240](v2);
  return sub_262A2A9D8();
}

uint64_t getEnumTagSinglePayload for WeekIdentifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeekIdentifier(uint64_t result, int a2, int a3)
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

unint64_t sub_2629EA544()
{
  result = qword_27FF3CB88;
  if (!qword_27FF3CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CB88);
  }

  return result;
}

uint64_t sub_2629EA5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A2A2F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_262A2A018();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2629EA6E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262A2A2F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_262A2A018();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PersistentLogger()
{
  result = qword_27FF3CB90;
  if (!qword_27FF3CB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629EA82C()
{
  result = sub_262A2A2F8();
  if (v1 <= 0x3F)
  {
    result = sub_262A2A018();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2629EA8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = type metadata accessor for PersistentLogger();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629B17C0(v3, v10);

  v11 = sub_262A2A2D8();
  v12 = a3();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446210;
    v21 = 91;
    v22 = 0xE100000000000000;
    v23 = v14;
    v15 = *(v7 + 20);
    sub_262A2A018();
    sub_2629B1880();
    v16 = sub_262A2A868();
    MEMORY[0x26672ECF0](v16);

    MEMORY[0x26672ECF0](8285, 0xE200000000000000);
    MEMORY[0x26672ECF0](a1, a2);
    v17 = v21;
    v18 = v22;
    sub_2629B1824(v10);
    v19 = sub_262A1D0CC(v17, v18, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2629A3000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26672F820](v14, -1, -1);
    MEMORY[0x26672F820](v13, -1, -1);
  }

  else
  {

    sub_2629B1824(v10);
  }
}

uint64_t sub_2629EAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger();
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
    v11 = type metadata accessor for PlanGenerationContext();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2629EAC3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger();
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
    v11 = type metadata accessor for PlanGenerationContext();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for HeuristicsProcessor()
{
  result = qword_27FF3CBA0;
  if (!qword_27FF3CBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629EADAC()
{
  type metadata accessor for PersistentLogger();
  if (v0 <= 0x3F)
  {
    sub_2629B1BAC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlanGenerationContext();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Dependencies();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2629EAE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  sub_2629CD840(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_262A2A648();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_2629CD840((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    v16 = qword_262A30AA0[v12];
    *(v27 + 16) = v15 + 1;
    *(v27 + 8 * v15 + 32) = v16;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_2629D40E8(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_2629D40E8(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2629EB0A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v5 = v4;
  v8 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v11 = *i;
      v14[0] = *(i - 1);
      v14[1] = v11;

      a2(&v13, &v15, v14);
      if (v5)
      {
        break;
      }

      v8 = v13;
      v15 = v13;
      if (!--v9)
      {
        return v8;
      }
    }
  }

  return v8;
}

double sub_2629EB170(void (*a1)(double *__return_ptr, double *, unint64_t), double a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    a1(&v15, &v16, a4 + v10);
    if (!v4)
    {
      for (i = a4 + v11 + v10; ; i = v13)
      {
        a2 = v15;
        v16 = v15;
        if (!--v6)
        {
          break;
        }

        v13 = i + v11;
        (a1)(&v15, &v16);
      }
    }
  }

  return a2;
}

BOOL sub_2629EB278(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEA00000000003638;
    v9 = 0x3932343038373431;
    switch(*v4)
    {
      case 1:
        v8 = 0xEA00000000003937;
        goto LABEL_18;
      case 2:
        v8 = 0xEA00000000003438;
        goto LABEL_18;
      case 3:
        v8 = 0xEA00000000003238;
        goto LABEL_18;
      case 4:
        v8 = 0xEA00000000003633;
        v9 = 0x3532363037343631;
        break;
      case 5:
        v8 = 0xEA00000000003839;
        v9 = 0x3332373831363531;
        break;
      case 6:
        v8 = 0xEA00000000003738;
        goto LABEL_18;
      case 7:
        v8 = 0xEA00000000003739;
        v9 = 0x3332373831363531;
        break;
      case 8:
        v9 = 0x3932343038373431;
        v8 = 0xEA00000000003038;
        break;
      case 9:
        v8 = 0xEA00000000003639;
        v9 = 0x3332373831363531;
        break;
      case 0xA:
        v8 = 0xEA00000000003338;
        goto LABEL_18;
      case 0xB:
        v8 = 0xEA00000000003138;
        goto LABEL_18;
      case 0xC:
        v8 = 0xEA00000000003635;
        v9 = 0x3032383934393431;
        break;
      case 0xD:
        v8 = 0xEA00000000003538;
LABEL_18:
        v9 = 0x3932343038373431;
        break;
      default:
        break;
    }

    v10 = 0xEA00000000003638;
    switch(a1)
    {
      case 1:
        v10 = 0xEA00000000003937;
        goto LABEL_36;
      case 2:
        v10 = 0xEA00000000003438;
        goto LABEL_36;
      case 3:
        v10 = 0xEA00000000003238;
        goto LABEL_36;
      case 4:
        v10 = 0xEA00000000003633;
        if (v9 != 0x3532363037343631)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 5:
        v10 = 0xEA00000000003839;
        goto LABEL_31;
      case 6:
        v10 = 0xEA00000000003738;
        goto LABEL_36;
      case 7:
        v10 = 0xEA00000000003739;
        goto LABEL_31;
      case 8:
        v10 = 0xEA00000000003038;
        if (v9 != 0x3932343038373431)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 9:
        v10 = 0xEA00000000003639;
LABEL_31:
        if (v9 != 0x3332373831363531)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 10:
        v10 = 0xEA00000000003338;
        goto LABEL_36;
      case 11:
        v10 = 0xEA00000000003138;
        goto LABEL_36;
      case 12:
        v10 = 0xEA00000000003635;
        if (v9 != 0x3032383934393431)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      case 13:
        v10 = 0xEA00000000003538;
        goto LABEL_36;
      default:
LABEL_36:
        if (v9 != 0x3932343038373431)
        {
          goto LABEL_2;
        }

LABEL_37:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_262A2A878();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

void sub_2629EB568(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = v2;
  sub_262A2A6F8();

  v35[0] = 0xD00000000000001FLL;
  v35[1] = 0x8000000262A32FC0;
  v7 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v7);

  sub_2629EA8C8(0xD00000000000001FLL, 0x8000000262A32FC0);

  v8 = *(a1 + 16);
  v9 = type metadata accessor for HeuristicsProcessor();
  v10 = v9;
  if (v8)
  {
    v11 = v4 + *(v9 + 24);
    v12 = type metadata accessor for PlanGenerationContext();
    if (*(*(v11 + v12[25]) + 16) && *(*(v11 + v12[24]) + 16) && *(*(v11 + v12[23]) + 16))
    {
      v31 = v4;
      v32 = &unk_287533E10;
      v33 = &unk_287533DE8;
      v13 = MEMORY[0x28223BE20](v12);
      v14 = sub_2629EBED8(sub_2629FDCF8, &v30, a1);
      v15 = *(v11 + *(v13 + 116));
      v16 = sub_262A272BC(&unk_287533DE8);
      *a2 = vdupq_n_s64(0x1EuLL);
      a2[1].i64[0] = v14;
      a2[1].i64[1] = 30;
      a2[2].i64[0] = v15;
      a2[2].i64[1] = v16;
      return;
    }

    v17 = *(v4 + *(v10 + 20));
    sub_2629B3A24();
    v18 = swift_allocError();
    *v19 = 7;
    LOBYTE(v35[0]) = 3;
    v20 = *(v17 + 16);
    v31 = v17;
    v32 = 0;
    v33 = MEMORY[0x28223BE20](v18);
    v34 = v35;
    MEMORY[0x28223BE20](v33);

    os_unfair_lock_lock(v20 + 4);
    sub_2629B3C0C(v21);
    if (!v3)
    {
      os_unfair_lock_unlock(v20 + 4);

      MEMORY[0x26672F6A0](v18);
      v22 = "User onboarded modalities are: ";
      v23 = 0xD000000000000036;
      v24 = 7;
LABEL_10:
      sub_2629EA8B0(v23, v22 | 0x8000000000000000);
      swift_allocError();
      *v29 = v24;
      swift_willThrow();
      return;
    }
  }

  else
  {
    v25 = *(v4 + *(v9 + 20));
    sub_2629B3A24();
    v26 = swift_allocError();
    *v27 = 5;
    LOBYTE(v35[0]) = 3;
    v20 = *(v25 + 16);
    v31 = v25;
    v32 = 0;
    v33 = MEMORY[0x28223BE20](v26);
    v34 = v35;
    MEMORY[0x28223BE20](v33);

    os_unfair_lock_lock(v20 + 4);
    sub_2629B3C0C(v28);
    if (!v3)
    {
      os_unfair_lock_unlock(v20 + 4);

      MEMORY[0x26672F6A0](v26);
      v22 = "y duration information";
      v23 = 0xD000000000000029;
      v24 = 5;
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(v20 + 4);
  __break(1u);
}

void sub_2629EB944(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *a1;
  v10 = a1[1];

  v12 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0();
  if (v12 != 14 && (v13 = v12, v14 = a2 + *(type metadata accessor for HeuristicsProcessor() + 24), v15 = *(v14 + *(type metadata accessor for PlanGenerationContext() + 100)), *(v15 + 16)) && (v16 = sub_2629CB1E4(v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    if (v13 > 0xBu || ((1 << v13) & 0x902) == 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = a3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_262A2B290;
    *(v21 + 32) = v18;
    *a5 = v11;
    a5[1] = v10;
    v22 = MEMORY[0x277D84F90];
    a5[2] = v21;
    a5[3] = v22;
    a5[4] = v22;
    a5[5] = v20;
  }

  else
  {
    v23 = *(a2 + *(type metadata accessor for HeuristicsProcessor() + 20));
    sub_2629B3A24();
    v24 = swift_allocError();
    *v25 = 6;
    v26 = *(v23 + 16);
    v28 = MEMORY[0x28223BE20](v24);
    MEMORY[0x28223BE20](v28);

    os_unfair_lock_lock(v26 + 4);
    sub_2629B3C0C(v27);
    os_unfair_lock_unlock(v26 + 4);
    if (v5)
    {
      __break(1u);
    }

    else
    {

      MEMORY[0x26672F6A0](v24);
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A33050);
      MEMORY[0x26672ECF0](v11, v10);
      MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A33080);
      sub_2629EA8B0(0, 0xE000000000000000);

      *(a5 + 1) = 0u;
      *(a5 + 2) = 0u;
      *a5 = 0u;
    }
  }
}

void *sub_2629EBBF4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBE8, &unk_262A30A90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v31 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(type metadata accessor for SIDArchivedSession() - 8);
  v26 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v20 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_2629ADF2C(v9, &qword_27FF3CBE8, &unk_262A30A90);
    }

    else
    {
      v21 = v29;
      sub_2629FF04C(v9, v29);
      sub_2629FF04C(v21, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2629A8FBC(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_2629A8FBC(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_2629FF04C(v31, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
      v10 = v27;
      a1 = v28;
    }

    v19 += v30;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_2629EBED8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v35 = MEMORY[0x277D84F90];
  v23 = v5;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v14 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v34[0] = *v14;
      v34[1] = v15;

      a1(&v28, v34);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v17 = v28;
      v16 = v29;
      if (v29)
      {
        v18 = v30;
        v24 = v31;
        v25 = v32;
        v26 = v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2629A9020(0, *(v35 + 2) + 1, 1, v35);
          v35 = result;
        }

        v20 = *(v35 + 2);
        v19 = *(v35 + 3);
        if (v20 >= v19 >> 1)
        {
          result = sub_2629A9020((v19 > 1), v20 + 1, 1, v35);
          v35 = result;
        }

        v21 = v35;
        *(v35 + 2) = v20 + 1;
        v22 = &v21[48 * v20];
        *(v22 + 4) = v17;
        *(v22 + 5) = v16;
        *(v22 + 6) = v18;
        *(v22 + 7) = v24;
        v4 = 0;
        *(v22 + 8) = v25;
        *(v22 + 9) = v26;
        v5 = v23;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_2629FDD18(v28, 0);
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    return v35;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v35;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629EC0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 184) = *a1;
  *(v4 + 200) = *(a1 + 16);
  *(v4 + 208) = *(a1 + 24);
  *(v4 + 224) = *(a1 + 40);
  return MEMORY[0x2822009F8](sub_2629EC12C, 0, 0);
}

uint64_t sub_2629EC12C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  *(v0 + 337) = _s10SIDFitness23SIDWorkoutDailyDurationO8rawValueACSgSi_tcfC_0(v5);
  sub_262A2A6F8();

  v8 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v8);

  sub_2629EA8C8(0xD00000000000002ELL, 0x8000000262A32F60);

  v9 = *(v7 + *(type metadata accessor for HeuristicsProcessor() + 20));
  *(v0 + 232) = v9;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_2629EC2B4;
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);

  return sub_262A295F0(v9, v0 + 16, v11, v12);
}

uint64_t sub_2629EC2B4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_2629ECD60;
  }

  else
  {
    *(v4 + 338) = a1 & 1;
    v7 = sub_2629EC3E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2629EC3E0()
{
  v73 = v1;
  v2 = *(v1 + 337);
  if (v2 == 6)
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D84F90];
  if (*(v1 + 338) != 1)
  {
    if (v2 <= 2)
    {
      if (!v2)
      {
        *&v70[0] = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v70[0];
        }

        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        v0 = v9 + 1;
        if (v9 < v8 >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_95;
      }

      if (v2 == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v2 == 3)
    {
      goto LABEL_32;
    }

    if (v2 == 4)
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = 0;
      v7 = 0;
      v4 = 1;
      v5 = 1;
    }

    else if (v2 == 4)
    {
      v7 = 0;
      v4 = 1;
      v5 = 1;
      v6 = 1;
    }

    else
    {
      v4 = 1;
      v5 = 1;
      v6 = 1;
      v7 = 1;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_76;
    }

    if (v2 == 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 1;
    }
  }

  *&v70[0] = MEMORY[0x277D84F90];
  sub_2629CD8C0(0, 1, 1);
  v3 = *&v70[0];
  v33 = *(*&v70[0] + 16);
  v32 = *(*&v70[0] + 24);
  v0 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    sub_2629CD8C0((v32 > 1), v33 + 1, 1);
    v3 = *&v70[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v33 + 32) = 0;
  if (v4)
  {
    *&v70[0] = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
      v3 = *&v70[0];
    }

    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    v0 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_2629CD8C0((v34 > 1), v35 + 1, 1);
      v3 = *&v70[0];
    }

    *(v3 + 16) = v0;
    *(v3 + v35 + 32) = 1;
    if ((v5 & 1) == 0)
    {
LABEL_57:
      if (v6)
      {
        goto LABEL_58;
      }

LABEL_70:
      if (!v7)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }
  }

  else if (!v5)
  {
    goto LABEL_57;
  }

  *&v70[0] = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
    v3 = *&v70[0];
  }

  v39 = *(v3 + 16);
  v38 = *(v3 + 24);
  v0 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    sub_2629CD8C0((v38 > 1), v39 + 1, 1);
    v3 = *&v70[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v39 + 32) = 2;
  if ((v6 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_58:
  *&v70[0] = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
    v3 = *&v70[0];
  }

  v37 = *(v3 + 16);
  v36 = *(v3 + 24);
  v0 = v37 + 1;
  if (v37 >= v36 >> 1)
  {
    sub_2629CD8C0((v36 > 1), v37 + 1, 1);
    v3 = *&v70[0];
  }

  *(v3 + 16) = v0;
  *(v3 + v37 + 32) = 3;
  if (v7)
  {
LABEL_71:
    *&v70[0] = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
      v3 = *&v70[0];
    }

    v41 = *(v3 + 16);
    v40 = *(v3 + 24);
    v0 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      sub_2629CD8C0((v40 > 1), v41 + 1, 1);
      v3 = *&v70[0];
    }

    *(v3 + 16) = v0;
    *(v3 + v41 + 32) = 4;
  }

LABEL_76:
  v9 = *(v1 + 248);
  *&v70[0] = v3;

  sub_2629F6724(v70);
  if (v9)
  {
LABEL_77:
    MEMORY[0x26672F6A0](v9);
  }

  v43 = *&v70[0];
  *(v1 + 256) = *&v70[0];
  v44 = *(v43 + 16);
  if (*(v1 + 337) == 6)
  {
    v45 = 2;
  }

  else
  {
    v45 = *(v1 + 337);
  }

  *(v1 + 264) = v44;
  *(v1 + 272) = 0;
  *(v1 + 339) = v45;
  if (v44)
  {
    v8 = *(v43 + 16);
    if (!v8)
    {
      while (1)
      {
        __break(1u);
LABEL_95:
        sub_2629CD8C0((v8 > 1), v0, 1);
        v3 = *&v70[0];
LABEL_21:
        *(v3 + 16) = v0;
        *(v3 + v9 + 32) = 1;
LABEL_22:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v70[0];
        }

        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2629CD8C0((v11 > 1), v12 + 1, 1);
          v3 = *&v70[0];
        }

        *(v3 + 16) = v12 + 1;
        *(v3 + v12 + 32) = 2;
LABEL_27:
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v3;
        if ((v13 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v70[0];
        }

        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2629CD8C0((v14 > 1), v15 + 1, 1);
          v3 = *&v70[0];
        }

        *(v3 + 16) = v15 + 1;
        *(v3 + v15 + 32) = 3;
LABEL_32:
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v3;
        if ((v16 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v70[0];
        }

        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2629CD8C0((v17 > 1), v18 + 1, 1);
          v3 = *&v70[0];
        }

        *(v3 + 16) = v18 + 1;
        *(v3 + v18 + 32) = 4;
LABEL_37:
        v19 = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v3;
        if ((v19 & 1) == 0)
        {
          sub_2629CD8C0(0, *(v3 + 16) + 1, 1);
          v3 = *&v70[0];
        }

        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v0 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_2629CD8C0((v20 > 1), v21 + 1, 1);
          v3 = *&v70[0];
        }

        *(v3 + 16) = v0;
        *(v3 + v21 + 32) = 5;
LABEL_42:
        v9 = *(v1 + 248);
        *&v70[0] = v3;

        sub_2629F68C0(v70);
        if (v9)
        {
          goto LABEL_77;
        }

        v22 = *&v70[0];
        *(v1 + 296) = *&v70[0];
        v23 = *(v22 + 16);
        *(v1 + 304) = v23;
        *(v1 + 312) = 0;
        if (!v23)
        {
          v54 = *(v1 + 232);

          sub_2629B3A24();
          v55 = swift_allocError();
          *v56 = 4;
          *(v1 + 336) = 7;
          v57 = *(v54 + 16);
          v58 = swift_task_alloc();
          v58[2] = v54;
          v58[3] = 0;
          v58[4] = v55;
          v58[5] = v1 + 336;
          v59 = swift_task_alloc();
          *(v59 + 16) = sub_2629B3A78;
          *(v59 + 24) = v58;

          os_unfair_lock_lock(v57 + 4);
          sub_2629B3A9C(v60);
          os_unfair_lock_unlock(v57 + 4);

          v62 = *(v1 + 216);
          v61 = *(v1 + 224);
          v68 = *(v1 + 184);
          v69 = *(v1 + 200);
          v63 = *(v1 + 176);

          MEMORY[0x26672F6A0](v55);
          *&v70[0] = 0;
          *(&v70[0] + 1) = 0xE000000000000000;
          sub_262A2A6F8();

          v70[0] = v68;
          v70[1] = v69;
          v71 = v62;
          v72 = v61;
          v64 = SIDWorkoutPlanScaffold.description.getter();
          MEMORY[0x26672ECF0](v64);

          sub_2629EA8B0(0xD00000000000002BLL, 0x8000000262A32F90);

          swift_allocError();
          *v65 = 4;
          swift_willThrow();
          v66 = *(v1 + 8);

          return v66();
        }

        v8 = *(v22 + 16);
        if (v8)
        {
          v24 = *(v22 + 32);
          *(v1 + 342) = v24;
          v25 = qword_262A30AE8[v24];
          v26 = *(v1 + 216);
          v27 = *(v1 + 224);
          v28 = *(v1 + 200);
          *(v1 + 88) = v25;
          *(v1 + 96) = v26;
          *(v1 + 64) = v25;
          v29 = v1 + 64;
          *(v1 + 72) = v25;
          *(v1 + 80) = v28;
          *(v1 + 104) = v27;

          v30 = swift_task_alloc();
          *(v1 + 320) = v30;
          *v30 = v1;
          v31 = sub_2629ED0AC;
          goto LABEL_84;
        }

        __break(1u);
      }
    }

    v46 = *(v43 + 32);
    *(v1 + 340) = v46;
    v47 = qword_262A30AE8[v46];
    v48 = *(v1 + 216);
    v49 = *(v1 + 224);
    v50 = *(v1 + 200);
    *(v1 + 136) = v47;
    *(v1 + 144) = v48;
    *(v1 + 112) = v47;
    v29 = v1 + 112;
    *(v1 + 120) = v47;
    *(v1 + 128) = v50;
    *(v1 + 152) = v49;

    v30 = swift_task_alloc();
    *(v1 + 280) = v30;
    *v30 = v1;
    v31 = sub_2629ECD78;
LABEL_84:
    v30[1] = v31;
    v51 = *(v1 + 232);
    v52 = *(v1 + 160);
    v53 = *(v1 + 168);

    return sub_262A295F0(v51, v29, v52, v53);
  }

  else
  {

    v67 = *(v1 + 8);

    return v67(v45);
  }
}

uint64_t sub_2629ECD78(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = *(v4 + 256);

    v8 = sub_2629ED03C;
  }

  else
  {
    v9 = *(v4 + 224);
    v10 = *(v4 + 200);

    *(v4 + 341) = a1 & 1;
    v8 = sub_2629ECEC0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_2629ECEC0()
{
  if (*(v0 + 341))
  {
    v1 = *(v0 + 340);
    v2 = *(v0 + 264);
    v3 = *(v0 + 272) + 1;
    *(v0 + 272) = v3;
    *(v0 + 339) = v1;
    if (v3 != v2)
    {
      v4 = *(v0 + 256);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = *(v4 + v3 + 32);
        *(v0 + 340) = v5;
        v6 = qword_262A30AE8[v5];
        v7 = *(v0 + 216);
        v8 = *(v0 + 224);
        v9 = *(v0 + 200);
        *(v0 + 136) = v6;
        *(v0 + 144) = v7;
        *(v0 + 112) = v6;
        *(v0 + 120) = v6;
        *(v0 + 128) = v9;
        *(v0 + 152) = v8;

        v10 = swift_task_alloc();
        *(v0 + 280) = v10;
        *v10 = v0;
        v10[1] = sub_2629ECD78;
        v11 = *(v0 + 232);
        v12 = *(v0 + 160);
        v13 = *(v0 + 168);

        sub_262A295F0(v11, v0 + 112, v12, v13);
      }

      return;
    }
  }

  else
  {
    v1 = *(v0 + 339);
  }

  v14 = *(v0 + 256);

  v15 = *(v0 + 8);

  v15(v1);
}

uint64_t sub_2629ED03C()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[36];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2629ED0AC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = *(v4 + 296);

    v8 = sub_2629ED55C;
  }

  else
  {
    v9 = *(v4 + 224);
    v10 = *(v4 + 200);

    *(v4 + 343) = a1 & 1;
    v8 = sub_2629ED1F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2629ED1F4()
{
  if (*(v0 + 343))
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 342);

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = *(v0 + 328);
    v6 = *(v0 + 304);
    v7 = *(v0 + 312) + 1;
    *(v0 + 312) = v7;
    result = *(v0 + 296);
    if (v7 == v6)
    {
      v8 = *(v0 + 232);

      sub_2629B3A24();
      v9 = swift_allocError();
      *v10 = 4;
      *(v0 + 336) = 7;
      v11 = *(v8 + 16);
      v12 = swift_task_alloc();
      v12[2] = v8;
      v12[3] = 0;
      v12[4] = v9;
      v12[5] = v0 + 336;
      v13 = swift_task_alloc();
      *(v13 + 16) = sub_2629B3A78;
      *(v13 + 24) = v12;

      os_unfair_lock_lock(v11 + 4);
      sub_2629B3A9C(v14);
      os_unfair_lock_unlock(v11 + 4);

      if (!v5)
      {
        v25 = *(v0 + 216);
        v24 = *(v0 + 224);
        v30 = *(v0 + 184);
        v31 = *(v0 + 200);
        v26 = *(v0 + 176);

        MEMORY[0x26672F6A0](v9);
        sub_262A2A6F8();

        v27 = SIDWorkoutPlanScaffold.description.getter();
        MEMORY[0x26672ECF0](v27);

        sub_2629EA8B0(0xD00000000000002BLL, 0x8000000262A32F90);

        swift_allocError();
        *v28 = 4;
        swift_willThrow();
        v29 = *(v0 + 8);

        return v29();
      }
    }

    else if (v7 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = *(result + v7 + 32);
      *(v0 + 342) = v15;
      v16 = qword_262A30AE8[v15];
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);
      v19 = *(v0 + 200);
      *(v0 + 88) = v16;
      *(v0 + 96) = v17;
      *(v0 + 64) = v16;
      *(v0 + 72) = v16;
      *(v0 + 80) = v19;
      *(v0 + 104) = v18;

      v20 = swift_task_alloc();
      *(v0 + 320) = v20;
      *v20 = v0;
      v20[1] = sub_2629ED0AC;
      v21 = *(v0 + 232);
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);

      return sub_262A295F0(v21, v0 + 64, v22, v23);
    }
  }

  return result;
}

uint64_t sub_2629ED55C()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[41];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2629ED5CC(uint64_t a1)
{
  v3 = type metadata accessor for PersistentLogger();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A33340);
  v47 = *(a1 + 16);
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD000000000000030, 0x8000000262A33360);
  sub_2629EA8C8(v48, v49);

  v7 = v1 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v8 = type metadata accessor for PlanGenerationContext();
  v9 = *(v7 + v8[12]);
  v10 = sub_2629EDEB4(v9, v1, a1);
  if (*(v10 + 16))
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_262A2A6F8();
    v11 = "fying modalities";
    v12 = 0xD000000000000018;
LABEL_5:
    MEMORY[0x26672ECF0](v12, v11 | 0x8000000000000000);
    v47 = v9;
    v13 = sub_262A2A868();
    MEMORY[0x26672ECF0](v13);

    MEMORY[0x26672ECF0](0x2D20297379616420, 0xEF20646E756F6620);
    v47 = *(v10 + 16);
    v14 = sub_262A2A868();
    MEMORY[0x26672ECF0](v14);

    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A333C0);
    sub_2629EA8C8(v48, v49);

    goto LABEL_6;
  }

  v9 = *(v7 + v8[8]);
  v10 = sub_2629EDEB4(v9, v1, a1);
  if (*(v10 + 16))
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_262A2A6F8();
    v11 = " modalities selected: ";
    v12 = 0xD000000000000019;
    goto LABEL_5;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_262A2A6F8();

  v48 = 0xD000000000000021;
  v49 = 0x8000000262A33460;
  v47 = *(v7 + v8[9]);
  v42 = v47;
  v43 = sub_262A2A868();
  MEMORY[0x26672ECF0](v43);

  MEMORY[0x26672ECF0](0x297379616420, 0xE600000000000000);
  sub_2629EA8C8(v48, v49);

  v10 = sub_2629EDEB4(v42, v1, a1);
LABEL_6:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_262A2A6F8();

  v48 = 0xD00000000000001BLL;
  v49 = 0x8000000262A333E0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBD8, &unk_262A30A70);
  sub_2629C24D0();
  v15 = sub_262A2A358();
  MEMORY[0x26672ECF0](v15);

  sub_2629EA8C8(v48, v49);

  MEMORY[0x28223BE20](v16);
  v44[-2] = v1;
  v45 = v10;
  v48 = sub_2629FE088(v10, sub_2629FF158);

  sub_2629F6A10(&v48);

  v17 = *(v7 + v8[14]);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    MEMORY[0x26672F6A0](0);

    __break(1u);
    JUMPOUT(0x2629EDE7CLL);
  }

  v44[1] = 0;
  v18 = v48;
  if (*(v48 + 16) >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v48 + 16);
  }

  if (v17 && v19)
  {
    v48 = MEMORY[0x277D84F90];
    sub_2629CD8A0(0, v19, 0);
    v20 = 32;
    v21 = v48;
    do
    {
      v22 = *(v18 + v20);
      v48 = v21;
      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_2629CD8A0((v23 > 1), v24 + 1, 1);
        v21 = v48;
      }

      *(v21 + 2) = v24 + 1;
      v21[v24 + 32] = v22;
      v20 += 16;
      --v19;
    }

    while (v19);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_262A2A6F8();

  v48 = 0xD00000000000001FLL;
  v49 = 0x8000000262A33400;
  v25 = MEMORY[0x26672EDD0](v21, &type metadata for SIDWorkoutModality);
  MEMORY[0x26672ECF0](v25);

  sub_2629EA8C8(v48, v49);

  sub_2629FEF84(v1, v46, type metadata accessor for PersistentLogger);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_262A2A6F8();

  v48 = 544239444;
  v49 = 0xE400000000000000;
  v47 = v17;
  v26 = sub_262A2A868();
  MEMORY[0x26672ECF0](v26);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33420);
  v27 = *(v21 + 2);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v27, 0);
    v29 = (v21 + 32);
    v28 = v47;
    do
    {
      v30 = *v29++;
      v31 = 0xEA00000000003638;
      v32 = 0x3932343038373431;
      switch(v30)
      {
        case 1:
          v31 = 0xEA00000000003937;
          goto LABEL_33;
        case 2:
          v31 = 0xEA00000000003438;
          goto LABEL_33;
        case 3:
          v31 = 0xEA00000000003238;
          goto LABEL_33;
        case 4:
          v31 = 0xEA00000000003633;
          v32 = 0x3532363037343631;
          break;
        case 5:
          v31 = 0xEA00000000003839;
          v32 = 0x3332373831363531;
          break;
        case 6:
          v31 = 0xEA00000000003738;
          goto LABEL_33;
        case 7:
          v31 = 0xEA00000000003739;
          v32 = 0x3332373831363531;
          break;
        case 8:
          v32 = 0x3932343038373431;
          v31 = 0xEA00000000003038;
          break;
        case 9:
          v31 = 0xEA00000000003639;
          v32 = 0x3332373831363531;
          break;
        case 10:
          v31 = 0xEA00000000003338;
          goto LABEL_33;
        case 11:
          v31 = 0xEA00000000003138;
          goto LABEL_33;
        case 12:
          v31 = 0xEA00000000003635;
          v32 = 0x3032383934393431;
          break;
        case 13:
          v31 = 0xEA00000000003538;
LABEL_33:
          v32 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v47 = v28;
      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        sub_2629CD800((v33 > 1), v34 + 1, 1);
        v28 = v47;
      }

      *(v28 + 2) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      --v27;
    }

    while (v27);
  }

  v36 = MEMORY[0x26672EDD0](v28, MEMORY[0x277D837D0]);
  v38 = v37;

  MEMORY[0x26672ECF0](v36, v38);

  v39 = v46;
  sub_2629EA8C8(v48, v49);

  sub_2629FEFEC(v39, type metadata accessor for PersistentLogger);

  v40 = sub_2629FE458(v45, v21);

  swift_bridgeObjectRelease_n();
  return v40;
}

uint64_t sub_2629EDEB4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_2629DBFF0(a2, a1, a3);
  sub_262A2A6F8();

  v13 = 0x20646E756F46;
  v14 = 0xE600000000000000;
  v12 = *(v5 + 16);
  v6 = sub_262A2A868();
  MEMORY[0x26672ECF0](v6);

  MEMORY[0x26672ECF0](0xD00000000000001ALL, 0x8000000262A33490);
  v12 = a1;
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  MEMORY[0x26672ECF0](0x6F6C207379616420, 0xEE006B6361626B6FLL);
  sub_2629EA8C8(0x20646E756F46, 0xE600000000000000);

  v8 = sub_2629FDD88(v5);

  v11[2] = a2;
  v9 = sub_2629FCB50(sub_2629FF1D8, v11, v8);

  return v9;
}

double sub_2629EE048@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_262A29FD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a3 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v15 = *(v14 + *(type metadata accessor for PlanGenerationContext() + 104));
  sub_262A29FC8();
  sub_2629DC8A8(a2, v12, v15);
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  result = v13 + v17;
  *a4 = v13 + v17;
  return result;
}

uint64_t sub_2629EE178(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v141 = a3;
  v154 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for PersistentLogger();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v143 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v135 - v17;
  v19 = *(a2 + 1);
  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_120;
  }

  v137 = a1;
  v138 = v3;
  v135 = result;
  v136 = v10;
  v140 = *a2;
  isUniquelyReferenced_nonNull_native = *(result + 56);
  v22 = *(v16 + 80);
  v139 = v19;
  v23 = v19 + ((v22 + 32) & ~v22);
  v146 = *(v16 + 72);
  v24 = MEMORY[0x277D84F90];
  v25 = v23;
  v145 = v20;
  do
  {
    v26 = type metadata accessor for PreprocessedUserHistoryWithMetadata;
    sub_2629FEF84(v25, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v27 = v18[isUniquelyReferenced_nonNull_native];
    sub_2629FEFEC(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (v27 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2629A96D4(0, *(v24 + 16) + 1, 1, v24);
      }

      v4 = *(v24 + 16);
      v28 = *(v24 + 24);
      v26 = v4 + 1;
      if (v4 >= v28 >> 1)
      {
        v24 = sub_2629A96D4((v28 > 1), v4 + 1, 1, v24);
      }

      *(v24 + 16) = v26;
      *(v24 + v4 + 32) = v27;
    }

    v25 += v146;
    --v20;
  }

  while (v20);
  v29 = sub_2629AD5F4(MEMORY[0x277D84F90]);
  v144 = *(v24 + 16);
  if (v144)
  {
    v4 = 0;
    v142 = v24 + 32;
    do
    {
      if (v4 >= *(v24 + 16))
      {
        goto LABEL_122;
      }

      v30 = *(v142 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = v29;
      v26 = sub_2629CB444(v30);
      v32 = *(v29 + 2);
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_123;
      }

      LOBYTE(v20) = v31;
      if (*(v29 + 3) >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_2629CEDEC();
          v29 = v149;
          if ((v20 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_2629D18E0(v34, isUniquelyReferenced_nonNull_native);
        v29 = v149;
        v35 = sub_2629CB444(v30);
        if ((v20 & 1) != (v36 & 1))
        {
          sub_262A2A938();
          __break(1u);
          goto LABEL_136;
        }

        v26 = v35;
        if ((v20 & 1) == 0)
        {
LABEL_20:
          *&v29[8 * (v26 >> 6) + 64] |= 1 << v26;
          *(*(v29 + 6) + v26) = v30;
          *(*(v29 + 7) + 8 * v26) = 0;
          v37 = *(v29 + 2);
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_127;
          }

          *(v29 + 2) = v39;
        }
      }

      v40 = *(v29 + 7);
      v41 = *(v40 + 8 * v26);
      v38 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v38)
      {
        goto LABEL_124;
      }

      ++v4;
      *(v40 + 8 * v26) = v42;
    }

    while (v144 != v4);
  }

  isUniquelyReferenced_nonNull_native = *(v139 + 16);
  v43 = 1 << v29[32];
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v29 + 8);
  if (v45)
  {
    v46 = 0;
    v47 = __clz(__rbit64(v45));
    v48 = (v45 - 1) & v45;
    v49 = (v43 + 63) >> 6;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v49 = (v43 + 63) >> 6;
    do
    {
      if (v49 - 1 == v51)
      {
        goto LABEL_48;
      }

      v46 = v51 + 1;
      v52 = *&v29[8 * v51 + 72];
      v50 -= 64;
      ++v51;
    }

    while (!v52);
    v48 = (v52 - 1) & v52;
    v47 = __clz(__rbit64(v52)) - v50;
  }

  v53 = *(v29 + 6);
  v54 = *(v29 + 7);
  v55 = *(v53 + v47);
  v56 = *(v54 + 8 * v47);
  v57 = v56;
  if (!v48)
  {
    goto LABEL_37;
  }

  while (2)
  {
    v58 = v46;
LABEL_41:
    v59 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v60 = v59 | (v58 << 6);
    v61 = *(v53 + v60);
    v62 = *(v54 + 8 * v60);
    if (v57 < v62)
    {
      v55 = v61;
      v56 = v62;
    }

    if (v57 <= v62)
    {
      v57 = v62;
    }

    if (v48)
    {
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_37:
    v58 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v58 >= v49)
    {
      break;
    }

    v48 = *&v29[8 * v58 + 64];
    ++v46;
    if (v48)
    {
      v46 = v58;
      goto LABEL_41;
    }
  }

  v63 = v56 / isUniquelyReferenced_nonNull_native;
  v64 = v141 + *(type metadata accessor for HeuristicsProcessor() + 24);
  if (*(v64 + *(type metadata accessor for PlanGenerationContext() + 88)) <= v63)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_262A2B290;
    v75 = qword_262A30AA0[v55];
    *(v74 + 32) = v75;
    v76 = v137;
    v77 = *v137;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v149 = *v76;
    v79 = v74;
    LOBYTE(v74) = v140;
    sub_262A1186C(v79, v140, v78);
    *v76 = v149;
    v149 = 0;
    v150 = 0xE000000000000000;
    sub_262A2A6F8();

    v149 = 0x7974696C61646F4DLL;
    v150 = 0xE900000000000020;
    v80 = SIDWorkoutModality.rawValue.getter(v74);
    MEMORY[0x26672ECF0](v80);

    MEMORY[0x26672ECF0](0xD000000000000024, 0x8000000262A33110);
    v148 = v75;
    v81 = sub_262A2A868();
    MEMORY[0x26672ECF0](v81);

    sub_2629EA8C8(v149, v150);

    goto LABEL_120;
  }

LABEL_48:
  v144 = isUniquelyReferenced_nonNull_native;
  v20 = *(v135 + 56);
  v65 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  do
  {
    v67 = v143;
    sub_2629FEF84(v23, v143, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v68 = *(v67 + v20);
    sub_2629FEFEC(v67, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (v68 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2629A9140(0, *(isUniquelyReferenced_nonNull_native + 16) + 1, 1, isUniquelyReferenced_nonNull_native);
      }

      v70 = *(isUniquelyReferenced_nonNull_native + 16);
      v69 = *(isUniquelyReferenced_nonNull_native + 24);
      if (v70 >= v69 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2629A9140((v69 > 1), v70 + 1, 1, isUniquelyReferenced_nonNull_native);
      }

      v66 = qword_262A30AA0[v68];
      *(isUniquelyReferenced_nonNull_native + 16) = v70 + 1;
      *(isUniquelyReferenced_nonNull_native + 8 * v70 + 32) = v66;
    }

    v23 += v146;
    --v145;
  }

  while (v145);
  v71 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v71)
  {
    v26 = 0;
    v72 = (isUniquelyReferenced_nonNull_native + 32);
    v4 = v140;
    v24 = v138;
    do
    {
      v73 = *v72++;
      v38 = __OFADD__(v26, v73);
      v26 += v73;
      if (v38)
      {
        goto LABEL_126;
      }

      --v71;
    }

    while (v71);
  }

  else
  {
    v26 = 0;
    v4 = v140;
    v24 = v138;
  }

  if (!v144)
  {
    goto LABEL_128;
  }

  v23 = v26 / v144;
  if (v26 / v144 >= 5)
  {
    v149 = v65;
    sub_2629CD9C0(0, 1, 1);
    v65 = v149;
    v84 = *(v149 + 16);
    v83 = *(v149 + 24);
    v82 = v84 + 1;
    if (v84 < v83 >> 1)
    {
      goto LABEL_68;
    }

    goto LABEL_132;
  }

  v82 = *(v65 + 2);
  if (v82)
  {
    goto LABEL_89;
  }

  LOBYTE(v20) = 0;
  while (2)
  {

    v99 = sub_2629EAE60(v29);
    v146 = v24;

    isUniquelyReferenced_nonNull_native = sub_262A27390(v99);

    v101 = MEMORY[0x28223BE20](v100);
    v26 = (&v135 - 4);
    *(&v135 - 16) = v20;
    v102 = *(isUniquelyReferenced_nonNull_native + 32);
    v24 = ((1 << v102) + 63) >> 6;
    v29 = v136;
    if ((v102 & 0x3Fu) > 0xD)
    {
      goto LABEL_129;
    }

    while (1)
    {
      v30 = &v135;
      MEMORY[0x28223BE20](v101);
      v26 = &v135 - ((v103 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v26, v103);
      v104 = 0;
      v105 = 0;
      v106 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
      v107 = -1;
      if (v106 < 64)
      {
        v107 = ~(-1 << v106);
      }

      v108 = v107 & *(isUniquelyReferenced_nonNull_native + 56);
      while (v108)
      {
        v109 = __clz(__rbit64(v108));
        v108 &= v108 - 1;
        v110 = v109 | (v105 << 6);
LABEL_105:
        if (*(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v110) < qword_262A30B18[v20])
        {
          *(v26 + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v110;
          v38 = __OFADD__(v104++, 1);
          if (v38)
          {
            __break(1u);
LABEL_109:
            v24 = sub_262A26988(v26, v24, v104, isUniquelyReferenced_nonNull_native);
            goto LABEL_110;
          }
        }
      }

      v111 = v105;
      while (1)
      {
        v105 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v105 >= ((v106 + 63) >> 6))
        {
          goto LABEL_109;
        }

        v112 = *(isUniquelyReferenced_nonNull_native + 56 + 8 * v105);
        ++v111;
        if (v112)
        {
          v108 = (v112 - 1) & v112;
          v110 = __clz(__rbit64(v112)) | (v105 << 6);
          goto LABEL_105;
        }
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v30 = swift_slowAlloc();
    v133 = v146;
    v134 = sub_2629FCEF4(v30, v24, isUniquelyReferenced_nonNull_native, sub_2629FEF64, v26, sub_262A126C8);
    v146 = v133;
    if (v133)
    {
      goto LABEL_137;
    }

    v24 = v134;

    MEMORY[0x26672F820](v30, -1, -1);
LABEL_110:
    v145 = v23;
    v82 = *(v24 + 16);
    if (v82)
    {
      v84 = sub_2629A9C68(*(v24 + 16), 0);
      v113 = sub_262A13890(&v149, v84 + 4, v82, v24);
      v30 = v150;
      v29 = v151;
      v4 = v152;
      v23 = v153;

      sub_2629ADE08();
      if (v113 == v82)
      {
        v29 = v136;
        v4 = v140;
        goto LABEL_114;
      }

      __break(1u);
LABEL_132:
      sub_2629CD9C0((v83 > 1), v82, 1);
      v65 = v149;
LABEL_68:
      *(v65 + 2) = v82;
      *(v84 + v65 + 32) = 0;
      if (v23 >= 0xA)
      {
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v149 = v65;
        if ((v85 & 1) == 0)
        {
          sub_2629CD9C0(0, *(v65 + 2) + 1, 1);
          v65 = v149;
        }

        v87 = *(v65 + 2);
        v86 = *(v65 + 3);
        v82 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          sub_2629CD9C0((v86 > 1), v87 + 1, 1);
          v65 = v149;
        }

        *(v65 + 2) = v82;
        v65[v87 + 32] = 1;
        if (v23 >= 0x14)
        {
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v149 = v65;
          if ((v88 & 1) == 0)
          {
            sub_2629CD9C0(0, *(v65 + 2) + 1, 1);
            v65 = v149;
          }

          v90 = *(v65 + 2);
          v89 = *(v65 + 3);
          v82 = v90 + 1;
          if (v90 >= v89 >> 1)
          {
            sub_2629CD9C0((v89 > 1), v90 + 1, 1);
            v65 = v149;
          }

          *(v65 + 2) = v82;
          v65[v90 + 32] = 2;
          if (v23 >= 0x1E)
          {
            v91 = swift_isUniquelyReferenced_nonNull_native();
            v149 = v65;
            if ((v91 & 1) == 0)
            {
              sub_2629CD9C0(0, *(v65 + 2) + 1, 1);
              v65 = v149;
            }

            v93 = *(v65 + 2);
            v92 = *(v65 + 3);
            v82 = v93 + 1;
            if (v93 >= v92 >> 1)
            {
              sub_2629CD9C0((v92 > 1), v93 + 1, 1);
              v65 = v149;
            }

            *(v65 + 2) = v82;
            v65[v93 + 32] = 3;
            if (v23 >= 0x2D)
            {
              v94 = swift_isUniquelyReferenced_nonNull_native();
              v149 = v65;
              if ((v94 & 1) == 0)
              {
                sub_2629CD9C0(0, *(v65 + 2) + 1, 1);
                v65 = v149;
              }

              v96 = *(v65 + 2);
              v95 = *(v65 + 3);
              v82 = v96 + 1;
              if (v96 >= v95 >> 1)
              {
                sub_2629CD9C0((v95 > 1), v96 + 1, 1);
                v65 = v149;
              }

              *(v65 + 2) = v82;
              v65[v96 + 32] = 4;
            }
          }
        }
      }

LABEL_89:
      LOBYTE(v20) = v65[32];
      v97 = v82 - 1;
      if (v82 != 1)
      {
        v98 = 33;
        do
        {
          if (qword_262A30B18[v20] < qword_262A30B18[v65[v98]])
          {
            LOBYTE(v20) = v65[v98];
          }

          ++v98;
          --v97;
        }

        while (v97);
      }

      continue;
    }

    break;
  }

  v84 = MEMORY[0x277D84F90];
LABEL_114:
  v114 = v146;
  v149 = v84;
  sub_2629A9EB4(&v149);
  v23 = v114;
  if (v114)
  {
LABEL_136:
    MEMORY[0x26672F6A0](v23);

    __break(1u);
LABEL_137:

    result = MEMORY[0x26672F820](v30, -1, -1);
    __break(1u);
    return result;
  }

  v115 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_262A2B290;
  v117 = qword_262A30B18[v20];
  *(v116 + 32) = v117;
  v148 = v116;
  sub_262A040F0(v115);
  v118 = v148;
  v119 = v137;
  v120 = *v137;
  v121 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v119;
  sub_262A1186C(v118, v4, v121);
  v122 = v149;
  *v119 = v149;
  sub_2629FEF84(v141, v29, type metadata accessor for PersistentLogger);
  v149 = 0;
  v150 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0x7974696C61646F4DLL, 0xE900000000000020);
  v123 = SIDWorkoutModality.rawValue.getter(v4);
  MEMORY[0x26672ECF0](v123);

  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A330A0);
  if (*(v122 + 16) && (v124 = sub_2629CB1E4(v4), (v125 & 1) != 0))
  {
    v126 = *(*(v122 + 56) + 8 * v124);
  }

  else
  {
    v126 = MEMORY[0x277D84F90];
  }

  v127 = MEMORY[0x26672EDD0](v126, MEMORY[0x277D83B88]);
  v129 = v128;

  MEMORY[0x26672ECF0](v127, v129);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A330D0);
  v147 = v117;
  v130 = sub_262A2A868();
  MEMORY[0x26672ECF0](v130);

  MEMORY[0x26672ECF0](0xD000000000000014, 0x8000000262A330F0);
  v147 = v145;
  v131 = sub_262A2A868();
  MEMORY[0x26672ECF0](v131);

  sub_2629EA8C8(v149, v150);

  result = sub_2629FEFEC(v29, type metadata accessor for PersistentLogger);
LABEL_120:
  v132 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2629EF140(uint64_t a1, uint64_t a2)
{
  v15 = sub_2629ACAA8(MEMORY[0x277D84F90]);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(a1 + 56) + 8 * v10);
    v13[0] = *(*(a1 + 48) + v10);
    v14 = v11;

    sub_2629EF288(&v15, v13, a2);
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v15;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x26672F6A0](0);

  __break(1u);
  return result;
}

uint64_t sub_2629EF288(char **a1, unsigned __int8 *a2, uint64_t a3)
{
  v135 = a3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v138 = *(v146 - 8);
  v6 = *(v138 + 64);
  v7 = MEMORY[0x28223BE20](v146);
  v9 = (&v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v7);
  v145 = &v131 - v11;
  if (!*(*(a2 + 1) + 16))
  {
    return result;
  }

  v134 = a1;
  v133 = *a2;

  v13 = sub_2629FEA84(v12);
  v132 = v3;

  v14 = MEMORY[0x277D84F90];
  v144 = sub_2629ACBA8(MEMORY[0x277D84F90]);
  v143 = sub_2629ACBA8(v14);
  v15 = 0;
  v16 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v13 + 64);
  v20 = (v17 + 63) >> 6;
  v139 = v20;
  v136 = v13 + 64;
  v137 = v13;
LABEL_5:
  v21 = v15;
  if (!v19)
  {
    goto LABEL_7;
  }

  do
  {
    v15 = v21;
LABEL_10:
    v140 = v19;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
    v23 = *(*(v13 + 48) + v22);
    v24 = *(*(*(v13 + 56) + 8 * v22) + 16);
    v142 = *(*(v13 + 56) + 8 * v22);

    v25 = v144;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v25;
    v141 = v23;
    v14 = sub_2629D41BC(v23);
    v28 = *(v25 + 16);
    v29 = (v27 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v31 = v27;
    if (*(v25 + 24) >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v147;
        if (v27)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_2629CEB04();
        v34 = v147;
        if (v31)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2629D10F4(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_2629D41BC(v141);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_111;
      }

      v14 = v32;
      v34 = v147;
      if (v31)
      {
LABEL_17:
        *(*(v34 + 7) + 8 * v14) = v24;
        v144 = v34;
        if (!v24)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }
    }

    *&v34[8 * (v14 >> 6) + 64] |= 1 << v14;
    *(*(v34 + 6) + v14) = v141;
    *(*(v34 + 7) + 8 * v14) = v24;
    v42 = *(v34 + 2);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_108;
    }

    *(v34 + 2) = v44;
    v144 = v34;
    if (!v24)
    {
LABEL_27:

      v35 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

LABEL_18:
    v147 = MEMORY[0x277D84F90];
    sub_2629CD840(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 1)
    {
      goto LABEL_107;
    }

    v35 = v147;
    v36 = v142 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v37 = *(v138 + 72);
    do
    {
      v38 = v145;
      sub_2629FEE84(v36, v145);
      sub_2629FEEF4(v38, v9);
      v39 = *v9;
      sub_2629FEFEC(v9 + *(v146 + 48), type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v147 = v35;
      v41 = *(v35 + 2);
      v40 = *(v35 + 3);
      v14 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_2629CD840((v40 > 1), v41 + 1, 1);
        v35 = v147;
      }

      *(v35 + 2) = v14;
      *&v35[8 * v41 + 32] = v39;
      v36 += v37;
      --v24;
    }

    while (v24);

    v16 = v136;
    v13 = v137;
LABEL_28:
    v19 = (v140 - 1) & v140;
    v45 = *(v35 + 2);
    if (v45)
    {
      v46 = *(v35 + 4);
      v47 = v45 - 1;
      if (v45 == 1)
      {
        goto LABEL_41;
      }

      if (v45 > 4)
      {
        v48 = v47 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v49 = vdupq_n_s64(v46);
        v50 = (v35 + 56);
        v51 = v47 & 0xFFFFFFFFFFFFFFFCLL;
        v52 = v49;
        do
        {
          v49 = vbslq_s8(vcgtq_s64(v49, v50[-1]), v50[-1], v49);
          v52 = vbslq_s8(vcgtq_s64(v52, *v50), *v50, v52);
          v50 += 2;
          v51 -= 4;
        }

        while (v51);
        v53 = vbslq_s8(vcgtq_s64(v52, v49), v49, v52);
        v54 = vextq_s8(v53, v53, 8uLL).u64[0];
        v46 = vbsl_s8(vcgtd_s64(v54, v53.i64[0]), *v53.i8, v54);
        if (v47 == (v47 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v48 = 1;
      }

      v55 = v45 - v48;
      v56 = &v35[8 * v48 + 32];
      do
      {
        v58 = *v56;
        v56 += 8;
        v57 = v58;
        if (v58 < v46)
        {
          v46 = v57;
        }

        --v55;
      }

      while (v55);
LABEL_41:

      v59 = v143;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v59;
      v61 = sub_2629D41BC(v141);
      v63 = *(v59 + 2);
      v64 = (v62 & 1) == 0;
      v43 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (!v43)
      {
        v14 = v62;
        if (*(v59 + 3) >= v65)
        {
          if ((v60 & 1) == 0)
          {
            v70 = v61;
            sub_2629CEB04();
            v61 = v70;
          }
        }

        else
        {
          sub_2629D10F4(v65, v60);
          v61 = sub_2629D41BC(v141);
          if ((v14 & 1) != (v66 & 1))
          {
LABEL_111:
            sub_262A2A938();
            __break(1u);
LABEL_112:
            MEMORY[0x26672F6A0](v14);

            __break(1u);
            return result;
          }
        }

        v67 = v147;
        v143 = v147;
        if (v14)
        {
          *(*(v147 + 7) + 8 * v61) = v46;
          v20 = v139;
          goto LABEL_5;
        }

        *&v147[8 * (v61 >> 6) + 64] |= 1 << v61;
        *(*(v67 + 6) + v61) = v141;
        *(*(v67 + 7) + 8 * v61) = v46;
        v68 = *(v67 + 2);
        v43 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (!v43)
        {
          *(v67 + 2) = v69;
          v20 = v139;
          goto LABEL_5;
        }

LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v21 = v15;
    v20 = v139;
  }

  while (v19);
  while (1)
  {
LABEL_7:
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v15 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v15);
    ++v21;
    if (v19)
    {
      goto LABEL_10;
    }
  }

  v71 = *(v135 + 16);
  v72 = MEMORY[0x277D84F90];
  if (v71)
  {
    v73 = 0;
    v74 = v135 + 32;
    v75 = MEMORY[0x277D84F90];
    v76 = v144;
LABEL_53:
    v77 = v73;
    while (v77 < v71)
    {
      v73 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_104;
      }

      if (*(v76 + 16))
      {
        v14 = *(v74 + v77);
        v78 = sub_2629D41BC(v14);
        v76 = v144;
        if (v79)
        {
          if (*(v143 + 2))
          {
            v80 = *(*(v144 + 56) + 8 * v78);
            v81 = sub_2629D41BC(v14);
            v76 = v144;
            if (v82)
            {
              v83 = *(*(v143 + 7) + 8 * v81);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              v146 = v83;
              if ((v84 & 1) == 0)
              {
                v75 = sub_2629A96E8(0, *(v75 + 2) + 1, 1, v75);
              }

              v86 = *(v75 + 2);
              v85 = *(v75 + 3);
              v76 = v144;
              if (v86 >= v85 >> 1)
              {
                v89 = sub_2629A96E8((v85 > 1), v86 + 1, 1, v75);
                v76 = v144;
                v75 = v89;
              }

              *(v75 + 2) = v86 + 1;
              v87 = &v75[24 * v86];
              v87[32] = v14;
              v88 = v146;
              *(v87 + 5) = v80;
              *(v87 + 6) = v88;
              v72 = MEMORY[0x277D84F90];
              if (v73 != v71)
              {
                goto LABEL_53;
              }

              goto LABEL_68;
            }
          }
        }
      }

      ++v77;
      if (v73 == v71)
      {
        goto LABEL_68;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v75 = MEMORY[0x277D84F90];
LABEL_68:
  if (!*(v75 + 2))
  {

    v98 = v144 + 64;
    v99 = 1 << *(v144 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & *(v144 + 64);
    v102 = (v99 + 63) >> 6;

    v104 = 0;
    v105 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    while (v101)
    {
      v107 = v101;
LABEL_85:
      v101 = (v107 - 1) & v107;
      if (*(v143 + 2))
      {
        v109 = __clz(__rbit64(v107)) | (v104 << 6);
        v110 = *(*(v103 + 56) + 8 * v109);
        v14 = *(*(v103 + 48) + v109);
        v111 = sub_2629D41BC(v14);
        v103 = v144;
        if (v112)
        {
          v113 = *(*(v143 + 7) + 8 * v111);
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v113;
          if ((v114 & 1) == 0)
          {
            v106 = sub_2629A96E8(0, *(v106 + 2) + 1, 1, v106);
          }

          v116 = *(v106 + 2);
          v115 = *(v106 + 3);
          v117 = v116 + 1;
          v103 = v144;
          if (v116 >= v115 >> 1)
          {
            v145 = v116 + 1;
            v120 = sub_2629A96E8((v115 > 1), v116 + 1, 1, v106);
            v103 = v144;
            v117 = v145;
            v106 = v120;
          }

          *(v106 + 2) = v117;
          v118 = &v106[24 * v116];
          v118[32] = v14;
          v119 = v146;
          *(v118 + 5) = v110;
          *(v118 + 6) = v119;
        }
      }
    }

    while (1)
    {
      v108 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_105;
      }

      if (v108 >= v102)
      {

        v147 = v106;

        v121 = v132;
        sub_2629F6C08(&v147);
        v14 = v121;
        if (v121)
        {
          goto LABEL_112;
        }

        v122 = v147;
        v123 = *(v147 + 2);
        if (v123)
        {
          v147 = v105;
          sub_2629CD960(0, v123, 0);
          v93 = v147;
          v124 = *(v147 + 2);
          v125 = 32;
          do
          {
            v126 = v122[v125];
            v147 = v93;
            v127 = *(v93 + 3);
            if (v124 >= v127 >> 1)
            {
              sub_2629CD960((v127 > 1), v124 + 1, 1);
              v93 = v147;
            }

            *(v93 + 2) = v124 + 1;
            v93[v124 + 32] = v126;
            v125 += 24;
            ++v124;
            --v123;
          }

          while (v123);
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      v107 = *(v98 + 8 * v108);
      ++v104;
      if (v107)
      {
        v104 = v108;
        goto LABEL_85;
      }
    }
  }

  v147 = v75;

  v90 = v132;
  sub_2629F6C08(&v147);
  v14 = v90;
  if (v90)
  {
    goto LABEL_112;
  }

  v91 = v147;
  v92 = *(v147 + 2);
  if (v92)
  {
    v147 = v72;
    sub_2629CD960(0, v92, 0);
    v93 = v147;
    v94 = *(v147 + 2);
    v95 = 32;
    do
    {
      v96 = v91[v95];
      v147 = v93;
      v97 = *(v93 + 3);
      if (v94 >= v97 >> 1)
      {
        sub_2629CD960((v97 > 1), v94 + 1, 1);
        v93 = v147;
      }

      *(v93 + 2) = v94 + 1;
      v93[v94 + 32] = v96;
      v95 += 24;
      ++v94;
      --v92;
    }

    while (v92);
LABEL_98:
  }

  else
  {
LABEL_99:

    v93 = MEMORY[0x277D84F90];
  }

  v128 = v134;
  v129 = *v134;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v128;
  sub_262A11F5C(v93, v133, v130);

  *v128 = v147;
  return result;
}

unint64_t sub_2629EFCB8(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *(a2 + 1);
  v30 = *a2;
  if (*(a6 + 16) && (v10 = sub_2629CB1E4(*a2), (v11 & 1) != 0))
  {
    v12 = *(*(a6 + 56) + 8 * v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  v35 = v13;
  v15 = (v13 + 32);
  v34 = MEMORY[0x277D84F90];
  v16 = (v13 + 32);
  while (v14)
  {
    v18 = *v16;
    if (v18 <= 2 && v18 != 1 && v18 != 2)
    {

LABEL_14:
      v19 = a7 + *(type metadata accessor for HeuristicsProcessor() + 24);
      v20 = type metadata accessor for PlanGenerationContext();
      v34 = sub_2629EFFF8(v32, *(v19 + *(v20 + 84)), a3);
      break;
    }

    v17 = sub_262A2A878();

    ++v16;
    --v14;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  v21 = *(v35 + 16);
  while (1)
  {
    if (!v21)
    {

      v24 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    v23 = *v15;
    if (v23 <= 2 && *v15 && v23 != 2)
    {
      break;
    }

    v22 = sub_262A2A878();

    ++v15;
    --v21;
    if (v22)
    {
      goto LABEL_24;
    }
  }

LABEL_24:

  v25 = a7 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v26 = type metadata accessor for PlanGenerationContext();
  v24 = sub_2629F03B4(v32, *(v25 + *(v26 + 72)), a4);
LABEL_25:
  v27 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *a1;
  result = sub_262A12124(v24, v34, v30, isUniquelyReferenced_nonNull_native);
  *a1 = v36;
  return result;
}

uint64_t sub_2629EFFF8(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD6FC(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v5 + 88);
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = v11;
    while (1)
    {
      sub_2629FEF84(v14, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v17 = v9[v13];
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v17 == 31)
      {
        goto LABEL_3;
      }

      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB4BC(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CEF60();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      v14 += v15;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    sub_2629D21B8(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB4BC(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9A10(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9A10((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F03B4(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD724(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v5 + 72);
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = v11;
    while (1)
    {
      sub_2629FEF84(v14, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v17 = v9[v13];
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v17 == 9)
      {
        goto LABEL_3;
      }

      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB548(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CEF74();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      v14 += v15;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2454(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB548(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9A24(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9A24((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

unint64_t sub_2629F0770(uint64_t *a1, unsigned __int8 *a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = *(a2 + 1);
  v48 = *a2;
  if (*(a8 + 16) && (v15 = sub_2629CB1E4(*a2), (v16 & 1) != 0))
  {
    v17 = *(*(a8 + 56) + 8 * v15);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = *(v18 + 16);
  v54 = v18;
  v20 = (v18 + 32);
  v52 = MEMORY[0x277D84F90];
  v21 = (v18 + 32);
  while (v19)
  {
    if (*v21 == 2)
    {

LABEL_10:
      v23 = a9 + *(type metadata accessor for HeuristicsProcessor() + 24);
      v24 = type metadata accessor for PlanGenerationContext();
      v52 = sub_2629F0D40(v53, *(v23 + *(v24 + 64)), a3);
      break;
    }

    v22 = sub_262A2A878();

    ++v21;
    --v19;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  v25 = *(v54 + 16);
  v51 = MEMORY[0x277D84F90];
  v26 = v20;
  while (1)
  {
    if (!v25)
    {
      v29 = a9;
      goto LABEL_22;
    }

    v28 = *v26;
    if (v28 > 2 && v28 != 4 && v28 != 5)
    {
      break;
    }

    v27 = sub_262A2A878();

    ++v26;
    --v25;
    if (v27)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  v30 = a9 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v31 = type metadata accessor for PlanGenerationContext();
  v29 = a9;
  v51 = sub_2629F1110(v53, *(v30 + *(v31 + 68)), a4);
LABEL_22:
  v32 = *(v54 + 16);
  v50 = MEMORY[0x277D84F90];
  v33 = v20;
  while (1)
  {
    if (!v32)
    {
      v36 = v29;
      goto LABEL_31;
    }

    v35 = *v33;
    if (v35 >= 4 && v35 != 5)
    {
      break;
    }

    v34 = sub_262A2A878();

    ++v33;
    --v32;
    if (v34)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  v36 = v29;
  v37 = v29 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v38 = type metadata accessor for PlanGenerationContext();
  v50 = sub_2629F14E0(v53, *(v37 + *(v38 + 80)), a5);
LABEL_31:
  v39 = *(v54 + 16);
  while (1)
  {
    if (!v39)
    {

      v42 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

    v41 = *v20;
    if (v41 > 4)
    {
      break;
    }

    v40 = sub_262A2A878();

    ++v20;
    --v39;
    if (v40)
    {
      goto LABEL_38;
    }
  }

LABEL_38:

  v43 = v36 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v44 = type metadata accessor for PlanGenerationContext();
  v42 = sub_2629F18B0(v53, *(v43 + *(v44 + 76)), a6);
LABEL_39:
  v45 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *a1;
  result = sub_262A1228C(v52, v51, v50, v42, v48, isUniquelyReferenced_nonNull_native);
  *a1 = v55;
  return result;
}

uint64_t sub_2629F0D40(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD74C(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v11;
    while (1)
    {
      sub_2629FEF84(v13, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = *&v9[*(v5 + 36)];
      if (*(v16 + 16) != 1)
      {
        goto LABEL_3;
      }

      v17 = *(v16 + 32);
      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB574(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CF104();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2A98(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB574(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9A38(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9A38((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F1110(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD774(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v11;
    while (1)
    {
      sub_2629FEF84(v13, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = *&v9[*(v5 + 44)];
      if (*(v16 + 16) != 1)
      {
        goto LABEL_3;
      }

      v17 = *(v16 + 32);
      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB618(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CF118();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D2D44(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB618(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9A4C(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9A4C((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F14E0(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD79C(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v11;
    while (1)
    {
      sub_2629FEF84(v13, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = *&v9[*(v5 + 80)];
      if (*(v16 + 16) != 1)
      {
        goto LABEL_3;
      }

      v17 = *(v16 + 32);
      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB65C(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CF12C();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D30A4(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB65C(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9A60(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9A60((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F18B0(uint64_t a1, uint64_t a2, double a3)
{
  v48 = a2;
  v5 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2629AD8B0(MEMORY[0x277D84F90]);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v15 = v11;
    while (1)
    {
      sub_2629FEF84(v13, v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v16 = *&v9[*(v5 + 76)];
      if (*(v16 + 16) != 1)
      {
        goto LABEL_3;
      }

      v17 = *(v16 + 32);
      sub_2629ADF1C(v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      v19 = sub_2629CB708(v17);
      v21 = *(v10 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_35;
      }

      v25 = v20;
      if (*(v10 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = v19;
      sub_2629CF27C();
      v19 = v32;
      v10 = v49;
      if ((v25 & 1) == 0)
      {
LABEL_11:
        *(v10 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        *(*(v10 + 48) + v19) = v17;
        *(*(v10 + 56) + 8 * v19) = 0;
        v27 = *(v10 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_37;
        }

        *(v10 + 16) = v28;
      }

LABEL_13:
      v29 = *(v10 + 56);
      v30 = *(v29 + 8 * v19);
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v29 + 8 * v19) = v31;
      v12 = sub_2629FF238;
LABEL_3:
      sub_2629FEFEC(v9, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v13 += v14;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    sub_2629D33C8(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_2629CB708(v17);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    v10 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_18:
  v33 = 0;
  v34 = 1 << *(v10 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v10 + 64);
  v37 = (v34 + 63) >> 6;
  v38 = MEMORY[0x277D84F90];
  while (v36)
  {
LABEL_26:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v33 << 6);
    v42 = *(*(v10 + 56) + 8 * v41);
    if (v42 >= v48 && v42 / v11 * 100.0 >= a3)
    {
      v47 = *(*(v10 + 48) + v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2629A9B60(0, *(v38 + 2) + 1, 1, v38);
      }

      v44 = *(v38 + 2);
      v43 = *(v38 + 3);
      if (v44 >= v43 >> 1)
      {
        v38 = sub_2629A9B60((v43 > 1), v44 + 1, 1, v38);
      }

      *(v38 + 2) = v44 + 1;
      v38[v44 + 32] = v47;
    }
  }

  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      sub_2629ADF1C(v12);
      return v38;
    }

    v36 = *(v10 + 64 + 8 * v39);
    ++v33;
    if (v36)
    {
      v33 = v39;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F1C80(uint64_t a1)
{
  v74 = sub_262A29F38();
  v2 = *(v74 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v74);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262A2A168();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v62 - v11;
  v76 = sub_262A2A058();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_262A2A128();
  v15 = *(v73 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v81 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2629AC6D4(MEMORY[0x277D84F90]);
  v24 = *(a1 + 16);
  if (!v24)
  {
    return v23;
  }

  v72 = v19;
  v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v71 = *MEMORY[0x277CC9830];
  v69 = (v12 + 8);
  v70 = (v12 + 104);
  v68 = *MEMORY[0x277CC9940];
  v67 = *MEMORY[0x277CC9960];
  v64 = (v15 + 8);
  v65 = (v2 + 8);
  v63 = *(v20 + 72);
  v66 = xmmword_262A2EA00;
  v26 = v81;
  while (1)
  {
    v80 = v24;
    sub_2629FEF84(v25, v26, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v29 = v75;
    v28 = v76;
    (*v70)(v75, v71, v76);
    sub_262A2A068();
    (*v69)(v29, v28);
    sub_262A2A088();
    v30 = v77;
    sub_262A2A038();
    v31 = sub_262A2A048();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    sub_262A2A0D8();
    sub_262A2A148();
    sub_262A2A0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
    v32 = sub_262A2A108();
    v33 = *(v32 - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v66;
    v37 = v36 + v35;
    v38 = *(v33 + 104);
    v38(v37, v68, v32);
    v38(v37 + v34, v67, v32);
    v39 = v81;
    sub_262A15860(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v40 = v72;
    v41 = v39 + *(v72 + 24);
    v42 = v18;
    sub_262A2A0A8();

    v43 = sub_262A29EB8();
    if (v44)
    {
      break;
    }

    v45 = v43;
    v46 = sub_262A29ED8();
    if (v47)
    {
      goto LABEL_23;
    }

    v48 = v46;
    v79 = *(v39 + *(v40 + 28));
    if (!v23[2] || (sub_2629CB2B8(v46, v45), (v49 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v23;
      sub_262A118B4(MEMORY[0x277D84FA0], v48, v45, isUniquelyReferenced_nonNull_native);
      v23 = v84;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v23;
    v53 = sub_2629CB2B8(v48, v45);
    v54 = v23[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      break;
    }

    v57 = v52;
    if (v23[3] >= v56)
    {
      v18 = v42;
      if (v51)
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_2629CE2C8();
        if ((v57 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_2629D0170(v56, v51);
      v58 = sub_2629CB2B8(v48, v45);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_25;
      }

      v53 = v58;
      v18 = v42;
      if ((v57 & 1) == 0)
      {
LABEL_20:
        __break(1u);
        return v23;
      }
    }

    v60 = v83;
    v82 = *(v83[7] + 8 * v53);
    sub_262A22ED4(&v84, v79);
    if (v82)
    {
      *(*(v60 + 56) + 8 * v53) = v82;
    }

    else
    {
      sub_262A10B68(v53, v60);
    }

    v27 = *v65;

    v27(v5, v74);
    (*v64)(v18, v73);
    v26 = v81;
    sub_2629FEFEC(v81, type metadata accessor for PreprocessedUserHistoryWithMetadata);

    v23 = v83;
    v25 += v63;
    v24 = v80 - 1;
    if (v80 == 1)
    {
      return v23;
    }
  }

  __break(1u);
LABEL_25:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629F23E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_2629A9CEC(*(a1 + 16), 0);
    v5 = sub_262A13690(&v16, v4 + 2, v2, a1);

    sub_2629ADE08();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = v3;
LABEL_5:
  v16 = v4;
  sub_2629F6B6C(&v16, sub_262A1F348, &type metadata for WeekIdentifier, sub_2629F9F70, sub_2629F787C);
  v6 = v16;
  v7 = v16[2];
  if (v7)
  {
    v16 = v3;
    sub_2629CD840(0, v7, 0);
    v8 = v16;
    v9 = (v6 + 40);
    while (*(a1 + 16))
    {
      v10 = sub_2629CB2B8(*(v9 - 1), *v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

      v12 = *(*(*(a1 + 56) + 8 * v10) + 16);
      v16 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2629CD840((v13 > 1), v14 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v12;
      v9 += 2;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    MEMORY[0x26672F6A0](v6);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_2629F25D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v321 = &v294 - v7;
  v8 = sub_262A2A108();
  v314 = *(v8 - 8);
  v9 = *(v314 + 64);
  MEMORY[0x28223BE20](v8);
  v320 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBB8, &qword_262A30A58);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v319 = &v294 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBC0, &unk_262A30A60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v318 = &v294 - v16;
  v323 = sub_262A29F38();
  v306 = *(v323 - 8);
  v17 = v306[8];
  v18 = MEMORY[0x28223BE20](v323);
  v304 = &v294 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v325 = &v294 - v20;
  v317 = sub_262A2A168();
  v311 = *(v317 - 8);
  v21 = *(v311 + 64);
  MEMORY[0x28223BE20](v317);
  v313 = &v294 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v312 = (&v294 - v25);
  v310 = sub_262A2A058();
  v309 = *(v310 - 8);
  v26 = *(v309 + 64);
  MEMORY[0x28223BE20](v310);
  v308 = &v294 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_262A2A128();
  v303 = *(v322 - 8);
  v28 = *(v303 + 64);
  MEMORY[0x28223BE20](v322);
  v30 = &v294 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_262A29FD8();
  v302 = *(v324 - 8);
  v31 = *(v302 + 64);
  v32 = MEMORY[0x28223BE20](v324);
  v316 = &v294 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v294 - v34;
  v36 = 0xE000000000000000;
  v335 = 0;
  v337 = 0;
  v338 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000003ALL, 0x8000000262A33220);
  v332 = a1;
  v340 = *(a1 + 16);
  v37 = sub_262A2A868();
  MEMORY[0x26672ECF0](v37);

  MEMORY[0x26672ECF0](0x6F20736B65657720, 0xEE00617461642066);
  sub_2629EA8C8(v337, v338);

  v38 = *(a2 + 16);
  v327 = v2;
  if (!v38)
  {
    v47 = 0.0;
    v44 = v332;
LABEL_15:
    v328 = v30;
    v329 = v35;
    v50 = v47;
    if (v47 <= 1)
    {
      v50 = 1;
    }

    if (v50 >= 7)
    {
      v51 = 7;
    }

    else
    {
      v51 = v50;
    }

    v337 = 0;
    v338 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33260);
    sub_262A2A598();
    MEMORY[0x26672ECF0](0x756465686373202CLL, 0xED000020676E696CLL);
    v301 = v51;
    v340 = v51;
    v52 = sub_262A2A868();
    MEMORY[0x26672ECF0](v52);

    MEMORY[0x26672ECF0](0x6570207379616420, 0xEE006B6565772072);
    sub_2629EA8C8(v337, v338);

    v39 = sub_2629AC7F0(MEMORY[0x277D84F90]);
    v36 = v44 + 64;
    v53 = 1 << *(v44 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v44 + 64);
    v56 = (v53 + 63) >> 6;

    v57 = 0;
    v58 = 0;
    v315 = v8;
    v330 = (v44 + 64);
    v326 = v56;
    while (1)
    {
      v334 = v39;
      v331 = v57;
      if (!v55)
      {
        while (1)
        {
          v59 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_239;
          }

          if (v59 >= v56)
          {
            break;
          }

          v55 = *(v36 + 8 * v59);
          ++v58;
          if (v55)
          {
            goto LABEL_28;
          }
        }

        v95 = v39;
        v97 = *(v39 + 64);
        v39 += 64;
        v96 = v97;
        v98 = 1 << *(v39 - 32);
        v99 = -1;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        v100 = v99 & v96;
        if (v100)
        {
          v101 = 0;
          v102 = __clz(__rbit64(v100));
          v103 = (v100 - 1) & v100;
          v36 = (v98 + 63) >> 6;
        }

        else
        {
          v104 = 0;
          v36 = (v98 + 63) >> 6;
          v105 = v95 + 72;
          do
          {
            if (v36 - 1 == v100)
            {
              goto LABEL_97;
            }

            v101 = v100 + 1;
            v106 = *(v105 + 8 * v100);
            v104 -= 64;
            ++v100;
          }

          while (!v106);
          v103 = (v106 - 1) & v106;
          v102 = __clz(__rbit64(v106)) - v104;
        }

        v107 = *(v334 + 48) + 16 * v102;
        v108 = *v107;
        v44 = *(v107 + 8);
        v109 = *(*(v334 + 56) + 8 * v102);

        if (!v103)
        {
          goto LABEL_66;
        }

        do
        {
LABEL_64:
          while (1)
          {
            v110 = __clz(__rbit64(v103));
            v103 &= v103 - 1;
            v111 = v110 | (v101 << 6);
            v112 = *(*(v334 + 56) + 8 * v111);
            if (v109 < v112)
            {
              break;
            }

            if (!v103)
            {
              goto LABEL_66;
            }
          }

          v114 = *(v334 + 48) + 16 * v111;
          v108 = *v114;
          v115 = *(v114 + 8);

          v44 = v115;
          v109 = v112;
        }

        while (v103);
        while (1)
        {
LABEL_66:
          v113 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            goto LABEL_240;
          }

          if (v113 >= v36)
          {
            break;
          }

          v103 = *(v39 + 8 * v113);
          ++v101;
          if (v103)
          {
            v101 = v113;
            goto LABEL_64;
          }
        }

        v116 = v109 / *(v332 + 16);
        v117 = v327 + *(type metadata accessor for HeuristicsProcessor() + 24);
        if (*(v117 + *(type metadata accessor for PlanGenerationContext() + 112)) > v116)
        {

          v44 = v332;
LABEL_97:
          sub_2629EA8C8(0xD00000000000003CLL, 0x8000000262A33280);
          v39 = sub_2629AC8EC(MEMORY[0x277D84F90]);
          v340 = v39;
          v140 = 1 << *(v44 + 32);
          if (v140 < 64)
          {
            v141 = ~(-1 << v140);
          }

          else
          {
            v141 = -1;
          }

          v142 = v141 & *(v44 + 64);
          v36 = (v140 + 63) >> 6;

          v143 = 0;
          v144 = 0;
          v145 = v330;
          v326 = v36;
          while (2)
          {
            if (v142)
            {
              v146 = v144;
LABEL_107:
              v147 = __clz(__rbit64(v142));
              v142 &= v142 - 1;
              v148 = *(*(v44 + 56) + ((v146 << 9) | (8 * v147)));
              v44 = (v148 + 7);
              v149 = 1 << *(v148 + 32);
              if (v149 < 64)
              {
                v150 = ~(-1 << v149);
              }

              else
              {
                v150 = -1;
              }

              v151 = v150 & v148[7];
              v152 = (v149 + 63) >> 6;
              v333 = v148;

              v153 = 0;
              v154 = v143;
              if (!v151)
              {
                while (1)
                {
LABEL_112:
                  v36 = v153 + 1;
                  if (__OFADD__(v153, 1))
                  {
                    goto LABEL_238;
                  }

                  if (v36 >= v152)
                  {
                    break;
                  }

                  v151 = *(v44 + 8 * v36);
                  ++v153;
                  if (v151)
                  {
                    goto LABEL_115;
                  }
                }

                v143 = v154;

                v144 = v146;
                v44 = v332;
                v145 = v330;
                v36 = v326;
                continue;
              }

              while (2)
              {
                v36 = v153;
LABEL_115:
                v155 = *(*(v333 + 6) + ((v36 << 9) | (8 * __clz(__rbit64(v151)))));
                sub_2629ADF1C(v154);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v337 = v39;
                v157 = sub_2629CB210(v155);
                v159 = *(v39 + 16);
                v160 = (v158 & 1) == 0;
                v46 = __OFADD__(v159, v160);
                v161 = v159 + v160;
                if (v46)
                {
                  goto LABEL_245;
                }

                v162 = v158;
                if (*(v39 + 24) >= v161)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_120;
                  }

                  v169 = v157;
                  sub_2629CE574();
                  v157 = v169;
                  v39 = v337;
                  if ((v162 & 1) == 0)
                  {
LABEL_121:
                    *(v39 + 8 * (v157 >> 6) + 64) |= 1 << v157;
                    *(*(v39 + 48) + 8 * v157) = v155;
                    *(*(v39 + 56) + 8 * v157) = 0;
                    v164 = *(v39 + 16);
                    v46 = __OFADD__(v164, 1);
                    v165 = v164 + 1;
                    if (v46)
                    {
                      goto LABEL_249;
                    }

                    *(v39 + 16) = v165;
                  }
                }

                else
                {
                  sub_2629D0674(v161, isUniquelyReferenced_nonNull_native);
                  v157 = sub_2629CB210(v155);
                  if ((v162 & 1) != (v163 & 1))
                  {
                    goto LABEL_266;
                  }

LABEL_120:
                  v39 = v337;
                  if ((v162 & 1) == 0)
                  {
                    goto LABEL_121;
                  }
                }

                v166 = *(v39 + 56);
                v167 = *(v166 + 8 * v157);
                v46 = __OFADD__(v167, 1);
                v168 = v167 + 1;
                if (v46)
                {
                  goto LABEL_246;
                }

                v151 &= v151 - 1;
                *(v166 + 8 * v157) = v168;
                v154 = sub_2629FF238;
                v153 = v36;
                if (!v151)
                {
                  goto LABEL_112;
                }

                continue;
              }
            }

            break;
          }

          while (1)
          {
            v146 = v144 + 1;
            if (__OFADD__(v144, 1))
            {
              goto LABEL_241;
            }

            if (v146 >= v36)
            {
              break;
            }

            v142 = v145[v146];
            ++v144;
            if (v142)
            {
              goto LABEL_107;
            }
          }

          v297 = v143;
          v296 = v39;
          v340 = v39;

          v337 = sub_2629F6D44(v44, sub_2629A9CEC, sub_262A13690);
          v170 = v335;
          sub_2629F6B6C(&v337, sub_262A1F348, &type metadata for WeekIdentifier, sub_2629FA544, sub_2629F7908);
          v171 = &v326;
          v295 = v170;
          if (v170)
          {
            goto LABEL_271;
          }

          v172 = v337;
          v173 = sub_2629AC8EC(MEMORY[0x277D84F90]);
          v174 = *(v172 + 2);
          v175 = v328;
          v36 = v329;
          v333 = v172;
          if (v174)
          {
            v176 = 0;
            v177 = v172 + 32;
            v335 = v174;
            v330 = (v172 + 32);
            while (1)
            {
              if (v176 >= *(v172 + 2))
              {
                goto LABEL_247;
              }

              if (*(v44 + 16))
              {
                v39 = v44;
                v178 = sub_2629CB2B8(*&v177[16 * v176], *&v177[16 * v176 + 8]);
                if (v179)
                {
                  break;
                }
              }

LABEL_132:
              if (++v176 == v174)
              {
                goto LABEL_157;
              }
            }

            v180 = *(*(v44 + 56) + 8 * v178);
            v36 = v180 + 56;
            v181 = 1 << *(v180 + 32);
            if (v181 < 64)
            {
              v182 = ~(-1 << v181);
            }

            else
            {
              v182 = -1;
            }

            v183 = v182 & *(v180 + 56);
            v184 = (v181 + 63) >> 6;
            v185 = *(*(v44 + 56) + 8 * v178);

            v186 = 0;
            do
            {
LABEL_140:
              if (!v183)
              {
                while (1)
                {
                  v187 = v186 + 1;
                  if (__OFADD__(v186, 1))
                  {
                    break;
                  }

                  if (v187 >= v184)
                  {

                    v175 = v328;
                    v36 = v329;
                    v172 = v333;
                    v174 = v335;
                    v177 = v330;
                    goto LABEL_132;
                  }

                  v183 = *(v36 + 8 * v187);
                  ++v186;
                  if (v183)
                  {
                    v186 = v187;
                    goto LABEL_145;
                  }
                }

                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
LABEL_247:
                __break(1u);
LABEL_248:
                __break(1u);
LABEL_249:
                __break(1u);
LABEL_250:
                __break(1u);
LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
LABEL_253:
                __break(1u);
LABEL_254:
                __break(1u);
LABEL_255:
                __break(1u);
LABEL_256:
                __break(1u);
                goto LABEL_257;
              }

LABEL_145:
              v188 = __clz(__rbit64(v183));
              v183 &= v183 - 1;
              v189 = *(*(v180 + 48) + ((v186 << 9) | (8 * v188)));
              if (!*(v173 + 2))
              {
                break;
              }

              v39 = v173;
              sub_2629CB210(v189);
            }

            while ((v190 & 1) != 0);
            v39 = v173;
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v337 = v39;
            v192 = sub_2629CB210(v189);
            v194 = *(v39 + 16);
            v195 = (v193 & 1) == 0;
            v46 = __OFADD__(v194, v195);
            v196 = v194 + v195;
            if (v46)
            {
              goto LABEL_260;
            }

            v197 = v193;
            if (*(v39 + 24) < v196)
            {
              sub_2629D0674(v196, v191);
              v39 = v337;
              v192 = sub_2629CB210(v189);
              if ((v197 & 1) != (v198 & 1))
              {
                goto LABEL_266;
              }

              goto LABEL_152;
            }

            if (v191)
            {
LABEL_152:
              v173 = v337;
              if (v197)
              {
                goto LABEL_153;
              }
            }

            else
            {
              v39 = &v337;
              v199 = v192;
              sub_2629CE574();
              v192 = v199;
              v173 = v337;
              if (v197)
              {
LABEL_153:
                *(*(v173 + 7) + 8 * v192) = v176;
                v44 = v332;
                goto LABEL_140;
              }
            }

            *&v173[8 * (v192 >> 6) + 64] |= 1 << v192;
            *(*(v173 + 6) + 8 * v192) = v189;
            *(*(v173 + 7) + 8 * v192) = v176;
            v200 = *(v173 + 2);
            v46 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v46)
            {
              __break(1u);
LABEL_266:
              sub_262A2A938();
              __break(1u);
LABEL_267:
              swift_bridgeObjectRetain_n();
              MEMORY[0x26672F6A0](v335);
              __break(1u);
LABEL_268:
              v293 = v335;
              goto LABEL_269;
            }

            *(v173 + 2) = v201;
            v44 = v332;
            goto LABEL_140;
          }

LABEL_157:
          v335 = v173;
          v336 = sub_2629AC9C8(MEMORY[0x277D84F90]);
          sub_262A29FC8();
          v202 = v309;
          v203 = v308;
          v204 = v310;
          (*(v309 + 104))(v308, *MEMORY[0x277CC9830], v310);
          sub_262A2A068();
          v205 = v203;
          v206 = v335;
          (*(v202 + 8))(v205, v204);
          sub_262A2A088();
          v207 = v312;
          sub_262A2A038();
          v208 = sub_262A2A048();
          v36 = 1;
          (*(*(v208 - 8) + 56))(v207, 0, 1, v208);
          sub_262A2A0D8();
          sub_262A2A148();
          v39 = v175;
          sub_262A2A0F8();
          v209 = v206 + 64;
          v210 = 1 << v206[32];
          v211 = -1;
          if (v210 < 64)
          {
            v211 = ~(-1 << v210);
          }

          v212 = v211 & *(v206 + 8);
          v213 = (v210 + 63) >> 6;
          v313 = v172 + 32;
          v312 = (v303 + 56);
          v311 += 56;
          LODWORD(v310) = *MEMORY[0x277CC99B8];
          v214 = (v314 + 104);
          v309 = v314 + 8;
          v308 = (v302 + 48);
          v300 = (v302 + 32);
          v299 = *MEMORY[0x277CC9968];
          v330 = (v306 + 1);
          v302 += 8;

          v44 = 0;
          v298 = xmmword_262A2B290;
          v306 = v214;
          v305 = v206 + 64;
          v307 = v213;
          if (!v212)
          {
LABEL_163:
            while (1)
            {
              v215 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_242;
              }

              if (v215 >= v213)
              {

                v337 = sub_2629F6D44(v262, sub_2629A9C68, sub_262A13790);
                v263 = v295;
                sub_2629F66A0(&v337, &v340, &v336);
                if (v263)
                {
                  v293 = v263;
                  goto LABEL_269;
                }

                v36 = v337;
                v337 = 0;
                v338 = 0xE000000000000000;
                sub_262A2A6F8();

                v337 = 0xD000000000000015;
                v338 = 0x8000000262A332C0;
                v264 = MEMORY[0x26672EDD0](v36, MEMORY[0x277D83B88]);
                MEMORY[0x26672ECF0](v264);

                sub_2629EA8C8(v337, v338);

                if (*(v36 + 16) >= v301)
                {
                  v39 = v301;
                }

                else
                {
                  v39 = *(v36 + 16);
                }

                v44 = v36 + 32;
                sub_262A2A908();
                swift_retain_n();
                v265 = swift_dynamicCastClass();
                if (!v265)
                {
                  swift_unknownObjectRelease();
                  v265 = MEMORY[0x277D84F90];
                }

                v266 = *(v265 + 16);

                if (v266 != v39)
                {
                  goto LABEL_264;
                }

                v267 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v267)
                {
                  v267 = MEMORY[0x277D84F90];
                  goto LABEL_212;
                }

                v268 = *(v267 + 16);
                if (!v268)
                {
                  goto LABEL_213;
                }

                goto LABEL_203;
              }

              v212 = *&v209[8 * v215];
              ++v44;
              if (v212)
              {
                v44 = v215;
                goto LABEL_167;
              }
            }
          }

          while (1)
          {
LABEL_167:
            v216 = (v44 << 9) | (8 * __clz(__rbit64(v212)));
            v217 = *(*(v206 + 7) + v216);
            if ((v217 & 0x8000000000000000) != 0)
            {
              goto LABEL_254;
            }

            if (v217 >= *(v172 + 2))
            {
              goto LABEL_255;
            }

            v212 &= v212 - 1;
            v332 = *(*(v206 + 6) + v216);
            v218 = &v313[16 * v217];
            v220 = *v218;
            v219 = *(v218 + 1);
            (*v312)(v318, 1, 1, v322);
            (*v311)(v319, 1, 1, v317);
            sub_262A29F28();
            sub_262A29F08();
            sub_262A29EC8();
            v221 = *v214;
            v222 = v320;
            v223 = v315;
            v221(v320, v310, v315);
            sub_262A2A118();
            v326 = *v309;
            v326(v222, v223);
            sub_262A29F18();
            v224 = v321;
            sub_262A2A0B8();
            v225 = v224;
            v226 = v224;
            v227 = v324;
            if ((*v308)(v226, 1, v324) == 1)
            {
              break;
            }

            (*v300)(v316, v225, v227);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
            v236 = *(v314 + 72);
            v237 = (*(v314 + 80) + 32) & ~*(v314 + 80);
            v238 = swift_allocObject();
            *(v238 + 16) = v298;
            v221((v238 + v237), v299, v223);
            sub_262A15860(v238);
            swift_setDeallocating();
            v326((v238 + v237), v223);
            swift_deallocClassInstance();
            v239 = v304;
            sub_262A2A098();

            v36 = sub_262A29EF8();
            v241 = v240;
            v242 = *v330;
            (*v330)(v239, v323);
            v243 = v327 + *(type metadata accessor for HeuristicsProcessor() + 24);
            v244 = *(v243 + *(type metadata accessor for PlanGenerationContext() + 136));
            v39 = v336;
            v245 = swift_isUniquelyReferenced_nonNull_native();
            v337 = v39;
            v246 = v332;
            v248 = sub_2629CB210(v332);
            v249 = *(v39 + 16);
            v250 = (v247 & 1) == 0;
            v251 = v249 + v250;
            if (__OFADD__(v249, v250))
            {
              goto LABEL_259;
            }

            v252 = v247;
            if (*(v39 + 24) >= v251)
            {
              if ((v245 & 1) == 0)
              {
                v39 = &v337;
                sub_2629CE428();
              }
            }

            else
            {
              sub_2629D0410(v251, v245);
              v39 = v337;
              v253 = sub_2629CB210(v246);
              if ((v252 & 1) != (v254 & 1))
              {
                goto LABEL_266;
              }

              v248 = v253;
            }

            v206 = v335;
            if (v241)
            {
              v255 = 0.0;
            }

            else
            {
              v255 = (v36 / 30);
            }

            v256 = pow(v244, v255);
            v257 = v337;
            if (v252)
            {
              *(*(v337 + 7) + 8 * v248) = v256;
              (*v302)(v316, v324);
              v242(v325, v323);
            }

            else
            {
              *&v337[8 * (v248 >> 6) + 64] |= 1 << v248;
              *(*(v257 + 6) + 8 * v248) = v246;
              *(*(v257 + 7) + 8 * v248) = v256;
              (*v302)(v316, v324);
              v242(v325, v323);
              v258 = *(v257 + 2);
              v46 = __OFADD__(v258, 1);
              v259 = v258 + 1;
              if (v46)
              {
                goto LABEL_262;
              }

              *(v257 + 2) = v259;
            }

            v336 = v257;
            v172 = v333;
            v209 = v305;
            v213 = v307;
            v214 = v306;
            if (!v212)
            {
              goto LABEL_163;
            }
          }

          sub_2629ADF2C(v225, &qword_27FF3C9A8, &qword_262A30A50);
          v39 = v336;
          v36 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v39;
          v228 = v332;
          v229 = sub_2629CB210(v332);
          v231 = *(v39 + 16);
          v232 = (v230 & 1) == 0;
          v46 = __OFADD__(v231, v232);
          v233 = v231 + v232;
          if (v46)
          {
            goto LABEL_258;
          }

          v234 = v230;
          if (*(v39 + 24) >= v233)
          {
            v206 = v335;
            v172 = v333;
            v213 = v307;
            v214 = v306;
            if (v36)
            {
              goto LABEL_179;
            }

            v36 = v229;
            sub_2629CE428();
            v229 = v36;
            v39 = v337;
            if ((v234 & 1) == 0)
            {
              goto LABEL_190;
            }

LABEL_180:
            *(*(v39 + 56) + 8 * v229) = 0;
            (*v330)(v325, v323);
          }

          else
          {
            sub_2629D0410(v233, v36);
            v229 = sub_2629CB210(v228);
            v206 = v335;
            v172 = v333;
            v213 = v307;
            v214 = v306;
            if ((v234 & 1) != (v235 & 1))
            {
              goto LABEL_266;
            }

LABEL_179:
            v39 = v337;
            if (v234)
            {
              goto LABEL_180;
            }

LABEL_190:
            *(v39 + 8 * (v229 >> 6) + 64) |= 1 << v229;
            *(*(v39 + 48) + 8 * v229) = v228;
            *(*(v39 + 56) + 8 * v229) = 0;
            (*v330)(v325, v323);
            v260 = *(v39 + 16);
            v46 = __OFADD__(v260, 1);
            v261 = v260 + 1;
            if (v46)
            {
              goto LABEL_263;
            }

            *(v39 + 16) = v261;
          }

          v336 = v39;
          v209 = v305;
          if (!v212)
          {
            goto LABEL_163;
          }

          goto LABEL_167;
        }

        v337 = v108;
        v338 = v44;
        v118 = sub_2629FF0B0();
        v119 = MEMORY[0x26672EED0](45, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v118);

        v120 = *(v119 + 16);
        if (!v120)
        {
          v39 = MEMORY[0x277D84F90];
          goto LABEL_225;
        }

        v121 = 0;
        v39 = MEMORY[0x277D84F90];
LABEL_76:
        v122 = (v119 + 56 + 32 * v121);
        v123 = v121;
        while (1)
        {
          if (v123 >= *(v119 + 16))
          {
            goto LABEL_248;
          }

          v124 = *(v122 - 3);
          v125 = *(v122 - 2);
          if ((v125 ^ v124) >> 14)
          {
            v126 = *(v122 - 1);
            v44 = *v122;
            if ((*v122 & 0x1000000000000000) != 0)
            {
              v132 = *v122;
              v133 = *(v122 - 2);
              v134 = *(v122 - 3);
              v333 = *(v122 - 1);

              v131 = sub_2629FD2EC(v134, v133, v333, v44, 10);
              v36 = v135;

              if ((v36 & 1) == 0)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if ((v44 & 0x2000000000000000) != 0)
              {
                v337 = *(v122 - 1);
                v338 = v44 & 0xFFFFFFFFFFFFFFLL;
                v127 = &v337;
              }

              else if ((v126 & 0x1000000000000000) != 0)
              {
                v127 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v136 = *(v122 - 1);
                v333 = *(v122 - 3);
                v137 = v125;
                v138 = v126;
                v127 = sub_262A2A728();
                v126 = v138;
                v124 = v333;
                v125 = v137;
              }

              v128 = v335;
              v129 = sub_2629FE618(v127, v124, v125, v126, v44, 10);
              v335 = v128;
              if (v128)
              {
                goto LABEL_267;
              }

              v131 = v129;
              LOBYTE(v340) = v130 & 1;

              v36 = v340;

              if ((v36 & 1) == 0)
              {
LABEL_91:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v39 = sub_2629A9140(0, *(v39 + 16) + 1, 1, v39);
                }

                v36 = *(v39 + 16);
                v139 = *(v39 + 24);
                if (v36 >= v139 >> 1)
                {
                  v39 = sub_2629A9140((v139 > 1), v36 + 1, 1, v39);
                }

                v121 = v123 + 1;
                *(v39 + 16) = v36 + 1;
                *(v39 + 8 * v36 + 32) = v131;
                if (v120 - 1 == v123)
                {
LABEL_225:

                  v282 = *(v39 + 16);
                  if (v282)
                  {
                    v283 = (v39 + 32);
                    v270 = MEMORY[0x277D84F90];
                    do
                    {
                      v285 = *v283++;
                      v284 = v285;
                      if (v285 <= 6)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v270 = sub_2629A9350(0, *(v270 + 2) + 1, 1, v270);
                        }

                        v287 = *(v270 + 2);
                        v286 = *(v270 + 3);
                        if (v287 >= v286 >> 1)
                        {
                          v270 = sub_2629A9350((v286 > 1), v287 + 1, 1, v270);
                        }

                        *(v270 + 2) = v287 + 1;
                        v270[v287 + 32] = v284;
                      }

                      --v282;
                    }

                    while (v282);
                  }

                  else
                  {
                    v270 = MEMORY[0x277D84F90];
                  }

                  v337 = 0;
                  v338 = 0xE000000000000000;
                  swift_bridgeObjectRetain_n();
                  sub_262A2A6F8();
                  MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A33300);
                  v288 = MEMORY[0x26672EDD0](v270, &type metadata for SIDWeekday);
                  v290 = v289;

                  MEMORY[0x26672ECF0](v288, v290);

                  sub_2629EA8C8(v337, v338);

                  sub_2629ADF1C(v331);
                  return v270;
                }

                goto LABEL_76;
              }
            }
          }

          ++v123;
          v122 += 4;
          if (v120 == v123)
          {
            goto LABEL_225;
          }
        }
      }

      v59 = v58;
LABEL_28:
      v60 = *(v44 + 56);
      v61 = (v59 << 9) | (8 * __clz(__rbit64(v55)));
      v62 = *(v60 + v61);
      v39 = *(v62 + 16);
      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
        v44 = swift_allocObject();
        v63 = _swift_stdlib_malloc_size(v44);
        v64 = v63 - 32;
        if (v63 < 32)
        {
          v64 = v63 - 25;
        }

        *(v44 + 16) = v39;
        *(v44 + 24) = 2 * (v64 >> 3);
        v333 = sub_262A13890(&v337, (v44 + 32), v39, v62);
        v36 = v339;
        swift_bridgeObjectRetain_n();
        sub_2629ADE08();
        if (v333 != v39)
        {
          goto LABEL_252;
        }
      }

      else
      {
        v65 = *(v60 + v61);

        v44 = MEMORY[0x277D84F90];
      }

      v337 = v44;
      v66 = v335;
      sub_2629A9EB4(&v337);
      v335 = v66;
      if (v66)
      {
        goto LABEL_268;
      }

      v67 = v337;
      v68 = *(v337 + 2);
      if (v68)
      {
        v337 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v68, 0);
        v69 = v337;
        v70 = 32;
        do
        {
          v340 = *&v67[v70];
          v71 = sub_262A2A868();
          v337 = v69;
          v74 = *(v69 + 2);
          v73 = *(v69 + 3);
          if (v74 >= v73 >> 1)
          {
            v76 = v71;
            v77 = v72;
            sub_2629CD800((v73 > 1), v74 + 1, 1);
            v72 = v77;
            v71 = v76;
            v69 = v337;
          }

          *(v69 + 2) = v74 + 1;
          v75 = &v69[16 * v74];
          *(v75 + 4) = v71;
          *(v75 + 5) = v72;
          v70 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {

        v69 = MEMORY[0x277D84F90];
      }

      v337 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
      sub_2629ADBD8();
      v78 = sub_262A2A398();
      v80 = v79;

      sub_2629ADF1C(v331);
      v39 = v334;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v337 = v39;
      v44 = sub_2629CB0BC(v78, v80);
      v83 = *(v39 + 16);
      v84 = (v82 & 1) == 0;
      v85 = v83 + v84;
      v36 = v330;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_250;
      }

      v86 = v82;
      if (*(v39 + 24) >= v85)
      {
        if (v81)
        {
          v39 = v337;
          if (v82)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_2629CE6C0();
          v39 = v337;
          if (v86)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        sub_2629D08D8(v85, v81);
        v87 = sub_2629CB0BC(v78, v80);
        if ((v86 & 1) != (v88 & 1))
        {
          while (1)
          {
            sub_262A2A938();
            __break(1u);
LABEL_271:
            v293 = *(v171 - 32);
LABEL_269:
            MEMORY[0x26672F6A0](v293);

            __break(1u);
          }
        }

        v44 = v87;
        v39 = v337;
        if (v86)
        {
LABEL_49:

          goto LABEL_53;
        }
      }

      *(v39 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v89 = (*(v39 + 48) + 16 * v44);
      *v89 = v78;
      v89[1] = v80;
      *(*(v39 + 56) + 8 * v44) = 0;
      v90 = *(v39 + 16);
      v46 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v46)
      {
        goto LABEL_253;
      }

      *(v39 + 16) = v91;
LABEL_53:
      v92 = *(v39 + 56);
      v93 = *(v92 + 8 * v44);
      v46 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      v56 = v326;
      if (v46)
      {
        goto LABEL_251;
      }

      v55 &= v55 - 1;
      *(v92 + 8 * v44) = v94;
      v57 = sub_2629FF238;
      v58 = v59;
      v44 = v332;
    }
  }

  v39 = v2 + *(type metadata accessor for HeuristicsProcessor() + 24);
  v40 = type metadata accessor for PlanGenerationContext();
  v41 = a2 + 32;
  v42 = 0;
  if (*(v39 + *(v40 + 132)))
  {
    v43 = 0;
    v44 = v332;
    do
    {
      v45 = *(v41 + 8 * v42);
      v46 = __OFADD__(v43, v45);
      v43 += v45;
      if (v46)
      {
        goto LABEL_243;
      }

      ++v42;
    }

    while (v38 != v42);
    v47 = floor(v43 / v38);
  }

  else
  {
    v48 = 0;
    v44 = v332;
    do
    {
      v49 = *(v41 + 8 * v42);
      v46 = __OFADD__(v48, v49);
      v48 += v49;
      if (v46)
      {
        goto LABEL_244;
      }

      ++v42;
    }

    while (v38 != v42);
    v47 = round(v48 / v38);
  }

  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v47 <= -9.22337204e18)
    {
      goto LABEL_256;
    }

    if (v47 < 9.22337204e18)
    {
      goto LABEL_15;
    }

LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
  }

  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  swift_unknownObjectRelease();
  sub_2629F6C74(v36, v44, 0, (2 * v39) | 1);
  v267 = v292;
LABEL_212:
  swift_unknownObjectRelease();
  v268 = *(v267 + 16);
  if (v268)
  {
LABEL_203:
    v269 = (v267 + 32);
    v270 = MEMORY[0x277D84F90];
    do
    {
      v272 = *v269++;
      v271 = v272;
      if (v272 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v270 = sub_2629A9350(0, *(v270 + 2) + 1, 1, v270);
        }

        v274 = *(v270 + 2);
        v273 = *(v270 + 3);
        if (v274 >= v273 >> 1)
        {
          v270 = sub_2629A9350((v273 > 1), v274 + 1, 1, v270);
        }

        *(v270 + 2) = v274 + 1;
        v270[v274 + 32] = v271;
      }

      --v268;
    }

    while (v268);
  }

  else
  {
LABEL_213:
    v270 = MEMORY[0x277D84F90];
  }

  v337 = 0;
  v338 = 0xE000000000000000;
  sub_262A2A6F8();

  v337 = 0xD000000000000017;
  v338 = 0x8000000262A332E0;
  v275 = MEMORY[0x26672EDD0](v270, &type metadata for SIDWeekday);
  MEMORY[0x26672ECF0](v275);

  sub_2629EA8C8(v337, v338);

  v276 = *(v36 + 16);
  if (v276)
  {
    v277 = MEMORY[0x277D84F90];
    do
    {
      v279 = *v44;
      v44 += 8;
      v278 = v279;
      if (v279 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v277 = sub_2629A9350(0, *(v277 + 2) + 1, 1, v277);
        }

        v281 = *(v277 + 2);
        v280 = *(v277 + 3);
        if (v281 >= v280 >> 1)
        {
          v277 = sub_2629A9350((v280 > 1), v281 + 1, 1, v277);
        }

        *(v277 + 2) = v281 + 1;
        v277[v281 + 32] = v278;
      }

      --v276;
    }

    while (v276);
  }

  (*(v303 + 8))(v328, v322);
  (*v302)(v329, v324);

  sub_2629ADF1C(v331);
  sub_2629ADF1C(v297);
  return v270;
}