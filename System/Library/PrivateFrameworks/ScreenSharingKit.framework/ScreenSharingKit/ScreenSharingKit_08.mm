unint64_t sub_264A8FF9C()
{
  result = qword_27FF8ACB8;
  if (!qword_27FF8ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACB8);
  }

  return result;
}

unint64_t sub_264A8FFF4()
{
  result = qword_27FF8ACC0;
  if (!qword_27FF8ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACC0);
  }

  return result;
}

unint64_t sub_264A9004C()
{
  result = qword_27FF8ACC8;
  if (!qword_27FF8ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACC8);
  }

  return result;
}

unint64_t sub_264A900A4()
{
  result = qword_27FF8ACD0;
  if (!qword_27FF8ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACD0);
  }

  return result;
}

unint64_t sub_264A900FC()
{
  result = qword_27FF8ACD8;
  if (!qword_27FF8ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACD8);
  }

  return result;
}

unint64_t sub_264A90154()
{
  result = qword_27FF8ACE0;
  if (!qword_27FF8ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACE0);
  }

  return result;
}

unint64_t sub_264A901AC()
{
  result = qword_27FF8ACE8;
  if (!qword_27FF8ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACE8);
  }

  return result;
}

unint64_t sub_264A90204()
{
  result = qword_27FF8ACF0;
  if (!qword_27FF8ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACF0);
  }

  return result;
}

unint64_t sub_264A9025C()
{
  result = qword_27FF8ACF8;
  if (!qword_27FF8ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ACF8);
  }

  return result;
}

unint64_t sub_264A902B4()
{
  result = qword_27FF8AD00;
  if (!qword_27FF8AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD00);
  }

  return result;
}

unint64_t sub_264A9030C()
{
  result = qword_27FF8AD08;
  if (!qword_27FF8AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD08);
  }

  return result;
}

unint64_t sub_264A90364()
{
  result = qword_27FF8AD10;
  if (!qword_27FF8AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD10);
  }

  return result;
}

unint64_t sub_264A903BC()
{
  result = qword_27FF8AD18;
  if (!qword_27FF8AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD18);
  }

  return result;
}

unint64_t sub_264A90414()
{
  result = qword_27FF8AD20;
  if (!qword_27FF8AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD20);
  }

  return result;
}

uint64_t sub_264A90468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2002874980 && a2 == 0xE400000000000000;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617373654D646968 && a2 == 0xEA00000000006567 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xED00007974696C69 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5E850 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617373654D697472 && a2 == 0xEA00000000006567)
  {

    return 6;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A906EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_264A23FD8(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_264A22708(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2649D04D4(a1, &qword_27FF8BB60, qword_264B44A80);
    sub_264A91B50(a2, a3, v10);

    return sub_2649D04D4(v10, &qword_27FF8BB60, qword_264B44A80);
  }

  return result;
}

unint64_t sub_264A907BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_264A22B6C(a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_264A20B44(a3 & 1);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_264A236AC();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13);
      swift_unknownObjectRelease();
      result = sub_264A91F54(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t telemetryPayload(_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_264A24308(MEMORY[0x277D84F90]);
  v7 = MEMORY[0x277D837D0];
  if (a2)
  {
    v45 = MEMORY[0x277D837D0];
    *&v44 = a1;
    *(&v44 + 1) = a2;
    sub_264A23FD8(&v44, v43);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x6E6F73616552, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (a3)
  {
    v9 = a3;
    v10 = sub_264B3FF74();
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v11 = sub_264B40964();
    __swift_project_value_buffer(v11, qword_27FF8AE40);
    v12 = a3;
    v13 = sub_264B40944();
    v14 = sub_264B414B4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a3;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_2649C6000, v13, v14, "Building payload for %@", v15, 0xCu);
      sub_2649D04D4(v16, &unk_27FF89880, &unk_264B46B20);
      MEMORY[0x266749940](v16, -1, -1);
      MEMORY[0x266749940](v15, -1, -1);
    }

    v19 = [v10 code];
    v20 = MEMORY[0x277D83B88];
    v45 = MEMORY[0x277D83B88];
    *&v44 = v19;
    sub_264A23FD8(&v44, v43);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x646F43726F727245, 0xE900000000000065, v21);
    v22 = v6;
    v23 = [v10 localizedDescription];
    v24 = sub_264B41044();
    v26 = v25;

    v45 = v7;
    *&v44 = v24;
    *(&v44 + 1) = v26;
    sub_264A23FD8(&v44, v43);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x727453726F727245, 0xEB00000000676E69, v27);
    swift_getErrorValue();
    v28 = sub_264A91990(v42);
    v45 = v20;
    *&v44 = v28;
    sub_264A23FD8(&v44, v43);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x707954726F727245, 0xE900000000000065, v29);
    swift_getErrorValue();
    v45 = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1);
    sub_264A23FD8(&v44, v43);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_264A22708(v43, 0x6A624F726F727245, 0xEB00000000746365, v31);
    v6 = v22;
    v32 = sub_264B40944();
    v33 = sub_264B414B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v44 = v35;
      *v34 = 136315138;

      v36 = sub_264B40F74();
      v38 = v37;

      v39 = sub_2649CC004(v36, v38, &v44);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2649C6000, v32, v33, "payload is %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x266749940](v35, -1, -1);
      MEMORY[0x266749940](v34, -1, -1);
    }
  }

  return v6;
}

id TelemetryProvider.init(_:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_nextID] = 1;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer;
  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer] = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = v4;
    v20 = v2;
    v6 = MEMORY[0x277D84F90];
    v7 = a1 + 32;
    v8 = a1 + 32;
    v9 = *(a1 + 16);
    do
    {
      sub_264A92110(v8, &v25);
      v22[0] = v25;
      v22[1] = v26;
      v23 = v27;
      if (*(&v26 + 1))
      {
        sub_2649D2AAC(v22, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2649D7C1C(0, v6[2] + 1, 1, v6);
        }

        v11 = v6[2];
        v10 = v6[3];
        if (v11 >= v10 >> 1)
        {
          v6 = sub_2649D7C1C((v10 > 1), v11 + 1, 1, v6);
        }

        v6[2] = v11 + 1;
        sub_2649D2AAC(v24, &v6[5 * v11 + 4]);
      }

      else
      {
        sub_2649D04D4(v22, &qword_27FF8AD38, &qword_264B4DB48);
      }

      v8 += 40;
      --v9;
    }

    while (v9);
    v12 = 0;
    v2 = v20;
    *&v20[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers] = v6;
    while (v12 < *(a1 + 16))
    {
      sub_264A92110(v7, &v25);
      if (*(&v26 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88AD0, &qword_264B44EC0);
        type metadata accessor for SignpostConsumer();
        if (swift_dynamicCast())
        {

          v13 = *&v20[v19];
          *&v20[v19] = *&v24[0];

          goto LABEL_20;
        }
      }

      else
      {
        sub_2649D04D4(&v25, &qword_27FF8AD38, &qword_264B4DB48);
      }

      ++v12;
      v7 += 40;
      if (v5 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  *&v2[OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers] = MEMORY[0x277D84F90];
LABEL_19:

LABEL_20:
  if (qword_27FF883F8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FF8AE40);
  v15 = sub_264B40944();
  v16 = sub_264B41474();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2649C6000, v15, v16, "TelemetryProvider created", v17, 2u);
    MEMORY[0x266749940](v17, -1, -1);
  }

  v21.receiver = v2;
  v21.super_class = type metadata accessor for TelemetryProvider();
  return objc_msgSendSuper2(&v21, sel_init);
}

char *sub_264A910B0(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_signpostConsumer);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *result;
    v7 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
    v9 = v5;
    v8 = *v7;

    sub_264A560D4(&v9, a2, 0, 0, 0);
  }

  return result;
}

char *sub_264A9113C(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = *result;
    v7 = v3 + 32;
    v8 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit17TelemetryProvider_eventConsumers);

    do
    {
      sub_2649CB5C0(v7, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v11 = (*(v10 + 8))(v9, v10);
      LOBYTE(v9) = sub_264A9125C(v6, v11);

      if (v9)
      {
        v12 = v16;
        v13 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v14 = v6;
        (*(v13 + 16))(&v14, a2, v12, v13);
      }

      __swift_destroy_boxed_opaque_existential_0(v15);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_264A9125C(char a1, uint64_t a2)
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

    v8 = 0xEB00000000657669;
    v9 = 0x7463416C65676E61;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000015;
        v8 = 0x8000000264B58990;
        break;
      case 2:
        break;
      case 3:
        v9 = 0x696472616F626E6FLL;
        v8 = 0xEF6E776F6853676ELL;
        break;
      case 4:
        v9 = 0xD000000000000028;
        v8 = 0x8000000264B589D0;
        break;
      case 5:
        v9 = 0xD000000000000013;
        v8 = 0x8000000264B58A00;
        break;
      case 6:
        v9 = 0x696472616F626E6FLL;
        v8 = 0xEF7972746552676ELL;
        break;
      case 7:
        v9 = 0xD000000000000010;
        v8 = 0x8000000264B58A30;
        break;
      case 8:
        v9 = 0x536E6F6973736573;
        v8 = 0xEC00000074726174;
        break;
      case 9:
        v9 = 0xD000000000000012;
        v8 = 0x8000000264B58A50;
        break;
      case 0xA:
        v9 = 0x456E6F6973736573;
        v8 = 0xEA0000000000646ELL;
        break;
      case 0xB:
        v8 = 0xEA00000000007061;
        v9 = 0x54485444646E6573;
        break;
      case 0xC:
        v9 = 0x44485444646E6573;
        v8 = 0xEB00000000776172;
        break;
      case 0xD:
        v9 = 0xD000000000000012;
        v8 = 0x8000000264B58A90;
        break;
      case 0xE:
        v9 = 0xD000000000000010;
        v8 = 0x8000000264B58AB0;
        break;
      case 0xF:
        v8 = 0xEF6E776F68537472;
        v9 = 0x656C416F69647561;
        break;
      case 0x10:
        v9 = 0xD000000000000017;
        v8 = 0x8000000264B58AD0;
        break;
      case 0x11:
        v9 = 0xD000000000000014;
        v8 = 0x8000000264B58AF0;
        break;
      case 0x12:
        v9 = 0x6F72444E67617264;
        v8 = 0xED00006465735570;
        break;
      default:
        v9 = 0xD000000000000013;
        v8 = 0x8000000264B58970;
        break;
    }

    v10 = 0x7463416C65676E61;
    v11 = 0xEB00000000657669;
    switch(a1)
    {
      case 1:
        v11 = 0x8000000264B58990;
        if (v9 == 0xD000000000000015)
        {
          goto LABEL_59;
        }

        goto LABEL_2;
      case 2:
        goto LABEL_58;
      case 3:
        v11 = 0xEF6E776F6853676ELL;
        if (v9 != 0x696472616F626E6FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 4:
        v11 = 0x8000000264B589D0;
        if (v9 != 0xD000000000000028)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 5:
        v11 = 0x8000000264B58A00;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 6:
        v11 = 0xEF7972746552676ELL;
        if (v9 != 0x696472616F626E6FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 7:
        v11 = 0x8000000264B58A30;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 8:
        v11 = 0xEC00000074726174;
        if (v9 != 0x536E6F6973736573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 9:
        v11 = 0x8000000264B58A50;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 10:
        v10 = 0x456E6F6973736573;
        v11 = 0xEA0000000000646ELL;
LABEL_58:
        if (v9 == v10)
        {
          goto LABEL_59;
        }

        goto LABEL_2;
      case 11:
        v11 = 0xEA00000000007061;
        if (v9 != 0x54485444646E6573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 12:
        v11 = 0xEB00000000776172;
        if (v9 != 0x44485444646E6573)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 13:
        v11 = 0x8000000264B58A90;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 14:
        v11 = 0x8000000264B58AB0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 15:
        v11 = 0xEF6E776F68537472;
        if (v9 != 0x656C416F69647561)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 16:
        v11 = 0x8000000264B58AD0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 17:
        v11 = 0x8000000264B58AF0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      case 18:
        v11 = 0xED00006465735570;
        if (v9 != 0x6F72444E67617264)
        {
          goto LABEL_2;
        }

        goto LABEL_59;
      default:
        v11 = 0x8000000264B58970;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

LABEL_59:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_264B41AA4();

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

id TelemetryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TelemetryProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TelemetryProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264A91990(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  if (swift_dynamicCast())
  {
    sub_264A0E11C(v9, v10, v11);
    v6 = 2;
  }

  else if (swift_dynamicCast())
  {
    sub_2649E12A4(v9, v10);
    v6 = 4;
  }

  else if (swift_dynamicCast())
  {
    v6 = 6;
  }

  else if (swift_dynamicCast())
  {
    v6 = 7;
  }

  else if (swift_dynamicCast())
  {

    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  (*(v2 + 8))(v5, a1);
  return v6;
}

double sub_264A91B50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_264A20ACC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264A23238();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_264A23FD8((*(v12 + 56) + 32 * v9), a3);
    sub_264A91BF4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_264A91BF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_264B41B84();

      sub_264B41084();
      v14 = sub_264B41BB4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264A91DA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_264B41B84();

      sub_264B41084();
      v13 = sub_264B41BB4();

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

uint64_t sub_264A91F54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B416A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v11 = result & v7;
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
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
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

uint64_t sub_264A92110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD38, &qword_264B4DB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SSKHIDServiceProperties.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_264B40374();
}

uint64_t sub_264A92270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000264B5E950 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_264B41AA4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_264A92304(uint64_t a1)
{
  v2 = sub_264A924DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A92340(uint64_t a1)
{
  v2 = sub_264A924DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SSKHIDServiceProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD48, &qword_264B4DB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A924DC();
  v11 = v9;
  sub_264B41BD4();
  v13[0] = v8;
  v13[1] = v11;
  sub_264A92530();
  sub_264B41A24();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_264A924DC()
{
  result = qword_27FF8AD50;
  if (!qword_27FF8AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD50);
  }

  return result;
}

unint64_t sub_264A92530()
{
  result = qword_27FF8AD58;
  if (!qword_27FF8AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD58);
  }

  return result;
}

uint64_t SSKHIDServiceProperties.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_264B403B4();
}

uint64_t SSKHIDServiceProperties.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

uint64_t SSKHIDServiceProperties.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD60, &qword_264B4DB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A924DC();
  sub_264B41BC4();
  if (!v2)
  {
    sub_264A92828();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_264A92778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_264B40374();
}

uint64_t sub_264A9278C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

uint64_t sub_264A927D8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_264B403B4();
}

uint64_t sub_264A927E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_264B41B84();
  sub_264B403B4();
  return sub_264B41BB4();
}

unint64_t sub_264A92828()
{
  result = qword_27FF8AD68;
  if (!qword_27FF8AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD68);
  }

  return result;
}

uint64_t HIDServicePrimitives.basicKeyboardAndMouseServiceProperties()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AD70, &qword_264B4DB90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264B46A70;
  (*(a2 + 40))(a1, a2);
  (*(a2 + 48))(a1, a2);
  sub_264A92A84(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_264A92948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894E8, &qword_264B47A18);
    v3 = sub_264B41734();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_264B41B84();
      MEMORY[0x266748E90](v10);
      result = sub_264B41BB4();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (v10 != *(v18 + v14))
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_264A92A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
    v3 = sub_264B41734();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = (v25 + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = *(v3 + 40);
      sub_264B41B84();
      v10 = v7;
      sub_264B403B4();
      v11 = sub_264B41BB4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (v11 & v12);
      if ((v16 & v15) != 0)
      {
        do
        {
          v17 = *(v3 + 48) + 16 * v13;
          v18 = *v17;
          v19 = *(v17 + 8);
          LOBYTE(v18) = sub_264B40374();

          if (v18)
          {

            v1 = v24;
            goto LABEL_4;
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while (((1 << v13) & v15) != 0);
        v1 = v24;
      }

      *(v5 + 8 * v14) = v16 | v15;
      v20 = (*(v3 + 48) + 16 * v13);
      *v20 = v8;
      v20[1] = v10;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_264A92C14()
{
  result = qword_27FF8AD78;
  if (!qword_27FF8AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD78);
  }

  return result;
}

unint64_t sub_264A92D18()
{
  result = qword_27FF8AD80;
  if (!qword_27FF8AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD80);
  }

  return result;
}

unint64_t sub_264A92D70()
{
  result = qword_27FF8AD88;
  if (!qword_27FF8AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD88);
  }

  return result;
}

unint64_t sub_264A92DC8()
{
  result = qword_27FF8AD90;
  if (!qword_27FF8AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD90);
  }

  return result;
}

uint64_t sub_264A92EF8()
{
  v2 = sub_264B3FFD4();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A92FB4, v0, 0);
}

uint64_t sub_264A92FB4()
{
  v17 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v16);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 17;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v16);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_264A93218()
{
  v14 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  sub_2649CB5C0(v1, (v0 + 2));
  v3 = sub_264B40944();
  v4 = sub_264B41494();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_2649CB5C0((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8AA30, &qword_264B44EE0);
    v7 = sub_264B41064();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v10 = sub_2649CC004(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "Unexpectedly received event: %s in EmptyRTIMessageConsumer when client doesn't support them", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_264A933F8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A9344C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A93688();
}

uint64_t sub_264A934EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A92EF8();
}

uint64_t sub_264A93578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A931F8(a1);
}

unint64_t sub_264A9360C(uint64_t a1)
{
  result = sub_264A93634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A93634()
{
  result = qword_27FF8AD98;
  if (!qword_27FF8AD98)
  {
    type metadata accessor for EmptyRTIMessageConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AD98);
  }

  return result;
}

uint64_t sub_264A93688()
{
  v2 = sub_264B3FFD4();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A93744, v0, 0);
}

uint64_t sub_264A93744()
{
  v17 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v16);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 13;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001ELL, 0x8000000264B5D0A0, &v16);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

const char *sub_264A93988@<X0>(const sockaddr *a1@<X0>, socklen_t a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v8 = getnameinfo(a1, a2, v6, 0x401u, v7, 0x20u, 26);
  if (!v8)
  {
    v12 = sub_264B410A4();
    v14 = v13;
    v15 = sub_264B410A4();
    v17 = v16;
    MEMORY[0x266748390](58, 0xE100000000000000);
    MEMORY[0x266748390](v15, v17);

    v10 = v12;
    v11 = v14;
    goto LABEL_5;
  }

  result = gai_strerror(v8);
  if (result)
  {
    v10 = sub_264B410A4();
LABEL_5:
    *a3 = v10;
    a3[1] = v11;
    MEMORY[0x266749940](v7, -1, -1);
    return MEMORY[0x266749940](v6, -1, -1);
  }

  __break(1u);
  return result;
}

uint64_t sub_264A93AA4()
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *v0;
  v10 = *(v0 + 65);
  v11 = *(v0 + 81);
  *v12 = *(v0 + 97);
  *&v12[15] = *(v0 + 7);
  v6 = *(v0 + 1);
  v7 = *(v0 + 17);
  v8 = *(v0 + 33);
  v9 = *(v0 + 49);
  if (v5)
  {
    v1 = v5;
  }

  else
  {
    v1 = 128;
  }

  sub_264A93988(&v5, v1, &v4);
  result = v4;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_264A93B84(uint64_t a1)
{
  v2 = sub_264A94160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93BC0(uint64_t a1)
{
  v2 = sub_264A94160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A93BFC()
{
  if (*v0)
  {
    result = 0x6F68706F7263696DLL;
  }

  else
  {
    result = 0x6172656D6163;
  }

  *v0;
  return result;
}

uint64_t sub_264A93C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172656D6163 && a2 == 0xE600000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F68706F7263696DLL && a2 == 0xEA0000000000656ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A93D18(uint64_t a1)
{
  v2 = sub_264A940B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93D54(uint64_t a1)
{
  v2 = sub_264A940B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A93D90(uint64_t a1)
{
  v2 = sub_264A9410C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A93DCC(uint64_t a1)
{
  v2 = sub_264A9410C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceSensorType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADA0, &qword_264B4DF00);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADA8, &qword_264B4DF08);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADB0, &qword_264B4DF10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A940B8();
  sub_264B41BD4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_264A9410C();
    v18 = v22;
    sub_264B419B4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_264A94160();
    sub_264B419B4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_264A940B8()
{
  result = qword_27FF8ADB8;
  if (!qword_27FF8ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADB8);
  }

  return result;
}

unint64_t sub_264A9410C()
{
  result = qword_27FF8ADC0;
  if (!qword_27FF8ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADC0);
  }

  return result;
}

unint64_t sub_264A94160()
{
  result = qword_27FF8ADC8;
  if (!qword_27FF8ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADC8);
  }

  return result;
}

uint64_t DeviceSensorType.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t DeviceSensorType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADD0, &qword_264B4DF18);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADD8, &qword_264B4DF20);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8ADE0, &unk_264B4DF28);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A940B8();
  v16 = v36;
  sub_264B41BC4();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_264B419A4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_2649E0ED8();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_264B417A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v26 = &type metadata for DeviceSensorType;
      sub_264B41904();
      sub_264B41794();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_264A9410C();
        sub_264B418F4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_264A94160();
        sub_264B418F4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

unint64_t sub_264A946E8()
{
  result = qword_27FF8ADE8;
  if (!qword_27FF8ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADE8);
  }

  return result;
}

unint64_t sub_264A947B8()
{
  result = qword_27FF8ADF0;
  if (!qword_27FF8ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADF0);
  }

  return result;
}

unint64_t sub_264A94810()
{
  result = qword_27FF8ADF8;
  if (!qword_27FF8ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8ADF8);
  }

  return result;
}

unint64_t sub_264A94868()
{
  result = qword_27FF8AE00;
  if (!qword_27FF8AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE00);
  }

  return result;
}

unint64_t sub_264A948C0()
{
  result = qword_27FF8AE08;
  if (!qword_27FF8AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE08);
  }

  return result;
}

unint64_t sub_264A94918()
{
  result = qword_27FF8AE10;
  if (!qword_27FF8AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE10);
  }

  return result;
}

unint64_t sub_264A94970()
{
  result = qword_27FF8AE18;
  if (!qword_27FF8AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE18);
  }

  return result;
}

unint64_t sub_264A949C8()
{
  result = qword_27FF8AE20;
  if (!qword_27FF8AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AE20);
  }

  return result;
}

void Logger.errorMarker(_:file:line:function:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v8 = sub_264B3FFD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264B41494();
  v28 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  v15 = sub_264B41064();
  v17 = v16;
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v9 + 8))(v12, v8);
  v21 = sub_264B40944();
  if (os_log_type_enabled(v21, v13))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136446978;
    v24 = sub_2649CC004(v18, v20, &v28);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = a4;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(v26, v27, &v28);
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_2649CC004(v15, v17, &v28);
    _os_log_impl(&dword_2649C6000, v21, v13, "%{public}s:%{public}ld %{public}s %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264A94D00()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FFA71B8);
  __swift_project_value_buffer(v0, qword_27FFA71B8);
  return sub_264B40954();
}

uint64_t sub_264A94DAC()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE28);
  __swift_project_value_buffer(v0, qword_27FF8AE28);
  return sub_264B40954();
}

uint64_t sub_264A94E4C()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE40);
  __swift_project_value_buffer(v0, qword_27FF8AE40);
  return sub_264B40954();
}

uint64_t sub_264A94F40()
{
  v0 = sub_264B40964();
  __swift_allocate_value_buffer(v0, qword_27FF8AE70);
  __swift_project_value_buffer(v0, qword_27FF8AE70);
  return sub_264B40954();
}

uint64_t sub_264A95084(uint64_t a1, uint64_t *a2)
{
  v3 = sub_264B40964();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_264B40954();
}

uint64_t sub_264A95120@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_264A951D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t))
{
  v30 = a6;
  v31 = a7;
  v29 = a5;
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a8(v14);
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v12 + 8))(v16, v11);
  v21 = sub_264B40944();
  v22 = os_log_type_enabled(v21, v17);
  if (!a2)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136446722;
      v27 = sub_2649CC004(v18, v20, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2050;
      v28 = v30;
      *(v23 + 14) = v29;
      *(v23 + 22) = 2082;
      *(v23 + 24) = sub_2649CC004(v28, v31, &v32);
      _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s", v23, 0x20u);
      goto LABEL_6;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (!v22)
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v32 = v24;
  *v23 = 136446978;
  v25 = sub_2649CC004(v18, v20, &v32);

  *(v23 + 4) = v25;
  *(v23 + 12) = 2050;
  v26 = v30;
  *(v23 + 14) = v29;
  *(v23 + 22) = 2082;
  *(v23 + 24) = sub_2649CC004(v26, v31, &v32);
  *(v23 + 32) = 2082;
  *(v23 + 34) = sub_2649CC004(a1, a2, &v32);
  _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s %{public}s", v23, 0x2Au);
LABEL_6:
  swift_arrayDestroy();
  MEMORY[0x266749940](v24, -1, -1);
  MEMORY[0x266749940](v23, -1, -1);
LABEL_8:
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t MediaTransportSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

unint64_t sub_264A955C0()
{
  result = qword_27FF8AED0;
  if (!qword_27FF8AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaTransportSessionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaTransportSessionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_264A95764()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E68, &qword_264B4E4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_eventContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ProxyingClientStatusEventConsumer()
{
  result = qword_27FF8AEE8;
  if (!qword_27FF8AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A95888()
{
  sub_264A9599C(319, &qword_27FF8AEF8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264A9599C(319, &qword_27FF8AF00, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_264A9599C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ClientStatusEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_264A959F0(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF10, &unk_264B4E4D0);
  v2[56] = v3;
  v4 = *(v3 - 8);
  v2[57] = v4;
  v5 = *(v4 + 64) + 15;
  v2[58] = swift_task_alloc();
  v6 = type metadata accessor for ControlMessage();
  v2[59] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A95AEC, v1, 0);
}

uint64_t sub_264A95AEC()
{
  v1 = *(v0 + 480);
  if (*(*(v0 + 440) + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) != 1)
  {
    v18 = *(v0 + 464);
    sub_264A96168();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(v0 + 8);
    v21 = 0;
    goto LABEL_17;
  }

  v2 = *(v0 + 472);
  v3 = *(v0 + 432);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 8))(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 480);
  if (EnumCaseMultiPayload == 3)
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 64);
    v10 = *(v7 + 80);
    *(v0 + 112) = *(v7 + 96);
    *(v0 + 80) = v9;
    *(v0 + 96) = v10;
    *(v0 + 64) = v8;
    v11 = *v7;
    v12 = *(v7 + 32);
    *(v0 + 32) = *(v7 + 16);
    *(v0 + 48) = v12;
    *(v0 + 16) = v11;
    v13 = *(v0 + 72);
    if ((v13 & 0x2000000000000000) != 0)
    {
      v26 = *(v0 + 32);
      *(v0 + 224) = *(v0 + 16);
      *(v0 + 240) = v26;
      v27 = *(v0 + 64);
      v29 = *(v0 + 16);
      v28 = *(v0 + 32);
      *(v0 + 256) = *(v0 + 48);
      v31 = *(v0 + 80);
      v30 = *(v0 + 96);
      *(v0 + 288) = v31;
      *(v0 + 304) = v30;
      *(v0 + 200) = *(v0 + 96);
      *(v0 + 184) = v31;
      *(v0 + 168) = v27;
      *(v0 + 152) = *(v0 + 48);
      *(v0 + 136) = v28;
      v33 = *(v0 + 456);
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v35 = *(v0 + 448);
      v36 = *(v0 + 112);
      *(v0 + 272) = *(v0 + 64);
      *(v0 + 280) = v13 & 0xDFFFFFFFFFFFFFFFLL;
      *(v0 + 320) = v36;
      *(v0 + 216) = *(v0 + 112);
      *(v0 + 120) = v29;
      *(v0 + 176) &= ~0x2000000000000000uLL;
      sub_264A54F24(v0 + 120, v0 + 328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
      sub_264B412A4();
      sub_264A7DB74(v0 + 16);
      (*(v33 + 8))(v32, v35);
      v25 = 1;
      goto LABEL_16;
    }

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FFA71B8);
    v15 = sub_264B40944();
    v16 = sub_264B41494();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2649C6000, v15, v16, "Passed event that was a status event, but not a client status event, ignoring", v17, 2u);
      MEMORY[0x266749940](v17, -1, -1);
    }

    sub_264A7DB74(v0 + 16);
  }

  else
  {
    sub_2649DEEBC(v7);
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v22 = sub_264B40964();
    __swift_project_value_buffer(v22, qword_27FFA71B8);
    v15 = sub_264B40944();
    v23 = sub_264B41494();
    if (os_log_type_enabled(v15, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2649C6000, v15, v23, "Passed event that was not a status event, ignoring", v24, 2u);
      MEMORY[0x266749940](v24, -1, -1);
    }
  }

  v25 = 0;
LABEL_16:
  v37 = *(v0 + 480);
  v38 = *(v0 + 464);

  v20 = *(v0 + 8);
  v21 = v25;
LABEL_17:

  return v20(v21);
}

uint64_t sub_264A95ED0()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) == 1)
  {
    sub_264A96168();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) = 1;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A95FB0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated;
  if (*(v1 + OBJC_IVAR____TtC16ScreenSharingKit33ProxyingClientStatusEventConsumer_isActivated) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89E60, &unk_264B495C0);
    sub_264B412B4();
    *(v1 + v2) = 0;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A96054(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A959F0(a1);
}

unint64_t sub_264A960E8(uint64_t a1)
{
  result = sub_264A96110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A96110()
{
  result = qword_27FF8AF08;
  if (!qword_27FF8AF08)
  {
    type metadata accessor for ProxyingClientStatusEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF08);
  }

  return result;
}

unint64_t sub_264A96168()
{
  result = qword_27FF8AF18;
  if (!qword_27FF8AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF18);
  }

  return result;
}

unint64_t sub_264A961D0()
{
  result = qword_27FF8AF20;
  if (!qword_27FF8AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF20);
  }

  return result;
}

uint64_t MediaTransportControlError.StreamError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t MediaTransportControlError.hashValue.getter()
{
  sub_264B41B84();
  MEMORY[0x266748E90](0);
  return sub_264B41BB4();
}

unint64_t sub_264A96378()
{
  result = qword_27FF8AF28;
  if (!qword_27FF8AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF28);
  }

  return result;
}

unint64_t sub_264A963D0()
{
  result = qword_27FF8AF30;
  if (!qword_27FF8AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF30);
  }

  return result;
}

unint64_t sub_264A96468()
{
  result = qword_27FF8AF38;
  if (!qword_27FF8AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF38);
  }

  return result;
}

unint64_t sub_264A964C0()
{
  result = qword_27FF8AF40;
  if (!qword_27FF8AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF40);
  }

  return result;
}

uint64_t SystemGestureEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_264B40724();
  v6 = v5;
  v7 = sub_264B40734();
  v9 = v8;
  v10 = sub_264B40744();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
  return result;
}

uint64_t sub_264A965B4(uint64_t a1)
{
  v2 = sub_264A97CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A965F0(uint64_t a1)
{
  v2 = sub_264A97CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9662C()
{
  v1 = *v0;
  v2 = 0x74747542656D6F68;
  v3 = 0x6867696C746F7073;
  v4 = 0x6353657461746F72;
  if (v1 != 3)
  {
    v4 = 0x615068636E75616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6374697753707061;
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

uint64_t sub_264A966EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A9838C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A96720(uint64_t a1)
{
  v2 = sub_264A97B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9675C(uint64_t a1)
{
  v2 = sub_264A97B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96798(uint64_t a1)
{
  v2 = sub_264A97D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A967D4(uint64_t a1)
{
  v2 = sub_264A97D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96810()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_264A96844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A96920(uint64_t a1)
{
  v2 = sub_264A97BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9695C(uint64_t a1)
{
  v2 = sub_264A97BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96998(uint64_t a1)
{
  v2 = sub_264A97C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A969D4(uint64_t a1)
{
  v2 = sub_264A97C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A96A10(uint64_t a1)
{
  v2 = sub_264A97C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A96A4C(uint64_t a1)
{
  v2 = sub_264A97C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemGestureEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF48, &qword_264B4E8D0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF50, &qword_264B4E8D8);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF58, &qword_264B4E8E0);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF60, &qword_264B4E8E8);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF68, &qword_264B4E8F0);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AF70, &qword_264B4E8F8);
  v54 = *(v20 - 8);
  v55 = v20;
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  v40 = v1[2];
  v41 = v24;
  v39 = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A97B7C();
  sub_264B41BD4();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      LOBYTE(v57) = 2;
      sub_264A97C78();
      v29 = v45;
      v28 = v55;
      sub_264B419B4();
      v31 = v46;
      v30 = v47;
    }

    else
    {
      if (v25 != 3)
      {
        goto LABEL_8;
      }

      LOBYTE(v57) = 3;
      sub_264A97C24();
      v29 = v48;
      v28 = v55;
      sub_264B419B4();
      v31 = v49;
      v30 = v50;
    }

    (*(v31 + 8))(v29, v30);
    return (*(v54 + 8))(v23, v28);
  }

  if (!v25)
  {
    LOBYTE(v57) = 0;
    sub_264A97D20();
    v37 = v55;
    sub_264B419B4();
    (*(v42 + 8))(v19, v16);
    return (*(v54 + 8))(v23, v37);
  }

  if (v25 == 1)
  {
    LOBYTE(v57) = 1;
    sub_264A97CCC();
    v28 = v55;
    sub_264B419B4();
    (*(v43 + 8))(v15, v44);
    return (*(v54 + 8))(v23, v28);
  }

LABEL_8:
  LOBYTE(v57) = 4;
  sub_264A97BD0();
  v32 = v51;
  v33 = v55;
  sub_264B419B4();
  LOBYTE(v57) = 0;
  v34 = v53;
  v35 = v56;
  sub_264B419E4();
  if (!v35)
  {
    v57 = v40;
    v58 = v39;
    v59 = 1;
    sub_264A2E90C();
    sub_264B41A24();
  }

  (*(v52 + 8))(v32, v34);
  return (*(v54 + 8))(v23, v33);
}

uint64_t SystemGestureEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFA8, &qword_264B4E900);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFB0, &qword_264B4E908);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v67 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFB8, &qword_264B4E910);
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFC0, &qword_264B4E918);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFC8, &qword_264B4E920);
  v58 = *(v19 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8AFD0, &unk_264B4E928);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_264A97B7C();
  v30 = v72;
  sub_264B41BC4();
  if (!v30)
  {
    v31 = v22;
    v57 = v19;
    v72 = v24;
    v33 = v69;
    v32 = v70;
    v34 = v27;
    v35 = sub_264B419A4();
    v36 = (2 * *(v35 + 16)) | 1;
    v74 = v35;
    v75 = v35 + 32;
    v76 = 0;
    v77 = v36;
    v37 = sub_2649E03C8();
    if (v37 != 5 && v76 == v77 >> 1)
    {
      if (v37 <= 1u)
      {
        if (v37)
        {
          LOBYTE(v73) = 1;
          sub_264A97CCC();
          sub_264B418F4();
          (*(v59 + 8))(v18, v60);
          (*(v72 + 8))(v27, v23);
          swift_unknownObjectRelease();
          v40 = 0;
          v41 = 0uLL;
          v42 = 1;
        }

        else
        {
          LOBYTE(v73) = 0;
          sub_264A97D20();
          sub_264B418F4();
          (*(v58 + 8))(v31, v57);
          (*(v72 + 8))(v27, v23);
          swift_unknownObjectRelease();
          v40 = 0;
          v42 = 0;
          v41 = 0uLL;
        }
      }

      else if (v37 == 2)
      {
        LOBYTE(v73) = 2;
        sub_264A97C78();
        sub_264B418F4();
        v50 = v72;
        (*(v62 + 8))(v33, v61);
        (*(v50 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0uLL;
        v42 = 2;
      }

      else
      {
        v38 = v72;
        if (v37 != 3)
        {
          LOBYTE(v73) = 4;
          sub_264A97BD0();
          v51 = v68;
          sub_264B418F4();
          LOBYTE(v73) = 0;
          v52 = v65;
          v53 = sub_264B41944();
          v54 = v23;
          v42 = v55;
          v56 = v51;
          v40 = v53;
          v78 = 1;
          sub_264A2E960();
          sub_264B41984();
          (*(v66 + 8))(v56, v52);
          (*(v38 + 8))(v34, v54);
          swift_unknownObjectRelease();
          v41 = v73;
          v48 = v71;
LABEL_17:
          *v32 = v40;
          *(v32 + 8) = v42;
          *(v32 + 16) = v41;
          return __swift_destroy_boxed_opaque_existential_0(v48);
        }

        LOBYTE(v73) = 3;
        sub_264A97C24();
        v39 = v67;
        sub_264B418F4();
        (*(v64 + 8))(v39, v63);
        (*(v38 + 8))(v34, v23);
        swift_unknownObjectRelease();
        v40 = 0;
        v41 = 0uLL;
        v42 = 3;
      }

      v48 = v71;
      goto LABEL_17;
    }

    v43 = v23;
    v44 = sub_264B417A4();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v46 = &type metadata for SystemGestureEvent;
    sub_264B41904();
    sub_264B41794();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v72 + 8))(v27, v43);
    swift_unknownObjectRelease();
  }

  v48 = v71;
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

void sub_264A97978(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  type metadata accessor for ControlMessage();
  swift_storeEnumTagMultiPayload();

  sub_264A18774(v2, v3, v5, v4);
}

uint64_t _s16ScreenSharingKit18SystemGestureEventO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v7 == 2)
      {
        v10 = 1;
        v3 = 2;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v3 == 3)
    {
      if (v7 == 3)
      {
        v10 = 1;
        v3 = 3;
        goto LABEL_20;
      }

LABEL_19:
      sub_264A18774(v6, v7, v8, v9);
      sub_264A18774(v2, v3, v4, v5);
      v10 = 0;
      goto LABEL_20;
    }

LABEL_10:
    if (v7 >= 4)
    {
      if (v2 == v6 && v3 == v7 || (v11 = *a1, (sub_264B41AA4() & 1) != 0))
      {
        sub_264A18774(v6, v7, v8, v9);
        sub_264A18774(v2, v3, v4, v5);
        v10 = sub_264A2E750(v4, v5, v8, v9);
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (!v3)
  {
    if (!v7)
    {
      v3 = 0;
      v10 = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  if (v7 != 1)
  {
    goto LABEL_19;
  }

  v3 = 1;
  v10 = 1;
LABEL_20:
  sub_264A187D4(v2, v3, v4, v5);
  sub_264A187D4(v6, v7, v8, v9);
  return v10 & 1;
}

unint64_t sub_264A97B7C()
{
  result = qword_27FF8AF78;
  if (!qword_27FF8AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF78);
  }

  return result;
}

unint64_t sub_264A97BD0()
{
  result = qword_27FF8AF80;
  if (!qword_27FF8AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF80);
  }

  return result;
}

unint64_t sub_264A97C24()
{
  result = qword_27FF8AF88;
  if (!qword_27FF8AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF88);
  }

  return result;
}

unint64_t sub_264A97C78()
{
  result = qword_27FF8AF90;
  if (!qword_27FF8AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF90);
  }

  return result;
}

unint64_t sub_264A97CCC()
{
  result = qword_27FF8AF98;
  if (!qword_27FF8AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AF98);
  }

  return result;
}

unint64_t sub_264A97D20()
{
  result = qword_27FF8AFA0;
  if (!qword_27FF8AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFA0);
  }

  return result;
}

uint64_t sub_264A97D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264A97DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_264A97E28(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_264A97EC0()
{
  result = qword_27FF8AFD8;
  if (!qword_27FF8AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFD8);
  }

  return result;
}

unint64_t sub_264A97F18()
{
  result = qword_27FF8AFE0;
  if (!qword_27FF8AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFE0);
  }

  return result;
}

unint64_t sub_264A97F70()
{
  result = qword_27FF8AFE8;
  if (!qword_27FF8AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFE8);
  }

  return result;
}

unint64_t sub_264A97FC8()
{
  result = qword_27FF8AFF0;
  if (!qword_27FF8AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFF0);
  }

  return result;
}

unint64_t sub_264A98020()
{
  result = qword_27FF8AFF8;
  if (!qword_27FF8AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8AFF8);
  }

  return result;
}

unint64_t sub_264A98078()
{
  result = qword_27FF8B000;
  if (!qword_27FF8B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B000);
  }

  return result;
}

unint64_t sub_264A980D0()
{
  result = qword_27FF8B008;
  if (!qword_27FF8B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B008);
  }

  return result;
}

unint64_t sub_264A98128()
{
  result = qword_27FF8B010;
  if (!qword_27FF8B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B010);
  }

  return result;
}

unint64_t sub_264A98180()
{
  result = qword_27FF8B018;
  if (!qword_27FF8B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B018);
  }

  return result;
}

unint64_t sub_264A981D8()
{
  result = qword_27FF8B020;
  if (!qword_27FF8B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B020);
  }

  return result;
}

unint64_t sub_264A98230()
{
  result = qword_27FF8B028;
  if (!qword_27FF8B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B028);
  }

  return result;
}

unint64_t sub_264A98288()
{
  result = qword_27FF8B030;
  if (!qword_27FF8B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B030);
  }

  return result;
}

unint64_t sub_264A982E0()
{
  result = qword_27FF8B038;
  if (!qword_27FF8B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B038);
  }

  return result;
}

unint64_t sub_264A98338()
{
  result = qword_27FF8B040;
  if (!qword_27FF8B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B040);
  }

  return result;
}

uint64_t sub_264A9838C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74747542656D6F68 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6374697753707061 && a2 == 0xEB00000000726568 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615068636E75616CLL && a2 == 0xED000064616F6C79)
  {

    return 4;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_264A9855C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A985D0()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit24MockHIDServicePrimitives__currentHIDServices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B078, &qword_264B4F060);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockHIDServicePrimitives()
{
  result = qword_27FF8B050;
  if (!qword_27FF8B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A986D4()
{
  sub_264A98780();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A98780()
{
  if (!qword_27FF8B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B068, &qword_264B4F038);
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF8B060);
    }
  }
}

uint64_t sub_264A987E4@<X0>(void *a1@<X8>)
{
  result = sub_264B403C4();
  *a1 = 1;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A988DC@<X0>(void *a1@<X8>)
{
  result = sub_264B403C4();
  *a1 = 2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A989D4()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v3;
}

uint64_t sub_264A98A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B070, &qword_264B4F058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B078, &qword_264B4F060);
  sub_264B40A54();
  swift_endAccess();
  sub_264A98BEC();
  v7 = sub_264B40AB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

id sub_264A98BC4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = *(*v2 + 40);
  if (v3)
  {
    v4 = *(*v2 + 32);
  }

  else
  {
    a1 = 0;
    v4 = 0;
  }

  *a2 = a1;
  a2[1] = v4;
  a2[2] = v3;
  return v3;
}

unint64_t sub_264A98BEC()
{
  result = qword_27FF8B080;
  if (!qword_27FF8B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8B070, &qword_264B4F058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B080);
  }

  return result;
}

uint64_t sub_264A98C50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A98CD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

unint64_t sub_264A98D68()
{
  result = qword_27FF8B088;
  if (!qword_27FF8B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B088);
  }

  return result;
}

uint64_t sub_264A98E34()
{
  v1 = 6513005;
  if (*v0 != 1)
  {
    v1 = 0x656E6F685069;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_264A98E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A9AD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A98EAC(uint64_t a1)
{
  v2 = sub_264A993F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98EE8(uint64_t a1)
{
  v2 = sub_264A993F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A98F24(uint64_t a1)
{
  v2 = sub_264A9944C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98F60(uint64_t a1)
{
  v2 = sub_264A9944C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A98F9C(uint64_t a1)
{
  v2 = sub_264A994A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A98FD8(uint64_t a1)
{
  v2 = sub_264A994A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A99014(uint64_t a1)
{
  v2 = sub_264A994F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A99050(uint64_t a1)
{
  v2 = sub_264A994F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Platform.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B090, &qword_264B4F190);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B098, &qword_264B4F198);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0A0, &qword_264B4F1A0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0A8, &qword_264B4F1A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A993F8();
  sub_264B41BD4();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_264A994A0();
      v12 = v26;
      sub_264B419B4();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_264A9944C();
      v12 = v29;
      sub_264B419B4();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_264A994F4();
    sub_264B419B4();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_264A993F8()
{
  result = qword_27FF8B0B0;
  if (!qword_27FF8B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0B0);
  }

  return result;
}

unint64_t sub_264A9944C()
{
  result = qword_27FF8B0B8;
  if (!qword_27FF8B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0B8);
  }

  return result;
}

unint64_t sub_264A994A0()
{
  result = qword_27FF8B0C0;
  if (!qword_27FF8B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0C0);
  }

  return result;
}

unint64_t sub_264A994F4()
{
  result = qword_27FF8B0C8;
  if (!qword_27FF8B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0C8);
  }

  return result;
}

uint64_t Platform.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t Platform.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0D0, &qword_264B4F1B0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0D8, &qword_264B4F1B8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0E0, &qword_264B4F1C0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0E8, &unk_264B4F1C8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_264A993F8();
  v20 = v43;
  sub_264B41BC4();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_264B419A4();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_2649E0EDC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_264B417A4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v30 = &type metadata for Platform;
      sub_264B41904();
      sub_264B41794();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_264A994A0();
          sub_264B418F4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_264A9944C();
          v33 = v22;
          sub_264B418F4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_264A994F4();
        sub_264B418F4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_264A99C44()
{
  v1 = *v0;
  v2 = 0x6C6F636F746F7270;
  v3 = 0x646C697542736FLL;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x696C696261706163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726F6674616C70;
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

uint64_t sub_264A99CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A9AE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A99D20(uint64_t a1)
{
  v2 = sub_264A9A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A99D5C(uint64_t a1)
{
  v2 = sub_264A9A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ParticipantVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B0F0, &qword_264B4F1D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v21 = *(v1 + 8);
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v15 = v1[6];
  v16 = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9A45C();
  sub_264B41BD4();
  v29 = 0;
  sub_264B41A14();
  if (!v2)
  {
    v28 = v21;
    v27 = 1;
    sub_264A9A4B0();
    sub_264B41A24();
    v26 = 2;
    sub_264B419E4();
    v25 = 3;
    sub_264B419E4();
    v22 = v15;
    v23 = v16;
    v24 = 4;
    sub_264A9A504();
    sub_264B419C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ParticipantVersion.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B110, &qword_264B4F1E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9A45C();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31) = 0;
  v11 = sub_264B41974();
  LOBYTE(v29[0]) = 1;
  sub_264A9A558();
  sub_264B41984();
  v12 = v31;
  LOBYTE(v31) = 2;
  *&v28 = sub_264B41944();
  *(&v28 + 1) = v13;
  v27 = v12;
  LOBYTE(v31) = 3;
  v14 = sub_264B41944();
  v16 = v15;
  v26 = v14;
  v41 = 4;
  sub_264A9A5AC();
  sub_264B41924();
  (*(v6 + 8))(v9, v5);
  v25 = v38;
  v17 = v39;
  v40 = v39;
  *&v29[0] = v11;
  v18 = v16;
  v24 = v16;
  LOBYTE(v16) = v27;
  BYTE8(v29[0]) = v27;
  v19 = v28;
  v29[1] = v28;
  v20 = v26;
  *v30 = v26;
  *&v30[8] = v18;
  *&v30[16] = v38;
  v30[24] = v39;
  v21 = v28;
  *a2 = v29[0];
  a2[1] = v21;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  sub_264A186B4(v29, &v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31 = v11;
  v32 = v16;
  v33 = v19;
  v34 = v20;
  v35 = v24;
  v36 = v25;
  v37 = v17;
  return sub_264A18710(&v31);
}

uint64_t _s16ScreenSharingKit18ParticipantVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    v11 = *(a2 + 56);
    if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
    {
      v12 = *(a1 + 24);
      if ((sub_264B41AA4() & 1) == 0)
      {
        return 0;
      }
    }

    if ((v4 != v8 || v5 != v9) && (sub_264B41AA4() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 == v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_264A9A45C()
{
  result = qword_27FF8B0F8;
  if (!qword_27FF8B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B0F8);
  }

  return result;
}

unint64_t sub_264A9A4B0()
{
  result = qword_27FF8B100;
  if (!qword_27FF8B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B100);
  }

  return result;
}

unint64_t sub_264A9A504()
{
  result = qword_27FF8B108;
  if (!qword_27FF8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B108);
  }

  return result;
}

unint64_t sub_264A9A558()
{
  result = qword_27FF8B118;
  if (!qword_27FF8B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B118);
  }

  return result;
}

unint64_t sub_264A9A5AC()
{
  result = qword_27FF8B120;
  if (!qword_27FF8B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B120);
  }

  return result;
}

unint64_t sub_264A9A604()
{
  result = qword_27FF8B128;
  if (!qword_27FF8B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B128);
  }

  return result;
}

unint64_t sub_264A9A65C()
{
  result = qword_27FF8B130;
  if (!qword_27FF8B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B130);
  }

  return result;
}

unint64_t sub_264A9A6B4()
{
  result = qword_27FF8B138;
  if (!qword_27FF8B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B138);
  }

  return result;
}

unint64_t sub_264A9A70C()
{
  result = qword_27FF8B140;
  if (!qword_27FF8B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B140);
  }

  return result;
}

unint64_t sub_264A9A764()
{
  result = qword_27FF8B148;
  if (!qword_27FF8B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B148);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_264A9A7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_264A9A83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264A9A8F0()
{
  result = qword_27FF8B150;
  if (!qword_27FF8B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B150);
  }

  return result;
}

unint64_t sub_264A9A948()
{
  result = qword_27FF8B158;
  if (!qword_27FF8B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B158);
  }

  return result;
}

unint64_t sub_264A9A9A0()
{
  result = qword_27FF8B160;
  if (!qword_27FF8B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B160);
  }

  return result;
}

unint64_t sub_264A9A9F8()
{
  result = qword_27FF8B168;
  if (!qword_27FF8B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B168);
  }

  return result;
}

unint64_t sub_264A9AA50()
{
  result = qword_27FF8B170;
  if (!qword_27FF8B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B170);
  }

  return result;
}

unint64_t sub_264A9AAA8()
{
  result = qword_27FF8B178;
  if (!qword_27FF8B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B178);
  }

  return result;
}

unint64_t sub_264A9AB00()
{
  result = qword_27FF8B180;
  if (!qword_27FF8B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B180);
  }

  return result;
}

unint64_t sub_264A9AB58()
{
  result = qword_27FF8B188;
  if (!qword_27FF8B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B188);
  }

  return result;
}

unint64_t sub_264A9ABB0()
{
  result = qword_27FF8B190;
  if (!qword_27FF8B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B190);
  }

  return result;
}

unint64_t sub_264A9AC08()
{
  result = qword_27FF8B198;
  if (!qword_27FF8B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B198);
  }

  return result;
}

unint64_t sub_264A9AC60()
{
  result = qword_27FF8B1A0;
  if (!qword_27FF8B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1A0);
  }

  return result;
}

unint64_t sub_264A9ACB8()
{
  result = qword_27FF8B1A8;
  if (!qword_27FF8B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1A8);
  }

  return result;
}

uint64_t sub_264A9AD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F685069 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A9AE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C697542736FLL && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000264B5DB70 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 4;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 RTIMessage.init(sessionID:sessionState:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  v7 = sub_264B40104();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = (a3 + *(type metadata accessor for RTIMessage() + 20));
  result = v10;
  *v8 = v10;
  v8[1].n128_u64[0] = v5;
  v8[1].n128_u8[8] = v6;
  return result;
}

uint64_t type metadata accessor for RTIMessage()
{
  result = qword_27FF8B2A8;
  if (!qword_27FF8B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A9B0D4()
{
  v1 = 0x446E6F6973736573;
  v2 = *v0;
  if (v2 == 3)
  {
    v3 = 0x446E6F6973736573;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x446E6F6973736573;
  }

  *v0;
  v5 = 0xD000000000000018;
  if (v2 == 1)
  {
    v5 = 0x6974634174786574;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_264A9B1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A9E96C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A9B1DC(uint64_t a1)
{
  v2 = sub_264A9D6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B218(uint64_t a1)
{
  v2 = sub_264A9D6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B254(uint64_t a1)
{
  v2 = sub_264A9D988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B290(uint64_t a1)
{
  v2 = sub_264A9D988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B2CC(uint64_t a1)
{
  v2 = sub_264A9D73C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B308(uint64_t a1)
{
  v2 = sub_264A9D73C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B344(uint64_t a1)
{
  v2 = sub_264A9D790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B380(uint64_t a1)
{
  v2 = sub_264A9D790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B3D4(uint64_t a1)
{
  v2 = sub_264A9D838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B410(uint64_t a1)
{
  v2 = sub_264A9D838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264A9B4D0(uint64_t a1)
{
  v2 = sub_264A9D7E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B50C(uint64_t a1)
{
  v2 = sub_264A9D7E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B548(uint64_t a1)
{
  v2 = sub_264A9D88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B584(uint64_t a1)
{
  v2 = sub_264A9D88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A9B5C0(uint64_t a1)
{
  v2 = sub_264A9D934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9B5FC(uint64_t a1)
{
  v2 = sub_264A9D934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTISessionState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1B0, &qword_264B4F9F0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v48 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1B8, &qword_264B4F9F8);
  v49 = *(v50 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1C0, &qword_264B4FA00);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1C8, &qword_264B4FA08);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1D0, &qword_264B4FA10);
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1D8, &qword_264B4FA18);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1E0, &qword_264B4FA20);
  v54 = *(v21 - 8);
  v22 = *(v54 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B1E8, &qword_264B4FA28);
  v26 = *(v25 - 8);
  v67 = v25;
  v68 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = *(v1 + 8);
  *&v66 = *v1;
  *(&v66 + 1) = v28;
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v48 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_264A9D6E8();
  sub_264B41BD4();
  if (v30)
  {
    v36 = 4;
  }

  else
  {
    v36 = 0;
  }

  v37 = (v29 >> 60) & 3 | v36;
  if (v37 <= 2)
  {
    if (!v37)
    {
      LOBYTE(v69) = 0;
      sub_264A9D988();
      v42 = v67;
      sub_264B419B4();
      v69 = v66;
      v70 = v29;
      sub_264A9D8E0();
      sub_264B41A24();
      (*(v54 + 8))(v24, v21);
      return (*(v68 + 8))(v35, v42);
    }

    if (v37 == 1)
    {
      LOBYTE(v69) = 1;
      sub_264A9D934();
      v38 = v67;
      sub_264B419B4();
      v69 = v66;
      v70 = v29 & 0xCFFFFFFFFFFFFFFFLL;
      sub_264A9D8E0();
      v39 = v56;
      sub_264B41A24();
      (*(v55 + 8))(v20, v39);
      return (*(v68 + 8))(v35, v38);
    }

    LOBYTE(v69) = 2;
    sub_264A9D88C();
    v41 = v57;
    v42 = v67;
    sub_264B419B4();
    v69 = v66;
    v70 = v29 & 0xCFFFFFFFFFFFFFFFLL;
    sub_264A9D8E0();
    v43 = v60;
    sub_264B41A24();
    v44 = v59;
LABEL_14:
    (*(v44 + 8))(v41, v43);
    return (*(v68 + 8))(v35, v42);
  }

  if (v37 == 3)
  {
    LOBYTE(v69) = 3;
    sub_264A9D838();
    v41 = v58;
    v42 = v67;
    sub_264B419B4();
    v43 = v62;
    sub_264B419E4();
    v44 = v61;
    goto LABEL_14;
  }

  if (v37 == 4)
  {
    LOBYTE(v69) = 4;
    sub_264A9D7E4();
    v41 = v63;
    v42 = v67;
    sub_264B419B4();
    v43 = v65;
    sub_264B419E4();
    v44 = v64;
    goto LABEL_14;
  }

  if (v66 == 0 && v29 == 0x1000000000000000)
  {
    LOBYTE(v69) = 5;
    sub_264A9D790();
    v45 = v48;
    v46 = v67;
    sub_264B419B4();
    (*(v49 + 8))(v45, v50);
  }

  else
  {
    LOBYTE(v69) = 6;
    sub_264A9D73C();
    v47 = v51;
    v46 = v67;
    sub_264B419B4();
    (*(v52 + 8))(v47, v53);
  }

  return (*(v68 + 8))(v35, v46);
}

uint64_t RTISessionState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B238, &qword_264B4FA30);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v65 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B240, &qword_264B4FA38);
  v77 = *(v75 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  v85 = &v65 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B248, &qword_264B4FA40);
  v76 = *(v74 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v84 = &v65 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B250, &qword_264B4FA48);
  v73 = *(v72 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v83 = &v65 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B258, &qword_264B4FA50);
  v70 = *(v71 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v81 = &v65 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B260, &qword_264B4FA58);
  v68 = *(v69 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B268, &qword_264B4FA60);
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B270, &unk_264B4FA68);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_264A9D6E8();
  v28 = v94;
  sub_264B41BC4();
  if (!v28)
  {
    v29 = v20;
    v65 = v17;
    v66 = v16;
    v30 = v83;
    v31 = v84;
    v32 = v85;
    v94 = v22;
    v33 = v21;
    v34 = sub_264B419A4();
    v35 = (2 * *(v34 + 16)) | 1;
    v90 = v34;
    v91 = v34 + 32;
    v92 = 0;
    v93 = v35;
    v36 = sub_2649E0EE0();
    if (v36 != 7 && v92 == v93 >> 1)
    {
      if (v36 <= 2u)
      {
        if (v36)
        {
          if (v36 == 1)
          {
            LOBYTE(v87) = 1;
            sub_264A9D934();
            v47 = v66;
            sub_264B418F4();
            sub_264A9D9DC();
            v57 = v69;
            sub_264B41984();
            (*(v68 + 8))(v47, v57);
            (*(v94 + 8))(v25, v33);
            swift_unknownObjectRelease();
            v62 = 0;
            v59 = v87;
            v61 = v88;
            v63 = v89 | 0x1000000000000000;
          }

          else
          {
            LOBYTE(v87) = 2;
            sub_264A9D88C();
            v52 = v81;
            sub_264B418F4();
            sub_264A9D9DC();
            v53 = v71;
            sub_264B41984();
            v54 = v94;
            (*(v70 + 8))(v52, v53);
            (*(v54 + 8))(v25, v33);
            swift_unknownObjectRelease();
            v62 = 0;
            v59 = v87;
            v61 = v88;
            v63 = v89 | 0x2000000000000000;
          }
        }

        else
        {
          LOBYTE(v87) = 0;
          sub_264A9D988();
          sub_264B418F4();
          sub_264A9D9DC();
          v51 = v65;
          sub_264B41984();
          (*(v67 + 8))(v29, v51);
          (*(v94 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v62 = 0;
          v59 = v87;
          v61 = v88;
          v63 = v89;
        }
      }

      else
      {
        v37 = v25;
        if (v36 > 4u)
        {
          v48 = v82;
          v49 = v94;
          v50 = v33;
          if (v36 == 5)
          {
            LOBYTE(v87) = 5;
            sub_264A9D790();
            sub_264B418F4();
            (*(v77 + 8))(v32, v75);
            (*(v49 + 8))(v37, v33);
            swift_unknownObjectRelease();
            v59 = 0;
            v61 = 0;
            v62 = 1;
            v63 = 0x1000000000000000;
          }

          else
          {
            LOBYTE(v87) = 6;
            sub_264A9D73C();
            v56 = v80;
            sub_264B418F4();
            (*(v78 + 8))(v56, v79);
            (*(v49 + 8))(v37, v50);
            swift_unknownObjectRelease();
            v61 = 0;
            v59 = 1;
            v63 = 0x1000000000000000;
            v62 = 1;
          }

          v45 = v86;
          goto LABEL_22;
        }

        v38 = v94;
        v39 = v33;
        if (v36 == 3)
        {
          LOBYTE(v87) = 3;
          sub_264A9D838();
          sub_264B418F4();
          v40 = v72;
          v59 = sub_264B41944();
          v61 = v60;
          (*(v73 + 8))(v30, v40);
          (*(v38 + 8))(v37, v33);
          swift_unknownObjectRelease();
          v62 = 0;
          v63 = 0x3000000000000000;
        }

        else
        {
          LOBYTE(v87) = 4;
          sub_264A9D7E4();
          v55 = v31;
          sub_264B418F4();
          v58 = v74;
          v59 = sub_264B41944();
          v61 = v64;
          (*(v76 + 8))(v55, v58);
          (*(v38 + 8))(v37, v39);
          swift_unknownObjectRelease();
          v63 = 0;
          v62 = 1;
        }
      }

      v45 = v86;
      v48 = v82;
LABEL_22:
      *v48 = v59;
      *(v48 + 8) = v61;
      *(v48 + 16) = v63;
      *(v48 + 24) = v62;
      return __swift_destroy_boxed_opaque_existential_0(v45);
    }

    v41 = sub_264B417A4();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
    *v43 = &type metadata for RTISessionState;
    sub_264B41904();
    sub_264B41794();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v94 + 8))(v25, v33);
    swift_unknownObjectRelease();
  }

  v45 = v86;
  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t RTIMessage.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RTIMessage.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RTIMessage() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;

  return sub_264A6B440(v4, v5, v6, v7);
}

uint64_t sub_264A9CBD8()
{
  if (*v0)
  {
    result = 0x536E6F6973736573;
  }

  else
  {
    result = 0x496E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_264A9CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x536E6F6973736573 && a2 == 0xEC00000065746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A9CD08(uint64_t a1)
{
  v2 = sub_264A9DB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A9CD44(uint64_t a1)
{
  v2 = sub_264A9DB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RTIMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B280, &qword_264B4FA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9DB0C();
  sub_264B41BD4();
  LOBYTE(v17) = 0;
  sub_264B40104();
  sub_264A10760(&qword_27FF89430);
  sub_264B41A24();
  if (!v2)
  {
    v11 = v3 + *(type metadata accessor for RTIMessage() + 20);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v17 = *v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v16[15] = 1;
    sub_264A6B440(v17, v12, v13, v14);
    sub_264A9DB60();
    sub_264B41A24();
    sub_264A693A0(v17, v18, v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RTIMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_264B40104();
  v31 = *(v34 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B298, &qword_264B4FA80);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for RTIMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A9DB0C();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = v12;
  v17 = v15;
  v18 = v31;
  LOBYTE(v35) = 0;
  sub_264A10760(&qword_27FF89408);
  v19 = v34;
  v20 = v32;
  sub_264B41984();
  v21 = *(v18 + 32);
  v28 = v17;
  v21(v17, v6, v19);
  v38 = 1;
  sub_264A9DBB4();
  sub_264B41984();
  (*(v33 + 8))(v11, v20);
  v22 = v36;
  v23 = v37;
  v24 = v28;
  v25 = v28 + *(v29 + 20);
  *v25 = v35;
  *(v25 + 16) = v22;
  *(v25 + 24) = v23;
  sub_264A9DC08(v24, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264A9DC6C(v24);
}

uint64_t sub_264A9D2F8@<X0>(uint64_t a1@<X8>)
{
  sub_264A9DC08(v1, a1);
  type metadata accessor for ControlMessage();

  return swift_storeEnumTagMultiPayload();
}

BOOL _s16ScreenSharingKit15RTISessionStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v43[0] = v4;
  v43[1] = v5;
  v43[2] = v6;
  v44 = v7;
  v45 = v9;
  v46 = v8;
  v47 = v10;
  v48 = v11;
  if (v7)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v6 >> 60) & 3 | v12;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      if (v11)
      {
        v25 = 4;
      }

      else
      {
        v25 = 0;
      }

      if (((v10 >> 60) & 3 | v25) != 3)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v13 != 4)
      {
        if (v5 | v4 || v6 != 0x1000000000000000)
        {
          if (v11)
          {
            v34 = 4;
          }

          else
          {
            v34 = 0;
          }

          if (((v10 >> 60) & 3 | v34) != 5 || v9 != 1 || v8 != 0 || v10 != 0x1000000000000000)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v11)
          {
            v31 = 4;
          }

          else
          {
            v31 = 0;
          }

          if (((v10 >> 60) & 3 | v31) != 5 || (v8 | v9) != 0 || v10 != 0x1000000000000000)
          {
            goto LABEL_68;
          }
        }

LABEL_32:
        sub_264A9EBC8(v43);
        return 1;
      }

      if (v11)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      if (((v10 >> 60) & 3 | v15) != 4)
      {
        goto LABEL_68;
      }
    }

    if (v4 != v9 || v5 != v8)
    {
      v38 = v4;
      v39 = v5;
      v40 = v6;
      v41 = v7;
      v42 = sub_264B41AA4();
      sub_264A6B440(v38, v39, v40, v41);
      sub_264A6B440(v9, v8, v10, v11);
      sub_264A9EBC8(v43);
      return v42 & 1;
    }

    v26 = v4;
    v27 = v5;
    sub_264A6B440(v4, v5, v6, v7);
    sub_264A6B440(v26, v27, v10, v11);
    goto LABEL_32;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (v11)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      if (((v10 >> 60) & 3 | v14) != 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v11)
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      if (((v10 >> 60) & 3 | v29) != 2)
      {
        goto LABEL_68;
      }
    }

    if (v4 == v9)
    {
      v17 = v4;
      v18 = v5;
      v19 = v6;
      v20 = v7;
      sub_264A6B440(v4, v8, v10, v11);
      sub_264A6B440(v17, v18, v19, v20);
      sub_264A6B440(v17, v18, v19, v20);
      sub_264A6B440(v17, v8, v10, v11);
      v22 = v19 & 0xCFFFFFFFFFFFFFFFLL;
      v24 = v10 & 0xCFFFFFFFFFFFFFFFLL;
      v21 = v18;
      v23 = v8;
LABEL_39:
      v30 = sub_264A2E750(v21, v22, v23, v24);
      sub_264A9EBC8(v43);
      sub_264A693A0(v17, v8, v10, v11);
      sub_264A693A0(v17, v18, v19, v20);
      return (v30 & 1) != 0;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    if (!((v10 >> 60) & 3 | v16) && v4 == v9)
    {
      v17 = v4;
      v18 = v5;
      v19 = v6;
      v20 = v7;
      sub_264A6B440(v4, v8, v10, v11);
      sub_264A6B440(v17, v18, v19, v20);
      sub_264A6B440(v17, v18, v19, v20);
      sub_264A6B440(v17, v8, v10, v11);
      v21 = v18;
      v22 = v19;
      v23 = v8;
      v24 = v10;
      goto LABEL_39;
    }
  }

LABEL_68:
  sub_264A6B440(v4, v5, v6, v7);
  sub_264A6B440(v9, v8, v10, v11);
  sub_264A9EBC8(v43);
  return 0;
}

unint64_t sub_264A9D6E8()
{
  result = qword_27FF8B1F0;
  if (!qword_27FF8B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1F0);
  }

  return result;
}

unint64_t sub_264A9D73C()
{
  result = qword_27FF8B1F8;
  if (!qword_27FF8B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B1F8);
  }

  return result;
}

unint64_t sub_264A9D790()
{
  result = qword_27FF8B200;
  if (!qword_27FF8B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B200);
  }

  return result;
}

unint64_t sub_264A9D7E4()
{
  result = qword_27FF8B208;
  if (!qword_27FF8B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B208);
  }

  return result;
}

unint64_t sub_264A9D838()
{
  result = qword_27FF8B210;
  if (!qword_27FF8B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B210);
  }

  return result;
}

unint64_t sub_264A9D88C()
{
  result = qword_27FF8B218;
  if (!qword_27FF8B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B218);
  }

  return result;
}

unint64_t sub_264A9D8E0()
{
  result = qword_27FF8B220;
  if (!qword_27FF8B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B220);
  }

  return result;
}

unint64_t sub_264A9D934()
{
  result = qword_27FF8B228;
  if (!qword_27FF8B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B228);
  }

  return result;
}

unint64_t sub_264A9D988()
{
  result = qword_27FF8B230;
  if (!qword_27FF8B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B230);
  }

  return result;
}

unint64_t sub_264A9D9DC()
{
  result = qword_27FF8B278;
  if (!qword_27FF8B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B278);
  }

  return result;
}

BOOL _s16ScreenSharingKit10RTIMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_264B400C4())
  {
    v4 = type metadata accessor for RTIMessage();
    v5 = a1 + *(v4 + 20);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v19 = *v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v9 = a2 + *(v4 + 20);
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v15 = *v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    sub_264A6B440(v19, v6, v7, v8);
    sub_264A6B440(v15, v10, v11, v12);
    v13 = _s16ScreenSharingKit15RTISessionStateO2eeoiySbAC_ACtFZ_0(&v19, &v15);
    sub_264A693A0(v15, v16, v17, v18);
    sub_264A693A0(v19, v20, v21, v22);
  }

  else
  {
    return 0;
  }

  return v13;
}

unint64_t sub_264A9DB0C()
{
  result = qword_27FF8B288;
  if (!qword_27FF8B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B288);
  }

  return result;
}

unint64_t sub_264A9DB60()
{
  result = qword_27FF8B290;
  if (!qword_27FF8B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B290);
  }

  return result;
}

unint64_t sub_264A9DBB4()
{
  result = qword_27FF8B2A0;
  if (!qword_27FF8B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2A0);
  }

  return result;
}

uint64_t sub_264A9DC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RTIMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A9DC6C(uint64_t a1)
{
  v2 = type metadata accessor for RTIMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit15RTISessionStateO(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 60) & 3 | (4 * (*(a1 + 24) & 1));
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_264A9DD00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 25))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A9DD54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_264A9DDBC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 24) = a2 == 4;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = xmmword_264B4F9E0;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t sub_264A9DE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = (*(a1 + *(a3 + 20) + 16) >> 60) & 3 | (4 * *(a1 + *(a3 + 20) + 24));
    v11 = v10 ^ 0x3FE;
    v12 = 1024 - v10;
    if (v11 >= 0x3FA)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_264A9DF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = (-a2 & 3) << 60;
    *(v11 + 24) = -a2 >> 2;
  }

  return result;
}

uint64_t sub_264A9DFD0()
{
  result = sub_264B40104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_264A9E0D8()
{
  result = qword_27FF8B2B8;
  if (!qword_27FF8B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2B8);
  }

  return result;
}

unint64_t sub_264A9E130()
{
  result = qword_27FF8B2C0;
  if (!qword_27FF8B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2C0);
  }

  return result;
}

unint64_t sub_264A9E188()
{
  result = qword_27FF8B2C8;
  if (!qword_27FF8B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2C8);
  }

  return result;
}

unint64_t sub_264A9E1E0()
{
  result = qword_27FF8B2D0;
  if (!qword_27FF8B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2D0);
  }

  return result;
}

unint64_t sub_264A9E238()
{
  result = qword_27FF8B2D8;
  if (!qword_27FF8B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2D8);
  }

  return result;
}

unint64_t sub_264A9E290()
{
  result = qword_27FF8B2E0;
  if (!qword_27FF8B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2E0);
  }

  return result;
}

unint64_t sub_264A9E2E8()
{
  result = qword_27FF8B2E8;
  if (!qword_27FF8B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2E8);
  }

  return result;
}

unint64_t sub_264A9E340()
{
  result = qword_27FF8B2F0;
  if (!qword_27FF8B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2F0);
  }

  return result;
}

unint64_t sub_264A9E398()
{
  result = qword_27FF8B2F8;
  if (!qword_27FF8B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B2F8);
  }

  return result;
}

unint64_t sub_264A9E3F0()
{
  result = qword_27FF8B300;
  if (!qword_27FF8B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B300);
  }

  return result;
}

unint64_t sub_264A9E448()
{
  result = qword_27FF8B308;
  if (!qword_27FF8B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B308);
  }

  return result;
}

unint64_t sub_264A9E4A0()
{
  result = qword_27FF8B310;
  if (!qword_27FF8B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B310);
  }

  return result;
}

unint64_t sub_264A9E4F8()
{
  result = qword_27FF8B318;
  if (!qword_27FF8B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B318);
  }

  return result;
}

unint64_t sub_264A9E550()
{
  result = qword_27FF8B320;
  if (!qword_27FF8B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B320);
  }

  return result;
}

unint64_t sub_264A9E5A8()
{
  result = qword_27FF8B328;
  if (!qword_27FF8B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B328);
  }

  return result;
}

unint64_t sub_264A9E600()
{
  result = qword_27FF8B330;
  if (!qword_27FF8B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B330);
  }

  return result;
}

unint64_t sub_264A9E658()
{
  result = qword_27FF8B338;
  if (!qword_27FF8B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B338);
  }

  return result;
}

unint64_t sub_264A9E6B0()
{
  result = qword_27FF8B340;
  if (!qword_27FF8B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B340);
  }

  return result;
}

unint64_t sub_264A9E708()
{
  result = qword_27FF8B348;
  if (!qword_27FF8B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B348);
  }

  return result;
}

unint64_t sub_264A9E760()
{
  result = qword_27FF8B350;
  if (!qword_27FF8B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B350);
  }

  return result;
}

unint64_t sub_264A9E7B8()
{
  result = qword_27FF8B358;
  if (!qword_27FF8B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B358);
  }

  return result;
}

unint64_t sub_264A9E810()
{
  result = qword_27FF8B360;
  if (!qword_27FF8B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B360);
  }

  return result;
}

unint64_t sub_264A9E868()
{
  result = qword_27FF8B368;
  if (!qword_27FF8B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B368);
  }

  return result;
}

unint64_t sub_264A9E8C0()
{
  result = qword_27FF8B370;
  if (!qword_27FF8B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B370);
  }

  return result;
}

unint64_t sub_264A9E918()
{
  result = qword_27FF8B378;
  if (!qword_27FF8B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B378);
  }

  return result;
}

uint64_t sub_264A9E96C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x446E6F6973736573 && a2 == 0xEF6E696765426469;
  if (v3 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634174786574 && a2 == 0xEA00000000006E6FLL || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000264B5ECC0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEF65737561506469 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000264B5ECE0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xED0000646E456469 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xED00006569446469)
  {

    return 6;
  }

  else
  {
    v6 = sub_264B41AA4();

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

uint64_t sub_264A9EBC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B380, qword_264B50740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_264A9ECCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXPBackedAccessibilityServerPrimitives();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_264A9ED84()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CE7180]) init];
  [v1 setTransportDelegate_];
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AE58);
  v3 = v0;
  v4 = sub_264B40944();
  v5 = sub_264B41484();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    swift_getObjectType();
    v8 = sub_264B41C44();
    v10 = sub_2649CC004(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2649CC004(0xD000000000000014, 0x8000000264B5EDF0, &v12);
    _os_log_impl(&dword_2649C6000, v4, v5, "%s - %s: starting accessibility on AXPRemoteCacheManager", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  [v1 start];
  v11 = *&v3[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager];
  *&v3[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager] = v1;
}

void sub_264A9EF7C()
{
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FF8AE58);
  v2 = v0;
  v3 = sub_264B40944();
  v4 = sub_264B41484();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    swift_getObjectType();
    v7 = sub_264B41C44();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2649CC004(0xD000000000000013, 0x8000000264B5EDD0, &v12);
    _os_log_impl(&dword_2649C6000, v3, v4, "%s - %s: stopping accessibility on AXPRemoteCacheManager", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager;
  v11 = *&v2[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager];
  if (v11)
  {
    [v11 setTransportDelegate_];
    v11 = *&v2[v10];
  }

  *&v2[v10] = 0;
}

uint64_t sub_264A9F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4 + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler;
  v6 = *v5;
  if (*v5)
  {
    v11 = *(v5 + 8);

    v6(a1, a2, a3, a4);
    return sub_2649CB67C(v6);
  }

  else
  {
    sub_264A9F734();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_264A9F258()
{
  v2 = *(*v0 + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_accessibilityDataSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  sub_264A9F6D0();
  return sub_264B40AB4();
}

uint64_t sub_264A9F444(void *a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_264B40024();
  v10 = v9;

  v3[6] = v8;
  v3[7] = v10;

  return MEMORY[0x2822009F8](sub_264A9F4E8, 0, 0);
}

uint64_t sub_264A9F4E8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *&v4[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_accessibilityDataSubject];
  v0[2] = v2;
  v0[3] = v1;

  sub_264B409C4();

  sub_2649DEF6C(v2, v1);
  v3[2](v3, 0);
  _Block_release(v3);
  v6 = v0[1];

  return v6();
}

void sub_264A9F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_264B40014();
  v7 = sub_264B41014();
  (*(a5 + 16))(a5, v6, v7);
}

unint64_t sub_264A9F6D0()
{
  result = qword_27FF8A5F0;
  if (!qword_27FF8A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF8B470, qword_264B4BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5F0);
  }

  return result;
}

unint64_t sub_264A9F734()
{
  result = qword_27FF8B480;
  if (!qword_27FF8B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B480);
  }

  return result;
}

uint64_t sub_264A9F788(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2649E0EE4;

  return v7();
}

uint64_t sub_264A9F870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2649CD850;

  return v8();
}

uint64_t sub_264A9F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_264A16208(a3, v25 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_264A6E820(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_264B41264();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_264B411C4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_264B41074() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_264A6E820(a3);

    return v23;
  }

LABEL_8:
  sub_264A6E820(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_264A9FC14(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649DCDF0;

  return v7(a1);
}

uint64_t sub_264A9FF7C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A9FFBC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264AA0004()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2649CD850;

  return sub_264A9F444(v2, v3, v4);
}

uint64_t sub_264AA00BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264AA00F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_264A9FC14(a1, v5);
}

uint64_t sub_264AA01AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649CD850;

  return sub_264A9FC14(a1, v5);
}

uint64_t sub_264AA0270(uint64_t a1, uint64_t a2)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_264AABCD0(&qword_27FF89470, MEMORY[0x277CC95F0]), v9 = sub_264B40F84(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_264AABCD0(&unk_27FF89390, MEMORY[0x277CC95F0]);
      v17 = sub_264B40F94();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_264AA0488(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    sub_264B41B84();
    MEMORY[0x266748E90](a1 & 1);
    v6 = sub_264B41BB4();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = *(*(a2 + 48) + v8) ^ a1;
        if ((v10 & 1) == 0)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
      LOBYTE(v2) = v10 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_264AA0550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_264B41B84();
  sub_264B41084();
  v7 = sub_264B41BB4();
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
    if (v12 || (sub_264B41AA4() & 1) != 0)
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

uint64_t sub_264AA0668(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  ObjectType = swift_getObjectType();
  v18[3] = a1;
  (*(*(a2 + 8) + 8))(v18, ObjectType);
  v8 = v18[0];
  v9 = *a3;
  swift_beginAccess();
  if (*(*(v3 + v9) + 16) && (v10 = *(v3 + v9), , sub_264A20B44(v8), v12 = v11, , (v12 & 1) != 0))
  {
    sub_2649FEC60();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = *(v3 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + v9);
    *(v3 + v9) = 0x8000000000000000;
    sub_264A22B6C(a1, a2, v8, isUniquelyReferenced_nonNull_native);
    *(v3 + v9) = v17;
    return swift_endAccess();
  }
}

uint64_t MediaSessionConfig.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7373656C65726977;
  }

  else
  {
    result = 0x6465726977;
  }

  *v0;
  return result;
}

ScreenSharingKit::MediaSessionConfig_optional __swiftcall MediaSessionConfig.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

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

uint64_t sub_264AA0868(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7373656C65726977;
  }

  else
  {
    v4 = 0x6465726977;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA0000000000796CLL;
  }

  if (*a2)
  {
    v6 = 0x7373656C65726977;
  }

  else
  {
    v6 = 0x6465726977;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000796CLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();
  }

  return v9 & 1;
}

unint64_t sub_264AA0914()
{
  result = qword_27FF8B488;
  if (!qword_27FF8B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8B488);
  }

  return result;
}

uint64_t sub_264AA0968()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AA09EC()
{
  *v0;
  sub_264B41084();
}

uint64_t sub_264AA0A5C()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264AA0ADC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_264B418D4();

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

void sub_264AA0B3C(uint64_t *a1@<X8>)
{
  v2 = 0x6465726977;
  if (*v1)
  {
    v2 = 0x7373656C65726977;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000796CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_264AA0BE0()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D441F0]) init];
    v4 = v3;
    if (*(v0 + 112))
    {
      v5 = 0x40000220000;
    }

    else
    {
      v5 = 2359296;
    }

    [v3 setControlFlags_];
    v6 = sub_264B41014();
    [v4 setServiceType_];

    [v4 setDispatchQueue_];
    sub_264AA0CD0(v4);
    sub_2649F4240(v4);
    v7 = *(v0 + 192);
    *(v0 + 192) = v4;
    v2 = v4;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void sub_264AA0CD0(void *a1)
{
  v10 = sub_264AA8834;
  v11 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649D68F4;
  v9 = &block_descriptor_94;
  v3 = _Block_copy(&v6);
  [a1 setInvalidationHandler_];
  _Block_release(v3);
  v10 = sub_264AABAC4;
  v11 = v1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649D68F4;
  v9 = &block_descriptor_97;
  v4 = _Block_copy(&v6);

  [a1 setInterruptionHandler_];
  _Block_release(v4);
  v10 = sub_264AABACC;
  v11 = v1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2649F9844;
  v9 = &block_descriptor_100;
  v5 = _Block_copy(&v6);

  [a1 setErrorHandler_];
  _Block_release(v5);
}

uint64_t sub_264AA0E98(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88DB8, &unk_264B46FB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = &v36 - v15;
  v16 = *a1;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v17 = sub_264B40964();
  __swift_project_value_buffer(v17, qword_27FFA71D0);
  sub_2649DDB20(v16);

  v18 = sub_264B40944();
  v19 = sub_264B414B4();
  sub_2649FE684(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = v16;
    v41[0] = v22;
    *v21 = 136446466;
    sub_2649DDB20(v16);
    v23 = sub_264B41064();
    v37 = v4;
    v25 = v8;
    v26 = v5;
    v27 = sub_2649CC004(v23, v24, v41);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    v40 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
    sub_2649DDB20(v40);
    v28 = sub_264B41064();
    v30 = sub_2649CC004(v28, v29, v41);
    v4 = v37;

    *(v21 + 14) = v30;
    v5 = v26;
    v8 = v25;
    _os_log_impl(&dword_2649C6000, v18, v19, "Session client state changed from %{public}s to %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v22, -1, -1);
    v31 = v21;
    v13 = v36;
    MEMORY[0x266749940](v31, -1, -1);
  }

  v32 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v2 + v32, v12, &qword_27FF88D78, &qword_264B45850);
  v33 = v39;
  if ((*(v39 + 48))(v12, 1, v13) == 1)
  {
    return sub_2649D04D4(v12, &qword_27FF88D78, &qword_264B45850);
  }

  v35 = v38;
  (*(v33 + 32))(v38, v12, v13);
  v40 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  sub_2649DDB20(v40);
  sub_264B412A4();
  (*(v5 + 8))(v8, v4);
  return (*(v33 + 8))(v35, v13);
}

uint64_t sub_264AA12E4()
{
  v1 = v0;
  v2 = sub_264B3FFD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  v8 = sub_264B41484();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  v12 = sub_264B40944();

  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446722;
    v15 = sub_2649CC004(v9, v11, v24);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 107;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0x74696E696564, 0xE600000000000000, v24);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v17 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v17 == 1)
  {
    sub_2649FE684(1);
    sub_2649FE684(1);
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_264B41754();
    MEMORY[0x266748390](0xD000000000000032, 0x8000000264B5F210);
    v23[1] = 1;
    sub_264B41864();
    result = sub_264B41874();
    __break(1u);
  }

  else
  {
    sub_2649DDB20(*(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v17);
    sub_2649FE684(1);
    v18 = *(v1 + 128);

    __swift_destroy_boxed_opaque_existential_0((v1 + 136));

    v19 = *(v1 + 200);

    sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID, &unk_27FF8BFC0, &qword_264B47140);

    sub_2649D04D4(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation, &qword_27FF88D78, &qword_264B45850);
    sub_2649FE684(*(v1 + v16));
    v20 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType);

    v21 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_tearDownContinuations);

    swift_defaultActor_destroy();
    return v1;
  }

  return result;
}

uint64_t sub_264AA16E4()
{
  sub_264AA12E4();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MediaTransportClientSession()
{
  result = qword_27FF8B4C0;
  if (!qword_27FF8B4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264AA1764()
{
  sub_264A0DF00();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_264AA18A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_264AA18A0()
{
  if (!qword_27FF88D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF88D08, &qword_264B49A40);
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF88D00);
    }
  }
}

void sub_264AA1904()
{
  v1 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  if (*(v0 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) >= 2uLL)
  {
    sub_264AAB93C();
    v12 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FFA71D0);
    oslog = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v15, "Received session started message from the server, but we're already terminal. Ignoring", v16, 2u);
      MEMORY[0x266749940](v16, -1, -1);
    }
  }

  else
  {
    v2 = v0;
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v3 = sub_264B40964();
    __swift_project_value_buffer(v3, qword_27FFA71D0);
    v4 = sub_264B40944();
    v5 = sub_264B41474();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2649C6000, v4, v5, "Received session started message from the server, session is now activated...", v6, 2u);
      MEMORY[0x266749940](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    *(v2 + v1) = 1;
    sub_2649DDB20(v7);
    sub_2649FE684(v7);
    v18 = v7;
    sub_264AA0E98(&v18);
    sub_2649FE684(v7);
    v8 = *(v2 + 176);
    LOBYTE(v18) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264B44150;
    *(inited + 32) = 0x6E6F73616552;
    v10 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0x6E776F6E6B6E75;
    *(inited + 56) = 0xE700000000000000;
    v11 = sub_264A24308(inited);
    swift_setDeallocating();
    sub_2649D04D4(v10, &qword_27FF89220, &qword_264B48430);
    sub_264A9113C(&v18, v11);
  }
}

uint64_t sub_264AA1C00()
{
  v1[6] = v0;
  v2 = sub_264B3FFD4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA1CC0, v0, 0);
}

uint64_t sub_264AA1CC0()
{
  v54 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v53);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 165;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, v53);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v15 >= 3)
  {
    v28 = v0[6];

    v29 = sub_264B40944();
    v30 = sub_264B41494();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[6];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53[0] = v33;
      *v32 = 136446210;
      v0[5] = v31;
      type metadata accessor for MediaTransportClientSession();

      v34 = sub_264B41064();
      v36 = sub_2649CC004(v34, v35, v53);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2649C6000, v29, v30, "%{public}s Client is already in a terminal state.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x266749940](v33, -1, -1);
      MEMORY[0x266749940](v32, -1, -1);
    }

    v37 = v0[9];
    sub_2649FEF6C();
    swift_allocError();
    *v38 = 9;
    swift_willThrow();

    v39 = v0[1];

    return v39();
  }

  else if (v15 == 2)
  {
    sub_2649FE684(2);
    sub_2649FE684(2);

    v16 = sub_264B40944();
    v17 = sub_264B414B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[6];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v53[0] = v20;
      *v19 = 136446210;
      v0[3] = v18;
      type metadata accessor for MediaTransportClientSession();

      v21 = sub_264B41064();
      v23 = sub_2649CC004(v21, v22, v53);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2649C6000, v16, v17, "%{public}s Client in the process of tearing down, will wait for terminal state...", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x266749940](v20, -1, -1);
      MEMORY[0x266749940](v19, -1, -1);
    }

    v24 = v0[6];
    sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession);
    v25 = *(MEMORY[0x277D859E0] + 4);
    v26 = swift_task_alloc();
    v0[16] = v26;
    *v26 = v0;
    v26[1] = sub_264AA277C;
    v27 = v0[6];

    return MEMORY[0x2822007B8]();
  }

  else
  {
    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(2);
    v40 = *(v13 + v14);
    v0[11] = v40;
    *(v13 + v14) = 2;
    sub_2649DDB20(v40);
    sub_2649DDB20(v40);
    sub_2649FE684(v40);
    v53[0] = v40;
    sub_264AA0E98(v53);
    sub_2649FE684(v40);
    if (v40 == 1)
    {
      sub_2649FE684(1);
      sub_2649FE684(1);
      v41 = sub_264B40944();
      v42 = sub_264B414B4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2649C6000, v41, v42, "Attempting to send stopped message to direct peer.", v43, 2u);
        MEMORY[0x266749940](v43, -1, -1);
      }

      v44 = *MEMORY[0x277D44228];
      v45 = sub_264B41044();
      v47 = v46;
      v0[12] = v46;
      v48 = swift_task_alloc();
      v0[13] = v48;
      *v48 = v0;
      v48[1] = sub_264AA2480;
      v49 = v0[6];

      return sub_2649EB0F0(1, v45, v47);
    }

    else
    {
      sub_2649DDB20(v40);
      sub_2649FE684(v40);
      sub_2649FE684(1);
      v0[4] = 3;
      v50 = swift_task_alloc();
      v0[15] = v50;
      *v50 = v0;
      v50[1] = sub_264AA2600;
      v51 = v0[6];

      return sub_264AA2BB8(v0 + 4);
    }
  }
}

uint64_t sub_264AA2480()
{
  v2 = (*v1)[13];
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_264AA2A08, v4, 0);
  }

  else
  {
    v5 = v3[12];

    v3[4] = 3;
    v6 = swift_task_alloc();
    v3[15] = v6;
    *v6 = v3;
    v6[1] = sub_264AA2600;
    v7 = v3[6];

    return sub_264AA2BB8(v3 + 4);
  }
}

uint64_t sub_264AA2600()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AA2710, v2, 0);
}

uint64_t sub_264AA2710()
{
  sub_2649FE684(*(v0 + 88));
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264AA277C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AA288C, v2, 0);
}

uint64_t sub_264AA288C()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[6];

  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    type metadata accessor for MediaTransportClientSession();

    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "%{public}s Client has completed in-flight teardown, returning", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_264AA2A08()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2649C6000, v5, v6, "Failed to send stopped message to server: %{public}@", v9, 0xCu);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {
  }

  v0[4] = 3;
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_264AA2600;
  v14 = v0[6];

  return sub_264AA2BB8(v0 + 4);
}

uint64_t sub_264AA2BB8(uint64_t *a1)
{
  v2[9] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_264B3FFD4();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  v2[17] = v11;
  v2[18] = v12;

  return MEMORY[0x2822009F8](sub_264AA2D34, v1, 0);
}

uint64_t sub_264AA2D34()
{
  v22 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71D0);
  v20 = 540700532;
  v21 = 0xE400000000000000;
  v0[8] = v1;
  sub_2649DDB20(v1);
  v6 = sub_264B41064();
  MEMORY[0x266748390](v6);

  v7 = v21;
  v19 = v20;
  v8 = sub_264B414B4();
  sub_264B3FF94();
  v9 = sub_264B3FFA4();
  v11 = v10;
  (*(v3 + 8))(v2, v4);
  v12 = sub_264B40944();
  if (os_log_type_enabled(v12, v8))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446978;
    v15 = sub_2649CC004(v9, v11, &v20);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = 370;
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_2649CC004(0x6E776F4472616574, 0xED0000293A6F7428, &v20);
    *(v13 + 32) = 2082;
    *(v13 + 34) = sub_2649CC004(v19, v7, &v20);
    _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_264AA3008;
  v17 = v0[9];

  return sub_264AA800C();
}

uint64_t sub_264AA3008()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264AA3118, v2, 0);
}

uint64_t sub_264AA3118()
{
  v21 = v0;
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = sub_264AA0BE0();
  [v6 invalidate];

  [*(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) invalidate];
  v7 = *(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  *(v5 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState) = v1;
  sub_2649DDB20(v1);
  sub_2649DDB20(v7);
  sub_2649FE684(v7);
  v20 = v7;
  sub_264AA0E98(&v20);
  sub_2649FE684(v7);
  v8 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v5 + v8, v2, &qword_27FF88D78, &qword_264B45850);
  v9 = (*(v4 + 48))(v2, 1, v3);
  v10 = v0[14];
  if (v9)
  {
    sub_2649D04D4(v0[14], &qword_27FF88D78, &qword_264B45850);
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    (*(v12 + 16))(v11, v0[14], v13);
    sub_2649D04D4(v10, &qword_27FF88D78, &qword_264B45850);
    sub_264B412B4();
    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[17];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[9];
  (*(v0[11] + 56))(v15, 1, 1, v0[10]);
  swift_beginAccess();
  sub_2649FECCC(v15, v5 + v8, &qword_27FF88D78, &qword_264B45850);
  swift_endAccess();
  sub_2649EA194();

  v18 = v0[1];

  return v18();
}

uint64_t sub_264AA3374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v25 = a1;
  v4 = sub_264B3FFD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v9 = sub_264B40964();
  __swift_project_value_buffer(v9, qword_27FFA71D0);
  v10 = sub_264B41484();
  sub_264B3FF94();
  v11 = sub_264B3FFA4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);

  v14 = sub_264B40944();

  if (os_log_type_enabled(v14, v10))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26[0] = v16;
    *v15 = 136446722;
    v17 = sub_2649CC004(v11, v13, v26);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2050;
    *(v15 + 14) = 212;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_2649CC004(0xD000000000000028, 0x8000000264B5A520, v26);
    _os_log_impl(&dword_2649C6000, v14, v10, "%{public}s:%{public}ld %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v15, -1, -1);
  }

  else
  {
  }

  v18 = v27;
  swift_beginAccess();
  v19 = *(v3 + 200);

  v20 = v25;
  v21 = sub_264AA0550(v25, v18, v19);

  if (v21)
  {
    swift_beginAccess();
    sub_264AAA2B8(v20, v18);
    swift_endAccess();
  }

  else
  {
    sub_264AAAC50();
    swift_allocError();
    *v23 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_264AA36B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v13 = sub_264B40964();
  __swift_project_value_buffer(v13, qword_27FFA71D0);
  v32 = *(v9 + 16);
  v32(v12, a1, v8);
  v14 = sub_264B40944();
  v15 = sub_264B41484();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v7;
    v19 = v18;
    v33[0] = v18;
    *v17 = 136315138;
    v20 = sub_264B400A4();
    v29 = a1;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_2649CC004(v20, v22, v33);
    a1 = v29;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v14, v15, "Setting sessionID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    v7 = v30;
    MEMORY[0x266749940](v24, -1, -1);
    v25 = v17;
    v2 = v31;
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v32(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v26 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  swift_beginAccess();
  sub_2649FECCC(v7, v2 + v26, &unk_27FF8BFC0, &qword_264B47140);
  return swift_endAccess();
}

uint64_t sub_264AA39D4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v6 = sub_264B40104();
  *(v3 + 72) = v6;
  v7 = *(v6 - 8);
  *(v3 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v9 = sub_264B3FFD4();
  *(v3 + 104) = v9;
  v10 = *(v9 - 8);
  *(v3 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 154) = *a2;

  return MEMORY[0x2822009F8](sub_264AA3B48, v2, 0);
}

uint64_t sub_264AA3B48()
{
  v47 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, v46);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 229;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD000000000000015, 0x8000000264B5F170, v46);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 56);
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v15 != 1)
  {
    sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v15);
    sub_2649FE684(1);

    v24 = sub_264B40944();
    v25 = sub_264B41494();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 154);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46[0] = v28;
      *v27 = 136446466;
      *(v0 + 152) = v26;
      v29 = sub_264B41064();
      v31 = sub_2649CC004(v29, v30, v46);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v32 = *(v13 + v14);
      *(v0 + 40) = v32;
      sub_2649DDB20(v32);
      v33 = sub_264B41064();
      v35 = sub_2649CC004(v33, v34, v46);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_2649C6000, v24, v25, "Unable to create %{public}s, state is now: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v28, -1, -1);
      MEMORY[0x266749940](v27, -1, -1);
    }

    v23 = 10;
    goto LABEL_14;
  }

  v16 = *(v0 + 72);
  v17 = *(v0 + 80);
  v18 = *(v0 + 64);
  sub_2649FE684(1);
  sub_2649FE684(1);
  v19 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionID;
  swift_beginAccess();
  sub_2649D046C(v13 + v19, v18, &unk_27FF8BFC0, &qword_264B47140);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_2649D04D4(*(v0 + 64), &unk_27FF8BFC0, &qword_264B47140);
    v20 = sub_264B40944();
    v21 = sub_264B41494();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2649C6000, v20, v21, "SessionID is uninitialized", v22, 2u);
      MEMORY[0x266749940](v22, -1, -1);
    }

    v23 = 11;
LABEL_14:
    sub_2649FEF6C();
    swift_allocError();
    *v36 = v23;
    swift_willThrow();
    v37 = *(v0 + 120);
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    v40 = *(v0 + 64);

    v41 = *(v0 + 8);

    return v41();
  }

  v43 = *(v0 + 154);
  (*(*(v0 + 80) + 32))(*(v0 + 96), *(v0 + 64), *(v0 + 72));
  *(v0 + 153) = v43;
  v44 = swift_task_alloc();
  *(v0 + 128) = v44;
  *v44 = v0;
  v44[1] = sub_264AA40F0;
  v45 = *(v0 + 56);

  return sub_264AA4560((v0 + 153));
}

uint64_t sub_264AA40F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v5 = v3[7];
  if (v1)
  {
    v6 = sub_264AA44BC;
  }

  else
  {
    v6 = sub_264AA4208;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264AA4208()
{
  v1 = *(v0 + 154);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 72));
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  if (v1 != 1)
  {
    v6 = type metadata accessor for MediaTransportAudioStream();
    v12 = objc_allocWithZone(v6);
    v13 = v3;

    v14 = sub_264AAB22C(1, v13, v5, v4, v12, &qword_27FF8B4F0, type metadata accessor for MediaTransportClientSession);

    v10 = v14;
    sub_264AA0668(v10, &off_287659370, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType);
    if (!v2)
    {
      v11 = &off_287659350;
      goto LABEL_7;
    }

LABEL_5:
    v15 = *(v0 + 136);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));

    v16 = *(v0 + 120);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 64);

    v20 = *(v0 + 8);
    goto LABEL_8;
  }

  v6 = type metadata accessor for MediaTransportVideoStream();
  v7 = objc_allocWithZone(v6);
  v8 = v3;

  v9 = sub_264AAACF8(1, v8, v5, v4, v7, &qword_27FF8B4F0, type metadata accessor for MediaTransportClientSession);

  v10 = v9;
  sub_264AA0668(v10, &off_28765EAA8, &OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType);
  if (v2)
  {
    goto LABEL_5;
  }

  v11 = &off_28765EA88;
LABEL_7:
  v21 = *(v0 + 136);
  v22 = *(v0 + 120);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v25 = *(v0 + 80);
  v28 = *(v0 + 88);
  v29 = *(v0 + 64);
  v26 = *(v0 + 48);

  v26[3] = v6;
  v26[4] = v11;

  *v26 = v10;
  (*(v25 + 8))(v23, v24);

  v20 = *(v0 + 8);
LABEL_8:

  return v20();
}

uint64_t sub_264AA44BC()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_264AA4560(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = *a1;
  return MEMORY[0x2822009F8](sub_264AA4588, v1, 0);
}

uint64_t sub_264AA4588()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x277D44210]) init];
  *(v0 + 24) = v3;
  sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession);
  v4 = sub_264AA0BE0();
  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = *(v0 + 16);
  if (v1 == 1)
  {
    *(v5 + 40) = 256;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_264AA4774;
  }

  else
  {
    *(v5 + 40) = 1;
    v9 = *(MEMORY[0x277D859E0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_264AA48DC;
  }

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264AA4774()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_264AA48C0, v4, 0);
}

uint64_t sub_264AA48DC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_264AABDA4, v4, 0);
}

uint64_t sub_264AA4A28(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D60, &qword_264B457F8);
  v2[39] = v4;
  v5 = *(v4 - 8);
  v2[40] = v5;
  v6 = *(v5 + 64) + 15;
  v2[41] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2[42] = v7;
  v8 = *(v7 - 8);
  v2[43] = v8;
  v9 = *(v8 + 64) + 15;
  v2[44] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D78, &qword_264B45850) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA4BD8, v1, 0);
}

uint64_t sub_264AA4BD8()
{
  v28 = v0;
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[37];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  v0[47] = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_sessionStateStreamContinuation;
  swift_beginAccess();
  sub_2649D046C(v4 + v5, v1, &qword_27FF88D78, &qword_264B45850);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_2649D04D4(v1, &qword_27FF88D78, &qword_264B45850);
  if (v2 == 1)
  {
    if (qword_27FF883E8 != -1)
    {
      swift_once();
    }

    v6 = v0[37];
    v7 = sub_264B40964();
    v0[48] = __swift_project_value_buffer(v7, qword_27FFA71D0);

    v8 = sub_264B40944();
    v9 = sub_264B414B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[37];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_2649CC004(*(v10 + 120), *(v10 + 128), &v27);
      _os_log_impl(&dword_2649C6000, v8, v9, "Activating MediaTransportClientSession: Starting device discovery for %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x266749940](v12, -1, -1);
      MEMORY[0x266749940](v11, -1, -1);
    }

    v13 = v0[37];
    v14 = __swift_project_boxed_opaque_existential_1(v13 + 17, v13[20]);
    v16 = v13[15];
    v15 = v13[16];
    v17 = *v14;
    v18 = swift_task_alloc();
    v0[49] = v18;
    *v18 = v0;
    v18[1] = sub_264AA4EE0;

    return sub_264B03FB8((v0 + 7), v16, v15);
  }

  else
  {
    sub_264AAB93C();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    v22 = v0[45];
    v21 = v0[46];
    v23 = v0[44];
    v24 = v0[41];
    v25 = v0[38];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_264AA4EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 296);
  if (v0)
  {
    v6 = sub_264AA56A0;
  }

  else
  {
    v6 = sub_264AA500C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264AA500C()
{
  v53 = v0;
  v1 = *(v0 + 384);
  sub_2649D2AAC((v0 + 56), v0 + 16);
  sub_2649CB5C0(v0 + 16, v0 + 96);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v52[0] = v5;
    *v4 = 136446210;
    v6 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v7 = *(v6 + 8);
    *(v0 + 200) = swift_getAssociatedTypeWitness();
    *(v0 + 208) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_264B41764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B518, &qword_264B50B50);
    v8 = sub_264B41064();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v11 = sub_2649CC004(v8, v10, v52);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_2649C6000, v2, v3, "Found device matching identifier: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x266749940](v5, -1, -1);
    MEMORY[0x266749940](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v12 = *(v0 + 296);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v14 = *(v12 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  sub_2649DDB20(v14);
  sub_2649FE684(v14);
  sub_2649FE684(1);
  if (v14)
  {
    v15 = *(v0 + 384);
    v16 = *(v0 + 296);

    v17 = sub_264B40944();
    v18 = sub_264B41494();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 296);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v52[0] = v21;
      *v20 = 136446466;
      *(v0 + 272) = v19;
      type metadata accessor for MediaTransportClientSession();

      v22 = sub_264B41064();
      v24 = sub_2649CC004(v22, v23, v52);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = *(v12 + v13);
      *(v0 + 280) = v25;
      sub_2649DDB20(v25);
      v26 = sub_264B41064();
      v28 = sub_2649CC004(v26, v27, v52);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_2649C6000, v17, v18, "%{public}s cannot be activated because we've already become %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    sub_264AAB93C();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    v32 = *(v0 + 352);
    v33 = *(v0 + 328);
    v34 = *(v0 + 304);

    v35 = *(v0 + 8);
  }

  else
  {
    v36 = *(v0 + 352);
    v48 = *(v0 + 360);
    v49 = *(v0 + 376);
    v37 = *(v0 + 344);
    v47 = *(v0 + 336);
    v38 = *(v0 + 320);
    v39 = *(v0 + 328);
    v40 = *(v0 + 312);
    v50 = *(v0 + 304);
    v51 = *(v0 + 368);
    v42 = *(v0 + 288);
    v41 = *(v0 + 296);
    (*(v38 + 104))(v39, *MEMORY[0x277D85778], v40);
    v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D68, &qword_264B46FC0);
    v42[4] = sub_2649CB4C8(&qword_27FF88D70, &qword_27FF88D68, &qword_264B46FC0);
    __swift_allocate_boxed_opaque_existential_1(v42);
    sub_264B41284();
    (*(v38 + 8))(v39, v40);
    (*(v37 + 16))(v48, v36, v47);
    (*(v37 + 56))(v48, 0, 1, v47);
    swift_beginAccess();
    sub_2649FECCC(v48, v41 + v49, &qword_27FF88D78, &qword_264B45850);
    swift_endAccess();
    v43 = sub_264B41274();
    (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    sub_2649CB5C0(v0 + 16, v0 + 136);
    v44 = sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession);
    v45 = swift_allocObject();
    v45[2] = v41;
    v45[3] = v44;
    v45[4] = v41;
    sub_2649D2AAC((v0 + 136), (v45 + 5));
    swift_retain_n();
    sub_264A10C20(0, 0, v50, &unk_264B50B48, v45);

    (*(v37 + 8))(v36, v47);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_264AA56A0()
{
  v1 = *(v0 + 400);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if (swift_dynamicCast() && (*(v0 + 408) & 1) == 0)
  {

    sub_2649FEF6C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  else
  {
    v3 = *(v0 + 400);

    swift_willThrow();
    v4 = *(v0 + 400);
  }

  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);
  v9 = *(v0 + 328);
  v10 = *(v0 + 304);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_264AA57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_264AA587C;

  return sub_264AA5B08(a5);
}

uint64_t sub_264AA587C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v5 = swift_task_alloc();
    *(v2 + 40) = v5;
    *v5 = v4;
    v5[1] = sub_264AA59F8;
    v6 = v0;
    v7 = *(v2 + 16);

    return sub_264AA676C(v6);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_264AA59F8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649F387C, v2, 0);
}

uint64_t sub_264AA5B08(uint64_t a1)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = v1;
  return MEMORY[0x2822009F8](sub_264AA5B28, v1, 0);
}

uint64_t sub_264AA5B28()
{
  v36 = v0;
  v1 = (v0 + 18);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v3 = sub_264B40964();
  v0[37] = __swift_project_value_buffer(v3, qword_27FFA71D0);
  sub_2649CB5C0(v2, (v0 + 18));
  v4 = sub_264B40944();
  v5 = sub_264B41474();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v6 = 136315138;
    v7 = v0[22];
    __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v8 = *(v7 + 8);
    v0[29] = swift_getAssociatedTypeWitness();
    v0[30] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v0 + 26);
    v1 = (v0 + 18);
    sub_264B41764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B518, &qword_264B50B50);
    v9 = sub_264B41064();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
    v12 = sub_2649CC004(v9, v11, &v35);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Activating RPRemoteDisplaySession with device %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x266749940](v34, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  }

  v13 = v0[36];
  v14 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v15 = *(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v15 == 1)
  {
    sub_2649FE684(1);
    sub_2649FE684(1);
    v16 = sub_264B40944();
    v17 = sub_264B41494();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2649C6000, v16, v17, "The session is already active, cannot activate", v18, 2u);
      MEMORY[0x266749940](v18, -1, -1);
    }

    v19 = 2;
    goto LABEL_14;
  }

  sub_2649DDB20(*(v13 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
  sub_2649FE684(v15);
  sub_2649FE684(1);
  if (*(v13 + v14) > 1uLL)
  {
    v19 = 3;
LABEL_14:
    sub_264AAB93C();
    swift_allocError();
    *v21 = v19;
    swift_willThrow();
    v22 = v0[1];

    return v22();
  }

  sub_2649CB5C0(v0[35], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8B520, &unk_264B50B68);
  type metadata accessor for RapportBackedMediaTransportDevice();
  if (swift_dynamicCast())
  {
    v20 = *(v0[26] + 32);
  }

  else
  {
    v20 = 0;
  }

  v0[38] = v20;
  v24 = v0[36];
  v25 = sub_264AA0BE0();
  [v25 setDestinationDevice_];

  v26 = [objc_allocWithZone(MEMORY[0x277D7BB40]) initForService_];
  v0[39] = v26;
  [v26 setShowsUIAlertOnError_];
  v27 = *(v24 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation);
  *(v24 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_wifiReservation) = v26;
  v28 = v26;

  v29 = sub_264B40944();
  v30 = sub_264B414B4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2649C6000, v29, v30, "Attempting to activate WiFi reservation", v31, 2u);
    MEMORY[0x266749940](v31, -1, -1);
  }

  v0[2] = v0;
  v0[3] = sub_264AA60C0;
  v32 = swift_continuation_init();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BB20, &unk_264B46F80);
  v0[40] = v33;
  v0[25] = v33;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2649F4D64;
  v0[21] = &block_descriptor_87;
  v0[22] = v32;
  [v28 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264AA60C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = sub_264AA6564;
  }

  else
  {
    v5 = sub_264AA61E0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AA61E0()
{
  v1 = v0[37];
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "WiFi reservation active", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = v0[40];
  v6 = v0[36];

  v7 = *(v6 + 192);
  v0[42] = v7;
  v0[10] = v0;
  v0[11] = sub_264AA635C;
  v8 = swift_continuation_init();
  v0[25] = v5;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2649F4D64;
  v0[21] = &block_descriptor_90;
  v0[22] = v8;
  [v7 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_264AA635C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = sub_264AA66E8;
  }

  else
  {
    v5 = sub_264AA647C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264AA647C()
{
  v1 = *(v0 + 296);

  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "RPRemoteDisplaySession activated!", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 304);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_264AA6564()
{
  v22 = v0;
  v1 = v0[41];
  v2 = v0[37];
  swift_willThrow();
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[31];
    v9 = v0[32];
    v11 = v0[33];
    v12 = sub_264B41B24();
    v14 = sub_2649CC004(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "WiFi reservation failed: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[39];
  swift_willThrow();

  v18 = v0[41];
  v19 = v0[1];

  return v19();
}

uint64_t sub_264AA66E8()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  swift_willThrow();

  v5 = v0[43];
  v6 = v0[1];

  return v6();
}

uint64_t sub_264AA676C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_264AA678C, v1, 0);
}

uint64_t sub_264AA678C()
{
  v47 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_264B41B24();
    v14 = sub_2649CC004(v12, v13, &v46);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "Client session interrupted: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v15 = v0[10];
  v16 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v17 = *(v15 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v17 > 2)
  {
    v30 = v0[10];

    v31 = sub_264B40944();
    v32 = sub_264B41494();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[10];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136446210;
      v0[7] = v33;
      type metadata accessor for MediaTransportClientSession();

      v36 = sub_264B41064();
      v38 = sub_2649CC004(v36, v37, &v46);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2649C6000, v31, v32, "%{public}s Client is already in a terminal state, not interrupting again.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x266749940](v35, -1, -1);
      MEMORY[0x266749940](v34, -1, -1);
    }

    v39 = v0[1];

    return v39();
  }

  else if (v17 == 2)
  {
    sub_2649FE684(2);
    sub_2649FE684(2);

    v18 = sub_264B40944();
    v19 = sub_264B414B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[10];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46 = v22;
      *v21 = 136446210;
      v0[5] = v20;
      type metadata accessor for MediaTransportClientSession();

      v23 = sub_264B41064();
      v25 = sub_2649CC004(v23, v24, &v46);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2649C6000, v18, v19, "%{public}s Client is in the process of tearing down, will wait for terminal state before resuming interruption call...", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    v26 = v0[10];
    sub_264AABCD0(&qword_27FF8B4D0, type metadata accessor for MediaTransportClientSession);
    v27 = *(MEMORY[0x277D859E0] + 4);
    v28 = swift_task_alloc();
    v0[12] = v28;
    *v28 = v0;
    v28[1] = sub_264AA6E30;
    v29 = v0[10];

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v40 = v0[9];
    sub_2649DDB20(*(v15 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v17);
    sub_2649FE684(2);
    v41 = *(v15 + v16);
    *(v15 + v16) = 2;
    sub_2649DDB20(v41);
    sub_2649FE684(v41);
    v46 = v41;
    sub_264AA0E98(&v46);
    sub_2649FE684(v41);
    v0[6] = v40;
    v42 = v40;
    v43 = swift_task_alloc();
    v0[11] = v43;
    *v43 = v0;
    v43[1] = sub_264AA6D20;
    v44 = v0[10];

    return sub_264AA2BB8(v0 + 6);
  }
}

uint64_t sub_264AA6D20()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v5 = *v0;

  sub_2649FE684(*(v1 + 48));
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264AA6E30()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649F5338, v2, 0);
}

uint64_t sub_264AA6F40(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_264B3FFD4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264AA7000, v1, 0);
}

uint64_t sub_264AA7000()
{
  v27 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_264B40964();
  v0[10] = __swift_project_value_buffer(v4, qword_27FFA71D0);
  v5 = sub_264B414B4();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  v9 = *(v2 + 8);
  v0[11] = v9;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v5))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v6, v8, &v26);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 329;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5EFD0, &v26);
    _os_log_impl(&dword_2649C6000, v10, v5, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[6];
  v15 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_264A20B44(1);
    if (v18)
    {
      v0[13] = *(*(v16 + 56) + 16 * v17);
      swift_unknownObjectRetain();

      type metadata accessor for MediaTransportVideoStream();
      v19 = swift_dynamicCastClass();
      v0[14] = v19;
      if (v19)
      {

        return MEMORY[0x2822009F8](sub_264AA73A4, 0, 0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v20 = sub_264B40944();
  v21 = sub_264B414A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2649C6000, v20, v21, "No Video Transport Stream, cannot set layer", v22, 2u);
    MEMORY[0x266749940](v22, -1, -1);
  }

  v23 = v0[9];

  v24 = v0[1];

  return v24();
}

uint64_t sub_264AA73A4()
{
  sub_264B41244();
  *(v0 + 120) = sub_264B41234();
  v2 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264AA7438, v2, v1);
}

uint64_t sub_264AA7438()
{
  v24 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[5];

  v4 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer);
  *(v2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_currentVideoLayer) = v3;
  v5 = v3;

  v6 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit25MediaTransportVideoStream_remoteVideoClient);
  if (v6)
  {
    v7 = v0[5];
    v8 = v6;
    sub_264AEABE4(v7, v8);
    v0[16] = 0;
LABEL_5:

    goto LABEL_7;
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = sub_264B414B4();
  sub_264B3FF94();
  v15 = sub_264B3FFA4();
  v17 = v16;
  v10(v11, v13);
  v8 = sub_264B40944();
  if (os_log_type_enabled(v8, v14))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136446978;
    v20 = sub_2649CC004(v15, v17, v23);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2050;
    *(v18 + 14) = 103;
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_2649CC004(0xD000000000000011, 0x8000000264B5F0E0, v23);
    *(v18 + 32) = 2082;
    *(v18 + 34) = sub_2649CC004(0xD00000000000004ELL, 0x8000000264B5F000, v23);
    _os_log_impl(&dword_2649C6000, v8, v14, "%{public}s:%{public}ld %{public}s %{public}s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
    goto LABEL_5;
  }

LABEL_7:
  v21 = v0[6];

  return MEMORY[0x2822009F8](sub_264AA7728, v21, 0);
}

uint64_t sub_264AA76B8()
{
  v1 = v0[13];
  v2 = v0[9];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_264AA7728()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

unsigned __int8 *sub_264AA7794(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FC0, &unk_264B470B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v12 != 1)
  {
    sub_2649DDB20(*(v3 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v12);
    v15 = 1;
    sub_2649FE684(1);
    sub_264AAAC50();
    swift_allocError();
    goto LABEL_5;
  }

  v41 = *a3;
  sub_2649FE684(1);
  sub_2649FE684(1);
  swift_beginAccess();
  a3 = *(v3 + 200);

  v13 = sub_264AA0550(a1, a2, a3);

  if (v13)
  {
    sub_264AAAC50();
    swift_allocError();
    v15 = 0;
LABEL_5:
    *v14 = v15;
    swift_willThrow();
    return a3;
  }

  v38 = v8;
  swift_beginAccess();

  sub_264A130D8(&v40, a1, a2);
  swift_endAccess();

  v37 = *(v3 + 184);
  v16 = sub_264AA0BE0();
  v17 = type metadata accessor for MediaTransportControlStream();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  a3 = swift_allocObject();
  a3[32] = 0;
  *(a3 + 5) = sub_264AAAA68(&unk_287655FA0);
  v20 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_stateStream;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  (*(*(v21 - 8) + 56))(&a3[v20], 1, 1, v21);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v22 = sub_264B40964();
  __swift_project_value_buffer(v22, qword_27FFA71D0);

  v23 = sub_264B40944();
  v24 = sub_264B414B4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v36 = v7;
    v28 = v27;
    v39[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_2649CC004(a1, a2, v39);
    _os_log_impl(&dword_2649C6000, v23, v24, "MediaTransportControlStream initialized with streamID:%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v7 = v36;
    MEMORY[0x266749940](v29, -1, -1);
    v30 = v26;
    v16 = v35;
    MEMORY[0x266749940](v30, -1, -1);
  }

  a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_role] = 1;
  *(a3 + 2) = a1;
  *(a3 + 3) = a2;
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportDispatchQueue] = v37;
  a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_QOS] = v41;
  v31 = objc_allocWithZone(MEMORY[0x277D44210]);

  v32 = [v31 init];
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_rapportStream] = v32;
  [v32 setMessenger_];
  *&a3[OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportControlStream_currentSession] = v16;
  v33 = v38;
  (*(v38 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_264B41284();
  (*(v33 + 8))(v11, v7);
  return a3;
}

uint64_t sub_264AA7C48(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264AA39D4(a1, a2);
}