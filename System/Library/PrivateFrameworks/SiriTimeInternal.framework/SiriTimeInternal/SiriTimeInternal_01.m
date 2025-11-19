unint64_t sub_2692EFE44()
{
  result = qword_280308340;
  if (!qword_280308340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308340);
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

uint64_t ClockTimeSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = v45 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  v10 = MEMORY[0x28223BE20](v54);
  v49 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - v12;
  v14 = sub_26932BF40();
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308378, &qword_26932F3E8);
  v55 = *(v57 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v20 = v45 - v19;
  v21 = type metadata accessor for ClockTimeSnippetModel(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v23 + 36);
  v27 = sub_26932BED0();
  v28 = *(*(v27 - 8) + 56);
  v61 = v25;
  v59 = v26;
  v28(v25 + v26, 1, 1, v27);
  v29 = a1[3];
  v30 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2692EFE44();
  v56 = v20;
  v31 = v58;
  sub_26932DF80();
  if (v31)
  {
    v34 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    return sub_2692F0730(v34 + v59);
  }

  else
  {
    v45[1] = v27;
    v58 = v14;
    v32 = v54;
    v67 = 0;
    v33 = sub_26932DCF0();
    v35 = v61;
    *v61 = v33;
    v35[1] = v36;
    v66 = 1;
    sub_2692EEA08(&qword_280308380, MEMORY[0x277CC9578]);
    v37 = v58;
    sub_26932DD00();
    (*(v53 + 32))(v35 + v21[5], v17, v37);
    v65 = 2;
    sub_2692F0798(&qword_280308388);
    sub_26932DD00();
    v38 = *(v52 + 32);
    v38(v35 + v21[6], v13, v32);
    v64 = 3;
    v39 = v49;
    sub_26932DD00();
    v38(v61 + v21[7], v39, v32);
    v63 = 4;
    sub_2692F0808(&qword_280308390);
    v40 = v48;
    v41 = v51;
    sub_26932DD00();
    (*(v50 + 32))(v61 + v21[8], v40, v41);
    v62 = 5;
    sub_2692EEA08(&qword_280308398, MEMORY[0x277CC9260]);
    v42 = v47;
    sub_26932DCE0();
    (*(v55 + 8))(v56, v57);
    v43 = v61;
    sub_2692EF644(v42, v61 + v59);
    sub_2692F08DC(v43, v46, type metadata accessor for ClockTimeSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    return sub_2692EE5C0(v43);
  }
}

uint64_t sub_2692F0730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692F0798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308328, &qword_2693312A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2692F0808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308330, &unk_26932F3D0);
    v3 = MEMORY[0x277CC9788];
    sub_2692EEA08(&qword_280308360, MEMORY[0x277CC9788]);
    sub_2692EEA08(&qword_280308368, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2692F08DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2692F0A70@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2692F0AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClockTimeSnippetModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t sub_2692F0B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClockTimeSnippetModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2692F0B6C(uint64_t a1)
{
  result = type metadata accessor for ClockTimeSnippetModel(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_26932BF40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_26932BF40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_2692F0FE8()
{
  sub_26932BF40();
  if (v0 <= 0x3F)
  {
    sub_2692F110C();
    if (v1 <= 0x3F)
    {
      sub_2692F115C(319, &qword_2803083D8, MEMORY[0x277CC9788], MEMORY[0x277D637C8]);
      if (v2 <= 0x3F)
      {
        sub_2692F115C(319, &qword_2803083E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2692F110C()
{
  if (!qword_2803083D0)
  {
    v0 = sub_26932C140();
    if (!v1)
    {
      atomic_store(v0, &qword_2803083D0);
    }
  }
}

void sub_2692F115C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2692F11F4()
{
  result = qword_2803083E8;
  if (!qword_2803083E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083E8);
  }

  return result;
}

unint64_t sub_2692F124C()
{
  result = qword_2803083F0;
  if (!qword_2803083F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083F0);
  }

  return result;
}

unint64_t sub_2692F12A4()
{
  result = qword_2803083F8;
  if (!qword_2803083F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083F8);
  }

  return result;
}

unint64_t sub_2692F12FC()
{
  result = qword_280308400;
  if (!qword_280308400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308400);
  }

  return result;
}

unint64_t sub_2692F1354()
{
  result = qword_280308408;
  if (!qword_280308408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308408);
  }

  return result;
}

unint64_t sub_2692F13AC()
{
  result = qword_280308410;
  if (!qword_280308410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308410);
  }

  return result;
}

unint64_t sub_2692F1404()
{
  result = qword_280308418;
  if (!qword_280308418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308418);
  }

  return result;
}

unint64_t sub_2692F145C()
{
  result = qword_280308420;
  if (!qword_280308420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308420);
  }

  return result;
}

unint64_t sub_2692F14B4()
{
  result = qword_280308428;
  if (!qword_280308428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308428);
  }

  return result;
}

uint64_t sub_2692F1508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002693360F0 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000269336110 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 5;
  }

  else
  {
    v6 = sub_26932DF00();

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

uint64_t HALAlarmDeviceContext.remoteExecutionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HALAlarmDeviceContext.remoteExecutionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *HALAlarmDeviceContext.firingAlarms.getter()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v21 = *(v1 + 32);
    v22 = v21 & 0x3F;
    v10 = ((1 << v21) + 63) >> 6;
    v5 = 8 * v10;

    if (v22 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v2 = MEMORY[0x277D84FA0];
  v40 = MEMORY[0x277D84FA0];

  v1 = sub_26932DAD0();
  v3 = sub_26932DB00();
  if (!v3)
  {
LABEL_20:

    goto LABEL_37;
  }

  v4 = v3;
  v5 = sub_2692F231C();
  v6 = v4;
  while (1)
  {
    v38[2] = v6;
    swift_dynamicCast();
    v7 = v39;
    if ([v39 isFiring])
    {
      break;
    }

LABEL_5:
    v6 = sub_26932DB00();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v2[2];
  if (v2[3] <= v8)
  {
    sub_2692F1DD0(v8 + 1, &qword_280308448, &qword_26932F958);
  }

  v2 = v40;
  v9 = *(v40 + 40);
  v10 = v39;
  v11 = sub_26932D9E0();
  v12 = v40 + 56;
  v13 = -1 << *(v40 + 32);
  v14 = v11 & ~v13;
  v15 = v14 >> 6;
  if (((-1 << v14) & ~*(v40 + 56 + 8 * (v14 >> 6))) != 0)
  {
    v16 = __clz(__rbit64((-1 << v14) & ~*(v40 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(v2[6] + 8 * v16) = v7;
    ++v2[2];
    goto LABEL_5;
  }

  v17 = 0;
  v18 = (63 - v13) >> 6;
  while (++v15 != v18 || (v17 & 1) == 0)
  {
    v19 = v15 == v18;
    if (v15 == v18)
    {
      v15 = 0;
    }

    v17 |= v19;
    v20 = *(v12 + 8 * v15);
    if (v20 != -1)
    {
      v16 = __clz(__rbit64(~v20)) + (v15 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v38[0] = v38;
    MEMORY[0x28223BE20](v23);
    v24 = v38 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v5);
    v5 = 0;
    v25 = 0;
    v26 = 1 << *(v1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v1 + 56);
    v29 = (v26 + 63) >> 6;
    while (v28)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_32:
      v33 = v30 | (v25 << 6);
      if ([*(*(v1 + 48) + 8 * v33) isFiring])
      {
        *&v24[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_36:
          v2 = sub_2692F24A4(v24, v10, v5, v1, &qword_280308448, &qword_26932F958);
          goto LABEL_37;
        }
      }
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_36;
      }

      v32 = *(v1 + 56 + 8 * v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_32;
      }
    }
  }

  v37 = swift_slowAlloc();
  v2 = sub_2692F23EC(v37, v10, v1, sub_2692F1BBC, 0);

  MEMORY[0x26D639280](v37, -1, -1);
LABEL_37:
  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

void Array<A>.firingDevices()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = MEMORY[0x277D84F90];
  v18 = a1 + 56;
  do
  {
    v19 = v4;
    v5 = (v3 + 32 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;

      v11 = v7;

      v12 = HALAlarmDeviceContext.firingAlarms.getter();
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = sub_26932DAE0();

      if (v13)
      {
        goto LABEL_12;
      }

LABEL_10:

      v5 += 4;
      if (v2 == v1)
      {
        return;
      }
    }

    v14 = *(v12 + 16);

    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    v4 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2692F2690(0, *(v19 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2692F2690((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    v17 = (v4 + 32 * v16);
    v17[4] = v11;
    v17[5] = v8;
    v17[6] = v10;
    v17[7] = v9;
    v3 = v18;
  }

  while (v2 != v1);
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = MEMORY[0x277D84F90];
  v18 = a1 + 56;
  do
  {
    v19 = v4;
    v5 = (v3 + 32 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;

      v11 = v7;

      v12 = HALTimerDeviceContext.firingTimers.getter();
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = sub_26932DAE0();

      if (v13)
      {
        goto LABEL_12;
      }

LABEL_10:

      v5 += 4;
      if (v2 == v1)
      {
        return;
      }
    }

    v14 = *(v12 + 16);

    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    v4 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2692F27C4(0, *(v19 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2692F27C4((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    v17 = (v4 + 32 * v16);
    v17[4] = v11;
    v17[5] = v8;
    v17[6] = v10;
    v17[7] = v9;
    v3 = v18;
  }

  while (v2 != v1);
}

uint64_t sub_2692F1DD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26932DB20();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_26932D9E0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2692F1FF0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26932BFA0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  result = sub_26932DB20();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2692F276C();
      result = sub_26932D740();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_2692F231C()
{
  result = qword_280308430;
  if (!qword_280308430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280308430);
  }

  return result;
}

unint64_t sub_2692F2368(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26932D9E0();
  v5 = -1 << *(a2 + 32);
  result = sub_26932DAC0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_2692F23EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2692F321C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_2692F24A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_26932DB40();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_26932D9E0();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_2692F2690(char *a1, int64_t a2, char a3)
{
  result = sub_2692F29D4(a1, a2, a3, *v3, &qword_2803081D0, &qword_26932F950);
  *v3 = result;
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

uint64_t sub_2692F26D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2692F271C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2692F276C()
{
  result = qword_2814B2658;
  if (!qword_2814B2658)
  {
    sub_26932BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2658);
  }

  return result;
}

char *sub_2692F27C4(char *a1, int64_t a2, char a3)
{
  result = sub_2692F29D4(a1, a2, a3, *v3, &qword_2803081C8, &qword_26932F940);
  *v3 = result;
  return result;
}

size_t sub_2692F27FC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E0, &unk_26932F960);
  v10 = *(sub_26932BF40() - 8);
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
  v15 = *(sub_26932BF40() - 8);
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

char *sub_2692F29D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t static ApplicationContext.shared.getter()
{
  if (qword_2814B2520)
  {
    v0 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v0 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v0;
  }

  return v0;
}

uint64_t ApplicationContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t HALTimerDeviceContext.remoteExecutionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *HALTimerDeviceContext.firingTimers.getter()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v21 = *(v1 + 32);
    v22 = v21 & 0x3F;
    v10 = ((1 << v21) + 63) >> 6;
    v5 = 8 * v10;

    if (v22 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v2 = MEMORY[0x277D84FA0];
  v40 = MEMORY[0x277D84FA0];

  v1 = sub_26932DAD0();
  v3 = sub_26932DB00();
  if (!v3)
  {
LABEL_20:

    goto LABEL_37;
  }

  v4 = v3;
  v5 = sub_2692F31D0();
  v6 = v4;
  while (1)
  {
    v38[2] = v6;
    swift_dynamicCast();
    v7 = v39;
    if ([v39 isFiring])
    {
      break;
    }

LABEL_5:
    v6 = sub_26932DB00();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v2[2];
  if (v2[3] <= v8)
  {
    sub_2692F1DBC(v8 + 1);
  }

  v2 = v40;
  v9 = *(v40 + 40);
  v10 = v39;
  v11 = sub_26932D9E0();
  v12 = v40 + 56;
  v13 = -1 << *(v40 + 32);
  v14 = v11 & ~v13;
  v15 = v14 >> 6;
  if (((-1 << v14) & ~*(v40 + 56 + 8 * (v14 >> 6))) != 0)
  {
    v16 = __clz(__rbit64((-1 << v14) & ~*(v40 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(v2[6] + 8 * v16) = v7;
    ++v2[2];
    goto LABEL_5;
  }

  v17 = 0;
  v18 = (63 - v13) >> 6;
  while (++v15 != v18 || (v17 & 1) == 0)
  {
    v19 = v15 == v18;
    if (v15 == v18)
    {
      v15 = 0;
    }

    v17 |= v19;
    v20 = *(v12 + 8 * v15);
    if (v20 != -1)
    {
      v16 = __clz(__rbit64(~v20)) + (v15 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v38[0] = v38;
    MEMORY[0x28223BE20](v23);
    v24 = v38 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v5);
    v5 = 0;
    v25 = 0;
    v26 = 1 << *(v1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v1 + 56);
    v29 = (v26 + 63) >> 6;
    while (v28)
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_32:
      v33 = v30 | (v25 << 6);
      if ([*(*(v1 + 48) + 8 * v33) isFiring])
      {
        *&v24[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_36:
          v2 = sub_2692F2490(v24, v10, v5, v1);
          goto LABEL_37;
        }
      }
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_36;
      }

      v32 = *(v1 + 56 + 8 * v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v28 = (v32 - 1) & v32;
        goto LABEL_32;
      }
    }
  }

  v37 = swift_slowAlloc();
  v2 = sub_2692F33BC(v37, v10, v1, sub_2692F1BBC, 0);

  MEMORY[0x26D639280](v37, -1, -1);
LABEL_37:
  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2692F31D0()
{
  result = qword_2814B2328;
  if (!qword_2814B2328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2328);
  }

  return result;
}

void sub_2692F3248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2692F33BC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2692F3248(result, a2, a3, a4, a5, sub_2692F2490);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_2692F3470()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308450);
  v1 = __swift_project_value_buffer(v0, qword_280308450);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NLContextUpdate.add(nluSystemDialogAct:)(uint64_t a1)
{
  v2 = sub_26932C430();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 16))
    {
      if (qword_280307C60 != -1)
      {
        swift_once();
      }

      v4 = sub_26932D6B0();
      __swift_project_value_buffer(v4, qword_280308450);

      v5 = sub_26932D690();
      v6 = sub_26932D9A0();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20 = v8;
        *v7 = 136315138;
        v9 = sub_26932C8C0();
        v10 = MEMORY[0x26D638530](v3, v9);
        v12 = v11;

        v13 = sub_2692DD5A8(v10, v12, &v20);

        *(v7 + 4) = v13;
        _os_log_impl(&dword_2692D8000, v5, v6, "Attempted to set additional SDA on NLContextUpdate. This is unsupported and the last-in SDA will be used. Dropping previous SDA: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x26D639280](v8, -1, -1);
        MEMORY[0x26D639280](v7, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308468, &qword_26932FA18);
  v14 = sub_26932C8C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26932EEA0;
  (*(v15 + 16))(v18 + v17, a1, v14);

  return MEMORY[0x2821BB138](v18);
}

uint64_t NLContextUpdate.set(undoDirectInvocation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308470, &unk_26932FA20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_26932C6C0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_26932C450();
}

uint64_t sub_2692F38AC()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308478);
  v1 = __swift_project_value_buffer(v0, qword_280308478);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTimeCrossDeviceAnalytics.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void SiriTimeCrossDeviceAnalytics.logSharedAnalyticsStarted(selectedDevice:)(void *a1)
{
  v50 = a1;
  v1 = sub_26932D4E0();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308490, &unk_26932FA30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v43 - v7;
  v8 = sub_26932D640();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26932D650();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v43 - v17;
  v19 = sub_26932BFA0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - v25;
  sub_26932C2F0();
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_26932C570();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    sub_26932BF50();

    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v26, v18, v19);
      (*(v20 + 16))(v24, v26, v19);
      (*(v44 + 16))(v11, v47, v45);
      v32 = sub_26932D630();
      (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
      v33 = v53;
      sub_26932D620();
      sub_26932D5C0();
      sub_26932D5B0();
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308498, &unk_26932FA40) + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_26932EA80;
      v36 = v50;
      *(v35 + 32) = v50;
      *v4 = v35;
      v4[1] = 0;
      v37 = v48;
      v38 = v33;
      v39 = v49;
      (*(v48 + 16))(v4 + v34, v38, v49);
      v41 = v51;
      v40 = v52;
      (*(v51 + 104))(v4, *MEMORY[0x277D61ED0], v52);
      v42 = v36;
      sub_26932D590();

      (*(v41 + 8))(v4, v40);
      (*(v37 + 8))(v53, v39);
      (*(v20 + 8))(v26, v19);
      return;
    }

    sub_2692DEDE4(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  if (qword_280307C68 != -1)
  {
    swift_once();
  }

  v28 = sub_26932D6B0();
  __swift_project_value_buffer(v28, qword_280308478);
  v29 = sub_26932D690();
  v30 = sub_26932D9A0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2692D8000, v29, v30, "DismissAlarm.logSharedAnalyticsStarted(selectedDevice:) returning - request UUID missing or invalid", v31, 2u);
    MEMORY[0x26D639280](v31, -1, -1);
  }
}

void SiriTimeCrossDeviceAnalytics.logSharedAnalyticsEnded(result:)(uint64_t a1)
{
  v47 = a1;
  v1 = sub_26932D4E0();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308490, &unk_26932FA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - v6;
  v7 = sub_26932D640();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26932D650();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_26932BFA0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  sub_26932C2F0();
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  sub_26932C570();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    sub_26932BF50();

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v25, v17, v18);
      (*(v19 + 16))(v23, v25, v18);
      (*(v41 + 16))(v10, v43, v7);
      v31 = sub_26932D630();
      (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
      v32 = v44;
      sub_26932D620();
      sub_26932D5C0();
      sub_26932D5B0();
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084A0, &unk_26932FA50) + 48);
      v35 = v45;
      v34 = v46;
      v36 = v48;
      (*(v45 + 16))(v48, v32, v46);
      v37 = sub_26932D4D0();
      (*(*(v37 - 8) + 16))(&v36[v33], v47, v37);
      v39 = v49;
      v38 = v50;
      (*(v49 + 104))(v36, *MEMORY[0x277D61EB0], v50);
      sub_26932D590();

      (*(v39 + 8))(v36, v38);
      (*(v35 + 8))(v32, v34);
      (*(v19 + 8))(v25, v18);
      return;
    }

    sub_2692DEDE4(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  if (qword_280307C68 != -1)
  {
    swift_once();
  }

  v27 = sub_26932D6B0();
  __swift_project_value_buffer(v27, qword_280308478);
  v28 = sub_26932D690();
  v29 = sub_26932D9A0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2692D8000, v28, v29, "DismissAlarm.logSharedAnalyticsEnded(result:) returning - request UUID missing or invalid", v30, 2u);
    MEMORY[0x26D639280](v30, -1, -1);
  }
}

uint64_t type metadata accessor for SiriTimeCrossDeviceAnalytics()
{
  result = qword_2803084A8;
  if (!qword_2803084A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692F4648()
{
  result = sub_26932D640();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DeviceState.isPhoneOrPad.getter(uint64_t a1, uint64_t a2)
{
  if (sub_26932C330())
  {
    return 1;
  }

  return MEMORY[0x2821BABA0](a1, a2);
}

uint64_t DecideAction.PromptExpectation.hashValue.getter()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

unint64_t sub_2692F47A0()
{
  result = qword_2803084B8;
  if (!qword_2803084B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DecideAction.PromptExpectation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DecideAction.PromptExpectation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DeviceUnit.dialogType.getter()
{
  _s27SiriVirtualDeviceResolution0C4UnitC0A12TimeInternalE10isCommunalSbvg_0();
  sub_26932D570();

  return sub_26932D7B0();
}

uint64_t sub_2692F4A90@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  if (v3)
  {
    sub_26932D7B0();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_26932D3E0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t PunchOutApp.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = *v1;
  if (v13 <= 1)
  {
    if (*v1)
    {
      v23 = objc_opt_self();
      v24 = sub_26932D760();
      v25 = [v23 mtURLForScheme_];

      if (v25)
      {
        sub_26932BEB0();

        v26 = sub_26932BED0();
        (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
      }

      else
      {
        v30 = sub_26932BED0();
        (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
      }

      v28 = v12;
      return sub_2692F4F0C(v28, a1);
    }
  }

  else
  {
    if (v13 == 2)
    {
      v19 = objc_opt_self();
      v20 = sub_26932D760();
      v21 = [v19 mtURLForScheme_];

      if (v21)
      {
        sub_26932BEB0();

        v22 = sub_26932BED0();
        (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
      }

      else
      {
        v27 = sub_26932BED0();
        (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      }

      v28 = v10;
      return sub_2692F4F0C(v28, a1);
    }

    if (v13 != 3)
    {
      v14 = objc_opt_self();
      v15 = sub_26932D760();
      v16 = [v14 mtURLForScheme_];

      if (v16)
      {
        sub_26932BEB0();

        v17 = sub_26932BED0();
        (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
      }

      else
      {
        v29 = sub_26932BED0();
        (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
      }

      v28 = v7;
      return sub_2692F4F0C(v28, a1);
    }
  }

  return sub_26932BEC0();
}

uint64_t sub_2692F4F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PunchOutApp.toResponseFrameworkCommandAction()@<X0>(uint64_t a1@<X8>)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26932BFA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - v10;
  v12 = sub_26932BED0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  LOBYTE(v61[0]) = *v1;
  PunchOutApp.url.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2692F0730(v11);
    if (qword_2814B2530 != -1)
    {
      swift_once();
    }

    v18 = sub_26932D6B0();
    __swift_project_value_buffer(v18, qword_2814B2760);
    v19 = sub_26932D690();
    v20 = sub_26932D9A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v61[0] = v22;
      *v21 = 136315138;
      LOBYTE(v60) = v17;
      v23 = sub_26932D790();
      v25 = sub_2692DD5A8(v23, v24, v61);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2692D8000, v19, v20, "Error creating URL for punchout for app %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D639280](v22, -1, -1);
      MEMORY[0x26D639280](v21, -1, -1);
    }

    goto LABEL_17;
  }

  (*(v13 + 32))(v16, v11, v12);
  v26 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v27 = sub_26932BEA0();
  [v26 setPunchOutUri_];

  v28 = v26;
  sub_26932BF90();
  sub_26932BF60();
  (*(v4 + 8))(v7, v3);
  v29 = sub_26932D760();

  [v28 setAceId_];

  v30 = [v28 dictionary];
  if (!v30)
  {
    (*(v13 + 8))(v16, v12);

LABEL_17:
    v38 = 1;
    goto LABEL_18;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v61[0] = 0;
  v33 = [v32 dataWithPropertyList:v31 format:200 options:0 error:v61];
  v34 = v61[0];
  if (!v33)
  {
    v39 = v34;
    v40 = sub_26932BE90();

    swift_willThrow();
    if (qword_2814B2530 != -1)
    {
      swift_once();
    }

    v41 = sub_26932D6B0();
    __swift_project_value_buffer(v41, qword_2814B2760);
    v42 = v40;
    v43 = sub_26932D690();
    v44 = sub_26932D9A0();

    v59 = v43;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v58 = v44;
      v46 = v45;
      v57 = swift_slowAlloc();
      v61[0] = v57;
      *v46 = 136315138;
      v60 = v40;
      v47 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v48 = sub_26932D790();
      v50 = sub_2692DD5A8(v48, v49, v61);

      *(v46 + 4) = v50;
      v51 = v59;
      _os_log_impl(&dword_2692D8000, v59, v58, "Error generating ACE punch out command: %s", v46, 0xCu);
      v52 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x26D639280](v52, -1, -1);
      MEMORY[0x26D639280](v46, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v16, v12);
    goto LABEL_17;
  }

  v35 = sub_26932BF00();
  v37 = v36;

  sub_26932BEF0();
  sub_26932D3D0();
  sub_2692F5A5C(v35, v37);

  (*(v13 + 8))(v16, v12);
  v38 = 0;
LABEL_18:
  v53 = sub_26932D3E0();
  result = (*(*(v53 - 8) + 56))(a1, v38, 1, v53);
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

SiriTimeInternal::PunchOutApp_optional __swiftcall PunchOutApp.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PunchOutApp.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7065656C73;
  v3 = 0x6D72616C61;
  v4 = 0x616C417065656C73;
  if (v1 != 3)
  {
    v4 = 0x72656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B636F6C63;
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

uint64_t sub_2692F573C()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692F5814()
{
  *v0;
  *v0;
  *v0;
  sub_26932D7D0();
}

uint64_t sub_2692F58D8()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

void sub_2692F59B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7065656C73;
  v5 = 0xE500000000000000;
  v6 = 0x6D72616C61;
  v7 = 0xEA00000000006D72;
  v8 = 0x616C417065656C73;
  if (v2 != 3)
  {
    v8 = 0x72656D6974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B636F6C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2692F5A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2692F5AB4()
{
  result = qword_2803084C0;
  if (!qword_2803084C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084C0);
  }

  return result;
}

unint64_t sub_2692F5B0C()
{
  result = qword_2803084C8;
  if (!qword_2803084C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803084D0, &qword_26932FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084C8);
  }

  return result;
}

unint64_t sub_2692F5B80(float a1, float a2, float a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084D8, &qword_26932FC68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - v10;
  v12 = sub_26932CAD0();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084E0, &qword_26932FC70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v66 - v21;
  v23 = sub_26932CA90();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v68 = &v66 - v29;
  sub_26932CAA0();
  sub_26932CC20();
  if (v71)
  {
    sub_26932CA80();
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {

      sub_2692EB48C(v22, &qword_2803084E0, &qword_26932FC70);
      goto LABEL_4;
    }

    v35 = v68;
    (*(v24 + 32))(v68, v22, v23);
    (*(v24 + 16))(v28, v35, v23);
    v36 = (*(v24 + 88))(v28, v23);
    if (v36 == *MEMORY[0x277D5E7E0])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 1000000000.0;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E7D8])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 12.0;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E7F8])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 1000.0;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E800])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 1.0e12;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E798])
    {
      v55 = a2 * 0.5;
      v56 = a1 * 0.5;
LABEL_45:
      v57 = v56 + v55;
      MEMORY[0x26D6386C0](10.0);
      sub_26932BEE0();
      v58 = sub_26932DA10();
      sub_26932D930();
      v60 = v59;

      a1 = roundf(v57 * v60) / v60;
      (*(v24 + 8))(v35, v23);
      goto LABEL_46;
    }

    if (v36 == *MEMORY[0x277D5E7F0])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 1000000.0;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E7C0])
    {
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = 100000.0;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E7A8])
    {
LABEL_59:
      (*(v24 + 8))(v35, v23);

      LOBYTE(v34) = 0;
      v33 = a2;
      goto LABEL_60;
    }

    if (v36 == *MEMORY[0x277D5E7D0])
    {
      v56 = a2 * a3;
      v62 = 1.0 - a3;
    }

    else
    {
      if (v36 == *MEMORY[0x277D5E7B0])
      {
        goto LABEL_59;
      }

      if (v36 == *MEMORY[0x277D5E7A0])
      {
        (*(v24 + 8))(v35, v23);

        LOBYTE(v34) = 0;
        v33 = 10000.0;
        goto LABEL_60;
      }

      if (v36 != *MEMORY[0x277D5E7C8])
      {
        if (v36 == *MEMORY[0x277D5E7E8])
        {
          (*(v24 + 8))(v68, v23);

          LOBYTE(v34) = 0;
          v33 = 100.0;
          goto LABEL_60;
        }

        v63 = v36;
        if (v36 == *MEMORY[0x277D5E790])
        {
          (*(v24 + 8))(v68, v23);

          LOBYTE(v34) = 0;
          v33 = 10000000.0;
          goto LABEL_60;
        }

        v64 = *MEMORY[0x277D5E7B8];
        v65 = *(v24 + 8);
        v65(v68, v23);

        if (v63 != v64)
        {
          v65(v28, v23);
          goto LABEL_6;
        }

LABEL_46:
        LOBYTE(v34) = 0;
        v33 = a1;
        goto LABEL_60;
      }

      v56 = a2 * a4;
      v62 = 1.0 - a4;
    }

    v55 = v62 * a1;
    goto LABEL_45;
  }

LABEL_4:
  sub_26932CB10();
  sub_26932CC20();
  if (v71)
  {
    v30 = sub_26932CB00();
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      LOBYTE(v34) = 0;
      v33 = v30;
      goto LABEL_60;
    }

    goto LABEL_6;
  }

  sub_26932CAF0();
  sub_26932CC20();
  if (v71)
  {
    sub_26932CAC0();
    v37 = v67;
    if ((*(v67 + 48))(v11, 1, v12) == 1)
    {
      sub_2692EB48C(v11, &qword_2803084D8, &qword_26932FC68);
      goto LABEL_12;
    }

    (*(v37 + 32))(v18, v11, v12);
    (*(v37 + 104))(v16, *MEMORY[0x277D5E880], v12);
    sub_2692F6798();
    sub_26932D830();
    sub_26932D830();
    if (v71 == v69 && v72 == v70)
    {
      v50 = *(v37 + 8);
      v50(v16, v12);
      v50(v18, v12);
    }

    else
    {
      v51 = sub_26932DF00();
      v52 = *(v37 + 8);
      v52(v16, v12);
      v52(v18, v12);

      if ((v51 & 1) == 0)
      {
LABEL_12:
        v38 = sub_26932CAE0();
        if (v39)
        {
          LODWORD(v71) = 0;
          v40 = sub_2692F66A0(v38, v39);

          if (v40)
          {
            v33 = *&v71;
          }

          else
          {
            v33 = 0.0;
          }

          LOBYTE(v34) = !v40;
          goto LABEL_60;
        }

        goto LABEL_57;
      }
    }

    LOBYTE(v34) = 0;
    v33 = 0.01;
    goto LABEL_60;
  }

  sub_26932CDE0();
  sub_26932CC20();
  if (!v71)
  {
    sub_26932CF20();
    sub_26932CC20();
    if (!v71)
    {
LABEL_6:
      v33 = 0.0;
      LOBYTE(v34) = 1;
      goto LABEL_60;
    }

    if (sub_26932CF10())
    {
      if (sub_26932CF00())
      {
        sub_26932C960();
        v53 = sub_2692F5B80(a1, a2, 0.1, 0.3);

        if ((v53 & 0x100000000) == 0)
        {

          sub_26932C960();

          v54 = sub_2692F5B80(a1, a2, 0.1, 0.3);

          if ((v54 & 0x100000000) == 0)
          {
            LOBYTE(v34) = 0;
            v33 = *&v53 * *&v54;
            goto LABEL_60;
          }

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    goto LABEL_57;
  }

  v41 = sub_26932CDC0();
  if (v42 & 1) != 0 || (v43 = v41, v44 = sub_26932CDD0(), (v45))
  {
    v33 = 0.0;
    v34 = 1;
    goto LABEL_24;
  }

  if (!v44)
  {
LABEL_57:

    goto LABEL_6;
  }

  v34 = 0;
  v33 = v43 / v44;
LABEL_24:
  v46 = sub_26932CDB0();
  v48 = v47;

  if ((v48 & 1) == 0)
  {
    v49 = v33;
    if (v34)
    {
      v49 = 0.0;
    }

    v33 = v49 + v46;
    LOBYTE(v34) = 0;
  }

LABEL_60:
  LOBYTE(v71) = v34 & 1;
  return LODWORD(v33) | ((v34 & 1) << 32);
}

BOOL sub_2692F66A0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_26932DB60();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_2692F6798()
{
  result = qword_2803084E8;
  if (!qword_2803084E8)
  {
    sub_26932CAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084E8);
  }

  return result;
}

_BYTE *sub_2692F67F0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2692F6870()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803084F0);
  v1 = __swift_project_value_buffer(v0, qword_2803084F0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692F6938()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26932D770();
  v4 = v3;

  if (v2 == 0x747365746378 && v4 == 0xE600000000000000)
  {

    v8 = 0;
  }

  else
  {
    v6 = sub_26932DF00();

    v8 = v6 ^ 1;
  }

  byte_28030CD90 = v8 & 1;
  return result;
}

uint64_t static BarbaraWalters.stopThePresses(for:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2692F8424(v3, v1, v2);
}

void sub_2692F6A50(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (qword_280307C70 != -1)
  {
    swift_once();
  }

  v14 = sub_26932D6B0();
  __swift_project_value_buffer(v14, qword_2803084F0);

  oslog = sub_26932D690();
  v15 = sub_26932D9B0();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315906;
    *(v16 + 4) = sub_2692DD5A8(a2, a3, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2692DD5A8(a4, a5, &v19);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_2692DD5A8(a6, a7, &v19);
    *(v16 + 32) = 1024;
    *(v16 + 34) = a1 & 1;
    _os_log_impl(&dword_2692D8000, oslog, v15, "SiriTime#%s#%s did AutoBugCapture for %s: %{BOOL}d", v16, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v17, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }
}

uint64_t static BarbaraWalters.tryReport<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[3] = a2;
  v4[4] = a3;
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_2692F6D3C;

  return v9(a1);
}

uint64_t sub_2692F6D3C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2692F6E70, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2692F6E70()
{
  v1 = v0[6];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
  v3 = sub_26932DEE0();
  v4 = v0[6];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = v4;
  }

  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = sub_26932BE80();

  sub_26931B26C(v9, v8, v10, 0x73u);

  swift_willThrow();
  v11 = v0[1];
  v12 = v0[6];

  return v11();
}

uint64_t static BarbaraWalters.logAndReturnError<A>(context:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v13(v12, v14, v15);
  v16 = sub_26932DEE0();
  if (v16)
  {
    v17 = v16;
    (*(v9 + 8))(v12, a4);
  }

  else
  {
    v17 = swift_allocError();
    (*(v9 + 32))(v18, v12, a4);
  }

  v19 = sub_26932BE80();

  sub_26931B26C(a1, a2, v19, 0x73u);

  return (v13)(v22, a3, a4);
}

uint64_t ABCReport.type.getter()
{
  v1 = *(v0 + 24) >> 4;
  if (v1 <= 4)
  {
    v7 = 0x676E696D6954;
    v8 = 0x73655272656D6954;
    v9 = 0x746E496D72616C41;
    if (v1 != 3)
    {
      v9 = 0x7365526D72616C41;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (v1)
    {
      v7 = 0x746E4972656D6954;
    }

    if (*(v0 + 24) >> 4 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x614C676F6C616944;
    v3 = 0x6E65646E65706544;
    if (v1 != 9)
    {
      v3 = 0xD000000000000013;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x646E5572656D6954;
    v5 = 0x646E556D72616C41;
    if (v1 != 6)
    {
      v5 = 0x656C646E61686E55;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*(v0 + 24) >> 4 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t ABCReport.subType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = v2 >> 4;
  if (v2 >> 4 > 6)
  {
    result = 0x656C646E61686E55;
    if (v2 >> 4 > 8)
    {
      if (v3 != 9)
      {
        return result;
      }

      goto LABEL_3;
    }

    if (v3 != 7)
    {
      v4 = *(v0 + 8);
      if (!*(v0 + 8))
      {
        return 0x65736E6F70736552;
      }

      v5 = 0xD000000000000011;
      v6 = 0x726F727245656341;
      goto LABEL_5;
    }

    v8 = v2 & 0xF;
    if (v8 <= 1)
    {
      if (v8)
      {
        return 0x6465746365707845;
      }

      else
      {
        return 0x496E776F6E6B6E55;
      }
    }

    else if (v8 == 2)
    {
      return 0xD000000000000015;
    }

    else if (v8 != 3)
    {
      v10 = *(v0 + 16) | v1;
      if (v10 | *v0)
      {
        result = 0xD00000000000001BLL;
        if (*v0 != 1 || v10)
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        return 0x61437463656A624FLL;
      }
    }
  }

  else
  {
    if (v3 - 1 < 6)
    {
LABEL_3:
      v4 = *(v0 + 8);
      if (!*(v0 + 8))
      {
        return 0x45726567616E614DLL;
      }

      v5 = 0xD000000000000018;
      v6 = 0x726F727245;
LABEL_5:
      if (v4 == 1)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }

    v9 = 0xD00000000000001BLL;
    if (!v1)
    {
      v9 = 0xD000000000000019;
    }

    if (v1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

unint64_t TimingErrorSubType.typeDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t UnhandledAbortSubtype.typeDescription.getter()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x6465746365707845;
    }

    else
    {
      return 0x496E776F6E6B6E55;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v1 == 3)
  {
    return 0x656C646E61686E55;
  }

  else if (*(v0 + 8) | *(v0 + 16) | *v0)
  {
    result = 0xD000000000000013;
    if (*v0 == 1 && *(v0 + 8) == 0)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    return 0x61437463656A624FLL;
  }

  return result;
}

uint64_t DialogLayerErrorSubType.typeDescription.getter()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245656341;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736552;
  }
}

uint64_t ErrorSubType.typeDescription.getter()
{
  v1 = 0xD000000000000018;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x45726567616E614DLL;
  }
}

unint64_t ABCReport.context.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 24);
  v4 = v3 >> 4;
  if (v3 >> 4 > 6)
  {
    if (v3 >> 4 > 8)
    {
      if (v4 != 9)
      {
        return 0xD00000000000001DLL;
      }

      goto LABEL_3;
    }

    if (v4 == 7)
    {
      v7 = *v0;
      v9 = v0[1];
      v10 = v0[2];
      return UnhandledAbortSubtype.context.getter();
    }

    else
    {
      v8 = *v0;
      return DialogLayerErrorSubType.context.getter();
    }
  }

  else
  {
    if (v4 - 1 < 6)
    {
LABEL_3:
      v6 = *v0;
      return ErrorSubType.context.getter();
    }

    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000033;
      }

      else
      {
        sub_26932DB80();
        MEMORY[0x26D6384C0](0xD000000000000037, 0x8000000269336320);
        MEMORY[0x26D6384C0](v2, v1);
        return 0;
      }
    }

    else
    {
      return 0xD000000000000037;
    }
  }
}

unint64_t TimingErrorSubType.context.getter()
{
  result = 0xD000000000000037;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000033;
    }

    else
    {
      v3 = *v0;
      sub_26932DB80();
      MEMORY[0x26D6384C0](0xD000000000000037, 0x8000000269336320);
      MEMORY[0x26D6384C0](v3, v2);
      return 0;
    }
  }

  return result;
}

unint64_t UnhandledAbortSubtype.context.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 24);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v20 = v0[1];

      return v2;
    }

    v4 = v0[2];
    if (v3 != 3)
    {
      return 0xD000000000000034;
    }

    v5 = [v0[2] underlyingErrors];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v7 = sub_26932D860();

    v8 = *(v7 + 16);

    sub_26932DB80();

    if (v8)
    {
      v9 = [v4 domain];
      v10 = sub_26932D770();
      v12 = v11;

      MEMORY[0x26D6384C0](v10, v12);

      MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
      [v4 code];
      v13 = sub_26932DDD0();
      MEMORY[0x26D6384C0](v13);

      MEMORY[0x26D6384C0](0xD000000000000016, 0x80000002693363E0);
      v14 = [v4 underlyingErrors];
      v15 = sub_26932D860();

      v16 = MEMORY[0x26D638530](v15, v6);
      v18 = v17;

      MEMORY[0x26D6384C0](v16, v18);
    }

    else
    {
      v22 = [v4 domain];
      v23 = sub_26932D770();
      v25 = v24;

      MEMORY[0x26D6384C0](v23, v25);

      MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
      [v4 code];
      v26 = sub_26932DDD0();
      MEMORY[0x26D6384C0](v26);
    }

    sub_26932DB80();

    v27 = 0xD000000000000011;
    MEMORY[0x26D6384C0](v2, v1);
    MEMORY[0x26D6384C0](0x6520687469772022, 0xEE002220726F7272);
    MEMORY[0x26D6384C0](0x206E69616D6F44, 0xE700000000000000);
    goto LABEL_13;
  }

  if (!*(v0 + 24))
  {
    sub_26932DB80();

    v27 = 0xD000000000000019;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308508, &qword_26932FC90);
    v19 = sub_26932D790();
    MEMORY[0x26D6384C0](v19);
LABEL_13:

    goto LABEL_14;
  }

  v27 = 0;
  sub_26932DB80();
  MEMORY[0x26D6384C0](0xD000000000000033, 0x80000002693364A0);
  MEMORY[0x26D6384C0](v2, v1);
LABEL_14:
  MEMORY[0x26D6384C0](34, 0xE100000000000000);
  return v27;
}

uint64_t sub_2692F7ED0(void (*a1)(void, uint64_t), void (*a2)(void *, uint64_t))
{
  v4 = *v2;
  v5 = *(v2 + 8);
  a1(*v2, v5);
  v6 = [v4 underlyingErrors];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
  v8 = sub_26932D860();

  v9 = *(v8 + 16);

  sub_26932DB80();

  if (v9)
  {
    v10 = [v4 domain];
    v11 = sub_26932D770();
    v13 = v12;

    MEMORY[0x26D6384C0](v11, v13);

    MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
    [v4 code];
    v14 = sub_26932DDD0();
    MEMORY[0x26D6384C0](v14);

    MEMORY[0x26D6384C0](0xD000000000000016, 0x80000002693363E0);
    v15 = [v4 underlyingErrors];
    a2(v4, v5);
    v16 = sub_26932D860();

    v17 = MEMORY[0x26D638530](v16, v7);
    v19 = v18;

    MEMORY[0x26D6384C0](v17, v19);
  }

  else
  {
    v20 = [v4 domain];
    v21 = sub_26932D770();
    v23 = v22;

    MEMORY[0x26D6384C0](v21, v23);

    MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
    [v4 code];
    a2(v4, v5);
    v24 = sub_26932DDD0();
    MEMORY[0x26D6384C0](v24);
  }

  return 0x206E69616D6F44;
}

unint64_t sub_2692F81CC()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_2692F8228()
{
  v1 = 0xD000000000000018;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x45726567616E614DLL;
  }
}

uint64_t sub_2692F8290()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x6465746365707845;
    }

    else
    {
      return 0x496E776F6E6B6E55;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v1 == 3)
  {
    return 0x656C646E61686E55;
  }

  else if (*(v0 + 8) | *(v0 + 16) | *v0)
  {
    result = 0xD000000000000013;
    if (*v0 == 1 && *(v0 + 8) == 0)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    return 0x61437463656A624FLL;
  }

  return result;
}

uint64_t sub_2692F83B4()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245656341;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736552;
  }
}

uint64_t sub_2692F8424(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  if (qword_280307C78 != -1)
  {
    swift_once();
  }

  if (byte_28030CD90 == 1)
  {
    v28 = v5;
    if (qword_280307C70 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_2803084F0);
    v10 = sub_26932D690();
    v11 = sub_26932D9A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2692D8000, v10, v11, "SiriTime initiating AutoBugCapture report...", v12, 2u);
      MEMORY[0x26D639280](v12, -1, -1);
    }

    v13 = a3[1](a2, a3);
    v15 = v14;
    v16 = a3[2](a2, a3);
    v18 = v17;
    v19 = a3[3](a2, a3);
    v21 = v20;
    v22 = sub_26932D370();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_26932D360();
    v25 = swift_allocObject();
    v25[2] = v13;
    v25[3] = v15;
    v25[4] = v16;
    v25[5] = v18;
    v25[6] = v19;
    v25[7] = v21;

    sub_26932D350();

    v5 = v28;
  }

  return (*(v5 + 8))(v8, a2);
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal18TimingErrorSubTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal21UnhandledAbortSubtypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal9ABCReportO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2692F8834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x16 && *(a1 + 25))
  {
    return (*a1 + 22);
  }

  v3 = ((*(a1 + 24) >> 4) & 0xFFFFFFEF | (16 * ((*(a1 + 24) >> 3) & 1))) ^ 0x1F;
  if (v3 >= 0x15)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2692F8888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x15)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 22;
    if (a3 >= 0x16)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x16)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_2692F88F4(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    *(result + 24) = *(result + 24) & 7 | (16 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 10;
    *(result + 24) = -96;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2692F8940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2692F8994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

void *sub_2692F89F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2692F8A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2692F8A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2692F8AD4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2692F8B00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2692F8B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::String __swiftcall String.labelCapitalization()()
{
  v2 = v1;
  v3 = v0;

  sub_2692ED890(1, v3, v2, v4);

  v5 = sub_26932DA50();
  v7 = v6;

  sub_2692ED92C(1uLL, v3, v2, v8);

  sub_2692ED9DC();
  sub_26932D7F0();

  v9 = v5;
  v10 = v7;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

id String.toINSpeakableString.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v1 = sub_26932D760();
  v2 = [v0 initWithSpokenPhrase_];

  return v2;
}

uint64_t DateTime.asDate()@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - v3;
  v5 = sub_26932C0B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308528, &qword_269330488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_26932BE70();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateTime.dateComponentsIn24HourClock(shouldUseInferredMeridiem:)(1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2692EB48C(v13, &qword_280308528, &qword_269330488);
    v19 = sub_26932BF40();
    return (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    if (qword_280307C50 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v1, qword_28030CD78);
    sub_2692E3B90(v21, v4, &qword_280308218, &qword_26932EEC8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_2692EB48C(v4, &qword_280308218, &qword_26932EEC8);
      sub_26932C050();
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
    }

    sub_26932C060();
    (*(v6 + 8))(v9, v5);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_2692F90B8()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308510);
  v1 = __swift_project_value_buffer(v0, qword_280308510);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoEntity_common_DateTime.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26932CB40();
  if (!sub_26932D2E0())
  {
    v6 = sub_26932D240();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    goto LABEL_6;
  }

  sub_26932D250();

  v5 = sub_26932D240();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
LABEL_6:
    sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
    return v4;
  }

  sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v4;
}

uint64_t UsoEntity_common_RecurringDateTime.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26932CF60();
  if (!sub_26932D2E0())
  {
    v6 = sub_26932D240();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    goto LABEL_6;
  }

  sub_26932D250();

  v5 = sub_26932D240();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
LABEL_6:
    sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
    return v4;
  }

  sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v4;
}

uint64_t TerminalElement.DateTimeValue.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26932C980();
  if (!sub_26932D2E0())
  {
    v6 = sub_26932D240();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    goto LABEL_6;
  }

  sub_26932D250();

  v5 = sub_26932D240();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
LABEL_6:
    sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
    return v4;
  }

  sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v4;
}

uint64_t TerminalElement.Time.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_2692F9758();
  if (!v4)
  {
    return v4;
  }

  if (!sub_26932D2E0())
  {
    v6 = sub_26932D240();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    goto LABEL_7;
  }

  sub_26932D250();

  v5 = sub_26932D240();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
LABEL_7:
    sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
    return v4;
  }

  sub_2692EB48C(v3, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v4;
}

uint64_t sub_2692F9758()
{
  v107 = sub_26932BE70();
  v104 = *(v107 - 8);
  v1 = *(v104 + 64);
  v2 = MEMORY[0x28223BE20](v107);
  v97[0] = v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v106 = v97 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v5 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = v97 - v6;
  v105 = sub_26932BF40();
  v7 = *(v105 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v105);
  v98 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = v97 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v12 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = v97 - v13;
  v14 = sub_26932C0B0();
  v111 = *(v14 - 8);
  v15 = *(v111 + 64);
  MEMORY[0x28223BE20](v14);
  v112 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26932C9A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v97 - v23;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v25 = sub_26932D6B0();
  v26 = __swift_project_value_buffer(v25, qword_280308510);
  v27 = *(v18 + 16);
  v97[1] = v0;
  v27(v24, v0, v17);
  v103 = v26;
  v28 = sub_26932D690();
  v29 = sub_26932D9B0();
  v30 = os_log_type_enabled(v28, v29);
  v110 = v7;
  v108 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v113 = v32;
    *v31 = 136315138;
    v27(v22, v24, v17);
    v33 = sub_26932D790();
    v35 = v34;
    (*(v18 + 8))(v24, v17);
    v36 = sub_2692DD5A8(v33, v35, &v113);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_2692D8000, v28, v29, "TerminalElement.Time converting to DateTime: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x26D639280](v32, -1, -1);
    v37 = v31;
    v14 = v108;
    v7 = v110;
    MEMORY[0x26D639280](v37, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v24, v17);
  }

  v39 = v105;
  v38 = v106;
  v40 = v109;
  v41 = v111;
  v42 = v100;
  if (qword_280307C50 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v99, qword_28030CD78);
  sub_2692E3B90(v43, v42, &qword_280308218, &qword_26932EEC8);
  if ((*(v41 + 48))(v42, 1, v14) == 1)
  {
    sub_2692EB48C(v42, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v41 + 32))(v112, v42, v14);
  }

  v44 = v102;
  if (qword_280307C48 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v101, qword_28030CD60);
  sub_2692E3B90(v45, v44, &qword_280308210, &qword_26932EEC0);
  if ((*(v7 + 48))(v44, 1, v39) == 1)
  {
    sub_2692EB48C(v44, &qword_280308210, &qword_26932EEC0);
    sub_26932BF30();
  }

  else
  {
    (*(v7 + 32))(v40, v44, v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308558, &unk_2693304A0);
  v46 = sub_26932C0A0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_26932EF40;
  v51 = v50 + v49;
  v52 = *(v47 + 104);
  v52(v51, *MEMORY[0x277CC9988], v46);
  v52(v51 + v48, *MEMORY[0x277CC9998], v46);
  v52(v51 + 2 * v48, *MEMORY[0x277CC9968], v46);
  sub_26931493C(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26932C020();

  sub_26932BD80();
  if (v53 & 1) != 0 || (sub_26932BDF0(), (v54) || (v55 = sub_26932BDD0(), (v56))
  {
    v57 = v110;
    v58 = v98;
    (*(v110 + 16))(v98, v40, v39);
    v59 = sub_26932D690();
    v60 = sub_26932D9A0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v57;
      v63 = swift_slowAlloc();
      v113 = v63;
      *v61 = 136315138;
      sub_2692FC79C(&qword_280308230, MEMORY[0x277CC9578]);
      v64 = sub_26932DDD0();
      v65 = v58;
      v67 = v66;
      v68 = *(v62 + 8);
      v68(v65, v39);
      v69 = sub_2692DD5A8(v64, v67, &v113);

      *(v61 + 4) = v69;
      _os_log_impl(&dword_2692D8000, v59, v60, "Unable to parse date from defaultAnchorDate: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x26D639280](v63, -1, -1);
      MEMORY[0x26D639280](v61, -1, -1);

      (*(v104 + 8))(v38, v107);
      v68(v109, v39);
    }

    else
    {

      v70 = *(v57 + 8);
      v70(v58, v39);
      (*(v104 + 8))(v38, v107);
      v70(v40, v39);
    }

    (*(v111 + 8))(v112, v108);
    return 0;
  }

  else
  {
    v72 = v55;
    v73 = v104;
    v74 = v97[0];
    v75 = v107;
    (*(v104 + 16))(v97[0], v38, v107);
    v76 = sub_26932D690();
    v77 = sub_26932D9B0();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v103 = v72;
      v79 = v78;
      v80 = swift_slowAlloc();
      LODWORD(v102) = v77;
      v81 = v74;
      v82 = v80;
      v113 = v80;
      *v79 = 136315138;
      sub_2692FC79C(&qword_280308228, MEMORY[0x277CC8990]);
      v83 = sub_26932DDD0();
      v85 = v84;
      v86 = *(v73 + 8);
      v86(v81, v107);
      v87 = sub_2692DD5A8(v83, v85, &v113);
      v40 = v109;
      v75 = v107;

      *(v79 + 4) = v87;
      _os_log_impl(&dword_2692D8000, v76, v102, "Extracted date components from anchor: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x26D639280](v82, -1, -1);
      MEMORY[0x26D639280](v79, -1, -1);
    }

    else
    {

      v86 = *(v73 + 8);
      v86(v74, v75);
    }

    v88 = v110;
    v89 = v108;
    v90 = sub_26932D1C0();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    sub_26932D1B0();
    sub_26932C990();
    v93 = sub_26932D2F0();
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v96 = sub_26932D170();
    v86(v106, v75);
    (*(v88 + 8))(v40, v105);
    (*(v111 + 8))(v112, v89);
    return v96;
  }
}

INDateComponentsRange_optional __swiftcall DateTime.asTimePoint(shouldUseInferredMeridiem:insertToEndTime:)(Swift::Bool shouldUseInferredMeridiem, Swift::Bool insertToEndTime)
{
  v3 = v2;
  v63 = insertToEndTime;
  v64 = shouldUseInferredMeridiem;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308528, &qword_269330488);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - v9;
  v11 = sub_26932BE70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.super.isa = DateTime.asDateComponentsRange()().super.isa;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v17 = sub_26932D6B0();
  v18 = __swift_project_value_buffer(v17, qword_280308510);
  v19 = v16.super.isa;
  v65 = v18;
  v20 = sub_26932D690();
  v21 = sub_26932D9B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v62 = v3;
    v23 = v10;
    v24 = v15;
    v25 = v8;
    v26 = v12;
    v27 = v11;
    v28 = v22;
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v19;
    *v29 = v19;
    v30 = v19;
    _os_log_impl(&dword_2692D8000, v20, v21, "Got inferred dateTime.asDateComponentsRange(): %@", v28, 0xCu);
    sub_2692EB48C(v29, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v29, -1, -1);
    v31 = v28;
    v11 = v27;
    v12 = v26;
    v8 = v25;
    v15 = v24;
    v10 = v23;
    v3 = v62;
    MEMORY[0x26D639280](v31, -1, -1);
  }

  v32 = [(objc_class *)v19 allDay];
  if (v32)
  {
    v33 = v32;
    sub_2692ED65C();
    v34 = sub_26932D9D0();
    v35 = sub_26932D9F0();

    if (v35)
    {
      v36 = sub_26932D690();
      v37 = sub_26932D9B0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2692D8000, v36, v37, "User didn't mention a time point, mentioned a day.", v38, 2u);
        MEMORY[0x26D639280](v38, -1, -1);
      }

      goto LABEL_19;
    }
  }

  v39 = [(objc_class *)v19 startDateComponents];
  if (!v39)
  {

    v44 = sub_26932D690();
    v45 = sub_26932D9B0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66 = v3;
      v67 = v47;
      *v46 = 136315138;
      sub_26932D2F0();
      sub_2692FC79C(&qword_280308538, MEMORY[0x277D56498]);
      v48 = sub_26932DDD0();
      v50 = sub_2692DD5A8(v48, v49, &v67);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2692D8000, v44, v45, "Failed to get startDateComponents from inferred dateTime: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x26D639280](v47, -1, -1);
      MEMORY[0x26D639280](v46, -1, -1);
    }

    goto LABEL_19;
  }

  v40 = v39;
  sub_26932BD70();

  if ((sub_2692FAE84(v3, v64) & 1) == 0)
  {
    (*(v12 + 8))(v15, v11);
LABEL_19:

    v52 = 0;
    goto LABEL_25;
  }

  v61 = v12;
  if (v63)
  {
    v41 = *(v12 + 56);
    v41(v10, 1, 1, v11);
    (*(v12 + 16))(v8, v15, v11);
    v42 = v8;
    v43 = 0;
  }

  else
  {
    (*(v12 + 16))(v10, v15, v11);
    v41 = *(v12 + 56);
    v41(v10, 0, 1, v11);
    v42 = v8;
    v43 = 1;
  }

  v41(v42, v43, 1, v11);
  v53 = [(objc_class *)v19 recurrenceRule];
  v54 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v55 = sub_2692FC638(v10, v8, v53);
  v56 = v55;
  v57 = sub_26932D690();
  v58 = sub_26932D9B0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    *(v59 + 4) = v56;
    *v60 = v55;
    _os_log_impl(&dword_2692D8000, v57, v58, "Transformed in asTimePoint() to 24 Hour date time: %@", v59, 0xCu);
    sub_2692EB48C(v60, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v60, -1, -1);
    MEMORY[0x26D639280](v59, -1, -1);
    v56 = v19;
  }

  else
  {

    v57 = v19;
  }

  (*(v61 + 8))(v15, v11);
  v52 = v55;
LABEL_25:
  result.value.super.isa = v52;
  result.is_nil = v51;
  return result;
}

INDateComponentsRange __swiftcall DateTime.asDateComponentsRange()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v26 - v2;
  v3 = sub_26932C0D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_26932C0B0();
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26932BFF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v31 = v3;
  if (qword_2814B2520)
  {
    v18 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v18 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v18;
  }

  sub_2692EB3E4(v18 + 16, v32);

  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_26932C310();
  sub_26932BFD0();
  v19 = *(v11 + 8);
  v19(v17, v10);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_26932C310();
  v20 = v30;
  sub_26932BFE0();
  v19(v15, v10);
  v21 = *(v4 + 48);
  v22 = v31;
  if (v21(v20, 1, v31) == 1)
  {
    v23 = v28;
    sub_26932C0C0();
    if (v21(v20, 1, v22) != 1)
    {
      sub_2692EB48C(v20, &qword_280308220, &unk_26932EED0);
    }
  }

  else
  {
    v23 = v28;
    (*(v4 + 32))(v28, v20, v22);
  }

  v24 = sub_26932D2C0();
  (*(v4 + 8))(v23, v22);
  (*(v27 + 8))(v9, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v24;
}

uint64_t sub_2692FAE84(uint64_t a1, char a2)
{
  if (!sub_26932D2E0())
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308510);
    v10 = sub_26932D690();
    v11 = sub_26932D9B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2692D8000, v10, v11, "adjustHour(in:inferMeridiem:) Can not find time in inferred dateTime.", v12, 2u);
      MEMORY[0x26D639280](v12, -1, -1);
    }

    return 0;
  }

  v3 = sub_2692FC378(a2 & 1);
  if (v4)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v5 = sub_26932D6B0();
    __swift_project_value_buffer(v5, qword_280308510);
    v6 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2692D8000, v6, v7, "adjustHour(in:inferMeridiem:) Can not find hour in inferred dateTime.", v8, 2u);
      MEMORY[0x26D639280](v8, -1, -1);
    }

    return 0;
  }

  v14 = v3;
  sub_26932BDC0();
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v15 = sub_26932D6B0();
  __swift_project_value_buffer(v15, qword_280308510);

  v16 = sub_26932D690();
  v17 = sub_26932D9B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    sub_26932D210();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308550, &qword_269330498);
    v20 = sub_26932D790();
    v22 = sub_2692DD5A8(v20, v21, &v23);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_2692D8000, v16, v17, "adjustHour(in:inferMeridiem:), original hour = %s, fixed hour = %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D639280](v19, -1, -1);
    MEMORY[0x26D639280](v18, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t DateTime.dateComponentsIn24HourClock(shouldUseInferredMeridiem:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v103 = a2;
  v3 = sub_26932D240();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v96 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = v91 - v15;
  v16 = sub_26932BE70();
  v104 = *(v16 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v97 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v91 - v24;
  v102 = v2;
  v26 = sub_26932D2E0();
  if (!v26)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v40 = sub_26932D6B0();
    __swift_project_value_buffer(v40, qword_280308510);
    v41 = sub_26932D690();
    v42 = sub_26932D9B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2692D8000, v41, v42, "dateComponentsIn24HourClock: Can NOT get time from inferred dateTime.", v43, 2u);
      MEMORY[0x26D639280](v43, -1, -1);
    }

    goto LABEL_20;
  }

  v27 = v26;
  v28 = sub_26932D220();
  v95 = v9;
  if (v29)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v30 = sub_26932D6B0();
    __swift_project_value_buffer(v30, qword_280308510);
    v31 = sub_26932D690();
    v32 = sub_26932D9B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v98 = v27;
      v34 = v4;
      v35 = v3;
      v36 = v19;
      v37 = v16;
      v38 = v33;
      *v33 = 0;
      _os_log_impl(&dword_2692D8000, v31, v32, "dateComponentsIn24HourClock: Inferring 0 for undefined minutes", v33, 2u);
      v39 = v38;
      v16 = v37;
      v19 = v36;
      v3 = v35;
      v4 = v34;
      MEMORY[0x26D639280](v39, -1, -1);
    }

    v98 = 0;
  }

  else
  {
    v98 = v28;
  }

  v44 = sub_26932D210();
  if (v45)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v46 = sub_26932D6B0();
    __swift_project_value_buffer(v46, qword_280308510);
    v47 = sub_26932D690();
    v48 = sub_26932D9A0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2692D8000, v47, v48, "dateComponentsIn24HourClock: Can't parse inferred dateTime, inferred dateTime has no valid hour/minute.", v49, 2u);
      MEMORY[0x26D639280](v49, -1, -1);
    }

LABEL_20:
    v50 = v103;
    v51 = *(v104 + 56);

    return v51(v50, 1, 1, v16);
  }

  v53 = v44;
  v93 = v16;
  v94 = v19;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v54 = sub_26932D6B0();
  v55 = __swift_project_value_buffer(v54, qword_280308510);
  swift_retain_n();
  v56 = sub_26932D690();
  v57 = sub_26932D9B0();
  v58 = os_log_type_enabled(v56, v57);
  v92 = v4;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v91[1] = v55;
    v60 = v59;
    v61 = v53;
    v62 = swift_slowAlloc();
    v106[0] = v62;
    *v60 = 134218754;
    *(v60 + 4) = v61;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v98;
    *(v60 + 22) = 2080;
    sub_26932D250();
    v63 = sub_26932DA30();
    v65 = v64;
    sub_2692EB48C(v25, &qword_280308530, &qword_269330490);
    v66 = sub_2692DD5A8(v63, v65, v106);

    *(v60 + 24) = v66;
    *(v60 + 32) = 1024;
    LOBYTE(v66) = sub_26932D1E0();

    *(v60 + 34) = v66 & 1;

    _os_log_impl(&dword_2692D8000, v56, v57, "dateComponentsIn24HourClock: Hour = %ld, minute = %ld, meridiem = %s, meridiemSetByUser = %{BOOL}d", v60, 0x26u);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    v67 = v62;
    v53 = v61;
    MEMORY[0x26D639280](v67, -1, -1);
    MEMORY[0x26D639280](v60, -1, -1);
  }

  else
  {
  }

  v68 = sub_26932C0B0();
  (*(*(v68 - 8) + 56))(v100, 1, 1, v68);
  v69 = sub_26932C0D0();
  (*(*(v69 - 8) + 56))(v101, 1, 1, v69);
  v70 = v94;
  sub_26932BE60();
  v71 = sub_26932D2D0();
  v72 = v103;
  if (v71)
  {
    sub_26932D1A0();
    if ((v73 & 1) == 0)
    {
      sub_26932BE00();
    }

    sub_26932D180();
    if ((v74 & 1) == 0)
    {
      sub_26932BD90();
    }

    sub_26932D190();
    if ((v75 & 1) == 0)
    {
      sub_26932BDE0();
    }
  }

  sub_26932BE10();
  if ((sub_26932D1E0() & 1) != 0 || (v99) && v53 && (v53 - 13) > 0xA && v53 != 24)
  {
    v84 = v97;
    sub_26932D250();
    v85 = v84;
    v86 = v92;
    if ((*(v92 + 48))(v85, 1, v3) != 1)
    {
      v87 = v53;
      (*(v86 + 32))(v95, v85, v3);
      v88 = v96;
      (*(v86 + 104))(v96, *MEMORY[0x277D562A0], v3);
      sub_2692FC79C(&qword_280308548, MEMORY[0x277D562A8]);
      sub_26932D830();
      sub_26932D830();
      v89 = *(v86 + 8);
      v89(v88, v3);
      if (v106[0] == v105 && v53 != 12)
      {
        result = v53 + 12;
        v90 = v95;
        if (__OFADD__(v87, 12))
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v90 = v95;
      }

      sub_26932BDC0();
      v89(v90, v3);
      goto LABEL_39;
    }

    sub_2692EB48C(v85, &qword_280308530, &qword_269330490);
  }

  sub_26932BDC0();
LABEL_39:
  v76 = sub_26932D690();
  v77 = sub_26932D9B0();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v106[0] = v79;
    *v78 = 136315138;
    swift_beginAccess();
    sub_2692FC79C(&qword_280308228, MEMORY[0x277CC8990]);
    v80 = v93;
    v81 = sub_26932DDD0();
    v83 = sub_2692DD5A8(v81, v82, v106);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_2692D8000, v76, v77, "dateComponentsIn24HourClock: Got dateComponents: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x26D639280](v79, -1, -1);
    MEMORY[0x26D639280](v78, -1, -1);
  }

  else
  {

    v80 = v93;
  }

  swift_beginAccess();
  (*(v104 + 16))(v72, v70, v80);
  (*(v104 + 56))(v72, 0, 1, v80);
  return (*(v104 + 8))(v70, v80);
}

INDateComponentsRange_optional __swiftcall DateTime.toINAlarmSearchDateTime(isTimeRange:)(Swift::Bool isTimeRange)
{
  if (isTimeRange)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v1 = sub_26932D6B0();
    __swift_project_value_buffer(v1, qword_280308510);

    v2 = sub_26932D690();
    v3 = sub_26932D9B0();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136315138;
      if (sub_26932D2A0())
      {
        v6 = sub_26932D270();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }

      v17 = sub_2692DD5A8(v6, v8, &v20);

      *(v4 + 4) = v17;
      _os_log_impl(&dword_2692D8000, v2, v3, "Found time range info from SiriInference: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D639280](v5, -1, -1);
      MEMORY[0x26D639280](v4, -1, -1);
    }

    v18.value = DateTime.asDateComponentsRange()();
  }

  else
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308510);

    v10 = sub_26932D690();
    v11 = sub_26932D9B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      if (sub_26932D2E0())
      {
        v14 = sub_26932D1D0();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v19 = sub_2692DD5A8(v14, v16, &v20);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_2692D8000, v10, v11, "Found time point info from SiriInference: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D639280](v13, -1, -1);
      MEMORY[0x26D639280](v12, -1, -1);
    }

    return DateTime.asTimePoint(shouldUseInferredMeridiem:insertToEndTime:)(0, 0);
  }

  return v18;
}

Swift::Bool __swiftcall DateTime.isValidForReformationFromTimer()()
{
  if (sub_26932D2E0())
  {
    sub_26932D210();
    v1 = v0;

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t DateTime.Time.dateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_26932C0B0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_26932C0D0();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_2692FC378(0);
  sub_26932D220();
  sub_26932D230();
  return sub_26932BE60();
}

uint64_t sub_2692FC378(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = sub_26932D240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  result = sub_26932D210();
  if ((v15 & 1) == 0)
  {
    v16 = result;
    if (((sub_26932D1E0() | a1) & 1) == 0)
    {
      return v16;
    }

    result = v16;
    if (v16)
    {
      if ((v16 - 24) <= 0xFFFFFFFFFFFFFFF4)
      {
        if (v16 == 24)
        {
          return 0;
        }

        sub_26932D250();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {
          sub_2692EB48C(v5, &qword_280308530, &qword_269330490);
          return v16;
        }

        (*(v7 + 32))(v13, v5, v6);
        (*(v7 + 104))(v11, *MEMORY[0x277D562A0], v6);
        sub_2692FC79C(&qword_280308548, MEMORY[0x277D562A8]);
        sub_26932D830();
        sub_26932D830();
        v17 = *(v7 + 8);
        v17(v11, v6);
        v17(v13, v6);
        if (v18[1] == v18[0])
        {
          result = v16;
          if (v16 == 12)
          {
            return result;
          }

          result = v16 + 12;
          if (!__OFADD__(v16, 12))
          {
            return result;
          }

          __break(1u);
        }

        if (v16 == 12)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }
    }
  }

  return result;
}

id sub_2692FC638(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_26932BE70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_26932BD60();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_26932BD60();
    (*(v9 + 8))(a2, v8);
  }

  v13 = [v4 initWithStartDateComponents:v11 endDateComponents:v12 recurrenceRule:a3];

  return v13;
}

uint64_t sub_2692FC79C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2692FC7E4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308560);
  v1 = __swift_project_value_buffer(v0, qword_280308560);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t YesNoSearchWindowStrategy.__allocating_init(manifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:nlv3ActionForInput:nlv3ParseConfirmation:promptPatternExecutionProducer:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *(v12 + 48);
  v20 = *(v12 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v23 = sub_26932C610();
  (*(*(v23 - 8) + 32))(v21 + v22, a1, v23);
  sub_2692DB324(a2, v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator);
  v24 = (v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer);
  *v24 = a3;
  v24[1] = a4;
  v25 = (v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  *v25 = a5;
  v25[1] = a6;
  v26 = (v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput);
  *v26 = a7;
  v26[1] = a8;
  v27 = (v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation);
  *v27 = a9;
  v27[1] = a10;
  v28 = (v21 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  *v28 = a11;
  v28[1] = a12;
  return v21;
}

uint64_t YesNoSearchWindowStrategy.init(manifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:nlv3ActionForInput:nlv3ParseConfirmation:promptPatternExecutionProducer:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v20 = sub_26932C610();
  (*(*(v20 - 8) + 32))(v12 + v19, a1, v20);
  sub_2692DB324(a2, v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator);
  v21 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput);
  *v23 = a7;
  v23[1] = a8;
  v24 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation);
  *v24 = a9;
  v24[1] = a10;
  v25 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  *v25 = a11;
  v25[1] = a12;
  return v12;
}

uint64_t YesNoSearchWindowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FCB48, 0, 0);
}

uint64_t sub_2692FCB48()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2692FCC40;

  return v6();
}

uint64_t sub_2692FCC40(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2692FCD74, 0, 0);
  }
}

uint64_t sub_2692FCD74()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator), v2);
  v4 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v5 = *(MEMORY[0x277D5BE50] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2692FCE54;
  v7 = v0[5];
  v8 = v0[2];

  return MEMORY[0x2821BB480](v8, v7, v1 + v4, v2, v3);
}

uint64_t sub_2692FCE54()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2692FCFCC;
  }

  else
  {
    v3 = sub_2692FCF68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2692FCF68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2692FCFCC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t YesNoSearchWindowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v1 = sub_26932C6C0();
  v118 = *(v1 - 8);
  v119 = v1;
  v2 = *(v118 + 64);
  MEMORY[0x28223BE20](v1);
  v117 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_26932C800();
  v124 = *(v110 - 8);
  v4 = *(v124 + 8);
  v5 = MEMORY[0x28223BE20](v110);
  v116 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v120 = &v105 - v8;
  MEMORY[0x28223BE20](v7);
  v122 = &v105 - v9;
  v111 = sub_26932C740();
  v115 = *(v111 - 8);
  v10 = *(v115 + 64);
  v11 = MEMORY[0x28223BE20](v111);
  v107 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v105 - v14;
  MEMORY[0x28223BE20](v13);
  v109 = &v105 - v15;
  v16 = sub_26932C700();
  v112 = *(v16 - 8);
  v113 = v16;
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v16);
  v114 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26932C6D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v121 = &v105 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v105 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v105 - v33;
  v35 = sub_26932D090();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C670();
  v40 = (*(v20 + 88))(v34, v19);
  if (v40 == *MEMORY[0x277D5C128])
  {
    (*(v20 + 16))(v24, v34, v19);
    (*(v20 + 96))(v24, v19);
LABEL_5:
    (*(v36 + 32))(v39, v24, v35);
    (*(v20 + 8))(v34, v19);
    v42 = *(v123 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput + 8);
    (*(v123 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput))(v39);
    return (*(v36 + 8))(v39, v35);
  }

  if (v40 == *MEMORY[0x277D5C158])
  {
    (*(v20 + 16))(v24, v34, v19);
    (*(v20 + 96))(v24, v19);
    v41 = *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B0, &qword_2693304B8) + 48)];

    goto LABEL_5;
  }

  if (v40 == *MEMORY[0x277D5C150])
  {
    v44 = v121;
    (*(v20 + 16))(v121, v34, v19);
    v106 = v20;
    v45 = *(v20 + 96);
    v123 = v19;
    v45(v44, v19);
    v47 = v117;
    v46 = v118;
    v48 = v119;
    (*(v118 + 16))(v117, v44, v119);
    v49 = sub_26932C6A0();
    v51 = v50;
    v52 = sub_26932C270();
    v53 = [v52 identifier];

    v54 = sub_26932D770();
    v56 = v55;

    if (v49 == v54 && v51 == v56)
    {

LABEL_14:
      sub_26932C3C0();
      v59 = *(v46 + 8);
      v59(v47, v48);
      v59(v121, v48);
      return (*(v106 + 8))(v34, v123);
    }

    v58 = sub_26932DF00();

    if (v58)
    {
      goto LABEL_14;
    }

    v124 = v34;
    v70 = *(v46 + 8);
    v70(v47, v48);
    v71 = sub_26932C6A0();
    v73 = v72;
    v74 = sub_26932C290();
    v75 = [v74 identifier];

    v76 = sub_26932D770();
    v78 = v77;

    if (v71 == v76 && v73 == v78)
    {

LABEL_33:
      v70(v121, v48);
LABEL_34:
      v34 = v124;
      goto LABEL_35;
    }

    v86 = sub_26932DF00();

    if (v86)
    {
      goto LABEL_33;
    }

    v95 = v121;
    v96 = sub_26932C6A0();
    v98 = v97;
    v70(v95, v48);
    v99 = sub_26932C280();
    v100 = [v99 identifier];

    v101 = sub_26932D770();
    v103 = v102;

    if (v96 == v101 && v98 == v103)
    {

      goto LABEL_34;
    }

    v104 = sub_26932DF00();

    v34 = v124;
    if (v104)
    {
      goto LABEL_35;
    }

LABEL_48:
    sub_26932C3E0();
    return (*(v106 + 8))(v34, v123);
  }

  if (v40 == *MEMORY[0x277D5C130])
  {
    (*(v20 + 16))(v29, v34, v19);
    (*(v20 + 96))(v29, v19);
    v57 = *v29;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_26932C3C0();
      swift_unknownObjectRelease();
      return (*(v20 + 8))(v34, v19);
    }

    v123 = v19;
    v106 = v20;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_35:
      (*(v106 + 8))(v34, v123);
      return sub_26932C3D0();
    }

    objc_opt_self();
    v87 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v87)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

  v123 = v19;
  v106 = v20;
  if (v40 != *MEMORY[0x277D5C160])
  {
    goto LABEL_48;
  }

  v60 = v106;
  v61 = v123;
  (*(v106 + 16))(v32, v34, v123);
  (*(v60 + 96))(v32, v61);
  (*(v112 + 32))(v114, v32, v113);
  v62 = v109;
  sub_26932C6F0();
  v63 = sub_26932C730();
  v121 = *(v115 + 8);
  v115 += 8;
  result = (v121)(v62, v111);
  v64 = 0;
  v65 = *(v63 + 16);
  v66 = v110;
  while (1)
  {
    if (v65 == v64)
    {

      v79 = v108;
      sub_26932C6F0();
      v80 = sub_26932C730();
      result = (v121)(v79, v111);
      v81 = 0;
      v82 = *(v80 + 16);
      while (v82 != v81)
      {
        if (v81 >= *(v80 + 16))
        {
          goto LABEL_51;
        }

        v83 = v124;
        v84 = v120;
        (*(v124 + 2))(v120, v80 + ((v83[80] + 32) & ~v83[80]) + *(v124 + 9) * v81++, v66);
        v85 = sub_26932C7A0();
        result = (*(v83 + 1))(v84, v66);
        if (v85)
        {
          goto LABEL_30;
        }
      }

      v88 = v107;
      sub_26932C6F0();
      v89 = sub_26932C730();
      result = (v121)(v88, v111);
      v90 = 0;
      v91 = *(v89 + 16);
      v92 = v124;
      while (v91 != v90)
      {
        if (v90 >= *(v89 + 16))
        {
          goto LABEL_52;
        }

        v93 = v116;
        (*(v92 + 2))(v116, v89 + ((v92[80] + 32) & ~v92[80]) + *(v92 + 9) * v90++, v66);
        v94 = sub_26932C7B0();
        result = (*(v92 + 1))(v93, v66);
        if (v94)
        {

          sub_26932C3C0();
          goto LABEL_31;
        }
      }

      sub_26932C3E0();
      goto LABEL_31;
    }

    if (v64 >= *(v63 + 16))
    {
      break;
    }

    v67 = v124;
    v68 = v122;
    (*(v124 + 2))(v122, v63 + ((v67[80] + 32) & ~v67[80]) + *(v124 + 9) * v64++, v66);
    v69 = sub_26932C790();
    result = (*(v67 + 1))(v68, v66);
    if (v69)
    {
LABEL_30:

      sub_26932C3D0();
LABEL_31:
      (*(v112 + 8))(v114, v113);
      return (*(v106 + 8))(v34, v123);
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t YesNoSearchWindowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26932C6C0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B8, &qword_2693304C8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_26932C800();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = sub_26932C740();
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = sub_26932C700();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = sub_26932C6D0();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v20 = sub_26932D090();
  v3[28] = v20;
  v21 = *(v20 - 8);
  v3[29] = v21;
  v22 = *(v21 + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692FE028, 0, 0);
}

uint64_t sub_2692FE028()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[3];
  sub_26932C670();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D5C128])
  {
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    (*(v7 + 16))(v6, v0[27], v8);
    (*(v7 + 96))(v6, v8);
LABEL_5:
    v13 = v0[27];
    v14 = v0[22];
    v15 = v0[21];
    v16 = v0[4];
    (*(v0[29] + 32))(v0[30], v0[23], v0[28]);
    (*(v14 + 8))(v13, v15);
    v17 = *(v16 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation + 8);
    v157 = (*(v16 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation) + **(v16 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation));
    v18 = *(*(v16 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation) + 4);
    v19 = swift_task_alloc();
    v0[31] = v19;
    *v19 = v0;
    v19[1] = sub_2692FEDF8;
    v20 = v0[30];
    v21 = v0[2];

    return v157(v21, v20);
  }

  if (v5 == *MEMORY[0x277D5C158])
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[21];
    (*(v10 + 16))(v9, v0[27], v11);
    (*(v10 + 96))(v9, v11);
    v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B0, &qword_2693304B8) + 48));

    goto LABEL_5;
  }

  if (v5 != *MEMORY[0x277D5C150])
  {
    if (v5 == *MEMORY[0x277D5C130])
    {
      v37 = v0[25];
      v38 = v0[21];
      v39 = v0[22];
      (*(v39 + 16))(v37, v0[27], v38);
      (*(v39 + 96))(v37, v38);
      v40 = *v37;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v41 = v0[27];
        v42 = v0[21];
        v43 = v0[22];
        v44 = v0[9];
        v45 = v0[2];
        v46 = MEMORY[0x277D5BED8];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
          goto LABEL_46;
        }

        v41 = v0[27];
        v42 = v0[21];
        v43 = v0[22];
        v44 = v0[9];
        v93 = v0[2];
        v46 = MEMORY[0x277D5BED0];
      }

      v94 = *v46;
      v95 = sub_26932C540();
      v96 = *(v95 - 8);
      (*(v96 + 104))(v44, v94, v95);
      (*(v96 + 56))(v44, 0, 1, v95);
      sub_26932C660();
      swift_unknownObjectRelease();
    }

    else
    {
      if (v5 != *MEMORY[0x277D5C160])
      {
        goto LABEL_46;
      }

      v58 = v0[26];
      v59 = v0[21];
      v60 = v0[22];
      v62 = v0[19];
      v61 = v0[20];
      v64 = v0[17];
      v63 = v0[18];
      v65 = v0[15];
      v159 = v0[14];
      v66 = v0[11];
      (*(v60 + 16))(v58, v0[27], v59);
      (*(v60 + 96))(v58, v59);
      (*(v62 + 32))(v61, v58, v63);
      sub_26932C6F0();
      v67 = sub_26932C730();
      v154 = *(v65 + 8);
      v154(v64, v159);
      v68 = 0;
      v69 = *(v67 + 16);
      while (v69 != v68)
      {
        if (v68 >= *(v67 + 16))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v70 = v0[13];
        v71 = v0[10];
        (*(v66 + 16))(v70, v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68++, v71);
        v72 = sub_26932C790();
        (*(v66 + 8))(v70, v71);
        if (v72)
        {
          v73 = v0[22];
          v155 = v0[21];
          v160 = v0[27];
          v74 = v0[19];
          v75 = v0[20];
          v76 = v0[18];
          v77 = v0[9];
          v78 = v0[2];

          v79 = MEMORY[0x277D5BED8];
LABEL_36:
          v107 = *v79;
          v108 = sub_26932C540();
          v109 = *(v108 - 8);
          (*(v109 + 104))(v77, v107, v108);
          (*(v109 + 56))(v77, 0, 1, v108);
          sub_26932C660();
          (*(v74 + 8))(v75, v76);
          (*(v73 + 8))(v160, v155);
          goto LABEL_50;
        }
      }

      v97 = v0[20];
      v98 = v0[16];
      v99 = v0[14];

      sub_26932C6F0();
      v100 = sub_26932C730();
      v154(v98, v99);
      v101 = 0;
      v102 = *(v100 + 16);
      while (v102 != v101)
      {
        if (v101 >= *(v100 + 16))
        {
          goto LABEL_54;
        }

        v103 = v0[12];
        v104 = v0[10];
        (*(v66 + 16))(v103, v100 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v101++, v104);
        v105 = sub_26932C7A0();
        (*(v66 + 8))(v103, v104);
        if (v105)
        {
          v73 = v0[22];
          v155 = v0[21];
          v160 = v0[27];
          v74 = v0[19];
          v75 = v0[20];
          v76 = v0[18];
          v77 = v0[9];
          v106 = v0[2];

          v79 = MEMORY[0x277D5BED0];
          goto LABEL_36;
        }
      }

      if (qword_280307C88 != -1)
      {
        swift_once();
      }

      v118 = sub_26932D6B0();
      __swift_project_value_buffer(v118, qword_280308560);
      v119 = sub_26932D690();
      v120 = sub_26932D990();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_2692D8000, v119, v120, "Unable to parse a confirmation response from the given USO parse", v121, 2u);
        MEMORY[0x26D639280](v121, -1, -1);
      }

      v41 = v0[27];
      v42 = v0[21];
      v43 = v0[22];
      v123 = v0[19];
      v122 = v0[20];
      v124 = v0[18];
      v125 = v0[9];
      v126 = v0[2];

      v127 = sub_26932C540();
      (*(*(v127 - 8) + 56))(v125, 1, 1, v127);
      sub_26932C660();
      (*(v123 + 8))(v122, v124);
    }

    (*(v43 + 8))(v41, v42);
    goto LABEL_50;
  }

  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[22];
  v26 = v0[8];
  v27 = v0[5];
  v28 = v0[6];
  (*(v25 + 16))(v23, v0[27], v24);
  (*(v25 + 96))(v23, v24);
  (*(v28 + 16))(v26, v23, v27);
  v29 = sub_26932C6A0();
  v31 = v30;
  v32 = sub_26932C290();
  v33 = [v32 identifier];

  v34 = sub_26932D770();
  v36 = v35;

  if (v29 != v34 || v31 != v36)
  {
    v47 = sub_26932DF00();

    if (v47)
    {
      goto LABEL_16;
    }

    v80 = v0[24];
    v81 = v0[7];
    v82 = v0[5];
    v83 = v0[6];
    v84 = *(v83 + 8);
    v84(v0[8], v82);
    (*(v83 + 32))(v81, v80, v82);
    v85 = sub_26932C6A0();
    v87 = v86;
    v88 = sub_26932C280();
    v89 = [v88 identifier];

    v90 = sub_26932D770();
    v92 = v91;

    if (v85 == v90 && v87 == v92)
    {

LABEL_38:
      v48 = v0[22];
      v153 = v0[21];
      v158 = v0[27];
      v111 = v0[9];
      v151 = v0[7];
      v112 = v0[5];
      v113 = v0[2];
      v114 = v84;
      v115 = *MEMORY[0x277D5BED0];
      v116 = sub_26932C540();
      v117 = *(v116 - 8);
      (*(v117 + 104))(v111, v115, v116);
      (*(v117 + 56))(v111, 0, 1, v116);
      sub_26932C660();
      v114(v151, v112);
      goto LABEL_17;
    }

    v110 = sub_26932DF00();

    if (v110)
    {
      goto LABEL_38;
    }

    v84(v0[7], v0[5]);
LABEL_46:
    if (qword_280307C88 != -1)
    {
LABEL_55:
      swift_once();
    }

    v128 = sub_26932D6B0();
    __swift_project_value_buffer(v128, qword_280308560);
    v129 = sub_26932D690();
    v130 = sub_26932D990();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_2692D8000, v129, v130, "Unable to parse a confirmation response from the given parse", v131, 2u);
      MEMORY[0x26D639280](v131, -1, -1);
    }

    v132 = v0[27];
    v133 = v0[21];
    v134 = v0[22];
    v135 = v0[9];
    v136 = v0[2];

    v137 = sub_26932C540();
    (*(*(v137 - 8) + 56))(v135, 1, 1, v137);
    sub_26932C660();
    (*(v134 + 8))(v132, v133);
    goto LABEL_50;
  }

LABEL_16:
  v150 = v0[24];
  v48 = v0[22];
  v153 = v0[21];
  v158 = v0[27];
  v50 = v0[8];
  v49 = v0[9];
  v52 = v0[5];
  v51 = v0[6];
  v53 = v0[2];
  v54 = *MEMORY[0x277D5BED8];
  v55 = sub_26932C540();
  v56 = *(v55 - 8);
  (*(v56 + 104))(v49, v54, v55);
  (*(v56 + 56))(v49, 0, 1, v55);
  sub_26932C660();
  v57 = *(v51 + 8);
  v57(v50, v52);
  v57(v150, v52);
LABEL_17:
  (*(v48 + 8))(v158, v153);
LABEL_50:
  v138 = v0[30];
  v139 = v0[26];
  v140 = v0[27];
  v142 = v0[24];
  v141 = v0[25];
  v143 = v0[23];
  v144 = v0[20];
  v146 = v0[16];
  v145 = v0[17];
  v147 = v0[13];
  v149 = v0[12];
  v152 = v0[9];
  v156 = v0[8];
  v161 = v0[7];

  v148 = v0[1];

  return v148();
}

uint64_t sub_2692FEDF8()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 256) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2692FF07C;
  }

  else
  {
    v6 = sub_2692FEF68;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2692FEF68()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[8];
  v16 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2692FF07C()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[8];
  v17 = v0[7];

  v11 = v0[1];
  v12 = v0[32];

  return v11();
}

uint64_t YesNoSearchWindowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF1B0, 0, 0);
}

uint64_t sub_2692FF1B0()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_269300264;
  v5 = v0[2];

  return v7(v5);
}

uint64_t YesNoSearchWindowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF2D0, 0, 0);
}

uint64_t sub_2692FF2D0()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_269300264;
  v5 = v0[2];

  return v7(v5);
}

uint64_t YesNoSearchWindowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v2 = sub_26932C610();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator));
  v3 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer + 8);

  v5 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput + 8);

  v7 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation + 8);

  return v0;
}

uint64_t YesNoSearchWindowStrategy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v2 = sub_26932C610();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator));
  v3 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer + 8);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer + 8);

  v5 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput + 8);

  v7 = *(v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation + 8);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2692FF5B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF5D4, 0, 0);
}

uint64_t sub_2692FF5D4()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2692FF6CC;

  return v6();
}

uint64_t sub_2692FF6CC(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2692FF800, 0, 0);
  }
}

uint64_t sub_2692FF800()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator), v2);
  v4 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v5 = *(MEMORY[0x277D5BE50] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2692FF8E0;
  v7 = v0[5];
  v8 = v0[2];

  return MEMORY[0x2821BB480](v8, v7, v1 + v4, v2, v3);
}

uint64_t sub_2692FF8E0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26930026C;
  }

  else
  {
    v3 = sub_269300270;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2692FF9F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269300268;

  return YesNoSearchWindowStrategy.parseConfirmationResponse(input:)(a1, a2);
}

uint64_t sub_2692FFAA0(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D5B388] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_269300220(&qword_2803085D8);
  *v6 = v2;
  v6[1] = sub_2692DDD10;

  return MEMORY[0x2821B9C20](a1, v4, v7);
}

uint64_t sub_2692FFB94(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D5B390] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_269300220(&qword_2803085D8);
  *v6 = v2;
  v6[1] = sub_269300268;

  return MEMORY[0x2821B9C28](a1, v4, v7);
}

uint64_t sub_2692FFC88(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x277D5B398] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_269300220(&qword_2803085D8);
  *v6 = v2;
  v6[1] = sub_269300268;

  return MEMORY[0x2821B9C30](a1, v4, v7);
}

uint64_t sub_2692FFD7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF1B0, 0, 0);
}

uint64_t sub_2692FFD9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FFDBC, 0, 0);
}

uint64_t sub_2692FFDBC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2692FFEBC;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_2692FFEBC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2692FFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(MEMORY[0x277D5B650] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_269300268;

  return MEMORY[0x2821BA038](a1, a2, v9, a4);
}

uint64_t type metadata accessor for YesNoSearchWindowStrategy()
{
  result = qword_2803085C8;
  if (!qword_2803085C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26930012C()
{
  result = sub_26932C610();
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

uint64_t sub_269300220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for YesNoSearchWindowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269300274()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803085E0);
  v1 = __swift_project_value_buffer(v0, qword_2803085E0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ResponseDisambigUtils.windowingResponse(for:)()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v0 = sub_26932D6B0();
    __swift_project_value_buffer(v0, qword_2803085E0);
    v1 = sub_26932D690();
    v2 = sub_26932D9B0();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_7;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "ResponseDisambigUtils.windowingResponse(userDialogAct:) User accepted the task, will reprompt.";
LABEL_6:
    _os_log_impl(&dword_2692D8000, v1, v2, v4, v3, 2u);
    MEMORY[0x26D639280](v3, -1, -1);
LABEL_7:

    return sub_26932C630();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_2803085E0);
    v7 = sub_26932D690();
    v8 = sub_26932D9B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2692D8000, v7, v8, "ResponseDisambigUtils.windowingResponse(userDialogAct:) User rejected the task, will go to next page.", v9, 2u);
      MEMORY[0x26D639280](v9, -1, -1);
    }

    return sub_26932C620();
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v14 = sub_26932D6B0();
      __swift_project_value_buffer(v14, qword_2803085E0);
      v1 = sub_26932D690();
      v2 = sub_26932D9B0();
      if (!os_log_type_enabled(v1, v2))
      {
        goto LABEL_7;
      }

      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "ResponseDisambigUtils.windowingResponse(userDialogAct:) User made no confirmation choice – continue the task.";
      goto LABEL_6;
    }

    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v10 = sub_26932D6B0();
    __swift_project_value_buffer(v10, qword_2803085E0);
    v11 = sub_26932D690();
    v12 = sub_26932D9B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2692D8000, v11, v12, "ResponseDisambigUtils.windowingResponse(userDialogAct:) User cancelled the task.", v13, 2u);
      MEMORY[0x26D639280](v13, -1, -1);
    }

    return sub_26932C640();
  }
}

uint64_t static ResponseDisambigUtils.windowingResponse(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = a2;
  v3 = sub_26932C800();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v36[0] = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v36 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  v13 = 0;
  v14 = *(a1 + 16);
  while (v14 != v13)
  {
    (*(v4 + 16))(v12, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13++, v3);
    v15 = sub_26932C790();
    (*(v4 + 8))(v12, v3);
    if (v15)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v16 = sub_26932D6B0();
      __swift_project_value_buffer(v16, qword_2803085E0);
      v17 = sub_26932D690();
      v18 = sub_26932D9B0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "ResponseDisambigUtils.windowingResponse(usoParse:) User accepted the task, will reprompt.";
LABEL_28:
        _os_log_impl(&dword_2692D8000, v17, v18, v20, v19, 2u);
        MEMORY[0x26D639280](v19, -1, -1);
      }

      goto LABEL_29;
    }
  }

  v21 = 0;
  while (v14 != v21)
  {
    (*(v4 + 16))(v10, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21++, v3);
    v22 = sub_26932C7A0();
    (*(v4 + 8))(v10, v3);
    if (v22)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v23 = sub_26932D6B0();
      __swift_project_value_buffer(v23, qword_2803085E0);
      v24 = sub_26932D690();
      v25 = sub_26932D9B0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2692D8000, v24, v25, "ResponseDisambigUtils.windowingResponse(usoParse:) User rejected the task, will go to next page.", v26, 2u);
        MEMORY[0x26D639280](v26, -1, -1);
      }

      return sub_26932C620();
    }
  }

  v28 = 0;
  v29 = v36[0];
  while (v14 != v28)
  {
    (*(v4 + 16))(v29, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28++, v3);
    v30 = sub_26932C7B0();
    (*(v4 + 8))(v29, v3);
    if (v30)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v31 = sub_26932D6B0();
      __swift_project_value_buffer(v31, qword_2803085E0);
      v32 = sub_26932D690();
      v33 = sub_26932D9B0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2692D8000, v32, v33, "ResponseDisambigUtils.windowingResponse(usoParse:) User cancelled/rejected the task, will cancel the request.", v34, 2u);
        MEMORY[0x26D639280](v34, -1, -1);
      }

      return sub_26932C640();
    }
  }

  if (qword_280307C90 != -1)
  {
    swift_once();
  }

  v35 = sub_26932D6B0();
  __swift_project_value_buffer(v35, qword_2803085E0);
  v17 = sub_26932D690();
  v18 = sub_26932D9B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "ResponseDisambigUtils.windowingResponse(usoParse:) User made no confirmation choice – continue the task.";
    goto LABEL_28;
  }

LABEL_29:

  return sub_26932C630();
}

uint64_t static ResponseDisambigUtils.parseWindowActionFromInput<A>(input:windowInputType:items:choiceSelector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_26932C650();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v11 = sub_26932C680();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269300D04, 0, 0);
}

uint64_t sub_269300D04()
{
  v65 = v0;
  if (qword_280307C90 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[6];
  v5 = sub_26932D6B0();
  v0[19] = __swift_project_value_buffer(v5, qword_2803085E0);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_26932D690();
  v7 = sub_26932D9B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v12 = 136315138;
    sub_269301AF4(&qword_280308600, MEMORY[0x277D5C118]);
    v13 = sub_26932DDD0();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_2692DD5A8(v13, v15, &v64);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2692D8000, v6, v7, "ResponseDisambigUtils.parseWindowActionFromInput(input:items:): %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x26D639280](v62, -1, -1);
    MEMORY[0x26D639280](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[13];
  (*(v19 + 16))(v0[15], v0[7], v18);
  sub_26932C630();
  sub_269301AF4(&qword_2803085F8, MEMORY[0x277D5C0C0]);
  v20 = sub_26932D750();
  v21 = *(v19 + 8);
  v21(v17, v18);
  v22 = v0[15];
  if ((v20 & 1) == 0)
  {
    v31 = v0[14];
    v32 = v0[12];
    sub_26932C620();
    v33 = sub_26932D750();
    v21(v31, v32);
    v34 = v0[15];
    if (v33)
    {
      v21(v0[15], v0[12]);
      v35 = sub_26932D690();
      v36 = sub_26932D9B0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2692D8000, v35, v36, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned .proceedWithNextWindow", v37, 2u);
        MEMORY[0x26D639280](v37, -1, -1);
      }

      v38 = v0[11];
      v39 = v0[5];

      sub_26932D8C0();
      sub_26932C4B0();
    }

    else
    {
      v46 = v0[14];
      v47 = v0[12];
      sub_26932C640();
      v48 = sub_26932D750();
      v21(v46, v47);
      v21(v34, v47);
      v49 = sub_26932D690();
      v50 = sub_26932D9B0();
      v51 = os_log_type_enabled(v49, v50);
      if (v48)
      {
        if (v51)
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_2692D8000, v49, v50, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned .cancel", v52, 2u);
          MEMORY[0x26D639280](v52, -1, -1);
        }

        v53 = v0[11];
        v54 = v0[5];

        sub_26932D8C0();
        sub_26932C4D0();
      }

      else
      {
        if (v51)
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_2692D8000, v49, v50, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned unknown or .unsupported – .repeatWindow", v55, 2u);
          MEMORY[0x26D639280](v55, -1, -1);
        }

        v56 = v0[11];
        v57 = v0[5];

        sub_26932D8C0();
        sub_26932C4A0();
      }
    }

    goto LABEL_25;
  }

  v23 = v0[11];
  v24 = v0[8];
  v21(v0[15], v0[12]);
  if (sub_26932D8B0() == 1)
  {
    v25 = sub_26932D690();
    v26 = sub_26932D9B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2692D8000, v25, v26, "ResponseDisambigUtils.parseWindowActionFromInput: Only single item and user indicated positive response – .complete", v27, 2u);
      MEMORY[0x26D639280](v27, -1, -1);
    }

    v28 = v0[11];
    v29 = v0[8];
    v30 = v0[5];

    v0[4] = v29;
    sub_26932D8C0();
    sub_26932C4C0();
LABEL_25:
    v58 = v0[18];
    v59 = v0[14];
    v60 = v0[15];

    v61 = v0[1];

    return v61();
  }

  v63 = (v0[9] + *v0[9]);
  v40 = *(v0[9] + 4);
  v41 = swift_task_alloc();
  v0[20] = v41;
  *v41 = v0;
  v41[1] = sub_2693013F0;
  v42 = v0[10];
  v43 = v0[8];
  v44 = v0[6];

  return v63(v44, v43);
}

uint64_t sub_2693013F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_2693017F0;
  }

  else
  {
    v5 = sub_269301504;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269301504()
{
  v1 = v0[21];
  if (!v1)
  {
    goto LABEL_4;
  }

  v0[2] = v1;
  v2 = v0[11];
  sub_26932D8C0();
  swift_getWitnessTable();
  if (sub_26932D960())
  {

LABEL_4:
    v3 = v0[19];
    v4 = sub_26932D690();
    v5 = sub_26932D9B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2692D8000, v4, v5, "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned empty results – .repeatWindow", v6, 2u);
      MEMORY[0x26D639280](v6, -1, -1);
    }

    v7 = v0[11];
    v8 = v0[5];

    sub_26932D8C0();
    goto LABEL_18;
  }

  v9 = v0[11];
  v10 = sub_26932D8B0();
  v11 = v0[19];
  if (v10 != 1)
  {
    if (v10)
    {

      v12 = sub_26932D690();
      v13 = sub_26932D9B0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned multiple results – .repeatWindow";
        goto LABEL_16;
      }
    }

    else
    {

      v12 = sub_26932D690();
      v13 = sub_26932D9A0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned empty result. This shouldn't be a possible codepath to execute.";
LABEL_16:
        _os_log_impl(&dword_2692D8000, v12, v13, v15, v14, 2u);
        MEMORY[0x26D639280](v14, -1, -1);
      }
    }

    v21 = v0[5];

LABEL_18:
    sub_26932C4A0();
    goto LABEL_19;
  }

  v16 = sub_26932D690();
  v17 = sub_26932D9B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2692D8000, v16, v17, "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned single result – .complete", v18, 2u);
    MEMORY[0x26D639280](v18, -1, -1);
  }

  v19 = v0[21];
  v20 = v0[5];

  v0[3] = v19;
  sub_26932C4C0();

LABEL_19:
  v22 = v0[18];
  v23 = v0[14];
  v24 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2693017F0()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t static ResponseDisambigUtils.calculateWindow<A>(windowItems:allItems:windowSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26932DA40();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
    return 0;
  }

  v23 = v17;
  v24 = a5;
  v22 = a3;
  v26 = a2;
  sub_26932D8C0();
  swift_getWitnessTable();
  if (sub_26932D960())
  {
    return 0;
  }

  v26 = a1;
  sub_26932D950();
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v23 + 8))(v14, v10);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v19, v14, a4);
    v25 = a2;
    sub_26932D970();
    if (v27 == 1)
    {
      (*(v15 + 8))(v19, a4);
      return 0;
    }

    else
    {
      v21 = v26;
      (*(v15 + 8))(v19, a4);
      return v21 / v22;
    }
  }
}

uint64_t sub_269301AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269301B4C(void *a1, unint64_t a2, uint64_t (*a3)(id *))
{
  v6 = DeviceUnit.isRemote.getter();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v21 = a1;
  MEMORY[0x28223BE20](v6);
  v20[2] = &v21;
  if (sub_2692E088C(a3, v20, a2))
  {
    return 0;
  }

  if (qword_280307C28 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  __swift_project_value_buffer(v8, qword_280308160);
  v9 = a1;
  v10 = sub_26932D690();
  v11 = sub_26932D9B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    v14 = sub_26932D550();
    v16 = sub_2692DD5A8(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_26932D560();
    v19 = sub_2692DD5A8(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_2692D8000, v10, v11, "Remote device %s doesn't support intent handling. Will send ace command to remote assistant %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v13, -1, -1);
    MEMORY[0x26D639280](v12, -1, -1);
  }

  return sub_26932D560();
}

uint64_t sub_269301D50()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B23C0);
  v1 = __swift_project_value_buffer(v0, qword_2814B23C0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTimeDeviceContextProvider.fetchAlarmContexts()()
{
  v1[15] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_26932BFA0();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269301F30, 0, 0);
}

uint64_t sub_269301F30()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308608, &qword_269330660);
  *v4 = v0;
  v4[1] = sub_269302038;

  return MEMORY[0x2822007B8](v0 + 12, 0, 0, 0xD000000000000014, 0x8000000269336640, sub_269302F00, v2, v5);
}

uint64_t sub_269302038()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269302150, 0, 0);
}

uint64_t sub_269302150()
{
  v1 = v0[12];
  v0[24] = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[25] = v2; v2; v0[25] = v2)
  {
    v3 = 0;
    v4 = v0[20];
    v58 = v1 & 0xFFFFFFFFFFFFFF8;
    v59 = v1 & 0xC000000000000001;
    v55 = (v4 + 56);
    v5 = (v4 + 48);
    v6 = MEMORY[0x277D84F90];
    v53 = v4;
    v54 = (v4 + 32);
    v56 = v2;
    v57 = v1;
    while (v59)
    {
      v7 = MEMORY[0x26D638850](v3);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v0[16];
        v12 = v10;
        sub_26932BF80();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = v0[18];
      v14 = v0[19];
      v17 = v0[16];
      v16 = v0[17];
      (*v55)(v17, v13, 1, v14);
      sub_269302F40(v17, v16);
      sub_269302F40(v16, v15);

      if ((*v5)(v15, 1, v14) == 1)
      {
        sub_2692EB48C(v0[18], &qword_280308110, &qword_26932EBD0);
      }

      else
      {
        v18 = *v54;
        (*v54)(v0[21], v0[18], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2692E30A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_2692E30A8(v19 > 1, v20 + 1, 1, v6);
        }

        v21 = v0[21];
        v22 = v0[19];
        *(v6 + 2) = v20 + 1;
        v18(&v6[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20], v21, v22);
      }

      v1 = v57;
      ++v3;
      if (v8 == v56)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v58 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(v1 + 8 * v3 + 32);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v23 = v1;
    v2 = sub_26932DAE0();
    v1 = v23;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v0[26] = v6;
  v24 = sub_26932D5C0();
  v0[27] = v24;
  v25 = sub_26932D5A0();
  v26 = MEMORY[0x277D61F10];
  v0[5] = v24;
  v0[6] = v26;
  v0[2] = v25;
  if (*(v6 + 2))
  {
    v27 = swift_task_alloc();
    v0[28] = v27;
    *(v27 + 16) = v0 + 2;
    *(v27 + 24) = v6;
    v28 = *(MEMORY[0x277D859E0] + 4);
    v29 = swift_task_alloc();
    v0[29] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v29 = v0;
    v29[1] = sub_269302720;
    v31 = sub_269306A60;
    v32 = v0 + 13;
    v33 = 0x8000000269336660;
    v34 = 0xD000000000000017;
LABEL_28:

    return MEMORY[0x2822007B8](v32, 0, 0, v34, v33, v31, v27, v30);
  }

  v35 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  v0[30] = v35;
  sub_269306A68((v0 + 2));
  if (*(v35 + 16))
  {
    v36 = v0[27];
    v37 = sub_26932D5A0();
    v0[10] = v36;
    v0[11] = v26;
    v0[7] = v37;
    v27 = swift_task_alloc();
    v0[31] = v27;
    *(v27 + 16) = v0 + 7;
    v38 = *(MEMORY[0x277D859E0] + 4);
    v39 = swift_task_alloc();
    v0[32] = v39;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v39 = v0;
    v39[1] = sub_269302AA4;
    v31 = sub_269306ABC;
    v32 = v0 + 14;
    v34 = 0xD00000000000001ELL;
    v33 = 0x8000000269336680;
    goto LABEL_28;
  }

  v40 = v0[26];
  v41 = v0[24];

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v42 = sub_26932D6B0();
  __swift_project_value_buffer(v42, qword_2814B23C0);
  v43 = sub_26932D690();
  v44 = sub_26932D9A0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2692D8000, v43, v44, "Failed to fetch device units for alarm contexts", v45, 2u);
    MEMORY[0x26D639280](v45, -1, -1);
  }

  v46 = v0[21];
  v47 = v0[17];
  v48 = v0[18];
  v49 = v0[16];

  v50 = v0[1];
  v51 = MEMORY[0x277D84F90];

  return v50(v51);
}

uint64_t sub_269302720()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269302838, 0, 0);
}

uint64_t sub_269302838()
{
  v1 = v0[13];
  v0[30] = v1;
  sub_269306A68((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = sub_26932D5A0();
    v4 = MEMORY[0x277D61F10];
    v0[10] = v2;
    v0[11] = v4;
    v0[7] = v3;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *(v5 + 16) = v0 + 7;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[32] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v7 = v0;
    v7[1] = sub_269302AA4;

    return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269306ABC, v5, v8);
  }

  else
  {
    v9 = v0[26];
    v10 = v0[24];

    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_2814B23C0);
    v12 = sub_26932D690();
    v13 = sub_26932D9A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2692D8000, v12, v13, "Failed to fetch device units for alarm contexts", v14, 2u);
      MEMORY[0x26D639280](v14, -1, -1);
    }

    v15 = v0[21];
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[16];

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_269302AA4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269302BBC, 0, 0);
}

uint64_t sub_269302BBC()
{
  v41 = v0;
  v1 = v0[25];
  v36 = v0[14];
  sub_269306A68((v0 + 7));
  if (v1)
  {
    v2 = 0;
    v3 = v0[24];
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 & 0xC000000000000001;
    v33 = v3 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35)
      {
        v5 = MEMORY[0x26D638850](v2, v0[24]);
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v33 + 8 * v2);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = v0[30];
      v37 = v5;
      sub_269302FB0(&v37, v8, v36, &v38);

      v9 = v38;
      v11 = v39;
      v10 = v40;
      if (v38)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2692E308C(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        v14 = v4;
        if (v13 >= v12 >> 1)
        {
          v14 = sub_2692E308C((v12 > 1), v13 + 1, 1, v4);
        }

        *(v14 + 2) = v13 + 1;
        v4 = v14;
        v15 = &v14[32 * v13];
        *(v15 + 2) = v9;
        *(v15 + 6) = v11;
        *(v15 + 7) = v10;
      }

      else
      {
        sub_269308434(0);
      }

      ++v2;
      if (v7 == v0[25])
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_17:
  v16 = v0[30];
  v17 = v0[26];
  v18 = v0[24];

  if (qword_2814B23B8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v19 = sub_26932D6B0();
  __swift_project_value_buffer(v19, qword_2814B23C0);

  v20 = sub_26932D690();
  v21 = sub_26932D9B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v38 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x26D638530](v4, &type metadata for HALAlarmDeviceContext);
    v26 = sub_2692DD5A8(v24, v25, &v38);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2692D8000, v20, v21, "fetchAlarmContexts() got firing alarms context: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D639280](v23, -1, -1);
    MEMORY[0x26D639280](v22, -1, -1);
  }

  v27 = v0[21];
  v29 = v0[17];
  v28 = v0[18];
  v30 = v0[16];

  v31 = v0[1];

  return v31(v4);
}

uint64_t sub_269302F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269302FB0(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v118 = a3;
  v7 = sub_26932BFA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v7);
  v120 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v112[-v12];
  v14 = *a1;
  v15 = [v14 identifier];
  if (!v15)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v82 = sub_26932D6B0();
    __swift_project_value_buffer(v82, qword_2814B23C0);
    v83 = v14;
    v84 = sub_26932D690();
    v85 = sub_26932D9A0();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = a4;
      v88 = swift_slowAlloc();
      v121[0] = v88;
      *v86 = 136315138;
      v89 = v83;
      v90 = [v89 description];
      v91 = sub_26932D770();
      v93 = v92;

      v94 = sub_2692DD5A8(v91, v93, v121);

      *(v86 + 4) = v94;
      _os_log_impl(&dword_2692D8000, v84, v85, "Device had invalid UUID for fetched alarms: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      v95 = v88;
      a4 = v87;
      MEMORY[0x26D639280](v95, -1, -1);
      MEMORY[0x26D639280](v86, -1, -1);
    }

    goto LABEL_24;
  }

  v119 = a2;
  v16 = v15;
  sub_26932BF80();

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v17 = sub_26932D6B0();
  __swift_project_value_buffer(v17, qword_2814B23C0);
  v18 = v14;
  v19 = sub_26932D690();
  v20 = sub_26932D9B0();

  v21 = os_log_type_enabled(v19, v20);
  v117 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v114 = v22;
    v115 = swift_slowAlloc();
    v121[0] = v115;
    *v22 = 136315138;
    v23 = v18;
    v116 = v8;
    v24 = v23;
    v25 = [v23 description];
    v113 = v20;
    v26 = v13;
    v27 = a4;
    v28 = v7;
    v29 = v25;
    v30 = sub_26932D770();
    v32 = v31;

    v8 = v116;
    v7 = v28;
    a4 = v27;
    v13 = v26;
    v33 = sub_2692DD5A8(v30, v32, v121);

    v34 = v114;
    *(v114 + 1) = v33;
    _os_log_impl(&dword_2692D8000, v19, v113, "Searching alarm from device context %s", v34, 0xCu);
    v35 = v115;
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    MEMORY[0x26D639280](v35, -1, -1);
    MEMORY[0x26D639280](v34, -1, -1);
  }

  v36 = v119;
  if (!v119[2] || (v37 = sub_2693241C0(v13), (v38 & 1) == 0))
  {
    v69 = v120;
    (*(v8 + 2))(v120, v13, v7);
    v70 = sub_26932D690();
    v71 = sub_26932D9A0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v119 = a4;
      v74 = v73;
      v121[0] = v73;
      *v72 = 136315138;
      sub_269308954(&qword_280308630);
      v75 = sub_26932DDD0();
      v76 = v69;
      v78 = v77;
      v116 = v13;
      v79 = *(v8 + 1);
      v79(v76, v7);
      v80 = sub_2692DD5A8(v75, v78, v121);

      *(v72 + 4) = v80;
      _os_log_impl(&dword_2692D8000, v70, v71, "Unable to find device for fetched alarms: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      v81 = v74;
      a4 = v119;
      MEMORY[0x26D639280](v81, -1, -1);
      MEMORY[0x26D639280](v72, -1, -1);

      v79(v116, v7);
    }

    else
    {

      v96 = *(v8 + 1);
      v96(v69, v7);
      v96(v13, v7);
    }

LABEL_24:
    *a4 = 0u;
    a4[1] = 0u;
    return;
  }

  v39 = *(v36[7] + 8 * v37);
  v40 = v117;
  v41 = [v117 serializedContextByKey];
  if (v41)
  {
    v42 = v41;
    v119 = a4;
    v120 = v39;
    v43 = sub_26932D720();

    v44 = *MEMORY[0x277CEEFC0];
    v45 = sub_26932D770();
    if (*(v43 + 16))
    {
      v47 = sub_269324148(v45, v46);
      v49 = v48;

      if (v49)
      {
        v116 = v13;
        sub_2692DDEB4(*(v43 + 56) + 32 * v47, v121);

        v50 = objc_allocWithZone(MEMORY[0x277CEF1F0]);
        __swift_project_boxed_opaque_existential_1(v121, v121[3]);
        v51 = [v50 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        v52 = v51;
        v53 = sub_26932D690();
        v54 = sub_26932D9B0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&dword_2692D8000, v53, v54, "fetchAlarmContexts() alarmSnapshot = %@", v55, 0xCu);
          sub_2692EB48C(v56, &qword_280308540, &unk_269330740);
          MEMORY[0x26D639280](v56, -1, -1);
          MEMORY[0x26D639280](v55, -1, -1);
        }

        v58 = [v52 alarmsByID];
        if (v58)
        {
          v59 = v58;
          sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
          sub_269308954(&qword_2814B2658);
          v60 = sub_26932D720();

          if (*(v60 + 16))
          {

            sub_269303A90(v61, &qword_280308430, 0x277CEF1E8, &qword_280308640, sub_269306AC4);
            v63 = v62;
            v64 = v120;
            v65 = sub_269301B4C(v64, v118, sub_269308D0C);
            v67 = v66;

            __swift_destroy_boxed_opaque_existential_1Tm(v121);
            (*(v8 + 1))(v116, v7);
            v68 = v119;
            *v119 = v64;
            v68[1] = v63;
            v68[2] = v65;
            v68[3] = v67;
            return;
          }
        }

        v106 = v117;
        v107 = sub_26932D690();
        v108 = sub_26932D9B0();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *v109 = 138412290;
          *(v109 + 4) = v106;
          *v110 = v106;
          v111 = v106;
          _os_log_impl(&dword_2692D8000, v107, v108, "Didn't find any alarms on device: %@", v109, 0xCu);
          sub_2692EB48C(v110, &qword_280308540, &unk_269330740);
          MEMORY[0x26D639280](v110, -1, -1);
          MEMORY[0x26D639280](v109, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v121);
        (*(v8 + 1))(v116, v7);
        v105 = 0uLL;
        v104 = v119;
        goto LABEL_35;
      }

      v40 = v117;
    }

    else
    {
    }

    v97 = v40;
    v98 = sub_26932D690();
    v99 = sub_26932D9A0();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      *(v100 + 4) = v97;
      *v101 = v97;
      v102 = v97;
      _os_log_impl(&dword_2692D8000, v98, v99, "Failed to get snapshot data from %@", v100, 0xCu);
      sub_2692EB48C(v101, &qword_280308540, &unk_269330740);
      MEMORY[0x26D639280](v101, -1, -1);
      MEMORY[0x26D639280](v100, -1, -1);
      v103 = v120;
    }

    else
    {
      v103 = v98;
      v98 = v120;
    }

    v104 = v119;

    (*(v8 + 1))(v13, v7);
    v105 = 0uLL;
LABEL_35:
    *v104 = v105;
    v104[1] = v105;
    return;
  }

  __break(1u);
}

void sub_269303A90(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = *(a1 + 16);
  v11 = sub_269308AA4(0, a2, a3);
  v12 = sub_2693089B8(a4, a2, a3);
  v13 = 0;
  v20[1] = MEMORY[0x26D638600](v10, v11, v12);
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    a5(v20, *(*(a1 + 56) + ((v18 << 9) | (8 * v19))));
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t SiriTimeDeviceContextProvider.fetchTimerContexts()()
{
  v1[15] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = sub_26932BFA0();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269303CDC, 0, 0);
}

uint64_t sub_269303CDC()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308608, &qword_269330660);
  *v4 = v0;
  v4[1] = sub_269303DE4;

  return MEMORY[0x2822007B8](v0 + 12, 0, 0, 0xD000000000000014, 0x80000002693366A0, sub_2693083F4, v2, v5);
}

uint64_t sub_269303DE4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269303EFC, 0, 0);
}

uint64_t sub_269303EFC()
{
  v1 = v0[12];
  v0[24] = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[25] = v2; v2; v0[25] = v2)
  {
    v3 = 0;
    v4 = v0[20];
    v58 = v1 & 0xFFFFFFFFFFFFFF8;
    v59 = v1 & 0xC000000000000001;
    v55 = (v4 + 56);
    v5 = (v4 + 48);
    v6 = MEMORY[0x277D84F90];
    v53 = v4;
    v54 = (v4 + 32);
    v56 = v2;
    v57 = v1;
    while (v59)
    {
      v7 = MEMORY[0x26D638850](v3);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v0[16];
        v12 = v10;
        sub_26932BF80();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = v0[18];
      v14 = v0[19];
      v17 = v0[16];
      v16 = v0[17];
      (*v55)(v17, v13, 1, v14);
      sub_269302F40(v17, v16);
      sub_269302F40(v16, v15);

      if ((*v5)(v15, 1, v14) == 1)
      {
        sub_2692EB48C(v0[18], &qword_280308110, &qword_26932EBD0);
      }

      else
      {
        v18 = *v54;
        (*v54)(v0[21], v0[18], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2692E30A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_2692E30A8(v19 > 1, v20 + 1, 1, v6);
        }

        v21 = v0[21];
        v22 = v0[19];
        *(v6 + 2) = v20 + 1;
        v18(&v6[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20], v21, v22);
      }

      v1 = v57;
      ++v3;
      if (v8 == v56)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v58 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(v1 + 8 * v3 + 32);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v23 = v1;
    v2 = sub_26932DAE0();
    v1 = v23;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v0[26] = v6;
  v24 = sub_26932D5C0();
  v0[27] = v24;
  v25 = sub_26932D5A0();
  v26 = MEMORY[0x277D61F10];
  v0[5] = v24;
  v0[6] = v26;
  v0[2] = v25;
  if (*(v6 + 2))
  {
    v27 = swift_task_alloc();
    v0[28] = v27;
    *(v27 + 16) = v0 + 2;
    *(v27 + 24) = v6;
    v28 = *(MEMORY[0x277D859E0] + 4);
    v29 = swift_task_alloc();
    v0[29] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v29 = v0;
    v29[1] = sub_2693044CC;
    v31 = sub_269308D2C;
    v32 = v0 + 13;
    v33 = 0x8000000269336660;
    v34 = 0xD000000000000017;
LABEL_28:

    return MEMORY[0x2822007B8](v32, 0, 0, v34, v33, v31, v27, v30);
  }

  v35 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  v0[30] = v35;
  sub_269306A68((v0 + 2));
  if (*(v35 + 16))
  {
    v36 = v0[27];
    v37 = sub_26932D5A0();
    v0[10] = v36;
    v0[11] = v26;
    v0[7] = v37;
    v27 = swift_task_alloc();
    v0[31] = v27;
    *(v27 + 16) = v0 + 7;
    v38 = *(MEMORY[0x277D859E0] + 4);
    v39 = swift_task_alloc();
    v0[32] = v39;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v39 = v0;
    v39[1] = sub_269304850;
    v31 = sub_269308D30;
    v32 = v0 + 14;
    v34 = 0xD00000000000001ELL;
    v33 = 0x8000000269336680;
    goto LABEL_28;
  }

  v40 = v0[26];
  v41 = v0[24];

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v42 = sub_26932D6B0();
  __swift_project_value_buffer(v42, qword_2814B23C0);
  v43 = sub_26932D690();
  v44 = sub_26932D9A0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2692D8000, v43, v44, "Failed to fetch device units for alarm contexts", v45, 2u);
    MEMORY[0x26D639280](v45, -1, -1);
  }

  v46 = v0[21];
  v47 = v0[17];
  v48 = v0[18];
  v49 = v0[16];

  v50 = v0[1];
  v51 = MEMORY[0x277D84F90];

  return v50(v51);
}

uint64_t sub_2693044CC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2693045E4, 0, 0);
}

uint64_t sub_2693045E4()
{
  v1 = v0[13];
  v0[30] = v1;
  sub_269306A68((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = sub_26932D5A0();
    v4 = MEMORY[0x277D61F10];
    v0[10] = v2;
    v0[11] = v4;
    v0[7] = v3;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *(v5 + 16) = v0 + 7;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[32] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v7 = v0;
    v7[1] = sub_269304850;

    return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269308D30, v5, v8);
  }

  else
  {
    v9 = v0[26];
    v10 = v0[24];

    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_2814B23C0);
    v12 = sub_26932D690();
    v13 = sub_26932D9A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2692D8000, v12, v13, "Failed to fetch device units for alarm contexts", v14, 2u);
      MEMORY[0x26D639280](v14, -1, -1);
    }

    v15 = v0[21];
    v16 = v0[17];
    v17 = v0[18];
    v18 = v0[16];

    v19 = v0[1];
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_269304850()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269304968, 0, 0);
}

uint64_t sub_269304968()
{
  v41 = v0;
  v1 = v0[25];
  v36 = v0[14];
  sub_269306A68((v0 + 7));
  if (v1)
  {
    v2 = 0;
    v3 = v0[24];
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 & 0xC000000000000001;
    v33 = v3 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v35)
      {
        v5 = MEMORY[0x26D638850](v2, v0[24]);
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v33 + 8 * v2);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = v0[30];
      v37 = v5;
      sub_2693050F4(&v37, v8, v36, &v38);

      v9 = v38;
      v11 = v39;
      v10 = v40;
      if (v38)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2692E32AC(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        v14 = v4;
        if (v13 >= v12 >> 1)
        {
          v14 = sub_2692E32AC((v12 > 1), v13 + 1, 1, v4);
        }

        *(v14 + 2) = v13 + 1;
        v4 = v14;
        v15 = &v14[32 * v13];
        *(v15 + 2) = v9;
        *(v15 + 6) = v11;
        *(v15 + 7) = v10;
      }

      else
      {
        sub_269308434(0);
      }

      ++v2;
      if (v7 == v0[25])
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_17:
  v16 = v0[30];
  v17 = v0[26];
  v18 = v0[24];

  if (qword_2814B23B8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v19 = sub_26932D6B0();
  __swift_project_value_buffer(v19, qword_2814B23C0);

  v20 = sub_26932D690();
  v21 = sub_26932D9B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v38 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x26D638530](v4, &type metadata for HALTimerDeviceContext);
    v26 = sub_2692DD5A8(v24, v25, &v38);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2692D8000, v20, v21, "fetchTimerContexts() got firing timers context: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D639280](v23, -1, -1);
    MEMORY[0x26D639280](v22, -1, -1);
  }

  v27 = v0[21];
  v29 = v0[17];
  v28 = v0[18];
  v30 = v0[16];

  v31 = v0[1];

  return v31(v4);
}

uint64_t sub_269304CAC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v20[2] = a4;
  v20[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308638, &unk_269330750);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = a2[3];
  v20[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308628, &qword_269330738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EEA0;
  v15 = *a3;
  *(inited + 32) = sub_26932D770();
  *(inited + 40) = v16;
  sub_269314CA4(inited);
  swift_setDeallocating();
  sub_269308884(inited + 32);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v17, v12, v8);
  sub_26932D480();
}

uint64_t sub_269304E84(unint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a1)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      v13 = a3;
      v14 = a4;
      v15 = sub_26932DAE0();
      a4 = v14;
      a3 = v13;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = a3;
      v7 = qword_2814B23B8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_26932D6B0();
      __swift_project_value_buffer(v8, qword_2814B23C0);

      v9 = sub_26932D690();
      v10 = sub_26932D9B0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        if (v5)
        {
          v12 = sub_26932DAE0();
        }

        else
        {
          v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v11 + 4) = v12;

        _os_log_impl(&dword_2692D8000, v9, v10, v6, v11, 0xCu);
        MEMORY[0x26D639280](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_18;
    }
  }

  v16 = a4;
  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v17 = sub_26932D6B0();
  __swift_project_value_buffer(v17, qword_2814B23C0);
  v18 = sub_26932D690();
  v19 = sub_26932D9A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2692D8000, v18, v19, v16, v20, 2u);
    MEMORY[0x26D639280](v20, -1, -1);
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308638, &unk_269330750);
  return sub_26932D8E0();
}

void sub_2693050F4(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v123 = a2;
  v125 = a4;
  v8 = sub_26932BFA0();
  v9 = *(v8 - 1);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v116 - v14;
  v16 = *a1;
  v17 = [v16 identifier];
  if (!v17)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v40 = sub_26932D6B0();
    __swift_project_value_buffer(v40, qword_2814B23C0);
    v41 = v16;
    v42 = sub_26932D690();
    v43 = sub_26932D9A0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v124[0] = v45;
      *v44 = 136315138;
      v46 = v41;
      v47 = [v46 description];
      v48 = sub_26932D770();
      v50 = v49;

      v51 = sub_2692DD5A8(v48, v50, v124);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_2692D8000, v42, v43, "Device had invalid UUID for fetched timers: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x26D639280](v45, -1, -1);
      MEMORY[0x26D639280](v44, -1, -1);
    }

    goto LABEL_24;
  }

  v119 = a3;
  v18 = v17;
  sub_26932BF80();

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v19 = sub_26932D6B0();
  v20 = __swift_project_value_buffer(v19, qword_2814B23C0);
  v21 = v16;
  v22 = sub_26932D690();
  v23 = sub_26932D9B0();

  v24 = os_log_type_enabled(v22, v23);
  v120 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v117 = v13;
    v26 = v25;
    v116 = swift_slowAlloc();
    v124[0] = v116;
    *v26 = 136315138;
    v27 = v21;
    v121 = v9;
    v28 = v27;
    v29 = [v27 description];
    v122 = v15;
    v30 = v29;
    v31 = v8;
    v32 = sub_26932D770();
    v118 = v20;
    v33 = v23;
    v35 = v34;

    v9 = v121;
    v36 = v32;
    v8 = v31;
    v5 = v4;
    v37 = sub_2692DD5A8(v36, v35, v124);

    *(v26 + 4) = v37;
    v15 = v122;
    _os_log_impl(&dword_2692D8000, v22, v33, "Searching timer from device context %s", v26, 0xCu);
    v38 = v116;
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    MEMORY[0x26D639280](v38, -1, -1);
    v39 = v26;
    v13 = v117;
    MEMORY[0x26D639280](v39, -1, -1);
  }

  v52 = v123;
  if (!*(v123 + 16) || (v53 = sub_2693241C0(v15), (v54 & 1) == 0))
  {
    v123 = v5;
    (v9[2])(v13, v15, v8);
    v86 = sub_26932D690();
    v87 = sub_26932D9A0();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v8;
      v89 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v124[0] = v121;
      *v89 = 136315138;
      sub_269308954(&qword_280308630);
      v90 = sub_26932DDD0();
      v122 = v15;
      v92 = v91;
      v93 = v9[1];
      v93(v13, v88);
      v94 = sub_2692DD5A8(v90, v92, v124);

      *(v89 + 4) = v94;
      _os_log_impl(&dword_2692D8000, v86, v87, "Unable to find device for fetched timers: %s", v89, 0xCu);
      v95 = v121;
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x26D639280](v95, -1, -1);
      MEMORY[0x26D639280](v89, -1, -1);

      v93(v122, v88);
    }

    else
    {

      v96 = v9[1];
      v96(v13, v8);
      v96(v15, v8);
    }

LABEL_24:
    v97 = v125;
    *v125 = 0u;
    v97[1] = 0u;
    return;
  }

  v121 = v9;
  v55 = *(*(v52 + 56) + 8 * v53);
  v56 = [v120 serializedContextByKey];
  if (!v56)
  {
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = sub_26932D720();

  v59 = *MEMORY[0x277CEEFF8];
  v60 = sub_26932D770();
  if (!*(v58 + 16))
  {

LABEL_27:
    v98 = v55;
    v99 = sub_26932D690();
    v100 = sub_26932D9A0();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = v15;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      *(v102 + 4) = v98;
      *v103 = v98;
      v104 = v98;
      _os_log_impl(&dword_2692D8000, v99, v100, "Failed to get timer snapshot data from %@", v102, 0xCu);
      sub_2692EB48C(v103, &qword_280308540, &unk_269330740);
      MEMORY[0x26D639280](v103, -1, -1);
      v105 = v102;
      v15 = v101;
      MEMORY[0x26D639280](v105, -1, -1);
    }

    else
    {
      v104 = v99;
      v99 = v98;
    }

    v106 = v125;

    (v121[1])(v15, v8);
    *v106 = 0u;
    v106[1] = 0u;
    return;
  }

  v122 = v55;
  v62 = sub_269324148(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {

    v55 = v122;
    goto LABEL_27;
  }

  v120 = v8;
  v123 = v5;
  sub_2692DDEB4(*(v58 + 56) + 32 * v62, v124);

  v65 = objc_allocWithZone(MEMORY[0x277CEF208]);
  __swift_project_boxed_opaque_existential_1(v124, v124[3]);
  v66 = [v65 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  v67 = v66;
  v68 = sub_26932D690();
  v69 = sub_26932D9B0();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v67;
    *v71 = v67;
    v72 = v67;
    _os_log_impl(&dword_2692D8000, v68, v69, "fetchTimerContexts() timerSnapshot = %@", v70, 0xCu);
    sub_2692EB48C(v71, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v71, -1, -1);
    MEMORY[0x26D639280](v70, -1, -1);
  }

  v73 = [v67 timersByID];
  if (v73)
  {
    v74 = v73;
    sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
    sub_269308954(&qword_2814B2658);
    v75 = v120;
    v76 = sub_26932D720();

    if (*(v76 + 16))
    {

      sub_269303A90(v77, &qword_2814B2328, 0x277CEF200, &qword_2814B2320, sub_269306CFC);
      v79 = v78;
      v80 = v122;
      v81 = sub_269301B4C(v80, v119, sub_269308998);
      v82 = v15;
      v84 = v83;

      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      (v121[1])(v82, v75);
      v85 = v125;
      *v125 = v80;
      v85[1] = v79;
      v85[2] = v81;
      v85[3] = v84;
      return;
    }
  }

  v107 = v122;
  v108 = sub_26932D690();
  v109 = sub_26932D9B0();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = v15;
    v112 = swift_slowAlloc();
    *v110 = 138412290;
    *(v110 + 4) = v107;
    *v112 = v107;
    v113 = v107;
    _os_log_impl(&dword_2692D8000, v108, v109, "Didn't find any timers on device: %@", v110, 0xCu);
    sub_2692EB48C(v112, &qword_280308540, &unk_269330740);
    v114 = v112;
    v15 = v111;
    MEMORY[0x26D639280](v114, -1, -1);
    MEMORY[0x26D639280](v110, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  (v121[1])(v15, v120);
  v115 = v125;
  *v125 = 0u;
  v115[1] = 0u;
}

uint64_t sub_269305C30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_269305D28;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000010, 0x80000002693366C0, sub_269308480, v2, v5);
}

uint64_t sub_269305D28()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269305E40, 0, 0);
}

uint64_t sub_269305E58(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = a2[3];
  v16[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308628, &qword_269330738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EEA0;
  v11 = *MEMORY[0x277CEEFE0];
  *(inited + 32) = sub_26932D770();
  *(inited + 40) = v12;
  sub_269314CA4(inited);
  swift_setDeallocating();
  sub_269308884(inited + 32);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v8, v4);
  sub_26932D480();
}

void sub_269306044(unint64_t a1)
{
  if (!a1)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B23C0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_40;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "SharedContextProvider#fetchDeviceContexts Got nil context array, returning nil...";
    goto LABEL_39;
  }

  if (qword_2814B23B8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_2814B23C0);

  v3 = sub_26932D690();
  v4 = sub_26932D9B0();
  v5 = a1 >> 62;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5)
    {
      v7 = sub_26932DAE0();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_2692D8000, v3, v4, "SharedContextProvider#fetchDeviceContexts Got media context for %ld devices...", v6, 0xCu);
    MEMORY[0x26D639280](v6, -1, -1);
  }

  else
  {
  }

  if (v5)
  {
    v13 = sub_26932DAE0();
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_37:
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (!os_log_type_enabled(v9, v10))
    {
LABEL_40:

      LOBYTE(v38[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
      sub_26932D8E0();
      return;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Not found primary device in deviceContexts";
LABEL_39:
    _os_log_impl(&dword_2692D8000, v9, v10, v12, v11, 2u);
    MEMORY[0x26D639280](v11, -1, -1);
    goto LABEL_40;
  }

LABEL_14:
  v14 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D638850](v14, a1);
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v15 proximity] == 4000)
    {
      break;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_37;
    }
  }

  v18 = [v16 serializedContextByKey];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_26932D720();

  v21 = *MEMORY[0x277CEEFE0];
  v22 = sub_26932D770();
  if (*(v20 + 16))
  {
    v24 = sub_269324148(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_2692DDEB4(*(v20 + 56) + 32 * v24, v38);

      v27 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      v28 = [v27 initWithSerializedBackingStore_];
      swift_unknownObjectRelease();
      v29 = v28;
      v30 = sub_26932D690();
      v31 = sub_26932D990();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_2692D8000, v30, v31, "SharedContextProvider#fetchDeviceContexts serializedContextSnapshots: %@", v32, 0xCu);
        sub_2692EB48C(v33, &qword_280308540, &unk_269330740);
        MEMORY[0x26D639280](v33, -1, -1);
        MEMORY[0x26D639280](v32, -1, -1);
      }

      [v29 playbackState];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
      sub_26932D8E0();

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      return;
    }
  }

  else
  {
  }

  v35 = sub_26932D690();
  v36 = sub_26932D9B0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2692D8000, v35, v36, "SharedContextProvider#fetchDeviceContexts no playback state found for media context", v37, 2u);
    MEMORY[0x26D639280](v37, -1, -1);
  }

  LOBYTE(v38[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
  sub_26932D8E0();
}

uint64_t sub_26930661C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693066A8;

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_2693066A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2693067A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269308D28;

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_269306850()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_269306948;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000010, 0x80000002693366C0, sub_269308D34, v2, v5);
}

uint64_t sub_269306948()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269308D38, 0, 0);
}

uint64_t sub_269306AC4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26932DAF0();

    if (v9)
    {

      sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_26932DAE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2693071EC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2692F1DA8(v22 + 1);
    }

    v20 = v8;
    sub_2692F2AE0();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
  v11 = *(v6 + 40);
  v12 = sub_26932D9E0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2693075CC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_26932D9F0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}