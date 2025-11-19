unint64_t sub_26128C93C()
{
  result = qword_27FEA2B00[0];
  if (!qword_27FEA2B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2B00);
  }

  return result;
}

unint64_t sub_26128C994()
{
  result = qword_27FEA2C10;
  if (!qword_27FEA2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA2C10);
  }

  return result;
}

unint64_t sub_26128C9EC()
{
  result = qword_27FEA2C18[0];
  if (!qword_27FEA2C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2C18);
  }

  return result;
}

size_t sub_26128CA40(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F620, &qword_2613A57B0);
  v10 = *(sub_26139EF7C() - 8);
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
  v15 = *(sub_26139EF7C() - 8);
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

uint64_t sub_26128CC18(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26128CD0C;

  return v6(v2 + 32);
}

uint64_t sub_26128CD0C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26128CE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002613B90D0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002613B90F0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002613B9110 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9130 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x436C6172656E6567 && a2 == 0xEF61746144647261 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496B656BLL && a2 == 0xE500000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_2613A241C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613B9150 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69757165526E6970 && a2 == 0xEB00000000646572 || (sub_2613A241C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C757365526D7663 && a2 == 0xEF34366573614274 || (sub_2613A241C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_2613A241C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9170 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002613B9190 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x626C6C6146726F66 && a2 == 0xEB000000006B6361 || (sub_2613A241C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEE00746E756F6D41 || (sub_2613A241C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002613B91B0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002613B91D0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002613B91F0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B9210 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7954707041796170 && a2 == 0xEA00000000006570)
  {

    return 22;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_26128D550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_26139F13C();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26128D698(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_26128A380(isUniquelyReferenced_nonNull_native, v11, 1, v4, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    *v2 = v4;
  }

  result = sub_26128D550(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26128D77C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261262AA4;

  return sub_261287E28(a1, v5, v6, v4);
}

uint64_t sub_26128D81C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261265144;

  return sub_26128CC18(a1, v5);
}

unint64_t sub_26128D8D4()
{
  result = qword_27FE9F630;
  if (!qword_27FE9F630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F630);
  }

  return result;
}

uint64_t sub_26128D920()
{
  v1 = *(sub_26139F13C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2612875D4(v0 + v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26128D9C4()
{
  result = qword_27FE9F4B8;
  if (!qword_27FE9F4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE9F640, &unk_2613AA600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4B8);
  }

  return result;
}

uint64_t sub_26128DA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContainer();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26128DA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26128DAD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2613A189C();
  v5 = [a1 valueForEntitlement_];

  if (v5)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v25 = 0;
LABEL_9:
  v6 = sub_2613A189C();
  v7 = [a1 valueForEntitlement_];

  if (v7)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v24 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v24 = 0;
LABEL_17:
  v8 = sub_2613A189C();
  v9 = [a1 valueForEntitlement_];

  if (v9)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v26;
      goto LABEL_25;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v23 = 0;
LABEL_25:
  v10 = sub_2613A189C();
  v11 = [a1 valueForEntitlement_];

  if (v11)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v22 = v26;
      goto LABEL_33;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v22 = 0;
LABEL_33:
  v12 = sub_2613A189C();
  v13 = [a1 &selRef:v12 set:? appleIDContext:?];

  if (v13)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = v26;
      goto LABEL_41;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v14 = 0;
LABEL_41:
  v15 = sub_2613A189C();
  v16 = [a1 &selRef:v15 set:? appleIDContext:?];

  if (v16)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v26;
      goto LABEL_49;
    }
  }

  else
  {
    sub_26128E064(&v29);
  }

  v17 = 0;
LABEL_49:
  v18 = sub_2613A189C();
  v19 = [a1 &selRef:v18 set:? appleIDContext:?];

  if (v19)
  {
    sub_2613A202C();

    swift_unknownObjectRelease();
  }

  else
  {

    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    result = sub_26128E064(&v29);
    goto LABEL_56;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_56:
    v21 = 0;
    goto LABEL_57;
  }

  v21 = v26;
LABEL_57:
  *a2 = 0xD000000000000043;
  *(a2 + 8) = 0x80000002613B92C0;
  *(a2 + 16) = 0xD00000000000002ALL;
  *(a2 + 24) = 0x80000002613B9310;
  *(a2 + 32) = 0xD000000000000030;
  *(a2 + 40) = 0x80000002613B9340;
  *(a2 + 48) = 0xD000000000000030;
  *(a2 + 56) = 0x80000002613B9380;
  *(a2 + 64) = 0xD000000000000030;
  *(a2 + 72) = 0x80000002613B93C0;
  *(a2 + 80) = v25;
  *(a2 + 81) = v24;
  *(a2 + 82) = v23;
  *(a2 + 83) = v22;
  *(a2 + 84) = v14;
  *(a2 + 85) = v17;
  *(a2 + 86) = v21;
  return result;
}

uint64_t sub_26128E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00C0, &unk_2613A44B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy87_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26128E0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 87))
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

uint64_t sub_26128E138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 86) = 0;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 87) = 1;
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

    *(result + 87) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26128E1A8()
{
  type metadata accessor for DBExclusiveAccessCoordinator();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x277D84F90];
  qword_27FEAEC70 = v0;
  return result;
}

uint64_t *sub_26128E1F4()
{
  if (qword_27FEA2CA0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEC70;
}

uint64_t sub_26128E244()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26128E2E0);
}

uint64_t sub_26128E2E0()
{
  v1 = v0[2];
  if (*(v1 + 112))
  {
    sub_26128EDF8();
    v2 = *(MEMORY[0x277D859E0] + 4);
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_26128E530;
    v4 = v0[2];

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v5 = v0[3];
    v6 = sub_26129B7C4();
    sub_26124AA44(v6, v5);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124D0CC(v0[3]);
    }

    else
    {
      v9 = v0[3];
      v10 = sub_2613A122C();
      v11 = sub_2613A1D7C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_261243000, v10, v11, "[ExclusiveAccess] access given", v12, 2u);
        MEMORY[0x266701350](v12, -1, -1);
      }

      v13 = v0[3];

      (*(v8 + 8))(v13, v7);
    }

    *(v1 + 112) = 1;
    v14 = v0[3];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_26128E530()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26128E640);
}

uint64_t sub_26128E640()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26128E6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_26129B7C4();
  sub_26124AA44(v13, v12);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124D0CC(v12);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D7C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = a1;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "[ExclusiveAccess] waiting in the queue", v18, 2u);
      v20 = v19;
      a1 = v27;
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
  }

  (*(v5 + 16))(v8, a1, v4);
  v21 = *(a2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_26128EE78(0, v21[2] + 1, 1, v21);
    *(a2 + 120) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_26128EE78(v23 > 1, v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  result = (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v8, v4);
  *(a2 + 120) = v21;
  return result;
}

uint64_t sub_26128E978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = v0 + 120;
  v14 = *(*(v0 + 120) + 16);
  v15 = sub_26129B7C4();
  if (v14)
  {
    sub_26124AA44(v15, v10);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      result = sub_26124D0CC(v10);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D7C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "[ExclusiveAccess] access given to the first in queue", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      result = (*(v17 + 8))(v10, v16);
    }

    if (*(*v13 + 16))
    {
      (*(v2 + 16))(v5, *v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      sub_26128F1BC(0, 1);
      sub_2613A1BDC();
      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_26124AA44(v15, v12);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v12, 1, v19) == 1)
    {
      result = sub_26124D0CC(v12);
      *(v0 + 112) = 0;
    }

    else
    {
      v24 = v0;
      v25 = sub_2613A122C();
      v26 = sub_2613A1D7C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "[ExclusiveAccess] empty queue", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      result = (*(v20 + 8))(v12, v19);
      *(v24 + 112) = 0;
    }
  }

  return result;
}

uint64_t sub_26128ED2C()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_26128ED64()
{
  if (qword_27FEA2CA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26128EDC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DBExclusiveAccessCoordinator();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_26128EDF8()
{
  result = qword_27FE9F730;
  if (!qword_27FE9F730)
  {
    type metadata accessor for DBExclusiveAccessCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F730);
  }

  return result;
}

size_t sub_26128EE78(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F740, &unk_2613A58F0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850) - 8);
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

unint64_t sub_26128F068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F738, &qword_2613A5850);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_26128F1BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_26128EE78(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_26128F068(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_26128F280(unsigned __int8 a1)
{
  if (a1 <= 7u)
  {
    goto LABEL_2;
  }

  if (a1 <= 9u)
  {
    if (a1 == 8)
    {
      return 6385965;
    }

    return 0;
  }

  if (a1 == 10)
  {
    return 0x65676174732DLL;
  }

  if (a1 != 11)
  {
    return 0;
  }

LABEL_2:
  MEMORY[0x2666FFEA0](45, 0xE100000000000000);
  sub_2613A21FC();
  return 0;
}

uint64_t sub_26128F34C(char a1)
{
  result = 7759204;
  switch(a1)
  {
    case 1:
      result = 24945;
      break;
    case 2:
      result = 3236209;
      break;
    case 3:
      result = 3301745;
      break;
    case 4:
      result = 3367281;
      break;
    case 5:
      result = 3432817;
      break;
    case 6:
      result = 3498353;
      break;
    case 7:
      result = 3563889;
      break;
    case 8:
      result = 0x74656B72616D6171;
      break;
    case 9:
      result = 0x7466617264;
      break;
    case 10:
      result = 0x676E6967617473;
      break;
    case 11:
      result = 1953654115;
      break;
    case 12:
      result = 1685025392;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26128F458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261291AB4();
  *a2 = result;
  return result;
}

uint64_t sub_26128F488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26128F34C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26128F574()
{
  v1 = *v0;
  sub_2613A256C();
  sub_26128F34C(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26128F5D8()
{
  sub_26128F34C(*v0);
  sub_2613A19DC();
}

uint64_t sub_26128F62C()
{
  v1 = *v0;
  sub_2613A256C();
  sub_26128F34C(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26128F68C(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if (v3 & 1) == 0 && (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
    v5 = [v4 aa_primaryAppleAccount];

    if (v5 && (v6 = [v5 aa_isSandboxAccount], v5, (v6 & 1) != 0))
    {
      v7 = 11;
    }

    else if (sub_261291BBC())
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }

    goto LABEL_20;
  }

  v8 = sub_2613A0D9C();
  v10 = v9;
  v11 = sub_2613A0CDC();
  sub_261291B00(v8, v10, v11);

  v56 = sub_26124C7CC();
  v52 = MEMORY[0x277D837D0];
  v54 = v56;
  sub_2613A1FFC();

  sub_2613A196C();

  v12 = sub_261291AB4();
  if (v12 == 13)
  {
    v7 = 0;
  }

  else
  {
    v7 = v12;
  }

  if (sub_26128F34C(v7) == 7759204 && v13 == 0xE300000000000000)
  {

    goto LABEL_16;
  }

  v15 = sub_2613A241C();

  if (v15)
  {
LABEL_16:
    v7 = 4;
  }

LABEL_20:
  v16 = sub_2613A0C2C();
  v24 = v16(v16, v17, v18, v19, v20, v21, v22, v23, v52, v54);

  if (v24)
  {
    v25 = sub_2613A0DBC();
    v27 = v26;
    v28 = sub_2613A0CEC();
    sub_261291B00(v25, v27, v28);

    v57 = sub_26124C7CC();
    v53 = MEMORY[0x277D837D0];
    v55 = v57;
    sub_2613A1FFC();

    sub_2613A196C();

    v29 = sub_261291AB4();
    if (v29 == 13)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    v31 = v30 << 8;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
    v33 = [v32 aa_primaryAppleAccount];

    if (v33 && (v34 = [v33 aa_isSandboxAccount], v33, (v34 & 1) != 0))
    {
      v31 = 2304;
    }

    else
    {
      v31 = 3072;
    }
  }

  v35 = sub_2613A0C2C();
  v43 = v35(v35, v36, v37, v38, v39, v40, v41, v42, v53, v55);

  if (v43)
  {
    v44 = sub_2613A0DAC();
    v46 = v45;
    v47 = sub_2613A0CAC();
    sub_261291B00(v44, v46, v47);

    sub_26124C7CC();
    sub_2613A1FFC();

    sub_2613A196C();

    v48 = sub_261291AB4();
    if (v48 == 13)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    v50 = v49 << 16;
  }

  else
  {
    v50 = 786432;
  }

  return v31 | v7 | v50;
}

uint64_t sub_26128FAFC@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_26139EF7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  type metadata accessor for Mock();
  v20 = sub_26129B1A8(a1);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v50 = a2;
    v53[0] = v20;
    v53[1] = v21;
    v51 = 0x2F2F3A7370747468;
    v52 = 0xE800000000000000;
    sub_26124C7CC();
    if ((sub_2613A201C() & 1) == 0)
    {

      goto LABEL_9;
    }

    sub_26139EF5C();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F220, qword_2613A5530);
LABEL_9:
      v23 = 1;
      a2 = v50;
      return (*(v13 + 56))(a2, v23, 1, v12);
    }

    v24 = *(v13 + 32);
    v24(v19, v11, v12);
    v25 = sub_26129B7C4();
    sub_26124AA44(v25, v7);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v49 = v24;
      (*(v13 + 16))(v17, v19, v12);
      v28 = sub_2613A122C();
      v48 = sub_2613A1D7C();
      if (os_log_type_enabled(v28, v48))
      {
        v29 = swift_slowAlloc();
        v45 = v26;
        v30 = v29;
        v47 = swift_slowAlloc();
        v53[0] = v47;
        *v30 = 136315394;
        v31 = sub_2612D41F8(a1);
        v46 = v28;
        v33 = sub_26124C11C(v31, v32, v53);

        v34 = v30;
        v44 = v30;
        v26 = v45;
        *(v34 + 1) = v33;
        *(v34 + 6) = 2080;
        sub_261291DF0();
        v35 = sub_2613A23EC();
        v37 = v36;
        (*(v13 + 8))(v17, v12);
        v38 = sub_26124C11C(v35, v37, v53);

        v39 = v44;
        *(v44 + 14) = v38;
        v40 = v46;
        _os_log_impl(&dword_261243000, v46, v48, "Using override URL for %s: %s", v39, 0x16u);
        v41 = v47;
        swift_arrayDestroy();
        MEMORY[0x266701350](v41, -1, -1);
        MEMORY[0x266701350](v39, -1, -1);
      }

      else
      {

        (*(v13 + 8))(v17, v12);
      }

      (*(v27 + 8))(v7, v26);
      v24 = v49;
    }

    a2 = v50;
    v24(v50, v19, v12);
    v23 = 0;
  }

  else
  {

    v23 = 1;
  }

  return (*(v13 + 56))(a2, v23, 1, v12);
}

uint64_t sub_261290024(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  result = 7759204;
  switch(v2)
  {
    case 1:
      result = 24945;
      break;
    case 2:
      result = 3236209;
      break;
    case 3:
      result = 3301745;
      break;
    case 4:
      result = 3367281;
      break;
    case 5:
      result = 3432817;
      break;
    case 6:
      result = 3498353;
      break;
    case 7:
      result = 3563889;
      break;
    case 8:
      result = 0x74656B72616D6171;
      break;
    case 9:
      result = 0x7466617264;
      break;
    case 10:
      result = 0x676E6967617473;
      break;
    case 11:
      result = 1953654115;
      break;
    case 12:
      result = 1685025392;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26129017C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000012;
  v13 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129035C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000012;
  v13 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129053C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000012;
  v13 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_26129071C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000012;
  v13 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_2612908FC(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000012;
  v13 = 0x80000002613B94D0;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

unint64_t sub_261290B0C()
{
  v1 = *v0;
  sub_2613A211C();

  v2 = sub_26128F280(v1);
  MEMORY[0x2666FFEA0](v2);

  MEMORY[0x2666FFEA0](0x632E656C7070612ELL, 0xEB000000002F6D6FLL);
  return 0xD000000000000012;
}

uint64_t sub_261290BB4(unsigned __int8 a1, char a2)
{
  v2 = 7759204;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7759204;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 24945;
      break;
    case 2:
      v5 = 3236209;
      break;
    case 3:
      v5 = 3301745;
      break;
    case 4:
      v5 = 3367281;
      break;
    case 5:
      v5 = 3432817;
      break;
    case 6:
      v5 = 3498353;
      break;
    case 7:
      v5 = 3563889;
      break;
    case 8:
      v5 = 0x74656B72616D6171;
      v3 = 0xEB00000000676E69;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x7466617264;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x676E6967617473;
      break;
    case 11:
      v3 = 0xE400000000000000;
      v5 = 1953654115;
      break;
    case 12:
      v3 = 0xE400000000000000;
      v5 = 1685025392;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      if (v5 == 24945)
      {
        goto LABEL_37;
      }

      goto LABEL_40;
    case 2:
      if (v5 != 3236209)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 3:
      if (v5 != 3301745)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 4:
      if (v5 != 3367281)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 5:
      if (v5 != 3432817)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 6:
      if (v5 != 3498353)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 7:
      if (v5 != 3563889)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 8:
      v6 = 0xEB00000000676E69;
      if (v5 != 0x74656B72616D6171)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 9:
      v6 = 0xE500000000000000;
      if (v5 != 0x7466617264)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 10:
      v6 = 0xE700000000000000;
      v2 = 0x676E6967617473;
      goto LABEL_36;
    case 11:
      v6 = 0xE400000000000000;
      if (v5 != 1953654115)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 12:
      v6 = 0xE400000000000000;
      if (v5 != 1685025392)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    default:
LABEL_36:
      if (v5 != v2)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (v3 == v6)
      {
        v7 = 1;
      }

      else
      {
LABEL_40:
        v7 = sub_2613A241C();
      }

      return v7 & 1;
  }
}

uint64_t sub_261290E6C(unsigned __int8 a1)
{
  v2 = 0x74666172642FLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5];
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2613A211C();
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9620);
  v7 = sub_26128F34C(a1);
  v9 = v8;
  if (v7 == 0x7466617264 && v8 == 0xE500000000000000)
  {

    v10 = 0xE600000000000000;
    goto LABEL_12;
  }

  v11 = v7;
  v12 = sub_2613A241C();

  if (v12)
  {
    v10 = 0xE600000000000000;
    goto LABEL_12;
  }

  if (v11 == 0x74656B72616D6171 && v9 == 0xEB00000000676E69)
  {

LABEL_10:
    v10 = 0xEA0000000000676ELL;
    v2 = 0x6974656B72616D2FLL;
    goto LABEL_12;
  }

  v13 = sub_2613A241C();

  if (v13)
  {
    goto LABEL_10;
  }

  v2 = 0;
  v10 = 0xE000000000000000;
LABEL_12:
  MEMORY[0x2666FFEA0](v2, v10);

  MEMORY[0x2666FFEA0](0xD000000000000039, 0x80000002613B9640);
  v14 = 0xE000000000000000;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2613A211C();

  v20 = 0xD000000000000013;
  v21 = 0x80000002613B9600;
  if (a1 <= 7u)
  {
LABEL_13:
    v18 = 0;
    v19 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v17[15] = a1;
    sub_2613A21FC();
    v15 = v18;
    v14 = v19;
    goto LABEL_14;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v14 = 0xE600000000000000;
      v15 = 0x65676174732DLL;
      goto LABEL_14;
    }

    if (a1 != 11)
    {
      v15 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a1 == 8)
  {
    v15 = 6385965;
  }

  else
  {
    v15 = 0;
  }

  if (a1 == 8)
  {
    v14 = 0xE300000000000000;
  }

LABEL_14:
  MEMORY[0x2666FFEA0](v15, v14);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  sub_26139EF5C();

  sub_26139EEBC();

  return sub_26124C718(v6, &qword_27FE9F220, qword_2613A5530);
}

uint64_t sub_2612911B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26128F34C(*a1);
  v5 = v4;
  if (v3 == sub_26128F34C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_261291238(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v6 = 0xE000000000000000;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2613A211C();

  v12 = 0xD000000000000013;
  v13 = 0x80000002613B9600;
  if (a1 <= 7u)
  {
LABEL_2:
    v10 = 0;
    v11 = 0xE000000000000000;
    MEMORY[0x2666FFEA0](45, 0xE100000000000000);
    v9[15] = a1;
    sub_2613A21FC();
    v7 = v10;
    v6 = v11;
    goto LABEL_3;
  }

  if (a1 > 9u)
  {
    if (a1 == 10)
    {
      v6 = 0xE600000000000000;
      v7 = 0x65676174732DLL;
      goto LABEL_3;
    }

    if (a1 != 11)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (a1 == 8)
  {
    v7 = 6385965;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8)
  {
    v6 = 0xE300000000000000;
  }

LABEL_3:
  MEMORY[0x2666FFEA0](v7, v6);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  sub_26139EF5C();

  sub_26139EEBC();
  return sub_26124C718(v5, &qword_27FE9F220, qword_2613A5530);
}

unint64_t sub_261291420()
{
  v1 = *v0;
  sub_2613A211C();

  v2 = sub_26128F280(v1);
  MEMORY[0x2666FFEA0](v2);

  MEMORY[0x2666FFEA0](0x7070612D6E64632ELL, 0xEF2F6D6F632E656CLL);
  return 0xD000000000000013;
}

uint64_t sub_2612914E0()
{
  v1 = (*(*v0 + 80))();
  v3 = v2;
  v4 = (*(*v0 + 88))();
  sub_261291B00(v1, v3, v4);

  sub_26124C7CC();
  sub_2613A1FFC();

  sub_2613A196C();

  v5 = sub_261291AB4();
  if (v5 == 13)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (sub_26128F34C(v6) == 7759204 && v7 == 0xE300000000000000)
  {
  }

  else
  {
    v9 = sub_2613A241C();

    if ((v9 & 1) == 0)
    {
      return v6;
    }
  }

  return 4;
}

uint64_t sub_261291684()
{
  v1 = (*(*v0 + 80))();
  v3 = v2;
  v4 = (*(*v0 + 88))();
  sub_261291B00(v1, v3, v4);

  sub_26124C7CC();
  sub_2613A1FFC();

  sub_2613A196C();

  LODWORD(result) = sub_261291AB4();
  if (result == 13)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2612917C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_isSandboxAccount];

    if (v2)
    {
      return 11;
    }
  }

  if (sub_261291BBC())
  {
    return 11;
  }

  return 12;
}

uint64_t sub_261291850(char a1)
{
  v3 = sub_2613A0C2C();
  v4 = v3();

  if (v4)
  {
    v5 = *(*v1 + 96);

    return v5();
  }

  else
  {
    v7 = *v1;
    if (a1)
    {
      v8 = *(v7 + 104);
    }

    else
    {
      v8 = *(v7 + 96);
    }

    return v8();
  }
}

uint64_t sub_261291950()
{
  v1 = sub_2613A0C2C();
  v2 = v1();

  v3 = *v0;
  if (v2)
  {
    v4 = *(v3 + 96);
  }

  else
  {
    v4 = *(v3 + 104);
  }

  return v4();
}

uint64_t sub_261291A18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1 && (v2 = [v1 aa_isSandboxAccount], v1, (v2 & 1) != 0))
  {
    return 9;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_261291AB4()
{
  v0 = sub_2613A228C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261291B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2613A189C();
  sub_2613A0D1C();
  v5 = sub_2613A189C();

  v6 = CFPreferencesCopyAppValue(v4, v5);

  if (v6 && (swift_dynamicCast() & 1) != 0)
  {
    return v8;
  }

  return a3;
}

uint64_t sub_261291BBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  sub_2613A0D8C();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2613A189C();

  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    return 0;
  }

  sub_2613A0D7C();
  v7 = sub_2613A189C();

  v8 = [v6 BOOLForKey_];

  if (!v8)
  {

    return 0;
  }

  v9 = sub_26129B7C4();
  sub_26124AA44(v9, v3);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {

    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
    return 1;
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Cert profile installed, using CERT environment", v15, 2u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    (*(v11 + 8))(v3, v10);
    return 1;
  }
}

unint64_t sub_261291DF0()
{
  result = qword_27FE9F748;
  if (!qword_27FE9F748)
  {
    sub_26139EF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F748);
  }

  return result;
}

unint64_t sub_261291E4C()
{
  result = qword_27FE9F750;
  if (!qword_27FE9F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F758, qword_2613A5960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F750);
  }

  return result;
}

unint64_t sub_261291EB4()
{
  result = qword_27FE9F760;
  if (!qword_27FE9F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F760);
  }

  return result;
}

unint64_t sub_261291F0C()
{
  result = qword_27FE9F768;
  if (!qword_27FE9F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F768);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerEnvironments(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4)
  {
    if ((a2 + 33554188) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776972;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776972;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0xD;
  v6 = v4 - 13;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerEnvironments(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554188) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xF3)
  {
    v3 = 0;
  }

  if (a2 > 0xF3)
  {
    *result = a2 - 244;
    *(result + 2) = (a2 - 244) >> 16;
    if (v3)
    {
      v4 = ((a2 - 244) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 12;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _s21ProximityReaderDaemon21EnvironmentDefinitionOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21ProximityReaderDaemon21EnvironmentDefinitionOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2612922A8()
{
  result = qword_27FE9F770;
  if (!qword_27FE9F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F770);
  }

  return result;
}

uint64_t sub_261292350(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_261292414(double a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_2612924A4()
{
  swift_beginAccess();
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_2612924DC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_261292580()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_2612925CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_261292670()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_2612926BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t sub_261292794(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_261292858(double a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_2612928E8()
{
  swift_beginAccess();
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  return result;
}

uint64_t sub_261292920(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  *(v3 + 176) = a3 & 1;
  return result;
}

uint64_t sub_2612929C8()
{
  v1 = v0[23];
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for SessionToken();
    v3 = v0[4];
    v4 = v0[5];

    v5 = v0;
    v2 = sub_26124CA28();
    v6 = v0[23];
    v5[23] = v2;

    sub_261292A54(v6);
  }

  sub_261292A64(v1);
  return v2;
}

uint64_t sub_261292A54(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_261292A64(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_261292A74(uint64_t a1)
{
  v2 = *(v1 + 184);
  *(v1 + 184) = a1;
  return sub_261292A54(v2);
}

uint64_t (*sub_261292A84(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2612929C8();
  return sub_261292ACC;
}

uint64_t sub_261292ACC(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 184);
  *(v2 + 184) = *a1;
  if (a2)
  {

    sub_261292A54(v3);
  }

  else
  {

    return sub_261292A54(v3);
  }
}

uint64_t sub_261292B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2613A0FCC();
}

uint64_t sub_261292B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, char a12)
{
  v21 = swift_allocObject();
  *(v21 + 80) = sub_2613A0C5C();
  sub_2613A0C6C();
  *(v21 + 88) = v22;
  *(v21 + 96) = 0;
  *(v21 + 104) = 1;
  *(v21 + 160) = 0;
  *(v21 + 168) = 0;
  *(v21 + 176) = 1;
  *(v21 + 184) = 1;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  type metadata accessor for Mock();
  v23 = sub_26129B1A8(18);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    sub_2613A121C();
    v23 = sub_2613A120C();
  }

  *(v21 + 112) = v23;
  *(v21 + 120) = v24;
  *(v21 + 128) = a10;
  *(v21 + 136) = a11;
  *(v21 + 144) = a12 & 1;
  *(v21 + 152) = a9;
  return v21;
}

uint64_t sub_261292C7C()
{
  type metadata accessor for Mock();
  result = sub_26129B1A8(18);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    sub_2613A121C();
    return sub_2613A120C();
  }

  return result;
}

unint64_t sub_261292CDC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD000000000000014;
    if (a1 != 10)
    {
      v7 = 0x6D7961507473616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    v9 = 0x6F6973726556736FLL;
    if (a1 != 7)
    {
      v9 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5472656E74726170;
    v2 = 0x6D6E6F7269766E65;
    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x546E6F6973736573;
    if (a1 != 1)
    {
      v4 = 0x6F546C656E72656BLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_261292EA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_261292CDC(*a1);
  v5 = v4;
  if (v3 == sub_261292CDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2613A241C();
  }

  return v8 & 1;
}

uint64_t sub_261292F28()
{
  v1 = *v0;
  sub_2613A256C();
  sub_261292CDC(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261292F8C()
{
  sub_261292CDC(*v0);
  sub_2613A19DC();
}

uint64_t sub_261292FE0()
{
  v1 = *v0;
  sub_2613A256C();
  sub_261292CDC(v1);
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261293040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261293D5C();
  *a2 = result;
  return result;
}

unint64_t sub_261293070@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261292CDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2612930B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261293D5C();
  *a1 = result;
  return result;
}

uint64_t sub_2612930EC(uint64_t a1)
{
  v2 = sub_261293DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261293128(uint64_t a1)
{
  v2 = sub_261293DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261293164()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[15];

  v6 = v0[17];

  sub_261292A54(v0[23]);
  return v0;
}

uint64_t sub_2612931B4()
{
  sub_261293164();

  return swift_deallocClassInstance();
}

uint64_t sub_2612931E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F778, &qword_2613A5CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261293DA8();
  sub_2613A262C();
  v11 = v3[2];
  v12 = v3[3];
  LOBYTE(v31) = 0;
  sub_2613A238C();
  if (!v2)
  {
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v31) = 1;
    sub_2613A238C();
    v15 = v3[6];
    v16 = v3[7];
    LOBYTE(v31) = 2;
    sub_2613A238C();
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v31) = 3;
    v19 = sub_2613A238C();
    (*(*v3 + 184))(v19);
    LOBYTE(v31) = 4;
    v20 = sub_2613A23BC();
    (*(*v3 + 208))(v20);
    LOBYTE(v31) = 5;
    v21 = sub_2613A23AC();
    (*(*v3 + 232))(v21);
    LOBYTE(v31) = 6;
    v22 = sub_2613A236C();
    (*(*v3 + 256))(v22);
    LOBYTE(v31) = 7;
    sub_2613A238C();

    (*(*v3 + 280))(v23);
    LOBYTE(v31) = 8;
    sub_2613A238C();

    (*(*v3 + 304))(v24);
    LOBYTE(v31) = 9;
    v25 = sub_2613A239C();
    (*(*v3 + 328))(v25);
    LOBYTE(v31) = 10;
    v26 = sub_2613A23AC();
    v31 = (*(*v3 + 352))(v26);
    v32 = v27;
    v33 = v28 & 1;
    v30[7] = 11;
    sub_26127EAAC();
    sub_2613A237C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261293694(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2612936E4(a1);
  return v2;
}

uint64_t sub_2612936E4(uint64_t *a1)
{
  v3 = v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F788, &qword_2613A5CA8);
  v57 = *(v59 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = v56 - v6;
  *(v3 + 80) = sub_2613A0C5C();
  v8 = (v3 + 80);
  sub_2613A0C6C();
  v60 = a1;
  v61 = v3;
  *(v3 + 88) = v9;
  v10 = v3 + 88;
  *(v10 + 8) = 0;
  *(v10 + 72) = 0;
  *(v10 + 16) = 1;
  *(v10 + 80) = 0;
  *(v10 + 88) = 1;
  *(v10 + 96) = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261293DA8();
  v58 = v7;
  sub_2613A260C();
  if (v2)
  {
    v62 = v2;
    v12 = v61;
LABEL_13:
    sub_261292A54(*(v12 + 184));
    type metadata accessor for SessionStore();
    swift_deallocPartialClassInstance();
    goto LABEL_14;
  }

  v56[1] = v10 + 72;
  v14 = v57;
  v13 = v58;
  v69 = 0;
  v15 = v59;
  v16 = sub_2613A22DC();
  v12 = v61;
  *(v61 + 16) = v16;
  *(v12 + 24) = v17;
  v69 = 1;
  *(v12 + 32) = sub_2613A22DC();
  *(v12 + 40) = v18;
  v69 = 2;
  *(v12 + 48) = sub_2613A22DC();
  *(v12 + 56) = v19;
  v69 = 3;
  v20 = sub_2613A22DC();
  v56[0] = 0;
  *(v12 + 64) = v20;
  *(v12 + 72) = v21;
  v69 = 4;
  v22 = sub_2613A230C();
  v62 = 0;
  v23 = v22;
  swift_beginAccess();
  *v8 = v23;
  v68 = 5;
  v24 = v62;
  sub_2613A22FC();
  v62 = v24;
  if (v24)
  {
    (*(v14 + 8))(v13, v15);
    v26 = 0;
    v27 = 0;
LABEL_5:
    v28 = v56[0];
    goto LABEL_6;
  }

  v36 = v25;
  swift_beginAccess();
  *v10 = v36;
  v67 = 6;
  v37 = v62;
  v38 = sub_2613A22BC();
  v62 = v37;
  v28 = v56[0];
  if (v37)
  {
LABEL_18:
    (*(v14 + 8))(v13, v15);
    v26 = 0;
    v27 = 0;
LABEL_6:
    v29 = *(v12 + 24);

    v30 = *(v12 + 40);

    if (!v28)
    {
      v32 = *(v12 + 56);
    }

    v31 = *(v12 + 72);

    if (v26)
    {
      v33 = *(v12 + 120);

      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v27)
    {
      goto LABEL_13;
    }

    v34 = *(v12 + 136);

    goto LABEL_13;
  }

  v40 = v38;
  v41 = v39;
  swift_beginAccess();
  *(v12 + 96) = v40;
  *(v12 + 104) = v41 & 1;
  v63 = 7;
  v42 = v62;
  v43 = sub_2613A22DC();
  if (v42)
  {
    v62 = v42;
    goto LABEL_18;
  }

  *(v12 + 112) = v43;
  *(v12 + 120) = v44;
  v63 = 8;
  v45 = sub_2613A22DC();
  v62 = 0;
  *(v12 + 128) = v45;
  *(v12 + 136) = v46;
  v63 = 9;
  v47 = v62;
  v48 = sub_2613A22EC();
  v62 = v47;
  if (v47)
  {
    (*(v14 + 8))(v58, v59);
    v26 = 1;
    v27 = 1;
    v12 = v61;
    goto LABEL_5;
  }

  *(v61 + 144) = v48 & 1;
  v63 = 10;
  sub_2613A22FC();
  v62 = 0;
  *(v61 + 152) = v49;
  v63 = 11;
  sub_26127F6C4();
  v50 = v58;
  v51 = v59;
  v52 = v62;
  sub_2613A22CC();
  (*(v14 + 8))(v50, v51);
  v62 = v52;
  if (v52)
  {
    v12 = v61;
  }

  else
  {
    v54 = v64;
    v53 = v65;
    v55 = v66;
    swift_beginAccess();
    v12 = v61;
    *(v61 + 160) = v54;
    *(v12 + 168) = v53;
    *(v12 + 176) = v55;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  return v12;
}

uint64_t sub_261293C94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 424))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_261293D1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for SessionStore();
  result = sub_2613A213C();
  *a1 = result;
  return result;
}

uint64_t sub_261293D5C()
{
  v0 = sub_2613A228C();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261293DA8()
{
  result = qword_27FE9F780;
  if (!qword_27FE9F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F780);
  }

  return result;
}

unint64_t sub_261293E24()
{
  result = qword_27FE9F790;
  if (!qword_27FE9F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F790);
  }

  return result;
}

unint64_t sub_261293E7C()
{
  result = qword_27FE9F798;
  if (!qword_27FE9F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F798);
  }

  return result;
}

unint64_t sub_261293ED4()
{
  result = qword_27FE9F7A0;
  if (!qword_27FE9F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionStore.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionStore.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261294084()
{
  if (*v0)
  {
    result = 0x6E6F73616572;
  }

  else
  {
    result = 1701080931;
  }

  *v0;
  return result;
}

uint64_t sub_2612940B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_261294198(uint64_t a1)
{
  v2 = sub_2612959A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612941D4(uint64_t a1)
{
  v2 = sub_2612959A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261294210@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261294DB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261294240@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_26129429C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_26139EC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - v13;
  v15 = sub_26139EBDC();
  v56 = v5;
  if (v15)
  {
    v16 = sub_261291AA8();
    sub_2612E69E8();
    v54 = v16;
    v18 = v17;
  }

  else
  {
    v54 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = sub_26139EC1C();
  v21 = v20;
  v55 = sub_26129509C(v19, v20, 1);
  v23 = v22;
  sub_26124A168(v19, v21);
  v24 = sub_26129B64C();
  sub_26125A870(v24, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v14, 1, v25) == 1)
  {

    return sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v7 + 16))(v10, a1, v6);

    v28 = sub_2613A122C();
    v29 = sub_2613A1D7C();

    if (os_log_type_enabled(v28, v29))
    {
      v50 = v29;
      v51 = v28;
      v52 = v7;
      v53 = v6;
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      v49 = v30;
      *v30 = 136315650;
      v31 = v56;
      sub_26139EC0C();
      v32 = sub_26139EF7C();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_26124C718(v31, &qword_27FE9F220, qword_2613A5530);
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v47 = sub_26139EEAC();
        v35 = v36;
        (*(v33 + 8))(v31, v32);
        v34 = v47;
      }

      (*(v52 + 8))(v10, v53);
      v37 = sub_26124C11C(v34, v35, &v57);

      v38 = v49;
      *(v49 + 1) = v37;
      *(v38 + 6) = 2080;
      v39 = sub_2613A0C2C();
      LOBYTE(v37) = v39();

      v40 = v50;
      if (v37)
      {
        v41 = v54;
      }

      else
      {

        v41 = 0;
        v18 = 0xE000000000000000;
      }

      v42 = sub_26124C11C(v41, v18, &v57);

      *(v38 + 14) = v42;
      *(v38 + 11) = 2080;
      v43 = sub_26124C11C(v55, v23, &v57);

      *(v38 + 3) = v43;
      v44 = v51;
      _os_log_impl(&dword_261243000, v51, v40, "----> %s\n%s\n%s", v38, 0x20u);
      v45 = v48;
      swift_arrayDestroy();
      MEMORY[0x266701350](v45, -1, -1);
      MEMORY[0x266701350](v38, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return (*(v26 + 8))(v14, v25);
  }
}

uint64_t sub_2612947FC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v60 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - v9;
  v10 = sub_26139EC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - v17;
  v62 = a1;
  if (sub_26139EBDC())
  {
    v19 = sub_261291AA8();
    sub_2612E69E8();
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = sub_26129509C(a2, a3, 1);
  v25 = v24;
  v26 = sub_26129B64C();
  sub_26125A870(v26, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v61 = *(v27 - 1);
  if ((*(v61 + 48))(v18, 1, v27) == 1)
  {

    return sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v57 = v20;
    v58 = v23;
    (*(v11 + 16))(v14, v62, v10);
    v29 = v60;

    v30 = sub_2613A122C();
    v31 = sub_2613A1D7C();

    LODWORD(v62) = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v53 = v29;
      v54 = v25;
      v55 = v30;
      v56 = v10;
      v60 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = 136315906;
      v34 = v59;
      sub_26139EC0C();
      v35 = v34;
      v36 = sub_26139EF7C();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36) == 1)
      {
        sub_26124C718(v35, &qword_27FE9F220, qword_2613A5530);
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v52 = v33;
        v40 = v35;
        v38 = sub_26139EEAC();
        v39 = v41;
        v42 = v40;
        v33 = v52;
        (*(v37 + 8))(v42, v36);
      }

      (*(v11 + 8))(v14, v56);
      v43 = sub_26124C11C(v38, v39, &v63);

      *(v32 + 4) = v43;
      *(v32 + 12) = 2080;
      v44 = sub_2613A0C2C();
      LOBYTE(v43) = v44();

      v45 = v58;
      if (v43)
      {
        v46 = v57;
      }

      else
      {

        v46 = 0;
        v22 = 0xE000000000000000;
      }

      v47 = v53;
      v48 = sub_26124C11C(v46, v22, &v63);

      *(v32 + 14) = v48;
      *(v32 + 22) = 2048;
      v49 = [v47 statusCode];

      *(v32 + 24) = v49;
      *(v32 + 32) = 2080;
      v50 = sub_26124C11C(v45, v54, &v63);

      *(v32 + 34) = v50;
      v51 = v55;
      _os_log_impl(&dword_261243000, v55, v62, "<---- %s\n%s\n%ld {%s\n}", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266701350](v33, -1, -1);
      MEMORY[0x266701350](v32, -1, -1);

      v27 = v60;
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    return (*(v61 + 8))(v18, v27);
  }
}

uint64_t sub_261294DB4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7C0, &qword_2613A60C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612959A4();
  sub_2613A260C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_2613A22DC();
    v11 = 1;
    sub_2613A22DC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_261294F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7B8, &qword_2613A60B8);
    v3 = sub_2613A224C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_26124E5EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_26129509C(uint64_t a1, unint64_t a2, char a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (a2 >> 60 == 15)
  {
    result = 0x3E7974706D653CLL;
    goto LABEL_45;
  }

  v7 = objc_opt_self();
  sub_26124C778(a1, a2);
  v8 = sub_26139EFFC();
  *&v73 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:1 error:&v73];

  if (!v9)
  {
    v12 = v73;
    v13 = sub_26139EE7C();

    swift_willThrow();
    sub_26124A168(a1, a2);
    result = 0x3E726F7272653CLL;
    goto LABEL_45;
  }

  v10 = v73;
  sub_2613A202C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7B0, &qword_2613A60B0);
  if (swift_dynamicCast())
  {
    v11 = *&v72[0];
  }

  else
  {
    v11 = sub_261294F98(MEMORY[0x277D84F90]);
  }

  if ((a3 & 1) == 0)
  {
    v60 = sub_261291AA8();
    sub_2612E69E8();
    v61 = v60;

    sub_26124A168(a1, a2);
    result = v61;
    goto LABEL_45;
  }

  v65 = a1;
  v66 = a2;
  v14 = sub_261259E78(MEMORY[0x277D84F90]);
  v15 = 0;
  v16 = v11 + 64;
  v17 = 1 << *(v11 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v11 + 64);
  v20 = (v17 + 63) >> 6;
  v67 = v20;
  v68 = v11 + 64;
  v69 = v11;
  while (v19)
  {
    v23 = v15;
LABEL_19:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v23 << 6);
    v26 = (*(v11 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(*(v11 + 56) + 8 * v25);
    *&v73 = sub_2613A196C();
    *(&v73 + 1) = v30;
    *&v72[0] = 0x6E656B6F74;
    *(&v72[0] + 1) = 0xE500000000000000;
    sub_26124C7CC();

    swift_unknownObjectRetain();
    v31 = sub_2613A201C();

    if ((v31 & 1) == 0)
    {
      goto LABEL_27;
    }

    v70 = v27;
    *&v72[0] = v29;
    swift_unknownObjectRetain();
    v32 = MEMORY[0x277D837D0];
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = v70;
LABEL_27:
      ObjectType = swift_getObjectType();
      *&v73 = v29;
      sub_26125A7B0(&v73, v72);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v14;
      v37 = sub_26124E5EC(v27, v28);
      v48 = v14[2];
      v49 = (v47 & 1) == 0;
      v41 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v41)
      {
        goto LABEL_47;
      }

      v51 = v47;
      if (v14[3] < v50)
      {
        sub_261258AB8(v50, isUniquelyReferenced_nonNull_native);
        v37 = sub_26124E5EC(v27, v28);
        if ((v51 & 1) != (v52 & 1))
        {
LABEL_51:
          result = sub_2613A249C();
          __break(1u);
          return result;
        }

        goto LABEL_32;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_32:
        if (v51)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v58 = v37;
        sub_2612590DC();
        v37 = v58;
        if (v51)
        {
          goto LABEL_12;
        }
      }

      v14[(v37 >> 6) + 8] |= 1 << v37;
      v53 = (v14[6] + 16 * v37);
      *v53 = v27;
      v53[1] = v28;
      sub_26125A7B0(v72, (v14[7] + 32 * v37));
      swift_unknownObjectRelease();
      v54 = v14[2];
      v41 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v41)
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

    v33 = sub_2613A0F7C();
    v35 = v34;

    ObjectType = v32;
    *&v73 = v33;
    *(&v73 + 1) = v35;
    sub_26125A7B0(&v73, v72);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v14;
    v37 = sub_26124E5EC(v70, v28);
    v39 = v14[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_49;
    }

    v43 = v38;
    if (v14[3] >= v42)
    {
      if ((v36 & 1) == 0)
      {
        v59 = v37;
        sub_2612590DC();
        v37 = v59;
      }

      v44 = v70;
      if (v43)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_261258AB8(v42, v36);
      v44 = v70;
      v37 = sub_26124E5EC(v70, v28);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_51;
      }

      if (v43)
      {
LABEL_12:
        v21 = v37;

        v14 = v71;
        v22 = (v71[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        sub_26125A7B0(v72, v22);
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    v14[(v37 >> 6) + 8] |= 1 << v37;
    v56 = (v14[6] + 16 * v37);
    *v56 = v44;
    v56[1] = v28;
    sub_26125A7B0(v72, (v14[7] + 32 * v37));
    swift_unknownObjectRelease();
    v57 = v14[2];
    v41 = __OFADD__(v57, 1);
    v55 = v57 + 1;
    if (v41)
    {
      goto LABEL_50;
    }

LABEL_40:
    v14[2] = v55;
LABEL_13:
    v15 = v23;
    v16 = v68;
    v11 = v69;
    v20 = v67;
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v15;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  v62 = sub_261291AA8();
  sub_2612E69E8();
  v63 = v62;
  sub_26124A168(v65, v66);

  result = v63;
LABEL_45:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26129572C()
{
  result = qword_27FE9F7A8;
  if (!qword_27FE9F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7A8);
  }

  return result;
}

uint64_t sub_261295790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2612957D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TransactionData.CvmType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransactionData.CvmType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2612959A4()
{
  result = qword_27FEA3930[0];
  if (!qword_27FEA3930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3930);
  }

  return result;
}

unint64_t sub_261295A0C()
{
  result = qword_27FEA3A40[0];
  if (!qword_27FEA3A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3A40);
  }

  return result;
}

unint64_t sub_261295A64()
{
  result = qword_27FEA3B50;
  if (!qword_27FEA3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3B50);
  }

  return result;
}

unint64_t sub_261295ABC()
{
  result = qword_27FEA3B58[0];
  if (!qword_27FEA3B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3B58);
  }

  return result;
}

void sub_261295B30(id *a1)
{
  v1 = [*a1 batchId];
  sub_26139F11C();
}

void sub_261295B90(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_26139F10C();
  [v2 setBatchId_];
}

void sub_261295BEC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 signature];
  v4 = sub_26139F01C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_261295C64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 intermediateCertificates];
  v4 = sub_2613A1B7C();

  *a2 = v4;
}

void sub_261295CC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2613A1B6C();
  [v3 setIntermediateCertificates_];
}

void sub_261295D50(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

id sub_261295DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v11 = [objc_allocWithZone(v7) initWithContext_];
  v12 = sub_2613A189C();

  [v11 setSafSessionHash_];

  v13 = sub_26139F10C();
  [v11 setBatchId_];

  v14 = *a6;
  v15 = a6[1];
  v16 = sub_26139EFFC();
  [v11 setSignature_];

  v17 = a6[4];
  v18 = sub_2613A1B6C();
  [v11 setIntermediateCertificates_];

  v19 = a6[5];
  v20 = a6[6];
  v21 = sub_2613A189C();
  [v11 setLeafCertificate_];

  sub_261295F30(a6);
  v22 = sub_26139F13C();
  (*(*(v22 - 8) + 8))(a4, v22);
  return v11;
}

id ManagedBatch.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBatch.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedBatch();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBatch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedBatch();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedBatch.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2613A189C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_26129616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_26139EC4C();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = sub_26139EF7C();
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612962D0);
}

uint64_t sub_2612962D0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  sub_26129035C(*(*(v0 + 120) + 96));
  sub_26128FAFC(47, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26124FDE0(*(v0 + 168));
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    (*(v7 + 8))(v5, v6);
    (*(v7 + 32))(v5, v8, v6);
  }

  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_2613A025C();
  sub_26139EBFC();
  sub_26139EBBC();
  v13 = *(v12 + 32);
  v14 = *(v12 + 64);
  v15 = *(v12 + 72);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  *(v0 + 32) = v13;
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  sub_26129670C();
  sub_26124A620(&type metadata for VerifyMerchantRequest);
  sub_26139EC2C();
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *(v16 + 16) = v9;
  v17 = *(MEMORY[0x277D859E0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7D0, &qword_2613A6240);
  *v18 = v0;
  v18[1] = sub_2612964FC;

  return MEMORY[0x2822007B8](v0 + 64, 0, 0, 0xD00000000000001FLL, 0x80000002613B9A40, sub_261296A20, v16, v19);
}

uint64_t sub_2612964FC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261296614);
}

uint64_t sub_261296614()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 112);
  (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);
  (*(v5 + 8))(v3, v4);

  *v6 = v12;
  *(v6 + 16) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_26129670C()
{
  result = qword_27FE9F7C8;
  if (!qword_27FE9F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7C8);
  }

  return result;
}

uint64_t sub_261296760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = sub_26139EC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v20[0] = 0xD000000000000011;
    v20[1] = 0x80000002613B9BA0;
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = 1;
    v21 = 0;
    return sub_2613A1BDC();
  }

  else
  {
    v15 = *sub_2612A1E08();
    (*(v10 + 16))(v13, a2, v9);
    (*(v5 + 16))(v8, a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v8, v4);
    v18 = sub_26129B07C();

    v19 = sub_26125A798();
    (*(*v15 + 152))(v13, v19 & 1, sub_26129AF94, v17, &type metadata for VerifyMerchantResponse, v18);

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_261296A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 281) = a6;
  *(v6 + 312) = a4;
  *(v6 + 320) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v8 = sub_26139EF7C();
  *(v6 + 336) = v8;
  v9 = *(v8 - 8);
  *(v6 + 344) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261296B38);
}

uint64_t sub_261296B38()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  sub_26129053C(*(*(v0 + 296) + 96));
  sub_26128FAFC(48, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26124FDE0(*(v0 + 328));
  }

  else
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 336);
    v7 = *(v0 + 344);
    v8 = *(v0 + 328);
    (*(v7 + 8))(v5, v6);
    (*(v7 + 32))(v5, v8, v6);
  }

  v59 = *(v0 + 360);
  v55 = *(v0 + 344);
  v56 = *(v0 + 352);
  v57 = *(v0 + 336);
  v58 = *(v0 + 281);
  v9 = *(v0 + 320);
  v54 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  sub_2613A121C();
  v49 = sub_2613A111C();
  v13 = v12;
  v14 = sub_26139F68C();
  v52 = v15;
  v53 = v14;
  v16 = v10[9];
  v17 = v10[5];
  v50 = v10[4];
  v51 = v10[8];

  v18 = sub_2613A0C1C();
  v20 = v19;
  v21 = sub_26139F67C();
  v23 = v22;

  MEMORY[0x2666FFEA0](v49, v13);

  *(v0 + 128) = v53;
  *(v0 + 136) = v52;
  *(v0 + 144) = v51;
  *(v0 + 152) = v16;
  *(v0 + 160) = v50;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v20;
  *(v0 + 192) = v21;
  *(v0 + 200) = v23;
  *(v0 + 208) = v54;
  *(v0 + 216) = v9;
  *(v0 + 224) = 0x4F20656E6F685069;
  *(v0 + 232) = 0xEA00000000003B53;
  sub_26129728C();
  v24 = sub_26124A620(&type metadata for EnrollmentRequest);
  v26 = v25;
  *(v0 + 368) = v24;
  *(v0 + 376) = v25;
  v27 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v27;
  *(v0 + 112) = *(v0 + 224);
  v28 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v28;
  v29 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v29;
  sub_2612972E0(v0 + 16);
  (*(v55 + 16))(v56, v59, v57);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v31 = sub_26139EEFC();
  v32 = [v30 initWithURL_];
  *(v0 + 384) = v32;

  v33 = sub_2613A189C();

  [v32 setHTTPMethod_];

  v34 = sub_2613A189C();
  v35 = sub_2613A189C();
  [v32 addValue:v34 forHTTPHeaderField:v35];

  sub_26139F6BC();
  v36 = sub_2613A189C();

  sub_26139F6AC();
  v37 = sub_2613A189C();

  [v32 ak:v36 addAuthorizationHeaderWithServiceToken:v37 forAltDSID:?];

  [v32 ak_addClientInfoHeader];
  [v32 ak_addDeviceUDIDHeader];
  [v32 ak_addDeviceSerialNumberHeader];
  [v32 ak_addInternalBuildHeader];
  [v32 ak_addFeatureMaskHeader];
  [v32 ak_addLocaleHeader];
  [v32 ak_addTimeZoneHeaders];
  [v32 ak_addDeviceMLBHeader];
  [v32 ak_addDeviceROMHeader];
  if (v26 >> 60 != 15)
  {
    sub_26124C778(v24, v26);
    v38 = sub_26139EFFC();
    [v32 setHTTPBody_];

    sub_26124A168(v24, v26);
  }

  v40 = *(v0 + 344);
  v39 = *(v0 + 352);
  v41 = *(v0 + 336);
  v42 = *(v0 + 281);
  v43 = *(v40 + 8);
  *(v0 + 392) = v43;
  *(v0 + 400) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v39, v41);
  v44 = swift_task_alloc();
  *(v0 + 408) = v44;
  *(v44 + 16) = v42;
  *(v44 + 24) = v32;
  v45 = *(MEMORY[0x277D859E0] + 4);
  v46 = swift_task_alloc();
  *(v0 + 416) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7E0, &qword_2613A6250);
  *v46 = v0;
  v46[1] = sub_261297098;

  return MEMORY[0x2822007B8](v0 + 240, 0, 0, 0xD00000000000002DLL, 0x80000002613B9A80, sub_2612976A0, v44, v47);
}

uint64_t sub_261297098()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612971B0);
}

uint64_t sub_2612971B0()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 352);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v9 = *(v0 + 288);

  sub_26124A168(v4, v3);
  v2(v5, v7);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  *v9 = *(v0 + 240);
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_26129728C()
{
  result = qword_27FE9F7D8;
  if (!qword_27FE9F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7D8);
  }

  return result;
}

uint64_t sub_261297310(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v26 = sub_26139EC4C();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  v13 = sub_26129B0F4(6);
  if (a2)
  {
    if (v13)
    {
      [objc_opt_self() sleepForTimeInterval_];
      v14 = xmmword_2613A6220;
LABEL_6:
      v27 = v14;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v31 = 0;
      return sub_2613A1BDC();
    }

    v16 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v5 + 16))(v8, a1, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v8, v4);
    v19 = *(*v16 + 152);
    v20 = sub_26129AEBC();

    v21 = &type metadata for ReEnrollmentResponse;
    v22 = sub_26129B0E0;
  }

  else
  {
    if (v13)
    {
      [objc_opt_self() sleepForTimeInterval_];
      v14 = xmmword_2613A6210;
      goto LABEL_6;
    }

    v23 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v5 + 16))(v8, a1, v4);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v24, v8, v4);
    v19 = *(*v23 + 152);
    v20 = sub_26129AD80();

    v21 = &type metadata for EnrollmentResponse;
    v22 = sub_26129AD7C;
  }

  v19(v12, 1, v22, v18, v21, v20);

  return (*(v9 + 8))(v12, v26);
}

uint64_t sub_2612976AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v5 = sub_26139EF7C();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v7 = *(v6 + 64) + 15;
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612977A8);
}

uint64_t sub_2612977A8()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  sub_26129071C(*(*(v0 + 248) + 96));
  sub_26128FAFC(49, v3);
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_26124FDE0(*(v0 + 264));
  }

  else
  {
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    (*(v6 + 8))(v5, v7);
    (*(v6 + 32))(v5, v8, v7);
  }

  v9 = *(v0 + 248);
  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v10 = sub_26139F68C();
  v12 = v11;
  v13 = v9[9];
  v40 = v9[8];
  v14 = v9[4];
  v15 = v9[5];

  v16 = sub_2613A0C1C();
  v18 = v17;
  v19 = sub_26139F67C();
  *(v0 + 104) = v10;
  *(v0 + 112) = v12;
  *(v0 + 120) = v40;
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  *(v0 + 160) = v18;
  *(v0 + 168) = v19;
  *(v0 + 176) = v20;
  *(v0 + 184) = 1;
  sub_261297DFC();
  v21 = sub_26124A620(&type metadata for SubscriptionRequest);
  v23 = v22;
  *(v0 + 296) = v21;
  *(v0 + 304) = v22;
  v24 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v24;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v25 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v25;
  sub_261297E50(v0 + 16);
  v26 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v27 = sub_26139EEFC();
  v28 = [v26 initWithURL_];
  *(v0 + 312) = v28;

  v29 = sub_2613A189C();
  [v28 setHTTPMethod_];

  v30 = sub_2613A189C();
  v31 = sub_2613A189C();
  [v28 addValue:v30 forHTTPHeaderField:v31];

  sub_26139F6BC();
  v32 = sub_2613A189C();

  sub_26139F6AC();
  v33 = sub_2613A189C();

  [v28 ak:v32 addAuthorizationHeaderWithServiceToken:v33 forAltDSID:?];

  [v28 ak_addClientInfoHeader];
  [v28 ak_addDeviceUDIDHeader];
  [v28 ak_addDeviceSerialNumberHeader];
  [v28 ak_addInternalBuildHeader];
  [v28 ak_addFeatureMaskHeader];
  [v28 ak_addLocaleHeader];
  [v28 ak_addTimeZoneHeaders];
  [v28 ak_addDeviceMLBHeader];
  [v28 ak_addDeviceROMHeader];
  if (v23 >> 60 != 15)
  {
    sub_26124C778(v21, v23);
    v34 = sub_26139EFFC();
    [v28 setHTTPBody_];

    sub_26124A168(v21, v23);
  }

  v35 = swift_task_alloc();
  *(v0 + 320) = v35;
  *(v35 + 16) = v28;
  v36 = *(MEMORY[0x277D859E0] + 4);
  v37 = swift_task_alloc();
  *(v0 + 328) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7E0, &qword_2613A6250);
  *v37 = v0;
  v37[1] = sub_261297C10;

  return MEMORY[0x2822007B8](v0 + 192, 0, 0, 0xD00000000000001CLL, 0x80000002613B9AB0, sub_261298118, v35, v38);
}

uint64_t sub_261297C10()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261297D28);
}

uint64_t sub_261297D28()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);

  sub_26124A168(v2, v1);
  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  *v7 = *(v0 + 192);
  *(v7 + 16) = v10;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_261297DFC()
{
  result = qword_27FE9F7E8;
  if (!qword_27FE9F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F7E8);
  }

  return result;
}

uint64_t sub_261297E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - v5;
  v7 = sub_26139EC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v18[0] = 0xD000000000000019;
    v18[1] = 0x80000002613B9B80;
    memset(&v18[2], 0, 24);
    v19 = 0;
    return sub_2613A1BDC();
  }

  else
  {
    v13 = *sub_2612A1E08();
    sub_26139EBEC();
    (*(v3 + 16))(v6, a1, v2);
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    (*(v3 + 32))(v15 + v14, v6, v2);
    v16 = *(*v13 + 152);
    v17 = sub_26129AD28();

    v16(v11, 1, sub_26129B0E0, v15, &type metadata for SubscriptionResponse, v17);

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_261298120()
{
  v1 = 0x6C646E7542707061;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5472656E74726170;
  }
}

uint64_t sub_261298190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612997B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612981B8(uint64_t a1)
{
  v2 = sub_2612983D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612981F4(uint64_t a1)
{
  v2 = sub_2612983D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298230(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7F0, &qword_2613A6260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612983D0();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_2613A238C();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2612983D0()
{
  result = qword_27FEA3BE0;
  if (!qword_27FEA3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BE0);
  }

  return result;
}

unint64_t sub_26129843C()
{
  if (*v0)
  {
    result = 0x6C416B6E696C6572;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_261298488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000002613B9B00 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C416B6E696C6572 && a2 == 0xED00006465776F6CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_261298578(uint64_t a1)
{
  v2 = sub_261298780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612985B4(uint64_t a1)
{
  v2 = sub_261298780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612985F0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F7F8, &qword_2613A6268);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261298780();
  sub_2613A262C();
  v16 = 0;
  sub_2613A238C();
  if (!v4)
  {
    v15 = 1;
    sub_2613A235C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_261298780()
{
  result = qword_27FEA3BE8;
  if (!qword_27FEA3BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BE8);
  }

  return result;
}

uint64_t sub_2612987D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2612998D8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_261298824()
{
  v1 = *v0;
  v2 = 0x5472656E74726170;
  v3 = 0x6973726556736F74;
  if (v1 != 5)
  {
    v3 = 0x6F6973726556736FLL;
  }

  v4 = 0x6564496E656B6F74;
  if (v1 != 3)
  {
    v4 = 0x6F4C656369766564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6C646E7542707061;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_261298930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26129A898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261298964(uint64_t a1)
{
  v2 = sub_261299AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612989A0(uint64_t a1)
{
  v2 = sub_261299AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612989DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F800, &qword_2613A6270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261299AB0();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v26[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v26[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v26[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v26[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v26[11] = 4;
  sub_2613A238C();
  v21 = v3[10];
  v22 = v3[11];
  v26[10] = 5;
  sub_2613A238C();
  v24 = v3[12];
  v25 = v3[13];
  v26[9] = 6;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261298C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002613B9B20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_261298CD8(uint64_t a1)
{
  v2 = sub_261299B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261298D14(uint64_t a1)
{
  v2 = sub_261299B04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453657461647075 && a2 == 0xEC00000073757461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2613A241C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261298E84(uint64_t a1)
{
  v2 = sub_261299B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261298EC0(uint64_t a1)
{
  v2 = sub_261299B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261298F84()
{
  v1 = *v0;
  v2 = 0x5472656E74726170;
  v3 = 0x6564496E656B6F74;
  v4 = 0x6F4C656369766564;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x6C646E7542707061;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_26129906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26129AB0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612990A0(uint64_t a1)
{
  v2 = sub_261299BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612990DC(uint64_t a1)
{
  v2 = sub_261299BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261299118(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F828, &qword_2613A6298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261299BAC();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v23[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v23[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v23[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v23[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v23[11] = 4;
  sub_2613A238C();
  v22 = *(v3 + 80);
  v23[10] = 5;
  sub_2613A239C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26129934C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000002613B9B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2612993E0(uint64_t a1)
{
  v2 = sub_261299C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129941C(uint64_t a1)
{
  v2 = sub_261299C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129949C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2613A260C();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = sub_2613A22DC();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_261299668(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2612997B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2613A241C();

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

uint64_t sub_2612998D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F840, &qword_2613A6DA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261298780();
  sub_2613A260C();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2613A22DC();
    v10[14] = 1;
    sub_2613A22AC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_261299AB0()
{
  result = qword_27FEA3BF0;
  if (!qword_27FEA3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BF0);
  }

  return result;
}

unint64_t sub_261299B04()
{
  result = qword_27FEA3BF8;
  if (!qword_27FEA3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3BF8);
  }

  return result;
}

unint64_t sub_261299B58()
{
  result = qword_27FEA3C00;
  if (!qword_27FEA3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3C00);
  }

  return result;
}

unint64_t sub_261299BAC()
{
  result = qword_27FEA3C08;
  if (!qword_27FEA3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA3C08);
  }

  return result;
}

unint64_t sub_261299C00()
{
  result = qword_27FEA3C10[0];
  if (!qword_27FEA3C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA3C10);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_261299C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_261299CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_261299D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_261299DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_261299E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_261299EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261299F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261299F5C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnrollmentRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26129A164()
{
  result = qword_27FEA42A0[0];
  if (!qword_27FEA42A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA42A0);
  }

  return result;
}

unint64_t sub_26129A1BC()
{
  result = qword_27FEA44B0[0];
  if (!qword_27FEA44B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA44B0);
  }

  return result;
}

unint64_t sub_26129A214()
{
  result = qword_27FEA46C0[0];
  if (!qword_27FEA46C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA46C0);
  }

  return result;
}

unint64_t sub_26129A26C()
{
  result = qword_27FEA48D0[0];
  if (!qword_27FEA48D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA48D0);
  }

  return result;
}

unint64_t sub_26129A2C4()
{
  result = qword_27FEA4AE0[0];
  if (!qword_27FEA4AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4AE0);
  }

  return result;
}

unint64_t sub_26129A31C()
{
  result = qword_27FEA4CF0[0];
  if (!qword_27FEA4CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4CF0);
  }

  return result;
}

unint64_t sub_26129A374()
{
  result = qword_27FEA4F00[0];
  if (!qword_27FEA4F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA4F00);
  }

  return result;
}

unint64_t sub_26129A3CC()
{
  result = qword_27FEA5010;
  if (!qword_27FEA5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5010);
  }

  return result;
}

unint64_t sub_26129A424()
{
  result = qword_27FEA5018[0];
  if (!qword_27FEA5018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5018);
  }

  return result;
}

unint64_t sub_26129A47C()
{
  result = qword_27FEA50A0;
  if (!qword_27FEA50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA50A0);
  }

  return result;
}

unint64_t sub_26129A4D4()
{
  result = qword_27FEA50A8[0];
  if (!qword_27FEA50A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA50A8);
  }

  return result;
}

unint64_t sub_26129A52C()
{
  result = qword_27FEA5130;
  if (!qword_27FEA5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5130);
  }

  return result;
}

unint64_t sub_26129A584()
{
  result = qword_27FEA5138[0];
  if (!qword_27FEA5138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5138);
  }

  return result;
}

unint64_t sub_26129A5DC()
{
  result = qword_27FEA51C0;
  if (!qword_27FEA51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA51C0);
  }

  return result;
}

unint64_t sub_26129A634()
{
  result = qword_27FEA51C8[0];
  if (!qword_27FEA51C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA51C8);
  }

  return result;
}

unint64_t sub_26129A68C()
{
  result = qword_27FEA5250;
  if (!qword_27FEA5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5250);
  }

  return result;
}

unint64_t sub_26129A6E4()
{
  result = qword_27FEA5258[0];
  if (!qword_27FEA5258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5258);
  }

  return result;
}

unint64_t sub_26129A73C()
{
  result = qword_27FEA52E0;
  if (!qword_27FEA52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA52E0);
  }

  return result;
}

unint64_t sub_26129A794()
{
  result = qword_27FEA52E8[0];
  if (!qword_27FEA52E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA52E8);
  }

  return result;
}

unint64_t sub_26129A7EC()
{
  result = qword_27FEA5370;
  if (!qword_27FEA5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5370);
  }

  return result;
}

unint64_t sub_26129A844()
{
  result = qword_27FEA5378;
  if (!qword_27FEA5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5378);
  }

  return result;
}

uint64_t sub_26129A898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496E656B6F74 && a2 == 0xEF7265696669746ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6973726556736F74 && a2 == 0xEA00000000006E6FLL || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26129AB0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564496E656B6F74 && a2 == 0xEF7265696669746ELL || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC000000656C6163 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002613B9B40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2613A241C();

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

unint64_t sub_26129AD28()
{
  result = qword_27FE9F850;
  if (!qword_27FE9F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F850);
  }

  return result;
}

unint64_t sub_26129AD80()
{
  result = qword_27FE9F858;
  if (!qword_27FE9F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F858);
  }

  return result;
}

uint64_t sub_26129ADD4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *a1;
  v4 = a1[1];
  if (a1[5])
  {
    v8 = a1[1];
    v10 = *(a1 + 1);
    v11 = a1[4];
  }

  else
  {
    v7 = *a1;
    v9 = a1[1];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F848, &qword_2613A6DB0);
  return sub_2613A1BDC();
}

unint64_t sub_26129AEBC()
{
  result = qword_27FE9F860;
  if (!qword_27FE9F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F860);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26129AF94(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  if (*(a1 + 40) == 1)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F868, &qword_2613A6DB8);
  return sub_2613A1BDC();
}

unint64_t sub_26129B07C()
{
  result = qword_27FE9F870;
  if (!qword_27FE9F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F870);
  }

  return result;
}

id sub_26129B0F4(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(a1);
  v5 = sub_2613A189C();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_26129B1A8(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(a1);
  v5 = sub_2613A189C();

  v6 = [v4 stringForKey_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2613A18CC();

  return v7;
}

id sub_26129B284(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(a1);
  v5 = sub_2613A189C();

  v6 = [v4 integerForKey_];

  return v6;
}

id sub_26129B338(char a1)
{
  v2 = sub_2613A0C2C();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = sub_2613A0C2C();
  v5 = v4();

  if (v5)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    sub_2612D41F8(a1);
    v7 = sub_2613A189C();

    v8 = [v6 BOOLForKey_];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  sub_2612D41F8(a1);
  v10 = sub_2613A189C();

  [v9 removeObjectForKey_];

  return v8;
}

uint64_t sub_26129B520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v0, qword_27FEAEC90);
  v1 = __swift_project_value_buffer(v0, qword_27FEAEC90);
  sub_2613A123C();
  v2 = sub_2613A124C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_26129B9A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v0, qword_27FEAEDB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEAEDB0);
  sub_2613A123C();
  v2 = sub_2613A124C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_26129BAC4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  sub_2613A123C();
  v5 = sub_2613A124C();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_26129BBBC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26129BC1C()
{
  result = MCGestaltIsInternalBuild();
  byte_27FEAEDE0 = result;
  return result;
}

void sub_26129BC3C(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27FEA5478 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27FEAEDE0;
  if (byte_27FEAEDE0 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x2666FFEA0](8250, 0xE200000000000000);
      MEMORY[0x2666FFEA0](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_2613A122C();
    v12 = sub_2613A1D9C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_2613A186C();
      sub_26124C7CC();
      v14 = sub_2613A1FFC();
      v16 = v15;

      v17 = sub_26129C02C(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F878, &qword_2613A6DD8);
      v41 = sub_2613A195C();
      v42 = v24;
      MEMORY[0x2666FFEA0](45, 0xE100000000000000);
      v25 = MEMORY[0x2666FFE20](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x2666FFEA0](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x2666FFEA0](v28, v29);
      }

      else
      {
        MEMORY[0x2666FFF30](v28, v29);

        v30 = sub_2613A23EC();
        MEMORY[0x2666FFEA0](v30);
      }

      v31 = sub_26124C11C(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_26124C11C(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_261243000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v36, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_26129C02C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_2613A1A0C();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2613A1AEC();
}

uint64_t sub_26129C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  return MEMORY[0x2822009F8](sub_26129C140);
}

uint64_t sub_26129C140()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 40) = &type metadata for ValidationRequest;
  *(v0 + 48) = sub_26129C408();
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_26129C248;
  v8 = *(v0 + 56);

  return sub_26129C45C(v8, 0, v0 + 16, v1 & 0xFFFFFF);
}

uint64_t sub_26129C248()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26129C394);
  }

  else
  {
    sub_26124C718(v3 + 16, &qword_27FE9F888, &qword_2613A6E00);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26129C394()
{
  sub_26124C718(v0 + 16, &qword_27FE9F888, &qword_2613A6E00);
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

unint64_t sub_26129C408()
{
  result = qword_27FE9F880;
  if (!qword_27FE9F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F880);
  }

  return result;
}

uint64_t sub_26129C45C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 272) = a4;
  *(v4 + 144) = a2;
  *(v4 + 152) = a3;
  *(v4 + 136) = a1;
  v5 = sub_26139EC4C();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v9 = sub_26139EF7C();
  *(v4 + 192) = v9;
  v10 = *(v9 - 8);
  *(v4 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26129C5C4);
}

uint64_t sub_26129C5C4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  sub_2612908FC(*(v0 + 272));
  sub_26128FAFC(50, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26124C718(*(v0 + 184), &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 184);
    (*(v7 + 8))(v5, v6);
    (*(v7 + 32))(v5, v8, v6);
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 144);
  (*(*(v0 + 200) + 16))(*(v0 + 208), *(v0 + 216), *(v0 + 192));
  sub_2613A025C();
  sub_26139EBFC();
  sub_26139EBBC();
  if (v10)
  {
    v11 = *(v0 + 176);
    sub_26129CBEC(*(v0 + 144));
  }

  sub_26129DEE4(*(v0 + 152), v0 + 16);
  if (*(v0 + 40))
  {
    v12 = *(v0 + 176);
    sub_26124A200((v0 + 16), v0 + 96);
    v13 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v13);
    sub_26124A620(v13);
    sub_26139EC2C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  }

  v14 = sub_2612A1E08();
  v15 = *v14;
  *(v0 + 224) = *v14;
  v16 = type metadata accessor for ValidationResponse();
  v17 = sub_26129DF54(&qword_27FE9F8C0, type metadata accessor for ValidationResponse);

  v18 = sub_26125A798();
  v19 = *(*v15 + 144);
  v25 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_26129C8C4;
  v22 = *(v0 + 176);
  v23 = *(v0 + 136);

  return (v25)(v23, v22, v18 & 1, v16, v17, v0 + 56);
}

uint64_t sub_26129C8C4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;

  v4 = *(v2 + 224);
  if (v0)
  {
    *(v2 + 276) = *(v2 + 56);
    *(v2 + 240) = *(v2 + 64);
    *(v2 + 248) = *(v2 + 72);
    *(v2 + 264) = *(v2 + 88);

    v5 = sub_26129CA04;
  }

  else
  {

    v5 = sub_26129CB24;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26129CA04()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v13 = *(v0 + 240);
  v3 = *(v0 + 276);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v14 = *(v0 + 208);
  v15 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  sub_26129DF9C();
  swift_allocError();
  *v10 = v3;
  *(v10 + 8) = v13;
  *(v10 + 24) = v2;
  *(v10 + 32) = v1;
  (*(v5 + 8))(v4, v6);
  (*(v9 + 8))(v7, v8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26129CB24()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  (*(v0[25] + 8))(v0[27], v0[24]);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26129CBEC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    sub_26139EC3C();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26129CD10()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_26129CD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2613A241C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2613A241C();

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

uint64_t sub_26129CE2C(uint64_t a1)
{
  v2 = sub_26129D038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129CE68(uint64_t a1)
{
  v2 = sub_26129D038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129CEA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F890, &qword_2613A6E08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26129D038();
  sub_2613A262C();
  v16 = 0;
  sub_2613A238C();
  if (!v5)
  {
    v15 = 1;
    sub_2613A238C();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_26129D038()
{
  result = qword_27FEA5480[0];
  if (!qword_27FEA5480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5480);
  }

  return result;
}

uint64_t sub_26129D0AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](v1, v2);
  MEMORY[0x2666FFEA0](0x203A44495456202CLL, 0xE800000000000000);
  MEMORY[0x2666FFEA0](v3, v4);
  return 0x203A6E656B6F54;
}

uint64_t type metadata accessor for ValidationResponse()
{
  result = qword_27FEA5990;
  if (!qword_27FEA5990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26129D1A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6572400;
  }

  else
  {
    v4 = 0x64496863746162;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6572400;
  }

  else
  {
    v6 = 0x64496863746162;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2613A241C();
  }

  return v9 & 1;
}

uint64_t sub_26129D248()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129D2C4()
{
  *v0;
  sub_2613A19DC();
}

uint64_t sub_26129D32C()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129D3A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2613A228C();

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

void sub_26129D404(uint64_t *a1@<X8>)
{
  v2 = 6572400;
  if (!*v1)
  {
    v2 = 0x64496863746162;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26129D43C()
{
  if (*v0)
  {
    result = 6572400;
  }

  else
  {
    result = 0x64496863746162;
  }

  *v0;
  return result;
}

uint64_t sub_26129D470@<X0>(char *a1@<X8>)
{
  v2 = sub_2613A228C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26129D4D4(uint64_t a1)
{
  v2 = sub_26129D99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26129D510(uint64_t a1)
{
  v2 = sub_26129D99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26129D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26139F13C();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ValidationResponse() + 20);

  return v9(v7, a2, v6);
}

uint64_t sub_26129D600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_26139F13C();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F898, &qword_2613A6E10);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ValidationResponse();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26129D99C();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_26129DF54(&qword_27FE9F550, MEMORY[0x277CC95F0]);
  v20 = v31;
  v21 = v32;
  sub_2613A231C();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_2613A231C();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_26129D9F0(v23, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_26129DA54(v23);
}

unint64_t sub_26129D99C()
{
  result = qword_27FE9F8A0;
  if (!qword_27FE9F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8A0);
  }

  return result;
}

uint64_t sub_26129D9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26129DA54(uint64_t a1)
{
  v2 = type metadata accessor for ValidationResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26129DACC()
{
  result = qword_27FE9F8A8;
  if (!qword_27FE9F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8A8);
  }

  return result;
}

unint64_t sub_26129DB24()
{
  result = qword_27FE9F8B0;
  if (!qword_27FE9F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8B0);
  }

  return result;
}

unint64_t sub_26129DB7C()
{
  result = qword_27FE9F8B8;
  if (!qword_27FE9F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8B8);
  }

  return result;
}

uint64_t sub_26129DBD0(uint64_t a1)
{
  sub_2613A211C();

  sub_26139F13C();
  sub_26129DF54(&qword_27FE9F570, MEMORY[0x277CC95F0]);
  v3 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v3);

  MEMORY[0x2666FFEA0](0x656E74726150202CLL, 0xED0000203A444972);
  v4 = v1 + *(a1 + 20);
  v5 = sub_2613A23EC();
  MEMORY[0x2666FFEA0](v5);

  return 0x3A44496863746142;
}

uint64_t sub_26129DD48()
{
  result = sub_26139F13C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26129DDE0()
{
  result = qword_27FEA5AA0[0];
  if (!qword_27FEA5AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5AA0);
  }

  return result;
}

unint64_t sub_26129DE38()
{
  result = qword_27FEA5BB0;
  if (!qword_27FEA5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA5BB0);
  }

  return result;
}

unint64_t sub_26129DE90()
{
  result = qword_27FEA5BB8[0];
  if (!qword_27FEA5BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA5BB8);
  }

  return result;
}

uint64_t sub_26129DEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F888, &qword_2613A6E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26129DF54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26129DF9C()
{
  result = qword_27FE9F8C8;
  if (!qword_27FE9F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8C8);
  }

  return result;
}

uint64_t sub_26129E004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "PaymentTerminalService";
  }

  else
  {
    v5 = "newOnlineSession";
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "newOnlineSession";
  }

  else
  {
    v7 = "PaymentTerminalService";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2613A241C();
  }

  return v9 & 1;
}

uint64_t sub_26129E0AC()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129E128()
{
  *v0;
  sub_2613A19DC();
}

uint64_t sub_26129E190()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_26129E208@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2613A228C();

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

void sub_26129E268(unint64_t *a1@<X8>)
{
  v2 = "newOnlineSession";
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = "PaymentTerminalService";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_26129E2A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129E2CC);
}

uint64_t sub_26129E2CC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(0);
  sub_2612FDFF8(0, v2[2], v2[3]);

  sub_2612FDFF8(1, v2[4], v2[5]);

  sub_2612FDFF8(2, v2[6], v2[7]);

  sub_2612FDFF8(4, *v2, v2[1]);

  sub_2612FDFF8(6, v2[8], v2[9]);

  sub_2612FDFF8(3, v2[10], v2[11]);

  sub_2612FDFF8(5, v2[12], v2[13]);

  if (v1)
  {
    v3 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 80);
    v3 = sub_2613A23EC();
  }

  v5 = *(v0 + 72);
  sub_2612FDFF8(7, v3, v4);

  v6 = *(v5 + 128);
  result = sub_2612FF320();
  v9 = v6 - v8;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = *(v0 + 64);
  *(v0 + 16) = v9;
  v11 = sub_2613A23EC();
  sub_2612FDFF8(9, v11, v12);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v10;
  sub_26129E57C(sub_2612A0C20);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26129E57C(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  sub_26125A870(v1, v7, &qword_27FE9F8D0, &unk_2613AC6E0);
  v4 = v8;
  if (!v8)
  {
    return v4 == 0;
  }

  v6[0] = v7[0];
  v6[1] = v7[1];
  v6[2] = v8;
  a1(&v9, v6);
  if (!v2)
  {
    sub_2612A0E50(v6);
    return v4 == 0;
  }

  result = sub_2612A0E50(v6);
  __break(1u);
  return result;
}

uint64_t sub_26129E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = a6;
  *(v6 + 104) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129E658);
}

uint64_t sub_26129E658()
{
  v1 = *(v0 + 80);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(1);
  if (v1)
  {
    v2 = (*(**(v0 + 80) + 192))();
  }

  else
  {
    v2 = sub_2613A0CFC();
  }

  sub_2612FDFF8(0, v2, v3);

  if (v1)
  {
    v4 = *(v0 + 80);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
  }

  else
  {
    v5 = sub_2613A0CFC();
    v6 = v7;
  }

  sub_2612FDFF8(1, v5, v6);

  if (v1)
  {
    v8 = *(v0 + 80);
    v9 = *(v8 + 104);
    v10 = *(v8 + 112);
  }

  else
  {
    v9 = sub_2613A0CFC();
    v10 = v11;
  }

  sub_2612FDFF8(2, v9, v10);

  if (v1 && (v12 = *(v0 + 80), (v13 = *(v12 + 144)) != 0))
  {
    v14 = *(v12 + 136);
    v15 = *(v12 + 144);
  }

  else
  {
    v14 = sub_2613A0CFC();
    v13 = v16;
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 64);
  sub_2612FDFF8(6, v14, v13);

  sub_2612FDFF8(3, v18[8], v18[9]);

  sub_2612FDFF8(5, v18[4], v18[5]);

  if (v17)
  {
    v19 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 88);
    v19 = sub_2613A23EC();
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  sub_2612FDFF8(7, v19, v20);

  v23 = [v21 description];
  v24 = sub_2613A18CC();
  v26 = v25;

  sub_2612FDFF8(10, v24, v26);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v22;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_26129E984(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_26129E9A4);
}

uint64_t sub_26129E9A4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_26127E13C();
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(11);
  sub_2612FDFF8(3, v1[10], v1[11]);

  sub_2612FDFF8(5, v1[12], v1[13]);

  sub_2612FDFF8(4, *v1, v1[1]);

  if (v3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "newOnlineSession";
  }

  else
  {
    v5 = "PaymentTerminalService";
  }

  sub_2612FDFF8(10, v4, v5 | 0x8000000000000000);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v2;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26129EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[100] = a3;
  v3[99] = a2;
  v3[98] = a1;
  return MEMORY[0x2822009F8](sub_26129EB60);
}

uint64_t sub_26129EB60()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(2);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 800);
  v52 = *(v0 + 784);
  sub_2612FDFF8(4, v48, v50);

  v53 = sub_26139F0FC();
  sub_2612FDFF8(11, v53, v54);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v52;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_26129EF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 153) = a5;
  *(v5 + 808) = a4;
  *(v5 + 800) = a3;
  *(v5 + 792) = a2;
  *(v5 + 784) = a1;
  return MEMORY[0x2822009F8](sub_26129EF78);
}

uint64_t sub_26129EF78()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(3);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 808);
  v52 = *(v0 + 800);
  v53 = *(v0 + 784);
  v54 = *(v0 + 153);
  sub_2612FDFF8(4, v48, v50);

  v55 = sub_26139F0FC();
  sub_2612FDFF8(11, v55, v56);

  v57 = sub_261272B0C(v51, v54);
  sub_2612FDFF8(10, v57, v58);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v53;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_26129F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 153) = a5;
  *(v5 + 808) = a4;
  *(v5 + 800) = a3;
  *(v5 + 792) = a2;
  *(v5 + 784) = a1;
  return MEMORY[0x2822009F8](sub_26129F3D0);
}

uint64_t sub_26129F3D0()
{
  v1 = *(v0 + 792);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(4);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  *(v0 + 137) = *(v1 + 121);
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v7;
  if (sub_261273F24(v0 + 16) == 1)
  {
    v8 = sub_2613A0CFC();
    v10 = v9;
  }

  else
  {
    v8 = *(v0 + 32);
    v10 = *(v0 + 40);
  }

  v11 = *(v0 + 792);
  sub_2612FDFF8(0, v8, v10);

  *(v0 + 160) = *v11;
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  *(v0 + 208) = v11[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v0 + 281) = *(v11 + 121);
  *(v0 + 256) = v16;
  *(v0 + 272) = v17;
  *(v0 + 240) = v15;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v18 = sub_2613A0CFC();
    v20 = v19;
  }

  else
  {
    v18 = *(v0 + 192);
    v20 = *(v0 + 200);
  }

  v21 = *(v0 + 792);
  sub_2612FDFF8(1, v18, v20);

  *(v0 + 304) = *v21;
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[4];
  *(v0 + 352) = v21[3];
  *(v0 + 368) = v24;
  *(v0 + 320) = v22;
  *(v0 + 336) = v23;
  v25 = v21[5];
  v26 = v21[6];
  v27 = v21[7];
  *(v0 + 425) = *(v21 + 121);
  *(v0 + 400) = v26;
  *(v0 + 416) = v27;
  *(v0 + 384) = v25;
  if (sub_261273F24(v0 + 304) == 1)
  {
    v28 = sub_2613A0CFC();
    v30 = v29;
  }

  else
  {
    v28 = *(v0 + 352);
    v30 = *(v0 + 360);
  }

  v31 = *(v0 + 792);
  sub_2612FDFF8(2, v28, v30);

  *(v0 + 448) = *v31;
  v32 = v31[1];
  v33 = v31[2];
  v34 = v31[4];
  *(v0 + 496) = v31[3];
  *(v0 + 512) = v34;
  *(v0 + 464) = v32;
  *(v0 + 480) = v33;
  v35 = v31[5];
  v36 = v31[6];
  v37 = v31[7];
  *(v0 + 569) = *(v31 + 121);
  *(v0 + 544) = v36;
  *(v0 + 560) = v37;
  *(v0 + 528) = v35;
  if (sub_261273F24(v0 + 448) == 1)
  {
    v38 = sub_2613A0CFC();
    v40 = v39;
  }

  else
  {
    v38 = *(v0 + 528);
    v40 = *(v0 + 536);
  }

  v41 = *(v0 + 792);
  sub_2612FDFF8(3, v38, v40);

  *(v0 + 592) = *v41;
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[4];
  *(v0 + 640) = v41[3];
  *(v0 + 656) = v44;
  *(v0 + 608) = v42;
  *(v0 + 624) = v43;
  v45 = v41[5];
  v46 = v41[6];
  v47 = v41[7];
  *(v0 + 713) = *(v41 + 121);
  *(v0 + 688) = v46;
  *(v0 + 704) = v47;
  *(v0 + 672) = v45;
  if (sub_261273F24(v0 + 592) == 1)
  {
    v48 = sub_2613A0CFC();
    v50 = v49;
  }

  else
  {
    v48 = *(v0 + 592);
    v50 = *(v0 + 600);
  }

  v51 = *(v0 + 808);
  v52 = *(v0 + 800);
  v53 = *(v0 + 784);
  v54 = *(v0 + 153);
  sub_2612FDFF8(4, v48, v50);

  v55 = sub_26139F0FC();
  sub_2612FDFF8(11, v55, v56);

  v57 = sub_261272B0C(v51, v54);
  sub_2612FDFF8(10, v57, v58);

  sub_2612FE0B4(v0 + 736);
  *(swift_task_alloc() + 16) = v53;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 736, &qword_27FE9F8D0, &unk_2613AC6E0);
  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_26129F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_26139F13C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26129F8C0);
}

uint64_t sub_26129F8C0()
{
  v43 = v0;
  v1 = v0;
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[9];
    *&v40 = MEMORY[0x277D84F90];
    sub_2613A219C();
    type metadata accessor for SafMonitorEventBuilder();
    v6 = *(v5 + 16);
    v5 += 16;
    v32 = v6;
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v30 = (v5 - 8);
    v31 = *(v5 + 56);
    do
    {
      v8 = v1[10];
      v9 = v1[8];
      v11 = v1[5];
      v10 = v1[6];
      v34 = v1[3];
      v36 = v1[4];
      v32(v8, v7, v9);
      sub_2612BAC20(12);
      v12 = sub_26139F0FC();
      sub_2612FDFF8(11, v12, v13);

      sub_2612FDFF8(3, v11, v10);

      sub_2612FDFF8(5, v34, v36);

      (*v30)(v8, v9);
      sub_2613A217C();
      v14 = *(v40 + 16);
      sub_2613A21AC();
      sub_2613A21BC();
      sub_2613A218C();
      v7 += v31;
      --v3;
    }

    while (v3);
    v4 = v40;
  }

  v35 = v1[10];
  v37 = v1;
  v33 = v1[2];
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2613A221C())
  {
    v16 = MEMORY[0x277D84F90];
    v17 = 4;
    while (1)
    {
      v18 = v17 - 4;
      if ((v4 & 0xC000000000000001) == 0)
      {
        break;
      }

      MEMORY[0x2667005C0](v17 - 4, v4);
      v20 = v17 - 3;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      sub_2612FE0B4(v38);

      if (v39)
      {
        v40 = v38[0];
        v41 = v38[1];
        v42 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_2612A0C38(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_2612A0C38((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v23 = &v16[48 * v22];
        v24 = v40;
        v25 = v42;
        *(v23 + 3) = v41;
        *(v23 + 4) = v25;
        *(v23 + 2) = v24;
      }

      else
      {
        sub_26124C718(v38, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_25;
      }
    }

    if (v18 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v19 = *(v4 + 8 * v17);

    v20 = v17 - 3;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_25:
  if (*(v16 + 2))
  {
    v26 = v33[3];
    v27 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v26);
    (*(v27 + 128))(v16, v26, v27);
  }

  v28 = v37[1];

  return v28();
}

uint64_t sub_26129FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_26129FC9C);
}

uint64_t sub_26129FC9C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(13);
  v0[2] = v1;
  v4 = sub_2613A23EC();
  sub_2612FDFF8(14, v4, v5);

  sub_2612FDFF8(3, v3[8], v3[9]);

  sub_2612FDFF8(5, v3[4], v3[5]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v2;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26129FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x2822009F8](sub_26129FE44);
}

uint64_t sub_26129FE44()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(5);
  *(v0 + 16) = v3;
  v5 = sub_2613A23EC();
  sub_2612FDFF8(13, v5, v6);

  v7 = sub_26139F0FC();
  sub_2612FDFF8(12, v7, v8);

  sub_2612FDFF8(5, v4[4], v4[5]);

  sub_2612FDFF8(3, v4[8], v4[9]);

  if (v1)
  {
    v9 = sub_2613A0CFC();
  }

  else
  {
    *(v0 + 16) = *(v0 + 96);
    v9 = sub_2613A23EC();
  }

  v11 = *(v0 + 72);
  sub_2612FDFF8(8, v9, v10);

  sub_2612FE0B4(v0 + 16);
  *(swift_task_alloc() + 16) = v11;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718(v0 + 16, &qword_27FE9F8D0, &unk_2613AC6E0);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2612A0064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2612A0088);
}

uint64_t sub_2612A0088()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(6);
  v0[2] = v2;
  v5 = sub_2613A23EC();
  sub_2612FDFF8(13, v5, v6);

  sub_2612FDFF8(5, v4[4], v4[5]);

  sub_2612FDFF8(3, v4[8], v4[9]);

  v7 = [v1 description];
  v8 = sub_2613A18CC();
  v10 = v9;

  sub_2612FDFF8(10, v8, v10);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v3;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v11 = v0[1];

  return v11();
}

uint64_t sub_2612A0254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_2612A027C);
}

uint64_t sub_2612A027C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v12 = v0[9];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(7);
  v0[2] = v4;
  v6 = sub_2613A23EC();
  sub_2612FDFF8(13, v6, v7);

  v8 = sub_26139F0FC();
  sub_2612FDFF8(12, v8, v9);

  sub_2612FDFF8(5, v5[4], v5[5]);

  sub_2612FDFF8(2, v2, v1);

  sub_2612FDFF8(3, v5[8], v5[9]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v12;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v10 = v0[1];

  return v10();
}

uint64_t sub_2612A0460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A0500);
}

uint64_t sub_2612A0500()
{
  v1 = v0[12];
  v2 = v0[10];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(8);
  sub_26125A870(v2, v1, &qword_27FE9F280, &unk_2613A42B0);
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_26124C718(v0[12], &qword_27FE9F280, &unk_2613A42B0);
    v7 = sub_2613A0CFC();
    v9 = v8;
  }

  else
  {
    v10 = v0[12];
    v7 = sub_26139F0FC();
    v9 = v11;
    (*(v4 + 8))(v6, v3);
  }

  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[8];
  v14 = v0[9];
  sub_2612FDFF8(12, v7, v9);

  sub_2612FDFF8(5, v15[4], v15[5]);

  sub_2612FDFF8(3, v15[8], v15[9]);

  v16 = [v13 description];
  v17 = sub_2613A18CC();
  v19 = v18;

  sub_2612FDFF8(10, v17, v19);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v14;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);

  v20 = v0[1];

  return v20();
}