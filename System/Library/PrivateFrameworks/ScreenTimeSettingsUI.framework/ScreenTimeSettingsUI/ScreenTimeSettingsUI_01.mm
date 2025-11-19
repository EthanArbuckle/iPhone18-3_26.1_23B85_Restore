uint64_t sub_264C77D50(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_264C77AF0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_264C77ED0();
      goto LABEL_16;
    }

    sub_264C7802C();
  }

  v10 = *v4;
  sub_264CC4B7C();
  sub_264CC460C();
  result = sub_264CC4B9C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_264CC4AAC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_264CC4ACC();
  __break(1u);
  return result;
}

void *sub_264C77ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E8);
  v2 = *v0;
  v3 = sub_264CC48EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_264C7802C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E8);
  result = sub_264CC48FC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_264CC4B7C();

      sub_264CC460C();
      result = sub_264CC4B9C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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
    *v1 = v4;
  }

  return result;
}

uint64_t sub_264C78278(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v11 = MEMORY[0x277D83B88];
    v10 = a1;
  }

  v21 = v10;
  v24 = v11;

  sub_264C8F2F4(a4, a5, &v21);
  sub_264C646E4(&v21, &unk_27FFA9A90);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  v21 = a1;
  LOBYTE(v22) = a2 & 1;

  sub_264C914B0(&v21, a4, a5, &v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_264CC391C();
  sub_264C801E4(&v19, a4, a5);
  v12(&v18, 0);

  swift_beginAccess();

  sub_264C779A0(&v18, a4, a5);
  swift_endAccess();

  sub_264C925EC(a4, a5);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v13 = sub_264C9173C(v19);
  v15 = v14;

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v13;
  v20 = v15 & 1;
  v16 = a3;
  sub_264CC393C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v21);
}

uint64_t sub_264C784F0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v8 = 0;
    memset(v18, 0, sizeof(v18));
  }

  else
  {
    LOBYTE(v18[0]) = a1 & 1;
    v8 = MEMORY[0x277D839B0];
  }

  v19 = v8;

  sub_264C8F2F4(a3, a4, v18);
  sub_264C646E4(v18, &unk_27FFA9A90);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA95E0);
  LOBYTE(v18[0]) = a1;

  sub_264C914B0(v18, a3, a4, &v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = sub_264CC391C();
  sub_264C801E4(&v16, a3, a4);
  v9(&v15, 0);

  swift_beginAccess();

  sub_264C779A0(&v15, a3, a4);
  swift_endAccess();

  sub_264C925EC(a3, a4);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v10 = sub_264C9173C(v16);
  v12 = v11;

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v10;
  v17 = v12 & 1;
  v13 = a2;
  sub_264CC393C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_264C78764(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_264C787AC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_264C787E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  v5 = sub_264C8EE08(v3, v4);

  *a1 = v5;
  return result;
}

uint64_t sub_264C78840@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  v5 = sub_264C8EBD0(v3, v4);
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  return result;
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_264C7890C()
{
  result = qword_27FFA9640;
  if (!qword_27FFA9640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9648);
    sub_264C64918(&qword_27FFA9560, &qword_27FFA9550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9050);
    sub_264C77588();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9640);
  }

  return result;
}

unint64_t sub_264C78A08()
{
  result = qword_27FFA9650;
  if (!qword_27FFA9650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9658);
    sub_264C78AC0();
    sub_264C64918(&qword_27FFA9680, &qword_27FFA9688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9650);
  }

  return result;
}

unint64_t sub_264C78AC0()
{
  result = qword_27FFA9660;
  if (!qword_27FFA9660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9668);
    sub_264C64918(&qword_27FFA9670, &qword_27FFA9678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9660);
  }

  return result;
}

uint64_t sub_264C78B90()
{
  v0 = sub_264CC387C();
  __swift_allocate_value_buffer(v0, qword_27FFA9690);
  __swift_project_value_buffer(v0, qword_27FFA9690);
  return sub_264CC386C();
}

uint64_t sub_264C78C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = sub_264CC34AC();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264CC35BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264CC357C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v31 = a1;
  _s15ScreenTimeSwift21STExpressIntroductionO0aB10SettingsUIE0F0V19communicationLimitsAC013CommunicationiF0Vvg_0();
  sub_264CC359C();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v16, v10);
  v17 = (*(v11 + 88))(v13, v10);
  if (v17 == *MEMORY[0x277D4BD60])
  {
    goto LABEL_5;
  }

  if (v17 == *MEMORY[0x277D4BD58])
  {
    v18 = 1;
LABEL_6:
    (*(v11 + 8))(v16, v10);
    v19 = v32;
    v20 = v33;
    (*(v4 + 16))(v32, v31, v33);
    v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v22 = swift_allocObject();
    (*(v4 + 32))(v22 + v21, v19, v20);
    v23 = (v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    v24 = v35;
    *v23 = v34;
    v23[1] = v24;
    v25 = objc_allocWithZone(STIntroCommunicationLimitsViewController);

    v26 = sub_264CC459C();
    aBlock[4] = sub_264C790F8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264C8A01C;
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);
    v28 = [v25 initWithChildName:v26 limitType:v18 continueHandler:v27];

    _Block_release(v27);

    return v28;
  }

  if (v17 == *MEMORY[0x277D4BD68])
  {
LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  result = sub_264CC4A9C();
  __break(1u);
  return result;
}

uint64_t sub_264C79004(void *a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_264CC34AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C79198(a2, a1, v9);
  a3(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_264C790F8(void *a1)
{
  v3 = *(sub_264CC34AC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_264C79004(a1, v1 + v4, v5);
}

uint64_t sub_264C79198@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264CC357C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = v33 - v12;
  v14 = [a2 enablementState];
  if (v14)
  {
    if (v14 == 2)
    {
      v19 = sub_264CC34AC();
      (*(*(v19 - 8) + 16))(a3, a1, v19);
      v20 = sub_264CC33FC();
      sub_264CC358C();
      v20(v33, 0);
      v17 = [a2 limitType];
      if (v17)
      {
        if (v17 != 1)
        {
LABEL_22:
          v32 = v17;
          type metadata accessor for STIntroCommunicationLimitsType(0);
          v33[0] = v32;
          result = sub_264CC4ABC();
          __break(1u);
          return result;
        }

        v21 = MEMORY[0x277D4BD58];
      }

      else
      {
        v21 = MEMORY[0x277D4BD60];
      }

      (*(v7 + 104))(v9, *v21, v6);
      v30 = sub_264CC33FC();
      sub_264CC35AC();
      return v30(v33, 0);
    }

    if (v14 == 1)
    {
      v15 = sub_264CC34AC();
      (*(*(v15 - 8) + 16))(a3, a1, v15);
      v16 = sub_264CC33FC();
      sub_264CC358C();
      v16(v33, 0);
      v17 = [a2 limitType];
      if (!v17)
      {
        v18 = MEMORY[0x277D4BD60];
LABEL_21:
        (*(v7 + 104))(v13, *v18, v6);
        v31 = sub_264CC33FC();
        sub_264CC35AC();
        return v31(v33, 0);
      }

      if (v17 == 1)
      {
        v18 = MEMORY[0x277D4BD58];
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v22 = v14;
    if (qword_27FFA8FE0 != -1)
    {
      swift_once();
    }

    v23 = sub_264CC387C();
    __swift_project_value_buffer(v23, qword_27FFA9690);
    v24 = sub_264CC385C();
    v25 = sub_264CC47EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_264BA2000, v24, v25, "Received unknown Communication Limits enablement state: %ld; leaving settings unchanged", v26, 0xCu);
      MEMORY[0x26674C780](v26, -1, -1);
    }
  }

  v27 = sub_264CC34AC();
  v28 = *(*(v27 - 8) + 16);

  return v28(a3, a1, v27);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_264C7964C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_264C796F4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_264C799AC(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_264C79D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = sub_264CC3CEC();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v26.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *(a1 + 24);
  v27 = v26.i64[0];
  v5 = sub_264CC43FC();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26.i8[-v6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9728);
  v29 = sub_264CC3B5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9730);
  v8 = sub_264CC3B5C();
  v9 = *(v8 - 8);
  v10 = (MEMORY[0x28223BE20])(v8);
  v12 = &v26.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26.i8[-v14];
  v34 = *(a1 + 16);
  v13.i64[0] = v34;
  *&v16 = vdupq_laneq_s64(v26, 1).u64[0];
  v17 = *(a1 + 48);
  *(&v16 + 1) = *(a1 + 40);
  v40 = vzip1q_s64(v13, v26);
  v41 = v16;
  v18 = *(a1 + 56);
  v42 = v17;
  v43 = v18;
  v44 = v28;
  v35 = v26;
  v36 = *(&v16 + 1);
  v37 = v17;
  v38 = v18;
  v39 = v28;
  sub_264C7A428(sub_264C7A524);
  sub_264CC3CDC();
  v49 = MEMORY[0x277CE1410];
  v50 = v17;
  v51 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_264CC409C();
  (*(v31 + 8))(v4, v32);
  (*(v30 + 8))(v7, v5);
  v20 = sub_264C64918(&qword_27FFA9738, &qword_27FFA9728);
  v47 = WitnessTable;
  v48 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_264C64918(qword_27FFA9740, &qword_27FFA9730);
  v45 = v21;
  v46 = v22;
  v23 = swift_getWitnessTable();
  sub_264C71A58(v12, v8, v23);
  v24 = *(v9 + 8);
  v24(v12, v8);
  sub_264C71A58(v15, v8, v23);
  return (v24)(v15, v8);
}

uint64_t sub_264C7A210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v18 = type metadata accessor for ContentRestrictionSection();
  sub_264C71A58(a1 + *(v18 + 68), a3, a6);
  sub_264C71A58(v11, a3, a6);
  return (*(v9 + 8))(v11, a3);
}

uint64_t sub_264C7A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for ContentRestrictionSection();
  sub_264C71A58(a1 + *(v19 + 72), a4, a7);
  sub_264C71A58(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t sub_264C7A428(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  return sub_264CC43EC();
}

uint64_t sub_264C7A578()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264C7A5E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_264C7A728(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_264C7A98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v24 = sub_264CC38AC();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97C8);
  v6 = sub_264CC3B5C();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97D0);
  v9 = sub_264CC3B5C();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  *&v32 = sub_264CC41CC();
  v16 = *(a1 + 24);
  sub_264CC408C();

  sub_264CC389C();
  sub_264CC388C();
  (*(v3 + 8))(v5, v24);
  v32 = xmmword_264CD2D70;
  v33 = xmmword_264CD2D70;
  v34 = 0;
  v17 = sub_264C64918(&qword_27FFA97D8, &qword_27FFA97C8);
  v30 = v16;
  v31 = v17;
  WitnessTable = swift_getWitnessTable();
  sub_264CC405C();
  (*(v25 + 8))(v8, v6);
  v19 = sub_264C64918(&qword_27FFA97E0, &qword_27FFA97D0);
  v28 = WitnessTable;
  v29 = v19;
  v20 = swift_getWitnessTable();
  sub_264C71A58(v11, v9, v20);
  v21 = *(v26 + 8);
  v21(v11, v9);
  sub_264C71A58(v14, v9, v20);
  return (v21)(v14, v9);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_264C7AD80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_264C7ADC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double *sub_264C7AE44(double *result)
{
  v1 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9800);
    return sub_264CC435C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_264C7AEEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA97F8);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v44 = &v39[-v6];
  sub_264CC3CFC();
  v7 = [objc_opt_self() bundle];
  v8 = sub_264CC3FAC();
  v42 = v10;
  v43 = v9;
  v12 = v11;
  v45 = a1;
  v13 = *(a1 + 40);
  v49 = *a1;
  v50 = *(a1 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9800);
  MEMORY[0x26674B010](&v48, v14);
  *&v49 = v13(v48);
  *(&v49 + 1) = v15;
  sub_264C64744();
  v16 = sub_264CC3FBC();
  v18 = v17;
  v20 = v19;
  v21 = sub_264CC3F8C();
  v23 = v22;
  LOBYTE(v13) = v24;
  sub_264C64798(v16, v18, v20 & 1);

  LOBYTE(v16) = v12;
  v25 = v43;
  v26 = sub_264CC3F7C();
  v28 = v27;
  v40 = v29;
  v41 = v30;
  sub_264C64798(v21, v23, v13 & 1);

  sub_264C64798(v8, v25, v16 & 1);

  v31 = sub_264CC3CCC();
  v32 = v44;
  *v44 = v31;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9808);
  sub_264C7B250(v45, v32 + *(v33 + 44));
  v34 = v46;
  sub_264C6467C(v32, v46, &qword_27FFA97F8);
  v35 = v47;
  *v47 = v26;
  v35[1] = v28;
  LOBYTE(v13) = v40 & 1;
  *(v35 + 16) = v40 & 1;
  v35[3] = v41;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9810);
  sub_264C6467C(v34, v36 + *(v37 + 48), &qword_27FFA97F8);
  sub_264C63D0C(v26, v28, v13);

  sub_264C646E4(v32, &qword_27FFA97F8);
  sub_264C646E4(v34, &qword_27FFA97F8);
  sub_264C64798(v26, v28, v13);
}

uint64_t sub_264C7B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9818);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA91C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9820);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  v65 = &v56 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = sub_264CC41EC();
  v20 = sub_264CC3F0C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v57 = v20;
  v59 = v22;
  v58 = v21 + 56;
  (v22)(v9, 1, 1);
  v23 = sub_264CC3F1C();
  sub_264C646E4(v9, &qword_27FFA91C8);
  KeyPath = swift_getKeyPath();
  v25 = sub_264CC414C();
  v26 = swift_getKeyPath();
  v72 = v19;
  v73 = KeyPath;
  v74 = v23;
  v75 = v26;
  v76 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9658);
  v27 = sub_264C78A08();
  v66 = v18;
  v56 = v27;
  sub_264CC40AC();

  sub_264CC474C();
  sub_264C7BA08(a1, &v72);
  v28 = sub_264CC473C();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  v31 = *(a1 + 48);
  *(v29 + 64) = *(a1 + 32);
  *(v29 + 80) = v31;
  *(v29 + 96) = *(a1 + 64);
  v32 = *(a1 + 16);
  *(v29 + 32) = *a1;
  *(v29 + 48) = v32;
  sub_264C7BA08(a1, &v72);
  v33 = sub_264CC473C();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v30;
  v35 = *(a1 + 48);
  *(v34 + 64) = *(a1 + 32);
  *(v34 + 80) = v35;
  *(v34 + 96) = *(a1 + 64);
  v36 = *(a1 + 16);
  *(v34 + 32) = *a1;
  *(v34 + 48) = v36;
  result = sub_264CC437C();
  v38 = *(a1 + 32);
  if (v38 <= 1)
  {
    v38 = 1;
  }

  if (*(a1 + 24) > v38)
  {
    __break(1u);
  }

  else
  {
    v70 = *(a1 + 24);
    v71 = v38;
    v69 = 0x3FF0000000000000;
    sub_264C7BB08();

    v39 = v67;
    sub_264CC430C();
    v40 = sub_264CC41EC();
    v59(v9, 1, 1, v57);
    v41 = sub_264CC3F1C();
    sub_264C646E4(v9, &qword_27FFA91C8);
    v42 = swift_getKeyPath();
    v43 = sub_264CC414C();
    v44 = swift_getKeyPath();
    v72 = v40;
    v73 = v42;
    v74 = v41;
    v75 = v44;
    v76 = v43;
    v45 = v65;
    sub_264CC40AC();

    v46 = v68;
    sub_264C6467C(v66, v68, &qword_27FFA9820);
    v48 = v62;
    v47 = v63;
    v49 = *(v63 + 16);
    v50 = v39;
    v51 = v64;
    v49(v62, v50, v64);
    v52 = v60;
    sub_264C6467C(v45, v60, &qword_27FFA9820);
    v53 = v61;
    sub_264C6467C(v46, v61, &qword_27FFA9820);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9830);
    v49((v53 + *(v54 + 48)), v48, v51);
    sub_264C6467C(v52, v53 + *(v54 + 64), &qword_27FFA9820);
    sub_264C646E4(v65, &qword_27FFA9820);
    v55 = *(v47 + 8);
    v55(v67, v51);
    sub_264C646E4(v66, &qword_27FFA9820);
    sub_264C646E4(v52, &qword_27FFA9820);
    v55(v48, v51);
    return sub_264C646E4(v68, &qword_27FFA9820);
  }

  return result;
}

uint64_t sub_264C7B938@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v3;
  v18 = *(v1 + 64);
  v4 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v4;
  *a1 = sub_264CC3D3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA97E8);
  sub_264C7AEEC(v17, (a1 + *(v5 + 44)));
  v6 = sub_264CC3ECC();
  sub_264CC39DC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA97F0);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

double sub_264C7BA40@<D0>(double *a1@<X8>)
{
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9800);
  MEMORY[0x26674B010](&v5, v3);
  result = v5;
  *a1 = v5;
  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_264C7BB08()
{
  result = qword_27FFA9828;
  if (!qword_27FFA9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9828);
  }

  return result;
}

unint64_t sub_264C7BB5C()
{
  result = qword_27FFA9838;
  if (!qword_27FFA9838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA97F0);
    sub_264C64918(&qword_27FFA9840, &qword_27FFA9848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9838);
  }

  return result;
}

uint64_t type metadata accessor for STAppRatingsAndExceptionsView()
{
  result = qword_27FFA9858;
  if (!qword_27FFA9858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264C7BC88()
{
  sub_264C7BCF4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264C7BCF4()
{
  if (!qword_27FFA9868)
  {
    type metadata accessor for STAppRatingsAndExceptionsViewModel();
    v0 = sub_264CC444C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFA9868);
    }
  }
}

uint64_t sub_264C7BD68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9870);
  sub_264C64918(&qword_27FFA9878, &qword_27FFA9870);
  sub_264CC3F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  sub_264CC440C();
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v2 = *(v7 + 184);

  KeyPath = swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = (v2 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9888);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = sub_264C7F050;
  v6[2] = v4;
  return result;
}

uint64_t sub_264C7BF14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9890);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v72 - v6;
  v79 = sub_264CC3B7C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9898);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98A0);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = &v72 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98A8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v90 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  sub_264CC440C();
  v19 = *(v99 + 32);
  v18 = *(v99 + 40);

  v99 = v19;
  v100 = v18;
  v20 = sub_264C64744();
  v99 = sub_264CC3FBC();
  v100 = v21;
  LOBYTE(v101) = v22 & 1;
  v102 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98B0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA98B8);
  v25 = sub_264CC3B4C();
  v26 = sub_264C64918(&qword_27FFA98C0, &qword_27FFA98B8);
  v95 = v24;
  v96 = v25;
  v97 = v26;
  v98 = MEMORY[0x277CDDA00];
  v27 = 1;
  swift_getOpaqueTypeConformance2();
  v89 = v16;
  sub_264CC43CC();
  v80 = v17;
  sub_264CC440C();
  v28 = v99;
  swift_getKeyPath();
  v99 = v28;
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v30 = v28[9];
  v29 = v28[10];
  v32 = v28[11];
  v31 = v28[12];
  v33 = v28[13];
  sub_264C7F070(v30, v29);

  v75 = v20;
  if (v29)
  {
    v72 = &v72;
    v99 = v30;
    v100 = v29;
    v101 = v32;
    v102 = v31;
    v103 = v33;
    MEMORY[0x28223BE20](v34);
    v95 = v30;
    v96 = v29;

    v95 = sub_264CC3FBC();
    v96 = v35;
    LOBYTE(v97) = v36 & 1;
    v98 = v37;
    v91 = v31;
    v92 = v33;

    v91 = sub_264CC3FBC();
    v92 = v38;
    v93 = v39 & 1;
    v94 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98F8);
    v70 = sub_264C7F16C(&qword_27FFA9900, &qword_27FFA98F8, &unk_264CD31E8, sub_264C7F1E8);
    v71 = MEMORY[0x277CE0BC8];
    v41 = v73;
    sub_264CC43DC();

    v42 = v77;
    sub_264CC3B6C();
    sub_264C7F23C();
    sub_264C7FD90(&qword_27FFA9918, MEMORY[0x277CDDB18]);
    v43 = v88;
    v44 = v76;
    v45 = v79;
    sub_264CC401C();
    (*(v78 + 8))(v42, v45);
    (*(v74 + 8))(v41, v44);
    v27 = 0;
    v46 = v43;
  }

  else
  {
    v46 = v88;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98C8);
  v48 = 1;
  (*(*(v47 - 8) + 56))(v46, v27, 1, v47);
  sub_264CC440C();
  v49 = v95;
  swift_getKeyPath();
  v95 = v49;
  sub_264CC308C();

  v51 = v49[14];
  v50 = v49[15];
  v52 = v49[16];
  sub_264C7F0C0(v51, v50);

  v54 = v85;
  if (v50)
  {
    MEMORY[0x28223BE20](v53);
    *(&v72 - 4) = v51;
    *(&v72 - 3) = v50;
    v70 = v52;
    v95 = v51;
    v96 = v50;

    v95 = sub_264CC3FBC();
    v96 = v55;
    LOBYTE(v97) = v56 & 1;
    v98 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98E0);
    sub_264C7F16C(&qword_27FFA98E8, &qword_27FFA98E0, &unk_264CD31E0, sub_264C7F110);
    sub_264CC43CC();

    v48 = 0;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98D0);
  (*(*(v58 - 8) + 56))(v54, v48, 1, v58);
  v59 = v82;
  v60 = *(v82 + 16);
  v61 = v81;
  v62 = v54;
  v63 = v83;
  v60(v81, v89, v83);
  v64 = v84;
  sub_264C6467C(v46, v84, &qword_27FFA98A0);
  v65 = v87;
  sub_264C6467C(v62, v87, &qword_27FFA9890);
  v66 = v86;
  v60(v86, v61, v63);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98D8);
  sub_264C6467C(v64, &v66[*(v67 + 48)], &qword_27FFA98A0);
  sub_264C6467C(v65, &v66[*(v67 + 64)], &qword_27FFA9890);
  sub_264C646E4(v62, &qword_27FFA9890);
  sub_264C646E4(v88, &qword_27FFA98A0);
  v68 = *(v59 + 8);
  v68(v89, v63);
  sub_264C646E4(v65, &qword_27FFA9890);
  sub_264C646E4(v64, &qword_27FFA98A0);
  return (v68)(v61, v63);
}

uint64_t sub_264C7C9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_264CC3B4C();
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA98B8);
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - v12;
  sub_264CC440C();
  v14 = *(v27 + 48);
  v15 = *(v27 + 56);

  v30 = v14;
  v31 = v15;
  sub_264CC441C();
  swift_getKeyPath();
  sub_264CC443C();

  (*(v8 + 8))(v10, v7);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9940);
  sub_264C7F594();
  sub_264C7F610();
  sub_264C64744();
  sub_264CC42EC();
  sub_264CC3B3C();
  sub_264C64918(&qword_27FFA98C0, &qword_27FFA98B8);
  v17 = v19;
  v16 = v20;
  sub_264CC402C();
  (*(v21 + 8))(v6, v16);
  return (*(v11 + 8))(v13, v17);
}

uint64_t sub_264C7CD5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v5 = *(v3 + 160);
  *a2 = *(v3 + 152);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_264C7CE0C(uint64_t a1)
{
  v2 = type metadata accessor for STAppRatingsAndExceptionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  sub_264CC440C();
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v5 = *(v10[0] + 64);

  v6 = *(v5 + 16);

  v10[4] = 0;
  v10[5] = v6;
  swift_getKeyPath();
  sub_264C7F304(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_264C7F368(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9960);
  sub_264C7F830();
  v10[0] = MEMORY[0x277CE0BD8];
  v10[1] = MEMORY[0x277D83B88];
  v10[2] = MEMORY[0x277CE0BC8];
  v10[3] = MEMORY[0x277D83B98];
  swift_getOpaqueTypeConformance2();
  return sub_264CC43AC();
}

uint64_t sub_264C7D080@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  sub_264CC440C();
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v4 = *(v9 + 64);

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(v4 + 16))
  {

    sub_264C64744();
    result = sub_264CC3FBC();
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    *(a2 + 24) = v8;
    *(a2 + 32) = v3;
    *(a2 + 40) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264C7D1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STAppRatingsAndExceptionsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = *(a1 + 16);
  swift_getKeyPath();
  sub_264C7F304(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_264C7F368(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9920);
  sub_264C64918(&qword_27FFA9928, &qword_27FFA9920);
  sub_264C7F1E8();
  return sub_264CC43AC();
}

void sub_264C7D370(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleIdentifier];
  v4 = sub_264CC45DC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_264C7D3C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  sub_264CC440C();
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v9 = *(v13 + 16);
  v8 = *(v13 + 24);

  *a2 = v9;
  a2[1] = v8;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  a2[7] = v12;
  v10 = v3;

  return v12;
}

uint64_t sub_264C7D500()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9930);
  sub_264C64918(&qword_27FFA9938, &qword_27FFA9930);
  sub_264C7F110();
  return sub_264CC43AC();
}

uint64_t sub_264C7D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 64);
  v10 = *(a1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a2 + 80) = v12;
  *(a2 + 32) = v2;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v5;
  *(a2 + 16) = v6;
  return sub_264C7F4F4(v9, v8);
}

uint64_t sub_264C7D654@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A40);
  v29 = *(v10 - 8);
  v11 = v29;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  v17[1] = *a1;
  v17[2] = v18;
  v19 = *(a1 + 48);
  v17[3] = *(a1 + 32);
  v17[4] = v19;
  sub_264C7FEA4(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A48);
  sub_264C7FEDC();
  v28 = v16;
  sub_264CC428C();
  v20 = *(a1 + 56);
  v21 = sub_264CC41DC();
  *v9 = sub_264CC3D2C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99C8);
  sub_264C7D9FC(a1, &v9[*(v22 + 44)]);
  v23 = *(v11 + 16);
  v23(v13, v16, v10);
  sub_264C6467C(v9, v6, &qword_27FFA9A38);
  v23(a2, v13, v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A58);
  *&a2[v24[12]] = v21;
  sub_264C6467C(v6, &a2[v24[16]], &qword_27FFA9A38);
  v25 = &a2[v24[20]];
  *v25 = 0;
  v25[8] = 1;

  sub_264C646E4(v9, &qword_27FFA9A38);
  v26 = *(v29 + 8);
  v26(v28, v10);
  sub_264C646E4(v6, &qword_27FFA9A38);

  return (v26)(v13, v10);
}

uint64_t sub_264C7D998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264CC41EC();
  v3 = sub_264CC412C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_264C7D9FC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A10);
  v40 = *(v44 - 8);
  v3 = v40;
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[6];
  v41 = a1[5];
  *&v71[0] = v8;
  *(&v71[0] + 1) = v9;
  sub_264C64744();

  v11 = sub_264CC3FBC();
  v13 = v12;
  LOBYTE(v9) = v14;
  v16 = v15;
  sub_264CC447C();
  sub_264CC3BAC();
  v72 = v9 & 1;
  *&v62 = v11;
  *(&v62 + 1) = v13;
  LOBYTE(v63) = v9 & 1;
  *(&v63 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A18);
  sub_264C7FDD8();
  v39 = v7;
  sub_264CC40DC();
  v71[6] = v68;
  v71[7] = v69;
  v71[8] = v70;
  v71[2] = v64;
  v71[3] = v65;
  v71[4] = v66;
  v71[5] = v67;
  v71[0] = v62;
  v71[1] = v63;
  sub_264C646E4(v71, &qword_27FFA9A18);
  *&v62 = v41;
  *(&v62 + 1) = v10;

  v17 = sub_264CC3FBC();
  v41 = v17;
  v19 = v18;
  LOBYTE(v16) = v20;
  v38 = v21;
  sub_264CC447C();
  sub_264CC3BAC();
  LOBYTE(v16) = v16 & 1;
  v61 = v16;
  v22 = *(v3 + 16);
  v23 = v43;
  v24 = v7;
  v25 = v44;
  v22(v43, v24, v44);
  v26 = v42;
  v22(v42, v23, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A28) + 48)];
  *&v52 = v17;
  *(&v52 + 1) = v19;
  LOBYTE(v53) = v16;
  v28 = v38;
  *(&v53 + 1) = v38;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v57 = v48;
  v56 = v47;
  v29 = v45;
  v55 = v46;
  v54 = v45;
  v30 = v53;
  *v27 = v52;
  *(v27 + 1) = v30;
  v31 = v55;
  v32 = v56;
  *(v27 + 2) = v29;
  *(v27 + 3) = v31;
  v33 = v60;
  *(v27 + 7) = v59;
  *(v27 + 8) = v33;
  v34 = v58;
  *(v27 + 5) = v57;
  *(v27 + 6) = v34;
  *(v27 + 4) = v32;
  sub_264C6467C(&v52, &v62, &qword_27FFA9A18);
  v35 = *(v40 + 8);
  v36 = v44;
  v35(v39, v44);
  *&v62 = v41;
  *(&v62 + 1) = v19;
  LOBYTE(v63) = v16;
  *(&v63 + 1) = v28;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  v64 = v45;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  sub_264C646E4(&v62, &qword_27FFA9A18);
  return (v35)(v43, v36);
}

uint64_t sub_264C7DE38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_264CC3CCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A30);
  return sub_264C7D654(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_264C7DEA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = sub_264CC3E6C();
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99A8);
  MEMORY[0x28223BE20](v51);
  v53 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v52 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99B8);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99C0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v47 - v20;
  v22 = *(a1 + 48);
  v23 = *(a1 + 72);
  v61 = *(a1 + 56);
  v62 = v23;
  v24 = v22;
  v57 = sub_264CC41DC();
  *v21 = sub_264CC3D2C();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99C8);
  sub_264C7E4D0(a1, &v21[*(v25 + 44)]);
  v26 = sub_264CC3E9C();
  v27 = &v21[*(v16 + 44)];
  *v27 = v26;
  *(v27 + 8) = xmmword_264CD3030;
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  v27[40] = 0;
  v63 = v61;
  v64 = v62;
  v28 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v49 = v8;
    v29 = *(&v64 + 1);
    v30 = v64;
    v50 = v7;
    v31 = v63;
    v59 = v63;
    v60 = *(&v61 + 1);
    v32 = swift_allocObject();
    v48 = v3;
    v32[2] = v31;
    v32[3] = v28;
    v32[4] = v30;
    v32[5] = v29;
    v47[1] = v29;
    swift_bridgeObjectRetain_n();
    sub_264C6467C(&v63, v58, &qword_27FFA99D8);
    sub_264C64744();

    v33 = v53;
    sub_264CC42AC();
    v34 = (v33 + *(v51 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99E0);
    sub_264CC3BBC();
    *v34 = swift_getKeyPath();
    v7 = v50;
    sub_264CC3E5C();
    sub_264C7FCAC();
    sub_264C7FD90(&qword_27FFA9A08, MEMORY[0x277CDE400]);
    v35 = v52;
    v36 = v48;
    v8 = v49;
    sub_264CC401C();
    v54[1](v5, v36);
    sub_264C646E4(v33, &qword_27FFA99A8);
    v37 = sub_264CC414C();

    KeyPath = swift_getKeyPath();
    v39 = (v35 + *(v7 + 36));
    *v39 = KeyPath;
    v39[1] = v37;
    sub_264BA6174(v35, v14);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v8 + 56))(v14, v40, 1, v7);
  v54 = v21;
  sub_264C6467C(v21, v18, &qword_27FFA99C0);
  v41 = v55;
  sub_264C6467C(v14, v55, &qword_27FFA99B8);
  v42 = v14;
  v43 = v56;
  *v56 = v57;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99D0);
  sub_264C6467C(v18, v43 + v44[12], &qword_27FFA99C0);
  v45 = v43 + v44[16];
  *v45 = 0;
  v45[8] = 1;
  sub_264C6467C(v41, v43 + v44[20], &qword_27FFA99B8);

  sub_264C646E4(v42, &qword_27FFA99B8);
  sub_264C646E4(v54, &qword_27FFA99C0);
  sub_264C646E4(v41, &qword_27FFA99B8);
  sub_264C646E4(v18, &qword_27FFA99C0);
}

uint64_t sub_264C7E4D0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A10);
  v40 = *(v44 - 8);
  v3 = v40;
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[5];
  v41 = a1[4];
  *&v71[0] = v8;
  *(&v71[0] + 1) = v9;
  sub_264C64744();

  v11 = sub_264CC3FBC();
  v13 = v12;
  LOBYTE(v9) = v14;
  v16 = v15;
  sub_264CC447C();
  sub_264CC3BAC();
  v72 = v9 & 1;
  *&v62 = v11;
  *(&v62 + 1) = v13;
  LOBYTE(v63) = v9 & 1;
  *(&v63 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A18);
  sub_264C7FDD8();
  v39 = v7;
  sub_264CC40DC();
  v71[6] = v68;
  v71[7] = v69;
  v71[8] = v70;
  v71[2] = v64;
  v71[3] = v65;
  v71[4] = v66;
  v71[5] = v67;
  v71[0] = v62;
  v71[1] = v63;
  sub_264C646E4(v71, &qword_27FFA9A18);
  *&v62 = v41;
  *(&v62 + 1) = v10;

  v17 = sub_264CC3FBC();
  v41 = v17;
  v19 = v18;
  LOBYTE(v16) = v20;
  v38 = v21;
  sub_264CC447C();
  sub_264CC3BAC();
  LOBYTE(v16) = v16 & 1;
  v61 = v16;
  v22 = *(v3 + 16);
  v23 = v43;
  v24 = v7;
  v25 = v44;
  v22(v43, v24, v44);
  v26 = v42;
  v22(v42, v23, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9A28) + 48)];
  *&v52 = v17;
  *(&v52 + 1) = v19;
  LOBYTE(v53) = v16;
  v28 = v38;
  *(&v53 + 1) = v38;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v57 = v48;
  v56 = v47;
  v29 = v45;
  v55 = v46;
  v54 = v45;
  v30 = v53;
  *v27 = v52;
  *(v27 + 1) = v30;
  v31 = v55;
  v32 = v56;
  *(v27 + 2) = v29;
  *(v27 + 3) = v31;
  v33 = v60;
  *(v27 + 7) = v59;
  *(v27 + 8) = v33;
  v34 = v58;
  *(v27 + 5) = v57;
  *(v27 + 6) = v34;
  *(v27 + 4) = v32;
  sub_264C6467C(&v52, &v62, &qword_27FFA9A18);
  v35 = *(v40 + 8);
  v36 = v44;
  v35(v39, v44);
  *&v62 = v41;
  *(&v62 + 1) = v19;
  LOBYTE(v63) = v16;
  *(&v63 + 1) = v28;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  v64 = v45;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  sub_264C646E4(&v62, &qword_27FFA9A18);
  return (v35)(v43, v36);
}

uint64_t sub_264C7E90C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_264CC3CCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA99A0);
  return sub_264C7DEA4(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_264C7E988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_264C7F4B0;
  a2[1] = v6;
}

uint64_t sub_264C7EA60(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);

  sub_264CC307C();
}

uint64_t sub_264C7EB7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  *a2 = *(v3 + 64);
}

uint64_t sub_264C7EC54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v4 = v3[9];
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_264C7F070(v4, v5);
}

uint64_t sub_264C7ED10()
{
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC307C();
}

uint64_t sub_264C7EDEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  v4 = v3[14];
  v5 = v3[15];
  v6 = v3[16];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_264C7F0C0(v4, v5);
}

uint64_t sub_264C7EEA0()
{
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC307C();
}

uint64_t sub_264C7EF80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C7FD90(&qword_27FFA9880, type metadata accessor for STAppRatingsAndExceptionsViewModel);
  sub_264CC308C();

  *a2 = *(v3 + 184);
  return result;
}

uint64_t sub_264C7F070(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264C7F0C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_264C7F110()
{
  result = qword_27FFA98F0;
  if (!qword_27FFA98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA98F0);
  }

  return result;
}

uint64_t sub_264C7F16C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264C7F1E8()
{
  result = qword_27FFA9908;
  if (!qword_27FFA9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9908);
  }

  return result;
}

unint64_t sub_264C7F23C()
{
  result = qword_27FFA9910;
  if (!qword_27FFA9910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9898);
    sub_264C7F16C(&qword_27FFA9900, &qword_27FFA98F8, &unk_264CD31E8, sub_264C7F1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9910);
  }

  return result;
}

uint64_t sub_264C7F304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STAppRatingsAndExceptionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C7F368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STAppRatingsAndExceptionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_264C7F3CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for STAppRatingsAndExceptionsView();

  return sub_264C7D3C8(a1, a2);
}

uint64_t sub_264C7F44C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t sub_264C7F4B0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

unint64_t sub_264C7F594()
{
  result = qword_27FFA9948;
  if (!qword_27FFA9948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9948);
  }

  return result;
}

unint64_t sub_264C7F610()
{
  result = qword_27FFA9950;
  if (!qword_27FFA9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9940);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9950);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(type metadata accessor for STAppRatingsAndExceptionsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9850);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_264C7F7B0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for STAppRatingsAndExceptionsView();

  return sub_264C7D080(a1, a2);
}

unint64_t sub_264C7F830()
{
  result = qword_27FFA9968;
  if (!qword_27FFA9968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9958);
    sub_264C7F8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9968);
  }

  return result;
}

unint64_t sub_264C7F8BC()
{
  result = qword_27FFA9970;
  if (!qword_27FFA9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9970);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ScreenTimeSettingsUI17AboveAgeRatingAppV12ButtonActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_264C7F94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_264C7F994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264C7F9F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_264C7FA40(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264C7FAA0()
{
  result = qword_27FFA9978;
  if (!qword_27FFA9978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9888);
    sub_264C64918(&qword_27FFA9980, &qword_27FFA9988);
    sub_264C64918(&qword_27FFA9990, &qword_27FFA9998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9978);
  }

  return result;
}

uint64_t sub_264C7FBE4(uint64_t a1)
{
  v2 = sub_264CC3BCC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_264CC3C0C();
}

unint64_t sub_264C7FCAC()
{
  result = qword_27FFA99E8;
  if (!qword_27FFA99E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA99A8);
    sub_264C64918(&qword_27FFA99F0, &qword_27FFA99F8);
    sub_264C64918(&qword_27FFA9A00, &qword_27FFA99E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA99E8);
  }

  return result;
}

uint64_t sub_264C7FD90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264C7FDD8()
{
  result = qword_27FFA9A20;
  if (!qword_27FFA9A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9A20);
  }

  return result;
}

uint64_t sub_264C7FE5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  v4[2] = *(v0 + 64);
  return v1(v4);
}

unint64_t sub_264C7FEDC()
{
  result = qword_27FFA9A50;
  if (!qword_27FFA9A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9A48);
    sub_264C64918(&qword_27FFA9680, &qword_27FFA9688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9A50);
  }

  return result;
}

uint64_t sub_264C7FF94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_264CC2FCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264C646E4(a1, &unk_27FFA9B80);
    v13 = sub_264BA62D4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_264C9B998();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_264C9B384(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_264C646E4(v8, &unk_27FFA9B80);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_264C831E8(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_264C801E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_264C6B7DC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_264C83350(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_264C646E4(a1, &unk_27FFA9A90);
    sub_264C82EFC(a2, a3, v9);

    return sub_264C646E4(v9, &unk_27FFA9A90);
  }

  return result;
}

id sub_264C802B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [objc_opt_self() sharedController];
  v2 = type metadata accessor for STUsageDetailsSelection();
  v3 = objc_allocWithZone(v2);
  sub_264CC386C();
  *&v3[OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection____lazy_storage___localUserDSID] = 1;
  *&v3[OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults] = v0;
  *&v3[OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_persistenceController] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_27FFA9A80 = result;
  return result;
}

id static STUsageDetailsSelection.shared.getter()
{
  if (qword_27FFA8FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_27FFA9A80;

  return v1;
}

void *sub_264C80480()
{
  v1 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection____lazy_storage___localUserDSID;
  v2 = *&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection____lazy_storage___localUserDSID];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_264C804F0(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_264C83C14(v4);
  }

  sub_264C83D38(v2);
  return v3;
}

uint64_t sub_264C804F0(char *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [*&a1[OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_persistenceController] viewContext];
  v3 = swift_allocObject();
  v3[2] = &v11;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_264C83D48;
  *(v4 + 24) = v3;
  aBlock[4] = sub_264C83D54;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264C80878;
  aBlock[3] = &block_descriptor_1;
  v5 = _Block_copy(aBlock);
  v6 = v2;
  v7 = v1;

  [v6 performBlockAndWait_];

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

void sub_264C80688(void **a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v3 = [objc_opt_self() fetchLocalUserInContext:a2 error:v17];
  if (v3)
  {
    v4 = v3;
    v5 = v17[0];
    v6 = [v4 dsid];

    v7 = *a1;
    *a1 = v6;
  }

  else
  {
    v8 = v17[0];
    v9 = sub_264CC2F1C();

    swift_willThrow();
    v10 = v9;
    v11 = sub_264CC385C();
    v12 = sub_264CC47EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_264BA2000, v11, v12, "STUsageDetailsSelection failed to fetch local user: %@", v13, 0xCu);
      sub_264C646E4(v14, &qword_27FFA9B78);
      MEMORY[0x26674C780](v14, -1, -1);
      MEMORY[0x26674C780](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_264C80970()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v2 = sub_264CC459C();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_264CC45DC();

  return v4;
}

void sub_264C80AEC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  if (a2)
  {
    v4 = sub_264CC459C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_264CC459C();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void sub_264C80B98(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v4 = sub_264CC459C();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_264CC45DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_264C80C3C(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  if (*(a1 + 8))
  {
    v3 = sub_264CC459C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_264CC459C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*sub_264C80CE4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  a1[2] = v3;
  v4 = sub_264CC459C();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_264CC45DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_264C80DA4;
}

uint64_t sub_264C80DA4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_264CC459C();
    }

    else
    {
      v4 = 0;
    }

    v6 = *(a1 + 16);
    v7 = sub_264CC459C();
    [v6 setObject:v4 forKey:v7];
  }

  else
  {
    if (v3)
    {
      v5 = sub_264CC459C();
    }

    else
    {
      v5 = 0;
    }

    v8 = *(a1 + 16);
    v7 = sub_264CC459C();
    [v8 setObject:v5 forKey:v7];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_264C80F08()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v2 = sub_264CC459C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_264CC489C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_264C81004();
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_264C646E4(v8, &unk_27FFA9A90);
    return 0;
  }
}

unint64_t sub_264C81004()
{
  result = qword_27FFAA390;
  if (!qword_27FFAA390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFAA390);
  }

  return result;
}

void sub_264C810F8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v3 = a1;
  v4 = sub_264CC459C();
  [v2 setObject:v3 forKey:v4];
}

void sub_264C8118C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v4 = sub_264CC459C();
  [v3 setObject:v2 forKey:v4];
}

void (*sub_264C81210(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_264C80F08();
  return sub_264C81258;
}

void sub_264C81258(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 8) + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    v5 = sub_264CC459C();
    [v3 setObject:v4 forKey:v5];
  }

  else
  {
    v4 = sub_264CC459C();
    [v3 setObject:v6 forKey:v4];
  }
}

uint64_t sub_264C8133C(void *a1)
{
  v2 = v1;
  v4 = sub_264C80480();
  if (v4)
  {
    v5 = v4;
    sub_264C81004();
    v6 = a1;
    v7 = sub_264CC486C();

    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
      v9 = sub_264CC459C();
      v10 = [v8 stringForKey_];

      if (v10)
      {
        v11 = sub_264CC45DC();

        return v11;
      }

      return 0;
    }
  }

  v13 = [*(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults) DeviceIdentifierByChildDSID];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = sub_264CC454C();

  v16 = [a1 stringValue];
  v17 = sub_264CC45DC();
  v19 = v18;

  if (!*(v15 + 16))
  {

    goto LABEL_13;
  }

  v20 = sub_264C82E84(v17, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_264C71590(*(v15 + 56) + 32 * v20, v24);

  if (swift_dynamicCast())
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

void sub_264C815BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_264C80480();
  if (v8 && (v9 = v8, sub_264C81004(), v10 = a3, v11 = sub_264CC486C(), v10, v9, (v11 & 1) != 0))
  {
    v12 = *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    if (a2)
    {
      v13 = sub_264CC459C();
    }

    else
    {
      v13 = 0;
    }

    v25 = sub_264CC459C();
    [v12 setObject:v13 forKey:v25];
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v15 = [v14 DeviceIdentifierByChildDSID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_264CC454C();
    }

    else
    {
      v17 = sub_264C8367C(MEMORY[0x277D84F90]);
    }

    v29 = v17;
    v18 = [a3 stringValue];
    v19 = sub_264CC45DC();
    v21 = v20;

    if (a2)
    {
      v28 = MEMORY[0x277D837D0];
      *&v27 = a1;
      *(&v27 + 1) = a2;
      sub_264C6B7DC(&v27, v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_264C83350(v26, v19, v21, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_264C82EFC(v19, v21, &v27);

      sub_264C646E4(&v27, &unk_27FFA9A90);
    }

    v23 = sub_264CC453C();

    v24 = sub_264CC459C();
    [v14 setObject:v23 forKey:v24];
  }
}

id sub_264C81904(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AA0);
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v56 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AA8);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v63 = v56 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AB8);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = v56 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AC0);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v56 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AC8);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AD0);
  v74 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = v56 - v17;
  v18 = sub_264C80480();
  if (v18 && (v19 = v18, sub_264C81004(), v20 = a1, v56[1] = v3, v57 = v16, v21 = v7, v22 = a1, v23 = v11, v24 = v10, v25 = a2, v26 = a3, v27 = v20, v28 = sub_264CC486C(), v27, a3 = v26, a2 = v25, v29 = v24, v30 = v23, a1 = v22, v31 = v21, v16 = v57, v19, (v28 & 1) != 0))
  {
    swift_getKeyPath();
    v32 = v58;
    sub_264CC2F2C();

    sub_264C64918(&qword_27FFA9B10, &qword_27FFA9AA0);
    sub_264C837C0();
    v33 = v59;
    v34 = v61;
    sub_264CC397C();
    (*(v31 + 8))(v32, v34);
    sub_264C64918(&qword_27FFA9B18, &qword_27FFA9AA8);
    v35 = v63;
    v36 = v62;
    sub_264CC396C();
    (*(v60 + 8))(v33, v36);
    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = a3;
    sub_264C64918(&qword_27FFA9B20, &qword_27FFA9AB0);

    v38 = sub_264CC398C();

    (*(v30 + 8))(v35, v29);
    v78 = sub_264CC38BC();
    v79 = MEMORY[0x277CBCDA0];
    v77[0] = v38;
    v39 = type metadata accessor for STUsageDetailsSelectionObservation();
    v40 = objc_allocWithZone(v39);
    sub_264C6A834(v77, v40 + OBJC_IVAR____TtC20ScreenTimeSettingsUI34STUsageDetailsSelectionObservation_cancellable);
    v75.receiver = v40;
    v75.super_class = v39;
    v41 = objc_msgSendSuper2(&v75, sel_init);
  }

  else
  {
    swift_getKeyPath();
    v42 = v64;
    sub_264CC2F2C();

    *(swift_allocObject() + 16) = a1;
    v43 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9AD8);
    sub_264C64918(&qword_27FFA9AE0, &qword_27FFA9AB8);
    v44 = v65;
    v45 = v68;
    sub_264CC395C();

    (*(v66 + 8))(v42, v45);
    sub_264C64918(&qword_27FFA9AE8, &qword_27FFA9AC0);
    sub_264C837C0();
    v46 = v67;
    v47 = v71;
    sub_264CC397C();
    (*(v69 + 8))(v44, v47);
    sub_264C64918(&qword_27FFA9AF8, &qword_27FFA9AC8);
    v49 = v72;
    v48 = v73;
    sub_264CC396C();
    (*(v70 + 8))(v46, v49);
    v50 = swift_allocObject();
    *(v50 + 16) = a2;
    *(v50 + 24) = a3;
    sub_264C64918(&qword_27FFA9B00, &qword_27FFA9AD0);

    v51 = sub_264CC398C();

    (*(v74 + 8))(v48, v16);
    v78 = sub_264CC38BC();
    v79 = MEMORY[0x277CBCDA0];
    v77[0] = v51;
    v52 = type metadata accessor for STUsageDetailsSelectionObservation();
    v53 = objc_allocWithZone(v52);
    sub_264C6A834(v77, v53 + OBJC_IVAR____TtC20ScreenTimeSettingsUI34STUsageDetailsSelectionObservation_cancellable);
    v76.receiver = v53;
    v76.super_class = v52;
    v41 = objc_msgSendSuper2(&v76, sel_init);
  }

  v54 = v41;
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return v54;
}

void sub_264C82284(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 DeviceIdentifierByChildDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_264CC454C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_264C82300@<X0>(id a1@<X1>, uint64_t result@<X0>, void *a3@<X8>)
{
  v4 = *result;
  if (!*result)
  {
    goto LABEL_7;
  }

  v5 = [a1 stringValue];
  v6 = sub_264CC45DC();
  v8 = v7;

  if (!*(v4 + 16))
  {

LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v9 = sub_264C82E84(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_264C71590(*(v4 + 56) + 32 * v9, &v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_264C8248C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_264CC459C();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void sub_264C824E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 DeviceIdentifierLocalUser];
  if (v3)
  {
    v4 = v3;
    v5 = sub_264CC45DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_264C82550(void *a1)
{
  v2 = v1;
  v4 = sub_264C80480();
  if (!v4 || (v5 = v4, sub_264C81004(), v6 = a1, v7 = sub_264CC486C(), v6, v5, (v7 & 1) == 0))
  {
    v9 = *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v10 = sub_264CC459C();
    v11 = [v9 dictionaryForKey_];

    if (v11)
    {
      v12 = sub_264CC454C();

      v13 = [a1 stringValue];
      v14 = sub_264CC45DC();
      v16 = v15;

      if (*(v12 + 16))
      {
        v17 = sub_264C82E84(v14, v16);
        v19 = v18;

        if (v19)
        {
          sub_264C71590(*(v12 + 56) + 32 * v17, v21);

          sub_264C81004();
          if (swift_dynamicCast())
          {
            return v20;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return sub_264C80F08();
}

void sub_264C82784(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_264C80480();
  if (v6 && (v7 = v6, sub_264C81004(), v8 = a2, v9 = sub_264CC486C(), v8, v7, (v9 & 1) != 0))
  {
    v10 = *(v3 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v23 = sub_264CC459C();
    [v10 setObject:a1 forKey:v23];
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23STUsageDetailsSelection_userDefaults);
    v12 = sub_264CC459C();
    v13 = [v11 dictionaryForKey_];

    if (v13)
    {
      v14 = sub_264CC454C();
    }

    else
    {
      v14 = sub_264C8367C(MEMORY[0x277D84F90]);
    }

    v27 = v14;
    v15 = [a2 stringValue];
    v16 = sub_264CC45DC();
    v18 = v17;

    if (a1)
    {
      v26 = sub_264C81004();
      *&v25 = a1;
      sub_264C6B7DC(&v25, v24);
      v19 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_264C83350(v24, v16, v18, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_264C82EFC(v16, v18, &v25);

      sub_264C646E4(&v25, &unk_27FFA9A90);
    }

    v21 = sub_264CC453C();

    v22 = sub_264CC459C();
    [v11 setObject:v21 forKey:v22];
  }
}

id STUsageDetailsSelection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_264C82C70(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_264C82CCC(void *a1)
{
  v1 = a1;
  v2 = sub_264CC459C();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    sub_264CC454C();

    v4 = sub_264CC453C();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

id sub_264C82DC0(void *a1)
{
  v1 = a1;
  v2 = sub_264CC459C();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_264CC45DC();

    v4 = sub_264CC459C();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

unint64_t sub_264C82E84(uint64_t a1, uint64_t a2)
{
  sub_264CC4B7C();
  sub_264CC460C();
  v4 = sub_264CC4B9C();

  return sub_264C82FA0(a1, a2, v4);
}

double sub_264C82EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_264C82E84(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264C9BC00();
      v10 = v12;
    }

    sub_264C6B7DC((*(v10 + 56) + 32 * v8), a3);
    sub_264C9B530(v8, v10);
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

unint64_t sub_264C82FA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264CC4AAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264C83058(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_264C830C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_264BA62D4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_264C9B83C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_264C9A86C(v14, a3 & 1);
    v9 = sub_264BA62D4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_264CC4ADC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_264C9B6E0(v9, a2, a1, v19);
  }
}

uint64_t sub_264C831E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_264BA62D4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_264C9B998();
      goto LABEL_7;
    }

    sub_264C9AADC(v13, a3 & 1);
    v24 = sub_264BA62D4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_264CC4ADC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_264CC2FCC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_264C9B724(v10, a2, a1, v16);
}

_OWORD *sub_264C83350(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_264C82E84(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_264C9BC00();
      v11 = v19;
      goto LABEL_8;
    }

    sub_264C9AE28(v16, a4 & 1);
    v11 = sub_264C82E84(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_264CC4ADC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_264C6B7DC(a1, v22);
  }

  else
  {
    sub_264C9B7D0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_264C834A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9B90);
    v7 = sub_264CC4A3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_264C6467C(v9, v5, &qword_27FFA9310);
      v11 = *v5;
      result = sub_264BA62D4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_264CC2FCC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_264C8367C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B68);
    v3 = sub_264CC4A3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_264C6467C(v4, &v13, &qword_27FFA9B70);
      v5 = v13;
      v6 = v14;
      result = sub_264C82E84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_264C6B7DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_264C837C0()
{
  result = qword_27FFA9AF0;
  if (!qword_27FFA9AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9AF0);
  }

  return result;
}

uint64_t type metadata accessor for STUsageDetailsSelection()
{
  result = qword_27FFA9B48;
  if (!qword_27FFA9B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264C838F0()
{
  result = sub_264CC387C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_264C83C14(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_264C83C24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9B60);
  v3 = sub_264CC4A3C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_264BA62D4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_264BA62D4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_264C83D38(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_264C83DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_264CC34AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_264CC34EC();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264C843AC();
  sub_264CC33BC();
  sub_264CC348C();
  v30 = sub_264C845AC(v13, v10);
  sub_264C8472C(v10);
  v29 = sub_264CC34DC();
  v16 = v15;
  (*(v5 + 16))(v7, a1, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v5 + 32))(v19 + v17, v7, v4);
  *(v19 + v18) = v14;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v22 = v14;

  v23 = sub_264CC459C();
  if (v16)
  {
    v24 = sub_264CC459C();
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_allocWithZone(STIntroPasscodeViewController);
  aBlock[4] = sub_264C84794;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264C89FD8;
  aBlock[3] = &block_descriptor_2;
  v26 = _Block_copy(aBlock);

  v27 = [v25 initWithIntroductionModel:v22 childName:v23 askForRecoveryAppleID:v30 & 1 altDSID:v24 isChildOrNotSignedIntoiCloud:1 continueHandler:v26];

  _Block_release(v26);

  (*(v33 + 8))(v13, v34);

  return v27;
}

uint64_t sub_264C84120(uint64_t a1, void *a2, void (*a3)(char *))
{
  v6 = sub_264CC34AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264C84214(a1, a2, v9);
  a3(v9);
  return (*(v7 + 8))(v9, v6);
}

id sub_264C84214@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_264CC34AC();
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  result = [a2 parentalControlsPasscode];
  if (result)
  {
    v11 = result;
    sub_264CC45DC();

    v12 = [a2 recoveryAltDSID];
    if (v12)
    {
      v13 = v12;
      sub_264CC45DC();
    }

    sub_264CC353C();
    v14 = sub_264CC355C();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
    return sub_264CC349C();
  }

  return result;
}

id sub_264C843AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_264CC355C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(STIntroductionViewModel) init];
  sub_264CC348C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_264C8472C(v2);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_264CC354C();
    v8 = sub_264CC459C();

    [v7 setParentalControlsPasscode_];

    sub_264CC352C();
    if (v9)
    {
      v10 = sub_264CC459C();
    }

    else
    {
      v10 = 0;
    }

    [v7 setRecoveryAltDSID_];

    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_264C845AC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  sub_264C84848(a2, &v15 - v4);
  v6 = sub_264CC355C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_264C8472C(v5);
  }

  else
  {
    sub_264CC352C();
    v9 = v8;
    (*(v7 + 8))(v5, v6);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  sub_264CC34DC();
  if (!v10)
  {
    v12 = sub_264CC34BC();
    sub_264C81004();
    v13 = sub_264CC485C();
    v11 = sub_264CC486C();

    return v11 & 1;
  }

LABEL_5:

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_264C8472C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264C84794()
{
  v1 = *(sub_264CC34AC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_264C84120(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264C84848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_264C848B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_264CC34AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_264CC35EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(STIntroductionViewModel) init];
  _s15ScreenTimeSwift21STExpressIntroductionO0aB10SettingsUIE0F0V19communicationSafetyAC013CommunicationiF0Vvg_0();
  sub_264CC35CC();
  (*(v8 + 8))(v10, v7);
  v12 = sub_264CC470C();
  [v11 setCommunicationSafetyEnabled_];

  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v13, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v15 + v14) = v11;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v18 = objc_allocWithZone(STIntroCommunicationSafetyViewController);
  v19 = v11;

  v20 = sub_264CC459C();
  aBlock[4] = sub_264C84D74;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264C89FD8;
  aBlock[3] = &block_descriptor_3;
  v21 = _Block_copy(aBlock);
  v22 = [v18 initWithIntroductionModel:v19 childName:v20 continueHandler:v21];

  _Block_release(v21);

  return v22;
}

uint64_t sub_264C84BB8(uint64_t a1, void *a2, void (*a3)(_BYTE *))
{
  v6 = sub_264CC34AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18[-v12];
  (*(v7 + 16))(v9, a1, v6, v11);
  v14 = [a2 communicationSafetyEnabled];
  if (v14)
  {
    v15 = v14;
    [v14 BOOLValue];
    v16 = sub_264CC341C();
    sub_264CC33AC();
    v16(v18, 0);
  }

  (*(v7 + 32))(v13, v9, v6);
  a3(v13);
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_264C84D74()
{
  v1 = *(sub_264CC34AC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_264C84BB8(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t STExpressIntroduction.PaneType.id.getter()
{
  v1 = *v0;
  v2 = 0x69446E6565726373;
  if (v1 != 4)
  {
    v2 = 0x65646F6373736170;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v2;
  }
}

uint64_t STExpressIntroduction.PaneType.hashValue.getter()
{
  v1 = *v0;
  sub_264CC4B7C();
  MEMORY[0x26674B850](v1);
  return sub_264CC4B9C();
}

uint64_t sub_264C84FAC()
{
  v1 = *v0;
  sub_264CC4B7C();
  MEMORY[0x26674B850](v1);
  return sub_264CC4B9C();
}

uint64_t sub_264C85020()
{
  v1 = *v0;
  sub_264CC4B7C();
  MEMORY[0x26674B850](v1);
  return sub_264CC4B9C();
}

void sub_264C85064(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065636E617473;
  v4 = 0x69446E6565726373;
  if (v2 != 4)
  {
    v4 = 0x65646F6373736170;
    v3 = 0xE800000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000264CE1750;
  }

  v5 = 0x8000000264CE17B0;
  v6 = 0x8000000264CE1790;
  if (v2 != 1)
  {
    v6 = 0x8000000264CE1770;
  }

  if (*v1)
  {
    v5 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t STExpressIntroduction.STExpressIntroductionSettingsUIError.hashValue.getter()
{
  sub_264CC4B7C();
  MEMORY[0x26674B850](0);
  return sub_264CC4B9C();
}

uint64_t sub_264C851C8()
{
  sub_264CC4B7C();
  MEMORY[0x26674B850](0);
  return sub_264CC4B9C();
}

uint64_t sub_264C85234()
{
  sub_264CC4B7C();
  MEMORY[0x26674B850](0);
  return sub_264CC4B9C();
}

uint64_t sub_264C85284()
{
  v0 = sub_264CC387C();
  __swift_allocate_value_buffer(v0, qword_27FFA9BA8);
  __swift_project_value_buffer(v0, qword_27FFA9BA8);
  return sub_264CC386C();
}

id static STExpressIntroduction.viewController(ofType:withSTSettings:onCompletion:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v7 = sub_264CC34AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = *a1;
  if (qword_27FFA8FF0 != -1)
  {
    swift_once();
  }

  v14 = sub_264CC387C();
  __swift_project_value_buffer(v14, qword_27FFA9BA8);
  v15 = *(v8 + 16);
  v15(v12, a2, v7);
  v16 = sub_264CC385C();
  v17 = sub_264CC47FC();
  v18 = os_log_type_enabled(v16, v17);
  v58 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v59 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v56 = a4;
    v54 = v21;
    aBlock[0] = v21;
    *v20 = 136446467;
    v62 = v13;
    v22 = sub_264CC45EC();
    v24 = sub_264C85E3C(v22, v23, aBlock);
    v55 = a2;
    v25 = v24;

    *(v20 + 4) = v25;
    *(v20 + 12) = 2081;
    v15(v60, v12, v7);
    v26 = sub_264CC45EC();
    v28 = v27;
    (*(v59 + 8))(v12, v7);
    v29 = sub_264C85E3C(v26, v28, aBlock);
    a2 = v55;

    *(v20 + 14) = v29;
    _os_log_impl(&dword_264BA2000, v16, v17, "Creating viewController type: %{public}s, settings: %{private}s)", v20, 0x16u);
    v30 = v54;
    swift_arrayDestroy();
    v31 = v30;
    a4 = v56;
    MEMORY[0x26674C780](v31, -1, -1);
    v32 = v20;
    v8 = v59;
    MEMORY[0x26674C780](v32, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v33 = v7;
  v34 = swift_allocObject();
  *(v34 + 16) = v13;
  *(v34 + 24) = v61;
  *(v34 + 32) = a4;
  if (v13 <= 2)
  {
    if (v13)
    {

      if (v13 == 1)
      {
        v35 = sub_264C848B8(a2, sub_264C85D78, v34);
      }

      else
      {
        v35 = sub_264C78C10(a2, sub_264C85D78, v34);
      }
    }

    else
    {

      v35 = sub_264CB61AC(a2, sub_264C85D78, v34);
    }

    goto LABEL_17;
  }

  if (v13 == 3)
  {

    v44 = sub_264CB5C0C();
    v45 = v60;
    v58(v60, a2, v33);
    v46 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v47 = (v57 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    (*(v8 + 32))(v48 + v46, v45, v33);
    *(v48 + v47) = v44;
    v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v49 = sub_264C85D78;
    v49[1] = v34;
    objc_allocWithZone(type metadata accessor for AppAndWebsiteActivityNavigatingViewController());
    v50 = v44;

    v51 = sub_264CB53B0(v50, sub_264C863F4, v48);
    v43 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  }

  else
  {
    if (v13 != 4)
    {

      v35 = sub_264C83DA0(a2, sub_264C85D78, v34);
LABEL_17:
      v43 = v35;
      goto LABEL_18;
    }

    v36 = v60;
    v58(v60, a2, v7);
    v37 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v8 + 32))(v39 + v37, v36, v7);
    v40 = (v39 + v38);
    *v40 = sub_264C85D78;
    v40[1] = v34;
    v41 = objc_allocWithZone(STEyeReliefIntroHowItWorksViewController);
    aBlock[4] = sub_264C85D84;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264C85C3C;
    aBlock[3] = &block_descriptor_4;
    v42 = _Block_copy(aBlock);

    v43 = [v41 initForChecklistFlow:1 withCompletionHandler:v42];
    _Block_release(v42);
  }

LABEL_18:

  return v43;
}

uint64_t sub_264C8594C(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_264CC34AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  if (qword_27FFA8FF0 != -1)
  {
    swift_once();
  }

  v14 = sub_264CC387C();
  __swift_project_value_buffer(v14, qword_27FFA9BA8);
  v15 = *(v9 + 16);
  v35 = a1;
  v15(v13, a1, v8);
  v16 = sub_264CC385C();
  v17 = sub_264CC47FC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a4;
    v19 = v18;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v19 = 136446467;
    v36 = a2;
    v20 = sub_264CC45EC();
    v22 = sub_264C85E3C(v20, v21, &v37);
    v33 = a3;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2081;
    v15(v34, v13, v8);
    v24 = sub_264CC45EC();
    v26 = v25;
    (*(v9 + 8))(v13, v8);
    v27 = sub_264C85E3C(v24, v26, &v37);

    *(v19 + 14) = v27;
    a3 = v33;
    _os_log_impl(&dword_264BA2000, v16, v17, "viewController type: %{public}s, calling completion handler with settings: %{private}s)", v19, 0x16u);
    v28 = v31;
    swift_arrayDestroy();
    MEMORY[0x26674C780](v28, -1, -1);
    MEMORY[0x26674C780](v19, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  return a3(v35);
}

void sub_264C85C3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_264C85CA8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_264C85D1C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_264C85E3C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_264C85D84(void *a1)
{
  v3 = *(sub_264CC34AC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_264CB99B4(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264C85E3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264C85F08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_264C71590(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_264C85F08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_264C86014(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_264CC495C();
    a6 = v11;
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

uint64_t sub_264C86014(uint64_t a1, unint64_t a2)
{
  v3 = sub_264C86060(a1, a2);
  sub_264C86190(&unk_28766B9F0);
  return v3;
}

uint64_t sub_264C86060(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_264C8627C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_264CC495C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_264CC462C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264C8627C(v10, 0);
        result = sub_264CC491C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_264C86190(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_264C862F0(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_264C8627C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264C862F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BE0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_264C863E4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_264C863F4()
{
  v1 = *(sub_264CC34AC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_264CB4E64(v0 + v2, v4, v5);
}

unint64_t sub_264C86494()
{
  result = qword_27FFA9BC0;
  if (!qword_27FFA9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9BC0);
  }

  return result;
}

unint64_t sub_264C864F8()
{
  result = qword_27FFA9BC8;
  if (!qword_27FFA9BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9BC8);
  }

  return result;
}

unint64_t sub_264C86560()
{
  result = qword_27FFA9BD8;
  if (!qword_27FFA9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9BD8);
  }

  return result;
}

uint64_t _s8PaneTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8PaneTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s36STExpressIntroductionSettingsUIErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s36STExpressIntroductionSettingsUIErrorOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

double sub_264C8680C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264CC41FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_264CC420C();
  (*(v3 + 8))(v5, v2);
  sub_264CC3AAC();
  sub_264CC3AAC();
  sub_264CC446C();
  sub_264CC3A8C();
  v7 = v15;
  LOBYTE(v3) = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  sub_264CC3AAC();
  sub_264CC3AAC();
  sub_264CC446C();
  sub_264CC3A8C();
  v12 = v22;
  *(a1 + 56) = v21;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 72) = v12;
  result = *&v23;
  *(a1 + 88) = v23;
  *(a1 + 104) = 0;
  return result;
}

double sub_264C869F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264CC41FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_264CC420C();
  (*(v3 + 8))(v5, v2);
  sub_264CC3AAC();
  sub_264CC3AAC();
  sub_264CC446C();
  sub_264CC3A8C();
  v7 = v15;
  LOBYTE(v3) = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  sub_264CC3AAC();
  sub_264CC3AAC();
  sub_264CC446C();
  sub_264CC3A8C();
  v12 = v22;
  *(a1 + 56) = v21;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 72) = v12;
  result = *&v23;
  *(a1 + 88) = v23;
  return result;
}

void *sub_264C86BE0(void *a1, int64_t a2, char a3)
{
  result = sub_264C86D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264C86C00(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9E30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264C86D48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_264C86E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_264CD39E0;
  v1 = objc_opt_self();
  v2 = [v1 bundle];
  v3 = sub_264CC2EFC();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = 0;
  v6 = [v1 bundle];
  v7 = sub_264CC2EFC();
  v9 = v8;

  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  *(v0 + 72) = 1;
  v10 = [v1 bundle];
  v11 = sub_264CC2EFC();
  v13 = v12;

  *(v0 + 80) = v11;
  *(v0 + 88) = v13;
  *(v0 + 96) = 2;
  return v0;
}

uint64_t sub_264C870B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  type metadata accessor for SettingsPresetViewModel();
  sub_264C87464();
  v5 = sub_264CC3A0C();
  v6 = a4();

  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_264C86BE0(0, v7, 0);
    v8 = v19;
    v9 = (v6 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = [v10 integerValue];
      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v13;
        sub_264C86BE0((v14 > 1), v15 + 1, 1);
        v13 = v18;
      }

      *(v19 + 16) = v15 + 1;
      v16 = (v19 + 24 * v15);
      v16[4] = v11;
      v16[5] = v12;
      v16[6] = v13;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_264C87300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9BE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_264CD21F0;
  v1 = objc_opt_self();
  v2 = [v1 bundle];
  v3 = sub_264CC2EFC();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  *(v0 + 48) = 0;
  v6 = [v1 bundle];
  v7 = sub_264CC2EFC();
  v9 = v8;

  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  *(v0 + 72) = 1;
  return v0;
}

unint64_t sub_264C87464()
{
  result = qword_27FFA9558;
  if (!qword_27FFA9558)
  {
    type metadata accessor for SettingsPresetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9558);
  }

  return result;
}

uint64_t sub_264C874C4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2 & 1;
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v8 = *(v3 + 168);
  if (v8)
  {

    v8(a1, a2 & 1, sub_264C88B8C, v7);
    sub_264C88B98(v8);
  }
}

uint64_t sub_264C875D8()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();
}

uint64_t sub_264C8764C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_264C88964();
  sub_264CC308C();

  v3 = v1[9];
  v4 = v9[10];
  v5 = v9[11];
  v6 = v9[12];
  v7 = v9[13];
  result = sub_264C7F070(v3, v4);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t sub_264C876F4()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_264C87774()
{
  swift_getKeyPath();
  v3 = v0;
  sub_264C88964();
  sub_264CC308C();

  v1 = *(v0 + 112);
  sub_264C7F0C0(v1, *(v3 + 120));
  return v1;
}

uint64_t sub_264C87804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_264C87840(uint64_t a1)
{
  if (sub_264C88AC0(*(v1 + 64), a1))
  {
    *(v1 + 64) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C88964();
    sub_264CC307C();
  }
}

uint64_t sub_264C87954(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a2 + 16);
  *(a1 + 72) = *a2;
  *(a1 + 88) = v4;
  *(a1 + 104) = *(a2 + 32);
  sub_264C88A00(a2, v6);
  return sub_264C88A70(v2, v3);
}

uint64_t sub_264C879D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[14];
  v5 = a1[15];
  a1[14] = a2;
  a1[15] = a3;
  a1[16] = a4;
  sub_264C7F0C0(a2, a3);
  return sub_264C889BC(v4, v5);
}

uint64_t sub_264C87A34()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v1 = *(v0 + 136);

  return v1;
}

uint64_t sub_264C87AB4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v5 = *(v3 + 136);
  v4 = *(v3 + 144);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_264C88D5C;
  a2[1] = v6;
}

uint64_t sub_264C87B5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_264C88964();

  sub_264CC307C();
}

uint64_t sub_264C87C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
}

uint64_t sub_264C87C84()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  return *(v0 + 152);
}

uint64_t sub_264C87CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v5 = *(v3 + 160);
  *a2 = *(v3 + 152);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_264C87DAC(uint64_t result, char a2)
{
  if ((*(v2 + 160) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 152) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 152) = result;
    *(v2 + 160) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_264C88964();
  sub_264CC307C();
}

uint64_t sub_264C87EB0()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v1 = *(v0 + 168);
  sub_264BA6988(v1);
  return v1;
}

uint64_t sub_264C87F34@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  v4 = *(v3 + 168);
  v5 = *(v3 + 176);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_264C88C00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_264BA6988(v4);
}

uint64_t sub_264C87FF0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_264C88C08, v8);
}

uint64_t sub_264C88098(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_264C88BF4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_264BA6988(v1);
  sub_264C88964();
  sub_264CC307C();
  sub_264C88B98(v4);
}

uint64_t sub_264C881C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *))
{
  v11 = a1;
  v12 = a2 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_264C83D54;
  v10[1] = v8;

  a5(&v11, v10);
}

uint64_t sub_264C88270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  *(a1 + 168) = a2;
  *(a1 + 176) = a3;
  sub_264BA6988(a2);
  return sub_264C88B98(v3);
}

uint64_t sub_264C882BC()
{
  swift_getKeyPath();
  sub_264C88964();
  sub_264CC308C();

  return *(v0 + 184);
}

uint64_t sub_264C8832C(uint64_t result)
{
  if (*(v1 + 184) == (result & 1))
  {
    *(v1 + 184) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_264C88964();
    sub_264CC307C();
  }

  return result;
}

uint64_t sub_264C8840C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 160))
    {
      if ((a3 & 1) == 0)
      {
LABEL_8:
        swift_getKeyPath();
        MEMORY[0x28223BE20]();
        sub_264C88964();
        sub_264CC307C();
      }
    }

    else if ((a3 & 1) != 0 || *(result + 152) != a2)
    {
      goto LABEL_8;
    }

    *(result + 152) = a2;
    *(result + 160) = a3 & 1;
  }

  return result;
}

uint64_t *sub_264C88548()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC20ScreenTimeSettingsUI34STAppRatingsAndExceptionsViewModel___observationRegistrar;
  sub_264C88964();
  sub_264CC308C();

  v3 = v0[17];

  v3(v4);

  sub_264C88A70(v1[9], v1[10]);
  sub_264C889BC(v1[14], v1[15]);

  sub_264C88B98(v0[21]);
  v5 = sub_264CC30AC();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_264C88658()
{
  sub_264C88548();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for STAppRatingsAndExceptionsViewModel()
{
  result = qword_27FFA9C08;
  if (!qword_27FFA9C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264C88704()
{
  result = sub_264CC30AC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_264C887FC(uint64_t a1, int a2)
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

uint64_t sub_264C88844(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_264C888B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_264C888F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264C88964()
{
  result = qword_27FFA9880;
  if (!qword_27FFA9880)
  {
    type metadata accessor for STAppRatingsAndExceptionsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9880);
  }

  return result;
}

uint64_t sub_264C889BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264C88A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264C88A70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_264C88AC0(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_264CC4AAC() & 1) == 0)
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

uint64_t sub_264C88B50()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_264C88B98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264C88BA8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 168);
  *(v2 + 168) = v1;
  *(v2 + 176) = v3;
  sub_264BA6988(v1);
  return sub_264C88B98(v4);
}

void sub_264C88C30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 152) = *(v0 + 24);
  *(v1 + 160) = v2;
}

uint64_t sub_264C88C44()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 136) = v0[3];
  *(v1 + 144) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264C88CA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_264C88CE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id static STIntroductionViewControllersFactory.makeIntroductionCommunicationLimitsViewController(childName:limitType:continueHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_allocWithZone(STIntroCommunicationLimitsViewController);
  v9 = sub_264CC459C();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_264C8A01C;
  v13[3] = &block_descriptor_5;
  v10 = _Block_copy(v13);

  v11 = [v8 initWithChildName:v9 limitType:a3 continueHandler:v10];

  _Block_release(v10);

  return v11;
}

id sub_264C89240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, uint64_t a7)
{
  v11 = objc_allocWithZone(*a6);
  v12 = a1;

  v13 = sub_264CC459C();

  v17[4] = a4;
  v17[5] = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_264C89FD8;
  v17[3] = a7;
  v14 = _Block_copy(v17);
  v15 = [v11 initWithIntroductionModel:v12 childName:v13 continueHandler:v14];

  _Block_release(v14);

  return v15;
}

id static STIntroductionViewControllersFactory.makeIntroductionDowntimeViewController(introductionModel:continueHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(STIntroDowntimeViewController);
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_264C89FD8;
  v10[3] = &block_descriptor_9;
  v7 = _Block_copy(v10);

  v8 = [v6 initWithIntroductionModel:a1 continueHandler:v7];
  _Block_release(v7);

  return v8;
}

id sub_264C8971C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v10 = sub_264CC459C();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_264C89FD8;
  v15[3] = a6;
  v12 = _Block_copy(v15);
  v13 = [v11 initWithIntroductionModel:a1 childName:v10 continueHandler:v12];

  _Block_release(v12);

  return v13;
}

id static STIntroductionViewControllersFactory.makeIntroductionCommunicationLimitsViewController(introductionModel:childName:continueHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = objc_allocWithZone(STIntroCommunicationLimitsViewController);

  v9 = sub_264CC459C();
  v13[4] = sub_264C83D54;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_264C8A01C;
  v13[3] = &block_descriptor_12;
  v10 = _Block_copy(v13);
  v11 = [v8 initWithChildName:v9 limitType:0 continueHandler:v10];

  _Block_release(v10);

  return v11;
}

id static STIntroductionViewControllersFactory.makeController(using:creatingNavigationController:)(uint64_t a1, char a2)
{
  result = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  if (a2)
  {
    v4 = result;
    v5 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];

    return v5;
  }

  return result;
}

id STIntroductionViewControllersFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STIntroductionViewControllersFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STIntroductionViewControllersFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STIntroductionViewControllersFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STIntroductionViewControllersFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264C89FD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_264C8A01C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_264C8A09C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for STIntroPresetsViewController();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_restrictionsToPresetMappingViewModel] = 0;
  *&v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC] = 0;
  v16 = &v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_continueHandler];
  *v16 = a6;
  v16[1] = a7;
  *&v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_introductionModel] = a1;
  v17 = &v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_name];
  *v17 = a3;
  v17[1] = a4;
  v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_updateExistingSettings] = a5;
  *&v15[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_settingsPresetViewModel] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v18 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v19 = objc_opt_self();

  swift_unknownObjectRetain();

  v20 = a2;
  v21 = [v19 bundle];
  if (v18)
  {
    v32 = 0x8000000264CE1AE0;
    sub_264CC2EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_264CD2200;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_264C8A788();
    *(v22 + 32) = a3;
    *(v22 + 40) = a4;

    sub_264CC45AC();
  }

  else
  {
    v32 = 0xE000000000000000;
    sub_264CC2EFC();
  }

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 == 1)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  v26 = sub_264CC459C();

  v27 = [objc_opt_self() bundle];
  sub_264CC2EFC();

  v28 = sub_264CC459C();

  v29 = sub_264CC459C();
  v33.receiver = v15;
  v33.super_class = v14;
  v30 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_symbolName_contentLayout_, v26, v28, v29, v25, 0xE000000000000000);

  return v30;
}

id sub_264C8A444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  if (!a3)
  {
    v14 = 0;
    v15 = a9;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = sub_264CC459C();
  v15 = a9;
  if (v11)
  {
LABEL_3:
    v11 = sub_264CC459C();
  }

LABEL_4:
  v16 = objc_allocWithZone(STIntroPasscodeViewController);
  v20[4] = a8;
  v20[5] = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_264C89FD8;
  v20[3] = &block_descriptor_75;
  v17 = _Block_copy(v20);

  v18 = [v16 initWithIntroductionModel:a1 childName:v14 askForRecoveryAppleID:a4 & 1 altDSID:v11 isChildOrNotSignedIntoiCloud:a7 & 1 continueHandler:v17];

  _Block_release(v17);

  return v18;
}

id _s20ScreenTimeSettingsUI36STIntroductionViewControllersFactoryC023makeIntroductionWelcomeF10Controller9childName21forceParentalControls15continueHandler03endS0So06UIViewL0CSSSg_SbyycyyctFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v12 = sub_264CC459C();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(STIntroWelcomeViewController);
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264C89FD8;
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);
  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_264C89FD8;
  v18[3] = &block_descriptor_69;
  v15 = _Block_copy(v18);

  v16 = [v13 initWithChildName:v12 forceParentalControls:a3 & 1 continueHandler:v14 endHandler:v15];
  _Block_release(v14);

  _Block_release(v15);

  return v16;
}

uint64_t sub_264C8A740(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_264C8A788()
{
  result = qword_27FFA9CF0;
  if (!qword_27FFA9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9CF0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264C8A854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_264C8A89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264C8A914@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v3 = v4;
  if (v5)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_264C8A9A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C30);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C38);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  if (*(v1 + 40))
  {
    sub_264C8AC04(v1, (&v11 - v6));
    sub_264C6467C(v7, v4, &qword_27FFA9C38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C40);
    sub_264C8B578(&qword_27FFA9C48, &qword_27FFA9C38);
    sub_264C8B578(&qword_27FFA9C50, &qword_27FFA9C40);
    sub_264CC3D8C();
    return sub_264C646E4(v7, &qword_27FFA9C38);
  }

  else
  {
    sub_264C8B24C(v1, v12);
    v9 = v12[3];
    *(v4 + 2) = v12[2];
    *(v4 + 3) = v9;
    *(v4 + 8) = v13;
    v10 = v12[1];
    *v4 = v12[0];
    *(v4 + 1) = v10;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C40);
    sub_264C8B578(&qword_27FFA9C48, &qword_27FFA9C38);
    sub_264C8B578(&qword_27FFA9C50, &qword_27FFA9C40);
    return sub_264CC3D8C();
  }
}

uint64_t sub_264C8AC04@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_264C8AE90(&v22);
  v32 = *a1;
  v31 = *(a1 + 3);
  v10 = swift_allocObject();
  v11 = *(a1 + 1);
  v10[1] = *a1;
  v10[2] = v11;
  *(v10 + 41) = *(a1 + 25);
  sub_264C8B5D4(&v32, v34);

  sub_264C6467C(&v31, v34, &qword_27FFA9C60);
  sub_264CC428C();
  sub_264C6467C(v9, v6, &qword_27FFA9C58);
  v12 = v29;
  v33[6] = v28;
  v33[7] = v29;
  v13 = v30;
  v33[8] = v30;
  v14 = v24;
  v15 = v25;
  v33[2] = v24;
  v33[3] = v25;
  v17 = v26;
  v16 = v27;
  v33[4] = v26;
  v33[5] = v27;
  v19 = v22;
  v18 = v23;
  v33[0] = v22;
  v33[1] = v23;
  a2[6] = v28;
  a2[7] = v12;
  a2[8] = v13;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v17;
  a2[5] = v16;
  *a2 = v19;
  a2[1] = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C68);
  sub_264C6467C(v6, a2 + *(v20 + 48), &qword_27FFA9C58);
  sub_264C6467C(v33, v34, &qword_27FFA9C70);
  sub_264C646E4(v9, &qword_27FFA9C58);
  sub_264C646E4(v6, &qword_27FFA9C58);
  v34[6] = v28;
  v34[7] = v29;
  v34[8] = v30;
  v34[2] = v24;
  v34[3] = v25;
  v34[4] = v26;
  v34[5] = v27;
  v34[0] = v22;
  v34[1] = v23;
  return sub_264C646E4(v34, &qword_27FFA9C70);
}

__n128 sub_264C8AE90@<Q0>(uint64_t a1@<X8>)
{
  sub_264CC3CFC();
  v2 = objc_opt_self();
  v3 = [v2 bundle];
  LOWORD(v25) = 256;
  v4 = sub_264CC3FAC();
  v29 = v5;
  v30 = v4;
  v7 = v6;
  sub_264CC3CFC();
  v8 = [v2 bundle];
  v9 = sub_264CC3FAC();
  v11 = v10;
  v13 = v12;
  v14 = sub_264CC3F8C();
  v16 = v15;
  v18 = v17;
  sub_264C64798(v9, v11, v13 & 1);

  v19 = sub_264CC3F7C();
  v27 = v20;
  v28 = v19;
  v22 = v21;
  v26 = v23;
  sub_264C64798(v14, v16, v18 & 1);

  sub_264C64798(v30, v29, v7 & 1);

  sub_264CC447C();
  sub_264CC3BAC();
  *a1 = v28;
  *(a1 + 8) = v27;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v26;
  *(a1 + 96) = v35;
  *(a1 + 112) = v36;
  *(a1 + 128) = v37;
  *(a1 + 32) = v31;
  *(a1 + 48) = v32;
  result = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v34;
  return result;
}

id sub_264C8B110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9C78);
  sub_264CC435C();
  return sub_264C8F810();
}

uint64_t sub_264C8B17C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() bundle];
  sub_264CC2EFC();

  sub_264C64744();
  result = sub_264CC3FBC();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_264C8B24C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = *a1;
  v22 = *(a1 + 3);
  sub_264CC474C();
  sub_264C8B5D4(&v23, v21);

  sub_264C6467C(&v22, v21, &qword_27FFA9C60);
  v4 = sub_264CC473C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(a1 + 1);
  *(v5 + 32) = *a1;
  *(v5 + 48) = v7;
  *(v5 + 57) = *(a1 + 25);
  sub_264C8B5D4(&v23, v21);

  sub_264C6467C(&v22, v21, &qword_27FFA9C60);
  v8 = sub_264CC473C();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = *(a1 + 1);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 57) = *(a1 + 25);
  sub_264CC437C();
  v11 = v21[0];
  v12 = v21[1];
  v13 = v21[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v21[0] >> 62)
  {
    v14 = sub_264CC4A0C();
  }

  else
  {
    v14 = *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = (v14 - 1) & ~((v14 - 1) >> 63);
    v17 = swift_allocObject();
    v18 = *(a1 + 1);
    v17[1] = *a1;
    v17[2] = v18;
    *(v17 + 41) = *(a1 + 25);
    v19 = swift_allocObject();
    v20 = *(a1 + 1);
    v19[1] = *a1;
    v19[2] = v20;
    *(v19 + 41) = *(a1 + 25);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = 0;
    a2[4] = v16;
    a2[5] = sub_264C8B6B4;
    a2[6] = v17;
    a2[7] = sub_264C8B704;
    a2[8] = v19;
    sub_264C8B5D4(&v23, v21);

    sub_264C6467C(&v22, v21, &qword_27FFA9C60);
    sub_264C8B5D4(&v23, v21);

    return sub_264C6467C(&v22, v21, &qword_27FFA9C60);
  }

  return result;
}

uint64_t sub_264C8B578(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

void sub_264C8B704(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_264C8F824();
  }
}

uint64_t sub_264C8B730(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v40 >> 62)
  {
    v4 = sub_264CC4A0C();
  }

  else
  {
    v4 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    v21 = [objc_opt_self() bundle];
    v20 = sub_264CC2EFC();

    return v20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if ((v40 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26674B600](a1);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_27;
    }

    v5 = *(v40 + 8 * a1 + 32);
  }

  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  a1 = v6;
  sub_264CC392C();

  a2 = v40;
  if (!(v40 >> 62))
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

LABEL_21:
    v22 = [a1 minAge];
    v23 = [a1 maxAge];
    v24 = [a1 minAge];
    v25 = objc_opt_self();
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v27 = [v25 localizedStringFromNumber:v26 numberStyle:0];

    v20 = sub_264CC45DC();
    v29 = v28;
    if (v22 != v23)
    {

      v30 = [a1 maxAge];
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v32 = [v25 localizedStringFromNumber:v31 numberStyle:0];

      v33 = sub_264CC45DC();
      v35 = v34;

      v36 = [objc_opt_self() bundle];
      sub_264CC2EFC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_264CD21F0;
      v38 = MEMORY[0x277D837D0];
      *(v37 + 56) = MEMORY[0x277D837D0];
      v39 = sub_264C8A788();
      *(v37 + 32) = v20;
      *(v37 + 40) = v29;
      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      *(v37 + 64) = v39;
      *(v37 + 72) = v33;
      *(v37 + 80) = v35;
      v20 = sub_264CC45AC();

      goto LABEL_24;
    }

    return v20;
  }

LABEL_19:
  result = sub_264CC4A0C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v8 = MEMORY[0x26674B600](0, a2);
LABEL_13:
    v9 = v8;

    sub_264C8BDE4();
    v10 = sub_264CC486C();

    if (v10)
    {
      v11 = [objc_opt_self() bundle];
      sub_264CC2EFC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_264CD2200;
      v13 = [a1 maxAge];
      v14 = objc_opt_self();
      v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v16 = [v14 localizedStringFromNumber:v15 numberStyle:0];

      v17 = sub_264CC45DC();
      v19 = v18;

      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_264C8A788();
      *(v12 + 32) = v17;
      *(v12 + 40) = v19;
      v20 = sub_264CC45AC();

LABEL_24:

      return v20;
    }

    goto LABEL_21;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a2 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_264C8BDE4()
{
  result = qword_27FFA9C80;
  if (!qword_27FFA9C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFA9C80);
  }

  return result;
}

unint64_t sub_264C8BE30()
{
  result = qword_27FFA9C88;
  if (!qword_27FFA9C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFA9C90);
    sub_264C8B578(&qword_27FFA9C48, &qword_27FFA9C38);
    sub_264C8B578(&qword_27FFA9C50, &qword_27FFA9C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA9C88);
  }

  return result;
}

id STSummaryCellViewController.__allocating_init(userAltDSID:deviceIdentifier:)()
{

  v1 = objc_allocWithZone(v0);
  sub_264CC374C();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STSummaryCellViewController_bridge] = sub_264CC372C();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id STSummaryCellViewController.init(userAltDSID:deviceIdentifier:)()
{

  sub_264CC374C();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI27STSummaryCellViewController_bridge] = sub_264CC372C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSummaryCellViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

id sub_264C8C140()
{
  v1 = v0;
  v2 = sub_264CC376C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for STSummaryCellViewController();
  v38.receiver = v1;
  v38.super_class = v9;
  objc_msgSendSuper2(&v38, sel_viewDidLoad);

  sub_264CC375C();
  (*(v3 + 16))(v5, v8, v2);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9CA0));
  v11 = sub_264CC3D5C();
  [v1 addChildViewController_];
  result = [v11 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v35 = v8;
  v36 = v3;
  v37 = v2;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_264CD2870;
  v16 = [v13 topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18 = [result topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [v13 bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = result;
  v22 = [result bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v15 + 40) = v23;
  v24 = [v13 leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = result;
  v26 = [result leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 48) = v27;
  v28 = [v13 trailingAnchor];
  result = [v1 view];
  if (result)
  {
    v29 = result;
    v30 = objc_opt_self();
    v31 = [v29 trailingAnchor];

    v32 = [v28 constraintEqualToAnchor_];
    *(v15 + 56) = v32;
    sub_264C723C0();
    v33 = sub_264CC468C();

    [v30 activateConstraints_];

    [v11 didMoveToParentViewController_];
    return (*(v36 + 8))(v35, v37);
  }

LABEL_13:
  __break(1u);
  return result;
}

id STSummaryCellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264CC459C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id STSummaryCellViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSummaryCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id STIntroPresetsViewController.__allocating_init(introductionModel:settingsPresetViewModel:name:updateExistingSettings:onContinue:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_restrictionsToPresetMappingViewModel] = 0;
  *&v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC] = 0;
  v17 = &v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_continueHandler];
  *v17 = a6;
  v17[1] = a7;
  *&v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_introductionModel] = a1;
  v18 = &v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_name];
  *v18 = a3;
  v18[1] = a4;
  v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_updateExistingSettings] = a5;
  *&v16[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_settingsPresetViewModel] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v19 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v20 = objc_opt_self();

  swift_unknownObjectRetain();
  v21 = a2;
  if (v19)
  {

    v22 = [v20 bundle];
    v34 = 0x8000000264CE1AE0;
    sub_264CC2EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_264CD2200;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_264C8A788();
    *(v23 + 32) = a3;
    *(v23 + 40) = a4;
    sub_264CC45AC();
  }

  else
  {
    v24 = [v20 bundle];
    v34 = 0xE000000000000000;
    sub_264CC2EFC();
  }

  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 3;
  }

  v28 = sub_264CC459C();

  v29 = [objc_opt_self() bundle];
  sub_264CC2EFC();

  v30 = sub_264CC459C();

  v31 = sub_264CC459C();
  v35.receiver = v16;
  v35.super_class = v8;
  v32 = objc_msgSendSuper2(&v35, sel_initWithTitle_detailText_symbolName_contentLayout_, v28, v30, v31, v27, 0xE000000000000000);

  swift_unknownObjectRelease();

  return v32;
}

id STIntroPresetsViewController.init(introductionModel:settingsPresetViewModel:name:updateExistingSettings:onContinue:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_restrictionsToPresetMappingViewModel] = 0;
  *&v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC] = 0;
  v11 = &v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_continueHandler];
  *v11 = a6;
  v11[1] = a7;
  *&v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_introductionModel] = a1;
  v12 = &v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_name];
  *v12 = a3;
  v12[1] = a4;
  v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_updateExistingSettings] = a5;
  *&v7[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_settingsPresetViewModel] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v14 = objc_opt_self();

  swift_unknownObjectRetain();
  v15 = a2;
  v16 = &selRef__acknowledgeIntroScreens;
  if (v13)
  {

    v17 = [v14 bundle];
    v30 = 0x8000000264CE1AE0;
    sub_264CC2EFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
    v18 = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_264CD2200;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_264C8A788();
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    sub_264CC45AC();

    v15 = v18;
    v16 = &selRef__acknowledgeIntroScreens;
  }

  else
  {
    v20 = [v14 bundle];
    v30 = 0xE000000000000000;
    sub_264CC2EFC();
  }

  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  v24 = sub_264CC459C();

  v25 = [objc_opt_self() v16[490]];
  sub_264CC2EFC();

  v26 = sub_264CC459C();

  v27 = sub_264CC459C();
  v31.receiver = v7;
  v31.super_class = type metadata accessor for STIntroPresetsViewController();
  v28 = objc_msgSendSuper2(&v31, sel_initWithTitle_detailText_symbolName_contentLayout_, v24, v26, v27, v23, 0xE000000000000000);

  swift_unknownObjectRelease();

  return v28;
}

void sub_264C8D0E0()
{
  v1 = sub_264CC3E8C();
  MEMORY[0x28223BE20](v1 - 8);
  v66.receiver = v0;
  v66.super_class = type metadata accessor for STIntroPresetsViewController();
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_264CC424C();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9CF8));
  v4 = sub_264CC3D5C();
  v5 = OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC;
  v6 = *&v2[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC];
  *&v2[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_presetsVC] = v4;
  v7 = v4;

  sub_264CC3E7C();
  sub_264CC3D4C();

  if (!*&v2[v5])
  {
    __break(1u);
    goto LABEL_22;
  }

  [v2 addChildViewController_];
  v8 = [v2 contentView];
  v9 = *&v2[v5];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = [v9 view];
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  [v8 addSubview_];

  v12 = *&v2[v5];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = [v12 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D00);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_264CD2870;
  v16 = *&v2[v5];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = [v16 view];
  if (!v17)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v2 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v15 + 32) = v22;
  v23 = *&v2[v5];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = [v23 view];
  if (!v24)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v2 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v15 + 40) = v29;
  v30 = *&v2[v5];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v2 contentView];
  v35 = [v34 layoutMarginsGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v33 constraintEqualToAnchor_];

  *(v15 + 48) = v37;
  v38 = *&v2[v5];
  if (!v38)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v39 = [v38 view];
  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v40 trailingAnchor];

  v43 = [v2 contentView];
  v44 = [v43 layoutMarginsGuide];

  v45 = [v44 trailingAnchor];
  v46 = [v42 constraintEqualToAnchor_];

  *(v15 + 56) = v46;
  sub_264C723C0();
  v47 = sub_264CC468C();

  [v41 activateConstraints_];

  v48 = *&v2[v5];
  if (!v48)
  {
LABEL_34:
    __break(1u);
    return;
  }

  [v48 didMoveToParentViewController_];
  v49 = [objc_opt_self() boldButton];
  v50 = v2[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_updateExistingSettings];
  v51 = objc_opt_self();
  v52 = [v51 bundle];
  sub_264CC2EFC();

  if (v50 == 1)
  {
    v53 = [v51 bundle];
    sub_264CC2EFC();
  }

  else
  {
    v54 = [v51 bundle];
    sub_264CC2EFC();
  }

  v55 = v49;
  v56 = sub_264CC459C();
  [v55 setAccessibilityIdentifier_];

  v57 = sub_264CC459C();

  [v55 setTitle:v57 forState:0];

  [v55 addTarget:v2 action:sel_continue forControlEvents:0x2000];
  v58 = [v2 buttonTray];
  [v58 addButton_];

  v59 = [objc_opt_self() linkButton];
  v60 = sub_264CC459C();
  [v59 setAccessibilityIdentifier_];

  v61 = sub_264CC459C();

  [v59 setTitle:v61 forState:0];

  [v59 addTarget:v2 action:sel_notNow forControlEvents:0x2000];
  v62 = [v2 buttonTray];
  [v62 addButton_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v63 = [v2 navigationItem];
    v64 = [objc_opt_self() bundle];
    sub_264CC2EFC();

    v65 = sub_264CC459C();

    [v63 setBackButtonTitle_];
  }
}

uint64_t sub_264C8DAD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_introductionModel);
  sub_264C8F99C();
  v2 = sub_264CC453C();

  [v1 setRestrictions_];

  v3 = sub_264CC336C();
  v13 = v3;
  v4 = sub_264C8E6D0();
  v14 = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  v6 = *(*(v3 - 8) + 104);
  v6(boxed_opaque_existential_1, *MEMORY[0x277D4B860], v3);
  v7 = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (v7)
  {
    v13 = v3;
    v14 = v4;
    v8 = __swift_allocate_boxed_opaque_existential_1(v12);
    v6(v8, *MEMORY[0x277D4B878], v3);
    v9 = sub_264CC30BC();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264CC392C();

      v10 = MEMORY[0x26674A3D0](v12[0]);

      [v1 setImageGenerationRestriction_];
    }
  }

  sub_264C8FB30();
  return (*(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_continueHandler))();
}

void sub_264C8DD00()
{
  v2 = *&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_name];
  v1 = *&v0[OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_name + 8];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = [objc_opt_self() bundle];
  sub_264CC2EFC();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAA3C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_264CD2200;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_264C8A788();
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;

    sub_264CC45AC();
  }

  v6 = objc_opt_self();
  v7 = [v6 bundle];
  sub_264CC2EFC();

  v8 = sub_264CC459C();

  v9 = sub_264CC459C();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:{1, 0xE000000000000000}];

  v11 = [v6 bundle];
  sub_264CC2EFC();

  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v13 = v0;
  v14 = sub_264CC459C();

  aBlock[4] = sub_264C8E6B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264C8A01C;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v10 addAction_];
  v18 = [v6 &selRef__createUsageDetailListControllerWithSpecifier_];
  sub_264CC2EFC();

  v19 = sub_264CC459C();

  v20 = [v16 actionWithTitle:v19 style:1 handler:{0, 0xE000000000000000}];

  [v10 addAction_];
  [v13 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_264C8E194(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_introductionModel);
  [v3 setRestrictions_];
  v4 = sub_264CC336C();
  v14 = v4;
  v5 = sub_264C8E6D0();
  v15 = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  v7 = *(*(v4 - 8) + 104);
  v7(boxed_opaque_existential_1, *MEMORY[0x277D4B860], v4);
  v8 = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (v8)
  {
    v14 = v4;
    v15 = v5;
    v9 = __swift_allocate_boxed_opaque_existential_1(v13);
    v7(v9, *MEMORY[0x277D4B878], v4);
    v10 = sub_264CC30BC();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if (v10)
    {
      [v3 setImageGenerationRestriction_];
    }
  }

  v11 = sub_264C8FC60();
  return (*(a2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI28STIntroPresetsViewController_continueHandler))(v11);
}

id STIntroPresetsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264CC459C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264CC459C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264CC459C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id STIntroPresetsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264CC459C();

  if (a4)
  {
    v12 = sub_264CC459C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id STIntroPresetsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STIntroPresetsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264C8E6D0()
{
  result = qword_27FFA95F0;
  if (!qword_27FFA95F0)
  {
    sub_264CC336C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFA95F0);
  }

  return result;
}

uint64_t sub_264C8E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_264CC4B7C();
  sub_264CC460C();
  v6 = sub_264CC4B9C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_264CC4AAC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_264C8E820()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

void sub_264C8E8A8()
{
  v0 = sub_264C97E78();
  if ((v1 & 1) == 0)
  {
    v2 = v0;
    if (qword_27FFA8FF8 != -1)
    {
      swift_once();
    }

    v3 = sub_264CC387C();
    __swift_project_value_buffer(v3, qword_27FFAC2B0);
    v4 = sub_264CC385C();
    v5 = sub_264CC47DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_264BA2000, v4, v5, "SettingsPresetViewModel resetToAgeBased to index:%ld", v6, 0xCu);
      MEMORY[0x26674C780](v6, -1, -1);
    }

    sub_264C8F6DC();
  }
}

id sub_264C8E9F0(SEL *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v2 = v10;
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = [v10 preferredRegion];
  if (!v3)
  {
    sub_264CC45DC();
    v3 = sub_264CC459C();
  }

  v4 = [v10 *a1];

  sub_264C8A740(0, &qword_27FFAA390);
  sub_264C9DE4C();
  v5 = sub_264CC454C();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_264C98DC0(*(v5 + 16), 0);
    v8 = sub_264C9CB1C(&v10, v7 + 4, v6, v5);

    sub_264C9E014();
    if (v8 != v6)
    {
      __break(1u);
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v10 = v7;
  sub_264C98564(&v10);

  return v10;
}

uint64_t sub_264C8EBD0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(*&v18[0] + 16) && (v5 = sub_264C82E84(a1, a2), (v6 & 1) != 0))
  {
    sub_264C71590(*(*&v18[0] + 56) + 32 * v5, v18);
  }

  else
  {

    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9A90);
  v7 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    v8 = v16;
    *&v13 = v16;
  }

  else
  {
    v16 = 0;
    v17 = 1;
    v9 = *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsDefaultValueProvider);
    v10 = sub_264CC459C();
    v11 = [v9 defaultValueForRestrictionIdentifier_];

    if (v11)
    {
      sub_264CC489C();
      swift_unknownObjectRelease();
      sub_264C6B7DC(&v13, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v8 = v13;
  }

  BYTE8(v13) = 0;
  *(&v15 + 1) = v7;
  *&v14 = v8;
  sub_264C914B0(&v14, a1, a2, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264C8EE08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(*&v17[0] + 16) && (v5 = sub_264C82E84(a1, a2), (v6 & 1) != 0))
  {
    sub_264C71590(*(*&v17[0] + 56) + 32 * v5, v17);
  }

  else
  {

    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9A90);
  v7 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    v8 = v16;
    if (v16 != 2)
    {
      LOBYTE(v13) = v16;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 2;
  }

  v9 = *(v2 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsDefaultValueProvider);
  v10 = sub_264CC459C();
  v11 = [v9 defaultValueForRestrictionIdentifier_];

  if (v11)
  {
    sub_264CC489C();
    swift_unknownObjectRelease();
    sub_264C6B7DC(&v13, &v14);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v8 = v13;
  if (v13 == 2)
  {
    return 2;
  }

LABEL_15:
  *(&v15 + 1) = v7;
  LOBYTE(v14) = v8 & 1;
  sub_264C914B0(&v14, a1, a2, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 2;
  }
}

double sub_264C8F02C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (*(*&v19[0] + 16) && (v7 = sub_264C82E84(a1, a2), (v8 & 1) != 0))
  {
    sub_264C71590(*(*&v19[0] + 56) + 32 * v7, v18);
  }

  else
  {

    memset(v18, 0, sizeof(v18));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9A90);
  v9 = MEMORY[0x277D84F70];
  if (swift_dynamicCast())
  {
    sub_264C6B7DC(&v16, v19);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v10 = *(v3 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsDefaultValueProvider);
    v11 = sub_264CC459C();
    v12 = [v10 defaultValueForRestrictionIdentifier_];

    if (v12)
    {
      sub_264CC489C();
      swift_unknownObjectRelease();
      sub_264C6B7DC(v19, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v19, 0, sizeof(v19));
    }

    if (*(&v17 + 1))
    {
      sub_264C646E4(&v16, &unk_27FFA9A90);
    }
  }

  sub_264C9E3D0(v19, &v16);
  if (!*(&v17 + 1))
  {
    sub_264C646E4(v19, &unk_27FFA9A90);
    sub_264C646E4(&v16, &unk_27FFA9A90);
    goto LABEL_18;
  }

  sub_264C6B7DC(&v16, v18);
  *(&v15 + 1) = v9 + 8;
  *&v14 = swift_allocObject();
  sub_264C71590(v18, v14 + 16);
  sub_264C914B0(&v14, a1, a2, &v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  sub_264C646E4(v19, &unk_27FFA9A90);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_264C8F2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_264C90C44();
  v9 = v8;
  if (v8)
  {
    v10 = sub_264C920F4(v8);
    if (v10)
    {
      v11 = v10;
      if (*(v10 + 16))
      {
        v12 = sub_264C82E84(a1, a2);
        if (v13)
        {
          sub_264C71590(*(v11 + 56) + 32 * v12, &v33);

          goto LABEL_9;
        }
      }
    }

    v33 = 0u;
    v34 = 0u;
LABEL_9:
    v14 = *(v4 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics);
    swift_unknownObjectRetain();
    v16 = [v9 identifier];
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      sub_264CC45DC();
      v15 = sub_264CC459C();
    }

    goto LABEL_12;
  }

  v33 = 0u;
  v34 = 0u;
  v14 = *(v3 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics);
  swift_unknownObjectRetain();
  v15 = 0;
LABEL_12:
  v17 = sub_264CC459C();
  sub_264C9E3D0(&v33, v31);
  v18 = v32;
  if (v32)
  {
    v19 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v20 = *(v18 - 8);
    MEMORY[0x28223BE20](v19);
    v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = sub_264CC4A8C();
    (*(v20 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v23 = 0;
  }

  sub_264C9E3D0(a3, v31);
  v24 = v32;
  if (v32)
  {
    v25 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v26 = *(v24 - 8);
    MEMORY[0x28223BE20](v25);
    v28 = v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v28);
    v29 = sub_264CC4A8C();
    (*(v26 + 8))(v28, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v29 = 0;
  }

  [v14 sendPresetsValueChangedAnalyticsEventWithRecommendedPresetId:v15 fieldName:v17 recomendedValue:v23 selectedValue:v29];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return sub_264C646E4(&v33, &unk_27FFA9A90);
}

uint64_t sub_264C8F664()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

void sub_264C8F6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_264CC393C();
  v2 = sub_264C90018();
  if (v2)
  {
    v3 = v2;
    sub_264C920F4(v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;
    sub_264CC393C();
  }

  else
  {
    sub_264C8367C(MEMORY[0x277D84F90]);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v1;
    sub_264CC393C();
  }
}

void sub_264C8F824()
{
  v1 = sub_264C90018();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics);
    swift_unknownObjectRetain();
    [v3 sendSelectedAgeRangeAnalyticsEventWithLowerBound:objc_msgSend(v2 upperBound:{sel_minAge), objc_msgSend(v2, sel_maxAge)}];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FFA8FF8 != -1)
    {
      swift_once();
    }

    v4 = sub_264CC387C();
    __swift_project_value_buffer(v4, qword_27FFAC2B0);
    oslog = sub_264CC385C();
    v5 = sub_264CC47EC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_264BA2000, oslog, v5, "Selected preset is nil", v6, 2u);
      MEMORY[0x26674C780](v6, -1, -1);
    }
  }
}

uint64_t sub_264C8F99C()
{
  v0 = sub_264CC336C();
  v10 = v0;
  v1 = sub_264C8E6D0();
  v11 = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v3 = *(*(v0 - 8) + 104);
  v3(boxed_opaque_existential_1, *MEMORY[0x277D4B860], v0);
  v4 = sub_264CC30BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (v4 & 1) != 0 && (v10 = v0, v11 = v1, v5 = __swift_allocate_boxed_opaque_existential_1(v9), v3(v5, *MEMORY[0x277D4B878], v0), v6 = sub_264CC30BC(), __swift_destroy_boxed_opaque_existential_1Tm(v9), (v6))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    v7 = sub_264CC371C();

    return v7;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264CC392C();

    return v9[0];
  }
}

void sub_264C8FB30()
{
  v1 = sub_264C90018();
  if (v1)
  {

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics);
  swift_unknownObjectRetain();
  v4 = sub_264C90018();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 minAge];
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

    v7 = sub_264C90018();
    if (v7)
    {
LABEL_6:
      v8 = v7;
      v9 = [v7 maxAge];
      v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    v7 = sub_264C90018();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  [v3 sendEnabledRestrictionsEventWithSelectionType:v2 lowerBound:v11 upperBound:v10];

  swift_unknownObjectRelease();
}

id sub_264C8FC74(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_27FFA8FF8 != -1)
  {
    swift_once();
  }

  v6 = sub_264CC387C();
  __swift_project_value_buffer(v6, qword_27FFAC2B0);
  v7 = sub_264CC385C();
  v8 = sub_264CC47DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264BA2000, v7, v8, a1, v9, 2u);
    MEMORY[0x26674C780](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics);
  v11 = *a2;

  return [v10 v11];
}

uint64_t sub_264C8FD7C()
{
  v0 = sub_264CC387C();
  __swift_allocate_value_buffer(v0, qword_27FFAC2B0);
  __swift_project_value_buffer(v0, qword_27FFAC2B0);
  return sub_264CC386C();
}

uint64_t sub_264C8FE1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

uint64_t sub_264C8FE90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_264C8FF18(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264CC393C();
}

uint64_t sub_264C8FFAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  return v1;
}

uint64_t sub_264C90018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if (v5)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  v0 = v4 >> 62 ? sub_264CC4A0C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4 >= v0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264CC392C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x26674B600]();
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(9 * v4 + 0x20);
LABEL_9:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

id SettingsPresetViewModel.__allocating_init(dsid:childAge:isInitialSetup:restrictionsToPresetMappingViewModel:restrictionsDataSource:agePresetsAnalytics:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v14 = [v13 initWithDsid:a1 childAge:a2 isInitialSetup:a3 & 1 restrictionsToPresetMappingViewModel:a4 restrictionsDefaultValueProvider:a5 agePresetsAnalytics:a6];
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id SettingsPresetViewModel.init(dsid:childAge:isInitialSetup:restrictionsToPresetMappingViewModel:restrictionsDataSource:agePresetsAnalytics:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  v13 = [v6 initWithDsid:a1 childAge:a2 isInitialSetup:a3 & 1 restrictionsToPresetMappingViewModel:a4 restrictionsDefaultValueProvider:a5 agePresetsAnalytics:a6];
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

id SettingsPresetViewModel.__allocating_init(dsid:childAge:isInitialSetup:restrictionsToPresetMappingViewModel:restrictionsDefaultValueProvider:agePresetsAnalytics:)(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  swift_getObjectType();
  return sub_264C9CDEC(a1, a2, a3, a4, a5, a6, v6);
}

id SettingsPresetViewModel.init(dsid:childAge:isInitialSetup:restrictionsToPresetMappingViewModel:restrictionsDefaultValueProvider:agePresetsAnalytics:)(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v51 = a5;
  v53 = a4;
  v50 = a3;
  v43 = a2;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D10);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA3A0);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v36 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFA9D20);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFAA3B0);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D30);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v67 = &type metadata for SettingsPresetViewModel.FamilyDataFetcher;
  v68 = &off_28766D680;
  v64 = &type metadata for SettingsPresetViewModel.RegionRatingsFetcher;
  v65 = &off_28766D658;
  v52 = ObjectType;
  v17 = objc_allocWithZone(ObjectType);
  __swift_mutable_project_boxed_opaque_existential_1(v66, &type metadata for SettingsPresetViewModel.FamilyDataFetcher);
  __swift_mutable_project_boxed_opaque_existential_1(v63, &type metadata for SettingsPresetViewModel.RegionRatingsFetcher);
  v61 = &type metadata for SettingsPresetViewModel.FamilyDataFetcher;
  v62 = &off_28766D680;
  v58 = &type metadata for SettingsPresetViewModel.RegionRatingsFetcher;
  v59 = &off_28766D658;
  v18 = &v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_childAge];
  *v18 = 0;
  v18[8] = 1;
  v19 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsToPresetMappingViewModel;
  *&v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsToPresetMappingViewModel] = 0;
  v20 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__availablePresets;
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D50);
  sub_264CC38EC();
  v21 = v16;
  v22 = v41;
  (*(v14 + 32))(&v17[v20], v21, v13);
  v23 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__ratings;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D60);
  sub_264CC38EC();
  (*(v10 + 32))(&v17[v23], v12, v37);
  v24 = v43;
  v25 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__selectedPresetIndex;
  v55 = 0;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D70);
  v26 = v38;
  sub_264CC38EC();
  (*(v39 + 32))(&v17[v25], v26, v40);
  v27 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__restrictions;
  v55 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFA9D80);
  v28 = v42;
  sub_264CC38EC();
  (*(v44 + 32))(&v17[v27], v28, v45);
  *&v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_keysSetByUser] = MEMORY[0x277D84FA0];
  v29 = OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel__showLoadingIndicator;
  LOBYTE(v55) = 0;
  v30 = v46;
  sub_264CC38EC();
  (*(v47 + 32))(&v17[v29], v30, v48);
  v31 = v49;
  *&v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_dsid] = v49;
  *&v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_agePresetsAnalytics] = v22;
  v32 = v31;
  swift_unknownObjectRetain();
  if (v24)
  {
    v33 = [v24 integerValue];
  }

  else
  {
    v33 = 0;
  }

  *v18 = v33;
  v18[8] = v24 == 0;
  v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_isInitialSetup] = v50 & 1;
  *&v17[v19] = v53;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_restrictionsDefaultValueProvider] = v51;
  sub_264C6A834(v60, &v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_familyDataFetcher]);
  sub_264C6A834(v57, &v17[OBJC_IVAR____TtC20ScreenTimeSettingsUI23SettingsPresetViewModel_regionRatingsFetcher]);
  v54.receiver = v17;
  v54.super_class = v52;
  v34 = objc_msgSendSuper2(&v54, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v34;
}