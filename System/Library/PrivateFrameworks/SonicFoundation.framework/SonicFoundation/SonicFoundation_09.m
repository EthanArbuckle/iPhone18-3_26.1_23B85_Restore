uint64_t Box.value.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_26();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_16(*(v6 + 80));
  (*(v7 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*Box.value.modify())()
{
  OUTLINED_FUNCTION_1_33();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_9_23();
  return j_j__swift_endAccess_0;
}

uint64_t Box.init(value:)()
{
  OUTLINED_FUNCTION_0_40();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_16(*(v3 + 80));
  (*(v4 + 32))(v0 + v5);
  return v0;
}

uint64_t Box.__allocating_init<A>(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Box.init<A>(from:)(a1);
  return v5;
}

char *Box.init<A>(from:)(uint64_t *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_0_40();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v20[-v13 - 8];
  sub_26B16BCF8(v12, v20);
  sub_26B2131B0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = *v3;
  if (v2)
  {
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v8 + 32))(&v3[*(v15 + 88)], v14, v6);
  }

  return v3;
}

uint64_t sub_26B1F59D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_26();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_16(*(v6 + 80));
  return (*(v7 + 16))(a1, &v1[v5]);
}

uint64_t sub_26B1F5A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = Box.wrappedValue.read();
  (*(*(v5 - 8) + 16))(a4);
  return (v7)(&v9, 0);
}

uint64_t (*Box.wrappedValue.read())()
{
  OUTLINED_FUNCTION_1_33();
  v1 = *(v0 + 88);
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t sub_26B1F5B5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a2;
  v7 = Box.wrappedValue.modify();
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(&v10, 0);
}

uint64_t (*Box.wrappedValue.modify())()
{
  OUTLINED_FUNCTION_1_33();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_9_23();
  return j__swift_endAccess_0;
}

uint64_t Box.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_26();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_26();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_16(v7);
  v9 = v8;
  (*(v8 + 24))(&v1[v5], a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t Box.deinit()
{
  OUTLINED_FUNCTION_0_40();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_16(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  return v0;
}

uint64_t Box<A>.encode(to:)()
{
  OUTLINED_FUNCTION_0_40();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v11, v2);
  sub_26B212970();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_26B1F5EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  return Box<A>.encode(to:)();
}

uint64_t sub_26B1F5EF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  result = Box.__allocating_init<A>(from:)(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Box<A>.hash(into:)()
{
  OUTLINED_FUNCTION_0_40();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  (*(v4 + 16))(v9, v0 + v11, v2);
  sub_26B2129A0();
  return (*(v4 + 8))(v9, v2);
}

uint64_t Box<A>.hashValue.getter()
{
  sub_26B214030();
  Box<A>.hash(into:)();
  return sub_26B214070();
}

uint64_t sub_26B1F608C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  return Box<A>.hashValue.getter();
}

uint64_t sub_26B1F60B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  return Box<A>.hash(into:)();
}

uint64_t sub_26B1F60DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  v5 = *v3;
  Box<A>.hash(into:)();
  return sub_26B214070();
}

uint64_t static Box<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23[-v15];
  v17 = *(*v14 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v18 = *(v7 + 16);
  v18(v16, a1 + v17, v5);
  v19 = *(*a2 + 88);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v18(v13, a2 + v19, v5);
  v20 = sub_26B212A20();
  v21 = *(v7 + 8);
  v21(v13, v5);
  v21(v16, v5);
  return v20 & 1;
}

uint64_t *ActorBox.init(value:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t ActorBox.withValue<A>(_:)(void (*a1)(uint64_t))
{
  v3 = *(*v1 + 96);
  OUTLINED_FUNCTION_4_30();
  swift_beginAccess();
  a1(v1 + v3);
  return swift_endAccess();
}

uint64_t ActorBox.deinit()
{
  OUTLINED_FUNCTION_0_40();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_16(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorBox.__deallocating_deinit()
{
  ActorBox.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B1F64E0(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t MutexBox.init(_:)()
{
  OUTLINED_FUNCTION_1_33();
  v3 = *(v2 + 80);
  v4 = sub_26B212130();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - v7;
  *(&v13 - v7) = 0;
  v9 = *(v6 + 36);
  v10 = sub_26B212140();
  bzero(&v8[v9], *(*(v10 - 8) + 64));
  OUTLINED_FUNCTION_16(v3);
  (*(v11 + 32))(&v8[v9], v0, v3);
  memcpy((v1 + *(*v1 + 88)), v8, v5);
  return v1;
}

void _s15SonicFoundation8MutexBoxC8withLockyqd__qd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v25 = a5;
  v24 = a3;
  v9 = *v6;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + *(v9 + 88));
  os_unfair_lock_lock(v17);
  v18 = *(v9 + 80);
  v19 = sub_26B212130();
  v20 = v23;
  a1(v17 + *(v19 + 28), v16);
  if (v20)
  {
    (*(v11 + 32))(v22, v16, a4);
  }

  OUTLINED_FUNCTION_8_26();
}

void _s15SonicFoundation8MutexBoxC19withLockIfAvailableyqd__Sgqd__xzYuqd_0_YKYTXEqd_0_YKs5ErrorRd_0_Ri_d__r0_lF(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[0] = a5;
  v23[1] = a2;
  v24 = a1;
  v11 = *v6;
  OUTLINED_FUNCTION_29();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + *(v19 + 88));
  if (os_unfair_lock_trylock(v20))
  {
    v21 = *(v11 + 80);
    v22 = sub_26B212130();
    v24(v20 + *(v22 + 28), v18);
    if (v7)
    {
      (*(v13 + 32))(v23[0], v18, a4);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(a6, 0, 1, a3);
    }

    os_unfair_lock_unlock(v20);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a6, 1, 1, a3);
  }
}

uint64_t MutexBox.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_40();
  v3 = v0 + *(v2 + 88);
  v5 = *(v4 + 80);
  v6 = *(sub_26B212130() + 28);
  v7 = sub_26B212140();
  sub_26B1F6A38(v7);
  return v1;
}

uint64_t sub_26B1F69DC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_26B1F6AE4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B1F6BC8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_26B212130();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return swift_beginAccess();
}

uint64_t sub_26B1F6D04(unint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    v2 = *(v2 + 16);
  }

  v6 = a1;
  v7 = v2;
  sub_26B1F718C(v2);
  v4 = static Device.Family.== infix(_:_:)(&v7, &v6);
  sub_26B1F71A8(v2);
  return v4 & 1;
}

void sub_26B1F6DA0(unint64_t *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 0xA)
    {
      v5 = 0x8000000000000038;
    }

    else
    {
      v5 = qword_26B21DEA8[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_26B1F6E20@<X0>(uint64_t *a1@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  isSimulator = MobileGestalt_get_isSimulator();

  if (!isSimulator)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      isVirtualDevice = MobileGestalt_get_isVirtualDevice();

      if (isVirtualDevice)
      {
        v7 = swift_allocObject();
        if (qword_2803E6AC0 != -1)
        {
          v10 = v7;
          swift_once();
          v7 = v10;
        }

        v6 = qword_2803F2A88;
        *(v7 + 16) = qword_2803F2A88;
      }

      else
      {
        if (qword_2803E6AC0 != -1)
        {
          swift_once();
        }

        v7 = qword_2803F2A88;
        v6 = qword_2803F2A88;
      }

      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v5 = swift_allocObject();
  if (qword_2803E6AC0 != -1)
  {
    swift_once();
  }

  v6 = qword_2803F2A88;
  *(v5 + 16) = qword_2803F2A88;
  v7 = v5 | 0x4000000000000000;
LABEL_14:
  *a1 = v7;

  return sub_26B1F718C(v6);
}

uint64_t static Device.Family.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_25:
    sub_26B1F718C(v3);
    sub_26B1F718C(v2);
    sub_26B1F71A8(v2);
    sub_26B1F71A8(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
      v15 = v6;
      v16 = v5;
      sub_26B1F718C(v3);
      sub_26B1F718C(v2);
      v7 = static Device.Family.== infix(_:_:)(&v16, &v15);
      sub_26B1F71A8(v2);
      sub_26B1F71A8(v3);
      return v7 & 1;
    }

    goto LABEL_25;
  }

  switch(__ROR8__(v2 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_5_24();
      if (v3 != v12)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(v2);
      v8 = 0x8000000000000008;
      goto LABEL_24;
    case 2:
      OUTLINED_FUNCTION_5_24();
      v10 = v11 + 8;
      goto LABEL_22;
    case 3:
      if (v3 != 0x8000000000000018)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000018;
      goto LABEL_24;
    case 4:
      OUTLINED_FUNCTION_5_24();
      v10 = v9 + 24;
      goto LABEL_22;
    case 5:
      if (v3 != 0x8000000000000028)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000028;
      goto LABEL_24;
    case 6:
      OUTLINED_FUNCTION_5_24();
      v10 = v13 + 40;
LABEL_22:
      if (v3 != v10)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(v2);
      v8 = v10;
LABEL_24:
      sub_26B1F71A8(v8);
      v7 = 1;
      break;
    case 7:
      if (v3 != 0x8000000000000038)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000038;
      goto LABEL_24;
    default:
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_25;
      }

      sub_26B1F71A8(*a1);
      v8 = 0x8000000000000000;
      goto LABEL_24;
  }

  return v7 & 1;
}

unint64_t sub_26B1F718C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_26B1F71A8(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t Device.Family.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (!v4)
  {
    v7 = *(v3 + 16);
    v6 = 8;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = 9;
LABEL_5:
    MEMORY[0x26D671480](v6);
    return Device.Family.hash(into:)(a1);
  }

  switch(__ROR8__(v3 ^ 0x8000000000000000, 3))
  {
    case 1:
      v9 = 1;
      break;
    case 2:
      v9 = 2;
      break;
    case 3:
      v9 = 3;
      break;
    case 4:
      v9 = 4;
      break;
    case 5:
      v9 = 5;
      break;
    case 6:
      v9 = 6;
      break;
    case 7:
      v9 = 7;
      break;
    default:
      v9 = 0;
      break;
  }

  return MEMORY[0x26D671480](v9);
}

uint64_t Device.Family.hashValue.getter()
{
  v2[9] = *v0;
  sub_26B214030();
  Device.Family.hash(into:)(v2);
  return sub_26B214070();
}

uint64_t sub_26B1F72FC()
{
  v2[9] = *v0;
  sub_26B214030();
  Device.Family.hash(into:)(v2);
  return sub_26B214070();
}

unint64_t Device.family.getter@<X0>(void *a1@<X8>)
{
  if (qword_2803E6AC8 != -1)
  {
    swift_once();
  }

  v2 = qword_2803F2A90;
  *a1 = qword_2803F2A90;

  return sub_26B1F718C(v2);
}

void Device.nvram.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_nVRAMDictionary_obj();

    if (v2)
    {
      v3 = sub_26B2128A0();

      sub_26B1F7568(v3);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_26B1F7568(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_26B1F8984();
    v2 = sub_26B213A40();
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

  result = sub_26B2128F0();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    sub_26B1F89E8(*(a1 + 48) + 40 * v11, __src);
    sub_26B15CF98(*(a1 + 56) + 32 * v11, &__src[5]);
    memcpy(__dst, __src, sizeof(__dst));
    swift_dynamicCast();
    sub_26B165E08(&__dst[5], v23);
    sub_26B165E08(v23, v25);
    sub_26B165E08(v25, v26);
    sub_26B165E08(v26, &v24);
    result = sub_26B16E800(v21, v22);
    v12 = result;
    if (v13)
    {
      v14 = (v2[6] + 16 * result);
      v15 = v14[1];
      *v14 = v21;
      v14[1] = v22;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = sub_26B165E08(&v24, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v21;
      v17[1] = v22;
      result = sub_26B165E08(&v24, (v2[7] + 32 * result));
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_26B1F780C(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Device.isInternalCarry.getter()
{
  if (os_variant_has_internal_content() && (v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]), (v1 = sub_26B1F84B8(0x6C7070612E6D6F63, 0xEC00000061642E65)) != 0))
  {
    v2 = v1;
    OUTLINED_FUNCTION_3_27();
    v3 = sub_26B212A50();
    v4 = [v2 stringForKey_];

    if (!v4)
    {
      v11 = sub_26B212A50();
      v9 = [v2 stringForKey_];

      if (v9)
      {
        sub_26B212A80();

        sub_26B212AF0();

        v12 = sub_26B14FCC8();
        v19 = OUTLINED_FUNCTION_2_36(v12, MEMORY[0x277D837D0], v13, v14, v15, v16, v17, v18, 0x7972726163);
        if (v19)
        {

          LOBYTE(v9) = 1;
          return v9 & 1;
        }

        LOBYTE(v9) = OUTLINED_FUNCTION_2_36(v19, MEMORY[0x277D837D0], v20, v21, v22, v23, v24, v25, 0x756F62616B6C6177);
      }

      return v9 & 1;
    }

    v5 = sub_26B212A80();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v9) = v8 == 0;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double Device.bootTime.getter()
{
  if (qword_2803E6AD0 != -1)
  {
    OUTLINED_FUNCTION_1_34();
  }

  return sub_26B1F7ACC();
}

double sub_26B1F7ACC()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_26B1F7E38();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

uint64_t Device.bootUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803E6AD0 != -1)
  {
    OUTLINED_FUNCTION_1_34();
  }

  return sub_26B1F7B50(a1);
}

uint64_t sub_26B1F7B50@<X0>(uint64_t a1@<X8>)
{
  sub_26B1F8808();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID;
  swift_beginAccess();
  sub_26B1F88BC(v1 + v13, v12);
  v14 = sub_26B2120D0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  sub_26B1F8860(v12);
  OUTLINED_FUNCTION_3_27();
  sub_26B1F7F54();
  if (v15)
  {
    sub_26B2120A0();

    if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
    {
      v16 = *(v14 - 8);
      (*(v16 + 32))(a1, v10, v14);
      (*(v16 + 16))(v7, a1, v14);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
      swift_beginAccess();
      sub_26B1F8920(v7, v1 + v13);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26B1F7DCC()
{
  v0 = type metadata accessor for Sysctl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID;
  v5 = sub_26B2120D0();
  result = __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  qword_2803F2A98 = v3;
  return result;
}

double sub_26B1F7E38()
{
  v0 = sub_26B1F7EDC(0x6F6F622E6E72656BLL, 0xED0000656D697474);
  if (v1 < 1)
  {
    return 0.0;
  }

  else
  {
    return v1 / 1000000.0 + v0;
  }
}

uint64_t sub_26B1F7EDC(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v5 = 16;
  v6 = 0;
  result = sub_26B1F802C(&v6, a1, a2, &v5);
  if (!v2)
  {
    result = v6;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_26B1F7F54()
{
  v1 = sub_26B212AD0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_13();
  v5 = sub_26B1F8138();
  if (!v0)
  {
    v7 = v5;
    v8 = v6;
    sub_26B212AC0();
    v4 = sub_26B212AA0();
    sub_26B14FF4C(v7, v8);
  }

  return v4;
}

uint64_t sub_26B1F802C(void *a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v8 = sub_26B212B10();
  v9 = sysctlbyname((v8 + 32), a1, a4, 0, 0);

  if (v9 || *a4 != 16)
  {
    sub_26B2136C0();

    MEMORY[0x26D670040](a2, a3);
    sub_26B161D38();
    swift_allocError();
    *v11 = v9;
    *(v11 + 8) = 0xD00000000000001ELL;
    *(v11 + 16) = 0x800000026B2211E0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1F8138()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v0 = sub_26B212B10();
  v1 = sysctlbyname((v0 + 32), 0, v13, 0, 0);

  if (v1 || (v7 = v13[0], v13[0] < 1))
  {
    sub_26B2136C0();

    v2 = OUTLINED_FUNCTION_6_13();
    MEMORY[0x26D670040](v2);
    v3 = 0xD00000000000001DLL;
    sub_26B161D38();
    swift_allocError();
    *v4 = v1;
    *(v4 + 8) = 0xD00000000000001DLL;
    *(v4 + 16) = 0x800000026B2211A0;
    swift_willThrow();
  }

  else
  {
    if (v13[0] >> 60)
    {
      __break(1u);
    }

    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_13();
    v9 = sub_26B212B10();
    v10 = sysctlbyname((v9 + 32), v8, v13, 0, 0);

    if (v10)
    {
      sub_26B2136C0();

      v11 = OUTLINED_FUNCTION_6_13();
      MEMORY[0x26D670040](v11);
      v3 = 0xD000000000000018;
      sub_26B161D38();
      swift_allocError();
      *v12 = v10;
      *(v12 + 8) = 0xD000000000000018;
      *(v12 + 16) = 0x800000026B2211C0;
      swift_willThrow();
    }

    else
    {
      v3 = sub_26B1F837C(v8, v7);
    }

    MEMORY[0x26D6723F0](v8, -1, -1);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_26B1F837C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x1000000000000000) >> 61 == 7)
    {
      v3 = 8 * a2;
      if (8 * a2)
      {
        if (v3 <= 14)
        {
          return sub_26B211F00();
        }

        else
        {
          v4 = sub_26B211D50();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          sub_26B211D00();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_26B211F60();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v3;
          }

          else
          {
            return a2 << 35;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1F8454()
{
  sub_26B1F8860(v0 + OBJC_IVAR____TtC15SonicFoundation6Sysctl____lazy_storage___bootUUID);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_26B1F84B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26B212A50();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_26B1F8520()
{
  result = qword_2803E87C0;
  if (!qword_2803E87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Device(_BYTE *result, int a2, int a3)
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

unint64_t get_enum_tag_for_layout_string_15SonicFoundation6DeviceV6FamilyO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_26B1F862C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26B1F8680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_26B1F86E0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t type metadata accessor for Sysctl()
{
  result = qword_280D2CF18;
  if (!qword_280D2CF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B1F876C()
{
  sub_26B1F8808();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26B1F8808()
{
  if (!qword_280D2DA60)
  {
    sub_26B2120D0();
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DA60);
    }
  }
}

uint64_t sub_26B1F8860(uint64_t a1)
{
  sub_26B1F8808();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1F88BC(uint64_t a1, uint64_t a2)
{
  sub_26B1F8808();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1F8920(uint64_t a1, uint64_t a2)
{
  sub_26B1F8808();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26B1F8984()
{
  if (!qword_2803E87C8)
  {
    v0 = sub_26B213A50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E87C8);
    }
  }
}

uint64_t sub_26B1F8A50(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 16);
  sub_26B18DE00();
  OUTLINED_FUNCTION_113_0();
  v8 = sub_26B2066E4(v5, v6, v7, a1);
  sub_26B152CD4();
  if (v8 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_26B1F8B00(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_113_0();
  v6 = a3();
  sub_26B152CD4();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26B1F8B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x2822009F8](sub_26B1F8BE0, v3, 0);
}

void sub_26B1F8BE0()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[8];
  v2 = v1[16];
  v3 = v1[17];
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_41_6();
LABEL_8:
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v4 = v1[15];
  if (v2 < v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0]();
    return;
  }

  v5 = v0[9];
  v1[17] = v3 + 1;
  sub_26B174624();
  v6 = OUTLINED_FUNCTION_9();
  v8 = sub_26B174E88(v6, v7);

  if (v8)
  {
    v10 = v0[8];
    v9 = v0[9];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v27;
    v0[3] = v28;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v10;
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v11 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v11);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v12 = v0[8];
  if ((*(v12 + 152) & 1) == 0)
  {
    v19 = swift_task_alloc();
    v0[10] = v19;
    *(v19 + 16) = v3;
    *(v19 + 24) = v12;
    v20 = swift_task_alloc();
    v0[11] = v20;
    *(v20 + 16) = v12;
    *(v20 + 24) = v3;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v21, v22);
    v23 = *(MEMORY[0x277D85A50] + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_113(v24);
    *v25 = v26;
    v25[1] = sub_26B1F8EB8;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v12 + 144) = v3;
  *(v12 + 152) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[13] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_108_1(v13);
  OUTLINED_FUNCTION_126_0();

  sub_26B1F9C48(v15, v16, v17);
}

uint64_t sub_26B1F8EB8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (!v0)
  {
    v11 = v3[10];
    v10 = v3[11];
    v12 = v3[8];

    v13 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  return result;
}

uint64_t sub_26B1F8FBC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1F909C()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_108_1(v1);

  return sub_26B1F9C48(v3, v4, v5);
}

uint64_t sub_26B1F9120(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x2822009F8](sub_26B1F916C, v2, 0);
}

void sub_26B1F916C()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[7];
  v2 = v1[16];
  v3 = v1[17];
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_41_6();
LABEL_8:
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v4 = v1[15];
  if (v2 < v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0]();
    return;
  }

  v5 = v0[8];
  v1[17] = v3 + 1;
  sub_26B174624();
  v6 = OUTLINED_FUNCTION_9();
  v8 = sub_26B174E88(v6, v7);

  if (v8)
  {
    v10 = v0[7];
    v9 = v0[8];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v26;
    v0[3] = v27;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v10;
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v11 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v11);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v12 = v0[7];
  if ((*(v12 + 152) & 1) == 0)
  {
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_114_0(v19);
    *(v20 + 16) = v3;
    *(v20 + 24) = v12;
    v21 = swift_task_alloc();
    v0[10] = v21;
    *(v21 + 16) = v12;
    *(v21 + 24) = v3;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v22, v23);
    v24 = *(MEMORY[0x277D85A50] + 4);
    v25 = swift_task_alloc();
    v0[11] = v25;
    *v25 = v0;
    v25[1] = sub_26B1F9440;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v12 + 144) = v3;
  *(v12 + 152) = 0;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_113(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_28_10(v14);
  OUTLINED_FUNCTION_126_0();

  sub_26B1FA01C(v16, v17);
}

uint64_t sub_26B1F9440()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (!v0)
  {
    v11 = v3[9];
    v10 = v3[10];
    v12 = v3[7];

    v13 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  return result;
}

uint64_t sub_26B1F9544()
{
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_10(v1);

  return sub_26B1FA01C(v2, v3);
}

uint64_t sub_26B1F95C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x2822009F8](sub_26B1F9614, v2, 0);
}

void sub_26B1F9614()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[7];
  v2 = v1[16];
  v3 = v1[17];
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_41_6();
LABEL_8:
    OUTLINED_FUNCTION_70_1();
    OUTLINED_FUNCTION_126_0();
    return;
  }

  v4 = v1[15];
  if (v2 < v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 >= v2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x2822008B0]();
    return;
  }

  v5 = v0[8];
  v1[17] = v3 + 1;
  sub_26B174624();
  v6 = OUTLINED_FUNCTION_9();
  v8 = sub_26B174E88(v6, v7);

  if (v8)
  {
    v10 = v0[7];
    v9 = v0[8];
    OUTLINED_FUNCTION_71_2();
    v0[2] = v26;
    v0[3] = v27;
    OUTLINED_FUNCTION_44_5();
    v0[4] = v10;
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_72_1();
    sub_26B174624();
    MEMORY[0x26D670290]();
    OUTLINED_FUNCTION_100_1();
    v11 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D670040](v11);

    OUTLINED_FUNCTION_56_3();
    goto LABEL_8;
  }

  v12 = v0[7];
  if ((*(v12 + 152) & 1) == 0)
  {
    v19 = swift_task_alloc();
    v20 = OUTLINED_FUNCTION_114_0(v19);
    *(v20 + 16) = v3;
    *(v20 + 24) = v12;
    v21 = swift_task_alloc();
    v0[10] = v21;
    *(v21 + 16) = v12;
    *(v21 + 24) = v3;
    OUTLINED_FUNCTION_3_28();
    sub_26B208240(v22, v23);
    v24 = *(MEMORY[0x277D85A50] + 4);
    v25 = swift_task_alloc();
    v0[11] = v25;
    *v25 = v0;
    v25[1] = sub_26B1F98E8;
    OUTLINED_FUNCTION_36_6();

    goto LABEL_19;
  }

  *(v12 + 144) = v3;
  *(v12 + 152) = 0;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_113(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_28_10(v14);
  OUTLINED_FUNCTION_126_0();

  sub_26B1FA328(v16, v17);
}

uint64_t sub_26B1F98E8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (!v0)
  {
    v11 = v3[9];
    v10 = v3[10];
    v12 = v3[7];

    v13 = OUTLINED_FUNCTION_80_1();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  return result;
}

uint64_t sub_26B1F99EC()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26B1F9AD8()
{
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_10(v1);

  return sub_26B1FA328(v2, v3);
}

uint64_t sub_26B1F9B5C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  OUTLINED_FUNCTION_9_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26B1F9C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x2822009F8](sub_26B1F9C94, v3, 0);
}

uint64_t sub_26B1F9C94()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v31 = *(v0 + 72);
  v3 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v3, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v5);
  *(v0 + 104) = v3;
  *(v0 + 56) = v3;
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_53_2(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v15, v16);
  v17 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 120) = v18;
  *v18 = v19;
  v18[1] = sub_26B1F9E28;
  v20 = *(v0 + 64);
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_101_1();

  return MEMORY[0x282200908](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_26B1F9E28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 128) = v0;

  v11 = *(v3 + 88);
  if (v0)
  {
    v12 = sub_26B1F9FC0;
  }

  else
  {
    v12 = sub_26B1F9F68;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_26B1F9F68()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  sub_26B176188();
  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B1F9FC0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_26B1FA01C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_26B1FA068, v2, 0);
}

uint64_t sub_26B1FA068()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v30 = *(v0 + 72);
  v3 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v3, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v5);
  v6 = OUTLINED_FUNCTION_117_0(v3);
  OUTLINED_FUNCTION_53_2(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v15, v16);
  v17 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 120) = v18;
  *v18 = v19;
  v18[1] = sub_26B1FA1E8;
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_101_1();

  return MEMORY[0x282200908](v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_26B1FA1E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 128) = v0;

  v11 = *(v3 + 88);
  if (v0)
  {
    v12 = sub_26B2085F0;
  }

  else
  {
    v12 = sub_26B2085F8;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_26B1FA328(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_26B1FA374, v2, 0);
}

uint64_t sub_26B1FA374()
{
  OUTLINED_FUNCTION_35_3();
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v28 = *(v0 + 72);
  v3 = sub_26B174624();
  OUTLINED_FUNCTION_6_25(v3, &qword_2803E6FC0, MEMORY[0x277D83690]);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_103_1(inited, xmmword_26B2162F0);
  sub_26B16898C(v5);
  v6 = OUTLINED_FUNCTION_117_0(v3);
  OUTLINED_FUNCTION_53_2(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_3_28();
  sub_26B208240(v15, v16);
  v17 = *(MEMORY[0x277D85A70] + 4);
  v18 = swift_task_alloc();
  *(v0 + 120) = v18;
  type metadata accessor for SQLDatabase(0);
  *v18 = v0;
  v18[1] = sub_26B1FA500;
  OUTLINED_FUNCTION_33_8();

  return MEMORY[0x282200908](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_26B1FA500()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v3 + 128) = v0;

  v11 = *(v3 + 88);
  if (v0)
  {
    v12 = sub_26B1F9FC0;
  }

  else
  {
    v12 = sub_26B1FA640;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_26B1FA640()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  sub_26B176188();
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_9_14();

  return v3();
}

uint64_t sub_26B1FA6A0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_26B1FA790;

  return v5(v1 + 16);
}

uint64_t sub_26B1FA790()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1FA888(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_26B1FA978;

  return v5(v1 + 16);
}

uint64_t sub_26B1FA978()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1FAA70()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_9_14();
  return OUTLINED_FUNCTION_48_5(v2, v3, v4);
}

uint64_t sub_26B1FAA8C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 32);
  return v2();
}

void *sub_26B1FAAB0(unint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = bswap64(a1);
  result = sub_26B2072D4(8, 0);
  result[4] = v1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26B1FAB18(unsigned int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = bswap32(a1);
  result = sub_26B2072D4(4, 0);
  *(result + 8) = v1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B1FAB80(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B208604, v2, 0);
}

uint64_t sub_26B1FABA4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1FABC8, v2, 0);
}

uint64_t sub_26B1FABC8()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[8];
  v2 = v0[7];
  *v2 = *(v0[9] + 128);
  v3 = *v1;
  v4 = *(v1 + 16);
  *(v2 + 40) = *(v1 + 32);
  *(v2 + 24) = v4;
  *(v2 + 8) = v3;

  sub_26B1E23E0(v1, (v0 + 2));
  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B1FAC4C()
{
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0x800000026B220730;
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26B1FAD20;

  return (sub_26B1DD2E8)(v0 + 16);
}

uint64_t sub_26B1FAD20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_10_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v8();
  }
}

uint64_t sub_26B1FAE4C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_26B1FAE6C, 0, 0);
}

uint64_t sub_26B1FAE6C()
{
  OUTLINED_FUNCTION_62();
  v3 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_42_5();
    sub_26B16AFCC();
    v5 = v21;
  }

  v7 = *(v0 + 64);
  *(v5 + 16) = v6 + 1;
  v8 = v5 + 80 * v6;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x800000026B220750;
  *(v8 + 104) = 0;
  *(v0 + 56) = v7;
  v9 = sub_26B213B90();
  v11 = v10;
  v12 = *(v5 + 16);
  v13 = v12 + 1;
  if (v12 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_42_5();
    sub_26B16AFCC();
    v5 = v22;
  }

  *(v5 + 16) = v13;
  v14 = v5 + 80 * v12;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  OUTLINED_FUNCTION_0_34(v14, v24, v26, v28, v30, v32);
  v15 = *(v5 + 24);
  if ((v12 + 2) > (v15 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v15);
    sub_26B16AFCC();
    v5 = v23;
  }

  *(v5 + 16) = v12 + 2;
  v16 = v5 + 80 * v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_0_34(v16, v25, v27, v29, v31, v33);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v18 = *(v3 + 16);
  if (v18)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v0 + 16) = v11;
    *(v0 + 24) = v12;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2;
    *(v0 + 48) = v18;
    v19 = swift_task_alloc();
    *(v0 + 80) = v19;
    *v19 = v0;
    v19[1] = sub_26B1FB100;
    v20 = *(v0 + 72);

    return SQLDatabase.execute(_:)(v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1FB100()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

uint64_t sub_26B1FB224()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 88);
  return v2();
}

void sub_26B1FB248(uint64_t a1)
{
  v2 = sub_26B1D0070();
  v5 = 0;
  v4 = MEMORY[0x277D839B0];
  v3 = &protocol witness table for Bool;
  sub_26B1CA544(MEMORY[0x277D839B0], &v5, v2, a1, 1, &v4, MEMORY[0x277D839B0], &v3);
}

void sub_26B1FB2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B1D0070();
  v8 = a2;
  v9 = 0;
  v7 = a3;
  sub_26B1CA544(a2, &v9, v6, a1, 1, &v8, a2, &v7);
}

void sub_26B1FB350(uint64_t a1)
{
  v2 = v1;
  v13 = sub_26B1D0070();
  v17 = 0;
  v3 = 32;
  v4 = MEMORY[0x277D837D0];
  while (v3 != 64)
  {
    v14 = v2;
    if (v3 == 32)
    {
      v5 = v4;
      v6 = MEMORY[0x277D839F8];
    }

    else
    {
      v6 = MEMORY[0x277D839F8];
      sub_26B207D54(0, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      v5 = v7;
      sub_26B207DA4();
    }

    sub_26B207CC8();
    v9 = v8;
    v10 = *(v8 + v3);
    v16[0] = v4;
    sub_26B207D54(0, &qword_2803E8850, v6, MEMORY[0x277D83D88]);
    v16[1] = v11;
    v15[0] = &protocol witness table for String;
    v15[1] = sub_26B207DA4();
    sub_26B1CA544(v5, &v17, v13, a1, 2, v16, v5, v15);
    v2 = v14;
    if (v14)
    {
      if (v3 != 32)
      {
        (*(*(v16[0] - 8) + 8))(&v16[2] + *(v9 + 32));
      }

      return;
    }

    v3 += 16;
  }
}

uint64_t sub_26B1FB5E0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  swift_beginAccess();
  a1(&v5, v1 + 112);
  result = swift_endAccess();
  if (!v2)
  {
    return v5;
  }

  return result;
}

SonicFoundation::FileCacheError_optional __swiftcall FileCacheError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case 'd':
      break;
    case 'e':
      v2 = 2;
      break;
    case 'f':
      v2 = 3;
      break;
    case 'g':
      v2 = 4;
      break;
    case 'h':
      v2 = 5;
      break;
    default:
      if (rawValue == 202)
      {
        v3 = 8;
      }

      else
      {
        v3 = 9;
      }

      if (rawValue == 201)
      {
        v4 = 7;
      }

      else
      {
        v4 = v3;
      }

      if (rawValue == 200)
      {
        v2 = 6;
      }

      else
      {
        v2 = v4;
      }

      if (!rawValue)
      {
        v2 = 0;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26B1FB74C@<X0>(uint64_t *a1@<X8>)
{
  result = FileCacheError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FileCache.Entry.url.getter()
{
  v0 = sub_26B211EF0();
  OUTLINED_FUNCTION_27(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_9();

  return v4(v3);
}

uint64_t FileCache.Entry.contentType.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for FileCache.Entry(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FileCache.Entry.pathExtension.getter()
{
  v1 = (v0 + *(type metadata accessor for FileCache.Entry(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  sub_26B2128F0();
  return OUTLINED_FUNCTION_9();
}

uint64_t FileCache.Entry.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_122_0();
  v4 = sub_26B211EF0();
  v5 = OUTLINED_FUNCTION_27(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v2, v5);
}

id FileCache.Entry.isCached.getter()
{
  OUTLINED_FUNCTION_122_0();
  v0 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v1 = sub_26B212A50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_26B1FB97C(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  v7 = sub_26B211EF0();
  *(v4 + 32) = v7;
  v8 = *(v7 - 8);
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 + 64);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 112) = *a2;
  *(v4 + 116) = *a3;

  return MEMORY[0x2822009F8](sub_26B1FBA5C, 0, 0);
}

uint64_t sub_26B1FBA5C()
{
  v1 = *(v0 + 16);
  if (sub_26B211E10())
  {
    if (qword_2803E6AD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_55_3();
LABEL_3:
  v15 = *(v0 + 112);
  v16 = *(v0 + 116);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 64) = qword_2803E87D0;

  v8 = sub_26B211EA0();
  v18 = v9;
  v19 = v8;
  *(v0 + 72) = v9;
  (*(v5 + 16))(v2, v7, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  (*(v5 + 32))(v11 + v10, v2, v4);
  v12 = v11 + ((v10 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = v15;
  *(v12 + 4) = v16;
  *(v11 + ((v10 + v3 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v17 = OUTLINED_FUNCTION_75_1(&dword_26B21E1E0);

  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_26B1FBC3C;

  return v17(v19, v18, sub_26B20804C, v11);
}

uint64_t sub_26B1FBC3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v12 + 96) = v11;
  *(v12 + 104) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_26B1FBD94()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    OUTLINED_FUNCTION_25();
    v2 = *(v0 + 56);

    OUTLINED_FUNCTION_9_14();

    v3(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1FBE00()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_10_0();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_26B1FBE5C(uint64_t a1)
{
  v109 = a1;
  v2 = v1;
  v113 = *MEMORY[0x277D85DE8];
  v3 = sub_26B211EF0();
  v106 = OUTLINED_FUNCTION_0(v3);
  v107 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_0();
  v105 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v101 = &v100 - v10;
  sub_26B1FD750(0);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_0();
  v104 = v15 - v16;
  v18 = MEMORY[0x28223BE20](v17);
  v102 = &v100 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v100 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v100 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v103 = type metadata accessor for FileCache.Entry(0);
  v30 = *(v103 + 28);
  v31 = [v28 defaultManager];
  v110 = v30;
  v32 = v2;
  v33 = v109;
  sub_26B211EA0();
  v34 = sub_26B212A50();

  LODWORD(v28) = [v31 fileExistsAtPath_];

  v35 = v27;
  v36 = v106;
  OUTLINED_FUNCTION_42_5();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = v108;
  if (!v28)
  {
    goto LABEL_5;
  }

  sub_26B211E80();
  OUTLINED_FUNCTION_2_37();
  sub_26B205B20();
  OUTLINED_FUNCTION_42_5();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  sub_26B207FF0(v25, v35, sub_26B1FD750);
  v100 = v32;
  v46 = sub_26B211E60();
  OUTLINED_FUNCTION_8_27();
  sub_26B208108(v35, v22, v47);
  OUTLINED_FUNCTION_105_1();
  result = __swift_getEnumTagSinglePayload(v48, v49, v50);
  if (result != 1)
  {
    v52 = sub_26B211E60();
    (*(v107 + 8))(v22, v36);
    v111 = 0;
    v53 = [v29 moveItemAtURL:v46 toURL:v52 error:&v111];

    if (!v53)
    {
      v86 = v111;
      sub_26B211E00();

      v72 = v29;
      goto LABEL_17;
    }

    v54 = v111;
    v41 = v108;
    v33 = v109;
    v32 = v100;
LABEL_5:
    sub_26B1FC650(v29, v33, v32);
    v55 = v29;
    if (!v41)
    {
      sub_26B158CFC();
      OUTLINED_FUNCTION_8_27();
      v89 = v102;
      sub_26B208108(v35, v102, v90);
      OUTLINED_FUNCTION_105_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v92, v93);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_2_37();
        sub_26B205B20();
      }

      else
      {
        v95 = v101;
        (*(v107 + 32))(v101, v89, v36);
        v96 = sub_26B211E60();
        v111 = 0;
        v97 = [v55 removeItemAtURL:v96 error:&v111];

        v98 = v111;
        if (v97)
        {
        }

        else
        {
          OUTLINED_FUNCTION_107_1();
          v99 = sub_26B211E00();

          swift_willThrow();
        }

        (*(v107 + 8))(v95, v36);
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_102_1();
    sub_26B2136C0();

    OUTLINED_FUNCTION_88_1();
    v111 = v57;
    v112 = v56 | 0xEF2065766F6D0000;
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v58, v59);
    v60 = sub_26B213B90();
    MEMORY[0x26D670040](v60);

    MEMORY[0x26D670040](544175136, 0xE400000000000000);
    v61 = sub_26B213B90();
    MEMORY[0x26D670040](v61);

    v62 = v111;
    v63 = v112;
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v64, v65, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_26B2162F0;
    *(v66 + 32) = v41;
    sub_26B1FD8D8();
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v67, v68);
    v69 = swift_allocError();
    *v70 = 3;
    *(v70 + 8) = v62;
    *(v70 + 16) = v63;
    OUTLINED_FUNCTION_65_2(v69, v70);
    swift_willThrow();
    v71 = sub_26B211E60();
    v111 = 0;
    v72 = v108;
    v73 = [v108 removeItemAtURL:v71 error:&v111];

    v74 = v111;
    if (!v73)
    {
      OUTLINED_FUNCTION_107_1();
      v75 = sub_26B211E00();

      swift_willThrow();
    }

    v76 = v109;
    v77 = v104;
    OUTLINED_FUNCTION_8_27();
    sub_26B208108(v76, v77, v78);
    OUTLINED_FUNCTION_105_1();
    if (__swift_getEnumTagSinglePayload(v79, v80, v81) == 1)
    {
      OUTLINED_FUNCTION_2_37();
      sub_26B205B20();
    }

    else
    {
      (*(v107 + 32))(v105, v77, v36);
      v82 = sub_26B211E60();
      v83 = sub_26B211E60();
      v111 = 0;
      v84 = [v72 moveItemAtURL:v82 toURL:v83 error:&v111];

      v85 = v111;
      if (!v84)
      {
        OUTLINED_FUNCTION_107_1();
        v87 = sub_26B211E00();

        swift_willThrow();
      }

      (*(v107 + 8))(v105, v36);
    }

LABEL_17:
    swift_willThrow();

LABEL_18:
    result = sub_26B205B20();
    v88 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

id sub_26B1FC650(void *a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26B211E60();
  v6 = a3 + *(type metadata accessor for FileCache.Entry(0) + 28);
  v7 = sub_26B211E60();
  v11[0] = 0;
  LODWORD(a3) = [a1 moveItemAtURL:v5 toURL:v7 error:v11];

  if (a3)
  {
    result = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_26B211E00();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FileCache.didFinishWriting(entry:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FC754()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[4] = v3;
  *v3 = v4;
  v3[1] = sub_26B1FC7FC;

  return sub_26B1FC8DC();
}

uint64_t sub_26B1FC7FC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1FC8DC()
{
  OUTLINED_FUNCTION_25();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_26B212090();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FC984()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 64) = *(*(v0 + 32) + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_114_0(v2);
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v3;
  v1[1] = sub_26B1FCA40;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B1FCA40()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 64);

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FCB60()
{
  OUTLINED_FUNCTION_35_3();
  v1 = v0[10];
  v2 = v0[2];
  v3 = v0[3];
  v0[11] = v2;
  v4 = sub_26B211E50();
  v6 = v5;
  v0[12] = v5;
  v7 = sub_26B15965C();
  if (v1)
  {

    v8 = v0[7];

    OUTLINED_FUNCTION_10_0();

    return v9();
  }

  else
  {
    v11 = v7;
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    sub_26B212080();
    sub_26B212070();
    v16 = v15;
    (*(v13 + 8))(v12, v14);
    if (qword_2803E6AE0 != -1)
    {
      OUTLINED_FUNCTION_11_17();
    }

    v0[13] = qword_2803F2AA0;
    v17 = swift_task_alloc();
    v0[14] = v17;
    v17[2] = v2;
    v17[3] = v4;
    v17[4] = v6;
    v17[5] = v16;
    v17[6] = v11;
    v19 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_26B1FCD38;

    return v19();
  }
}

uint64_t sub_26B1FCD38()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[16] = v0;

  if (!v0)
  {
    v10 = v3[13];
    v9 = v3[14];
    v11 = v3[12];
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1FCE54()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B1FCEB8()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1FCF14()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = v0[16];
  v6 = v0[7];

  OUTLINED_FUNCTION_10_0();

  return v7();
}

uint64_t sub_26B1FCFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_26B211EF0();
  v6 = OUTLINED_FUNCTION_27(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

double FileCache.policy.getter@<D0>(double *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SonicFoundation9FileCache_policy;
  swift_beginAccess();
  result = *(v1 + v3);
  *a1 = result;
  return result;
}

uint64_t FileCache.policy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15SonicFoundation9FileCache_policy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FileCache.__allocating_init(containerURL:temporaryContainerURL:contentType:)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  FileCache.init(containerURL:temporaryContainerURL:contentType:)(a1, a2, a3);
  return v9;
}

uint64_t *FileCache.init(containerURL:temporaryContainerURL:contentType:)(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  v79 = a2;
  v73 = *v6;
  v74 = v4;
  v9 = sub_26B211E20();
  v10 = OUTLINED_FUNCTION_0(v9);
  v72 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = OUTLINED_FUNCTION_74_1();
  sub_26B1FD750(v14);
  v16 = OUTLINED_FUNCTION_21(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_26B211EF0();
  v75 = OUTLINED_FUNCTION_0(v21);
  v76 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_22_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v66[-v29];
  v31 = *a3;
  *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_policy) = 0x40F5180000000000;
  v32 = v74;
  sub_26B1FD784();
  if (v32)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    v77 = 0xD00000000000001BLL;
    v78 = v33;
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v34, v35);
    v36 = v75;
    v37 = sub_26B213B90();
    MEMORY[0x26D670040](v37);

    v38 = v77;
    v39 = v78;
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v40, v41, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26B2162F0;
    *(v42 + 32) = v32;
    sub_26B1FD8D8();
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v43, v44);
    v45 = swift_allocError();
    *v46 = 1;
    *(v46 + 8) = v38;
    *(v46 + 16) = v39;
    OUTLINED_FUNCTION_65_2(v45, v46);
    swift_willThrow();
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    (*(v76 + 8))(a1, v36);
    v47 = *(*v6 + 48);
    v48 = *(*v6 + 52);
    swift_deallocPartialClassInstance();
    return v6;
  }

  else
  {
    v69 = v31;
    v70 = 0;
    v71 = v27;
    v73 = v5;
    v74 = v9;
    v51 = v75;
    v50 = v76;
    (*(v76 + 16))(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_containerURL, a1, v75);
    OUTLINED_FUNCTION_8_27();
    sub_26B208108(v79, v20, v52);
    v49 = v6;
    if (__swift_getEnumTagSinglePayload(v20, 1, v51) == 1)
    {
      v77 = 7368052;
      v78 = 0xE300000000000000;
      v53 = v72;
      v54 = v73;
      v55 = *(v72 + 104);
      v67 = *MEMORY[0x277CC91D8];
      v56 = v74;
      v55(v73);
      sub_26B14FCC8();
      v68 = a1;
      sub_26B211EE0();
      (*(v53 + 8))(v54, v56);
      if (__swift_getEnumTagSinglePayload(v20, 1, v51) != 1)
      {
        OUTLINED_FUNCTION_2_37();
        sub_26B205B20();
      }

      a1 = v68;
      v50 = v76;
      v57 = v72;
      v58 = v69;
      v59 = v67;
    }

    else
    {
      (*(v50 + 32))(v30, v20, v51);
      v59 = *MEMORY[0x277CC91D8];
      v57 = v72;
      v58 = v69;
    }

    (*(v50 + 32))(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v30, v51);
    *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType) = v58;
    v77 = 0x62642E6568636143;
    v78 = 0xE800000000000000;
    v60 = v73;
    v61 = v59;
    v62 = v74;
    (*(v57 + 104))(v73, v61, v74);
    sub_26B14FCC8();
    v63 = a1;
    sub_26B211ED0();
    (*(v57 + 8))(v60, v62);
    type metadata accessor for FileCache.CacheDatabase();
    v64 = swift_allocObject();
    sub_26B202938();
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    (*(v50 + 8))(v63, v51);
    *(v6 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB) = v64;
  }

  return v49;
}

id sub_26B1FD784()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26B211E60();
  v6[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_26B211E00();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B1FD874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26B1FD8D8()
{
  if (!qword_2803E87E0)
  {
    sub_26B1FD934();
    v0 = type metadata accessor for SonicError();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E87E0);
    }
  }
}

unint64_t sub_26B1FD934()
{
  result = qword_2803E87E8;
  if (!qword_2803E87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87E8);
  }

  return result;
}

uint64_t FileCache.entry(for:pathExtension:purgeUrgency:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  v8 = type metadata accessor for FileCache.Entry(0);
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_31();
  sub_26B1FD750(0);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_31();
  v14 = sub_26B211EF0();
  *(v1 + 80) = v14;
  OUTLINED_FUNCTION_1_7(v14);
  *(v1 + 88) = v15;
  v17 = *(v16 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 169) = *v3;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26B1FDACC()
{
  OUTLINED_FUNCTION_35_3();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  sub_26B1FE03C(*(v0 + 32), *(v0 + 40), *(v0 + 72));
  OUTLINED_FUNCTION_105_1();
  if (__swift_getEnumTagSinglePayload(v4, v5, v6) == 1)
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = *(v0 + 16);
    OUTLINED_FUNCTION_2_37();
    sub_26B205B20();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v8);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);

    OUTLINED_FUNCTION_20();

    return v15();
  }

  else
  {
    v17 = *(v0 + 169);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v24 = *(v0 + 48);
    v25 = *(v0 + 24);
    v26 = *(v21 + 32);
    *(v0 + 120) = v26;
    *(v0 + 128) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v19, v22, v23);
    v27 = *(v21 + 16);
    v27(v18, v25, v23);
    LODWORD(v25) = *(v24 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType);
    *(v0 + 164) = v25;
    v27(v20, v19, v23);
    v28 = *(v24 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
    type metadata accessor for NoPurgeAssertion(0);
    *(v0 + 160) = v25;
    *(v0 + 168) = v17;
    v29 = swift_task_alloc();
    *(v0 + 136) = v29;
    *v29 = v0;
    v29[1] = sub_26B1FDCF0;
    v30 = OUTLINED_FUNCTION_66_0(*(v0 + 96));

    return sub_26B1FB97C(v30, (v0 + 160), (v0 + 168), v28);
  }
}

uint64_t sub_26B1FDCF0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1FDDF8()
{
  v20 = *(v0 + 164);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v21 = *(v0 + 96);
  v22 = *(v0 + 112);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  *(v6 + v7[8]) = *(v0 + 152);
  v1(v6, v3, v5);
  *(v6 + v7[5]) = v20;
  v11 = (v6 + v7[6]);
  *v11 = v9;
  v11[1] = v8;
  v1(v6 + v7[7], v21, v5);
  sub_26B207FF0(v6, v10, type metadata accessor for FileCache.Entry);
  v12 = *(v4 + 8);
  sub_26B2128F0();
  v12(v22, v5);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 96);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);

  OUTLINED_FUNCTION_20();

  return v18();
}

uint64_t sub_26B1FDF5C()
{
  OUTLINED_FUNCTION_30();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = *(v0[11] + 8);
  v8 = OUTLINED_FUNCTION_16_2();
  v7(v8);
  (v7)(v1, v4);
  (v7)(v2, v4);

  OUTLINED_FUNCTION_10_0();
  v10 = v0[18];

  return v9();
}

uint64_t sub_26B1FE03C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v54 = a1;
  v55 = a2;
  v53 = sub_26B211E20();
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B211EF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B212790();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B212780();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26B212AD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B1FD750(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.coreURL.getter(v26);
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    sub_26B205B20();
    v27 = 1;
  }

  else
  {
    v45 = a3;
    sub_26B211E30();
    v44 = v7;
    (*(v7 + 8))(v26, v6);
    sub_26B212AC0();
    v28 = sub_26B212A90();
    v30 = v29;

    (*(v19 + 8))(v22, v18);
    if (v30 >> 60 == 15)
    {
      v27 = 1;
      a3 = v45;
    }

    else
    {
      sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540]);
      v31 = v49;
      sub_26B212770();
      sub_26B14F044(v28, v30);
      sub_26B20792C(v28, v30);
      v43 = v28;
      sub_26B156574(v28, v30);
      sub_26B212760();
      (*(v48 + 8))(v13, v31);
      sub_26B18AFE8();
      v33 = v32;
      v35 = v34;
      (*(v46 + 8))(v17, v47);
      v56 = v33;
      v57 = v35;
      v36 = v52;
      v37 = v50;
      v38 = v53;
      (*(v52 + 104))(v50, *MEMORY[0x277CC91D8], v53);
      sub_26B14FCC8();
      v39 = v51;
      sub_26B211EE0();
      (*(v36 + 8))(v37, v38);

      v40 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v40 = v54 & 0xFFFFFFFFFFFFLL;
      }

      a3 = v45;
      if (v40)
      {
        sub_26B211E70();
      }

      sub_26B156574(v43, v30);
      (*(v44 + 32))(a3, v39, v6);
      v27 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(a3, v27, 1, v6);
}

uint64_t FileCache.import(to:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FE5E0()
{
  OUTLINED_FUNCTION_35_3();
  v1 = v0[2];
  sub_26B1FBE5C(v0[3]);
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_26B1FE804;
  OUTLINED_FUNCTION_101_1();

  return sub_26B1FC8DC();
}

uint64_t sub_26B1FE804()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v12();
  }
}

void sub_26B1FE918()
{
  OUTLINED_FUNCTION_35_3();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_120_0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_4_31();
  sub_26B208240(v4, v5);
  v6 = sub_26B213B90();
  MEMORY[0x26D670040](v6);

  OUTLINED_FUNCTION_96_0();
  v7 = sub_26B213B90();
  MEMORY[0x26D670040](v7);

  OUTLINED_FUNCTION_1_35();
  sub_26B1FD874(0, v8, v9, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B2162F0;
  *(v10 + 32) = v1;
  sub_26B1FD8D8();
  OUTLINED_FUNCTION_0_42();
  sub_26B208240(v11, v12);
  OUTLINED_FUNCTION_30_11();
  v13 = swift_allocError();
  *v14 = 4;
  *(v14 + 8) = v17;
  *(v14 + 16) = v18;
  OUTLINED_FUNCTION_65_2(v13, v14);
  swift_willThrow();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_101_1();

  __asm { BRAA            X1, X16 }
}

uint64_t FileCache.temporaryDestinationURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26B1FEB90(v2, a1, a2);
  if (v3)
  {
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v5, v6, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_78_1(v7, xmmword_26B2162F0);
    sub_26B1FD8D8();
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v8, v9);
    OUTLINED_FUNCTION_30_11();
    v10 = swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0xD000000000000025;
    *(v11 + 16) = 0x800000026B221240;
    OUTLINED_FUNCTION_65_2(v10, v11);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26B1FEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v31 = sub_26B211E20();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B211EF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v9);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_26B211E60();
  v32 = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v32];

  if (v16)
  {
    v17 = v32;
    _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0x15uLL);
    v32 = v18;
    v33 = v19;
    sub_26B2128F0();
    MEMORY[0x26D670040](45, 0xE100000000000000);

    v21 = v32;
    v20 = v33;
    v22 = a2 + *(type metadata accessor for FileCache.Entry(0) + 28);
    v23 = sub_26B211E50();
    v25 = v24;
    v32 = v21;
    v33 = v20;
    sub_26B2128F0();
    MEMORY[0x26D670040](v23, v25);

    v26 = v31;
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v31);
    sub_26B14FCC8();
    sub_26B211EE0();
    (*(v5 + 8))(v8, v26);
  }

  else
  {
    v28 = v32;
    sub_26B211E00();

    swift_willThrow();
  }

  result = (*(v10 + 8))(v13, v9);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileCache.clearTemporaryContainer()()
{
  v1 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v2 = sub_26B212A50();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    sub_26B1FF058();
    if (v0)
    {
      OUTLINED_FUNCTION_1_35();
      sub_26B1FD874(0, v4, v5, MEMORY[0x277D84560]);
      OUTLINED_FUNCTION_40();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_78_1(v6, xmmword_26B2162F0);
      sub_26B1FD8D8();
      OUTLINED_FUNCTION_0_42();
      sub_26B208240(v7, v8);
      OUTLINED_FUNCTION_30_11();
      v9 = swift_allocError();
      *v10 = 2;
      *(v10 + 8) = 0xD000000000000025;
      *(v10 + 16) = 0x800000026B221270;
      OUTLINED_FUNCTION_65_2(v9, v10);
      swift_willThrow();
    }
  }
}

id sub_26B1FF058()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26B211E60();
  v6[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_26B211E00();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B1FF160()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
  v3 = OBJC_IVAR____TtC15SonicFoundation9FileCache_policy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_26B1FF224;

  return sub_26B1FF444();
}

uint64_t sub_26B1FF224()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v9 = v8;
  *(v10 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_9_14();

    return v14(v3);
  }
}

uint64_t sub_26B1FF340()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_1_35();
  sub_26B1FD874(0, v2, v3, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_78_1(v4, xmmword_26B2162F0);
  sub_26B1FD8D8();
  OUTLINED_FUNCTION_0_42();
  sub_26B208240(v5, v6);
  OUTLINED_FUNCTION_30_11();
  v7 = swift_allocError();
  *v8 = 5;
  *(v8 + 8) = 0xD000000000000021;
  *(v8 + 16) = 0x800000026B2212A0;
  OUTLINED_FUNCTION_65_2(v7, v8);
  swift_willThrow();
  OUTLINED_FUNCTION_10_0();

  return v9();
}

uint64_t sub_26B1FF444()
{
  OUTLINED_FUNCTION_25();
  v1[4] = v0;
  v1[3] = v2;
  v3 = sub_26B212090();
  v1[5] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1FF4F0()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 64) = *(*(v0 + 32) + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_114_0(v2);
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v1 = v3;
  v1[1] = sub_26B1FF5AC;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B1FF5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 80) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1FF6C0()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  *(v0 + 88) = v5;
  sub_26B212080();
  sub_26B212070();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17();
  }

  *(v0 + 96) = qword_2803F2AA0;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7 - v4;
  v11 = OUTLINED_FUNCTION_75_1(&dword_26B21E1B0);

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_26B1FF818;

  return v11(&unk_26B21E1A8, v8);
}

uint64_t sub_26B1FF818()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[15] = v0;

  if (!v0)
  {
    v11 = v5[12];
    v12 = v5[13];

    v5[16] = v3;
  }

  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1FF930()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[11];
  v2 = v0[7];

  OUTLINED_FUNCTION_9_14();
  v4 = v0[16];

  return v3(v4);
}

uint64_t sub_26B1FF99C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[15];
  v5 = v0[7];

  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t FileCache.clean(markAllPurgeable:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FFA2C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v1 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_26B1FFB00;

  return sub_26B1FFF4C(sub_26B202B10, v4);
}

uint64_t sub_26B1FFB00()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_10_0();

    return v13();
  }
}

uint64_t sub_26B1FFC1C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_10_0();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_26B1FFC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v23 = a5;
  v27 = a3;
  v8 = sub_26B211E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_26B211EF0();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26[0] = a1;
  v26[1] = a2;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D8], v8);
  sub_26B14FCC8();
  sub_26B211ED0();
  (*(v9 + 8))(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v18 = sub_26B212A50();

  LOBYTE(a2) = [v17 fileExistsAtPath_];

  if (a2)
  {
    v19 = v24;
    if (v27 & 1) != 0 || (v23)
    {
      LODWORD(v26[0]) = *(a4 + OBJC_IVAR____TtC15SonicFoundation9FileCache_contentType);
      v28 = 0;
      v21 = v25;
      sub_26B158E70(v26, &v28);
      if (v21)
      {
      }

      (*(v13 + 8))(v16, v19);
      return 0;
    }

    else
    {
      (*(v13 + 8))(v16, v24);
      return 1;
    }
  }

  else
  {
    (*(v13 + 8))(v16, v24);
    return 0;
  }
}

uint64_t sub_26B1FFF4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1FFF64()
{
  OUTLINED_FUNCTION_12();
  v0[6] = *(v0[5] + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  v0[7] = v2;
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v2 = v3;
  v2[1] = sub_26B200024;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B200024()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 64) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B200138()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  *(v0 + 72) = v1;
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17();
  }

  *(v0 + 80) = qword_2803F2AA0;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v8 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_113(v4);
  *v5 = v6;
  v5[1] = sub_26B200248;

  return v8();
}

uint64_t sub_26B200248()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[13] = v0;

  if (!v0)
  {
    v9 = v3[10];
    v10 = v3[11];
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B200350()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B2003B0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[13];
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t FileCache.deinit()
{
  v1 = OBJC_IVAR____TtC15SonicFoundation9FileCache_containerURL;
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_27(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC15SonicFoundation9FileCache_temporaryContainerURL, v2);
  v5 = *(v0 + OBJC_IVAR____TtC15SonicFoundation9FileCache_cacheDB);

  return v0;
}

uint64_t FileCache.__deallocating_deinit()
{
  FileCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B200510()
{
  sub_26B207884(0, &qword_2803E8828, type metadata accessor for NoPurgeAssertion, type metadata accessor for WeakCache);
  swift_allocObject();
  result = sub_26B205B74();
  qword_2803E87D0 = result;
  return result;
}

uint64_t sub_26B200580(uint64_t a1, int a2, unsigned __int8 a3, uint64_t a4)
{
  v9 = sub_26B211EF0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  v21 = a2;
  v20 = a3;
  v14 = type metadata accessor for NoPurgeAssertion(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  result = sub_26B200888(v12, &v21, &v20, a4);
  if (v4)
  {
    return v18;
  }

  return result;
}

uint64_t sub_26B2006A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26B2006CC, 0, 0);
}

uint64_t sub_26B2006CC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[5];
  v2 = v0[4];
  v0[7] = *(v0[6] + 16);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;

  v4 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_26B200760()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[7];
  v1 = v0[8];
  v0[9] = sub_26B1FB5E0(sub_26B2080E8);
  v0[10] = 0;
  v3 = v0[7];
  v4 = v0[8];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B200824()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  v2 = v0[8];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[10];

  return v3();
}

uint64_t sub_26B200888(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v40 = a4;
  v7 = sub_26B211EF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B185E18();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v13) = *a3;
  v38 = *a2;
  v39 = v13;
  v15 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  v16 = sub_26B212A50();

  LODWORD(a3) = [v15 fileExistsAtPath_];

  if (!a3)
  {
    v37 = v9;
    v28 = v14;
    v29 = v10;
LABEL_6:
    v30 = *(v8 + 16);
    v25 = v41;
    v30(v41 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL, a1, v7);
    v31 = v39;
    *(v25 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_contentType) = v38;
    *(v25 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_purgeUrgency) = v31;
    v32 = v40;
    *(v25 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB) = v40;
    v33 = sub_26B213020();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v33);
    v30(v29, a1, v7);
    v34 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    *(v35 + 4) = v32;
    (*(v8 + 32))(&v35[v34], v29, v7);
    swift_retain_n();
    sub_26B161608();

    (*(v8 + 8))(a1, v7);
    return v25;
  }

  v17 = v44;
  sub_26B15907C();
  if (!v17)
  {
    v37 = v9;
    v28 = v14;
    v29 = v10;
    v44 = 0;
    goto LABEL_6;
  }

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_26B2136C0();

  v42 = 0x742064656C696146;
  v43 = 0xEF206B72616D206FLL;
  sub_26B208240(&qword_2803E87D8, MEMORY[0x277CC9260]);
  v18 = v7;
  v19 = sub_26B213B90();
  v20 = a1;
  MEMORY[0x26D670040](v19);

  MEMORY[0x26D670040](0xD000000000000011, 0x800000026B221540);
  v21 = v42;
  v22 = v43;
  sub_26B1FD874(0, qword_2803E6EB0, sub_26B162128, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B2162F0;
  *(v23 + 32) = v17;
  sub_26B1FD8D8();
  sub_26B208240(&qword_2803E87F0, sub_26B1FD8D8);
  swift_allocError();
  *v24 = 7;
  *(v24 + 8) = v21;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  swift_willThrow();

  (*(v8 + 8))(v20, v18);
  type metadata accessor for NoPurgeAssertion(0);
  v25 = v41;
  v26 = *(*v41 + 48);
  v27 = *(*v41 + 52);
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t sub_26B200D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26B178E9C;

  return sub_26B200E18(a5, 0);
}

uint64_t sub_26B200E18(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B200E30()
{
  OUTLINED_FUNCTION_12();
  v0[5] = *(v0[4] + 16);
  v1 = *(MEMORY[0x277D857C8] + 4);

  v2 = swift_task_alloc();
  v0[6] = v2;
  type metadata accessor for SQLDatabase(0);
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_57_2();
  *v2 = v3;
  v2[1] = sub_26B200EF0;
  v4 = OUTLINED_FUNCTION_43_4();

  return MEMORY[0x282200430](v4, v5, v6, v7, v8);
}

uint64_t sub_26B200EF0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 56) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B201004()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 64) = v2;
  v3 = sub_26B211E50();
  v5 = v4;
  *(v0 + 72) = v4;
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17();
  }

  v6 = *(v0 + 112);
  *(v0 + 80) = qword_2803F2AA0;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v6;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  v12 = OUTLINED_FUNCTION_75_1(&dword_26B21E148);

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_113(v8);
  *v9 = v10;
  v9[1] = sub_26B201138;

  return v12();
}

uint64_t sub_26B201138()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[13] = v0;

  if (!v0)
  {
    v10 = v3[10];
    v9 = v3[11];
    v11 = v3[9];
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B20125C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];

  v5 = v0[13];
  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B2012DC()
{
  sub_26B185E18();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B211EF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v29 = OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL;
  v12 = *(v6 + 16);
  v27 = &v25 - v10;
  v12(&v25 - v10, v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_fileURL, v5);
  v13 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_contentType);
  v25 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_purgeUrgency);
  v26 = v13;
  v28 = OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB;
  v14 = *(v0 + OBJC_IVAR____TtC15SonicFoundationP33_B9CBA2339CBA72CBC3BAD017AFA7BBA016NoPurgeAssertion_cacheDB);

  sub_26B212FE0();
  v15 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
  v12(v9, v11, v5);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = (v16 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v16 + v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v6 + 32))(v19 + v16, v9, v5);
  v20 = v19 + v17;
  v21 = v25;
  *v20 = v26;
  *(v20 + 4) = v21;
  *(v19 + v18) = v14;

  sub_26B2025F0(0, 0, v4, &unk_26B21E110, v19);

  sub_26B205B20();
  v22 = *(v6 + 8);
  v22(v27, v5);
  v22((v0 + v29), v5);
  v23 = *(v0 + v28);

  return v0;
}

uint64_t sub_26B2015AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  *(v7 + 240) = a6;
  *(v7 + 236) = a5;
  *(v7 + 80) = a4;
  *(v7 + 88) = a7;
  v8 = sub_26B2126A0();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v11 = sub_26B212AD0();
  *(v7 + 120) = v11;
  v12 = *(v11 - 8);
  *(v7 + 128) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v14 = MEMORY[0x277D837D0];
  sub_26B207D54(0, &qword_2803E79A0, MEMORY[0x277D837D0], MEMORY[0x277D857B8]);
  *(v7 + 144) = v15;
  v16 = *(v15 - 8);
  *(v7 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  sub_26B207D54(0, &qword_2803E79A8, v14, MEMORY[0x277D857A8]);
  *(v7 + 168) = v18;
  v19 = *(v18 - 8);
  *(v7 + 176) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26B2017FC, 0, 0);
}

uint64_t sub_26B2017FC()
{
  OUTLINED_FUNCTION_30();
  v18 = *MEMORY[0x277D85DE8];
  if (qword_2803E6AD8 != -1)
  {
    v1 = OUTLINED_FUNCTION_55_3();
  }

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[10];
  OUTLINED_FUNCTION_6_25(v1, &qword_280D2DA88, MEMORY[0x277D837D0]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26B2162F0;

  *(v7 + 32) = sub_26B211EA0();
  *(v7 + 40) = v8;
  sub_26B2024C8(v7);

  sub_26B213090();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_26_0();
  v11(v10);
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_7_21(v13);
  v14 = v0[23];
  v15 = v0[21];
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_26B201980()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 192);
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B201A98()
{
  OUTLINED_FUNCTION_62();
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 80);
  if (v1 == sub_26B211EA0() && v2 == v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v6 = sub_26B213E30();

    if ((v6 & 1) == 0)
    {
      __break(1u);
LABEL_8:
      v7 = *(v0 + 160);
      v8 = *(v0 + 136);
      v9 = *(v0 + 112);
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

      OUTLINED_FUNCTION_10_0();
      v10 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_22_8();

      __asm { BRAA            X1, X16 }
    }
  }

  v13 = *(v0 + 80);
  v14 = [objc_opt_self() defaultManager];
  sub_26B211EA0();
  sub_26B212A50();
  OUTLINED_FUNCTION_107_1();

  LOBYTE(v13) = [v14 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  v15 = *(v0 + 236);
  if (v15 < 0)
  {
    __break(1u);
  }

  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = *(v0 + 80);
  *(v0 + 232) = dword_26B21DF00[*(v0 + 240)] | v15;
  *(v0 + 32) = sub_26B211EA0();
  *(v0 + 40) = v20;
  sub_26B212AC0();
  sub_26B14FCC8();
  v21 = sub_26B2134C0();
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_16_2();
  v24(v23);

  v25 = v21 ? (v21 + 32) : 0;
  v26 = fsctl(v25, 0xC0084A44uLL, (v0 + 232), 0);

  if (v26 && (v28 = MEMORY[0x26D66FAE0](v27)) != 0)
  {
    v29 = *(v0 + 80);
    v30 = sub_26B1591D8(v28);
    swift_willThrow();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    sub_26B2136C0();
    v31 = *(v0 + 72);

    OUTLINED_FUNCTION_88_1();
    *(v0 + 48) = v33;
    *(v0 + 56) = v32 | 0xEF206B72616D0000;
    sub_26B211EF0();
    OUTLINED_FUNCTION_4_31();
    sub_26B208240(v34, v35);
    v36 = sub_26B213B90();
    MEMORY[0x26D670040](v36);

    MEMORY[0x26D670040](0x6772757020736120, 0xED0000656C626165);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    OUTLINED_FUNCTION_1_35();
    sub_26B1FD874(0, v39, v40, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26B2162F0;
    *(v41 + 32) = v30;
    sub_26B1FD8D8();
    OUTLINED_FUNCTION_0_42();
    sub_26B208240(v42, v43);
    v44 = swift_allocError();
    *v45 = 8;
    *(v45 + 8) = v37;
    *(v45 + 16) = v38;
    OUTLINED_FUNCTION_65_2(v44, v45);
    swift_willThrow();
    OUTLINED_FUNCTION_46_4();
    sub_26B2128F0();
    v46 = v44;
    v47 = sub_26B212680();
    v48 = sub_26B213330();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 208);
    if (v49)
    {
      v51 = *(v0 + 200);
      v75 = *(v0 + 104);
      v76 = *(v0 + 96);
      v77 = *(v0 + 112);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v78[0] = v54;
      *v52 = 136446466;
      v55 = sub_26B206E50(v51, v50, v78);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2114;
      v56 = v44;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v57;
      *v53 = v57;
      _os_log_impl(&dword_26B149000, v47, v48, "Failed to mark %{public}s purgeable: %{public}@", v52, 0x16u);
      OUTLINED_FUNCTION_47_4();
      sub_26B205B20();
      OUTLINED_FUNCTION_94_0();
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_94_0();

      (*(v75 + 8))(v77, v76);
    }

    else
    {
      v66 = *(v0 + 104);
      v65 = *(v0 + 112);
      v67 = *(v0 + 96);
      v68 = *(v0 + 208);

      (*(v66 + 8))(v65, v67);
    }

    v69 = *(MEMORY[0x277D85798] + 4);
    v70 = swift_task_alloc();
    *(v0 + 192) = v70;
    *v70 = v0;
    OUTLINED_FUNCTION_7_21();
    v71 = *(v0 + 184);
    v72 = *(v0 + 168);
    v73 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_22_8();

    return MEMORY[0x2822003E8]();
  }

  else
  {
LABEL_21:
    v58 = swift_task_alloc();
    *(v0 + 216) = v58;
    *v58 = v0;
    v58[1] = sub_26B2020D0;
    v59 = *(v0 + 88);
    v60 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_66_0(*(v0 + 80));
    OUTLINED_FUNCTION_22_8();

    return sub_26B200E18(v61, v62);
  }
}

uint64_t sub_26B2020D0()
{
  OUTLINED_FUNCTION_12();
  v19 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  v2[28] = v0;

  if (v0)
  {
    v8 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v2[26];

    v13 = *(MEMORY[0x277D85798] + 4);
    v14 = swift_task_alloc();
    v2[24] = v14;
    *v14 = v6;
    OUTLINED_FUNCTION_7_21();
    v15 = v2[23];
    v16 = v2[21];
    v17 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_54_2();

    return MEMORY[0x2822003E8]();
  }
}

uint64_t sub_26B202274()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = v0[28];
  OUTLINED_FUNCTION_46_4();
  sub_26B2128F0();
  v2 = v1;
  v3 = sub_26B212680();
  v4 = sub_26B213330();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  if (v5)
  {
    v7 = v0[25];
    v8 = v0[13];
    v28 = v0[12];
    v29 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v9 = 136446466;
    v12 = sub_26B206E50(v7, v6, v30);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_26B149000, v3, v4, "Failed to mark %{public}s purgeable: %{public}@", v9, 0x16u);
    OUTLINED_FUNCTION_47_4();
    sub_26B205B20();
    OUTLINED_FUNCTION_94_0();
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_94_0();

    (*(v8 + 8))(v29, v28);
  }

  else
  {
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v18 = v0[26];

    v19 = *(v16 + 8);
    v20 = OUTLINED_FUNCTION_16_2();
    v21(v20);
  }

  v22 = *(MEMORY[0x277D85798] + 4);
  v23 = swift_task_alloc();
  v0[24] = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_7_21();
  v24 = v0[23];
  v25 = v0[21];
  v26 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54_2();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_26B2024C8(uint64_t a1)
{
  sub_26B207D54(0, &qword_2803E7998, MEMORY[0x277D837D0], MEMORY[0x277D85780]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v1;
  v10 = a1;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x277D85778]);
  return sub_26B2130C0();
}

uint64_t sub_26B2025F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B185E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B208108(a3, v12, sub_26B185E18);
  v13 = sub_26B213020();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26B205B20();
  }

  else
  {
    sub_26B213010();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B212F70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B212B10() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26B202894()
{
  v0 = sub_26B2012DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B2028E8()
{
  v1 = 0;
  type metadata accessor for ActorQueue();
  swift_allocObject();
  result = ActorQueue.init(ordering:)(&v1);
  qword_2803F2AA0 = result;
  return result;
}

uint64_t sub_26B202938()
{
  OUTLINED_FUNCTION_93_1();
  v3 = sub_26B211EF0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B185E18();
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_1();
  v14 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
  (*(v6 + 16))(v9, v0, v3);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v6 + 32))(v17 + v15, v9, v3);
  *(v17 + v16) = 1;
  sub_26B161990();
  v19 = v18;
  v20 = *(v6 + 8);
  v21 = OUTLINED_FUNCTION_26_0();
  v22(v21);
  *(v1 + 16) = v19;
  return v1;
}

unint64_t sub_26B202B38()
{
  result = qword_2803E87F8;
  if (!qword_2803E87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E87F8);
  }

  return result;
}

unint64_t sub_26B202B8C(uint64_t a1)
{
  result = sub_26B202BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B202BB4()
{
  result = qword_2803E8800;
  if (!qword_2803E8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileCacheError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FileCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B202D94()
{
  result = sub_26B211EF0();
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

uint64_t sub_26B202EB8()
{
  result = sub_26B211EF0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NoPurgeAssertion(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B202F68()
{
  result = sub_26B211EF0();
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

uint64_t sub_26B20301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26B203040, 0, 0);
}

uint64_t sub_26B203040()
{
  OUTLINED_FUNCTION_10_3();
  if (qword_2803E6AE0 != -1)
  {
    OUTLINED_FUNCTION_11_17();
  }

  v2 = v0[3];
  v1 = v0[4];
  v0[5] = qword_2803F2AA0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = OUTLINED_FUNCTION_75_1(&dword_26B21E218);

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26B20314C;

  return v6(&unk_26B21E210, v3);
}

uint64_t sub_26B20314C()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[5];
    v15 = v5[6];
    v16 = v5[2];

    *v16 = v3;

    OUTLINED_FUNCTION_20();

    return v17();
  }
}

uint64_t sub_26B203288()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[5];
  v2 = v0[6];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[8];

  return v3();
}

uint64_t sub_26B2032EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for SQLDatabase.Location(0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B203384, 0, 0);
}

uint64_t sub_26B203384()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = sub_26B211EF0();
  OUTLINED_FUNCTION_27(v4);
  (*(v5 + 16))(v2, v3);
  swift_storeEnumTagMultiPayload();
  *(v0 + 49) = 16777473;
  *(v0 + 53) = 0;
  *(v0 + 56) = 0;
  *(v0 + 60) = 2;
  v6 = type metadata accessor for SQLDatabase(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_26B2034AC;
  v10 = OUTLINED_FUNCTION_66_0(*(v0 + 96));

  return SQLDatabase.init(location:options:)(v10, v0 + 49);
}

uint64_t sub_26B2034AC()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[14] = v3;
  v5[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_13(&unk_26B21E248);
    v17 = v14;
    v15 = swift_task_alloc();
    v5[16] = v15;
    *v15 = v9;
    v15[1] = sub_26B203620;

    return v17();
  }
}

uint64_t sub_26B203620()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B203720()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_10_0();

  return v3();
}

void sub_26B20377C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 136);
  if (v1 == *(v0 + 80))
  {
    OUTLINED_FUNCTION_119_0();
    OUTLINED_FUNCTION_20();

    v2();
  }

  else if (v1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_77_0();
    *(v0 + 16) = 0xD000000000000129;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = v3;
    *(v0 + 48) = 0;
    v4 = swift_task_alloc();
    *(v0 + 152) = v4;
    *v4 = v0;
    v4[1] = sub_26B203880;
    v5 = *(v0 + 112);

    SQLDatabase.execute(_:)(v0 + 16);
  }
}

uint64_t sub_26B203880()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_26B1A85A8(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    OUTLINED_FUNCTION_13(dword_26B21E250);
    v17 = v12;
    v13 = swift_task_alloc();
    *(v3 + 168) = v13;
    *v13 = v7;
    v13[1] = sub_26B203A08;
    v14 = *(v3 + 112);
    v15 = OUTLINED_FUNCTION_66_0(*(v3 + 80));

    return v17(v15);
  }
}

uint64_t sub_26B203A08()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B203B00()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B203B54()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[12];

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B203BB8()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[14];

  v2 = v0[20];
  v3 = v0[12];

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B203C1C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[14];

  v2 = v0[22];
  v3 = v0[12];

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B203C80(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 688) = a6;
  *(v6 + 680) = a1;
  *(v6 + 672) = a5;
  *(v6 + 664) = a4;
  *(v6 + 656) = a3;
  return MEMORY[0x2822009F8](sub_26B203CB0, 0, 0);
}

uint64_t sub_26B203CB0()
{
  OUTLINED_FUNCTION_62();
  sub_26B16AFCC();
  v4 = v3;
  OUTLINED_FUNCTION_82_1(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v53;
  }

  v6 = *(v1 + 672);
  v7 = *(v1 + 664);
  OUTLINED_FUNCTION_52_3();
  *(v8 + 32) = 0xD000000000000050;
  *(v8 + 40) = 0x800000026B221690;
  *(v8 + 104) = 0;
  v9 = MEMORY[0x277D837D0];
  *(v1 + 440) = MEMORY[0x277D837D0];
  *(v1 + 448) = &protocol witness table for String;
  *(v1 + 416) = v10;
  *(v1 + 424) = v6;
  sub_26B16BCF8(v1 + 416, v1 + 16);
  OUTLINED_FUNCTION_104_1();
  v11 = *(v4 + 24);
  v12 = v2 + 2;
  sub_26B2128F0();
  if (v12 > (v11 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v4 = v54;
  }

  v13 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v13);
  __swift_destroy_boxed_opaque_existential_1((v1 + 416));
  OUTLINED_FUNCTION_34_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v55;
  }

  v14 = *(v1 + 680);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_68_1(v4 + v12 * v15, v64, v67, v71, v74);
  v16 = MEMORY[0x277D839F8];
  *(v17 + 104) = 0;
  *(v1 + 480) = v16;
  *(v1 + 488) = &protocol witness table for Double;
  *(v1 + 456) = v18;
  sub_26B16BCF8(v1 + 456, v1 + 96);
  *(v1 + 168) = 1;
  OUTLINED_FUNCTION_83_1();
  if (!(v21 ^ v22 | v20))
  {
    OUTLINED_FUNCTION_18_14(v19);
    sub_26B16AFCC();
    v4 = v56;
  }

  v23 = OUTLINED_FUNCTION_13_21();
  memcpy(v23, (v1 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 456));
  OUTLINED_FUNCTION_34_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v57;
  }

  v24 = *(v1 + 672);
  v25 = *(v1 + 664);
  OUTLINED_FUNCTION_52_3();
  *(v26 + 32) = 0xD000000000000046;
  *(v26 + 40) = 0x800000026B2216F0;
  OUTLINED_FUNCTION_50_5(v65, v68, v72);
  *(v27 + 104) = 0;
  *(v1 + 520) = v9;
  *(v1 + 528) = &protocol witness table for String;
  *(v1 + 496) = v28;
  *(v1 + 504) = v24;
  sub_26B16BCF8(v1 + 496, v1 + 176);
  *(v1 + 248) = 1;
  v29 = *(v4 + 24);
  sub_26B2128F0();
  if (v12 + 2 > (v29 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v4 = v58;
  }

  v30 = OUTLINED_FUNCTION_13_21();
  memcpy(v30, (v1 + 176), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 496));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v59;
  }

  v31 = *(v1 + 688);
  *(v4 + 16) = v0;
  v32 = v4 + 80 * v29;
  *(v32 + 32) = 8236;
  *(v32 + 40) = 0xE200000000000000;
  OUTLINED_FUNCTION_50_5(v65, v68, v72);
  v33 = MEMORY[0x277D84D38];
  *(v34 + 104) = 0;
  *(v1 + 560) = v33;
  *(v1 + 568) = &protocol witness table for UInt64;
  *(v1 + 536) = v35;
  sub_26B16BCF8(v1 + 536, v1 + 256);
  *(v1 + 328) = 1;
  v36 = *(v4 + 24);
  if ((v29 + 2) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v36);
    sub_26B16AFCC();
    v4 = v60;
  }

  v37 = OUTLINED_FUNCTION_13_21();
  memcpy(v37, (v1 + 256), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 536));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v61;
  }

  v38 = *(v1 + 680);
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_68_1(v4 + v29 * v39, v65, v68, v72, v75);
  *(v40 + 104) = 0;
  *(v1 + 600) = MEMORY[0x277D839F8];
  *(v1 + 608) = &protocol witness table for Double;
  *(v1 + 576) = v41;
  sub_26B16BCF8(v1 + 576, v1 + 336);
  *(v1 + 408) = 1;
  v42 = *(v4 + 24);
  if ((v29 + 2) > (v42 >> 1))
  {
    OUTLINED_FUNCTION_18_14(v42);
    sub_26B16AFCC();
    v4 = v62;
  }

  v43 = OUTLINED_FUNCTION_13_21();
  memcpy(v43, (v1 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 576));
  OUTLINED_FUNCTION_79_1();
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v63;
  }

  OUTLINED_FUNCTION_73_2();
  v45 = v4 + v29 * v44;
  *(v45 + 32) = 15145;
  *(v45 + 40) = 0xE200000000000000;
  *(v45 + 96) = v76;
  *(v45 + 64) = v69;
  *(v45 + 80) = v73;
  *(v45 + 48) = v66;
  *(v45 + 104) = 0;
  v70 = MEMORY[0x277D84F90];
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v47 = *(v70 + 16);
  if (v47)
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v1 + 616) = v24;
    *(v1 + 624) = 0;
    *(v1 + 632) = &protocol witness table for Double;
    *(v1 + 640) = 0xD000000000000046;
    *(v1 + 648) = v47;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v1 + 696) = v48;
    *v48 = v49;
    v48[1] = sub_26B2041D4;
    v50 = *(v1 + 656);
    OUTLINED_FUNCTION_22_8();

    return SQLDatabase.execute(_:)(v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2041D4()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = v2[87];
  v6 = *v1;
  *v4 = *v1;
  v3[88] = v0;

  sub_26B1A85A8(v3[77], v2[78], v2[79], v2[80], *(v3 + 648));
  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_26B20434C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 704);
  return v2();
}

uint64_t sub_26B204370(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 304) = a4;
  *(v5 + 312) = a5;
  *(v5 + 89) = a3;
  *(v5 + 296) = a2;
  return MEMORY[0x2822009F8](sub_26B204398, 0, 0);
}

uint64_t sub_26B204398()
{
  OUTLINED_FUNCTION_62();
  v3 = MEMORY[0x277D84F90];
  sub_26B16AFCC();
  v5 = v4;
  OUTLINED_FUNCTION_82_1(v4);
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v31;
  }

  v7 = *(v0 + 89);
  OUTLINED_FUNCTION_52_3();
  *(v8 + 32) = 0xD00000000000002FLL;
  *(v8 + 40) = 0x800000026B2213F0;
  v9 = MEMORY[0x277D839B0];
  *(v8 + 104) = 0;
  *(v0 + 200) = v9;
  *(v0 + 208) = &protocol witness table for Bool;
  *(v0 + 176) = v10;
  sub_26B16BCF8(v0 + 176, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_83_1();
  if (!(v13 ^ v14 | v12))
  {
    OUTLINED_FUNCTION_18_14(v11);
    sub_26B16AFCC();
    v5 = v32;
  }

  v15 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  OUTLINED_FUNCTION_34_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v33;
  }

  v16 = *(v0 + 304);
  v17 = *(v0 + 312);
  OUTLINED_FUNCTION_52_3();
  *(v18 + 32) = 0xD000000000000014;
  *(v18 + 40) = 0x800000026B221420;
  OUTLINED_FUNCTION_50_5(v37, v38, v39);
  *(v19 + 104) = 0;
  *(v0 + 240) = MEMORY[0x277D837D0];
  *(v0 + 248) = &protocol witness table for String;
  *(v0 + 216) = v20;
  *(v0 + 224) = v17;
  sub_26B16BCF8(v0 + 216, v0 + 96);
  *(v0 + 168) = 1;
  v21 = *(v5 + 24);
  v22 = v1 + 2;
  sub_26B2128F0();
  if (v22 > (v21 >> 1))
  {
    OUTLINED_FUNCTION_24_8();
    sub_26B16AFCC();
    v5 = v34;
  }

  v23 = OUTLINED_FUNCTION_13_21();
  memcpy(v23, (v0 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_34_2();
  if (v6)
  {
    OUTLINED_FUNCTION_4_21();
    v5 = v35;
  }

  OUTLINED_FUNCTION_73_2();
  v25 = v5 + v22 * v24;
  *(v25 + 32) = 59;
  *(v25 + 40) = 0xE100000000000000;
  OUTLINED_FUNCTION_0_34(v25, v36, v37, v38, v39, v40);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v27 = *(v3 + 16);
  if (v27)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_41_1();

    *(v0 + 256) = v17;
    *(v0 + 264) = v21;
    *(v0 + 272) = 0x800000026B221420;
    *(v0 + 280) = v2;
    *(v0 + 288) = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    *(v0 + 320) = v28;
    *v28 = v29;
    v28[1] = sub_26B2046AC;
    v30 = *(v0 + 296);

    return SQLDatabase.execute(_:)(v0 + 256);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B2046AC()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = v2[40];
  v6 = *v1;
  *v4 = *v1;
  v3[41] = v0;

  sub_26B1A85A8(v3[32], v2[33], v2[34], v2[35], *(v3 + 288));
  if (v0)
  {
    OUTLINED_FUNCTION_12_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_26B204824()
{
  OUTLINED_FUNCTION_10_0();
  v1 = *(v0 + 328);
  return v2();
}

uint64_t sub_26B204848(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 192) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  return MEMORY[0x2822009F8](sub_26B20486C, 0, 0);
}

uint64_t sub_26B20486C()
{
  v2 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v4 = v3;
  OUTLINED_FUNCTION_82_1(v3);
  if (v5)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v25;
  }

  v6 = *(v0 + 192);
  OUTLINED_FUNCTION_73_2();
  v8 = v4 + v1 * v7;
  *(v8 + 32) = 0xD00000000000002DLL;
  *(v8 + 40) = 0x800000026B2214A0;
  v9 = MEMORY[0x277D839F8];
  *(v8 + 104) = 0;
  *(v0 + 120) = v9;
  *(v0 + 128) = &protocol witness table for Double;
  *(v0 + 96) = v10;
  sub_26B16BCF8(v0 + 96, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_83_1();
  if (!(v13 ^ v14 | v12))
  {
    OUTLINED_FUNCTION_18_14(v11);
    sub_26B16AFCC();
    v4 = v26;
  }

  v15 = OUTLINED_FUNCTION_13_21();
  OUTLINED_FUNCTION_123_0(v15);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v16 = *(v4 + 16);
  if (v16 >= *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v4 = v27;
  }

  OUTLINED_FUNCTION_73_2();
  v18 = v4 + v16 * v17;
  *(v18 + 32) = 0xD000000000000027;
  *(v18 + 40) = 0x800000026B2214D0;
  OUTLINED_FUNCTION_0_34(v18, v28, v30, v31, v32, v33);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v20 = *(v2 + 16);
  *(v0 + 200) = v20;
  if (v20)
  {

    OUTLINED_FUNCTION_43_1();
    sub_26B2128F0();
    sub_26B2128F0();
    v21 = v16 + 1;
    *(v0 + 224) = v21;
    *(v0 + 232) = v2;
    *(v0 + 208) = v4;
    *(v0 + 216) = v16;
    *(v0 + 136) = v4;
    *(v0 + 144) = v16;
    *(v0 + 152) = v21;
    *(v0 + 160) = v2;
    *(v0 + 168) = v20 != 0;

    OUTLINED_FUNCTION_13(&unk_26B21C060);
    v29 = v22;
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_26B204B00;
    v24 = *(v0 + 184);

    return v29(v0 + 136);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B204B00()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v10 = *(v9 + 240);
  v11 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;

  if (v0)
  {
    v13 = OUTLINED_FUNCTION_91_1();
    sub_26B1A85A8(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_10_0();

    return v18();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_91_1();
    *(v7 + 89) = v3;
    *(v7 + 248) = v5;
    sub_26B1A85A8(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v25, v26, v27);
  }
}

uint64_t sub_26B204C3C()
{
  v1 = 0.0;
  if ((*(v0 + 89) & 1) == 0)
  {
    v1 = *(v0 + 248);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  if (v1 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 1.84467441e19)
  {
    **(v0 + 176) = v1;
    OUTLINED_FUNCTION_20();
    return v2();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26B204CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26B204CE4, 0, 0);
}

uint64_t sub_26B204CE4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13(&unk_26B21C058);
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_26B204D98;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, 0x746172656D756E65, 0xE900000000000065, v7, v4, v5);
}

uint64_t sub_26B204D98()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B204E78()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  *(v0 + 696) = v3;
  *(v0 + 688) = v4;
  OUTLINED_FUNCTION_77_0();
  *(v0 + 560) = 0xD000000000000027;
  *(v0 + 568) = v5;
  OUTLINED_FUNCTION_13(dword_26B21E198);
  v10 = v6;
  *(v0 + 680) = v2;
  *(v0 + 576) = 0u;
  *(v0 + 592) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 704) = v7;
  *v7 = v8;
  v7[1] = sub_26B204F4C;

  return v10(v0 + 472, v0 + 560);
}

uint64_t sub_26B204F4C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 704);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 712) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B205044()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  *(v0 + 720) = v1;
  *(v0 + 728) = v2;
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  *(v0 + 736) = v3;
  *(v0 + 744) = v4;
  v5 = *(v0 + 504);
  *(v0 + 752) = v5;
  v6 = *(v0 + 512);
  *(v0 + 89) = v6;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  *(v0 + 144) = sub_26B207C60;
  *(v0 + 152) = 0;

  sub_26B1A8558(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_13(&unk_26B21A188);
  v10 = v7;
  v8 = swift_task_alloc();
  *(v0 + 760) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_20_11(v8);

  return v10();
}

uint64_t sub_26B205140()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_9_17();
  *v3 = v2;
  v5 = *(v4 + 760);
  *v3 = *v1;
  *(v2 + 768) = v6;
  *(v2 + 776) = v7;
  *(v2 + 784) = v8;
  *(v2 + 90) = v9;
  *(v2 + 792) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B205250()
{
  OUTLINED_FUNCTION_35_3();
  v3 = *(v0 + 776);
  if (!v3)
  {
    OUTLINED_FUNCTION_45_3();
    v15 = *(v0 + 720);
    v16 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v16;
    v17 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v17;
    OUTLINED_FUNCTION_9_24();
    sub_26B205B20();

    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_20();
LABEL_5:
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 792);
  v5 = *(v0 + 696);
  v6 = (*(v0 + 688))(*(v0 + 768), *(v0 + 776), (*(v0 + 784) == 1.0) & ~*(v0 + 90));
  if (v4)
  {
    v7 = *(v0 + 89);
    v8 = *(v0 + 752);
    v9 = *(v0 + 744);
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    v12 = *(v0 + 720);
    v13 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v13;
    v14 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v14;
    OUTLINED_FUNCTION_9_24();
    sub_26B205B20();

    sub_26B1A85A8(v11, v10, v9, v8, v7);

    OUTLINED_FUNCTION_10_0();
    goto LABEL_5;
  }

  if (v6)
  {

    OUTLINED_FUNCTION_13(&unk_26B21A188);
    v20 = swift_task_alloc();
    *(v0 + 760) = v20;
    *v20 = v0;
    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_78();

    __asm { BR              X0 }
  }

  v23 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  v25 = v24;
  v27 = *(v24 + 16);
  v26 = *(v24 + 24);
  v28 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_18_14(v26);
    sub_26B16AFCC();
    v25 = v56;
  }

  v29 = *(v0 + 768);
  OUTLINED_FUNCTION_77_0();
  *(v25 + 16) = v28;
  v30 = v25 + 80 * v27;
  *(v30 + 32) = 0xD000000000000023;
  *(v30 + 40) = v31;
  *(v30 + 104) = 0;
  *(v0 + 544) = MEMORY[0x277D837D0];
  *(v0 + 552) = &protocol witness table for String;
  *(v0 + 520) = v32;
  *(v0 + 528) = v3;
  sub_26B16BCF8(v0 + 520, v0 + 16);
  OUTLINED_FUNCTION_104_1();
  v33 = *(v25 + 24);
  v34 = v27 + 2;
  sub_26B2128F0();
  if (v34 > (v33 >> 1))
  {
    sub_26B16AFCC();
    v25 = v57;
  }

  *(v25 + 16) = v34;
  OUTLINED_FUNCTION_123_0((v25 + 80 * v28 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v35 = *(v25 + 16);
  if (v35 >= *(v25 + 24) >> 1)
  {
    sub_26B16AFCC();
    v25 = v58;
  }

  *(v25 + 16) = v35 + 1;
  v36 = v25 + 80 * v35;
  *(v36 + 32) = 59;
  *(v36 + 40) = 0xE100000000000000;
  v37 = *(v0 + 464);
  OUTLINED_FUNCTION_50_5(*(v0 + 416), *(v0 + 432), *(v0 + 448));
  *(v38 + 104) = 0;
  *(v0 + 640) = v25;
  *v39 = 0u;
  *(v0 + 664) = v23;
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v41 = *(*(v0 + 664) + 16);
  if (v41)
  {

    v42 = *(v0 + 640);
    v43 = *(v0 + 648);
    v44 = *(v0 + 656);
    v45 = *(v0 + 664);
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v46 = v42;
    v1 = v44;
    v2 = v45;
  }

  else
  {
    v43 = *(v0 + 656);
    if (!v43)
    {
      __break(1u);
      return result;
    }

    v46 = *(v0 + 648);
    v47 = *(v0 + 656);
    sub_26B2128F0();

    OUTLINED_FUNCTION_71_1();
    v48 = *(v0 + 640);
    v49 = *(v0 + 656);
    v50 = *(v0 + 664);
  }

  *(v0 + 600) = v46;
  *(v0 + 608) = v43;
  *(v0 + 616) = v1;
  *(v0 + 624) = v2;
  *(v0 + 632) = v41 != 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 800) = v51;
  *v51 = v52;
  v51[1] = sub_26B2057CC;
  v53 = *(v0 + 680);
  OUTLINED_FUNCTION_78();

  return SQLDatabase.Transaction.execute(_:)(v54);
}

uint64_t sub_26B2056C0()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 672) = *(v0 + 792);
  sub_26B162128();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B20573C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45_3();
  v1 = *(v0 + 720);

  OUTLINED_FUNCTION_120();
  v2 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v2;
  v3 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v3;
  OUTLINED_FUNCTION_9_24();
  sub_26B205B20();
  v4 = *(v0 + 792);
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B2057CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 800);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v3 + 808) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_99_1();
    OUTLINED_FUNCTION_13(&unk_26B21A188);
    v15 = v12;
    v13 = swift_task_alloc();
    *(v3 + 760) = v13;
    *v13 = v7;
    OUTLINED_FUNCTION_20_11();

    return v15();
  }
}

uint64_t sub_26B205928()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45_3();
  v1 = *(v0 + 720);

  OUTLINED_FUNCTION_120();
  v2 = *(v0 + 112);
  *(v0 + 352) = *(v0 + 96);
  *(v0 + 368) = v2;
  v3 = *(v0 + 144);
  *(v0 + 384) = *(v0 + 128);
  *(v0 + 400) = v3;
  OUTLINED_FUNCTION_9_24();
  sub_26B205B20();
  v4 = *(v0 + 808);
  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B2059B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B2059F0()
{
  OUTLINED_FUNCTION_30();
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v2);
  v5 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v4 + 64);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v8 + 4);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_26B1760A8;
  v13 = OUTLINED_FUNCTION_111_1();

  return sub_26B2015AC(v13, v14, v15, v16, v9, v11, v10);
}

uint64_t sub_26B205B20()
{
  v1 = OUTLINED_FUNCTION_93_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_27(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26B205B74()
{
  sub_26B1FD874(0, &qword_2803E8830, sub_26B2078F8, type metadata accessor for ActorBox);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_26B205BF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_26B16E800(a2, a3), (v9 & 1) != 0))
  {
    sub_26B208108(*(v7 + 56) + 8 * v8, &v16, sub_26B166480);
    v10 = 0;
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

  v17 = v10;
  sub_26B208108(&v16, &v14, sub_26B207850);
  if (v15)
  {
    sub_26B205B20();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_26B205B20();
    if (Strong)
    {
LABEL_14:
      sub_26B205B20();
      return Strong;
    }
  }

  if (a4)
  {

    v12 = a4(v11);
    if (!v4)
    {
      Strong = v12;
      if (v12)
      {
        swift_weakInit();
        v15 = 0;
        sub_26B2128F0();
        sub_26B16EC98(&v14);
        sub_26B193F8C(a4);
        goto LABEL_14;
      }
    }

    sub_26B205B20();
    sub_26B193F8C(a4);
  }

  else
  {
    sub_26B205B20();
    return 0;
  }

  return Strong;
}

uint64_t sub_26B205E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B207D54(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  sub_26B185E18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v8 + 32))(&v18[v17], v11, v7);
  sub_26B2128F0();

  sub_26B161608();
}

uint64_t sub_26B205FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_26B206020, 0, 0);
}

uint64_t sub_26B206020()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = *(*(v0 + 40) + 16);

  v1 = OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v1, v2, 0);
}

uint64_t sub_26B206090()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  sub_26B2061B8((v2 + 112), v3, v1);
  v0[9] = 0;
  v4 = v0[8];
  swift_endAccess();

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B20614C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_27_10(v2, &qword_2803E79B0, MEMORY[0x277D837D0]);
  sub_26B213070();
  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B2061B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  sub_26B207D54(0, qword_2803E79B8, MEMORY[0x277D837D0], MEMORY[0x277D85760]);
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = v29 - v8;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v10 = *a1;
    v11 = sub_26B2128F0();
    v9 = sub_26B1F8B00(v11, sub_26B18DD80, sub_26B206A98);
  }

  v12 = *(v9 + 16);
  v32 = (v6 + 8);
  result = sub_26B2128F0();
  v14 = 0;
  for (i = (v9 + 40); ; i += 2)
  {
    if (v12 == v14)
    {
    }

    if (v14 >= *(v9 + 16))
    {
      break;
    }

    v16 = *a1;
    if (*(*a1 + 16))
    {
      v18 = *(i - 1);
      v17 = *i;
      sub_26B2128F0();
      v19 = sub_26B16E800(v18, v17);
      if (v20)
      {
        sub_26B208108(*(v16 + 56) + 8 * v19, &v37, sub_26B166480);
        sub_26B207FF0(&v37, v39, sub_26B166480);
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          v21 = sub_26B16E800(v18, v17);
          if (v22)
          {
            v23 = v21;
            v24 = *a1;
            v31 = v22;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = *a1;
            v29[1] = *(v36 + 24);
            sub_26B207884(0, &qword_2803E6E58, sub_26B166480, MEMORY[0x277D843B8]);
            sub_26B2139B0();
            v25 = v36;
            v26 = *(*(v36 + 48) + 16 * v23 + 8);

            sub_26B207FF0(*(v25 + 56) + 8 * v23, &v37, sub_26B166480);
            sub_26B166480(0);
            v27 = MEMORY[0x277D837D0];
            sub_26B2139C0();
            LOBYTE(v22) = v31;
            *a1 = v25;
          }

          else
          {
            v37 = 0;
            v27 = MEMORY[0x277D837D0];
          }

          LOBYTE(v38) = (v22 & 1) == 0;
          sub_26B205B20();
          v37 = v18;
          v38 = v17;
          sub_26B207D54(0, &qword_2803E79B0, v27, MEMORY[0x277D85788]);
          v28 = v33;
          sub_26B213060();
          (*v32)(v28, v34);
        }

        result = sub_26B205B20();
      }

      else
      {
      }
    }

    ++v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B20656C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = bswap64(a4);
  v8 = sub_26B2072D4(8, 0);
  v8[4] = v7;
  v9 = (v8 + 4);
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v11 = v8[2];
      while (v11 != v10)
      {
        OUTLINED_FUNCTION_90_0(v9);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      a3 = v11;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = v8;
  a1[1] = a3;
  v13 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_26B206628(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = bswap32(a4);
  v8 = sub_26B2072D4(4, 0);
  *(v8 + 8) = v7;
  v9 = (v8 + 4);
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v10 = 0;
      v11 = v8[2];
      while (v11 != v10)
      {
        OUTLINED_FUNCTION_90_0(v9);
        if (v12)
        {
          goto LABEL_11;
        }
      }

      a3 = v11;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = v8;
  a1[1] = a3;
  v13 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_26B2066E4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B20683C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  if (!a2)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = a3;
  if (!a3)
  {
LABEL_12:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v9;
    result[4] = v6;
    result[5] = v8;
    return v9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = v5;
    v18 = v4;
    v19 = result;
    v11 = 0;
    v12 = *(v7 + 16);
    v13 = (v7 + 48);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = v12;
LABEL_11:
        v4 = v18;
        result = v19;
        v5 = v17;
        goto LABEL_12;
      }

      if (v11 >= *(v7 + 16))
      {
        break;
      }

      v15 = *(v13 - 2);
      v14 = *(v13 - 1);
      v16 = *v13;
      v13 += 24;
      v21[0] = v15;
      v21[1] = v14;
      v22 = v16;

      v6(&v20, v21);

      *(a2 + 8 * v11++) = v20;
      if (v9 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B206940(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B206A98(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_26B2128F0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_26B2128F0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B206BF4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B206CE0;

  return v8(v1);
}

uint64_t sub_26B206CE0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B206DC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B206E50(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_26B2128F0();
  v6 = sub_26B206F8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26B15CF98(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B206F48()
{
  result = qword_2803E8820;
  if (!qword_2803E8820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E8820);
  }

  return result;
}

unint64_t sub_26B206F8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B20708C(a5, a6);
    *a1 = v9;
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
    result = sub_26B213780();
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

uint64_t sub_26B20708C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B2070D8(a1, a2);
  sub_26B2071F0(&unk_287BBB120);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26B2070D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26B212C40())
  {
    result = sub_26B2072D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26B2136A0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26B213780();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26B2071F0(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26B207344(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B2072D4(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_6_25(a1, &qword_280D2CCD0, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26B207344(char *result, int64_t a2, char a3, char *a4)
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
    sub_26B207D54(0, &qword_280D2CCD0, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_26B207450()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v6[1] = sub_26B178E9C;
  v8 = OUTLINED_FUNCTION_22_14();

  return sub_26B204370(v8, v9, v2, v4, v3);
}

uint64_t sub_26B207500()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v1[1] = sub_26B178E9C;
  v3 = OUTLINED_FUNCTION_22_14();

  return sub_26B175FB0(v3, v4);
}

uint64_t sub_26B207594()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_26B212790();
  sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540]);
  result = sub_26B212750();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B207668(uint64_t a1, uint64_t a2)
{
  result = sub_26B211D10();
  if (!result || (result = sub_26B211D40(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26B211D30();
      sub_26B212790();
      sub_26B208240(&qword_2803E8860, MEMORY[0x277CC5540]);
      return sub_26B212750();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B207750()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27_10(v2, &qword_2803E79B0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_26B178E9C;
  v11 = OUTLINED_FUNCTION_111_1();

  return sub_26B205FFC(v11, v12, v13, v8, v9, v14);
}

void sub_26B207884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B20792C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_26B207668(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_26B207594();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

void *sub_26B2079C8(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_26B2072D4(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B207A44()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_10(v4);
  *v5 = v6;
  v5[1] = sub_26B178E9C;
  v7 = OUTLINED_FUNCTION_22_14();

  return sub_26B204CC0(v7, v8, v2, v3);
}

uint64_t sub_26B207AE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_26B205BF0(a1, *a2, a2[1], a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_26B207B20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B2085FC;

  return sub_26B1FA6A0(a2);
}

uint64_t sub_26B207BC0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26B1B3A4C;

  return sub_26B1FA888(a2);
}

void sub_26B207C60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26B1FB5B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void sub_26B207CC8()
{
  if (!qword_2803E8848)
  {
    sub_26B207D54(255, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E8848);
    }
  }
}

void sub_26B207D54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26B207DA4()
{
  result = qword_2803E8858;
  if (!qword_2803E8858)
  {
    sub_26B207D54(255, &qword_2803E8850, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8858);
  }

  return result;
}

uint64_t sub_26B207E38()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v4[1] = sub_26B178E9C;
  v6 = OUTLINED_FUNCTION_22_14();

  return sub_26B204848(v6, v7, v2);
}

uint64_t sub_26B207ED4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_86();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_37_6(v1);

  return sub_26B1752E8(v3, v4, v5);
}

uint64_t sub_26B207F60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B207FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_9();
  v8(v7);
  return a2;
}

uint64_t sub_26B20804C()
{
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_26B200580(v0 + v6, *(v0 + ((v6 + *(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL)), *(v0 + ((v6 + *(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4), *(v0 + ((v6 + *(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26B208108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_27(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_9();
  v8(v7);
  return a2;
}

uint64_t sub_26B208164()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_93_1();
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_21(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_10(v7);
  *v8 = v9;
  v8[1] = sub_26B178E9C;
  v10 = OUTLINED_FUNCTION_22_14();

  return sub_26B200D78(v10, v11, v5, v6, v12);
}

uint64_t sub_26B208240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B208288()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_93_1();
  v1 = sub_26B211EF0();
  OUTLINED_FUNCTION_1_7(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_10(v7);
  *v8 = v9;
  v8[1] = sub_26B178E9C;
  v10 = OUTLINED_FUNCTION_22_14();

  return sub_26B20301C(v10, v11, v5, v12, v6);
}

uint64_t sub_26B208388()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3_10(v1);
  *v2 = v3;
  v2[1] = sub_26B178E9C;
  v4 = OUTLINED_FUNCTION_22_14();

  return sub_26B2032EC(v4, v5, v0);
}

uint64_t sub_26B20841C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_86();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_37_6(v1);

  return sub_26B1752E8(v3, v4, v5);
}

uint64_t sub_26B2084A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B208538()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = v0[5];
  v5 = *(v0 + 6);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B178E9C;
  v9 = OUTLINED_FUNCTION_22_14();

  return sub_26B203C80(v4, v9, v10, v2, v3, v5);
}

void OUTLINED_FUNCTION_27_10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85788];

  sub_26B207D54(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_44_5()
{

  JUMPOUT(0x26D670040);
}

void OUTLINED_FUNCTION_45_3()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 112);

  return MEMORY[0x282200DE8](0x6C7070612E6D6F63, 0xEF63696E6F532E65, 0x746C7561666564, 0xE700000000000000);
}

__n128 OUTLINED_FUNCTION_53_2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + 112) = a1;
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_68_1(uint64_t a1@<X8>, __int128 a2, __int128 a3, __int128 a4, uint64_t a5)
{
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 96) = a5;
  *(a1 + 64) = a3;
  *(a1 + 80) = a4;
  *(a1 + 48) = a2;
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_26B2139E0();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_26B2136C0();
}

void OUTLINED_FUNCTION_72_1()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_78_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  v1 = v0[28];
  v2 = v0[29];
  result = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  return result;
}

void OUTLINED_FUNCTION_94_0()
{

  JUMPOUT(0x26D6723F0);
}

void OUTLINED_FUNCTION_96_0()
{

  JUMPOUT(0x26D670040);
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_26B2138F0();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 608);
  v4 = *(v0 + 616);
  v5 = *(v0 + 624);
  v6 = *(v0 + 632);

  return sub_26B1A85A8(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_100_1()
{
}

void OUTLINED_FUNCTION_102_1()
{
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
  *(v2 - 104) = 0;
  *(v2 - 96) = 0xE000000000000000;
}

__n128 *OUTLINED_FUNCTION_103_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[7];
  v4 = v2[8];
  result = v2[5];
  v6 = v2[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_117_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 104) = a1;
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_26B211EF0();
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  v2 = *(v0 + 96);
  **(v0 + 64) = *(v0 + 112);
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return sub_26B2136C0();
}

uint64_t OUTLINED_FUNCTION_122_0()
{
  result = type metadata accessor for FileCache.Entry(0);
  v1 = *(result + 28);
  return result;
}

void *OUTLINED_FUNCTION_123_0(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

unint64_t OUTLINED_FUNCTION_125_0()
{

  return sub_26B162128();
}

SonicFoundation::MarkdownTable __swiftcall MarkdownTable.init(headers:rows:)(Swift::OpaquePointer headers, Swift::OpaquePointer rows)
{
  *v2 = 0;
  *(v2 + 8) = headers;
  *(v2 + 16) = rows;
  result.headers = rows;
  result._updatingHeaders = headers._rawValue;
  return result;
}

{
  rawValue = rows._rawValue;
  v5 = v2;
  v6 = *(headers._rawValue + 2);
  if (v6)
  {
    v17 = v2;
    v19 = MEMORY[0x277D84F90];
    sub_26B15B518();
    v7 = v19;
    v8 = (headers._rawValue + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v19 + 16);
      v12 = *(v19 + 24);
      sub_26B2128F0();
      if (v11 >= v12 >> 1)
      {
        sub_26B15B518();
      }

      *(v19 + 16) = v11 + 1;
      v13 = v19 + 24 * v11;
      *(v13 + 32) = 3;
      *(v13 + 40) = v9;
      *(v13 + 48) = v10;
      v8 += 2;
      --v6;
    }

    while (v6);

    v5 = v17;
    rawValue = rows._rawValue;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *v5 = 0;
  *(v5 + 8) = v7;
  *(v5 + 16) = rawValue;
  result.rows._rawValue = v16;
  result.headers._rawValue = v15;
  result._updatingHeaders = v14;
  return result;
}

uint64_t MarkdownTable.Header.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t MarkdownTable.Header.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_26B2128F0();
  return v1;
}

uint64_t MarkdownTable.Header.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MarkdownTable.Header.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a2;
  if (v4 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v7)
  {
    return 0;
  }

  if (v5 == *(a2 + 1) && v6 == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t sub_26B208DF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_26B2128F0();
  return MarkdownTable.headers.setter(v2);
}

uint64_t MarkdownTable.headers.setter(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  sub_26B208E60(v2);
}

void sub_26B208E60(uint64_t a1)
{
  v2 = v1;
  sub_26B20A5DC();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84480];
  sub_26B20A74C(0, &qword_2803E8880, &type metadata for MarkdownTable.Header, MEMORY[0x277D84480]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  v65[0] = *(v2 + 8);
  v65[4] = a1;
  v16 = MEMORY[0x277D83940];
  sub_26B20A74C(0, &qword_2803E8890, &type metadata for MarkdownTable.Header, MEMORY[0x277D83940]);
  sub_26B20A698(&qword_2803E8898, &qword_2803E8890, v16);
  sub_26B20A6E8();
  v17 = v8;
  sub_26B2129E0();
  *v2 = 1;
  v54 = v12;
  (*(v12 + 16))(v8, v15, v11);
  v18 = *(v5 + 44);
  v19 = sub_26B20A698(&qword_2803E8888, &qword_2803E8880, v9);
  v53 = v15;
  v20 = v18;
  sub_26B213220();
  v21 = &qword_2803E6CD0;
  v55 = v8;
  v56 = v2;
  v58 = v18;
  v59 = v11;
  v57 = v19;
  while (1)
  {
    sub_26B213270();
    if (*(v17 + v20) == v65[0])
    {
      sub_26B20A79C(v17);
      (*(v54 + 8))(v53, v11);
      *v2 = 0;
      return;
    }

    v22 = v21;
    v23 = sub_26B2132E0();
    v25 = *v24;
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = *(v24 + 40);
    v30 = *(v24 + 41);
    v60 = v24[1];
    v61 = v26;
    v62 = v27;
    v63 = v28;
    v64 = v29;
    sub_26B20A73C();
    v23(v65, 0);
    sub_26B213280();
    v31 = *(v2 + 16);
    v32 = *(v31 + 16);
    if (v30)
    {
      break;
    }

    if (v32)
    {
      v65[0] = MEMORY[0x277D84F90];
      sub_26B15B4F8(0, v32, 0);
      if (v25 < 0)
      {
        goto LABEL_31;
      }

      v21 = v22;
      v33 = v65[0];
      v43 = 32;
      v44 = MEMORY[0x277D837D0];
      while (1)
      {
        v45 = *(v31 + v43);
        v46 = *(v45 + 16);
        if (v46 < v25)
        {
          goto LABEL_29;
        }

        v47 = *(v31 + v43);
        sub_26B2128F0();
        if (!swift_isUniquelyReferenced_nonNull_native() || v46 >= *(v45 + 24) >> 1)
        {
          sub_26B16B750();
          v45 = v48;
        }

        v49 = (v45 + 16 * v25);
        sub_26B20A74C(0, v21, v44, MEMORY[0x277D83D88]);
        swift_arrayDestroy();
        memmove(v49 + 6, v49 + 4, 16 * (*(v45 + 16) - v25));
        ++*(v45 + 16);
        v49[4] = 0;
        v49[5] = 0;
        v51 = *(v33 + 16);
        v50 = *(v33 + 24);
        v65[0] = v33;
        if (v51 >= v50 >> 1)
        {
          sub_26B15B4F8((v50 > 1), v51 + 1, 1);
          v33 = v65[0];
        }

        *(v33 + 16) = v51 + 1;
        *(v33 + 8 * v51 + 32) = v45;
        v43 += 8;
        if (!--v32)
        {
LABEL_24:
          sub_26B20A744();

          v17 = v55;
          v2 = v56;
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    sub_26B20A744();

    v33 = MEMORY[0x277D84F90];
    v21 = v22;
LABEL_26:
    *(v2 + 16) = v33;
    v20 = v58;
    v11 = v59;
  }

  if (!v32)
  {
    goto LABEL_25;
  }

  v65[0] = MEMORY[0x277D84F90];
  sub_26B15B4F8(0, v32, 0);
  if (v25 < 0)
  {
    goto LABEL_30;
  }

  v33 = v65[0];
  v34 = 32;
  v21 = v22;
  while (1)
  {
    v35 = *(v31 + v34);
    sub_26B2128F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16BB60(v35);
      v35 = v42;
    }

    v36 = *(v35 + 16);
    if (v25 >= v36)
    {
      break;
    }

    v37 = v36 - 1;
    v38 = (v35 + 16 * v25);
    v39 = v38[5];
    memmove(v38 + 4, v38 + 6, 16 * (v36 - 1 - v25));
    *(v35 + 16) = v37;

    v65[0] = v33;
    v41 = *(v33 + 16);
    v40 = *(v33 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_26B15B4F8((v40 > 1), v41 + 1, 1);
      v33 = v65[0];
    }

    *(v33 + 16) = v41 + 1;
    *(v33 + 8 * v41 + 32) = v35;
    v34 += 8;
    if (!--v32)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t MarkdownTable.rows.setter(uint64_t a1)
{
  sub_26B209558();
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t (*MarkdownTable.headers.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  sub_26B2128F0();
  return sub_26B2094B8;
}

uint64_t sub_26B2094B8(void *a1, char a2)
{
  *(a1[1] + 8) = *a1;
  v2 = a1[2];
  if (a2)
  {
    sub_26B2128F0();
    sub_26B208E60(v2);
  }

  else
  {
    sub_26B208E60(a1[2]);
  }
}

uint64_t sub_26B20952C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_26B2128F0();
  return MarkdownTable.rows.setter(v2);
}

void sub_26B209558()
{
  if ((*v0 & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + 16);
    v3 = (v1 + 32);
    while (v2)
    {
      v4 = *v3++;
      --v2;
      if (*(v4 + 16) != *(*(v0 + 8) + 16))
      {
        __break(1u);
        return;
      }
    }
  }
}

uint64_t (*MarkdownTable.rows.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  sub_26B2128F0();
  return sub_26B2095E0;
}

uint64_t sub_26B2095E0(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_26B209558();
  v6 = a1[2];
  if (a2)
  {
    sub_26B2128F0();

    *(v5 + 16) = v4;
  }

  else
  {

    *(v5 + 16) = v4;
  }

  return result;
}

SonicFoundation::MarkdownTable::RenderOptions __swiftcall MarkdownTable.RenderOptions.init(fitColumns:raw:)(Swift::Bool fitColumns, Swift::Bool raw)
{
  *v2 = fitColumns;
  v2[1] = raw;
  result.fitColumns = fitColumns;
  return result;
}

uint64_t sub_26B20A070(uint64_t result, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if ((a4 & 1) == 0)
  {
    sub_26B2128F0();
    return v9;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(a6 + 16) <= a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = a6 + 24 * a3;
  v13 = *(v12 + 32);
  v14 = *(v12 + 48);
  result = swift_beginAccess();
  if (*(*a8 + 16) > a3)
  {
    v15 = *(*a8 + 8 * a3 + 32);
    switch(v13)
    {
      case 1:
        sub_26B2128F0();
        result = sub_26B212BB0();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_16;
        }

        sub_26B212CC0();
        sub_26B2128F0();
        MEMORY[0x26D670040](v9, a2);

        sub_26B14FCC8();
        v9 = sub_26B2134D0();

        break;
      case 2:
        sub_26B2128F0();
        result = sub_26B212BB0();
        if (__OFSUB__(v15, result))
        {
          goto LABEL_17;
        }

        v16 = sub_26B212CC0();
        sub_26B2128F0();
        MEMORY[0x26D670040](v9, a2);

        v9 = v16;
        break;
      default:
        sub_26B14FCC8();
        return sub_26B2134D0();
    }

    return v9;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_26B20A2B0()
{
  result = qword_2803E8868;
  if (!qword_2803E8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8868);
  }

  return result;
}

unint64_t sub_26B20A308()
{
  result = qword_2803E8870;
  if (!qword_2803E8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8870);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MarkdownTable.Header.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MarkdownTable.RenderOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MarkdownTable.RenderOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_26B20A5DC()
{
  if (!qword_2803E8878)
  {
    v0 = MEMORY[0x277D84480];
    sub_26B20A74C(255, &qword_2803E8880, &type metadata for MarkdownTable.Header, MEMORY[0x277D84480]);
    sub_26B20A698(&qword_2803E8888, &qword_2803E8880, v0);
    v1 = sub_26B213910();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E8878);
    }
  }
}

uint64_t sub_26B20A698(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26B20A74C(255, a2, &type metadata for MarkdownTable.Header, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B20A6E8()
{
  result = qword_2803E88A0;
  if (!qword_2803E88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88A0);
  }

  return result;
}

void sub_26B20A74C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B20A79C(uint64_t a1)
{
  sub_26B20A5DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Mergeable.merge(other:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a4 - 8) + 16);
  v8(a1, v4, a4);
  v8(a2, a3, a4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a4);
}

uint64_t Array<A>.merged()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B2133E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - v8;
  v12 = a1;
  OUTLINED_FUNCTION_24();
  sub_26B212F50();
  swift_getWitnessTable();
  if (sub_26B2132C0())
  {
    OUTLINED_FUNCTION_24();
    return sub_26B212EC0();
  }

  else
  {
    v12 = a1;
    sub_26B2128F0();
    v14 = sub_26B212340();
    OUTLINED_FUNCTION_24();
    v13 = sub_26B212EC0();
    sub_26B212EF0();
    sub_26B212E90();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_24();
    sub_26B212330();
    while (1)
    {
      v11 = v14;
      swift_getWitnessTable();
      if (sub_26B2132C0())
      {

        OUTLINED_FUNCTION_3_30();
        return v13;
      }

      swift_beginAccess();
      sub_26B212320();
      swift_endAccess();
      result = __swift_getEnumTagSinglePayload(v9, 1, a2);
      if (result == 1)
      {
        break;
      }

      sub_26B20AACC(v9, &v14, &v13, a2, a3);
      (*(*(a2 - 8) + 8))(v9, a2);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B20AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45[1] = a3;
  v59 = a2;
  v7 = sub_26B2133E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = v45 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v45 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v48 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v47 = v45 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v60 = v45 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v45 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = *(v17 + 16);
  v17 += 16;
  v28 = v29;
  v58 = v45 - v30;
  v29();
  v63 = sub_26B212EC0();
  v50 = a5 + 8;
  v51 = (v17 + 16);
  v57 = v17;
  v61 = (v17 - 8);
  v49 = (v8 + 16);
  v55 = a5;
  v56 = (v8 + 8);
  v52 = v16;
  v46 = v27;
  while (1)
  {
    swift_beginAccess();
    sub_26B212330();
    sub_26B212320();
    swift_endAccess();
    if (__swift_getEnumTagSinglePayload(v16, 1, a4) == 1)
    {
      break;
    }

    v31 = v7;
    v32 = *v51;
    (*v51)(v27, v16, a4);
    v33 = v60;
    v34 = v53;
    v35 = v58;
    (*(v55 + 8))(v60, v53, v27, a4);
    v36 = *v61;
    (*v61)(v35, a4);
    (v28)(v35, v33, a4);
    v37 = v54;
    (*v49)(v54, v34, v31);
    if (__swift_getEnumTagSinglePayload(v37, 1, a4) == 1)
    {
      v38 = v37;
      v39 = *v56;
      (*v56)(v34, v31);
      v36(v60, a4);
      v36(v27, a4);
      v39(v38, v31);
    }

    else
    {
      v40 = v47;
      v32(v47, v37, a4);
      (v28)(v48, v40, a4);
      sub_26B212F50();
      sub_26B212F00();
      v41 = v40;
      v42 = v60;
      v27 = v46;
      v36(v41, a4);
      (*v56)(v34, v31);
      v36(v42, a4);
      v36(v27, a4);
    }

    v7 = v31;
    v16 = v52;
  }

  (*v56)(v16, v7);
  v43 = v58;
  (v28)(v48, v58, a4);
  swift_beginAccess();
  sub_26B212F50();
  sub_26B212F00();
  swift_endAccess();
  v62 = v63;
  swift_beginAccess();
  swift_getWitnessTable();
  sub_26B212300();
  swift_endAccess();

  return (*v61)(v43, a4);
}

uint64_t Array<A>.merging(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a2 + 16);
  v7 = sub_26B212EB0();

  v8 = Array<A>.merged()(v7, v6, a3);

  *v3 = v8;
  return result;
}

uint64_t Array<A>.merge()(uint64_t a1, uint64_t a2)
{
  v3 = Array<A>.merged()(*v2, *(a1 + 16), a2);

  *v2 = v3;
  return result;
}

uint64_t Array<A>.merged()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    OUTLINED_FUNCTION_0_44();
    sub_26B20C24C(0, v3, v4, MEMORY[0x277CFB8D8]);
    v5 = swift_allocObject();
    v6 = sub_26B20BCC8();
    v7 = OUTLINED_FUNCTION_1_37(v6);
    sub_26B20C19C(v7, v8, v2, a1);
  }

  else
  {
    sub_26B2128F0();
    v5 = *sub_26B2122F0();
  }

  v25 = v5;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    swift_beginAccess();
    if (v25[3] < 1)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    v9 = v25;
    result = sub_26B150514(&v9[5 * v9[4] + 5], &v18);
    v11 = v9[4];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v14 = v9[3];
    if (v13 >= v9[2])
    {
      v13 = 0;
    }

    v9[4] = v13;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_18;
    }

    v9[3] = v14 - 1;
LABEL_14:
    swift_endAccess();
    if (!*(&v19 + 1))
    {

      sub_26B20BB04(&v18);
      OUTLINED_FUNCTION_3_30();
      return v24;
    }

    sub_26B150514(&v18, v21);
    v15 = v22;
    v16 = v23;
    v17 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_26B20B300(v17, &v25, &v24, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26B20B300(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26B20BAA4(a4, a4);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = *(a4 - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  swift_allocObject();
  sub_26B212E70();
  (*(v12 + 16))(v15, a1, a4);
  sub_26B212F50();
  swift_beginAccess();
  *&v42[0] = *a2;
  sub_26B20C24C(0, &qword_2803E88B8, sub_26B20BB90, MEMORY[0x277CFB920]);
  sub_26B20C2B0();

  v16 = 0;
  sub_26B212D30();

  v17 = sub_26B212EB0();

  swift_beginAccess();
  v18 = 0;
  v19 = *a2;
  v20 = *a2 + 40;
  while (1)
  {
    v21 = v19[3];
    if (v18 == v21)
    {
      break;
    }

    if (v18 >= v21)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = v19[4];
    if (v18 + v22 >= v19[2])
    {
      v23 = v19[2];
    }

    else
    {
      v23 = 0;
    }

    sub_26B16BCF8(v20 + 40 * (v18 + v22 - v23), v42);
    v24 = sub_26B20B7BC(v42, a4);
    __swift_destroy_boxed_opaque_existential_1(v42);
    if (v24)
    {
      v41 = v17;
      v25 = v18;
      while (1)
      {
        v26 = v19[3];
        if (v25 + 1 == v26)
        {
          break;
        }

        if ((v25 + 1) >= v26)
        {
          goto LABEL_34;
        }

        v27 = v19[4];
        if ((v25 + v27 + 1) >= v19[2])
        {
          v28 = v19[2];
        }

        else
        {
          v28 = 0;
        }

        sub_26B16BCF8(&v19[5 * v25 + 10 + 5 * (v27 - v28)], v42);
        v29 = sub_26B20B7BC(v42, a4);
        __swift_destroy_boxed_opaque_existential_1(v42);
        ++v25;
        if ((v29 & 1) == 0)
        {
          v30 = v19[3];
          if (v18 >= v30)
          {
            goto LABEL_36;
          }

          if (v25 >= v30)
          {
            goto LABEL_37;
          }

          v31 = *a2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B20C0D4();
          }

          v19 = *a2;
          v32 = *(*a2 + 32);
          v33 = *(*a2 + 16);
          if (v32 + v18 >= v33)
          {
            v34 = *(*a2 + 16);
          }

          else
          {
            v34 = 0;
          }

          if ((v32 + v25) < v33)
          {
            v33 = 0;
          }

          if (v34 - v33 + v25 != v18)
          {
            v35 = &v19[5 * (v32 + v18 - v34) + 5];
            v36 = &v19[5 * (v32 - v33) + 5 + 5 * v25];
            sub_26B150514(v35, v42);
            v37 = *(v36 + 32);
            v38 = *(v36 + 16);
            *v35 = *v36;
            *(v35 + 16) = v38;
            *(v35 + 32) = v37;
            sub_26B150514(v42, v36);
          }

          ++v18;
        }
      }

      v17 = v41;
      break;
    }

    ++v18;
  }

  v16 = *(*a2 + 24);
  if (v16 >= v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    sub_26B20C3B4(v18, v16, (*a2 + 16), (*a2 + 40));
    swift_endAccess();
    Array<A>.merged()(v17, a4, a5);

    sub_26B20BB90();
    v39 = sub_26B2138E0();

    swift_beginAccess();
    sub_26B168E08(v39);
    return swift_endAccess();
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_26B20B744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26B16BCF8(a1, v7);
  sub_26B20BB90();
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_26B20B7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_26B16BCF8(v5, v11);
  sub_26B20BB90();
  v8 = swift_dynamicCast();
  if (v8)
  {
    (*(v3 + 8))(v7, a2);
  }

  return v8;
}

uint64_t Array<A>.merging(contentsOf:)()
{
  v1 = v0;
  v22[0] = *v0;
  v2 = sub_26B2128F0();
  sub_26B168E08(v2);
  v3 = *(v22[0] + 16);
  if (v3)
  {
    OUTLINED_FUNCTION_0_44();
    sub_26B20C24C(0, v4, v5, MEMORY[0x277CFB8D8]);
    v6 = swift_allocObject();
    v7 = sub_26B20BCC8();
    v8 = OUTLINED_FUNCTION_1_37(v7);
    sub_26B20C19C(v8, v9, v3, v22[0]);
  }

  else
  {
    sub_26B2128F0();
    v6 = *sub_26B2122F0();
  }

  v26 = v6;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    swift_beginAccess();
    if (v26[3] < 1)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20C0D4();
    }

    v10 = v26;
    result = sub_26B150514(&v10[5 * v10[4] + 5], &v19);
    v12 = v10[4];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v15 = v10[3];
    if (v14 >= v10[2])
    {
      v14 = 0;
    }

    v10[4] = v14;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_18;
    }

    v10[3] = v15 - 1;
LABEL_14:
    swift_endAccess();
    if (!*(&v20 + 1))
    {

      sub_26B20BB04(&v19);
      result = OUTLINED_FUNCTION_3_30();
      *v1 = v25;
      return result;
    }

    sub_26B150514(&v19, v22);
    v16 = v23;
    v17 = v24;
    v18 = __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_26B20B300(v18, &v26, &v25, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_26B20BAA4(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    sub_26B20CA1C();
  }

  else
  {

    sub_26B213BA0();
  }
}

uint64_t sub_26B20BB04(uint64_t a1)
{
  sub_26B20C24C(0, &qword_2803E88A8, sub_26B20BB90, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B20BB90()
{
  result = qword_2803E6FE0;
  if (!qword_2803E6FE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E6FE0);
  }

  return result;
}

uint64_t sub_26B20BBEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_7:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result, *a3);
    result += *a3;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result, *a3);
  if (result >= *a3)
  {
    result -= *a3;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_26B20BC2C()
{
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = type metadata accessor for ActorQueue.TaskState();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B20BCF0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for ActorQueue.TaskState();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_26B20BDB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v8 + 72) * v4;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26B20BEC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_26B20BB90();
  result = swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      sub_26B20BB90();
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B20BFB8()
{
  v1 = *v0;
  v2 = type metadata accessor for ActorQueue.TaskState();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_26B20C24C(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_26B20BDB0(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_26B20C0D4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_26B20C24C(0, &qword_2803E88B0, sub_26B20BB90, MEMORY[0x277CFB8D8]);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_26B20BEC0(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_26B20C19C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      sub_26B20BB90();
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_26B20C24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26B20C2B0()
{
  result = qword_2803E88C0;
  if (!qword_2803E88C0)
  {
    sub_26B20C24C(255, &qword_2803E88B8, sub_26B20BB90, MEMORY[0x277CFB920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88C0);
  }

  return result;
}

uint64_t sub_26B20C338@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 40 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B20C3B4(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_26B20C338(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    sub_26B20BB90();
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    sub_26B20BB90();
    swift_arrayDestroy();
  }

  return sub_26B20C498(a1, a2, a3, a4);
}

uint64_t sub_26B20C498(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = result;
  v8 = a3[1];
  v7 = a3[2];
  v9 = *a3;
  if (v7 + result >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  if (v7 + a2 >= v9)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_84;
  }

  v14 = v7 + result - v10;
  v15 = v7 + a2 - v11;
  result = a3[2];
  if (v12 > v6)
  {
    result = sub_26B20BBEC(result, v4, a3);
    v12 = result;
    if (!v6)
    {
      goto LABEL_68;
    }

    if (v15 <= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = v14;
    }

    if (v7 >= v17)
    {
      if (v16 >= result)
      {
        if (__OFSUB__(0, v14))
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (v14 > 0)
        {
          v15 -= v14;
          sub_26B173F18(a4, v14, &a4[40 * v15]);
          sub_26B20BBEC(0, v14, a3);
          result = sub_26B20BBEC(v15, v14, a3);
        }

        v18 = __OFSUB__(v6, v14);
        v6 -= v14;
        if (v18)
        {
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (v14 > 0)
      {
        sub_26B173F18(a4, v14, &a4[40 * v4]);
        sub_26B20BBEC(0, v14, a3);
        sub_26B20BBEC(v4, v14, a3);
      }

      v14 = *a3 - v4;
      sub_26B173F18(&a4[40 * v14], v4, a4);
      sub_26B20BBEC(v14, v4, a3);
      result = sub_26B20BBEC(0, v4, a3);
      v18 = __OFSUB__(v6, v15);
      v6 -= v15;
      if (!v18)
      {
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_50;
    }

    if (v16 >= result)
    {
      if (v6 > 0)
      {
        sub_26B173F18(&a4[40 * v7], v6, &a4[40 * result]);
        v30 = v7;
LABEL_67:
        sub_26B20BBEC(v30, v6, a3);
        result = sub_26B20BBEC(v12, v6, a3);
      }

LABEL_68:
      a3[2] = v12;
      v31 = a3[1];
      v18 = __OFSUB__(v31, v4);
      v32 = v31 - v4;
      if (!v18)
      {
        goto LABEL_81;
      }

      __break(1u);
      goto LABEL_71;
    }

    if (v15 > 0)
    {
      v14 = v9 - v4;
      sub_26B173F18(&a4[40 * (v9 - v4)], v15, a4);
      sub_26B20BBEC(v9 - v4, v15, a3);
      result = sub_26B20BBEC(0, v15, a3);
    }

    v18 = __OFSUB__(v6, v15);
    v6 -= v15;
    if (!v18)
    {
LABEL_65:
      if (v6 >= 1)
      {
        v14 = a3[2];
        sub_26B173F18(&a4[40 * v14], v6, &a4[40 * v12]);
        v30 = v14;
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    __break(1u);
  }

  result = sub_26B20BBEC(result, v8, a3);
  v19 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v8 = v4;
  v20 = v19 + v7;
  if (v20 >= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (!v12)
  {
    goto LABEL_80;
  }

  v6 = result;
  v4 = v20 - v21;
  if (v20 - v21 <= 0)
  {
    v22 = v9;
  }

  else
  {
    v22 = v20 - v21;
  }

  if (result <= 0)
  {
    v23 = v9;
  }

  else
  {
    v23 = result;
  }

  if (v15 < v23)
  {
    if (v22 >= v14)
    {
LABEL_71:
      if (v12 <= 0)
      {
        goto LABEL_80;
      }

      sub_26B173F18(&a4[40 * v15], v12, &a4[40 * v14]);
      sub_26B20BBEC(v15, v12, a3);
      v25 = v14;
      v29 = v12;
      goto LABEL_79;
    }

    v24 = v9 - v14;
    if (__OFSUB__(v9, v14))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v24 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v14, &a4[40 * v14]);
      v15 = sub_26B20BBEC(v15, v9 - v14, a3);
      result = sub_26B20BBEC(v14, v9 - v14, a3);
    }

    v18 = __OFSUB__(v12, v24);
    v6 = v12 - v24;
    if (v18)
    {
      goto LABEL_92;
    }

    if (v6 >= 1)
    {
      sub_26B173F18(&a4[40 * v15], v6, a4);
      sub_26B20BBEC(v15, v6, a3);
      v25 = 0;
LABEL_78:
      v29 = v6;
      goto LABEL_79;
    }

    goto LABEL_80;
  }

LABEL_50:
  v26 = v9 - v15;
  v27 = __OFSUB__(v9, v15);
  if (v22 >= v14)
  {
    if (v27)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    if (v26 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v15, &a4[40 * v14]);
      sub_26B20BBEC(v15, v9 - v15, a3);
      result = sub_26B20BBEC(v14, v9 - v15, a3);
      v14 = result;
    }

    if (v6 >= 1)
    {
      sub_26B173F18(a4, v6, &a4[40 * v14]);
      sub_26B20BBEC(0, v6, a3);
      v25 = v14;
      goto LABEL_78;
    }
  }

  else
  {
    if (v27)
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v26 > 0)
    {
      sub_26B173F18(&a4[40 * v15], v9 - v15, &a4[40 * v14]);
      sub_26B20BBEC(v15, v9 - v15, a3);
      v14 = sub_26B20BBEC(v14, v9 - v15, a3);
    }

    sub_26B173F18(a4, v8, &a4[40 * v14]);
    v28 = sub_26B20BBEC(0, v8, a3);
    result = sub_26B20BBEC(v14, v8, a3);
    if (v4 >= 1)
    {
      sub_26B173F18(&a4[40 * v28], v4, a4);
      sub_26B20BBEC(v28, v4, a3);
      v25 = 0;
      v29 = v4;
LABEL_79:
      result = sub_26B20BBEC(v25, v29, a3);
    }
  }

LABEL_80:
  v33 = a3[1];
  v18 = __OFSUB__(v33, v8);
  v32 = v33 - v8;
  if (v18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_81:
  a3[1] = v32;
  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26B20CA1C()
{
  if (!qword_2803E7678)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7678);
    }
  }
}

void static PerformanceTime.now()(uint64_t a1@<X8>)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  sub_26B212060();
  v5 = v4;
  if (qword_2803E6AD0 != -1)
  {
    swift_once();
  }

  v6 = sub_26B1F7ACC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t PerformanceTime.init(machAbsoluteTime:machMonotonicTime:wallClockTime:bootTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_26B20CBD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000026B221740 == a2;
  if (v3 || (sub_26B213E30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000026B221760 == a2;
    if (v6 || (sub_26B213E30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636F6C436C6C6177 && a2 == 0xED0000656D69546BLL;
      if (v7 || (sub_26B213E30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D6954746F6F62 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26B213E30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_26B20CD3C(char a1)
{
  result = 0x636F6C436C6C6177;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656D6954746F6F62;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_26B20CDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B20CBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B20CE08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B18D83C();
  *a1 = result;
  return result;
}

uint64_t sub_26B20CE30(uint64_t a1)
{
  v2 = sub_26B20D068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B20CE6C(uint64_t a1)
{
  v2 = sub_26B20D068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PerformanceTime.encode(to:)(void *a1)
{
  sub_26B20D29C(0, &qword_2803E88C8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_0(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v18 - v11;
  v13 = *v1;
  v18[1] = v1[1];
  v15 = v1[2];
  v14 = v1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B20D068();
  sub_26B214120();
  v22 = 0;
  OUTLINED_FUNCTION_1_38();
  sub_26B213B60();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B60();
    v20 = 2;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B30();
    v19 = 3;
    OUTLINED_FUNCTION_1_38();
    sub_26B213B30();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_26B20D068()
{
  result = qword_2803E88D0;
  if (!qword_2803E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88D0);
  }

  return result;
}

uint64_t PerformanceTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26B20D29C(0, &qword_2803E88D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_0(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B20D068();
  sub_26B2140F0();
  if (!v2)
  {
    v26 = 0;
    OUTLINED_FUNCTION_0_45();
    v15 = sub_26B213B00();
    v25 = 1;
    OUTLINED_FUNCTION_0_45();
    v16 = sub_26B213B00();
    v24 = 2;
    OUTLINED_FUNCTION_0_45();
    sub_26B213AD0();
    v18 = v17;
    v23 = 3;
    OUTLINED_FUNCTION_0_45();
    sub_26B213AD0();
    v21 = v20;
    (*(v9 + 8))(v13, v6);
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v18;
    a2[3] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_26B20D29C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26B20D068();
    v7 = a3(a1, &type metadata for PerformanceTime.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PerformanceTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B20D420()
{
  result = qword_2803E88E0;
  if (!qword_2803E88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88E0);
  }

  return result;
}

unint64_t sub_26B20D478()
{
  result = qword_2803E88E8;
  if (!qword_2803E88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88E8);
  }

  return result;
}

unint64_t sub_26B20D4D0()
{
  result = qword_2803E88F0;
  if (!qword_2803E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88F0);
  }

  return result;
}

double Arc4Random.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26B211D50();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v10 = 0x1000000000;
  v11 = sub_26B211D20() | 0x4000000000000000;
  sub_26B20E67C(&v10);
  v5 = v10;
  v6 = v11;
  sub_26B14F044(v10, v11);
  Arc4Random.init(seed:)(v5, v6, &v8);
  sub_26B14FF4C(v5, v6);
  *a1 = v8;
  result = v9[0];
  *(a1 + 8) = *v9;
  return result;
}

uint64_t Arc4Random.init(seed:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a1;
  v115 = a2;
  v129 = *MEMORY[0x277D85DE8];
  v126 = 0;
  v5 = sub_26B211D50();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v119 = v5;
  swift_allocObject();
  v8 = 0;
  v9 = sub_26B211D20() | 0x4000000000000000;
  v10 = 0x10000000000;
LABEL_2:
  v11 = (v10 >> 32) - v10;
  for (i = v8; i != 256; ++i)
  {
    if (i > 0xFF)
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
      goto LABEL_125;
    }

    if (v9 >> 62 != 1)
    {
      if (v9 >> 62 != 2)
      {
        goto LABEL_148;
      }

      if (i >= *(v10 + 16))
      {
        if (i < *(v10 + 24))
        {
          v26 = v9 & 0x3FFFFFFFFFFFFFFFLL;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_27;
          }

          v11 = *(v10 + 16);
          v27 = *(v10 + 24);
          v28 = sub_26B211D10();
          if (v28)
          {
            v28 = OUTLINED_FUNCTION_7_22();
            if (!__OFSUB__(v11, v28))
            {
              v36 = v11 - v28 + v3;
              goto LABEL_25;
            }

LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
          }

          v36 = 0;
LABEL_25:
          v3 = v27 - v11;
          if (!__OFSUB__(v27, v11))
          {
            OUTLINED_FUNCTION_2_38(v28, v29, v30, v31, v32, v33, v34, v35, v111, v112, v114, v115, v116, v117, v118, v119);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            v26 = v36;
LABEL_27:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = *(v10 + 16);
              v38 = *(v10 + 24);
              sub_26B211F60();
              v39 = swift_allocObject();
              *(v39 + 16) = v37;
              *(v39 + 24) = v38;

              v10 = v39;
            }

            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_160;
            }

            v40 = OUTLINED_FUNCTION_8_28();
            if (!__OFSUB__(i, v40))
            {
              v8 = i + 1;
              *(v11 + i - v40) = i;
              v9 = v26 | 0x8000000000000000;
              goto LABEL_2;
            }

LABEL_145:
            __break(1u);
          }

          __break(1u);
          goto LABEL_147;
        }

LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (i >= v10 >> 32 || v8 < v10)
    {
      goto LABEL_112;
    }

    v3 = v9 & 0x3FFFFFFFFFFFFFFFLL;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      v14 = sub_26B211D10();
      if (v14)
      {
        v14 = sub_26B211D40();
        if (__OFSUB__(v10, v14))
        {
          goto LABEL_136;
        }
      }

      OUTLINED_FUNCTION_2_38(v14, v15, v16, v17, v18, v19, v20, v21, v111, v112, v114, v115, v116, v117, v118, v119);
      v22 = sub_26B211CF0();

      v3 = v22;
    }

    sub_26B211CE0();
    v23 = sub_26B211D10();
    if (!v23)
    {
      goto LABEL_149;
    }

    v24 = v23;
    v25 = sub_26B211D40();
    if (__OFSUB__(i, v25))
    {
      goto LABEL_113;
    }

    *(v24 + i - v25) = i;
    v9 = v3 | 0x4000000000000000;
  }

  v113 = a3;
  v127 = v10;
  v128 = v9;
  Arc4Random.addRandomness(using:)(v114, v115);
  v41 = HIBYTE(v126);
  v42 = 3072;
  v43 = v128;
  v44 = &v122;
  HIDWORD(v111) = v126;
  v45 = v126;
  while (2)
  {
    v46 = v45 + 1;
    v47 = v46;
    v121 = v46;
    switch(v43 >> 62)
    {
      case 1uLL:
        v11 = v10;
        if (v10 >> 32 <= v46 || v10 > v46)
        {
          goto LABEL_116;
        }

        v65 = v43 & 0x3FFFFFFFFFFFFFFFLL;
        if (!sub_26B211D10())
        {
          goto LABEL_151;
        }

        v66 = OUTLINED_FUNCTION_7_22();
        if (__OFSUB__(v46, v66))
        {
          goto LABEL_119;
        }

        v41 += *(v42 + v46 - v66);
        v48 = v41;
        if (v10 > v41 || v10 >> 32 <= v41)
        {
          goto LABEL_121;
        }

        v120 = *(v42 + v47 - v66);
        if (!sub_26B211D10())
        {
          goto LABEL_153;
        }

        v68 = OUTLINED_FUNCTION_7_22();
        if (__OFSUB__(v41, v68))
        {
          goto LABEL_123;
        }

        HIDWORD(v117) = *(v42 + v41 - v68);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_71;
        }

        v69 = sub_26B211D10();
        if (v69)
        {
          v69 = OUTLINED_FUNCTION_7_22();
          if (__OFSUB__(v10, v69))
          {
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          v77 = v10 - v69 + v42;
        }

        else
        {
          v77 = 0;
        }

        OUTLINED_FUNCTION_2_38(v69, v70, v71, v72, v73, v74, v75, v76, v111, v113, v114, v115, v116, v117, v118, v119);
        OUTLINED_FUNCTION_0_46();
        OUTLINED_FUNCTION_6_26();

        v65 = v77;
LABEL_71:
        OUTLINED_FUNCTION_3_31();
        if (!sub_26B211D10())
        {
          goto LABEL_154;
        }

        v78 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v47, v78))
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        *(v10 + v47 - v78) = BYTE4(v117);
        v51 = v65 | 0x4000000000000000;
        v44 = &v122;
LABEL_81:
        switch(v51 >> 62)
        {
          case 1uLL:
            v93 = v10 >> 32;
            if (v48 < v10 || v48 >= v93)
            {
              goto LABEL_129;
            }

            v95 = v51 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_99;
            }

            v44 = v42;
            v11 = v10;

            v96 = sub_26B211D10();
            if (v96)
            {
              v96 = OUTLINED_FUNCTION_7_22();
              if (__OFSUB__(v10, v96))
              {
                goto LABEL_140;
              }
            }

            v42 = v93 - v10;
            OUTLINED_FUNCTION_2_38(v96, v97, v98, v99, v100, v101, v102, v103, v111, v113, v114, v115, v116, v117, v118, v119);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            OUTLINED_FUNCTION_5_26();
LABEL_99:
            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_157;
            }

            v104 = OUTLINED_FUNCTION_8_28();
            if (__OFSUB__(v48, v104))
            {
              goto LABEL_133;
            }

            *(v11 + v48 - v104) = v120;
            v43 = v95 | 0x4000000000000000;
            goto LABEL_109;
          case 2uLL:
            if (v48 < *(v10 + 16))
            {
              goto LABEL_128;
            }

            if (v48 >= *(v10 + 24))
            {
              goto LABEL_131;
            }

            v83 = v51 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_104;
            }

            v44 = v42;
            v11 = *(v10 + 16);
            v84 = *(v10 + 24);
            v85 = sub_26B211D10();
            if (v85)
            {
              v85 = OUTLINED_FUNCTION_7_22();
              if (__OFSUB__(v11, v85))
              {
                goto LABEL_141;
              }
            }

            v42 = v84 - v11;
            if (__OFSUB__(v84, v11))
            {
              goto LABEL_137;
            }

            OUTLINED_FUNCTION_2_38(v85, v86, v87, v88, v89, v90, v91, v92, v111, v113, v114, v115, v116, v117, v118, v119);
            OUTLINED_FUNCTION_0_46();
            OUTLINED_FUNCTION_6_26();

            OUTLINED_FUNCTION_5_26();
LABEL_104:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v105 = *(v10 + 16);
              v106 = *(v10 + 24);
              sub_26B211F60();
              v107 = swift_allocObject();
              *(v107 + 16) = v105;
              *(v107 + 24) = v106;

              v10 = v107;
            }

            OUTLINED_FUNCTION_3_31();
            if (!sub_26B211D10())
            {
              goto LABEL_158;
            }

            v108 = OUTLINED_FUNCTION_8_28();
            if (__OFSUB__(v48, v108))
            {
              goto LABEL_134;
            }

            *(v11 + v48 - v108) = v120;
            v43 = v83 | 0x8000000000000000;
LABEL_109:
            --v42;
            v45 = v121;
            if (v42)
            {
              continue;
            }

            result = sub_26B14FF4C(v114, v115);
            *v113 = BYTE4(v111);
            *(v113 + 1) = v41;
            *(v113 + 8) = v10;
            *(v113 + 16) = v43;
            v110 = *MEMORY[0x277D85DE8];
            return result;
          case 3uLL:
            goto LABEL_155;
          default:
            v122 = v10;
            LOWORD(v123) = v51;
            BYTE2(v123) = BYTE2(v51);
            HIBYTE(v123) = BYTE3(v51);
            LOBYTE(v124) = BYTE4(v51);
            HIBYTE(v124) = BYTE5(v51);
            v125 = BYTE6(v51);
            if (v48 >= BYTE6(v51))
            {
              goto LABEL_127;
            }

            *(v44 + v48) = v120;
            OUTLINED_FUNCTION_4_33();
            v43 = v116 & 0xF00000000000000 | v82;
            v116 = v43;
            goto LABEL_109;
        }

      case 2uLL:
        if (*(v10 + 16) > v46)
        {
          goto LABEL_115;
        }

        if (*(v10 + 24) <= v46)
        {
          goto LABEL_118;
        }

        v52 = v43 & 0x3FFFFFFFFFFFFFFFLL;
        if (!sub_26B211D10())
        {
          goto LABEL_152;
        }

        v53 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v46, v53))
        {
          goto LABEL_120;
        }

        v41 += *(v11 + v46 - v53);
        if (*(v10 + 16) > v41)
        {
          goto LABEL_122;
        }

        v48 = v41;
        if (*(v10 + 24) <= v41)
        {
          goto LABEL_124;
        }

        v120 = *(v11 + v47 - v53);
        if (!sub_26B211D10())
        {
          goto LABEL_156;
        }

        v54 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v41, v54))
        {
          goto LABEL_126;
        }

        if (*(v10 + 16) > v47)
        {
          goto LABEL_130;
        }

        if (*(v10 + 24) <= v47)
        {
          goto LABEL_132;
        }

        HIDWORD(v117) = *(v11 + v41 - v54);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_76;
        }

        v44 = v42;
        v11 = *(v10 + 16);
        v55 = *(v10 + 24);
        v56 = sub_26B211D10();
        if (v56)
        {
          v56 = OUTLINED_FUNCTION_7_22();
          if (__OFSUB__(v11, v56))
          {
            goto LABEL_142;
          }
        }

        v42 = v55 - v11;
        if (__OFSUB__(v55, v11))
        {
          goto LABEL_138;
        }

        OUTLINED_FUNCTION_2_38(v56, v57, v58, v59, v60, v61, v62, v63, v111, v113, v114, v115, v116, v117, v118, v119);
        OUTLINED_FUNCTION_0_46();
        OUTLINED_FUNCTION_6_26();

        OUTLINED_FUNCTION_5_26();
LABEL_76:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = *(v10 + 16);
          v11 = *(v10 + 24);
          sub_26B211F60();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(v80 + 24) = v11;

          v10 = v80;
        }

        OUTLINED_FUNCTION_3_31();
        if (!sub_26B211D10())
        {
          goto LABEL_159;
        }

        v81 = OUTLINED_FUNCTION_8_28();
        if (__OFSUB__(v47, v81))
        {
          goto LABEL_135;
        }

        *(v11 + v47 - v81) = BYTE4(v117);
        v51 = v52 | 0x8000000000000000;
        goto LABEL_81;
      case 3uLL:
        goto LABEL_150;
      default:
        if (BYTE6(v43) <= v46)
        {
          goto LABEL_114;
        }

        v122 = v10;
        LOWORD(v123) = v43;
        BYTE2(v123) = BYTE2(v43);
        HIBYTE(v123) = BYTE3(v43);
        LOBYTE(v124) = BYTE4(v43);
        HIBYTE(v124) = BYTE5(v43);
        v41 += *(v44 + v46);
        if (BYTE6(v43) <= v41)
        {
          goto LABEL_117;
        }

        v120 = *(v44 + v46);
        v48 = v41;
        v122 = v10;
        v123 = v43;
        v124 = WORD2(v43);
        v49 = *(v44 + v41);
        v122 = v10;
        v125 = BYTE6(v43);
        v124 = WORD2(v43);
        v123 = v43;
        *(v44 + v47) = v49;
        OUTLINED_FUNCTION_4_33();
        v51 = v118 & 0xF00000000000000 | v50;
        v118 = v51;
        goto LABEL_81;
    }
  }
}

uint64_t Arc4Random.addRandomness(using:)(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = 0;
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  v33 = HIDWORD(result);
  v41 = BYTE6(a2);
  v42 = a2 >> 62;
  v37 = HIDWORD(result) - result;
  v6 = *v2 - 1;
  v7 = __OFSUB__(HIDWORD(result), result);
  v36 = v7;
  v34 = result >> 32;
  v35 = result;
  v40 = v5;
  v38 = result;
  while (v4 != 256)
  {
    ++v6;
    v8 = *(v2 + 8);
    v9 = *(v2 + 16);
    switch(v9 >> 62)
    {
      case 1uLL:
        if (v6 >= v8 >> 32 || v8 > v6)
        {
          goto LABEL_52;
        }

        v15 = sub_26B211D10();
        if (!v15)
        {
          goto LABEL_66;
        }

        v12 = v15;
        result = sub_26B211D40();
        v13 = v6 - result;
        if (!__OFSUB__(v6, result))
        {
          goto LABEL_22;
        }

        goto LABEL_54;
      case 2uLL:
        if (*(v8 + 16) > v6)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        if (*(v8 + 24) <= v6)
        {
          goto LABEL_53;
        }

        v11 = sub_26B211D10();
        if (!v11)
        {
          goto LABEL_67;
        }

        v12 = v11;
        result = sub_26B211D40();
        v13 = v6 - result;
        if (__OFSUB__(v6, result))
        {
          goto LABEL_55;
        }

LABEL_22:
        v10 = *(v12 + v13);
        LODWORD(v5) = v42;
        break;
      case 3uLL:
        goto LABEL_65;
      default:
        if (v6 >= BYTE6(v9))
        {
          goto LABEL_51;
        }

        v43 = *(v2 + 8);
        v44 = BYTE2(v8);
        v45 = BYTE3(v8);
        v46 = BYTE4(v8);
        v47 = BYTE5(v8);
        v48 = BYTE6(v8);
        v49 = HIBYTE(v8);
        LOWORD(v50) = v9;
        BYTE2(v50) = BYTE2(v9);
        HIBYTE(v50) = BYTE3(v9);
        LOBYTE(v51) = BYTE4(v9);
        HIBYTE(v51) = BYTE5(v9);
        v10 = *(&v43 + v6);
        break;
    }

    v16 = *(v2 + 1);
    v17 = v41;
    switch(v40)
    {
      case 1:
        v17 = v37;
        if (v36)
        {
          goto LABEL_56;
        }

        goto LABEL_27;
      case 2:
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        v20 = __OFSUB__(v18, v19);
        v17 = v18 - v19;
        if (!v20)
        {
          goto LABEL_27;
        }

        goto LABEL_57;
      case 3:
        goto LABEL_64;
      default:
LABEL_27:
        if (!v17)
        {
          goto LABEL_64;
        }

        v21 = v4 % v17;
        if (v5 == 2)
        {
          if (v21 < *(v3 + 16))
          {
            goto LABEL_59;
          }

          if (v21 >= *(v3 + 24))
          {
            goto LABEL_61;
          }

          v26 = sub_26B211D10();
          if (!v26)
          {
            goto LABEL_69;
          }

          v24 = v26;
          result = sub_26B211D40();
          v25 = v21 - result;
          if (__OFSUB__(v21, result))
          {
            goto LABEL_63;
          }

          goto LABEL_43;
        }

        if (v5 == 1)
        {
          if (v21 < v35 || v21 >= v34)
          {
            goto LABEL_60;
          }

          v23 = sub_26B211D10();
          if (!v23)
          {
            goto LABEL_68;
          }

          v24 = v23;
          result = sub_26B211D40();
          v25 = v21 - result;
          if (__OFSUB__(v21, result))
          {
            goto LABEL_62;
          }

LABEL_43:
          v27 = *(v24 + v25);
          v3 = v38;
          LODWORD(v5) = v42;
          goto LABEL_46;
        }

        if (v21 >= v41)
        {
          goto LABEL_58;
        }

        v43 = v3;
        v44 = BYTE2(v3);
        v45 = BYTE3(v3);
        v46 = v33;
        v47 = BYTE5(v3);
        v48 = BYTE6(v3);
        v49 = HIBYTE(v3);
        v50 = a2;
        v51 = WORD2(a2);
        v27 = *(&v43 + v21);
LABEL_46:
        *(v2 + 1) = v16 + v10 + v27;
        if (v6 != (v16 + v10 + v27))
        {
          v28 = *(v2 + 8);
          v29 = *(v2 + 16);
          sub_26B211FA0();
          v30 = *(v2 + 8);
          v31 = *(v2 + 16);
          sub_26B211FA0();
          sub_26B211FB0();
          result = sub_26B211FB0();
          LODWORD(v5) = v42;
        }

        ++v4;
        break;
    }
  }

  *v2 = v6;
  *(v2 + 1) = v6;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall Arc4Random.drop(count:)(Swift::Int count)
{
  v33 = *MEMORY[0x277D85DE8];
  if (count < 0)
  {
    goto LABEL_53;
  }

  v2 = count;
  if (!count)
  {
    goto LABEL_40;
  }

  v3 = *v1;
  v4 = v1[1];
  while (2)
  {
    ++v3;
    v5 = *(v1 + 1);
    v6 = *(v1 + 2);
    switch(v6 >> 62)
    {
      case 1uLL:
        if (v3 >= v5 >> 32 || v5 > v3)
        {
          goto LABEL_43;
        }

        v13 = sub_26B211D10();
        if (!v13)
        {
          goto LABEL_56;
        }

        v9 = v13;
        v14 = sub_26B211D40();
        v11 = v3 - v14;
        if (!__OFSUB__(v3, v14))
        {
          goto LABEL_20;
        }

        goto LABEL_45;
      case 2uLL:
        if (*(v5 + 16) > v3)
        {
          goto LABEL_42;
        }

        if (*(v5 + 24) <= v3)
        {
          goto LABEL_44;
        }

        v8 = sub_26B211D10();
        if (!v8)
        {
          goto LABEL_57;
        }

        v9 = v8;
        v10 = sub_26B211D40();
        v11 = v3 - v10;
        if (__OFSUB__(v3, v10))
        {
          goto LABEL_48;
        }

LABEL_20:
        v7 = *(v9 + v11);
        goto LABEL_21;
      case 3uLL:
        goto LABEL_54;
      default:
        if (v3 >= BYTE6(v6))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
        }

        OUTLINED_FUNCTION_1_39();
        v28 = v6;
        v29 = BYTE2(v6);
        v30 = BYTE3(v6);
        v31 = BYTE4(v6);
        v32 = BYTE5(v6);
        v7 = v27[v3];
LABEL_21:
        v4 += v7;
        v15 = *(v1 + 1);
        v16 = *(v1 + 2);
        switch(v16 >> 62)
        {
          case 1uLL:
            if (v4 >= v15 >> 32 || v15 > v4)
            {
              goto LABEL_49;
            }

            v23 = sub_26B211D10();
            if (!v23)
            {
              goto LABEL_58;
            }

            v19 = v23;
            v24 = sub_26B211D40();
            v21 = v4 - v24;
            if (!__OFSUB__(v4, v24))
            {
              goto LABEL_37;
            }

            goto LABEL_51;
          case 2uLL:
            if (*(v15 + 16) > v4)
            {
              goto LABEL_46;
            }

            if (*(v15 + 24) <= v4)
            {
              goto LABEL_50;
            }

            v18 = sub_26B211D10();
            if (!v18)
            {
              goto LABEL_59;
            }

            v19 = v18;
            v20 = sub_26B211D40();
            v21 = v4 - v20;
            if (__OFSUB__(v4, v20))
            {
              goto LABEL_52;
            }

LABEL_37:
            v25 = *(v19 + v21);
LABEL_38:
            sub_26B211FB0();
            sub_26B211FB0();
            if (--v2)
            {
              continue;
            }

            v1[1] = v4;
            *v1 = v3;
            break;
          case 3uLL:
            goto LABEL_55;
          default:
            if (v4 >= BYTE6(v16))
            {
              goto LABEL_47;
            }

            OUTLINED_FUNCTION_1_39();
            v28 = v16;
            v29 = BYTE2(v16);
            v30 = BYTE3(v16);
            v31 = BYTE4(v16);
            v32 = BYTE5(v16);
            v17 = v27[v4];
            goto LABEL_38;
        }

LABEL_40:
        v26 = *MEMORY[0x277D85DE8];
        return;
    }
  }
}

Swift::UInt64 __swiftcall Arc4Random.next()()
{
  v1 = 0;
  v15 = 0;
  v2 = *v0;
  v3 = v0[1];
  do
  {
    ++v2;
    v4 = *(v0 + 1);
    v5 = *(v0 + 2);
    v3 += sub_26B211FA0();
    v6 = *(v0 + 1);
    v7 = *(v0 + 2);
    sub_26B211FA0();
    sub_26B211FB0();
    sub_26B211FB0();
    v8 = *(v0 + 1);
    v9 = *(v0 + 2);
    sub_26B211FA0();
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
    sub_26B211FA0();
    v12 = *(v0 + 1);
    v13 = *(v0 + 2);
    *(&v15 + v1++) = sub_26B211FA0();
  }

  while (v1 != 8);
  v0[1] = v3;
  *v0 = v2;
  return v15;
}

uint64_t sub_26B20E67C(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = a1[1];
  switch(v1 >> 62)
  {
    case 1uLL:
      v9 = v1 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26B14FF4C(v2, v1);
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      v10 = v2 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v10 < v2)
      {
        goto LABEL_15;
      }

      if (sub_26B211D10() && __OFSUB__(v2, sub_26B211D40()))
      {
        goto LABEL_16;
      }

      v11 = sub_26B211D50();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = sub_26B211CF0();

      v9 = v14;
LABEL_10:
      if (v10 < v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_26B20E9A0(v2);

      v8 = v9 | 0x4000000000000000;
LABEL_12:
      *a1 = v2;
      a1[1] = v8;
LABEL_13:
      v15 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v6 = *a1;

      sub_26B14FF4C(v2, v1);
      *&bytes = v2;
      *(&bytes + 1) = v1 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26B215BA0;
      sub_26B14FF4C(0, 0xC000000000000000);
      sub_26B211F10();
      v2 = bytes;
      v7 = *(bytes + 24);
      result = sub_26B20E9A0(*(bytes + 16));
      v8 = *(&bytes + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&bytes + 7) = 0;
      *&bytes = 0;
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &bytes);
      goto LABEL_13;
    default:
      sub_26B14FF4C(v2, v1);
      *&bytes = v2;
      WORD4(bytes) = v1;
      BYTE10(bytes) = BYTE2(v1);
      BYTE11(bytes) = BYTE3(v1);
      BYTE12(bytes) = BYTE4(v1);
      BYTE13(bytes) = BYTE5(v1);
      BYTE14(bytes) = BYTE6(v1);
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &bytes);
      v5 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v5;
      goto LABEL_13;
  }
}

uint64_t sub_26B20E9A0(uint64_t a1)
{
  result = sub_26B211D10();
  if (result)
  {
    v3 = result;
    result = sub_26B211D40();
    v4 = __OFSUB__(a1, result);
    v5 = a1 - result;
    if (!v4)
    {
      sub_26B211D30();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, (v3 + v5));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26B20EA10(uint64_t a1)
{
  result = sub_26B20EA38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B20EA38()
{
  result = qword_2803E88F8;
  if (!qword_2803E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E88F8);
  }

  return result;
}

uint64_t sub_26B20EAA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26B20EAEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return sub_26B211D40();
}

uint64_t static Symbols.name(for:)(int a1)
{
  sub_26B20EDFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = sub_26B212830();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = sub_26B212800();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  sub_26B2127F0();
  *(swift_allocObject() + 16) = a1;
  sub_26B2127D0();

  sub_26B212820();
  v25 = sub_26B212810();
  (*(v10 + 8))(v15, v7);
  sub_26B1830F8(v25, v6);

  v26 = sub_26B2127C0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v26) == 1)
  {
    (*(v19 + 8))(v24, v16);
    sub_26B20EF64(v6);
    return 0;
  }

  else
  {
    v27 = sub_26B2127B0();
    (*(v19 + 8))(v24, v16);
    (*(*(v26 - 8) + 8))(v6, v26);
  }

  return v27;
}

void sub_26B20EDFC()
{
  if (!qword_2803E8900[0])
  {
    sub_26B2127C0();
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, qword_2803E8900);
    }
  }
}

uint64_t sub_26B20EE54(uint64_t a1, int a2)
{
  v4 = sub_26B212850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  (*(v5 + 104))(v8, *MEMORY[0x277D49420], v4);
  LOBYTE(a2) = MEMORY[0x26D66FC70](a1, v8);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

uint64_t sub_26B20EF64(uint64_t a1)
{
  sub_26B20EDFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static Symbols.scalar(for:)(uint64_t a1, uint64_t a2)
{
  sub_26B20EDFC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_26B212850();
  v9 = OUTLINED_FUNCTION_0(v8);
  v40 = v10;
  v41 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v15 = (v14 - v13);
  v16 = sub_26B212830();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  v25 = sub_26B212800();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v33 = v32 - v31;
  sub_26B2127F0();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  sub_26B2128F0();
  sub_26B2127E0();

  sub_26B212820();
  v35 = sub_26B212810();
  (*(v19 + 8))(v24, v16);
  sub_26B1830F8(v35, v7);

  v36 = sub_26B2127C0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v36) == 1)
  {
    (*(v28 + 8))(v33, v25);
    sub_26B20EF64(v7);
LABEL_6:
    v38 = 0;
    v37 = 1;
    return v38 | (v37 << 32);
  }

  sub_26B2127A0();
  (*(v28 + 8))(v33, v25);
  (*(*(v36 - 8) + 8))(v7, v36);
  if ((*(v40 + 88))(v15, v41) != *MEMORY[0x277D49420])
  {
    (*(v40 + 8))(v15, v41);
    goto LABEL_6;
  }

  (*(v40 + 96))(v15, v41);
  v37 = 0;
  v38 = *v15;
  return v38 | (v37 << 32);
}

uint64_t sub_26B20F32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_26B2127B0() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26B213E30();
  }

  return v6 & 1;
}

_BYTE *storeEnumTagSinglePayload for Symbols(_BYTE *result, int a2, int a3)
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

BOOL sub_26B20F450()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  v2 = v1;
  if (Strong)
  {
    if (v1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_26B20F4C8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(a2 + 16);
    sub_26B2129A0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26B20F534(uint64_t a1)
{
  sub_26B214030();
  sub_26B20F4C8(v3, a1);
  return sub_26B214070();
}

uint64_t sub_26B20F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  sub_26B20F4C8(v6, a2);
  return sub_26B214070();
}

BOOL sub_26B20F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_26B20F450();
}

uint64_t WeakObject.wrappedValue.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  (*(v6 + 16))(v9, v1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v5 + 8))(v9, v3);
  return Strong;
}

uint64_t sub_26B20F6B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for WeakObject();
  v6 = WeakObject.wrappedValue.read(v10, v5);
  v8 = v7;
  swift_unknownObjectRetain();
  result = (v6)(v10, 0);
  *a3 = v8;
  return result;
}

uint64_t (*WeakObject.wrappedValue.read(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  (*(v8 + 16))(a1, v2, v5);
  *(a1 + 8) = swift_unknownObjectWeakLoadStrong();
  (*(v7 + 8))(a1, v5);
  return sub_26B20F804;
}

uint64_t sub_26B20F80C(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  v2 = WeakObject.wrappedValue.modify(v6);
  v4 = *v3;
  *v3 = v1;
  swift_unknownObjectRelease();
  return v2(v6, 0);
}

uint64_t WeakObject.wrappedValue.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_8_29();
}

uint64_t sub_26B20F8C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakObject.wrappedValue.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakKeys.init(wrappedValue:)()
{
  OUTLINED_FUNCTION_4_34();
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_32();
  v1 = Dictionary.mapKeys<A>(_:)();

  *v0 = v1;
  return result;
}

uint64_t WeakKeys.wrappedValue.getter(void *a1)
{
  OUTLINED_FUNCTION_9_25(a1);
  type metadata accessor for _WeakValue();
  v8 = v2;
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  v3 = sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B20FADC, v7, v3);
  v4 = *v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_32();
  v5 = Dictionary.compactMapKeys<A>(_:)();

  return v5;
}

BOOL sub_26B20FADC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_26B14D208();
}

uint64_t sub_26B20FB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 24);
  v7 = type metadata accessor for _WeakValue();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakKeys.wrappedValue.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_5_27(a1, a2);
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_7_23();
  v3 = Dictionary.mapKeys<A>(_:)();

  v4 = *v2;

  *v2 = v3;
  return result;
}

uint64_t WeakKeys.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakKeys.wrappedValue.getter(v3);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t WeakValues.init(wrappedValue:)()
{
  OUTLINED_FUNCTION_4_34();
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_3_32();
  v1 = sub_26B212930();

  *v0 = v1;
  return result;
}

uint64_t sub_26B20FD2C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_26B152AC8(a1);
}

uint64_t WeakValues.wrappedValue.getter(void *a1)
{
  OUTLINED_FUNCTION_9_25(a1);
  type metadata accessor for _WeakValue();
  v2 = sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B20FE78, v6, v2);
  v3 = *v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_32();
  v4 = sub_26B2128B0();

  return v4;
}

BOOL sub_26B20FE34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

BOOL sub_26B20FE78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_26B20FE34();
}

uint64_t sub_26B20FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v7 = type metadata accessor for _WeakValue();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakValues.wrappedValue.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_5_27(a1, a2);
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_3_32();
  OUTLINED_FUNCTION_7_23();
  v3 = sub_26B212930();

  v4 = *v2;

  *v2 = v3;
  return result;
}

uint64_t WeakValues.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakValues.wrappedValue.getter(v3);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t WeakDictionary.init(wrappedValue:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  Dictionary.mapKeys<A>(_:)();

  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_3_32();
  v2 = sub_26B212930();

  *a1 = v2;
  return result;
}

uint64_t sub_26B210144(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_26B14CD40(a1);
}

uint64_t WeakDictionary.wrappedValue.getter(void *a1)
{
  v2 = a1[3];
  v7 = a1[2];
  v8 = v2;
  v9 = a1[4];
  type metadata accessor for _WeakValue();
  type metadata accessor for _WeakValue();
  v10 = v9;
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  v3 = sub_26B212940();
  Dictionary.removeAll(where:)(sub_26B2102B0, v6, v3);
  v4 = *v1;
  return Dictionary.compactMapKeyValues<A, B>(_:)();
}

uint64_t sub_26B210260()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_26B2102B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_26B210260() & 1;
}

uint64_t sub_26B2102D4(uint64_t *a1, uint64_t *a2)
{
  *a1 = swift_unknownObjectWeakLoadStrong();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_26B210324(uint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_26B2102D4(a1, a2);
}

uint64_t WeakDictionary.wrappedValue.setter(uint64_t a1, void *a2)
{
  v7 = a2[2];
  v8 = a2[3];
  v3 = a2[4];
  type metadata accessor for _WeakValue();
  type metadata accessor for _WeakValue();
  OUTLINED_FUNCTION_0_47();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_23();
  v4 = Dictionary.mapKeyValues<A, B>(_:)();

  v5 = *v2;

  *v2 = v4;
  return result;
}

uint64_t sub_26B210414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  swift_unknownObjectRetain();
  _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
  swift_unknownObjectRetain();
  return _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
}

uint64_t sub_26B210484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  return sub_26B210414(a1, a2, a3, a4);
}

uint64_t WeakDictionary.wrappedValue.modify(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_39(a1, a2);
  *v2 = WeakDictionary.wrappedValue.getter(v3);
  return OUTLINED_FUNCTION_8_29();
}

uint64_t sub_26B2104FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  return 0;
}

uint64_t OUTLINED_FUNCTION_9_25(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  return 255;
}

uint64_t sub_26B210674@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = sub_26B213050();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WeakCache.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakCache.init()();
  return v0;
}

uint64_t WeakCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  return MEMORY[0x2822009F8](sub_26B210770, 0, 0);
}

uint64_t sub_26B210770()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  v3 = *(*(v0 + 48) + 16);
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1[10];
  v5 = v1[11];
  *(v0 + 80) = v5;
  *(v4 + 24) = v5;
  *(v4 + 32) = v1[12];
  *(v4 + 40) = v7;
  *(v4 + 56) = v2;

  return MEMORY[0x2822009F8](sub_26B210830, v3, 0);
}

uint64_t sub_26B210830()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_26B2133E0();
  ActorBox.withValue<A>(_:)(sub_26B210E3C);
  v0[11] = 0;
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2822009F8](sub_26B17F9EC, 0, 0);
}

uint64_t sub_26B2108F8()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[8];
  v2 = v0[9];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[11];

  return v3();
}

uint64_t WeakCache.clean(keys:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_26B213050();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v9 = v1;
  v10 = a1;
  sub_26B210674(&v8[-v6]);
  return sub_26B2130C0();
}

uint64_t *WeakCache.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  type metadata accessor for WeakCache.WeakRef();
  sub_26B212940();
  type metadata accessor for ActorBox();
  v7 = sub_26B212860();
  v1[2] = ActorBox.__allocating_init(value:)(&v7);
  return v1;
}

uint64_t sub_26B210B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v28 = a4;
  v29 = a6;
  v24 = *(a5 - 8);
  v10 = *(v24 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v26 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v13;
  v14 = *v11;
  v15 = type metadata accessor for WeakCache.WeakRef();
  v25 = a2;
  sub_26B212950();
  v16 = sub_26B2133E0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v30, v32, v16);
  if (v31 == 1)
  {
    (*(v17 + 8))(v30, v16);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    (*(*(v15 - 8) + 8))(v30, v15);
    if (Strong)
    {
      result = (*(v17 + 8))(v32, v16);
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v23[1] = a1;

    v21 = v33;
    v22 = a3(v20);
    if (v21)
    {
      (*(v17 + 8))(v32, v16);
      return sub_26B193F8C(a3);
    }

    Strong = v22;
    v33 = a3;
    if (v22)
    {
      (*(v24 + 16))(v26, v25, a5);
      swift_unknownObjectRetain_n();
      _s15SonicFoundation10WeakObjectV12wrappedValueACyxGxSg_tcfC_0();
      v31 = 0;
      sub_26B212940();
      sub_26B212960();
      swift_unknownObjectRelease();
      sub_26B193F8C(v33);
      result = (*(v17 + 8))(v32, v16);
    }

    else
    {
      (*(v17 + 8))(v32, v16);
      result = sub_26B193F8C(v33);
    }
  }

  else
  {
    result = (*(v17 + 8))(v32, v16);
    Strong = 0;
  }

LABEL_9:
  *v29 = Strong;
  return result;
}

uint64_t sub_26B210E3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_26B210B04(a1, *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16), a2);
}

uint64_t sub_26B210E60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = sub_26B213080();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_26B185E18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v6;
  *(v18 + 5) = *(v5 + 88);
  *(v18 + 6) = *(v5 + 96);
  *(v18 + 7) = a2;
  *(v18 + 8) = v21;
  (*(v8 + 32))(&v18[v17], v11, v7);
  sub_26B2128F0();

  sub_26B161608();
}

uint64_t sub_26B2110A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  return MEMORY[0x2822009F8](sub_26B2110EC, 0, 0);
}

uint64_t sub_26B2110EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 16);
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = v1[10];
  v0[8] = v6;
  v5[2] = v6;
  v5[3] = v1[11];
  v5[4] = v1[12];
  v5[5] = v3;
  v5[6] = v2;

  return MEMORY[0x2822009F8](sub_26B21119C, v4, 0);
}

uint64_t sub_26B21119C()
{
  v2 = v0[6];
  v1 = v0[7];
  ActorBox.withValue<A>(_:)(sub_26B211B1C);
  v0[9] = 0;
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_26B211258, 0, 0);
}

uint64_t sub_26B211258()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  sub_26B213080();
  sub_26B213070();
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B2112C0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[6];
  v2 = v0[7];

  OUTLINED_FUNCTION_10_0();
  v4 = v0[9];

  return v3();
}

uint64_t sub_26B211324(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v43 = sub_26B213030();
  v39 = *(v43 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](v43);
  v42 = &v38 - v13;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v38 = v21;
  MEMORY[0x28223BE20](v18);
  v49 = &v38 - v22;
  v51 = a1;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v24 = *a1;
    type metadata accessor for WeakCache.WeakRef();
    v52 = sub_26B2128F0();
    sub_26B2128E0();
    swift_getWitnessTable();
    v23 = sub_26B212F60();
  }

  sub_26B2128F0();
  sub_26B2128F0();
  v25 = sub_26B212E50();

  v55 = v25;
  if (v25 == sub_26B212EF0())
  {
  }

  v50 = (v14 + 16);
  v47 = (v14 + 8);
  v48 = (v14 + 32);
  v39 += 8;
  v40 = v14;
  v45 = v20;
  v46 = a5;
  while (1)
  {
    v27 = sub_26B212EE0();
    sub_26B212E80();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = *(v14 + 16);
    v29 = v49;
    v28(v49, (v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25), a4);
LABEL_9:
    sub_26B212F30();
    (*v48)(v20, v29, a4);
    v30 = *v51;
    v31 = type metadata accessor for WeakCache.WeakRef();
    sub_26B212950();
    if (v53)
    {
      (*v47)(v20, a4);
      v32 = sub_26B2133E0();
      (*(*(v32 - 8) + 8))(&v52, v32);
    }

    else
    {
      v33 = a6;
      v34 = *(v31 - 8);
      (*(v34 + 32))(v54, &v52, v31);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        (*(v34 + 8))(v54, v31);
        (*v47)(v20, a4);
        a6 = v33;
      }

      else
      {
        v35 = v41;
        v28(v41, v20, a4);
        v52 = 0;
        v53 = 1;
        sub_26B212940();
        sub_26B212960();
        v28(v35, v45, a4);
        v20 = v45;
        sub_26B213080();
        v36 = v42;
        v14 = v40;
        sub_26B213060();
        (*v39)(v36, v43);
        (*(v34 + 8))(v54, v31);
        a6 = v33;
        (*v47)(v20, a4);
      }
    }

    v37 = sub_26B212EF0();
    v25 = v55;
    if (v55 == v37)
    {
    }
  }

  result = sub_26B213730();
  if (v38 == 8)
  {
    v52 = result;
    v29 = v49;
    v28 = *v50;
    (*v50)(v49, &v52, a4);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t WeakCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WeakCache.__deallocating_deinit()
{
  WeakCache.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26B2119D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B211A14(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_26B213080() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26B199E64;

  return sub_26B2110A0(a1, v7, v8, v9, v10, v1 + v6);
}