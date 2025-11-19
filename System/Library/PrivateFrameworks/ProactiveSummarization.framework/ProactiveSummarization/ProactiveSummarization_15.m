unint64_t sub_231DE2744()
{
  result = qword_27DD86690;
  if (!qword_27DD86690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86690);
  }

  return result;
}

unint64_t sub_231DE2798()
{
  result = qword_27DD86698;
  if (!qword_27DD86698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86698);
  }

  return result;
}

unint64_t sub_231DE27EC()
{
  result = qword_27DD866A0;
  if (!qword_27DD866A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866A0);
  }

  return result;
}

unint64_t sub_231DE2840()
{
  result = qword_27DD866A8;
  if (!qword_27DD866A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866A8);
  }

  return result;
}

unint64_t sub_231DE2894()
{
  result = qword_27DD866B0;
  if (!qword_27DD866B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866B0);
  }

  return result;
}

unint64_t sub_231DE28E8()
{
  result = qword_27DD866B8;
  if (!qword_27DD866B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866B8);
  }

  return result;
}

unint64_t sub_231DE293C()
{
  result = qword_27DD866C0;
  if (!qword_27DD866C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866C0);
  }

  return result;
}

unint64_t sub_231DE2990()
{
  result = qword_27DD866C8;
  if (!qword_27DD866C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866C8);
  }

  return result;
}

unint64_t sub_231DE29E4()
{
  result = qword_27DD866D0;
  if (!qword_27DD866D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866D0);
  }

  return result;
}

unint64_t sub_231DE2A38()
{
  result = qword_27DD866D8;
  if (!qword_27DD866D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866D8);
  }

  return result;
}

unint64_t sub_231DE2A8C()
{
  result = qword_27DD866E0;
  if (!qword_27DD866E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866E0);
  }

  return result;
}

unint64_t sub_231DE2AE0()
{
  result = qword_27DD866E8;
  if (!qword_27DD866E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866E8);
  }

  return result;
}

unint64_t sub_231DE2B34()
{
  result = qword_27DD866F0;
  if (!qword_27DD866F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866F0);
  }

  return result;
}

unint64_t sub_231DE2B88()
{
  result = qword_27DD866F8;
  if (!qword_27DD866F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD866F8);
  }

  return result;
}

unint64_t sub_231DE2BDC()
{
  result = qword_27DD86700;
  if (!qword_27DD86700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86700);
  }

  return result;
}

uint64_t sub_231DE2C30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD757F8, &qword_231E234E0);
  result = sub_231E11EF0();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_35:
    *v3 = v8;
    return result;
  }

  v36 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        sub_231CFD55C(0, (v35 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 48) + 40 * v19;
    if (a2)
    {
      v21 = *v20;
      v22 = *(v20 + 16);
      v40 = *(v20 + 32);
      v38 = v21;
      v39 = v22;
      sub_231CE1044((*(v5 + 56) + 32 * v19), v37);
    }

    else
    {
      sub_231CF45B4(v20, &v38);
      sub_231CB51C4(*(v5 + 56) + 32 * v19, v37);
    }

    v23 = *(v8 + 40);
    result = sub_231E11D00();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v8 + 48) + 40 * v27;
    v33 = v38;
    v34 = v39;
    *(v32 + 32) = v40;
    *v32 = v33;
    *(v32 + 16) = v34;
    result = sub_231CE1044(v37, (*(v8 + 56) + 32 * v27));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_231DE2EE4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_231DE2F44(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_231E12220();
  MEMORY[0x23837D730](a1);
  v4 = sub_231E12250();

  return sub_231DE2EE4(a1, v4);
}

uint64_t sub_231DE2FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_231DE2F44(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75828, &qword_231E22A20);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_231DE2F44(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = v15 + *(*(type metadata accessor for SummarizationAnalytics.Interval(0) - 8) + 72) * v9;

    return sub_231DE7368(a1, v16);
  }

  else
  {

    return sub_231DE322C(v9, a2, a1, v14);
  }
}

void sub_231DE30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231CE0CA4(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75818, &qword_231E22A10);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231CE0CA4(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_231E12160();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_231DE32D4(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_231DE322C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v5 = a4[7];
  v6 = *(*(type metadata accessor for SummarizationAnalytics.Interval(0) - 8) + 72);
  result = sub_231DE35F8();
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_231DE32D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_231DE333C()
{
  result = qword_27DD86708;
  if (!qword_27DD86708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86708);
  }

  return result;
}

unint64_t sub_231DE3390(uint64_t a1)
{
  result = OUTLINED_FUNCTION_139_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_231DE33F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231DE342C()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_59_0();
  v6(v5);
  return v0;
}

unint64_t sub_231DE3484()
{
  result = qword_27DD86710;
  if (!qword_27DD86710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86710);
  }

  return result;
}

unint64_t sub_231DE34D8()
{
  result = qword_27DD86718;
  if (!qword_27DD86718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86718);
  }

  return result;
}

unint64_t sub_231DE352C()
{
  result = qword_27DD86720;
  if (!qword_27DD86720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86720);
  }

  return result;
}

void sub_231DE3580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_134_1();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_231DE35F8()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_59_0();
  v6(v5);
  return v0;
}

unint64_t sub_231DE3650()
{
  result = qword_2814CAF70;
  if (!qword_2814CAF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75618, &qword_231E205D8);
    sub_231DE73CC(&unk_2814CAF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAF70);
  }

  return result;
}

unint64_t sub_231DE3700()
{
  result = qword_27DD86728;
  if (!qword_27DD86728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD86728);
  }

  return result;
}

uint64_t sub_231DE37E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_231DE3844(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  OUTLINED_FUNCTION_45_5();
  swift_beginAccess();
  sub_231DE23CC();
  v4 = *(*(v3 + 24) + 16);
  sub_231DE2418(v4);
  v5 = *(v3 + 24);
  *(v5 + 16) = v4 + 1;
  v4[v5 + 32] = v2;
  *(v3 + 24) = v5;
  return swift_endAccess();
}

uint64_t sub_231DE38D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_231DDACA0();
}

uint64_t sub_231DE3904@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231DDA740(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_231DE3938()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v4[1] = sub_231CBFF60;
  OUTLINED_FUNCTION_23_9();

  return sub_231DDBE3C();
}

void sub_231DE39CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_231DDC060();
}

void sub_231DE3A30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_231DDC610();
}

uint64_t sub_231DE3A60()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17(v6);
  *v7 = v10;
  v7[1] = sub_231CBFF60;

  return sub_231DDCD40(v2, v8, v9, v3, v5, v4);
}

unint64_t sub_231DE3B0C()
{
  result = qword_27DD86730[0];
  if (!qword_27DD86730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD86730);
  }

  return result;
}

unint64_t sub_231DE3B60()
{
  result = qword_27DD75658;
  if (!qword_27DD75658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75658);
  }

  return result;
}

unint64_t sub_231DE3BB4()
{
  result = qword_27DD75660;
  if (!qword_27DD75660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75660);
  }

  return result;
}

unint64_t sub_231DE3C08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_139_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75668, &qword_231E20648);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_231DE3C70()
{
  result = qword_27DD75678;
  if (!qword_27DD75678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75678);
  }

  return result;
}

unint64_t sub_231DE3CC4()
{
  result = qword_27DD75680;
  if (!qword_27DD75680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75680);
  }

  return result;
}

unint64_t sub_231DE3D18()
{
  result = qword_27DD75688;
  if (!qword_27DD75688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75688);
  }

  return result;
}

unint64_t sub_231DE3D6C()
{
  result = qword_27DD75690;
  if (!qword_27DD75690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75690);
  }

  return result;
}

unint64_t sub_231DE3DC0()
{
  result = qword_27DD75698;
  if (!qword_27DD75698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75698);
  }

  return result;
}

unint64_t sub_231DE3E14()
{
  result = qword_27DD756A0;
  if (!qword_27DD756A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756A0);
  }

  return result;
}

unint64_t sub_231DE3E68(uint64_t a1)
{
  result = OUTLINED_FUNCTION_139_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75630, &unk_231E205F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_231DE3EB4()
{
  result = qword_27DD756B8;
  if (!qword_27DD756B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756B8);
  }

  return result;
}

unint64_t sub_231DE3F08()
{
  result = qword_27DD756C0;
  if (!qword_27DD756C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756C0);
  }

  return result;
}

unint64_t sub_231DE3F5C()
{
  result = qword_27DD756D0;
  if (!qword_27DD756D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756D0);
  }

  return result;
}

unint64_t sub_231DE3FB0()
{
  result = qword_27DD756D8;
  if (!qword_27DD756D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756D8);
  }

  return result;
}

unint64_t sub_231DE4004()
{
  result = qword_27DD756E0;
  if (!qword_27DD756E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756E0);
  }

  return result;
}

unint64_t sub_231DE4058()
{
  result = qword_27DD756E8;
  if (!qword_27DD756E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756E8);
  }

  return result;
}

unint64_t sub_231DE40AC()
{
  result = qword_27DD756F0;
  if (!qword_27DD756F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756F0);
  }

  return result;
}

unint64_t sub_231DE4100()
{
  result = qword_27DD756F8;
  if (!qword_27DD756F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD756F8);
  }

  return result;
}

unint64_t sub_231DE4158()
{
  result = qword_27DD75700;
  if (!qword_27DD75700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75700);
  }

  return result;
}

unint64_t sub_231DE41B0()
{
  result = qword_27DD75708;
  if (!qword_27DD75708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75708);
  }

  return result;
}

unint64_t sub_231DE4208()
{
  result = qword_2814CB948[0];
  if (!qword_2814CB948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CB948);
  }

  return result;
}

unint64_t sub_231DE4260()
{
  result = qword_27DD75710;
  if (!qword_27DD75710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75710);
  }

  return result;
}

unint64_t sub_231DE42B8()
{
  result = qword_27DD75718;
  if (!qword_27DD75718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75718);
  }

  return result;
}

unint64_t sub_231DE4310()
{
  result = qword_27DD75720;
  if (!qword_27DD75720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75720);
  }

  return result;
}

unint64_t sub_231DE4368()
{
  result = qword_27DD75728;
  if (!qword_27DD75728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75728);
  }

  return result;
}

unint64_t sub_231DE43C0()
{
  result = qword_27DD75730;
  if (!qword_27DD75730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75730);
  }

  return result;
}

unint64_t sub_231DE4418()
{
  result = qword_27DD75738;
  if (!qword_27DD75738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75738);
  }

  return result;
}

uint64_t sub_231DE4488()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_231DE45E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_231DE4620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.SectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.SectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 22);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 22);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 22);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 21);
        }

        break;
    }
  }

  return result;
}

void sub_231DE4A64()
{
  sub_231DE4AD8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SummarizationAnalytics.Interval.Complete(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_231DE4AD8()
{
  if (!qword_2814CBC68)
  {
    v0 = sub_231E0F950();
    if (!v1)
    {
      atomic_store(v0, &qword_2814CBC68);
    }
  }
}

uint64_t sub_231DE4B48()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.Issue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 14);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.Issue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.AnalyticsFinishedLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 9);
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

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.AnalyticsFinishedLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.CaptioningResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.CaptioningResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231DE4FD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_231DE5018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 33);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 33);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 33);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 32);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationAnalytics.ErrorAnalytics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationAnalytics.ErrorAnalytics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_231DE533C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s22ProactiveSummarization22SummarizationAnalyticsC8IntervalO10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231DE54B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 20);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 20);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 20);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *sub_231DE5540(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 19);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231DE5750()
{
  result = qword_27DD895D0[0];
  if (!qword_27DD895D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD895D0);
  }

  return result;
}

unint64_t sub_231DE57A8()
{
  result = qword_27DD897E0[0];
  if (!qword_27DD897E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD897E0);
  }

  return result;
}

unint64_t sub_231DE5800()
{
  result = qword_27DD899F0;
  if (!qword_27DD899F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD899F0);
  }

  return result;
}

unint64_t sub_231DE5858()
{
  result = qword_27DD89C00[0];
  if (!qword_27DD89C00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD89C00);
  }

  return result;
}

unint64_t sub_231DE58B0()
{
  result = qword_27DD89E10[0];
  if (!qword_27DD89E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD89E10);
  }

  return result;
}

unint64_t sub_231DE5908()
{
  result = qword_27DD8A020[0];
  if (!qword_27DD8A020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A020);
  }

  return result;
}

unint64_t sub_231DE5960()
{
  result = qword_27DD8A230[0];
  if (!qword_27DD8A230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A230);
  }

  return result;
}

unint64_t sub_231DE59B8()
{
  result = qword_27DD8A340;
  if (!qword_27DD8A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A340);
  }

  return result;
}

unint64_t sub_231DE5A10()
{
  result = qword_27DD8A348[0];
  if (!qword_27DD8A348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A348);
  }

  return result;
}

unint64_t sub_231DE5A68()
{
  result = qword_27DD8A3D0;
  if (!qword_27DD8A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A3D0);
  }

  return result;
}

unint64_t sub_231DE5AC0()
{
  result = qword_27DD8A3D8[0];
  if (!qword_27DD8A3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A3D8);
  }

  return result;
}

unint64_t sub_231DE5B18()
{
  result = qword_27DD8A460;
  if (!qword_27DD8A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A460);
  }

  return result;
}

unint64_t sub_231DE5B70()
{
  result = qword_27DD8A468[0];
  if (!qword_27DD8A468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A468);
  }

  return result;
}

unint64_t sub_231DE5BC8()
{
  result = qword_27DD8A4F0;
  if (!qword_27DD8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A4F0);
  }

  return result;
}

unint64_t sub_231DE5C20()
{
  result = qword_27DD8A4F8[0];
  if (!qword_27DD8A4F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A4F8);
  }

  return result;
}

unint64_t sub_231DE5C78()
{
  result = qword_27DD8A580;
  if (!qword_27DD8A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A580);
  }

  return result;
}

unint64_t sub_231DE5CD0()
{
  result = qword_27DD8A588[0];
  if (!qword_27DD8A588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A588);
  }

  return result;
}

unint64_t sub_231DE5D28()
{
  result = qword_27DD8A610;
  if (!qword_27DD8A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A610);
  }

  return result;
}

unint64_t sub_231DE5D80()
{
  result = qword_27DD8A618[0];
  if (!qword_27DD8A618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A618);
  }

  return result;
}

unint64_t sub_231DE5DD8()
{
  result = qword_27DD8A6A0;
  if (!qword_27DD8A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A6A0);
  }

  return result;
}

unint64_t sub_231DE5E30()
{
  result = qword_27DD8A6A8[0];
  if (!qword_27DD8A6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A6A8);
  }

  return result;
}

unint64_t sub_231DE5E88()
{
  result = qword_27DD8A730;
  if (!qword_27DD8A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A730);
  }

  return result;
}

unint64_t sub_231DE5EE0()
{
  result = qword_27DD8A738[0];
  if (!qword_27DD8A738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A738);
  }

  return result;
}

unint64_t sub_231DE5F38()
{
  result = qword_27DD8A7C0;
  if (!qword_27DD8A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A7C0);
  }

  return result;
}

unint64_t sub_231DE5F90()
{
  result = qword_27DD8A7C8[0];
  if (!qword_27DD8A7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A7C8);
  }

  return result;
}

unint64_t sub_231DE5FE8()
{
  result = qword_27DD8A850;
  if (!qword_27DD8A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A850);
  }

  return result;
}

unint64_t sub_231DE6040()
{
  result = qword_27DD8A858[0];
  if (!qword_27DD8A858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A858);
  }

  return result;
}

unint64_t sub_231DE6098()
{
  result = qword_27DD8A8E0;
  if (!qword_27DD8A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A8E0);
  }

  return result;
}

unint64_t sub_231DE60F0()
{
  result = qword_27DD8A8E8[0];
  if (!qword_27DD8A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8A8E8);
  }

  return result;
}

unint64_t sub_231DE6148()
{
  result = qword_27DD8A970;
  if (!qword_27DD8A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A970);
  }

  return result;
}

unint64_t sub_231DE61A0()
{
  result = qword_27DD8A978;
  if (!qword_27DD8A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8A978);
  }

  return result;
}

unint64_t sub_231DE61F8()
{
  result = qword_27DD8AA00;
  if (!qword_27DD8AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AA00);
  }

  return result;
}

unint64_t sub_231DE6250()
{
  result = qword_27DD8AA08[0];
  if (!qword_27DD8AA08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AA08);
  }

  return result;
}

unint64_t sub_231DE62A8()
{
  result = qword_27DD8AA90;
  if (!qword_27DD8AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AA90);
  }

  return result;
}

unint64_t sub_231DE6300()
{
  result = qword_27DD8AA98[0];
  if (!qword_27DD8AA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AA98);
  }

  return result;
}

unint64_t sub_231DE6358()
{
  result = qword_27DD8AB20;
  if (!qword_27DD8AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AB20);
  }

  return result;
}

unint64_t sub_231DE63B0()
{
  result = qword_27DD8AB28[0];
  if (!qword_27DD8AB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AB28);
  }

  return result;
}

unint64_t sub_231DE6408()
{
  result = qword_27DD8ABB0;
  if (!qword_27DD8ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8ABB0);
  }

  return result;
}

unint64_t sub_231DE6460()
{
  result = qword_27DD8ABB8[0];
  if (!qword_27DD8ABB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8ABB8);
  }

  return result;
}

unint64_t sub_231DE64B8()
{
  result = qword_27DD8AC40;
  if (!qword_27DD8AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AC40);
  }

  return result;
}

unint64_t sub_231DE6510()
{
  result = qword_27DD8AC48[0];
  if (!qword_27DD8AC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AC48);
  }

  return result;
}

unint64_t sub_231DE6568()
{
  result = qword_27DD8ACD0;
  if (!qword_27DD8ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8ACD0);
  }

  return result;
}

unint64_t sub_231DE65C0()
{
  result = qword_27DD8ACD8[0];
  if (!qword_27DD8ACD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8ACD8);
  }

  return result;
}

unint64_t sub_231DE6618()
{
  result = qword_27DD8AD60;
  if (!qword_27DD8AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AD60);
  }

  return result;
}

unint64_t sub_231DE6670()
{
  result = qword_27DD8AD68[0];
  if (!qword_27DD8AD68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AD68);
  }

  return result;
}

unint64_t sub_231DE66C8()
{
  result = qword_27DD8ADF0;
  if (!qword_27DD8ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8ADF0);
  }

  return result;
}

unint64_t sub_231DE6720()
{
  result = qword_27DD8ADF8[0];
  if (!qword_27DD8ADF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8ADF8);
  }

  return result;
}

unint64_t sub_231DE6778()
{
  result = qword_27DD8AE80;
  if (!qword_27DD8AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AE80);
  }

  return result;
}

unint64_t sub_231DE67D0()
{
  result = qword_27DD8AE88[0];
  if (!qword_27DD8AE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AE88);
  }

  return result;
}

unint64_t sub_231DE6828()
{
  result = qword_27DD8AF10;
  if (!qword_27DD8AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AF10);
  }

  return result;
}

unint64_t sub_231DE6880()
{
  result = qword_27DD8AF18[0];
  if (!qword_27DD8AF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AF18);
  }

  return result;
}

unint64_t sub_231DE68D8()
{
  result = qword_27DD8AFA0;
  if (!qword_27DD8AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8AFA0);
  }

  return result;
}

unint64_t sub_231DE6930()
{
  result = qword_27DD8AFA8[0];
  if (!qword_27DD8AFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8AFA8);
  }

  return result;
}

unint64_t sub_231DE6988()
{
  result = qword_27DD8B030;
  if (!qword_27DD8B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8B030);
  }

  return result;
}

unint64_t sub_231DE69E0()
{
  result = qword_27DD8B038[0];
  if (!qword_27DD8B038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B038);
  }

  return result;
}

unint64_t sub_231DE6A38()
{
  result = qword_27DD8B0C0;
  if (!qword_27DD8B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8B0C0);
  }

  return result;
}

unint64_t sub_231DE6A90()
{
  result = qword_27DD8B0C8[0];
  if (!qword_27DD8B0C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B0C8);
  }

  return result;
}

unint64_t sub_231DE6AE8()
{
  result = qword_27DD8B150;
  if (!qword_27DD8B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8B150);
  }

  return result;
}

unint64_t sub_231DE6B40()
{
  result = qword_27DD8B158[0];
  if (!qword_27DD8B158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B158);
  }

  return result;
}

unint64_t sub_231DE6B98()
{
  result = qword_27DD8B1E0;
  if (!qword_27DD8B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8B1E0);
  }

  return result;
}

unint64_t sub_231DE6BF0()
{
  result = qword_27DD8B1E8[0];
  if (!qword_27DD8B1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B1E8);
  }

  return result;
}

unint64_t sub_231DE6C44()
{
  result = qword_27DD8B270[0];
  if (!qword_27DD8B270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B270);
  }

  return result;
}

unint64_t sub_231DE6C98()
{
  result = qword_27DD75748;
  if (!qword_27DD75748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75640, &qword_231E20638);
    sub_231DE6D54();
    sub_231DE3390(&unk_27DD75758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75748);
  }

  return result;
}

unint64_t sub_231DE6D54()
{
  result = qword_27DD75750;
  if (!qword_27DD75750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75750);
  }

  return result;
}

unint64_t sub_231DE6DA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_139_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75638, &qword_231E20630);
    v4();
    OUTLINED_FUNCTION_174_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_231DE6E18()
{
  result = qword_27DD75768;
  if (!qword_27DD75768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75768);
  }

  return result;
}

unint64_t sub_231DE6E6C()
{
  result = qword_27DD75778;
  if (!qword_27DD75778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD75640, &qword_231E20638);
    sub_231DE6F28();
    sub_231DE3390(&unk_27DD75788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75778);
  }

  return result;
}

unint64_t sub_231DE6F28()
{
  result = qword_27DD75780;
  if (!qword_27DD75780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75780);
  }

  return result;
}

unint64_t sub_231DE6F7C()
{
  result = qword_27DD75798;
  if (!qword_27DD75798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75798);
  }

  return result;
}

unint64_t sub_231DE6FD0()
{
  result = qword_27DD757A0;
  if (!qword_27DD757A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757A0);
  }

  return result;
}

unint64_t sub_231DE7024()
{
  result = qword_27DD757A8;
  if (!qword_27DD757A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757A8);
  }

  return result;
}

unint64_t sub_231DE7078()
{
  result = qword_27DD757B0;
  if (!qword_27DD757B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757B0);
  }

  return result;
}

unint64_t sub_231DE70CC()
{
  result = qword_27DD757B8;
  if (!qword_27DD757B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757B8);
  }

  return result;
}

unint64_t sub_231DE7120()
{
  result = qword_27DD757C0;
  if (!qword_27DD757C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757C0);
  }

  return result;
}

unint64_t sub_231DE7174()
{
  result = qword_27DD757C8;
  if (!qword_27DD757C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757C8);
  }

  return result;
}

unint64_t sub_231DE71C8()
{
  result = qword_27DD757D0;
  if (!qword_27DD757D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD757D0);
  }

  return result;
}

void sub_231DE721C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_231DDCE44();
}

uint64_t sub_231DE724C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231DE72A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75800, &qword_231E229F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231DE7314()
{
  result = qword_27DD75830;
  if (!qword_27DD75830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75830);
  }

  return result;
}

uint64_t sub_231DE7368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationAnalytics.Interval(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_231DE73CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_139_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_231DE7430(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231DE7500()
{
  result = qword_27DD8B380[0];
  if (!qword_27DD8B380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B380);
  }

  return result;
}

unint64_t sub_231DE7558()
{
  result = qword_27DD8B510;
  if (!qword_27DD8B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8B510);
  }

  return result;
}

unint64_t sub_231DE75B0()
{
  result = qword_27DD8B518[0];
  if (!qword_27DD8B518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD8B518);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_27_12()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_32_11()
{
  v2 = *(v0 + 240);
  v3 = *(v0 + 280);

  return sub_231E11FD0();
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return sub_231E12090();
}

uint64_t OUTLINED_FUNCTION_55_9()
{

  return sub_231E12100();
}

void OUTLINED_FUNCTION_78_4(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_79_5()
{
  v3 = *(v2 + 8);
  result = v1;
  v5 = *(v0 + 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_8()
{

  return sub_231E11D70();
}

uint64_t OUTLINED_FUNCTION_97_5()
{
  v2 = *(v0 - 600);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_100_7()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_107_8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(v3 + 24) = v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_117_6@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_128_4()
{
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 160);

  return sub_231E0F920();
}

uint64_t OUTLINED_FUNCTION_154_3()
{

  return sub_231E11F30();
}

void OUTLINED_FUNCTION_158_3()
{

  JUMPOUT(0x23837CC20);
}

void OUTLINED_FUNCTION_160_2()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x23837CC20);
}

uint64_t OUTLINED_FUNCTION_161_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];

  return sub_231DE37E0(v4, v5);
}

id OUTLINED_FUNCTION_162_1()
{

  return sub_231DDF7AC(v1, v0 == 255);
}

void OUTLINED_FUNCTION_173_2()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2082;
  *(v3 - 129) = v0;
}

uint64_t OUTLINED_FUNCTION_178_1()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_191_1@<Q0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 256);
  *(a1 + 160) = *(a1 + 240);
  *(a1 + 176) = v1;
  result = *(a1 + 272);
  v3 = *(a1 + 288);
  *(a1 + 192) = result;
  *(a1 + 208) = v3;
  return result;
}

char *OUTLINED_FUNCTION_197_0()
{
  v2 = *(*(v0 + 24) + 16);

  return sub_231DE2418(v2);
}

char *OUTLINED_FUNCTION_198_0()
{
  v2 = *(*(v0 + 24) + 16);

  return sub_231DE2418(v2);
}

uint64_t OUTLINED_FUNCTION_199_1()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;

  return sub_231DDAFC4();
}

uint64_t OUTLINED_FUNCTION_200_1(float a1)
{
  *v3 = a1;
  *(v4 - 180) = v2;

  return sub_231DDA740(v1);
}

uint64_t OUTLINED_FUNCTION_201_0()
{
  *(v1 - 160) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_203_1()
{
  v5 = *v1;
  v6 = *(v1 + 8);
  *v1 = v0;
  *(v1 + 8) = v2;
  v7 = *(v1 + 16);
  *(v1 + 16) = v3;

  return sub_231CBA16C(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_204_0()
{

  return sub_231E11FD0();
}

void OUTLINED_FUNCTION_205_0(uint64_t a1@<X8>, uint64_t a2)
{

  sub_231DC3E20(v2, &a2, a1 + 8);
}

uint64_t OUTLINED_FUNCTION_206_0()
{
  v2 = *(v0 - 96);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_207_1()
{

  return sub_231E12090();
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  v2 = *(v0 - 176);

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_209_1()
{

  JUMPOUT(0x23837CC20);
}

uint64_t OUTLINED_FUNCTION_211()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t OUTLINED_FUNCTION_212()
{
}

uint64_t OUTLINED_FUNCTION_213_0()
{
}

uint64_t OUTLINED_FUNCTION_215_0()
{
}

uint64_t sub_231DE80F0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));
  return v2;
}

uint64_t sub_231DE813C(void *a1)
{
  v2 = swift_allocObject();
  sub_231DE817C(a1);
  return v2;
}

void *sub_231DE817C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75860, &unk_231E22CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v1[3] = v4;
  type metadata accessor for InMemoryContactNameCache();
  v1[4] = sub_231CE2AE0(100, 21600.0);
  v1[5] = sub_231CE2AE0(100, 21600.0);
  v1[2] = a1;
  v5 = a1;
  sub_231DE825C();
  v7 = v6;

  return v2;
}

void sub_231DE825C()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD758C8, &qword_231E22D00);
  v3 = sub_231E11850();
  v11[0] = 0;
  v4 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v6 = v11[0];
  if (!v4)
  {
    v9 = v11[0];
    sub_231E0F6F0();

    swift_willThrow();
    goto LABEL_5;
  }

  v7 = *(v0 + 24);
  MEMORY[0x28223BE20](v5);
  v8 = v6;
  os_unfair_lock_lock((v7 + 32));
  sub_231DE83B0((v7 + 16));
  if (!v1)
  {
    os_unfair_lock_unlock((v7 + 32));
LABEL_5:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_unlock((v7 + 32));
  __break(1u);
}

void sub_231DE83B0(uint64_t *a1)
{
  if (!a1[1])
  {
    v3 = [*(v1 + 16) identifier];
    v4 = sub_231E11620();
    v6 = v5;

    *a1 = v4;
    a1[1] = v6;
  }
}

uint64_t sub_231DE8420(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD758C8, &qword_231E22D00);
  v4 = sub_231E11850();
  v11[0] = 0;
  v5 = [v3 unifiedContactsMatchingPredicate:a1 keysToFetch:v4 error:v11];

  v6 = v11[0];
  if (v5)
  {
    sub_231DE8530();
    a1 = sub_231E11870();
    v7 = v6;
  }

  else
  {
    v8 = v11[0];
    sub_231E0F6F0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

unint64_t sub_231DE8530()
{
  result = qword_2814CAEA0;
  if (!qword_2814CAEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CAEA0);
  }

  return result;
}

uint64_t sub_231DE8574()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2_32();
  return (*(v2 + 128))();
}

uint64_t sub_231DE85B4()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2_32();
  return (*(v2 + 128))();
}

uint64_t sub_231DE85F4()
{
  v6 = OUTLINED_FUNCTION_1_31();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_37();
  v8 = *(v1 + 32);

  sub_231CE2AA8(v2, v0, v5);
  OUTLINED_FUNCTION_2_32();
  (*(v9 + 120))(v5, v4, v3);
  return sub_231CE3DD8(v5);
}

uint64_t sub_231DE86A4()
{
  v6 = OUTLINED_FUNCTION_1_31();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_37();
  v8 = *(v1 + 40);

  sub_231CE2AA8(v2, v0, v5);
  OUTLINED_FUNCTION_2_32();
  (*(v9 + 120))(v5, v4, v3);
  return sub_231CE3DD8(v5);
}

uint64_t sub_231DE8754()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t sub_231DE878C()
{
  sub_231DE8754();

  return swift_deallocClassInstance();
}

uint64_t sub_231DE88E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_231DE8934(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_31()
{

  return type metadata accessor for InMemoryContactNameCache.Result();
}

uint64_t sub_231DE89B8()
{
  v0 = sub_231E11F20();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_231DE8A04(char a1)
{
  result = 0xD000000000000013;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return result;
}

unint64_t sub_231DE8A68()
{
  result = qword_27DD75930;
  if (!qword_27DD75930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75930);
  }

  return result;
}

uint64_t sub_231DE8ABC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000013;
  v3 = "identifierToNameCache";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (v4 == 1)
    {
      v6 = "com.apple.MobileSMS";
    }

    else
    {
      v6 = "com.apple.mobilemail";
    }
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = "identifierToNameCache";
  }

  if (a2)
  {
    v3 = "com.apple.MobileSMS";
    v2 = a2 == 1 ? 0xD000000000000014 : 0xD000000000000015;
    if (a2 != 1)
    {
      v3 = "com.apple.mobilemail";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231E12100();
  }

  return v8 & 1;
}

uint64_t sub_231DE8BB4()
{
  sub_231E116E0();
}

uint64_t sub_231DE8C40()
{
  sub_231E12220();
  sub_231E116E0();

  return sub_231E12250();
}

uint64_t sub_231DE8CD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231DE89B8();
  *a2 = result;
  return result;
}

unint64_t sub_231DE8D08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231DE8A04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Bundles(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231DE8E10(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  result = qword_231E23038[a1];
  v3 = word_231E23068[a1];
  return result;
}

uint64_t sub_231DE8E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (HIBYTE(a3))
  {
    if (HIBYTE(a3) == 1)
    {
      v5 = MEMORY[0x277D42390];
    }

    else if (a2 | a1 || a3)
    {
      if (a1 != 1 || a2 || a3)
      {
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          v6 = a2 == 0;
        }

        v7 = v6 && a1 == 2;
        v5 = MEMORY[0x277D42398];
        if (v7)
        {
          v5 = MEMORY[0x277D423B8];
        }
      }

      else
      {
        v5 = MEMORY[0x277D423B0];
      }
    }

    else
    {
      v5 = MEMORY[0x277D423A8];
    }
  }

  else
  {
    v5 = MEMORY[0x277D423A0];
  }

  v8 = *v5;
  v9 = sub_231E106F0();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t sub_231DE8F38(unint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0xFF00) != 0x100 || ~a3 == 0)
  {
    return 0;
  }

  else
  {
    return sub_231D00484(a1, a2, a3);
  }
}

void sub_231DE8F6C()
{
  OUTLINED_FUNCTION_4_28();
  if (!v5)
  {
    [v0 setSummarizationStatus_];
    if (!v3)
    {
      goto LABEL_28;
    }

    v11 = objc_opt_self();
    v12 = v3;
    if (![v11 isInternalBuild] || (sub_231CC8B78() & 1) == 0 || (swift_getErrorValue(), sub_231E121C0(), , OUTLINED_FUNCTION_6_24(), !v13))
    {
LABEL_27:
      v46 = OUTLINED_FUNCTION_1_32();
      sub_231D42D00(v46, v47, v48, 0);
      goto LABEL_28;
    }

    sub_231DE9A44(v0);
    if (v14)
    {
      OUTLINED_FUNCTION_0_38();
      if (v15)
      {
        OUTLINED_FUNCTION_15_19();
        MEMORY[0x23837CC20](0xD000000000000016, 0x8000000231E38B10);

        OUTLINED_FUNCTION_9_21();
        sub_231E121C0();
        OUTLINED_FUNCTION_13_19();
        MEMORY[0x23837CC20](0xD000000000000016, v4);

LABEL_26:

        OUTLINED_FUNCTION_3_33();

        v43 = OUTLINED_FUNCTION_8_20(v35, v36, v37, v38, v39, v40, v41, v42, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
        sub_231DE9AA8(v43, v44, v45);
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_5_30();
    v34 = sub_231E121C0();
    v61 = 0xD000000000000016;
    MEMORY[0x23837CC20](v34);
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    [v0 setSummarizationStatus_];
    if (v1 != 0xFF && [objc_opt_self() isInternalBuild] && (sub_231CC8B78() & 1) != 0)
    {
      sub_231DE9A44(v0);
      if (v6)
      {
        OUTLINED_FUNCTION_0_38();
        if (v7)
        {
          OUTLINED_FUNCTION_15_19();
          MEMORY[0x23837CC20](0xD00000000000001BLL, 0x8000000231E38AF0);

          v8 = OUTLINED_FUNCTION_1_32();
          sub_231CFF668(v8, v9, v10);
          OUTLINED_FUNCTION_14_16();
          MEMORY[0x23837CC20](v1, v2);

LABEL_21:

          OUTLINED_FUNCTION_3_33();

          OUTLINED_FUNCTION_8_20(v22, v23, v24, v25, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
          OUTLINED_FUNCTION_2_33();

          sub_231DE9AA8(v30, v31, v32);
          return;
        }
      }

      v19 = OUTLINED_FUNCTION_1_32();
      sub_231CFF668(v19, v20, v21);
      OUTLINED_FUNCTION_10_22();
      goto LABEL_21;
    }

LABEL_28:
    OUTLINED_FUNCTION_2_33();
    return;
  }

  OUTLINED_FUNCTION_2_33();

  [v16 v17];
}

void sub_231DE92E8(double a1)
{
  if ([objc_opt_self() isInternalBuild] && (sub_231CC8B78() & 1) != 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    [v1 setDuration_];
  }
}

void sub_231DE93AC()
{
  OUTLINED_FUNCTION_4_28();
  if (!v5)
  {
    [v0 setUrgencyStatus_];
    if (!v3)
    {
      goto LABEL_28;
    }

    v11 = objc_opt_self();
    v12 = v3;
    if (![v11 isInternalBuild] || (sub_231CC8B78() & 1) == 0 || (swift_getErrorValue(), sub_231E121C0(), , OUTLINED_FUNCTION_6_24(), !v13))
    {
LABEL_27:
      v46 = OUTLINED_FUNCTION_1_32();
      sub_231D42D00(v46, v47, v48, 0);
      goto LABEL_28;
    }

    sub_231DE9A44(v0);
    if (v14)
    {
      OUTLINED_FUNCTION_0_38();
      if (v15)
      {
        OUTLINED_FUNCTION_15_19();
        MEMORY[0x23837CC20](0xD000000000000012, 0x8000000231E38B50);

        OUTLINED_FUNCTION_9_21();
        sub_231E121C0();
        OUTLINED_FUNCTION_13_19();
        MEMORY[0x23837CC20](0xD000000000000012, v4);

LABEL_26:

        OUTLINED_FUNCTION_3_33();

        v43 = OUTLINED_FUNCTION_8_20(v35, v36, v37, v38, v39, v40, v41, v42, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
        sub_231DE9AA8(v43, v44, v45);
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_5_30();
    v34 = sub_231E121C0();
    v61 = 0xD000000000000012;
    MEMORY[0x23837CC20](v34);
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    [v0 setUrgencyStatus_];
    if (v1 != 0xFF && [objc_opt_self() isInternalBuild] && (sub_231CC8B78() & 1) != 0)
    {
      sub_231DE9A44(v0);
      if (v6)
      {
        OUTLINED_FUNCTION_0_38();
        if (v7)
        {
          OUTLINED_FUNCTION_15_19();
          MEMORY[0x23837CC20](0xD000000000000017, 0x8000000231E38B30);

          v8 = OUTLINED_FUNCTION_1_32();
          sub_231CFF668(v8, v9, v10);
          OUTLINED_FUNCTION_14_16();
          MEMORY[0x23837CC20](v1, v2);

LABEL_21:

          OUTLINED_FUNCTION_3_33();

          OUTLINED_FUNCTION_8_20(v22, v23, v24, v25, v26, v27, v28, v29, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
          OUTLINED_FUNCTION_2_33();

          sub_231DE9AA8(v30, v31, v32);
          return;
        }
      }

      v19 = OUTLINED_FUNCTION_1_32();
      sub_231CFF668(v19, v20, v21);
      OUTLINED_FUNCTION_10_22();
      goto LABEL_21;
    }

LABEL_28:
    OUTLINED_FUNCTION_2_33();
    return;
  }

  OUTLINED_FUNCTION_2_33();

  [v16 v17];
}

void sub_231DE9728(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a1[1] == 1)
  {
    if (a4)
    {
      *&v17 = 0;
      *(&v17 + 1) = 0xE000000000000000;
      v8 = a4;
      sub_231E11D70();

      OUTLINED_FUNCTION_12_19();
      MEMORY[0x23837CC20](0x765F6C65646F6D5FLL, 0xEE006E6F69737265);
      v9 = sub_231E115F0();

      v10 = [v8 attributeForKey_];

      if (v10)
      {
        sub_231E11C80();
        swift_unknownObjectRelease();
        sub_231CE1044(&v17, &v18);
        __swift_project_boxed_opaque_existential_0(&v18, v19);
        v11 = sub_231E120F0();
        *&v17 = 0;
        *(&v17 + 1) = 0xE000000000000000;
        sub_231E11D70();

        OUTLINED_FUNCTION_12_19();
        OUTLINED_FUNCTION_7_25();
        MEMORY[0x23837CC20]();
        v12 = sub_231E115F0();

        [v5 setAttribute:v11 forKey:v12];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v18);
      }

      else
      {
      }

      return;
    }

    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    OUTLINED_FUNCTION_11_21();

    *&v18 = 0x6C7070615F6D6F63;
    *(&v18 + 1) = 0xEA00000000005F65;
    MEMORY[0x23837CC20](a2, a3);
    MEMORY[0x23837CC20](0x765F6C65646F6D5FLL, 0xEE006E6F69737265);
    v16 = sub_231E115F0();

    [v4 setAttribute:v15 forKey:v16];
  }

  else
  {
    if (!a1[3])
    {
      return;
    }

    v13 = a1[2];
    v14 = sub_231E115F0();
    OUTLINED_FUNCTION_11_21();

    *&v18 = 0x6C7070615F6D6F63;
    *(&v18 + 1) = 0xEA00000000005F65;
    MEMORY[0x23837CC20](a2, a3);
    OUTLINED_FUNCTION_7_25();
    MEMORY[0x23837CC20]();
    v16 = sub_231E115F0();

    [v4 setAttribute:v14 forKey:v16];
  }
}

uint64_t sub_231DE9A44(void *a1)
{
  v1 = [a1 information];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

void sub_231DE9AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setInformation_];
}

void OUTLINED_FUNCTION_3_33()
{

  JUMPOUT(0x23837CC20);
}

void OUTLINED_FUNCTION_10_22()
{

  JUMPOUT(0x23837CC20);
}

void OUTLINED_FUNCTION_12_19()
{

  JUMPOUT(0x23837CC20);
}

uint64_t OUTLINED_FUNCTION_13_19()
{
}

uint64_t sub_231DE9BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 messageType];
  switch(v3)
  {
    case 6uLL:
      goto LABEL_7;
    case 7uLL:
      goto LABEL_2;
    case 8uLL:
      goto LABEL_12;
    case 9uLL:
      goto LABEL_15;
    case 0xAuLL:
      goto LABEL_18;
    case 0xBuLL:
      goto LABEL_20;
    default:
      if (v3 != 26)
      {
        goto LABEL_25;
      }

      v5 = [v1 reaction];
      if (!v5)
      {
        goto LABEL_25;
      }

      v6 = v5;
      v7 = [v5 reactionType];
      if (PSUINMessageReactionTypeTapbackLikedReaction() == v7)
      {

LABEL_7:
        v4 = MEMORY[0x277D422D0];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackDislikedReaction() == v7)
      {

LABEL_2:
        v4 = MEMORY[0x277D422F8];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackEmphasizedReaction() == v7)
      {

LABEL_12:
        v4 = MEMORY[0x277D42308];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackLovedReaction() == v7)
      {

LABEL_15:
        v4 = MEMORY[0x277D422E8];
        goto LABEL_21;
      }

      if (PSUINMessageReactionTypeTapbackQuestionedReaction() == v7)
      {

LABEL_18:
        v4 = MEMORY[0x277D42310];
        goto LABEL_21;
      }

      v8 = PSUINMessageReactionTypeTapbackLaughedReaction();

      if (v8 == v7)
      {
LABEL_20:
        v4 = MEMORY[0x277D422F0];
LABEL_21:
        v9 = *v4;
        v10 = sub_231E10370();
        OUTLINED_FUNCTION_12(v10);
        (*(v11 + 104))(a1, v9, v10);
        OUTLINED_FUNCTION_15_7();
        v15 = v10;
        goto LABEL_22;
      }

LABEL_25:
      sub_231E10370();
      v12 = OUTLINED_FUNCTION_9_22();
LABEL_22:

      return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_231DE9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 240) = a10;
  *(v11 + 248) = a11;
  *(v11 + 224) = a9;
  *(v11 + 208) = v12;
  *(v11 + 216) = v13;
  *(v11 + 192) = v14;
  *(v11 + 200) = v15;
  *(v11 + 176) = v16;
  *(v11 + 184) = v17;
  *(v11 + 160) = v18;
  *(v11 + 168) = v19;
  v20 = sub_231E106A0();
  *(v11 + 256) = v20;
  OUTLINED_FUNCTION_6(v20);
  *(v11 + 264) = v21;
  v23 = *(v22 + 64) + 15;
  *(v11 + 272) = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v24, v25, v26);
}

uint64_t sub_231DE9E40()
{
  v18 = v0[29];
  v1 = v0[26];
  v19 = v0[27];
  v20 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = MEMORY[0x277D84F98];
  v0[18] = MEMORY[0x277D84F98];
  v9 = swift_allocObject();
  v0[35] = v9;
  *(v9 + 16) = v8;
  v10 = sub_231E0F8C0();
  v0[36] = v10;
  v11 = sub_231E115F0();
  v0[37] = v11;
  v12 = sub_231E115F0();
  v0[38] = v12;
  sub_231D6F8B8(v3, v1);
  v13 = sub_231E115F0();
  v0[39] = v13;

  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_231DEA020;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231DEAA60;
  v0[13] = &block_descriptor_14;
  v0[14] = v14;
  [v18 recentMessagesSinceDate:v10 conversationIdentifier:v11 appBundleId:v12 incomingMessageID:v13 limit:v19 options:v20 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_107_1();

  return MEMORY[0x282200938](v15);
}

uint64_t sub_231DEA020()
{
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEA0F0()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 152);

  v68 = v4;
  result = sub_231CBA138(v4);
  v67 = result;
  if (result)
  {
    if (result < 1)
    {
LABEL_68:
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v8 = &selRef_notificationSourceWithIdentifier_;
    while (1)
    {
      v9 = (v68 & 0xC000000000000001) != 0 ? MEMORY[0x23837D2A0](v6, v68) : *(v68 + 8 * v6 + 32);
      v10 = v9;
      v11 = [v9 v8[163]];
      v69 = sub_231E11620();
      v13 = v12;

      v14 = sub_231DF248C(v10, &selRef_attachmentFiles, &qword_2814CAEC0, 0x277CD3C08);
      if (v14)
      {
        v15 = v14 >> 62 ? sub_231E11ED0() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v10 numberOfAttachments];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 integerValue];
      }

      else
      {
        v18 = 0;
      }

      v19 = [v10 v8[163]];
      v20 = sub_231E11620();
      v22 = v21;

      if (!v7[2])
      {
        break;
      }

      v23 = sub_231CE0CA4(v20, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v18 <= v15)
      {
        v26 = v15;
      }

      else
      {
        v26 = v18;
      }

      if (*(v7[7] + 8 * v23) <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = *(v7[7] + 8 * v23);
      }

LABEL_27:
      v7 = *(*(v0 + 280) + 16);
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_231CE0CA4(v69, v13);
      if (__OFADD__(v7[2], (v28 & 1) == 0))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v29 = result;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75940, &qword_231E230A0);
      result = sub_231E11EA0();
      if (result)
      {
        result = sub_231CE0CA4(v69, v13);
        if ((v30 & 1) != (v31 & 1))
        {
          OUTLINED_FUNCTION_107_1();

          return sub_231E12160();
        }

        v29 = result;
      }

      if (v30)
      {
        *(v7[7] + 8 * v29) = v27;
      }

      else
      {
        v7[(v29 >> 6) + 8] |= 1 << v29;
        v32 = (v7[6] + 16 * v29);
        *v32 = v69;
        v32[1] = v13;
        *(v7[7] + 8 * v29) = v27;
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_67;
        }

        v7[2] = v35;
      }

      ++v6;

      *(*(v0 + 280) + 16) = v7;
      v8 = &selRef_notificationSourceWithIdentifier_;
      if (v67 == v6)
      {
        goto LABEL_38;
      }
    }

LABEL_24:
    if (v18 >= v15)
    {
      v27 = v18 & ~(v18 >> 63);
    }

    else
    {
      v27 = v15 & ~(v15 >> 63);
    }

    goto LABEL_27;
  }

LABEL_38:
  v36 = *(v0 + 280);
  v37 = *(v0 + 264);
  v38 = *(v0 + 224);
  v40 = *(v0 + 184);
  v39 = *(v0 + 192);
  v42 = *(v0 + 168);
  v41 = *(v0 + 176);
  v43 = swift_task_alloc();
  v43[2] = v0 + 144;
  v43[3] = v38;
  v43[4] = v40;
  v43[5] = v39;
  v43[6] = v42;
  v43[7] = v41;
  v44 = sub_231DEB820(sub_231DF23D8, v43, v68);
  *(v0 + 320) = v44;

  v45 = *(v44 + 2);
  result = swift_retain_n();
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  while (v45 != v46)
  {
    if (v46 >= *(v44 + 2))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v49 = *(v0 + 272);
    v48 = *(v0 + 280);
    v50 = *(v0 + 256);
    v51 = *(v37 + 80);
    OUTLINED_FUNCTION_79();
    (*(v37 + 16))(v49, &v44[v52 + *(v37 + 72) * v46], v50);
    v53 = sub_231DEC274(v49, v48);
    result = (*(v37 + 8))(v49, v50);
    v54 = *(v53 + 16);
    v55 = *(v47 + 16);
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      goto LABEL_62;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v56 > *(v47 + 24) >> 1)
    {
      if (v55 <= v56)
      {
        v57 = v55 + v54;
      }

      else
      {
        v57 = v55;
      }

      result = sub_231CE0B9C(result, v57, 1, v47);
      v47 = result;
    }

    if (*(v53 + 16))
    {
      if ((*(v47 + 24) >> 1) - *(v47 + 16) < v54)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v54)
      {
        v58 = *(v47 + 16);
        v34 = __OFADD__(v58, v54);
        v59 = v58 + v54;
        if (v34)
        {
          goto LABEL_66;
        }

        *(v47 + 16) = v59;
      }
    }

    else
    {

      if (v54)
      {
        goto LABEL_63;
      }
    }

    ++v46;
  }

  v60 = *(v0 + 280);

  v61 = sub_231D3FF4C(v47);
  *(v0 + 328) = sub_231DEC5AC(v61);
  v62 = swift_task_alloc();
  *(v0 + 336) = v62;
  *v62 = v0;
  v62[1] = sub_231DEA69C;
  v63 = *(v0 + 240);
  v64 = *(v0 + 224);
  OUTLINED_FUNCTION_107_1();

  return sub_231DFFDE8();
}

uint64_t sub_231DEA69C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *(v4 + 336);
  *v6 = *v2;
  *(v5 + 344) = v1;

  v8 = *(v4 + 328);
  if (v1)
  {
  }

  else
  {

    *(v5 + 352) = a1;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231DEA7E8()
{
  v14 = v0;
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[35];
  sub_231DEC63C(v0[44]);

  v4 = OUTLINED_FUNCTION_16_15();

  v13[0] = v4;

  sub_231DF0050(v13);
  v5 = v0[35];
  if (v1)
  {
    v6 = v0[35];
  }

  else
  {
    v8 = v0[34];
    v9 = v0[27];

    v10 = sub_231DED468(v9, v13[0]);

    v11 = v0[18];

    OUTLINED_FUNCTION_18_6();

    return v12(v10);
  }
}

uint64_t sub_231DEA920()
{
  v12 = v0;
  v1 = v0[40];
  v2 = v0[35];
  sub_231DEC63C(MEMORY[0x277D84F90]);

  v3 = OUTLINED_FUNCTION_16_15();

  v11[0] = v3;

  sub_231DF0050(v11);
  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[27];

  v7 = sub_231DED468(v6, v11[0]);

  v8 = v0[18];

  OUTLINED_FUNCTION_18_6();

  return v9(v7);
}

uint64_t sub_231DEAA60(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_231CC1784(0, &unk_2814CAE88, 0x277CD3DE0);
  v2 = sub_231E11870();

  return sub_231D5F3EC(v1, v2);
}

void sub_231DEAACC()
{
  OUTLINED_FUNCTION_118();
  v207 = v2;
  v208 = v1;
  v209 = v4;
  v210 = v3;
  v201 = v5;
  v202 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v206 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v205 = v20;
  OUTLINED_FUNCTION_3_0();
  v203 = sub_231E0F950();
  v21 = OUTLINED_FUNCTION_24(v203);
  v198 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_5();
  v215 = v26;
  OUTLINED_FUNCTION_3_0();
  v200 = sub_231E10760();
  v27 = OUTLINED_FUNCTION_24(v200);
  v199 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1();
  v212 = v32 - v31;
  OUTLINED_FUNCTION_3_0();
  v196 = sub_231E10E30();
  v33 = OUTLINED_FUNCTION_24(v196);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v42 = OUTLINED_FUNCTION_47(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_139();
  v204 = v45;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v46);
  v48 = v194 - v47;
  v217 = sub_231E10370();
  v49 = OUTLINED_FUNCTION_24(v217);
  v213 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_5();
  v216 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v56 = OUTLINED_FUNCTION_47(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = v194 - v63;
  v65 = sub_231E10400();
  v66 = OUTLINED_FUNCTION_24(v65);
  v219 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_139();
  v214 = v70;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_10_0();
  v211 = v72;
  OUTLINED_FUNCTION_95();
  v74 = MEMORY[0x28223BE20](v73);
  v76 = v194 - v75;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_25_5();
  v218 = v77;
  v78 = *v8;
  v79 = [v78 sender];
  if (!v79)
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v65);
    goto LABEL_22;
  }

  sub_231E08B20(v79, v64);
  OUTLINED_FUNCTION_8_17(v64, 1, v65);
  if (v80)
  {
LABEL_22:
    sub_231CC154C(v64, &dword_27DD73FA0, &dword_231E13460);
    v109 = sub_231E106A0();
    v110 = v10;
    v111 = 1;
    goto LABEL_23;
  }

  v81 = *(v219 + 32);
  v194[2] = v219 + 32;
  v194[1] = v81;
  v81(v218, v64, v65);
  sub_231DE9BCC(v48);
  v82 = v217;
  OUTLINED_FUNCTION_8_17(v48, 1, v217);
  v195 = v10;
  if (v80)
  {
    sub_231CC154C(v48, &qword_27DD74A88, &unk_231E231A0);
    v83 = sub_231DF248C(v78, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
    if (v83)
    {
      v84 = v83;
      v213 = v78;
      v85 = sub_231CBA138(v83);
      v86 = 0;
      v216 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v85 == v86)
        {

          v137 = v216;
          v82 = v217;
          v78 = v213;
          goto LABEL_32;
        }

        if ((v84 & 0xC000000000000001) != 0)
        {
          v87 = MEMORY[0x23837D2A0](v86, v84);
        }

        else
        {
          if (v86 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v87 = *(v84 + 8 * v86 + 32);
        }

        v88 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        sub_231E08B20(v87, v61);
        OUTLINED_FUNCTION_8_17(v61, 1, v65);
        if (v80)
        {
          sub_231CC154C(v61, &dword_27DD73FA0, &dword_231E13460);
          ++v86;
        }

        else
        {
          OUTLINED_FUNCTION_53_10();
          v89();
          v90 = v216;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v97 = *(v90 + 16);
            OUTLINED_FUNCTION_3_34();
            v98 = OUTLINED_FUNCTION_0_1();
            v90 = sub_231DEF7F0(v98, v99, v100, v90, &qword_27DD740A8, &unk_231E13540, v101, v102);
          }

          v92 = v90;
          v93 = *(v90 + 16);
          v216 = v92;
          v94 = *(v92 + 24);
          v95 = v93 + 1;
          if (v93 >= v94 >> 1)
          {
            v103 = OUTLINED_FUNCTION_2_12(v94);
            v212 = v104;
            v105 = sub_231DEF7F0(v103, v104, 1, v216, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
            v95 = v212;
            v216 = v105;
          }

          *(v216 + 16) = v95;
          OUTLINED_FUNCTION_11_22();
          OUTLINED_FUNCTION_53_10();
          v96();
          v86 = v88;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v137 = MEMORY[0x277D84F90];
LABEL_32:
    v138 = sub_231CC6C88(v202, v137);

    v139 = v78;
    v140 = [v78 identifier];
    v141 = sub_231E11620();
    v216 = v142;
    v217 = v141;

    v143 = sub_231CC33AC(v139, &selRef_conversationIdentifier);
    v212 = v144;
    v213 = v143;
    v145 = v139;
    v146 = [v139 dateSent];
    v147 = v215;
    if (v146)
    {
      v148 = v146;
      v149 = v197;
      sub_231E0F910();

      v150 = *(v198 + 32);
      v151 = v205;
      v152 = v149;
      v153 = v203;
      v150(v205, v152, v203);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
      v150(v147, v151, v153);
    }

    else
    {
      v163 = v205;
      OUTLINED_FUNCTION_105();
      v164 = v203;
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v203);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v163, 1, v164);
      if (!v80)
      {
        sub_231CC154C(v163, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v168 = v218;
    v169 = v219;
    (*(v219 + 16))(v214, v218, v65);
    v170 = sub_231CC33AC(v145, &selRef_content);
    if (v171)
    {
      v172 = v170;
    }

    else
    {
      v172 = 0;
    }

    v211 = v172;
    v173 = 0xE000000000000000;
    if (v171)
    {
      v173 = v171;
    }

    v205 = v173;
    LODWORD(v203) = sub_231E103C0();
    LODWORD(v202) = *(v138 + 16) > 1uLL;
    v174 = OUTLINED_FUNCTION_9_22();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v82);
    sub_231E104A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
    sub_231CC33AC(v145, &selRef_serviceName);
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_58_11();
    v181 = v195;
    sub_231E10680();
    (*(v169 + 8))(v168, v65);
    v109 = sub_231E106A0();
    v110 = v181;
    v111 = 0;
LABEL_23:
    __swift_storeEnumTagSinglePayload(v110, v111, 1, v109);
LABEL_24:
    OUTLINED_FUNCTION_113();
    return;
  }

  v112 = v213;
  v113 = v216;
  v213[4](v216, v48, v82);
  v114 = [v78 referencedMessage];
  if (!v114)
  {
    v157 = sub_231CB4EEC();
    v158 = v196;
    (*(v35 + 16))(v40, v157, v196);
    v159 = sub_231E10E10();
    v160 = sub_231E11AD0();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_231CAE000, v159, v160, "Encountered tapback without a referenced message", v161, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v35 + 8))(v40, v158);
    (v112[1])(v216, v82);
    (*(v219 + 8))(v218, v65);
    v162 = 0;
    goto LABEL_50;
  }

  v115 = v114;
  v116 = v201;
  v117 = v82;
  v118 = [v114 identifier];

  v119 = sub_231E11620();
  v121 = v120;

  v122 = v117;
  v123 = v119;
  v112[2](v0, v113, v122);
  (*(v219 + 16))(v76, v218, v65);
  OUTLINED_FUNCTION_63_10();
  sub_231E10730();
  v124 = *v116;
  swift_isUniquelyReferenced_nonNull_native();
  v220 = *v116;
  v125 = v220;
  *v116 = 0x8000000000000000;
  v126 = OUTLINED_FUNCTION_59();
  v128 = sub_231CE0CA4(v126, v127);
  if (__OFADD__(v125[2], (v129 & 1) == 0))
  {
    goto LABEL_53;
  }

  v130 = v128;
  v131 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75958, &qword_231E23100);
  if ((sub_231E11EA0() & 1) == 0)
  {
    v136 = v213;
    goto LABEL_46;
  }

  v132 = OUTLINED_FUNCTION_59();
  v134 = sub_231CE0CA4(v132, v133);
  v136 = v213;
  if ((v131 & 1) == (v135 & 1))
  {
    v130 = v134;
LABEL_46:
    v182 = *v116;
    *v116 = v220;

    v183 = *v116;
    if (v131)
    {
    }

    else
    {
      sub_231DE32D4(v130, v123, v121, MEMORY[0x277D84F90], *v116);
    }

    v184 = v200;
    v185 = v199;
    v186 = v216;
    v187 = v183[7] + 8 * v130;
    sub_231DEF6F4();
    v188 = *(*v187 + 16);
    sub_231DEF778(v188);
    (v136[1])(v186, v217);
    (*(v219 + 8))(v218, v65);
    v189 = *v187;
    *(v189 + 16) = v188 + 1;
    (*(v185 + 32))(v189 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v188, v212, v184);
    v162 = sub_231DEB810;
LABEL_50:
    sub_231E106A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
    sub_231CB7448(v162);
    goto LABEL_24;
  }

LABEL_54:
  sub_231E12160();
  __break(1u);
}

id sub_231DEB820(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_231E106A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v25 = &v24 - v15;
  result = sub_231CBA138(a3);
  v17 = 0;
  v32 = a3 & 0xC000000000000001;
  v33 = result;
  v31 = a3 & 0xFFFFFFFFFFFFFF8;
  v26 = v11;
  v29 = (v11 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  v28 = a3;
  while (1)
  {
    if (v33 == v17)
    {
      return v18;
    }

    if (v32)
    {
      result = MEMORY[0x23837D2A0](v17, a3);
    }

    else
    {
      if (v17 >= *(v31 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v17 + 32);
    }

    v19 = result;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v34 = result;
    a1(&v34);
    if (v3)
    {

      return v18;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_231CC154C(v9, &qword_27DD74510, &qword_231E1E2D0);
    }

    else
    {
      v20 = *v29;
      v21 = v25;
      (*v29)(v25, v9, v10);
      v20(v30, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_231DEF7F0(0, *(v18 + 16) + 1, 1, v18, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        v18 = sub_231DEF7F0(v22 > 1, v23 + 1, 1, v18, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      *(v18 + 16) = v23 + 1;
      result = (v20)(v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v30, v10);
      a1 = v27;
      a3 = v28;
    }

    ++v17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_231DEBB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_231E106A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v30 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v29 = &v26 - v14;
  v15 = 0;
  v16 = *(a1 + 16);
  v31 = (v10 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {

      return v32;
    }

    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = *(v10 + 72);
    sub_231DECA14();
    if (v36)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_231CC154C(v8, &qword_27DD74510, &qword_231E1E2D0);
      ++v15;
    }

    else
    {
      v28 = *v31;
      v28(v29, v8, v9);
      v28(v30, v29, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_231DEF7F0(0, *(v32 + 16) + 1, 1, v32, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
      }

      v20 = *(v32 + 16);
      v19 = *(v32 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = *(v32 + 16);
        v27 = v20 + 1;
        v23 = sub_231DEF7F0(v19 > 1, v20 + 1, 1, v32, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        v20 = v26;
        v21 = v27;
        v32 = v23;
      }

      ++v15;
      v22 = v32;
      *(v32 + 16) = v21;
      v28((v22 + v17 + v20 * v18), v30, v9);
    }
  }

  v24 = v32;

  return v24;
}

id sub_231DEBEF8(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_231E10A30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v25 = &v24 - v15;
  result = sub_231CBA138(a3);
  v17 = 0;
  v32 = a3 & 0xC000000000000001;
  v33 = result;
  v31 = a3 & 0xFFFFFFFFFFFFFF8;
  v26 = v11;
  v29 = (v11 + 32);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  v28 = a3;
  while (1)
  {
    if (v33 == v17)
    {
      return v18;
    }

    if (v32)
    {
      result = MEMORY[0x23837D2A0](v17, a3);
    }

    else
    {
      if (v17 >= *(v31 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v17 + 32);
    }

    v19 = result;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v34 = result;
    a1(&v34);
    if (v3)
    {

      return v18;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_231CC154C(v9, &qword_27DD74BE0, &qword_231E1CC20);
    }

    else
    {
      v20 = *v29;
      v21 = v25;
      (*v29)(v25, v9, v10);
      v20(v30, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_231DEF7F0(0, *(v18 + 16) + 1, 1, v18, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428], MEMORY[0x277D42428]);
      }

      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        v18 = sub_231DEF7F0(v22 > 1, v23 + 1, 1, v18, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428], MEMORY[0x277D42428]);
      }

      *(v18 + 16) = v23 + 1;
      result = (v20)(v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v30, v10);
      a1 = v27;
      a3 = v28;
    }

    ++v17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_231DEC274(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E10690();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_231CE0CA4(v4, v6);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_6:
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v12 = swift_allocObject();
  v20 = xmmword_231E138E0;
  *(v12 + 16) = xmmword_231E138E0;
  *(v12 + 32) = sub_231E10690();
  *(v12 + 40) = v13;
  if (v11 > 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v20;
    v22 = 0x5F305F7461;
    v23 = 0xE500000000000000;
    v15 = sub_231E10690();
    MEMORY[0x23837CC20](v15);

    *(inited + 32) = 0x5F305F7461;
    *(inited + 40) = 0xE500000000000000;
    v21 = v12;
    v16 = sub_231D90D14(inited);
    MEMORY[0x28223BE20](v16);
    v19[2] = a1;
    v17 = sub_231DEC42C(sub_231DF2664, v19, 1, v11);
    sub_231D90D14(v17);
    return v21;
  }

  return v12;
}

void *sub_231DEC42C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = MEMORY[0x277D84F90];
  if (v5 == -1)
  {
    return v7;
  }

  v8 = a3;
  v25 = MEMORY[0x277D84F90];
  result = sub_231CC686C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = 0;
    v7 = v25;
    while (v10 < v6)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      if (v11)
      {
        goto LABEL_24;
      }

      v13 = v8;
      v22 = v8;
      result = a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_23;
      }

      v15 = v23;
      v14 = v24;
      v25 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v24;
        result = sub_231CC686C((v16 > 1), v17 + 1, 1);
        v14 = v19;
        v7 = v25;
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v11 = v13 == a4;
      if (v13 == a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_19;
        }
      }

      ++v10;
      if (v12 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_231DEC5AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_231DEF8FC(*(a1 + 16), 0);
  v4 = sub_231DF2500(&v6, v3 + 4, v2, a1);
  sub_231DF265C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_231DEC63C(uint64_t a1)
{
  v46 = sub_231E106A0();
  v2 = *(*(v46 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v46);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v36 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  v42 = v9;
  v43 = v8;
  v41 = v9 + 16;
  v44 = (v9 + 32);
  v37 = xmmword_231E138E0;
  v39 = a1;
  while (1)
  {
    if (v43 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v10 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v11 = *(v42 + 72);
    (*(v42 + 16))(v45, a1 + v10 + v11 * v6, v46);
    v12 = sub_231E10690();
    v14 = v13;
    v16 = sub_231CE0CA4(v12, v13);
    v17 = v7[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v7[3] < v19)
    {
      sub_231DEFDAC(v19, 1);
      v7 = v47;
      v21 = sub_231CE0CA4(v12, v14);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

      v16 = v21;
    }

    if (v20)
    {

      v23 = v7[7];
      v24 = *v44;
      (*v44)(v40, v45, v46);
      v25 = *(v23 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 8 * v16) = v25;
      v38 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_231DEF7F0(0, *(v25 + 16) + 1, 1, v25, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        *(v23 + 8 * v16) = v25;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_231DEF7F0(v27 > 1, v28 + 1, 1, v25, &qword_27DD74E30, &qword_231E1CB80, MEMORY[0x277D42368], MEMORY[0x277D42368]);
        *(v23 + 8 * v16) = v25;
      }

      a1 = v39;
      v29 = v40;
      *(v25 + 16) = v28 + 1;
      v38((v25 + v10 + v28 * v11), v29, v46);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
      v30 = swift_allocObject();
      *(v30 + 16) = v37;
      (*v44)((v30 + v10), v45, v46);
      v7[(v16 >> 6) + 8] |= 1 << v16;
      v31 = (v7[6] + 16 * v16);
      *v31 = v12;
      v31[1] = v14;
      *(v7[7] + 8 * v16) = v30;
      v32 = v7[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_20;
      }

      v7[2] = v34;
      a1 = v39;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_231E12160();
  __break(1u);
  return result;
}

void sub_231DECA14()
{
  OUTLINED_FUNCTION_118();
  v160 = v0;
  v158 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_231E10E30();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v147 = v15 - v14;
  OUTLINED_FUNCTION_3_0();
  v168 = sub_231E0FD90();
  v16 = OUTLINED_FUNCTION_24(v168);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_139();
  v167 = v21;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  v166 = v23;
  OUTLINED_FUNCTION_3_0();
  v165 = sub_231E107F0();
  v24 = OUTLINED_FUNCTION_24(v165);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v164 = v30 - v29;
  OUTLINED_FUNCTION_3_0();
  v31 = sub_231E106A0();
  v32 = OUTLINED_FUNCTION_24(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = &v142 - v41;
  v43 = *(v34 + 16);
  v153 = v44;
  v152 = v34 + 16;
  v151 = v43;
  (v43)(&v142 - v41, v5);
  v159 = v5;
  v45 = v3(v5);
  v46 = *(v45 + 16);
  v154 = v34;
  v169 = v42;
  v157 = v46;
  if (!v46)
  {

LABEL_44:
    v122 = *(sub_231E104C0() + 16);

    v123 = v147;
    v124 = v154;
    if (!v122)
    {
      sub_231E10640();
      sub_231E116D0();
      v126 = v125;

      if (!v126)
      {
        v129 = sub_231CB4EEC();
        (*(v11 + 16))(v123, v129, v8);
        v130 = v143;
        v127 = v153;
        v151(v143, v159, v153);
        v131 = sub_231E10E10();
        v132 = v11;
        v133 = sub_231E11AD0();
        if (os_log_type_enabled(v131, v133))
        {
          v134 = v130;
          v135 = swift_slowAlloc();
          v172 = v135;
          v173 = swift_slowAlloc();
          v174 = v173;
          *v135 = 136315138;
          v171 = sub_231E10690();
          v137 = v136;
          v138 = *(v154 + 8);
          v138(v134, v127);
          v139 = sub_231CB5000(v171, v137, &v174);

          v140 = v172;
          *(v172 + 1) = v139;
          _os_log_impl(&dword_231CAE000, v131, v133, "A recent message with id %s has no content or attachments", v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v173);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (*(v132 + 8))(v147, v8);
          v138(v169, v127);
        }

        else
        {

          v141 = *(v154 + 8);
          v141(v130, v127);
          (*(v132 + 8))(v123, v8);
          v141(v169, v127);
        }

        v128 = 1;
        goto LABEL_48;
      }
    }

    v127 = v153;
    (*(v124 + 32))(v7, v42, v153);
    v128 = 0;
LABEL_48:
    __swift_storeEnumTagSinglePayload(v7, v128, 1, v127);
    OUTLINED_FUNCTION_113();
    return;
  }

  v144 = v11;
  v145 = v8;
  v146 = v7;
  v156 = v45 + 32;
  v150 = v34 + 8;
  v47 = 0;
  v162 = (v18 + 8);
  v163 = v26 + 16;
  v161 = v26 + 8;
  v155 = v45;
  v48 = v164;
  while (v47 < *(v45 + 16))
  {
    v173 = v47;
    v49 = (v156 + 16 * v47);
    v51 = *v49;
    v50 = v49[1];
    v52 = *v158;
    v53 = *(*v158 + 16);

    if (v53 && (v54 = OUTLINED_FUNCTION_40_11(), v56 = sub_231CE0CA4(v54, v55), (v57 & 1) != 0))
    {
      v58 = *(*(v52 + 56) + 8 * v56);
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

    v59 = v160;
    v60 = sub_231E105A0();
    sub_231DEFC74(v58);
    v61 = OUTLINED_FUNCTION_43_12();
    v60(v61);
    sub_231E10530();
    if (v62)
    {
    }

    else
    {
      if (*(v59 + 16))
      {
        v63 = OUTLINED_FUNCTION_40_11();
        v65 = sub_231CE0CA4(v63, v64);
        if (v66)
        {
          if (*(*(*(v59 + 56) + 8 * v65) + 16))
          {
            v67 = v154;
            v68 = *(v154 + 80);
            OUTLINED_FUNCTION_42_13();
            v69 = v148;
            OUTLINED_FUNCTION_4_29();
            v70();
            sub_231E10530();
            v71 = v59;
            v59 = v160;
            (*(v67 + 8))(v69, v71);
          }
        }
      }

      sub_231E10540();
    }

    v174 = 0x5F305F7461;
    v175 = 0xE500000000000000;
    v72 = sub_231E10690();
    MEMORY[0x23837CC20](v72);

    if (v51 == v174 && v50 == v175)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40_11();
      v74 = sub_231E12100();

      if ((v74 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    if (!*(v59 + 16))
    {
      goto LABEL_39;
    }

    v75 = OUTLINED_FUNCTION_40_11();
    v77 = sub_231CE0CA4(v75, v76);
    if ((v78 & 1) != 0 && *(*(*(v59 + 56) + 8 * v77) + 16))
    {
      v79 = *(v154 + 80);
      OUTLINED_FUNCTION_42_13();
      OUTLINED_FUNCTION_4_29();
      v80();
      sub_231E10560();
      if (v81)
      {

        v82 = sub_231E104C0();
        v83 = 0;
        v171 = *(v82 + 16);
        v172 = v82;
        v170 = v51;
        while (1)
        {
          if (v171 == v83)
          {

            v102 = v149;
            v103 = sub_231E10640();
            v105 = v104;
            v106 = sub_231E10630();
            MEMORY[0x23837CC20](v103, v105);

            v107 = OUTLINED_FUNCTION_43_12();
            v106(v107);
            OUTLINED_FUNCTION_44_12();
            v99 = v102;
            v100 = v153;
            goto LABEL_33;
          }

          if (v83 >= *(v172 + 2))
          {
            break;
          }

          v84 = *(v26 + 80);
          OUTLINED_FUNCTION_79();
          v87 = v165;
          (*(v26 + 16))(v48, v86 + v85 + *(v26 + 72) * v83++, v165);
          v88 = v26;
          v89 = v166;
          sub_231E10790();
          v90 = v50;
          v91 = v167;
          sub_231E0FD50();
          v92 = sub_231E0FD80();
          v93 = *v162;
          v94 = v91;
          v95 = v168;
          (*v162)(v94, v168);
          v96 = v89;
          v26 = v88;
          v97 = v95;
          v50 = v90;
          v93(v96, v97);
          v42 = v169;
          (*(v88 + 8))(v48, v87);
          if ((v92 & 1) == 0)
          {
            OUTLINED_FUNCTION_44_12();
            v98(v149, v153);

            goto LABEL_34;
          }
        }

        __break(1u);
        break;
      }

      OUTLINED_FUNCTION_44_12();
      v99 = OUTLINED_FUNCTION_48();
LABEL_33:
      v101(v99, v100);
LABEL_34:
      v59 = v160;
    }

LABEL_35:
    if (!*(v59 + 16))
    {
LABEL_39:

LABEL_40:
      v116 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v108 = OUTLINED_FUNCTION_40_11();
    v110 = sub_231CE0CA4(v108, v109);
    v112 = v111;

    if ((v112 & 1) == 0)
    {
      goto LABEL_40;
    }

    v113 = v154;
    if (!*(*(*(v59 + 56) + 8 * v110) + 16))
    {
      goto LABEL_40;
    }

    v114 = *(v154 + 80);
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_4_29();
    v115();
    v116 = sub_231E104C0();
    v117 = *(v113 + 8);
    v118 = OUTLINED_FUNCTION_48();
    v119(v118);
LABEL_41:
    v47 = (v173 + 1);
    v120 = sub_231E104B0();
    sub_231DEFB3C(v116);
    v121 = OUTLINED_FUNCTION_43_12();
    v120(v121);
    v45 = v155;
    if (v47 == v157)
    {

      v7 = v146;
      v8 = v145;
      v11 = v144;
      goto LABEL_44;
    }
  }

  __break(1u);
}

size_t sub_231DED468(int64_t a1, uint64_t a2)
{
  v4 = sub_231E106A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v32 = MEMORY[0x277D84F90];
  sub_231D56E94(0, v9, 0);
  v10 = v32;
  v11 = *(a2 + 16);
  if (!v11)
  {

    return v10;
  }

  v12 = 0;
  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v29 = v14;
  v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
  v25 = a2;
  v16 = a2 + v15;
  v17 = *(v13 + 56);
  v26 = (v13 + 24);
  v27 = (v13 + 16);
  do
  {
    v18 = v4;
    result = v29(v30, v16, v4);
    v19 = *(v10 + 16);
    if (v19 >= a1)
    {
      if (v12 >= v19)
      {
        __break(1u);
        goto LABEL_30;
      }

      v4 = v18;
      (*v26)(v10 + v15 + v17 * v12, v30, v18);
      if ((v12 + 1) < a1)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v28 = v12;
      v32 = v10;
      v20 = *(v10 + 24);
      if (v19 >= v20 >> 1)
      {
        sub_231D56E94(v20 > 1, v19 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v19 + 1;
      v21 = v10 + v15 + v19 * v17;
      v4 = v18;
      (*v27)(v21, v30, v18);
      v12 = v28;
    }

    v16 += v17;
    --v11;
  }

  while (v11);

  if (!v12)
  {
    return v10;
  }

  v22 = *(v10 + 16);
  v31 = MEMORY[0x277D84F90];
  result = sub_231D56E94(0, v22, 0);
  if (v22 >= v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v23 = *(v10 + 16);
    if (v23 >= v12 && v23 >= v22)
    {

      sub_231DF019C();
      sub_231DF019C();
      return v31;
    }

    goto LABEL_33;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_231DED7B8()
{
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_34_13(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[29] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[30] = v10;
  v12 = *(v11 + 64) + 15;
  v0[31] = swift_task_alloc();
  v13 = sub_231E106A0();
  v0[32] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[33] = v14;
  v16 = *(v15 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v17, v18, v19);
}

uint64_t sub_231DED8C0()
{
  OUTLINED_FUNCTION_25_10();
  sub_231D45FF4();
  v2[37] = v3;
  v4 = sub_231E0F8C0();
  v5 = OUTLINED_FUNCTION_72_6(v4);
  v2[40] = OUTLINED_FUNCTION_69_7(v5);
  v2[2] = v2;
  v2[7] = v0;
  v2[3] = sub_231DED9D8;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  OUTLINED_FUNCTION_17_11(v6);
  v2[11] = 1107296256;
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_39_8(v7, sel_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler_, v8, v9, v10, v11, v12, v13, v15, v16, v17);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231DED9D8()
{
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEDAA8()
{
  v104 = v3;
  OUTLINED_FUNCTION_26_12();

  v10 = swift_task_alloc();
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 4) = v1;
  *(v10 + 40) = v101;
  *(v10 + 56) = v99;
  *(v10 + 9) = v6;
  v11 = OUTLINED_FUNCTION_64_7();
  v14 = sub_231DEB820(v11, v12, v13);
  v83 = v2;

  v16 = 0;
  v100 = v14[2];
  v85 = (v9 + 32);
  v96 = v9 + 8;
  v97 = (v0 + 16);
  v95 = (v0 + 8);
  v87 = MEMORY[0x277D84F90];
  *&v17 = 136315138;
  v89 = v17;
  v98 = v14;
  while (v100 != v16)
  {
    if (v16 >= v14[2])
    {
      __break(1u);
      return result;
    }

    v18 = v3[36];
    v19 = v3[32];
    OUTLINED_FUNCTION_54_9();
    v102 = v16;
    v21 = v20 + v4 * v16;
    v23 = *(v22 + 16);
    v23(v18, v21);
    v24 = sub_231E10640();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v3[36];
    v29 = v3[32];
    if (v27)
    {
      v10 = *v85;
      (*v85)(v3[34], v3[36], v3[32]);
      v70 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = OUTLINED_FUNCTION_47_8();
        sub_231D56E94(v71, v72, v73);
        v70 = v87;
      }

      v75 = *(v70 + 16);
      v74 = *(v70 + 24);
      if (v75 >= v74 >> 1)
      {
        v77 = OUTLINED_FUNCTION_2_12(v74);
        sub_231D56E94(v77, v75 + 1, 1);
      }

      v16 = v102 + 1;
      v76 = OUTLINED_FUNCTION_31_16();
      result = (v10)(v76);
    }

    else
    {
      v30 = v3[35];
      v31 = v3[31];
      v32 = v3[29];
      v33 = sub_231CB4EEC();
      v41 = OUTLINED_FUNCTION_51_9(v33, v34, v35, v36, v37, v38, v39, v40, v81, v83, v85, v87, v89, *(&v89 + 1), v90, v91, v93, v94, v95, v96, v97);
      v42(v41);
      (v23)(v30, v28, v29);
      v43 = sub_231E10E10();
      v10 = sub_231E11AD0();
      os_log_type_enabled(v43, v10);
      OUTLINED_FUNCTION_36_12();
      if (v44)
      {
        swift_slowAlloc();
        v45 = OUTLINED_FUNCTION_70_7();
        OUTLINED_FUNCTION_50_7(v45, v46, v47, v48, v49, v50, v51, v52, v82, v84, v86, v88, v53);
        v91 = sub_231E10690();
        v55 = v54;
        v56 = OUTLINED_FUNCTION_7_26();
        v0(v56);
        v57 = sub_231CB5000(v91, v55, v103);

        *(v29 + 4) = v57;
        _os_log_impl(&dword_231CAE000, v43, v10, "A recent message with id %s has no content", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v4);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*v95)(v94, v93);
      }

      else
      {

        v58 = OUTLINED_FUNCTION_7_26();
        v59 = (v0)(v58);
        v67 = OUTLINED_FUNCTION_62_7(v59, v60, v61, v62, v63, v64, v65, v66, v82, v84, v86, v88, v89, *(&v89 + 1), v90, v92, v93, v94, v95);
        v69(v67, v68);
      }

      result = (v0)(v3[36], v3[32]);
      v16 = v102 + 1;
      v14 = v98;
    }
  }

  v103[0] = v87;

  sub_231DF0050(v103);
  if (!v83)
  {
    OUTLINED_FUNCTION_56_13();
    sub_231DED468(v10, v103[0]);

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_64();
}

void sub_231DEDE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_118();
  v167 = v22;
  v168 = v21;
  v171 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v163 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  OUTLINED_FUNCTION_47(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v162 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_12_1();
  v165 = v50;
  OUTLINED_FUNCTION_3_0();
  v164 = sub_231E0F950();
  v51 = OUTLINED_FUNCTION_24(v164);
  v161 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_139();
  v160 = v55;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_5();
  v170 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v59 = OUTLINED_FUNCTION_47(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3();
  v64 = v62 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = v154 - v66;
  v68 = sub_231E10400();
  v69 = OUTLINED_FUNCTION_24(v68);
  v173 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_139();
  v169 = v73;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_0();
  v166 = v75;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_25_5();
  v172 = v77;
  v78 = *v33;
  v79 = [v78 sender];
  if (!v79)
  {
    v88 = OUTLINED_FUNCTION_9_22();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v68);
    goto LABEL_18;
  }

  sub_231E08B20(v79, v67);
  OUTLINED_FUNCTION_8_17(v67, 1, v68);
  if (v82)
  {
LABEL_18:
    sub_231CC154C(v67, &dword_27DD73FA0, &dword_231E13460);
LABEL_21:
    v91 = 1;
LABEL_22:
    v92 = sub_231E106A0();
    __swift_storeEnumTagSinglePayload(v35, v91, 1, v92);
    OUTLINED_FUNCTION_113();
    return;
  }

  v157 = *(v173 + 32);
  v158 = v173 + 32;
  v157(v172, v67, v68);
  v159 = v78;
  v80 = sub_231CC33AC(v78, &selRef_content);
  if (v81)
  {
    v82 = v80 == v31 && v81 == v29;
    if (v82)
    {
    }

    else
    {
      v83 = sub_231E12100();

      if ((v83 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_20:
    (*(v173 + 8))(v172, v68);
    goto LABEL_21;
  }

LABEL_9:
  if (!sub_231D24924(v25, v171, v27))
  {
    goto LABEL_24;
  }

  v84 = sub_231CC33AC(v159, &selRef_conversationIdentifier);
  if (!v85)
  {
    goto LABEL_20;
  }

  if (v84 == v168 && v85 == v167)
  {

    goto LABEL_24;
  }

  v87 = sub_231E12100();

  if ((v87 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  v93 = v159;
  v94 = sub_231DF248C(v159, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
  v95 = MEMORY[0x277D84F90];
  v154[1] = v25;
  v155 = v35;
  if (!v94)
  {
LABEL_41:
    v118 = sub_231CC6C88(a21, v95);

    v119 = [v93 identifier];
    v166 = sub_231E11620();
    v158 = v120;

    v121 = sub_231CC33AC(v93, &selRef_conversationIdentifier);
    v156 = v122;
    v157 = v121;
    v123 = [v93 dateSent];
    if (v123)
    {
      v124 = v123;
      v125 = v160;
      sub_231E0F910();

      v126 = *(v161 + 32);
      v127 = v125;
      v128 = v164;
      v126(v165, v127, v164);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v128);
      v132 = OUTLINED_FUNCTION_102_0();
      (v126)(v132);
    }

    else
    {
      v134 = v164;
      v133 = v165;
      v135 = OUTLINED_FUNCTION_9_22();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v134);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v133, 1, v134);
      if (!v82)
      {
        sub_231CC154C(v133, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v138 = v172;
    v139 = v173;
    (*(v173 + 16))(v169, v172, v68);
    v140 = v159;
    v141 = sub_231CC33AC(v159, &selRef_content);
    if (v142)
    {
      v143 = v141;
    }

    else
    {
      v143 = 0;
    }

    v144 = 0xE000000000000000;
    if (v142)
    {
      v144 = v142;
    }

    v164 = v144;
    v165 = v143;
    LODWORD(v161) = sub_231E103C0();
    v145 = *(v118 + 16) > 1uLL;
    sub_231E10370();
    v160 = v118;
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
    sub_231E104A0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
    sub_231CC33AC(v140, &selRef_serviceName);
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_58_11();
    v35 = v155;
    sub_231E10680();
    (*(v139 + 8))(v138, v68);
    v91 = 0;
    goto LABEL_22;
  }

  v96 = v94;
  v97 = sub_231CBA138(v94);
  v98 = 0;
  v156 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v97 == v98)
    {

      v93 = v159;
      v95 = v156;
      goto LABEL_41;
    }

    if ((v96 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x23837D2A0](v98, v96);
    }

    else
    {
      if (v98 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v99 = *(v96 + 8 * v98 + 32);
    }

    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    sub_231E08B20(v99, v64);
    OUTLINED_FUNCTION_8_17(v64, 1, v68);
    if (v82)
    {
      sub_231CC154C(v64, &dword_27DD73FA0, &dword_231E13460);
      ++v98;
    }

    else
    {
      v157(v166, v64, v68);
      v101 = v156;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = *(v101 + 16);
        OUTLINED_FUNCTION_3_34();
        v110 = OUTLINED_FUNCTION_0_1();
        v101 = sub_231DEF7F0(v110, v111, v112, v101, &qword_27DD740A8, &unk_231E13540, v113, v114);
      }

      v103 = v101;
      v104 = *(v101 + 16);
      v156 = v103;
      v105 = *(v103 + 24);
      v106 = v104 + 1;
      if (v104 >= v105 >> 1)
      {
        v115 = OUTLINED_FUNCTION_2_12(v105);
        v154[0] = v116;
        v117 = sub_231DEF7F0(v115, v116, 1, v156, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
        v106 = v154[0];
        v156 = v117;
      }

      *(v156 + 16) = v106;
      OUTLINED_FUNCTION_11_22();
      v157(v107 + v108 * v104, v166, v68);
      v98 = v100;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_231DEE75C()
{
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_34_13(v1, v2, v3, v4, v5, v6, v7, v8);
  v0[29] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[30] = v10;
  v12 = *(v11 + 64) + 15;
  v0[31] = swift_task_alloc();
  v13 = sub_231E10A30();
  v0[32] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[33] = v14;
  v16 = *(v15 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  OUTLINED_FUNCTION_31();
  return OUTLINED_FUNCTION_149_1(v17, v18, v19);
}

uint64_t sub_231DEE864()
{
  OUTLINED_FUNCTION_25_10();
  sub_231D45FF4();
  v2[37] = v3;
  v4 = sub_231E0F8C0();
  v5 = OUTLINED_FUNCTION_72_6(v4);
  v2[40] = OUTLINED_FUNCTION_69_7(v5);
  v2[2] = v2;
  v2[7] = v0;
  v2[3] = sub_231DEE97C;
  swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75938, &qword_231E23098);
  OUTLINED_FUNCTION_17_11(v6);
  v2[11] = 1107296256;
  OUTLINED_FUNCTION_15_20();
  OUTLINED_FUNCTION_39_8(v7, sel_recentMessagesSinceDate_conversationIdentifier_appBundleId_incomingMessageID_limit_options_completionHandler_, v8, v9, v10, v11, v12, v13, v15, v16, v17);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231DEE97C()
{
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231DEEA4C()
{
  v104 = v3;
  OUTLINED_FUNCTION_26_12();

  v10 = swift_task_alloc();
  v10[2] = 200;
  v10[3] = v8;
  v10[4] = v7;
  v10[5] = v1;
  *(v10 + 3) = v102;
  *(v10 + 4) = v101;
  v10[10] = v6;
  v11 = OUTLINED_FUNCTION_64_7();
  v14 = sub_231DEBEF8(v11, v12, v13);
  v84 = v2;

  v100 = v14[2];
  v86 = (v9 + 32);
  v97 = v9 + 8;
  v98 = (v0 + 16);
  v16 = 0;
  v96 = (v0 + 8);
  v88 = MEMORY[0x277D84F90];
  *&v17 = 136315138;
  v90 = v17;
  v99 = v14;
  while (v100 != v16)
  {
    if (v16 >= v14[2])
    {
      __break(1u);
      return result;
    }

    v18 = v3[36];
    v19 = v3[32];
    OUTLINED_FUNCTION_54_9();
    v22 = *(v21 + 16);
    v22(v18, v20 + v4 * v16);
    v23 = *(sub_231E10920() + 16);

    if (v23)
    {
LABEL_12:
      v10 = *v86;
      (*v86)(v3[34], v3[36], v3[32]);
      v71 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = OUTLINED_FUNCTION_47_8();
        sub_231D9FE04(v72, v73, v74);
        v71 = v88;
      }

      v76 = *(v71 + 16);
      v75 = *(v71 + 24);
      if (v76 >= v75 >> 1)
      {
        v78 = OUTLINED_FUNCTION_2_12(v75);
        sub_231D9FE04(v78, v76 + 1, 1);
      }

      ++v16;
      v77 = OUTLINED_FUNCTION_31_16();
      result = (v10)(v77);
    }

    else
    {
      v24 = v3[36];
      sub_231E109B0();
      if (v25)
      {
        sub_231E116D0();
        v27 = v26;

        if (v27)
        {

          goto LABEL_12;
        }
      }

      v29 = v3[35];
      v28 = v3[36];
      v31 = v3[31];
      v30 = v3[32];
      v32 = v3[29];
      v33 = sub_231CB4EEC();
      v41 = OUTLINED_FUNCTION_51_9(v33, v34, v35, v36, v37, v38, v39, v40, v82, v84, v86, v88, v90, *(&v90 + 1), v91, v92, v94, v95, v96, v97, v98);
      v42(v41);
      v43 = OUTLINED_FUNCTION_102_0();
      (v22)(v43);
      v44 = sub_231E10E10();
      v10 = sub_231E11AD0();
      os_log_type_enabled(v44, v10);
      OUTLINED_FUNCTION_36_12();
      if (v45)
      {
        swift_slowAlloc();
        v46 = OUTLINED_FUNCTION_70_7();
        OUTLINED_FUNCTION_50_7(v46, v47, v48, v49, v50, v51, v52, v53, v83, v85, v87, v89, v54);
        v92 = sub_231E10A20();
        v56 = v55;
        v57 = OUTLINED_FUNCTION_7_26();
        v0(v57);
        v58 = sub_231CB5000(v92, v56, v103);

        *(v29 + 4) = v58;
        _os_log_impl(&dword_231CAE000, v44, v10, "A recent message with id %s has no content or attachments", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v4);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*v96)(v95, v94);
      }

      else
      {

        v59 = OUTLINED_FUNCTION_7_26();
        v60 = (v0)(v59);
        v68 = OUTLINED_FUNCTION_62_7(v60, v61, v62, v63, v64, v65, v66, v67, v83, v85, v87, v89, v90, *(&v90 + 1), v91, v93, v94, v95, v96);
        v70(v68, v69);
      }

      result = (v0)(v3[36], v3[32]);
      ++v16;
      v14 = v99;
    }
  }

  v103[0] = v88;

  sub_231DF00F4(v103);
  if (!v84)
  {
    OUTLINED_FUNCTION_56_13();
    sub_231D922EC(v10, v103[0]);

    OUTLINED_FUNCTION_18_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_64();
}

void sub_231DEEE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  OUTLINED_FUNCTION_118();
  v151 = v23;
  v152 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  OUTLINED_FUNCTION_47(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v149 = v39;
  OUTLINED_FUNCTION_3_0();
  v40 = sub_231E0F950();
  v41 = OUTLINED_FUNCTION_24(v40);
  v147 = v42;
  v148 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_139();
  v146 = v45;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_5();
  v153 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v49 = OUTLINED_FUNCTION_47(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  MEMORY[0x28223BE20](v52);
  v54 = v140 - v53;
  v55 = sub_231E10400();
  v56 = OUTLINED_FUNCTION_24(v55);
  v155 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_139();
  v150 = v60;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_5();
  v154 = v62;
  v156 = *v32;
  v63 = [v156 sender];
  if (!v63)
  {
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v55);
    goto LABEL_6;
  }

  sub_231E08B20(v63, v54);
  OUTLINED_FUNCTION_8_17(v54, 1, v55);
  if (v84)
  {
LABEL_6:
    sub_231CC154C(v54, &dword_27DD73FA0, &dword_231E13460);
LABEL_7:
    v75 = 1;
LABEL_8:
    v76 = sub_231E10A30();
    __swift_storeEnumTagSinglePayload(v34, v75, 1, v76);
    OUTLINED_FUNCTION_113();
    return;
  }

  v143 = v26;
  v144 = v28;
  v145 = v34;
  v141 = *(v155 + 32);
  v142 = v155 + 32;
  v141(v154, v54, v55);
  sub_231CC33AC(v156, &selRef_content);
  if (v64)
  {
    v65 = sub_231CEF250(v30);
    v67 = v66;
    v69 = v68;
    v71 = v70;
  }

  else
  {
    v65 = 0;
    v67 = 0;
    v69 = 0;
    v71 = 0;
  }

  v77 = sub_231CEF250(v30);
  if (v71)
  {
    v81 = sub_231DEF680(v65, v67, v69, v71, v77, v78, v79, v80);

    v34 = v145;
    if (v81)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v34 = v145;
  }

  if (sub_231D24924(v144, v143, v151))
  {
    v82 = sub_231CC33AC(v156, &selRef_conversationIdentifier);
    if (!v83)
    {
LABEL_21:
      (*(v155 + 8))(v154, v55);
      goto LABEL_7;
    }

    v84 = v82 == v152 && v83 == a21;
    if (v84)
    {
    }

    else
    {
      v85 = sub_231E12100();

      if ((v85 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  v86 = sub_231DF248C(v156, &selRef_recipients, &qword_27DD75448, 0x277CD3E90);
  v87 = MEMORY[0x277D84F90];
  v140[1] = a21;
  if (!v86)
  {
LABEL_40:
    v112 = sub_231CC6C88(a22, v87);

    v113 = v156;
    v114 = [v156 identifier];
    v115 = sub_231E11620();
    v150 = v116;
    v151 = v115;

    v117 = [v113 dateSent];
    v118 = v149;
    if (v117)
    {
      v119 = v117;
      v120 = v146;
      sub_231E0F910();

      v121 = *(v147 + 32);
      v122 = v120;
      v123 = v148;
      v121(v118, v122, v148);
      OUTLINED_FUNCTION_15_7();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v123);
      v127 = OUTLINED_FUNCTION_59();
      (v121)(v127);
    }

    else
    {
      v128 = OUTLINED_FUNCTION_9_22();
      v129 = v148;
      __swift_storeEnumTagSinglePayload(v128, v130, v131, v148);
      sub_231E0F920();
      OUTLINED_FUNCTION_8_17(v118, 1, v129);
      if (!v84)
      {
        sub_231CC154C(v118, &dword_27DD74AD0, &qword_231E16C40);
      }
    }

    v132 = v154;
    v133 = sub_231E103E0();
    v148 = v134;
    v149 = v133;
    sub_231CC33AC(v156, &selRef_content);
    v135 = *(v112 + 16) > 1uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
    v136 = v155;
    v137 = *(v155 + 72);
    v138 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_231E138E0;
    (*(v136 + 16))(v139 + v138, v132, v55);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v34 = v145;
    sub_231E10A10();
    (*(v136 + 8))(v132, v55);
    v75 = 0;
    goto LABEL_8;
  }

  v88 = v86;
  v89 = sub_231CBA138(v86);
  v90 = 0;
  v151 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v89 == v90)
    {

      v87 = v151;
      goto LABEL_40;
    }

    if ((v88 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x23837D2A0](v90, v88);
    }

    else
    {
      if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v91 = *(v88 + 8 * v90 + 32);
    }

    v92 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    sub_231E08B20(v91, v22);
    OUTLINED_FUNCTION_8_17(v22, 1, v55);
    if (v84)
    {
      v93 = OUTLINED_FUNCTION_63_10();
      sub_231CC154C(v93, v94, &dword_231E13460);
      ++v90;
    }

    else
    {
      v141(v150, v22, v55);
      v95 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v103 = *(v95 + 16);
        OUTLINED_FUNCTION_3_34();
        v104 = OUTLINED_FUNCTION_0_1();
        v95 = sub_231DEF7F0(v104, v105, v106, v95, &qword_27DD740A8, &unk_231E13540, v107, v108);
      }

      v97 = v95;
      v98 = *(v95 + 16);
      v151 = v97;
      v99 = *(v97 + 24);
      v100 = v98 + 1;
      if (v98 >= v99 >> 1)
      {
        v109 = OUTLINED_FUNCTION_2_12(v99);
        v140[0] = v110;
        v111 = sub_231DEF7F0(v109, v110, 1, v151, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
        v100 = v140[0];
        v151 = v111;
      }

      *(v151 + 16) = v100;
      OUTLINED_FUNCTION_11_22();
      (v141)(v101 + v102 * v98);
      v90 = v92;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_231DEF680(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_231E120C0() & 1;
  }
}

size_t sub_231DEF6F4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231DEF7F0(result, *(v1 + 16) + 1, 1, v1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    *v0 = result;
  }

  return result;
}

size_t sub_231DEF778(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231DEF7F0(v2 > 1, result + 1, 1, *v1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
    *v1 = result;
  }

  return result;
}

size_t sub_231DEF7F0(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231DEF978(v14, v13, a5, a6, a7);
  v16 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_79();
  if (v11)
  {
    sub_231DEFA6C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_231DEF8FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_231DEF978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231DEFA6C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

int64_t sub_231DEFB3C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF2340(result, 1, &qword_27DD74BC0, &qword_231E1C578, MEMORY[0x277D423C8], MEMORY[0x277D423C8]);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E107F0();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

int64_t sub_231DEFC74(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DF2340(result, 1, &qword_27DD75948, &qword_231E230F0, MEMORY[0x277D423C0], MEMORY[0x277D423C0]);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E10760();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_231DEFDAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75950, &qword_231E230F8);
  v38 = a2;
  result = sub_231E11EF0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_231CFD55C(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_231E12220();
    sub_231E116E0();
    result = sub_231E12250();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_231DF0050(uint64_t *a1)
{
  v2 = sub_231E106A0();
  OUTLINED_FUNCTION_47(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF0654(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_231DF08C0(v8);
  *a1 = v5;
}

void sub_231DF00F4(uint64_t *a1)
{
  v2 = *(sub_231E10A30() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231DF06B4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_231DF0A88(v6);
  *a1 = v3;
}

void sub_231DF019C()
{
  OUTLINED_FUNCTION_118();
  v75 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v81 = v12;
  v14 = v13;
  v16 = v15(0);
  OUTLINED_FUNCTION_24(v16);
  v86 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v83 = v21;
  v88 = v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v23 = OUTLINED_FUNCTION_47(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_41_14();
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v30 = v74 - v29;
  v31 = v9 >> 1;
  v82 = v11;
  v32 = (v9 >> 1) - v11;
  if (__OFSUB__(v9 >> 1, v11))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v74[1] = v14;
  v33 = *v7;
  v34 = *(*v7 + 16);
  v35 = v34 + v32;
  if (__OFADD__(v34, v32))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v36 = v32;
  v84 = v31;
  v77 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v7;
  *v7 = v33;
  if (isUniquelyReferenced_nonNull_native)
  {
    v38 = *(v33 + 24) >> 1;
    v39 = v83;
    v40 = v75;
    if (v38 >= v35)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v39 = v83;
    v40 = v75;
  }

  v41 = v78;
  v40();
  v33 = *v41;
  v38 = *(v33 + 24) >> 1;
LABEL_8:
  v42 = *(v33 + 16);
  v43 = v38 - v42;
  if (v84 != v82)
  {
    if (v43 >= v36)
    {
      v44 = v36;
      v46 = v33 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v42;
      swift_arrayInitWithCopy();
      if (v36 <= 0)
      {
        v45 = v84;
        goto LABEL_16;
      }

      v47 = *(v33 + 16);
      v48 = __OFADD__(v47, v36);
      v49 = v47 + v36;
      v45 = v84;
      if (!v48)
      {
        *(v33 + 16) = v49;
        goto LABEL_16;
      }

LABEL_43:
      __break(1u);
      return;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v36 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v44 = 0;
  v45 = v82;
LABEL_16:
  if (v44 == v43)
  {
    v79 = v33;
    v50 = *(v33 + 16);
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v16);
    v54 = (v86 + 32);
    v80 = (v86 + 16);
    v76 = (v86 + 8);
    while (1)
    {
      v55 = v77;
      v56 = v88;
      sub_231D48134(v30, v77, v88, v4);
      OUTLINED_FUNCTION_8_17(v55, 1, v16);
      if (v57)
      {
        break;
      }

      v58 = OUTLINED_FUNCTION_102_0();
      sub_231CC154C(v58, v59, v4);
      v60 = *(v79 + 24);
      if (v50 + 1 > (v60 >> 1))
      {
        (v75)(v60 > 1);
      }

      v87 = *(*v78 + 24) >> 1;
      v61 = *(v86 + 80);
      OUTLINED_FUNCTION_79();
      v79 = v62;
      v85 = v62 + v63;
      while (1)
      {
        v64 = v88;
        sub_231D48134(v30, v1, v88, v4);
        OUTLINED_FUNCTION_8_17(v1, 1, v16);
        if (v57)
        {
          sub_231CC154C(v1, v64, v4);
          goto LABEL_35;
        }

        v65 = v39;
        v66 = *v54;
        (*v54)(v65, v1, v16);
        if (v50 >= v87)
        {
          break;
        }

        v67 = v64;
        v68 = v4;
        sub_231CC154C(v30, v67, v4);
        v69 = *(v86 + 72);
        v66(v85 + v69 * v50, v65, v16);
        if (v45 == v84)
        {
          v70 = 1;
          v45 = v84;
        }

        else
        {
          if (v45 < v82 || v45 >= v84)
          {
            __break(1u);
            goto LABEL_39;
          }

          (*v80)(v30, v81 + v69 * v45, v16);
          v70 = 0;
          ++v45;
        }

        __swift_storeEnumTagSinglePayload(v30, v70, 1, v16);
        ++v50;
        v4 = v68;
        v39 = v83;
      }

      (*v76)(v65, v16);
      v39 = v65;
LABEL_35:
      *(v79 + 16) = v50;
    }

    sub_231CC154C(v30, v56, v4);
    swift_unknownObjectRelease();
    v72 = OUTLINED_FUNCTION_102_0();
    sub_231CC154C(v72, v73, v4);
    v33 = v79;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v78 = v33;
  OUTLINED_FUNCTION_113();
}

void sub_231DF0714()
{
  OUTLINED_FUNCTION_118();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_6(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_79();
  if (v10)
  {
    sub_231DEFA6C(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_113();
}

void sub_231DF08C0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_231E120B0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231E106A0();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = sub_231E106A0();
      OUTLINED_FUNCTION_47(v7);
      v9 = *(v8 + 80);
      OUTLINED_FUNCTION_79();
      v11[0] = v6 + v10;
      v11[1] = v5;
      sub_231DF0FB8(v11, v12, a1, v4, MEMORY[0x277D42368], MEMORY[0x277D42348], MEMORY[0x277D42368], MEMORY[0x277D42368]);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_231DF0C58(0, v2, 1, a1, MEMORY[0x277D42368], MEMORY[0x277D42348]);
  }
}

void sub_231DF0A88(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_231E120B0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231E10A30();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E10A30() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_231DF0FB8(v8, v9, a1, v4, MEMORY[0x277D42428], MEMORY[0x277D42410], MEMORY[0x277D42428], MEMORY[0x277D42428]);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_231DF0C58(0, v2, 1, a1, MEMORY[0x277D42428], MEMORY[0x277D42410]);
  }
}

void sub_231DF0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v58 = sub_231E0F950();
  v11 = OUTLINED_FUNCTION_24(v58);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_139();
  v57 = v16;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_5();
  v18 = OUTLINED_FUNCTION_3_0();
  v19 = a5(v18);
  v20 = OUTLINED_FUNCTION_24(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_139();
  v51 = v23;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_0();
  v56 = v25;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_5();
  v55 = v28;
  if (a3 != a2)
  {
    v30 = *(v27 + 16);
    v29 = v27 + 16;
    v31 = *(v29 + 56);
    v53 = (v13 + 8);
    v54 = v30;
    v52 = (v29 - 8);
    v32 = *a4 + v31 * (a3 - 1);
    v48 = -v31;
    v49 = (v29 + 16);
    v33 = a1 - a3;
    v50 = *a4;
    v43 = v31;
    v34 = *a4 + v31 * a3;
    while (2)
    {
      v46 = v32;
      v47 = a3;
      v44 = v34;
      v45 = v33;
      v60 = v33;
      do
      {
        v54(v55, v34, v19);
        v35 = (v54)(v56, v32, v19);
        v36 = a6(v35);
        a6(v36);
        OUTLINED_FUNCTION_63_10();
        v61 = sub_231E0F8E0();
        v37 = *v53;
        (*v53)(v57, v58);
        v38 = OUTLINED_FUNCTION_63_10();
        v37(v38);
        v39 = *v52;
        (*v52)(v56, v19);
        v39(v55, v19);
        if ((v61 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v40 = *v49;
        (*v49)(v51, v34, v19);
        swift_arrayInitWithTakeFrontToBack();
        v41 = OUTLINED_FUNCTION_40_11();
        v40(v41);
        v32 += v48;
        v34 += v48;
      }

      while (!__CFADD__(v60++, 1));
      a3 = v47 + 1;
      v32 = v46 + v43;
      v33 = v45 - 1;
      v34 = v44 + v43;
      if (v47 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_231DF0FB8(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t), void (*a8)(void))
{
  v167 = sub_231E0F950();
  v13 = OUTLINED_FUNCTION_24(v167);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_139();
  v166 = v18;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_5();
  v165 = v20;
  v21 = OUTLINED_FUNCTION_3_0();
  v22 = a5(v21);
  v23 = OUTLINED_FUNCTION_24(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_0();
  v156 = v27;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_0();
  v164 = v29;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_5();
  v163 = v32;
  v145 = v31;
  v146 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
    v36 = v8;
LABEL_100:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    v38 = v36;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v124 = v35 + 16;
      v125 = *(v35 + 2);
      v126 = v38;
      while (v125 >= 2)
      {
        if (!*v146)
        {
          goto LABEL_138;
        }

        v38 = v35;
        v127 = &v35[16 * v125];
        v35 = *v127;
        v128 = &v124[2 * v125];
        v129 = v128[1];
        OUTLINED_FUNCTION_71_6(*v146 + *(v145 + 72) * *v127, *v146 + *(v145 + 72) * *v128, *v146 + *(v145 + 72) * v129, v9, a7, a8);
        if (v126)
        {
          break;
        }

        if (v129 < v35)
        {
          goto LABEL_126;
        }

        if (v125 - 2 >= *v124)
        {
          goto LABEL_127;
        }

        *v127 = v35;
        *(v127 + 1) = v129;
        v130 = *v124 - v125;
        if (*v124 < v125)
        {
          goto LABEL_128;
        }

        v125 = *v124 - 1;
        memmove(v128, v128 + 2, 16 * v130);
        *v124 = v125;
        v35 = v38;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v35 = sub_231CF1D4C(v35);
    goto LABEL_102;
  }

  v131 = a4;
  v34 = 0;
  v161 = (v15 + 8);
  v159 = (v31 + 32);
  v160 = (v31 + 8);
  v35 = MEMORY[0x277D84F90];
  v162 = v22;
  v36 = v8;
  while (1)
  {
    v37 = v34;
    v38 = (v34 + 1);
    if ((v34 + 1) < v33)
    {
      v147 = v36;
      v149 = v34 + 1;
      v169 = *v146;
      v39 = *(v31 + 72);
      v40 = v34;
      v133 = v34;
      v41 = *v146 + v39 * v38;
      v42 = *(v31 + 16);
      v43 = OUTLINED_FUNCTION_45_6();
      v152 = v44;
      v42(v43);
      v9 = v164;
      v139 = v42;
      v45 = (v42)(v164, v169 + v39 * v40, v22);
      v35 = v165;
      v46 = a6(v45);
      a6(v46);
      v141 = sub_231E0F8E0();
      v47 = v22;
      v48 = *v161;
      (*v161)(v166, v167);
      v48(v165, v167);
      v49 = *(v145 + 8);
      v49(v164, v47);
      v49(v163, v47);
      v50 = v152;
      v51 = v133 + 2;
      v154 = v39;
      v52 = v169 + v39 * (v133 + 2);
      while (1)
      {
        v53 = v51;
        if (++v149 >= v50)
        {
          break;
        }

        v9 = v163;
        v170 = v51;
        v139(v163, v52, v162);
        v54 = OUTLINED_FUNCTION_45_6();
        v55 = (v139)(v54);
        v56 = a6(v55);
        a6(v56);
        v157 = sub_231E0F8E0() & 1;
        v35 = v161;
        v48(v166, v167);
        v57 = OUTLINED_FUNCTION_59();
        (v48)(v57);
        v49(v164, v162);
        v49(v163, v162);
        v53 = v170;
        v50 = v152;
        v52 += v154;
        v41 += v154;
        v51 = v170 + 1;
        if ((v141 & 1) != v157)
        {
          goto LABEL_9;
        }
      }

      v149 = v50;
LABEL_9:
      if (v141)
      {
        v38 = v149;
        v37 = v133;
        v22 = v162;
        if (v149 < v133)
        {
          goto LABEL_132;
        }

        if (v133 >= v149)
        {
          OUTLINED_FUNCTION_57_8();
          goto LABEL_32;
        }

        if (v50 >= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v50;
        }

        v59 = v154 * (v58 - 1);
        v60 = v154 * v58;
        v61 = v149;
        v35 = v133;
        v62 = v133 * v154;
        v63 = v147;
        do
        {
          if (v35 != --v61)
          {
            v9 = *v146;
            if (!*v146)
            {
              goto LABEL_139;
            }

            v64 = v63;
            v171 = *v159;
            (*v159)(v136, v9 + v62, v162);
            v65 = v62 < v59 || v9 + v62 >= v9 + v60;
            if (v65)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v59)
            {
              OUTLINED_FUNCTION_65_9();
              swift_arrayInitWithTakeBackToFront();
            }

            v171(v9 + v59, v136, v162);
            v63 = v64;
          }

          ++v35;
          v59 -= v154;
          v60 -= v154;
          v62 += v154;
        }

        while (v35 < v61);
        OUTLINED_FUNCTION_57_8();
      }

      else
      {
        OUTLINED_FUNCTION_57_8();
        v22 = v162;
      }

      v38 = v149;
      v37 = v133;
    }

LABEL_32:
    v66 = v146[1];
    if (v38 < v66)
    {
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_131;
      }

      if (v38 - v37 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v38 < v37)
    {
      goto LABEL_130;
    }

    v148 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = *(v35 + 2);
      v120 = OUTLINED_FUNCTION_0_1();
      v35 = sub_231CF0DE4(v120, v121, v122, v35);
    }

    v78 = *(v35 + 2);
    v77 = *(v35 + 3);
    v79 = v78 + 1;
    v31 = v145;
    if (v78 >= v77 >> 1)
    {
      v123 = sub_231CF0DE4((v77 > 1), v78 + 1, 1, v35);
      v31 = v145;
      v35 = v123;
    }

    *(v35 + 2) = v79;
    v80 = v35 + 32;
    v81 = &v35[16 * v78 + 32];
    *v81 = v37;
    *(v81 + 1) = v38;
    v173 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    v151 = v38;
    if (v78)
    {
      while (1)
      {
        v82 = v79 - 1;
        v83 = &v80[16 * v79 - 16];
        v84 = &v35[16 * v79];
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v85 = *(v35 + 4);
          v86 = *(v35 + 5);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_68:
          if (v88)
          {
            goto LABEL_117;
          }

          v100 = *v84;
          v99 = *(v84 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_120;
          }

          v104 = *(v83 + 1);
          v105 = v104 - *v83;
          if (__OFSUB__(v104, *v83))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v102, v105))
          {
            goto LABEL_125;
          }

          if (v102 + v105 >= v87)
          {
            if (v87 < v105)
            {
              v82 = v79 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v79 < 2)
        {
          goto LABEL_119;
        }

        v107 = *v84;
        v106 = *(v84 + 1);
        v95 = __OFSUB__(v106, v107);
        v102 = v106 - v107;
        v103 = v95;
LABEL_83:
        if (v103)
        {
          goto LABEL_122;
        }

        v109 = *v83;
        v108 = *(v83 + 1);
        v95 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v95)
        {
          goto LABEL_124;
        }

        if (v110 < v102)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v82 - 1 >= v79)
        {
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
          goto LABEL_134;
        }

        if (!*v146)
        {
          goto LABEL_137;
        }

        v114 = &v80[16 * v82 - 16];
        v115 = *v114;
        v9 = v80;
        v116 = &v80[16 * v82];
        v117 = *(v116 + 1);
        OUTLINED_FUNCTION_71_6(*v146 + *(v31 + 72) * *v114, *v146 + *(v31 + 72) * *v116, *v146 + *(v31 + 72) * v117, v173, a7, a8);
        if (v148)
        {
          goto LABEL_110;
        }

        if (v117 < v115)
        {
          goto LABEL_112;
        }

        v38 = v35;
        v35 = *(v35 + 2);
        if (v82 > v35)
        {
          goto LABEL_113;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        if (v82 >= v35)
        {
          goto LABEL_114;
        }

        v148 = 0;
        v79 = (v35 - 1);
        memmove(v116, v116 + 16, 16 * &v35[-v82 - 1]);
        *(v38 + 16) = v35 - 1;
        v118 = v35 > 2;
        v35 = v38;
        v31 = v145;
        v80 = v9;
        if (!v118)
        {
          goto LABEL_97;
        }
      }

      v89 = &v80[16 * v79];
      v90 = *(v89 - 8);
      v91 = *(v89 - 7);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_115;
      }

      v94 = *(v89 - 6);
      v93 = *(v89 - 5);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_116;
      }

      v96 = *(v84 + 1);
      v97 = v96 - *v84;
      if (__OFSUB__(v96, *v84))
      {
        goto LABEL_118;
      }

      v95 = __OFADD__(v87, v97);
      v98 = v87 + v97;
      if (v95)
      {
        goto LABEL_121;
      }

      if (v98 >= v92)
      {
        v112 = *v83;
        v111 = *(v83 + 1);
        v95 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v95)
        {
          goto LABEL_129;
        }

        if (v87 < v113)
        {
          v82 = v79 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v36 = v148;
    v33 = v146[1];
    v34 = v151;
    if (v151 >= v33)
    {
      goto LABEL_100;
    }
  }

  v67 = (v37 + v131);
  if (__OFADD__(v37, v131))
  {
    goto LABEL_133;
  }

  if (v67 >= v66)
  {
    v67 = v146[1];
  }

  if (v67 < v37)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v38 == v67)
  {
    goto LABEL_48;
  }

  v68 = *(v31 + 72);
  v158 = *(v31 + 16);
  v69 = *v146 + v68 * (v38 - 1);
  v153 = -v68;
  v134 = v37;
  v9 = v37 - v38;
  v155 = *v146;
  v135 = v68;
  v70 = *v146 + v38 * v68;
  v137 = v67;
LABEL_41:
  v150 = v38;
  v138 = v70;
  v140 = v9;
  v142 = v69;
  while (1)
  {
    v71 = OUTLINED_FUNCTION_45_6();
    v158(v71);
    v72 = (v158)(v164, v69, v22);
    v73 = a6(v72);
    a6(v73);
    v172 = sub_231E0F8E0();
    v74 = *v161;
    v35 = v167;
    (*v161)(v166, v167);
    v22 = v162;
    v74(v165, v167);
    v75 = *v160;
    (*v160)(v164, v162);
    v75(v163, v162);
    if ((v172 & 1) == 0)
    {
LABEL_46:
      v38 = (v150 + 1);
      v69 = v142 + v135;
      v9 = v140 - 1;
      v70 = v138 + v135;
      if (v150 + 1 == v137)
      {
        v38 = v137;
        OUTLINED_FUNCTION_57_8();
        v37 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v155)
    {
      break;
    }

    v76 = *v159;
    (*v159)(v156, v70, v162);
    swift_arrayInitWithTakeFrontToBack();
    v76(v69, v156, v162);
    v69 += v153;
    v70 += v153;
    v65 = __CFADD__(v9++, 1);
    if (v65)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}