__n128 sub_10027B474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10027B498(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_10027B4E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027B550()
{
  result = type metadata accessor for DInitConfigSource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10027B5F0()
{
  sub_10027B664();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Config(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10027B664()
{
  if (!qword_1004AE7D0)
  {
    type metadata accessor for DInitConfigSource();
    sub_100003A94(&qword_1004AE4A8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1004AE7D0);
    }
  }
}

uint64_t sub_10027B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10027B728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10027B798(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10027B7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10027B7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10027B840(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10027B868(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_10027B884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10027B8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10027B940(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_10027BA60()
{
  result = qword_1004AE800;
  if (!qword_1004AE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE800);
  }

  return result;
}

unint64_t sub_10027BAB8()
{
  result = qword_1004AE808;
  if (!qword_1004AE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE808);
  }

  return result;
}

unint64_t sub_10027BB10()
{
  result = qword_1004AE810;
  if (!qword_1004AE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE810);
  }

  return result;
}

unint64_t sub_10027BB68()
{
  result = qword_1004AE818;
  if (!qword_1004AE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE818);
  }

  return result;
}

unint64_t sub_10027BBC0()
{
  result = qword_1004AE820;
  if (!qword_1004AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE820);
  }

  return result;
}

unint64_t sub_10027BC18()
{
  result = qword_1004AE828;
  if (!qword_1004AE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE828);
  }

  return result;
}

unint64_t sub_10027BC70()
{
  result = qword_1004AE830;
  if (!qword_1004AE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE830);
  }

  return result;
}

unint64_t sub_10027BCC8()
{
  result = qword_1004AE838;
  if (!qword_1004AE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE838);
  }

  return result;
}

unint64_t sub_10027BD20()
{
  result = qword_1004AE840;
  if (!qword_1004AE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE840);
  }

  return result;
}

unint64_t sub_10027BD78()
{
  result = qword_1004AE848;
  if (!qword_1004AE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE848);
  }

  return result;
}

unint64_t sub_10027BDD0()
{
  result = qword_1004AE850;
  if (!qword_1004AE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE850);
  }

  return result;
}

unint64_t sub_10027BE28()
{
  result = qword_1004AE858;
  if (!qword_1004AE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE858);
  }

  return result;
}

unint64_t sub_10027BE80()
{
  result = qword_1004AE860;
  if (!qword_1004AE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE860);
  }

  return result;
}

unint64_t sub_10027BED8()
{
  result = qword_1004AE868;
  if (!qword_1004AE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE868);
  }

  return result;
}

unint64_t sub_10027BF30()
{
  result = qword_1004AE870;
  if (!qword_1004AE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE870);
  }

  return result;
}

unint64_t sub_10027BF88()
{
  result = qword_1004AE878;
  if (!qword_1004AE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE878);
  }

  return result;
}

unint64_t sub_10027BFE0()
{
  result = qword_1004AE880;
  if (!qword_1004AE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE880);
  }

  return result;
}

unint64_t sub_10027C038()
{
  result = qword_1004AE888;
  if (!qword_1004AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE888);
  }

  return result;
}

unint64_t sub_10027C090()
{
  result = qword_1004AE890;
  if (!qword_1004AE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE890);
  }

  return result;
}

unint64_t sub_10027C0E8()
{
  result = qword_1004AE898;
  if (!qword_1004AE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE898);
  }

  return result;
}

unint64_t sub_10027C140()
{
  result = qword_1004AE8A0;
  if (!qword_1004AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8A0);
  }

  return result;
}

unint64_t sub_10027C198()
{
  result = qword_1004AE8A8;
  if (!qword_1004AE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8A8);
  }

  return result;
}

unint64_t sub_10027C1F0()
{
  result = qword_1004AE8B0;
  if (!qword_1004AE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8B0);
  }

  return result;
}

unint64_t sub_10027C248()
{
  result = qword_1004AE8B8;
  if (!qword_1004AE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8B8);
  }

  return result;
}

unint64_t sub_10027C2A0()
{
  result = qword_1004AE8C0;
  if (!qword_1004AE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8C0);
  }

  return result;
}

unint64_t sub_10027C2F8()
{
  result = qword_1004AE8C8;
  if (!qword_1004AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8C8);
  }

  return result;
}

unint64_t sub_10027C350()
{
  result = qword_1004AE8D0;
  if (!qword_1004AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8D0);
  }

  return result;
}

unint64_t sub_10027C3A8()
{
  result = qword_1004AE8D8;
  if (!qword_1004AE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8D8);
  }

  return result;
}

unint64_t sub_10027C400()
{
  result = qword_1004AE8E0;
  if (!qword_1004AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8E0);
  }

  return result;
}

unint64_t sub_10027C458()
{
  result = qword_1004AE8E8;
  if (!qword_1004AE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8E8);
  }

  return result;
}

unint64_t sub_10027C4B0()
{
  result = qword_1004AE8F0;
  if (!qword_1004AE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8F0);
  }

  return result;
}

unint64_t sub_10027C508()
{
  result = qword_1004AE8F8;
  if (!qword_1004AE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE8F8);
  }

  return result;
}

unint64_t sub_10027C560()
{
  result = qword_1004AE900;
  if (!qword_1004AE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE900);
  }

  return result;
}

unint64_t sub_10027C5B8()
{
  result = qword_1004AE908;
  if (!qword_1004AE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE908);
  }

  return result;
}

unint64_t sub_10027C610()
{
  result = qword_1004AE910;
  if (!qword_1004AE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE910);
  }

  return result;
}

unint64_t sub_10027C668()
{
  result = qword_1004AE918;
  if (!qword_1004AE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE918);
  }

  return result;
}

unint64_t sub_10027C6C0()
{
  result = qword_1004AE920;
  if (!qword_1004AE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE920);
  }

  return result;
}

unint64_t sub_10027C718()
{
  result = qword_1004AE928;
  if (!qword_1004AE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE928);
  }

  return result;
}

uint64_t sub_10027C76C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6172766ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10027C8C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12662 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12918 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10027C9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F756769626D61 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12662 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12918 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_10027CADC()
{
  result = qword_1004AE970;
  if (!qword_1004AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE970);
  }

  return result;
}

uint64_t sub_10027CB30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027CB68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CB80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CB98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027CBE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10027CC3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10027CC54()
{
  result = qword_1004AE980;
  if (!qword_1004AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE980);
  }

  return result;
}

uint64_t sub_10027CCA8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10027CCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027CD60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_10027CD8C()
{
  v1 = *v0;
  v2 = (*(**v0 + 192))();
  v3 = *(*v1 + 264);
  if (v2 < v3())
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v4._countAndFlagsBits = 0xD00000000000005FLL;
    v4._object = 0x800000010043ED70;
    String.append(_:)(v4);
    *__src = v3();
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);
LABEL_59:

    v67 = __dst[0];
    v68 = __dst[1];
    sub_1001E941C();
    v69 = swift_allocError();
    *v70 = v67;
    v70[1] = v68;
    v81 = v69;
    return swift_willThrow();
  }

  v6 = 0;
  do
  {
    v9 = *(&off_100485168 + v6++ + 32);
    switch(v9)
    {
      case 1:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v27 = __dst[1];

        sub_1001D711C(__dst);
        (*(*v1 + 592))(v27);
        goto LABEL_5;
      case 2:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v18 = __dst[2];
        v19 = __dst[3];
        v20 = __dst[4];
        v21 = __dst[5];
        v74[0] = __dst[2];
        v74[1] = __dst[3];
        v74[2] = __dst[4];
        v74[3] = __dst[5];
        v75 = __dst[6];
        sub_1001D7A24(__dst[2], __dst[3], __dst[4], __dst[5]);
        sub_1001D711C(__dst);
        (*(*v1 + 392))(v74);
        sub_1001D71F4(v18, v19, v20, v21);
        break;
      case 3:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v24 = __dst[7];
        v25 = __dst[8];
        sub_1001D6F74(__dst[7], __dst[8]);
        sub_1001D711C(__dst);
        (*(*v1 + 600))(v24, v25);
        v8 = sub_1001D6F88(v24, v25);
        break;
      case 4:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v76[2] = *&__src[104];
        v76[3] = *&__src[120];
        v76[4] = *&__src[136];
        v76[5] = *&__src[152];
        v76[0] = *&__src[72];
        v76[1] = *&__src[88];
        v16 = &qword_1004AB940;
        sub_100013E54(&__dst[9], v71, &qword_1004AB940);
        sub_1001D711C(__dst);
        (*(*v1 + 400))(v76);
        v17 = &__dst[9];
        goto LABEL_35;
      case 5:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v34 = __dst[21];

        sub_1001D711C(__dst);
        (*(*v1 + 408))(v34);
        goto LABEL_5;
      case 6:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v37 = __dst[22];

        sub_1001D711C(__dst);
        (*(*v1 + 416))(v37);
        goto LABEL_5;
      case 7:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v26 = __dst[23];

        sub_1001D711C(__dst);
        (*(*v1 + 424))(v26);
        goto LABEL_5;
      case 8:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 432))(LOBYTE(__dst[24]));
        break;
      case 9:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v77[4] = *&__src[264];
        v77[5] = *&__src[280];
        v77[6] = *&__src[296];
        v78 = *&__src[312];
        v77[0] = *&__src[200];
        v77[1] = *&__src[216];
        v77[2] = *&__src[232];
        v77[3] = *&__src[248];
        v16 = &qword_1004AB948;
        sub_100013E54(&__dst[25], v71, &qword_1004AB948);
        sub_1001D711C(__dst);
        (*(*v1 + 440))(v77);
        v17 = &__dst[25];
        goto LABEL_35;
      case 10:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 448))(LOWORD(__dst[40]));
        break;
      case 11:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v15 = __dst[41];

        sub_1001D711C(__dst);
        (*(*v1 + 456))(v15);
        goto LABEL_5;
      case 12:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 608))(__dst[42], LOBYTE(__dst[43]));
        break;
      case 13:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v79[2] = *&__src[384];
        v79[3] = *&__src[400];
        v80 = __src[416];
        v79[0] = *&__src[352];
        v79[1] = *&__src[368];
        v16 = &qword_1004AB950;
        sub_100013E54(&__dst[44], v71, &qword_1004AB950);
        sub_1001D711C(__dst);
        (*(*v1 + 464))(v79);
        v17 = &__dst[44];
LABEL_35:
        v8 = sub_100013F2C(v17, v16);
        break;
      case 14:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v14 = __dst[53];

        sub_1001D711C(__dst);
        (*(*v1 + 568))(v14);
        goto LABEL_5;
      case 15:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v22 = __dst[54];
        v23 = __dst[55];

        sub_1001D711C(__dst);
        (*(*v1 + 616))(v22, v23);
        goto LABEL_5;
      case 16:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v12 = __dst[56];
        v13 = __dst[57];

        sub_1001D711C(__dst);
        (*(*v1 + 624))(v12, v13);
        goto LABEL_5;
      case 17:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v29 = __dst[58];
        v30 = __dst[59];

        sub_1001D711C(__dst);
        (*(*v1 + 632))(v29, v30);
        goto LABEL_5;
      case 18:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v38 = __dst[60];
        v39 = __dst[61];

        sub_1001D711C(__dst);
        (*(*v1 + 640))(v38, v39);
        goto LABEL_5;
      case 19:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v44 = __dst[62];
        v45 = __dst[63];

        sub_1001D711C(__dst);
        (*(*v1 + 648))(v44, v45);
        goto LABEL_5;
      case 20:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v32 = __dst[64];
        v33 = __dst[65];

        sub_1001D711C(__dst);
        (*(*v1 + 656))(v32, v33);
        goto LABEL_5;
      case 21:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v35 = __dst[66];
        v36 = __dst[67];

        sub_1001D711C(__dst);
        (*(*v1 + 664))(v35, v36);
        goto LABEL_5;
      case 22:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 672))(LOBYTE(__dst[68]));
        break;
      case 23:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 472))(BYTE1(__dst[68]));
        break;
      case 24:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 480))(BYTE2(__dst[68]));
        break;
      case 25:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 504))(BYTE3(__dst[68]));
        break;
      case 26:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 488))(BYTE4(__dst[68]));
        break;
      case 27:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 496))(BYTE5(__dst[68]));
        break;
      case 28:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v48 = __dst[69];

        sub_1001D711C(__dst);
        (*(*v1 + 512))(v48);
        goto LABEL_5;
      case 29:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 520))(LOBYTE(__dst[70]));
        break;
      case 30:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 680))(BYTE1(__dst[70]));
        break;
      case 31:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v28 = __dst[71];
        sub_1001C8518(__dst[71]);
        sub_1001D711C(__dst);
        v71[0] = v28;
        (*(*v1 + 528))(v71);
        v8 = sub_1001C855C(v71[0]);
        break;
      case 32:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v40 = __dst[72];
        v41 = __dst[73];

        sub_1001D711C(__dst);
        (*(*v1 + 688))(v40, v41);
        goto LABEL_5;
      case 33:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 536))(LOBYTE(__dst[74]));
        break;
      case 34:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 544))(__dst[75], LOBYTE(__dst[76]));
        break;
      case 35:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[77];

        sub_1001D711C(__dst);
        (*(*v1 + 552))(v7);
        goto LABEL_5;
      case 36:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v10 = __dst[78];
        v11 = __dst[79];

        sub_1001D711C(__dst);
        (*(*v1 + 720))(v10, v11);
        goto LABEL_5;
      case 37:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 728))(__dst[80], LOBYTE(__dst[81]));
        break;
      case 38:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 560))(BYTE1(__dst[81]));
        break;
      case 39:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v42 = __dst[83];
        v43 = __dst[84];

        sub_1001D711C(__dst);
        (*(*v1 + 696))(v42, v43);
        goto LABEL_5;
      case 40:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 704))(__dst[85], LOBYTE(__dst[86]));
        break;
      case 41:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v31 = __dst[82];

        sub_1001D711C(__dst);
        (*(*v1 + 384))(v31);
        goto LABEL_5;
      case 42:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        v46 = __dst[89];
        v47 = __dst[90];

        sub_1001D711C(__dst);
        (*(*v1 + 712))(v46, v47);
LABEL_5:

        break;
      default:
        (*(*v1 + 216))(__src);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        v8 = (*(*v1 + 584))(LOBYTE(__dst[0]));
        break;
    }
  }

  while (v6 != 43);
  result = (*(*v1 + 240))(v8);
  if ((result & 1) == 0)
  {
    v81 = *(*v1 + 288);
    v50 = *(v81() + 16);

    if (v50)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0xE000000000000000;
      do
      {
        v55 = v53 + 1;
        __dst[0] = v52;
        __dst[1] = v54;
        v56._countAndFlagsBits = 10;
        v56._object = 0xE100000000000000;
        String.append(_:)(v56);
        *__src = v53 + 1;
        v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v57);

        v58._countAndFlagsBits = 8238;
        v58._object = 0xE200000000000000;
        String.append(_:)(v58);
        v59 = v81();
        if (v53 >= *(v59 + 16))
        {
          __break(1u);
          JUMPOUT(0x10027EAD0);
        }

        v60 = *(v59 + v51 + 32);
        v61 = *(v59 + v51 + 40);

        v62._countAndFlagsBits = v60;
        v62._object = v61;
        String.append(_:)(v62);

        v52 = __dst[0];
        v54 = __dst[1];
        v51 += 16;
        ++v53;
      }

      while (v50 != v55);
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    v63._countAndFlagsBits = 0xD00000000000002ELL;
    v63._object = 0x800000010043ED10;
    String.append(_:)(v63);
    v64._countAndFlagsBits = (*(*v1 + 168))();
    String.append(_:)(v64);

    v65._object = 0x800000010043ED40;
    v65._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v65);
    v66._countAndFlagsBits = v52;
    v66._object = v54;
    String.append(_:)(v66);
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_10027EB7C()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Apply.configuration);
  sub_1000270B4(v3, static Apply.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Apply.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Apply.configuration);
}

uint64_t static Apply.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Apply.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apply.source.getter()
{
  v1 = sub_1000039E8(&qword_1004AE988);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Argument.wrappedValue.getter();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10027EF00(uint64_t *a1)
{
  v2 = sub_1000039E8(&qword_1004AE988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = *a1;
  v7 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  Argument.wrappedValue.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10027F024(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100013E54(a1, &v9 - v6, &qword_1004AB540);
  sub_100013E54(v7, v5, &qword_1004AB540);
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  swift_endAccess();
  return sub_100013F2C(v7, &qword_1004AB540);
}

uint64_t Apply.source.setter(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB540);
  __chkstk_darwin(v2 - 8);
  sub_100013E54(a1, &v5 - v3, &qword_1004AB540);
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988);
  Argument.wrappedValue.setter();
  swift_endAccess();
  return sub_100013F2C(a1, &qword_1004AB540);
}

void (*Apply.source.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE988);
  *(v3 + 56) = Argument.wrappedValue.modify();
  return sub_10028ECC8;
}

uint64_t sub_10027F300()
{
  v0 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v4 - 8);
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376260;
  static NameSpecification.Element.short.getter();
  static NameSpecification.Element.long.getter();
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  NameSpecification.init(arrayLiteral:)();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v5 = type metadata accessor for ArgumentHelp();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  return Flag<A>.init(wrappedValue:name:help:)();
}

void (*Apply.system.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 56) = Flag.wrappedValue.modify();
  return sub_10028ECC8;
}

uint64_t Apply.timeout.getter()
{
  v1 = sub_1000039E8(&qword_1004AE9A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Option.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v7;
}

double sub_10027F784@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AE9A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  Option.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v10 = v13;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_10027F8B8()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t Apply.timeout.setter()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.timeout.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9A8);
  *(v3 + 56) = Option.wrappedValue.modify();
  return sub_10028ECC8;
}

uint64_t Apply.failureAction.getter()
{
  v1 = sub_1000039E8(&qword_1004AE9B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  Option.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v7[7];
}

uint64_t sub_10027FB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004AE9B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  Option.wrappedValue.getter();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v11[7];
  return result;
}

uint64_t sub_10027FCA4()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t Apply.failureAction.setter()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8);
  Option.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.failureAction.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE9B8);
  *(v3 + 56) = Option.wrappedValue.modify();
  return sub_10027FE38;
}

uint64_t sub_10027FE3C()
{
  v0 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v4 - 8);
  sub_1000039E8(&qword_1004AAD70);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.short.getter();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v5 = type metadata accessor for ArgumentHelp();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_1002800AC(uint64_t *a1)
{
  v3 = sub_1000039E8(&qword_1004AE998);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = *a1;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  Flag.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  return v9[7];
}

uint64_t sub_1002801C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = sub_1000039E8(&qword_1004AE998);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  Flag.wrappedValue.getter();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v13[7];
  return result;
}

uint64_t sub_1002802F4()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100280374()
{
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998);
  Flag.wrappedValue.setter();
  return swift_endAccess();
}

void (*Apply.quiet.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1000039E8(&qword_1004AE998);
  *(v3 + 56) = Flag.wrappedValue.modify();
  return sub_10028ECC8;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Apply.validate()()
{
  v1 = v0;
  v2 = sub_1000039E8(&qword_1004AE9B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_1000039E8(&qword_1004AE9A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  swift_beginAccess();
  (*(v7 + 16))(v9, v1 + v10, v6);
  Option.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  if ((v14 & 1) == 0)
  {
    static Duration.zero.getter();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v11, v2);
  Option.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (v15 > 1u)
  {
    if (v15 != 2)
    {
      return;
    }
  }

  else if (v15)
  {

    goto LABEL_11;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_11:
    type metadata accessor for ValidationError();
    sub_10028EB80(&qword_1004AB958, &type metadata accessor for ValidationError);
    swift_allocError();
    ValidationError.init(_:)();
    swift_willThrow();
  }
}

uint64_t sub_100280814()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Apply.run(on:)((v0 + 2));
}

uint64_t Apply.run(on:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = sub_1000039E8(&qword_1004AE488);
  v2[34] = swift_task_alloc();
  v4 = sub_1000039E8(&qword_1004AE9B8);
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  v5 = sub_1000039E8(&qword_1004AE998);
  v2[38] = v5;
  v2[39] = *(v5 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100280AFC, 0, 0);
}

uint64_t sub_100280AFC()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 232);
  v5 = os_transaction_create();
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  swift_beginAccess();
  v7 = *(v2 + 16);
  *(v0 + 344) = v7;
  *(v0 + 352) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v3);
  Flag.wrappedValue.getter();
  v8 = *(v2 + 8);
  *(v0 + 360) = v8;
  *(v0 + 368) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  if (*(v0 + 456) != 1)
  {
    goto LABEL_12;
  }

  v9 = *(v0 + 224);
  v10 = v9[3];
  v11 = v9[4];
  sub_10000E2A8(v9, v10);
  (*(v11 + 312))(v10, v11);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  sub_10000E2A8((v0 + 56), v13);
  if (qword_1004A9E90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FilePath();
  v15 = sub_1000270B4(v14, kDInitDoneFilepath);
  v16 = FileSystem.fileExists(at:)(v15, v13, v12);
  sub_100003C3C(v0 + 56);
  if (v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "darwin-init has already run, exiting", v20, 2u);
    }

    swift_unknownObjectRelease();

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
LABEL_12:
    v23 = *(v0 + 224);
    sub_100281FAC(v23);
    v24 = v23[3];
    v25 = v23[4];
    sub_10000E2A8(v23, v24);
    if ((*(v25 + 144))(v24, v25) & 1) != 0 || (v30 = v23[3], v31 = v23[4], sub_10000E2A8(*(v0 + 224), v30), ((*(v31 + 160))(v30, v31) & 1) == 0) && (v32 = v23[3], v33 = v23[4], sub_10000E2A8(*(v0 + 224), v32), ((*(v33 + 168))(v32, v33)))
    {
      if ((_s10DarwinInit16EngineeringSSHCAO19disableGlobalAccessSbyFZ_0() & 1) == 0)
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000270B4(v26, qword_1004B00F8);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "darwin-init failed to disable ESC SSH", v29, 2u);
        }
      }
    }

    v34 = v23[3];
    v35 = v23[4];
    sub_10000E2A8(*(v0 + 224), v34);
    if (((*(v35 + 56))(0x4F505F53555F6E65, 0xEB00000000584953, v34, v35) & 1) == 0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000270B4(v36, qword_1004B00F8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Unable to set locale", v39, 2u);
      }
    }

    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 280);
    v43 = *(v0 + 232);
    v44 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
    *(v0 + 376) = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
    swift_beginAccess();
    v45 = *(v41 + 16);
    *(v0 + 384) = v45;
    *(v0 + 392) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v40, v43 + v44, v42);
    Option.wrappedValue.getter();
    v46 = *(v41 + 8);
    *(v0 + 400) = v46;
    *(v0 + 408) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46(v40, v42);
    v47 = *(v0 + 457);
    if (v47 == 3)
    {
      v49 = v23[3];
      v48 = v23[4];
      sub_10000E2A8(*(v0 + 224), v49);
      if ((*(v48 + 144))(v49, v48))
      {
        LOBYTE(v47) = 0;
      }

      else
      {
        LOBYTE(v47) = 2;
      }
    }

    *(v0 + 458) = v47;
    swift_beginAccess();
    Option.wrappedValue.setter();
    swift_endAccess();
    v50 = swift_task_alloc();
    *(v0 + 416) = v50;
    *v50 = v0;
    v50[1] = sub_1002811D8;
    v51 = *(v0 + 224);

    return Apply.apply(on:)(v51);
  }
}

uint64_t sub_1002811D8()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_100281384;
  }

  else
  {
    v2 = sub_1002812EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002812EC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100281384()
{
  v50 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 432) = sub_1000270B4(v1, qword_1004B00F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "darwin-init apply failed: %@", v4, 0xCu);
    sub_100013F2C(v5, &qword_1004AA050);
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 344);
  v9 = *(v0 + 336);
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 232);

  v8(v10, v12 + v9, v11);
  Flag.wrappedValue.getter();
  v7(v10, v11);
  if (*(v0 + 459) == 1)
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 224);
    *(v0 + 168) = 0;
    *(v0 + 176) = 0xE000000000000000;
    *(v0 + 216) = v13;
    sub_1000039E8(&qword_1004AB0A0);
    _print_unlocked<A, B>(_:_:)();
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = v14[3];
    v18 = v14[4];
    sub_10000E2A8(v14, v17);
    (*(v18 + 312))(v17, v18);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    sub_10000E2A8((v0 + 16), v19);
    *(v0 + 184) = v15;
    *(v0 + 192) = v16;
    if (qword_1004A9EA0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for FilePath();
    v22 = sub_1000270B4(v21, kDInitStatusFilepath);
    v23 = sub_100191574();
    sub_1002FA684(v0 + 184, v22, v19, &type metadata for DarwinInitApplyStatus, v20, v23);

    sub_100003C3C(v0 + 16);
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 296);
  v26 = *(v0 + 280);
  (*(v0 + 384))(v25, *(v0 + 232) + *(v0 + 376), v26);
  Option.wrappedValue.getter();
  v24(v25, v26);
  v27 = *(v0 + 460);
  *(v0 + 461) = v27;
  if (v27 > 1)
  {
    if (v27 == 2)
    {
    }
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      *(v0 + 200) = *(v0 + 424);
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 208) >> 61)
        {
        }

        else
        {
          v29 = *(v0 + 272);
          v30 = *(v0 + 224);
          v31 = swift_projectBox();
          sub_100013E54(v31, v29, &qword_1004AE488);

          sub_100013F2C(v29, &qword_1004AB540);

          v32 = v30[3];
          v33 = v30[4];
          sub_10000E2A8(v30, v32);
          if ((*(v33 + 144))(v32, v33))
          {
            v34 = 0x28093E61EE400000;
            v35 = 195;
LABEL_24:
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v49 = v44;
              *v43 = 136315138;
              v45 = Duration.description.getter();
              v47 = sub_1000026C0(v45, v46, &v49);

              *(v43 + 4) = v47;
              _os_log_impl(&_mh_execute_header, v41, v42, "Sleeping for %s before running failure action.", v43, 0xCu);
              sub_100003C3C(v44);
            }

            static Clock<>.continuous.getter();
            v48 = swift_task_alloc();
            *(v0 + 440) = v48;
            *v48 = v0;
            v48[1] = sub_100281AFC;

            return sub_1002A872C(v34, v35, 0, 0, 1);
          }
        }
      }

      v34 = 0x40AAD21B3B700000;
      v35 = 3;
      goto LABEL_24;
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "No failure action specified, exiting...", v38, 2u);
  }

  type metadata accessor for ExitCode();
  sub_10028EB80(&qword_1004AE9D0, &type metadata accessor for ExitCode);
  swift_allocError();
  static ExitCode.failure.getter();
  swift_willThrow();

  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100281AFC()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v3 = sub_100281F04;
  }

  else
  {
    v3 = sub_100281C64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100281C64()
{
  v1 = *(v0 + 224);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000E2A8(v1, v2);
  if ((*(v3 + 144))(v2, v3) & 1) != 0 && (v4 = *(v0 + 224), v5 = v4[3], v6 = v4[4], sub_10000E2A8(v4, v5), ((*(v6 + 152))(v5, v6)))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Not running the failure action because a host is attached on the debug port.", v9, 2u);
    }

    type metadata accessor for ExitCode();
    sub_10028EB80(&qword_1004AE9D0, &type metadata accessor for ExitCode);
    swift_allocError();
    static ExitCode.failure.getter();
    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 461);
    v11 = *(v0 + 224);
    v12 = v11[3];
    v13 = v11[4];
    sub_10000E2A8(v11, v12);
    if (v10)
    {
      (*(v13 + 248))(v12, v13);
    }

    else
    {
      (*(v13 + 240))(v12, v13);
    }
  }

  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100281F04()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_100281FAC(void *a1)
{
  v2 = v1;
  v4 = sub_1000039E8(&qword_1004AE998);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  Flag.wrappedValue.getter();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Quiet mode enabled: suppressing stdout logging output";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_7:

    return;
  }

  v16 = stderr.getter();
  v17 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  v9(v7, v2 + v17, v4);
  Flag.wrappedValue.getter();
  v10(v7, v4);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_10000E2A8(a1, v18);
    v20 = (*(v19 + 256))(v18, v19);
    if (!v20)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000270B4(v29, qword_1004B00F8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_7;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Failed to fopen(/dev/console). Logging hook was NOT set.";
      goto LABEL_6;
    }

    v16 = v20;
  }

  static os_log_type_t.info.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10028EBD8;
  *(v23 + 24) = v21;
  *(v23 + 32) = 0;
  *(v23 + 40) = v22;
  aBlock[4] = sub_1001ECD80;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ECD90;
  aBlock[3] = &unk_100491BF8;
  v24 = _Block_copy(aBlock);

  v25 = os_log_set_hook();

  _Block_release(v24);
  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = sub_10028ECB4;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  swift_beginAccess();
  v28 = *(v22 + 16);
  *(v22 + 16) = v27;
  *(v22 + 24) = v26;
  sub_100031B5C(v28);
}

uint64_t Apply.apply(on:)(uint64_t a1)
{
  v2[143] = v1;
  v2[142] = a1;
  v3 = type metadata accessor for ContinuousClock();
  v2[144] = v3;
  v2[145] = *(v3 - 8);
  v2[146] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v2[147] = v4;
  v2[148] = *(v4 - 8);
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v5 = sub_1000039E8(&qword_1004AE9A8);
  v2[151] = v5;
  v2[152] = *(v5 - 8);
  v2[153] = swift_task_alloc();
  v6 = type metadata accessor for Config(0);
  v2[154] = v6;
  v7 = *(v6 - 8);
  v2[155] = v7;
  v2[156] = *(v7 + 64);
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v8 = sub_1000039E8(&qword_1004AE988);
  v2[159] = v8;
  v2[160] = *(v8 - 8);
  v2[161] = swift_task_alloc();
  sub_1000039E8(&qword_1004AB540);
  v2[162] = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE998);
  v2[163] = v9;
  v2[164] = *(v9 - 8);
  v2[165] = swift_task_alloc();

  return _swift_task_switch(sub_100282760, 0, 0);
}

uint64_t sub_100282760()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1136);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  Flag.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 258) = *(v0 + 257);
  v7 = v5[3];
  v8 = v5[4];
  sub_10000E2A8(v5, v7);
  (*(v8 + 312))(v7, v8);
  v9 = *(v0 + 880);
  v10 = *(v0 + 888);
  sub_10000E2A8((v0 + 856), v9);
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FilePath();
  *(v0 + 1328) = v11;
  v12 = sub_1000270B4(v11, kDInitPersistStorage);
  FileSystem.mkdir(_:)(v12, v9, v10);
  sub_100003C3C(v0 + 856);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1144);
  sub_100003B20(*(v0 + 1136), v0 + 768);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 760) = JSONDecoder.init()();
  *(v0 + 808) = 6;
  *(v0 + 816) = xmmword_100402E60;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0;
  v17 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  swift_beginAccess();
  (*(v14 + 16))(v13, v16 + v17, v15);
  Argument.wrappedValue.getter();
  (*(v14 + 8))(v13, v15);
  v18 = swift_task_alloc();
  *(v0 + 1336) = v18;
  *v18 = v0;
  v18[1] = sub_100282BC8;
  v19 = *(v0 + 1296);

  return ConfigLoader.load(from:)(v19);
}

uint64_t sub_100282BC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[168] = a1;
  v4[169] = v1;

  if (v1)
  {
    sub_100013F2C(v4[162], &qword_1004AB540);

    return _swift_task_switch(sub_10028486C, 0, 0);
  }

  else
  {
    sub_100013F2C(v4[162], &qword_1004AB540);
    v6 = swift_task_alloc();
    v4[170] = v6;
    *v6 = v5;
    v6[1] = sub_100282D88;
    v7 = v4[142];

    return Apply.prepare(configs:on:)((v4 + 33), a1, v7);
  }
}

uint64_t sub_100282D88()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {

    v2 = sub_100284958;
  }

  else
  {
    v2 = sub_100282EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100282EA4()
{
  v94 = v0;
  v1 = *(v0 + 1344);
  *(v0 + 256) = *(v0 + 504);
  v2 = *(v0 + 472);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 488);
  v3 = *(v0 + 408);
  *(v0 + 144) = *(v0 + 392);
  *(v0 + 160) = v3;
  v4 = *(v0 + 440);
  *(v0 + 176) = *(v0 + 424);
  *(v0 + 192) = v4;
  v5 = *(v0 + 344);
  *(v0 + 80) = *(v0 + 328);
  *(v0 + 96) = v5;
  v6 = *(v0 + 376);
  *(v0 + 112) = *(v0 + 360);
  *(v0 + 128) = v6;
  v7 = *(v0 + 280);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 32) = v7;
  v8 = *(v0 + 312);
  *(v0 + 48) = *(v0 + 296);
  *(v0 + 64) = v8;
  v9 = *(v1 + 16);
  *(v0 + 1376) = v9;
  if (v9)
  {
    v10 = *(v0 + 1240);
    *(v0 + 1384) = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
    *(v0 + 508) = *(v10 + 80);
    swift_beginAccess();
    *(v0 + 1392) = 0;
    v11 = *(v0 + 1344);
    if (*(v11 + 16))
    {
      v12 = *(v0 + 1264);
      v13 = *(v0 + 1232);
      sub_10028E9FC(v11 + ((*(v0 + 508) + 32) & ~*(v0 + 508)), v12, type metadata accessor for Config);
      v14 = v12 + *(v13 + 56);
      if (!*(v14 + 8) || !*(v14 + 24) || (, sub_100292FFC(), (v15 & 1) != 0))
      {
        v16 = *(v0 + 1224);
        v17 = *(v0 + 1216);
        v18 = *(v0 + 1208);
        (*(v17 + 16))(v16, *(v0 + 1144) + *(v0 + 1384), v18);
        Option.wrappedValue.getter();
        (*(v17 + 8))(v16, v18);
        if (*(v0 + 1064) == 1 && qword_1004A9F18 != -1)
        {
          swift_once();
        }
      }

      if (qword_1004A9F20 == -1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_25:
    v34 = type metadata accessor for Logger();
    sub_1000270B4(v34, qword_1004B00F8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v93[0] = v38;
      *v37 = 136315138;
      v39 = Duration.description.getter();
      v41 = sub_1000026C0(v39, v40, v93);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Effective timeout is %s", v37, 0xCu);
      sub_100003C3C(v38);
    }

    v92 = *(v0 + 258);
    v88 = *(v0 + 1256);
    v89 = *(v0 + 1264);
    v42 = *(v0 + 1200);
    v43 = *(v0 + 1192);
    v44 = *(v0 + 1184);
    v45 = *(v0 + 1176);
    v46 = *(v0 + 1168);
    v87 = *(v0 + 1136);
    v47 = (*(v0 + 508) + 40) & ~*(v0 + 508);
    v90 = *(v0 + 1144);
    v91 = (*(v0 + 1248) + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.advanced(by:)();
    v48 = *(v44 + 8);
    *(v0 + 1400) = v48;
    *(v0 + 1408) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48(v43, v45);
    static Clock<>.continuous.getter();
    sub_10028E9FC(v89, v88, type metadata accessor for Config);
    sub_100003B20(v87, v0 + 896);
    v49 = swift_allocObject();
    *(v0 + 1416) = v49;
    v49[2] = _swiftEmptyArrayStorage;
    v49[3] = _swiftEmptyArrayStorage;
    v49[4] = v90;
    sub_10028EA64(v88, v49 + v47, type metadata accessor for Config);
    sub_100003C88((v0 + 896), v49 + v91);
    v50 = v49 + ((v91 + 47) & 0xFFFFFFFFFFFFFFF8);
    v51 = *(v0 + 224);
    *(v50 + 12) = *(v0 + 208);
    *(v50 + 13) = v51;
    *(v50 + 14) = *(v0 + 240);
    v50[240] = *(v0 + 256);
    v52 = *(v0 + 160);
    *(v50 + 8) = *(v0 + 144);
    *(v50 + 9) = v52;
    v53 = *(v0 + 192);
    *(v50 + 10) = *(v0 + 176);
    *(v50 + 11) = v53;
    v54 = *(v0 + 96);
    *(v50 + 4) = *(v0 + 80);
    *(v50 + 5) = v54;
    v55 = *(v0 + 128);
    *(v50 + 6) = *(v0 + 112);
    *(v50 + 7) = v55;
    v56 = *(v0 + 32);
    *v50 = *(v0 + 16);
    *(v50 + 1) = v56;
    v57 = *(v0 + 64);
    *(v50 + 2) = *(v0 + 48);
    *(v50 + 3) = v57;
    v50[241] = v92;

    sub_10028DB38(v0 + 16, v0 + 512);
    v58 = swift_task_alloc();
    *(v0 + 1424) = v58;
    v58[2] = v42;
    v58[3] = v46;
    v58[4] = &unk_100402EB0;
    v58[5] = v49;
    v59 = swift_task_alloc();
    *(v0 + 1432) = v59;
    v60 = sub_1000039E8(&qword_1004AE9D8);
    *v59 = v0;
    v59[1] = sub_100283A20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1072, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_10028DB94, v58, v60);
  }

  v19 = *(v0 + 1368);
  v20 = sub_10024EF94(_swiftEmptyArrayStorage, v1);

  if ((v20 & 1) == 0)
  {
    sub_10028DBF4();
    swift_allocError();
    *v31 = 0xD00000000000001CLL;
    v31[1] = 0x80000001004403D0;
    swift_willThrow();
    goto LABEL_20;
  }

  v21 = *(v0 + 104);
  v22 = *(v0 + 105);
  if (v22 != 5)
  {
    v21 = *(v0 + 105);
  }

  if (v21 < 2u)
  {
    goto LABEL_59;
  }

  v23 = *(v0 + 81);
  if (v23 == 2)
  {
    LOBYTE(v23) = *(v0 + 80);
  }

  if (v23)
  {
LABEL_59:
    v24 = *(v0 + 1136);
    v25 = v24[3];
    v26 = v24[4];
    sub_10000E2A8(v24, v25);
    (*(v26 + 216))(v25, v26);
    if (v19)
    {
      v93[0] = 0;
      v93[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      *(v0 + 1104) = 0;
      *(v0 + 1112) = 0xE000000000000000;
      v27._countAndFlagsBits = 0xD00000000000002ELL;
      v27._object = 0x80000001004403F0;
      String.append(_:)(v27);
      *(v0 + 1128) = v19;
      sub_1000039E8(&qword_1004AB0A0);
      _print_unlocked<A, B>(_:_:)();
      v28 = *(v0 + 1104);
      v29 = *(v0 + 1112);
      sub_10028DBF4();
      swift_allocError();
      *v30 = v28;
      v30[1] = v29;
      swift_willThrow();

LABEL_20:
      sub_10028DBA0(v0 + 16);
      sub_1001C1C88(v0 + 760);
      goto LABEL_21;
    }
  }

  if (*(v0 + 258) == 1)
  {
    v61 = *(v0 + 1136);
    v62 = v61[3];
    v63 = v61[4];
    sub_10000E2A8(v61, v62);
    (*(v63 + 312))(v62, v63);
    v64 = *(v0 + 960);
    v65 = *(v0 + 968);
    sub_10000E2A8((v0 + 936), v64);
    *(v0 + 1088) = xmmword_1003772E0;
    if (qword_1004A9EA0 != -1)
    {
      swift_once();
    }

    v66 = sub_1000270B4(*(v0 + 1328), kDInitStatusFilepath);
    v67 = sub_100191574();
    sub_1002FA684(v0 + 1088, v66, v64, &type metadata for DarwinInitApplyStatus, v65, v67);
    if (v19)
    {
      sub_1001C1C88(v0 + 760);
      sub_10028DBA0(v0 + 16);
      sub_100003C3C(v0 + 936);
      goto LABEL_21;
    }

    sub_100003C3C(v0 + 936);
  }

  v68 = *(v0 + 33);
  if (v68 == 2)
  {
    LOBYTE(v68) = *(v0 + 32);
  }

  if (v68)
  {
    v69 = *(v0 + 1136);
    v70 = v69[3];
    v71 = v69[4];
    sub_10000E2A8(v69, v70);
    (*(v71 + 240))(v70, v71);
  }

  else if (v22 < 2 || v22 == 4)
  {
    v76 = *(v0 + 1136);
    v77 = v76[3];
    v78 = v76[4];
    sub_10000E2A8(v76, v77);
    (*(v78 + 232))(v22, v77, v78);
  }

  else
  {
    if (v22 != 5)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      sub_1000270B4(v79, qword_1004B00F8);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Skipping userspace-reboot by request of configuration", v82, 2u);

        sub_10028DBA0(v0 + 16);
      }

      else
      {
        sub_10028DBA0(v0 + 16);
      }

      sub_1001C1C88(v0 + 760);
      goto LABEL_21;
    }

    if (*(v0 + 258) == 1)
    {
      v72 = *(v0 + 1136);
      v73 = v72[3];
      v74 = v72[4];
      sub_10000E2A8(v72, v73);
      v75 = (*(v74 + 224))(v73, v74);
      if (v75 != 5)
      {
        v83 = *(v0 + 1136);
        v84 = v83[3];
        v85 = v83[4];
        v86 = v75;
        sub_10000E2A8(v83, v84);
        (*(v85 + 232))(v86, v84, v85);
      }
    }
  }

  sub_1001C1C88(v0 + 760);
  sub_10028DBA0(v0 + 16);
LABEL_21:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100283A20()
{
  v2 = *v1;
  *(*v1 + 1440) = v0;

  if (v0)
  {

    v3 = sub_100284710;
  }

  else
  {
    v4 = *(v2 + 1400);
    v5 = *(v2 + 1200);
    v6 = *(v2 + 1176);
    v7 = *(v2 + 1168);
    v8 = *(v2 + 1160);
    v9 = *(v2 + 1152);

    *(v2 + 1448) = *(v2 + 1072);
    (*(v8 + 8))(v7, v9);
    v4(v5, v6);
    v3 = sub_100283BC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100283BC8()
{
  v92 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1392) + 1;
  sub_1001F6788(*(v0 + 1264), type metadata accessor for Config);
  v3 = *(v0 + 1456);
  if (v2 == v1)
  {

    v4 = *(v0 + 1440);
    v5 = sub_10024EF94(*(v0 + 1448), *(v0 + 1344));

    if ((v5 & 1) == 0)
    {
      sub_10028DBF4();
      swift_allocError();
      *v26 = 0xD00000000000001CLL;
      v26[1] = 0x80000001004403D0;
      swift_willThrow();
      goto LABEL_18;
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 105);
    if (v7 != 5)
    {
      v6 = *(v0 + 105);
    }

    if (v6 >= 2u)
    {
      v29 = *(v0 + 81);
      if (v29 == 2)
      {
        if ((*(v0 + 80) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v29 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v8 = *(v0 + 1136);
    v9 = v8[3];
    v10 = v8[4];
    sub_10000E2A8(v8, v9);
    (*(v10 + 216))(v9, v10);
    if (v4)
    {
      v91[0] = 0;
      v91[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      *(v0 + 1104) = 0;
      *(v0 + 1112) = 0xE000000000000000;
      v11._countAndFlagsBits = 0xD00000000000002ELL;
      v11._object = 0x80000001004403F0;
      String.append(_:)(v11);
      *(v0 + 1128) = v4;
      sub_1000039E8(&qword_1004AB0A0);
      _print_unlocked<A, B>(_:_:)();
      v12 = *(v0 + 1104);
      v13 = *(v0 + 1112);
      sub_10028DBF4();
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_willThrow();

LABEL_18:
      sub_10028DBA0(v0 + 16);
      sub_1001C1C88(v0 + 760);
      goto LABEL_19;
    }

LABEL_33:
    if (*(v0 + 258) == 1)
    {
      v57 = *(v0 + 1136);
      v58 = v57[3];
      v59 = v57[4];
      sub_10000E2A8(v57, v58);
      (*(v59 + 312))(v58, v59);
      v60 = *(v0 + 960);
      v61 = *(v0 + 968);
      sub_10000E2A8((v0 + 936), v60);
      *(v0 + 1088) = xmmword_1003772E0;
      if (qword_1004A9EA0 != -1)
      {
        swift_once();
      }

      v62 = sub_1000270B4(*(v0 + 1328), kDInitStatusFilepath);
      v63 = sub_100191574();
      sub_1002FA684(v0 + 1088, v62, v60, &type metadata for DarwinInitApplyStatus, v61, v63);
      if (v4)
      {
        sub_1001C1C88(v0 + 760);
        sub_10028DBA0(v0 + 16);
        sub_100003C3C(v0 + 936);
        goto LABEL_19;
      }

      sub_100003C3C(v0 + 936);
    }

    v64 = *(v0 + 33);
    if (v64 == 2)
    {
      LOBYTE(v64) = *(v0 + 32);
    }

    if (v64)
    {
      v65 = *(v0 + 1136);
      v66 = v65[3];
      v67 = v65[4];
      sub_10000E2A8(v65, v66);
      (*(v67 + 240))(v66, v67);
    }

    else if (v7 < 2 || v7 == 4)
    {
      v72 = *(v0 + 1136);
      v73 = v72[3];
      v74 = v72[4];
      sub_10000E2A8(v72, v73);
      (*(v74 + 232))(v7, v73, v74);
    }

    else
    {
      if (v7 != 5)
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_1000270B4(v75, qword_1004B00F8);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&_mh_execute_header, v76, v77, "Skipping userspace-reboot by request of configuration", v78, 2u);

          sub_10028DBA0(v0 + 16);
        }

        else
        {
          sub_10028DBA0(v0 + 16);
        }

        sub_1001C1C88(v0 + 760);
        goto LABEL_19;
      }

      if (*(v0 + 258) == 1)
      {
        v68 = *(v0 + 1136);
        v69 = v68[3];
        v70 = v68[4];
        sub_10000E2A8(v68, v69);
        v71 = (*(v70 + 224))(v69, v70);
        if (v71 != 5)
        {
          v79 = *(v0 + 1136);
          v80 = v79[3];
          v81 = v79[4];
          v82 = v71;
          sub_10000E2A8(v79, v80);
          (*(v81 + 232))(v82, v80, v81);
        }
      }
    }

    sub_1001C1C88(v0 + 760);
    sub_10028DBA0(v0 + 16);
LABEL_19:

    v27 = *(v0 + 8);

    return v27();
  }

  v15 = *(v0 + 1448);
  v16 = *(v0 + 1392) + 1;
  *(v0 + 1392) = v16;
  v17 = *(v0 + 1344);
  if (v16 >= *(v17 + 16))
  {
    __break(1u);
  }

  else
  {
    v89 = v15;
    v90 = v3;
    v18 = *(v0 + 1264);
    v19 = *(v0 + 1232);
    sub_10028E9FC(v17 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 1240) + 72) * v16, v18, type metadata accessor for Config);
    v20 = v18 + *(v19 + 56);
    if (*(v20 + 8))
    {
      v21 = *(v20 + 24) == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21 || (, sub_100292FFC(), (v22 & 1) != 0))
    {
      v23 = *(v0 + 1224);
      v24 = *(v0 + 1216);
      v25 = *(v0 + 1208);
      (*(v24 + 16))(v23, *(v0 + 1144) + *(v0 + 1384), v25);
      Option.wrappedValue.getter();
      (*(v24 + 8))(v23, v25);
      if (*(v0 + 1064) == 1 && qword_1004A9F18 != -1)
      {
        swift_once();
      }
    }

    if (qword_1004A9F20 == -1)
    {
      goto LABEL_27;
    }
  }

  swift_once();
LABEL_27:
  v30 = type metadata accessor for Logger();
  sub_1000270B4(v30, qword_1004B00F8);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v91[0] = v34;
    *v33 = 136315138;
    v35 = Duration.description.getter();
    v37 = sub_1000026C0(v35, v36, v91);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Effective timeout is %s", v33, 0xCu);
    sub_100003C3C(v34);
  }

  v88 = *(v0 + 258);
  v84 = *(v0 + 1256);
  v85 = *(v0 + 1264);
  v38 = *(v0 + 1200);
  v39 = *(v0 + 1192);
  v40 = *(v0 + 1184);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v43 = (*(v0 + 508) + 40) & ~*(v0 + 508);
  v86 = *(v0 + 1144);
  v87 = (*(v0 + 1248) + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = *(v0 + 1136);
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v44 = *(v40 + 8);
  *(v0 + 1400) = v44;
  *(v0 + 1408) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v39, v41);
  static Clock<>.continuous.getter();
  sub_10028E9FC(v85, v84, type metadata accessor for Config);
  sub_100003B20(v83, v0 + 896);
  v45 = swift_allocObject();
  *(v0 + 1416) = v45;
  v45[2] = v89;
  v45[3] = v90;
  v45[4] = v86;
  sub_10028EA64(v84, v45 + v43, type metadata accessor for Config);
  sub_100003C88((v0 + 896), v45 + v87);
  v46 = v45 + ((v87 + 47) & 0xFFFFFFFFFFFFFFF8);
  v47 = *(v0 + 224);
  *(v46 + 12) = *(v0 + 208);
  *(v46 + 13) = v47;
  *(v46 + 14) = *(v0 + 240);
  v46[240] = *(v0 + 256);
  v48 = *(v0 + 160);
  *(v46 + 8) = *(v0 + 144);
  *(v46 + 9) = v48;
  v49 = *(v0 + 192);
  *(v46 + 10) = *(v0 + 176);
  *(v46 + 11) = v49;
  v50 = *(v0 + 96);
  *(v46 + 4) = *(v0 + 80);
  *(v46 + 5) = v50;
  v51 = *(v0 + 128);
  *(v46 + 6) = *(v0 + 112);
  *(v46 + 7) = v51;
  v52 = *(v0 + 32);
  *v46 = *(v0 + 16);
  *(v46 + 1) = v52;
  v53 = *(v0 + 64);
  *(v46 + 2) = *(v0 + 48);
  *(v46 + 3) = v53;
  v46[241] = v88;

  sub_10028DB38(v0 + 16, v0 + 512);
  v54 = swift_task_alloc();
  *(v0 + 1424) = v54;
  v54[2] = v38;
  v54[3] = v42;
  v54[4] = &unk_100402EB0;
  v54[5] = v45;
  v55 = swift_task_alloc();
  *(v0 + 1432) = v55;
  v56 = sub_1000039E8(&qword_1004AE9D8);
  *v55 = v0;
  v55[1] = sub_100283A20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1072, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_10028DB94, v54, v56);
}

uint64_t sub_100284710()
{
  v1 = v0[175];
  v2 = v0[158];
  v3 = v0[150];
  v4 = v0[147];
  v5 = v0[146];
  v6 = v0[145];
  v7 = v0[144];

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10028DBA0((v0 + 2));
  sub_1001C1C88((v0 + 95));
  sub_1001F6788(v2, type metadata accessor for Config);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10028486C()
{
  sub_1001C1C88(v0 + 760);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100284958()
{
  sub_1001C1C88(v0 + 760);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Apply.prepare(configs:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[559] = v3;
  v4[558] = a3;
  v4[557] = a2;
  v4[556] = a1;
  v5 = sub_1000039E8(&qword_1004AE998);
  v4[560] = v5;
  v4[561] = *(v5 - 8);
  v4[562] = swift_task_alloc();
  v6 = type metadata accessor for FilePath();
  v4[563] = v6;
  v4[564] = *(v6 - 8);
  v4[565] = swift_task_alloc();
  v4[566] = swift_task_alloc();
  v4[567] = sub_1000039E8(&qword_1004ABB80);
  v4[568] = swift_task_alloc();
  v4[569] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[570] = v7;
  v4[571] = *(v7 - 8);
  v4[572] = swift_task_alloc();
  v4[573] = swift_task_alloc();
  v8 = type metadata accessor for Config(0);
  v4[574] = v8;
  v4[575] = *(v8 - 8);
  v4[576] = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE9E8);
  v4[577] = v9;
  v4[578] = *(v9 - 8);
  v4[579] = swift_task_alloc();
  sub_1000039E8(&qword_1004AE9F0);
  v4[580] = swift_task_alloc();
  v4[581] = swift_task_alloc();

  return _swift_task_switch(sub_100284D3C, 0, 0);
}

uint64_t sub_100284D3C()
{
  v377 = v0;
  v1 = v0;
  static Validate.preflight(configs:)(*(v0 + 4456), (v0 + 16));
  v2 = *(v0 + 4464);
  memcpy((v0 + 744), (v0 + 16), 0x2D8uLL);
  sub_100013F2C(v0 + 744, &qword_1004AE9F8);
  v316 = (v0 + 3488);
  Globals.init()(v0 + 3488);
  v3 = v2[3];
  v4 = v2[4];
  sub_10000E2A8(v2, v3);
  v5 = (*(v4 + 224))(v3, v4);
  if (v5 != 5)
  {
    v6 = *(v0 + 3578);
    *(v0 + 3576) = v5;
    *(v0 + 3578) = v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  sub_10000E2A8(*(v0 + 4464), v8);
  if (((*(v7 + 208))(v8, v7) & 1) == 0)
  {
    *(v0 + 3528) = *(v0 + 3528);
    *(v0 + 3529) = 0;
  }

  v314 = v0 + 2000;
  v315 = v0 + 2248;
  v313 = v0 + 3736;
  v9 = *(v0 + 4624);
  v324 = *(v0 + 4616);
  v317 = *(v0 + 4600);
  v319 = *(v0 + 4592);
  v10 = *(v0 + 4568);
  v336 = *(v0 + 4544);
  v335 = *(v0 + 4536);
  v326 = *(v0 + 4608);
  v11 = *(v0 + 4456);
  *(v0 + 4408) = _swiftEmptyArrayStorage;
  v320 = (v9 + 48);
  v321 = (v9 + 56);
  v337 = v10;
  v334 = (v10 + 16);
  v322 = v11;

  v318 = 0;
  v12 = 0;
  v359 = v0;
  while (1)
  {
    v13 = *(v322 + 16);
    if (v12 == v13)
    {
      v14 = 1;
    }

    else
    {
      if (v12 >= v13)
      {
        __break(1u);
LABEL_180:
        swift_once();
        goto LABEL_120;
      }

      v15 = *(v1 + 4640);
      v16 = *(v1 + 4632);
      v17 = *(v1 + 4456) + ((*(v317 + 80) + 32) & ~*(v317 + 80)) + *(v317 + 72) * v12;
      v18 = *(v324 + 48);
      *v16 = v12;
      sub_10028E9FC(v17, v16 + v18, type metadata accessor for Config);
      sub_10003E154(v16, v15, &qword_1004AE9E8);
      v14 = 0;
      ++v12;
    }

    v19 = *(v1 + 4648);
    v20 = *(v1 + 4640);
    v21 = *(v1 + 4616);
    (*v321)(v20, v14, 1, v21);
    sub_10003E154(v20, v19, &qword_1004AE9F0);
    if ((*v320)(v19, 1, v21) == 1)
    {
      break;
    }

    v325 = v12;
    v22 = *(v1 + 4648);
    v23 = *v22;
    sub_10028EA64(v22 + *(v324 + 48), *(v1 + 4608), type metadata accessor for Config);
    v24 = *(v1 + 3512);
    v25 = *(v1 + 3520);
    v26 = *(v1 + 3528);
    v27 = *(v1 + 3529);
    v28 = *(v1 + 3530);

    swift_getAtKeyPath();
    v29 = *(v1 + 1732);
    if (v29 == 2 || (v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v27 != 2)
    {
      if ((v29 ^ v27))
      {

        sub_1000039E8(&qword_1004AEA18);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18);
        v323 = swift_allocError();
        *v249 = v24;
        *(v249 + 8) = v27 & 1;
        *(v249 + 16) = v23;
        *(v249 + 24) = v29 & 1;
        *(v249 + 32) = v25;
        swift_willThrow();
        *(v1 + 3512) = v24;
        *(v1 + 3520) = v25;
        *(v1 + 3528) = v26;
        *(v1 + 3529) = v27;
        *(v1 + 3530) = 1;
        goto LABEL_154;
      }

LABEL_16:

      goto LABEL_17;
    }

    v24 = v23;
    LOBYTE(v27) = v29;
LABEL_17:
    *(v1 + 3512) = v24;
    *(v1 + 3520) = v25;
    *(v1 + 3528) = v26;
    *(v1 + 3529) = v27;
    *(v1 + 3530) = v28;
    v30 = *(v1 + 3488);
    v31 = *(v1 + 3496);
    v32 = *(v1 + 3504);
    v33 = *(v1 + 3505);
    v34 = *(v1 + 3506);

    swift_getAtKeyPath();
    v35 = *(v1 + 1731);
    if (v35 == 2 || (v34 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v33 != 2)
    {
      if ((v35 ^ v33))
      {

        sub_1000039E8(&qword_1004AEA18);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18);
        v323 = swift_allocError();
        *v250 = v30;
        *(v250 + 8) = v33 & 1;
        *(v250 + 16) = v23;
        *(v250 + 24) = v35 & 1;
        *(v250 + 32) = v31;
        swift_willThrow();
        *(v1 + 3488) = v30;
        *(v1 + 3496) = v31;
        *(v1 + 3504) = v32;
        *(v1 + 3505) = v33;
        *(v1 + 3506) = 1;
        goto LABEL_154;
      }

LABEL_22:

      goto LABEL_23;
    }

    v30 = v23;
    LOBYTE(v33) = v35;
LABEL_23:
    *(v1 + 3488) = v30;
    *(v1 + 3496) = v31;
    *(v1 + 3504) = v32;
    *(v1 + 3505) = v33;
    *(v1 + 3506) = v34;
    v36 = *(v1 + 3536);
    v37 = *(v1 + 3544);
    v38 = *(v1 + 3552);
    v39 = *(v1 + 3553);
    v40 = *(v1 + 3554);

    swift_getAtKeyPath();
    v41 = *(v1 + 1730);
    if (v41 != 2 && (v40 & 1) != 0)
    {
      if (v39 == 2)
      {

        v36 = v23;
        LOBYTE(v39) = v41;
        goto LABEL_29;
      }

      if ((v41 ^ v39))
      {

        sub_1000039E8(&qword_1004AEA18);
        sub_10000E720(&qword_1004AEA20, &qword_1004AEA18);
        v323 = swift_allocError();
        *v251 = v36;
        *(v251 + 8) = v39 & 1;
        *(v251 + 16) = v23;
        *(v251 + 24) = v41 & 1;
        *(v251 + 32) = v37;
        swift_willThrow();
        *(v1 + 3536) = v36;
        *(v1 + 3544) = v37;
        *(v1 + 3552) = v38;
        *(v1 + 3553) = v39;
        *(v1 + 3554) = 1;
        goto LABEL_154;
      }
    }

LABEL_29:
    *(v1 + 3536) = v36;
    *(v1 + 3544) = v37;
    *(v1 + 3552) = v38;
    *(v1 + 3553) = v39;
    *(v1 + 3554) = v40;
    v42 = *(v1 + 3560);
    v43 = *(v1 + 3568);
    v44 = *(v1 + 3576);
    v45 = *(v1 + 3577);
    v46 = *(v1 + 3578);
    *&v361 = v42;
    *(&v361 + 1) = v43;
    LOBYTE(v362) = v44;
    BYTE1(v362) = v45;
    BYTE2(v362) = v46;

    swift_getAtKeyPath();
    v47 = *(v1 + 1729);
    if (v47 == 5)
    {
    }

    else
    {
      sub_100287D7C(v47, v23);

      v43 = *(&v361 + 1);
      v42 = v361;
      v44 = v362;
      v45 = BYTE1(v362);
      v46 = BYTE2(v362);
    }

    *(v1 + 3560) = v42;
    *(v1 + 3568) = v43;
    *(v1 + 3576) = v44;
    *(v1 + 3577) = v45;
    *(v1 + 3578) = v46;
    v48 = *(v1 + 3584);
    v49 = *(v1 + 3592);
    v50 = *(v1 + 3600);
    v51 = *(v1 + 3608);
    v52 = *(v1 + 3616);
    v53 = *(v1 + 3624);
    v54 = *(v1 + 3632);
    LOBYTE(v361) = *(v1 + 3632);

    sub_1001D6F74(v52, v53);
    swift_getAtKeyPath();
    v55 = *(v1 + 4336);
    v349 = v51;
    invalidationId = v23;
    if (v55 == 1)
    {
      v56 = v50;
      goto LABEL_46;
    }

    v57 = *(v1 + 4328);
    if (!v54)
    {
      goto LABEL_45;
    }

    if (v53)
    {
      if (v53 == 1)
      {
        v56 = v50;
        v48 = v23;
        v52 = *(v1 + 4328);
        v53 = *(v1 + 4336);
        goto LABEL_46;
      }

      if (!v55)
      {
        goto LABEL_138;
      }

      if (v52 == v57 && v53 == v55)
      {
        v57 = v52;
        v55 = v53;
      }

      else
      {
        v58 = *(v1 + 4328);
        v59 = *(v1 + 4336);
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v55 = v59;
        v61 = v60;
        v57 = v58;
        if ((v61 & 1) == 0)
        {
LABEL_138:
          v348 = v50;
          v222 = v57;
          v223 = v55;
          sub_1000039E8(&qword_1004AEA08);
          sub_10000E720(&qword_1004AEA10, &qword_1004AEA08);
          v1 = v359;
          v323 = swift_allocError();
          v224[4] = v222;
          v224[5] = v223;
          *v224 = v48;
          v224[1] = v52;
          v224[2] = v53;
          v224[3] = invalidationId;
          v224[6] = v49;
          swift_willThrow();
          sub_1001D6F74(v52, v53);

          v225 = v361;
          v226 = *(v359 + 3616);
          v227 = *(v359 + 3624);

          sub_1001D6F88(v226, v227);
          *(v359 + 3584) = v48;
          *(v359 + 3592) = v49;
          *(v359 + 3600) = v348;
          *(v359 + 3608) = v51;
          *(v359 + 3616) = v52;
          *(v359 + 3624) = v53;
          *(v359 + 3632) = v225;
LABEL_154:
          v252 = *(v1 + 4608);
          *&v361 = 0;
          *(&v361 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          *(v1 + 4360) = 0;
          *(v1 + 4368) = 0xE000000000000000;
          v253._object = 0x80000001004404D0;
          v253._countAndFlagsBits = 0xD00000000000001ALL;
          String.append(_:)(v253);
          *(v1 + 4440) = v323;
          sub_1000039E8(&qword_1004AB0A0);
          _print_unlocked<A, B>(_:_:)();
          v254 = *(v1 + 4360);
          v255 = *(v1 + 4368);
          sub_10028DBF4();
          swift_allocError();
          *v256 = v254;
          v256[1] = v255;
          swift_willThrow();

          sub_1001F6788(v252, type metadata accessor for Config);
          v257 = v316[13];
          *(v315 + 192) = v316[12];
          *(v315 + 208) = v257;
          *(v315 + 224) = v316[14];
          *(v315 + 240) = *(v316 + 240);
          v258 = v316[9];
          *(v315 + 128) = v316[8];
          *(v315 + 144) = v258;
          v259 = v316[11];
          *(v315 + 160) = v316[10];
          *(v315 + 176) = v259;
          v260 = v316[5];
          *(v315 + 64) = v316[4];
          *(v315 + 80) = v260;
          v261 = v316[7];
          *(v315 + 96) = v316[6];
          *(v315 + 112) = v261;
          v262 = v316[1];
          *v315 = *v316;
          *(v315 + 16) = v262;
          v263 = v316[3];
          *(v315 + 32) = v316[2];
          *(v315 + 48) = v263;
          sub_10028DBA0(v315);

          v264 = *(v1 + 8);
          goto LABEL_155;
        }
      }

LABEL_45:
      v56 = v50;
      sub_1001D6F88(v57, v55);
      goto LABEL_46;
    }

    if (v55)
    {
      goto LABEL_138;
    }

    v56 = v50;
    v53 = 0;
LABEL_46:
    v62 = *(v359 + 3616);
    v63 = *(v359 + 3624);

    sub_1001D6F88(v62, v63);
    *(v359 + 3584) = v48;
    *(v359 + 3592) = v49;
    *(v359 + 3600) = v56;
    *(v359 + 3608) = v349;
    *(v359 + 3616) = v52;
    *(v359 + 3624) = v53;
    *(v359 + 3632) = v54;
    v64 = *(v359 + 3696);
    v65 = *(v359 + 3704);
    v66 = *(v359 + 3712);
    v67 = *(v359 + 3720);
    v68 = *(v359 + 3728);
    *&v361 = v64;
    *(&v361 + 1) = v65;
    *&v362 = v66;
    *(&v362 + 1) = v67;
    LOBYTE(v363) = v68;

    sub_1001C8518(v67);
    swift_getAtKeyPath();
    v69 = *(v359 + 4416);
    if ((~v69 & 0xF000000000000007) != 0)
    {
      sub_1001C8518(*(v359 + 4416));
      v70 = invalidationId;
      sub_100287FB8(v69, invalidationId);
      sub_1001C855C(v69);
      sub_1001C855C(v69);
      v65 = *(&v361 + 1);
      v64 = v361;
      v67 = *(&v362 + 1);
      v66 = v362;
      v68 = v363;
    }

    else
    {
      sub_1001C855C(*(v359 + 4416));
      v70 = invalidationId;
    }

    v71 = *(v359 + 3720);

    sub_1001C855C(v71);
    *(v359 + 3696) = v64;
    *(v359 + 3704) = v65;
    *(v359 + 3712) = v66;
    *(v359 + 3720) = v67;
    *(v359 + 3728) = v68;
    v72 = *(v359 + 3640);
    v73 = *(v359 + 3648);
    v74 = *(v359 + 3656);
    v75 = *(v359 + 3664);
    v76 = *(v359 + 3672);
    v77 = *(v359 + 3680);
    LOBYTE(v360) = *(v359 + 3688);

    sub_1001D6F74(v76, v77);
    swift_getAtKeyPath();
    v78 = *(v359 + 4400);
    v350 = v360;
    if (v78 == 1)
    {
      v79 = v75;
      v80 = v74;
      goto LABEL_63;
    }

    v81 = *(v359 + 4392);
    if (!v360)
    {
      goto LABEL_62;
    }

    if (v77)
    {
      if (v77 == 1)
      {
        v79 = v75;
        v80 = v74;
        v72 = v70;
        v76 = *(v359 + 4392);
        v77 = *(v359 + 4400);
        goto LABEL_63;
      }

      if (!v78)
      {
        goto LABEL_139;
      }

      if (v76 == v81 && v77 == v78)
      {
        v81 = v76;
        v78 = v77;
      }

      else
      {
        v82 = *(v359 + 4392);
        v83 = v70;
        v84 = *(v359 + 4400);
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v78 = v84;
        v70 = v83;
        v86 = v85;
        v81 = v82;
        if ((v86 & 1) == 0)
        {
LABEL_139:
          v343 = v81;
          v345 = v78;
          sub_1000039E8(&qword_1004AEA08);
          v353 = v74;
          sub_10000E720(&qword_1004AEA10, &qword_1004AEA08);
          v323 = swift_allocError();
          v228[4] = v343;
          v228[5] = v345;
          *v228 = v72;
          v228[1] = v76;
          v228[2] = v77;
          v228[3] = v70;
          v228[6] = v73;
          swift_willThrow();
          sub_1001D6F74(v76, v77);

          invalidationIdd = v360;
          v229 = *(v359 + 3672);
          v230 = *(v359 + 3680);

          sub_1001D6F88(v229, v230);
          *(v359 + 3640) = v72;
          v1 = v359;
          *(v359 + 3648) = v73;
          *(v359 + 3656) = v353;
          *(v359 + 3664) = v75;
          *(v359 + 3672) = v76;
          *(v359 + 3680) = v77;
          *(v359 + 3688) = invalidationIdd;
          goto LABEL_154;
        }
      }

LABEL_62:
      v79 = v75;
      v80 = v74;
      sub_1001D6F88(v81, v78);
      goto LABEL_63;
    }

    if (v78)
    {
      goto LABEL_139;
    }

    v79 = v75;
    v80 = v74;
    v77 = 0;
LABEL_63:
    v1 = v359;
    v87 = *(v359 + 3672);
    v88 = *(v359 + 3680);

    sub_1001D6F88(v87, v88);
    *(v359 + 3640) = v72;
    *(v359 + 3648) = v73;
    *(v359 + 3656) = v80;
    *(v359 + 3664) = v79;
    *(v359 + 3672) = v76;
    *(v359 + 3680) = v77;
    *(v359 + 3688) = v350;
    memmove((v359 + 1736), (v326 + 216), 0x101uLL);
    if (sub_100220C40((v359 + 1736)) == 1)
    {
      v89 = _swiftEmptyArrayStorage;
    }

    else
    {
      v90 = *(v359 + 1976);
      if (v90)
      {
        v91 = *(v90 + 16);
        if (v91)
        {
          *&v361 = _swiftEmptyArrayStorage;

          sub_10031118C(0, v91, 0);
          v89 = _swiftEmptyArrayStorage;
          v92 = v90 + 64;
          v93 = _HashTable.startBucket.getter();
          v94 = 0;
          v327 = v90 + 72;
          v328 = v91;
          v330 = v90 + 64;
          v332 = v90;
          while ((v93 & 0x8000000000000000) == 0 && v93 < 1 << *(v90 + 32))
          {
            if ((*(v92 + 8 * (v93 >> 6)) & (1 << v93)) == 0)
            {
              goto LABEL_159;
            }

            v344 = v93 >> 6;
            v96 = *(v1 + 4552);
            v338 = v94;
            v340 = *(v90 + 36);
            v97 = *(v335 + 48);
            v346 = *(v1 + 4560);
            v351 = *(v1 + 4584);
            v98 = *(v1 + 4544);
            v99 = *(v90 + 56);
            v100 = (*(v90 + 48) + 16 * v93);
            v102 = *v100;
            v101 = v100[1];
            v103 = (type metadata accessor for Config.Cryptex.Cryptex(0) - 8);
            sub_10028E9FC(v99 + *(*v103 + 72) * v93, v96 + v97, type metadata accessor for Config.Cryptex.Cryptex);
            *v98 = v102;
            *(v336 + 8) = v101;
            v104 = v98 + *(v335 + 48);
            sub_10028EA64(v96 + v97, v104, type metadata accessor for Config.Cryptex.Cryptex);
            v105 = v104 + v103[12];
            v106 = sub_1000039E8(&qword_1004ACD08);
            (*v334)(v351, v105 + *(v106 + 44), v346);

            sub_100013F2C(v98, &qword_1004ABB80);
            *&v361 = v89;
            v108 = v89[2];
            v107 = v89[3];
            if (v108 >= v107 >> 1)
            {
              sub_10031118C(v107 > 1, v108 + 1, 1);
              v89 = v361;
            }

            v1 = v359;
            v109 = *(v359 + 4584);
            v110 = *(v359 + 4560);
            v89[2] = v108 + 1;
            (*(v337 + 32))(v89 + ((*(v337 + 80) + 32) & ~*(v337 + 80)) + *(v337 + 72) * v108, v109, v110);
            v90 = v332;
            v95 = 1 << *(v332 + 32);
            if (v93 >= v95)
            {
              goto LABEL_160;
            }

            v92 = v330;
            v111 = *(v330 + 8 * v344);
            if ((v111 & (1 << v93)) == 0)
            {
              goto LABEL_161;
            }

            if (v340 != *(v332 + 36))
            {
              goto LABEL_162;
            }

            v112 = v111 & (-2 << (v93 & 0x3F));
            if (v112)
            {
              v95 = __clz(__rbit64(v112)) | v93 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v113 = v344 << 6;
              v114 = (v327 + 8 * v344);
              v115 = v344 + 1;
              while (v115 < (v95 + 63) >> 6)
              {
                v117 = *v114++;
                v116 = v117;
                v113 += 64;
                ++v115;
                if (v117)
                {
                  sub_100220ACC(v93, v340, 0);
                  v95 = __clz(__rbit64(v116)) + v113;
                  goto LABEL_69;
                }
              }

              sub_100220ACC(v93, v340, 0);
            }

LABEL_69:
            v94 = v338 + 1;
            v93 = v95;
            if (v338 + 1 == v328)
            {

              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:

LABEL_164:
          v265 = *(v1 + 4496);
          v266 = *(v1 + 4488);
          v267 = *(v1 + 4480);
          v268 = *(v1 + 4472);
          v269 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
          swift_beginAccess();
          (*(v266 + 16))(v265, v268 + v269, v267);
          Flag.wrappedValue.getter();
          (*(v266 + 8))(v265, v267);
          v270 = v316;
          if (*(v1 + 1733) == 1)
          {
            v271 = Logger.logObject.getter();
            v272 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v271, v272))
            {
              v273 = swift_slowAlloc();
              *v273 = 0;
              _os_log_impl(&_mh_execute_header, v271, v272, "Committing secure config parameters", v273, 2u);
            }

            v274 = *(v1 + 3720);
            v275 = v274;
            if ((~v274 & 0xF000000000000007) == 0)
            {
              v275 = *(v1 + 3712);
            }

            *&v361 = v275;
            v276 = *(v1 + 3672);
            v277 = *(v1 + 3680);
            v278 = v276;
            v279 = v277;
            if (v277 == 1)
            {
              v279 = *(v1 + 3664);
              v278 = *(v1 + 3656);
            }

            v280 = *(v1 + 4464);
            sub_1001C8518(v274);
            sub_1001D6F74(v276, v277);
            sub_1001FA65C(&v361, v278, v279, v280);
            goto LABEL_177;
          }

LABEL_178:
          v281 = v270[13];
          v282 = v270[14];
          v283 = v270[11];
          *(v1 + 2936) = v270[12];
          *(v1 + 2952) = v281;
          *(v1 + 2968) = v282;
          v284 = v270[9];
          v285 = v270[10];
          v286 = v270[7];
          *(v1 + 2872) = v270[8];
          *(v1 + 2888) = v284;
          *(v1 + 2904) = v285;
          *(v1 + 2920) = v283;
          v287 = v270[5];
          v288 = v270[6];
          v289 = v270[3];
          *(v1 + 2808) = v270[4];
          *(v1 + 2824) = v287;
          *(v1 + 2840) = v288;
          *(v1 + 2856) = v286;
          v290 = v270[1];
          *(v1 + 2744) = *v270;
          *(v1 + 2760) = v290;
          v291 = v270[3];
          v293 = *v270;
          v292 = v270[1];
          v294 = v270[2];
          *(v1 + 2776) = v294;
          *(v1 + 2792) = v291;
          v295 = v270;
          v296 = *(v1 + 4448);
          *(v1 + 2984) = *(v295 + 240);
          *(v296 + 32) = v294;
          *(v296 + 48) = v289;
          *v296 = v293;
          *(v296 + 16) = v292;
          v297 = v295[4];
          v298 = v295[5];
          v299 = v295[7];
          *(v296 + 96) = v295[6];
          *(v296 + 112) = v299;
          *(v296 + 64) = v297;
          *(v296 + 80) = v298;
          v300 = v295[8];
          v301 = v295[9];
          v302 = v295[11];
          *(v296 + 160) = v295[10];
          *(v296 + 176) = v302;
          *(v296 + 128) = v300;
          *(v296 + 144) = v301;
          v303 = v295[12];
          v304 = v295[13];
          v305 = v295[14];
          *(v296 + 240) = *(v295 + 240);
          *(v296 + 208) = v304;
          *(v296 + 224) = v305;
          *(v296 + 192) = v303;
          v306 = v295[13];
          *(v1 + 2688) = v295[12];
          *(v1 + 2704) = v306;
          *(v1 + 2720) = v295[14];
          *(v1 + 2736) = *(v295 + 240);
          v307 = v295[9];
          *(v1 + 2624) = v295[8];
          *(v1 + 2640) = v307;
          v308 = v295[11];
          *(v1 + 2656) = v295[10];
          *(v1 + 2672) = v308;
          v309 = v295[5];
          *(v1 + 2560) = v295[4];
          *(v1 + 2576) = v309;
          v310 = v295[7];
          *(v1 + 2592) = v295[6];
          *(v1 + 2608) = v310;
          v311 = v295[1];
          *(v1 + 2496) = *v295;
          *(v1 + 2512) = v311;
          v312 = v295[3];
          *(v1 + 2528) = v295[2];
          *(v1 + 2544) = v312;
          sub_10028DB38(v1 + 2744, v1 + 2992);
          sub_10028DBA0(v1 + 2496);

          v264 = *(v1 + 8);
LABEL_155:

          return v264();
        }
      }

      v89 = _swiftEmptyArrayStorage;
    }

LABEL_86:
    sub_10034A574(v89);
    memmove((v1 + 1472), (v326 + 216), 0x101uLL);
    if (sub_100220C40((v1 + 1472)) != 1)
    {
      if (*(v1 + 1624))
      {
        v121 = *(v1 + 1672);
        if (v121)
        {
          v122 = *(v121 + 16);
          if (v122)
          {
            *&v361 = _swiftEmptyArrayStorage;

            sub_10031118C(0, v122, 0);
            v118 = _swiftEmptyArrayStorage;
            v123 = v121 + 64;
            v124 = _HashTable.startBucket.getter();
            v125 = 0;
            v329 = v121 + 72;
            v331 = v122;
            v339 = v121 + 64;
            v333 = v121;
            while ((v124 & 0x8000000000000000) == 0 && v124 < 1 << *(v121 + 32))
            {
              v127 = v124 >> 6;
              if ((*(v123 + 8 * (v124 >> 6)) & (1 << v124)) == 0)
              {
                goto LABEL_173;
              }

              v341 = v125;
              v128 = *(v1 + 4552);
              v342 = *(v121 + 36);
              v129 = *(v335 + 48);
              v347 = *(v1 + 4560);
              v352 = *(v1 + 4576);
              v130 = *(v1 + 4544);
              invalidationIdc = v118;
              v131 = *(v121 + 56);
              v132 = (*(v121 + 48) + 16 * v124);
              v134 = *v132;
              v133 = v132[1];
              v135 = (type metadata accessor for Config.Cryptex.Cryptex(0) - 8);
              sub_10028E9FC(v131 + *(*v135 + 72) * v124, v128 + v129, type metadata accessor for Config.Cryptex.Cryptex);
              *v130 = v134;
              *(v336 + 8) = v133;
              v136 = v130 + *(v335 + 48);
              v118 = invalidationIdc;
              sub_10028EA64(v128 + v129, v136, type metadata accessor for Config.Cryptex.Cryptex);
              v137 = v136 + v135[12];
              v138 = sub_1000039E8(&qword_1004ACD08);
              (*v334)(v352, v137 + *(v138 + 44), v347);

              sub_100013F2C(v130, &qword_1004ABB80);
              *&v361 = invalidationIdc;
              v140 = invalidationIdc[2];
              v139 = invalidationIdc[3];
              if (v140 >= v139 >> 1)
              {
                sub_10031118C(v139 > 1, v140 + 1, 1);
                v118 = v361;
              }

              v1 = v359;
              v141 = *(v359 + 4576);
              v142 = *(v359 + 4560);
              v118[2] = v140 + 1;
              (*(v337 + 32))(v118 + ((*(v337 + 80) + 32) & ~*(v337 + 80)) + *(v337 + 72) * v140, v141, v142);
              v121 = v333;
              v126 = 1 << *(v333 + 32);
              v123 = v339;
              if (v124 >= v126)
              {
                goto LABEL_174;
              }

              v143 = *(v339 + 8 * v127);
              if ((v143 & (1 << v124)) == 0)
              {
                goto LABEL_175;
              }

              if (v342 != *(v333 + 36))
              {
                goto LABEL_176;
              }

              v144 = v143 & (-2 << (v124 & 0x3F));
              if (v144)
              {
                v126 = __clz(__rbit64(v144)) | v124 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v145 = v127 << 6;
                v146 = (v329 + 8 * v127);
                v147 = v127 + 1;
                while (v147 < (v126 + 63) >> 6)
                {
                  v149 = *v146++;
                  v148 = v149;
                  v145 += 64;
                  ++v147;
                  if (v149)
                  {
                    sub_100220ACC(v124, v342, 0);
                    v126 = __clz(__rbit64(v148)) + v145;
                    goto LABEL_95;
                  }
                }

                sub_100220ACC(v124, v342, 0);
              }

LABEL_95:
              v125 = v341 + 1;
              v124 = v126;
              if (v341 + 1 == v331)
              {

                goto LABEL_88;
              }
            }

            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:

            v270 = v316;
            goto LABEL_178;
          }
        }
      }
    }

    v118 = _swiftEmptyArrayStorage;
LABEL_88:
    v119 = *(v1 + 4608);
    sub_10034A574(v118);
    v120 = *(v326 + 8 + *(v319 + 40));

    sub_1001F6788(v119, type metadata accessor for Config);
    v12 = v325;
    if (v120)
    {

      v318 = 1;
    }
  }

  if (v318)
  {
    v150 = *(v1 + 3576);
    v151 = *(v1 + 3577);
    v152 = v151 == 5 ? *(v1 + 3576) : *(v1 + 3577);
    v153 = v152 > 4;
    v154 = (1 << v152) & 0x13;
    if (v153 || v154 == 0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v240 = type metadata accessor for Logger();
      sub_1000270B4(v240, qword_1004B00F8);
      v241 = Logger.logObject.getter();
      v242 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&_mh_execute_header, v241, v242, "Setting USRAction to userReboot because featureFlags were specified and USR was not set", v243, 2u);
      }

      v244 = *(v1 + 3568);
      v245 = *(v1 + 3578);
      *&v361 = *(v1 + 3560);
      *(&v361 + 1) = v244;
      LOBYTE(v362) = v150;
      BYTE1(v362) = v151;
      BYTE2(v362) = v245;
      sub_100287D7C(4, -1);
      v246 = *(&v361 + 1);
      v247 = v362;
      v248 = BYTE2(v362);
      *(v1 + 3560) = v361;
      *(v1 + 3568) = v246;
      *(v1 + 3576) = v247;
      *(v1 + 3578) = v248;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    goto LABEL_180;
  }

LABEL_120:
  v156 = type metadata accessor for Logger();
  *(v1 + 4656) = sub_1000270B4(v156, qword_1004B00F8);
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v360 = v160;
    *v159 = 136315138;
    swift_beginAccess();
    v161 = v316[12];
    v162 = v316[13];
    v163 = v316[11];
    *(v313 + 192) = v161;
    *(v313 + 208) = v162;
    v164 = v316[13];
    *(v313 + 224) = v316[14];
    v166 = v316[8];
    v165 = v316[9];
    v167 = v316[7];
    *(v313 + 128) = v166;
    *(v313 + 144) = v165;
    v168 = v316[9];
    v170 = v316[10];
    v169 = v316[11];
    *(v313 + 160) = v170;
    *(v313 + 176) = v169;
    v172 = v316[4];
    v171 = v316[5];
    v173 = v316[3];
    *(v313 + 64) = v172;
    *(v313 + 80) = v171;
    v174 = v316[5];
    v176 = v316[6];
    v175 = v316[7];
    *(v313 + 96) = v176;
    *(v313 + 112) = v175;
    v177 = v316[1];
    *v313 = *v316;
    *(v313 + 16) = v177;
    v178 = v316[3];
    v180 = *v316;
    v179 = v316[1];
    v181 = v316[2];
    *(v313 + 32) = v181;
    *(v313 + 48) = v178;
    v373 = v161;
    v374 = v164;
    v375 = v316[14];
    v369 = v166;
    v370 = v168;
    v371 = v170;
    v372 = v163;
    v365 = v172;
    v366 = v174;
    v367 = v176;
    v368 = v167;
    v361 = v180;
    v362 = v179;
    *(v313 + 240) = *(v316 + 240);
    v376 = *(v316 + 240);
    v363 = v181;
    v364 = v173;
    sub_10028DB38(v313, v1 + 3984);
    v182 = Globals.description.getter();
    v184 = v183;
    v185 = v374;
    *(v314 + 192) = v373;
    *(v314 + 208) = v185;
    *(v314 + 224) = v375;
    *(v314 + 240) = v376;
    v186 = v370;
    *(v314 + 128) = v369;
    *(v314 + 144) = v186;
    v187 = v372;
    *(v314 + 160) = v371;
    *(v314 + 176) = v187;
    v188 = v366;
    *(v314 + 64) = v365;
    *(v314 + 80) = v188;
    v189 = v368;
    *(v314 + 96) = v367;
    *(v314 + 112) = v189;
    v190 = v362;
    *v314 = v361;
    *(v314 + 16) = v190;
    v191 = v364;
    *(v314 + 32) = v363;
    *(v314 + 48) = v191;
    sub_10028DBA0(v314);
    v192 = sub_1000026C0(v182, v184, &v360);

    *(v159 + 4) = v192;
    _os_log_impl(&_mh_execute_header, v157, v158, "Globals: %s", v159, 0xCu);
    sub_100003C3C(v160);
  }

  swift_beginAccess();
  v193 = *(v1 + 3616);
  v194 = *(v1 + 3624);
  v195 = v193;
  v196 = v194;
  if (v194 == 1)
  {
    v196 = *(v1 + 3608);
    v195 = *(v1 + 3600);
  }

  invalidationIda = v195;
  sub_1001D6F74(v193, v194);
  v197 = Logger.logObject.getter();
  v198 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&_mh_execute_header, v197, v198, "Verifying that cryptex cache only contains contents accessible to current workload...", v199, 2u);
  }

  type metadata accessor for CryptexCacheInvalidator();
  v200 = swift_allocObject();
  if (qword_1004A9F08 != -1)
  {
    swift_once();
  }

  v201 = *(v1 + 4528);
  v202 = *(v1 + 4520);
  v203 = v1;
  v204 = *(v1 + 4512);
  v205 = *(v203 + 4504);
  v206 = sub_1000270B4(v205, kDarwinInitCacheRootDirectory);
  v207 = OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir;
  v208 = *(v204 + 16);
  v208(v200 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_darwinInitCacheRootDir, v206, v205);
  swift_beginAccess();
  v209 = v200 + v207;
  v210 = v208;
  v208(v202, v209, v205);
  FilePath.appending(_:)();
  (*(v204 + 32))(v200 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_invalidationIdPath, v201, v205);
  if (qword_1004A9DE8 != -1)
  {
    swift_once();
  }

  v211 = *(v203 + 4504);
  v212 = sub_1000270B4(v211, static Cache<>.defaultCacheDirectoryPath);
  v208(v200 + OBJC_IVAR____TtC10DarwinInit23CryptexCacheInvalidator_cryptexCacheDir, v212, v211);
  v213.value._countAndFlagsBits = invalidationIda;
  v213.value._object = v196;
  CryptexCacheInvalidator.verify(invalidationId:)(v213);

  v1 = v203;
  if (v214)
  {
    *&v361 = 0;
    *(&v361 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(96);
    v215 = *(&v361 + 1);
    *(v203 + 4344) = v361;
    *(v203 + 4352) = v215;
    v216._countAndFlagsBits = 0xD00000000000005ELL;
    v216._object = 0x8000000100440470;
    String.append(_:)(v216);
    *(v203 + 4432) = v214;
    sub_1000039E8(&qword_1004AB0A0);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v218 = Logger.logObject.getter();
  v219 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    *v220 = 0;
    _os_log_impl(&_mh_execute_header, v218, v219, "Successfully enforced that cryptex cache only contains contents accessible to current workload", v220, 2u);
  }

  v221 = *(v203 + 3528);
  if (*(v203 + 3529) != 2)
  {
    v221 = *(v203 + 3529);
  }

  if (v221)
  {

    goto LABEL_164;
  }

  type metadata accessor for CryptexCacheDelegate();
  v231 = swift_allocObject();
  *(v203 + 4664) = v231;
  v232 = Logger.logObject.getter();
  v233 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    *v234 = 0;
    _os_log_impl(&_mh_execute_header, v232, v233, "Purge cache entries from previous workload", v234, 2u);
  }

  v235 = *(v203 + 4528);
  v236 = *(v203 + 4504);

  v210(v235, v212, v236);
  sub_1000039E8(&qword_1004AEA00);
  swift_allocObject();

  v237 = sub_1002A6784(v235, v231, 0);
  *(v203 + 4672) = v237;
  if (!v237)
  {
    goto LABEL_163;
  }

  v238 = *(v203 + 4408);
  *(v203 + 4680) = v238;
  invalidationIdb = (*(*v237 + 192) + **(*v237 + 192));
  v239 = swift_task_alloc();
  *(v203 + 4688) = v239;
  *v239 = v203;
  v239[1] = sub_1002871EC;

  return invalidationIdb(v238);
}

uint64_t sub_1002871EC()
{
  *(*v1 + 4696) = v0;

  if (v0)
  {
    v2 = sub_1002877B8;
  }

  else
  {

    v2 = sub_100287308;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100287308()
{
  v59 = v0;
  v1 = (v0 + 3488);

  v2 = *(v0 + 4696);
  v3 = *(v0 + 4496);
  v4 = *(v0 + 4488);
  v5 = *(v0 + 4480);
  v6 = *(v0 + 4472);
  v7 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v4 + 16))(v3, v6 + v7, v5);
  Flag.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  if (*(v0 + 1733) == 1)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Committing secure config parameters", v10, 2u);
    }

    v11 = *(v0 + 3720);
    v12 = v11;
    if ((~v11 & 0xF000000000000007) == 0)
    {
      v12 = *(v0 + 3712);
    }

    v58 = v12;
    v13 = *(v0 + 3672);
    v14 = *(v0 + 3680);
    v15 = v13;
    v16 = v14;
    if (v14 == 1)
    {
      v16 = *(v0 + 3664);
      v15 = *(v0 + 3656);
    }

    v17 = *(v0 + 4464);
    sub_1001C8518(v11);
    sub_1001D6F74(v13, v14);
    sub_1001FA65C(&v58, v15, v16, v17);
    if (v2)
    {

      v18 = *(v0 + 3696);
      *(v0 + 3432) = *(v0 + 3680);
      *(v0 + 3448) = v18;
      *(v0 + 3464) = *(v0 + 3712);
      *(v0 + 3480) = *(v0 + 3728);
      v19 = *(v0 + 3632);
      *(v0 + 3368) = *(v0 + 3616);
      *(v0 + 3384) = v19;
      v20 = *(v0 + 3664);
      *(v0 + 3400) = *(v0 + 3648);
      *(v0 + 3416) = v20;
      v21 = *(v0 + 3568);
      *(v0 + 3304) = *(v0 + 3552);
      *(v0 + 3320) = v21;
      v22 = *(v0 + 3600);
      *(v0 + 3336) = *(v0 + 3584);
      *(v0 + 3352) = v22;
      v23 = *(v0 + 3504);
      *(v0 + 3240) = *v1;
      *(v0 + 3256) = v23;
      v24 = *(v0 + 3536);
      *(v0 + 3272) = *(v0 + 3520);
      *(v0 + 3288) = v24;
      sub_10028DBA0(v0 + 3240);

      v25 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  v26 = *(v0 + 3696);
  v27 = *(v0 + 3712);
  v28 = *(v0 + 3664);
  *(v0 + 2936) = *(v0 + 3680);
  *(v0 + 2952) = v26;
  *(v0 + 2968) = v27;
  v29 = *(v0 + 3632);
  v30 = *(v0 + 3648);
  v31 = *(v0 + 3600);
  *(v0 + 2872) = *(v0 + 3616);
  *(v0 + 2888) = v29;
  *(v0 + 2904) = v30;
  *(v0 + 2920) = v28;
  v32 = *(v0 + 3568);
  v33 = *(v0 + 3584);
  v34 = *(v0 + 3536);
  *(v0 + 2808) = *(v0 + 3552);
  *(v0 + 2824) = v32;
  *(v0 + 2840) = v33;
  *(v0 + 2856) = v31;
  v35 = *(v0 + 3504);
  *(v0 + 2744) = *v1;
  *(v0 + 2760) = v35;
  v36 = *(v0 + 3536);
  v38 = *v1;
  v37 = *(v0 + 3504);
  v39 = *(v0 + 3520);
  *(v0 + 2776) = v39;
  *(v0 + 2792) = v36;
  v40 = *(v0 + 4448);
  *(v0 + 2984) = *(v0 + 3728);
  *(v40 + 32) = v39;
  *(v40 + 48) = v34;
  *v40 = v38;
  *(v40 + 16) = v37;
  v41 = *(v0 + 3552);
  v42 = *(v0 + 3568);
  v43 = *(v0 + 3600);
  *(v40 + 96) = *(v0 + 3584);
  *(v40 + 112) = v43;
  *(v40 + 64) = v41;
  *(v40 + 80) = v42;
  v44 = *(v0 + 3616);
  v45 = *(v0 + 3632);
  v46 = *(v0 + 3664);
  *(v40 + 160) = *(v0 + 3648);
  *(v40 + 176) = v46;
  *(v40 + 128) = v44;
  *(v40 + 144) = v45;
  v47 = *(v0 + 3680);
  v48 = *(v0 + 3696);
  v49 = *(v0 + 3712);
  *(v40 + 240) = *(v0 + 3728);
  *(v40 + 208) = v48;
  *(v40 + 224) = v49;
  *(v40 + 192) = v47;
  v50 = *(v0 + 3696);
  *(v0 + 2688) = *(v0 + 3680);
  *(v0 + 2704) = v50;
  *(v0 + 2720) = *(v0 + 3712);
  *(v0 + 2736) = *(v0 + 3728);
  v51 = *(v0 + 3632);
  *(v0 + 2624) = *(v0 + 3616);
  *(v0 + 2640) = v51;
  v52 = *(v0 + 3664);
  *(v0 + 2656) = *(v0 + 3648);
  *(v0 + 2672) = v52;
  v53 = *(v0 + 3568);
  *(v0 + 2560) = *(v0 + 3552);
  *(v0 + 2576) = v53;
  v54 = *(v0 + 3600);
  *(v0 + 2592) = *(v0 + 3584);
  *(v0 + 2608) = v54;
  v55 = *(v0 + 3504);
  *(v0 + 2496) = *v1;
  *(v0 + 2512) = v55;
  v56 = *(v0 + 3536);
  *(v0 + 2528) = *(v0 + 3520);
  *(v0 + 2544) = v56;
  sub_10028DB38(v0 + 2744, v0 + 2992);
  sub_10028DBA0(v0 + 2496);

  v25 = *(v0 + 8);
LABEL_12:

  return v25();
}

uint64_t sub_1002877B8()
{
  v56 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to purge cache entries from previous workload: %@", v3, 0xCu);
    sub_100013F2C(v4, &qword_1004AA050);
  }

  else
  {
  }

  v6 = (v0 + 3488);
  v7 = *(v0 + 4496);
  v8 = *(v0 + 4488);
  v9 = *(v0 + 4480);
  v10 = *(v0 + 4472);
  v11 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  (*(v8 + 16))(v7, v10 + v11, v9);
  Flag.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  if (*(v0 + 1733) == 1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Committing secure config parameters", v14, 2u);
    }

    v15 = *(v0 + 3720);
    v16 = v15;
    if ((~v15 & 0xF000000000000007) == 0)
    {
      v16 = *(v0 + 3712);
    }

    v55 = v16;
    v17 = *(v0 + 3672);
    v18 = *(v0 + 3680);
    v19 = v17;
    v20 = v18;
    if (v18 == 1)
    {
      v20 = *(v0 + 3664);
      v19 = *(v0 + 3656);
    }

    v21 = *(v0 + 4464);
    sub_1001C8518(v15);
    sub_1001D6F74(v17, v18);
    sub_1001FA65C(&v55, v19, v20, v21);
  }

  v22 = *(v0 + 3696);
  v23 = *(v0 + 3712);
  v24 = *(v0 + 3664);
  *(v0 + 2936) = *(v0 + 3680);
  *(v0 + 2952) = v22;
  *(v0 + 2968) = v23;
  v25 = *(v0 + 3632);
  v26 = *(v0 + 3648);
  v27 = *(v0 + 3600);
  *(v0 + 2872) = *(v0 + 3616);
  *(v0 + 2888) = v25;
  *(v0 + 2904) = v26;
  *(v0 + 2920) = v24;
  v28 = *(v0 + 3568);
  v29 = *(v0 + 3584);
  v30 = *(v0 + 3536);
  *(v0 + 2808) = *(v0 + 3552);
  *(v0 + 2824) = v28;
  *(v0 + 2840) = v29;
  *(v0 + 2856) = v27;
  v31 = *(v0 + 3504);
  *(v0 + 2744) = *v6;
  *(v0 + 2760) = v31;
  v32 = *(v0 + 3536);
  v34 = *v6;
  v33 = *(v0 + 3504);
  v35 = *(v0 + 3520);
  *(v0 + 2776) = v35;
  *(v0 + 2792) = v32;
  v36 = *(v0 + 4448);
  *(v0 + 2984) = *(v0 + 3728);
  *(v36 + 32) = v35;
  *(v36 + 48) = v30;
  *v36 = v34;
  *(v36 + 16) = v33;
  v37 = *(v0 + 3552);
  v38 = *(v0 + 3568);
  v39 = *(v0 + 3600);
  *(v36 + 96) = *(v0 + 3584);
  *(v36 + 112) = v39;
  *(v36 + 64) = v37;
  *(v36 + 80) = v38;
  v40 = *(v0 + 3616);
  v41 = *(v0 + 3632);
  v42 = *(v0 + 3664);
  *(v36 + 160) = *(v0 + 3648);
  *(v36 + 176) = v42;
  *(v36 + 128) = v40;
  *(v36 + 144) = v41;
  v43 = *(v0 + 3680);
  v44 = *(v0 + 3696);
  v45 = *(v0 + 3712);
  *(v36 + 240) = *(v0 + 3728);
  *(v36 + 208) = v44;
  *(v36 + 224) = v45;
  *(v36 + 192) = v43;
  v46 = *(v0 + 3696);
  *(v0 + 2688) = *(v0 + 3680);
  *(v0 + 2704) = v46;
  *(v0 + 2720) = *(v0 + 3712);
  *(v0 + 2736) = *(v0 + 3728);
  v47 = *(v0 + 3632);
  *(v0 + 2624) = *(v0 + 3616);
  *(v0 + 2640) = v47;
  v48 = *(v0 + 3664);
  *(v0 + 2656) = *(v0 + 3648);
  *(v0 + 2672) = v48;
  v49 = *(v0 + 3568);
  *(v0 + 2560) = *(v0 + 3552);
  *(v0 + 2576) = v49;
  v50 = *(v0 + 3600);
  *(v0 + 2592) = *(v0 + 3584);
  *(v0 + 2608) = v50;
  v51 = *(v0 + 3504);
  *(v0 + 2496) = *v6;
  *(v0 + 2512) = v51;
  v52 = *(v0 + 3536);
  *(v0 + 2528) = *(v0 + 3520);
  *(v0 + 2544) = v52;
  sub_10028DB38(v0 + 2744, v0 + 2992);
  sub_10028DBA0(v0 + 2496);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_100287D7C(uint64_t result, uint64_t a2)
{
  if (result != 5 && *(v2 + 18) == 1)
  {
    v3 = 7169394;
    v4 = *(v2 + 17);
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        if (v4 != 4)
        {
          *v2 = a2;
          *(v2 + 17) = result;
          return result;
        }

        v8 = 0xE700000000000000;
        v7 = 0x746C7561666564;
      }
    }

    else
    {
      v5 = 0x7665642D6D6572;
      v6 = 0xE400000000000000;
      if (v4 == 1)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v5 = 1701736302;
      }

      if (*(v2 + 17))
      {
        v7 = v5;
      }

      else
      {
        v7 = 7169394;
      }

      if (*(v2 + 17))
      {
        v8 = v6;
      }

      else
      {
        v8 = 0xE300000000000000;
      }
    }

    if (result <= 1u)
    {
      if (result)
      {
        v9 = 0xE700000000000000;
        v3 = 0x7665642D6D6572;
      }

      else
      {
        v9 = 0xE300000000000000;
      }
    }

    else if (result == 2)
    {
      v9 = 0xE400000000000000;
      v3 = 1701736302;
    }

    else if (result == 3)
    {
      v3 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
      v3 = 0x746C7561666564;
    }

    if (v7 == v3 && v8 == v9)
    {
    }

    else
    {
      v10 = result;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v14 = *v2;
        v13 = v2[1];
        sub_1000039E8(&qword_1004AEBB0);
        sub_10000E720(&qword_1004AEBB8, &qword_1004AEBB0);
        swift_allocError();
        *v15 = v14;
        *(v15 + 8) = v4;
        *(v15 + 16) = a2;
        *(v15 + 24) = v10;
        *(v15 + 32) = v13;
        swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t sub_100287FB8(unint64_t result, uint64_t a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    v12 = result;
    if (*(v2 + 32) == 1)
    {
      v3 = v2[3];
      if ((~v3 & 0xF000000000000007) != 0)
      {
        v11 = v2[3];
        sub_1001C8518(result);
        sub_1001C8518(v3);
        if ((_s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v11, &v12) & 1) == 0)
        {
          v6 = v11;
          v7 = v12;
          v9 = *v2;
          v8 = v2[1];
          sub_1000039E8(&qword_1004AEBA0);
          sub_10000E720(&qword_1004AEBA8, &qword_1004AEBA0);
          swift_allocError();
          *v10 = v9;
          v10[1] = v6;
          v10[2] = a2;
          v10[3] = v7;
          v10[4] = v8;
          swift_willThrow();
        }
      }

      else
      {
        *v2 = a2;
        v4 = result;

        result = sub_1001C855C(v3);
        v2[3] = v4;
      }
    }
  }

  return result;
}

uint64_t sub_10028813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = a8;
  *(v8 + 544) = a7;
  *(v8 + 536) = a6;
  *(v8 + 528) = a5;
  *(v8 + 520) = a4;
  *(v8 + 504) = a2;
  *(v8 + 512) = a3;
  *(v8 + 496) = a1;
  v9 = type metadata accessor for ErrorReport();
  *(v8 + 552) = v9;
  *(v8 + 560) = *(v9 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v10 = type metadata accessor for Config(0);
  *(v8 + 584) = v10;
  *(v8 + 592) = *(v10 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_100288294, 0, 0);
}

uint64_t sub_100288294()
{
  v1 = *(v0 + 544);
  type metadata accessor for ErrorReporter();
  v2 = swift_allocObject();
  *(v0 + 624) = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *(v0 + 256) = *(v1 + 240);
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  *(v0 + 208) = v3;
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[11];
  *(v0 + 176) = v1[10];
  *(v0 + 192) = v8;
  *(v0 + 144) = v6;
  *(v0 + 160) = v7;
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[7];
  *(v0 + 112) = v1[6];
  *(v0 + 128) = v11;
  *(v0 + 80) = v9;
  *(v0 + 96) = v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v14;
  *(v0 + 16) = v12;
  *(v0 + 32) = v13;

  v15 = swift_task_alloc();
  *(v0 + 632) = v15;
  *v15 = v0;
  v15[1] = sub_1002883D8;
  v16 = *(v0 + 608);
  v17 = *(v0 + 536);
  v18 = *(v0 + 528);

  return Apply.apply@Sendable (_:on:env:reporter:)(v16, v18, v17, v0 + 16, v2);
}

uint64_t sub_1002883D8()
{
  *(*v1 + 640) = v0;

  if (v0)
  {

    v2 = sub_100289054;
  }

  else
  {
    v2 = sub_1002884FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002884FC()
{
  v100 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  sub_10028EA64(*(v0 + 608), v1, type metadata accessor for Config);
  sub_10028E9FC(v1, v2, type metadata accessor for Config);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 504);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10018CF3C(0, v4[2] + 1, 1, *(v0 + 504));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_10018CF3C(v5 > 1, v6 + 1, 1, v4);
  }

  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = *(v0 + 528);
  v4[2] = v6 + 1;
  sub_10028EA64(v7, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, type metadata accessor for Config);
  v11 = (v10 + *(v9 + 104));
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_8;
  }

  v13 = v11[1];

  if (Array<A>.version.getter(v14) == 2)
  {
    sub_1001D6FE0(v12);
LABEL_8:
    v15 = *(v0 + 624);
    v16 = *(v0 + 576);
    v17 = *(v0 + 552);
    sub_10028E9FC(*(v0 + 528), v16, type metadata accessor for Config);
    swift_beginAccess();
    *(v16 + *(v17 + 20)) = *(v15 + 16);
    *(v16 + *(v17 + 24)) = 0xF000000000000007;

    goto LABEL_10;
  }

  v18 = *(v0 + 624);
  v19 = *(v0 + 576);
  v20 = *(v0 + 552);
  sub_10028E9FC(*(v0 + 528), v19, type metadata accessor for Config);
  swift_beginAccess();
  v21 = *(v18 + 16);

  sub_1001D6FE0(v12);
  *(v19 + *(v20 + 20)) = v21;
  *(v19 + *(v20 + 24)) = v13;
LABEL_10:
  sub_10028E9FC(*(v0 + 576), *(v0 + 568), type metadata accessor for ErrorReport);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + 512);
  if ((v22 & 1) == 0)
  {
    v23 = sub_10018D378(0, v23[2] + 1, 1, *(v0 + 512));
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10018D378(v24 > 1, v25 + 1, 1, v23);
  }

  v26 = *(v0 + 616);
  v27 = *(v0 + 568);
  v28 = *(v0 + 560);
  v29 = *(v0 + 528);
  v23[2] = v25 + 1;
  sub_10028EA64(v27, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for ErrorReport);
  v30 = _s10DarwinInit6ConfigV2eeoiySbAC_ACtFZ_0(v26, v29);
  v31 = *(v0 + 640);
  if (v30)
  {
LABEL_23:
    if (*(v0 + 257) != 1)
    {
      v56 = *(v0 + 616);
      v57 = *(v0 + 576);

      sub_1001F6788(v57, type metadata accessor for ErrorReport);
      sub_1001F6788(v56, type metadata accessor for Config);
LABEL_32:
      v58 = *(v0 + 496);
      *v58 = v4;
      v58[1] = v23;

      v59 = *(v0 + 8);
      goto LABEL_52;
    }

    v42 = *v11;
    if (*v11)
    {
      v43 = v11[1];

      if (Array<A>.version.getter(v44) != 2)
      {
        v98 = v42;
        v99 = v43;
        if (v30 & ConfigOrigin.isSimple.getter())
        {
          v45 = v0 + 384;
          v46 = *(v0 + 536);
          v47 = v46[3];
          v48 = v46[4];
          sub_10000E2A8(v46, v47);
          (*(v48 + 312))(v47, v48);
          v49 = *(v0 + 408);
          log = *(v0 + 416);
          sub_10000E2A8((v0 + 384), v49);
          *(v0 + 488) = v43;
          v50 = qword_1004A9E90;

          if (v50 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for FilePath();
          v52 = sub_1000270B4(v51, kDInitDoneFilepath);
          v53 = sub_1001B54D4();
          sub_1002FA684(v0 + 488, v52, v49, &type metadata for JSON, log, v53);
          if (v31)
          {
            v54 = *(v0 + 616);
            v55 = *(v0 + 576);
            sub_1001D6FE0(v42);

LABEL_38:

            sub_1001F6788(v55, type metadata accessor for ErrorReport);
            v68 = v54;
LABEL_44:
            sub_1001F6788(v68, type metadata accessor for Config);

            sub_100003C3C(v45);
            goto LABEL_51;
          }

          sub_1001D6FE0(v42);

          goto LABEL_48;
        }
      }

      v98 = v42;
      v99 = v43;
      if (ConfigOrigin.isSimple.getter())
      {
        v45 = v0 + 344;
        v60 = *(v0 + 536);
        v61 = v60[3];
        v62 = v60[4];
        sub_10000E2A8(v60, v61);
        (*(v62 + 312))(v61, v62);
        v63 = *(v0 + 368);
        loga = *(v0 + 376);
        sub_10000E2A8((v0 + 344), v63);
        if (qword_1004A9E90 != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 616);
        v94 = *(v0 + 584);
        v65 = type metadata accessor for FilePath();
        v66 = sub_1000270B4(v65, kDInitDoneFilepath);
        v67 = sub_10028EB80(&qword_1004AC740, type metadata accessor for Config);
        sub_1002FA684(v64, v66, v63, v94, loga, v67);
        if (v31)
        {
          v54 = *(v0 + 616);
          v55 = *(v0 + 576);
          sub_1001D6FE0(v42);
          goto LABEL_38;
        }

        sub_1001D6FE0(v42);
        goto LABEL_48;
      }

      sub_1001D6FE0(v42);
    }

    v45 = v0 + 264;
    v69 = *(v0 + 536);
    v70 = v69[3];
    v71 = v69[4];
    sub_10000E2A8(v69, v70);
    (*(v71 + 312))(v70, v71);
    v72 = *(v0 + 288);
    v73 = *(v0 + 296);
    sub_10000E2A8((v0 + 264), v72);
    *(v0 + 472) = v4;
    v74 = qword_1004A9E90;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for FilePath();
    v76 = sub_1000270B4(v75, kDInitDoneFilepath);
    v77 = sub_1000039E8(&qword_1004AC730);
    v78 = sub_1001EF784();
    sub_1002FA684(v0 + 472, v76, v72, v77, v73, v78);
    if (v31)
    {
      v79 = *(v0 + 616);
      v80 = *(v0 + 576);

      sub_1001F6788(v80, type metadata accessor for ErrorReport);
      v68 = v79;
      goto LABEL_44;
    }

LABEL_48:
    sub_100003C3C(v45);
    v81 = *(v0 + 536);
    v82 = v81[3];
    v83 = v81[4];
    sub_10000E2A8(v81, v82);
    (*(v83 + 312))(v82, v83);
    v84 = *(v0 + 328);
    v85 = *(v0 + 336);
    sub_10000E2A8((v0 + 304), v84);
    *(v0 + 480) = v23;
    v86 = qword_1004A9EB0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for FilePath();
    v88 = sub_1000270B4(v87, kDInitErrorReportFilepath);
    v89 = sub_1000039E8(&qword_1004AEBE0);
    v90 = sub_10028EACC();
    sub_1002FA684(v0 + 480, v88, v84, v89, v85, v90);
    v91 = *(v0 + 616);
    v92 = *(v0 + 576);

    sub_1001F6788(v92, type metadata accessor for ErrorReport);
    sub_1001F6788(v91, type metadata accessor for Config);
    sub_100003C3C(v0 + 304);
    goto LABEL_32;
  }

  v32 = ErrorReport.jsonString(prettyPrinted:redacted:)(1, 1);
  if (!v33)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000270B4(v36, qword_1004B00F8);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      logb = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v98 = v40;
      *v39 = 136315138;
      v41 = sub_1000026C0(v32._countAndFlagsBits, v32._object, &v98);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, logb, v38, "Failed to fully apply config. Error report below:\n%s\n", v39, 0xCu);
      sub_100003C3C(v40);
    }

    else
    {
    }

    v31 = 0;
    goto LABEL_23;
  }

  v34 = *(v0 + 616);
  v35 = *(v0 + 576);

  sub_1001F6788(v35, type metadata accessor for ErrorReport);
  sub_1001F6788(v34, type metadata accessor for Config);

LABEL_51:

  v59 = *(v0 + 8);
LABEL_52:

  return v59();
}

uint64_t sub_100289054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Apply.apply@Sendable (_:on:env:reporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 3568) = v5;
  *(v6 + 3560) = a5;
  *(v6 + 3552) = a3;
  *(v6 + 3544) = a2;
  *(v6 + 3536) = a1;
  v8 = type metadata accessor for Config(0);
  *(v6 + 3576) = v8;
  *(v6 + 3584) = *(v8 - 8);
  *(v6 + 3592) = swift_task_alloc();
  *(v6 + 3600) = swift_task_alloc();
  v9 = sub_1000039E8(&qword_1004AE998);
  *(v6 + 3608) = v9;
  *(v6 + 3616) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *(a4 + 208);
  *(v6 + 3120) = *(a4 + 192);
  *(v6 + 3136) = v11;
  *(v6 + 3152) = *(a4 + 224);
  v12 = *(a4 + 144);
  *(v6 + 3056) = *(a4 + 128);
  *(v6 + 3072) = v12;
  v13 = *(a4 + 176);
  *(v6 + 3088) = *(a4 + 160);
  *(v6 + 3104) = v13;
  v14 = *(a4 + 80);
  *(v6 + 2992) = *(a4 + 64);
  *(v6 + 3008) = v14;
  v15 = *(a4 + 112);
  *(v6 + 3024) = *(a4 + 96);
  *(v6 + 3040) = v15;
  v16 = *(a4 + 16);
  *(v6 + 2928) = *a4;
  *(v6 + 2944) = v16;
  v17 = *(a4 + 48);
  *(v6 + 2960) = *(a4 + 32);
  *(v6 + 3624) = v10;
  *(v6 + 3168) = *(a4 + 240);
  *(v6 + 2976) = v17;

  return _swift_task_switch(sub_1002892AC, 0, 0);
}

uint64_t sub_1002892AC()
{
  v64 = v0;
  v1 = *(v0 + 3624);
  v2 = *(v0 + 3616);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3568);
  v5 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  *(v0 + 3632) = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v0 + 3640) = v6;
  *(v0 + 3648) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  Flag.wrappedValue.getter();
  v7 = *(v2 + 8);
  *(v0 + 3656) = v7;
  *(v0 + 3664) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 3169) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000270B4(v8, qword_1004B00F8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Committing configuration.", v11, 2u);
    }

    v12 = *(v0 + 3552);
    v13 = *(v0 + 3544);

    sub_1001FA0F8(v13, v12);
  }

  v14 = *(v0 + 3544) + *(*(v0 + 3576) + 44);
  v15 = *(v14 + 40);
  if (*(v14 + 8))
  {
    v16 = v15 == 3;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000270B4(v17, qword_1004B00F8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      __dst[0] = v21;
      *v20 = 136315138;
      if (v15)
      {
        if (v15 == 1)
        {
          v22 = 0xE800000000000000;
          v23 = 0x6E776F6474756873;
        }

        else
        {
          v22 = 0xE400000000000000;
          v23 = 1953069157;
        }
      }

      else
      {
        v22 = 0xE600000000000000;
        v23 = 0x746F6F626572;
      }

      v24 = sub_1000026C0(v23, v22, __dst);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting failureAction to %s", v20, 0xCu);
      sub_100003C3C(v21);
    }

    *(v0 + 3173) = v15;
    swift_beginAccess();
    sub_1000039E8(&qword_1004AE9B8);
    Option.wrappedValue.setter();
    swift_endAccess();
  }

  v25 = Config.jsonString(prettyPrinted:redacted:origin:)(1, 1, 0);
  *(v0 + 3672) = v25._object;
  if (v26)
  {

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v27 = *(v0 + 3584);
    v28 = *(v0 + 3544);
    sub_1000039E8(&qword_1004AA9C8);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100376A40;
    sub_10028E9FC(v28, v30 + v29, type metadata accessor for Config);
    static Validate.preflight(configs:)(v30, (v0 + 16));
    swift_setDeallocating();
    sub_1001F6788(v30 + v29, type metadata accessor for Config);
    swift_deallocClassInstance();
    memcpy((v0 + 1472), (v0 + 16), 0x2D8uLL);
    memcpy((v0 + 744), (v0 + 16), 0x2D8uLL);
    if (sub_1001D8458(v0 + 744) != 1)
    {
      v33 = *(v0 + 1376);
      if (v33)
      {
        v34 = *(v0 + 1368);
        sub_100013E54(v0 + 1472, v0 + 2200, &qword_1004AE9F8);
        v35 = qword_1004A9F20;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000270B4(v36, qword_1004B00F8);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          __dst[0] = swift_slowAlloc();
          *v39 = 136315394;
          *(v39 + 4) = sub_1000026C0(v34, v33, __dst);
          *(v39 + 12) = 2080;

          v40 = sub_1000026C0(v25._countAndFlagsBits, v25._object, __dst);

          *(v39 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v37, v38, "Validating config under %s policy: %s", v39, 0x16u);
          swift_arrayDestroy();
        }

        memcpy(__dst, (v0 + 744), 0x2D8uLL);
        sub_10028CF60(v34, v33, __dst);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          __dst[0] = v44;
          *v43 = 136315138;
          v45 = sub_1000026C0(v34, v33, __dst);

          *(v43 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v41, v42, "darwin-init config is valid with respect to %s policy.", v43, 0xCu);
          sub_100003C3C(v44);

          sub_100013F2C(v0 + 1472, &qword_1004AE9F8);
        }

        else
        {

          sub_100013F2C(v0 + 1472, &qword_1004AE9F8);
        }
      }
    }

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    *(v0 + 3680) = sub_1000270B4(v46, qword_1004B00F8);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      __dst[0] = v50;
      *v49 = 136315138;

      v51 = sub_1000026C0(v25._countAndFlagsBits, v25._object, __dst);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Applying configuration: %s", v49, 0xCu);
      sub_100003C3C(v50);
    }

    v52 = *(v0 + 3136);
    *(v0 + 3368) = *(v0 + 3120);
    *(v0 + 3384) = v52;
    *(v0 + 3400) = *(v0 + 3152);
    *(v0 + 3416) = *(v0 + 3168);
    v53 = *(v0 + 3072);
    *(v0 + 3304) = *(v0 + 3056);
    *(v0 + 3320) = v53;
    v54 = *(v0 + 3104);
    *(v0 + 3336) = *(v0 + 3088);
    *(v0 + 3352) = v54;
    v55 = *(v0 + 3008);
    *(v0 + 3240) = *(v0 + 2992);
    *(v0 + 3256) = v55;
    v56 = *(v0 + 3040);
    *(v0 + 3272) = *(v0 + 3024);
    *(v0 + 3288) = v56;
    v57 = *(v0 + 2944);
    *(v0 + 3176) = *(v0 + 2928);
    *(v0 + 3192) = v57;
    v58 = *(v0 + 2976);
    *(v0 + 3208) = *(v0 + 2960);
    *(v0 + 3224) = v58;
    v59 = swift_task_alloc();
    *(v0 + 3688) = v59;
    *v59 = v0;
    v59[1] = sub_100289D74;
    v60 = *(v0 + 3592);
    v61 = *(v0 + 3560);
    v62 = *(v0 + 3552);

    return _s10DarwinInit6ConfigV5apply2on3env8reporterAcA8Computer_p_AA7GlobalsVAA13ErrorReporterCtYaAC08CriticalJ0OYKF(v60, v62, v0 + 3176, v61, v0 + 3496);
  }
}

uint64_t sub_100289D74()
{
  v2 = *v1;
  *(*v1 + 3696) = v0;

  if (v0)
  {
    v2[463] = v2[437];
    v2[464] = v2[438];
    v3 = sub_100289E98;
  }

  else
  {
    v3 = sub_10028A088;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100289E98()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[464];
    v4 = v0[463];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10028DC48();
    swift_allocError();
    *v7 = v4;
    v7[1] = v3;

    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Critical error during apply: %@", v5, 0xCu);
    sub_100013F2C(v6, &qword_1004AA050);
  }

  v9 = v0[464];
  v10 = v0[463];

  sub_10028DC48();
  swift_allocError();
  *v11 = v10;
  v11[1] = v9;
  swift_willThrow();
  sub_100013F2C((v0 + 184), &qword_1004AE9F8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10028A088()
{
  v31 = v0;
  v1 = *(v0 + 3656);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3632);
  v4 = *(v0 + 3624);
  v5 = *(v0 + 3608);
  v6 = *(v0 + 3568);
  sub_10028EA64(*(v0 + 3592), *(v0 + 3600), type metadata accessor for Config);
  v2(v4, v6 + v3, v5);
  Flag.wrappedValue.getter();
  v1(v4, v5);
  if (*(v0 + 3170) == 1)
  {
    v7 = *(*(v0 + 3576) + 80);
    v8 = *(*(v0 + 3544) + v7 + 8);
    v9 = *(v0 + 3600) + v7;
    v10 = *(v9 + 8);
    sub_1001C8518(v8);
    sub_1001C855C(v10);
    *(v9 + 8) = v8;
  }

  v11 = Config.jsonString(prettyPrinted:redacted:origin:)(1, 1, 0);
  if (v12)
  {
    sub_1001F6788(*(v0 + 3600), type metadata accessor for Config);
    sub_100013F2C(v0 + 1472, &qword_1004AE9F8);

    v13 = *(v0 + 8);
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = sub_1000026C0(v11._countAndFlagsBits, v11._object, &v30);

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Applied configuration: %s", v16, 0xCu);
      sub_100003C3C(v17);
    }

    else
    {
    }

    v19 = *(v0 + 3656);
    v20 = *(v0 + 3624);
    v21 = *(v0 + 3608);
    (*(v0 + 3640))(v20, *(v0 + 3568) + *(v0 + 3632), v21);
    Flag.wrappedValue.getter();
    v19(v20, v21);
    if (*(v0 + 3171) & 1) != 0 || (v22 = *(v0 + 3656), v23 = *(v0 + 3640), v24 = *(v0 + 3624), v25 = *(v0 + 3608), v26 = *(v0 + 3568), v27 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet, swift_beginAccess(), v23(v24, v26 + v27, v25), Flag.wrappedValue.getter(), v22(v24, v25), (*(v0 + 3172)))
    {
      sub_100013F2C(v0 + 1472, &qword_1004AE9F8);
    }

    else
    {
      sub_1000039E8(&qword_1004AA990);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100376A40;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 32) = v11;

      print(_:separator:terminator:)();
      sub_100013F2C(v0 + 1472, &qword_1004AE9F8);
    }

    sub_10028EA64(*(v0 + 3600), *(v0 + 3536), type metadata accessor for Config);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_10028A4DC()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x74756F656D6974;
  v4 = 0x416572756C696166;
  if (v1 != 3)
  {
    v4 = 0x7465697571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6574737973;
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

uint64_t sub_10028A578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028E2FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10028A5A0(uint64_t a1)
{
  v2 = sub_10028DCF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028A5DC(uint64_t a1)
{
  v2 = sub_10028DCF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Apply.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  v2 = sub_1000039E8(&qword_1004AE988);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v4 = sub_1000039E8(&qword_1004AE998);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  v7 = sub_1000039E8(&qword_1004AE9A8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  v9 = sub_1000039E8(&qword_1004AE9B8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC10DarwinInit5Apply__quiet, v4);
  return v0;
}

uint64_t Apply.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  v2 = sub_1000039E8(&qword_1004AE988);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v4 = sub_1000039E8(&qword_1004AE998);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  v7 = sub_1000039E8(&qword_1004AE9A8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  v9 = sub_1000039E8(&qword_1004AE9B8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC10DarwinInit5Apply__quiet, v4);

  return swift_deallocClassInstance();
}

uint64_t Apply.__allocating_init()()
{
  v0 = swift_allocObject();
  Apply.init()();
  return v0;
}

uint64_t Apply.init()()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v35 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v2 - 8);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000039E8(&qword_1004AE998);
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v26 - v4;
  v6 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v13 = type metadata accessor for ArgumentHelp();
  v14 = *(v13 - 8);
  v31 = *(v14 + 56);
  v37 = v14 + 56;
  v28 = v13;
  v31(v12, 0, 1, v13);
  v15 = type metadata accessor for CompletionKind();
  v16 = *(v15 - 8);
  v29 = *(v16 + 56);
  v30 = v16 + 56;
  v27 = v15;
  v29(v8, 1, 1, v15);
  type metadata accessor for DInitConfigSource();
  sub_10028EB80(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  v17 = v38;
  Argument.init<A>(help:completion:)();
  v18 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v32 = v5;
  sub_10027F300();
  v19 = *(v39 + 32);
  v39 += 32;
  v33 = v19;
  v19(v17 + v18, v5, v36);
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v20 = v31;
  v31(v12, 0, 1, v13);
  v21 = v29;
  v29(v8, 1, 1, v15);
  static SingleValueParsingStrategy.next.getter();
  sub_10028DC9C();
  Option.init<A>(name:parsing:help:completion:)();
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v20(v12, 0, 1, v28);
  v21(v8, 1, 1, v27);
  static SingleValueParsingStrategy.next.getter();
  sub_1002205FC();
  v22 = v38;
  Option.init<A>(name:parsing:help:completion:)();
  v23 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  v24 = v32;
  sub_10027FE3C();
  v33(v22 + v23, v24, v36);
  return v22;
}

uint64_t Apply.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Apply.init(from:)(a1);
  return v2;
}

uint64_t Apply.init(from:)(uint64_t a1)
{
  v93 = a1;
  v66 = sub_1000039E8(&qword_1004AE9B8);
  v62 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v60 - v2;
  v69 = sub_1000039E8(&qword_1004AE9A8);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v60 - v3;
  v73 = sub_1000039E8(&qword_1004AE988);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v60 - v4;
  v74 = sub_1000039E8(&qword_1004AEA38);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = &v60 - v5;
  v6 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v6 - 8);
  v83 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  v92 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000039E8(&qword_1004AE998);
  v85 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v60 - v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = sub_1000039E8(&qword_1004AAD60);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ArgumentVisibility();
  __chkstk_darwin(v19 - 8);
  v20 = sub_1000039E8(&qword_1004AAD68);
  __chkstk_darwin(v20 - 8);
  v22 = &v60 - v21;
  v23 = OBJC_IVAR____TtC10DarwinInit5Apply__source;
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v90 = type metadata accessor for ArgumentHelp();
  v24 = *(v90 - 8);
  v79 = *(v24 + 56);
  v87 = v24 + 56;
  v79(v22, 0, 1, v90);
  v89 = type metadata accessor for CompletionKind();
  v25 = *(v89 - 8);
  v88 = *(v25 + 56);
  v91 = v25 + 56;
  v78 = v18;
  v88(v18, 1, 1, v89);
  type metadata accessor for DInitConfigSource();
  sub_10028EB80(&qword_1004AB548, type metadata accessor for DInitConfigSource);
  v71 = v23;
  Argument.init<A>(help:completion:)();
  v26 = OBJC_IVAR____TtC10DarwinInit5Apply__system;
  v80 = v15;
  sub_10027F300();
  v27 = *(v85 + 32);
  v81 = v85 + 32;
  v82 = v27;
  v67 = v26;
  v77 = v1;
  v27(v1 + v26, v15, v95);
  v28 = OBJC_IVAR____TtC10DarwinInit5Apply__timeout;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v29 = v79;
  v79(v22, 0, 1, v90);
  v30 = v78;
  v88(v78, 1, 1, v89);
  static SingleValueParsingStrategy.next.getter();
  sub_10028DC9C();
  v63 = v28;
  v31 = v30;
  Option.init<A>(name:parsing:help:completion:)();
  v32 = OBJC_IVAR____TtC10DarwinInit5Apply__failureAction;
  static NameSpecification.shortAndLong.getter();
  static ArgumentVisibility.default.getter();
  v33 = v93;
  v34 = v77;
  ArgumentHelp.init(_:discussion:valueName:visibility:)();
  v29(v22, 0, 1, v90);
  v35 = v95;
  v88(v31, 1, 1, v89);
  static SingleValueParsingStrategy.next.getter();
  sub_1002205FC();
  Option.init<A>(name:parsing:help:completion:)();
  v36 = OBJC_IVAR____TtC10DarwinInit5Apply__quiet;
  v37 = v80;
  sub_10027FE3C();
  v82(v34 + v36, v37, v35);
  sub_10000E2A8(v33, v33[3]);
  sub_10028DCF0();
  v38 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
  }

  else
  {
    v91 = v36;
    v39 = v71;
    v92 = v32;
    v40 = v72;
    v94 = 0;
    sub_10000E720(&qword_1004AEA48, &qword_1004AE988);
    v41 = v73;
    v42 = v74;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_beginAccess();
    (*(v40 + 40))(v34 + v39, v76, v41);
    swift_endAccess();
    v94 = 1;
    v43 = sub_10000E720(&qword_1004AEA50, &qword_1004AE998);
    v44 = v70;
    v45 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = v43;
    v47 = v67;
    swift_beginAccess();
    v49 = v85 + 40;
    v48 = *(v85 + 40);
    v48(v34 + v47, v44, v45);
    swift_endAccess();
    v94 = 2;
    sub_10000E720(&qword_1004AEA58, &qword_1004AE9A8);
    v50 = v68;
    v51 = v69;
    v52 = v42;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v85 = v49;
    v53 = v63;
    swift_beginAccess();
    (*(v64 + 40))(v34 + v53, v50, v51);
    swift_endAccess();
    v94 = 3;
    sub_10000E720(&qword_1004AEA60, &qword_1004AE9B8);
    v54 = v65;
    v55 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = v92;
    swift_beginAccess();
    (*(v62 + 40))(&v56[v34], v54, v55);
    swift_endAccess();
    v94 = 4;
    v57 = v61;
    v58 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v75 + 8))(v86, v52);
    v59 = v91;
    swift_beginAccess();
    v48(v34 + v59, v57, v58);
    swift_endAccess();
  }

  sub_100003C3C(v93);
  return v34;
}

uint64_t sub_10028BC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return Apply.run()();
}

uint64_t sub_10028BCE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = Apply.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_10028BD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Apply.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10028BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_10028BDC0, a4, 0);
}

uint64_t sub_10028BDC0()
{
  v1 = *(v0 + 64);
  v2 = *(*v1 + 120);
  v3 = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    (*(v0 + 72))(v3);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = (*(v0 + 64) + *(**(v0 + 64) + 128));
    swift_beginAccess();
    v7 = *v6;
    *v6 = v5;
    v6[1] = v4;

    sub_100031B5C(v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10028BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v50 = a2;
  v6 = type metadata accessor for ContinuousClock();
  v48 = *(v6 - 8);
  v49 = v6;
  v51 = *(v48 + 64);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContinuousClock.Instant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_1000039E8(&qword_1004AB0A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v44 = &v43 - v13;
  v15 = sub_1000039E8(&qword_1004AEBC0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  (*(v16 + 16))(&v43 - v17, a1, v15);
  sub_1000039E8(&qword_1004AEBC8);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + *(*v19 + 120)) = 0;
  v20 = (v19 + *(*v19 + 128));
  *v20 = 0;
  v20[1] = 0;
  (*(v16 + 32))(v19 + *(*v19 + 112), v18, v15);
  v45 = type metadata accessor for TaskPriority();
  v21 = *(v45 - 8);
  v46 = *(v21 + 56);
  v47 = v21 + 56;
  v46(v14, 1, 1, v45);
  v22 = v10;
  v43 = v10;
  v23 = *(v10 + 16);
  v24 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v9;
  v23(v24, v50, v9);
  v27 = v48;
  v26 = v49;
  v28 = v8;
  (*(v48 + 16))(v8, v52, v49);
  v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v30 = (v11 + *(v27 + 80) + v29) & ~*(v27 + 80);
  v31 = (v51 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v43 + 32))(v32 + v29, v24, v25);
  (*(v27 + 32))(v32 + v30, v28, v26);
  *(v32 + v31) = v19;

  v33 = v44;
  v34 = sub_10028FC50(0, 0, v44, &unk_1004031F0, v32);
  v35 = v45;
  v36 = v46;
  v46(v33, 1, 1, v45);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v38 = v54;
  v37[4] = v53;
  v37[5] = v38;
  v37[6] = v19;

  v39 = sub_10028FC50(0, 0, v33, &unk_100403200, v37);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v39;
  v36(v33, 1, 1, v35);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v19;
  v41[5] = sub_10028E8E4;
  v41[6] = v40;
  sub_10028FC50(0, 0, v33, &unk_100403210, v41);
}

uint64_t sub_10028C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 96) = a4;
  v9 = type metadata accessor for ContinuousClock();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 144) = v10;
  *(v6 + 152) = *(v10 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  v11 = swift_task_alloc();
  *(v6 + 168) = v11;
  v12 = sub_10028EB80(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
  *v11 = v6;
  v11[1] = sub_10028C5D4;

  return static Task<>.sleep<A>(until:tolerance:clock:)(a4, v6 + 64, a5, v9, v12);
}

uint64_t sub_10028C5D4()
{

  if (v0)
  {
  }

  return _swift_task_switch(sub_10028C6EC, 0, 0);
}

uint64_t sub_10028C6EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v13 = v0[14];
  (*(v1 + 16))(v2, v0[12], v4);
  (*(v6 + 16))(v3, v7, v5);
  v8 = sub_1000039E8(&qword_1004AEBD0);
  sub_10000E720(&qword_1004AEBD8, &qword_1004AEBD0);
  v9 = swift_allocError();
  v11 = v10;
  v0[22] = v9;
  (*(v1 + 32))(v10, v2, v4);
  (*(v6 + 32))(v11 + *(v8 + 36), v3, v5);

  return _swift_task_switch(sub_10028C860, v13, 0);
}

uint64_t sub_10028C860()
{
  v1 = v0[14];
  v2 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = v0[22];
    v4 = v0[14];
    *(v1 + v2) = 1;
    v0[11] = v3;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AEBC0);
    CheckedContinuation.resume(throwing:)();
    v5 = (v4 + *(*v4 + 128));
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v7);
      sub_100031B5C(v6);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10028C9C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 160) = v7;
  *v7 = v6;
  v7[1] = sub_10028CAB4;

  return v9(v6 + 112);
}

uint64_t sub_10028CAB4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_10028CD9C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 152);
    v3 = sub_10028CBD0;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10028CBD0()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v0[22] = v2;
  v0[23] = v3;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v4) & 1) == 0)
  {
    v5 = v0[19];
    *(v1 + v4) = 1;
    v0[16] = v2;
    v0[17] = v3;

    sub_1000039E8(&qword_1004AEBC0);
    CheckedContinuation.resume(returning:)();
    v6 = (v5 + *(*v5 + 128));
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {

      v7(v8);
      sub_100031B5C(v7);
    }
  }

  return _swift_task_switch(sub_10028CD34, 0, 0);
}

uint64_t sub_10028CD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028CDB8()
{
  v1 = v0[19];
  v2 = *(*v1 + 120);
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = v0[21];
    v4 = v0[19];
    *(v1 + v2) = 1;
    v0[18] = v3;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AEBC0);
    CheckedContinuation.resume(throwing:)();
    v5 = (v4 + *(*v4 + 128));
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v7);
      sub_100031B5C(v6);
    }
  }

  return _swift_task_switch(sub_10028CF00, 0, 0);
}

uint64_t sub_10028CF00()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10028CF60(uint64_t a1, void *a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7 = _findStringSwitchCase(cases:string:)(&off_100485A10, v6);

  if (v7 <= 1)
  {
    if (!v7)
    {
      v19 = __dst[80];
      v20 = __dst[81];
      memcpy(__srca, __src, sizeof(__srca));
      type metadata accessor for CustomerValidator(0);
      swift_allocObject();

      sub_1001D78FC(__dst, v25);
      v10 = a1;
      v11 = a2;
      v12 = v19;
      v13 = v20;
      goto LABEL_10;
    }

    if (v7 == 1)
    {
      v8 = __dst[80];
      v9 = __dst[81];
      type metadata accessor for CustomerProxyValidator(0);
      swift_allocObject();
      memcpy(__srca, __src, sizeof(__srca));

      sub_1001D78FC(__dst, v25);
      v10 = a1;
      v11 = a2;
      v12 = v8;
      v13 = v9;
LABEL_10:
      v16 = CustomerValidator.init(policy:requestedVersion:config:)(v10, v11, v12, v13, __srca);
      goto LABEL_11;
    }

LABEL_8:
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    String.append(_:)(v17);
    sub_1001E941C();
    swift_allocError();
    *v18 = 0xD000000000000020;
    v18[1] = 0x8000000100440B30;
    swift_willThrow();
    return;
  }

  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v14 = __dst[80];
      v15 = __dst[81];
      memcpy(__srca, __src, sizeof(__srca));
      type metadata accessor for CarryValidator(0);
      swift_allocObject();

      sub_1001D78FC(__dst, v25);
      v16 = CarryValidator.init(policy:requestedVersion:config:)(a1, a2, v14, v15, __srca);
LABEL_11:
      __srca[0] = v16;
      sub_10027CD8C();

      return;
    }

    goto LABEL_8;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000270B4(v21, qword_1004B00F8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "darwin-init passed none value for config validation, no validation will be performed", v24, 2u);
  }
}

uint64_t sub_10028D268()
{
  v1 = type metadata accessor for Config(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);

  if (*(v0 + v3 + 8))
  {

    if (v5[7])
    {
    }
  }

  if (v5[20])
  {
  }

  if (v5[27])
  {

    if (v5[28])
    {
    }

    if (v5[46])
    {
    }
  }

  v6 = v5 + v1[9];

  v7 = &v6[*(sub_1000039E8(&qword_1004ACDA0) + 44)];
  v8 = type metadata accessor for Config.Diavlo(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v33 = v0;
    v9 = (v2 + 40) & ~v2;
    v10 = v2;
    v11 = v4;

    v12 = *(sub_1000039E8(&qword_1004ACD10) + 44);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v7[v12], 1, v13))
    {
      (*(v14 + 8))(&v7[v12], v13);
    }

    v15 = &v7[*(v8 + 20)];

    v16 = *(v15 + 2);
    v4 = v11;
    v2 = v10;
    v3 = v9;
    v0 = v33;
    if (v16 >> 60 != 15)
    {
      sub_100031928(*(v15 + 1), v16);
    }
  }

  v17 = v5 + v1[11];

  if (*(v17 + 1))
  {
  }

  v18 = v5 + v1[12];

  if (*(v18 + 1))
  {
  }

  v19 = v5 + v1[13];

  if (*(v19 + 1))
  {
  }

  v20 = v5 + v1[14];

  if (*(v20 + 1))
  {
  }

  v21 = v5 + v1[16];

  if (*(v21 + 1))
  {

    if (*(v21 + 2))
    {
    }
  }

  v22 = v5 + v1[17];

  if (*(v22 + 1))
  {

    v23 = v22[40];
    if (v23 != 255)
    {
      sub_100218EFC(*(v22 + 4), v23 & 1);
    }
  }

  v24 = v5 + v1[20];

  if ((~*(v24 + 1) & 0xF000000000000007) != 0)
  {
  }

  v25 = v5 + v1[21];

  if (*(v25 + 1))
  {
  }

  v26 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = v5 + v1[22];

  if (*(v27 + 1))
  {
  }

  v28 = v5 + v1[23];

  v29 = v28[96];
  if (v29 != 255)
  {
    sub_10028D970(*(v28 + 1), *(v28 + 2), *(v28 + 3), *(v28 + 4), *(v28 + 5), *(v28 + 6), *(v28 + 7), *(v28 + 8), *(v28 + 9), *(v28 + 10), *(v28 + 11), v29 & 1);
  }

  v30 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;

  if (*(v5 + v1[26]))
  {
  }

  sub_100003C3C(v0 + v26);
  v31 = v0 + v30;

  if (*(v0 + v30 + 136) != 1)
  {
  }

  if (*(v31 + 192) != 1)
  {
  }

  if ((~*(v31 + 232) & 0xF000000000000007) != 0)
  {
  }

  return _swift_deallocObject(v0, v30 + 242, v2 | 7);
}

uint64_t sub_10028D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
  }

  return result;
}

uint64_t sub_10028D9E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Config(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 241);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100001FE0;

  return sub_10028813C(a1, v8, v9, v10, v1 + v6, v1 + v7, v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), v11);
}

unint64_t sub_10028DBF4()
{
  result = qword_1004AE9E0;
  if (!qword_1004AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE9E0);
  }

  return result;
}

unint64_t sub_10028DC48()
{
  result = qword_1004AEA28;
  if (!qword_1004AEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA28);
  }

  return result;
}

unint64_t sub_10028DC9C()
{
  result = qword_1004AEA30;
  if (!qword_1004AEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA30);
  }

  return result;
}

unint64_t sub_10028DCF0()
{
  result = qword_1004AEA40;
  if (!qword_1004AEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA40);
  }

  return result;
}

uint64_t type metadata accessor for Apply()
{
  result = qword_1004AEAA8;
  if (!qword_1004AEAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028DF08()
{
  sub_10028E170(319, &qword_1004AEAB8, &qword_1004AB540, &unk_1003F69E8, &type metadata accessor for Argument);
  if (v0 <= 0x3F)
  {
    sub_10028E120();
    if (v1 <= 0x3F)
    {
      sub_10028E170(319, &qword_1004AEAC8, &qword_1004AEAD0, &unk_100403078, &type metadata accessor for Option);
      if (v2 <= 0x3F)
      {
        sub_10028E170(319, &qword_1004AEAD8, &unk_1004AEAE0, &unk_100403080, &type metadata accessor for Option);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10028E120()
{
  if (!qword_1004AEAC0)
  {
    v0 = type metadata accessor for Flag();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AEAC0);
    }
  }
}

void sub_10028E170(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003A94(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10028E1F8()
{
  result = qword_1004AEB88;
  if (!qword_1004AEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB88);
  }

  return result;
}

unint64_t sub_10028E250()
{
  result = qword_1004AEB90;
  if (!qword_1004AEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB90);
  }

  return result;
}

unint64_t sub_10028E2A8()
{
  result = qword_1004AEB98;
  if (!qword_1004AEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEB98);
  }

  return result;
}

uint64_t sub_10028E2FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7465697571 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10028E4A8()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ContinuousClock();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10028E60C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ContinuousClock() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100189CAC;

  return sub_10028C404(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_10028E794()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028E7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001FE0;

  return sub_10028C9C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028E8A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028E8EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10028E934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100189CAC;

  return sub_10028BD9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10028E9FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028EA64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10028EACC()
{
  result = qword_1004AEBE8[0];
  if (!qword_1004AEBE8[0])
  {
    sub_100003A94(&qword_1004AEBE0);
    sub_10028EB80(&qword_1004AC928, type metadata accessor for ErrorReport);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004AEBE8);
  }

  return result;
}

uint64_t sub_10028EB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10028EBE4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10028EC24()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10028EC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10028EC7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t withDeadline<A, B>(_:clock:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_10028ECF8, 0, 0);
}

uint64_t sub_10028ECF8()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_10028EE04;
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000018, 0x80000001004403B0, sub_1002905F4, v2, v6);
}

uint64_t sub_10028EE04()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10028EF40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10028EF40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimeoutError.deadline.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t TimeoutError.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for TimeoutError();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t SafeContinuation.inner.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = type metadata accessor for CheckedContinuation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SafeContinuation.resumed.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SafeContinuation.resumed.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10028F318@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 128));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10003DAB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000ADF68(v4);
}

uint64_t sub_10028F3C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_100291048;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 128));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1000ADF68(v3);
  return sub_10028ECBC(v8);
}

uint64_t SafeContinuation.resumeHandler.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_1000ADF68(*v1);
  return v2;
}

uint64_t SafeContinuation.resumeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10028ECBC(v6);
}

uint64_t SafeContinuation.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SafeContinuation.init(with:)(a1);
  return v2;
}

uint64_t SafeContinuation.init(with:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + *(*v1 + 120)) = 0;
  v3 = (v1 + *(*v1 + 128));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(*v1 + 112);
  v5 = type metadata accessor for CheckedContinuation();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t SafeContinuation.resume(returning:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13[-v5];
  v8 = *(v7 + 120);
  result = swift_beginAccess();
  if ((*(v1 + v8) & 1) == 0)
  {
    *(v1 + v8) = 1;
    (*(v4 + 16))(v6, a1, v3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    v10 = (v1 + *(*v1 + 128));
    result = swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {

      v11(v12);
      return sub_10028ECBC(v11);
    }
  }

  return result;
}

uint64_t SafeContinuation.resume(throwing:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13[-v5];
  v8 = *(v7 + 120);
  result = swift_beginAccess();
  if ((*(v1 + v8) & 1) == 0)
  {
    *(v1 + v8) = 1;
    (*(v4 + 16))(v6, a1, v3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
    v10 = (v1 + *(*v1 + 128));
    result = swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {

      v11(v12);
      return sub_10028ECBC(v11);
    }
  }

  return result;
}

uint64_t SafeContinuation.onResume(perform:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000039E8(&qword_1004AB0A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_10028FC50(0, 0, v7, &unk_100403248, v9);
}

uint64_t sub_10028FBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10028FBEC, a4, 0);
}

uint64_t sub_10028FBEC()
{
  sub_10028FF10(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000039E8(&qword_1004AB0A8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1002910A8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100291118(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_100291118(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100291118(a3);
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

uint64_t sub_10028FF10(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*v2 + 120);
  v6 = swift_beginAccess();
  if (*(v2 + v5) == 1)
  {
    return a1(v6);
  }

  v8 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v9 = *v8;
  *v8 = a1;
  v8[1] = a2;

  return sub_10028ECBC(v9);
}

uint64_t SafeContinuation.deinit()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for CheckedContinuation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10028ECBC(*(v0 + *(*v0 + 128)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SafeContinuation.__deallocating_deinit()
{
  SafeContinuation.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002900F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a5;
  v56 = a8;
  v53 = a3;
  v54 = a4;
  v46 = a1;
  v48 = a6;
  v50 = *(a6 - 8);
  v51 = a2;
  v52 = *(v50 + 64);
  __chkstk_darwin(a1);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v41 - v12;
  v41 = &v41 - v12;
  v14 = sub_1000039E8(&qword_1004AB0A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v42 = &v41 - v15;
  sub_100003A94(&qword_1004AB0A0);
  v45 = a7;
  v17 = type metadata accessor for CheckedContinuation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - v19;
  type metadata accessor for SafeContinuation();
  (*(v18 + 16))(v20, v46, v17);
  v21 = swift_allocObject();
  SafeContinuation.init(with:)(v20);
  v44 = type metadata accessor for TaskPriority();
  v22 = *(v44 - 8);
  v43 = *(v22 + 56);
  v46 = v22 + 56;
  v43(v16, 1, 1, v44);
  v23 = v13;
  v24 = AssociatedTypeWitness;
  (*(v10 + 16))(v23, v51, AssociatedTypeWitness);
  v25 = v49;
  v26 = v50;
  v27 = v48;
  (*(v50 + 16))(v49, v53, v48);
  v28 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v29 = (v11 + *(v26 + 80) + v28) & ~*(v26 + 80);
  v30 = (v52 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v45;
  *(v31 + 4) = v27;
  *(v31 + 5) = v32;
  *(v31 + 6) = v56;
  (*(v10 + 32))(&v31[v28], v41, v24);
  (*(v26 + 32))(&v31[v29], v25, v27);
  *&v31[v30] = v21;

  v33 = v42;
  v34 = sub_10028FC50(0, 0, v42, &unk_100403398, v31);
  v43(v33, 1, 1, v44);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v37 = v55;
  v36 = v56;
  v35[4] = v27;
  v35[5] = v36;
  v35[6] = v54;
  v35[7] = v37;
  v35[8] = v21;

  v38 = sub_10028FC50(0, 0, v33, &unk_1004033A8, v35);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 24) = v38;

  SafeContinuation.onResume(perform:)(sub_10029243C, v39);
}

uint64_t sub_100290620()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100290668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100189CAC;

  return sub_10028FBC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100290730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 120);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100290794(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(**a2 + 120);
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_100290800(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100290830()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002908D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10, v5);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100290B24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(*(v7 - 8) + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11, v7);
  }
}

uint64_t sub_100290E08()
{
  result = type metadata accessor for CheckedContinuation();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100291070()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002910A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AB0A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100291118(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AB0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100291180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = *(a7 - 8);
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_100291348, 0, 0);
}

uint64_t sub_100291348()
{
  (*(*(v0[13] - 8) + 56))(v0[16], 1, 1);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100291420;
  v2 = v0[16];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];

  return static Task<>.sleep<A>(until:tolerance:clock:)(v6, v2, v5, v3, v4);
}

uint64_t sub_100291420()
{
  v2 = *v1;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1002924BC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1002915B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002915B8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  (*(v0[11] + 16))(v1, v0[3], v0[10]);
  (*(v3 + 16))(v2, v6, v5);
  type metadata accessor for TimeoutError();
  swift_getWitnessTable();
  v7 = swift_allocError();
  v0[18] = v7;
  TimeoutError.init(_:_:)(v1, v2, v5, v8);
  v0[2] = v7;

  return _swift_task_switch(sub_1002916DC, v4, 0);
}

uint64_t sub_1002916DC()
{
  SafeContinuation.resume(throwing:)(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100291780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v8 = *(*a6 + 80);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_1002918EC;

  return v12(v9);
}

uint64_t sub_1002918EC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100291AEC;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = sub_100291A08;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100291A08()
{
  SafeContinuation.resume(returning:)(*(v0 + 48));

  return _swift_task_switch(sub_100291A74, 0, 0);
}

uint64_t sub_100291A74()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100291AEC()
{
  v1 = v0[3];
  v0[2] = v0[8];
  return _swift_task_switch(sub_100291B10, v1, 0);
}

uint64_t sub_100291B10()
{
  SafeContinuation.resume(throwing:)(v0 + 16);

  return _swift_task_switch(sub_100291B7C, 0, 0);
}

uint64_t sub_100291B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100291BE4()
{
  Task.cancel()();

  Task.cancel()();
}

uint64_t sub_100291C54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100291D4C;

  return v6(a1);
}

uint64_t sub_100291D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100291E44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100189CAC;

  return sub_100291C54(a1, v4);
}

uint64_t sub_100291EFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001FE0;

  return sub_100291C54(a1, v4);
}

uint64_t sub_100291FB4()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100292128(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(*(v5 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100189CAC;

  return sub_100291180(a1, v10, v11, v1 + v8, v1 + v9, v12, v5, v6);
}

uint64_t sub_1002922D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100292320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001FE0;

  return sub_100291780(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002923FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10029243C()
{
  Task.cancel()();

  Task.cancel()();
}

uint64_t sub_1002924E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100292704(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t DInitBool.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

uint64_t sub_1002925AC(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

Swift::Int sub_100292640()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002926B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100292704(void *a1)
{
  v3 = a1[3];
  sub_10000E2A8(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10000E2A8(v5, v5[3]);
    LOBYTE(v3) = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100003C3C(v5);
    sub_100003C3C(a1);
  }

  return v3 & 1;
}

unint64_t sub_100292908()
{
  result = qword_1004AECF0;
  if (!qword_1004AECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AECF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitBool(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100292A28@<X0>(uint64_t a1@<X8>)
{
  result = sub_100292FFC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_100292A58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
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
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100292B24(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100292B24(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_1000C34F8(a2, a4, a5);
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
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000C34F8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000C34F8(a3, a4, a5);
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
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
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
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
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

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100292F90(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100292FFC()
{
  v0 = String.subscript.getter();
  v2 = v1;

  v3 = v2 >> 14;
  v4 = v0 >> 14;
  if (v0 >> 14 != v2 >> 14)
  {
    Substring.subscript.getter();
    v5 = Character.isWhitespace.getter();

    if (v5)
    {
      while (1)
      {
        v4 = Substring.index(after:)() >> 14;
        if (v4 == v3)
        {
          break;
        }

        Substring.subscript.getter();
        v6 = Character.isWhitespace.getter();

        if ((v6 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      if (v3 < v4)
      {
        __break(1u);
LABEL_69:

        goto LABEL_20;
      }
    }
  }

  v7 = Substring.subscript.getter();
  v9 = v8;

  v47 = Substring.init(_:)();
  v48 = v10;
  v49 = v11;
  v50 = v12;
  v13 = v7 >> 14;
  if (v7 >> 14 != v9 >> 14)
  {
    v14 = &type metadata for Substring;
    v13 = v9 >> 14;
    while (1)
    {
      v15 = Substring.subscript.getter();

      v16 = Character.isNumber.getter();

      if ((v16 & 1) == 0)
      {

        goto LABEL_15;
      }

      sub_100293A64();
      v17 = &v47;
      dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
      v18 = Substring.index(_:offsetBy:limitedBy:)();
      if (v19)
      {
        v18 = v9;
      }

      if (v13 < v18 >> 14)
      {
        break;
      }

      v7 = Substring.subscript.getter();
      v9 = v20;

      v13 = v9 >> 14;
      if (v7 >> 14 == v9 >> 14)
      {
        v13 = v7 >> 14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_15:
  v15 = v47;
  v21 = v48;
  if ((v48 ^ v47) < 0x4000)
  {
    goto LABEL_69;
  }

  v22 = v49;
  v46 = v50;
  v23 = sub_100292A58(v47, v48, v49, v50, 10);
  if ((v24 & 0x100) == 0)
  {
    v25 = v23;
    v26 = v24;

    if ((v26 & 1) == 0)
    {
      v45 = v25;
      goto LABEL_22;
    }

LABEL_20:

    return 0;
  }

  v27 = sub_10030B9AC(v15, v21, v22, v46, 10);
  v15 = v28;

  if (v15)
  {
    goto LABEL_20;
  }

  v45 = v27;
LABEL_22:
  v16 = v7 >> 14;
  v17 = v7;
  v14 = v13;
  if (v7 >> 14 != v13)
  {
    Substring.subscript.getter();
    v15 = Character.isWhitespace.getter();

    v17 = v7;
    v14 = (v7 >> 14);
    if (v15)
    {
      while (1)
      {
        v17 = Substring.index(after:)();
        v14 = (v17 >> 14);
        if (v17 >> 14 == v13)
        {
          break;
        }

        Substring.subscript.getter();
        v15 = v29;
        v16 = Character.isWhitespace.getter();

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v14 = v13;
    }
  }

LABEL_28:
  if (v13 < v14)
  {
    __break(1u);
    goto LABEL_71;
  }

  v7 = Substring.subscript.getter();
  v31 = v30;

  v47 = Substring.init(_:)();
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v14 = (v7 >> 14);
  if (v7 >> 14 != v31 >> 14)
  {
    v15 = &type metadata for Substring;
    v14 = (v31 >> 14);
    while (1)
    {
      v16 = Substring.subscript.getter();

      v13 = Character.isLetter.getter();

      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_100293A64();
      v17 = &v47;
      dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
      v35 = Substring.index(_:offsetBy:limitedBy:)();
      if (v36)
      {
        v35 = v31;
      }

      if (v14 < v35 >> 14)
      {
        goto LABEL_62;
      }

      v7 = Substring.subscript.getter();
      v31 = v37;

      v14 = (v31 >> 14);
      if (v7 >> 14 == v31 >> 14)
      {
        v14 = (v7 >> 14);
        goto LABEL_38;
      }
    }
  }

LABEL_38:
  v15 = v47;
  v16 = v48;
  v13 = v49;
  v17 = v50;
  if (sub_100292F90(29550, 0xE200000000000000, v47, v48, v49, v50) & 1) != 0 || (sub_100292F90(0x736F6E616ELL, 0xE500000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x6F6365736F6E616ELL, 0xEB0000000073646ELL, v15, v16, v13, v17))
  {

    v13 = 1000000000;
    goto LABEL_42;
  }

  if (sub_100292F90(29557, 0xE200000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x736F7263696DLL, 0xE600000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x6365736F7263696DLL, 0xEC00000073646E6FLL, v15, v16, v13, v17))
  {

    v13 = 1000000000000;
    goto LABEL_42;
  }

  if (sub_100292F90(29549, 0xE200000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x73696C6C696DLL, 0xE600000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x636573696C6C696DLL, 0xEC00000073646E6FLL, v15, v16, v13, v17))
  {

    v13 = 1000000000000000;
    goto LABEL_42;
  }

LABEL_63:
  if ((sub_100292F90(0, 0xE000000000000000, v15, v16, v13, v17) & 1) == 0 && (sub_100292F90(115, 0xE100000000000000, v15, v16, v13, v17) & 1) == 0 && (sub_100292F90(6514035, 0xE300000000000000, v15, v16, v13, v17) & 1) == 0 && (sub_100292F90(0x73646E6F636573, 0xE700000000000000, v15, v16, v13, v17) & 1) == 0)
  {
    goto LABEL_72;
  }

  v13 = 1000000000000000000;

  while (1)
  {
LABEL_42:
    v16 = v7 >> 14;
    v17 = v7;
    v38 = v14;
    if ((v7 >> 14) != v14)
    {
      Substring.subscript.getter();
      v15 = Character.isWhitespace.getter();

      v17 = v7;
      v38 = (v7 >> 14);
      if (v15)
      {
        while (1)
        {
          v17 = Substring.index(after:)();
          v38 = (v17 >> 14);
          if ((v17 >> 14) == v14)
          {
            break;
          }

          Substring.subscript.getter();
          v15 = v39;
          v16 = Character.isWhitespace.getter();

          if ((v16 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v38 = v14;
      }
    }

LABEL_48:
    if (v14 >= v38)
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    if (sub_100292F90(109, 0xE100000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(7235949, 0xE300000000000000, v15, v16, v13, v17) & 1) != 0 || (sub_100292F90(0x736574756E696DLL, 0xE700000000000000, v15, v16, v13, v17))
    {

      v44 = 60 * v45;
      if ((v45 * 60) >> 64 != (60 * v45) >> 63)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (sub_100292F90(29288, 0xE200000000000000, v15, v16, v13, v17))
      {
      }

      else
      {
        v15 = sub_100292F90(0x7372756F68, 0xE500000000000000, v15, v16, v13, v17);

        if ((v15 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v44 = 3600 * v45;
      if ((v45 * 3600) >> 64 != (3600 * v45) >> 63)
      {
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }
    }

    v13 = 1000000000000000000;
    v45 = v44;
  }

  v40 = Substring.subscript.getter();
  v42 = v41;

  if ((v40 ^ v42) >= 0x4000)
  {
    return 0;
  }

  return v13 * v45;
}

unint64_t sub_100293A64()
{
  result = qword_1004AECF8;
  if (!qword_1004AECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AECF8);
  }

  return result;
}

unint64_t Substring.collect(while:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v16 = Substring.init(_:)();
  v3 = v1[1];
  v4 = v3 >> 14;
  if (v3 >> 14 == *v1 >> 14)
  {
    return v16;
  }

  while (1)
  {
    Substring.subscript.getter();
    v5 = a1();
    if (v15)
    {
    }

    if ((v5 & 1) == 0)
    {

      return v16;
    }

    sub_100293A64();
    dispatch thunk of RangeReplaceableCollection.insert(_:at:)();
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      result = v3;
    }

    if (v4 < result >> 14)
    {
      break;
    }

    v8 = Substring.subscript.getter();
    v3 = v9;
    v11 = v10;
    v13 = v12;

    *v2 = v8;
    v2[1] = v3;
    v2[2] = v11;
    v2[3] = v13;
    v4 = v3 >> 14;
    if (v3 >> 14 == v8 >> 14)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

char *String.hexadecimalASCIIBytes.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_78;
  }

  v4 = HIBYTE(a2);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2);
  }

  else
  {
    LOBYTE(v5) = a1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = (a2 & 0x2000000000000000) == 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_9:
  v8 = (v7 / 2) & ~((v7 + (v7 >> 63)) >> 63);

  v9 = sub_100011D30(0, v8, 0, _swiftEmptyArrayStorage);
  if (v6)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v4 & 0xF;
  }

  if (v10)
  {
    v40 = 4 * v10;
    v41 = v10;
    v11 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = 15;
    v39 = v6;
    do
    {
      v14 = v13 & 0xC;
      v15 = v13;
      if (v14 == v12)
      {
        v15 = sub_1000C34F8(v13, a1, a2);
        v10 = v41;
      }

      v16 = v15 >> 16;
      if (v15 >> 16 >= v10)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        if (String.UTF8View._foreignCount()())
        {
          return 0;
        }

        v7 = String.UTF8View._foreignCount()();
        v4 = HIBYTE(a2);
        v6 = (a2 & 0x2000000000000000) == 0;
        goto LABEL_9;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v18 = String.UTF8View._foreignSubscript(position:)();
        v10 = v41;
      }

      else if (v6)
      {
        v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
          v10 = v41;
        }

        v18 = *(v17 + v16);
      }

      else
      {
        v42 = a1;
        v43 = a2 & 0xFFFFFFFFFFFFFFLL;
        v18 = *(&v42 + v16);
      }

      if ((v18 - 58) > 0xF5u)
      {
        v20 = 0;
        v21 = v18 - 48;
        if (v14 != v12)
        {
          goto LABEL_34;
        }
      }

      else if ((v18 - 103) > 0xF9u)
      {
        v20 = 0;
        v21 = v18 - 87;
        if (v14 != v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v19 = (v18 - 71);
        v20 = v19 < 0xFA;
        if (v19 >= 0xFA)
        {
          v21 = v18 - 55;
        }

        else
        {
          v21 = 0;
        }

        if (v14 != v12)
        {
LABEL_34:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_38;
        }
      }

      v23 = sub_1000C34F8(v13, a1, a2);
      v10 = v41;
      v13 = v23;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_35:
        v22 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_40;
      }

LABEL_38:
      if (v10 <= v13 >> 16)
      {
        goto LABEL_76;
      }

      v24 = String.UTF8View._foreignIndex(after:)();
      v10 = v41;
      v22 = v24;
LABEL_40:
      v25 = v22 & 0xC;
      v26 = v22;
      if (v25 == v12)
      {
        v26 = sub_1000C34F8(v22, a1, a2);
        v10 = v41;
      }

      v27 = v26 >> 16;
      if (v26 >> 16 >= v10)
      {
        goto LABEL_75;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v29 = String.UTF8View._foreignSubscript(position:)();
        v10 = v41;
      }

      else if (v6)
      {
        v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = _StringObject.sharedUTF8.getter();
          v10 = v41;
        }

        v29 = *(v28 + v27);
      }

      else
      {
        v42 = a1;
        v43 = a2 & 0xFFFFFFFFFFFFFFLL;
        v29 = *(&v42 + v27);
      }

      if ((v29 - 58) > 0xF5u)
      {
        v31 = 0;
        v32 = v29 - 48;
        if (v25 != v12)
        {
          goto LABEL_58;
        }
      }

      else if ((v29 - 103) > 0xF9u)
      {
        v31 = 0;
        v32 = v29 - 87;
        if (v25 != v12)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v30 = (v29 - 71);
        v31 = v30 < 0xFA;
        if (v30 >= 0xFA)
        {
          v32 = v29 - 55;
        }

        else
        {
          v32 = 0;
        }

        if (v25 != v12)
        {
LABEL_58:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }
      }

      v33 = sub_1000C34F8(v22, a1, a2);
      v10 = v41;
      v22 = v33;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_59:
        if (v20)
        {
          goto LABEL_71;
        }

        v13 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v31)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }

LABEL_64:
      if (v10 <= v22 >> 16)
      {
        goto LABEL_77;
      }

      v34 = String.UTF8View._foreignIndex(after:)();
      v10 = v41;
      if (v20 || (v13 = v34, v31))
      {
LABEL_71:

        return 0;
      }

LABEL_67:
      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      if (v36 >= v35 >> 1)
      {
        v37 = sub_100011D30((v35 > 1), v36 + 1, 1, v9);
        v10 = v41;
        v9 = v37;
      }

      LOBYTE(v6) = v39;
      *(v9 + 2) = v36 + 1;
      v9[v36 + 32] = v32 | (16 * v21);
    }

    while (v40 > v13 >> 14);
  }

  return v9;
}