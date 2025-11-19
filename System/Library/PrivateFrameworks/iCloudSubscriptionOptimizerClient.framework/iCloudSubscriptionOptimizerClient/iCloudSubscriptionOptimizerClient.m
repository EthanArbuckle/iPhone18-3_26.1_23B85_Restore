uint64_t sub_275A2E30C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275A2E370()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275A2E3A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ClientLibEvent.__allocating_init(withClientEventName:andSink:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_275A3D504();
  v8 = *v6;
  v7 = v6[1];
  v11[0] = v8;
  v11[1] = v7;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](a1, a2);

  sub_275A2E8B8(a3, v11);
  v9 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t ClientLibEvent.init(withClientEventName:andSink:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_275A3D504();
  v8 = *v6;
  v7 = v6[1];
  v11[0] = v8;
  v11[1] = v7;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](a1, a2);

  sub_275A2E8B8(a3, v11);
  v9 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t static ClientLibEvent.toFullEventName(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A3D504();
  v6 = *v4;
  v7 = v4[1];

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](a1, a2);
  return v6;
}

uint64_t sub_275A2E8B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t ClientLibEvent.__deallocating_deinit()
{
  v0 = _s33iCloudSubscriptionOptimizerClient0D8LibEventCfd_0();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_275A2EA00()
{
  v0 = sub_275A3D4E4();
  swift_allocObject();
  v1 = sub_275A3D4D4();
  v5 = v0;
  v6 = MEMORY[0x277D7F5F8];
  *&v4 = v1;
  type metadata accessor for ClientLibEvents();
  v2 = swift_allocObject();
  result = sub_275A2EAD8(&v4, v2 + 16);
  qword_2815AE350 = v2;
  return result;
}

uint64_t sub_275A2EA7C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_275A2EAD8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_275A2ED6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelayedOffer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DelayedOffer()
{
  result = qword_280A23AD8;
  if (!qword_280A23AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275A2EE08()
{
  result = sub_275A3D794();
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

uint64_t sub_275A2EE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A3D794();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A2EEFC(uint64_t a1)
{
  v2 = sub_275A3D794();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FailsafeClientLibEvent.__allocating_init(withSink:failsafeEvent:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_275A2E8B8(a1, v13);
  v6 = sub_275A3D504();
  v8 = *v6;
  v7 = v6[1];
  v12[0] = v8;
  v12[1] = v7;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](0x656661736C696166, 0xE800000000000000);
  sub_275A2E8B8(v13, v12);
  v9 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = *(*v9 + 192);

  v10(0x656661736C696166, 0xED0000746E657645, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t FailsafeClientLibEvent.init(withSink:failsafeEvent:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_275A2E8B8(a1, v13);
  v6 = sub_275A3D504();
  v8 = *v6;
  v7 = v6[1];
  v12[0] = v8;
  v12[1] = v7;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](0x656661736C696166, 0xE800000000000000);
  sub_275A2E8B8(v13, v12);
  v9 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = *(*v9 + 192);

  v10(0x656661736C696166, 0xED0000746E657645, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t FailsafeClientLibEvent.__deallocating_deinit()
{
  v0 = _s33iCloudSubscriptionOptimizerClient0D8LibEventCfd_0();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_275A2F378()
{
  sub_275A3DA84();

  v1 = [v0 newOfferResponse];
  v2 = [v1 description];
  v3 = sub_275A3D934();
  v5 = v4;

  MEMORY[0x277C860D0](v3, v5);

  MEMORY[0x277C860D0](10589, 0xE200000000000000);
  return 0xD000000000000027;
}

id sub_275A2F484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FailsafeDelayedOffer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275A2F4DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AE8, &qword_275A3E550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275A3E520;
  v1 = MEMORY[0x277D837D0];
  sub_275A3DA74();
  *(inited + 96) = v1;
  strcpy((inited + 72), "iCloudStorage");
  *(inited + 86) = -4864;
  v2 = sub_275A389A4(inited);
  swift_setDeallocating();
  result = sub_275A2F8CC(inited + 32);
  qword_280A23C80 = v2;
  return result;
}

unint64_t sub_275A2F69C()
{
  sub_275A3DA84();

  v1 = [v0 toContext];
  sub_275A3D8F4();

  v2 = sub_275A3D904();
  v4 = v3;

  MEMORY[0x277C860D0](v2, v4);

  MEMORY[0x277C860D0](93, 0xE100000000000000);
  return 0xD000000000000022;
}

id sub_275A2F828()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FailsafeNewOfferResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_275A2F8CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AF0, &qword_275A3E558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t MethodCallClientLibEvent.MethodName.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0xD00000000000001FLL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
    }

    v5 = 0xD000000000000019;
    if (a1 != 4)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x726566664F77656ELL;
    if (a1 != 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000015;
    if (!a1)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_275A2FA9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x8000000275A3EBF0;
    v10 = 0xD00000000000001FLL;
    if (a1 != 6)
    {
      v10 = 0xD000000000000010;
      v9 = 0x8000000275A3EC10;
    }

    v11 = 0x8000000275A3EBB0;
    v12 = 0xD000000000000019;
    if (a1 != 4)
    {
      v12 = 0xD000000000000011;
      v11 = 0x8000000275A3EBD0;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    if (a1 == 2)
    {
      v4 = 0x726566664F77656ELL;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v3 = 0x8000000275A3EB90;
    }

    v5 = 0x8000000275A3EB50;
    v6 = 0xD000000000000016;
    if (a1)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000275A3EB70;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0x8000000275A3EB70;
        if (v7 != 0xD000000000000015)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x8000000275A3EB50;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_47;
    }

    if (a2 == 2)
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x726566664F77656ELL)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "parseDelayedOffer";
LABEL_44:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x8000000275A3EBB0;
      if (v7 != 0xD000000000000019)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "parseNotification";
    goto LABEL_44;
  }

  if (a2 == 6)
  {
    v13 = 0x8000000275A3EBF0;
    if (v7 != 0xD00000000000001FLL)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0x8000000275A3EC10;
    if (v7 != 0xD000000000000010)
    {
LABEL_49:
      v15 = sub_275A3DB04();
      goto LABEL_50;
    }
  }

LABEL_47:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_275A2FD14()
{
  sub_275A3D974();
}

uint64_t sub_275A2FE58()
{
  sub_275A3DB64();
  sub_275A3D974();

  return sub_275A3DB84();
}

uint64_t sub_275A2FFA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s33iCloudSubscriptionOptimizerClient010MethodCallD8LibEventC0E4NameO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_275A2FFD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0x8000000275A3EBF0;
    v9 = 0xD00000000000001FLL;
    if (v2 != 6)
    {
      v9 = 0xD000000000000010;
      v3 = 0x8000000275A3EC10;
    }

    v5 = 0x8000000275A3EBB0;
    v10 = 0xD000000000000019;
    if (v2 != 4)
    {
      v10 = 0xD000000000000011;
      v5 = 0x8000000275A3EBD0;
    }

    v7 = *v1 <= 5u;
    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x726566664F77656ELL;
    if (v2 != 2)
    {
      v4 = 0xD000000000000011;
      v3 = 0x8000000275A3EB90;
    }

    v5 = 0x8000000275A3EB50;
    v6 = 0xD000000000000015;
    if (*v1)
    {
      v5 = 0x8000000275A3EB70;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    v7 = *v1 <= 1u;
    if (*v1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t MethodCallClientLibEvent.MethodState.hashValue.getter(char a1)
{
  sub_275A3DB64();
  MEMORY[0x277C862B0](a1 & 1);
  return sub_275A3DB84();
}

uint64_t sub_275A3017C()
{
  v1 = *v0;
  sub_275A3DB64();
  MEMORY[0x277C862B0](v1);
  return sub_275A3DB84();
}

uint64_t sub_275A301F0()
{
  v1 = *v0;
  sub_275A3DB64();
  MEMORY[0x277C862B0](v1);
  return sub_275A3DB84();
}

uint64_t MethodCallClientLibEvent.init(withMethod:andSink:)(char a1, uint64_t *a2)
{
  sub_275A2E8B8(a2, &v10);
  v4 = sub_275A3D504();
  v6 = *v4;
  v5 = v4[1];
  v9[0] = v6;
  v9[1] = v5;

  MEMORY[0x277C860D0](0x6C746E65696C632ELL, 0xEB000000002E6269);
  MEMORY[0x277C860D0](0x6143646F6874656DLL, 0xEA00000000006C6CLL);
  sub_275A2E8B8(&v10, v9);
  v7 = sub_275A3D4A4();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = 0;
  v11 = 0xE000000000000000;
  LOBYTE(v9[0]) = a1;

  sub_275A3DAA4();
  (*(*v7 + 192))(0x646F6874656DLL, 0xE600000000000000, v10, v11);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

uint64_t MethodCallClientLibEvent.add(state:)(char a1)
{
  BYTE8(v3) = 0;
  *&v3 = a1 & 1;
  sub_275A3DAA4();
  (*(*v1 + 192))(0x6574617473, 0xE500000000000000, *(&v3 + 1), 0xE000000000000000);
}

uint64_t MethodCallClientLibEvent.add(duration:)()
{
  v1 = sub_275A3D8D4();
  (*(*v0 + 168))(0x6E6F697461727564, 0xEE0073696C6C694DLL, v1);
}

uint64_t sub_275A30508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*v3 + 184))(a2, a3, a1);
}

uint64_t MethodCallClientLibEvent.add(litmusInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 192);

  v5(0x6E4973756D74696CLL, 0xEA00000000006F66, a1, a2);
}

uint64_t MethodCallClientLibEvent.__deallocating_deinit()
{
  v0 = _s33iCloudSubscriptionOptimizerClient0D8LibEventCfd_0();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t _s33iCloudSubscriptionOptimizerClient010MethodCallD8LibEventC0E4NameO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_275A3DAE4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_275A306BC()
{
  result = qword_280A23AF8;
  if (!qword_280A23AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A23AF8);
  }

  return result;
}

unint64_t sub_275A30714()
{
  result = qword_280A23B00;
  if (!qword_280A23B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A23B00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MethodCallClientLibEvent.MethodName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodCallClientLibEvent.MethodName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MethodCallClientLibEvent.MethodState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodCallClientLibEvent.MethodState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_275A30A68(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = 0xED0000454C42414CLL;
  v7 = 0x494156415F544F4ELL;
  v8 = *(*(sub_275A3D454() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotificationContent();
  v11 = swift_dynamicCastClass();
  v27 = a1;
  if (v11)
  {
    v12 = a1;
    if (sub_275A3D644())
    {
      sub_275A3D624();
      v7 = sub_275A3D444();
      v6 = v13;

      sub_275A3339C(v10, MEMORY[0x277D7F598]);
    }

    else
    {
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v14 + 16, &aBlock);
  type metadata accessor for NewOfferClientLibEvent();
  swift_allocObject();
  sub_275A2E8B8(&aBlock, v36);
  v15 = MethodCallClientLibEvent.init(withMethod:andSink:)(2, v36);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  aBlock = 0;
  v31 = 0xE000000000000000;
  LOBYTE(v36[0]) = 0;
  sub_275A3DAA4();
  v16 = *(*v15 + 192);
  v17 = v4;
  v16(0x6574617473, 0xE500000000000000, aBlock, v31);

  v16(0x6E4973756D74696CLL, 0xEA00000000006F66, v7, v6);

  (*(*v15 + 200))(v18);

  sub_275A3D8C4();
  v19 = sub_275A3D8B4();
  sub_275A2E8B8(v14 + 16, &aBlock);
  swift_allocObject();
  sub_275A2E8B8(&aBlock, v36);
  v20 = MethodCallClientLibEvent.init(withMethod:andSink:)(2, v36);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v21 = *(*v20 + 192);
  v21(0x6E4973756D74696CLL, 0xEA00000000006F66, v7, v6);

  aBlock = 0;
  v31 = 0xE000000000000000;
  LOBYTE(v36[0]) = 1;

  sub_275A3DAA4();
  v21(0x6574617473, 0xE500000000000000, aBlock, v31);

  v22 = *(v17 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v24 = v29;
  v23[4] = v28;
  v23[5] = v24;
  v34 = sub_275A33254;
  v35 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_275A3340C;
  v33 = &block_descriptor_22;
  v25 = _Block_copy(&aBlock);

  [v22 newOffer:v27 andCallback:v25];
  _Block_release(v25);
}

uint64_t sub_275A30EF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = sub_275A3D794();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NewOfferResponse();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    sub_275A33260(v15 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_275A332D0(v9);
    }

    else
    {
      sub_275A33338(v9, v14);
      v16 = sub_275A3D774();
      v18 = v17;
      v19 = a1;
      sub_275A3339C(v14, MEMORY[0x277D7F6D0]);
      v25 = 0;
      v26 = 0xE000000000000000;
      v23 = v16;
      v24 = v18 & 1;
      sub_275A3DAA4();
      sub_275A3D464();
    }
  }

  v20 = [a1 error];
  if (v20)
  {
  }

  sub_275A3D474();

  (*(*a3 + 96))(v21);
  sub_275A3D8D4();
  sub_275A3D484();

  sub_275A3D494();
  return a4(a1);
}

uint64_t sub_275A3129C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v4 + 16, &aBlock);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v5 = MethodCallClientLibEvent.init(withMethod:andSink:)(1, &aBlock);
  aBlock = 0;
  v16 = 0xE000000000000000;
  v21 = 0;
  sub_275A3DAA4();
  (*(*v5 + 192))(0x6574617473, 0xE500000000000000, aBlock, v16);

  (*(*v5 + 200))(v6);

  sub_275A3D8C4();
  v7 = sub_275A3D8B4();
  sub_275A2E8B8(v4 + 16, &aBlock);
  swift_allocObject();
  v8 = MethodCallClientLibEvent.init(withMethod:andSink:)(1, &aBlock);
  aBlock = 0;
  v16 = 0xE000000000000000;
  v21 = 1;
  sub_275A3DAA4();
  (*(*v8 + 192))(0x6574617473, 0xE500000000000000, aBlock, v16);

  v9 = *(v3 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = a1;
  v10[5] = a2;
  v19 = sub_275A33200;
  v20 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_275A3340C;
  v18 = &block_descriptor_13;
  v11 = _Block_copy(&aBlock);

  [v9 isNotificationPending_];
  _Block_release(v11);
}

uint64_t sub_275A31568(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  (*(*a3 + 96))();
  v7 = sub_275A3D8D4();
  (*(*a2 + 168))(0x6E6F697461727564, 0xEE0073696C6C694DLL, v7);

  v8 = [a1 error];
  v9 = v8;
  if (v8)
  {
  }

  (*(*a2 + 184))(0x6563637553736177, 0xED00006C75667373, v9 == 0);

  (*(*a2 + 200))(v10);
  return a4(a1);
}

void sub_275A316D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_275A31770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v4 + 16, &aBlock);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v5 = MethodCallClientLibEvent.init(withMethod:andSink:)(0, &aBlock);
  aBlock = 0;
  v16 = 0xE000000000000000;
  v21 = 0;
  sub_275A3DAA4();
  (*(*v5 + 192))(0x6574617473, 0xE500000000000000, aBlock, v16);

  (*(*v5 + 200))(v6);

  sub_275A3D8C4();
  v7 = sub_275A3D8B4();
  sub_275A2E8B8(v4 + 16, &aBlock);
  swift_allocObject();
  v8 = MethodCallClientLibEvent.init(withMethod:andSink:)(0, &aBlock);
  aBlock = 0;
  v16 = 0xE000000000000000;
  v21 = 1;
  sub_275A3DAA4();
  (*(*v8 + 192))(0x6574617473, 0xE500000000000000, aBlock, v16);

  v9 = *(v3 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = a1;
  v10[5] = a2;
  v19 = sub_275A331D4;
  v20 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_275A31B80;
  v18 = &block_descriptor;
  v11 = _Block_copy(&aBlock);

  [v9 clearNotificationState_];
  _Block_release(v11);
}

uint64_t sub_275A31A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  (*(*a3 + 96))();
  v7 = sub_275A3D8D4();
  (*(*a2 + 168))(0x6E6F697461727564, 0xEE0073696C6C694DLL, v7);

  (*(*a2 + 184))(0x6563637553736177, 0xED00006C75667373, a1 == 0);

  (*(*a2 + 200))(v8);
  return a4(a1);
}

void sub_275A31B80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_275A31C20(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_275A31CB4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v2 + 16, &v14);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v3 = MethodCallClientLibEvent.init(withMethod:andSink:)(3, &v14);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v3 + 192))(0x6574617473, 0xE500000000000000, v14, v15);

  (*(*v3 + 200))(v4);

  sub_275A3D8C4();
  v5 = sub_275A3D8B4();
  sub_275A2E8B8(v2 + 16, &v14);
  swift_allocObject();
  v6 = MethodCallClientLibEvent.init(withMethod:andSink:)(3, &v14);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v6 + 192))(0x6574617473, 0xE500000000000000, v14, v15);

  v7 = *(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v8 = sub_275A3D8E4();
  v9 = [v7 parseDelayedOffer_];

  (*(*v5 + 96))();
  v10 = sub_275A3D8D4();
  v11 = *(*v6 + 168);

  v11(0x6E6F697461727564, 0xEE0073696C6C694DLL, v10);

  (*(*v6 + 184))(0x6563637553736177, 0xED00006C75667373, v9 != 0);

  (*(*v6 + 200))(v12);

  return v9;
}

id sub_275A32030()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v2 + 16, &v18);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v3 = MethodCallClientLibEvent.init(withMethod:andSink:)(4, &v18);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v3 + 192))(0x6574617473, 0xE500000000000000, v18, v19);

  (*(*v3 + 200))(v4);

  sub_275A3D8C4();
  v5 = sub_275A3D8B4();
  sub_275A2E8B8(v2 + 16, &v18);
  swift_allocObject();
  v6 = MethodCallClientLibEvent.init(withMethod:andSink:)(4, &v18);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v6 + 192))(0x6574617473, 0xE500000000000000, v18, v19);

  v7 = *(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v8 = sub_275A3D924();
  v9 = [v7 parseDelayedOfferFromJson_];

  if (v9)
  {
    type metadata accessor for FailsafeDelayedOffer();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(*v6 + 184);
  v12(0x61736C6961467369, 0xEA00000000006566, v10 != 0);

  (*(*v5 + 96))(v13);
  v14 = sub_275A3D8D4();
  v15 = *(*v6 + 168);

  v15(0x6E6F697461727564, 0xEE0073696C6C694DLL, v14);

  v12(0x6563637553736177, 0xED00006C75667373, v9 != 0);

  (*(*v6 + 200))(v16);

  return v9;
}

id sub_275A32458(uint64_t a1)
{
  v2 = v1;
  v25[1] = a1;
  v3 = *(*(sub_275A3D454() - 8) + 64);
  MEMORY[0x28223BE20]();
  v25[0] = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v5 + 16, &v27);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v6 = MethodCallClientLibEvent.init(withMethod:andSink:)(5, &v27);
  v27 = 0;
  v28 = 0xE000000000000000;
  v26 = 0;
  sub_275A3DAA4();
  (*(*v6 + 192))(0x6574617473, 0xE500000000000000, v27, v28);

  (*(*v6 + 200))(v7);

  sub_275A3D8C4();
  v8 = sub_275A3D8B4();
  sub_275A2E8B8(v5 + 16, &v27);
  swift_allocObject();
  v9 = MethodCallClientLibEvent.init(withMethod:andSink:)(5, &v27);
  v27 = 0;
  v28 = 0xE000000000000000;
  v26 = 1;
  sub_275A3DAA4();
  v10 = *(*v9 + 192);
  v10(0x6574617473, 0xE500000000000000, v27, v28);

  v11 = *(v2 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v12 = sub_275A3D8E4();
  v13 = [v11 parseNotification_];

  if (!v13)
  {
    goto LABEL_6;
  }

  type metadata accessor for NotificationContent();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v14 = v13;
  if ((sub_275A3D644() & 1) == 0)
  {

LABEL_6:
    v18 = 0xED0000454C42414CLL;
    v19 = 0x494156415F544F4ELL;
    goto LABEL_7;
  }

  v15 = v25[0];
  sub_275A3D624();
  v16 = sub_275A3D444();
  v18 = v17;

  sub_275A3339C(v15, MEMORY[0x277D7F598]);
  v19 = v16;
LABEL_7:
  v10(0x6E4973756D74696CLL, 0xEA00000000006F66, v19, v18);

  (*(*v8 + 96))(v20);
  v21 = sub_275A3D8D4();
  v22 = *(*v9 + 168);

  v22(0x6E6F697461727564, 0xEE0073696C6C694DLL, v21);

  (*(*v9 + 184))(0x6563637553736177, 0xED00006C75667373, v13 != 0);

  (*(*v9 + 200))(v23);

  return v13;
}

id sub_275A32904(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_275A3D8F4();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

uint64_t sub_275A32994()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v2 + 16, &v16);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v3 = MethodCallClientLibEvent.init(withMethod:andSink:)(6, &v16);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v3 + 192))(0x6574617473, 0xE500000000000000, v16, v17);

  (*(*v3 + 200))(v4);

  sub_275A3D8C4();
  v5 = sub_275A3D8B4();
  sub_275A2E8B8(v2 + 16, &v16);
  swift_allocObject();
  v6 = MethodCallClientLibEvent.init(withMethod:andSink:)(6, &v16);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v6 + 192))(0x6574617473, 0xE500000000000000, v16, v17);

  v7 = [*(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient) failsafeDelayedOfferJsonContext];
  if (v7)
  {
    v8 = v7;
    v9 = sub_275A3D934();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  (*(*v5 + 96))();
  v12 = sub_275A3D8D4();
  v13 = *(*v6 + 168);

  v13(0x6E6F697461727564, 0xEE0073696C6C694DLL, v12);

  (*(*v6 + 184))(0x6563637553736177, 0xED00006C75667373, v11 != 0);

  (*(*v6 + 200))(v14);

  return v9;
}

uint64_t sub_275A32D5C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents);
  sub_275A2E8B8(v2 + 16, &v13);
  type metadata accessor for MethodCallClientLibEvent();
  swift_allocObject();
  v3 = MethodCallClientLibEvent.init(withMethod:andSink:)(7, &v13);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v3 + 192))(0x6574617473, 0xE500000000000000, v13, v14);

  (*(*v3 + 200))(v4);

  sub_275A3D8C4();
  v5 = sub_275A3D8B4();
  sub_275A2E8B8(v2 + 16, &v13);
  swift_allocObject();
  v6 = MethodCallClientLibEvent.init(withMethod:andSink:)(7, &v13);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_275A3DAA4();
  (*(*v6 + 192))(0x6574617473, 0xE500000000000000, v13, v14);

  v7 = *(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient);
  v8 = sub_275A3D924();
  [v7 logFailsafeEvent_];

  (*(*v5 + 96))();
  v9 = sub_275A3D8D4();
  v10 = *(*v6 + 168);

  v10(0x6E6F697461727564, 0xEE0073696C6C694DLL, v9);

  (*(*v6 + 184))(0x6563637553736177, 0xED00006C75667373, 1);

  (*(*v6 + 200))(v11);
}

id sub_275A33128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsQuotaClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275A33260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A332D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275A33338(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A3D794();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A3339C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NewOfferClientLibEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275A2E8B8(a1, v4);
  v2 = MethodCallClientLibEvent.init(withMethod:andSink:)(2, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t NewOfferClientLibEvent.init(withSink:)(uint64_t *a1)
{
  sub_275A2E8B8(a1, v4);
  v2 = MethodCallClientLibEvent.init(withMethod:andSink:)(2, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t NewOfferClientLibEvent.add(responseAction:)()
{
  sub_275A3DAA4();
  sub_275A3D464();
}

uint64_t NewOfferClientLibEvent.__deallocating_deinit()
{
  v0 = _s33iCloudSubscriptionOptimizerClient0D8LibEventCfd_0();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

unint64_t sub_275A335F4()
{
  result = sub_275A389A4(MEMORY[0x277D84F90]);
  qword_280A23B20 = result;
  return result;
}

uint64_t sub_275A3361C()
{
  v0 = sub_275A3D894();
  __swift_allocate_value_buffer(v0, qword_280A23B28);
  __swift_project_value_buffer(v0, qword_280A23B28);
  type metadata accessor for NewOfferResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B68, &qword_275A3E728);
  return sub_275A3D8A4();
}

uint64_t sub_275A3369C()
{
  v0 = sub_275A3D614();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_275A3D594();
  sub_275A3D784();
  sub_275A3D724();
  sub_275A3D574();
  sub_275A3D744();
  sub_275A3D584();
  return sub_275A3D764();
}

unint64_t sub_275A33A1C()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v12 - v2;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_275A3DA84();

  v14 = 0xD00000000000001ALL;
  v15 = 0x8000000275A3F310;
  sub_275A33260(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context, v3);
  v4 = sub_275A3D944();
  MEMORY[0x277C860D0](v4);

  MEMORY[0x277C860D0](2108509, 0xE300000000000000);
  v6 = v14;
  v5 = v15;
  v14 = 0x5B3D726F727265;
  v15 = 0xE700000000000000;
  v13 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError);
  v7 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B70, &unk_275A3E730);
  v8 = sub_275A3D944();
  MEMORY[0x277C860D0](v8);

  MEMORY[0x277C860D0](10589, 0xE200000000000000);
  v9 = v14;
  v10 = v15;
  v14 = v6;
  v15 = v5;

  MEMORY[0x277C860D0](v9, v10);

  return v14;
}

BOOL sub_275A33BF4()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v14 - v3;
  v5 = sub_275A3D794();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError))
  {
    if (qword_280A23AC0 != -1)
    {
      swift_once();
    }

    v10 = sub_275A3D894();
    __swift_project_value_buffer(v10, qword_280A23B28);
    sub_275A3D864();
    return 1;
  }

  sub_275A33260(v1 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_275A332D0(v4);
    return 1;
  }

  sub_275A33338(v4, v9);
  sub_275A3D774();
  v11 = sub_275A3D4F4();
  if (v11 == sub_275A3D4F4())
  {
    sub_275A2EEFC(v9);
    return 1;
  }

  sub_275A3D774();
  sub_275A2EEFC(v9);
  v13 = sub_275A3D4F4();
  return v13 == sub_275A3D4F4();
}

id sub_275A33E84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewOfferResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NewOfferResponse()
{
  result = qword_280A23B50;
  if (!qword_280A23B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275A33F5C()
{
  sub_275A33FF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_275A33FF4()
{
  if (!qword_280A23B60)
  {
    sub_275A3D794();
    v0 = sub_275A3DA24();
    if (!v1)
    {
      atomic_store(v0, &qword_280A23B60);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_275A34148()
{
  v0 = sub_275A3D614();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_275A3D454();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_275A3D654();
  sub_275A3D524();
  sub_275A3D624();
  sub_275A3D514();
  sub_275A3D674();
  sub_275A3D534();
  sub_275A3D694();
  return sub_275A3D544();
}

id sub_275A343B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NotificationContent()
{
  result = qword_280A23B78;
  if (!qword_280A23B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275A3444C()
{
  result = sub_275A3D6E4();
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

uint64_t sub_275A344DC(uint64_t a1)
{
  v2 = sub_275A3D6E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275A346AC()
{
  sub_275A3DA84();

  v5 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_maxDelayTsMillis);
  v6 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_maxDelayTsMillis + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B98, qword_275A3E780);
  v1 = sub_275A3D944();
  MEMORY[0x277C860D0](v1);

  MEMORY[0x277C860D0](2108509, 0xE300000000000000);
  MEMORY[0x277C860D0](0xD000000000000012, 0x8000000275A3F4B0);

  v2 = *(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_responseError);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B70, &unk_275A3E730);
  v3 = sub_275A3D944();
  MEMORY[0x277C860D0](v3);

  MEMORY[0x277C860D0](93, 0xE100000000000000);

  MEMORY[0x277C860D0](0x5B3D726F727265, 0xE700000000000000);

  MEMORY[0x277C860D0](41, 0xE100000000000000);

  return 0xD00000000000001CLL;
}

id sub_275A348E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationPendingResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_275A34954()
{
  result = qword_280A23BA0;
  if (!qword_280A23BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A23BA0);
  }

  return result;
}

uint64_t sub_275A349B0()
{
  sub_275A3DB64();
  MEMORY[0x277C862B0](0);
  return sub_275A3DB84();
}

uint64_t sub_275A34A1C()
{
  sub_275A3DB64();
  MEMORY[0x277C862B0](0);
  return sub_275A3DB84();
}

uint64_t sub_275A34A6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_275A3D2D4();

  return v1;
}

uint64_t getEnumTagSinglePayload for QuotaClientError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for QuotaClientError(_WORD *result, int a2, int a3)
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

unint64_t sub_275A34C18()
{
  result = qword_280A23BA8;
  if (!qword_280A23BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A23BA8);
  }

  return result;
}

uint64_t sub_275A34C70()
{
  v0 = sub_275A3D894();
  __swift_allocate_value_buffer(v0, qword_280A23BB0);
  __swift_project_value_buffer(v0, qword_280A23BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C20, &qword_275A3EA40);
  return sub_275A3D8A4();
}

uint64_t static QuotaServerProtocol.toServerPushNotification(_:)()
{
  v0 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_275A391A0();
  strcpy(&v12, "notificationId");
  HIBYTE(v12) = -18;
  v4 = MEMORY[0x277D837D0];
  sub_275A3DA74();
  sub_275A3D694();
  v5 = sub_275A3D5D4();
  v7 = v6;
  sub_275A39628(v2, MEMORY[0x277D7F670]);
  v13 = v4;
  *&v12 = v5;
  *(&v12 + 1) = v7;
  sub_275A394B8(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_275A37514(v11, v14, isUniquelyReferenced_nonNull_native);
  sub_275A394C8(v14);
  return v10;
}

uint64_t sub_275A350E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_275A394B8(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_275A37514(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_275A394C8(a2);
    *v2 = v7;
  }

  else
  {
    sub_275A39FCC(a1, &qword_280A23BD8, &qword_275A3E9B8);
    sub_275A37014(a2, v8);
    sub_275A394C8(a2);
    return sub_275A39FCC(v8, &qword_280A23BD8, &qword_275A3E9B8);
  }

  return result;
}

unint64_t static QuotaServerProtocol.toServerFetchOffers(_:)()
{
  v0 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AE8, &qword_275A3E550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275A3E8A0;
  v11 = 0x6449726566666FLL;
  v12 = 0xE700000000000000;
  v4 = MEMORY[0x277D837D0];
  sub_275A3DA74();
  sub_275A3D694();
  v5 = sub_275A3D5F4();
  v7 = v6;
  sub_275A39628(v2, MEMORY[0x277D7F670]);
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v7;
  v11 = 0x746E6F4364627573;
  v12 = 0xEB00000000747865;
  sub_275A3DA74();
  v8 = sub_275A391A0();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BC8, &unk_275A3E9A0);
  *(inited + 144) = v8;
  v9 = sub_275A389A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AF0, &qword_275A3E558);
  swift_arrayDestroy();
  return v9;
}

uint64_t static QuotaServerProtocol.parse(fromFetchOffers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275A3DA74();
  if (!*(a1 + 16) || (v4 = sub_275A36F08(&v15), (v5 & 1) == 0))
  {
    sub_275A394C8(&v15);
    goto LABEL_9;
  }

  sub_275A3951C(*(a1 + 56) + 32 * v4, v17);
  sub_275A394C8(&v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v9 = sub_275A3D894();
    __swift_project_value_buffer(v9, qword_280A23BB0);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_275A3DA84();

    v10 = 0x8000000275A3F580;
    v11 = 0xD00000000000002BLL;
    goto LABEL_12;
  }

  sub_275A3DA74();
  if (*(a1 + 16) && (v6 = sub_275A36F08(&v15), (v7 & 1) != 0))
  {
    sub_275A3951C(*(a1 + 56) + 32 * v6, v17);
    sub_275A394C8(&v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BC8, &unk_275A3E9A0);
    if (swift_dynamicCast())
    {
      static QuotaServerProtocol.toFetchOffersContext(context:notificationId:offerId:)(0x746E6F4364627573, 0, 0x6449726566666FLL, 0xE700000000000000, a2);
    }
  }

  else
  {

    sub_275A394C8(&v15);
  }

  if (qword_280A23AC8 != -1)
  {
    swift_once();
  }

  v14 = sub_275A3D894();
  __swift_project_value_buffer(v14, qword_280A23BB0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_275A3DA84();

  v10 = 0x8000000275A3F5B0;
  v11 = 0xD00000000000002FLL;
LABEL_12:
  v15 = v11;
  v16 = v10;
  v12 = sub_275A3D904();
  MEMORY[0x277C860D0](v12);

  MEMORY[0x277C860D0](93, 0xE100000000000000);
  sub_275A3D874();

  v13 = sub_275A3D6E4();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t static QuotaServerProtocol.toFetchOffersContext(context:notificationId:offerId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v7 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BD0, &qword_275A3E9B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v56 - v11;
  v13 = sub_275A3D454();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v62, "callSubD");
  BYTE9(v62[0]) = 0;
  WORD5(v62[0]) = 0;
  HIDWORD(v62[0]) = -402653184;
  sub_275A3DA74();
  if (!*(a1 + 16) || (v18 = sub_275A36F08(&v64), (v19 & 1) == 0))
  {
    sub_275A394C8(&v64);
    goto LABEL_9;
  }

  sub_275A3951C(*(a1 + 56) + 32 * v18, &v66);
  sub_275A394C8(&v64);
  sub_275A39578();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v23 = sub_275A3D894();
    __swift_project_value_buffer(v23, qword_280A23BB0);
    strcpy(v62, "Found [");
    *(&v62[0] + 1) = 0xE700000000000000;
    *&v66 = 0x446275536C6C6163;
    *(&v66 + 1) = 0xE800000000000000;
    sub_275A3DA74();
    if (*(a1 + 16) && (v24 = sub_275A36F08(&v64), (v25 & 1) != 0))
    {
      sub_275A3951C(*(a1 + 56) + 32 * v24, &v66);
      sub_275A394C8(&v64);
    }

    else
    {
      sub_275A394C8(&v64);
      v66 = 0u;
      v67 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BD8, &qword_275A3E9B8);
    v26 = sub_275A3D944();
    MEMORY[0x277C860D0](v26);

    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    v64 = 0xD000000000000025;
    v65 = 0x8000000275A3F5E0;
    MEMORY[0x277C860D0](*&v62[0], *(&v62[0] + 1));

    sub_275A3D884();

    goto LABEL_16;
  }

  v20 = *&v62[0];
  v63 = 0x4059000000000000;
  strcpy(v62, "mlServerScore");
  HIWORD(v62[0]) = -4864;
  sub_275A3DA74();
  if (*(a1 + 16) && (v21 = sub_275A36F08(&v64), (v22 & 1) != 0))
  {
    sub_275A3951C(*(a1 + 56) + 32 * v21, v62);
    sub_275A394C8(&v64);
    sub_275A394B8(v62, &v66);
    sub_275A3951C(&v66, &v64);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_280A23AC8 != -1)
      {
        swift_once();
      }

      v38 = sub_275A3D894();
      __swift_project_value_buffer(v38, qword_280A23BB0);
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_275A3DA84();
      MEMORY[0x277C860D0](0xD00000000000001FLL, 0x8000000275A3F6D0);
      sub_275A3DAA4();
      MEMORY[0x277C860D0](11869, 0xE200000000000000);
      v39 = v64;
      v40 = v65;
      v64 = 0xD000000000000023;
      v65 = 0x8000000275A3F6A0;
      MEMORY[0x277C860D0](v39, v40);

      sub_275A3D884();

      __swift_destroy_boxed_opaque_existential_1(&v66);
      goto LABEL_16;
    }

    v57 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v63 = *&v62[0];
  }

  else
  {
    v57 = v20;
    sub_275A394C8(&v64);
  }

  *&v62[0] = 0x73756D74696CLL;
  *(&v62[0] + 1) = 0xE600000000000000;
  sub_275A3DA74();
  if (!*(a1 + 16) || (v29 = sub_275A36F08(&v64), (v30 & 1) == 0))
  {
    sub_275A394C8(&v64);
    goto LABEL_26;
  }

  sub_275A3951C(*(a1 + 56) + 32 * v29, &v66);
  sub_275A394C8(&v64);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v33 = sub_275A3D894();
    __swift_project_value_buffer(v33, qword_280A23BB0);
    strcpy(v62, "Found [");
    *(&v62[0] + 1) = 0xE700000000000000;
    *&v66 = 0x73756D74696CLL;
    *(&v66 + 1) = 0xE600000000000000;
    sub_275A3DA74();
    if (*(a1 + 16))
    {
      v34 = sub_275A36F08(&v64);
      v35 = v57;
      if (v36)
      {
        sub_275A3951C(*(a1 + 56) + 32 * v34, &v66);
        sub_275A394C8(&v64);
      }

      else
      {
        sub_275A394C8(&v64);
        v66 = 0u;
        v67 = 0u;
      }
    }

    else
    {
      sub_275A394C8(&v64);
      v66 = 0u;
      v67 = 0u;
      v35 = v57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BD8, &qword_275A3E9B8);
    v37 = sub_275A3D944();
    MEMORY[0x277C860D0](v37);

    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    v64 = 0xD000000000000022;
    v65 = 0x8000000275A3F610;
    MEMORY[0x277C860D0](*&v62[0], *(&v62[0] + 1));

    sub_275A3D884();

    goto LABEL_16;
  }

  v31 = *(&v62[0] + 1);
  v56 = *&v62[0];
  static QuotaServerProtocol.parseLitmusInfo(_:)(*&v62[0], *(&v62[0] + 1), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_275A39FCC(v12, &qword_280A23BD0, &qword_275A3E9B0);
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v32 = sub_275A3D894();
    __swift_project_value_buffer(v32, qword_280A23BB0);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_275A3DA84();

    v64 = 0xD000000000000024;
    v65 = 0x8000000275A3F640;
    MEMORY[0x277C860D0](v56, v31);

    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    sub_275A3D884();

LABEL_16:
    v27 = sub_275A3D6E4();
    return (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
  }

  sub_275A395C4(v12, v17);
  strcpy(v62, "maxDelayInSecs");
  HIBYTE(v62[0]) = -18;
  sub_275A3DA74();
  if (!*(a1 + 16) || (v41 = sub_275A36F08(&v64), (v42 & 1) == 0))
  {
    sub_275A394C8(&v64);
    goto LABEL_46;
  }

  sub_275A3951C(*(a1 + 56) + 32 * v41, &v66);
  sub_275A394C8(&v64);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v47 = sub_275A3D894();
    __swift_project_value_buffer(v47, qword_280A23BB0);
    strcpy(v62, "Found [");
    *(&v62[0] + 1) = 0xE700000000000000;
    strcpy(&v66, "maxDelayInSecs");
    HIBYTE(v66) = -18;
    sub_275A3DA74();
    if (*(a1 + 16))
    {
      v48 = sub_275A36F08(&v64);
      v49 = v57;
      if (v50)
      {
        sub_275A3951C(*(a1 + 56) + 32 * v48, &v66);
        sub_275A394C8(&v64);
      }

      else
      {
        sub_275A394C8(&v64);
        v66 = 0u;
        v67 = 0u;
      }
    }

    else
    {
      sub_275A394C8(&v64);
      v66 = 0u;
      v67 = 0u;
      v49 = v57;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23BD8, &qword_275A3E9B8);
    v51 = sub_275A3D944();
    MEMORY[0x277C860D0](v51);

    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    v64 = 0xD00000000000002ALL;
    v65 = 0x8000000275A3F670;
    MEMORY[0x277C860D0](*&v62[0], *(&v62[0] + 1));

    sub_275A3D884();

    v52 = sub_275A3D6E4();
    (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
    return sub_275A39628(v17, MEMORY[0x277D7F598]);
  }

  v43 = *&v62[0];
  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;
  strcpy(&v61, "previousState");
  HIWORD(v61) = -4864;
  sub_275A3DA74();
  if (*(a1 + 16) && (v44 = sub_275A36F08(&v64), (v45 & 1) != 0))
  {
    sub_275A3951C(*(a1 + 56) + 32 * v44, &v66);
    sub_275A394C8(&v64);
    if (swift_dynamicCast())
    {
      v62[0] = v61;
    }

    v46 = v57;
  }

  else
  {
    sub_275A394C8(&v64);
    v46 = v57;
  }

  v57 = v46;
  if ([v46 BOOLValue])
  {
    v53 = 2;
  }

  else
  {
    v53 = 1;
  }

  MEMORY[0x28223BE20]();
  *(&v56 - 2) = v62;
  sub_275A39DB8(&qword_280A23BE8, MEMORY[0x277D7F670]);
  sub_275A3D304();
  if (a2)
  {

    sub_275A3D5E4();
  }

  if (v59)
  {

    sub_275A3D604();
  }

  v54 = sub_275A3D6E4();
  MEMORY[0x28223BE20]();
  *(&v56 - 6) = v53;
  *(&v56 - 40) = 1;
  *(&v56 - 4) = v17;
  *(&v56 - 3) = v43;
  *(&v56 - 2) = &v63;
  *(&v56 - 1) = v9;
  sub_275A39DB8(&qword_280A23BF0, MEMORY[0x277D7F6A0]);
  v55 = v60;
  sub_275A3D304();

  (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
  sub_275A39628(v9, MEMORY[0x277D7F670]);

  return sub_275A39628(v17, MEMORY[0x277D7F598]);
}

uint64_t static QuotaServerProtocol.parse(fromPushNotification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275A3DA74();
  if (*(a1 + 16) && (v4 = sub_275A36F08(&v10), (v5 & 1) != 0))
  {
    sub_275A3951C(*(a1 + 56) + 32 * v4, v12);
    sub_275A394C8(&v10);
    if (swift_dynamicCast())
    {
      static QuotaServerProtocol.toFetchOffersContext(context:notificationId:offerId:)(a1, 0xEE0064496E6F6974, 0, 0, a2);
    }
  }

  else
  {
    sub_275A394C8(&v10);
  }

  if (qword_280A23AC8 != -1)
  {
    swift_once();
  }

  v7 = sub_275A3D894();
  __swift_project_value_buffer(v7, qword_280A23BB0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_275A3DA84();

  v10 = 0xD000000000000032;
  v11 = 0x8000000275A3F6F0;
  v8 = sub_275A3D904();
  MEMORY[0x277C860D0](v8);

  MEMORY[0x277C860D0](93, 0xE100000000000000);
  sub_275A3D874();

  v9 = sub_275A3D6E4();
  return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
}

uint64_t static QuotaServerProtocol.parseLitmusInfo(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = 46;
  v55 = 0xE100000000000000;
  v52 = &v54;

  v7 = sub_275A37880(0x7FFFFFFFFFFFFFFFLL, 1, sub_275A39700, v51, a1, a2, v6);
  v8 = v7;
  v9 = v7[2];
  if (v9 != 4)
  {

    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v15 = sub_275A3D894();
    __swift_project_value_buffer(v15, qword_280A23BB0);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_275A3DA84();
    MEMORY[0x277C860D0](0x6574617261706573, 0xEE005B2079622064);
    sub_275A3D914();
    MEMORY[0x277C860D0](2109021, 0xE300000000000000);
    v16 = v54;
    v17 = v55;
    v54 = 0xD000000000000031;
    v55 = 0x8000000275A3F730;
    MEMORY[0x277C860D0](v16, v17);

    v19 = v54;
    v18 = v55;
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_275A3DA84();

    v54 = 0x5B20646E756F46;
    v55 = 0xE700000000000000;
    v53 = v9;
    v20 = sub_275A3DAF4();
    MEMORY[0x277C860D0](v20);

    MEMORY[0x277C860D0](0x6E6F706D6F63205DLL, 0xED00002E73746E65);
    v21 = v54;
    v22 = v55;
    v54 = v19;
    v55 = v18;

    MEMORY[0x277C860D0](v21, v22);

    sub_275A3D884();

    v23 = sub_275A3D454();
    v24 = *(*(v23 - 8) + 56);
    v25 = a3;
    return v24(v25, 1, 1, v23);
  }

  v50 = a3;
  v10 = v7[4];
  v11 = v7[5];
  if ((v11 ^ v10) < 0x4000)
  {
    goto LABEL_20;
  }

  v12 = v7[6];
  v13 = v7[7];
  result = sub_275A388DC(v7[4], v7[5], v12, v13, 10);
  if ((result & 0x10000000000) != 0)
  {

    v26 = sub_275A37C40(v10, v11, v12, v13, 10);

    if ((v26 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }
  }

  else if ((result & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

  if (v8[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = v8[8];
  v28 = v8[9];
  if ((v28 ^ v27) < 0x4000)
  {
LABEL_20:

LABEL_21:
    if (qword_280A23AC8 != -1)
    {
      swift_once();
    }

    v36 = sub_275A3D894();
    __swift_project_value_buffer(v36, qword_280A23BB0);
    v54 = 0x5B20646E756F46;
    v55 = 0xE700000000000000;
    MEMORY[0x277C860D0](a1, a2);
    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    v37 = v54;
    v38 = v55;
    v54 = 0xD000000000000053;
    v55 = 0x8000000275A3F770;
    MEMORY[0x277C860D0](v37, v38);

    sub_275A3D884();

    v23 = sub_275A3D454();
    v24 = *(*(v23 - 8) + 56);
    v25 = v50;
    return v24(v25, 1, 1, v23);
  }

  v29 = v8[10];
  v30 = v8[11];
  result = sub_275A388DC(v8[8], v8[9], v29, v30, 10);
  if ((result & 0x10000000000) != 0)
  {

    v31 = sub_275A37C40(v27, v28, v29, v30, 10);

    if ((v31 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if ((result & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v8[2] < 3uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v32 = v8[12];
  v33 = v8[13];
  if ((v33 ^ v32) < 0x4000)
  {
    goto LABEL_20;
  }

  v35 = v8[14];
  v34 = v8[15];
  result = sub_275A388DC(v8[12], v8[13], v35, v34, 10);
  if ((result & 0x10000000000) != 0)
  {

    v39 = sub_275A37C40(v32, v33, v35, v34, 10);

    result = v39;
    if ((v39 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }
  }

  else if ((result & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

  if (v8[2] < 4uLL)
  {
    goto LABEL_31;
  }

  v40 = v8[16];
  v41 = v8[17];
  v42 = v8[18];
  v43 = v8[19];

  v44 = MEMORY[0x277C86090](v40, v41, v42, v43);
  v46 = v45;

  sub_275A39BC4(v44, v46);
  v48 = v47;

  if ((v48 & 0x100) != 0)
  {
    goto LABEL_21;
  }

  v49 = sub_275A3D454();
  MEMORY[0x28223BE20]();
  sub_275A39DB8(&qword_280A23BF8, MEMORY[0x277D7F598]);
  sub_275A3D304();
  return (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
}

uint64_t sub_275A36D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v10 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_275A3D454() - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A3D6D4();
  sub_275A39E98(a4, v15, MEMORY[0x277D7F598]);
  sub_275A3D634();
  sub_275A3D684();
  v16 = *a6;
  sub_275A3D664();
  sub_275A39E98(a7, v12, MEMORY[0x277D7F670]);
  return sub_275A3D6A4();
}

uint64_t sub_275A36E9C()
{
  sub_275A3D414();
  sub_275A3D3C4();
  sub_275A3D434();
  return sub_275A3D3F4();
}

unint64_t sub_275A36F08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_275A3DA54();

  return sub_275A36F4C(a1, v5);
}

unint64_t sub_275A36F4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_275A39F00(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C861A0](v9, a1);
      sub_275A394C8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_275A37014@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_275A36F08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_275A376DC();
      v11 = v13;
    }

    sub_275A394C8(*(v11 + 48) + 40 * v8);
    sub_275A394B8((*(v11 + 56) + 32 * v8), a2);
    sub_275A37370(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_275A370B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C28, &unk_275A3EA48);
  result = sub_275A3DAC4();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_275A394B8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_275A39F00(v24, &v38);
        sub_275A3951C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_275A3DA54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_275A394B8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_275A37370(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275A3DA44() + 1) & ~v5;
    do
    {
      sub_275A39F00(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_275A3DA54();
      result = sub_275A394C8(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_275A37514(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_275A36F08(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_275A376DC();
      goto LABEL_7;
    }

    sub_275A370B8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_275A36F08(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_275A39F00(a2, v22);
      return sub_275A37660(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_275A3DB14();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_275A394B8(a1, v17);
}

_OWORD *sub_275A37660(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_275A394B8(a3, (a4[7] + 32 * a1));
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

void *sub_275A376DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C28, &unk_275A3EA48);
  v2 = *v0;
  v3 = sub_275A3DAB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_275A39F00(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_275A3951C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_275A394B8(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_275A37880@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_275A3DA14();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_275A386B0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_275A386B0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_275A3D9F4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_275A3D984();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_275A3D984();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_275A3DA14();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_275A386B0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_275A3DA14();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_275A386B0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_275A386B0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_275A3D984();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_275A37C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_275A39E44();

  result = sub_275A3DA04();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_275A381C8();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_275A3DA94();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_275A381C8()
{
  v0 = sub_275A3DA14();
  v4 = sub_275A38248(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_275A38248(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_275A3D964();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_275A3DA34();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_275A383A0(v9, 0);
  v12 = sub_275A38414(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_275A3D964();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_275A3DA94();
LABEL_4:

  return sub_275A3D964();
}

void *sub_275A383A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C10, &qword_275A3EA30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_275A38414(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_275A38634(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_275A3D9D4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_275A3DA94();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_275A38634(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_275A3D9A4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_275A38634(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_275A3D9E4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C860F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_275A386B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C18, &qword_275A3EA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275A387BC(char *a1, int64_t a2, char a3)
{
  result = sub_275A387DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275A387DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C00, &qword_275A3EA28);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_275A388DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_275A3DA94();
  }

  result = sub_275A39758(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_275A389A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C28, &unk_275A3EA48);
    v3 = sub_275A3DAD4();
    v4 = a1 + 32;

    while (1)
    {
      sub_275A39F5C(v4, v13);
      result = sub_275A36F08(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_275A394B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_275A38AC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {

    v7 = MEMORY[0x277D837D0];
    sub_275A3DA74();
    v9[3] = v7;
    v9[0] = a3;
    v9[1] = a4;

    return sub_275A350E0(v9, v10);
  }

  return result;
}

unint64_t _s33iCloudSubscriptionOptimizerClient19QuotaServerProtocolV02toF14RefreshDetailsySDys11AnyHashableVypG01iabC4Core0iJ7ContextVFZ_0()
{
  v0 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_275A389A4(MEMORY[0x277D84F90]);
  *&v35 = 0xD00000000000001CLL;
  *(&v35 + 1) = 0x8000000275A3F520;
  sub_275A3DA74();
  sub_275A3D774();
  v4 = sub_275A3D4F4();
  v5 = 1;
  if (v4 != sub_275A3D4F4())
  {
    sub_275A3D774();
    v6 = sub_275A3D4F4();
    v5 = 1;
    if (v6 != sub_275A3D4F4())
    {
      sub_275A3D774();
      v7 = sub_275A3D4F4();
      v5 = v7 == sub_275A3D4F4();
    }
  }

  v8 = MEMORY[0x277D839B0];
  v36 = MEMORY[0x277D839B0];
  LOBYTE(v35) = v5;
  sub_275A394B8(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v3;
  sub_275A37514(v34, v37, isUniquelyReferenced_nonNull_native);
  sub_275A394C8(v37);
  v10 = v33;
  v38 = v33;
  strcpy(&v35, "subdWasCalled");
  HIWORD(v35) = -4864;
  sub_275A3DA74();
  v11 = sub_275A3D714();
  v36 = v8;
  LOBYTE(v35) = v11 & 1;
  sub_275A394B8(&v35, v34);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v10;
  sub_275A37514(v34, v37, v12);
  sub_275A394C8(v37);
  v13 = v33;
  *&v35 = 0xD000000000000016;
  *(&v35 + 1) = 0x8000000275A3F540;
  sub_275A3DA74();
  sub_275A3D774();
  v14 = sub_275A3D4F4();
  v15 = 1;
  v16 = sub_275A3D4F4();
  if (v14 != v16)
  {
    sub_275A3D774();
    v17 = sub_275A3D4F4();
    if (v17 != sub_275A3D4F4())
    {
      sub_275A3D774();
      v18 = sub_275A3D4F4();
      if (v18 != sub_275A3D4F4())
      {
        sub_275A3D774();
        v19 = sub_275A3D4F4();
        v15 = v19 == sub_275A3D4F4();
      }
    }
  }

  v36 = v8;
  LOBYTE(v35) = v15;
  sub_275A394B8(&v35, v34);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v13;
  sub_275A37514(v34, v37, v20);
  sub_275A394C8(v37);
  v38 = v33;
  sub_275A3D734();
  v21 = sub_275A3D5D4();
  sub_275A38AC0(0x6163696669746F6ELL, 0xEE0064496E6F6974, v21, v22);

  v23 = sub_275A3D5F4();
  sub_275A38AC0(0x6449726566666FLL, 0xE700000000000000, v23, v24);

  v25 = sub_275A3D5B4();
  sub_275A38AC0(0x73756F6976657270, 0xED00006574617453, v25, v26);

  sub_275A3D774();
  if (sub_275A3D4F4() == v16 || (sub_275A3D774(), v27 = sub_275A3D4F4(), v27 == sub_275A3D4F4()))
  {
    *&v35 = 0xD000000000000012;
    *(&v35 + 1) = 0x8000000275A3F560;
    sub_275A3DA74();
    v28 = sub_275A3D754();
    v36 = MEMORY[0x277D84A28];
    *&v35 = v28;
    sub_275A394B8(&v35, v34);
    v29 = v38;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v29;
    sub_275A37514(v34, v37, v30);
    sub_275A394C8(v37);
    sub_275A39628(v2, MEMORY[0x277D7F670]);
    return v33;
  }

  else
  {
    sub_275A39628(v2, MEMORY[0x277D7F670]);
    return v38;
  }
}

uint64_t sub_275A39078()
{
  sub_275A3D404();
  v6 = sub_275A3DAF4();
  MEMORY[0x277C860D0](46, 0xE100000000000000);
  sub_275A3D3B4();
  v0 = sub_275A3DAF4();
  MEMORY[0x277C860D0](v0);

  MEMORY[0x277C860D0](46, 0xE100000000000000);
  sub_275A3D424();
  v1 = sub_275A3DAF4();
  MEMORY[0x277C860D0](v1);

  MEMORY[0x277C860D0](46, 0xE100000000000000);
  v2 = sub_275A3D3E4();
  if (v3)
  {
    v4 = qword_275A3EA58[v2];
  }

  else
  {
    v4 = 85;
  }

  MEMORY[0x277C860D0](v4, 0xE100000000000000);
  return v6;
}

uint64_t sub_275A391A0()
{
  v0 = *(*(sub_275A3D614() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_275A3D454() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AE8, &qword_275A3E550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275A3E8B0;
  strcpy(v20, "callSubD");
  BYTE1(v20[1]) = 0;
  WORD1(v20[1]) = 0;
  HIDWORD(v20[1]) = -402653184;
  v7 = MEMORY[0x277D837D0];
  sub_275A3DA74();
  sub_275A3D6C4();
  v8 = sub_275A3D6B4();
  v9 = v8 == sub_275A3D6B4();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = v9;
  strcpy(v20, "mlServerScore");
  HIWORD(v20[1]) = -4864;
  sub_275A3DA74();
  sub_275A3D654();
  *(inited + 168) = MEMORY[0x277D839F8];
  *(inited + 144) = v10;
  v20[0] = 0x73756D74696CLL;
  v20[1] = 0xE600000000000000;
  sub_275A3DA74();
  sub_275A3D624();
  v11 = sub_275A39078();
  v13 = v12;
  sub_275A39628(v5, MEMORY[0x277D7F598]);
  *(inited + 240) = v7;
  *(inited + 216) = v11;
  *(inited + 224) = v13;
  strcpy(v20, "maxDelayInSecs");
  HIBYTE(v20[1]) = -18;
  sub_275A3DA74();
  v14 = sub_275A3D674();
  *(inited + 312) = MEMORY[0x277D84A28];
  *(inited + 288) = v14;
  v15 = sub_275A389A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AF0, &qword_275A3E558);
  swift_arrayDestroy();
  v20[0] = v15;
  sub_275A3D694();
  v16 = sub_275A3D5B4();
  v18 = v17;
  sub_275A39628(v2, MEMORY[0x277D7F670]);
  sub_275A38AC0(0x73756F6976657270, 0xED00006574617453, v16, v18);

  return v20[0];
}

_OWORD *sub_275A394B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_275A3951C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_275A39578()
{
  result = qword_280A23BE0;
  if (!qword_280A23BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A23BE0);
  }

  return result;
}

uint64_t sub_275A395C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A3D454();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A39628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_275A39688()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = v1[1];

  return sub_275A3D5C4();
}

uint64_t sub_275A39700(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_275A3DB04() & 1;
  }
}

uint64_t sub_275A39758(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_275A38634(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_275A3D9C4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_275A38634(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_275A38634(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_275A3D9C4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_275A39BC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v4 = sub_275A3D3D4();
  swift_beginAccess();
  v5 = *(*v4 + 16);
  if (v5)
  {
    v6 = ( + 40);
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = *(v6 - 1);
      v12 = *v6;
      if (v12 == 1)
      {
        v13 = qword_275A3EA58[v11];
        if (v2 != 0xE100000000000000)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 85;
        if (v2 != 0xE100000000000000)
        {
          goto LABEL_14;
        }
      }

      if (v13 == a1)
      {

LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_275A387BC(0, *(v7 + 16) + 1, 1);
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_275A387BC((v8 > 1), v9 + 1, 1);
        }

        *(v7 + 16) = v9 + 1;
        v10 = v7 + 16 * v9;
        *(v10 + 32) = v11;
        *(v10 + 40) = v12;
        goto LABEL_7;
      }

LABEL_14:
      v14 = sub_275A3DB04();

      if (v14)
      {
        goto LABEL_15;
      }

LABEL_7:
      v6 += 16;
      if (!--v5)
      {

        if (*(v7 + 16))
        {
          goto LABEL_18;
        }

LABEL_20:

        return 0;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_20;
  }

LABEL_18:
  v2 = *(v7 + 32);
  v15 = *(v7 + 40);

  return v2;
}

uint64_t sub_275A39D90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return sub_275A36E9C();
}

uint64_t sub_275A39DB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_275A39E44()
{
  result = qword_280A23C08;
  if (!qword_280A23C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A23C08);
  }

  return result;
}

uint64_t sub_275A39E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A39F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23AF0, &qword_275A3E558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A39FCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id SharedInstance.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedInstance.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedInstance();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SharedInstance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedInstance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s33iCloudSubscriptionOptimizerClient14SharedInstanceC3getSo08ISOQuotaD0CyFZ_0()
{
  v0 = qword_2815AE288;
  if (qword_2815AE288)
  {
    v1 = qword_2815AE288;
  }

  else
  {
    v2 = sub_275A3D3A4();
    swift_allocObject();
    v3 = sub_275A3D394();
    v14 = v2;
    v15 = MEMORY[0x277D7F588];
    *&v13 = v3;
    type metadata accessor for ClientLibEvents();
    v4 = swift_allocObject();
    sub_275A2EAD8(&v13, v4 + 16);
    if (qword_2815AE348 != -1)
    {
      swift_once();
    }

    qword_2815AE350 = v4;

    v5 = [objc_allocWithZone(type metadata accessor for XpcQuotaClient()) init];
    v6 = type metadata accessor for MetricsQuotaClient();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_innerClient] = v5;
    *&v7[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient_clientLibEvents] = qword_2815AE350;
    v12.receiver = v7;
    v12.super_class = v6;

    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = qword_2815AE288;
    qword_2815AE288 = v8;
    v1 = v8;

    v0 = 0;
  }

  v10 = v0;
  return v1;
}

uint64_t type metadata accessor for XpcClientError()
{
  result = qword_280A23C30;
  if (!qword_280A23C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275A3A358()
{
  result = sub_275A3D4C4();
  if (v1 <= 0x3F)
  {
    result = sub_275A3D384();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_275A3A3CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_275A3D2E4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_275A3A430()
{
  v0 = sub_275A3D894();
  __swift_allocate_value_buffer(v0, qword_2815AE360);
  __swift_project_value_buffer(v0, qword_2815AE360);
  type metadata accessor for XpcQuotaClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C50, &qword_275A3EB10);
  return sub_275A3D8A4();
}

void sub_275A3A5F8(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_275A3D364();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_275A3D554();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotificationContent();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v31 = ObjectType;
    v32 = a2;
    *(&v30 - 2) = MEMORY[0x28223BE20](v17);
    sub_275A3D124(&qword_280A23C68, MEMORY[0x277D7F628]);
    v30 = a1;
    sub_275A3D304();
    if (qword_2815AE358 != -1)
    {
      swift_once();
    }

    v18 = sub_275A3D894();
    __swift_project_value_buffer(v18, qword_2815AE360);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_275A3DA84();

    v33 = 0xD000000000000021;
    v34 = 0x8000000275A3FAC0;
    v19 = sub_275A3D2F4();
    MEMORY[0x277C860D0](v19);

    MEMORY[0x277C860D0](11869, 0xE200000000000000);
    sub_275A3D864();

    v20 = swift_allocObject();
    v21 = v31;
    v20[2] = v32;
    v20[3] = a3;
    v20[4] = v21;
    MEMORY[0x28223BE20](v20);
    *(&v30 - 2) = v16;
    sub_275A3D124(&qword_2815AE4D0, MEMORY[0x277D7F530]);

    sub_275A3D304();
    v22 = *(v4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 24);
    v23 = *(v4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient14XpcQuotaClient_protoClient), v22);
    (*(v23 + 8))(v12, sub_275A3D0E0, v20, v22, v23);

    sub_275A3D23C(v12, MEMORY[0x277D7F530]);
    sub_275A3D23C(v16, MEMORY[0x277D7F628]);
  }

  else
  {
    sub_275A34954();
    v24 = swift_allocError();
    v25 = type metadata accessor for NewOfferResponse();
    v26 = objc_allocWithZone(v25);
    v27 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context;
    v28 = sub_275A3D794();
    (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
    *&v26[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError] = v24;
    v35.receiver = v26;
    v35.super_class = v25;
    v29 = objc_msgSendSuper2(&v35, sel_init);
    a2();
  }
}

uint64_t sub_275A3AA7C(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v34[1] = a3;
  v35 = a2;
  v4 = sub_275A3D794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275A3D5A4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C58, &qword_275A3EB18);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v34 - v21;
  sub_275A3D034(a1, v34 - v21);
  v23 = sub_275A3D374();
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) != 1)
  {
    sub_275A3D034(v22, v20);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_275A3D16C(v20, v15, MEMORY[0x277D7F660]);
      if (qword_2815AE358 != -1)
      {
        swift_once();
      }

      v24 = sub_275A3D894();
      v34[0] = __swift_project_value_buffer(v24, qword_2815AE360);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_275A3DA84();

      v37 = 0x6C65646F6D204C4DLL;
      v38 = 0xEF5B3D6465737520;
      v25 = sub_275A3D564();
      MEMORY[0x277C860D0](v25);

      MEMORY[0x277C860D0](93, 0xE100000000000000);
      sub_275A3D864();

      v26 = sub_275A3D1D4(v15, v13, MEMORY[0x277D7F660]);
      MEMORY[0x28223BE20](v26);
      v34[-2] = v13;
      sub_275A3D124(&qword_280A23C70, MEMORY[0x277D7F6D0]);
      sub_275A3D304();
      v27 = type metadata accessor for NewOfferResponse();
      v28 = objc_allocWithZone(v27);
      v29 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context;
      sub_275A3D1D4(v8, &v28[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context], MEMORY[0x277D7F6D0]);
      (*(v5 + 56))(&v28[v29], 0, 1, v4);
      *&v28[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError] = 0;
      v36.receiver = v28;
      v36.super_class = v27;
      v30 = objc_msgSendSuper2(&v36, sel_init);
      sub_275A3D23C(v8, MEMORY[0x277D7F6D0]);
      v31 = MEMORY[0x277D7F660];
      sub_275A3D23C(v13, MEMORY[0x277D7F660]);
      v35(v30);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_275A3DA84();
      MEMORY[0x277C860D0](0xD00000000000002CLL, 0x8000000275A3FA50);
      sub_275A3D384();
      sub_275A3DAA4();
      MEMORY[0x277C860D0](11869, 0xE200000000000000);
      sub_275A3D864();

      sub_275A3D23C(v15, v31);
      return sub_275A39FCC(v22, &qword_280A23C58, &qword_275A3EB18);
    }

    sub_275A3D23C(v20, MEMORY[0x277D7F538]);
  }

  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v32 = sub_275A3D894();
  __swift_project_value_buffer(v32, qword_2815AE360);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_275A3DA84();
  MEMORY[0x277C860D0](0xD000000000000032, 0x8000000275A3FAF0);
  sub_275A3D384();
  sub_275A3DAA4();
  MEMORY[0x277C860D0](93, 0xE100000000000000);
  sub_275A3D884();

  return sub_275A39FCC(v22, &qword_280A23C58, &qword_275A3EB18);
}

uint64_t sub_275A3B08C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275A3D554();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_275A3D1D4(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D7F628]);
  return sub_275A3D354();
}

uint64_t sub_275A3B1D4(uint64_t a1, void (*a2)(id))
{
  v4 = sub_275A3D814();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C58, &qword_275A3EB18);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_275A3D034(a1, &v28 - v16);
  v18 = sub_275A3D374();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) != 1)
  {
    sub_275A3D034(v17, v15);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_275A3D16C(v15, v10, MEMORY[0x277D7F800]);
      sub_275A3D1D4(v10, v8, MEMORY[0x277D7F800]);
      v19 = type metadata accessor for NotificationPendingResponse();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_responseError] = 0;
      v21 = sub_275A3D7F4();
      v22 = 0;
      if (v21)
      {
        v22 = sub_275A3D804();
      }

      v23 = &v20[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient27NotificationPendingResponse_maxDelayTsMillis];
      *v23 = v22;
      v23[8] = (v21 & 1) == 0;
      v28.receiver = v20;
      v28.super_class = v19;
      v24 = objc_msgSendSuper2(&v28, sel_init);
      sub_275A3D23C(v8, MEMORY[0x277D7F800]);
      a2(v24);
      if (qword_2815AE358 != -1)
      {
        swift_once();
      }

      v25 = sub_275A3D894();
      __swift_project_value_buffer(v25, qword_2815AE360);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_275A3DA84();
      MEMORY[0x277C860D0](0xD00000000000002CLL, 0x8000000275A3FA50);
      sub_275A3D384();
      sub_275A3DAA4();
      MEMORY[0x277C860D0](11869, 0xE200000000000000);
      sub_275A3D864();

      sub_275A3D23C(v10, MEMORY[0x277D7F800]);
      return sub_275A39FCC(v17, &qword_280A23C58, &qword_275A3EB18);
    }

    sub_275A3D23C(v15, MEMORY[0x277D7F538]);
  }

  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v26 = sub_275A3D894();
  __swift_project_value_buffer(v26, qword_2815AE360);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_275A3DA84();
  MEMORY[0x277C860D0](0xD00000000000003DLL, 0x8000000275A3FA10);
  sub_275A3D384();
  sub_275A3DAA4();
  MEMORY[0x277C860D0](93, 0xE100000000000000);
  sub_275A3D884();

  return sub_275A39FCC(v17, &qword_280A23C58, &qword_275A3EB18);
}

uint64_t sub_275A3B634()
{
  v0 = sub_275A3D7E4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_275A3D7D4();
  return sub_275A3D344();
}

uint64_t sub_275A3B90C()
{
  v0 = sub_275A3D7B4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_275A3D124(&qword_2815AE4C8, MEMORY[0x277D7F778]);
  sub_275A3D304();
  return sub_275A3D334();
}

uint64_t sub_275A3BA30(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_275A3D4C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275A3D7C4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C58, &qword_275A3EB18);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  sub_275A3D034(a1, &v29 - v17);
  v19 = sub_275A3D374();
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
LABEL_11:
    if (qword_2815AE358 != -1)
    {
      swift_once();
    }

    v25 = sub_275A3D894();
    __swift_project_value_buffer(v25, qword_2815AE360);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_275A3DA84();
    MEMORY[0x277C860D0](0xD000000000000033, 0x8000000275A3F9D0);
    sub_275A3D384();
    sub_275A3DAA4();
    MEMORY[0x277C860D0](93, 0xE100000000000000);
    sub_275A3D884();

    type metadata accessor for XpcClientError();
    sub_275A3D124(&qword_280A23C60, type metadata accessor for XpcClientError);
    v26 = swift_allocError();
    sub_275A3D1D4(a1, v27, MEMORY[0x277D7F580]);
    swift_storeEnumTagMultiPayload();
    a2(v26);

    return sub_275A39FCC(v18, &qword_280A23C58, &qword_275A3EB18);
  }

  sub_275A3D034(v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 17)
    {
      sub_275A3D16C(v16, v11, MEMORY[0x277D7F790]);
      if (qword_2815AE358 != -1)
      {
        swift_once();
      }

      v21 = sub_275A3D894();
      __swift_project_value_buffer(v21, qword_2815AE360);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_275A3DA84();
      MEMORY[0x277C860D0](0xD00000000000002CLL, 0x8000000275A3FA50);
      sub_275A3DAA4();
      MEMORY[0x277C860D0](11869, 0xE200000000000000);
      sub_275A3D864();

      a2(0);
      sub_275A3D23C(v11, MEMORY[0x277D7F790]);
      return sub_275A39FCC(v18, &qword_280A23C58, &qword_275A3EB18);
    }

    sub_275A3D23C(v16, MEMORY[0x277D7F538]);
    goto LABEL_11;
  }

  sub_275A3D16C(v16, v7, MEMORY[0x277D7F5F0]);
  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v22 = sub_275A3D894();
  __swift_project_value_buffer(v22, qword_2815AE360);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_275A3DA84();
  MEMORY[0x277C860D0](0xD00000000000003DLL, 0x8000000275A3FA10);
  sub_275A3D384();
  sub_275A3DAA4();
  MEMORY[0x277C860D0](93, 0xE100000000000000);
  sub_275A3D884();

  type metadata accessor for XpcClientError();
  sub_275A3D124(&qword_280A23C60, type metadata accessor for XpcClientError);
  v23 = swift_allocError();
  sub_275A3D1D4(v7, v24, MEMORY[0x277D7F5F0]);
  swift_storeEnumTagMultiPayload();
  a2(v23);

  sub_275A3D23C(v7, MEMORY[0x277D7F5F0]);
  return sub_275A39FCC(v18, &qword_280A23C58, &qword_275A3EB18);
}

id sub_275A3C53C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XpcQuotaClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_275A3C5A4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C78, &unk_275A3EB20) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = sub_275A3D6E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  static QuotaServerProtocol.parse(fromFetchOffers:)(a1, v7);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) != 1)
  {
    sub_275A3D16C(v7, v18, MEMORY[0x277D7F6A0]);
    v25 = MEMORY[0x277D7F6A0];
    sub_275A3D1D4(v18, v16, MEMORY[0x277D7F6A0]);
    v26 = type metadata accessor for NotificationContent();
    v27 = objc_allocWithZone(v26);
    sub_275A3D1D4(v16, v27 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient19NotificationContent_context, v25);
    v36.receiver = v27;
    v36.super_class = v26;
    v24 = objc_msgSendSuper2(&v36, sel_init);
    v28 = MEMORY[0x277D7F6A0];
    sub_275A3D23C(v16, MEMORY[0x277D7F6A0]);
    v29 = v18;
    v30 = v28;
LABEL_8:
    sub_275A3D23C(v29, v30);
    return v24;
  }

  sub_275A39FCC(v7, &qword_280A23C78, &unk_275A3EB20);
  static QuotaServerProtocol.parse(fromPushNotification:)(a1, v5);
  if (v19(v5, 1, v8) != 1)
  {
    sub_275A3D16C(v5, v13, MEMORY[0x277D7F6A0]);
    v31 = MEMORY[0x277D7F6A0];
    sub_275A3D1D4(v13, v16, MEMORY[0x277D7F6A0]);
    v32 = type metadata accessor for NotificationContent();
    v33 = objc_allocWithZone(v32);
    sub_275A3D1D4(v16, v33 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient19NotificationContent_context, v31);
    v37.receiver = v33;
    v37.super_class = v32;
    v24 = objc_msgSendSuper2(&v37, sel_init);
    v34 = MEMORY[0x277D7F6A0];
    sub_275A3D23C(v16, MEMORY[0x277D7F6A0]);
    v29 = v13;
    v30 = v34;
    goto LABEL_8;
  }

  sub_275A39FCC(v5, &qword_280A23C78, &unk_275A3EB20);
  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v20 = sub_275A3D894();
  __swift_project_value_buffer(v20, qword_2815AE360);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_275A3DA84();

  v38 = 0xD000000000000027;
  v39 = 0x8000000275A3FB70;
  v21 = sub_275A3D904();
  MEMORY[0x277C860D0](v21);

  MEMORY[0x277C860D0](93, 0xE100000000000000);
  v22 = v38;
  v23 = v39;
  v38 = 0xD000000000000031;
  v39 = 0x8000000275A3FB30;
  MEMORY[0x277C860D0](v22, v23);

  sub_275A3D864();

  return 0;
}

id sub_275A3CA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A3D794();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C48, &qword_275A3EB08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_275A3D854();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 || a2 != 0xE000000000000000) && (sub_275A3DB04() & 1) == 0)
  {
    sub_275A3D704();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_275A39FCC(v11, &qword_280A23C48, &qword_275A3EB08);
      if (qword_2815AE358 != -1)
      {
        swift_once();
      }

      v27 = sub_275A3D894();
      __swift_project_value_buffer(v27, qword_2815AE360);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_275A3DA84();

      v32 = 0xD00000000000001DLL;
      v33 = 0x8000000275A3F870;
      MEMORY[0x277C860D0](a1, a2);
      MEMORY[0x277C860D0](11869, 0xE200000000000000);
      sub_275A3D884();

      return 0;
    }

    sub_275A3D16C(v11, v16, MEMORY[0x277D7F868]);
    if (sub_275A3D844())
    {
      v17 = [objc_allocWithZone(type metadata accessor for FailsafeDelayedOffer()) init];
    }

    else
    {
      if ((sub_275A3D834() & 1) == 0)
      {
        if (qword_2815AE358 != -1)
        {
          swift_once();
        }

        v30 = sub_275A3D894();
        __swift_project_value_buffer(v30, qword_2815AE360);
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_275A3DA84();
        MEMORY[0x277C860D0](0xD00000000000003ALL, 0x8000000275A3F890);
        sub_275A3DAA4();
        MEMORY[0x277C860D0](93, 0xE100000000000000);
        sub_275A3D884();

        sub_275A3D23C(v16, MEMORY[0x277D7F868]);
        return 0;
      }

      sub_275A3D824();
      v28 = type metadata accessor for DelayedOffer();
      v29 = objc_allocWithZone(v28);
      sub_275A3D1D4(v7, v29 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient12DelayedOffer_context, MEMORY[0x277D7F6D0]);
      v31.receiver = v29;
      v31.super_class = v28;
      v17 = objc_msgSendSuper2(&v31, sel_init);
      sub_275A3D23C(v7, MEMORY[0x277D7F6D0]);
    }

    sub_275A3D23C(v16, MEMORY[0x277D7F868]);
    return v17;
  }

  v17 = [objc_allocWithZone(type metadata accessor for FailsafeDelayedOffer()) init];
  if (qword_2815AE358 != -1)
  {
    swift_once();
  }

  v18 = sub_275A3D894();
  __swift_project_value_buffer(v18, qword_2815AE360);
  v32 = 91;
  v33 = 0xE100000000000000;
  v19 = [v17 newOfferResponse];
  v20 = [v19 toContext];

  sub_275A3D8F4();
  v21 = sub_275A3D904();
  v23 = v22;

  MEMORY[0x277C860D0](v21, v23);

  MEMORY[0x277C860D0](11869, 0xE200000000000000);
  v24 = v32;
  v25 = v33;
  v32 = 0xD000000000000094;
  v33 = 0x8000000275A3F8D0;
  MEMORY[0x277C860D0](v24, v25);

  sub_275A3D874();

  return v17;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_275A3D028(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_275A3BA30(a1, *(v1 + 16));
}

uint64_t sub_275A3D034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23C58, &qword_275A3EB18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275A3D0A4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_275A3B1D4(a1, *(v1 + 16));
}

uint64_t sub_275A3D124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275A3D16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A3D1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275A3D23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}