uint64_t sub_2707EF9FC(uint64_t a1)
{
  v2 = sub_2707EFF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707EFA38(uint64_t a1)
{
  v2 = sub_2707F0008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707EFA74(uint64_t a1)
{
  v2 = sub_2707F0008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707EFAB0(uint64_t a1)
{
  v2 = sub_2707EFF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707EFAEC(uint64_t a1)
{
  v2 = sub_2707EFF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2707EFB28(uint64_t a1)
{
  v2 = sub_2707EFFB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2707EFB64(uint64_t a1)
{
  v2 = sub_2707EFFB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationRule.LocationSupport.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808385D8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808385E0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808385E8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808385F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2707EFF0C();
  sub_2707F1648();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2707EFFB4();
      v9 = v21;
      sub_2707F1578();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2707EFF60();
      v9 = v24;
      sub_2707F1578();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2707F0008();
    sub_2707F1578();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2707EFF0C()
{
  result = qword_2808385F8;
  if (!qword_2808385F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808385F8);
  }

  return result;
}

unint64_t sub_2707EFF60()
{
  result = qword_280838600;
  if (!qword_280838600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838600);
  }

  return result;
}

unint64_t sub_2707EFFB4()
{
  result = qword_280838608;
  if (!qword_280838608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838608);
  }

  return result;
}

unint64_t sub_2707F0008()
{
  result = qword_280838610;
  if (!qword_280838610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838610);
  }

  return result;
}

uint64_t LocationRule.LocationSupport.hashValue.getter()
{
  v1 = *v0;
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](v1);
  return sub_2707F1628();
}

uint64_t LocationRule.LocationSupport.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838618);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838620);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838628);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280838630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2707EFF0C();
  v15 = v36;
  sub_2707F1638();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_2707F1568();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_2707E2AD4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_2707F14C8();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808383E8);
      *v24 = &type metadata for LocationRule.LocationSupport;
      sub_2707F1508();
      sub_2707F14B8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2707EFFB4();
          sub_2707F14F8();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2707EFF60();
          v26 = v17;
          sub_2707F14F8();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2707F0008();
        sub_2707F14F8();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

UrchinKit::LocationRule::CurrentNearbyLocationSupport __swiftcall LocationRule.CurrentNearbyLocationSupport.init(location:poiLocation:)(CLLocation location, CLLocation poiLocation)
{
  internal = location._internal;
  isa = location.super.isa;
  v5 = v2;
  [(objc_class *)location.super.isa distanceFromLocation:location._internal, poiLocation._internal];
  v7 = v6;

  *v5 = v7 > 4000.0;
  return result;
}

uint64_t LocationRule.CurrentNearbyLocationSupport.hashValue.getter()
{
  v1 = *v0;
  sub_2707F15E8();
  MEMORY[0x2743AA2B0](v1);
  return sub_2707F1628();
}

BOOL static LocationRule.isSignificantlyDifferent(_:from:precision:)(void *a1, void *a2, double a3)
{
  [a1 coordinate];
  v6 = v5;
  v8 = v7;
  [a2 coordinate];
  return fmax(vabdd_f64(v6, v9), vabdd_f64(v8, v10)) > a3;
}

unint64_t sub_2707F07EC()
{
  result = qword_280838638;
  if (!qword_280838638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838638);
  }

  return result;
}

unint64_t sub_2707F0844()
{
  result = qword_280838640;
  if (!qword_280838640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838640);
  }

  return result;
}

unint64_t sub_2707F0914()
{
  result = qword_280838648;
  if (!qword_280838648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838648);
  }

  return result;
}

unint64_t sub_2707F096C()
{
  result = qword_280838650;
  if (!qword_280838650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838650);
  }

  return result;
}

unint64_t sub_2707F09C4()
{
  result = qword_280838658;
  if (!qword_280838658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838658);
  }

  return result;
}

unint64_t sub_2707F0A1C()
{
  result = qword_280838660;
  if (!qword_280838660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838660);
  }

  return result;
}

unint64_t sub_2707F0A74()
{
  result = qword_280838668;
  if (!qword_280838668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838668);
  }

  return result;
}

unint64_t sub_2707F0ACC()
{
  result = qword_280838670;
  if (!qword_280838670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838670);
  }

  return result;
}

unint64_t sub_2707F0B24()
{
  result = qword_280838678;
  if (!qword_280838678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838678);
  }

  return result;
}

unint64_t sub_2707F0B7C()
{
  result = qword_280838680;
  if (!qword_280838680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838680);
  }

  return result;
}

unint64_t sub_2707F0BD4()
{
  result = qword_280838688;
  if (!qword_280838688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280838688);
  }

  return result;
}

uint64_t sub_2707F0C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_2707F15D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79627261656ELL && a2 == 0xE600000000000000 || (sub_2707F15D8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79617761726166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2707F15D8();

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

uint64_t sub_2707F0D60()
{
  v0 = sub_2707F1278();
  __swift_allocate_value_buffer(v0, qword_28083B270);
  __swift_project_value_buffer(v0, qword_28083B270);
  return sub_2707F1268();
}

uint64_t sub_2707F0DE4()
{
  v0 = sub_2707F1278();
  __swift_allocate_value_buffer(v0, qword_28083B288);
  __swift_project_value_buffer(v0, qword_28083B288);
  return sub_2707F1268();
}

uint64_t sub_2707F0E68()
{
  v0 = sub_2707F1278();
  __swift_allocate_value_buffer(v0, qword_28083B2A0);
  __swift_project_value_buffer(v0, qword_28083B2A0);
  return sub_2707F1268();
}

uint64_t sub_2707F0EEC()
{
  v0 = sub_2707F1278();
  __swift_allocate_value_buffer(v0, qword_28083B2B8);
  __swift_project_value_buffer(v0, qword_28083B2B8);
  return sub_2707F1268();
}