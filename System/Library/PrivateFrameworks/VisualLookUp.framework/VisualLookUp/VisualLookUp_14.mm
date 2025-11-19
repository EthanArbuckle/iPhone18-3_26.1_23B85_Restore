unint64_t sub_1D9AA4118()
{
  result = qword_1ECB52C60;
  if (!qword_1ECB52C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C60);
  }

  return result;
}

unint64_t sub_1D9AA4170()
{
  result = qword_1ECB52C68;
  if (!qword_1ECB52C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C68);
  }

  return result;
}

uint64_t sub_1D9AA41C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9CA5320 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CA82E0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CA8300 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9CA8320 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9CA8340 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9CA8360 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CA8380 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9CA83A0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4361746144757363 && a2 == 0xEE00726569727261 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 12;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D9AA45E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for QIDConverter()
{
  result = qword_1EDD2C068;
  if (!qword_1EDD2C068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AA46A0()
{
  result = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9AA470C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - v17;
  v53 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v19 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = *v3;
  if (*(v25 + 16))
  {
    v26 = sub_1D99ED894(a1, a2);
    if (v27)
    {
      v28 = (*(v25 + 56) + 16 * v26);
      a1 = *v28;
      a2 = v28[1];
    }
  }

  sub_1D99BCA80(a1, a2, v18);
  if ((*(v19 + 48))(v18, 1, v53) == 1)
  {
    sub_1D9AA4D3C(v18);
    static Logger.argos.getter(v9);

    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136315138;
      v33 = sub_1D9A0E224(a1, a2, &v54);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D9962000, v29, v30, "Failed to parse label %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v9, v51);
    v46 = 1;
    v47 = v50;
  }

  else
  {

    sub_1D9AA4DA4(v18, v24);
    static Logger.argos.getter(v15);
    sub_1D9A3E0E0(v12);
    v34 = v51;
    v35 = v52 + 8;
    v36 = *(v52 + 8);
    v36(v15, v51);
    sub_1D9A5B0C8(v24, v21);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v35;
      v41 = v40;
      v54 = v40;
      *v39 = 136315138;
      sub_1D9A5B188();
      v42 = sub_1D9C7E7EC();
      v49 = v36;
      v44 = v43;
      sub_1D9A5B12C(v21);
      v45 = sub_1D9A0E224(v42, v44, &v54);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_1D9962000, v37, v38, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x1DA7405F0](v41, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);

      v49(v12, v51);
    }

    else
    {

      sub_1D9A5B12C(v21);
      v36(v12, v34);
    }

    v47 = v50;
    sub_1D9AA4DA4(v24, v50);
    v46 = 0;
  }

  return (*(v19 + 56))(v47, v46, 1, v53);
}

uint64_t sub_1D9AA4C20(uint64_t *a1)
{
  result = sub_1D99BCF8C(a1);
  v3 = result;
  v5 = v4;
  v6 = 0;
  v7 = *v1;
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (v6 << 10) | (16 * __clz(__rbit64(v10)));
    v14 = *(*(v7 + 48) + v13);
    v15 = (*(v7 + 56) + v13);
    if (*v15 != v3 || v15[1] != v5)
    {
      v10 &= v10 - 1;
      result = sub_1D9C7E7DC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return v14;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return v3;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9AA4D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9AA4DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

VisualLookUp::R1Interval __swiftcall R1Interval.init(lo:hi:)(Swift::Double lo, Swift::Double hi)
{
  *v2 = lo;
  v2[1] = hi;
  result.hi = hi;
  result.lo = lo;
  return result;
}

Swift::Bool __swiftcall R1Interval.intersects(with:)(VisualLookUp::R1Interval with)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *v2;
  v5 = v2[1];
  if (*v2 <= *v1)
  {
    return v4 <= v5 && v4 <= v3;
  }

  else
  {
    return v6 <= v3 && v6 <= v5;
  }
}

Swift::Bool __swiftcall R1Interval.contains(interval:)(VisualLookUp::R1Interval interval)
{
  v3 = v1[1];
  if (v3 < *v1)
  {
    return 1;
  }

  if (*v2 <= *v1)
  {
    return v3 <= v2[1];
  }

  return 0;
}

Swift::Bool __swiftcall R1Interval.interiorContains(interval:)(VisualLookUp::R1Interval interval)
{
  v3 = v1[1];
  if (v3 < *v1)
  {
    return 1;
  }

  if (*v2 >= *v1)
  {
    return 0;
  }

  return v3 < v2[1];
}

Swift::Bool __swiftcall R1Interval.interiorIntersects(with:)(VisualLookUp::R1Interval with)
{
  v3 = v1[1];
  v4 = v2[1];
  v5 = *v1 < v4;
  if (*v2 >= v3)
  {
    v5 = 0;
  }

  if (*v2 >= v4)
  {
    v5 = 0;
  }

  return *v1 <= v3 && v5;
}

VisualLookUp::R1Interval __swiftcall R1Interval.add(point:)(Swift::Double point)
{
  v4 = *v2;
  v3 = v2[1];
  if (v3 >= *v2)
  {
    if (v4 <= point)
    {
      *v1 = v4;
      if (v3 < point)
      {
        v1[1] = point;
        goto LABEL_8;
      }
    }

    else
    {
      *v1 = point;
    }

    v1[1] = v3;
    goto LABEL_8;
  }

  *v1 = point;
  v1[1] = point;
LABEL_8:
  result.hi = v3;
  result.lo = point;
  return result;
}

VisualLookUp::R1Interval __swiftcall R1Interval.expanded(radius:)(Swift::Double radius)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2 - radius;
  v6 = v4 + radius;
  if (v4 < *v2)
  {
    v6 = v2[1];
  }

  else
  {
    v3 = v5;
  }

  *v1 = v3;
  v1[1] = v6;
  result.hi = v3;
  result.lo = v6;
  return result;
}

VisualLookUp::R1Interval __swiftcall R1Interval.intersection(with:)(VisualLookUp::R1Interval with)
{
  v4 = *v1;
  v5 = v1[1];
  if (*v3 > *v1)
  {
    v4 = *v3;
  }

  if (v5 >= v3[1])
  {
    v5 = v3[1];
  }

  *v2 = v4;
  v2[1] = v5;
  result.hi = v5;
  result.lo = v4;
  return result;
}

VisualLookUp::R1Interval __swiftcall R1Interval.union(with:)(VisualLookUp::R1Interval with)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v3[1];
  if (v6 < *v3)
  {
    goto LABEL_4;
  }

  if (v5 < v4)
  {
    v4 = *v3;
    v5 = v3[1];
LABEL_4:
    *v2 = v4;
    v2[1] = v5;
    goto LABEL_10;
  }

  if (v4 >= *v3)
  {
    v4 = *v3;
  }

  if (v6 > v5)
  {
    v5 = v3[1];
  }

  *v2 = v4;
  v2[1] = v5;
LABEL_10:
  result.hi = v5;
  result.lo = v4;
  return result;
}

double sub_1D9AA505C()
{
  result = 1.0;
  xmmword_1ECB52C88 = xmmword_1D9C91320;
  return result;
}

double static R1Interval.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECB50B20 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ECB52C88;
  *a1 = xmmword_1ECB52C88;
  return result;
}

VisualLookUp::R1Interval __swiftcall R1Interval.init(point:)(Swift::Double point)
{
  *v1 = point;
  v1[1] = point;
  result.lo = point;
  return result;
}

VisualLookUp::R1Interval __swiftcall R1Interval.init(p1:p2:)(Swift::Double p1, Swift::Double p2)
{
  if (p1 <= p2)
  {
    v3 = p1;
  }

  else
  {
    v3 = p2;
  }

  if (p1 <= p2)
  {
    p1 = p2;
  }

  *v2 = v3;
  v2[1] = p1;
  result.hi = p2;
  result.lo = p1;
  return result;
}

Swift::Bool __swiftcall R1Interval.approxEquals(y:maxError:)(VisualLookUp::R1Interval y, Swift::Double maxError)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = v3[1];
  if (v7 >= *v3)
  {
    v9 = v5 < v4;
    v8 = vabdd_f64(v4, v6) + vabdd_f64(v5, v7);
    if (v9)
    {
      v8 = v7 - v6;
    }
  }

  else
  {
    v8 = v5 - v4;
  }

  return v8 <= y.lo;
}

BOOL sub_1D9AA5138(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (v2 >= *a1)
  {
    return 0;
  }

  return v3 < *a2;
}

uint64_t sub_1D9AA5180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D9AA51C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D9AA5210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9AA52A8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA5F54();
  sub_1D9C7E96C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
  sub_1D99EA1DC(&qword_1EDD2A720);
  sub_1D9C7E74C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9AA5428(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA5CB8();
  sub_1D9C7E96C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D20);
  sub_1D9AA5D60(&qword_1ECB52D30, sub_1D9AA5DD8);
  sub_1D9C7E74C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9AA55B4()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AA5610()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AA5658@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D9C7E56C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D9AA56D0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D9C7E56C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D9AA5728(uint64_t a1)
{
  v2 = sub_1D9AA5F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9AA5764(uint64_t a1)
{
  v2 = sub_1D9AA5F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D9AA57A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9AA595C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9AA580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E754668736168 && a2 == 0xED0000736E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9AA589C(uint64_t a1)
{
  v2 = sub_1D9AA5CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9AA58D8(uint64_t a1)
{
  v2 = sub_1D9AA5CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D9AA5914@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9AA5B04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1D9AA595C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA5F54();
  sub_1D9C7E95C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517C0);
    sub_1D99EA1DC(&qword_1EDD2A718);
    sub_1D9C7E65C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

void *sub_1D9AA5B04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA5CB8();
  sub_1D9C7E95C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D20);
    sub_1D9AA5D60(&qword_1EDD2A738, sub_1D9AA5D0C);
    sub_1D9C7E65C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_1D9AA5CB8()
{
  result = qword_1EDD2B5C0;
  if (!qword_1EDD2B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5C0);
  }

  return result;
}

unint64_t sub_1D9AA5D0C()
{
  result = qword_1EDD2B590;
  if (!qword_1EDD2B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B590);
  }

  return result;
}

uint64_t sub_1D9AA5D60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB52D20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9AA5DD8()
{
  result = qword_1ECB52D38;
  if (!qword_1ECB52D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52D38);
  }

  return result;
}

unint64_t sub_1D9AA5E50()
{
  result = qword_1ECB52D40;
  if (!qword_1ECB52D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52D40);
  }

  return result;
}

unint64_t sub_1D9AA5EA8()
{
  result = qword_1EDD2B5B0;
  if (!qword_1EDD2B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5B0);
  }

  return result;
}

unint64_t sub_1D9AA5F00()
{
  result = qword_1EDD2B5B8;
  if (!qword_1EDD2B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5B8);
  }

  return result;
}

unint64_t sub_1D9AA5F54()
{
  result = qword_1EDD2B5A8;
  if (!qword_1EDD2B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5A8);
  }

  return result;
}

unint64_t sub_1D9AA5FBC()
{
  result = qword_1ECB52D58;
  if (!qword_1ECB52D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52D58);
  }

  return result;
}

unint64_t sub_1D9AA6014()
{
  result = qword_1EDD2B598;
  if (!qword_1EDD2B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B598);
  }

  return result;
}

unint64_t sub_1D9AA606C()
{
  result = qword_1EDD2B5A0;
  if (!qword_1EDD2B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B5A0);
  }

  return result;
}

void sub_1D9AA60C0(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9AA7640(v5);
  *a1 = v3;
}

uint64_t sub_1D9AA6168()
{
  v1 = *v0;
  sub_1D9C7E40C();
  MEMORY[0x1DA73DF90](0x203A6E69616D6F64, 0xE800000000000000);
  v2 = sub_1D9A15C94(v1);
  MEMORY[0x1DA73DF90](v2);

  MEMORY[0x1DA73DF90](0x6F6353786F62202CLL, 0xEC000000203A6572);
  sub_1D9C7E00C();
  return 0;
}

uint64_t sub_1D9AA6234()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A15C94(v1);
  sub_1D9C7DD6C();

  sub_1D9C7E91C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AA62C0()
{
  sub_1D9A15C94(*v0);
  sub_1D9C7DD6C();

  return sub_1D9C7E91C();
}

uint64_t sub_1D9AA632C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A15C94(v1);
  sub_1D9C7DD6C();

  sub_1D9C7E91C();
  return sub_1D9C7E93C();
}

BOOL sub_1D9AA63B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = *a2;
  v5 = sub_1D9A15C94(*a1);
  v7 = v6;
  if (v5 == sub_1D9A15C94(v4) && v7 == v8)
  {

    return v2 == v3;
  }

  v10 = sub_1D9C7E7DC();

  result = 0;
  if (v10)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D9AA6464(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4, uint64_t a5, __int128 *a6, double a7, double a8)
{
  v10 = v8;
  v141 = v10;
  v153 = *v10;
  v19 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  v135 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52768);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v150 = &v132 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v132 - v27;
  v28 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  v29 = *(v28 - 8);
  v148 = v28;
  v149 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v139 = (&v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v138 = (&v132 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v132 - v34;
  v35 = sub_1D9C7D8DC();
  v146 = *(v35 - 8);
  v147 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v145 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v162 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v133 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v154 = &v132 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v134 = &v132 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v137 = &v132 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v158 = &v132 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v132 - v48;
  v50 = *a2;
  v51 = *(a2 + 8);
  v52 = *(a2 + 16);
  v53 = *(a2 + 24);
  v54 = a3[1];
  v168 = *a3;
  v169 = v54;
  v55 = a3[3];
  v170 = a3[2];
  v171 = v55;
  v172[0] = 0x6C46206573726150;
  v172[1] = 0xEA0000000000776FLL;
  v172[2] = "VI: Region Selection";
  v172[3] = 20;
  v173 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v142 = sub_1D9AFD4B8(v172, a5);

  v155 = a4;
  v164[2] = a4;
  v56 = a1;
  v57 = 0;
  *&v165[0] = sub_1D9BE7B08(sub_1D9AA87DC, v164, v56);

  sub_1D9AA60C0(v165);
  v144 = a6;

  v58 = *&v165[0];
  v167 = MEMORY[0x1E69E7CD0];
  v59 = *(*&v165[0] + 16);
  v60 = MEMORY[0x1E69E7CC0];
  v136 = v21;
  v163 = *&v165[0];
  v161 = v59;
  if (v59)
  {
    v61 = 0;
    v62 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v9 = *&v165[0] + v62;
    v63 = v156;
    v151 = *&v165[0] + v62;
    v152 = v62;
    while (v61 < *(v58 + 16))
    {
      v64 = *(v162 + 72);
      v65 = sub_1D9AA88CC(v9 + v64 * v61, v49, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((v49[104] & 1) == 0)
      {
        v157 = v64;
        v159 = v60;
        *&v165[0] = MEMORY[0x1E69E7CD0];
        v9 = *(v49 + 6);
        MEMORY[0x1EEE9AC00](v65);
        *(&v132 - 12) = v49;
        *(&v132 - 11) = v50;
        *(&v132 - 10) = v51;
        *(&v132 - 9) = v52;
        *(&v132 - 8) = v53;
        *(&v132 - 7) = a7;
        *(&v132 - 6) = a8;
        *(&v132 - 5) = v155;
        *(&v132 - 4) = &v168;
        *(&v132 - 3) = &v167;
        *(&v132 - 2) = v165;
        *(&v132 - 1) = v153;
        v66 = sub_1D9BE77D4(sub_1D9AA87F8, (&v132 - 14), v9);
        v160 = v57;

        *(v49 + 6) = v66;
        v67 = *(v66 + 2);
        if (v67)
        {
          v63 = 0;
          v60 = (v66 + 156);
          a2 = MEMORY[0x1E69E7CC0];
          while (v63 < *(v66 + 2))
          {
            if (*v60)
            {
              v68 = *(v60 - 12);
            }

            else
            {
              v68 = 0.0;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1D9AF84B8(0, *(a2 + 16) + 1, 1, a2);
            }

            a4 = *(a2 + 16);
            v69 = *(a2 + 24);
            v9 = a4 + 1;
            if (a4 >= v69 >> 1)
            {
              a2 = sub_1D9AF84B8((v69 > 1), a4 + 1, 1, a2);
            }

            v63 = (v63 + 1);
            *(a2 + 16) = v9;
            *(a2 + 4 * a4 + 32) = v68;
            v60 += 160;
            if (v67 == v63)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          break;
        }

        a2 = MEMORY[0x1E69E7CC0];
LABEL_20:

        v70 = sub_1D9BC1BF0(a2);

        v71 = *&v70;
        if ((v70 & 0x100000000) != 0)
        {
          v71 = 0.0;
        }

        *(v49 + 18) = v71;
        sub_1D9AA88CC(v49, v158, type metadata accessor for VisualUnderstanding.ImageRegion);
        v60 = v159;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1D9AF8A90(0, *(v60 + 16) + 1, 1, v60);
        }

        v63 = v156;
        a2 = v157;
        v57 = v160;
        v9 = v151;
        a4 = *(v60 + 16);
        v72 = *(v60 + 24);
        if (a4 >= v72 >> 1)
        {
          v60 = sub_1D9AF8A90(v72 > 1, a4 + 1, 1, v60);
        }

        *(v60 + 16) = a4 + 1;
        sub_1D9AA8C70(v158, v60 + v152 + a4 * a2, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      ++v61;
      sub_1D9AA8934(v49, type metadata accessor for VisualUnderstanding.ImageRegion);
      v58 = v163;
      if (v61 == v161)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = v156;
LABEL_27:
    v160 = v57;
    v73 = v145;
    static Logger.argos.getter(v145);
    v74 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E09C();
    if (os_log_type_enabled(v74, v49))
    {
      a4 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v165[0] = v159;
      *a4 = 136315138;
      swift_beginAccess();
      sub_1D9AA8CD8();

      v75 = sub_1D9C7E04C();
      v77 = v76;

      v9 = sub_1D9A0E224(v75, v77, v165);

      *(a4 + 4) = v9;
      _os_log_impl(&dword_1D9962000, v74, v49, "Incompatible domains on regions: %s", a4, 0xCu);
      v78 = v159;
      __swift_destroy_boxed_opaque_existential_0Tm(v159);
      MEMORY[0x1DA7405F0](v78, -1, -1);
      MEMORY[0x1DA7405F0](a4, -1, -1);
    }

    (*(v146 + 8))(v73, v147);
    v80 = v148;
    v79 = v149;
    a2 = v150;
    v81 = v163;
    if (!v161)
    {
LABEL_34:

      goto LABEL_54;
    }

    v82 = 0;
    while (v82 < *(v81 + 16))
    {
      v49 = ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v9 = *(v162 + 72);
      a4 = v154;
      sub_1D9AA88CC(&v49[v81 + v9 * v82], v154, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(a4 + 104))
      {
        v159 = v60;

        v83 = v134;
        sub_1D9AA8C70(a4, v134, type metadata accessor for VisualUnderstanding.ImageRegion);
        v84 = v137;
        sub_1D9AA8C70(v83, v137, type metadata accessor for VisualUnderstanding.ImageRegion);
        swift_beginAccess();
        v63 = &v132;
        *&v165[0] = v167;
        v85 = *(v84 + 48);
        MEMORY[0x1EEE9AC00](v167);
        *(&v132 - 10) = v84;
        *(&v132 - 9) = &v168;
        *(&v132 - 8) = v155;
        *(&v132 - 7) = a7;
        *(&v132 - 6) = a8;
        *(&v132 - 5) = v50;
        *(&v132 - 4) = v51;
        *(&v132 - 3) = v52;
        *(&v132 - 2) = v53;
        *(&v132 - 1) = v165;

        v86 = v160;
        v87 = sub_1D9BE77D4(sub_1D9AA882C, (&v132 - 12), v85);
        v160 = v86;

        *(v84 + 48) = v87;
        v88 = *(v87 + 2);
        if (v88)
        {
          a4 = 0;
          v60 = (v87 + 156);
          v89 = MEMORY[0x1E69E7CC0];
          while (a4 < *(v87 + 2))
          {
            if (*v60)
            {
              v90 = *(v60 - 12);
            }

            else
            {
              v90 = 0.0;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_1D9AF84B8(0, *(v89 + 2) + 1, 1, v89);
            }

            v92 = *(v89 + 2);
            v91 = *(v89 + 3);
            if (v92 >= v91 >> 1)
            {
              v89 = sub_1D9AF84B8((v91 > 1), v92 + 1, 1, v89);
            }

            ++a4;
            *(v89 + 2) = v92 + 1;
            *&v89[4 * v92 + 32] = v90;
            v60 += 160;
            a2 = v150;
            v63 = v156;
            if (v88 == a4)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_76;
        }

        v89 = MEMORY[0x1E69E7CC0];
        v63 = v156;
LABEL_48:

        v93 = sub_1D9BC1BF0(v89);

        v94 = *&v93;
        if ((v93 & 0x100000000) != 0)
        {
          v94 = 0.0;
        }

        v95 = v137;
        *(v137 + 72) = v94;
        a4 = v133;
        sub_1D9AA88CC(v95, v133, type metadata accessor for VisualUnderstanding.ImageRegion);
        v60 = v159;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_51;
      }

      ++v82;
      sub_1D9AA8934(a4, type metadata accessor for VisualUnderstanding.ImageRegion);
      v81 = v163;
      if (v161 == v82)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  v60 = sub_1D9AF8A90(0, *(v60 + 16) + 1, 1, v60);
LABEL_51:
  v80 = v148;
  v97 = *(v60 + 16);
  v96 = *(v60 + 24);
  if (v97 >= v96 >> 1)
  {
    v60 = sub_1D9AF8A90(v96 > 1, v97 + 1, 1, v60);
  }

  *(v60 + 16) = v97 + 1;
  sub_1D9AA8C70(a4, &v49[v60 + v97 * v9], type metadata accessor for VisualUnderstanding.ImageRegion);
  sub_1D9AA8934(v137, type metadata accessor for VisualUnderstanding.ImageRegion);
  v79 = v149;
LABEL_54:
  v98 = *(v155 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v99 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  swift_beginAccess();
  v100 = v140;
  sub_1D9AA885C(v98 + v99, v140);
  v103 = *(v79 + 48);
  v101 = v79 + 48;
  v102 = v103;
  if (v103(v100, 1, v80) == 1)
  {
    v104 = MEMORY[0x1E69E7CC0];
    *v63 = MEMORY[0x1E69E7CC0];
    v63[1] = v104;
    v63[2] = v104;
    sub_1D9C7D3BC();
    if (v102(v100, 1, v80) != 1)
    {
      sub_1D99A6AE0(v100, &qword_1ECB52768);
    }
  }

  else
  {
    sub_1D9AA8C70(v100, v63, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  }

  v105 = *v63;

  sub_1D9AA8934(v63, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  sub_1D9AA885C(v98 + v99, a2);
  v106 = v102(a2, 1, v80);
  v149 = v101;
  v163 = v99;
  if (v106 == 1)
  {
    v107 = v138;
    v108 = MEMORY[0x1E69E7CC0];
    *v138 = MEMORY[0x1E69E7CC0];
    v107[1] = v108;
    v107[2] = v108;
    sub_1D9C7D3BC();
    v109 = v107;
    if (v102(a2, 1, v80) != 1)
    {
      sub_1D99A6AE0(a2, &qword_1ECB52768);
    }
  }

  else
  {
    v109 = v138;
    sub_1D9AA8C70(a2, v138, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  }

  v110 = v109[1];

  sub_1D9AA8934(v109, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  v111 = v141[2];
  *&v165[0] = sub_1D9AC5EF4(v60, v110);

  v112 = v160;
  sub_1D9AA60C0(v165);
  if (v112)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v159 = v60;

    v113 = *&v165[0];
    v114 = *(v105 + 16);
    if (v114)
    {
      v115 = v136;
      v116 = v105 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v117 = *(v135 + 72);
      do
      {
        sub_1D9AA88CC(v116, v115, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
        v166[0] = v111;
        sub_1D99ACD40(v165, v115, v166);
        sub_1D9AA8934(v115, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
        v116 += v117;
        --v114;
      }

      while (v114);

      v113 = *&v165[0];
    }

    else
    {
    }

    v165[0] = v168;
    v165[1] = v169;
    v165[2] = v170;
    v165[3] = v171;
    v118 = v143;
    sub_1D9AA885C(v98 + v163, v143);
    v119 = v148;
    if (v102(v118, 1, v148) == 1)
    {
      v120 = v139;
      v121 = MEMORY[0x1E69E7CC0];
      *v139 = MEMORY[0x1E69E7CC0];
      v120[1] = v121;
      v120[2] = v121;
      sub_1D9C7D3BC();
      if (v102(v118, 1, v119) != 1)
      {
        sub_1D99A6AE0(v118, &qword_1ECB52768);
      }
    }

    else
    {
      v120 = v139;
      sub_1D9AA8C70(v118, v139, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
    }

    v122 = v120[2];

    sub_1D9AA8934(v120, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
    v123 = sub_1D99ADB54(v113, v165, v122);

    swift_beginAccess();
    v124 = *(v98 + 16);

    v125 = sub_1D9B7349C(v123, v124);

    v126 = *(v98 + 16);

    v127 = sub_1D9B73740(v125, v126, v144);

    v166[0] = v127;

    sub_1D9AA60C0(v166);

    v128 = v166[0];
    v129 = *(v98 + 16);
    v166[0] = MEMORY[0x1E69E7CC8];

    v130 = sub_1D9AA8994(v128, v129, v166);

    sub_1D9AFCCA4();

    return v130;
  }

  return result;
}

void sub_1D9AA7640(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9AA79B8(v8, v9, a1, v4);
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
    sub_1D9AA776C(0, v2, 1, a1);
  }
}

void sub_1D9AA776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9AA88CC(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AA88CC(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[18];
      v24 = v12[18];
      sub_1D9AA8934(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AA8934(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9AA8C70(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9AA8C70(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9AA79B8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9AA82E4(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9AA88CC(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AA88CC(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[18];
      v27 = v14[18];
      sub_1D9AA8934(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AA8934(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9AA88CC(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AA88CC(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[18];
        v31 = v14[18];
        sub_1D9AA8934(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AA8934(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D9AA8C70(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9AA8C70(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9AA82E4(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9AA88CC(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9AA88CC(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[18];
    v93 = v14[18];
    sub_1D9AA8934(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9AA8934(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D9AA8C70(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9AA8C70(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9AA82E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9AA88CC(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9AA88CC(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 72);
          v37 = *(v35 + 72);
          v38 = v35;
          v11 = v34;
          sub_1D9AA8934(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9AA8934(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9AA88CC(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9AA88CC(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[18];
        v22 = *(v20 + 72);
        sub_1D9AA8934(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9AA8934(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

uint64_t sub_1D9AA885C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AA88CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AA8934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D9AA8994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v13 + 72);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a1 + v26;
  v30 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = v10;
  v28 = a2;
  while (1)
  {
    sub_1D9B6CEF4(v17, a2, a3, v9);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_1D99A6AE0(v9, &qword_1ECB51220);
    }

    else
    {
      v19 = v29;
      sub_1D9AA8C70(v9, v29, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9AA8C70(v19, v31, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D9AF8A90(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D9AF8A90(v20 > 1, v21 + 1, 1, v18);
        v22 = v16;
        v18 = v23;
      }

      else
      {
        v22 = v16;
      }

      v18[2] = v21 + 1;
      v16 = v22;
      sub_1D9AA8C70(v31, v18 + v26 + v21 * v22, type metadata accessor for VisualUnderstanding.ImageRegion);
      v10 = v27;
      a2 = v28;
    }

    v17 += v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_1D9AA8C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9AA8CD8()
{
  result = qword_1ECB52D60;
  if (!qword_1ECB52D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52D60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegionSelectionProcessor.IncompatibleDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE6 && a1[8])
  {
    return (*a1 + 230);
  }

  v3 = *a1;
  v4 = v3 >= 0x1B;
  v5 = v3 - 27;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RegionSelectionProcessor.IncompatibleDomain(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE5)
  {
    *result = a2 - 230;
    if (a3 >= 0xE6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 26;
    }
  }

  return result;
}

unint64_t sub_1D9AA8DD0()
{
  result = qword_1EDD2B390;
  if (!qword_1EDD2B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2B390);
  }

  return result;
}

void sub_1D9AA8E6C()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9AA8FD0(319, qword_1EDD2D8C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9AA8FD0(319, qword_1EDD2D968, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D9AA8FD0(319, qword_1EDD2D6C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9AA8FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D9AA909C()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9AA9144()
{
  sub_1D9AA8FD0(319, &qword_1EDD2C4F0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9AA8FD0(319, qword_1EDD2D4E8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9AA92B8()
{
  sub_1D9AA8FD0(319, &qword_1EDD2C4F8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9AA8FD0(319, &qword_1EDD2C500, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9AA8FD0(319, &qword_1EDD2C520, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v3 <= 0x3F)
        {
          sub_1D9AA8FD0(319, qword_1EDD2D6C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9AA94D4()
{
  sub_1D9AA8FD0(319, &qword_1EDD2C510, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9AA8FD0(319, qword_1EDD2D6C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9AA9688()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9AA8FD0(319, qword_1EDD2D818, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9AA9794()
{
  sub_1D9AA9820();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9AA9820()
{
  if (!qword_1EDD2C470)
  {
    v0 = sub_1D9C7DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C470);
    }
  }
}

void sub_1D9AA9954()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9AA8FD0(319, qword_1EDD2D6C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9AA8FD0(319, qword_1EDD2D818, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9AA9AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1D9AA8FD0(319, a5, a6, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1D9C7D3CC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1D9C7D3CC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D9AA9CF8(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1D9C93288[result];
  }

  return result;
}

uint64_t sub_1D9AA9D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9AA9CF8(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_1D9AA9D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB60A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9AA9DF4()
{
  result = qword_1EDD2AAA0;
  if (!qword_1EDD2AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAA0);
  }

  return result;
}

unint64_t sub_1D9AA9E7C()
{
  result = qword_1EDD2AAA8;
  if (!qword_1EDD2AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAA8);
  }

  return result;
}

unint64_t sub_1D9AA9ED4()
{
  result = qword_1EDD2AA98;
  if (!qword_1EDD2AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AA98);
  }

  return result;
}

uint64_t sub_1D9AA9F40@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1D9AA9FAC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1D9AAA018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB60FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9AAA084()
{
  result = qword_1EDD2AAE0;
  if (!qword_1EDD2AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAE0);
  }

  return result;
}

unint64_t sub_1D9AAA10C()
{
  result = qword_1EDD2AAE8;
  if (!qword_1EDD2AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAE8);
  }

  return result;
}

unint64_t sub_1D9AAA164()
{
  result = qword_1EDD2AAD8;
  if (!qword_1EDD2AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAD8);
  }

  return result;
}

uint64_t sub_1D9AAA1B8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71160);
  __swift_project_value_buffer(v0, qword_1ECB71160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "coarse_classification_results";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object_detector_results";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "refined_region";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAA3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_1D9AB1C2C(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
        break;
      case 2:
        sub_1D9AAA54C();
        break;
      case 1:
        sub_1D9AAA498();
        break;
    }
  }

  return result;
}

uint64_t sub_1D9AAA498()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  sub_1D9AB2974(&qword_1EDD2AB30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AAA54C()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  sub_1D9AB2974(&qword_1EDD2AB40, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AAA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9AAA6A0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1D9AAA8B0(v3, a1, a2, a3);
    sub_1D9AB1DCC(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults, 4);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9AAA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  sub_1D99AB100(a1 + *(v12 + 20), v7, &qword_1ECB512C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB512C0);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  sub_1D9AB2974(&qword_1EDD2AB30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
}

uint64_t sub_1D9AAA8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  sub_1D99AB100(a1 + *(v12 + 24), v7, &qword_1ECB512C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB512C8);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  sub_1D9AB2974(&qword_1EDD2AB40, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
}

uint64_t sub_1D9AAAAC0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9C7D3BC();
  v4 = a1[5];
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1D9AAAC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52E90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAACB4(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D160, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAAD20()
{
  sub_1D9AB2974(qword_1EDD2D160, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAADA0()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001CLL, 0x80000001D9CA84A0);
  qword_1ECB71178 = 0xD000000000000033;
  unk_1ECB71180 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AAAE2C()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 2)
      {
        type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
        sub_1D9AB2974(&qword_1EDD2AA90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9AAAF28()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0), sub_1D9AB2974(&qword_1EDD2AA90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult), result = sub_1D9C7D7FC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAB0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EB0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAB148(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AB30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAB1B4()
{
  sub_1D9AB2974(&qword_1EDD2AB30, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAB230(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A21174(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AAB2FC()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001BLL, 0x80000001D9CA84D0);
  qword_1ECB711A0 = 0xD000000000000033;
  *algn_1ECB711A8 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AAB370()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB711B0);
  __swift_project_value_buffer(v0, qword_1ECB711B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAB538()
{
  if (!*v0 || (sub_1D9AB60A8(), result = sub_1D9C7D75C(), !v1))
  {
    if (!*(v0 + 12) || (result = sub_1D9C7D77C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAB684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EB8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAB724(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AA90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAB790()
{
  sub_1D9AB2974(&qword_1EDD2AA90, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAB824()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB711C8);
  __swift_project_value_buffer(v0, qword_1ECB711C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1D9C91880;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 0;
  *v5 = "CoarseClassificatioLabelUnknown";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CoarseClassificatioLabelAlbum";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CoarseClassificatioLabelArt";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CoarseClassificatioLabelCats";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CoarseClassificatioLabelDogs";
  *(v15 + 1) = 28;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CoarseClassificatioLabelEventDestruction";
  *(v17 + 1) = 40;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CoarseClassificatioLabelLandmark";
  *(v19 + 1) = 32;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CoarseClassificatioLabelMedia";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CoarseClassificatioLabelNaturalLandmark";
  *(v22 + 8) = 39;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CoarseClassificatioLabelNature";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CoarseClassificatioLabelScreenshot";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CoarseClassificatioLabelAnimal";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CoarseClassificatioLabelReserved3";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CoarseClassificatioLabelReserved2";
  *(v32 + 1) = 33;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CoarseClassificatioLabelHuman";
  *(v34 + 1) = 29;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CoarseClassificatioLabelReserved1";
  *(v36 + 1) = 33;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CoarseClassificatioLabelSculpture";
  *(v37 + 8) = 33;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CoarseClassificatioLabelSkyline";
  *(v39 + 1) = 31;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CoarseClassificatioLabelReserved5";
  *(v41 + 1) = 33;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CoarseClassificatioLabelReserved4";
  *(v43 + 1) = 33;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CoarseClassificatioLabelReserved7";
  *(v45 + 1) = 33;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CoarseClassificatioLabelFashion";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AABEC0()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CA8870);
  qword_1ECB711E0 = 0xD000000000000033;
  *algn_1ECB711E8 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AABF34()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB711F0);
  __swift_project_value_buffer(v0, qword_1ECB711F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "domain_prediction_net_model_urn";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "results";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAC150()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1D9C7D5CC();
          break;
        case 2:
          type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
          sub_1D9AB2974(&qword_1EDD2AAC0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
          sub_1D9C7D5FC();
          break;
        case 1:
          sub_1D9AAC270();
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9AAC270()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  sub_1D9AB2974(qword_1EDD2D538, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AAC324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9AAC454(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(v3[2] + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
      sub_1D9AB2974(&qword_1EDD2AAC0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);
      sub_1D9C7D7FC();
    }

    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_1D9C7D7CC();
    }

    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9AAC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  sub_1D99AB100(a1 + *(v12 + 28), v7, &qword_1ECB52D68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52D68);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
  sub_1D9AB2974(qword_1EDD2D538, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
}

uint64_t sub_1D9AAC664@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9AAC750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EC0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAC7F0(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AB40, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAC85C()
{
  sub_1D9AB2974(&qword_1EDD2AB40, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAC90C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71218);
  __swift_project_value_buffer(v0, qword_1ECB71218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_results";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AACAD4()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
        sub_1D9AB2974(&qword_1EDD2AB00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
        sub_1D9C7D5FC();
      }

      else if (result == 2)
      {
        sub_1D9AACBD4();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9AACBD4()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AACC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0), sub_1D9AB2974(&qword_1EDD2AB00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult), result = sub_1D9C7D7FC(), !v4))
  {
    result = sub_1D9AACD84(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AACD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  sub_1D99AB100(a1 + *(v12 + 24), v7, &qword_1ECB51248);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51248);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
}

uint64_t sub_1D9AACF94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1D9C7D3BC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9AAD078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EC8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAD118(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AB20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAD184()
{
  sub_1D9AB2974(&qword_1EDD2AB20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAD204()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000012, 0x80000001D9CA88D0);
  qword_1ECB71230 = 0xD000000000000033;
  *algn_1ECB71238 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AAD27C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71240);
  __swift_project_value_buffer(v0, qword_1ECB71240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn_index";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "classification_results";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAD444()
{
  if (!*v0 || (result = sub_1D9C7D7DC(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0), sub_1D9AB2974(&qword_1EDD2AB10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult), result = sub_1D9C7D7FC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAD5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52ED0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAD684(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AB00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAD6F0()
{
  sub_1D9AB2974(&qword_1EDD2AB00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAD784()
{
  if (qword_1ECB50B78 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECB71230;
  v2 = *algn_1ECB71238;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA73DF90](0xD000000000000015, 0x80000001D9CA8920);

  qword_1ECB71258 = v1;
  unk_1ECB71260 = v2;
  return result;
}

uint64_t sub_1D9AAD82C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71268);
  __swift_project_value_buffer(v0, qword_1ECB71268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAD9F4()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9AADA84();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9AADA84()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AADB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9AADBD8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1D9C7D77C();
    }

    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9AADBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  sub_1D99AB100(a1 + *(v12 + 24), v7, &qword_1ECB51240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51240);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
}

uint64_t sub_1D9AADDE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9AADEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52ED8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AADF64(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AB10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AADFD0()
{
  sub_1D9AB2974(&qword_1EDD2AB10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAE050()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CA8940);
  qword_1ECB71280 = 0xD000000000000033;
  *algn_1ECB71288 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AAE0DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9C85EA0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "model_urn";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1D9C7D81C();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAE2A4()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9AAE324()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_1D9C7D7CC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAE3E8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9AAE46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EE0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAE50C(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D538, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAE578()
{
  sub_1D9AB2974(qword_1EDD2D538, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAE628()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB712B8);
  __swift_project_value_buffer(v0, qword_1ECB712B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "ontology_node_qids";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "label_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAE7F0()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1D9C7D59C();
    }

    else if (result == 3)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9AAE87C()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D73C(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1D9C7D7CC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAE948@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9AAE9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EE8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAEA68(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAEAD4()
{
  sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAEB50(void *a1, void *a2)
{
  if ((sub_1D9A31C74(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AAEC18()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001ALL, 0x80000001D9CA8990);
  qword_1ECB712D0 = 0xD000000000000033;
  *algn_1ECB712D8 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AAEC8C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB712E0);
  __swift_project_value_buffer(v0, qword_1ECB712E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_results";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "boxScore";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "domain_prediction_net_results";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "domain_signals";
  *(v15 + 8) = 14;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAEF28()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1D9AAF110();
        }

        else if (result == 2)
        {
          v3 = v0;
          type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
          sub_1D9AB2974(qword_1EDD2D348, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1D9C7D54C();
            break;
          case 4:
            v3 = v0;
            type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
            sub_1D9AB2974(&qword_1EDD2AAD0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
LABEL_5:
            v0 = v3;
            sub_1D9C7D5FC();
            break;
          case 6:
            v3 = v0;
            type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
            sub_1D9AB2974(&qword_1EDD2AB20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
            goto LABEL_5;
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9AAF110()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AAF1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9AAF3E0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
      sub_1D9AB2974(qword_1EDD2D348, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
      sub_1D9C7D7FC();
    }

    if (*(v3 + 8))
    {
      sub_1D9C7D77C();
    }

    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
      sub_1D9AB2974(&qword_1EDD2AAD0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);
      sub_1D9C7D7FC();
    }

    if (*(*(v3 + 24) + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
      sub_1D9AB2974(&qword_1EDD2AB20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
      sub_1D9C7D7FC();
    }

    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9AAF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB51248);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51248);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
}

uint64_t sub_1D9AAF5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  sub_1D9C7D3BC();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D9AAF6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EF0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AAF77C(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AAC0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AAF7E8()
{
  sub_1D9AB2974(&qword_1EDD2AAC0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AAF868()
{
  if (qword_1ECB50BB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECB712D0;
  v2 = *algn_1ECB712D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA73DF90](0x657463657465442ELL, 0xEF746C7573655264);

  qword_1ECB712F8 = v1;
  unk_1ECB71300 = v2;
  return result;
}

uint64_t sub_1D9AAF918()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71308);
  __swift_project_value_buffer(v0, qword_1ECB71308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "position";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ontology_node";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "score";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AAFB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D9AAFC68();
      }

      else if (result == 4)
      {
        sub_1D9C7D54C();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D5DC();
    }

    else if (result == 2)
    {
      sub_1D9AB1C2C(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);
    }
  }

  return result;
}

uint64_t sub_1D9AAFC68()
{
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AAFD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D7DC(), !v4))
  {
    result = sub_1D9AB1DCC(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult, 2);
    if (!v4)
    {
      sub_1D9AAFE0C(v3, a1, a2, a3);
      if (v3[1])
      {
        sub_1D9C7D77C();
      }

      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AAFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB51240);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51240);
  }

  sub_1D9AB3A2C(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9AB2974(qword_1EDD2D868, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v11, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
}

uint64_t sub_1D9AB001C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1D9AB0144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52EF8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AB01E4(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D348, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AB0250()
{
  sub_1D9AB2974(qword_1EDD2D348, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AB02D0()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001ALL, 0x80000001D9CA8A20);
  qword_1ECB71320 = 0xD000000000000033;
  *algn_1ECB71328 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AB0344()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71330);
  __swift_project_value_buffer(v0, qword_1ECB71330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "object_detector_result_position";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_results";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AB050C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5DC();
    }

    else if (result == 2)
    {
      a4(0);
      sub_1D9AB2974(a5, a6);
      sub_1D9C7D5FC();
    }
  }

  return result;
}

uint64_t sub_1D9AB0608()
{
  if (!*v0 || (result = sub_1D9C7D7DC(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0), sub_1D9AB2974(qword_1EDD2D488, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult), result = sub_1D9C7D7FC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AB07A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52F00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AB0848(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1EDD2AAD0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AB08B4()
{
  sub_1D9AB2974(&qword_1EDD2AAD0, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AB0948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (*a1 != *a2 || (a5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AB0A04()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71348);
  __swift_project_value_buffer(v0, qword_1ECB71348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D9C91890;
  v4 = v57 + v3;
  v5 = v57 + v3 + v1[14];
  *(v57 + v3) = 0;
  *v5 = "DomainPredictionLabelUnknown";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v57 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DomainPredictionLabelArt";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v57 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "DomainPredictionLabelNature";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v57 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "DomainPredictionLabelLandmark";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v57 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "DomainPredictionLabelMedia";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v57 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DomainPredictionLabelPets";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v57 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DomainPredictionLabelReserved1";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v57 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "DomainPredictionLabelNaturalLandmark";
  *(v21 + 1) = 36;
  v21[16] = 2;
  v8();
  v22 = v57 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "DomainPredictionLabelAnimals";
  *(v22 + 8) = 28;
  *(v22 + 16) = 2;
  v8();
  v23 = (v57 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "DomainPredictionLabelSculpture";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v57 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "DomainPredictionLabelSkyline";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v8();
  v27 = (v57 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "DomainPredictionLabelCats";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v8();
  v29 = (v57 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "DomainPredictionLabelDogs";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v8();
  v31 = (v57 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "DomainPredictionLabelBook";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v57 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "DomainPredictionLabelAlbum";
  *(v34 + 1) = 26;
  v34[16] = 2;
  v8();
  v35 = (v57 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "DomainPredictionLabelBird";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v8();
  v37 = v57 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "DomainPredictionLabelInsects";
  *(v37 + 8) = 28;
  *(v37 + 16) = 2;
  v8();
  v38 = (v57 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "DomainPredictionLabelMammal";
  *(v39 + 1) = 27;
  v39[16] = 2;
  v8();
  v40 = (v57 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "DomainPredictionLabelReptile";
  *(v41 + 1) = 28;
  v41[16] = 2;
  v8();
  v42 = (v57 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "DomainPredictionLabelApparel";
  *(v43 + 1) = 28;
  v43[16] = 2;
  v8();
  v44 = (v57 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "DomainPredictionLabelFood";
  *(v45 + 1) = 25;
  v45[16] = 2;
  v8();
  v46 = (v57 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "DomainPredictionLabelStorefront";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  v48 = (v57 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "DomainPredictionLabelLaundryCareSymbol";
  *(v49 + 1) = 38;
  v49[16] = 2;
  v8();
  v50 = (v57 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "DomainPredictionLabelAutoSymbol";
  *(v51 + 1) = 31;
  v51[16] = 2;
  v8();
  v52 = (v57 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "DomainPredictionLabelBrandLogoSymbol";
  *(v53 + 1) = 36;
  v53[16] = 2;
  v8();
  v54 = (v57 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "DomainPredictionLabelAccessories";
  *(v55 + 1) = 32;
  v55[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AB119C()
{
  if (qword_1ECB50BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECB71320;
  v2 = *algn_1ECB71328;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA73DF90](0x526E69616D6F442ELL, 0xED0000746C757365);

  qword_1ECB71360 = v1;
  *algn_1ECB71368 = v2;
  return result;
}

uint64_t sub_1D9AB124C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71370);
  __swift_project_value_buffer(v0, qword_1ECB71370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AB1414(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_1D9C7D4FC();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9AB14D0()
{
  if (sub_1D9A1E500(*v0, *(v0 + 8), 0) || (sub_1D9AB60FC(), result = sub_1D9C7D75C(), !v1))
  {
    if (!*(v0 + 12) || (result = sub_1D9C7D77C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9AB15CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9AB1670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52F08, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AB1710(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D488, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AB177C()
{
  sub_1D9AB2974(qword_1EDD2D488, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainPredictionNetResult.DomainResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AB1810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, void))
{
  if ((a5(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AB18D4()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000013, 0x80000001D9CA8DF0);
  qword_1ECB71388 = 0xD000000000000033;
  unk_1ECB71390 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AB1948()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71398);
  __swift_project_value_buffer(v0, qword_1ECB71398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence_score";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "bounding_box";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AB1B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9AB1C2C(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);
        break;
      case 2:
        sub_1D9C7D54C();
        break;
      case 1:
        sub_1D9C7D5CC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D9AB1C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9AB1CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D9C7D7CC(), !v4))
  {
    if (!*(v3 + 16) || (result = sub_1D9C7D77C(), !v4))
    {
      result = sub_1D9AB1DCC(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation, 3);
      if (!v4)
      {
        type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9AB1DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_1D99AB100(a1 + *(v16 + 28), v10, &qword_1ECB51248);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1D99A6AE0(v10, &qword_1ECB51248);
  }

  sub_1D9AB3A2C(v10, v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9C7D80C();
  return sub_1D9AB3A94(v15, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
}

uint64_t sub_1D9AB1FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D9AB20C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52F10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AB2168(uint64_t a1)
{
  v2 = sub_1D9AB2974(&qword_1ECB52DA8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AB21D4()
{
  sub_1D9AB2974(&qword_1ECB52DA8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AB2284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1DA73DF90](a2, a3);
  *a4 = 0xD000000000000033;
  *a5 = 0x80000001D9CA8410;
  return result;
}

uint64_t sub_1D9AB22F0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB713C0);
  __swift_project_value_buffer(v0, qword_1ECB713C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9AB2538()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1D9C7D5BC();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9AB25E4()
{
  if (!*v0 || (result = sub_1D9C7D7BC(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D7BC(), !v1))
    {
      if (!v0[2] || (result = sub_1D9C7D7BC(), !v1))
      {
        if (!v0[3] || (result = sub_1D9C7D7BC(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9AB26D8@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9AB2758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9AB2974(&qword_1ECB52F18, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9AB27F8(uint64_t a1)
{
  v2 = sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9AB2864()
{
  sub_1D9AB2974(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9AB2974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9AB3A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AB3A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9AB3AF4(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = (&v55 - v6);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v55 - v7;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = (&v55 - v11);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52E98);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v55 - v12;
  v13 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v55 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52EA0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v64 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v24 = *(v64 + 20);
  v25 = *(v21 + 56);
  v69 = a1;
  sub_1D99AB100(a1 + v24, v23, &qword_1ECB512C0);
  v26 = v70 + v24;
  v27 = v70;
  sub_1D99AB100(v26, &v23[v25], &qword_1ECB512C0);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB512C0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1D99AB100(v23, v19, &qword_1ECB512C0);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_1D9AB3A94(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
LABEL_9:
    v37 = &qword_1ECB52EA0;
LABEL_20:
    v41 = v23;
LABEL_21:
    sub_1D99A6AE0(v41, v37);
    goto LABEL_22;
  }

  sub_1D9AB3A2C(&v23[v25], v16, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  if ((*v19 != *v16 || v19[1] != v16[1]) && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A21174(v19[2], v16[2]) & 1) == 0)
  {
    sub_1D9AB3A94(v16, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    sub_1D9AB3A94(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
    v37 = &qword_1ECB512C0;
    goto LABEL_20;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v38 = sub_1D9C7DC2C();
  sub_1D9AB3A94(v16, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  sub_1D9AB3A94(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.CoarseClassificationResults);
  sub_1D99A6AE0(v23, &qword_1ECB512C0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v29 = v64;
  v30 = *(v64 + 24);
  v31 = *(v63 + 48);
  v32 = v69;
  v23 = v67;
  sub_1D99AB100(v69 + v30, v67, &qword_1ECB512C8);
  sub_1D99AB100(v27 + v30, &v23[v31], &qword_1ECB512C8);
  v33 = v66;
  v34 = *(v65 + 48);
  if (v34(v23, 1, v66) == 1)
  {
    v35 = v34(&v23[v31], 1, v33);
    v36 = v68;
    if (v35 == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB512C8);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v39 = v62;
  sub_1D99AB100(v23, v62, &qword_1ECB512C8);
  v40 = v34(&v23[v31], 1, v33);
  v36 = v68;
  if (v40 == 1)
  {
    sub_1D9AB3A94(v39, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
LABEL_19:
    v37 = &qword_1ECB52E98;
    goto LABEL_20;
  }

  v44 = &v23[v31];
  v45 = v57;
  sub_1D9AB3A2C(v44, v57, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  v46 = sub_1D9AB5C40(v39, v45);
  sub_1D9AB3A94(v45, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  sub_1D9AB3A94(v39, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults);
  sub_1D99A6AE0(v23, &qword_1ECB512C8);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v47 = *(v29 + 28);
  v48 = *(v58 + 48);
  v49 = v61;
  sub_1D99AB100(v32 + v47, v61, &qword_1ECB51248);
  sub_1D99AB100(v27 + v47, v49 + v48, &qword_1ECB51248);
  v50 = v60;
  v51 = *(v59 + 48);
  if (v51(v49, 1, v60) == 1)
  {
    if (v51(v49 + v48, 1, v50) == 1)
    {
      sub_1D99A6AE0(v49, &qword_1ECB51248);
LABEL_32:
      sub_1D9C7D3CC();
      sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v42 = sub_1D9C7DC2C();
      return v42 & 1;
    }

    goto LABEL_30;
  }

  sub_1D99AB100(v49, v36, &qword_1ECB51248);
  if (v51(v49 + v48, 1, v50) == 1)
  {
    sub_1D9AB3A94(v36, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_30:
    v37 = &qword_1ECB51E50;
    v41 = v49;
    goto LABEL_21;
  }

  v52 = v49 + v48;
  v53 = v56;
  sub_1D9AB3A2C(v52, v56, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v54 = sub_1D9AB57F8(v36, v53);
  sub_1D9AB3A94(v53, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB3A94(v36, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D99A6AE0(v49, &qword_1ECB51248);
  if (v54)
  {
    goto LABEL_32;
  }

LABEL_22:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1D9AB446C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion(0);
  v14 = *(v23 + 36);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB51248);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB51248);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v9, &qword_1ECB51248);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_1D9AB3A2C(&v13[v15], v24, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      v18 = sub_1D9AB57F8(v9, v17);
      sub_1D9AB3A94(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
      sub_1D99A6AE0(v13, &qword_1ECB51248);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E50);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D99A6AE0(v13, &qword_1ECB51248);
LABEL_8:
  v19 = v25;
  if ((sub_1D9A1EF94(*v25, *a2) & 1) == 0 || *(v19 + 2) != *(a2 + 8) || (sub_1D9A1F940(v19[2], *(a2 + 16)) & 1) == 0 || (sub_1D9A1FE80(v19[3], *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v20 = sub_1D9C7DC2C();
  return v20 & 1;
}

uint64_t sub_1D9AB480C(float *a1, float *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = (&v40 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E48);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v40 - v10;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v40 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_26;
  }

  v40 = v6;
  v21 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorImageRegion.DetectedResult(0);
  v47 = a2;
  v22 = *(v21 + 28);
  v23 = *(v18 + 48);
  v41 = v21;
  v42 = a1;
  sub_1D99AB100(a1 + v22, v20, &qword_1ECB51248);
  sub_1D99AB100(v47 + v22, &v20[v23], &qword_1ECB51248);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) == 1)
  {
    if (v24(&v20[v23], 1, v11) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB51248);
      goto LABEL_9;
    }

LABEL_7:
    v25 = &qword_1ECB51E50;
    v26 = v20;
LABEL_25:
    sub_1D99A6AE0(v26, v25);
    goto LABEL_26;
  }

  sub_1D99AB100(v20, v17, &qword_1ECB51248);
  if (v24(&v20[v23], 1, v11) == 1)
  {
    sub_1D9AB3A94(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    goto LABEL_7;
  }

  sub_1D9AB3A2C(&v20[v23], v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v27 = sub_1D9AB57F8(v17, v14);
  sub_1D9AB3A94(v14, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB3A94(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D99A6AE0(v20, &qword_1ECB51248);
  if ((v27 & 1) == 0)
  {
LABEL_26:
    v35 = 0;
    return v35 & 1;
  }

LABEL_9:
  v28 = *(v41 + 32);
  v29 = *(v9 + 48);
  v30 = v46;
  sub_1D99AB100(v42 + v28, v46, &qword_1ECB51240);
  v31 = v47 + v28;
  v32 = v47;
  sub_1D99AB100(v31, v30 + v29, &qword_1ECB51240);
  v33 = v45;
  v34 = *(v44 + 48);
  if (v34(v30, 1, v45) == 1)
  {
    if (v34(v30 + v29, 1, v33) == 1)
    {
      sub_1D99A6AE0(v30, &qword_1ECB51240);
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v36 = v43;
  sub_1D99AB100(v30, v43, &qword_1ECB51240);
  if (v34(v30 + v29, 1, v33) == 1)
  {
    sub_1D9AB3A94(v36, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
LABEL_16:
    v25 = &qword_1ECB51E48;
LABEL_24:
    v26 = v30;
    goto LABEL_25;
  }

  v37 = v40;
  sub_1D9AB3A2C(v30 + v29, v40, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  if ((sub_1D9A31C74(*v36, *v37) & 1) == 0 || (v36[1] != v37[1] || v36[2] != v37[2]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    sub_1D9AB3A94(v37, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    sub_1D9AB3A94(v36, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
    v25 = &qword_1ECB51240;
    goto LABEL_24;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v38 = sub_1D9C7DC2C();
  sub_1D9AB3A94(v37, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9AB3A94(v36, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D99A6AE0(v30, &qword_1ECB51240);
  if ((v38 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (v42[1] != v32[1])
  {
    goto LABEL_26;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v35 = sub_1D9C7DC2C();
  return v35 & 1;
}

uint64_t sub_1D9AB4F0C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AB4FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v21 = v7;
  v22 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.RegionalAnnotation(0);
  v14 = *(v22 + 28);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB51248);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB51248);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51248);
LABEL_14:
      sub_1D9C7D3CC();
      sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_10;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB51248);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9AB3A94(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_10:
    sub_1D99A6AE0(v13, &qword_1ECB51E50);
    goto LABEL_11;
  }

  v19 = v21;
  sub_1D9AB3A2C(&v13[v15], v21, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v20 = sub_1D9AB57F8(v10, v19);
  sub_1D9AB3A94(v19, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB3A94(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D99A6AE0(v13, &qword_1ECB51248);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = 0;
  return v17 & 1;
}

void *sub_1D9AB537C(void *result, void *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    v8 = result[1] == a2[1] && result[2] == a2[2];
    if (v8 || (sub_1D9C7E7DC() & 1) != 0)
    {
      type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
      sub_1D9C7D3CC();
      sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      return (sub_1D9C7DC2C() & 1);
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9AB548C(float *a1, float *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v21 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E48);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult.ClassificationResult(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB51240);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB51240);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51240);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D99AB100(v13, v9, &qword_1ECB51240);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E48);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  sub_1D9AB3A2C(&v13[v15], v23, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  v18 = sub_1D9AB537C(v9, v17);
  sub_1D9AB3A94(v17, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode);
  sub_1D99A6AE0(v13, &qword_1ECB51240);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *a2)
  {
    goto LABEL_10;
  }

  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9AB57F8(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  sub_1D9C7D3CC();
  sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9AB58D0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51248);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  if ((sub_1D9A20648(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  sub_1D99AB100(v15 + v17, v13, &qword_1ECB51248);
  sub_1D99AB100(v16 + v17, &v13[v18], &qword_1ECB51248);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51248);
LABEL_11:
      sub_1D9C7D3CC();
      sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v20 = sub_1D9C7DC2C();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB51248);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1D9AB3A94(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
LABEL_7:
    sub_1D99A6AE0(v13, &qword_1ECB51E50);
    goto LABEL_8;
  }

  sub_1D9AB3A2C(&v13[v18], v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  v22 = sub_1D9AB57F8(v10, v7);
  sub_1D9AB3A94(v7, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D9AB3A94(v10, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
  sub_1D99A6AE0(v13, &qword_1ECB51248);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D9AB5C40(void *a1, void *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52D68);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52EA8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v26 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorResults(0);
  v14 = *(v26 + 28);
  v15 = *(v11 + 56);
  v28 = a1;
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB52D68);
  v29 = a2;
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB52D68);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v9, &qword_1ECB52D68);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v20 = v27;
      sub_1D9AB3A2C(&v13[v15], v27, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
      v21 = *v9 == *v20 && v9[1] == v20[1];
      if (v21 || (sub_1D9C7E7DC() & 1) != 0)
      {
        v22 = v9[2] == v20[2] && v9[3] == v20[3];
        if (v22 || (sub_1D9C7E7DC() & 1) != 0)
        {
          sub_1D9C7D3CC();
          sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
          v23 = sub_1D9C7DC2C();
          sub_1D9AB3A94(v20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
          sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
          sub_1D99A6AE0(v13, &qword_1ECB52D68);
          if ((v23 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_21;
        }
      }

      sub_1D9AB3A94(v20, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
      sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
      v17 = &qword_1ECB52D68;
LABEL_7:
      sub_1D99A6AE0(v13, v17);
      goto LABEL_8;
    }

    sub_1D9AB3A94(v9, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.ObjectDetectorVersion);
LABEL_6:
    v17 = &qword_1ECB52EA8;
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D99A6AE0(v13, &qword_1ECB52D68);
LABEL_21:
  v25 = v28;
  v24 = v29;
  if (*v28 == *v29 && v28[1] == v29[1] || (sub_1D9C7E7DC()) && (sub_1D9A214E4(v25[2], v24[2]))
  {
    sub_1D9C7D3CC();
    sub_1D9AB2974(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v18 = sub_1D9C7DC2C();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1D9AB60A8()
{
  result = qword_1EDD2AAB0;
  if (!qword_1EDD2AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAB0);
  }

  return result;
}

unint64_t sub_1D9AB60FC()
{
  result = qword_1EDD2AAF0;
  if (!qword_1EDD2AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2AAF0);
  }

  return result;
}

uint64_t sub_1D9AB6150(uint64_t result)
{
  switch(result)
  {
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 8;
      break;
    case 7:
      result = 9;
      break;
    case 8:
      result = 10;
      break;
    case 9:
      result = 11;
      break;
    case 10:
      result = 15;
      break;
    case 11:
      result = 2;
      break;
    case 14:
      result = 7;
      break;
    case 15:
      result = 14;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = sub_1D9C7D3CC();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = sub_1D9C7D3CC();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_1D9AB64E4()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9AA8FD0(319, qword_1EDD2D6C8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SignSymbolConverter()
{
  result = qword_1EDD2B550;
  if (!qword_1EDD2B550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AB6640()
{
  result = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9AB66AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51240);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v49 = a1;
  v23 = a1;
  v24 = v52;
  sub_1D9AB6BB0(v23, v52, v3, v15);
  v53 = v17;
  v25 = *(v17 + 48);
  v55 = v16;
  if (v25(v15, 1, v16) == 1)
  {
    sub_1D9AA4D3C(v15);
    v26 = v50;
    static Logger.argos.getter(v50);

    v27 = sub_1D9C7D8BC();
    v28 = sub_1D9C7E09C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1D9A0E224(v49, v24, &v56);
      _os_log_impl(&dword_1D9962000, v27, v28, "Failed to parse label %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x1DA7405F0](v30, -1, -1);
      MEMORY[0x1DA7405F0](v29, -1, -1);
    }

    (*(v6 + 8))(v26, v5);
    v31 = 1;
    v32 = v54;
  }

  else
  {
    sub_1D9AA4DA4(v15, v22);
    static Logger.argos.getter(v12);
    v33 = v51;
    sub_1D9A3E0E0(v51);
    v36 = *(v6 + 8);
    v35 = v6 + 8;
    v34 = v36;
    v36(v12, v5);
    sub_1D9A5B0C8(v22, v19);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = v5;
      v40 = v39;
      v41 = swift_slowAlloc();
      v50 = v35;
      v42 = v34;
      v43 = v41;
      v56 = v41;
      *v40 = 136315138;
      sub_1D9AB82EC(&qword_1EDD2D860);
      v44 = sub_1D9C7E7EC();
      v46 = v45;
      sub_1D9A5B12C(v19);
      v47 = sub_1D9A0E224(v44, v46, &v56);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_1D9962000, v37, v38, "Encoding Signs and Symbols: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x1DA7405F0](v43, -1, -1);
      MEMORY[0x1DA7405F0](v40, -1, -1);

      v42(v33, v52);
    }

    else
    {

      sub_1D9A5B12C(v19);
      v34(v33, v5);
    }

    v32 = v54;
    sub_1D9AA4DA4(v22, v54);
    v31 = 0;
  }

  return (*(v53 + 56))(v32, v31, 1, v55);
}

uint64_t sub_1D9AB6BB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v113 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v113 - v14;
  *&v135 = *a3;
  v15 = v135;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52F38);
  sub_1D99C7C60(&qword_1EDD2A858, &qword_1ECB52F38);
  v126 = sub_1D99A57F8();
  v16 = sub_1D9C7DECC();
  v18 = v17;
  v122 = v15;

  v19 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  v120 = v18;
  v20 = sub_1D9AB8118(v16, v18, 0);
  v119 = a4;
  v21 = v20;
  v121 = 0;
  v22 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v22 = a1;
  }

  v23 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v23 = 11;
  }

  *&v135 = 15;
  *(&v135 + 1) = v23 | (v22 << 16);
  v131 = a1;
  v132 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52F40);
  sub_1D99C7C60(&qword_1EDD2A6F0, &qword_1ECB52F40);
  v24 = sub_1D9C7E23C();
  v26 = MEMORY[0x1E69E7CC0];
  v116 = v21;
  *&v125 = a1;
  if (v21)
  {
    v27 = v24;
    v28 = v25;
    v29 = v21;
    v30 = sub_1D9C7DC4C();
    v31 = sub_1D9C7DC4C();
    v32 = [v29 stringByReplacingMatchesInString:v30 options:0 range:v27 withTemplate:{v28, v31}];

    v33 = sub_1D9C7DC7C();
    v35 = v34;

    *&v135 = v33;
    *(&v135 + 1) = v35;
    v36 = sub_1D9C7E30C();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  *(&v125 + 1) = a2;
  v117 = v9;
  v118 = v8;
  v37 = *(v36 + 16);
  v127 = v36;
  if (v37)
  {
    v138 = v26;

    result = sub_1D99FE164(0, v37, 0);
    v39 = 0;
    v40 = 0;
    v41 = *(v36 + 16);
    v123 = v37;
    v124 = v41;
    v42 = v138;
    while (v124 != v40)
    {
      if (v40 >= *(v36 + 16))
      {
        goto LABEL_53;
      }

      v43 = *(v36 + v39 + 32);
      v44 = *(v36 + v39 + 40);
      v46 = *(v36 + v39 + 48);
      v45 = *(v36 + v39 + 56);
      v135 = v125;

      result = sub_1D9C7E30C();
      if (v40 >= *(result + 16))
      {
        goto LABEL_54;
      }

      v128 = *(result + v39 + 32);
      v47 = *(result + v39 + 48);
      v48 = *(result + v39 + 56);

      v135 = v128;
      v136 = v47;
      v137 = v48;
      v131 = v43;
      v132 = v44;
      v133 = v46;
      v134 = v45;
      v129 = 0;
      v130 = 0xE000000000000000;
      sub_1D9AB8248();
      v49 = sub_1D9C7E2CC();
      v51 = v50;

      v138 = v42;
      v53 = v42[2];
      v52 = v42[3];
      if (v53 >= v52 >> 1)
      {
        result = sub_1D99FE164((v52 > 1), v53 + 1, 1);
        v42 = v138;
      }

      ++v40;
      v42[2] = v53 + 1;
      v54 = &v42[2 * v53];
      v54[4] = v49;
      v54[5] = v51;
      v39 += 32;
      v36 = v127;
      if (v123 == v40)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v55 = v122;
  if (v42[2])
  {
    v56 = v42[2];
    v57 = 0;
    v58 = (v36 + 56);
    v59 = v42 + 5;
    v60 = MEMORY[0x1E69E7CC0];
    while (v57 < v42[2])
    {
      if (!*(v55 + 16))
      {
        goto LABEL_44;
      }

      v61 = *(v59 - 1);
      v62 = *v59;

      v63 = sub_1D99ED894(v61, v62);
      v65 = v64;

      if ((v65 & 1) == 0)
      {
        goto LABEL_44;
      }

      if (v57 >= *(v36 + 16))
      {
        goto LABEL_56;
      }

      v66 = *(v58 - 3);
      v67 = *(v58 - 2);
      v68 = v121;
      if ((v67 ^ v66) < 0x4000)
      {
LABEL_48:

        *&v135 = v60;
        v98 = v113;
        static Logger.argos.getter(v113);

        v99 = sub_1D9C7D8BC();
        v100 = sub_1D9C7E09C();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v131 = v102;
          *v101 = 136315138;
          v103 = *(v58 - 3);
          v104 = *(v58 - 2);
          v105 = *(v58 - 1);
          v106 = *v58;

          v107 = MEMORY[0x1DA73DF10](v103, v104, v105, v106);
          v109 = v108;

          v110 = sub_1D9A0E224(v107, v109, &v131);

          *(v101 + 4) = v110;
          _os_log_impl(&dword_1D9962000, v99, v100, "Error: unexpected ontology node id %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v102);
          MEMORY[0x1DA7405F0](v102, -1, -1);
          MEMORY[0x1DA7405F0](v101, -1, -1);

          (*(v117 + 8))(v113, v118);
        }

        else
        {

          (*(v117 + 8))(v98, v118);
        }

        v111 = v119;
        v112 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
        (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
      }

      v69 = *(*(v122 + 56) + 4 * v63);
      v70 = *(v58 - 1);
      v71 = *v58;
      if ((*v58 & 0x1000000000000000) != 0)
      {
        v80 = *v58;
        v81 = *(v58 - 2);
        v82 = *(v58 - 3);
        *&v128 = *(v58 - 1);

        v73 = sub_1D99C6AD0(v82, v81, v128, v80, 16);
        LODWORD(v128) = v83;

        v68 = v121;
        if (v128)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((v71 & 0x2000000000000000) != 0)
        {
          *&v135 = *(v58 - 1);
          *(&v135 + 1) = v71 & 0xFFFFFFFFFFFFFFLL;
          v72 = &v135;
        }

        else if ((v70 & 0x1000000000000000) != 0)
        {
          v72 = ((v71 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v126 = *(v58 - 3);
          v84 = v71;
          v85 = v67;
          *&v128 = v70;
          v72 = sub_1D9C7E47C();
          v68 = v121;
          v70 = v128;
          v66 = v126;
          v67 = v85;
          v71 = v84;
        }

        result = sub_1D99C77A8(v72, v66, v67, v70, v71, 16);
        v73 = result;
        LOBYTE(v131) = v74 & 1;
        if (v74)
        {
          goto LABEL_48;
        }
      }

      if ((v69 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v121 = v68;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF92CC(0, *(v60 + 16) + 1, 1, v60);
        v60 = result;
      }

      v76 = *(v60 + 16);
      v75 = *(v60 + 24);
      v77 = v75 >> 1;
      v78 = v76 + 1;
      if (v75 >> 1 <= v76)
      {
        result = sub_1D9AF92CC((v75 > 1), v76 + 1, 1, v60);
        v60 = result;
        v75 = *(result + 24);
        v77 = v75 >> 1;
      }

      *(v60 + 16) = v78;
      *(v60 + 8 * v76 + 32) = v69;
      v79 = v76 + 2;
      if (v77 < v79)
      {
        result = sub_1D9AF92CC((v75 > 1), v79, 1, v60);
        v60 = result;
      }

      v36 = v127;
      ++v57;
      *(v60 + 16) = v79;
      *(v60 + 8 * v78 + 32) = v73;
      v58 += 4;
      v59 += 2;
      v55 = v122;
      if (v56 == v57)
      {
        goto LABEL_44;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_44:

  *&v135 = v60;
  v86 = v114;
  static Logger.argos.getter(v114);
  v87 = v115;
  sub_1D9A3E0E0(v115);
  v88 = *(v117 + 8);
  v89 = v118;
  v88(v86, v118);
  v90 = *(&v125 + 1);

  v91 = sub_1D9C7D8BC();
  v92 = sub_1D9C7E09C();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v131 = v94;
    *v93 = 136315138;
    *(v93 + 4) = sub_1D9A0E224(v125, v90, &v131);
    _os_log_impl(&dword_1D9962000, v91, v92, "Parsing %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    MEMORY[0x1DA7405F0](v94, -1, -1);
    MEMORY[0x1DA7405F0](v93, -1, -1);
  }

  v88(v87, v89);
  v95 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  v96 = v116;
  MEMORY[0x1EEE9AC00](v95);
  sub_1D9AB82EC(qword_1EDD2D868);
  v97 = v119;
  sub_1D9C7D6BC();

  (*(*(v95 - 8) + 56))(v97, 0, 1, v95);
}

uint64_t sub_1D9AB780C(uint64_t a1)
{
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_1D9AB7BF8(a1, v1);
  v36 = v16;
  v18 = v17;
  if (v17)
  {
    static Logger.argos.getter(v15);
    sub_1D9A3E0E0(v12);
    v19 = *(v7 + 8);
    v19(v15, v6);

    v20 = sub_1D9C7D8BC();
    v21 = sub_1D9C7E09C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = v36;
      *(v22 + 4) = sub_1D9A0E224(v36, v18, &v37);
      _os_log_impl(&dword_1D9962000, v20, v21, "Successfully decoded Signs and Symbols label %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1DA7405F0](v23, -1, -1);
      MEMORY[0x1DA7405F0](v22, -1, -1);

      v19(v12, v6);
      return v24;
    }

    else
    {

      v19(v12, v6);
      return v36;
    }
  }

  else
  {
    v34 = v3;
    v35 = v7;
    v36 = v6;
    static Logger.argos.getter(v9);
    sub_1D9A5B0C8(a1, v5);
    v26 = sub_1D9C7D8BC();
    v27 = sub_1D9C7E09C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      sub_1D9AB82EC(&qword_1EDD2D860);
      v30 = sub_1D9C7E7EC();
      v32 = v31;
      sub_1D9A5B12C(v5);
      v33 = sub_1D9A0E224(v30, v32, &v37);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1D9962000, v26, v27, "Failed to decode node %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x1DA7405F0](v29, -1, -1);
      MEMORY[0x1DA7405F0](v28, -1, -1);
    }

    else
    {

      sub_1D9A5B12C(v5);
    }

    (*(v35 + 8))(v9, v36);
    return 0;
  }
}

void sub_1D9AB7BF8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = v13 - 1;
    if (v13 == 1)
    {
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_4;
    }

    v16 = 0;
    v17 = *a2;
    v18 = *a2 + 64;
    v19 = v12 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    v59 = v9;
LABEL_7:
    v20 = 0;
    v21 = v16;
    v22 = v16 + 2;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
LABEL_16:
      v28 = *(v12 + 16);
      if (v21 >= v28)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64(v25)) | (v20 << 6);
      v30 = *(*(v17 + 56) + 4 * v29);
      v25 &= v25 - 1;
      if ((v30 & 0x80000000) == 0 && *(v19 + 8 * v21) == v30)
      {
        v55 = v22;
        v56 = v14;
        v31 = (*(v17 + 48) + 16 * v29);
        v33 = *v31;
        v32 = v31[1];
        v53 = v8;
        v54 = v33;
        v34 = v21 | 1;
        v57 = v32;
        v58 = v19;

        if (v34 >= v28)
        {
          goto LABEL_32;
        }

        v60 = *(v58 + 8 * v34);
        sub_1D9AB81F4();
        sub_1D9C7DE6C();
        v52 = sub_1D9C7DD1C();
        v36 = v35;

        v60 = v54;
        v61 = v57;

        MEMORY[0x1DA73DF90](v52, v36);

        v37 = v60;
        v54 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_1D9AF83AC(0, *(v15 + 2) + 1, 1, v15);
        }

        v8 = v53;
        v16 = v55;
        v14 = v56;
        v40 = *(v15 + 2);
        v39 = *(v15 + 3);
        v41 = v40 + 1;
        v19 = v58;
        if (v40 >= v39 >> 1)
        {
          v53 = v40 + 1;
          v43 = sub_1D9AF83AC((v39 > 1), v40 + 1, 1, v15);
          v41 = v53;
          v19 = v58;
          v16 = v55;
          v14 = v56;
          v15 = v43;
        }

        *(v15 + 2) = v41;
        v42 = &v15[16 * v40];
        *(v42 + 4) = v57;
        *(v42 + 5) = v54;
        if (v16 >= v14)
        {
LABEL_4:
          v60 = v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
          sub_1D99C7C60(&qword_1EDD2C4B0, &qword_1ECB51040);
          sub_1D9C7DC0C();

          return;
        }

        goto LABEL_7;
      }
    }

    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v27 >= v26)
      {
        break;
      }

      v25 = *(v18 + 8 * v27);
      ++v20;
      if (v25)
      {
        v20 = v27;
        goto LABEL_16;
      }
    }

    static Logger.argos.getter(v11);
    sub_1D9A5B0C8(a1, v6);
    v44 = sub_1D9C7D8BC();
    v45 = sub_1D9C7E09C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60 = v47;
      *v46 = 136315138;
      sub_1D9AB82EC(&qword_1EDD2D860);
      v48 = sub_1D9C7E7EC();
      v50 = v49;
      sub_1D9A5B12C(v6);
      v51 = sub_1D9A0E224(v48, v50, &v60);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1D9962000, v44, v45, "Error: unable to decode prefix string for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x1DA7405F0](v47, -1, -1);
      MEMORY[0x1DA7405F0](v46, -1, -1);
    }

    else
    {

      sub_1D9A5B12C(v6);
    }

    (*(v8 + 8))(v11, v59);
  }

  else
  {
  }
}

id sub_1D9AB8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9C7DC4C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D9C7B70C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1D9AB81F4()
{
  result = qword_1ECB52F30;
  if (!qword_1ECB52F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F30);
  }

  return result;
}

unint64_t sub_1D9AB8248()
{
  result = qword_1ECB52F48;
  if (!qword_1ECB52F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F48);
  }

  return result;
}

uint64_t sub_1D9AB829C(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1D9AB82EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.OntologyNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9AB8330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1D9AB8390()
{
  result = qword_1ECB52F50;
  if (!qword_1ECB52F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F50);
  }

  return result;
}

uint64_t sub_1D9AB83E4()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1DA73DF90](v2, v3);

  return 0x2064656C696166;
}

unint64_t sub_1D9AB845C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = 0xE000000000000000;
  sub_1D9C7E40C();

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1DA73DF90](v2, v3);

  MEMORY[0x1DA73DF90](0x2064656C696166, 0xE700000000000000);

  return 0xD000000000000018;
}

uint64_t sub_1D9AB8524@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D9C7CB3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69BD5E8] || result == *MEMORY[0x1E69BD608])
  {
    sub_1D9ABCAC8();
    swift_allocError();
    return swift_willThrow();
  }

  else if (result == *MEMORY[0x1E69BD620])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E69BD628])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E69BD630])
  {
    *a1 = 7;
  }

  else if (result == *MEMORY[0x1E69BD638])
  {
    *a1 = 8;
  }

  else if (result == *MEMORY[0x1E69BD660])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x1E69BD658])
  {
    *a1 = 4;
  }

  else if (result == *MEMORY[0x1E69BD690])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x1E69BD698])
  {
    *a1 = 26;
  }

  else if (result == *MEMORY[0x1E69BD648])
  {
    *a1 = 6;
  }

  else if (result == *MEMORY[0x1E69BD668])
  {
    *a1 = 9;
  }

  else if (result == *MEMORY[0x1E69BD600])
  {
    *a1 = 14;
  }

  else if (result == *MEMORY[0x1E69BD5F8])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E69BD6A8])
  {
    *a1 = 24;
  }

  else if (result == *MEMORY[0x1E69BD688])
  {
    *a1 = 25;
  }

  else if (result == *MEMORY[0x1E69BD650])
  {
    *a1 = 10;
  }

  else if (result == *MEMORY[0x1E69BD678])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E69BD670])
  {
    *a1 = 15;
  }

  else if (result == *MEMORY[0x1E69BD5E0])
  {
    *a1 = 16;
  }

  else if (result == *MEMORY[0x1E69BD640])
  {
    *a1 = 17;
  }

  else if (result == *MEMORY[0x1E69BD5D8])
  {
    *a1 = 18;
  }

  else if (result == *MEMORY[0x1E69BD5D0])
  {
    *a1 = 19;
  }

  else if (result == *MEMORY[0x1E69BD618])
  {
    *a1 = 20;
  }

  else if (result == *MEMORY[0x1E69BD5C8])
  {
    *a1 = 21;
  }

  else if (result == *MEMORY[0x1E69BD5F0])
  {
    *a1 = 22;
  }

  else if (result == *MEMORY[0x1E69BD680])
  {
    *a1 = 13;
  }

  else if (result == *MEMORY[0x1E69BD6A0])
  {
    *a1 = 12;
  }

  else
  {
    sub_1D9ABCAC8();
    swift_allocError();
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1D9AB89E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D9C7D07C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_1D9C7D8DC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_1D9C7D06C();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AB8C1C, 0, 0);
}

uint64_t sub_1D9AB8C1C()
{
  v2 = (v0 + 216);
  v1 = *(v0 + 216);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  sub_1D9C7D09C();
  v6 = *(v5 + 16);
  *(v0 + 224) = v6;
  *(v0 + 232) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v1, v4);
  v7 = *(v5 + 88);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v5 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v8 = v7(v3, v4);
  v9 = *MEMORY[0x1E69BDB28];
  *(v0 + 280) = v8;
  *(v0 + 284) = v9;
  if (v8 == v9)
  {
    v10 = *(v0 + 208);
    v11 = *(v0 + 152);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    (*(*(v0 + 184) + 96))(v10, *(v0 + 176));
    (*(v15 + 32))(v12, v10, v14);
    static Logger.argos.getter(v11);
    v65 = *(v15 + 16);
    v65(v13, v12, v14);
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();
    v18 = os_log_type_enabled(v16, v17);
    v67 = *(v0 + 184);
    v68 = *(v0 + 152);
    v19 = *(v0 + 80);
    v66 = *(v0 + 72);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    if (v18)
    {
      v64 = *(v0 + 64);
      v24 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v24 = 138412290;
      sub_1D9ABD098(&qword_1ECB52F60, MEMORY[0x1E69BDB30]);
      swift_allocError();
      v62 = v17;
      v65(v25, v21, v22);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v23 + 8);
      v27(v21, v22);
      *(v24 + 4) = v26;
      *v63 = v26;
      _os_log_impl(&dword_1D9962000, v16, v62, "#1 enabledStateStatus is .disabled %@", v24, 0xCu);
      sub_1D99AF294(v63);
      MEMORY[0x1DA7405F0](v63, -1, -1);
      MEMORY[0x1DA7405F0](v24, -1, -1);

      (*(v19 + 8))(v68, v66);
      v27(v64, v22);
    }

    else
    {

      v36 = *(v23 + 8);
      v36(v21, v22);
      (*(v19 + 8))(v68, v66);
      v36(v20, v22);
    }

    v69 = 0;
    v37 = *(v67 + 8);
LABEL_12:
    v37(*v2, *(v0 + 176));

    v38 = *(v0 + 8);

    return v38(v69);
  }

  if (v8 != *MEMORY[0x1E69BDB18])
  {
    if (v8 == *MEMORY[0x1E69BDB20])
    {
      v39 = *(v0 + 160);
      v40 = *(v0 + 168);
      v41 = *(v0 + 72);
      v42 = *(v0 + 80);
      static Logger.argos.getter(v40);
      sub_1D9A3E0E0(v39);
      v43 = *(v42 + 8);
      v43(v40, v41);
      v44 = sub_1D9C7D8BC();
      v45 = sub_1D9C7E09C();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 184);
      v48 = *(v0 + 160);
      v49 = *(v0 + 72);
      if (v46)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1D9962000, v44, v45, "#1 enabledStateStatus is .enabled", v50, 2u);
        MEMORY[0x1DA7405F0](v50, -1, -1);
      }

      v43(v48, v49);
      v37 = *(v47 + 8);
      v69 = 1;
    }

    else
    {
      static Logger.argos.getter(*(v0 + 136));
      v51 = sub_1D9C7D8BC();
      v52 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1D9962000, v51, v52, "#1 enabledStateStatus is unknown value, set as .disabled", v53, 2u);
        MEMORY[0x1DA7405F0](v53, -1, -1);
      }

      v54 = *(v0 + 216);
      v55 = *(v0 + 176);
      v56 = *(v0 + 184);
      v57 = *(v0 + 136);
      v58 = *(v0 + 72);
      v59 = *(v0 + 80);

      (*(v59 + 8))(v57, v58);
      v60 = *(v56 + 8);
      v60(v54, v55);
      v37 = v60;
      v69 = 0;
      v2 = (v0 + 208);
    }

    goto LABEL_12;
  }

  static Logger.argos.getter(*(v0 + 144));
  v28 = sub_1D9C7D8BC();
  v29 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D9962000, v28, v29, "#1 enabledStateStatus is .notConfigured, retry", v30, 2u);
    MEMORY[0x1DA7405F0](v30, -1, -1);
  }

  v31 = *(v0 + 144);
  v32 = *(v0 + 72);
  v33 = *(v0 + 80);

  v34 = *(v33 + 8);
  *(v0 + 256) = v34;
  v34(v31, v32);
  v35 = swift_task_alloc();
  *(v0 + 264) = v35;
  *v35 = v0;
  v35[1] = sub_1D9AB9354;

  return MEMORY[0x1EEE28300](500000000000000000, 0);
}

uint64_t sub_1D9AB9354()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1D9ABD150;
  }

  else
  {
    v2 = sub_1D9ABD148;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AB9468(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D9C7D07C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_1D9C7D8DC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = sub_1D9C7D06C();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AB96A0, 0, 0);
}

uint64_t sub_1D9AB96A0()
{
  v2 = (v0 + 216);
  v1 = *(v0 + 216);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  sub_1D9C7D09C();
  v6 = *(v5 + 16);
  *(v0 + 224) = v6;
  *(v0 + 232) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v1, v4);
  v7 = *(v5 + 88);
  *(v0 + 240) = v7;
  *(v0 + 248) = (v5 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v8 = v7(v3, v4);
  v9 = *MEMORY[0x1E69BDB28];
  *(v0 + 280) = v8;
  *(v0 + 284) = v9;
  if (v8 == v9)
  {
    v10 = *(v0 + 208);
    v11 = *(v0 + 152);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    (*(*(v0 + 184) + 96))(v10, *(v0 + 176));
    (*(v15 + 32))(v12, v10, v14);
    static Logger.argos.getter(v11);
    v65 = *(v15 + 16);
    v65(v13, v12, v14);
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();
    v18 = os_log_type_enabled(v16, v17);
    v67 = *(v0 + 184);
    v68 = *(v0 + 152);
    v19 = *(v0 + 80);
    v66 = *(v0 + 72);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    if (v18)
    {
      v64 = *(v0 + 64);
      v24 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v24 = 138412290;
      sub_1D9ABD098(&qword_1ECB52F60, MEMORY[0x1E69BDB30]);
      swift_allocError();
      v62 = v17;
      v65(v25, v21, v22);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v23 + 8);
      v27(v21, v22);
      *(v24 + 4) = v26;
      *v63 = v26;
      _os_log_impl(&dword_1D9962000, v16, v62, "#1 enabledStateStatus is .disabled %@", v24, 0xCu);
      sub_1D99AF294(v63);
      MEMORY[0x1DA7405F0](v63, -1, -1);
      MEMORY[0x1DA7405F0](v24, -1, -1);

      (*(v19 + 8))(v68, v66);
      v27(v64, v22);
    }

    else
    {

      v36 = *(v23 + 8);
      v36(v21, v22);
      (*(v19 + 8))(v68, v66);
      v36(v20, v22);
    }

    v69 = 0;
    v37 = *(v67 + 8);
LABEL_12:
    v37(*v2, *(v0 + 176));

    v38 = *(v0 + 8);

    return v38(v69);
  }

  if (v8 != *MEMORY[0x1E69BDB18])
  {
    if (v8 == *MEMORY[0x1E69BDB20])
    {
      v39 = *(v0 + 160);
      v40 = *(v0 + 168);
      v41 = *(v0 + 72);
      v42 = *(v0 + 80);
      static Logger.argos.getter(v40);
      sub_1D9A3E0E0(v39);
      v43 = *(v42 + 8);
      v43(v40, v41);
      v44 = sub_1D9C7D8BC();
      v45 = sub_1D9C7E09C();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 184);
      v48 = *(v0 + 160);
      v49 = *(v0 + 72);
      if (v46)
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1D9962000, v44, v45, "#1 enabledStateStatus is .enabled", v50, 2u);
        MEMORY[0x1DA7405F0](v50, -1, -1);
      }

      v43(v48, v49);
      v37 = *(v47 + 8);
      v69 = 1;
    }

    else
    {
      static Logger.argos.getter(*(v0 + 136));
      v51 = sub_1D9C7D8BC();
      v52 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1D9962000, v51, v52, "#1 enabledStateStatus is unknown value, set as .disabled", v53, 2u);
        MEMORY[0x1DA7405F0](v53, -1, -1);
      }

      v54 = *(v0 + 216);
      v55 = *(v0 + 176);
      v56 = *(v0 + 184);
      v57 = *(v0 + 136);
      v58 = *(v0 + 72);
      v59 = *(v0 + 80);

      (*(v59 + 8))(v57, v58);
      v60 = *(v56 + 8);
      v60(v54, v55);
      v37 = v60;
      v69 = 0;
      v2 = (v0 + 208);
    }

    goto LABEL_12;
  }

  static Logger.argos.getter(*(v0 + 144));
  v28 = sub_1D9C7D8BC();
  v29 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D9962000, v28, v29, "#1 enabledStateStatus is .notConfigured, retry", v30, 2u);
    MEMORY[0x1DA7405F0](v30, -1, -1);
  }

  v31 = *(v0 + 144);
  v32 = *(v0 + 72);
  v33 = *(v0 + 80);

  v34 = *(v33 + 8);
  *(v0 + 256) = v34;
  v34(v31, v32);
  v35 = swift_task_alloc();
  *(v0 + 264) = v35;
  *v35 = v0;
  v35[1] = sub_1D9AB9DD8;

  return MEMORY[0x1EEE28300](500000000000000000, 0);
}

uint64_t sub_1D9AB9DD8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1D9ABA5A8;
  }

  else
  {
    v2 = sub_1D9AB9EEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AB9EEC()
{
  v1 = *(v0 + 216);
  v63 = *(v0 + 284);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  sub_1D9C7D09C();
  v66 = *(v7 + 8);
  v66(v1, v6);
  (*(v7 + 32))(v1, v4, v6);
  v3(v5, v1, v6);
  v8 = v2(v5, v6);
  if (v8 == v63)
  {
    v9 = *(v0 + 192);
    v10 = *(v0 + 104);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    (*(*(v0 + 184) + 96))(v9, *(v0 + 176));
    (*(v14 + 32))(v11, v9, v13);
    static Logger.argos.getter(v10);
    v62 = *(v14 + 16);
    v62(v12, v11, v13);
    v15 = sub_1D9C7D8BC();
    v16 = sub_1D9C7E0AC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 256);
    v19 = *(v0 + 104);
    v64 = *(v0 + 72);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);
    if (v17)
    {
      v61 = *(v0 + 104);
      v24 = swift_slowAlloc();
      v60 = v18;
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      sub_1D9ABD098(&qword_1ECB52F60, MEMORY[0x1E69BDB30]);
      swift_allocError();
      v59 = v16;
      v62(v26, v21, v22);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = *(v23 + 8);
      v28(v21, v22);
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1D9962000, v15, v59, "#2 enabledStateStatus is .disabled %@", v24, 0xCu);
      sub_1D99AF294(v25);
      MEMORY[0x1DA7405F0](v25, -1, -1);
      MEMORY[0x1DA7405F0](v24, -1, -1);

      v60(v61, v64);
      v28(v20, v22);
    }

    else
    {

      v36 = *(v23 + 8);
      v36(v21, v22);
      v18(v19, v64);
      v36(v20, v22);
    }

LABEL_9:
    v65 = 0;
LABEL_10:
    v37 = (v0 + 216);
    goto LABEL_11;
  }

  if (v8 == *(v0 + 280))
  {
    static Logger.argos.getter(*(v0 + 96));
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 256);
    v33 = *(v0 + 96);
    v34 = *(v0 + 72);
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "#2 enabledStateStatus is .notConfigured, set to .disabled", v35, 2u);
      MEMORY[0x1DA7405F0](v35, -1, -1);
    }

    v32(v33, v34);
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x1E69BDB20])
  {
    v40 = *(v0 + 256);
    v41 = *(v0 + 112);
    v42 = *(v0 + 120);
    v43 = *(v0 + 72);
    static Logger.argos.getter(v42);
    sub_1D9A3E0E0(v41);
    v40(v42, v43);
    v44 = sub_1D9C7D8BC();
    v45 = sub_1D9C7E09C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 256);
    v48 = *(v0 + 112);
    v49 = *(v0 + 72);
    if (v46)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D9962000, v44, v45, "#2 enabledStateStatus is .enabled", v50, 2u);
      MEMORY[0x1DA7405F0](v50, -1, -1);
    }

    v47(v48, v49);
    v65 = 1;
    goto LABEL_10;
  }

  static Logger.argos.getter(*(v0 + 88));
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1D9962000, v51, v52, "#2 enabledStateStatus is unknown value, set as .disabled", v53, 2u);
    MEMORY[0x1DA7405F0](v53, -1, -1);
  }

  v54 = *(v0 + 256);
  v55 = *(v0 + 216);
  v56 = *(v0 + 176);
  v57 = *(v0 + 88);
  v58 = *(v0 + 72);

  v54(v57, v58);
  v66(v55, v56);
  v65 = 0;
  v37 = (v0 + 192);
LABEL_11:
  v66(*v37, *(v0 + 176));

  v38 = *(v0 + 8);

  return v38(v65);
}

uint64_t sub_1D9ABA5A8()
{
  v1 = v0[34];
  static Logger.argos.getter(v0[16]);
  v2 = v1;
  v3 = sub_1D9C7D8BC();
  v4 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D9962000, v3, v4, "getEnabledStateStatus waitForNextStateUpdate() error: %@", v6, 0xCu);
    sub_1D99AF294(v7);
    MEMORY[0x1DA7405F0](v7, -1, -1);
    MEMORY[0x1DA7405F0](v6, -1, -1);
  }

  v10 = v0[34];
  v11 = v0[32];
  v12 = v0[23];
  v13 = v0[16];
  v14 = v0[9];

  v11(v13, v14);
  (*(v12 + 8))(v0[27], v0[22]);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1D9ABA81C()
{
  v1[2] = v0;
  v2 = sub_1D9C7CB3C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1D9C7D8DC();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9ABA968, 0, 0);
}

uint64_t sub_1D9ABA968()
{
  v1 = sub_1D9C7D0AC();
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D9ABAA1C;

  return sub_1D9AB89E4(v1);
}

uint64_t sub_1D9ABAA1C(char a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D9ABAB3C, 0, 0);
}

uint64_t sub_1D9ABAB3C()
{
  v51 = v0;
  if (*(v0 + 120) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = sub_1D9C7D11C();
    static Logger.argos.getter(v1);
    sub_1D9A3E0E0(v2);
    v6 = *(v4 + 8);
    v6(v1, v3);

    v7 = sub_1D9C7D8BC();
    v8 = sub_1D9C7E09C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 88);
    v11 = *(v0 + 48);
    v48 = v6;
    v49 = v5;
    if (v9)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50[0] = v13;
      *v12 = 136315138;
      sub_1D9ABD098(&qword_1ECB52F68, MEMORY[0x1E69BD6B8]);
      v14 = sub_1D9C7E04C();
      v16 = sub_1D9A0E224(v14, v15, v50);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D9962000, v7, v8, "fetchEnabledDomains(): supportedDomains: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      v17 = v13;
      v5 = v49;
      MEMORY[0x1DA7405F0](v17, -1, -1);
      MEMORY[0x1DA7405F0](v12, -1, -1);
    }

    v6(v10, v11);
    v18 = v5 + 56;
    v19 = -1;
    v20 = -1 << *(v5 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v5 + 56);
    v22 = (63 - v20) >> 6;
    v47 = *(v0 + 32);

    v24 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return result;
      }

      if (v25 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        do
        {
LABEL_11:
          v26 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          (*(v47 + 16))(*(v0 + 40), *(v5 + 48) + *(v47 + 72) * (v26 | (v24 << 6)), *(v0 + 24));
          sub_1D9AB8524(v50);
          v27 = v50[0];
          (*(v47 + 8))(*(v0 + 40), *(v0 + 24));
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D9AF8AB8(0, *(v46 + 16) + 1, 1, v46);
            v46 = result;
          }

          v29 = *(v46 + 16);
          v28 = *(v46 + 24);
          if (v29 >= v28 >> 1)
          {
            result = sub_1D9AF8AB8((v28 > 1), v29 + 1, 1, v46);
            v46 = result;
          }

          *(v46 + 16) = v29 + 1;
          *(v46 + v29 + 32) = v27;
          v5 = v49;
        }

        while (v21);
      }
    }

    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    v33 = *(v0 + 48);

    v30 = sub_1D9B9E6EC(v46);

    static Logger.argos.getter(v31);
    sub_1D9A3E0E0(v32);
    v6(v31, v33);
    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E09C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 72);
    v38 = *(v0 + 48);
    if (v36)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50[0] = v40;
      *v39 = 136315138;
      sub_1D9ABD044();

      v41 = sub_1D9C7E04C();
      v43 = v42;

      v44 = sub_1D9A0E224(v41, v43, v50);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D9962000, v34, v35, "fetchEnabledDomains(): enabledDomains: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x1DA7405F0](v40, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);

      v48(v37, v38);
    }

    else
    {

      v6(v37, v38);
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
  }

  v45 = *(v0 + 8);

  return v45(v30);
}

uint64_t sub_1D9ABB474()
{
  v1 = sub_1D9C7D0AC();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D9ABB528;

  return sub_1D9AB89E4(v1);
}

uint64_t sub_1D9ABB528(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D9ABB640()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D9ABB6E4;

  return sub_1D9ABCB1C();
}

uint64_t sub_1D9ABB6E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D9ABB7E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D9C7D8DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_1D9C7CB3C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9ABB93C, 0, 0);
}

uint64_t sub_1D9ABB93C()
{
  v1 = sub_1D9C7D0AC();
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1D9ABB9F0;

  return sub_1D9AB89E4(v1);
}

uint64_t sub_1D9ABB9F0(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v9 = (*MEMORY[0x1E69BDB70] + MEMORY[0x1E69BDB70]);
    v5 = swift_task_alloc();
    *(v3 + 144) = v5;
    *v5 = v4;
    v5[1] = sub_1D9ABBBF0;

    return v9();
  }

  else
  {

    v7 = *(v4 + 8);
    v8 = MEMORY[0x1E69E7CD0];

    return v7(v8);
  }
}

uint64_t sub_1D9ABBBF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1D9ABC614;
  }

  else
  {
    v4 = sub_1D9ABBD04;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9ABBD04()
{
  v85 = v0;
  if (!*(v0[19] + 16) || (v1 = sub_1D99ED894(v0[2], v0[3]), (v2 & 1) == 0))
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[5];
    v18 = v0[6];

    static Logger.argos.getter(v15);
    sub_1D9A3E0E0(v16);
    v19 = *(v18 + 8);
    v19(v15, v17);

    v20 = sub_1D9C7D8BC();
    v21 = sub_1D9C7E09C();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[8];
    v24 = v0[5];
    if (v22)
    {
      v25 = v0[2];
      v82 = v0[3];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v84[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1D9A0E224(v25, v82, v84);
      _os_log_impl(&dword_1D9962000, v20, v21, "fetchEnabledDomains(key:) no domains found for key: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1DA7405F0](v27, -1, -1);
      MEMORY[0x1DA7405F0](v26, -1, -1);
    }

    v19(v23, v24);
    v28 = MEMORY[0x1E69E7CD0];
    goto LABEL_10;
  }

  v3 = v0[14];
  v4 = v0[6];
  v5 = *(*(v0[19] + 56) + 8 * v1);

  v6 = v5 + 56;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 56);
  v10 = (63 - v8) >> 6;
  v11 = (v4 + 8);
  v78 = (v4 + 16);
  v79 = (v3 + 8);
  v12 = v0[20];

  v14 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  v80 = v10;
  v81 = v5 + 56;
  v77 = v3;
  if (v9)
  {
    while (1)
    {
LABEL_19:
      while (1)
      {
        v41 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        (*(v3 + 16))(v0[15], *(v5 + 48) + *(v3 + 72) * (v41 | (v14 << 6)), v0[13]);
        sub_1D9AB8524(v84);
        if (v12)
        {
          break;
        }

        v59 = v84[0];
        (*v79)(v0[15], v0[13]);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9AF8AB8(0, *(v76 + 16) + 1, 1, v76);
          v76 = result;
        }

        v61 = *(v76 + 16);
        v60 = *(v76 + 24);
        if (v61 >= v60 >> 1)
        {
          result = sub_1D9AF8AB8((v60 > 1), v61 + 1, 1, v76);
          v76 = result;
        }

        v12 = 0;
        *(v76 + 16) = v61 + 1;
        *(v76 + v61 + 32) = v59;
        v10 = v80;
        v6 = v81;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
LABEL_37:
        v52 = qword_1EDD354D8;
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
          v52 = qword_1EDD354D8;
        }

        goto LABEL_39;
      }

      v42 = [objc_opt_self() mainBundle];
      v43 = [v42 bundleIdentifier];

      if (!v43)
      {
        break;
      }

      v44 = sub_1D9C7DC7C();
      v46 = v45;

      if (v44 == 0xD00000000000002BLL && 0x80000001D9CA3A40 == v46)
      {
      }

      else
      {
        v48 = sub_1D9C7E7DC();

        if ((v48 & 1) == 0)
        {
          break;
        }
      }

      v49 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v49 = &off_1ECB51BA8;
      }

LABEL_34:
      v50 = *(*v49 + 32);

      v51 = sub_1D9C7DC4C();
      LODWORD(v50) = [v50 BOOLForKey_];

      v10 = v80;
      if (!v50)
      {
        goto LABEL_37;
      }

      v52 = qword_1EDD2C990;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v52 = qword_1EDD2C990;
      }

LABEL_39:
      v53 = v0[10];
      v54 = v0[5];
      v55 = __swift_project_value_buffer(v54, v52);
      (*v78)(v53, v55, v54);
      v56 = v12;
      v57 = sub_1D9C7D8BC();
      v58 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v57, v58))
      {
        v30 = swift_slowAlloc();
        v31 = v5;
        v32 = v11;
        v33 = swift_slowAlloc();
        *v30 = 138412290;
        v34 = v12;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1D9962000, v57, v58, "fetchEnabledDomains(key:) Apple_Parsec_Visualsearch_V2_VisualSearchDomain.mapToDomain() %@", v30, 0xCu);
        sub_1D99AF294(v33);
        v36 = v33;
        v11 = v32;
        v5 = v31;
        v3 = v77;
        MEMORY[0x1DA7405F0](v36, -1, -1);
        v37 = v30;
        v10 = v80;
        MEMORY[0x1DA7405F0](v37, -1, -1);
      }

      else
      {
      }

      v6 = v81;
      v38 = v0[15];
      v39 = v0[13];
      (*v11)(v0[10], v0[5]);
      result = (*v79)(v38, v39);
      v12 = 0;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v49 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v49 = &qword_1EDD355A8;
    }

    goto LABEL_34;
  }

  while (1)
  {
LABEL_15:
    v40 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v40 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v40);
    ++v14;
    if (v9)
    {
      v14 = v40;
      goto LABEL_19;
    }
  }

  v63 = v0[11];
  v62 = v0[12];
  v64 = v0[5];

  v28 = sub_1D9B9E6EC(v76);

  static Logger.argos.getter(v62);
  sub_1D9A3E0E0(v63);
  v65 = *v11;
  (*v11)(v62, v64);

  v66 = sub_1D9C7D8BC();
  v67 = sub_1D9C7E09C();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v0[11];
  v70 = v0[5];
  if (v68)
  {
    v83 = v65;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v84[0] = v72;
    *v71 = 136315138;
    sub_1D9ABD044();
    v73 = sub_1D9C7E04C();
    v75 = sub_1D9A0E224(v73, v74, v84);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_1D9962000, v66, v67, "fetchEnabledDomains(key:) supportedDomains: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x1DA7405F0](v72, -1, -1);
    MEMORY[0x1DA7405F0](v71, -1, -1);

    v83(v69, v70);
  }

  else
  {

    v65(v69, v70);
  }

LABEL_10:

  v29 = v0[1];

  return v29(v28);
}

uint64_t sub_1D9ABC614()
{
  v1 = v0[20];
  static Logger.argos.getter(v0[7]);
  v2 = v1;
  v3 = sub_1D9C7D8BC();
  v4 = sub_1D9C7E0AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D9962000, v3, v4, "fetchEnabledDomains(key:) failed to get feature supported domains: %@", v7, 0xCu);
    sub_1D99AF294(v8);
    MEMORY[0x1DA7405F0](v8, -1, -1);
    MEMORY[0x1DA7405F0](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];
  v12 = MEMORY[0x1E69E7CD0];

  return v11(v12);
}

uint64_t sub_1D9ABC7F4()
{
  v1 = sub_1D9C7D0AC();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D9ABD14C;

  return sub_1D9AB89E4(v1);
}

uint64_t sub_1D9ABC8A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9ABD154;

  return sub_1D9ABB7E0(a1, a2);
}

uint64_t sub_1D9ABC974()
{
  v1 = sub_1D9C7D0AC();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D9ABD14C;

  return sub_1D9AB9468(v1);
}

uint64_t sub_1D9ABCA28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D9ABD154;

  return sub_1D9ABCE80();
}

unint64_t sub_1D9ABCAC8()
{
  result = qword_1ECB52F58;
  if (!qword_1ECB52F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F58);
  }

  return result;
}

uint64_t sub_1D9ABCB1C()
{
  v1[2] = v0;
  v2 = sub_1D9C7D8DC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9ABCBE8, 0, 0);
}

uint64_t sub_1D9ABCBE8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  static Logger.argos.getter(v2);
  sub_1D9A3E0E0(v1);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = sub_1D9C7D8BC();
  v7 = sub_1D9C7E08C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D9962000, v6, v7, "fetchEnabledDomains(key:) returns default fetchEnabledDomains()", v8, 2u);
    MEMORY[0x1DA7405F0](v8, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[3];

  v5(v9, v10);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1D9ABCD44;

  return sub_1D9ABA81C();
}

uint64_t sub_1D9ABCD44(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D9ABCE80()
{
  v1 = sub_1D9C7D8DC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9ABCF3C, 0, 0);
}

uint64_t sub_1D9ABCF3C()
{
  static Logger.argos.getter(v0[4]);
  v1 = sub_1D9C7D8BC();
  v2 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D9962000, v1, v2, "fetchEnabledDomains(key:) is not implemented for EncryptedVisualSearch and should never be called", v3, 2u);
    MEMORY[0x1DA7405F0](v3, -1, -1);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];
  v8 = MEMORY[0x1E69E7CD0];

  return v7(v8);
}

unint64_t sub_1D9ABD044()
{
  result = qword_1EDD34DE8;
  if (!qword_1EDD34DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD34DE8);
  }

  return result;
}

uint64_t sub_1D9ABD098(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9ABD0F4()
{
  result = qword_1ECB52F70;
  if (!qword_1ECB52F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F70);
  }

  return result;
}

uint64_t type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig()
{
  result = qword_1EDD2AE70;
  if (!qword_1EDD2AE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9ABD1CC()
{
  sub_1D9ABD258();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9ABD258()
{
  if (!qword_1EDD2A700)
  {
    v0 = sub_1D9C7DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2A700);
    }
  }
}

uint64_t sub_1D9ABD2A8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB713D8);
  __swift_project_value_buffer(v0, qword_1ECB713D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scenenet_label_allowlist";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "max_num_labels";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9ABD470()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D58C();
    }

    else if (result == 2)
    {
      sub_1D9C7D55C();
    }
  }

  return result;
}

uint64_t sub_1D9ABD4FC()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D72C(), !v1))
  {
    if (!v0[2] || (result = sub_1D9C7D78C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig();
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9ABD5A4@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9ABD620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9ABDA04(&qword_1ECB52F90, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9ABD69C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB50C20 != -1)
  {
    swift_once();
  }

  v2 = sub_1D9C7D84C();
  v3 = __swift_project_value_buffer(v2, qword_1ECB713D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D9ABD744(uint64_t a1)
{
  v2 = sub_1D9ABDA04(&qword_1ECB51680, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9ABD7B0()
{
  sub_1D9ABDA04(&qword_1ECB51680, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9ABD82C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A31C70(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9ABDA04(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9ABDA04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9ABDA50(uint64_t a1, double a2, double a3)
{
  if (sub_1D9C7DD7C() >= a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = -180.0;
  v10 = 180.0;
  v11 = -90.0;
  v12 = 90.0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 *= 2;
    if (v8)
    {
      if ((v10 + v9) * 0.5 >= a3)
      {
        v10 = (v10 + v9) * 0.5;
      }

      else
      {
        v7 |= 1uLL;
        v9 = (v10 + v9) * 0.5;
      }
    }

    else if ((v12 + v11) * 0.5 >= a2)
    {
      v12 = (v12 + v11) * 0.5;
    }

    else
    {
      v7 |= 1uLL;
      v11 = (v12 + v11) * 0.5;
    }

    if (__OFADD__(v6++, 1))
    {
      break;
    }

    if (v6 == 5)
    {
      v18 = sub_1D9C7DD7C();
      if (v18)
      {
        v19 = v18;
        if (v18 < 1)
        {
          v20 = v13;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668);
          v20 = swift_allocObject();
          v21 = _swift_stdlib_malloc_size(v20);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 17;
          }

          v20[2] = v19;
          v20[3] = 2 * (v22 >> 4);
        }

        if (v19 < 1)
        {
          __break(1u);
          break;
        }

        v23 = sub_1D9C7DDDC();
        if (!v24)
        {
          goto LABEL_35;
        }

        v25 = 4;
        while (1)
        {
          v26 = &v20[v25];
          *v26 = v23;
          v26[1] = v24;
          if (!--v19)
          {
            break;
          }

          v25 += 2;
          v23 = sub_1D9C7DDDC();
          if (!v24)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = v13;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (v7 >= v20[2])
      {
        __break(1u);
        return 0;
      }

      v14 = &v20[2 * v7];
      v15 = v14[4];
      v16 = v14[5];

      MEMORY[0x1DA73DF80](v15, v16);

      v6 = 0;
      v7 = 0;
    }

    v8 ^= 1u;
    if (sub_1D9C7DD7C() >= a1)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  __break(1u);
  return result;
}

VisualLookUp::R2Vector __swiftcall R2Vector.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

Swift::Double __swiftcall R2Vector.get(index:)(Swift::Int index)
{
  v2 = v1 + 1;
  if (!index)
  {
    v2 = v1;
  }

  return *v2;
}

Swift::Double __swiftcall R2Vector.crossProd(_:)(VisualLookUp::R2Vector a1)
{
  v3 = vmulq_f64(vextq_s8(*v1, *v1, 8uLL), *v2);
  *&result = *&vsubq_f64(v3, vdupq_laneq_s64(v3, 1));
  return result;
}

BOOL sub_1D9ABDD78(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 >= *a1)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

BOOL sub_1D9ABDDF0(double *a1, double *a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a1 >= *a2)
  {
    return a2[1] >= a1[1];
  }

  return 1;
}

BOOL sub_1D9ABDE2C(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a2 >= *a1)
  {
    return a1[1] >= a2[1];
  }

  return 1;
}

BOOL sub_1D9ABDE68(double *a1, double *a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a1 >= *a2)
  {
    return a2[1] < a1[1];
  }

  return 0;
}

float64x2_t + infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

{
  result = vaddq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

float64x2_t - infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

{
  result = vsubq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

float64x2_t * infix(_:_:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  result = vmulq_n_f64(*a1, a3);
  *a2 = result;
  return result;
}

{
  v3 = a1[1].f64[0] * a3;
  result = vmulq_n_f64(*a1, a3);
  *a2 = result;
  a2[1].f64[0] = v3;
  return result;
}

{
  result = vmulq_n_f64(*a1, a3);
  *a2 = result;
  return result;
}

double × infix(_:_:)(float64x2_t *a1, int8x16_t *a2)
{
  v2 = vmulq_f64(*a1, vextq_s8(*a2, *a2, 8uLL));
  *&result = *&vsubq_f64(v2, vdupq_laneq_s64(v2, 1));
  return result;
}

unint64_t sub_1D9ABDF48()
{
  result = qword_1ECB52F98;
  if (!qword_1ECB52F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52F98);
  }

  return result;
}

uint64_t sub_1D9ABDFAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  sub_1D9B24AE8(&v19);
  sub_1D9ABFE2C(v11, type metadata accessor for MLModelInfo);
  v28[4] = v20[3];
  v28[5] = v20[4];
  v28[6] = v20[5];
  v28[0] = v19;
  v28[1] = v20[0];
  v28[2] = v20[1];
  v28[3] = v20[2];
  if (*&v20[0])
  {
    v20[6] = v19;
    v24 = *(&v20[2] + 8);
    v25 = *(&v20[3] + 8);
    v26 = *(&v20[4] + 8);
    v21 = *&v20[0];
    v27 = *(&v20[5] + 1);
    v22 = *(v20 + 8);
    v23 = *(&v20[1] + 8);
    v13 = [a1 modelDescription];
    v14 = sub_1D9B77924(v13);

    sub_1D99A6AE0(v28, &qword_1ECB52FA8);
  }

  else
  {
    static Logger.argos.getter(v8);
    v15 = sub_1D9C7D8BC();
    v16 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D9962000, v15, v16, "metadata not present, unable to validate the detection model", v17, 2u);
      MEMORY[0x1DA7405F0](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D9ABE250@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  result = sub_1D9ABF7E0(&v7, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_1D9ABE284(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 8))(ObjectType, a2);
    a1 = sub_1D99AAB0C();
    sub_1D9ABFE2C(v8, type metadata accessor for MLModelInfo);
  }

  *a3 = a1;
}

uint64_t sub_1D9ABE360()
{
  sub_1D9ABE40C(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9ABE40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D9ABE470(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 40);
  if (!v5 || (v6 = *(v3 + 96), v49 = *(v3 + 24), v7 = *(v3 + 64), v51 = *(v3 + 48), v52 = v7, v53 = *(v3 + 80), v50 = v5, v54 = v6, v8 = *(v3 + 120), v55 = *(v3 + 104), v56 = v8, (v9 = *(v3 + 176)) == 0))
  {
    sub_1D99A182C();
    swift_allocError();
    *v14 = 0xD00000000000001CLL;
    *(v14 + 8) = 0x80000001D9CA8F80;
    *(v14 + 16) = 5;
    swift_willThrow();
    return;
  }

  v61 = a3;
  v12 = *(v3 + 168);

  v13 = sub_1D9C19E28();
  if (v4)
  {

    return;
  }

  v41 = v12;
  v42 = v13;
  if (*(v3 + 136))
  {
    sub_1D9C1947C(aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
    if (swift_dynamicCast())
    {
      v40 = v46[0];
      v15 = *(a1 + 3);
      v16 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v15);
      sub_1D9B7DE80(v15, v16, v46);
      v59[0] = 0x65447463656A626FLL;
      v59[1] = 0xEF6E6F6974636574;
      v59[2] = "ObjectDetector Model Execution";
      v59[3] = 30;
      v60 = 2;
      type metadata accessor for DurationMeasurement();
      swift_allocObject();

      v37 = sub_1D9AFD4B8(v59, a2);

      sub_1D9B7E0E0(*(a1 + 10));
      v18 = objc_allocWithZone(MEMORY[0x1E6984468]);
      *&aBlock[32] = sub_1D9ABF7C0;
      v45 = v37;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_1D9BD99E0;
      *&aBlock[24] = &block_descriptor_3;
      v19 = _Block_copy(aBlock);

      v20 = [v18 initWithModel:v40 completionHandler:v19];
      _Block_release(v19);
      [v20 setImageCropAndScaleOption_];
      v21 = a1[5];
      v22 = a1[6];
      v23 = a1[7];
      v24 = a1[8];
      v25 = v20;
      v64.origin.x = 0.0;
      v64.origin.y = 0.0;
      v64.size.width = 1.0;
      v64.size.height = 1.0;
      v62.origin.x = v21;
      v62.origin.y = v22;
      v62.size.width = v23;
      v62.size.height = v24;
      v63 = CGRectIntersection(v62, v64);
      [v25 setRegionOfInterest_];

      v26 = v48;
      v35 = v47;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9C85660;
      v28 = sub_1D99B47C8();
      *(inited + 32) = v25;
      v33 = v28;
      *(inited + 56) = v28;
      *(inited + 64) = &off_1F5530540;
      v34 = *(v26 + 8);
      v38 = v25;
      v34(inited, v35, v26);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0Tm(inited + 32);
      v57[0] = 0x65447463656A626FLL;
      v57[1] = 0xEF6E6F6974636574;
      v57[2] = "ObjectDetector Model Postprocess Results";
      v57[3] = 40;
      v58 = 2;
      swift_allocObject();

      sub_1D9AFD4B8(v57, a2);

      v43[3] = v33;
      v43[4] = &off_1F5530540;
      v43[0] = v38;
      v29 = v38;
      sub_1D9AED8B8(*&a1, v43, &v49, v42, aBlock);
      v30 = *aBlock;
      v36 = *&aBlock[24];
      v39 = *&aBlock[8];
      v31 = v45;
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      sub_1D9AFCCA4();

      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v32 = v61;
      *v61 = v41;
      v32[1] = v9;
      v32[2] = v30;
      *(v32 + 5) = v36;
      *(v32 + 3) = v39;
      v32[7] = v31;
      return;
    }
  }

  else
  {

    memset(aBlock, 0, sizeof(aBlock));
    sub_1D99A6AE0(aBlock, &qword_1ECB52FA0);
  }

  sub_1D99A182C();
  swift_allocError();
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  swift_willThrow();
}

uint64_t sub_1D9ABEAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  *&v60 = a2;
  *&v61 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v53 - v8;
  v10 = type metadata accessor for EspressoModel(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *(v5 + 40);
  if (!v16 || (v17 = *(v5 + 96), v67 = *(v5 + 24), v18 = *(v5 + 64), v69 = *(v5 + 48), v70 = v18, v71 = *(v5 + 80), v68 = v16, v72 = v17, v19 = *(v5 + 120), v73 = *(v5 + 104), v74 = v19, (v20 = *(v5 + 176)) == 0))
  {
    sub_1D99A182C();
    swift_allocError();
    *v24 = 0xD00000000000001CLL;
    *(v24 + 8) = 0x80000001D9CA8F80;
    *(v24 + 16) = 5;
    return swift_willThrow();
  }

  v77 = v15;
  v58 = v17;
  v59 = v53 - v14;
  v57 = a3;
  v21 = *(v5 + 168);

  v22 = sub_1D9C19E28();
  if (v4)
  {
  }

  v54 = v21;
  v55 = v20;
  v56 = v22;
  if (!*(v5 + 136))
  {

    memset(v62, 0, 40);
    sub_1D99A6AE0(v62, &qword_1ECB52FA0);
    (*(v77 + 56))(v9, 1, 1, v10);
LABEL_11:
    sub_1D99A6AE0(v9, &qword_1ECB50F30);
    sub_1D99A182C();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    swift_willThrow();
  }

  sub_1D9C1947C(v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38);
  v25 = swift_dynamicCast();
  v26 = v77;
  (*(v77 + 56))(v9, v25 ^ 1u, 1, v10);
  if ((*(v26 + 48))(v9, 1, v10) == 1)
  {

    goto LABEL_11;
  }

  v28 = v59;
  sub_1D99A18F0(v9, v59);
  v29 = v61;
  v30 = *(v61 + 24);
  v31 = *(v61 + 32);
  __swift_project_boxed_opaque_existential_1(v61, v30);
  sub_1D9B7DE80(v30, v31, v64);
  sub_1D9B7E0E0(*(v29 + 80));
  sub_1D99A1954(v28, v12);
  v77 = type metadata accessor for EspressoRequest(0);
  v32 = swift_allocObject();
  sub_1D99A1954(v12, v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model);
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = v58;
  v33 = v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
  *v33 = 0;
  *(v33 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v33 + 16) = _Q0;
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = 0;
  v39 = (v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
  *v39 = faiss::NormalizationTransform::~NormalizationTransform;
  v39[1] = 0;
  if (qword_1EDD349F0 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDD41F40;

  sub_1D9ABFE2C(v12, type metadata accessor for EspressoModel);
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v40;
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
  *(v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v60;
  v41 = (v32 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest);
  v42 = *(v29 + 56);
  *v41 = *(v29 + 40);
  v41[1] = v42;
  v43 = v65;
  v44 = v66;
  v53[1] = __swift_project_boxed_opaque_existential_1(v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52410);
  inited = swift_initStackObject();
  *(inited + 32) = v32;
  *(inited + 16) = xmmword_1D9C85660;
  *(inited + 56) = v77;
  *(inited + 64) = &off_1F5533560;
  v46 = *(v44 + 8);

  v58 = v32;

  v46(inited, v43, v44);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm(inited + 32);
  v75[0] = 0x65447463656A626FLL;
  v75[1] = 0xEF6E6F6974636574;
  v75[2] = "ObjectDetector Model Postprocess Results";
  v75[3] = 40;
  v76 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v47 = v60;

  sub_1D9AFD4B8(v75, v47);

  v63[3] = v77;
  v63[4] = &off_1F5533560;
  v63[0] = v58;

  sub_1D9AED8B8(*&v61, v63, &v67, v56, v62);
  v48 = v62[0];
  v60 = *&v62[3];
  v61 = *&v62[1];
  v49 = v62[5];
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  sub_1D9AFCCA4();

  sub_1D9ABFE2C(v59, type metadata accessor for EspressoModel);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v64);
  v50 = v57;
  v51 = v55;
  *v57 = v54;
  v50[1] = v51;
  v50[2] = v48;
  v52 = v61;
  *(v50 + 5) = v60;
  *(v50 + 3) = v52;
  v50[7] = v49;
  return result;
}