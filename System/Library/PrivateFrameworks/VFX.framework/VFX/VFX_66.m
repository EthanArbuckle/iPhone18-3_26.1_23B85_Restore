unint64_t sub_1AF6458EC()
{
  result = qword_1EB63D100;
  if (!qword_1EB63D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D100);
  }

  return result;
}

unint64_t sub_1AF645954()
{
  result = qword_1EB63D108;
  if (!qword_1EB63D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D108);
  }

  return result;
}

unint64_t sub_1AF6459AC()
{
  result = qword_1EB63D110;
  if (!qword_1EB63D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D110);
  }

  return result;
}

uint64_t sub_1AF645A00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF645A60()
{
  if (!qword_1EB63D118)
  {
    sub_1AF5C5358(255, &qword_1ED7270D0);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D118);
    }
  }
}

uint64_t destroy for EntityKeyPath()
{
}

uint64_t initializeWithCopy for EntityKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);

  return a1;
}

uint64_t assignWithCopy for EntityKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

__n128 initializeWithTake for EntityKeyPath(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for EntityKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

uint64_t getEnumTagSinglePayload for EntityKeyPath(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t storeEnumTagSinglePayload for EntityKeyPath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF64622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_1AFDFDE28();
  v6 = (*(a4 + 40))(v5);

  return v6;
}

uint64_t sub_1AF6462AC(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1AF441150(a1, v5);
  LODWORD(v5) = *(sub_1AF6950BC(v5, v6) + 87);

  if (v5 == 1)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF3D8();
    v7 = a1[3];
    v8 = a1[4];
    sub_1AF441150(a1, v7);
    sub_1AF6950BC(v7, v8);
    sub_1AF696A20(a2);

    sub_1AF448018(v12, v13);
    sub_1AFDFEF38();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AF448018(v12, v13);
  sub_1AF6457DC();
  sub_1AFDFEC38();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  v9 = sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_12;
  }

  if (swift_conformsToProtocol2() && v9)
  {
    sub_1AF448018(v12, v13);
    sub_1AFDFEBE8();
    v10 = *(a2 + 210);
    sub_1AF448018(v12, v13);
    sub_1AFDFEBF8();
    if ((v10 & 0x400) != 0)
    {
      sub_1AF448018(v12, v13);
      sub_1AF60874C();
      sub_1AFDFEC38();
      sub_1AF448018(v12, v13);
      sub_1AF487468();
      sub_1AFDFEC38();
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

LABEL_13:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF646614(uint64_t a1)
{
  sub_1AFDFF288();
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](*(a1 + 40));
    sub_1AFDFD038();
    return sub_1AFDFF2F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF6466CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF6479F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF64671C()
{
  v1 = *v0;
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](*(v1 + 40));

    return sub_1AFDFD038();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF6467C4()
{
  v1 = *v0;
  sub_1AFDFF288();
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](*(v1 + 40));
    sub_1AFDFD038();
    return sub_1AFDFF2F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AF646888()
{
  result = qword_1EB63D120;
  if (!qword_1EB63D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D120);
  }

  return result;
}

uint64_t sub_1AF6468DC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return sub_1AF647714(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF646904(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AF480018();
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF6488B4();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF6469F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF648518(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AF646A44@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v8[3] = &type metadata for Entity;
  v8[4] = &off_1F2535EA8;
  v8[0] = *v1;
  v4 = sub_1AF441150(v8, &type metadata for Entity);
  v7[3] = &type metadata for Entity;
  v7[4] = &off_1F2535EA8;
  v5 = sub_1AF585714(v7);
  *v5 = sub_1AF6C97E0(*v4);
  sub_1AF648908();
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  *a1 = v8[5];
  a1[1] = v3;
}

uint64_t sub_1AF646B0C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AF480018();
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF6489C0();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

BOOL sub_1AF646C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1AF64760C(v5, v7);
}

double sub_1AF646C68@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF64788C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

__n128 sub_1AF646CD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v12 = &type metadata for Entity;
  v13 = &off_1F2535EA8;
  *&v11 = v4;
  v5 = sub_1AF441150(&v11, &type metadata for Entity);
  v10[3] = &type metadata for Entity;
  v10[4] = &off_1F2535EA8;
  v6 = sub_1AF585714(v10);
  *v6 = sub_1AF6C97E0(*v5);
  sub_1AF648908();
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v11);
  v7 = v14;
  v8 = v1[3];
  v11 = *(v2 + 1);
  sub_1AF450FE0(&v11, v10);

  *a1 = v7;
  *(a1 + 8) = *(v2 + 1);
  *(a1 + 24) = v8;
  result = *(v2 + 2);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v2 + 12);
  return result;
}

double sub_1AF646DCC@<D0>(uint64_t a1@<X8>)
{
  sub_1AF646CD0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1AF646E24()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF646EEC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF646FA0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF647064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF647840();
  *a1 = result;
  return result;
}

void sub_1AF647094(unint64_t *a1@<X8>)
{
  v2 = 0x79747265706F7270;
  v3 = *v1;
  v4 = 0xEC00000068746150;
  v5 = 0xEC00000065707954;
  if (v3 == 2)
  {
    v6 = 0x79747265706F7270;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3 != 2)
  {
    v5 = 0x80000001AFF23620;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x80000001AFF235F0;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v6;
    v7 = v5;
  }

  *a1 = v2;
  a1[1] = v7;
}

unint64_t sub_1AF647118()
{
  v1 = 0x79747265706F7270;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0x79747265706F7270;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF647198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF647840();
  *a1 = result;
  return result;
}

uint64_t sub_1AF6471C0(uint64_t a1)
{
  v2 = sub_1AF648A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6471FC(uint64_t a1)
{
  v2 = sub_1AF648A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF647238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x797469746E65;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x80000001AFF24370;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x797469746E65;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF24370;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF6472E0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF647364()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF6473D4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF647454@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

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

void sub_1AF6474B4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF24370;
  v3 = 0x797469746E65;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AF6474F4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1AF647530@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

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

uint64_t sub_1AF647594(uint64_t a1)
{
  v2 = sub_1AF64880C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6475D0(uint64_t a1)
{
  v2 = sub_1AF64880C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1AF64760C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1AFDFDFD8();
  return v6 == sub_1AFDFDFD8() && (v2 == v4 && v3 == v5 || (sub_1AFDFEE28() & 1) != 0);
}

uint64_t sub_1AF647714(void *a1, void *a2)
{
  v4 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v4 != v6 || a1[5] != a2[5])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AF647840()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF64788C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v13, v14);
  sub_1AF47FEB4();
  sub_1AFDFEAD8();
  sub_1AF448018(v13, v14);
  sub_1AF64896C();
  sub_1AFDFEAD8();
  v15 = v11;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v5 = v15;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v7;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v5;
  *(a2 + 50) = v12;
  return result;
}

uint64_t sub_1AF6479F8(void *a1)
{
  sub_1AF648A14(0, &unk_1ED721EE0, sub_1AF648A74);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v60 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(2002, v9, v10))
  {
    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    LODWORD(v11) = *(sub_1AF6950A0(v11, v12) + 87);

    if (v11 == 1)
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v1)
      {
        sub_1AF441150(&v64, *(&v65 + 1));
        v13 = sub_1AFDFEE98();
        v14 = a1[3];
        v15 = a1[4];
        sub_1AF441150(a1, v14);
        v16 = sub_1AF6950A0(v14, v15);
        if (v13 < 0 || (v17 = *(v16 + 144), *(v17 + 16) <= v13))
        {
        }

        else
        {
          v5 = *(v17 + 8 * v13 + 32);

          if (v5)
          {
            goto LABEL_26;
          }
        }

        *&v63 = 0;
        *(&v63 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v63 = 0xD000000000000015;
        *(&v63 + 1) = 0x80000001AFF2DA00;
        LODWORD(v66) = v13;
        v32 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v32);

        v33 = v63;
        sub_1AF4567E0();
        swift_allocError();
        *v34 = v33;
        *(v34 + 16) = 0;
        swift_willThrow();
LABEL_26:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
      }

LABEL_27:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      return v5;
    }
  }

  v18 = a1[3];
  v19 = a1[4];
  sub_1AF441150(a1, v18);
  if (!sub_1AF69504C(2002, v18, v19))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (v1)
    {
      goto LABEL_27;
    }

    sub_1AF448018(&v64, *(&v65 + 1));
    sub_1AF645788();
    sub_1AFDFEAD8();
    v20 = v63;
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_38;
    }

    sub_1AF448018(&v64, *(&v65 + 1));
    v61 = sub_1AFDFEA78();
    v62 = v21;
    v22 = swift_conformsToProtocol2();
    if (!v22 || !v20)
    {
      goto LABEL_39;
    }

    v23 = v22;
    v24 = a1[3];
    v25 = a1[4];
    sub_1AF441150(a1, v24);
    if (sub_1AF69504C(2033, v24, v25))
    {
      v26 = a1[3];
      v27 = a1[4];
      sub_1AF441150(a1, v26);
      v28 = sub_1AF695174(v26, v27);
      if ((*(v23 + 16))(v28, 0, v20, v23))
      {
LABEL_18:
        sub_1AF448018(&v64, *(&v65 + 1));
        sub_1AF60832C();
        sub_1AFDFEAD8();
        v29 = v66;
        sub_1AF448018(&v64, *(&v65 + 1));
        sub_1AF487170();
        sub_1AFDFEAD8();
        v60 = v63;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
        v30 = v60;
        v31 = v29;
LABEL_36:
        v64 = 0u;
        v65 = 0u;
        v5 = (*(v23 + 64))(v61, v62, v31, v30, *(&v30 + 1), 0, 1, 0, 1, 0, 1, 0, 0, &v64, 0, v20, v23);

        sub_1AF44CB60(&v64);
        goto LABEL_27;
      }
    }

    else
    {
      sub_1AF448018(&v64, *(&v65 + 1));
      v40 = sub_1AFDFEA88();
      if (v40)
      {
        goto LABEL_18;
      }
    }

    v42 = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
    goto LABEL_31;
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF648A74();
  sub_1AFDFF3B8();
  if (v1)
  {
    goto LABEL_27;
  }

  LOBYTE(v63) = 0;
  sub_1AF645788();
  sub_1AFDFE768();
  v20 = v64;
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v64) = 1;
  v61 = sub_1AFDFE708();
  v62 = v35;
  v36 = swift_conformsToProtocol2();
  if (v36 && v20)
  {
    v23 = v36;
    v37 = a1[3];
    v38 = a1[4];
    sub_1AF441150(a1, v37);
    v39 = sub_1AF695174(v37, v38);
    if ((*(v23 + 16))(v39, 0, v20, v23))
    {
      LOBYTE(v64) = 2;
      sub_1AF60832C();
      sub_1AFDFE768();
      v31 = v63;
      LOBYTE(v66) = 3;
      sub_1AF487170();
      sub_1AFDFE768();
      (*(v5 + 8))(v8, v4);
      v30 = v64;
      goto LABEL_36;
    }

    v42 = (*(v5 + 8))(v8, v4);
LABEL_31:
    *&v60 = &v60;
    v44 = *(v20 - 8);
    v45 = MEMORY[0x1EEE9AC00](v42, v43);
    v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(*(v23 + 8) + 8))(v20, v45);
    v48 = v62;
    v49 = sub_1AF64622C(v61, v62, v20, v23);
    v50 = *(v44 + 8);
    v5 = v44 + 8;
    v50(v47, v20);
    if (v49)
    {
      v51 = a1[3];
      v52 = a1[4];
      sub_1AF441150(a1, v51);
      v53 = sub_1AF695174(v51, v52);
      v5 = sub_1AF6ACC04(v53, 0);

      if (*(v5 + 112))
      {
      }

      else
      {
        *&v64 = 0;
        *(&v64 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v64 = 0xD000000000000011;
        *(&v64 + 1) = 0x80000001AFF2D9E0;
        v57 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v57);

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v61, v62);

        v58 = v64;
        sub_1AF4567E0();
        swift_allocError();
        *v59 = v58;
        *(v59 + 16) = 33;
        swift_willThrow();
      }
    }

    else
    {
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v64 = 0xD000000000000011;
      *(&v64 + 1) = 0x80000001AFF2D9C0;
      v54 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v54);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v61, v48);

      v55 = v64;
      sub_1AF4567E0();
      swift_allocError();
      *v56 = v55;
      *(v56 + 16) = 32;
      swift_willThrow();
    }

    goto LABEL_27;
  }

LABEL_39:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF648518(void *a1)
{
  sub_1AF648A14(0, &qword_1ED721ED0, sub_1AF64880C);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v14 - v7;
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (!sub_1AF69504C(2000, v9, v10))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      sub_1AF448018(v15, v16);
      sub_1AF47FEB4();
      sub_1AFDFEAD8();
      v12 = v14[0];
      v11 = v14[1];
      sub_1AF448018(v15, v16);
      sub_1AF648860();
      sub_1AFDFEAD8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AF64880C();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v14[0]) = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v14[0]) = 1;
  sub_1AF648860();
  sub_1AFDFE768();
  (*(v5 + 8))(v8, v4);
LABEL_7:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v12 | (v11 << 32);
}

unint64_t sub_1AF64880C()
{
  result = qword_1ED722508;
  if (!qword_1ED722508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722508);
  }

  return result;
}

unint64_t sub_1AF648860()
{
  result = qword_1ED72AEA0;
  if (!qword_1ED72AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72AEA0);
  }

  return result;
}

unint64_t sub_1AF6488B4()
{
  result = qword_1ED72AEA8;
  if (!qword_1ED72AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72AEA8);
  }

  return result;
}

unint64_t sub_1AF648908()
{
  result = qword_1ED722510;
  if (!qword_1ED722510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED722510);
  }

  return result;
}

unint64_t sub_1AF64896C()
{
  result = qword_1EB6337F0;
  if (!qword_1EB6337F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6337F0);
  }

  return result;
}

unint64_t sub_1AF6489C0()
{
  result = qword_1EB63D128;
  if (!qword_1EB63D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D128);
  }

  return result;
}

void sub_1AF648A14(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AFDFE818();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF648A74()
{
  result = qword_1ED7226E0;
  if (!qword_1ED7226E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7226E0);
  }

  return result;
}

void sub_1AF648AC8()
{
  if (!qword_1ED726850)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726850);
    }
  }
}

uint64_t assignWithCopy for EntityComponentProperty(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for EntityComponentProperty(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

unint64_t sub_1AF648BD8()
{
  result = qword_1EB63D130;
  if (!qword_1EB63D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D130);
  }

  return result;
}

unint64_t sub_1AF648C30()
{
  result = qword_1EB63D138;
  if (!qword_1EB63D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D138);
  }

  return result;
}

unint64_t sub_1AF648C88()
{
  result = qword_1ED7226D0;
  if (!qword_1ED7226D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7226D0);
  }

  return result;
}

unint64_t sub_1AF648CE0()
{
  result = qword_1ED7226D8;
  if (!qword_1ED7226D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7226D8);
  }

  return result;
}

unint64_t sub_1AF648D38()
{
  result = qword_1ED7224F8;
  if (!qword_1ED7224F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7224F8);
  }

  return result;
}

unint64_t sub_1AF648D90()
{
  result = qword_1ED722500;
  if (!qword_1ED722500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722500);
  }

  return result;
}

uint64_t sub_1AF648DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AF648EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(*(a2 + 8) + 48))())
  {
    sub_1AF5B4D64(a3, a4, a5, a1, a2, 1);
  }

  v13 = *(v6 + 24);

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = sub_1AF65A4B4(v13, a1, a2, 0, 0, v18, v16);

  sub_1AF5DD41C(v16);
  sub_1AF5DD41C(v18);
  return sub_1AF64A824(a3, a4, a5, v14, a6);
}

void sub_1AF648FE4(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 40) + 200) == 1)
  {
    *(*(v2 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
  }

  sub_1AF705690(a1, a2);
  sub_1AF64A40C(a1, a2, *(v2 + 232));
  v5 = *(v2 + 16);
  v6 = a2 - a1;
  if (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 44), v6);
  }

  if (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 48), -v6);
  }

  ++*(v2 + 116);
}

void *sub_1AF6490A8()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *v0;
  v4 = v2 - v1;
  if (v2 != v1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v0 + 16);
    do
    {
      if (v7 < v1)
      {
        v9 = v1 + v6 - v7;
        while (v6 == v3[v7])
        {
          ++v7;
          ++v6;
          if (v1 == v7)
          {
            v6 = v9;
            v7 = v1;
            break;
          }
        }
      }

      v3[v8++] = v6++;
    }

    while (v8 != v2);
  }

  *(v0 + 16) = v4;
  return memmove(v3, &v3[v1], 8 * v4);
}

void sub_1AF649128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[5] + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = v3[16];
    v9 = *(a3 + 128);

    v10 = (v4 + 64);
    do
    {
      if (*v10 == 1)
      {
        memmove((v9 + *(v10 - 2) * a2 + *(v10 - 1)), (v8 + *(v10 - 2) * a1 + *(v10 - 1)), *(v10 - 2));
      }

      else
      {
        sub_1AF641770();
      }

      v10 += 40;
      --v5;
    }

    while (v5);
  }

  v11 = v3[2] + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v11)
  {
    v12 = v3[9];
    v13 = *(v11 + 60);

    vfx_counters.add(_:_:)(v13, v12);
  }
}

uint64_t sub_1AF64923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AF640D40(a8);
  if (result >= 1 && a7 != 0)
  {
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v19 = *a5++;
      v18 = v19;
      if (v19 != v17)
      {
        v20 = v17 - v16;
        if (v17 > v16)
        {
          result = sub_1AF640D58(a1, v15, a3, v16, v17 - v16, a8);
          v15 += v20;
        }

        v16 = v18;
      }

      v17 = v18 + 1;
      --a7;
    }

    while (a7);
    if (v17 > v16)
    {

      return sub_1AF640D58(a1, v15, a3, v16, v17 - v16, a8);
    }
  }

  return result;
}

uint64_t sub_1AF649348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AF640D40(a8);
  if (result >= 1 && a3 != 0)
  {
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v19 = *a1++;
      v18 = v19;
      if (v19 != v17)
      {
        v20 = v17 - v16;
        if (v17 > v16)
        {
          result = sub_1AF640D58(a4, v16, a6, v15, v17 - v16, a8);
          v15 += v20;
        }

        v16 = v18;
      }

      v17 = v18 + 1;
      --a3;
    }

    while (a3);
    if (v17 > v16)
    {

      return sub_1AF640D58(a4, v16, a6, v15, v17 - v16, a8);
    }
  }

  return result;
}

uint64_t sub_1AF649454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1AF640D40(a8);
  if (result >= 1 && a7 != 0)
  {
    v15 = 0;
    result = a9 + 32;
    v16 = -1;
    v17 = -1;
    do
    {
      v19 = *a5++;
      v18 = v19;
      if (v19 != v17)
      {
        v20 = v17 - v16;
        if (v17 > v16)
        {
          result = (*(a9 + 32))(a1, a2, v15, a3, a4);
          v15 += v20;
        }

        v16 = v18;
      }

      v17 = v18 + 1;
      --a7;
    }

    while (a7);
    if (v17 > v16)
    {
      v21 = *(a9 + 32);

      return v21(a1, a2, v15, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1AF6495A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1AF640D40(a8);
  if (result >= 1 && a5 != 0)
  {
    v15 = 0;
    result = a9 + 40;
    v16 = -1;
    v17 = -1;
    do
    {
      v19 = *a3++;
      v18 = v19;
      if (v19 != v17)
      {
        v20 = v17 - v16;
        if (v17 > v16)
        {
          result = (*(a9 + 40))(a1, a2);
          v15 += v20;
        }

        v16 = v18;
      }

      v17 = v18 + 1;
      --a5;
    }

    while (a5);
    if (v17 > v16)
    {
      v21 = *(a9 + 40);

      return v21(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1AF6496EC(uint64_t a1)
{
  v3 = *(v1 + 184);

  if (v3)
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v5 = *(*(v1 + 168) + 4 * a1);
    v6 = *(*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5 + 8);

    return v5 | (v6 << 32);
  }

  return result;
}

void sub_1AF6497A0(char *a1, char *a2)
{
  v3 = v2;
  if (a2 == a1)
  {
    if (*(v2 + 184))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(v2 + 64);
    v9 = *(v2 + 96);
    v21 = *(v2 + 80);
    v22 = v9;
    v10 = *(v2 + 64);
    v20[0] = *(v2 + 48);
    v20[1] = v10;
    v17 = v21;
    v18 = *(v2 + 96);
    v23 = *(v2 + 112);
    v19 = *(v2 + 112);
    v15 = v20[0];
    v16 = v8;
    sub_1AF5DD36C(v20, v24);
    sub_1AF64FA78();
    v24[2] = v17;
    v24[3] = v18;
    v25 = v19;
    v24[0] = v15;
    v24[1] = v16;
    sub_1AF5DD3C8(v24);
    if (*(v2 + 184))
    {
LABEL_3:
      v6 = *(v2 + 192);
      if (!v6)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  v11 = *(v2 + 168);
  v12 = *(v2 + 16);
  v13 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_lock(v13);

  sub_1AF649938(a1, a2, v11);

  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

  os_unfair_lock_unlock(v14);

  v6 = *(v3 + 192);
  if (!v6)
  {
    return;
  }

LABEL_4:
  v7 = *(v3 + 208);
  sub_1AF75D364(a1, a2, v6);
  sub_1AF75D364(a1, a2, v7);
}

char *sub_1AF649938(char *result, char *a2, uint64_t a3)
{
  v4 = a2 - result;
  if (a2 != result)
  {
    v5 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
    v6 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
    v7 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v8 = &result[*(v3 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount)];
    v9 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
    v10 = (a3 + 4 * result);
    do
    {
      v11 = *v10++;
      result = (v7 + 12 * v11);
      *result = v9;
      *(result + 1) = -1;
      ++*(result + 2);
      *(v3 + v5) = v11;
      v9 = v11;
      --v4;
    }

    while (v4);
    *(v3 + v6) = v8 - a2;
  }

  return result;
}

uint64_t sub_1AF6499AC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 128);
  if (v3)
  {
    v4 = v3 - *(v0 + 136);
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 56), v4);
  }

  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 52), -1);
  }

  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 44), *(v0 + 240) - *(v0 + 232));
  }

  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 48), *(v0 + 232) - *(v0 + 240));
  }

  if (*(v0 + 240) != *(v0 + 256))
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = v6;
    v7 = *(v0 + 64);
    v27[0] = *(v0 + 48);
    v27[1] = v7;
    v24 = v28;
    v25 = *(v0 + 96);
    v30 = *(v0 + 112);
    v26 = *(v0 + 112);
    v22 = v27[0];
    v23 = v5;
    sub_1AF5DD36C(v27, &v31);
    sub_1AF64FA78();
    v33 = v24;
    v34 = v25;
    v35 = v26;
    v31 = v22;
    v32 = v23;
    sub_1AF5DD3C8(&v31);
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 164);
  v12 = *(v2 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 160) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1AF420058(0, *(v12 + 2) + 1, 1, v12);
    *(v2 + 160) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1AF420058(v14 > 1, v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[24 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v9;
  *(v16 + 12) = v10;
  v16[52] = v11;
  *(v2 + 160) = v12;

  v17 = *(v1 + 192);
  if (v17)
  {
    v18 = *(v1 + 208);
    free(v17);
    free(v18);
  }

  MEMORY[0x1B271DEA0](*(v1 + 344), -1, -1);
  MEMORY[0x1B271DEA0](*(v1 + 376), -1, -1);
  v19 = *(v1 + 96);
  v33 = *(v1 + 80);
  v34 = v19;
  v35 = *(v1 + 112);
  v20 = *(v1 + 64);
  v31 = *(v1 + 48);
  v32 = v20;
  sub_1AF5DD3C8(&v31);
  return v1;
}

uint64_t sub_1AF649C14()
{
  sub_1AF6499AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF649C6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(result + 16);
  v5 = *(v4 + 128);
  v6 = *(v5 + 16);
  if (v6)
  {
    result = sub_1AF449CB8(a2);
    LOBYTE(v6) = (v8 & 1) != 0 && *(*(v4 + 24) + 16 * *(*(v5 + 56) + 8 * result) + 32) == a2;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AF649CEC()
{
  v1 = *(v0 + 40);

  LOBYTE(v1) = sub_1AF657FCC(v1);

  return v1 & 1;
}

uint64_t sub_1AF649D40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = 8 * a1;
  v6 = *(*(v4 + 88) + v5 + 32);
  v7 = *(*(v1 + 40) + 212);

  v8 = *(v6 + 212);
  *(v1 + 24) = a1;
  *(v1 + 40) = *(*(v4 + 88) + v5 + 32);
  v9 = *(v6 + 56);
  v47 = *(v6 + 40);
  v48 = v9;
  v49 = *(v6 + 72);
  v50 = *(v6 + 88);
  v46 = *(v6 + 24);
  v10 = *(v1 + 96);
  v51[2] = *(v1 + 80);
  v51[3] = v10;
  v52 = *(v1 + 112);
  v11 = *(v1 + 64);
  v51[0] = *(v1 + 48);
  v51[1] = v11;
  v12 = v46;
  v13 = v47;
  v14 = v48;
  v15 = v49;
  *(v1 + 112) = v50;
  *(v1 + 80) = v14;
  *(v1 + 96) = v15;
  *(v1 + 48) = v12;
  *(v1 + 64) = v13;
  sub_1AF5DD36C(&v46, v45);
  sub_1AF5DD3C8(v51);
  if ((v7 & 1) != 0 || !v8)
  {
    if (((v7 ^ 1 | v8) & 1) == 0)
    {
      v26 = (v1 + 192);
      v25 = *(v1 + 192);
      if (v25)
      {
        v27 = *(v1 + 208);
        free(v25);
        free(v27);
      }

      *v26 = 0u;
      *(v2 + 208) = 0u;
    }
  }

  else
  {
    v16 = *(&v48 + 1);
    v17 = (*(&v48 + 1) + 63) >> 6;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = 8 * v17;
    v19 = aligned_alloc(8uLL, 8 * v17);
    bzero(v19, v18);
    v20 = aligned_alloc(8uLL, v18);
    bzero(v20, v18);
    *(v1 + 192) = v19;
    *(v1 + 200) = v16;
    *(v1 + 208) = v20;
    *(v1 + 216) = v16;
    v21 = *(v1 + 232);
    v22 = *(v1 + 240);
    if (v22 != v21)
    {
      v23 = *(v1 + 192);
      if (v23)
      {
        v24 = *(v1 + 208);
        sub_1AF75D408(*(v1 + 232), *(v1 + 240), v23);
        sub_1AF75D364(v21, v22, v24);
      }

      sub_1AF705690(v21, v22);
    }
  }

  v28 = sub_1AF62173C(a1);

  v29 = *(v2 + 188);
  v30 = *(v2 + 120);
  v31 = *(v4 + 136);

  os_unfair_lock_lock(v31);
  v32 = *(v4 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 104) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v4 + 104) = sub_1AFC0D9B8(v32);
  }

  sub_1AF621324(v29, v30);
  v34 = *(v4 + 104) + 40 * a1;
  if (v30)
  {
    v35 = *(v34 + 32);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 32) = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AF420E8C(0, *(v35 + 2) + 1, 1, v35);
      *(v34 + 32) = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1AF420E8C(v37 > 1, v38 + 1, 1, v35);
      *(v34 + 32) = v35;
    }

    *(v35 + 2) = v38 + 1;
    *&v35[4 * v38 + 32] = v29;
    *(v34 + 64) = v29;
  }

  else
  {
    v39 = *(v34 + 40);
    sub_1AF64B7B0(v39, v39, v29);
    *(v34 + 40) = v39 + 1;
    *(v34 + 68) = v29;
  }

  *(v34 + 56) = 1;
  os_unfair_lock_unlock(*(v4 + 136));

  if (!v28)
  {

    sub_1AF6AFD3C(a1);
  }

  if (*(v2 + 184) != 1)
  {
    v40 = *(v2 + 232);
    v41 = *(v2 + 240) - v40;
    if (v41)
    {
      v42 = (*(v2 + 168) + 4 * v40);
      do
      {
        v43 = *v42++;
        *(*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v43 + 6) = a1;
        --v41;
      }

      while (v41);
    }
  }
}

void sub_1AF64A0E0(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v3 = v2;
    v5 = a1;
    v6 = *(v2 + 64);
    v7 = *(v2 + 96);
    v33 = *(v2 + 80);
    v34 = v7;
    v8 = *(v2 + 64);
    v32[0] = *(v2 + 48);
    v32[1] = v8;
    v9 = *(v2 + 96);
    v29 = v33;
    v30 = v9;
    v10 = a1 + 1;
    v35 = *(v2 + 112);
    v31 = *(v2 + 112);
    v27 = v32[0];
    v28 = v6;
    v11 = *(v2 + 128);
    sub_1AF5DD36C(v32, v26);
    sub_1AF64F990(v11, a2, v10);
    v36[2] = v29;
    v36[3] = v30;
    v37 = v31;
    v36[0] = v27;
    v36[1] = v28;
    sub_1AF5DD3C8(v36);
    v12 = *(v2 + 16);
    if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
    {
      vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 64), *(v3 + 72) * (v10 - a2));
    }

    if ((*(v3 + 184) & 1) == 0)
    {
      v25 = v10;
      v13 = *(v3 + 168);
      v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

      os_unfair_lock_lock(v14);

      v15 = *(v3 + 188);
      v16 = (v13 + 4 * v5 - 4);
      do
      {
        v17 = *v16;
        *v16 = vrev64_s32(*v16);
        v18 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17.i32[0];
        v19 = *v18;

        if (v19 == v15)
        {
          *(v18 + 4) = v5;
        }

        --v5;

        v20 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v16->i32[0];
        v21 = *v20;

        if (v21 == v15)
        {
          *(v20 + 4) = v5;
        }

        v16 = (v16 - 4);
      }

      while (a2 != v5);
      v22 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

      os_unfair_lock_unlock(v22);

      v10 = v25;
    }

    v23 = *(v3 + 192);
    if (v23)
    {
      v24 = *(v3 + 208);
      sub_1AF75D2C4(a2, v10, v23);
      sub_1AF75D2C4(a2, v10, v24);
    }
  }
}

uint64_t sub_1AF64A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 192);
  if (v8)
  {
    sub_1AF64F03C(a1, a2, v8, *(a3 + 200), *(a3 + 208));
  }

  sub_1AF5B4FB0(a1, a2, a4);
  v9 = *(a3 + 16);
  v10 = *(a3 + 188);
  v11 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a4 + 4 * a2);
  v12 = *v11;

  if (v12 == v10)
  {
    *(v11 + 4) = a2;
  }

  v13 = *(v9 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(a4 + 4 * a1);
  v14 = *v13;

  if (v14 == v10)
  {
    *(v13 + 4) = a1;
  }
}

void sub_1AF64A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < a1 || a3 >= a2)
  {
    sub_1AF5B4FCC(v3[5], a1, a2, 1, v3);
    return;
  }

  v4 = a2 - a1;
  v5 = v3[29];
  v6 = v5 + a2 - a1;
  v7 = v3[30] - v5;
  v8 = v6;
  if (a2 - a1 < 1)
  {
    if (v7 <= 0)
    {
      v9 = v4 < v7;
LABEL_9:
      if (v9)
      {
        v8 = v3[30];
      }

      else
      {
        v8 = v5 + a2 - a1;
      }
    }
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v7 < v4;
    goto LABEL_9;
  }

  v3[29] = v8;
  v10 = v3[31];
  if (v8 > v10)
  {
    v10 = v8;
  }

  v3[31] = v10;
  v11 = v3[24];
  if (v11)
  {
    v12 = v3[26];
    sub_1AF75D364(v5, v6, v11);

    sub_1AF75D364(v5, v6, v12);
  }
}

void sub_1AF64A520(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[5] + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = v2[16];
    v7 = *(a1 + 96);
    v8 = v3 + 32;
    v9 = *(a1 + 16);
    v10 = *(v9 + 16);
    v11 = (v9 + 32);

    v12 = 0;
    v13 = v10 + 1;
    do
    {
      while (1)
      {
        v14 = (v8 + 40 * v12);
        v15 = *v14;
        v16 = v14[2];
        v17 = v14[3];
        v18 = *(v14 + 32);
        ++v12;
        v19 = v13;
        v20 = v11;
        while (--v19)
        {
          v21 = v20 + 5;
          v22 = *v20;
          v20 += 5;
          if (v22 == v15)
          {
            v19 = *(v21 - 2);
            break;
          }
        }

        if (v18)
        {
          break;
        }

        sub_1AF641760();
        if (v12 == v4)
        {
          goto LABEL_10;
        }
      }

      memcpy((v7 + v19), (v6 + v16 * a2 + v17), v16);
    }

    while (v12 != v4);
LABEL_10:

    v2 = v26;
  }

  v23 = v2[2] + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v23)
  {
    v24 = v2[9];
    v25 = *(v23 + 72);

    vfx_counters.add(_:_:)(v25, v24);
  }
}

void sub_1AF64A684(uint64_t a1, uint64_t a2)
{
  v4 = *(v2[5] + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(a2 + 96);
    v7 = v2[16];
    v8 = v4 + 32;
    v9 = *(a2 + 16);
    v10 = *(v9 + 16);
    v11 = (v9 + 32);

    v12 = 0;
    v13 = v10 + 1;
    do
    {
      while (1)
      {
        v14 = (v8 + 40 * v12);
        v15 = *v14;
        v16 = v14[2];
        v17 = v14[3];
        v18 = *(v14 + 32);
        ++v12;
        v19 = v13;
        v20 = v11;
        while (--v19)
        {
          v21 = v20 + 5;
          v22 = *v20;
          v20 += 5;
          if (v22 == v15)
          {
            v19 = *(v21 - 2);
            break;
          }
        }

        if (v18)
        {
          break;
        }

        sub_1AF641770();
        if (v12 == v5)
        {
          goto LABEL_10;
        }
      }

      memcpy((v7 + v16 * a1 + v17), (v6 + v19), v16);
    }

    while (v12 != v5);
LABEL_10:

    v2 = v26;
  }

  v23 = v2[2] + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v23)
  {
    v24 = v2[9];
    v25 = *(v23 + 60);

    vfx_counters.add(_:_:)(v25, v24);
  }
}

uint64_t sub_1AF64A824(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && *(v5 + 240) - *(v5 + 232) > a3)
  {
    v65 = a5;
    v60 = *(v5 + 120);
    v10 = *(v5 + 28);
    v11 = *(v5 + 32);
    v12 = *(v5 + 16);
    v13 = *(*(v12 + 88) + 8 * a4 + 32);
    v14 = *(v5 + 40);
    v15 = v14[200];
    v67 = a3;
    v68 = v13;

    if ((v15 & 1) != 0 || *(v68 + 200) == 1)
    {
      *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
      v14 = *(v5 + 40);
    }

    if (v14[212])
    {
      LODWORD(v62) = 0;
    }

    else
    {
      LODWORD(v62) = *(v68 + 212);
    }

    v61 = v14[208];
    v66 = *(v5 + 128);
    v43 = *(v5 + 256);
    sub_1AF5B5880(v14, a1, a2, v67, 0, v5);
    v40 = *(v5 + 256);
    v67 = v40 - v43;
    v63 = v43;
    if (v40 == v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v43;
    }

    v79 = v44;
    v45 = *(*(v5 + 40) + 24);
    v46 = *(v45 + 16);
    if (v46)
    {
      v59 = v40;
      v64 = v5;
      v47 = v45 + 32;
      v58 = v45;

      for (i = 0; i != v46; ++i)
      {
        v49 = v47 + 40 * i;
        if ((*(v49 + 32) & 1) == 0)
        {
          v50 = *(v68 + 24);
          v51 = *(v50 + 16);
          if (v51)
          {
            v52 = (v50 + 32);
            while (*v52 != *v49)
            {
              v52 += 5;
              if (!--v51)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
LABEL_48:
            sub_1AF640BC8();
          }
        }
      }

      v5 = v64;
      v40 = v59;
    }

    v53 = v67;
    if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
    {
      vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v67);
    }

    if (*(v5 + 184))
    {
      v54 = 0;
    }

    else
    {
      v54 = *(v5 + 168);
    }

    v78 = 0;

    MEMORY[0x1EEE9AC00](&v57, v55);
    v71 = v40;
    v72 = v54;
    v73 = -1;
    v39 = v63;
    v74 = v63;
    v75 = v40;
    v76 = v63;
    v77 = v40;
    v70 = v63;
    if (v53 >= 1)
    {
      v56 = v60;
      do
      {
        v69 = v11;
        sub_1AF6248A8(a4, v10 | (v11 << 32), v56, v12, &v70, sub_1AF64F020);
      }

      while (v71 - v70 > 0);
    }

    v41 = *(v5 + 192);
    if (!v41)
    {
    }

    goto LABEL_40;
  }

  if ((sub_1AF649CEC() & 1) == 0)
  {
    v18 = *(v5 + 232);
    v17 = *(v5 + 240);
    LODWORD(v59) = *(v5 + 120);
    v19 = *(v5 + 28);
    v20 = *(v5 + 32);
    v21 = *(v5 + 16);
    v22 = *(v5 + 40);
    v23 = v22[200];
    v68 = *(*(v21 + 88) + 8 * a4 + 32);

    if ((v23 & 1) != 0 || *(v68 + 200) == 1)
    {
      *(v21 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
      v22 = *(v5 + 40);
    }

    v24 = v22[212];
    v66 = v19;
    if (v24)
    {
      v61 = 0;
    }

    else
    {
      v61 = *(v68 + 212);
    }

    v60 = v22[208];
    v67 = *(v5 + 128);
    v25 = *(v5 + 256);
    sub_1AF5B4FCC(v22, v18, v17, 0, v5);
    v62 = *(v5 + 256);
    v63 = v25;
    v26 = v62 - v25;
    if (v62 == v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v79 = v27;
    v28 = *(*(v5 + 40) + 24);
    v29 = *(v28 + 16);
    if (v29)
    {
      v64 = v5;
      v65 = a5;
      v30 = v28 + 32;
      v58 = v28;

      for (j = 0; j != v29; ++j)
      {
        v32 = v30 + 40 * j;
        if ((*(v32 + 32) & 1) == 0)
        {
          v33 = *(v68 + 24);
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = (v33 + 32);
            while (*v35 != *v32)
            {
              v35 += 5;
              if (!--v34)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
LABEL_23:
            sub_1AF640BC8();
          }
        }
      }

      v5 = v64;
    }

    if (*(v21 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
    {
      vfx_counters.add(_:_:)(*(v21 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v5 + 72) * v26);
    }

    if (*(v5 + 184))
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v5 + 168);
    }

    v78 = 0;

    MEMORY[0x1EEE9AC00](v37, v38);
    v73 = -1;
    v40 = v62;
    v39 = v63;
    v74 = v63;
    v75 = v62;
    v76 = v63;
    v77 = v62;
    v70 = v63;
    v71 = v62;
    v72 = v36;
    if (v26 >= 1)
    {
      do
      {
        v69 = v20;
        sub_1AF6248A8(a4, v66 | (v20 << 32), v59, v21, &v70, sub_1AF64D030);
      }

      while (v71 - v70 > 0);
    }

    v41 = *(v5 + 192);
    if (!v41)
    {
    }

LABEL_40:
    v42 = *(v5 + 208);
    sub_1AF75D364(v39, v40, v41);
    sub_1AF75D364(v39, v40, v42);
  }

  return sub_1AF649D40(a4);
}

uint64_t sub_1AF64AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = (v12 + 32);
  v14 = *(v12 + 16) + 1;
  while (--v14)
  {
    v15 = v13 + 5;
    v16 = *v13;
    v13 += 5;
    if (v16 == a4)
    {
      v17 = *(v15 - 2);
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = *(a4 - 8);
  v19 = *(v6 + 128) + v17 + *(v18 + 72) * a1;
  v20 = (*(*(a5 + 8) + 48))(a4);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20, v21);
    v24[2] = a4;
    v24[3] = a5;
    v24[4] = v6;
    v24[5] = a1;
    v24[6] = v19;
    v24[7] = a3;
    sub_1AF648DE8(a2, sub_1AF64B70C, v24, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v22);
  }

  return (*(v18 + 24))(v19, a2, a4);
}

uint64_t sub_1AF64AFF4(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 96);
  v4 = *(v2 + 112);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == a1)
    {
      return *(v7 - 2) + v3;
    }
  }

  return 0;
}

uint64_t sub_1AF64B03C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = *(v1 + 96);
  v18 = *(v1 + 80);
  v19 = v4;
  v5 = *(v1 + 64);
  v17[0] = *(v1 + 48);
  v17[1] = v5;
  v6 = *(v1 + 96);
  v14 = v18;
  v15 = v6;
  v20 = *(v1 + 112);
  v16 = *(v1 + 112);
  v12 = v17[0];
  v13 = v3;
  v7 = sub_1AF64FB24(a1);
  v9 = v8;
  v21[2] = v18;
  v21[3] = v15;
  v22 = v16;
  v21[0] = v17[0];
  v21[1] = v13;
  sub_1AF5DD36C(v17, v11);
  sub_1AF5DD3C8(v21);
  if (v9)
  {
    return 0;
  }

  else
  {
    return *(v2 + 128) + v7;
  }
}

uint64_t sub_1AF64B110(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v13 = a1;
  v14 = *(a2 + 8);
  if ((*(v14 + 16))(a1, v14))
  {
    v15 = *(*(*(v6 + 40) + 16) + 48);
    sub_1AF6591BC(v15 + 32, *(v15 + 16), a1, v40);
    v13 = v40[0];
    if (!v40[0])
    {
      return 0;
    }

    v14 = v40[1];
  }

  v37 = a4;
  if (!a3)
  {
    if (v13 == a1)
    {
      return sub_1AF64B03C(v13);
    }

    v23 = sub_1AF640D40(a1);
    if (v23 == sub_1AF640D40(v13))
    {
      return sub_1AF64B03C(v13);
    }
  }

  v38 = a6;
  v39 = a5;
  v16 = sub_1AF64118C(a1);
  v17 = sub_1AF6411A8(a1);
  if (v13 == a1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v13 == a1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v14;
  }

  result = sub_1AF64B03C(v13);
  if (v22)
  {
    return 0;
  }

  if (a3)
  {
    v35 = v21;
    v36 = result;
    v24 = v16 * v39;
    v29 = ecs_stack_allocator_allocate(v38[4], v16 * v39, v17);
    v30 = &v29[v24];
    if (v18)
    {
      sub_1AF6495A0(v36, v35, a3, v26, v39, v29, v30, v18, v19);
    }

    else
    {
      sub_1AF649348(a3, v25, v39, v36, v27, v29, v28, v13);
    }
  }

  else
  {
    if (!v18)
    {
      return result;
    }

    v31 = *(v6 + 240) * v16;
    v35 = v21;
    v36 = result;
    v29 = ecs_stack_allocator_allocate(v38[4], *(v7 + 240) * v16, v17);
    v30 = &v29[v31];
    (*(v19 + 40))(v36, v35, *(v7 + 232), v29, &v29[v31], *(v7 + 232), *(v7 + 240) - *(v7 + 232), v18, v19);
  }

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = v37;
  v32[4] = v39;
  v32[5] = v18;
  v32[6] = v19;
  v32[7] = v29;
  v32[8] = v30;
  v32[9] = v36;
  v32[10] = v35;
  v32[11] = v13;
  v32[12] = v14;
  v32[13] = a1;
  v32[14] = v7;
  v33 = v38[8];
  v34 = (v38[6] + 48 * v33);
  *v34 = v13;
  v34[1] = v14;
  v34[2] = a1;
  v34[3] = v29;
  v34[4] = sub_1AF64ED68;
  v34[5] = v32;
  v38[8] = v33 + 1;
  return v29;
}

uint64_t sub_1AF64B3EC()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x635B6B6E7568433CLL, 0xED00003A7373616CLL);
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0x3A656C646E616820, 0xE800000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](0x3A65766974636120, 0xE800000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](3943982, 0xE300000000000000);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  MEMORY[0x1B2718AE0](0x796F727473656420, 0xEB000000003A6465);
  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](0x3A77656E20, 0xE500000000000000);
  v3 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v3);

  MEMORY[0x1B2718AE0](2629725, 0xE300000000000000);

  v4 = sub_1AF657C34();
  v6 = v5;

  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](15965, 0xE200000000000000);
  return 0;
}

unint64_t sub_1AF64B6B8()
{
  result = qword_1EB63D140;
  if (!qword_1EB63D140)
  {
    type metadata accessor for ComponentsDataChunk();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D140);
  }

  return result;
}

uint64_t sub_1AF64B74C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (; a2 != result; ++a5)
  {
    v6 = *(a6 + 8 * (result >> 6));
    if ((v6 >> result))
    {
      *(a6 + 8 * (result >> 6)) = ((-1 << (result & 0x3F)) - 1) & v6;
      *(a3 + 8 * (a5 >> 6)) |= 1 << a5;
    }

    ++result;
  }

  return result;
}

char *sub_1AF64B7B0(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a1 - a2 + 1;
  v8 = *v3;
  v9 = *(*v3 + 2);
  v10 = v9 + v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v8;
  if (!result || v10 > *(v8 + 3) >> 1)
  {
    if (v9 <= v10)
    {
      v12 = v9 + v7;
    }

    else
    {
      v12 = v9;
    }

    result = sub_1AF420E8C(result, v12, 1, v8);
    v8 = result;
    *v3 = result;
  }

  v13 = v8 + 32;
  v14 = &v8[4 * a1 + 32];
  if (v7)
  {
    result = v14 + 4;
    v15 = &v13[4 * a2];
    v16 = *(v8 + 2);
    v17 = &v13[4 * v16];
    if (v14 + 4 != v15 || result >= v17)
    {
      result = memmove(result, v15, 4 * (v16 - a2));
      v16 = *(v8 + 2);
    }

    *(v8 + 2) = v16 + v7;
  }

  *v14 = a3;
  *v3 = v8;
  return result;
}

uint64_t sub_1AF64B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = *(*v6 + 2);
  v15 = a1 - a2 + v14 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v13 + 3) >> 1)
  {
    if (v14 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v13 = sub_1AF423AFC(isUniquelyReferenced_nonNull_native, v17, 1, v13);
    *v6 = v13;
  }

  result = sub_1AF64B9EC(a1, a2, 1, a3, a4, a5, a6);
  *v6 = v13;
  return result;
}

void sub_1AF64B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 2);
  v9 = a1 - a2 + v8 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    if (v8 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v7 = sub_1AF427DB8(isUniquelyReferenced_nonNull_native, v11, 1, v7);
    *v3 = v7;
  }

  sub_1AF64BB3C(a1, a2, 1, a3);
  *v3 = v7;
}

uint64_t sub_1AF64B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *v7 + 32;
  v15 = (v14 + 32 * a1);
  v16 = &v15[4 * a3];
  v17 = a2 - a1;
  result = swift_arrayDestroy();
  v19 = a3 - v17;
  if (v19)
  {
    v20 = (v14 + 32 * a2);
    v21 = *(v13 + 16);
    if (v16 != v20 || v16 >= v14 + 32 * v21)
    {
      result = memmove(v16, v20, 32 * (v21 - a2));
    }

    *(v13 + 16) += v19;
  }

  if (a3 < 1)
  {
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (a3 != 1)
    {
      v23 = v15 + 4;
      do
      {
        *v23 = a4;
        v23[1] = a5;
        v23[2] = a6;
        v23[3] = a7;
        v23 += 4;
      }

      while (v23 < v16);
    }
  }

  return result;
}

__n128 sub_1AF64BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4 + 32;
  v7 = v6 + 112 * a1;
  v8 = (v7 + 112 * a3);
  v9 = a1 - a2 + a3;
  if (v9)
  {
    v10 = (v6 + 112 * a2);
    v11 = 112 * (*(v5 + 16) - a2);
    if (v8 != v10 || v8 >= &v10[v11])
    {
      v13 = a3;
      v14 = a4;
      memmove((v7 + 112 * a3), v10, v11);
      a3 = v13;
      a4 = v14;
    }

    *(v5 + 16) += v9;
  }

  if (a3 >= 1)
  {
    do
    {
      v16 = *(a4 + 80);
      *(v7 + 64) = *(a4 + 64);
      *(v7 + 80) = v16;
      *(v7 + 96) = *(a4 + 96);
      v17 = *(a4 + 16);
      *v7 = *a4;
      *(v7 + 16) = v17;
      result = *(a4 + 48);
      *(v7 + 32) = *(a4 + 32);
      *(v7 + 48) = result;
      v7 += 112;
    }

    while (v7 < v8);
  }

  return result;
}

uint64_t (*sub_1AF64BC10(char ***a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AFC0D9B8(v3);
  }

  a1[1] = v3;
  return sub_1AF64BC88;
}

unint64_t sub_1AF64BC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 8 * a1;
  v9 = a2 - a1;
  sub_1AF4458D4(0);
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = v8 + 8 * a3;
    v12 = v7 + 8 * a2;
    if (result < v12 || result >= v7 + 8 * *(v6 + 16))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (result != v12)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64BD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 40 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 40 * a3);
    v12 = (v7 + 40 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 40 * v13)
    {
      result = memmove(result, v12, 40 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64BE20(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 24 * a1), (v6 + 32 + 24 * a2), 24 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF420058(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1AF64BEEC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result - a2 + a3;
  if (v4)
  {
    v5 = *v3;
    result = v5 + 32 + 16 * result + 16 * a3;
    v6 = *(v5 + 16);
    if (result != v5 + 32 + 16 * a2 || result >= v5 + 32 + 16 * v6)
    {
      result = memmove(result, (v5 + 32 + 16 * a2), 16 * (v6 - a2));
    }

    *(v5 + 16) += v4;
  }

  return result;
}

uint64_t sub_1AF64BF6C(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v6 = v5;
  *(v6 + 116) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 1;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = -1;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *&v12 = sub_1AF6DE28C();
  *(v6 + 272) = v12;
  *(v6 + 288) = v13;
  *(v6 + 304) = 0x7F800000FFFFFFFFLL;
  *(v6 + 312) = -1;
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v6 + 320) = "lock short chunk";
  *(v6 + 328) = 16;
  *(v6 + 336) = 2;
  *(v6 + 344) = v14;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v6 + 352) = "lock ownership chunk";
  *(v6 + 360) = 20;
  *(v6 + 368) = 2;
  *(v6 + 376) = v15;
  *(v6 + 120) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v16 = *(*(a1 + 88) + 8 * a3 + 32);
  *(v6 + 40) = v16;
  *(v6 + 188) = a5;
  *(v6 + 28) = a2;
  *(v6 + 32) = BYTE4(a2) & 1;
  v17 = *(v16 + 64);
  v18 = *(v16 + 211);
  *(v6 + 121) = v18;
  v19 = *(v16 + 24);
  v20 = *(v16 + 40);
  v21 = *(v16 + 56);
  v22 = *(v16 + 72);
  v45 = *(v16 + 88);
  v44[2] = v21;
  v44[3] = v22;
  v44[0] = v19;
  v44[1] = v20;
  v23 = v22;
  memmove((v6 + 48), (v16 + 24), 0x41uLL);
  if (v18 == 1)
  {
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity);

    sub_1AF5DD36C(v44, v41);
    vfx_allocate_memory_entry(v23, 0x40uLL, v24, v41);
    v25 = v41[0];
    v26 = v41[1];
    LODWORD(v27) = v42;
    LOBYTE(v28) = v43;
  }

  else
  {

    sub_1AF5DD36C(v44, v41);
    v25 = sub_1AF624368(v23);
    v28 = HIDWORD(v27) & 1;
  }

  v29 = 0;
  v30 = 0;
  *(v6 + 144) = v25;
  *(v6 + 152) = v26;
  *(v6 + 160) = v27;
  *(v6 + 164) = v28;
  v31 = v25 + v26;
  if (!v25)
  {
    v31 = 0;
  }

  *(v6 + 128) = v25;
  *(v6 + 136) = v31;
  v32 = *(v16 + 88);
  if ((v32 & 1) == 0)
  {
    v29 = v25 + *(v16 + 80);
    v30 = v17;
  }

  *(v6 + 168) = v29;
  *(v6 + 176) = v30;
  *(v6 + 184) = v32;
  if (*(v16 + 212) == 1)
  {
    v33 = (v17 + 63) >> 6;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = 8 * v33;
    v35 = aligned_alloc(8uLL, 8 * v33);
    bzero(v35, v34);
    v36 = aligned_alloc(8uLL, v34);
    bzero(v36, v34);
    *(v6 + 192) = v35;
    *(v6 + 200) = v17;
    *(v6 + 208) = v36;
    *(v6 + 216) = v17;
  }

  v37 = *(v6 + 128);
  if (v37)
  {
    v38 = *(v6 + 136) - v37;
  }

  else
  {
    v38 = 0;
  }

  if (*(*(v6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(*(v6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters + 56), v38);
  }

  v39 = *(v6 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
  if (*v39)
  {
    vfx_counters.add(_:_:)(*(v39 + 52), 1);
  }

  return v6;
}

void *sub_1AF64C23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 72 * a1;
  v9 = a2 - a1;
  sub_1AF43A540(0);
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 72 * a3);
    v12 = (v7 + 72 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 72 * v13)
    {
      result = memmove(result, v12, 72 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64C314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 16 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 16 * a3);
    v12 = (v7 + 16 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 16 * v13)
    {
      result = memmove(result, v12, 16 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64C3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 8 * a1;
  v9 = a2 - a1;
  sub_1AF64EFCC(0, &unk_1ED7230A8, &type metadata for ChunksStorage.FilteredChunk, MEMORY[0x1E69E6BE8]);
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 8 * a3);
    v12 = (v7 + 8 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 8 * v13)
    {
      result = memmove(result, v12, 8 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64C464(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 16 * a1), (v6 + 32 + 16 * a2), 16 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF4230FC(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1AF64C540(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result - a2 + a3;
  if (v4)
  {
    v5 = *v3;
    result = v5 + 32 + 4 * result + 4 * a3;
    v6 = *(v5 + 16);
    if (result != v5 + 32 + 4 * a2 || result >= v5 + 32 + 4 * v6)
    {
      result = memmove(result, (v5 + 32 + 4 * a2), 4 * (v6 - a2));
    }

    *(v5 + 16) += v4;
  }

  return result;
}

uint64_t sub_1AF64C5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1 - a2;
  v8 = *v3;
  v9 = *(*v3 + 16) + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v8;
  if (!result || v9 > *(v8 + 24) >> 1)
  {
    result = a3();
    v8 = result;
    *v3 = result;
    if (a1 == a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1 != a2)
  {
LABEL_4:
    result = memmove((v8 + 32 + 4 * a1), (v8 + 32 + 4 * a2), 4 * (*(v8 + 16) - a2));
    *(v8 + 16) += v7;
  }

LABEL_5:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF64C690(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 4 * a1), (v6 + 32 + 4 * a2), 4 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF41FDF8(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1AF64C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *v4 + 32;
  v10 = v9 + 40 * a1;
  v11 = (v10 + 40 * a3);
  v12 = a2 - a1;
  result = swift_arrayDestroy();
  v14 = a3 - v12;
  if (v14)
  {
    v15 = (v9 + 40 * a2);
    v16 = 40 * (*(v8 + 16) - a2);
    if (v11 != v15 || v11 >= &v15[v16])
    {
      result = memmove(v11, v15, v16);
    }

    *(v8 + 16) += v14;
  }

  if (a3 > 0)
  {
    v19 = *(a4 + 16);
    v24 = *a4;
    v18 = v24;
    v25[0] = v19;
    *(v25 + 15) = *(a4 + 31);
    v20 = *(a4 + 32);
    *(v10 + 34) = *(a4 + 34);
    *(v10 + 32) = v20;
    *v10 = v18;
    *(v10 + 16) = v19;
    if (a3 != 1)
    {
      v21 = v10 + 40;
      do
      {
        sub_1AF64EC84(a4, v23, &unk_1EB63D150, &type metadata for GraphScriptGroup.Reference);
        v22 = v25[0];
        *v21 = v24;
        *(v21 + 16) = v22;
        *(v21 + 31) = *(v25 + 15);
        v21 += 40;
      }

      while (v21 < v11);
    }

    return sub_1AF64EC84(a4, v23, &unk_1EB63D150, &type metadata for GraphScriptGroup.Reference);
  }

  return result;
}

uint64_t sub_1AF64C8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 2);
  v9 = a1 - a2 + v8 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    if (v8 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v7 = sub_1AF423C08(isUniquelyReferenced_nonNull_native, v11, 1, v7);
    *v3 = v7;
  }

  result = sub_1AF64C754(a1, a2, 1, a3);
  *v3 = v7;
  return result;
}

char *sub_1AF64C944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 40 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 40 * a3);
    v12 = (v7 + 40 * a2);
    v13 = 40 * (*(v6 + 16) - a2);
    if (result != v12 || result >= &v12[v13])
    {
      result = memmove(result, v12, v13);
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64CA18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *v4;
  v8 = *v4 + 32;
  v9 = v8 + 40 * a1;
  v10 = a2 - a1;
  sub_1AF4498F4(0, a4);
  result = swift_arrayDestroy();
  v12 = a3 - v10;
  if (v12)
  {
    result = (v9 + 40 * a3);
    v13 = (v8 + 40 * a2);
    v14 = *(v7 + 16);
    if (result != v13 || result >= v8 + 40 * v14)
    {
      result = memmove(result, v13, 40 * (v14 - a2));
    }

    *(v7 + 16) += v12;
  }

  return result;
}

void *sub_1AF64CB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 32 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 32 * a3);
    v12 = (v7 + 32 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 32 * v13)
    {
      result = memmove(result, v12, 32 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, void *a12, __int16 a13, __int16 a14, char a15)
{
  v21 = a1;
  v70 = *(a1 + 128);

  v22 = a3 - a2;
  if (a3 != a2)
  {
    v67 = a6;
    v23 = *(*(a4 + 40) + 24);
    v24 = *(v23 + 16);
    v68 = a2;
    v71 = a3 - a2;
    if (v24)
    {
      v69 = a4;
      v65 = a5;
      v66 = v21;
      v25 = v23 + 32;
      v26 = *(a5 + 24);
      v27 = *(v26 + 16);
      v28 = (v26 + 56);

      for (i = 0; i != v24; ++i)
      {
        if (v27)
        {
          v30 = (v25 + 40 * i);
          v31 = *v30;
          v33 = v30[2];
          v32 = v30[3];
          v34 = *(v30 + 32);
          v35 = v27;
          v36 = v28;
          while (*(v36 - 3) != v31)
          {
            v36 += 5;
            if (!--v35)
            {
              goto LABEL_4;
            }
          }

          if (!a8 || v31 != a8)
          {
            v37 = *v36;
            v38 = a11 + *a10 * v33;
            v39 = v70 + v33 * a2;
            v40 = v33 * v71;
            if (v34)
            {
              memmove((v39 + v37), (v38 + v32), v33 * v71);
            }

            else
            {
              sub_1AF641780(v38 + v32, v39 + v37, v71);
              a2 = v68;
            }

            v41 = *(v69 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
            if (*v41)
            {
              vfx_counters.add(_:_:)(*(v41 + 64), v40);
            }
          }
        }

LABEL_4:
        ;
      }

      a5 = v65;
      v21 = v66;
      a4 = v69;
      v22 = v71;
    }

    if (a8)
    {
      v42 = *(a5 + 24);
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = (v42 + 64);
        while (*(v44 - 4) != a8)
        {
          v44 += 40;
          if (!--v43)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
LABEL_23:
        v72[0] = 0;
        v72[1] = 0xE000000000000000;
        a2 = v72;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF2D4D0);
        v45 = sub_1AFDFF4B8();
        v21 = v46;
        MEMORY[0x1B2718AE0](v45);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF2D500);
        type metadata accessor for EntityClass();
        sub_1AFDFE458();
        sub_1AFDFE518();
        __break(1u);
      }

      v48 = *(v44 - 2);
      v47 = *(v44 - 1);
      v49 = v70 + v48 * a2;
      if (*v44 == 1)
      {
        memmove((v49 + v47), (v67 + *a12 * v48), v48 * v71);
        v22 = v71;
      }

      else
      {
        sub_1AF641780(v67 + *a12 * v48, v49 + v47, v71);
        v22 = v71;
        a2 = v68;
      }
    }

    if ((*(a4 + 184) & 1) == 0)
    {
      v50 = *(a4 + 168);
      v51 = *(a4 + 16);
      do
      {
        v52 = *(v21 + 188);
        v53 = *(v51 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(v50 + 4 * *a10);
        *(v53 + 4) = a2;
        *v53 = v52;
        *(v53 + 6) = a13;
        v50 += 4;
        ++a2;
      }

      while (a3 != a2);
    }

    *a12 += v22;
    v54 = *a10;
    v55 = *a10 + v22;
    *a10 = v55;
    if (a15)
    {
      v56 = *(v21 + 192);
      if (v56)
      {
        v57 = *(v21 + 208);
        v58 = v68;
        do
        {
          *(v56 + 8 * (v58 >> 6)) |= 1 << v58;
          ++v58;
        }

        while (a3 != v58);
        v59 = v68;
        do
        {
          *(v57 + 8 * (v59 >> 6)) &= (-1 << v59) - 1;
          ++v59;
        }

        while (a3 != v59);
      }

      sub_1AF705690(v68, a3);
    }

    else if (*(a5 + 212) == 1)
    {
      v60 = *(a4 + 192);
      v61 = *(a4 + 208);
      v62 = *(v21 + 208);
      v63 = *(v21 + 216);
      sub_1AF64B74C(v54, v55, *(v21 + 192), *(v21 + 200), v68, v60);
      sub_1AF64B74C(v54, v55, v62, v63, v68, v61);
    }
  }
}

unint64_t sub_1AF64D088(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result - a2 + a3;
  if (v4)
  {
    v5 = *v3;
    result = v5 + 32 + 8 * result + 8 * a3;
    v6 = *(v5 + 16);
    if (result != v5 + 32 + 8 * a2 || result >= v5 + 32 + 8 * v6)
    {
      result = memmove(result, (v5 + 32 + 8 * a2), 8 * (v6 - a2));
    }

    *(v5 + 16) += v4;
  }

  return result;
}

uint64_t *sub_1AF64D0F4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result)
  {
    if (a4)
    {
      return sub_1AF649454(a6, a7, a8, a9, result, a6, a3, a4, a5);
    }

    else
    {
      return sub_1AF64923C(a6, a7, a8, 0, result, a6, a3, a10);
    }
  }

  else if (a4)
  {
    v15 = swift_unownedRetainStrong();
    v16 = *(v15 + 232);
    v17 = *(v15 + 240);

    return (*(a5 + 32))(a6, a7, v16, a8, a9, v16, v17 - v16, a4, a5);
  }

  return result;
}

void *sub_1AF64D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 8 * a1;
  v9 = a2 - a1;
  type metadata accessor for EntityFamily();
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 8 * a3);
    v12 = (v7 + 8 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 8 * v13)
    {
      result = memmove(result, v12, 8 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64D280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 96 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 96 * a3);
    v12 = (v7 + 96 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 96 * v13)
    {
      result = memmove(result, v12, 96 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64D354(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 8 * a1), (v6 + 32 + 8 * a2), 8 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF4217DC(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

void *sub_1AF64D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 104 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 104 * a3);
    v12 = (v7 + 104 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 104 * v13)
    {
      result = memmove(result, v12, 104 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64D4EC(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 32 * a1), (v6 + 32 + 32 * a2), 32 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF423E78(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1AF64D5F4(uint64_t a1, uint64_t a2, void (*a3)(void, void), void (*a4)(void))
{
  if (*v4 >> 62)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    sub_1AFDFE108();
    v13 = sub_1AFDFE108();
    a3 = v12;
    a2 = v11;
    v6 = v13;
    a1 = v10;
  }

  else
  {
    v6 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1;
  v8 = a2;
  a3(a1 - a2 + v6, 1);
  return sub_1AF64E7DC(v7, v8, 0, a4);
}

uint64_t sub_1AF64D6A4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = *v4;
  v9 = *v4 + 32;
  v10 = (v9 + 96 * a1);
  v11 = &v10[96 * a3];
  v12 = a2 - a1;
  result = swift_arrayDestroy();
  v14 = a3 - v12;
  if (v14)
  {
    v15 = (v9 + 96 * a2);
    v16 = *(v8 + 16);
    if (v11 != v15 || v11 >= v9 + 96 * v16)
    {
      result = memmove(v11, v15, 96 * (v16 - a2));
    }

    *(v8 + 16) += v14;
  }

  if (a3 > 0)
  {
    v18 = a4[3];
    v28 = a4[2];
    v29 = v18;
    v19 = a4[5];
    v30 = a4[4];
    v31 = v19;
    v20 = a4[1];
    v26 = *a4;
    v27 = v20;
    memmove(v10, a4, 0x60uLL);
    if (a3 != 1)
    {
      v21 = v10 + 96;
      do
      {
        sub_1AF64EC84(a4, v25, &unk_1ED7230B8, &type metadata for Scheduler.Job);
        v22 = v29;
        *(v21 + 2) = v28;
        *(v21 + 3) = v22;
        v23 = v31;
        *(v21 + 4) = v30;
        *(v21 + 5) = v23;
        v24 = v27;
        *v21 = v26;
        *(v21 + 1) = v24;
        v21 += 96;
      }

      while (v21 < v11);
    }

    return sub_1AF64EC84(a4, v25, &unk_1ED7230B8, &type metadata for Scheduler.Job);
  }

  return result;
}

uint64_t sub_1AF64D800(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *v3;
  v8 = *(*v3 + 2);
  v9 = a1 - a2 + v8 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    if (v8 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v7 = sub_1AF4237C8(isUniquelyReferenced_nonNull_native, v11, 1, v7);
    *v3 = v7;
  }

  result = sub_1AF64D6A4(a1, a2, 1, a3);
  *v3 = v7;
  return result;
}

uint64_t sub_1AF64D8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1 - a2;
  v8 = *v3;
  v9 = *(*v3 + 16) + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v8;
  if (!result || v9 > *(v8 + 24) >> 1)
  {
    result = a3();
    v8 = result;
    *v3 = result;
    if (a1 == a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a1 != a2)
  {
LABEL_4:
    result = memmove((v8 + 32 + 16 * a1), (v8 + 32 + 16 * a2), 16 * (*(v8 + 16) - a2));
    *(v8 + 16) += v7;
  }

LABEL_5:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF64D988(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 16 * a1), (v6 + 32 + 16 * a2), 16 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF42458C(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1AF64DA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *v4 + 32;
  v10 = v9 + 48 * a1;
  v11 = (v10 + 48 * a3);
  v12 = a2 - a1;
  sub_1AF64ED04(0, &qword_1ED7256D0);
  result = swift_arrayDestroy();
  v14 = a3 - v12;
  if (v14)
  {
    v15 = (v9 + 48 * a2);
    v16 = *(v8 + 16);
    if (v11 != v15 || v11 >= v9 + 48 * v16)
    {
      result = memmove(v11, v15, 48 * (v16 - a2));
    }

    *(v8 + 16) += v14;
  }

  if (a3 > 0)
  {
    v18 = *a4;
    v19 = *(a4 + 8);
    v20 = *(a4 + 16);
    v21 = *(a4 + 24);
    v22 = *(a4 + 32);
    v23 = *(a4 + 40);
    *v10 = *a4;
    *(v10 + 8) = v19;
    *(v10 + 16) = v20;
    *(v10 + 24) = v21;
    *(v10 + 32) = v22;
    *(v10 + 40) = v23;
    if (a3 != 1)
    {
      v24 = v10 + 48;
      do
      {
        sub_1AF64E2C4(v18, v19, v20, v21, v22);
        *v24 = v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        v24 += 48;
      }

      while (v24 < v11);
    }

    return sub_1AF64E2C4(v18, v19, v20, v21, v22);
  }

  return result;
}

uint64_t sub_1AF64DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = a1 - a2 + v8 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    if (v8 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v7 = sub_1AF4249DC(isUniquelyReferenced_nonNull_native, v11, 1, v7);
    *v3 = v7;
  }

  result = sub_1AF64DA4C(a1, a2, 1, a3);
  *v3 = v7;
  return result;
}

uint64_t sub_1AF64DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *v4 + 32;
  v10 = v9 + 40 * a1;
  v11 = (v10 + 40 * a3);
  v12 = a2 - a1;
  sub_1AF64ED04(0, &qword_1EB63D160);
  result = swift_arrayDestroy();
  v14 = a3 - v12;
  if (v14)
  {
    v15 = (v9 + 40 * a2);
    v16 = *(v8 + 16);
    if (v11 != v15 || v11 >= v9 + 40 * v16)
    {
      result = memmove(v11, v15, 40 * (v16 - a2));
    }

    *(v8 + 16) += v14;
  }

  if (a3 > 0)
  {
    v18 = *a4;
    v19 = *(a4 + 8);
    v20 = *(a4 + 16);
    v21 = *(a4 + 24);
    v22 = *(a4 + 32);
    *v10 = *a4;
    *(v10 + 8) = v19;
    *(v10 + 16) = v20;
    *(v10 + 24) = v21;
    *(v10 + 32) = v22;
    if (a3 != 1)
    {
      v23 = v10 + 40;
      do
      {
        sub_1AF64E4D0(v18, v19, v20, v21);
        *v23 = v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
        v23 += 40;
      }

      while (v23 < v11);
    }

    return sub_1AF64E4D0(v18, v19, v20, v21);
  }

  return result;
}

uint64_t sub_1AF64DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = a1 - a2 + v8 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    if (v8 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v7 = sub_1AF424B14(isUniquelyReferenced_nonNull_native, v11, 1, v7);
    *v3 = v7;
  }

  result = sub_1AF64DC64(a1, a2, 1, a3);
  *v3 = v7;
  return result;
}

void *sub_1AF64DE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 16 * a1;
  v9 = a2 - a1;
  sub_1AF4498F4(0, qword_1ED72CF40);
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 16 * a3);
    v12 = (v7 + 16 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 16 * v13)
    {
      result = memmove(result, v12, 16 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64DF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *v5 + 32;
  v12 = (v11 + 16 * a1);
  v13 = &v12[2 * a3];
  v14 = a2 - a1;
  result = swift_arrayDestroy();
  v16 = a3 - v14;
  if (v16)
  {
    v17 = (v11 + 16 * a2);
    v18 = *(v10 + 16);
    if (v13 != v17 || v13 >= v11 + 16 * v18)
    {
      result = memmove(v13, v17, 16 * (v18 - a2));
    }

    *(v10 + 16) += v16;
  }

  if (a3 >= 1)
  {
    *v12 = a4;
    v12[1] = a5;
    if (a3 != 1)
    {
      v20 = v12 + 2;
      do
      {
        *v20 = a4;
        v20[1] = a5;
        v20 += 2;
      }

      while (v20 < v13);
    }
  }

  return result;
}

uint64_t sub_1AF64E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *v4 & 0xFFFFFFFFFFFFFF8;
  v10 = v9 + 32;
  v11 = (v9 + 32 + 8 * a1);
  v12 = &v11[a3];
  v13 = a2 - a1;
  sub_1AFDFC988();
  result = swift_arrayDestroy();
  v15 = a3 - v13;
  if (v15)
  {
    if (v8 >> 62)
    {
      v16 = sub_1AFDFE108();
    }

    else
    {
      v16 = *(v9 + 16);
    }

    v17 = (v10 + 8 * a2);
    if (v12 != v17 || v12 >= v10 + 8 * v16)
    {
      memmove(v12, v17, 8 * (v16 - a2));
    }

    if (v8 >> 62)
    {
      result = sub_1AFDFE108();
    }

    else
    {
      result = *(v9 + 16);
    }

    *(v9 + 16) = v15 + result;
  }

  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      v19 = v11 + 1;
      do
      {
        *v19++ = a4;
      }

      while (v19 < v12);
    }
  }

  return result;
}

uint64_t sub_1AF64E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 >> 62)
  {
    v9 = a1;
    v10 = a2;
    sub_1AFDFE108();
    v11 = sub_1AFDFE108();
    a2 = v10;
    v5 = v11;
    a1 = v9;
  }

  else
  {
    v5 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a1;
  v7 = a2;
  sub_1AF5AA5A8(a1 - a2 + v5 + 1);

  return sub_1AF64E0AC(v6, v7, 1, a3);
}

uint64_t sub_1AF64E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 != 2)
    {
    }

    return swift_unknownObjectRetain();
  }

  if (!(a5 >> 6))
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1AF64E2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v9 = v7 + 32 + 8 * a1;
  v10 = a2 - a1;
  sub_1AF64E46C();
  result = swift_arrayDestroy();
  v12 = a3 - v10;
  if (v12)
  {
    v13 = (v9 + 8 * a3);
    if (v6 >> 62)
    {
      v14 = sub_1AFDFE108();
      v13 = (v9 + 8 * a3);
    }

    else
    {
      v14 = *(v7 + 16);
    }

    v15 = (v8 + 8 * a2);
    if (v13 != v15 || v13 >= v8 + 8 * v14)
    {
      memmove(v13, v15, 8 * (v14 - a2));
    }

    if (v6 >> 62)
    {
      result = sub_1AFDFE108();
    }

    else
    {
      result = *(v7 + 16);
    }

    *(v7 + 16) = v12 + result;
  }

  return result;
}

uint64_t sub_1AF64E3CC(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62)
  {
    v7 = a1;
    v8 = a2;
    sub_1AFDFE108();
    v9 = sub_1AFDFE108();
    a2 = v8;
    v3 = v9;
    a1 = v7;
  }

  else
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = a1;
  v5 = a2;
  sub_1AF5AA5A8(a1 - a2 + v3);

  return sub_1AF64E2EC(v4, v5, 0);
}

unint64_t sub_1AF64E46C()
{
  result = qword_1ED726BB0;
  if (!qword_1ED726BB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED726BB0);
  }

  return result;
}

uint64_t sub_1AF64E4D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void *sub_1AF64E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 48 * a1;
  v9 = a2 - a1;
  sub_1AF64ED04(0, &qword_1ED7256D0);
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = (v8 + 48 * a3);
    v12 = (v7 + 48 * a2);
    v13 = *(v6 + 16);
    if (result != v12 || result >= v7 + 48 * v13)
    {
      result = memmove(result, v12, 48 * (v13 - a2));
    }

    *(v6 + 16) += v11;
  }

  return result;
}

void *sub_1AF64E614(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *v4;
  v8 = *v4 + 32;
  v9 = v8 + 40 * a1;
  v10 = a2 - a1;
  sub_1AF64ED04(0, a4);
  result = swift_arrayDestroy();
  v12 = a3 - v10;
  if (v12)
  {
    result = (v9 + 40 * a3);
    v13 = (v8 + 40 * a2);
    v14 = *(v7 + 16);
    if (result != v13 || result >= v8 + 40 * v14)
    {
      result = memmove(result, v13, 40 * (v14 - a2));
    }

    *(v7 + 16) += v12;
  }

  return result;
}

uint64_t sub_1AF64E704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v13 = *v6;
  v14 = *(*v6 + 16) + a1 - a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v13 + 24) >> 1)
  {
    v13 = a3();
    *v6 = v13;
  }

  result = a6(a1, a2, 0, a4, a5);
  *v6 = v13;
  return result;
}

uint64_t sub_1AF64E7DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *v4;
  v8 = *v4 & 0xFFFFFFFFFFFFFF8;
  v9 = v8 + 32;
  v10 = v8 + 32 + 8 * a1;
  v11 = a2 - a1;
  a4(0);
  result = swift_arrayDestroy();
  v13 = a3 - v11;
  if (v13)
  {
    v14 = (v10 + 8 * a3);
    if (v7 >> 62)
    {
      v15 = sub_1AFDFE108();
      v14 = (v10 + 8 * a3);
    }

    else
    {
      v15 = *(v8 + 16);
    }

    v16 = (v9 + 8 * a2);
    if (v14 != v16 || v14 >= v9 + 8 * v15)
    {
      memmove(v14, v16, 8 * (v15 - a2));
    }

    if (v7 >> 62)
    {
      result = sub_1AFDFE108();
    }

    else
    {
      result = *(v8 + 16);
    }

    *(v8 + 16) = v13 + result;
  }

  return result;
}

uint64_t sub_1AF64E8C0(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 16 * a1), (v6 + 32 + 16 * a2), 16 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF427CB4(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1AF64E984(uint64_t a1, uint64_t a2)
{
  v5 = a1 - a2;
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = v7 + a1 - a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result && v8 <= *(v6 + 24) >> 1)
  {
    if (a1 != a2)
    {
LABEL_4:
      result = memmove((v6 + 32 + 112 * a1), (v6 + 32 + 112 * a2), 112 * (*(v6 + 16) - a2));
      *(v6 + 16) += v5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    result = sub_1AF427DB8(result, v10, 1, v6);
    v6 = result;
    *v2 = result;
    if (a1 != a2)
    {
      goto LABEL_4;
    }
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1AF64EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 16 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = v8 + 16 * a3;
    v12 = v7 + 16 * a2;
    if (result < v12 || result >= v7 + 16 * *(v6 + 16))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (result != v12)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64EB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  v9 = *v4;
  v10 = *(*v4 + 16) + a1 - a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v9 + 24) >> 1)
  {
    v9 = a3();
    *v4 = v9;
  }

  result = a4(a1, a2, 0);
  *v4 = v9;
  return result;
}

unint64_t sub_1AF64EBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *v3 + 32;
  v8 = v7 + 16 * a1;
  v9 = a2 - a1;
  result = swift_arrayDestroy();
  v11 = a3 - v9;
  if (v11)
  {
    result = v8 + 16 * a3;
    v12 = v7 + 16 * a2;
    if (result < v12 || result >= v7 + 16 * *(v6 + 16))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (result != v12)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v6 + 16) += v11;
  }

  return result;
}

uint64_t sub_1AF64EC84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF64EFCC(0, a3, a4, MEMORY[0x1E69E6BC0]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AF64ED04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF64EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *v5 + 32;
  v12 = (v11 + 16 * a1);
  v13 = &v12[2 * a3];
  v14 = a2 - a1;
  sub_1AF64EFCC(0, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6720]);
  result = swift_arrayDestroy();
  v16 = a3 - v14;
  if (v16)
  {
    v17 = (v11 + 16 * a2);
    v18 = *(v10 + 16);
    if (v13 != v17 || v13 >= v11 + 16 * v18)
    {
      result = memmove(v13, v17, 16 * (v18 - a2));
    }

    *(v10 + 16) += v16;
  }

  if (a3 >= 1)
  {
    *v12 = a4;
    v12[1] = a5;
    if (a3 != 1)
    {
      v20 = v12 + 2;
      do
      {
        *v20 = a4;
        v20[1] = a5;
        v20 += 2;
      }

      while (v20 < v13);
    }
  }

  return result;
}

uint64_t sub_1AF64EF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *v6;
  v14 = a1 - a2 + *(*v6 + 16) + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v13 + 24) >> 1)
  {
    v13 = a5();
    *v6 = v13;
  }

  result = a6(a1, a2, 1, a3, a4);
  *v6 = v13;
  return result;
}

void sub_1AF64EFCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF64F03C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != a2)
  {
    v8 = result;
    v9 = sub_1AF75D2B0(a2, a3);
    v10 = a2 >> 6;
    v11 = 1 << a2;
    if (sub_1AF75D2B0(v8, a3))
    {
      v12 = *(a3 + 8 * v10) | v11;
    }

    else
    {
      v12 = *(a3 + 8 * v10) & ~v11;
    }

    *(a3 + 8 * v10) = v12;
    v13 = v8 >> 6;
    v14 = 1 << v8;
    if (v9)
    {
      v15 = *(a3 + 8 * v13) | v14;
    }

    else
    {
      v15 = *(a3 + 8 * v13) & ~v14;
    }

    *(a3 + 8 * v13) = v15;
    v16 = sub_1AF75D2B0(a2, a5);
    result = sub_1AF75D2B0(v8, a5);
    if (result)
    {
      *(a5 + 8 * v10) |= v11;
      if ((v16 & 1) == 0)
      {
LABEL_10:
        v17 = *(a5 + 8 * v13) & ~v14;
LABEL_13:
        *(a5 + 8 * v13) = v17;
        return result;
      }
    }

    else
    {
      *(a5 + 8 * v10) &= ~v11;
      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v17 = *(a5 + 8 * v13) | v14;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AF64F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a7 + 8) + 88))(a2, a3, a6, *(a7 + 8));
  if (result)
  {
    v10 = *(v7 + 192);
    if (v10)
    {
      v11 = *(v7 + 208);
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    return sub_1AF705804(a1);
  }

  return result;
}

uint64_t sub_1AF64F228(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result >> 6;
  v8 = 1 << result;
  *(a5 + 8 * (result >> 6)) |= 1 << result;
  if (a4 == 3 && a2 == 2 && !a3)
  {
    *(a7 + 8 * v7) |= v8;
  }

  else
  {
    *(a7 + 8 * v7) &= ~v8;
  }

  return result;
}

BOOL sub_1AF64F278(uint64_t a1, char a2)
{
  v5 = *(v2[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);

  if (v5 == 4)
  {
    v7 = *(v6 + 233);
    v8 = *(v6 + 224);

    v9 = v8 > 1;
    if ((v7 & 1) == 0)
    {
      v9 = v8 > 0;
    }

    v10 = v2[24];
    if (v10)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v9 = 1;
  v10 = v2[24];
  if (!v10)
  {
    return 0;
  }

LABEL_5:
  v11 = *(v10 + 8 * (a1 >> 6)) & (1 << a1);
  result = v11 != 0;
  if (a2 != 2)
  {
    v9 = a2 == 1;
  }

  if (v11)
  {
    v13 = !v9;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    *(v2[26] + 8 * (a1 >> 6)) |= 1 << a1;
    return 1;
  }

  return result;
}

uint64_t sub_1AF64F360(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624760(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF65029C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF64F3CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a1;
  if ((a3 & 0x100) != 0)
  {
    v8 = sub_1AF64FB70(a1);
    v37 = v12;
    v11 = -1;
    v10 = -1;
    if (a4)
    {
LABEL_13:
      v47 = 0;
      v13 = 4 * v11;
      goto LABEL_16;
    }
  }

  else
  {
    v46 = a1;

    sub_1AF64F360(&v46);

    v6 = v46;
    v8 = sub_1AF64FB70(v46);
    v37 = v9;
    if (a3)
    {
      v10 = v8;
    }

    else
    {
      v10 = a2;
    }

    if (a4)
    {
      if (v8 + 4 < 1)
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 / (v8 + 4);
      }

      goto LABEL_13;
    }

    if (v8 < 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 / v8;
    }
  }

  v13 = 0;
  v47 = 1;
LABEL_16:
  v43 = v11;
  v14 = *(v6 + 2);
  v38 = v8;
  v36 = v10;
  if (v14)
  {
    v15 = 0;
    v16 = (v6 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = *v16;
      v45 = *v16;
      v23 = sub_1AF6411A4(*v16);
      v24 = sub_1AF6411A8(v22);
      if (v23 <= 0)
      {
        v25 = v13;
      }

      else
      {
        v15 = (v24 - 1 + v15) & -v24;
        v25 = (v24 - 1 + v13) & -v24;
      }

      v26 = sub_1AF640E28(v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC06FA8(0, *(v17 + 2) + 1, 1);
        v17 = v46;
      }

      v29 = *(v17 + 2);
      v28 = *(v17 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_1AFC06FA8(v28 > 1, v29 + 1, 1);
        v17 = v46;
      }

      *(v17 + 2) = v29 + 1;
      v30 = &v17[40 * v29];
      *(v30 + 2) = v45;
      *(v30 + 6) = v23;
      *(v30 + 7) = v25;
      v31 = v26;
      v30[64] = v26;
      v15 += v23;
      if ((a3 & 0x100) != 0)
      {
        v13 = v15;
      }

      else
      {
        v13 = v25 + v23 * v43;
      }

      if (v23 >= 1)
      {
        v44 = v13;
        if (v26)
        {
          v33 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC06FA8(0, *(v40 + 16) + 1, 1);
            v33 = v40;
          }

          v19 = *(v33 + 16);
          v18 = *(v33 + 24);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            sub_1AFC06FA8(v18 > 1, v19 + 1, 1);
            v33 = v40;
          }

          v40 = v33;
        }

        else
        {
          v33 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AFC06FA8(0, *(v41 + 16) + 1, 1);
            v33 = v41;
          }

          v19 = *(v33 + 16);
          v32 = *(v33 + 24);
          v20 = v19 + 1;
          if (v19 >= v32 >> 1)
          {
            sub_1AFC06FA8(v32 > 1, v19 + 1, 1);
            v33 = v41;
          }

          else
          {
            v41 = v33;
          }
        }

        *(v33 + 16) = v20;
        v21 = v33 + 40 * v19;
        *(v21 + 32) = v45;
        *(v21 + 48) = v23;
        *(v21 + 56) = v25;
        *(v21 + 64) = v31;
        v13 = v44;
      }

      v16 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
  }

  v35 = v47;
  *a5 = v17;
  *(a5 + 8) = v41;
  *(a5 + 16) = v40;
  *(a5 + 24) = v38;
  *(a5 + 32) = v37;
  *(a5 + 40) = v43;
  *(a5 + 48) = v36;
  *(a5 + 56) = 0;
  *(a5 + 64) = v35;
  return result;
}

uint64_t sub_1AF64F754(uint64_t a1)
{
  v2 = (*v1 + 32);
  v3 = *(*v1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 5;
    v5 = *v2;
    v2 += 5;
    if (v5 == a1)
    {
      return *(v4 - 2);
    }
  }

  return 0;
}

uint64_t sub_1AF64F798(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 56);
    do
    {
      memmove((v8 + *(v12 - 1) * a4 + *v12), (v8 + *(v12 - 1) * a2 + *v12), *(v12 - 1) * (a3 - a2));
      v12 += 5;
      --v11;
    }

    while (v11);
  }

  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = a3 - a2;

    v15 = (v9 + 56);
    do
    {
      sub_1AF641780(v8 + *(v15 - 1) * a2 + *v15, v8 + *(v15 - 1) * a4 + *v15, v14);
      v15 += 5;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1AF64F8A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *v10;
      v10 += 5;
      sub_1AF6413C0(v6 + v13, a2, a3, v11, v12);
      --v9;
    }

    while (v9);
  }

  v14 = *(v7 + 16);
  if (v14)
  {

    v15 = (v7 + 56);
    do
    {
      v16 = *(v15 - 3);
      v17 = *v15;
      v15 += 5;
      sub_1AF641654(v6 + v17, a2, a3, v16);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1AF64F990(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *v10;
      v10 += 5;
      sub_1AF6417EC(v6 + v12, a2, a3, v11);
      --v9;
    }

    while (v9);
  }

  v13 = *(v7 + 16);
  if (v13)
  {

    v14 = (v7 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *v14;
      v14 += 5;
      sub_1AF6417EC(v6 + v16, a2, a3, v15);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1AF64FA78()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 56;
    do
    {
      sub_1AF640BC8();
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AF64FB24(uint64_t a1)
{
  v2 = (*v1 + 16);
  v3 = *v2 + 1;
  while (--v3)
  {
    v4 = v2 + 5;
    v5 = v2[2];
    v2 += 5;
    if (v5 == a1)
    {
      return *v4;
    }
  }

  return 0;
}

uint64_t sub_1AF64FB70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = 1;
    do
    {
      v5 = *(v3 - 8);
      v6 = sub_1AF6411A4(v5);
      v7 = sub_1AF6411A8(v5);
      if (v7 > v4)
      {
        v4 = v7;
      }

      v8 = (v2 + v7 - 1) & -v7;
      if (v6 <= 0)
      {
        v8 = v2;
      }

      v2 = v8 + v6;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  return (v4 + v2 - 1) & -v4;
}

uint64_t sub_1AF64FC48(uint64_t a1)
{
  v2 = (*v1 + 32);
  for (i = 1; *(*v1 + 16) + i != 1; --i)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == a1)
    {
      return *(v2 - 2);
    }
  }

  return 0;
}

uint64_t sub_1AF64FC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v3[3];
  v9 = sub_1AF6411A8(a1);
  v10 = (v8 + v9 - 1) & -v9;
  v3[3] = v10 + sub_1AF6411A4(a1);
  v11 = sub_1AF6411A4(a1);
  v12 = sub_1AF640E28(a1);
  v13 = *v3;
  v14 = *(*v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AFC06FA8(0, v14 + 1, 1);
    v13 = *v4;
  }

  v28 = v14;
  v17 = *(v13 + 16);
  v16 = *(v13 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1AFC06FA8(v16 > 1, v17 + 1, 1);
    v13 = *v4;
  }

  *(v13 + 16) = v17 + 1;
  v18 = v13 + 40 * v17;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = v11;
  *(v18 + 56) = v10;
  v19 = v12;
  *(v18 + 64) = v12;
  *v4 = v13;
  result = sub_1AF6411A4(a1);
  if (result >= 1)
  {
    if (v12)
    {
      v23 = v4[2];
      v22 = v4 + 2;
      v21 = v23;
    }

    else
    {
      v24 = v4[1];
      v22 = v4 + 1;
      v21 = v24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v21;
    if ((result & 1) == 0)
    {
      result = sub_1AFC06FA8(0, *(v21 + 16) + 1, 1);
      v21 = *v22;
    }

    v26 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1AFC06FA8(v25 > 1, v26 + 1, 1);
      v21 = *v22;
    }

    *(v21 + 16) = v26 + 1;
    v27 = v21 + 40 * v26;
    *(v27 + 32) = a1;
    *(v27 + 40) = a2;
    *(v27 + 48) = v11;
    *(v27 + 56) = v10;
    *(v27 + 64) = v19;
    *v22 = v21;
  }

  *a3 = v28;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = v19;
  return result;
}

BOOL ComponentStorageLayout.isCompatible(with:)(uint64_t *a1)
{
  if (v1[5] == a1[5])
  {
    v2 = a1[2];
    v3 = v1[2];
    v4 = *(v3 + 16);
    if (v4 == *(v2 + 16))
    {
      if (v4)
      {
        v5 = v3 == v2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return sub_1AF64FEF0(v1[1], a1[1]);
      }

      v6 = (v2 + 56);
      for (i = (v3 + 56); *(i - 3) == *(v6 - 3) && *i == *v6; i += 5)
      {
        v6 += 5;
        if (!--v4)
        {
          return sub_1AF64FEF0(v1[1], a1[1]);
        }
      }
    }
  }

  return 0;
}

BOOL sub_1AF64FEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = v2 - 1;
  v4 = (a2 + 56);
  v5 = (a1 + 56);
  do
  {
    result = *(v5 - 3) == *(v4 - 3) && *v5 == *v4;
    v9 = v3-- != 0;
    if (!result)
    {
      break;
    }

    v4 += 5;
    v5 += 5;
  }

  while (v9);
  return result;
}

uint64_t destroy for ComponentStorageLayout()
{
}

uint64_t initializeWithCopy for ComponentStorageLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ComponentStorageLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v4;
  return a1;
}

__n128 initializeWithTake for ComponentStorageLayout(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for ComponentStorageLayout(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for ComponentStorageLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ComponentStorageLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MeshBuffer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for MeshBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF65029C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF650384(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF5C5300();
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF650480(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF650384(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v15 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    do
    {
      v7 = *(v15 + 16 * v4);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = (*(*(&v7 + 1) + 72))();
        result = (*(v11 + 72))(v10, v11);
        if (v12 >= result)
        {
          break;
        }

        v13 = *v9;
        v7 = *(v9 + 16);
        *v9 = v7;
        *(v9 + 16) = v13;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v5 += 16;
      --v6;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1AF650480(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    __dst = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      if (v6 + 1 >= v5)
      {
        v5 = v6 + 1;
        v22 = a4;
      }

      else
      {
        v73 = v7;
        v9 = *v4;
        v10 = *v4 + 16 * (v6 + 1);
        v11 = 16 * v6;
        v12 = (v9 + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        v80 = (*(*(v10 + 8) + 72))();
        v78 = (*(v14 + 72))(v13, v14);
        v71 = v6;
        v15 = v6 + 2;
        v16 = v12 + 3;
        while (v5 != v15)
        {
          v17 = v16 + 2;
          v18 = *v16;
          v19 = *(v16 - 1);
          v20 = (*(v16[2] + 72))();
          v21 = (v80 < v78) ^ (v20 >= (*(v18 + 72))(v19, v18));
          ++v15;
          v16 = v17;
          if ((v21 & 1) == 0)
          {
            v5 = v15 - 1;
            break;
          }
        }

        v8 = v71;
        v7 = v73;
        v22 = a4;
        if (v80 < v78 && v71 < v5)
        {
          v23 = 16 * v5 - 16;
          v24 = v5;
          v25 = v71;
          do
          {
            if (v25 != --v24)
            {
              v26 = *a3;
              v27 = *(*a3 + v11);
              *(v26 + v11) = *(*a3 + v23);
              *(v26 + v23) = v27;
            }

            ++v25;
            v23 -= 16;
            v11 += 16;
          }

          while (v25 < v24);
        }

        v4 = a3;
      }

      v28 = v4[1];
      v29 = v5 < v28 && v5 - v8 < v22;
      if (v29)
      {
        if (v8 + v22 >= v28)
        {
          v6 = v4[1];
        }

        else
        {
          v6 = v8 + v22;
        }

        if (v8 + v22 != v5)
        {
          v72 = v8;
          v74 = v7;
          v79 = *v4;
          v30 = *v4 + 16 * v5 - 16;
          v31 = v8 - v5;
          v81 = v6;
          do
          {
            v32 = *(v79 + 16 * v5);
            v33 = v31;
            v34 = v30;
            do
            {
              v35 = *v34;
              v36 = *(v34 + 8);
              v37 = (*(*(&v32 + 1) + 72))();
              if (v37 >= (*(v36 + 72))(v35, v36))
              {
                break;
              }

              v38 = *v34;
              v32 = *(v34 + 16);
              *v34 = v32;
              *(v34 + 16) = v38;
              v34 -= 16;
            }

            while (!__CFADD__(v33++, 1));
            ++v5;
            v30 += 16;
            --v31;
            v6 = v81;
          }

          while (v5 != v81);
          v8 = v72;
          v7 = v74;
          v4 = a3;
        }
      }

      else
      {
        v6 = v5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4209A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v41 = *(v7 + 2);
      v40 = *(v7 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v7 = sub_1AF4209A4(v40 > 1, v41 + 1, 1, v7);
      }

      *(v7 + 2) = v42;
      v43 = v7 + 32;
      v44 = &v7[16 * v41 + 32];
      *v44 = v8;
      *(v44 + 1) = v6;
      if (v41)
      {
        break;
      }

LABEL_3:
      v5 = v4[1];
      if (v6 >= v5)
      {
        goto LABEL_55;
      }
    }

    while (1)
    {
      v45 = v42 - 1;
      if (v42 >= 4)
      {
        v49 = &v43[16 * v42];
        v50 = *(v49 - 7) - *(v49 - 8);
        v48 = *(v49 - 5) - *(v49 - 6);
        v51 = &v7[16 * v42];
        v46 = *v51;
        v47 = *(v51 + 1);
        if (v48 - v46 + v47 >= v50)
        {
          v54 = v42 - 2;
          v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
          goto LABEL_49;
        }
      }

      else
      {
        if (v42 != 3)
        {
          v52 = *&v7[16 * v42 + 8] - *&v7[16 * v42];
          v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
LABEL_46:
          if (v53 < v52)
          {
            goto LABEL_3;
          }

          goto LABEL_51;
        }

        v46 = *(v7 + 6);
        v47 = *(v7 + 7);
        v48 = *(v7 + 5) - *(v7 + 4);
      }

      v52 = v47 - v46;
      v53 = *&v43[16 * v45 + 8] - *&v43[16 * v45];
      if (v52 + v53 < v48)
      {
        goto LABEL_46;
      }

      v54 = v42 - 2;
LABEL_49:
      if (v48 < v53)
      {
        v45 = v54;
      }

LABEL_51:
      v55 = &v43[16 * v45];
      v56 = *(v55 - 2);
      v57 = *(v55 + 1);
      sub_1AF6509BC((*v4 + 16 * v56), (*v4 + 16 * *v55), (*v4 + 16 * v57), __dst);
      if (v75)
      {
      }

      *(v55 - 2) = v56;
      *(v55 - 1) = v57;
      v58 = *(v7 + 2);
      v42 = v58 - 1;
      memmove(&v43[16 * v45], v55 + 16, 16 * (v58 - 1 - v45));
      *(v7 + 2) = v58 - 1;
      if (v58 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v82 = *a1;
  v59 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v61 = v7 + 16;
  v60 = *(v7 + 2);
  if (v60 >= 2)
  {
    do
    {
      v62 = v7;
      v63 = &v7[16 * v60];
      v64 = *v63;
      v65 = &v61[2 * v60];
      v66 = v65[1];
      sub_1AF6509BC((*v59 + 16 * *v63), (*v59 + 16 * *v65), (*v59 + 16 * v66), v82);
      if (v75)
      {
        break;
      }

      *v63 = v64;
      *(v63 + 1) = v66;
      v67 = *v61 - 1;
      memmove(&v61[2 * v60], v65 + 2, 16 * (*v61 - v60));
      *v61 = v67;
      v60 = v67;
      v29 = v67 > 1;
      v7 = v62;
    }

    while (v29);
  }
}

uint64_t sub_1AF6509BC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    if (__dst != __src || &__src[16 * v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 16 * v9);
      __dst = v13;
    }

    v14 = &__dst[16 * v9];
    v15 = __dst;
    if (v7 < 16 || v5 >= v4)
    {
      v5 = v6;
      v16 = v14;
      goto LABEL_39;
    }

    v16 = v14;
    while (1)
    {
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = (*(*(v5 + 1) + 72))();
      if (v19 >= (*(v18 + 72))(v17, v18))
      {
        break;
      }

      v20 = v5;
      v21 = v6 == v5;
      v5 += 16;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_18:
      v6 += 16;
      if (v15 >= v16 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_39;
      }
    }

    v20 = v15;
    v21 = v6 == v15;
    v15 += 16;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v20;
    goto LABEL_18;
  }

  v15 = __dst;
  if (__dst != a2 || &a2[16 * v12] <= __dst)
  {
    memmove(__dst, a2, 16 * v12);
  }

  v16 = &v15[16 * v12];
  if (v10 >= 16 && v5 > v6)
  {
    v30 = v6;
    do
    {
      v32 = v5;
      v31 = v5 - 16;
      v4 -= 16;
      v22 = v16;
      while (1)
      {
        v23 = v15;
        v24 = v4 + 16;
        v25 = *(v16 - 1);
        v16 -= 16;
        v26 = *(v32 - 2);
        v27 = *(v32 - 1);
        v28 = (*(v25 + 72))();
        if (v28 < (*(v27 + 72))(v26, v27))
        {
          break;
        }

        if (v24 != v22)
        {
          *v4 = *v16;
        }

        v4 -= 16;
        v22 = v16;
        v15 = v23;
        if (v16 <= v23)
        {
          v5 = v32;
          goto LABEL_39;
        }
      }

      if (v24 != v32)
      {
        *v4 = *v31;
      }

      v15 = v23;
      v16 = v22;
      if (v22 <= v23)
      {
        break;
      }

      v5 = v31;
    }

    while (v31 > v30);
    v5 = v31;
  }

LABEL_39:
  if (v5 != v15 || v5 >= &v15[(v16 - v15 + (v16 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v15, 16 * ((v16 - v15) / 16));
  }

  return 1;
}

char *sub_1AF650C9C(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v7 < a2)
    {
      a2 = v8;
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = *(a4 + 2);
  if (a2 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    sub_1AF43A2F4();
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

__n128 initializeWithCopy for WorldCounters(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorldCounters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 92))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorldCounters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 92) = v3;
  return result;
}

uint64_t sub_1AF650E7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    v4 = sub_1AF6512F8();
    v37 = vfx_counters.addCounter(name:scope:kind:color:)("CPU time", 8, 2, 0, 0, v4, v2);
    v36 = vfx_counters.addCounter(name:scope:kind:)(0x6164705520555043, 0xEF656D6974206574, 0, 0, v2);
    v35 = vfx_counters.addCounter(name:scope:kind:)(0x646E655220555043, 0xEF656D6974207265, 0, 0, v2);
    v34 = vfx_counters.addCounter(name:scope:kind:)(0x656D697420555047, 0xE800000000000000, 0, 0, v2);
    v33 = vfx_counters.addCounter(name:scope:kind:)(0x6164705520555047, 0xEF656D6974206574, 0, 0, v2);
    v32 = vfx_counters.addCounter(name:scope:kind:)(0x646E655220555047, 0xEF656D6974207265, 0, 0, v2);
    v31 = vfx_counters.addCounter(name:scope:kind:)(0x6574614C20555047, 0xEB0000000079636ELL, 0, 0, v2);
    v30 = vfx_counters.addCounter(name:scope:kind:)(0x6552206B636F6C43, 0xEB00000000746573, 1, 1, v2);
    v29 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000010, 0x80000001AFF2DC80, 0, 1, v2);
    v28 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000012, 0x80000001AFF2DCA0, 0, 1, v2);
    v27 = vfx_counters.addCounter(name:scope:kind:)(0x4320797469746E45, 0xEC000000746E756FLL, 1, 1, v2);
    v26 = vfx_counters.addCounter(name:scope:kind:)(0x6F43206B6E756843, 0xEB00000000746E75, 1, 1, v2);
    v25 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000010, 0x80000001AFF2DCC0, 1, 2, v2);
    v5 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000016, 0x80000001AFF2DCE0, 0, 2, v2);
    v6 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000015, 0x80000001AFF2DD00, 0, 2, v2);
    v7 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000019, 0x80000001AFF2DD20, 0, 2, v2);
    v8 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000021, 0x80000001AFF2DD40, 0, 2, v2);
    v9 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000020, 0x80000001AFF2DD70, 0, 2, v2);
    v10 = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000017, 0x80000001AFF2DDA0, 0, 2, v2);
    v11 = vfx_counters.addCounter(name:scope:kind:)(0x3E2D206B6E756843, 0xED00006174614420, 0, 2, v2);
    result = vfx_counters.addCounter(name:scope:kind:)(0xD000000000000019, 0x80000001AFF2DDC0, 0, 2, v2);
    v13 = v25;
    v12 = v26;
    v14 = v27;
    v15 = v28;
    v17 = v29;
    v16 = v30;
    v19 = v31;
    v18 = v32;
    v21 = v33;
    v20 = v34;
    v23 = v35;
    v22 = v36;
    v24 = v37;
  }

  else
  {
    v24 = 0;
    v22 = 0;
    v23 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v24;
  *(a2 + 12) = v22;
  *(a2 + 16) = v23;
  *(a2 + 20) = v20;
  *(a2 + 24) = v21;
  *(a2 + 28) = v18;
  *(a2 + 32) = v19;
  *(a2 + 36) = v16;
  *(a2 + 40) = v17;
  *(a2 + 44) = v15;
  *(a2 + 48) = v14;
  *(a2 + 52) = v12;
  *(a2 + 56) = v13;
  *(a2 + 60) = v5;
  *(a2 + 64) = v6;
  *(a2 + 68) = v7;
  *(a2 + 72) = v8;
  *(a2 + 76) = v9;
  *(a2 + 80) = v10;
  *(a2 + 84) = v11;
  *(a2 + 88) = result;
  return result;
}

void sub_1AF6513B4(float32x4_t *a1, uint64_t a2, char a3, __n128 a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  a4.n128_f32[0] = fminf(fmaxf(a4.n128_f32[0], 0.0), 1.0);
  v6 = a2 + 32;
  v7 = *(a2 + 16);
  do
  {
    v8 = v7 >> 1;
    v9 = v5 + (v7 >> 1);
    v7 += ~(v7 >> 1);
    if (a4.n128_f32[0] >= *(v6 + 4 * v9))
    {
      v5 = v9 + 1;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7 > 0);
  if (v5 >= v4)
  {
LABEL_14:
    v27 = a1[1].i64[0];
    v25 = a1 + 1;
    v26 = v27;
    if (!v27)
    {
      return;
    }

    v24 = v25[v26];
    goto LABEL_18;
  }

  if (!v5)
  {
    v24 = a1[2];
    goto LABEL_18;
  }

  v10 = v5 - 1;
  if (v5 <= 0)
  {
    v10 = 0;
  }

  a4.n128_f32[0] = (a4.n128_f32[0] - *(v6 + 4 * v10)) / (*(v6 + 4 * v5) - *(v6 + 4 * v10));
  v81 = a4;
  v11 = a1 + 2;
  v12 = a1[v10 + 2];
  if (!a3)
  {
    sub_1AF6DCDAC(v12);
    sub_1AF6DCDAC(v11[v5]);
    return;
  }

  if (a3 == 1)
  {
    v76 = a1[v10 + 2];
    v12.i32[3] = 0;
    v13 = _simd_pow_f4(v12, xmmword_1AFE6CA40);
    v72 = vdupq_n_s32(0x3F870A3Du);
    v74 = vdupq_n_s32(0xBD6147AE);
    v79 = vdupq_n_s32(0x414EB852u);
    v70 = vdupq_n_s32(0x3B4D2E1Cu);
    v14 = vcgeq_f32(v70, v76);
    v14.i32[3] = 0;
    v68 = vbslq_s8(vcltzq_s32(v14), vmulq_f32(v76, v79), vmlaq_f32(v74, v72, v13));
    v15 = v11[v5];
    v67 = v15;
    v15.i32[3] = 0;
    v16 = _simd_pow_f4(v15, xmmword_1AFE6CA40);
    v17 = vcgeq_f32(v70, v67);
    v17.i32[3] = 0;
    v18 = vsubq_f32(vbslq_s8(vcltzq_s32(v17), vmulq_f32(v67, v79), vmlaq_f32(v74, v72, v16)), v68);
    v19.i32[3] = v81.n128_i32[3];
    v20 = vmuls_lane_f32(v81.n128_f32[0], v18, 2);
    *v19.f32 = vadd_f32(*v68.f32, vmul_n_f32(*v18.f32, v81.n128_f32[0]));
    v82 = v76.f32[3] + vmuls_lane_f32(v81.n128_f32[0], vsubq_f32(v67, v76), 3);
    v19.f32[2] = v68.f32[2] + v20;
    v77 = v19;
    v21 = vdivq_f32(vaddq_f32(v19, vdupq_n_s32(0x3D6147AEu)), v72);
    v21.i32[3] = 0;
    v22 = _simd_pow_f4(v21, xmmword_1AFE42AB0);
    v23 = vcgeq_f32(vdupq_n_s32(0x3D25AEE6u), v77);
    v23.i32[3] = 0;
    v24 = vbslq_s8(vcltzq_s32(v23), vdivq_f32(v77, v79), v22);
    v24.f32[3] = v82;
LABEL_18:

    sub_1AF6DCDAC(v24);
    return;
  }

  *v28.i64 = sub_1AF6DCDAC(v12);
  v80 = v28;
  v28.i32[3] = 0;
  v29 = _simd_pow_f4(v28, xmmword_1AFE6CA40);
  v30 = vdupq_n_s32(0x3F870A3Du);
  v78 = vdupq_n_s32(0xBD6147AE);
  v31 = vmlaq_f32(v78, v30, v29);
  v73 = vdupq_n_s32(0x414EB852u);
  v75 = v30;
  v71 = vdupq_n_s32(0x3B4D2E1Cu);
  v32 = vcgeq_f32(v71, v80);
  v32.i32[3] = 0;
  v33 = vbslq_s8(vcltzq_s32(v32), vmulq_f32(v80, v73), v31);
  v34 = fmaxf(fmaxf(*v33.i32, *&v33.i32[2]), *&v33.i32[1]);
  v35 = v34 - fminf(fminf(*v33.i32, *&v33.i32[2]), *&v33.i32[1]);
  v36 = 0.0;
  v37 = 0.0;
  if (v35 != 0.0)
  {
    v38 = ((*v33.i32 - *&v33.i32[1]) / v35) + 4.0;
    if (*&v33.i32[1] == v34)
    {
      v38 = ((*&v33.i32[2] - *v33.i32) / v35) + 2.0;
    }

    if (*v33.i32 == v34)
    {
      v39 = (*&v33.i32[1] - *&v33.i32[2]) / v35;
    }

    else
    {
      v39 = v38;
    }

    if (v39 >= 0.0)
    {
      v37 = v39 * 0.16667;
    }

    else
    {
      v37 = (v39 * 0.16667) + 1.0;
    }
  }

  v40 = v35 / v34;
  if (v34 == 0.0)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40;
  }

  *v42.i64 = sub_1AF6DCDAC(v11[v5]);
  v69 = v42;
  v42.i32[3] = 0;
  v43 = _simd_pow_f4(v42, xmmword_1AFE6CA40);
  v44 = vcgeq_f32(v71, v69);
  v44.i32[3] = 0;
  v45 = vbslq_s8(vcltzq_s32(v44), vmulq_f32(v69, v73), vmlaq_f32(v78, v75, v43));
  v46 = fmaxf(fmaxf(*v45.i32, *&v45.i32[2]), *&v45.i32[1]);
  v47 = v46 - fminf(fminf(*v45.i32, *&v45.i32[2]), *&v45.i32[1]);
  if (v47 != 0.0)
  {
    v48 = ((*v45.i32 - *&v45.i32[1]) / v47) + 4.0;
    if (*&v45.i32[1] == v46)
    {
      v48 = ((*&v45.i32[2] - *v45.i32) / v47) + 2.0;
    }

    if (*v45.i32 == v46)
    {
      v49 = (*&v45.i32[1] - *&v45.i32[2]) / v47;
    }

    else
    {
      v49 = v48;
    }

    if (v49 >= 0.0)
    {
      v36 = v49 * 0.16667;
    }

    else
    {
      v36 = (v49 * 0.16667) + 1.0;
    }
  }

  v50 = v47 / v46;
  v51 = 0.0;
  if (v46 == 0.0)
  {
    v50 = 0.0;
  }

  v52 = v41 + (v81.n128_f32[0] * (v50 - v41));
  v53 = v37 + 1.0;
  v54 = v36 + 1.0;
  if (v36 <= v37)
  {
    v53 = v37;
  }

  else
  {
    v54 = v36;
  }

  v55 = v54 - v37;
  v56 = v53 - v36;
  if (v55 > v56)
  {
    v57 = -v56;
  }

  else
  {
    v57 = v55;
  }

  v58 = v37 + (v81.n128_f32[0] * v57);
  if (v58 < 0.0)
  {
    v58 = v58 + 1.0;
  }

  if (v58 > 1.0)
  {
    v58 = v58 + -1.0;
  }

  v59.i64[0] = __PAIR64__(LODWORD(v52), LODWORD(v58));
  v59.i64[1] = COERCE_UNSIGNED_INT(v34 + (v81.n128_f32[0] * (v46 - v34)));
  v60 = vmaxnmq_f32(v59, 0);
  v60.i32[3] = 0;
  v61 = vminnmq_f32(v60, xmmword_1AFE208C0);
  if (v61.f32[1] == 0.0)
  {
    v62 = vdupq_laneq_s32(v61, 2);
  }

  else
  {
    if (v61.f32[0] != 1.0)
    {
      v51 = 6.0 * v61.f32[0];
    }

    v64 = v51;
    v65 = v51 - v51;
    v62 = vdupq_laneq_s32(v61, 2);
    v62.i32[1] = vmuls_lane_f32(1.0 - v61.f32[1], v61, 2);
    v62.i32[2] = vmuls_lane_f32(1.0 - (v61.f32[1] * v65), v61, 2);
    v66 = v62;
    v66.i32[3] = vmuls_lane_f32(1.0 - (v61.f32[1] * (1.0 - v65)), v61, 2);
    if (v64 <= 1)
    {
      if (v64)
      {
        if (v64 == 1)
        {
          v62 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
        }
      }

      else
      {
        v62 = vzip1q_s32(v66, vextq_s8(v66, v66, 0xCuLL));
      }
    }

    else
    {
      switch(v64)
      {
        case 2:
          v62 = vrev64q_s32(v66);
          break;
        case 3:
          v62 = vextq_s8(vextq_s8(v62, v62, 0xCuLL), v62, 8uLL);
          break;
        case 4:
          v62 = vextq_s8(v66, vrev64q_s32(v66), 0xCuLL);
          break;
      }
    }
  }

  v63 = vdivq_f32(vaddq_f32(v62, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du));
  v63.i32[3] = 0;
  _simd_pow_f4(v63, xmmword_1AFE42AB0);
}

uint64_t sub_1AF6519E4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = a4;
  v17 = a3;
  sub_1AF6566B8(0, &qword_1EB63D1A8, sub_1AF65609C, &type metadata for ColorRamp.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF65609C();
  sub_1AFDFF3F8();
  v19 = a2;
  v18 = 0;
  sub_1AF6560F0();
  sub_1AF6561D4(&qword_1EB63D1B0, &qword_1ED72F710);
  sub_1AFDFE918();
  if (!v4)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1AF45BD00(0, &qword_1ED723210);
    sub_1AF6547E8(&qword_1EB63D188);
    sub_1AFDFE918();
    LOBYTE(v19) = v13;
    v18 = 2;
    sub_1AF65626C();
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF651C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x73656D6974;
  if (v2 != 1)
  {
    v4 = 1701080941;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73726F6C6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x73656D6974;
  if (*a2 != 1)
  {
    v8 = 1701080941;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73726F6C6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF651D54()
{
  v1 = 0x73656D6974;
  if (*v0 != 1)
  {
    v1 = 1701080941;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t sub_1AF651DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF655954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF651DC8(uint64_t a1)
{
  v2 = sub_1AF65609C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF651E04(uint64_t a1)
{
  v2 = sub_1AF65609C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF651E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1AF3C3D64(a1);

  v4 = sub_1AF9D3A24(v3);
  v6 = v5;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1AF651EA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFF288();
  sub_1AF8B4F0C(v4, v1);
  sub_1AF8B4EA4(v4, v2);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF651F0C(uint64_t a1)
{
  v3 = v1[1];
  sub_1AF8B4F0C(a1, *v1);
  sub_1AF8B4EA4(a1, v3);
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF651F58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFF288();
  sub_1AF8B4F0C(v4, v1);
  sub_1AF8B4EA4(v4, v2);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF651FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF655D78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF652010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1AFB7B0BC(*a1, *a2))
  {
    return sub_1AFB7B128(v2, v4) & (v3 == v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF652128(void *a1, __int16 a2, double a3, double a4)
{
  v5 = HIBYTE(a2);
  sub_1AF6566B8(0, &qword_1EB63D1F0, sub_1AF656610, &type metadata for CurveTangents.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AF656610();
  sub_1AFDFF3F8();
  v19 = a3;
  v18 = 0;
  v15 = MEMORY[0x1E69E7428];
  sub_1AF6566B8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AF653FC4(&qword_1ED72F798, &unk_1ED72F770, v15);
  sub_1AFDFE918();
  if (!v4)
  {
    v19 = a4;
    v18 = 1;
    sub_1AFDFE918();
    LOBYTE(v19) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v19) = v5;
    v18 = 3;
    sub_1AF656720();
    sub_1AFDFE918();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF6523C8()
{
  v1 = 0x49746E65676E6174;
  v2 = 0x73746E65676E6174;
  if (*v0 != 2)
  {
    v2 = 0x6C6F707265746E69;
  }

  if (*v0)
  {
    v1 = 0x4F746E65676E6174;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF652464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF6557D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF65248C(uint64_t a1)
{
  v2 = sub_1AF656610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF6524C8(uint64_t a1)
{
  v2 = sub_1AF656610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF652528()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6525AC()
{
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AFDFF2A8();
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF65260C()
{
  sub_1AFDFF288();
  sub_1AF6A8D0C();
  sub_1AF6A8D0C();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

void sub_1AF65268C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AF655A8C(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v4 & 1;
    *(a2 + 17) = HIBYTE(v4);
  }
}

BOOL sub_1AF6526F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((sub_1AFDFD568() & 1) != 0 && sub_1AFB7B128(a2, a6))
  {
    if (a3)
    {
      if (a7 && (sub_1AFB7BBA4(a3, a7) & 1) != 0)
      {
        return a4 == a8;
      }
    }

    else if (!a7)
    {
      return a4 == a8;
    }
  }

  return 0;
}

uint64_t sub_1AF65278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFD548();
  sub_1AF8B4EA4(a1, a3);
  sub_1AFDFF2A8();
  if (a4)
  {
    sub_1AF8B4FC8(a1, a4);
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF652804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFDFF288();
  sub_1AF65278C(v7, a1, a2, a3);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF652884()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF6528D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AF655A64();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1AF652968()
{
  sub_1AFDFF288();
  sub_1AF65278C(v2, *v0, v0[1], v0[2]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF652A08()
{
  swift_getWitnessTable();

  return sub_1AF609060();
}

uint64_t sub_1AF652A74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1AF652AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF652B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AF652BC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF652884();
  *a1 = result;
  return result;
}

uint64_t sub_1AF652BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF0E8514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF652C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1AF6528D0(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1AF652C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF4531A4();
  *a1 = result;
  return result;
}

uint64_t sub_1AF652C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AF652CE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AF652D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v18 = a2;
  v19 = a4;
  v20 = a6;
  type metadata accessor for Curve.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_1AFDFE9A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3F8();
  v25 = a3;
  v24 = 0;
  sub_1AF45BD00(0, &qword_1ED723210);
  sub_1AF6547E8(&qword_1EB63D188);
  v14 = v22;
  sub_1AFDFE918();
  if (!v14)
  {
    v15 = v19;
    v25 = v18;
    v24 = 1;
    sub_1AFDFD538();
    v23 = *(v21 + 16);
    swift_getWitnessTable();
    sub_1AFDFE918();
    if (v15)
    {
      v25 = v15;
      v24 = 2;
      sub_1AF45BD00(0, &qword_1ED723278);
      sub_1AF654718(&qword_1EB63D190, sub_1AF654858);
      sub_1AFDFE918();
    }
  }

  return (*(v10 + 8))(v13, v9);
}

char *sub_1AF652FF8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Curve.CodingKeys();
  swift_getWitnessTable();
  v17 = sub_1AFDFE818();
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v6);
  v8 = &v14 - v7;
  sub_1AF441150(a1, a1[3]);
  v16 = v8;
  sub_1AFDFF3B8();
  if (v3)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v14 = a1;
    v9 = v15;
    sub_1AF45BD00(0, &qword_1ED723210);
    v19 = 0;
    sub_1AF6547E8(&qword_1ED723208);
    v10 = v17;
    v11 = v16;
    sub_1AFDFE768();
    sub_1AFDFD538();
    v19 = 1;
    v18 = *(a3 + 8);
    swift_getWitnessTable();
    sub_1AFDFE768();
    v8 = v20;
    sub_1AF654608();
    v19 = 2;
    sub_1AF654670();
    sub_1AFDFE6E8();
    v13 = v14;
    (*(v9 + 8))(v11, v10);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return v8;
}

char *sub_1AF653330@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF652FF8(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }

  return result;
}

void sub_1AF65339C(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC3VFX11CurveObject_curve;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX11CurveObject_curve);
  v5 = 4 * *(v4 + 16);
  v6 = sub_1AFDFCEC8();
  [a1 encodeBytes:v4 + 32 length:v5 forKey:v6];

  v7 = *(v3 + 8);
  v8 = 4 * *(v7 + 16);
  v9 = sub_1AFDFCEC8();
  [a1 encodeBytes:v7 + 32 length:v8 forKey:v9];

  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = 18 * *(v10 + 16);
    v12 = sub_1AFDFCEC8();
    [a1 encodeBytes:v10 + 32 length:v11 forKey:v12];
  }
}

id sub_1AF653540(void *a1)
{
  v2 = v1;
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v4 = sub_1AFDFCEC8();
  v5 = [a1 decodeBytesForKey:v4 returnedLength:v23];

  if (!v5)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v19 = v16;
      swift_once();
      v16 = v19;
    }

    v22 = 0;
    v17 = 0x80000001AFF2DEB0;
    v18 = 0xD00000000000001CLL;
    goto LABEL_16;
  }

  v6 = sub_1AFDFCEC8();
  v7 = [a1 decodeBytesForKey:v6 returnedLength:v23];

  if (!v7)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v20 = v16;
      swift_once();
      v16 = v20;
    }

    v22 = 0;
    v18 = 0xD00000000000001DLL;
    v17 = 0x80000001AFF2DED0;
LABEL_16:
    sub_1AF0D4F18(v16, &v22, v18, v17);

    type metadata accessor for CurveObject();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v23[0] / 4;
  v9 = sub_1AFC05AD0(v7, v23[0] / 4);
  v10 = sub_1AFC05AD0(v5, v8);
  v11 = &v2[OBJC_IVAR____TtC3VFX11CurveObject_curve];
  *v11 = v9;
  *(v11 + 1) = v10;
  *(v11 + 2) = 0;
  v11[24] = 1;
  v12 = sub_1AFDFCEC8();
  v13 = [a1 decodeBytesForKey:v12 returnedLength:v23];

  if (v13)
  {
    *(v11 + 2) = sub_1AFC05C64(v13, v23[0] / 18);
  }

  v21.receiver = v2;
  v21.super_class = type metadata accessor for CurveObject();
  v14 = objc_msgSendSuper2(&v21, sel_init);

  return v14;
}

id sub_1AF6538CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurveObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AF653950(int64_t *a1)
{
  v3 = [v1 init];
  v4 = *a1;
  v5 = v3;
  v6 = sub_1AF86A3DC(a1 + 1, v4);
  v8 = v7;
  sub_1AF0D4478(0, &qword_1EB63D1C0);
  sub_1AF0D4478(0, &qword_1EB6329A8);
  v9 = sub_1AFDFDA88();
  if (!v9)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E6979390]) init];
  }

  v10 = v9;
  v11 = [v9 values];
  [v5 setValues_];

  v12 = [v10 keyTimes];
  [v5 setKeyTimes_];

  [v10 duration];
  [v5 setDuration_];

  sub_1AF439ED8(v6, v8);
  return v5;
}

id sub_1AF653AF0(void *a1)
{
  v1 = a1;
  v2 = sub_1AF653B5C();
  v4 = v3;

  v5 = sub_1AFDFC1A8();
  sub_1AF439ED8(v2, v4);

  return v5;
}

id sub_1AF653B5C()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:0 error:v11];
  v2 = v11[0];
  if (v1)
  {
    v3 = sub_1AFDFC1B8();
    v5 = v4;

    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v7 = *(v3 + 24) - *(v3 + 16);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v6)
    {
      v7 = (0xFFFFFFFF00000001 * v3) >> 32;
    }

    else
    {
      v7 = BYTE6(v5);
    }

    v11[0] = sub_1AFC4E70C(v7 + 8);
    v11[1] = v8;
    sub_1AF655314(v11, v7, v3, v5);
    return v11[0];
  }

  else
  {
    v10 = v2;
    sub_1AFDFBF58();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_1AF653CA4(size_t *a1, uint64_t a2, size_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5 >> 62;
  *a1 = a3;
  v6 = a1 + 1;
  if ((a5 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v15, 0, 14);
      return memcpy(v6, v15, a3);
    }

    v7 = v6;
    v8 = a3;
    v9 = *(a4 + 16);
    v10 = sub_1AFDFBDB8();
    if (v10)
    {
      v11 = sub_1AFDFBDE8();
      v12 = &v10[v9];
LABEL_9:
      v10 = &v12[-v11];
    }
  }

  else
  {
    if (!v5)
    {
      v15[0] = a4;
      LOWORD(v15[1]) = a5;
      BYTE2(v15[1]) = BYTE2(a5);
      BYTE3(v15[1]) = BYTE3(a5);
      BYTE4(v15[1]) = BYTE4(a5);
      BYTE5(v15[1]) = BYTE5(a5);
      return memcpy(v6, v15, a3);
    }

    v13 = a4;
    v7 = v6;
    v8 = a3;
    v10 = sub_1AFDFBDB8();
    if (v10)
    {
      v11 = sub_1AFDFBDE8();
      v12 = &v10[v13];
      goto LABEL_9;
    }
  }

  sub_1AFDFBDD8();

  return memmove(v7, v10, v8);
}

uint64_t sub_1AF653E14(void *a1)
{
  v1 = a1;
  v2 = CAKeyframeAnimation.serializedVFXBindingSize.getter();

  return v2;
}

uint64_t CAKeyframeAnimation.serializedVFXBindingSize.getter()
{
  v1 = [v0 serializedVFXBindingData];
  v2 = sub_1AFDFC1B8();
  v4 = v3;

  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_1AF439ED8(v2, v5);
      return v8 - v9;
    }

    else
    {
      sub_1AF439ED8(v2, v4);
      return 0;
    }
  }

  else if (v6)
  {
    sub_1AF439ED8(v2, v4);
    return (0xFFFFFFFF00000001 * v2) >> 32;
  }

  else
  {
    sub_1AF439ED8(v2, v4);
    return BYTE6(v4);
  }
}

uint64_t sub_1AF653EFC(void *a1)
{
  v2 = MEMORY[0x1E69E7428];
  a1[1] = sub_1AF653FC4(&qword_1ED72F780, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  a1[2] = sub_1AF653FC4(&qword_1ED72F798, &unk_1ED72F770, v2);
  result = sub_1AF653FC4(&qword_1ED72F790, &unk_1ED72F770, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_1AF653FC4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF6566B8(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF654028(void *a1)
{
  v2 = MEMORY[0x1E69E7450];
  a1[1] = sub_1AF653FC4(&qword_1ED72F748, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  a1[2] = sub_1AF653FC4(&qword_1ED72F758, &qword_1ED72F740, v2);
  result = sub_1AF653FC4(&qword_1ED72F750, &qword_1ED72F740, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_1AF6540F0(void *a1)
{
  v2 = MEMORY[0x1E69E74A8];
  a1[1] = sub_1AF653FC4(&qword_1ED72F6F0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  a1[2] = sub_1AF653FC4(&qword_1ED72F710, &qword_1ED72F6E0, v2);
  result = sub_1AF653FC4(&unk_1ED72F700, &qword_1ED72F6E0, v2);
  a1[3] = result;
  return result;
}

uint64_t destroy for KeyframeTimeline()
{
}

uint64_t initializeWithCopy for KeyframeTimeline(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for KeyframeTimeline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for KeyframeTimeline(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTimeline(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for KeyframeTimeline(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF6543F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ColorRamp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ColorRamp(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TypeRegistry.TypeInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TypeRegistry.TypeInfo(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1AF654580()
{
  result = qword_1EB63D178;
  if (!qword_1EB63D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D178);
  }

  return result;
}

void sub_1AF654608()
{
  if (!qword_1ED723260)
  {
    sub_1AF45BD00(255, &qword_1ED723278);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723260);
    }
  }
}

unint64_t sub_1AF654670()
{
  result = qword_1ED723250;
  if (!qword_1ED723250)
  {
    sub_1AF654608();
    sub_1AF654718(&unk_1ED723268, sub_1AF654794);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723250);
  }

  return result;
}

uint64_t sub_1AF654718(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF45BD00(255, &qword_1ED723278);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF654794()
{
  result = qword_1ED7259A0;
  if (!qword_1ED7259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7259A0);
  }

  return result;
}

uint64_t sub_1AF6547E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF45BD00(255, &qword_1ED723210);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF654858()
{
  result = qword_1EB63D198;
  if (!qword_1EB63D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D198);
  }

  return result;
}

uint64_t sub_1AF6548AC()
{
  v1 = v0;
  v2 = [v0 values];
  if (!v2 || (v3 = v2, v4 = sub_1AFDFD418(), v3, v5 = sub_1AFC7BA48(v4), , !v5))
  {
    v6 = [v1 values];
    v5 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1AFDFD418();

      v9 = *(v8 + 16);
      if (v9)
      {
        v35 = v5;
        sub_1AFC07518(0, v9, 0);
        v10 = v8 + 32;
        while (1)
        {
          sub_1AF0D5A54(v10, v34);
          sub_1AF0D5A54(v34, v33);
          type metadata accessor for CGColor(0);
          swift_dynamicCast();
          v11 = sub_1AFDFD9A8();
          if (!v11)
          {
            break;
          }

          if (*(v11 + 16) != 4)
          {
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);

            goto LABEL_11;
          }

          v29 = *(v11 + 32);
          v30 = *(v11 + 48);

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
          v12 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v30);
LABEL_12:
          v35 = v5;
          v14 = *(v5 + 16);
          v13 = *(v5 + 24);
          if (v14 >= v13 >> 1)
          {
            v31 = v12;
            sub_1AFC07518(v13 > 1, v14 + 1, 1);
            v12 = v31;
            v5 = v35;
          }

          *(v5 + 16) = v14 + 1;
          *(v5 + 16 * v14 + 32) = v12;
          v10 += 32;
          if (!--v9)
          {
            goto LABEL_15;
          }
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v34);
LABEL_11:

        v12 = 0uLL;
        goto LABEL_12;
      }

LABEL_15:
    }
  }

  v15 = [v1 keyTimes];
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v15;
    sub_1AF0D4478(0, &qword_1ED721F80);
    v18 = sub_1AFDFD418();

    if (v18 >> 62)
    {
      v19 = sub_1AFDFE108();
      if (v19)
      {
LABEL_19:
        v34[0] = v16;
        sub_1AFC072D4(0, v19 & ~(v19 >> 63), 0);
        v20 = 0;
        v21 = v34[0];
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1B2719C70](v20, v18);
          }

          else
          {
            v22 = *(v18 + 8 * v20 + 32);
          }

          v23 = v22;
          [v22 floatValue];
          v25 = v24;

          v34[0] = v21;
          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1AFC072D4(v26 > 1, v27 + 1, 1);
            v21 = v34[0];
          }

          ++v20;
          *(v21 + 16) = v27 + 1;
          *(v21 + 4 * v27 + 32) = v25;
        }

        while (v19 != v20);
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_19;
      }
    }
  }

  return v5;
}

void *sub_1AF654BE8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  v6 = *(a2 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    *&v24 = MEMORY[0x1E69E7CC0];
    v8 = v4;
    sub_1AFDFE368();
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v12) = v10;
      [v11 initWithFloat_];
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      --v6;
    }

    while (v6);
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = v4;
  }

  sub_1AF0D4478(0, &qword_1ED721F80);
  v14 = sub_1AFDFD3F8();

  [v5 setKeyTimes_];

  v15 = *(a1 + 16);
  if (v15)
  {
    v26 = v7;
    sub_1AFC070E4(0, v15, 0);
    v16 = 32;
    v17 = v7;
    do
    {
      GenericRGB = CGColorCreateGenericRGB(COERCE_FLOAT(*(a1 + v16)), COERCE_FLOAT(HIDWORD(*(a1 + v16))), COERCE_FLOAT(*(a1 + v16 + 8)), COERCE_FLOAT(HIDWORD(*(a1 + v16))));
      type metadata accessor for CGColor(0);
      v25 = v19;
      v26 = v17;
      *&v24 = GenericRGB;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC070E4(v20 > 1, v21 + 1, 1);
        v17 = v26;
      }

      *(v17 + 16) = v21 + 1;
      sub_1AF449D40(&v24, (v17 + 32 * v21 + 32));
      v16 += 16;
      --v15;
    }

    while (v15);
  }

  else
  {
  }

  v22 = sub_1AFDFD3F8();

  [v5 setValues_];

  return v5;
}

uint64_t sub_1AF654E64()
{
  v1 = v0;
  v2 = [v0 values];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_1AFDFD418();

    v6 = *(v5 + 16);
    if (v6)
    {
      v27 = v1;
      v31 = v3;
      sub_1AFC072D4(0, v6, 0);
      v26 = v5;
      v7 = v5 + 32;
      do
      {
        sub_1AF0D5A54(v7, v30);
        sub_1AF0D5A54(v30, v29);
        sub_1AF0D4478(0, &qword_1ED721F80);
        if (swift_dynamicCast())
        {
          [v28 floatValue];
          v9 = v8;

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
        }

        else
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
          v9 = 0;
        }

        v31 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AFC072D4(v10 > 1, v11 + 1, 1);
          v3 = v31;
        }

        *(v3 + 16) = v11 + 1;
        *(v3 + 4 * v11 + 32) = v9;
        v7 += 32;
        --v6;
      }

      while (v6);

      v1 = v27;
    }

    else
    {
    }
  }

  v12 = [v1 keyTimes];
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    sub_1AF0D4478(0, &qword_1ED721F80);
    v15 = sub_1AFDFD418();

    if (v15 >> 62)
    {
      v16 = sub_1AFDFE108();
      if (v16)
      {
LABEL_15:
        v30[0] = v13;
        sub_1AFC072D4(0, v16 & ~(v16 >> 63), 0);
        v17 = 0;
        v18 = v30[0];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B2719C70](v17, v15);
          }

          else
          {
            v19 = *(v15 + 8 * v17 + 32);
          }

          v20 = v19;
          [v19 floatValue];
          v22 = v21;

          v30[0] = v18;
          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1AFC072D4(v23 > 1, v24 + 1, 1);
            v18 = v30[0];
          }

          ++v17;
          *(v18 + 16) = v24 + 1;
          *(v18 + 4 * v24 + 32) = v22;
        }

        while (v16 != v17);
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_15;
      }
    }
  }

  return v3;
}

void *sub_1AF655158(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = v4;
    sub_1AFDFE368();
    v8 = (a2 + 32);
    do
    {
      v9 = *v8++;
      v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v11) = v9;
      [v10 initWithFloat_];
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      --v6;
    }

    while (v6);
  }

  else
  {
    v12 = v4;
  }

  sub_1AF0D4478(0, &qword_1ED721F80);
  v13 = sub_1AFDFD3F8();

  [v5 setKeyTimes_];

  sub_1AF3C4480(a1);
  v14 = sub_1AFDFD3F8();

  [v5 setValues_];

  return v5;
}

uint64_t sub_1AF655314(uint64_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 == 2)
    {

      sub_1AF439ED8(v8, v7);
      *&v33 = v8;
      *(&v33 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AFE6A6C0;
      sub_1AF439ED8(0, 0xC000000000000000);
      sub_1AFDFC138();
      v14 = *(&v33 + 1);
      v15 = a4;
      v16 = a3;
      v17 = *(v33 + 16);
      v18 = *(v33 + 24);
      v19 = sub_1AFDFBDB8();
      v20 = sub_1AFDFBDE8();
      v21 = v18 - v17;
      v22 = sub_1AFDFBDD8();
      if (v22 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      sub_1AF653CA4((v19 + v17 - v20), v19 + v17 - v20 + v23, a2, v16, v15);
      result = sub_1AF439ED8(v16, v15);
      *a1 = v33;
      a1[1] = v14 | 0x8000000000000000;
    }

    else
    {
      *(&v33 + 7) = 0;
      *&v33 = 0;
      sub_1AF653CA4(&v33, &v33, a2, a3, a4);
      return sub_1AF439ED8(a3, a4);
    }
  }

  else if (v9)
  {

    sub_1AF439ED8(v8, v7);
    *a1 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = (v8 >> 32) - v8;
      v25 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {

      if (sub_1AFDFBDB8())
      {
        sub_1AFDFBDE8();
      }

      v24 = (v8 >> 32) - v8;
      sub_1AFDFBDF8();
      swift_allocObject();
      v25 = sub_1AFDFBD98();
    }

    v26 = sub_1AFDFBDB8();
    v27 = sub_1AFDFBDE8();
    v28 = sub_1AFDFBDD8();
    if (v28 >= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v28;
    }

    sub_1AF653CA4((v26 + v8 - v27), v26 + v8 - v27 + v29, a2, a3, a4);

    result = sub_1AF439ED8(a3, a4);
    *a1 = v8;
    a1[1] = v25 | 0x4000000000000000;
  }

  else
  {
    sub_1AF439ED8(v8, v7);
    *&v33 = v8;
    WORD4(v33) = v7;
    BYTE10(v33) = BYTE2(v7);
    BYTE11(v33) = BYTE3(v7);
    BYTE12(v33) = BYTE4(v7);
    BYTE13(v33) = BYTE5(v7);
    BYTE14(v33) = BYTE6(v7);
    v10 = a3;
    sub_1AF653CA4(&v33, &v33 + BYTE6(v7), a2, a3, a4);
    v11 = v33;
    v12 = DWORD2(v33) | ((WORD6(v33) | (BYTE14(v33) << 16)) << 32);
    result = sub_1AF439ED8(v10, a4);
    *a1 = v11;
    a1[1] = v12;
  }

  return result;
}

uint64_t sub_1AF6556D8(int a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = 0;
  while (1)
  {
    v18 = a3;
    v11 = *(&v18 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
    v19 = a5;
    v12 = *(&v19 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v6 & 1)));
    v7 = v11 == v12;
    if (v6 == 1)
    {
      break;
    }

    while (1)
    {
      ++v6;
      if (v7)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      if (v6 == 1)
      {
        return v8;
      }
    }
  }

  if (v11 != v12)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v16 = a4;
    v14 = *(&v16 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v9 & 1)));
    v17 = a6;
    v15 = *(&v17 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v9 & 1)));
    v10 = v14 == v15;
    if (v9 == 1)
    {
      break;
    }

    while (1)
    {
      ++v9;
      if (v10)
      {
        break;
      }

      v10 = 0;
      v8 = 0;
      if (v9 == 1)
      {
        return v8;
      }
    }
  }

  LODWORD(v8) = ((a1 ^ a2) < 0x100u) & (a1 ^ a2 ^ 1);
  if (v14 == v15)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF6557D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65676E6174 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F746E65676E6174 && a2 == 0xEA00000000007475 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E65676E6174 && a2 == 0xEE0064656B6E694CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F707265746E69 && a2 == 0xED00006E6F697461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF655954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D6974 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

double sub_1AF655A8C(void *a1)
{
  sub_1AF6566B8(0, &qword_1EB633B38, sub_1AF656610, &type metadata for CurveTangents.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF656610();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = MEMORY[0x1E69E7428];
    sub_1AF6566B8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v13 = 0;
    sub_1AF653FC4(&qword_1ED72F780, &unk_1ED72F770, v10);
    sub_1AFDFE768();
    v2 = v14;
    v13 = 1;
    sub_1AFDFE768();
    LOBYTE(v14) = 2;
    sub_1AFDFE718();
    v13 = 3;
    sub_1AF656664();
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF655D78(void *a1)
{
  sub_1AF6566B8(0, &qword_1ED722F70, sub_1AF65609C, &type metadata for ColorRamp.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF65609C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF6560F0();
    v12 = 0;
    sub_1AF6561D4(&qword_1ED7231D8, &qword_1ED72F6F0);
    sub_1AFDFE768();
    v9 = v13;
    sub_1AF45BD00(0, &qword_1ED723210);
    v12 = 1;
    sub_1AF6547E8(&qword_1ED723208);
    sub_1AFDFE768();
    v12 = 2;
    sub_1AF656180();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF65609C()
{
  result = qword_1ED723318;
  if (!qword_1ED723318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723318);
  }

  return result;
}

void sub_1AF6560F0()
{
  if (!qword_1ED7231E0)
  {
    sub_1AF6566B8(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7231E0);
    }
  }
}

unint64_t sub_1AF656180()
{
  result = qword_1ED7232F0;
  if (!qword_1ED7232F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7232F0);
  }

  return result;
}

uint64_t sub_1AF6561D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF6560F0();
    sub_1AF653FC4(a2, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF65626C()
{
  result = qword_1EB63D1B8;
  if (!qword_1EB63D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1B8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CurveTangents(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CurveTangents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CurveTangents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF6563B0()
{
  result = qword_1EB63D1C8;
  if (!qword_1EB63D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1C8);
  }

  return result;
}

unint64_t sub_1AF656408()
{
  result = qword_1EB63D1D0;
  if (!qword_1EB63D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1D0);
  }

  return result;
}

unint64_t sub_1AF656460()
{
  result = qword_1EB63D1D8;
  if (!qword_1EB63D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1D8);
  }

  return result;
}

unint64_t sub_1AF6564D4()
{
  result = qword_1EB63D1E0;
  if (!qword_1EB63D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1E0);
  }

  return result;
}

unint64_t sub_1AF65652C()
{
  result = qword_1ED723308;
  if (!qword_1ED723308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723308);
  }

  return result;
}

unint64_t sub_1AF656584()
{
  result = qword_1ED723310;
  if (!qword_1ED723310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723310);
  }

  return result;
}

unint64_t sub_1AF656610()
{
  result = qword_1EB634330;
  if (!qword_1EB634330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634330);
  }

  return result;
}

unint64_t sub_1AF656664()
{
  result = qword_1EB633DE8;
  if (!qword_1EB633DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DE8);
  }

  return result;
}

void sub_1AF6566B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF656720()
{
  result = qword_1EB63D1F8;
  if (!qword_1EB63D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D1F8);
  }

  return result;
}

unint64_t sub_1AF656774()
{
  result = qword_1ED723300;
  if (!qword_1ED723300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED723300);
  }

  return result;
}

unint64_t sub_1AF6567C8()
{
  result = qword_1EB633DF8;
  if (!qword_1EB633DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DF8);
  }

  return result;
}

unint64_t sub_1AF656830()
{
  result = qword_1EB63D200;
  if (!qword_1EB63D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D200);
  }

  return result;
}

unint64_t sub_1AF656888()
{
  result = qword_1EB634318;
  if (!qword_1EB634318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634318);
  }

  return result;
}

unint64_t sub_1AF6568E0()
{
  result = qword_1EB634320;
  if (!qword_1EB634320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634320);
  }

  return result;
}

unint64_t sub_1AF65696C()
{
  result = qword_1EB63D208;
  if (!qword_1EB63D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D208);
  }

  return result;
}

uint64_t sub_1AF6569C0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (a1 == 0xFFFFFFFF)
  {
    v4 = *(*(a2 - 8) + 56);

    return v4(a3, 1, 1);
  }

  else
  {

    sub_1AF67CB9C(a1, a2, a3);
  }
}

uint64_t sub_1AF656A84(void *a1, unint64_t a2)
{
  if (HIDWORD(a2) || a2 != -1)
  {
    sub_1AF441150(a1, a1[3]);
    v5 = sub_1AF6951B8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  LODWORD(v6) = *(sub_1AF6950BC(v6, v7) + 85);

  if (v6 != 1)
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF3C8();
    if (v5)
    {
      v13 = a1[3];
      v14 = a1[4];
      sub_1AF441150(a1, v13);
      if (sub_1AF695200(v13, v14))
      {
        if (!sub_1AF65A128(a2))
        {
          sub_1AF448018(v16, v17);
          sub_1AFDFEC48();
          if (!v2)
          {
            sub_1AF448018(v16, v17);
            sub_1AFDFEC48();
          }

          return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
        }
      }
    }

    sub_1AF448018(v16, v17);
    sub_1AFDFEC48();
    if (!v2)
    {
      sub_1AF448018(v16, v17);
      sub_1AFDFEC48();
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  if (v5)
  {
    v8 = a1[3];
    v9 = a1[4];
    sub_1AF441150(a1, v8);
    if (sub_1AF695200(v8, v9))
    {
      if (!sub_1AF65A128(a2))
      {
        sub_1AF448018(v16, v17);
        sub_1AFDFEF38();

        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
      }
    }
  }

  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  v12 = *(sub_1AF6950BC(v10, v11) + 120);

  if (*(v12 + 16))
  {
    sub_1AF449D3C(a2);
  }

  sub_1AF448018(v16, v17);
  sub_1AFDFEF38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
}

uint64_t sub_1AF656DD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF65773C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF656E1C()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF656EB4()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF656F38()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](44, 0xE100000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](15965, 0xE200000000000000);
  return 0x5B797469746E453CLL;
}

unint64_t sub_1AF657014(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 0xFFFFFFFF)
  {
    return 0;
  }

  v6 = a2;
  v7 = *(a5 + 8);

  LOBYTE(v6) = sub_1AF67CACC(a1, v7, v6);

  return v6 & 1;
}

void sub_1AF657084(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[0] = a5;
  v9 = HIDWORD(a2);
  v10 = sub_1AFDFDD58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v27 - v13;
  v15 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 || a2 != -1)
  {
    (*(v11 + 16))(v14, a1, v10, v18);
    if ((*(v15 + 48))(v14, 1, a4) == 1)
    {
      (*(v11 + 8))(v14, v10);
      v21 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v21)
      {
        v22 = *(v21 + 80);
        swift_unknownObjectWeakLoadStrong();
        v21 = *(v21 + 56);
      }

      else
      {
        v22 = 0;
      }

      v29 = 0;
      swift_unknownObjectUnownedInit();
      v28 = a3;
      v29 = v21;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v30 = v22;
      sub_1AF6C150C(a4, v27[0], a2);
      sub_1AF579490(&v28);
      if (v22)
      {
        v26 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v26 ^ 1);
      }
    }

    else
    {
      (*(v15 + 32))(v20, v14, a4);

      MEMORY[0x1EEE9AC00](v23, v24);
      v25 = v27[0];
      v27[-6] = a4;
      v27[-5] = v25;
      v27[-4] = v20;
      LODWORD(v27[-3]) = a2;
      HIDWORD(v27[-3]) = v9;
      v27[-2] = a3;
      sub_1AFC75668(0, sub_1AF657BFC);

      (*(v15 + 8))(v20, a4);
    }
  }
}

uint64_t sub_1AF6573DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a3) || a3 != -1)
  {

    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1AFC75668(0, sub_1AF657704);
  }

  return result;
}

uint64_t sub_1AF6574A4(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) && ((v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) == 0xFFFFFFFF) || v5[2] == HIDWORD(a1)))
  {
    v6 = *(*(*(a2 + 144) + 8 * *v5 + 32) + 120);

    return v6;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1AF657590()
{
  v1 = *(v0 + 8);
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF6575FC()
{
  v1 = *(v0 + 8);
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AF657644()
{
  v1 = *(v0 + 8);
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}