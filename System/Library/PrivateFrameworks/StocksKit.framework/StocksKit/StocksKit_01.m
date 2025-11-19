uint64_t sub_26BB3B704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB32290(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3B7CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB30B54(a1, v4, v5, v7, v6);
}

void sub_26BB3B88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BB3B920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26BB3B948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26BB3B970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BA30;

  return sub_26BB2EF3C(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3BA30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_26BB3BB24()
{
  if (!qword_280439EE8)
  {
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_280439EE8);
    }
  }
}

uint64_t sub_26BB3BB84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_26BB390BC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB3BBE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_26BB3B148();
    v4 = sub_26BB7D468();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_210Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BB3BCA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26BB3BF24;

  return sub_26BB2D1F0(a1, v4, v5, v7, v6);
}

uint64_t sub_26BB3BD60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26BB3BDBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26BB7D358();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26BB3BE08()
{
  if (!qword_280439F18)
  {
    sub_26BB7D508();
    sub_26BB3BE9C(&qword_280439F20, MEMORY[0x277CC9FC8]);
    v0 = sub_26BB7D078();
    if (!v1)
    {
      atomic_store(v0, &qword_280439F18);
    }
  }
}

uint64_t sub_26BB3BE9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t QuoteResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuoteResult() + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for QuoteResult()
{
  result = qword_280439F30;
  if (!qword_280439F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB3BFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26BB3C06C()
{
  sub_26BB3C0F0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB3C0F0()
{
  if (!qword_280439F40)
  {
    type metadata accessor for Quote();
    v0 = sub_26BB7CCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_280439F40);
    }
  }
}

StocksKit::ChartRange_optional __swiftcall ChartRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BB3C1CC()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB683E0();
  return sub_26BB7D458();
}

uint64_t sub_26BB3C21C()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB683E0();
  return sub_26BB7D458();
}

uint64_t sub_26BB3C270()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x796144656E6FLL;
    v8 = 0x68746E6F4D656E6FLL;
    v9 = 0x6E6F4D6565726874;
    if (v1 != 3)
    {
      v9 = 0x68746E6F4D786973;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6B656557656E6FLL;
    }

    if (*v0 <= 1u)
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
    v2 = 0x7261655965766966;
    v3 = 0x73726165596E6574;
    if (v1 != 9)
    {
      v3 = 7105633;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x61446F5472616579;
    v5 = 0x72616559656E6FLL;
    if (v1 != 6)
    {
      v5 = 0x73726165596F7774;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_26BB3C3D8()
{
  result = qword_280439F48;
  if (!qword_280439F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26BB3C590(uint64_t a1@<X8>)
{
  v29[0] = a1;
  v1 = sub_26BB7BDB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - v8;
  if (qword_28158C2F8 != -1)
  {
    v28 = v7;
    swift_once();
    v7 = v28;
  }

  v30 = v7;
  v10 = sub_26BB7CB88();
  __swift_project_value_buffer(v10, qword_28158F140);
  v11 = sub_26BB7CB68();
  v12 = sub_26BB7CF78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26BB21000, v11, v12, "Reading bundled currency conversion data", v13, 2u);
    MEMORY[0x26D68EA90](v13, -1, -1);
  }

  type metadata accessor for StockService(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  type metadata accessor for CurrencyConversionsResult();
  v16 = sub_26BB7C848();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_26BB7C838();
  v19 = sub_26BB7CD38();
  v20 = sub_26BB7CD38();
  v21 = [v15 URLForResource:v19 withExtension:v20];

  if (v21)
  {
    sub_26BB7BDA8();

    v22 = v30;
    (*(v2 + 32))(v9, v6, v30);
    v23 = v29[1];
    v24 = sub_26BB7BDC8();
    if (v23)
    {

      (*(v2 + 8))(v9, v22);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      (*(v2 + 8))(v9, v22);
      sub_26BB3C970();
      sub_26BB7C828();
      sub_26BB3C9C8(v26, v27);
    }
  }

  else
  {
    sub_26BB3C91C();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_26BB3C91C()
{
  result = qword_280439F50;
  if (!qword_280439F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F50);
  }

  return result;
}

unint64_t sub_26BB3C970()
{
  result = qword_28158BCD8;
  if (!qword_28158BCD8)
  {
    type metadata accessor for CurrencyConversionsResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCD8);
  }

  return result;
}

uint64_t sub_26BB3C9C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_26BB3CA40()
{
  result = qword_280439F58;
  if (!qword_280439F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F58);
  }

  return result;
}

id sub_26BB3CADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BB3CB34@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_26BB3D360(v1 + 24, &v6);
  if (v7)
  {
    return sub_26BB28A3C(&v6, a1);
  }

  sub_26BB3D270(&v6);
  v4 = v1;
  v5 = *(v1 + 16);
  sub_26BB7CB48();
  sub_26BB282D8(a1, &v6);
  swift_beginAccess();
  sub_26BB3D3F0(&v6, v4 + 24);
  return swift_endAccess();
}

uint64_t sub_26BB3CBEC()
{
  type metadata accessor for StocksKitModule();
  v0 = swift_allocObject();
  result = sub_26BB3CC28();
  qword_28158F138 = v0;
  return result;
}

uint64_t sub_26BB3CC28()
{
  v1 = v0;
  v33 = sub_26BB7CB28();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BB7C8D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x277D84560];
  sub_26BB3D2F8(0, &qword_28158B0D8, &qword_28158BA40, MEMORY[0x277D6CCC8], MEMORY[0x277D84560]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BB7DFD0;
  v13 = sub_26BB7C778();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26BB7C768();
  *(v12 + 56) = v13;
  *(v12 + 64) = sub_26BB3D4DC(&unk_28158BA68, MEMORY[0x277D69838]);
  *(v12 + 32) = v16;
  v17 = sub_26BB7C948();
  v18 = [objc_allocWithZone(v17) init];
  v19 = MEMORY[0x277D6CC58];
  *(v12 + 96) = v17;
  *(v12 + 104) = v19;
  *(v12 + 72) = v18;
  *(v12 + 136) = &type metadata for Assembly;
  *(v12 + 144) = sub_26BB3D524();
  sub_26BB3D2F8(0, &qword_28158B0E0, &qword_28158BA60, MEMORY[0x277D6CA90], v11);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26BB7EC90;
  v21 = type metadata accessor for ServiceAssembly();
  v22 = swift_allocObject();
  *(v20 + 56) = v21;
  *(v20 + 64) = sub_26BB3D4DC(qword_28158B508, type metadata accessor for ServiceAssembly);
  *(v20 + 32) = v22;
  v23 = type metadata accessor for ManagerAssembly();
  v24 = swift_allocObject();
  *(v20 + 96) = v23;
  *(v20 + 104) = sub_26BB3D4DC(&qword_28158B5A8, type metadata accessor for ManagerAssembly);
  *(v20 + 72) = v24;
  *(v12 + 112) = v20;
  v25 = sub_26BB7C8F8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_26BB7C8E8();
  *v10 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  (*(v7 + 104))(v10, *MEMORY[0x277D6CB40], v6);
  (*(v2 + 104))(v5, *MEMORY[0x277D6CF60], v33);
  v28 = sub_26BB7CB58();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_26BB7CB38();
  return v1;
}

uint64_t Assembly.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_26BB3D2F8(0, &qword_28158B0E0, &qword_28158BA60, MEMORY[0x277D6CA90], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26BB7EC90;
  v3 = type metadata accessor for ServiceAssembly();
  v4 = swift_allocObject();
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_26BB3D4DC(qword_28158B508, type metadata accessor for ServiceAssembly);
  *(v2 + 32) = v4;
  v5 = type metadata accessor for ManagerAssembly();
  v6 = swift_allocObject();
  *(v2 + 96) = v5;
  result = sub_26BB3D4DC(&qword_28158B5A8, type metadata accessor for ManagerAssembly);
  *(v2 + 104) = result;
  *(v2 + 72) = v6;
  *a1 = v2;
  return result;
}

uint64_t sub_26BB3D15C()
{
  v1 = *(v0 + 16);

  sub_26BB3D270(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26BB3D1DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26BB3D224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BB3D270(uint64_t a1)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB3D2F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_26BB3D480(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26BB3D360(uint64_t a1, uint64_t a2)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB3D3F0(uint64_t a1, uint64_t a2)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB3D480(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26BB3D4DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BB3D524()
{
  result = qword_280439F60;
  if (!qword_280439F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F60);
  }

  return result;
}

uint64_t sub_26BB3D590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_26BB3D660(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26BB3D690@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26BB3D6BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26BB3D794@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_26BB3D7E8()
{
  result = sub_26BB3D8FC(3);
  qword_280440430 = result;
  return result;
}

id sub_26BB3D81C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  result = [v5 setMinimumIntegerDigits_];
  *a3 = v5;
  return result;
}

id sub_26BB3D8B4()
{
  result = sub_26BB3D8FC(2);
  qword_280440440 = result;
  return result;
}

id sub_26BB3D8D8()
{
  result = sub_26BB3D8FC(0);
  qword_280440448 = result;
  return result;
}

id sub_26BB3D8FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  [v2 setMinimumIntegerDigits_];
  v3 = sub_26BB7CD38();
  [v2 setPositivePrefix_];

  v4 = sub_26BB7CD38();
  [v2 setNegativePrefix_];

  return v2;
}

uint64_t PriceFormatter.format(price:style:options:)(uint64_t a1, void *a2, double a3)
{
  v4 = sub_26BB3DB08(*a2, *a1, *(a1 + 8), a3);
  [v4 setNumberStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_26BB7CD48();
  }

  else
  {

    return 0;
  }

  return v7;
}

id PriceFormatter.format(price:currencyCode:style:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v8 = *a4;
  v9 = v5;
  v10 = v6;
  return sub_26BB3DDE8(a1, a2, &v9, &v8, a5);
}

uint64_t sub_26BB3DB08(char a1, uint64_t a2, char a3, double a4)
{
  v5 = fabs(a4);
  if (a4 != 0.0 && v5 < 5.0 && (a1 & 1) == 0)
  {
    if (a3)
    {
      if (qword_280439D18 != -1)
      {
        swift_once();
      }

      v10 = &qword_280440428;
    }

    else
    {
      if (qword_280439D20 != -1)
      {
        swift_once();
      }

      v10 = &qword_280440430;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v5 < 9.22337204e18)
        {
          if (v5 < 1)
          {
LABEL_17:
            if (qword_280439D10 != -1)
            {
              swift_once();
            }

            v10 = &qword_280440420;
            return *v10;
          }

          v9 = log10(v5);
          if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v9 > -9.22337204e18)
            {
              if (v9 < 9.22337204e18)
              {
                if (v9 < a2)
                {
                  goto LABEL_17;
                }

LABEL_38:
                if (qword_280439D28 == -1)
                {
LABEL_39:
                  v10 = &qword_280440438;
                  return *v10;
                }

LABEL_47:
                swift_once();
                goto LABEL_39;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5 >= 1)
    {
      v12 = log10(v5);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v12 >= a2)
      {
        if (qword_280439D38 == -1)
        {
LABEL_41:
          v10 = &qword_280440448;
          return *v10;
        }

LABEL_54:
        swift_once();
        goto LABEL_41;
      }
    }

    if (qword_280439D30 != -1)
    {
      swift_once();
    }

    v10 = &qword_280440440;
  }

  return *v10;
}

id sub_26BB3DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v88 = a2;
  v84 = a1;
  v8 = MEMORY[0x277D83D88];
  sub_26BB3EA84(0, &qword_280439F88, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v78 - v11;
  v12 = sub_26BB7BF88();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  v19 = sub_26BB7BFA8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v83 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  sub_26BB3EA84(0, &qword_280439F90, MEMORY[0x277CC9640], v8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v78 - v31;
  v33 = *a4;
  v34 = sub_26BB3DB08(*a4, *a3, *(a3 + 8), a5);
  v35 = v34;
  if ((v33 & 2) != 0 && v88)
  {
    v80 = v34;
    sub_26BB7BF18();
    sub_26BB7BF98();
    v36 = *(v20 + 8);
    v81 = v19;
    v82 = v36;
    (v36)(v28);
    sub_26BB7BF68();
    v37 = *(v86 + 8);
    v37(v18, v87);
    v38 = sub_26BB7BEB8();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v32, 1, v38) == 1)
    {
      v40 = &qword_280439F90;
      v41 = MEMORY[0x277CC9640];
    }

    else
    {
      v79 = _s9StocksKit8CurrencyV10identifierSSvg_0();
      v86 = v43;
      (*(v39 + 8))(v32, v38);
      sub_26BB7BF18();
      sub_26BB7BF98();
      v44 = v81;
      v82(v26, v81);
      v32 = v85;
      sub_26BB7BF78();
      v37(v16, v87);
      v45 = sub_26BB7BEF8();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v32, 1, v45) != 1)
      {
        v51 = v44;
        v52 = _s9StocksKit8CurrencyV10identifierSSvg_0();
        v54 = v53;
        (*(v46 + 8))(v32, v45);
        sub_26BB3EA84(0, &qword_280439F98, sub_26BB3EA28, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BB7DFD0;
        v56 = *MEMORY[0x277CBE698];
        *(inited + 32) = sub_26BB7CD48();
        v57 = v84;
        *(inited + 40) = v58;
        *(inited + 48) = v57;
        v59 = v88;
        *(inited + 56) = v88;
        v60 = *MEMORY[0x277CBE6C8];
        *(inited + 64) = sub_26BB7CD48();
        *(inited + 72) = v61;
        v62 = v86;
        *(inited + 80) = v79;
        *(inited + 88) = v62;
        v63 = *MEMORY[0x277CBE690];
        *(inited + 96) = sub_26BB7CD48();
        *(inited + 104) = v64;
        *(inited + 112) = v52;
        *(inited + 120) = v54;

        v65 = sub_26BB5F240(inited);
        swift_setDeallocating();
        sub_26BB3EA28();
        swift_arrayDestroy();
        MEMORY[0x26D68CD90](v65);

        v66 = v83;
        sub_26BB7BE98();
        v67 = sub_26BB7BEC8();
        v68 = v80;
        [v80 setLocale_];

        if (v57 == 7356999 && v59 == 0xE300000000000000 || (sub_26BB7D378() & 1) != 0)
        {
          [v68 setNumberStyle_];
          v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v49 = [v68 stringFromNumber_];

          if (!v49)
          {
            v82(v66, v51);

            return v49;
          }

          v70 = sub_26BB7CD48();
          v72 = v71;

          sub_26BB3EA84(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_26BB7EC90;
          v74 = MEMORY[0x277D837D0];
          *(v73 + 56) = MEMORY[0x277D837D0];
          v75 = sub_26BB3EB4C();
          *(v73 + 32) = 0xD000000000000021;
          *(v73 + 40) = 0x800000026BB832D0;
          *(v73 + 96) = v74;
          *(v73 + 104) = v75;
          *(v73 + 64) = v75;
          *(v73 + 72) = v70;
          *(v73 + 80) = v72;
          v49 = sub_26BB7CD58();
        }

        else
        {
          [v68 setNumberStyle_];
          v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v77 = [v68 stringFromNumber_];

          if (!v77)
          {
            v82(v66, v51);

            return 0;
          }

          v49 = sub_26BB7CD48();
        }

        v82(v66, v51);
        return v49;
      }

      v40 = &qword_280439F88;
      v41 = MEMORY[0x277CC9698];
    }

    sub_26BB3E9B8(v32, v40, v41);
  }

  else
  {
    v42 = v34;
  }

  [v35 setNumberStyle_];
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v48 = [v35 stringFromNumber_];

  if (!v48)
  {

    return 0;
  }

  v49 = sub_26BB7CD48();

  return v49;
}

unint64_t sub_26BB3E6E8()
{
  result = qword_280439F68;
  if (!qword_280439F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F68);
  }

  return result;
}

unint64_t sub_26BB3E740()
{
  result = qword_280439F70;
  if (!qword_280439F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F70);
  }

  return result;
}

unint64_t sub_26BB3E798()
{
  result = qword_280439F78;
  if (!qword_280439F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F78);
  }

  return result;
}

unint64_t sub_26BB3E7F0()
{
  result = qword_280439F80;
  if (!qword_280439F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F80);
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

uint64_t getEnumTagSinglePayload for PriceFormatter.Style(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PriceFormatter.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26BB3E920(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BB3E938(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PriceFormatter.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PriceFormatter.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_26BB3E9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB3EA84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB3EA28()
{
  if (!qword_280439FA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280439FA0);
    }
  }
}

void sub_26BB3EA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26BB3EAE8()
{
  result = qword_280439FB0;
  if (!qword_280439FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280439FB0);
  }

  return result;
}

unint64_t sub_26BB3EB4C()
{
  result = qword_280439FB8;
  if (!qword_280439FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439FB8);
  }

  return result;
}

uint64_t sub_26BB3EBA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = sub_26BB7C478();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = MEMORY[0x277D69680];
  sub_26BB3F0A4(0, &unk_28158BAA8, MEMORY[0x277D69680]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  v23 = sub_26BB7C358();
  v35 = v24;
  v36 = v23;
  sub_26BB7C348();
  sub_26BB44398(v18, v16, &unk_28158BAA8, v11);
  v25 = 1;
  if ((*(v4 + 48))(v16, 1, v3) != 1)
  {
    (*(v4 + 32))(v10, v16, v3);
    (*(v4 + 16))(v8, v10, v3);
    sub_26BB7C3E8();
    v26 = *(v4 + 8);
    v26(v8, v3);
    v26(v10, v3);
    v25 = 0;
  }

  sub_26BB444C4(v18, &unk_28158BAA8, MEMORY[0x277D69680]);
  v27 = type metadata accessor for DataSource.Logo(0);
  (*(*(v27 - 8) + 56))(v22, v25, 1, v27);
  v28 = type metadata accessor for DataSource(0);
  v29 = v37;
  v30 = v37 + *(v28 + 24);
  sub_26BB7C368();
  v31 = sub_26BB7C378();
  (*(*(v31 - 8) + 8))(a1, v31);
  v32 = v35;
  *v29 = v36;
  v29[1] = v32;
  return sub_26BB42E9C(v22, v29 + *(v28 + 20), qword_28158BEB8, type metadata accessor for DataSource.Logo);
}

uint64_t DataSource.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataSource.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_26BB3F0A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BB3F0FC()
{
  v1 = 1869049708;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26BB3F150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB44044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB3F178(uint64_t a1)
{
  v2 = sub_26BB42D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB3F1B4(uint64_t a1)
{
  v2 = sub_26BB42D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB43394(0, &qword_28158B138, sub_26BB42D9C, &type metadata for DataSource.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42D9C();
  sub_26BB7D488();
  v12 = *v3;
  v13 = v3[1];
  v21 = 0;
  sub_26BB7D308();
  if (!v2)
  {
    v14 = type metadata accessor for DataSource(0);
    v15 = *(v14 + 20);
    v20 = 1;
    type metadata accessor for DataSource.Logo(0);
    sub_26BB42DF0(&qword_28158B7F0, type metadata accessor for DataSource.Logo);
    sub_26BB7D2F8();
    v16 = *(v14 + 24);
    v19 = 2;
    sub_26BB7BDB8();
    sub_26BB42DF0(&qword_28158BB38, MEMORY[0x277CC9260]);
    sub_26BB7D2F8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t DataSource.hash(into:)()
{
  v1 = v0;
  v2 = sub_26BB7BDB8();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for DataSource.Logo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = *v1;
  v19 = v1[1];
  sub_26BB7CD88();
  v20 = type metadata accessor for DataSource(0);
  sub_26BB44398(v1 + *(v20 + 20), v17, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_26BB7D438();
  }

  else
  {
    sub_26BB42E38(v17, v13);
    sub_26BB7D438();
    sub_26BB7C3D8();
    sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);
    sub_26BB7CCF8();
    sub_26BB42F08(v13, type metadata accessor for DataSource.Logo);
  }

  sub_26BB44398(v1 + *(v20 + 24), v8, &qword_28158C328, MEMORY[0x277CC9260]);
  v22 = v27;
  v21 = v28;
  if ((*(v27 + 48))(v8, 1, v28) == 1)
  {
    return sub_26BB7D438();
  }

  v24 = v26;
  (*(v22 + 32))(v26, v8, v21);
  sub_26BB7D438();
  sub_26BB42DF0(&qword_280439FC8, MEMORY[0x277CC9260]);
  sub_26BB7CCF8();
  return (*(v22 + 8))(v24, v21);
}

uint64_t DataSource.hashValue.getter()
{
  sub_26BB7D418();
  DataSource.hash(into:)();
  return sub_26BB7D458();
}

uint64_t DataSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v25 - v5;
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  sub_26BB43394(0, &qword_28158B1B8, sub_26BB42D9C, &type metadata for DataSource.CodingKeys, MEMORY[0x277D844C8]);
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42D9C();
  v29 = v13;
  v19 = v30;
  sub_26BB7D478();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v14;
  v21 = v27;
  v33 = 0;
  *v17 = sub_26BB7D268();
  v17[1] = v22;
  v30 = v22;
  type metadata accessor for DataSource.Logo(0);
  v32 = 1;
  sub_26BB42DF0(&qword_28158B7E8, type metadata accessor for DataSource.Logo);
  sub_26BB7D258();
  sub_26BB42E9C(v9, v17 + *(v14 + 20), qword_28158BEB8, type metadata accessor for DataSource.Logo);
  sub_26BB7BDB8();
  v31 = 2;
  sub_26BB42DF0(&qword_28158BB30, MEMORY[0x277CC9260]);
  v23 = v26;
  sub_26BB7D258();
  (*(v21 + 8))(v29, v28);
  sub_26BB42E9C(v23, v17 + *(v20 + 24), &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB3BFE0(v17, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB42F08(v17, type metadata accessor for DataSource);
}

uint64_t sub_26BB3FD14()
{
  sub_26BB7D418();
  DataSource.hash(into:)();
  return sub_26BB7D458();
}

uint64_t sub_26BB3FD58()
{
  sub_26BB7D418();
  DataSource.hash(into:)();
  return sub_26BB7D458();
}

uint64_t sub_26BB3FDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB3FE78(uint64_t a1)
{
  v2 = sub_26BB42F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB3FEB4(uint64_t a1)
{
  v2 = sub_26BB42F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.Logo.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28158B130, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68();
  sub_26BB7D488();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FD0, MEMORY[0x277D69640]);
  sub_26BB7D328();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DataSource.Logo.hash(into:)()
{
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);

  return sub_26BB7CCF8();
}

uint64_t DataSource.Logo.hashValue.getter()
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t DataSource.Logo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_26BB7C3D8();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB43394(0, &qword_28158B1B0, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v21 = *(v6 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for DataSource.Logo(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68();
  v16 = v24;
  sub_26BB7D478();
  if (!v16)
  {
    v17 = v21;
    v18 = v22;
    sub_26BB42DF0(&qword_280439FD8, MEMORY[0x277D69640]);
    sub_26BB7D288();
    (*(v17 + 8))(v10, v7);
    (*(v18 + 32))(v14, v23, v3);
    sub_26BB42E38(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB40470()
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB404F8()
{
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);

  return sub_26BB7CCF8();
}

uint64_t sub_26BB4057C()
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB40618(void *a1)
{
  sub_26BB43394(0, &qword_28158B130, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68();
  sub_26BB7D488();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FD0, MEMORY[0x277D69640]);
  sub_26BB7D328();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26BB4080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB40890(uint64_t a1)
{
  v2 = sub_26BB42FBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB408CC(uint64_t a1)
{
  v2 = sub_26BB42FBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.ImageContext.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_280439FE0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC();
  sub_26BB7D488();
  sub_26BB7D318();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DataSource.ImageContext.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  sub_26BB43394(0, &qword_280439FF0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC();
  sub_26BB7D478();
  if (!v2)
  {
    v11 = v16;
    sub_26BB7D278();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v11 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB40C3C(void *a1)
{
  sub_26BB43394(0, &qword_280439FE0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC();
  sub_26BB7D488();
  sub_26BB7D318();
  return (*(v5 + 8))(v8, v4);
}

uint64_t DataSource.DownloadedLogo.light.getter()
{
  v1 = *v0;
  sub_26BB43010(*v0, *(v0 + 8));
  return v1;
}

uint64_t DataSource.DownloadedLogo.dark.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  if (v2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[4];
  }

  if (v2 >> 60 != 15)
  {
    v6 = v0[5];
  }

  sub_26BB43064(v1, v2);
  return v5;
}

uint64_t DataSource.DownloadedLogo.variants.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_26BB43078(v9, &v8);
}

uint64_t DataSource.DownloadedLogo.Variants.light.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  return sub_26BB43010(v2, v3);
}

uint64_t DataSource.DownloadedLogo.Variants.dark.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_26BB43064(v2, v3);
}

uint64_t DataSource.DownloadedLogo.Variants.template.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_26BB43064(v2, v3);
}

uint64_t sub_26BB40EB0()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_26BB40F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB44160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB40F28(uint64_t a1)
{
  v2 = sub_26BB430B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB40F64(uint64_t a1)
{
  v2 = sub_26BB430B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.DownloadedLogo.Variants.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_280439FF8, sub_26BB430B0, &type metadata for DataSource.DownloadedLogo.Variants.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v23 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v30 = v1[5];
  v31 = v13;
  v14 = v1[6];
  v28 = v1[7];
  v29 = v14;
  v15 = v1[8];
  v26 = v1[9];
  v27 = v15;
  v16 = v1[10];
  v24 = v1[11];
  v25 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB43010(v9, v10);
  sub_26BB430B0();
  sub_26BB7D488();
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = 0;
  sub_26BB43104();
  v18 = v32;
  sub_26BB7D328();
  if (v18)
  {
    sub_26BB3C9C8(v33, v34);
  }

  else
  {
    v20 = v25;
    v19 = v26;
    v21 = v27;
    sub_26BB3C9C8(v33, v34);
    v33 = v31;
    v34 = v30;
    v35 = v29;
    v36 = v28;
    v37 = 1;
    sub_26BB43064(v31, v30);
    sub_26BB7D2F8();
    sub_26BB43158(v33, v34);
    v33 = v21;
    v34 = v19;
    v35 = v20;
    v36 = v24;
    v37 = 2;
    sub_26BB43064(v21, v19);
    sub_26BB7D2F8();
    sub_26BB43158(v33, v34);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DataSource.DownloadedLogo.Variants.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  sub_26BB43394(0, &qword_28043A010, sub_26BB430B0, &type metadata for DataSource.DownloadedLogo.Variants.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB430B0();
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v6;
  v12 = v31;
  LOBYTE(v32[0]) = 0;
  sub_26BB4316C();
  sub_26BB7D288();
  v30 = v37;
  v13 = v38;
  LOBYTE(v32[0]) = 1;
  sub_26BB7D258();
  v28 = v37;
  v29 = v38;
  v49 = 2;
  sub_26BB7D258();
  (*(v11 + 8))(v9, v5);
  v26 = *(&v47 + 1);
  v27 = v47;
  v24 = *(&v48 + 1);
  v25 = v48;
  v14 = v30;
  v32[0] = v30;
  v15 = *(&v30 + 1);
  v32[1] = v13;
  v16 = v28;
  v33 = v28;
  v17 = *(&v28 + 1);
  v18 = v29;
  v34 = v29;
  v19 = *(&v29 + 1);
  v35 = v47;
  v36 = v48;
  *v12 = v30;
  v12[1] = v13;
  v20 = v33;
  v21 = v34;
  v22 = v36;
  v12[4] = v35;
  v12[5] = v22;
  v12[2] = v20;
  v12[3] = v21;
  sub_26BB43078(v32, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v37 = v14;
  *(&v37 + 1) = v15;
  v38 = v13;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v27;
  v44 = v26;
  v45 = v25;
  v46 = v24;
  return sub_26BB431C0(&v37);
}

uint64_t DataSource.DownloadedLogo.Variant.imageData.getter()
{
  v1 = *v0;
  sub_26BB43010(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_26BB41704()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446567616D69;
  }
}

uint64_t sub_26BB41764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB44274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB4178C(uint64_t a1)
{
  v2 = sub_26BB431F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB417C8(uint64_t a1)
{
  v2 = sub_26BB431F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.DownloadedLogo.Variant.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28043A020, sub_26BB431F0, &type metadata for DataSource.DownloadedLogo.Variant.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB43010(v9, v10);
  sub_26BB431F0();
  sub_26BB7D488();
  v17 = v9;
  v18 = v10;
  v19 = 0;
  sub_26BB43244();
  v14 = v16[1];
  sub_26BB7D328();
  if (v14)
  {
    sub_26BB3C9C8(v17, v18);
  }

  else
  {
    sub_26BB3C9C8(v17, v18);
    LOBYTE(v17) = 1;
    sub_26BB7D318();
    LOBYTE(v17) = 2;
    sub_26BB7D318();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DataSource.DownloadedLogo.Variant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_26BB43394(0, &qword_28043A038, sub_26BB431F0, &type metadata for DataSource.DownloadedLogo.Variant.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB431F0();
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v6;
  v12 = v21;
  v24 = 0;
  sub_26BB43298();
  sub_26BB7D288();
  v14 = v22;
  v13 = v23;
  LOBYTE(v22) = 1;
  sub_26BB7D278();
  v16 = v15;
  LOBYTE(v22) = 2;
  sub_26BB7D278();
  v19 = v18;
  (*(v11 + 8))(v9, v5);
  *v12 = v14;
  v12[1] = v13;
  v12[2] = v16;
  v12[3] = v19;
  sub_26BB43010(v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB3C9C8(v14, v13);
}

uint64_t sub_26BB41CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E6169726176 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB41D38(uint64_t a1)
{
  v2 = sub_26BB432EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB41D74(uint64_t a1)
{
  v2 = sub_26BB432EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DataSource.DownloadedLogo.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28043A048, sub_26BB432EC, &type metadata for DataSource.DownloadedLogo.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = v1[3];
  v23 = v1[2];
  v24 = v9;
  v10 = v1[5];
  v25 = v1[4];
  v26 = v10;
  v11 = v1[1];
  v21 = *v1;
  v22 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB43078(&v21, &v15);
  sub_26BB432EC();
  sub_26BB7D488();
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  sub_26BB43340();
  sub_26BB7D328();
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[0] = v15;
  v14[1] = v16;
  sub_26BB431C0(v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t DataSource.DownloadedLogo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_26BB43394(0, &qword_28043A060, sub_26BB432EC, &type metadata for DataSource.DownloadedLogo.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB432EC();
  sub_26BB7D478();
  if (!v2)
  {
    v11 = v17;
    sub_26BB433FC();
    sub_26BB7D288();
    (*(v6 + 8))(v9, v5);
    v12 = v16[3];
    v11[2] = v16[2];
    v11[3] = v12;
    v13 = v16[5];
    v11[4] = v16[4];
    v11[5] = v13;
    v14 = v16[1];
    *v11 = v16[0];
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB42184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v61 = MEMORY[0x277D69668];
  sub_26BB3F0A4(0, &qword_28043A0F0, MEMORY[0x277D69668]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  *&v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v55 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = sub_26BB7C448();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  sub_26BB7C408();
  v22 = sub_26BB7C428();
  v63 = v23;
  v64 = v22;
  sub_26BB7C438();
  v25 = v24;
  sub_26BB7C418();
  v27 = v26;
  v28 = *(v15 + 8);
  v28(v21, v14);
  v66 = a1;
  sub_26BB7C3F8();
  *&v59 = v13;
  sub_26BB44398(v13, v11, &qword_28043A0F0, v61);
  v58 = *(v15 + 48);
  v29 = v58(v11, 1, v14);
  v55 = v15;
  v56 = v28;
  if (v29 == 1)
  {
    sub_26BB444C4(v59, &qword_28043A0F0, MEMORY[0x277D69668]);
    v30 = 0;
    v60 = 0xF000000000000000;
    v61 = 0;
    v31 = 0;
  }

  else
  {
    (*(v15 + 32))(v21, v11, v14);
    (*(v15 + 16))(v19, v21, v14);
    v32 = sub_26BB7C428();
    v60 = v33;
    v61 = v32;
    sub_26BB7C438();
    v30 = v34;
    sub_26BB7C418();
    v31 = v35;
    v28(v19, v14);
    v28(v21, v14);
    sub_26BB444C4(v59, &qword_28043A0F0, MEMORY[0x277D69668]);
  }

  v36 = v19;
  v38 = v65;
  v37 = v66;
  sub_26BB7C458();
  v39 = v62;
  sub_26BB44398(v38, v62, &qword_28043A0F0, MEMORY[0x277D69668]);
  if (v58(v39, 1, v14) == 1)
  {
    v40 = sub_26BB7C468();
    (*(*(v40 - 8) + 8))(v37, v40);
    result = sub_26BB444C4(v38, &qword_28043A0F0, MEMORY[0x277D69668]);
    v42 = 0;
    v43 = 0uLL;
    v44 = 0xF000000000000000;
  }

  else
  {
    v45 = v55;
    (*(v55 + 32))(v21, v39, v14);
    (*(v45 + 16))(v19, v21, v14);
    v46 = v37;
    v42 = sub_26BB7C428();
    v44 = v47;
    sub_26BB7C438();
    v62 = v48;
    sub_26BB7C418();
    v59 = v49;
    v50 = sub_26BB7C468();
    (*(*(v50 - 8) + 8))(v46, v50);
    v51 = v56;
    v56(v36, v14);
    v51(v21, v14);
    result = sub_26BB444C4(v38, &qword_28043A0F0, MEMORY[0x277D69668]);
    *&v43 = v62;
    *(&v43 + 1) = v59;
  }

  v52 = v63;
  v53 = v57;
  *v57 = v64;
  v53[1] = v52;
  v53[2] = v25;
  v53[3] = v27;
  v54 = v60;
  v53[4] = v61;
  v53[5] = v54;
  v53[6] = v30;
  v53[7] = v31;
  v53[8] = v42;
  v53[9] = v44;
  *(v53 + 5) = v43;
  return result;
}

BOOL _s9StocksKit10DataSourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_26BB7BDB8();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC9260];
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v53 - v10;
  sub_26BB44404(0, &qword_28043A0F8, &qword_28158C328, v7);
  v57 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v13;
  v14 = type metadata accessor for DataSource.Logo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v53 - v21;
  sub_26BB44404(0, &qword_28043A100, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  v28 = *a1;
  v29 = a1[1];
  v30 = *a2;
  v31 = a2[1];
  v60 = a2;
  if ((v28 != v30 || v29 != v31) && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  v54 = v4;
  v53 = type metadata accessor for DataSource(0);
  v32 = *(v53 + 20);
  v33 = *(v24 + 48);
  sub_26BB44398(a1 + v32, v27, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  sub_26BB44398(v60 + v32, &v27[v33], qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v34 = *(v15 + 48);
  if (v34(v27, 1, v14) != 1)
  {
    sub_26BB44398(v27, v22, qword_28158BEB8, type metadata accessor for DataSource.Logo);
    if (v34(&v27[v33], 1, v14) != 1)
    {
      sub_26BB42E38(&v27[v33], v18);
      v39 = MEMORY[0x26D68D2D0](v22, v18);
      sub_26BB42F08(v18, type metadata accessor for DataSource.Logo);
      sub_26BB42F08(v22, type metadata accessor for DataSource.Logo);
      sub_26BB444C4(v27, qword_28158BEB8, type metadata accessor for DataSource.Logo);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    sub_26BB42F08(v22, type metadata accessor for DataSource.Logo);
LABEL_9:
    v35 = &qword_28043A100;
    v36 = qword_28158BEB8;
    v37 = type metadata accessor for DataSource.Logo;
    v38 = v27;
LABEL_17:
    sub_26BB44468(v38, v35, v36, v37);
    return 0;
  }

  if (v34(&v27[v33], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_26BB444C4(v27, qword_28158BEB8, type metadata accessor for DataSource.Logo);
LABEL_11:
  v40 = *(v53 + 24);
  v41 = *(v57 + 48);
  v42 = MEMORY[0x277CC9260];
  v43 = a1 + v40;
  v44 = v58;
  sub_26BB44398(v43, v58, &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB44398(v60 + v40, v44 + v41, &qword_28158C328, v42);
  v45 = v59;
  v46 = *(v59 + 48);
  v47 = v54;
  if (v46(v44, 1, v54) == 1)
  {
    if (v46(v44 + v41, 1, v47) == 1)
    {
      sub_26BB444C4(v44, &qword_28158C328, MEMORY[0x277CC9260]);
      return 1;
    }

    goto LABEL_16;
  }

  v48 = v56;
  sub_26BB44398(v44, v56, &qword_28158C328, MEMORY[0x277CC9260]);
  if (v46(v44 + v41, 1, v47) == 1)
  {
    (*(v45 + 8))(v48, v47);
LABEL_16:
    v35 = &qword_28043A0F8;
    v36 = &qword_28158C328;
    v37 = MEMORY[0x277CC9260];
    v38 = v44;
    goto LABEL_17;
  }

  v50 = v55;
  (*(v45 + 32))(v55, v44 + v41, v47);
  sub_26BB42DF0(&qword_28043A108, MEMORY[0x277CC9260]);
  v51 = sub_26BB7CD28();
  v52 = *(v45 + 8);
  v52(v50, v47);
  v52(v48, v47);
  sub_26BB444C4(v44, &qword_28158C328, MEMORY[0x277CC9260]);
  return (v51 & 1) != 0;
}

unint64_t sub_26BB42D9C()
{
  result = qword_28158BF20;
  if (!qword_28158BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF20);
  }

  return result;
}

uint64_t sub_26BB42DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BB42E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Logo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB42E9C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_26BB3F0A4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BB42F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB42F68()
{
  result = qword_28158BF08;
  if (!qword_28158BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF08);
  }

  return result;
}

unint64_t sub_26BB42FBC()
{
  result = qword_280439FE8;
  if (!qword_280439FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439FE8);
  }

  return result;
}

uint64_t sub_26BB43010(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26BB43064(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BB43010(a1, a2);
  }

  return a1;
}

unint64_t sub_26BB430B0()
{
  result = qword_28043A000;
  if (!qword_28043A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A000);
  }

  return result;
}

unint64_t sub_26BB43104()
{
  result = qword_28043A008;
  if (!qword_28043A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A008);
  }

  return result;
}

uint64_t sub_26BB43158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BB3C9C8(a1, a2);
  }

  return a1;
}

unint64_t sub_26BB4316C()
{
  result = qword_28043A018;
  if (!qword_28043A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A018);
  }

  return result;
}

unint64_t sub_26BB431F0()
{
  result = qword_28043A028;
  if (!qword_28043A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A028);
  }

  return result;
}

unint64_t sub_26BB43244()
{
  result = qword_28043A030;
  if (!qword_28043A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A030);
  }

  return result;
}

unint64_t sub_26BB43298()
{
  result = qword_28043A040;
  if (!qword_28043A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A040);
  }

  return result;
}

unint64_t sub_26BB432EC()
{
  result = qword_28043A050;
  if (!qword_28043A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A050);
  }

  return result;
}

unint64_t sub_26BB43340()
{
  result = qword_28043A058;
  if (!qword_28043A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A058);
  }

  return result;
}

void sub_26BB43394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_26BB433FC()
{
  result = qword_28043A068;
  if (!qword_28043A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A068);
  }

  return result;
}

void sub_26BB43508()
{
  sub_26BB3F0A4(319, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  if (v0 <= 0x3F)
  {
    sub_26BB3F0A4(319, &qword_28158C328, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BB435FC()
{
  result = sub_26BB7C3D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_9StocksKit10DataSourceV14DownloadedLogoV7VariantVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_26BB436E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BB4373C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

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

uint64_t sub_26BB437C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BB43814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StocksKitServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StocksKitServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BB43A18()
{
  result = qword_28043A080;
  if (!qword_28043A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A080);
  }

  return result;
}

unint64_t sub_26BB43A70()
{
  result = qword_28043A088;
  if (!qword_28043A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A088);
  }

  return result;
}

unint64_t sub_26BB43AC8()
{
  result = qword_28043A090;
  if (!qword_28043A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A090);
  }

  return result;
}

unint64_t sub_26BB43B20()
{
  result = qword_28043A098;
  if (!qword_28043A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A098);
  }

  return result;
}

unint64_t sub_26BB43B78()
{
  result = qword_28043A0A0;
  if (!qword_28043A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0A0);
  }

  return result;
}

unint64_t sub_26BB43BD0()
{
  result = qword_28043A0A8;
  if (!qword_28043A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0A8);
  }

  return result;
}

unint64_t sub_26BB43C28()
{
  result = qword_28043A0B0;
  if (!qword_28043A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0B0);
  }

  return result;
}

unint64_t sub_26BB43C80()
{
  result = qword_28043A0B8;
  if (!qword_28043A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0B8);
  }

  return result;
}

unint64_t sub_26BB43CD8()
{
  result = qword_28043A0C0;
  if (!qword_28043A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0C0);
  }

  return result;
}

unint64_t sub_26BB43D30()
{
  result = qword_28043A0C8;
  if (!qword_28043A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0C8);
  }

  return result;
}

unint64_t sub_26BB43D88()
{
  result = qword_28043A0D0;
  if (!qword_28043A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0D0);
  }

  return result;
}

unint64_t sub_26BB43DE0()
{
  result = qword_28043A0D8;
  if (!qword_28043A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0D8);
  }

  return result;
}

unint64_t sub_26BB43E38()
{
  result = qword_28043A0E0;
  if (!qword_28043A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0E0);
  }

  return result;
}

unint64_t sub_26BB43E90()
{
  result = qword_28043A0E8;
  if (!qword_28043A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0E8);
  }

  return result;
}

unint64_t sub_26BB43EE8()
{
  result = qword_28158BEF8;
  if (!qword_28158BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BEF8);
  }

  return result;
}

unint64_t sub_26BB43F40()
{
  result = qword_28158BF00;
  if (!qword_28158BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF00);
  }

  return result;
}

unint64_t sub_26BB43F98()
{
  result = qword_28158BF10;
  if (!qword_28158BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF10);
  }

  return result;
}

unint64_t sub_26BB43FF0()
{
  result = qword_28158BF18;
  if (!qword_28158BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF18);
  }

  return result;
}

uint64_t sub_26BB44044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026BB83300 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44398(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_26BB3F0A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26BB44404(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_26BB3F0A4(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26BB44468(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_26BB44404(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_26BB444C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BB3F0A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB4456C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26BB7C878();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = 0;
  v9 = *a1;
  v10 = *(a2 + 32);
  if ((v10 & 1) == 0)
  {
    v11 = *(a2 + 16);
    *atoken.val = *a2;
    *&atoken.val[4] = v11;
    v12 = audit_token_to_pid(&atoken);
    v13 = *(a2 + 16);
    *atoken.val = *a2;
    *&atoken.val[4] = v13;
    v8 = v12 | (audit_token_to_pidversion(&atoken) << 32);
  }

  *atoken.val = v8;
  LOBYTE(atoken.val[2]) = v10 & 1;
  sub_26BB7CB18();
  v14 = v38;
  if (v38)
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v15 = sub_26BB7CB88();
    __swift_project_value_buffer(v15, qword_28158F140);
    v16 = sub_26BB7CB68();
    v17 = sub_26BB7CF78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      if (*(a2 + 32))
      {
        v19 = 0;
      }

      else
      {
        v25 = *(a2 + 16);
        *atoken.val = *a2;
        *&atoken.val[4] = v25;
        v19 = audit_token_to_pid(&atoken);
      }

      *(v18 + 4) = v19;
      _os_log_impl(&dword_26BB21000, v16, v17, "Reusing URLSession for pid: %d", v18, 8u);
      MEMORY[0x26D68EA90](v18, -1, -1);
    }
  }

  else
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v20 = sub_26BB7CB88();
    __swift_project_value_buffer(v20, qword_28158F140);
    v21 = sub_26BB7CB68();
    v22 = sub_26BB7CF78();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      if (*(a2 + 32))
      {
        v24 = 0;
      }

      else
      {
        v26 = *(a2 + 16);
        *atoken.val = *a2;
        *&atoken.val[4] = v26;
        v24 = audit_token_to_pid(&atoken);
      }

      *(v23 + 4) = v24;
      _os_log_impl(&dword_26BB21000, v21, v22, "Storing URLSession for pid: %d", v23, 8u);
      MEMORY[0x26D68EA90](v23, -1, -1);
    }

    v27 = swift_allocObject();
    v28 = *(a2 + 16);
    *(v27 + 16) = *a2;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(a2 + 32);
    *atoken.val = MEMORY[0x277D84F90];
    sub_26BB44CA4();
    sub_26BB44D84(0, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_26BB44CFC();
    sub_26BB7D028();
    sub_26BB44D84(0, &unk_28158B9A8, sub_26BB44DE8, MEMORY[0x277D6CEE8]);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v14 = sub_26BB7C9F8();
    v32 = 0;
    v38 = v14;
    v33 = *(a2 + 32);
    if ((v33 & 1) == 0)
    {
      v34 = *(a2 + 16);
      *atoken.val = *a2;
      *&atoken.val[4] = v34;
      v35 = audit_token_to_pid(&atoken);
      v36 = *(a2 + 16);
      *atoken.val = *a2;
      *&atoken.val[4] = v36;
      v32 = v35 | (audit_token_to_pidversion(&atoken) << 32);
    }

    *atoken.val = v32;
    LOBYTE(atoken.val[2]) = v33 & 1;
    sub_26BB7CAE8();
  }

  *a3 = v14;
}

void sub_26BB4499C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v4 = sub_26BB7CB88();
  __swift_project_value_buffer(v4, qword_28158F140);
  v5 = sub_26BB7CB68();
  v6 = sub_26BB7CF78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    if (*(a1 + 32))
    {
      v8 = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      *v18.val = *a1;
      *&v18.val[4] = v9;
      v8 = audit_token_to_pid(&v18);
    }

    *(v7 + 4) = v8;
    _os_log_impl(&dword_26BB21000, v5, v6, "Creating URLSession for pid: %d", v7, 8u);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  v10 = [objc_opt_self() defaultSessionConfiguration];
  [v10 setURLCache_];
  [v10 set:objc_msgSend(v10 timingDataOptions:sel__timingDataOptions) | 1];
  if ((*(a1 + 32) & 1) == 0)
  {
    v11 = *(a1 + 16);
    *v18.val = *a1;
    *&v18.val[4] = v11;
    v12 = sub_26BB44EEC(&v18, 32);
    v14 = v13;
    v15 = sub_26BB7BDE8();
    sub_26BB3C9C8(v12, v14);
    [v10 set:v15 sourceApplicationAuditTokenData:?];
  }

  v16 = [objc_opt_self() sessionWithConfiguration_];

  *a2 = v16;
  v17 = *MEMORY[0x277D85DE8];
}

void sub_26BB44BBC()
{
  v1 = *v0;
  sub_26BB7C9E8();
  sub_26BB7CF48();
}

void sub_26BB44C28()
{
  v1 = *v0;
  sub_26BB7C9E8();
  sub_26BB7CF58();
}

unint64_t sub_26BB44CA4()
{
  result = qword_28158C308;
  if (!qword_28158C308)
  {
    sub_26BB7C878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C308);
  }

  return result;
}

unint64_t sub_26BB44CFC()
{
  result = qword_28158BBA8;
  if (!qword_28158BBA8)
  {
    sub_26BB44D84(255, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BBA8);
  }

  return result;
}

void sub_26BB44D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26BB44DE8()
{
  result = qword_28158B248;
  if (!qword_28158B248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158B248);
  }

  return result;
}

uint64_t sub_26BB44E34(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BB44EEC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26BB44E34(a1, &a1[a2]);
  }

  v3 = sub_26BB7BD98();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26BB7BD88();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_26BB7BDD8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t StockSearchResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StockSearchResult() + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for StockSearchResult()
{
  result = qword_28043A110;
  if (!qword_28043A110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB4505C()
{
  sub_26BB450E0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB450E0()
{
  if (!qword_28043A120)
  {
    v0 = sub_26BB7CE38();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A120);
    }
  }
}

uint64_t sub_26BB45130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7C238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_26BB7C6D8();
  v50 = v9;
  v49 = sub_26BB7C5D8();
  v48 = v10;
  v47 = sub_26BB7C698();
  v46 = v11;
  v45 = sub_26BB7C648();
  v44 = v12;
  v43 = sub_26BB7C6B8();
  v42 = v13;
  v41 = sub_26BB7C638();
  v40 = v14;
  v39 = sub_26BB7C6A8();
  v38 = v15;
  v37 = sub_26BB7C5E8();
  v17 = v16;
  sub_26BB7C618();
  v18 = (*(v5 + 88))(v8, v4);
  if (v18 != *MEMORY[0x277D69298])
  {
    if (v18 == *MEMORY[0x277D69288])
    {
      v19 = 1;
      goto LABEL_11;
    }

    if (v18 == *MEMORY[0x277D69290])
    {
      v19 = 2;
      goto LABEL_11;
    }

    if (v18 == *MEMORY[0x277D692A0])
    {
      v19 = 3;
      goto LABEL_11;
    }

    if (v18 == *MEMORY[0x277D69280])
    {
      v19 = 4;
      goto LABEL_11;
    }

    (*(v5 + 8))(v8, v4);
  }

  v19 = 0;
LABEL_11:
  v20 = type metadata accessor for Quote();
  v21 = a2 + v20[13];
  sub_26BB7C5F8();
  v22 = a2 + v20[14];
  sub_26BB7C608();
  v23 = a2 + v20[15];
  sub_26BB7C668();
  sub_26BB45E30(MEMORY[0x277D697E0], &v54);
  v24 = v54;
  sub_26BB45E30(MEMORY[0x277D697F0], &v53);
  v25 = v53;
  sub_26BB45E30(MEMORY[0x277D697E8], &v52);
  v26 = v52;
  v27 = sub_26BB7C6C8();
  v29 = v28;
  v30 = a2 + v20[20];
  sub_26BB7C688();
  v31 = a2 + v20[21];
  sub_26BB7C658();
  v32 = a2 + v20[22];
  sub_26BB7C678();
  v33 = a2 + v20[23];
  sub_26BB7C628();
  v34 = sub_26BB7C6E8();
  result = (*(*(v34 - 8) + 8))(a1, v34);
  *a2 = v51;
  *(a2 + 8) = v50 & 1;
  *(a2 + 16) = v49;
  *(a2 + 24) = v48 & 1;
  *(a2 + 32) = v47;
  *(a2 + 40) = v46 & 1;
  *(a2 + 48) = v45;
  *(a2 + 56) = v44 & 1;
  *(a2 + 64) = v43;
  *(a2 + 72) = v42 & 1;
  *(a2 + 80) = v41;
  *(a2 + 88) = v40 & 1;
  *(a2 + 96) = v39;
  *(a2 + 104) = v38 & 1;
  *(a2 + 112) = v37;
  *(a2 + 120) = v17;
  *(a2 + 128) = v19;
  *(a2 + v20[16]) = v24;
  *(a2 + v20[17]) = v25;
  *(a2 + v20[18]) = v26;
  v36 = a2 + v20[19];
  *v36 = v27;
  *(v36 + 8) = v29 & 1;
  return result;
}

uint64_t sub_26BB454F4()
{
  v1 = *v0;
  v2 = 0x44636972656E6567;
  v3 = 0x52636972656E6567;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x52544B4D6573796ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x655271616473616ELL;
  if (v1 != 1)
  {
    v5 = 0x6C6165526573796ELL;
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

StocksKit::Quote::Source_optional __swiftcall Quote.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BB45674()
{
  *v0;
  *v0;
  *v0;
  sub_26BB7CD88();
}

void sub_26BB457D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646579616C65;
  v4 = 0x44636972656E6567;
  v5 = 0x52636972656E6567;
  v6 = 0xEF656D69746C6165;
  if (v2 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0x800000026BB82CB0;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x52544B4D6573796ELL;
    v7 = 0xEF656D69746C6165;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE00656D69746C61;
  v10 = 0x655271616473616ELL;
  if (v2 != 1)
  {
    v10 = 0x6C6165526573796ELL;
    v9 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t Quote.price.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Quote.priceChange.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Quote.marketCapitalization.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Quote.afterHoursPrice.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Quote.afterHoursPriceChange.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t Quote.preMarketPrice.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t Quote.preMarketPriceChange.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t Quote.currencyCode.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Quote.exchangeOpen.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote() + 52);

  return sub_26BB45ACC(v3, a1);
}

uint64_t type metadata accessor for Quote()
{
  result = qword_28043A188;
  if (!qword_28043A188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB45ACC(uint64_t a1, uint64_t a2)
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Quote.exchangeClose.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote() + 56);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.exchangeNextOpen.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote() + 60);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.priceSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t Quote.afterHoursSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t Quote.preMarketSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote();
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t Quote.preferredRefreshInterval.getter()
{
  v1 = (v0 + *(type metadata accessor for Quote() + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t Quote.earningsStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote() + 80);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.earningsEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote() + 84);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.dateLastRefreshed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote() + 88);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Quote.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote() + 92);
  v4 = sub_26BB7BFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26BB45E30@<X0>(void (*a1)(uint64_t)@<X1>, char *a2@<X8>)
{
  sub_26BB4A530(0, &qword_28043A1E0, MEMORY[0x277D691C0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_26BB7C218();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  a1(v14);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_26BB4A594(v7, &qword_28043A1E0, MEMORY[0x277D691C0]);
    v18 = 7;
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v16, v7, v8);
    v19(v13, v16, v8);
    result = (*(v9 + 88))(v13, v8);
    if (result == *MEMORY[0x277D69190])
    {
      v18 = 0;
    }

    else if (result == *MEMORY[0x277D69198] || result == *MEMORY[0x277D69188])
    {
      v18 = 1;
    }

    else if (result == *MEMORY[0x277D691B0])
    {
      v18 = 3;
    }

    else if (result == *MEMORY[0x277D691A8])
    {
      v18 = 4;
    }

    else if (result == *MEMORY[0x277D691A0])
    {
      v18 = 5;
    }

    else
    {
      if (result != *MEMORY[0x277D691B8])
      {
        result = (*(v9 + 8))(v13, v8);
      }

      v18 = 6;
    }
  }

  *a2 = v18;
  return result;
}

unint64_t sub_26BB46104(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x6168436563697270;
      break;
    case 2:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x756F487265746661;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 14:
      result = 0x656B72614D657270;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x65676E6168637865;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x756F536563697270;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 18:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x73676E696E726165;
      break;
    case 19:
      result = 0x695474656B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BB46360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB49D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB46394(uint64_t a1)
{
  v2 = sub_26BB4942C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB463D0(uint64_t a1)
{
  v2 = sub_26BB4942C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Quote.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB49528(0, &qword_28043A130, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v40 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB4942C();
  sub_26BB7D488();
  v12 = *v3;
  v13 = *(v3 + 8);
  v42 = 0;
  sub_26BB7D2D8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v42 = 1;
    sub_26BB7D2D8();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v42 = 2;
    sub_26BB7D2D8();
    v18 = v3[6];
    v19 = *(v3 + 56);
    v42 = 3;
    sub_26BB7D2D8();
    v20 = v3[8];
    v21 = *(v3 + 72);
    v42 = 4;
    sub_26BB7D2D8();
    v22 = v3[10];
    v23 = *(v3 + 88);
    v42 = 5;
    sub_26BB7D2D8();
    v24 = v3[12];
    v25 = *(v3 + 104);
    v42 = 6;
    sub_26BB7D2D8();
    v27 = v3[14];
    v28 = v3[15];
    v42 = 7;
    sub_26BB7D2C8();
    v42 = *(v3 + 128);
    v41 = 8;
    sub_26BB49480();
    sub_26BB7D328();
    v29 = type metadata accessor for Quote();
    v30 = v29[13];
    v42 = 9;
    sub_26BB7BE48();
    sub_26BB4A4E8(&qword_28158BB28, MEMORY[0x277CC9578]);
    sub_26BB7D2F8();
    v31 = v29[14];
    v42 = 10;
    sub_26BB7D2F8();
    v32 = v29[15];
    v42 = 11;
    sub_26BB7D2F8();
    v42 = *(v3 + v29[16]);
    v41 = 12;
    v40[1] = sub_26BB494D4();
    sub_26BB7D2F8();
    v42 = *(v3 + v29[17]);
    v41 = 13;
    sub_26BB7D2F8();
    v42 = *(v3 + v29[18]);
    v41 = 14;
    sub_26BB7D2F8();
    v33 = (v3 + v29[19]);
    v34 = *v33;
    v35 = *(v33 + 8);
    v42 = 15;
    sub_26BB7D2D8();
    v36 = v29[20];
    v42 = 16;
    sub_26BB7D2F8();
    v37 = v29[21];
    v42 = 17;
    sub_26BB7D2F8();
    v38 = v29[22];
    v42 = 18;
    sub_26BB7D328();
    v39 = v29[23];
    v42 = 19;
    sub_26BB7BFC8();
    sub_26BB4A4E8(&qword_28043A150, MEMORY[0x277CC9A70]);
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t Quote.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v74 = sub_26BB7BFC8();
  v76 = *(v74 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_26BB7BE48();
  v71 = *(v78 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v78);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v69 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  sub_26BB49528(0, &qword_28043A158, MEMORY[0x277D844C8]);
  v81 = v21;
  v79 = *(v21 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  v25 = type metadata accessor for Quote();
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_26BB4942C();
  v82 = v24;
  v31 = v84;
  sub_26BB7D478();
  if (v31)
  {
    v84 = v31;
    return __swift_destroy_boxed_opaque_existential_1Tm(v83);
  }

  v32 = v20;
  v70 = v18;
  v33 = v79;
  v34 = v80;
  v86 = 0;
  v35 = v28;
  *v28 = sub_26BB7D238();
  v28[8] = v36 & 1;
  v86 = 1;
  *(v28 + 2) = sub_26BB7D238();
  v28[24] = v37 & 1;
  v86 = 2;
  *(v28 + 4) = sub_26BB7D238();
  v28[40] = v38 & 1;
  v86 = 3;
  *(v28 + 6) = sub_26BB7D238();
  v28[56] = v39 & 1;
  v86 = 4;
  *(v28 + 8) = sub_26BB7D238();
  v28[72] = v40 & 1;
  v86 = 5;
  *(v28 + 10) = sub_26BB7D238();
  v28[88] = v41 & 1;
  v86 = 6;
  *(v28 + 12) = sub_26BB7D238();
  v28[104] = v43 & 1;
  v86 = 7;
  v44 = sub_26BB7D228();
  v84 = 0;
  *(v28 + 14) = v44;
  *(v28 + 15) = v45;
  v85 = 8;
  sub_26BB4958C();
  v46 = v84;
  sub_26BB7D288();
  v84 = v46;
  if (v46)
  {
    (*(v33 + 8))(v82, v81);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v28[128] = v86;
    v86 = 9;
    sub_26BB4A4E8(&qword_28158BB20, MEMORY[0x277CC9578]);
    v52 = v84;
    sub_26BB7D258();
    v84 = v52;
    if (v52)
    {
      (*(v33 + 8))(v82, v81);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }

    else
    {
      sub_26BB495E0(v32, &v28[v25[13]]);
      v86 = 10;
      v53 = v84;
      sub_26BB7D258();
      v84 = v53;
      if (v53)
      {
        (*(v33 + 8))(v82, v81);
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v47 = 1;
      }

      else
      {
        sub_26BB495E0(v70, &v28[v25[14]]);
        v86 = 11;
        v54 = v84;
        sub_26BB7D258();
        v84 = v54;
        if (v54)
        {
          (*(v33 + 8))(v82, v81);
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v47 = 1;
          v48 = 1;
        }

        else
        {
          sub_26BB495E0(v15, &v28[v25[15]]);
          v85 = 12;
          sub_26BB49674();
          v55 = v84;
          sub_26BB7D258();
          v84 = v55;
          if (v55)
          {
            goto LABEL_18;
          }

          v28[v25[16]] = v86;
          v85 = 13;
          v56 = v84;
          sub_26BB7D258();
          v84 = v56;
          if (v56)
          {
            goto LABEL_18;
          }

          v28[v25[17]] = v86;
          v85 = 14;
          v57 = v84;
          sub_26BB7D258();
          v84 = v57;
          if (v57)
          {
            goto LABEL_18;
          }

          v28[v25[18]] = v86;
          v86 = 15;
          v58 = v84;
          v59 = sub_26BB7D238();
          v84 = v58;
          if (v58 || (v61 = &v28[v25[19]], *v61 = v59, v61[8] = v60 & 1, v86 = 16, v62 = v84, sub_26BB7D258(), (v84 = v62) != 0))
          {
LABEL_18:
            (*(v33 + 8))(v82, v81);
            v50 = 0;
            v51 = 0;
            v47 = 1;
            v48 = 1;
            v49 = 1;
          }

          else
          {
            sub_26BB495E0(v72, &v28[v25[20]]);
            v86 = 17;
            v64 = v84;
            sub_26BB7D258();
            v84 = v64;
            if (v64)
            {
              (*(v33 + 8))(v82, v81);
              v51 = 0;
              v47 = 1;
              v48 = 1;
              v49 = 1;
              v50 = 1;
            }

            else
            {
              sub_26BB495E0(v34, &v28[v25[21]]);
              v86 = 18;
              v65 = v84;
              sub_26BB7D288();
              v84 = v65;
              if (!v65)
              {
                (*(v71 + 32))(&v28[v25[22]], v73, v78);
                v86 = 19;
                sub_26BB4A4E8(&qword_28043A170, MEMORY[0x277CC9A70]);
                v66 = v84;
                sub_26BB7D288();
                v84 = v66;
                (*(v33 + 8))(v82, v81);
                if (v66)
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v83);
                  v67 = *(v28 + 15);

                  v68 = MEMORY[0x277CC9578];
                  sub_26BB4A594(&v28[v25[13]], &qword_28043A128, MEMORY[0x277CC9578]);
                  sub_26BB4A594(&v28[v25[14]], &qword_28043A128, v68);
                  sub_26BB4A594(&v28[v25[15]], &qword_28043A128, v68);
                  sub_26BB4A594(&v28[v25[20]], &qword_28043A128, v68);
                  sub_26BB4A594(&v28[v25[21]], &qword_28043A128, v68);
                  return (*(v71 + 8))(&v28[v25[22]], v78);
                }

                else
                {
                  (*(v76 + 32))(&v28[v25[23]], v75, v74);
                  sub_26BB496C8(v28, v77);
                  __swift_destroy_boxed_opaque_existential_1Tm(v83);
                  return sub_26BB4972C(v28, type metadata accessor for Quote);
                }
              }

              (*(v33 + 8))(v82, v81);
              v47 = 1;
              v48 = 1;
              v49 = 1;
              v50 = 1;
              v51 = 1;
            }
          }
        }
      }
    }

    v35 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v63 = *(v35 + 15);

  if (v47)
  {
    result = sub_26BB4A594(&v35[v25[13]], &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v48 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (!v48)
  {
LABEL_22:
    if (v49)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  result = sub_26BB4A594(&v35[v25[14]], &qword_28043A128, MEMORY[0x277CC9578]);
  if (v49)
  {
LABEL_23:
    result = sub_26BB4A594(&v35[v25[15]], &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v50 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v50)
  {
LABEL_24:
    if (v51)
    {
      return sub_26BB4A594(&v35[v25[21]], &qword_28043A128, MEMORY[0x277CC9578]);
    }

    return result;
  }

LABEL_29:
  result = sub_26BB4A594(&v35[v25[20]], &qword_28043A128, MEMORY[0x277CC9578]);
  if (v51)
  {
    return sub_26BB4A594(&v35[v25[21]], &qword_28043A128, MEMORY[0x277CC9578]);
  }

  return result;
}

uint64_t Quote.description.getter()
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v155 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v154 = &v153 - v3;
  v157 = 0;
  v158 = 0xE000000000000000;
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  if (v0[1])
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = *v0;
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26BB7FDA0;
    *(v9 + 56) = v4;
    *(v9 + 64) = v5;
    *(v9 + 32) = v8;
    v7 = sub_26BB7CD58();
    v6 = v10;
  }

  MEMORY[0x26D68DCA0](v7, v6);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v11 = v157;
  v12 = v158;
  v157 = 0x2865746F7551;
  v158 = 0xE600000000000000;
  MEMORY[0x26D68DCA0](v11, v12);

  v13 = v157;
  v14 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[3])
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v17 = v0[2];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26BB7FDA0;
    *(v18 + 56) = v4;
    *(v18 + 64) = v5;
    *(v18 + 32) = v17;
    v16 = sub_26BB7CD58();
    v15 = v19;
  }

  MEMORY[0x26D68DCA0](v16, v15);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v20 = v157;
  v21 = v158;
  v157 = v13;
  v158 = v14;

  MEMORY[0x26D68DCA0](v20, v21);

  v22 = v157;
  v23 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[5])
  {
    v24 = 0xE300000000000000;
    v25 = 7104878;
  }

  else
  {
    v26 = v0[4];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26BB7FDA0;
    *(v27 + 56) = v4;
    *(v27 + 64) = v5;
    *(v27 + 32) = v26;
    v25 = sub_26BB7CD58();
    v24 = v28;
  }

  MEMORY[0x26D68DCA0](v25, v24);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v29 = v157;
  v30 = v158;
  v157 = v22;
  v158 = v23;

  MEMORY[0x26D68DCA0](v29, v30);

  v31 = v157;
  v32 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[7])
  {
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v35 = v0[6];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26BB7FDA0;
    *(v36 + 56) = v4;
    *(v36 + 64) = v5;
    *(v36 + 32) = v35;
    v34 = sub_26BB7CD58();
    v33 = v37;
  }

  MEMORY[0x26D68DCA0](v34, v33);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v38 = v157;
  v39 = v158;
  v157 = v31;
  v158 = v32;

  MEMORY[0x26D68DCA0](v38, v39);

  v40 = v157;
  v41 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[9])
  {
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    v44 = v0[8];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_26BB7FDA0;
    *(v45 + 56) = v4;
    *(v45 + 64) = v5;
    *(v45 + 32) = v44;
    v43 = sub_26BB7CD58();
    v42 = v46;
  }

  MEMORY[0x26D68DCA0](v43, v42);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v47 = v157;
  v48 = v158;
  v157 = v40;
  v158 = v41;

  MEMORY[0x26D68DCA0](v47, v48);

  v49 = v157;
  v50 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[11])
  {
    v51 = 0xE300000000000000;
    v52 = 7104878;
  }

  else
  {
    v53 = v0[10];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_26BB7FDA0;
    *(v54 + 56) = v4;
    *(v54 + 64) = v5;
    *(v54 + 32) = v53;
    v52 = sub_26BB7CD58();
    v51 = v55;
  }

  MEMORY[0x26D68DCA0](v52, v51);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v56 = v157;
  v57 = v158;
  v157 = v49;
  v158 = v50;

  MEMORY[0x26D68DCA0](v56, v57);

  v58 = v157;
  v59 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[13])
  {
    v60 = 0xE300000000000000;
    v61 = 7104878;
  }

  else
  {
    v62 = v0[12];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_26BB7FDA0;
    *(v63 + 56) = v4;
    *(v63 + 64) = v5;
    *(v63 + 32) = v62;
    v61 = sub_26BB7CD58();
    v60 = v64;
  }

  MEMORY[0x26D68DCA0](v61, v60);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v65 = v157;
  v66 = v158;
  v157 = v58;
  v158 = v59;

  MEMORY[0x26D68DCA0](v65, v66);

  v67 = v157;
  v68 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  if (v0[15])
  {
    v69 = v0[14];
    v70 = v0[15];
  }

  else
  {
    v70 = 0xE300000000000000;
    v69 = 7104878;
  }

  MEMORY[0x26D68DCA0](v69, v70);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v71 = v157;
  v72 = v158;
  v157 = v67;
  v158 = v68;

  MEMORY[0x26D68DCA0](v71, v72);

  v73 = v157;
  v74 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v156 = *(v0 + 128);
  v75 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v75);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v76 = v157;
  v77 = v158;
  v157 = v73;
  v158 = v74;

  MEMORY[0x26D68DCA0](v76, v77);

  v78 = v157;
  v79 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v80 = type metadata accessor for Quote();
  v81 = v154;
  sub_26BB45ACC(v0 + v80[13], v154);
  v82 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v82);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v83 = v157;
  v84 = v158;
  v157 = v78;
  v158 = v79;

  MEMORY[0x26D68DCA0](v83, v84);

  v85 = v157;
  v86 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v80[14], v81);
  v87 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v87);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v88 = v157;
  v89 = v158;
  v157 = v85;
  v158 = v86;

  MEMORY[0x26D68DCA0](v88, v89);

  v90 = v157;
  v91 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v80[15], v81);
  v92 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v92);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v93 = v157;
  v94 = v158;
  v157 = v90;
  v158 = v91;

  MEMORY[0x26D68DCA0](v93, v94);

  v95 = v157;
  v96 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v97 = *(v0 + v80[16]);
  if (v97 > 3)
  {
    if (*(v0 + v80[16]) > 5u)
    {
      v98 = &unk_26BB7F000;
      if (v97 == 6)
      {
        v100 = 0xE700000000000000;
        v99 = 0x6E776F6E6B6E75;
      }

      else
      {
        v100 = 0xE300000000000000;
        v99 = 7104878;
      }
    }

    else
    {
      v98 = &unk_26BB7F000;
      if (v97 == 4)
      {
        v99 = 0x52544B4D6573796ELL;
      }

      else
      {
        v99 = 0x52636972656E6567;
      }

      v100 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v80[16]) > 1u)
  {
    v98 = &unk_26BB7F000;
    if (v97 == 2)
    {
      v99 = 0x6C6165526573796ELL;
      v100 = 0xEC000000656D6974;
    }

    else
    {
      v99 = 0xD000000000000010;
      v100 = 0x800000026BB82CB0;
    }
  }

  else
  {
    v98 = &unk_26BB7F000;
    if (*(v0 + v80[16]))
    {
      v99 = 0x655271616473616ELL;
      v100 = 0xEE00656D69746C61;
    }

    else
    {
      v99 = 0x44636972656E6567;
      v100 = 0xEE00646579616C65;
    }
  }

  MEMORY[0x26D68DCA0](v99, v100);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v101 = v157;
  v102 = v158;
  v157 = v95;
  v158 = v96;

  MEMORY[0x26D68DCA0](v101, v102);

  v103 = v157;
  v104 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v105 = *(v0 + v80[17]);
  if (v105 > 3)
  {
    if (*(v0 + v80[17]) > 5u)
    {
      if (v105 == 6)
      {
        v107 = 0xE700000000000000;
        v106 = 0x6E776F6E6B6E75;
      }

      else
      {
        v107 = 0xE300000000000000;
        v106 = 7104878;
      }
    }

    else
    {
      if (v105 == 4)
      {
        v106 = 0x52544B4D6573796ELL;
      }

      else
      {
        v106 = 0x52636972656E6567;
      }

      v107 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v80[17]) > 1u)
  {
    if (v105 == 2)
    {
      v106 = 0x6C6165526573796ELL;
      v107 = 0xEC000000656D6974;
    }

    else
    {
      v106 = 0xD000000000000010;
      v107 = 0x800000026BB82CB0;
    }
  }

  else if (*(v0 + v80[17]))
  {
    v106 = 0x655271616473616ELL;
    v107 = 0xEE00656D69746C61;
  }

  else
  {
    v106 = 0x44636972656E6567;
    v107 = 0xEE00646579616C65;
  }

  MEMORY[0x26D68DCA0](v106, v107);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v108 = v157;
  v109 = v158;
  v157 = v103;
  v158 = v104;

  MEMORY[0x26D68DCA0](v108, v109);

  v110 = v157;
  v111 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v112 = *(v0 + v80[18]);
  if (v112 > 3)
  {
    if (*(v0 + v80[18]) > 5u)
    {
      if (v112 == 6)
      {
        v114 = 0xE700000000000000;
        v113 = 0x6E776F6E6B6E75;
      }

      else
      {
        v114 = 0xE300000000000000;
        v113 = 7104878;
      }
    }

    else
    {
      if (v112 == 4)
      {
        v113 = 0x52544B4D6573796ELL;
      }

      else
      {
        v113 = 0x52636972656E6567;
      }

      v114 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v80[18]) > 1u)
  {
    if (v112 == 2)
    {
      v113 = 0x6C6165526573796ELL;
      v114 = 0xEC000000656D6974;
    }

    else
    {
      v113 = 0xD000000000000010;
      v114 = 0x800000026BB82CB0;
    }
  }

  else if (*(v0 + v80[18]))
  {
    v113 = 0x655271616473616ELL;
    v114 = 0xEE00656D69746C61;
  }

  else
  {
    v113 = 0x44636972656E6567;
    v114 = 0xEE00646579616C65;
  }

  MEMORY[0x26D68DCA0](v113, v114);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v115 = v157;
  v116 = v158;
  v157 = v110;
  v158 = v111;

  MEMORY[0x26D68DCA0](v115, v116);

  v117 = v157;
  v118 = v158;
  v157 = 0;
  v158 = 0xE000000000000000;
  v119 = (v0 + v80[19]);
  if (v119[1])
  {
    v120 = 0xE300000000000000;
    v121 = 7104878;
  }

  else
  {
    v122 = *v119;
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v123 = swift_allocObject();
    *(v123 + 16) = v98[218];
    *(v123 + 56) = MEMORY[0x277D839F8];
    *(v123 + 64) = MEMORY[0x277D83A80];
    *(v123 + 32) = v122;
    v121 = sub_26BB7CD58();
    v120 = v124;
  }

  MEMORY[0x26D68DCA0](v121, v120);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v125 = v157;
  v126 = v158;
  v157 = v117;
  v158 = v118;

  MEMORY[0x26D68DCA0](v125, v126);

  v128 = v157;
  v127 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  v129 = v0 + v80[20];
  v130 = v80;
  v131 = v154;
  sub_26BB45ACC(v129, v154);
  v132 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v132);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v133 = v157;
  v134 = v158;
  v157 = v128;
  v158 = v127;

  MEMORY[0x26D68DCA0](v133, v134);

  v136 = v157;
  v135 = v158;
  v157 = 46;
  v158 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v130[21], v131);
  v137 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v137);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v138 = v157;
  v139 = v158;
  v157 = v136;
  v158 = v135;

  MEMORY[0x26D68DCA0](v138, v139);

  v141 = v157;
  v140 = v158;
  v142 = v130[22];
  sub_26BB7BE48();
  sub_26BB4A4E8(&qword_28158C320, MEMORY[0x277CC9578]);
  v157 = sub_26BB7D348();
  v158 = v143;
  MEMORY[0x26D68DCA0](41, 0xE100000000000000);
  v144 = v157;
  v145 = v158;
  v157 = v141;
  v158 = v140;

  MEMORY[0x26D68DCA0](v144, v145);

  v147 = v157;
  v146 = v158;
  v148 = v130[23];
  sub_26BB7BFC8();
  sub_26BB4A4E8(&qword_28043A178, MEMORY[0x277CC9A70]);
  v149 = sub_26BB7D348();
  v151 = v150;
  v157 = v147;
  v158 = v146;

  MEMORY[0x26D68DCA0](v149, v151);

  return v157;
}

uint64_t _s9StocksKit5QuoteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BE48();
  v104 = *(v4 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v101 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v92[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v92[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v92[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v92[-v19];
  sub_26BB4A454();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v92[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v92[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v92[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v36 = &v92[-v35];
  v37 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_72;
    }
  }

  v38 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_72;
    }
  }

  v39 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_72;
    }
  }

  v40 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_72;
    }
  }

  v41 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_72;
    }
  }

  v42 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_72;
    }
  }

  v43 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_72;
    }
  }

  v44 = *(a1 + 120);
  v45 = *(a2 + 120);
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_72;
    }

    v99 = v34;
    v100 = v33;
    if ((*(a1 + 112) != *(a2 + 112) || v44 != v45) && (sub_26BB7D378() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v99 = v34;
    v100 = v33;
    if (v45)
    {
      goto LABEL_72;
    }
  }

  if ((sub_26BB77F44(*(a1 + 128), *(a2 + 128)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v95 = type metadata accessor for Quote();
  v46 = *(v100 + 48);
  v97 = v95[13];
  v98 = v46;
  sub_26BB45ACC(a1 + v97, v36);
  sub_26BB45ACC(a2 + v97, &v98[v36]);
  v96 = *(v104 + 48);
  v97 = v104 + 48;
  if (v96(v36, 1, v4) == 1)
  {
    if (v96(&v98[v36], 1, v4) == 1)
    {
      sub_26BB4A594(v36, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_58;
    }

LABEL_56:
    v47 = v36;
LABEL_71:
    sub_26BB4972C(v47, sub_26BB4A454);
    goto LABEL_72;
  }

  sub_26BB45ACC(v36, v20);
  if (v96(&v98[v36], 1, v4) == 1)
  {
    (*(v104 + 8))(v20, v4);
    goto LABEL_56;
  }

  (*(v104 + 32))(v103, &v98[v36], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578]);
  v93 = sub_26BB7CD28();
  v48 = *(v104 + 8);
  v94 = v104 + 8;
  v98 = v48;
  (v48)(v103, v4);
  (v98)(v20, v4);
  sub_26BB4A594(v36, &qword_28043A128, MEMORY[0x277CC9578]);
  if ((v93 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_58:
  v49 = v95[14];
  v50 = *(v100 + 48);
  sub_26BB45ACC(a1 + v49, v32);
  v98 = v50;
  sub_26BB45ACC(a2 + v49, &v50[v32]);
  v51 = v96;
  if (v96(v32, 1, v4) == 1)
  {
    if (v51(&v98[v32], 1, v4) == 1)
    {
      sub_26BB4A594(v32, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  sub_26BB45ACC(v32, v18);
  if (v51(&v98[v32], 1, v4) == 1)
  {
    (*(v104 + 8))(v18, v4);
LABEL_63:
    v47 = v32;
    goto LABEL_71;
  }

  v52 = v104;
  (*(v104 + 32))(v103, &v98[v32], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578]);
  LODWORD(v98) = sub_26BB7CD28();
  v53 = *(v52 + 8);
  v53(v103, v4);
  v53(v18, v4);
  sub_26BB4A594(v32, &qword_28043A128, MEMORY[0x277CC9578]);
  v51 = v96;
  if ((v98 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_65:
  v54 = v95[15];
  v55 = *(v100 + 48);
  sub_26BB45ACC(a1 + v54, v29);
  sub_26BB45ACC(a2 + v54, &v29[v55]);
  if (v51(v29, 1, v4) == 1)
  {
    if (v51(&v29[v55], 1, v4) != 1)
    {
      goto LABEL_70;
    }

    sub_26BB4A594(v29, &qword_28043A128, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_26BB45ACC(v29, v15);
    if (v51(&v29[v55], 1, v4) == 1)
    {
      (*(v104 + 8))(v15, v4);
      goto LABEL_70;
    }

    v59 = v103;
    v58 = v104;
    (*(v104 + 32))(v103, &v29[v55], v4);
    sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578]);
    v60 = sub_26BB7CD28();
    v61 = *(v58 + 8);
    v61(v59, v4);
    v61(v15, v4);
    sub_26BB4A594(v29, &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v60 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v62 = v95[16];
  v63 = *(a1 + v62);
  v64 = *(a2 + v62);
  if (v63 == 7)
  {
    if (v64 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v64 == 7 || (sub_26BB780C8(v63, v64) & 1) == 0)
  {
    goto LABEL_72;
  }

  v65 = v95[17];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66 == 7)
  {
    if (v67 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v67 == 7 || (sub_26BB780C8(v66, v67) & 1) == 0)
  {
    goto LABEL_72;
  }

  v68 = v95[18];
  v69 = *(a1 + v68);
  v70 = *(a2 + v68);
  if (v69 == 7)
  {
    if (v70 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v70 == 7 || (sub_26BB780C8(v69, v70) & 1) == 0)
  {
    goto LABEL_72;
  }

  v71 = v95[19];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 8);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_72;
    }
  }

  v76 = v95[20];
  v77 = *(v100 + 48);
  sub_26BB45ACC(a1 + v76, v26);
  sub_26BB45ACC(a2 + v76, &v26[v77]);
  if (v96(v26, 1, v4) == 1)
  {
    if (v96(&v26[v77], 1, v4) == 1)
    {
      sub_26BB4A594(v26, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_103;
    }

LABEL_101:
    v47 = v26;
    goto LABEL_71;
  }

  sub_26BB45ACC(v26, v102);
  if (v96(&v26[v77], 1, v4) == 1)
  {
    (*(v104 + 8))(v102, v4);
    goto LABEL_101;
  }

  v79 = v103;
  v78 = v104;
  (*(v104 + 32))(v103, &v26[v77], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578]);
  v80 = v102;
  v81 = sub_26BB7CD28();
  v82 = *(v78 + 8);
  v82(v79, v4);
  v82(v80, v4);
  sub_26BB4A594(v26, &qword_28043A128, MEMORY[0x277CC9578]);
  if ((v81 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_103:
  v83 = v95[21];
  v84 = v99;
  v85 = *(v100 + 48);
  sub_26BB45ACC(a1 + v83, v99);
  sub_26BB45ACC(a2 + v83, v84 + v85);
  v29 = v84;
  if (v96(v84, 1, v4) != 1)
  {
    sub_26BB45ACC(v84, v101);
    if (v96((v84 + v85), 1, v4) != 1)
    {
      v87 = v103;
      v86 = v104;
      (*(v104 + 32))(v103, &v29[v85], v4);
      sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578]);
      v88 = v101;
      v89 = sub_26BB7CD28();
      v90 = *(v86 + 8);
      v90(v87, v4);
      v90(v88, v4);
      sub_26BB4A594(v29, &qword_28043A128, MEMORY[0x277CC9578]);
      if ((v89 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_109;
    }

    (*(v104 + 8))(v101, v4);
    goto LABEL_70;
  }

  if (v96((v84 + v85), 1, v4) != 1)
  {
LABEL_70:
    v47 = v29;
    goto LABEL_71;
  }

  sub_26BB4A594(v84, &qword_28043A128, MEMORY[0x277CC9578]);
LABEL_109:
  v91 = v95[22];
  if (sub_26BB7BE08())
  {
    v56 = MEMORY[0x26D68CEC0](a1 + v95[23], a2 + v95[23]);
    return v56 & 1;
  }

LABEL_72:
  v56 = 0;
  return v56 & 1;
}

unint64_t sub_26BB4942C()
{
  result = qword_28043A138;
  if (!qword_28043A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A138);
  }

  return result;
}

unint64_t sub_26BB49480()
{
  result = qword_28043A140;
  if (!qword_28043A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A140);
  }

  return result;
}

unint64_t sub_26BB494D4()
{
  result = qword_28043A148;
  if (!qword_28043A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A148);
  }

  return result;
}

void sub_26BB49528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB4942C();
    v7 = a3(a1, &type metadata for Quote.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB4958C()
{
  result = qword_28043A160;
  if (!qword_28043A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A160);
  }

  return result;
}

uint64_t sub_26BB495E0(uint64_t a1, uint64_t a2)
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BB49674()
{
  result = qword_28043A168;
  if (!qword_28043A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A168);
  }

  return result;
}

uint64_t sub_26BB496C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB4972C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB49790()
{
  result = qword_28043A180;
  if (!qword_28043A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A180);
  }

  return result;
}

void sub_26BB4980C()
{
  sub_26BB49994(319, &qword_28043A198);
  if (v0 <= 0x3F)
  {
    sub_26BB49994(319, &qword_28043A1A0);
    if (v1 <= 0x3F)
    {
      sub_26BB4A530(319, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26BB49994(319, &qword_28043A1A8);
        if (v3 <= 0x3F)
        {
          sub_26BB7BE48();
          if (v4 <= 0x3F)
          {
            sub_26BB7BFC8();
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

void sub_26BB49994(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26BB7CFE8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Quote.Source(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Quote.Source(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB49C84()
{
  result = qword_28043A1B0;
  if (!qword_28043A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1B0);
  }

  return result;
}

unint64_t sub_26BB49CDC()
{
  result = qword_28043A1B8;
  if (!qword_28043A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1B8);
  }

  return result;
}

unint64_t sub_26BB49D34()
{
  result = qword_28043A1C0;
  if (!qword_28043A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1C0);
  }

  return result;
}

uint64_t sub_26BB49D88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026BB83320 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487265746661 && a2 == 0xEF65636972507372 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026BB83340 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEE00656369725074 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026BB83360 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_26BB7D378() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_26BB7D378() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEC0000006E65704FLL || (sub_26BB7D378() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xED000065736F6C43 || (sub_26BB7D378() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83380 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F536563697270 && a2 == 0xEB00000000656372 || (sub_26BB7D378() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB833A0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEF656372756F5374 || (sub_26BB7D378() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026BB833C0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB833E0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_26BB7D378() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83400 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 19;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_26BB4A400()
{
  result = qword_28043A1C8;
  if (!qword_28043A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1C8);
  }

  return result;
}

void sub_26BB4A454()
{
  if (!qword_28043A1D0)
  {
    sub_26BB4A530(255, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A1D0);
    }
  }
}

uint64_t sub_26BB4A4E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26BB4A530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BB4A594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB4A530(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB4A608()
{
  v0 = objc_opt_self();
  v1 = sub_26BB7CD38();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_280440450 = v2;
}

uint64_t sub_26BB4A684(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v16 = v7;
  v17 = v2;
  sub_26BB7C268();
  sub_26BB7CAD8();
  v8 = sub_26BB7CA28();
  sub_26BB7CAA8();

  (*(v5 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v5 + 32))(v10 + v9, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v11 = sub_26BB7CA28();
  v12 = sub_26BB7CA98();

  return v12;
}

uint64_t sub_26BB4A844()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_26BB7C4B8();
}

uint64_t sub_26BB4A874(void *a1)
{
  v2 = sub_26BB7C268();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v4 = sub_26BB7CB88();
  __swift_project_value_buffer(v4, qword_28158F140);
  v5 = a1;
  v6 = sub_26BB7CB68();
  v7 = sub_26BB7CF78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_26BB7D3C8();
    v12 = sub_26BB38238(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26BB21000, v6, v7, "Failed to refresh app configuration with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D68EA90](v9, -1, -1);
    MEMORY[0x26D68EA90](v8, -1, -1);
  }

  sub_26BB7C4A8();
  sub_26BB4AAE0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  return sub_26BB7CA88();
}

uint64_t sub_26BB4AA90(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(*(*(v1 + 16) - 8) + 80);
  return sub_26BB4A874(a1);
}

void sub_26BB4AAE0()
{
  if (!qword_28043A1E8)
  {
    sub_26BB7C268();
    v0 = sub_26BB7CAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A1E8);
    }
  }
}

uint64_t sub_26BB4AB38()
{
  v1 = type metadata accessor for StocksKitServiceRequest(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - v6;
  v8 = sub_26BB7BE78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  v16 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v0, v19, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v13, v19, v8);
    strcpy(v29, ".cancel(id: ");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v20 = sub_26BB7D348();
    MEMORY[0x26D68DCA0](v20);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    v21 = v29[0];
    v15 = v13;
  }

  else
  {
    sub_26BB54250();
    v23 = *(v22 + 48);
    (*(v9 + 32))(v15, v19, v8);
    sub_26BB5534C(&v19[v23], v7, type metadata accessor for StocksKitServiceRequest);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    sub_26BB7D098();

    strcpy(v29, ".fetch(id: ");
    HIDWORD(v29[1]) = -352321536;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v24 = sub_26BB7D348();
    MEMORY[0x26D68DCA0](v24);

    MEMORY[0x26D68DCA0](0x736575716572202CLL, 0xEB00000000203A74);
    sub_26BB54CA8(v7, v5, type metadata accessor for StocksKitServiceRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BB55AE4(v5, type metadata accessor for DataSource.Logo);
      v25 = 0xE400000000000000;
      v26 = 1869049708;
    }

    else
    {
      sub_26BB53CA4();
      v25 = 0x800000026BB83500;
      sub_26BB55B44(&v5[*(v27 + 48)], &qword_28158BB50, MEMORY[0x277D858F8]);
      v26 = 0xD000000000000013;
    }

    MEMORY[0x26D68DCA0](v26, v25);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    v21 = v29[0];
    sub_26BB55AE4(v7, type metadata accessor for StocksKitServiceRequest);
  }

  (*(v9 + 8))(v15, v8);
  return v21;
}

uint64_t sub_26BB4AFAC(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_26BB581D0(0, &qword_28158B150, sub_26BB54A48, &type metadata for CancellableStocksKitServiceRequest.CancelCodingKeys, MEMORY[0x277D84538]);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - v5;
  sub_26BB581D0(0, &qword_28158B158, sub_26BB54A9C, &type metadata for CancellableStocksKitServiceRequest.FetchCodingKeys, v2);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v8;
  v40 = type metadata accessor for StocksKitServiceRequest(0);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26BB7BE78();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v40 - v15;
  v16 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B160, sub_26BB54AF0, &type metadata for CancellableStocksKitServiceRequest.CodingKeys, v2);
  v21 = v20;
  v53 = *(v20 - 8);
  v22 = *(v53 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB54AF0();
  sub_26BB7D488();
  sub_26BB54CA8(v48, v19, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v49;
    v27 = v41;
    (*(v49 + 32))(v41, v19, v11);
    v57 = 1;
    sub_26BB54A48();
    v28 = v42;
    sub_26BB7D2B8();
    sub_26BB54B44(&qword_28158BB18, MEMORY[0x277CC95F0]);
    v29 = v44;
    sub_26BB7D328();
    (*(v43 + 8))(v28, v29);
    (*(v26 + 8))(v27, v11);
  }

  else
  {
    sub_26BB54250();
    v31 = *(v30 + 48);
    v32 = v49;
    (*(v49 + 32))(v50, v19, v11);
    sub_26BB5534C(&v19[v31], v51, type metadata accessor for StocksKitServiceRequest);
    v56 = 0;
    sub_26BB54A9C();
    v33 = v45;
    sub_26BB7D2B8();
    v55 = 0;
    sub_26BB54B44(&qword_28158BB18, MEMORY[0x277CC95F0]);
    v34 = v47;
    v35 = v52;
    sub_26BB7D328();
    v36 = v32;
    if (v35)
    {
      (*(v46 + 8))(v33, v34);
      v37 = v51;
    }

    else
    {
      v54 = 1;
      sub_26BB54B44(&qword_28158B8C8, type metadata accessor for StocksKitServiceRequest);
      v38 = v51;
      sub_26BB7D328();
      (*(v46 + 8))(v33, v34);
      v37 = v38;
    }

    sub_26BB55AE4(v37, type metadata accessor for StocksKitServiceRequest);
    (*(v36 + 8))(v50, v11);
  }

  return (*(v53 + 8))(v24, v21);
}

uint64_t sub_26BB4B65C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB581D0(0, &qword_28158B1D0, sub_26BB54A48, &type metadata for CancellableStocksKitServiceRequest.CancelCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = v52 - v7;
  sub_26BB581D0(0, &qword_28158B1D8, sub_26BB54A9C, &type metadata for CancellableStocksKitServiceRequest.FetchCodingKeys, v3);
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = v52 - v10;
  sub_26BB581D0(0, &qword_28158B1E0, sub_26BB54AF0, &type metadata for CancellableStocksKitServiceRequest.CodingKeys, v3);
  v12 = v11;
  v62 = *(v11 - 1);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v16 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v52 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_26BB54AF0();
  v28 = v63;
  sub_26BB7D478();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  v54 = v20;
  v30 = v59;
  v29 = v60;
  v63 = v25;
  v31 = v61;
  v32 = sub_26BB7D298();
  v33 = (2 * *(v32 + 16)) | 1;
  v65 = v32;
  v66 = v32 + 32;
  v67 = 0;
  v68 = v33;
  v34 = sub_26BB3BF0C();
  if (v34 == 2 || v67 != v68 >> 1)
  {
    v38 = sub_26BB7D0E8();
    swift_allocError();
    v40 = v39;
    sub_26BB39000();
    v42 = *(v41 + 48);
    *v40 = v16;
    sub_26BB7D218();
    sub_26BB7D0C8();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v62 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  v52[1] = v16;
  v53 = v15;
  if (v34)
  {
    v69 = 1;
    sub_26BB54A48();
    v35 = v29;
    sub_26BB7D208();
    v37 = v62;
    v36 = v63;
    v45 = v31;
    sub_26BB7BE78();
    sub_26BB54B44(&qword_28158BB08, MEMORY[0x277CC95F0]);
    v47 = v54;
    v46 = v55;
    sub_26BB7D288();
    (*(v56 + 8))(v35, v46);
    (*(v37 + 8))(v53, v12);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v48 = v47;
  }

  else
  {
    v69 = 0;
    sub_26BB54A9C();
    sub_26BB7D208();
    v44 = v62;
    v60 = v12;
    sub_26BB7BE78();
    v69 = 0;
    sub_26BB54B44(&qword_28158BB08, MEMORY[0x277CC95F0]);
    sub_26BB7D288();
    sub_26BB54250();
    v50 = *(v49 + 48);
    type metadata accessor for StocksKitServiceRequest(0);
    v69 = 1;
    sub_26BB54B44(&qword_28158B8C0, type metadata accessor for StocksKitServiceRequest);
    v51 = v58;
    sub_26BB7D288();
    (*(v57 + 8))(v30, v51);
    (*(v44 + 8))(v53, v60);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v45 = v31;
    v36 = v63;
    v48 = v23;
  }

  sub_26BB5534C(v48, v36, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB5534C(v36, v45, type metadata accessor for CancellableStocksKitServiceRequest);
  return __swift_destroy_boxed_opaque_existential_1Tm(v64);
}

uint64_t sub_26BB4BE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB4BF10(uint64_t a1)
{
  v2 = sub_26BB54A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4BF4C(uint64_t a1)
{
  v2 = sub_26BB54A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4BF88()
{
  if (*v0)
  {
    result = 0x6C65636E6163;
  }

  else
  {
    result = 0x6863746566;
  }

  *v0;
  return result;
}

uint64_t sub_26BB4BFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4C090(uint64_t a1)
{
  v2 = sub_26BB54AF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4C0CC(uint64_t a1)
{
  v2 = sub_26BB54AF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4C108()
{
  if (*v0)
  {
    result = 0x74736575716572;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_26BB4C138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4C20C(uint64_t a1)
{
  v2 = sub_26BB54A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4C248(uint64_t a1)
{
  v2 = sub_26BB54A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4C2B8(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_26BB581D0(0, &qword_28043A248, sub_26BB57F04, &type metadata for StocksKitServiceRequest.LogoCodingKeys, MEMORY[0x277D84538]);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - v5;
  v40 = type metadata accessor for DataSource.Logo(0);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B140, sub_26BB57F58, &type metadata for StocksKitServiceRequest.CurrencyConversionsCodingKeys, v2);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v40 - v11;
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v40 - v14;
  v15 = type metadata accessor for StocksKitServiceRequest(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B148, sub_26BB57FAC, &type metadata for StocksKitServiceRequest.CodingKeys, v2);
  v20 = v19;
  v50 = *(v19 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB57FAC();
  sub_26BB7D488();
  sub_26BB54CA8(v48, v18, type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BB53D2C();
    v26 = *&v18[*(v25 + 48)];
    sub_26BB5534C(v18, v8, type metadata accessor for DataSource.Logo);
    LOBYTE(v51) = 1;
    sub_26BB57F04();
    v27 = v45;
    sub_26BB7D2B8();
    LOBYTE(v51) = 0;
    sub_26BB54B44(&qword_28158B7F0, type metadata accessor for DataSource.Logo);
    v28 = v47;
    v29 = v49;
    sub_26BB7D328();
    if (!v29)
    {
      v51 = v26;
      v54 = 1;
      sub_26BB580A8();
      sub_26BB7D328();
    }

    (*(v46 + 8))(v27, v28);
    sub_26BB55AE4(v8, type metadata accessor for DataSource.Logo);
  }

  else
  {
    v30 = *v18;
    v31 = *(v18 + 1);
    v32 = v18[16];
    sub_26BB53CA4();
    v34 = &v18[*(v33 + 48)];
    v35 = v42;
    sub_26BB580FC(v34, v42);
    LOBYTE(v51) = 0;
    sub_26BB57F58();
    v36 = v41;
    sub_26BB7D2B8();
    v51 = v30;
    v52 = v31;
    v53 = v32;
    v54 = 0;
    sub_26BB5817C();
    v37 = v44;
    v38 = v49;
    sub_26BB7D328();
    if (!v38)
    {
      LOBYTE(v51) = 1;
      sub_26BB7D178();
      sub_26BB54B44(&qword_28158B210, MEMORY[0x277D858F8]);
      sub_26BB7D2F8();
    }

    (*(v43 + 8))(v36, v37);
    sub_26BB55B44(v35, &qword_28158BB50, MEMORY[0x277D858F8]);
  }

  return (*(v50 + 8))(v23, v20);
}

uint64_t sub_26BB4C8F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB581D0(0, &qword_28043A230, sub_26BB57F04, &type metadata for StocksKitServiceRequest.LogoCodingKeys, MEMORY[0x277D844C8]);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v58 - v6;
  sub_26BB581D0(0, &qword_28158B1C0, sub_26BB57F58, &type metadata for StocksKitServiceRequest.CurrencyConversionsCodingKeys, v3);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v58 - v9;
  sub_26BB581D0(0, &qword_28158B1C8, sub_26BB57FAC, &type metadata for StocksKitServiceRequest.CodingKeys, v3);
  v11 = v10;
  v67 = *(v10 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  v15 = type metadata accessor for StocksKitServiceRequest(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_26BB57FAC();
  v27 = v70;
  sub_26BB7D478();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v60 = v24;
  v61 = v22;
  v70 = v19;
  v29 = v68;
  v28 = v69;
  v30 = v15;
  v31 = v67;
  v32 = sub_26BB7D298();
  v33 = (2 * *(v32 + 16)) | 1;
  v72 = v32;
  v73 = v32 + 32;
  v74 = 0;
  v75 = v33;
  v34 = sub_26BB3BF0C();
  v35 = v11;
  v36 = v14;
  if (v34 == 2 || v74 != v75 >> 1)
  {
    v42 = sub_26BB7D0E8();
    swift_allocError();
    v44 = v43;
    sub_26BB39000();
    v46 = *(v45 + 48);
    *v44 = v30;
    sub_26BB7D218();
    sub_26BB7D0C8();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v31 + 8))(v14, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  if (v34)
  {
    v59 = v15;
    v76 = 1;
    sub_26BB57F04();
    v37 = v29;
    sub_26BB7D208();
    v38 = v31;
    v39 = v35;
    type metadata accessor for DataSource.Logo(0);
    v76 = 0;
    sub_26BB54B44(&qword_28158B7E8, type metadata accessor for DataSource.Logo);
    v40 = v70;
    v41 = v65;
    sub_26BB7D288();
    sub_26BB53D2C();
    v51 = *(v50 + 48);
    v76 = 1;
    sub_26BB58000();
    sub_26BB7D288();
    (*(v64 + 8))(v37, v41);
    (*(v38 + 8))(v36, v39);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v56 = v40;
  }

  else
  {
    v76 = 0;
    sub_26BB57F58();
    v47 = v35;
    sub_26BB7D208();
    v48 = v31;
    v59 = v15;
    v76 = 0;
    sub_26BB58054();
    v56 = v61;
    v49 = v63;
    sub_26BB7D288();
    sub_26BB53CA4();
    v53 = *(v52 + 48);
    sub_26BB7D178();
    v76 = 1;
    sub_26BB54B44(&qword_28158B208, MEMORY[0x277D858F8]);
    v54 = v66;
    sub_26BB7D258();
    (*(v62 + 8))(v54, v49);
    (*(v48 + 8))(v36, v47);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  v57 = v60;
  sub_26BB5534C(v56, v60, type metadata accessor for StocksKitServiceRequest);
  sub_26BB5534C(v57, v28, type metadata accessor for StocksKitServiceRequest);
  return __swift_destroy_boxed_opaque_existential_1Tm(v71);
}

uint64_t sub_26BB4D11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26BB4D220(char a1)
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](a1 & 1);
  return sub_26BB7D458();
}

uint64_t sub_26BB4D268(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_26BB4D298(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BB7D378();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BB4D30C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BB7D378();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BB4D380(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v51 = type metadata accessor for StocksKitServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26BB7D338();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v40 - v12;
  v52 = *(v7 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StocksKitServiceResult.SuccessCodingKeys();
  v16 = swift_getWitnessTable();
  v44 = v15;
  v42 = v16;
  v17 = sub_26BB7D338();
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v40 - v20;
  v45 = *(v6 - 8);
  v21 = *(v45 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v41 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v7;
  v58 = v6;
  type metadata accessor for StocksKitServiceResult.CodingKeys();
  swift_getWitnessTable();
  v59 = sub_26BB7D338();
  v61 = *(v59 - 8);
  v28 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v30 = &v40 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB7D488();
  (*(v24 + 16))(v27, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v52;
    v33 = v48;
    v34 = v57;
    (*(v52 + 32))(v48, v27, v57);
    v63 = 1;
    v35 = v50;
    v36 = v59;
    sub_26BB7D2B8();
    v37 = v54;
    sub_26BB7D328();
    v38 = v53;
  }

  else
  {
    v32 = v45;
    v33 = v41;
    v34 = v58;
    (*(v45 + 32))(v41, v27, v58);
    v62 = 0;
    v35 = v43;
    v36 = v59;
    sub_26BB7D2B8();
    v37 = v47;
    sub_26BB7D328();
    v38 = v46;
  }

  (*(v38 + 8))(v35, v37);
  (*(v32 + 8))(v33, v34);
  return (*(v61 + 8))(v30, v36);
}

uint64_t sub_26BB4D90C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v71 = a5;
  v70 = a4;
  v63 = a6;
  v9 = type metadata accessor for StocksKitServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v76 = v9;
  v67 = sub_26BB7D2A8();
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v77 = &v61 - v11;
  v12 = type metadata accessor for StocksKitServiceResult.SuccessCodingKeys();
  v72 = swift_getWitnessTable();
  v73 = v12;
  v65 = sub_26BB7D2A8();
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v74 = &v61 - v14;
  type metadata accessor for StocksKitServiceResult.CodingKeys();
  v81 = swift_getWitnessTable();
  v15 = sub_26BB7D2A8();
  v16 = *(v15 - 8);
  v79 = v15;
  v80 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  v68 = a2;
  v69 = a3;
  v20 = type metadata accessor for StocksKitServiceResult();
  v78 = *(v20 - 8);
  v21 = *(v78 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;
  v30 = a1;
  v31 = a1[3];
  v32 = a1[4];
  v87 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v33 = v82;
  sub_26BB7D478();
  if (!v33)
  {
    v81 = v24;
    v82 = v27;
    v62 = v29;
    v34 = v79;
    v35 = v19;
    *&v83 = sub_26BB7D298();
    sub_26BB7CE38();
    swift_getWitnessTable();
    *&v85 = sub_26BB7D008();
    *(&v85 + 1) = v36;
    *&v86 = v37;
    *(&v86 + 1) = v38;
    sub_26BB7CFF8();
    swift_getWitnessTable();
    sub_26BB7CF28();
    v39 = v83;
    if (v83 == 2 || (v61 = v85, v83 = v85, v84 = v86, (sub_26BB7CF38() & 1) == 0))
    {
      v45 = sub_26BB7D0E8();
      swift_allocError();
      v47 = v46;
      sub_26BB39000();
      v49 = *(v48 + 48);
      *v47 = v20;
      sub_26BB7D218();
      sub_26BB7D0C8();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      (*(v80 + 8))(v35, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v83) = 1;
        v40 = v77;
        v41 = v19;
        sub_26BB7D208();
        v42 = v80;
        v43 = v81;
        v44 = v67;
        sub_26BB7D288();
        (*(v66 + 8))(v40, v44);
        (*(v42 + 8))(v41, v34);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v55 = v43;
        v56 = v78;
        v57 = v63;
      }

      else
      {
        LOBYTE(v83) = 0;
        v50 = v74;
        v51 = v19;
        sub_26BB7D208();
        v52 = v80;
        v56 = v78;
        v53 = v65;
        sub_26BB7D288();
        (*(v64 + 8))(v50, v53);
        (*(v52 + 8))(v51, v34);
        swift_unknownObjectRelease();
        v58 = v82;
        swift_storeEnumTagMultiPayload();
        v57 = v63;
        v55 = v58;
      }

      v59 = *(v56 + 32);
      v60 = v62;
      v59(v62, v55, v20);
      v59(v57, v60, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

unint64_t sub_26BB4E0C0()
{
  if (*v0)
  {
    result = 1869049708;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_26BB4E0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000026BB83500 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26BB7D378();

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

uint64_t sub_26BB4E1E0(uint64_t a1)
{
  v2 = sub_26BB57FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4E21C(uint64_t a1)
{
  v2 = sub_26BB57FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4E258()
{
  if (*v0)
  {
    result = 0x656E696C64616564;
  }

  else
  {
    result = 0x6C6F506568636163;
  }

  *v0;
  return result;
}

uint64_t sub_26BB4E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C64616564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4E37C(uint64_t a1)
{
  v2 = sub_26BB57F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4E3B8(uint64_t a1)
{
  v2 = sub_26BB57F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4E3F4()
{
  if (*v0)
  {
    result = 0x747865746E6F63;
  }

  else
  {
    result = 1869049708;
  }

  *v0;
  return result;
}

uint64_t sub_26BB4E428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1869049708 && a2 == 0xE400000000000000;
  if (v5 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4E504(uint64_t a1)
{
  v2 = sub_26BB57F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB4E540(uint64_t a1)
{
  v2 = sub_26BB57F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB4E5AC(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v3, v5, type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BB55AE4(v5, type metadata accessor for DataSource.Logo);
    return 1869049708;
  }

  else
  {
    sub_26BB53CA4();
    sub_26BB55B44(&v5[*(v7 + 48)], &qword_28158BB50, MEMORY[0x277D858F8]);
    return 0xD000000000000013;
  }
}

BOOL sub_26BB4E6C4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_26BB4D1E8(*a1, *a2);
}

uint64_t sub_26BB4E6DC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_26BB4D220(*v1);
}

uint64_t sub_26BB4E6F0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_26BB4D1F8(a1, *v2);
}

uint64_t sub_26BB4E704(uint64_t a1, void *a2)
{
  sub_26BB7D418();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_26BB4D1F8(v8, *v2);
  return sub_26BB7D458();
}

uint64_t sub_26BB4E750(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_26BB4D268(*v1);
}

uint64_t sub_26BB4E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_26BB4D11C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_26BB4E798@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_26BB55DD0();
  *a2 = result;
  return result;
}

uint64_t sub_26BB4E7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4E820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_26BB4D298(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_26BB4E8C0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_26BB299DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26BB4E8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4E94C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4E9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_26BB4D30C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_26BB4E9EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4EA40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4EADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6961466863746566;
  v4 = 0xEC0000006572756CLL;
  if (v2 != 1)
  {
    v3 = 0x616C6C65636E6163;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x614665646F636564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006572756C69;
  }

  v7 = 0x6961466863746566;
  v8 = 0xEC0000006572756CLL;
  if (*a2 != 1)
  {
    v7 = 0x616C6C65636E6163;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x614665646F636564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006572756C69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26BB7D378();
  }

  return v11 & 1;
}

uint64_t sub_26BB4EC08()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB4ECC8()
{
  *v0;
  *v0;
  sub_26BB7CD88();
}

uint64_t sub_26BB4ED74()
{
  v1 = *v0;
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB4EE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26BB55DD8();
  *a2 = result;
  return result;
}

void sub_26BB4EE60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006572756C69;
  v4 = 0xEC0000006572756CLL;
  v5 = 0x6961466863746566;
  if (v2 != 1)
  {
    v5 = 0x616C6C65636E6163;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614665646F636564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26BB4EF8C()
{
  v1 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_26BB7CB88();
  __swift_project_value_buffer(v2, qword_28158F140);
  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BB21000, v3, v4, "XPCSessionWrapper deinit", v5, 2u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  os_unfair_lock_lock((v6 + 24));
  sub_26BB4F0AC((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  v7 = *(v1 + 16);

  return v1;
}

uint64_t sub_26BB4F0AC(uint64_t *a1)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_26BB7CB88();
  __swift_project_value_buffer(v2, qword_28158F140);
  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BB21000, v3, v4, "Cancelling XPC...", v5, 2u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = *a1;
  return sub_26BB7CBE8();
}

uint64_t sub_26BB4F1B8()
{
  sub_26BB4EF8C();

  return swift_deallocClassInstance();
}

uint64_t sub_26BB4F20C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(void), uint64_t a9)
{
  v48 = a7;
  v49 = a8;
  v51 = a5;
  v52 = a3;
  v47 = a4;
  v44 = a1;
  v50 = a9;
  v12 = type metadata accessor for StocksKitServiceRequest(0);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v23 = sub_26BB7CB88();
  __swift_project_value_buffer(v23, qword_28158F140);
  v45 = a2;
  sub_26BB54CA8(a2, v22, type metadata accessor for StocksKitServiceRequest);
  v24 = sub_26BB7CB68();
  v25 = sub_26BB7CF78();
  if (os_log_type_enabled(v24, v25))
  {
    v41 = a6;
    v42 = v9;
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53 = v40;
    *v26 = 136315138;
    sub_26BB54CA8(v22, v20, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v20, v17, type metadata accessor for StocksKitServiceRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BB55AE4(v20, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for DataSource.Logo);
      v27 = 0xE400000000000000;
      v28 = 1869049708;
    }

    else
    {
      sub_26BB53CA4();
      v39 = *(v29 + 48);
      v27 = 0x800000026BB83500;
      sub_26BB55AE4(v20, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(&v17[v39], &qword_28158BB50, MEMORY[0x277D858F8]);
      v28 = 0xD000000000000013;
    }

    v30 = sub_26BB38238(v28, v27, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_26BB21000, v24, v25, "Sending XPC message from proxy: %s", v26, 0xCu);
    v31 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D68EA90](v31, -1, -1);
    MEMORY[0x26D68EA90](v26, -1, -1);
  }

  else
  {

    sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
  }

  v32 = *v44;
  v33 = v46;
  sub_26BB54CA8(v45, v46, type metadata accessor for StocksKitServiceRequest);
  v34 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  sub_26BB5534C(v33, v35 + v34, type metadata accessor for StocksKitServiceRequest);
  v36 = (v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v51;
  *v36 = v47;
  v36[1] = v37;
  type metadata accessor for CancellableStocksKitServiceRequest(0);
  v48(0);
  sub_26BB54B44(&qword_28158B988, type metadata accessor for CancellableStocksKitServiceRequest);
  v49();

  sub_26BB7CBD8();
}

uint64_t sub_26BB4F6FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v48 = a3;
  v47 = type metadata accessor for StocksKitServiceRequest(0);
  v6 = *(*(v47 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  sub_26BB56C7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  sub_26BB57E88(0, &qword_28158B0C8, sub_26BB56C7C, MEMORY[0x277D84C48]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v47 - v23);
  sub_26BB56E40(a1, &v47 - v23, &qword_28158B0C8, sub_26BB56C7C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v26 = sub_26BB7CB88();
    __swift_project_value_buffer(v26, qword_28158F140);
    v27 = v25;
    v28 = sub_26BB7CB68();
    v29 = sub_26BB7CF78();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_26BB21000, v28, v29, "Failure sending request, error: %@", v30, 0xCu);
      sub_26BB55B44(v31, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v31, -1, -1);
      MEMORY[0x26D68EA90](v30, -1, -1);
    }

    *v18 = 0;
    swift_storeEnumTagMultiPayload();
    v51(v18);

    v20 = v18;
  }

  else
  {
    sub_26BB5534C(v24, v20, sub_26BB56C7C);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v34 = sub_26BB7CB88();
    __swift_project_value_buffer(v34, qword_28158F140);
    sub_26BB54CA8(v48, v13, type metadata accessor for StocksKitServiceRequest);
    v35 = sub_26BB7CB68();
    v36 = sub_26BB7CF78();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v49;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v40;
      *v39 = 136315138;
      sub_26BB54CA8(v13, v11, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v11, v38, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26BB55AE4(v11, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v13, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v38, type metadata accessor for DataSource.Logo);
        v41 = 0xE400000000000000;
        v42 = 1869049708;
      }

      else
      {
        sub_26BB53CA4();
        v44 = *(v43 + 48);
        v41 = 0x800000026BB83500;
        sub_26BB55AE4(v11, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v13, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55B44(&v49[v44], &qword_28158BB50, MEMORY[0x277D858F8]);
        v42 = 0xD000000000000013;
      }

      v45 = sub_26BB38238(v42, v41, &v52);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_26BB21000, v35, v36, "Done sending request: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D68EA90](v40, -1, -1);
      MEMORY[0x26D68EA90](v39, -1, -1);
    }

    else
    {

      sub_26BB55AE4(v13, type metadata accessor for StocksKitServiceRequest);
    }

    v51(v20);
  }

  return sub_26BB55AE4(v20, sub_26BB56C7C);
}

uint64_t sub_26BB4FD00(uint64_t *a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26BB7BE78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v12 = sub_26BB7CB88();
  __swift_project_value_buffer(v12, qword_28158F140);
  v29 = *(v8 + 16);
  v30 = a2;
  v29(v11, a2, v7);
  v13 = sub_26BB7CB68();
  v14 = sub_26BB7CF78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v2;
    v16 = v15;
    v26 = swift_slowAlloc();
    v33 = v26;
    *v16 = 136315138;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v17 = sub_26BB7D348();
    v27 = v4;
    v19 = v18;
    (*(v8 + 8))(v11, v7);
    v20 = sub_26BB38238(v17, v19, &v33);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26BB21000, v13, v14, "Sending cancellation XPC message for id: %s", v16, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D68EA90](v21, -1, -1);
    MEMORY[0x26D68EA90](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v22 = v32;
  v29(v32, v30, v7);
  swift_storeEnumTagMultiPayload();
  v23 = *v31;
  sub_26BB54B44(&qword_28158B988, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB7CBC8();
  return sub_26BB55AE4(v22, type metadata accessor for CancellableStocksKitServiceRequest);
}

void sub_26BB50094()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_26BB7CB88();
  __swift_project_value_buffer(v0, qword_28158F140);
  oslog = sub_26BB7CB68();
  v1 = sub_26BB7CF78();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_26BB21000, oslog, v1, "Done sending XPC cancellation message", v2, 2u);
    MEMORY[0x26D68EA90](v2, -1, -1);
  }
}

void sub_26BB5017C(uint64_t a1)
{
  v2 = sub_26BB7CC28();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v10 = sub_26BB7CB88();
  __swift_project_value_buffer(v10, qword_28158F140);
  v11 = v3[2];
  v11(v9, a1, v2);
  v11(v7, a1, v2);
  v12 = sub_26BB7CB68();
  v13 = sub_26BB7CF78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 67109378;
    v16 = sub_26BB7CC18() & 1;
    v17 = v3[1];
    v17(v9, v2);
    *(v14 + 4) = v16;
    *(v14 + 8) = 2080;
    v18 = sub_26BB7CC08();
    v20 = v19;
    v17(v7, v2);
    v21 = sub_26BB38238(v18, v20, &v24);

    *(v14 + 10) = v21;
    _os_log_impl(&dword_26BB21000, v12, v13, "Session cancelled (recoverable: %{BOOL}d): %s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D68EA90](v15, -1, -1);
    MEMORY[0x26D68EA90](v14, -1, -1);
  }

  else
  {
    v22 = v3[1];
    v22(v9, v2);

    v22(v7, v2);
  }
}

uint64_t sub_26BB50428(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26BB7CE88();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for StocksKitServiceRequest(0);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v3[12] = *(v8 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = sub_26BB7BE78();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v3[19] = *(v10 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB505FC, 0, 0);
}

uint64_t sub_26BB505FC()
{
  v58 = v0;
  v1 = v0[22];
  sub_26BB7BE68();
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[4];
  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);
  sub_26BB54CA8(v7, v6, type metadata accessor for StocksKitServiceRequest);
  v56 = *(v5 + 16);
  v56(v2, v3, v4);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v14 = v0[10];
    v15 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v15 = 136315394;
    sub_26BB54CA8(v11, v12, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v12, v13, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB55AE4(v0[15], type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v19, type metadata accessor for DataSource.Logo);
      v20 = 0xE400000000000000;
      v21 = 1869049708;
    }

    else
    {
      sub_26BB53CA4();
      v28 = *(v27 + 48);
      v20 = 0x800000026BB83500;
      sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(v19 + v28, &qword_28158BB50, MEMORY[0x277D858F8]);
      v21 = 0xD000000000000013;
    }

    v29 = v0[21];
    v31 = v0[17];
    v30 = v0[18];
    v32 = sub_26BB38238(v21, v20, v57);

    *(v15 + 4) = v32;
    *(v15 + 12) = 2080;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v33 = sub_26BB7D348();
    v35 = v34;
    v26 = *(v30 + 8);
    v26(v29, v31);
    v36 = sub_26BB38238(v33, v35, v57);

    *(v15 + 14) = v36;
    _os_log_impl(&dword_26BB21000, v9, v10, "Fetching request: %s from proxy with id: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v54, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);
  }

  else
  {
    v22 = v0[21];
    v23 = v0[17];
    v24 = v0[18];
    v25 = v0[16];

    v26 = *(v24 + 8);
    v26(v22, v23);
    sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
  }

  v0[23] = v26;
  sub_26BB54D10();
  v0[24] = v37;
  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[17];
  v41 = v0[18];
  v42 = v0[13];
  v55 = v42;
  v43 = v0[11];
  v44 = v0[4];
  v45 = v0[5];
  v46 = v37;
  v56(v38, v0[22], v40);
  sub_26BB54CA8(v44, v42, type metadata accessor for StocksKitServiceRequest);
  v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v48 = (v39 + *(v43 + 80) + v47) & ~*(v43 + 80);
  v49 = swift_allocObject();
  v0[25] = v49;
  *(v49 + 16) = v45;
  *(v49 + 24) = v46;
  (*(v41 + 32))(v49 + v47, v38, v40);
  sub_26BB5534C(v55, v49 + v48, type metadata accessor for StocksKitServiceRequest);
  v50 = *(MEMORY[0x277D6CDA8] + 4);

  v51 = swift_task_alloc();
  v0[26] = v51;
  *v51 = v0;
  v51[1] = sub_26BB50C04;
  v52 = v0[3];

  return MEMORY[0x2821D20A8](v52, &unk_26BB80510, v49, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB50C04()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_26BB50E24;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_26BB50D20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB50D20()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v13 = v0[13];
  v14 = v0[9];
  v15 = v0[8];

  v2(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26BB50E24()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);

  *(v0 + 16) = v1;
  v5 = v1;
  sub_26BB55504();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    (*(v11 + 32))(v9, v8, v10);
    sub_26BB55568(v6, v7);
    v12 = *(v0 + 192);
    v34 = *(v0 + 184);
    v13 = *(v0 + 176);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);
    sub_26BB54B44(&qword_280439E98, MEMORY[0x277D85678]);
    swift_allocError();
    (*(v17 + 16))(v19, v16, v18);
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    v34(v13, v14);
  }

  else
  {
    v20 = *(v0 + 192);
    v21 = *(v0 + 144) + 8;
    (*(v0 + 184))(*(v0 + 176), *(v0 + 136));

    v22 = *(v0 + 216);
  }

  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v25 = *(v0 + 160);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v31 = *(v0 + 64);
  v30 = *(v0 + 72);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_26BB51090(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26BB7CE88();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for StocksKitServiceRequest(0);
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v3[12] = *(v8 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v9 = sub_26BB7BE78();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v3[19] = *(v10 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB51264, 0, 0);
}

uint64_t sub_26BB51264()
{
  v59 = v0;
  v1 = v0[22];
  sub_26BB7BE68();
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[4];
  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);
  sub_26BB54CA8(v7, v6, type metadata accessor for StocksKitServiceRequest);
  v57 = *(v5 + 16);
  v57(v2, v3, v4);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v14 = v0[10];
    v15 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v15 = 136315394;
    sub_26BB54CA8(v11, v12, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v12, v13, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB55AE4(v0[15], type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v19, type metadata accessor for DataSource.Logo);
      v20 = 0xE400000000000000;
      v21 = 1869049708;
    }

    else
    {
      sub_26BB53CA4();
      v28 = *(v27 + 48);
      v20 = 0x800000026BB83500;
      sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(v19 + v28, &qword_28158BB50, MEMORY[0x277D858F8]);
      v21 = 0xD000000000000013;
    }

    v29 = v0[21];
    v31 = v0[17];
    v30 = v0[18];
    v32 = sub_26BB38238(v21, v20, v58);

    *(v15 + 4) = v32;
    *(v15 + 12) = 2080;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
    v33 = sub_26BB7D348();
    v35 = v34;
    v26 = *(v30 + 8);
    v26(v29, v31);
    v36 = sub_26BB38238(v33, v35, v58);

    *(v15 + 14) = v36;
    _os_log_impl(&dword_26BB21000, v9, v10, "Fetching request: %s from proxy with id: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v55, -1, -1);
    MEMORY[0x26D68EA90](v15, -1, -1);
  }

  else
  {
    v22 = v0[21];
    v23 = v0[17];
    v24 = v0[18];
    v25 = v0[16];

    v26 = *(v24 + 8);
    v26(v22, v23);
    sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
  }

  v0[23] = v26;
  sub_26BB54D10();
  v0[24] = v37;
  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[17];
  v41 = v0[18];
  v42 = v0[13];
  v56 = v42;
  v43 = v0[11];
  v44 = v0[4];
  v45 = v0[5];
  v46 = v37;
  v57(v38, v0[22], v40);
  sub_26BB54CA8(v44, v42, type metadata accessor for StocksKitServiceRequest);
  v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v48 = (v39 + *(v43 + 80) + v47) & ~*(v43 + 80);
  v49 = swift_allocObject();
  v0[25] = v49;
  *(v49 + 16) = v45;
  *(v49 + 24) = v46;
  (*(v41 + 32))(v49 + v47, v38, v40);
  sub_26BB5534C(v56, v49 + v48, type metadata accessor for StocksKitServiceRequest);
  v50 = *(MEMORY[0x277D6CDA8] + 4);

  v51 = swift_task_alloc();
  v0[26] = v51;
  v52 = type metadata accessor for CurrencyConversionsResult();
  *v51 = v0;
  v51[1] = sub_26BB51870;
  v53 = v0[3];

  return MEMORY[0x2821D20A8](v53, &unk_26BB804F8, v49, v52);
}

uint64_t sub_26BB51870()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_26BB58B5C;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_26BB58B3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB5198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB519B4, 0, 0);
}

uint64_t sub_26BB519B4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_26BB51AA8;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_26BB572F8, v1, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB51AA8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB51BE4, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB51BE4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_26BB51C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB51C70, 0, 0);
}

uint64_t sub_26BB51C70()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for CurrencyConversionsResult();
  *v4 = v0;
  v4[1] = sub_26BB51D68;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_26BB55C5C, v1, v5);
}

uint64_t sub_26BB51D68()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB58B58, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB51EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v28 = a4;
  v29 = a3;
  v30 = a1;
  sub_26BB57304();
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BB7BE78();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksKitServiceRequest(0);
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(a5, v15, type metadata accessor for StocksKitServiceRequest);
  v16 = v28;
  (*(v10 + 16))(v12, v28, v9);
  v17 = v27;
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v27);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = (v14 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_26BB5534C(v15, v21 + v18, type metadata accessor for StocksKitServiceRequest);
  (*(v10 + 32))(v21 + v19, v12, v24);
  (*(v7 + 32))(v21 + v20, v25, v17);
  sub_26BB55E24(v29, v16, v26, sub_26BB5736C, v21);
}

uint64_t sub_26BB521C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v32 = a5;
  v30 = a3;
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v28 = &v25 - v9;
  v11 = sub_26BB7BE78();
  v27 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StocksKitServiceRequest(0);
  v26 = *(v15 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v32, v17, type metadata accessor for StocksKitServiceRequest);
  (*(v12 + 16))(v14, a4, v11);
  v18 = v10;
  v19 = v29;
  (*(v7 + 16))(v18, v31, v29);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = (v16 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = (v13 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  sub_26BB5534C(v17, v23 + v20, type metadata accessor for StocksKitServiceRequest);
  (*(v12 + 32))(v23 + v21, v14, v27);
  (*(v7 + 32))(v23 + v22, v28, v19);
  sub_26BB564C8(v30, a4, v32, sub_26BB55C68, v23);
}

uint64_t sub_26BB5250C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v81 = a3;
  v83 = sub_26BB7BE78();
  v82 = *(v83 - 8);
  v6 = *(v82 + 64);
  v7 = MEMORY[0x28223BE20](v83);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v76 - v10;
  v78 = type metadata accessor for StocksKitServiceRequest(0);
  v12 = *(*(v78 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v76 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v76 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v76 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  v79 = *a1;
  if (a1[96])
  {
    sub_26BB54CA8(a1, v89, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v30 = sub_26BB7CB88();
    __swift_project_value_buffer(v30, qword_28158F140);
    sub_26BB54CA8(a2, v27, type metadata accessor for StocksKitServiceRequest);
    v31 = v82;
    v32 = v83;
    (*(v82 + 16))(v9, v81, v83);
    v33 = sub_26BB7CB68();
    v34 = sub_26BB7CF78();
    if (os_log_type_enabled(v33, v34))
    {
      LODWORD(v81) = v34;
      v35 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v89 = v77;
      *v35 = 136315650;
      sub_26BB54CA8(v27, v18, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v18, v15, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = 1869049708;
        sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v15, type metadata accessor for DataSource.Logo);
        v37 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xD000000000000013;
        sub_26BB53CA4();
        v51 = *(v50 + 48);
        v37 = 0x800000026BB83500;
        sub_26BB55AE4(v18, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
        v52 = &v15[v51];
        v31 = v82;
        sub_26BB55B44(v52, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v53 = sub_26BB38238(v36, v37, v89);

      *(v35 + 4) = v53;
      *(v35 + 12) = 2112;
      sub_26BB56CE8();
      swift_allocError();
      v49 = v79;
      *v54 = v79;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v55;
      v56 = v76;
      *v76 = v55;
      *(v35 + 22) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v57 = v83;
      v58 = sub_26BB7D348();
      v60 = v59;
      (*(v31 + 8))(v9, v57);
      v61 = sub_26BB38238(v58, v60, v89);

      *(v35 + 24) = v61;
      _os_log_impl(&dword_26BB21000, v33, v81, "Got failure response for request: %s, failure reason: %@, for id: %s", v35, 0x20u);
      sub_26BB55B44(v56, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v56, -1, -1);
      v62 = v77;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v62, -1, -1);
      MEMORY[0x26D68EA90](v35, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v9, v32);
      sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
      v49 = v79;
    }

    sub_26BB56CE8();
    v63 = swift_allocError();
    *v64 = v49;
    *v89 = v63;
    sub_26BB57304();
    return sub_26BB7CE58();
  }

  else
  {
    v38 = *(a1 + 49);
    v86 = *(a1 + 33);
    v39 = *(a1 + 65);
    v87 = v38;
    v88[0] = v39;
    *(v88 + 15) = *(a1 + 5);
    v40 = *(a1 + 17);
    v84 = *(a1 + 1);
    v85 = v40;
    sub_26BB54CA8(a1, v89, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v41 = sub_26BB7CB88();
    __swift_project_value_buffer(v41, qword_28158F140);
    sub_26BB54CA8(a2, v29, type metadata accessor for StocksKitServiceRequest);
    v42 = v82;
    v43 = v83;
    (*(v82 + 16))(v11, v81, v83);
    v44 = sub_26BB7CB68();
    v45 = sub_26BB7CF78();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v89 = v81;
      *v46 = 136315394;
      sub_26BB54CA8(v29, v24, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v24, v21, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = 1869049708;
        sub_26BB55AE4(v24, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v29, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v21, type metadata accessor for DataSource.Logo);
        v48 = 0xE400000000000000;
      }

      else
      {
        sub_26BB53CA4();
        v67 = *(v66 + 48);
        v48 = 0x800000026BB83500;
        sub_26BB55AE4(v24, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v29, type metadata accessor for StocksKitServiceRequest);
        v68 = &v21[v67];
        v47 = 0xD000000000000013;
        sub_26BB55B44(v68, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v69 = sub_26BB38238(v47, v48, v89);

      *(v46 + 4) = v69;
      *(v46 + 12) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0]);
      v70 = v83;
      v71 = sub_26BB7D348();
      v73 = v72;
      (*(v82 + 8))(v11, v70);
      v74 = sub_26BB38238(v71, v73, v89);

      *(v46 + 14) = v74;
      _os_log_impl(&dword_26BB21000, v44, v45, "Got success response for request: %s, for id: %s", v46, 0x16u);
      v75 = v81;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v75, -1, -1);
      MEMORY[0x26D68EA90](v46, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v11, v43);
      sub_26BB55AE4(v29, type metadata accessor for StocksKitServiceRequest);
    }

    v89[0] = v79;
    v91 = v86;
    v92 = v87;
    *v93 = v88[0];
    *&v93[15] = *(v88 + 15);
    *&v89[1] = v84;
    v90 = v85;
    sub_26BB57304();
    return sub_26BB7CE68();
  }
}